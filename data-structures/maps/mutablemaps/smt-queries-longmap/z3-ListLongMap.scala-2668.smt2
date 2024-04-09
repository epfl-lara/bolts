; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39836 () Bool)

(assert start!39836)

(declare-fun b_free!10095 () Bool)

(declare-fun b_next!10095 () Bool)

(assert (=> start!39836 (= b_free!10095 (not b_next!10095))))

(declare-fun tp!35814 () Bool)

(declare-fun b_and!17867 () Bool)

(assert (=> start!39836 (= tp!35814 b_and!17867)))

(declare-fun b!429951 () Bool)

(declare-fun res!252673 () Bool)

(declare-fun e!254579 () Bool)

(assert (=> b!429951 (=> (not res!252673) (not e!254579))))

(declare-datatypes ((array!26311 0))(
  ( (array!26312 (arr!12602 (Array (_ BitVec 32) (_ BitVec 64))) (size!12954 (_ BitVec 32))) )
))
(declare-fun lt!196609 () array!26311)

(declare-datatypes ((List!7453 0))(
  ( (Nil!7450) (Cons!7449 (h!8305 (_ BitVec 64)) (t!13005 List!7453)) )
))
(declare-fun arrayNoDuplicates!0 (array!26311 (_ BitVec 32) List!7453) Bool)

(assert (=> b!429951 (= res!252673 (arrayNoDuplicates!0 lt!196609 #b00000000000000000000000000000000 Nil!7450))))

(declare-fun b!429952 () Bool)

(declare-fun res!252662 () Bool)

(declare-fun e!254576 () Bool)

(assert (=> b!429952 (=> (not res!252662) (not e!254576))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!429952 (= res!252662 (validKeyInArray!0 k0!794))))

(declare-fun b!429953 () Bool)

(declare-fun res!252668 () Bool)

(assert (=> b!429953 (=> (not res!252668) (not e!254576))))

(declare-fun _keys!709 () array!26311)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26311 (_ BitVec 32)) Bool)

(assert (=> b!429953 (= res!252668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!429954 () Bool)

(declare-fun res!252661 () Bool)

(assert (=> b!429954 (=> (not res!252661) (not e!254576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!429954 (= res!252661 (validMask!0 mask!1025))))

(declare-fun b!429955 () Bool)

(declare-fun res!252664 () Bool)

(assert (=> b!429955 (=> (not res!252664) (not e!254576))))

(assert (=> b!429955 (= res!252664 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7450))))

(declare-fun b!429956 () Bool)

(declare-fun res!252669 () Bool)

(assert (=> b!429956 (=> (not res!252669) (not e!254576))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!429956 (= res!252669 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12954 _keys!709))))))

(declare-fun b!429957 () Bool)

(declare-fun e!254578 () Bool)

(declare-fun e!254575 () Bool)

(assert (=> b!429957 (= e!254578 (not e!254575))))

(declare-fun res!252672 () Bool)

(assert (=> b!429957 (=> res!252672 e!254575)))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!429957 (= res!252672 (not (validKeyInArray!0 (select (arr!12602 _keys!709) from!863))))))

(declare-datatypes ((V!16101 0))(
  ( (V!16102 (val!5668 Int)) )
))
(declare-datatypes ((tuple2!7400 0))(
  ( (tuple2!7401 (_1!3710 (_ BitVec 64)) (_2!3710 V!16101)) )
))
(declare-datatypes ((List!7454 0))(
  ( (Nil!7451) (Cons!7450 (h!8306 tuple2!7400) (t!13006 List!7454)) )
))
(declare-datatypes ((ListLongMap!6327 0))(
  ( (ListLongMap!6328 (toList!3179 List!7454)) )
))
(declare-fun lt!196610 () ListLongMap!6327)

(declare-fun lt!196608 () ListLongMap!6327)

(assert (=> b!429957 (= lt!196610 lt!196608)))

(declare-fun lt!196604 () ListLongMap!6327)

(declare-fun lt!196605 () tuple2!7400)

(declare-fun +!1328 (ListLongMap!6327 tuple2!7400) ListLongMap!6327)

(assert (=> b!429957 (= lt!196608 (+!1328 lt!196604 lt!196605))))

(declare-fun minValue!515 () V!16101)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16101)

(declare-datatypes ((ValueCell!5280 0))(
  ( (ValueCellFull!5280 (v!7911 V!16101)) (EmptyCell!5280) )
))
(declare-datatypes ((array!26313 0))(
  ( (array!26314 (arr!12603 (Array (_ BitVec 32) ValueCell!5280)) (size!12955 (_ BitVec 32))) )
))
(declare-fun lt!196613 () array!26313)

(declare-fun getCurrentListMapNoExtraKeys!1376 (array!26311 array!26313 (_ BitVec 32) (_ BitVec 32) V!16101 V!16101 (_ BitVec 32) Int) ListLongMap!6327)

(assert (=> b!429957 (= lt!196610 (getCurrentListMapNoExtraKeys!1376 lt!196609 lt!196613 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!16101)

(assert (=> b!429957 (= lt!196605 (tuple2!7401 k0!794 v!412))))

(declare-fun _values!549 () array!26313)

(assert (=> b!429957 (= lt!196604 (getCurrentListMapNoExtraKeys!1376 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12616 0))(
  ( (Unit!12617) )
))
(declare-fun lt!196607 () Unit!12616)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!524 (array!26311 array!26313 (_ BitVec 32) (_ BitVec 32) V!16101 V!16101 (_ BitVec 32) (_ BitVec 64) V!16101 (_ BitVec 32) Int) Unit!12616)

(assert (=> b!429957 (= lt!196607 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!524 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!429958 () Bool)

(declare-fun res!252667 () Bool)

(assert (=> b!429958 (=> (not res!252667) (not e!254576))))

(assert (=> b!429958 (= res!252667 (or (= (select (arr!12602 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12602 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!429959 () Bool)

(declare-fun res!252674 () Bool)

(assert (=> b!429959 (=> (not res!252674) (not e!254576))))

(declare-fun arrayContainsKey!0 (array!26311 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!429959 (= res!252674 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!429960 () Bool)

(declare-fun e!254580 () Bool)

(declare-fun tp_is_empty!11247 () Bool)

(assert (=> b!429960 (= e!254580 tp_is_empty!11247)))

(declare-fun b!429961 () Bool)

(declare-fun e!254582 () Unit!12616)

(declare-fun Unit!12618 () Unit!12616)

(assert (=> b!429961 (= e!254582 Unit!12618)))

(declare-fun b!429962 () Bool)

(declare-fun Unit!12619 () Unit!12616)

(assert (=> b!429962 (= e!254582 Unit!12619)))

(declare-fun lt!196615 () Unit!12616)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26311 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12616)

(assert (=> b!429962 (= lt!196615 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!429962 false))

(declare-fun b!429963 () Bool)

(declare-fun e!254584 () Bool)

(declare-fun e!254577 () Bool)

(declare-fun mapRes!18492 () Bool)

(assert (=> b!429963 (= e!254584 (and e!254577 mapRes!18492))))

(declare-fun condMapEmpty!18492 () Bool)

(declare-fun mapDefault!18492 () ValueCell!5280)

(assert (=> b!429963 (= condMapEmpty!18492 (= (arr!12603 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5280)) mapDefault!18492)))))

(declare-fun b!429964 () Bool)

(assert (=> b!429964 (= e!254579 e!254578)))

(declare-fun res!252671 () Bool)

(assert (=> b!429964 (=> (not res!252671) (not e!254578))))

(assert (=> b!429964 (= res!252671 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!196617 () ListLongMap!6327)

(assert (=> b!429964 (= lt!196617 (getCurrentListMapNoExtraKeys!1376 lt!196609 lt!196613 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!429964 (= lt!196613 (array!26314 (store (arr!12603 _values!549) i!563 (ValueCellFull!5280 v!412)) (size!12955 _values!549)))))

(declare-fun lt!196611 () ListLongMap!6327)

(assert (=> b!429964 (= lt!196611 (getCurrentListMapNoExtraKeys!1376 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!252666 () Bool)

(assert (=> start!39836 (=> (not res!252666) (not e!254576))))

(assert (=> start!39836 (= res!252666 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12954 _keys!709))))))

(assert (=> start!39836 e!254576))

(assert (=> start!39836 tp_is_empty!11247))

(assert (=> start!39836 tp!35814))

(assert (=> start!39836 true))

(declare-fun array_inv!9168 (array!26313) Bool)

(assert (=> start!39836 (and (array_inv!9168 _values!549) e!254584)))

(declare-fun array_inv!9169 (array!26311) Bool)

(assert (=> start!39836 (array_inv!9169 _keys!709)))

(declare-fun b!429965 () Bool)

(assert (=> b!429965 (= e!254577 tp_is_empty!11247)))

(declare-fun b!429966 () Bool)

(declare-fun res!252675 () Bool)

(assert (=> b!429966 (=> (not res!252675) (not e!254576))))

(assert (=> b!429966 (= res!252675 (and (= (size!12955 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12954 _keys!709) (size!12955 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!18492 () Bool)

(assert (=> mapIsEmpty!18492 mapRes!18492))

(declare-fun mapNonEmpty!18492 () Bool)

(declare-fun tp!35813 () Bool)

(assert (=> mapNonEmpty!18492 (= mapRes!18492 (and tp!35813 e!254580))))

(declare-fun mapValue!18492 () ValueCell!5280)

(declare-fun mapRest!18492 () (Array (_ BitVec 32) ValueCell!5280))

(declare-fun mapKey!18492 () (_ BitVec 32))

(assert (=> mapNonEmpty!18492 (= (arr!12603 _values!549) (store mapRest!18492 mapKey!18492 mapValue!18492))))

(declare-fun b!429967 () Bool)

(declare-fun res!252665 () Bool)

(assert (=> b!429967 (=> (not res!252665) (not e!254579))))

(assert (=> b!429967 (= res!252665 (bvsle from!863 i!563))))

(declare-fun b!429968 () Bool)

(assert (=> b!429968 (= e!254576 e!254579)))

(declare-fun res!252670 () Bool)

(assert (=> b!429968 (=> (not res!252670) (not e!254579))))

(assert (=> b!429968 (= res!252670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!196609 mask!1025))))

(assert (=> b!429968 (= lt!196609 (array!26312 (store (arr!12602 _keys!709) i!563 k0!794) (size!12954 _keys!709)))))

(declare-fun b!429969 () Bool)

(declare-fun e!254581 () Bool)

(assert (=> b!429969 (= e!254575 e!254581)))

(declare-fun res!252663 () Bool)

(assert (=> b!429969 (=> res!252663 e!254581)))

(assert (=> b!429969 (= res!252663 (= k0!794 (select (arr!12602 _keys!709) from!863)))))

(assert (=> b!429969 (not (= (select (arr!12602 _keys!709) from!863) k0!794))))

(declare-fun lt!196612 () Unit!12616)

(assert (=> b!429969 (= lt!196612 e!254582)))

(declare-fun c!55403 () Bool)

(assert (=> b!429969 (= c!55403 (= (select (arr!12602 _keys!709) from!863) k0!794))))

(declare-fun lt!196606 () ListLongMap!6327)

(assert (=> b!429969 (= lt!196617 lt!196606)))

(declare-fun lt!196614 () tuple2!7400)

(assert (=> b!429969 (= lt!196606 (+!1328 lt!196608 lt!196614))))

(declare-fun lt!196616 () V!16101)

(assert (=> b!429969 (= lt!196614 (tuple2!7401 (select (arr!12602 _keys!709) from!863) lt!196616))))

(declare-fun get!6259 (ValueCell!5280 V!16101) V!16101)

(declare-fun dynLambda!774 (Int (_ BitVec 64)) V!16101)

(assert (=> b!429969 (= lt!196616 (get!6259 (select (arr!12603 _values!549) from!863) (dynLambda!774 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!429970 () Bool)

(assert (=> b!429970 (= e!254581 true)))

(assert (=> b!429970 (= lt!196606 (+!1328 (+!1328 lt!196604 lt!196614) lt!196605))))

(declare-fun lt!196603 () Unit!12616)

(declare-fun addCommutativeForDiffKeys!347 (ListLongMap!6327 (_ BitVec 64) V!16101 (_ BitVec 64) V!16101) Unit!12616)

(assert (=> b!429970 (= lt!196603 (addCommutativeForDiffKeys!347 lt!196604 k0!794 v!412 (select (arr!12602 _keys!709) from!863) lt!196616))))

(assert (= (and start!39836 res!252666) b!429954))

(assert (= (and b!429954 res!252661) b!429966))

(assert (= (and b!429966 res!252675) b!429953))

(assert (= (and b!429953 res!252668) b!429955))

(assert (= (and b!429955 res!252664) b!429956))

(assert (= (and b!429956 res!252669) b!429952))

(assert (= (and b!429952 res!252662) b!429958))

(assert (= (and b!429958 res!252667) b!429959))

(assert (= (and b!429959 res!252674) b!429968))

(assert (= (and b!429968 res!252670) b!429951))

(assert (= (and b!429951 res!252673) b!429967))

(assert (= (and b!429967 res!252665) b!429964))

(assert (= (and b!429964 res!252671) b!429957))

(assert (= (and b!429957 (not res!252672)) b!429969))

(assert (= (and b!429969 c!55403) b!429962))

(assert (= (and b!429969 (not c!55403)) b!429961))

(assert (= (and b!429969 (not res!252663)) b!429970))

(assert (= (and b!429963 condMapEmpty!18492) mapIsEmpty!18492))

(assert (= (and b!429963 (not condMapEmpty!18492)) mapNonEmpty!18492))

(get-info :version)

(assert (= (and mapNonEmpty!18492 ((_ is ValueCellFull!5280) mapValue!18492)) b!429960))

(assert (= (and b!429963 ((_ is ValueCellFull!5280) mapDefault!18492)) b!429965))

(assert (= start!39836 b!429963))

(declare-fun b_lambda!9213 () Bool)

(assert (=> (not b_lambda!9213) (not b!429969)))

(declare-fun t!13004 () Bool)

(declare-fun tb!3509 () Bool)

(assert (=> (and start!39836 (= defaultEntry!557 defaultEntry!557) t!13004) tb!3509))

(declare-fun result!6537 () Bool)

(assert (=> tb!3509 (= result!6537 tp_is_empty!11247)))

(assert (=> b!429969 t!13004))

(declare-fun b_and!17869 () Bool)

(assert (= b_and!17867 (and (=> t!13004 result!6537) b_and!17869)))

(declare-fun m!418217 () Bool)

(assert (=> b!429970 m!418217))

(assert (=> b!429970 m!418217))

(declare-fun m!418219 () Bool)

(assert (=> b!429970 m!418219))

(declare-fun m!418221 () Bool)

(assert (=> b!429970 m!418221))

(assert (=> b!429970 m!418221))

(declare-fun m!418223 () Bool)

(assert (=> b!429970 m!418223))

(declare-fun m!418225 () Bool)

(assert (=> start!39836 m!418225))

(declare-fun m!418227 () Bool)

(assert (=> start!39836 m!418227))

(assert (=> b!429957 m!418221))

(declare-fun m!418229 () Bool)

(assert (=> b!429957 m!418229))

(declare-fun m!418231 () Bool)

(assert (=> b!429957 m!418231))

(declare-fun m!418233 () Bool)

(assert (=> b!429957 m!418233))

(assert (=> b!429957 m!418221))

(declare-fun m!418235 () Bool)

(assert (=> b!429957 m!418235))

(declare-fun m!418237 () Bool)

(assert (=> b!429957 m!418237))

(declare-fun m!418239 () Bool)

(assert (=> mapNonEmpty!18492 m!418239))

(declare-fun m!418241 () Bool)

(assert (=> b!429954 m!418241))

(declare-fun m!418243 () Bool)

(assert (=> b!429953 m!418243))

(declare-fun m!418245 () Bool)

(assert (=> b!429955 m!418245))

(declare-fun m!418247 () Bool)

(assert (=> b!429959 m!418247))

(declare-fun m!418249 () Bool)

(assert (=> b!429968 m!418249))

(declare-fun m!418251 () Bool)

(assert (=> b!429968 m!418251))

(assert (=> b!429969 m!418221))

(declare-fun m!418253 () Bool)

(assert (=> b!429969 m!418253))

(declare-fun m!418255 () Bool)

(assert (=> b!429969 m!418255))

(declare-fun m!418257 () Bool)

(assert (=> b!429969 m!418257))

(assert (=> b!429969 m!418255))

(assert (=> b!429969 m!418253))

(declare-fun m!418259 () Bool)

(assert (=> b!429969 m!418259))

(declare-fun m!418261 () Bool)

(assert (=> b!429958 m!418261))

(declare-fun m!418263 () Bool)

(assert (=> b!429964 m!418263))

(declare-fun m!418265 () Bool)

(assert (=> b!429964 m!418265))

(declare-fun m!418267 () Bool)

(assert (=> b!429964 m!418267))

(declare-fun m!418269 () Bool)

(assert (=> b!429951 m!418269))

(declare-fun m!418271 () Bool)

(assert (=> b!429962 m!418271))

(declare-fun m!418273 () Bool)

(assert (=> b!429952 m!418273))

(check-sat (not b_next!10095) (not b!429953) (not b!429954) (not b!429970) (not b_lambda!9213) (not b!429969) (not b!429957) (not b!429964) (not mapNonEmpty!18492) (not start!39836) b_and!17869 (not b!429968) (not b!429951) (not b!429962) (not b!429959) (not b!429952) (not b!429955) tp_is_empty!11247)
(check-sat b_and!17869 (not b_next!10095))
