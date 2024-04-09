; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!778 () Bool)

(assert start!778)

(declare-fun b_free!171 () Bool)

(declare-fun b_next!171 () Bool)

(assert (=> start!778 (= b_free!171 (not b_next!171))))

(declare-fun tp!742 () Bool)

(declare-fun b_and!317 () Bool)

(assert (=> start!778 (= tp!742 b_and!317)))

(declare-fun b!5548 () Bool)

(declare-fun res!6292 () Bool)

(declare-fun e!3010 () Bool)

(assert (=> b!5548 (=> (not res!6292) (not e!3010))))

(declare-datatypes ((array!433 0))(
  ( (array!434 (arr!205 (Array (_ BitVec 32) (_ BitVec 64))) (size!267 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!433)

(declare-datatypes ((List!130 0))(
  ( (Nil!127) (Cons!126 (h!692 (_ BitVec 64)) (t!2265 List!130)) )
))
(declare-fun arrayNoDuplicates!0 (array!433 (_ BitVec 32) List!130) Bool)

(assert (=> b!5548 (= res!6292 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!127))))

(declare-fun b!5550 () Bool)

(declare-fun e!3012 () Bool)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!433 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!5550 (= e!3012 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!5551 () Bool)

(declare-fun res!6295 () Bool)

(assert (=> b!5551 (=> (not res!6295) (not e!3010))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!433 (_ BitVec 32)) Bool)

(assert (=> b!5551 (= res!6295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!5552 () Bool)

(declare-fun e!3011 () Bool)

(declare-fun e!3009 () Bool)

(declare-fun mapRes!344 () Bool)

(assert (=> b!5552 (= e!3011 (and e!3009 mapRes!344))))

(declare-fun condMapEmpty!344 () Bool)

(declare-datatypes ((V!509 0))(
  ( (V!510 (val!130 Int)) )
))
(declare-datatypes ((ValueCell!108 0))(
  ( (ValueCellFull!108 (v!1221 V!509)) (EmptyCell!108) )
))
(declare-datatypes ((array!435 0))(
  ( (array!436 (arr!206 (Array (_ BitVec 32) ValueCell!108)) (size!268 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!435)

(declare-fun mapDefault!344 () ValueCell!108)

(assert (=> b!5552 (= condMapEmpty!344 (= (arr!206 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!108)) mapDefault!344)))))

(declare-fun b!5553 () Bool)

(declare-fun res!6291 () Bool)

(assert (=> b!5553 (=> (not res!6291) (not e!3010))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!509)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!509)

(declare-datatypes ((tuple2!120 0))(
  ( (tuple2!121 (_1!60 (_ BitVec 64)) (_2!60 V!509)) )
))
(declare-datatypes ((List!131 0))(
  ( (Nil!128) (Cons!127 (h!693 tuple2!120) (t!2266 List!131)) )
))
(declare-datatypes ((ListLongMap!125 0))(
  ( (ListLongMap!126 (toList!78 List!131)) )
))
(declare-fun contains!52 (ListLongMap!125 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!37 (array!433 array!435 (_ BitVec 32) (_ BitVec 32) V!509 V!509 (_ BitVec 32) Int) ListLongMap!125)

(assert (=> b!5553 (= res!6291 (contains!52 (getCurrentListMap!37 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!5554 () Bool)

(declare-fun res!6290 () Bool)

(assert (=> b!5554 (=> (not res!6290) (not e!3010))))

(assert (=> b!5554 (= res!6290 (and (= (size!268 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!267 _keys!1806) (size!268 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!5555 () Bool)

(assert (=> b!5555 (= e!3012 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!5556 () Bool)

(declare-fun e!3013 () Bool)

(declare-fun tp_is_empty!249 () Bool)

(assert (=> b!5556 (= e!3013 tp_is_empty!249)))

(declare-fun mapNonEmpty!344 () Bool)

(declare-fun tp!743 () Bool)

(assert (=> mapNonEmpty!344 (= mapRes!344 (and tp!743 e!3013))))

(declare-fun mapValue!344 () ValueCell!108)

(declare-fun mapKey!344 () (_ BitVec 32))

(declare-fun mapRest!344 () (Array (_ BitVec 32) ValueCell!108))

(assert (=> mapNonEmpty!344 (= (arr!206 _values!1492) (store mapRest!344 mapKey!344 mapValue!344))))

(declare-fun b!5549 () Bool)

(assert (=> b!5549 (= e!3010 (not true))))

(assert (=> b!5549 e!3012))

(declare-fun c!389 () Bool)

(assert (=> b!5549 (= c!389 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!71 0))(
  ( (Unit!72) )
))
(declare-fun lt!1017 () Unit!71)

(declare-fun lemmaKeyInListMapIsInArray!21 (array!433 array!435 (_ BitVec 32) (_ BitVec 32) V!509 V!509 (_ BitVec 64) Int) Unit!71)

(assert (=> b!5549 (= lt!1017 (lemmaKeyInListMapIsInArray!21 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun res!6294 () Bool)

(assert (=> start!778 (=> (not res!6294) (not e!3010))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!778 (= res!6294 (validMask!0 mask!2250))))

(assert (=> start!778 e!3010))

(assert (=> start!778 tp!742))

(assert (=> start!778 true))

(declare-fun array_inv!143 (array!435) Bool)

(assert (=> start!778 (and (array_inv!143 _values!1492) e!3011)))

(assert (=> start!778 tp_is_empty!249))

(declare-fun array_inv!144 (array!433) Bool)

(assert (=> start!778 (array_inv!144 _keys!1806)))

(declare-fun mapIsEmpty!344 () Bool)

(assert (=> mapIsEmpty!344 mapRes!344))

(declare-fun b!5557 () Bool)

(assert (=> b!5557 (= e!3009 tp_is_empty!249)))

(declare-fun b!5558 () Bool)

(declare-fun res!6293 () Bool)

(assert (=> b!5558 (=> (not res!6293) (not e!3010))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!5558 (= res!6293 (validKeyInArray!0 k0!1278))))

(assert (= (and start!778 res!6294) b!5554))

(assert (= (and b!5554 res!6290) b!5551))

(assert (= (and b!5551 res!6295) b!5548))

(assert (= (and b!5548 res!6292) b!5553))

(assert (= (and b!5553 res!6291) b!5558))

(assert (= (and b!5558 res!6293) b!5549))

(assert (= (and b!5549 c!389) b!5550))

(assert (= (and b!5549 (not c!389)) b!5555))

(assert (= (and b!5552 condMapEmpty!344) mapIsEmpty!344))

(assert (= (and b!5552 (not condMapEmpty!344)) mapNonEmpty!344))

(get-info :version)

(assert (= (and mapNonEmpty!344 ((_ is ValueCellFull!108) mapValue!344)) b!5556))

(assert (= (and b!5552 ((_ is ValueCellFull!108) mapDefault!344)) b!5557))

(assert (= start!778 b!5552))

(declare-fun m!3093 () Bool)

(assert (=> b!5558 m!3093))

(declare-fun m!3095 () Bool)

(assert (=> b!5550 m!3095))

(declare-fun m!3097 () Bool)

(assert (=> b!5553 m!3097))

(assert (=> b!5553 m!3097))

(declare-fun m!3099 () Bool)

(assert (=> b!5553 m!3099))

(declare-fun m!3101 () Bool)

(assert (=> b!5548 m!3101))

(declare-fun m!3103 () Bool)

(assert (=> mapNonEmpty!344 m!3103))

(declare-fun m!3105 () Bool)

(assert (=> start!778 m!3105))

(declare-fun m!3107 () Bool)

(assert (=> start!778 m!3107))

(declare-fun m!3109 () Bool)

(assert (=> start!778 m!3109))

(declare-fun m!3111 () Bool)

(assert (=> b!5551 m!3111))

(declare-fun m!3113 () Bool)

(assert (=> b!5549 m!3113))

(check-sat (not b!5553) b_and!317 (not b!5551) (not start!778) (not b_next!171) (not b!5548) (not b!5549) (not b!5558) (not b!5550) tp_is_empty!249 (not mapNonEmpty!344))
(check-sat b_and!317 (not b_next!171))
