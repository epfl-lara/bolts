; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20348 () Bool)

(assert start!20348)

(declare-fun b_free!4995 () Bool)

(declare-fun b_next!4995 () Bool)

(assert (=> start!20348 (= b_free!4995 (not b_next!4995))))

(declare-fun tp!18017 () Bool)

(declare-fun b_and!11759 () Bool)

(assert (=> start!20348 (= tp!18017 b_and!11759)))

(declare-fun b!200494 () Bool)

(declare-fun res!95575 () Bool)

(declare-fun e!131480 () Bool)

(assert (=> b!200494 (=> (not res!95575) (not e!131480))))

(declare-datatypes ((array!8932 0))(
  ( (array!8933 (arr!4216 (Array (_ BitVec 32) (_ BitVec 64))) (size!4541 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8932)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8932 (_ BitVec 32)) Bool)

(assert (=> b!200494 (= res!95575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!200495 () Bool)

(declare-fun res!95577 () Bool)

(assert (=> b!200495 (=> (not res!95577) (not e!131480))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6115 0))(
  ( (V!6116 (val!2470 Int)) )
))
(declare-datatypes ((ValueCell!2082 0))(
  ( (ValueCellFull!2082 (v!4436 V!6115)) (EmptyCell!2082) )
))
(declare-datatypes ((array!8934 0))(
  ( (array!8935 (arr!4217 (Array (_ BitVec 32) ValueCell!2082)) (size!4542 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8934)

(assert (=> b!200495 (= res!95577 (and (= (size!4542 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4541 _keys!825) (size!4542 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!8345 () Bool)

(declare-fun mapRes!8345 () Bool)

(assert (=> mapIsEmpty!8345 mapRes!8345))

(declare-fun b!200496 () Bool)

(declare-fun e!131477 () Bool)

(declare-fun e!131479 () Bool)

(assert (=> b!200496 (= e!131477 (and e!131479 mapRes!8345))))

(declare-fun condMapEmpty!8345 () Bool)

(declare-fun mapDefault!8345 () ValueCell!2082)

(assert (=> b!200496 (= condMapEmpty!8345 (= (arr!4217 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2082)) mapDefault!8345)))))

(declare-fun mapNonEmpty!8345 () Bool)

(declare-fun tp!18016 () Bool)

(declare-fun e!131482 () Bool)

(assert (=> mapNonEmpty!8345 (= mapRes!8345 (and tp!18016 e!131482))))

(declare-fun mapRest!8345 () (Array (_ BitVec 32) ValueCell!2082))

(declare-fun mapValue!8345 () ValueCell!2082)

(declare-fun mapKey!8345 () (_ BitVec 32))

(assert (=> mapNonEmpty!8345 (= (arr!4217 _values!649) (store mapRest!8345 mapKey!8345 mapValue!8345))))

(declare-fun res!95578 () Bool)

(assert (=> start!20348 (=> (not res!95578) (not e!131480))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20348 (= res!95578 (validMask!0 mask!1149))))

(assert (=> start!20348 e!131480))

(declare-fun array_inv!2763 (array!8934) Bool)

(assert (=> start!20348 (and (array_inv!2763 _values!649) e!131477)))

(assert (=> start!20348 true))

(declare-fun tp_is_empty!4851 () Bool)

(assert (=> start!20348 tp_is_empty!4851))

(declare-fun array_inv!2764 (array!8932) Bool)

(assert (=> start!20348 (array_inv!2764 _keys!825)))

(assert (=> start!20348 tp!18017))

(declare-fun b!200497 () Bool)

(declare-fun res!95571 () Bool)

(assert (=> b!200497 (=> (not res!95571) (not e!131480))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!200497 (= res!95571 (= (select (arr!4216 _keys!825) i!601) k0!843))))

(declare-fun b!200498 () Bool)

(declare-fun res!95572 () Bool)

(assert (=> b!200498 (=> (not res!95572) (not e!131480))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!200498 (= res!95572 (validKeyInArray!0 k0!843))))

(declare-fun b!200499 () Bool)

(assert (=> b!200499 (= e!131482 tp_is_empty!4851)))

(declare-fun b!200500 () Bool)

(declare-fun res!95574 () Bool)

(assert (=> b!200500 (=> (not res!95574) (not e!131480))))

(assert (=> b!200500 (= res!95574 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4541 _keys!825))))))

(declare-fun b!200501 () Bool)

(declare-fun e!131476 () Bool)

(assert (=> b!200501 (= e!131476 true)))

(declare-datatypes ((tuple2!3728 0))(
  ( (tuple2!3729 (_1!1874 (_ BitVec 64)) (_2!1874 V!6115)) )
))
(declare-datatypes ((List!2669 0))(
  ( (Nil!2666) (Cons!2665 (h!3307 tuple2!3728) (t!7608 List!2669)) )
))
(declare-datatypes ((ListLongMap!2655 0))(
  ( (ListLongMap!2656 (toList!1343 List!2669)) )
))
(declare-fun lt!99204 () ListLongMap!2655)

(declare-fun lt!99195 () ListLongMap!2655)

(declare-fun lt!99194 () tuple2!3728)

(declare-fun lt!99197 () tuple2!3728)

(declare-fun +!360 (ListLongMap!2655 tuple2!3728) ListLongMap!2655)

(assert (=> b!200501 (= (+!360 lt!99195 lt!99194) (+!360 lt!99204 lt!99197))))

(declare-fun lt!99198 () ListLongMap!2655)

(declare-fun minValue!615 () V!6115)

(declare-fun v!520 () V!6115)

(declare-datatypes ((Unit!6027 0))(
  ( (Unit!6028) )
))
(declare-fun lt!99191 () Unit!6027)

(declare-fun addCommutativeForDiffKeys!83 (ListLongMap!2655 (_ BitVec 64) V!6115 (_ BitVec 64) V!6115) Unit!6027)

(assert (=> b!200501 (= lt!99191 (addCommutativeForDiffKeys!83 lt!99198 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!200502 () Bool)

(assert (=> b!200502 (= e!131479 tp_is_empty!4851)))

(declare-fun b!200503 () Bool)

(declare-fun res!95573 () Bool)

(assert (=> b!200503 (=> (not res!95573) (not e!131480))))

(declare-datatypes ((List!2670 0))(
  ( (Nil!2667) (Cons!2666 (h!3308 (_ BitVec 64)) (t!7609 List!2670)) )
))
(declare-fun arrayNoDuplicates!0 (array!8932 (_ BitVec 32) List!2670) Bool)

(assert (=> b!200503 (= res!95573 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2667))))

(declare-fun b!200504 () Bool)

(declare-fun e!131478 () Bool)

(assert (=> b!200504 (= e!131480 (not e!131478))))

(declare-fun res!95570 () Bool)

(assert (=> b!200504 (=> res!95570 e!131478)))

(assert (=> b!200504 (= res!95570 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!99193 () ListLongMap!2655)

(declare-fun zeroValue!615 () V!6115)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!928 (array!8932 array!8934 (_ BitVec 32) (_ BitVec 32) V!6115 V!6115 (_ BitVec 32) Int) ListLongMap!2655)

(assert (=> b!200504 (= lt!99193 (getCurrentListMap!928 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99202 () array!8934)

(declare-fun lt!99196 () ListLongMap!2655)

(assert (=> b!200504 (= lt!99196 (getCurrentListMap!928 _keys!825 lt!99202 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99205 () ListLongMap!2655)

(declare-fun lt!99192 () ListLongMap!2655)

(assert (=> b!200504 (and (= lt!99205 lt!99192) (= lt!99192 lt!99205))))

(declare-fun lt!99190 () ListLongMap!2655)

(assert (=> b!200504 (= lt!99192 (+!360 lt!99190 lt!99197))))

(assert (=> b!200504 (= lt!99197 (tuple2!3729 k0!843 v!520))))

(declare-fun lt!99201 () Unit!6027)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!41 (array!8932 array!8934 (_ BitVec 32) (_ BitVec 32) V!6115 V!6115 (_ BitVec 32) (_ BitVec 64) V!6115 (_ BitVec 32) Int) Unit!6027)

(assert (=> b!200504 (= lt!99201 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!41 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!299 (array!8932 array!8934 (_ BitVec 32) (_ BitVec 32) V!6115 V!6115 (_ BitVec 32) Int) ListLongMap!2655)

(assert (=> b!200504 (= lt!99205 (getCurrentListMapNoExtraKeys!299 _keys!825 lt!99202 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200504 (= lt!99202 (array!8935 (store (arr!4217 _values!649) i!601 (ValueCellFull!2082 v!520)) (size!4542 _values!649)))))

(assert (=> b!200504 (= lt!99190 (getCurrentListMapNoExtraKeys!299 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!200505 () Bool)

(assert (=> b!200505 (= e!131478 e!131476)))

(declare-fun res!95576 () Bool)

(assert (=> b!200505 (=> res!95576 e!131476)))

(assert (=> b!200505 (= res!95576 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!99203 () ListLongMap!2655)

(assert (=> b!200505 (= lt!99203 lt!99195)))

(assert (=> b!200505 (= lt!99195 (+!360 lt!99198 lt!99197))))

(declare-fun lt!99199 () Unit!6027)

(assert (=> b!200505 (= lt!99199 (addCommutativeForDiffKeys!83 lt!99190 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (=> b!200505 (= lt!99196 (+!360 lt!99203 lt!99194))))

(declare-fun lt!99200 () tuple2!3728)

(assert (=> b!200505 (= lt!99203 (+!360 lt!99192 lt!99200))))

(assert (=> b!200505 (= lt!99193 lt!99204)))

(assert (=> b!200505 (= lt!99204 (+!360 lt!99198 lt!99194))))

(assert (=> b!200505 (= lt!99198 (+!360 lt!99190 lt!99200))))

(assert (=> b!200505 (= lt!99196 (+!360 (+!360 lt!99205 lt!99200) lt!99194))))

(assert (=> b!200505 (= lt!99194 (tuple2!3729 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!200505 (= lt!99200 (tuple2!3729 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (= (and start!20348 res!95578) b!200495))

(assert (= (and b!200495 res!95577) b!200494))

(assert (= (and b!200494 res!95575) b!200503))

(assert (= (and b!200503 res!95573) b!200500))

(assert (= (and b!200500 res!95574) b!200498))

(assert (= (and b!200498 res!95572) b!200497))

(assert (= (and b!200497 res!95571) b!200504))

(assert (= (and b!200504 (not res!95570)) b!200505))

(assert (= (and b!200505 (not res!95576)) b!200501))

(assert (= (and b!200496 condMapEmpty!8345) mapIsEmpty!8345))

(assert (= (and b!200496 (not condMapEmpty!8345)) mapNonEmpty!8345))

(get-info :version)

(assert (= (and mapNonEmpty!8345 ((_ is ValueCellFull!2082) mapValue!8345)) b!200499))

(assert (= (and b!200496 ((_ is ValueCellFull!2082) mapDefault!8345)) b!200502))

(assert (= start!20348 b!200496))

(declare-fun m!227041 () Bool)

(assert (=> b!200494 m!227041))

(declare-fun m!227043 () Bool)

(assert (=> b!200501 m!227043))

(declare-fun m!227045 () Bool)

(assert (=> b!200501 m!227045))

(declare-fun m!227047 () Bool)

(assert (=> b!200501 m!227047))

(declare-fun m!227049 () Bool)

(assert (=> b!200498 m!227049))

(declare-fun m!227051 () Bool)

(assert (=> start!20348 m!227051))

(declare-fun m!227053 () Bool)

(assert (=> start!20348 m!227053))

(declare-fun m!227055 () Bool)

(assert (=> start!20348 m!227055))

(declare-fun m!227057 () Bool)

(assert (=> b!200503 m!227057))

(declare-fun m!227059 () Bool)

(assert (=> b!200504 m!227059))

(declare-fun m!227061 () Bool)

(assert (=> b!200504 m!227061))

(declare-fun m!227063 () Bool)

(assert (=> b!200504 m!227063))

(declare-fun m!227065 () Bool)

(assert (=> b!200504 m!227065))

(declare-fun m!227067 () Bool)

(assert (=> b!200504 m!227067))

(declare-fun m!227069 () Bool)

(assert (=> b!200504 m!227069))

(declare-fun m!227071 () Bool)

(assert (=> b!200504 m!227071))

(declare-fun m!227073 () Bool)

(assert (=> b!200505 m!227073))

(declare-fun m!227075 () Bool)

(assert (=> b!200505 m!227075))

(declare-fun m!227077 () Bool)

(assert (=> b!200505 m!227077))

(declare-fun m!227079 () Bool)

(assert (=> b!200505 m!227079))

(assert (=> b!200505 m!227075))

(declare-fun m!227081 () Bool)

(assert (=> b!200505 m!227081))

(declare-fun m!227083 () Bool)

(assert (=> b!200505 m!227083))

(declare-fun m!227085 () Bool)

(assert (=> b!200505 m!227085))

(declare-fun m!227087 () Bool)

(assert (=> b!200505 m!227087))

(declare-fun m!227089 () Bool)

(assert (=> mapNonEmpty!8345 m!227089))

(declare-fun m!227091 () Bool)

(assert (=> b!200497 m!227091))

(check-sat (not b!200501) (not b!200505) (not mapNonEmpty!8345) (not b!200498) (not b_next!4995) (not b!200503) (not b!200494) b_and!11759 tp_is_empty!4851 (not b!200504) (not start!20348))
(check-sat b_and!11759 (not b_next!4995))
