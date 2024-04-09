; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!632 () Bool)

(assert start!632)

(declare-fun b_free!105 () Bool)

(declare-fun b_next!105 () Bool)

(assert (=> start!632 (= b_free!105 (not b_next!105))))

(declare-fun tp!533 () Bool)

(declare-fun b_and!243 () Bool)

(assert (=> start!632 (= tp!533 b_and!243)))

(declare-fun b!4036 () Bool)

(declare-fun res!5510 () Bool)

(declare-fun e!2089 () Bool)

(assert (=> b!4036 (=> (not res!5510) (not e!2089))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!421 0))(
  ( (V!422 (val!97 Int)) )
))
(declare-datatypes ((ValueCell!75 0))(
  ( (ValueCellFull!75 (v!1184 V!421)) (EmptyCell!75) )
))
(declare-datatypes ((array!299 0))(
  ( (array!300 (arr!142 (Array (_ BitVec 32) ValueCell!75)) (size!204 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!299)

(declare-datatypes ((array!301 0))(
  ( (array!302 (arr!143 (Array (_ BitVec 32) (_ BitVec 64))) (size!205 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!301)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!4036 (= res!5510 (and (= (size!204 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!205 _keys!1806) (size!204 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!4037 () Bool)

(declare-fun e!2088 () Bool)

(declare-fun tp_is_empty!183 () Bool)

(assert (=> b!4037 (= e!2088 tp_is_empty!183)))

(declare-fun b!4038 () Bool)

(declare-fun res!5512 () Bool)

(assert (=> b!4038 (=> (not res!5512) (not e!2089))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!301 (_ BitVec 32)) Bool)

(assert (=> b!4038 (= res!5512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!4039 () Bool)

(declare-fun res!5511 () Bool)

(assert (=> b!4039 (=> (not res!5511) (not e!2089))))

(declare-datatypes ((List!86 0))(
  ( (Nil!83) (Cons!82 (h!648 (_ BitVec 64)) (t!2213 List!86)) )
))
(declare-fun arrayNoDuplicates!0 (array!301 (_ BitVec 32) List!86) Bool)

(assert (=> b!4039 (= res!5511 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!83))))

(declare-fun res!5509 () Bool)

(assert (=> start!632 (=> (not res!5509) (not e!2089))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!632 (= res!5509 (validMask!0 mask!2250))))

(assert (=> start!632 e!2089))

(assert (=> start!632 tp!533))

(assert (=> start!632 true))

(declare-fun e!2086 () Bool)

(declare-fun array_inv!99 (array!299) Bool)

(assert (=> start!632 (and (array_inv!99 _values!1492) e!2086)))

(assert (=> start!632 tp_is_empty!183))

(declare-fun array_inv!100 (array!301) Bool)

(assert (=> start!632 (array_inv!100 _keys!1806)))

(declare-fun b!4040 () Bool)

(assert (=> b!4040 (= e!2089 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!421)

(declare-fun lt!558 () Bool)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun zeroValue!1434 () V!421)

(declare-datatypes ((tuple2!82 0))(
  ( (tuple2!83 (_1!41 (_ BitVec 64)) (_2!41 V!421)) )
))
(declare-datatypes ((List!87 0))(
  ( (Nil!84) (Cons!83 (h!649 tuple2!82) (t!2214 List!87)) )
))
(declare-datatypes ((ListLongMap!87 0))(
  ( (ListLongMap!88 (toList!59 List!87)) )
))
(declare-fun contains!29 (ListLongMap!87 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!18 (array!301 array!299 (_ BitVec 32) (_ BitVec 32) V!421 V!421 (_ BitVec 32) Int) ListLongMap!87)

(assert (=> b!4040 (= lt!558 (contains!29 (getCurrentListMap!18 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun mapIsEmpty!233 () Bool)

(declare-fun mapRes!233 () Bool)

(assert (=> mapIsEmpty!233 mapRes!233))

(declare-fun b!4041 () Bool)

(declare-fun e!2090 () Bool)

(assert (=> b!4041 (= e!2086 (and e!2090 mapRes!233))))

(declare-fun condMapEmpty!233 () Bool)

(declare-fun mapDefault!233 () ValueCell!75)

(assert (=> b!4041 (= condMapEmpty!233 (= (arr!142 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!75)) mapDefault!233)))))

(declare-fun mapNonEmpty!233 () Bool)

(declare-fun tp!532 () Bool)

(assert (=> mapNonEmpty!233 (= mapRes!233 (and tp!532 e!2088))))

(declare-fun mapValue!233 () ValueCell!75)

(declare-fun mapRest!233 () (Array (_ BitVec 32) ValueCell!75))

(declare-fun mapKey!233 () (_ BitVec 32))

(assert (=> mapNonEmpty!233 (= (arr!142 _values!1492) (store mapRest!233 mapKey!233 mapValue!233))))

(declare-fun b!4042 () Bool)

(assert (=> b!4042 (= e!2090 tp_is_empty!183)))

(assert (= (and start!632 res!5509) b!4036))

(assert (= (and b!4036 res!5510) b!4038))

(assert (= (and b!4038 res!5512) b!4039))

(assert (= (and b!4039 res!5511) b!4040))

(assert (= (and b!4041 condMapEmpty!233) mapIsEmpty!233))

(assert (= (and b!4041 (not condMapEmpty!233)) mapNonEmpty!233))

(get-info :version)

(assert (= (and mapNonEmpty!233 ((_ is ValueCellFull!75) mapValue!233)) b!4037))

(assert (= (and b!4041 ((_ is ValueCellFull!75) mapDefault!233)) b!4042))

(assert (= start!632 b!4041))

(declare-fun m!2079 () Bool)

(assert (=> mapNonEmpty!233 m!2079))

(declare-fun m!2081 () Bool)

(assert (=> start!632 m!2081))

(declare-fun m!2083 () Bool)

(assert (=> start!632 m!2083))

(declare-fun m!2085 () Bool)

(assert (=> start!632 m!2085))

(declare-fun m!2087 () Bool)

(assert (=> b!4039 m!2087))

(declare-fun m!2089 () Bool)

(assert (=> b!4038 m!2089))

(declare-fun m!2091 () Bool)

(assert (=> b!4040 m!2091))

(assert (=> b!4040 m!2091))

(declare-fun m!2093 () Bool)

(assert (=> b!4040 m!2093))

(check-sat (not mapNonEmpty!233) (not b_next!105) (not b!4040) (not start!632) (not b!4038) b_and!243 tp_is_empty!183 (not b!4039))
(check-sat b_and!243 (not b_next!105))
