; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20594 () Bool)

(assert start!20594)

(declare-fun b_free!5241 () Bool)

(declare-fun b_next!5241 () Bool)

(assert (=> start!20594 (= b_free!5241 (not b_next!5241))))

(declare-fun tp!18755 () Bool)

(declare-fun b_and!12005 () Bool)

(assert (=> start!20594 (= tp!18755 b_and!12005)))

(declare-fun b!204940 () Bool)

(declare-fun res!98915 () Bool)

(declare-fun e!134060 () Bool)

(assert (=> b!204940 (=> (not res!98915) (not e!134060))))

(declare-datatypes ((array!9406 0))(
  ( (array!9407 (arr!4453 (Array (_ BitVec 32) (_ BitVec 64))) (size!4778 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9406)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!204940 (= res!98915 (= (select (arr!4453 _keys!825) i!601) k0!843))))

(declare-fun mapNonEmpty!8714 () Bool)

(declare-fun mapRes!8714 () Bool)

(declare-fun tp!18754 () Bool)

(declare-fun e!134061 () Bool)

(assert (=> mapNonEmpty!8714 (= mapRes!8714 (and tp!18754 e!134061))))

(declare-fun mapKey!8714 () (_ BitVec 32))

(declare-datatypes ((V!6443 0))(
  ( (V!6444 (val!2593 Int)) )
))
(declare-datatypes ((ValueCell!2205 0))(
  ( (ValueCellFull!2205 (v!4559 V!6443)) (EmptyCell!2205) )
))
(declare-fun mapRest!8714 () (Array (_ BitVec 32) ValueCell!2205))

(declare-datatypes ((array!9408 0))(
  ( (array!9409 (arr!4454 (Array (_ BitVec 32) ValueCell!2205)) (size!4779 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9408)

(declare-fun mapValue!8714 () ValueCell!2205)

(assert (=> mapNonEmpty!8714 (= (arr!4454 _values!649) (store mapRest!8714 mapKey!8714 mapValue!8714))))

(declare-fun b!204941 () Bool)

(declare-fun e!134065 () Bool)

(assert (=> b!204941 (= e!134060 (not e!134065))))

(declare-fun res!98917 () Bool)

(assert (=> b!204941 (=> res!98917 e!134065)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!204941 (= res!98917 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!3926 0))(
  ( (tuple2!3927 (_1!1973 (_ BitVec 64)) (_2!1973 V!6443)) )
))
(declare-datatypes ((List!2849 0))(
  ( (Nil!2846) (Cons!2845 (h!3487 tuple2!3926) (t!7788 List!2849)) )
))
(declare-datatypes ((ListLongMap!2853 0))(
  ( (ListLongMap!2854 (toList!1442 List!2849)) )
))
(declare-fun lt!104138 () ListLongMap!2853)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6443)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6443)

(declare-fun getCurrentListMap!1010 (array!9406 array!9408 (_ BitVec 32) (_ BitVec 32) V!6443 V!6443 (_ BitVec 32) Int) ListLongMap!2853)

(assert (=> b!204941 (= lt!104138 (getCurrentListMap!1010 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104143 () array!9408)

(declare-fun lt!104141 () ListLongMap!2853)

(assert (=> b!204941 (= lt!104141 (getCurrentListMap!1010 _keys!825 lt!104143 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104144 () ListLongMap!2853)

(declare-fun lt!104142 () ListLongMap!2853)

(assert (=> b!204941 (and (= lt!104144 lt!104142) (= lt!104142 lt!104144))))

(declare-fun lt!104149 () ListLongMap!2853)

(declare-fun lt!104139 () tuple2!3926)

(declare-fun +!459 (ListLongMap!2853 tuple2!3926) ListLongMap!2853)

(assert (=> b!204941 (= lt!104142 (+!459 lt!104149 lt!104139))))

(declare-fun v!520 () V!6443)

(assert (=> b!204941 (= lt!104139 (tuple2!3927 k0!843 v!520))))

(declare-datatypes ((Unit!6217 0))(
  ( (Unit!6218) )
))
(declare-fun lt!104140 () Unit!6217)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!123 (array!9406 array!9408 (_ BitVec 32) (_ BitVec 32) V!6443 V!6443 (_ BitVec 32) (_ BitVec 64) V!6443 (_ BitVec 32) Int) Unit!6217)

(assert (=> b!204941 (= lt!104140 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!123 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!381 (array!9406 array!9408 (_ BitVec 32) (_ BitVec 32) V!6443 V!6443 (_ BitVec 32) Int) ListLongMap!2853)

(assert (=> b!204941 (= lt!104144 (getCurrentListMapNoExtraKeys!381 _keys!825 lt!104143 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204941 (= lt!104143 (array!9409 (store (arr!4454 _values!649) i!601 (ValueCellFull!2205 v!520)) (size!4779 _values!649)))))

(assert (=> b!204941 (= lt!104149 (getCurrentListMapNoExtraKeys!381 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!204942 () Bool)

(declare-fun res!98914 () Bool)

(assert (=> b!204942 (=> (not res!98914) (not e!134060))))

(assert (=> b!204942 (= res!98914 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4778 _keys!825))))))

(declare-fun b!204943 () Bool)

(declare-fun tp_is_empty!5097 () Bool)

(assert (=> b!204943 (= e!134061 tp_is_empty!5097)))

(declare-fun b!204944 () Bool)

(declare-fun e!134064 () Bool)

(assert (=> b!204944 (= e!134065 e!134064)))

(declare-fun res!98912 () Bool)

(assert (=> b!204944 (=> res!98912 e!134064)))

(assert (=> b!204944 (= res!98912 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!104147 () ListLongMap!2853)

(assert (=> b!204944 (= lt!104138 lt!104147)))

(declare-fun lt!104146 () tuple2!3926)

(assert (=> b!204944 (= lt!104147 (+!459 lt!104149 lt!104146))))

(declare-fun lt!104148 () ListLongMap!2853)

(assert (=> b!204944 (= lt!104141 lt!104148)))

(assert (=> b!204944 (= lt!104148 (+!459 lt!104142 lt!104146))))

(assert (=> b!204944 (= lt!104141 (+!459 lt!104144 lt!104146))))

(assert (=> b!204944 (= lt!104146 (tuple2!3927 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!204945 () Bool)

(declare-fun res!98910 () Bool)

(assert (=> b!204945 (=> (not res!98910) (not e!134060))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!204945 (= res!98910 (validKeyInArray!0 k0!843))))

(declare-fun b!204946 () Bool)

(declare-fun e!134063 () Bool)

(declare-fun e!134059 () Bool)

(assert (=> b!204946 (= e!134063 (and e!134059 mapRes!8714))))

(declare-fun condMapEmpty!8714 () Bool)

(declare-fun mapDefault!8714 () ValueCell!2205)

(assert (=> b!204946 (= condMapEmpty!8714 (= (arr!4454 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2205)) mapDefault!8714)))))

(declare-fun mapIsEmpty!8714 () Bool)

(assert (=> mapIsEmpty!8714 mapRes!8714))

(declare-fun b!204947 () Bool)

(declare-fun res!98916 () Bool)

(assert (=> b!204947 (=> (not res!98916) (not e!134060))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9406 (_ BitVec 32)) Bool)

(assert (=> b!204947 (= res!98916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!204948 () Bool)

(assert (=> b!204948 (= e!134059 tp_is_empty!5097)))

(declare-fun b!204949 () Bool)

(declare-fun res!98913 () Bool)

(assert (=> b!204949 (=> (not res!98913) (not e!134060))))

(assert (=> b!204949 (= res!98913 (and (= (size!4779 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4778 _keys!825) (size!4779 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!98911 () Bool)

(assert (=> start!20594 (=> (not res!98911) (not e!134060))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20594 (= res!98911 (validMask!0 mask!1149))))

(assert (=> start!20594 e!134060))

(declare-fun array_inv!2931 (array!9408) Bool)

(assert (=> start!20594 (and (array_inv!2931 _values!649) e!134063)))

(assert (=> start!20594 true))

(assert (=> start!20594 tp_is_empty!5097))

(declare-fun array_inv!2932 (array!9406) Bool)

(assert (=> start!20594 (array_inv!2932 _keys!825)))

(assert (=> start!20594 tp!18755))

(declare-fun b!204950 () Bool)

(declare-fun res!98909 () Bool)

(assert (=> b!204950 (=> (not res!98909) (not e!134060))))

(declare-datatypes ((List!2850 0))(
  ( (Nil!2847) (Cons!2846 (h!3488 (_ BitVec 64)) (t!7789 List!2850)) )
))
(declare-fun arrayNoDuplicates!0 (array!9406 (_ BitVec 32) List!2850) Bool)

(assert (=> b!204950 (= res!98909 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2847))))

(declare-fun b!204951 () Bool)

(assert (=> b!204951 (= e!134064 true)))

(assert (=> b!204951 (= lt!104148 (+!459 lt!104147 lt!104139))))

(declare-fun lt!104145 () Unit!6217)

(declare-fun addCommutativeForDiffKeys!164 (ListLongMap!2853 (_ BitVec 64) V!6443 (_ BitVec 64) V!6443) Unit!6217)

(assert (=> b!204951 (= lt!104145 (addCommutativeForDiffKeys!164 lt!104149 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (= (and start!20594 res!98911) b!204949))

(assert (= (and b!204949 res!98913) b!204947))

(assert (= (and b!204947 res!98916) b!204950))

(assert (= (and b!204950 res!98909) b!204942))

(assert (= (and b!204942 res!98914) b!204945))

(assert (= (and b!204945 res!98910) b!204940))

(assert (= (and b!204940 res!98915) b!204941))

(assert (= (and b!204941 (not res!98917)) b!204944))

(assert (= (and b!204944 (not res!98912)) b!204951))

(assert (= (and b!204946 condMapEmpty!8714) mapIsEmpty!8714))

(assert (= (and b!204946 (not condMapEmpty!8714)) mapNonEmpty!8714))

(get-info :version)

(assert (= (and mapNonEmpty!8714 ((_ is ValueCellFull!2205) mapValue!8714)) b!204943))

(assert (= (and b!204946 ((_ is ValueCellFull!2205) mapDefault!8714)) b!204948))

(assert (= start!20594 b!204946))

(declare-fun m!232537 () Bool)

(assert (=> b!204944 m!232537))

(declare-fun m!232539 () Bool)

(assert (=> b!204944 m!232539))

(declare-fun m!232541 () Bool)

(assert (=> b!204944 m!232541))

(declare-fun m!232543 () Bool)

(assert (=> b!204951 m!232543))

(declare-fun m!232545 () Bool)

(assert (=> b!204951 m!232545))

(declare-fun m!232547 () Bool)

(assert (=> b!204941 m!232547))

(declare-fun m!232549 () Bool)

(assert (=> b!204941 m!232549))

(declare-fun m!232551 () Bool)

(assert (=> b!204941 m!232551))

(declare-fun m!232553 () Bool)

(assert (=> b!204941 m!232553))

(declare-fun m!232555 () Bool)

(assert (=> b!204941 m!232555))

(declare-fun m!232557 () Bool)

(assert (=> b!204941 m!232557))

(declare-fun m!232559 () Bool)

(assert (=> b!204941 m!232559))

(declare-fun m!232561 () Bool)

(assert (=> start!20594 m!232561))

(declare-fun m!232563 () Bool)

(assert (=> start!20594 m!232563))

(declare-fun m!232565 () Bool)

(assert (=> start!20594 m!232565))

(declare-fun m!232567 () Bool)

(assert (=> b!204947 m!232567))

(declare-fun m!232569 () Bool)

(assert (=> b!204945 m!232569))

(declare-fun m!232571 () Bool)

(assert (=> mapNonEmpty!8714 m!232571))

(declare-fun m!232573 () Bool)

(assert (=> b!204940 m!232573))

(declare-fun m!232575 () Bool)

(assert (=> b!204950 m!232575))

(check-sat (not b!204945) (not start!20594) (not b!204941) (not b!204947) (not b!204944) (not b!204950) (not b!204951) b_and!12005 (not b_next!5241) tp_is_empty!5097 (not mapNonEmpty!8714))
(check-sat b_and!12005 (not b_next!5241))
