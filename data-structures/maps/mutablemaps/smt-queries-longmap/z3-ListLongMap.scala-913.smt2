; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20588 () Bool)

(assert start!20588)

(declare-fun b_free!5235 () Bool)

(declare-fun b_next!5235 () Bool)

(assert (=> start!20588 (= b_free!5235 (not b_next!5235))))

(declare-fun tp!18737 () Bool)

(declare-fun b_and!11999 () Bool)

(assert (=> start!20588 (= tp!18737 b_and!11999)))

(declare-fun b!204832 () Bool)

(declare-fun e!134001 () Bool)

(declare-fun e!133997 () Bool)

(assert (=> b!204832 (= e!134001 (not e!133997))))

(declare-fun res!98836 () Bool)

(assert (=> b!204832 (=> res!98836 e!133997)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!204832 (= res!98836 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6435 0))(
  ( (V!6436 (val!2590 Int)) )
))
(declare-datatypes ((ValueCell!2202 0))(
  ( (ValueCellFull!2202 (v!4556 V!6435)) (EmptyCell!2202) )
))
(declare-datatypes ((array!9396 0))(
  ( (array!9397 (arr!4448 (Array (_ BitVec 32) ValueCell!2202)) (size!4773 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9396)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((tuple2!3922 0))(
  ( (tuple2!3923 (_1!1971 (_ BitVec 64)) (_2!1971 V!6435)) )
))
(declare-datatypes ((List!2845 0))(
  ( (Nil!2842) (Cons!2841 (h!3483 tuple2!3922) (t!7784 List!2845)) )
))
(declare-datatypes ((ListLongMap!2849 0))(
  ( (ListLongMap!2850 (toList!1440 List!2845)) )
))
(declare-fun lt!104031 () ListLongMap!2849)

(declare-fun zeroValue!615 () V!6435)

(declare-datatypes ((array!9398 0))(
  ( (array!9399 (arr!4449 (Array (_ BitVec 32) (_ BitVec 64))) (size!4774 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9398)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6435)

(declare-fun getCurrentListMap!1008 (array!9398 array!9396 (_ BitVec 32) (_ BitVec 32) V!6435 V!6435 (_ BitVec 32) Int) ListLongMap!2849)

(assert (=> b!204832 (= lt!104031 (getCurrentListMap!1008 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104032 () ListLongMap!2849)

(declare-fun lt!104035 () array!9396)

(assert (=> b!204832 (= lt!104032 (getCurrentListMap!1008 _keys!825 lt!104035 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104040 () ListLongMap!2849)

(declare-fun lt!104041 () ListLongMap!2849)

(assert (=> b!204832 (and (= lt!104040 lt!104041) (= lt!104041 lt!104040))))

(declare-fun lt!104034 () ListLongMap!2849)

(declare-fun lt!104038 () tuple2!3922)

(declare-fun +!457 (ListLongMap!2849 tuple2!3922) ListLongMap!2849)

(assert (=> b!204832 (= lt!104041 (+!457 lt!104034 lt!104038))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun v!520 () V!6435)

(assert (=> b!204832 (= lt!104038 (tuple2!3923 k0!843 v!520))))

(declare-datatypes ((Unit!6213 0))(
  ( (Unit!6214) )
))
(declare-fun lt!104039 () Unit!6213)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!121 (array!9398 array!9396 (_ BitVec 32) (_ BitVec 32) V!6435 V!6435 (_ BitVec 32) (_ BitVec 64) V!6435 (_ BitVec 32) Int) Unit!6213)

(assert (=> b!204832 (= lt!104039 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!121 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!379 (array!9398 array!9396 (_ BitVec 32) (_ BitVec 32) V!6435 V!6435 (_ BitVec 32) Int) ListLongMap!2849)

(assert (=> b!204832 (= lt!104040 (getCurrentListMapNoExtraKeys!379 _keys!825 lt!104035 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204832 (= lt!104035 (array!9397 (store (arr!4448 _values!649) i!601 (ValueCellFull!2202 v!520)) (size!4773 _values!649)))))

(assert (=> b!204832 (= lt!104034 (getCurrentListMapNoExtraKeys!379 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!204833 () Bool)

(declare-fun e!134000 () Bool)

(assert (=> b!204833 (= e!133997 e!134000)))

(declare-fun res!98834 () Bool)

(assert (=> b!204833 (=> res!98834 e!134000)))

(assert (=> b!204833 (= res!98834 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!104030 () ListLongMap!2849)

(assert (=> b!204833 (= lt!104031 lt!104030)))

(declare-fun lt!104036 () tuple2!3922)

(assert (=> b!204833 (= lt!104030 (+!457 lt!104034 lt!104036))))

(declare-fun lt!104037 () ListLongMap!2849)

(assert (=> b!204833 (= lt!104032 lt!104037)))

(assert (=> b!204833 (= lt!104037 (+!457 lt!104041 lt!104036))))

(assert (=> b!204833 (= lt!104032 (+!457 lt!104040 lt!104036))))

(assert (=> b!204833 (= lt!104036 (tuple2!3923 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!204834 () Bool)

(declare-fun res!98830 () Bool)

(assert (=> b!204834 (=> (not res!98830) (not e!134001))))

(assert (=> b!204834 (= res!98830 (= (select (arr!4449 _keys!825) i!601) k0!843))))

(declare-fun b!204835 () Bool)

(declare-fun res!98832 () Bool)

(assert (=> b!204835 (=> (not res!98832) (not e!134001))))

(assert (=> b!204835 (= res!98832 (and (= (size!4773 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4774 _keys!825) (size!4773 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!204836 () Bool)

(declare-fun res!98833 () Bool)

(assert (=> b!204836 (=> (not res!98833) (not e!134001))))

(assert (=> b!204836 (= res!98833 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4774 _keys!825))))))

(declare-fun mapNonEmpty!8705 () Bool)

(declare-fun mapRes!8705 () Bool)

(declare-fun tp!18736 () Bool)

(declare-fun e!133999 () Bool)

(assert (=> mapNonEmpty!8705 (= mapRes!8705 (and tp!18736 e!133999))))

(declare-fun mapRest!8705 () (Array (_ BitVec 32) ValueCell!2202))

(declare-fun mapValue!8705 () ValueCell!2202)

(declare-fun mapKey!8705 () (_ BitVec 32))

(assert (=> mapNonEmpty!8705 (= (arr!4448 _values!649) (store mapRest!8705 mapKey!8705 mapValue!8705))))

(declare-fun res!98828 () Bool)

(assert (=> start!20588 (=> (not res!98828) (not e!134001))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20588 (= res!98828 (validMask!0 mask!1149))))

(assert (=> start!20588 e!134001))

(declare-fun e!134002 () Bool)

(declare-fun array_inv!2927 (array!9396) Bool)

(assert (=> start!20588 (and (array_inv!2927 _values!649) e!134002)))

(assert (=> start!20588 true))

(declare-fun tp_is_empty!5091 () Bool)

(assert (=> start!20588 tp_is_empty!5091))

(declare-fun array_inv!2928 (array!9398) Bool)

(assert (=> start!20588 (array_inv!2928 _keys!825)))

(assert (=> start!20588 tp!18737))

(declare-fun b!204837 () Bool)

(declare-fun e!133998 () Bool)

(assert (=> b!204837 (= e!134002 (and e!133998 mapRes!8705))))

(declare-fun condMapEmpty!8705 () Bool)

(declare-fun mapDefault!8705 () ValueCell!2202)

(assert (=> b!204837 (= condMapEmpty!8705 (= (arr!4448 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2202)) mapDefault!8705)))))

(declare-fun mapIsEmpty!8705 () Bool)

(assert (=> mapIsEmpty!8705 mapRes!8705))

(declare-fun b!204838 () Bool)

(declare-fun res!98829 () Bool)

(assert (=> b!204838 (=> (not res!98829) (not e!134001))))

(declare-datatypes ((List!2846 0))(
  ( (Nil!2843) (Cons!2842 (h!3484 (_ BitVec 64)) (t!7785 List!2846)) )
))
(declare-fun arrayNoDuplicates!0 (array!9398 (_ BitVec 32) List!2846) Bool)

(assert (=> b!204838 (= res!98829 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2843))))

(declare-fun b!204839 () Bool)

(assert (=> b!204839 (= e!133999 tp_is_empty!5091)))

(declare-fun b!204840 () Bool)

(assert (=> b!204840 (= e!133998 tp_is_empty!5091)))

(declare-fun b!204841 () Bool)

(assert (=> b!204841 (= e!134000 true)))

(assert (=> b!204841 (= lt!104037 (+!457 lt!104030 lt!104038))))

(declare-fun lt!104033 () Unit!6213)

(declare-fun addCommutativeForDiffKeys!162 (ListLongMap!2849 (_ BitVec 64) V!6435 (_ BitVec 64) V!6435) Unit!6213)

(assert (=> b!204841 (= lt!104033 (addCommutativeForDiffKeys!162 lt!104034 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!204842 () Bool)

(declare-fun res!98835 () Bool)

(assert (=> b!204842 (=> (not res!98835) (not e!134001))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!204842 (= res!98835 (validKeyInArray!0 k0!843))))

(declare-fun b!204843 () Bool)

(declare-fun res!98831 () Bool)

(assert (=> b!204843 (=> (not res!98831) (not e!134001))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9398 (_ BitVec 32)) Bool)

(assert (=> b!204843 (= res!98831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(assert (= (and start!20588 res!98828) b!204835))

(assert (= (and b!204835 res!98832) b!204843))

(assert (= (and b!204843 res!98831) b!204838))

(assert (= (and b!204838 res!98829) b!204836))

(assert (= (and b!204836 res!98833) b!204842))

(assert (= (and b!204842 res!98835) b!204834))

(assert (= (and b!204834 res!98830) b!204832))

(assert (= (and b!204832 (not res!98836)) b!204833))

(assert (= (and b!204833 (not res!98834)) b!204841))

(assert (= (and b!204837 condMapEmpty!8705) mapIsEmpty!8705))

(assert (= (and b!204837 (not condMapEmpty!8705)) mapNonEmpty!8705))

(get-info :version)

(assert (= (and mapNonEmpty!8705 ((_ is ValueCellFull!2202) mapValue!8705)) b!204839))

(assert (= (and b!204837 ((_ is ValueCellFull!2202) mapDefault!8705)) b!204840))

(assert (= start!20588 b!204837))

(declare-fun m!232417 () Bool)

(assert (=> b!204832 m!232417))

(declare-fun m!232419 () Bool)

(assert (=> b!204832 m!232419))

(declare-fun m!232421 () Bool)

(assert (=> b!204832 m!232421))

(declare-fun m!232423 () Bool)

(assert (=> b!204832 m!232423))

(declare-fun m!232425 () Bool)

(assert (=> b!204832 m!232425))

(declare-fun m!232427 () Bool)

(assert (=> b!204832 m!232427))

(declare-fun m!232429 () Bool)

(assert (=> b!204832 m!232429))

(declare-fun m!232431 () Bool)

(assert (=> b!204842 m!232431))

(declare-fun m!232433 () Bool)

(assert (=> mapNonEmpty!8705 m!232433))

(declare-fun m!232435 () Bool)

(assert (=> b!204841 m!232435))

(declare-fun m!232437 () Bool)

(assert (=> b!204841 m!232437))

(declare-fun m!232439 () Bool)

(assert (=> b!204833 m!232439))

(declare-fun m!232441 () Bool)

(assert (=> b!204833 m!232441))

(declare-fun m!232443 () Bool)

(assert (=> b!204833 m!232443))

(declare-fun m!232445 () Bool)

(assert (=> start!20588 m!232445))

(declare-fun m!232447 () Bool)

(assert (=> start!20588 m!232447))

(declare-fun m!232449 () Bool)

(assert (=> start!20588 m!232449))

(declare-fun m!232451 () Bool)

(assert (=> b!204834 m!232451))

(declare-fun m!232453 () Bool)

(assert (=> b!204838 m!232453))

(declare-fun m!232455 () Bool)

(assert (=> b!204843 m!232455))

(check-sat (not b!204842) (not b!204843) (not b!204838) (not b!204841) (not b_next!5235) (not b!204833) tp_is_empty!5091 b_and!11999 (not start!20588) (not mapNonEmpty!8705) (not b!204832))
(check-sat b_and!11999 (not b_next!5235))
