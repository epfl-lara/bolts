; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4544 () Bool)

(assert start!4544)

(declare-fun b_free!1267 () Bool)

(declare-fun b_next!1267 () Bool)

(assert (=> start!4544 (= b_free!1267 (not b_next!1267))))

(declare-fun tp!5244 () Bool)

(declare-fun b_and!2095 () Bool)

(assert (=> start!4544 (= tp!5244 b_and!2095)))

(declare-fun mapNonEmpty!1984 () Bool)

(declare-fun mapRes!1984 () Bool)

(declare-fun tp!5245 () Bool)

(declare-fun e!22441 () Bool)

(assert (=> mapNonEmpty!1984 (= mapRes!1984 (and tp!5245 e!22441))))

(declare-datatypes ((V!1987 0))(
  ( (V!1988 (val!837 Int)) )
))
(declare-datatypes ((ValueCell!611 0))(
  ( (ValueCellFull!611 (v!1934 V!1987)) (EmptyCell!611) )
))
(declare-datatypes ((array!2451 0))(
  ( (array!2452 (arr!1171 (Array (_ BitVec 32) ValueCell!611)) (size!1272 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2451)

(declare-fun mapValue!1984 () ValueCell!611)

(declare-fun mapKey!1984 () (_ BitVec 32))

(declare-fun mapRest!1984 () (Array (_ BitVec 32) ValueCell!611))

(assert (=> mapNonEmpty!1984 (= (arr!1171 _values!1501) (store mapRest!1984 mapKey!1984 mapValue!1984))))

(declare-fun b!35527 () Bool)

(declare-fun tp_is_empty!1621 () Bool)

(assert (=> b!35527 (= e!22441 tp_is_empty!1621)))

(declare-fun b!35528 () Bool)

(declare-fun res!21550 () Bool)

(declare-fun e!22446 () Bool)

(assert (=> b!35528 (=> (not res!21550) (not e!22446))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!35528 (= res!21550 (validKeyInArray!0 k!1304))))

(declare-fun mapIsEmpty!1984 () Bool)

(assert (=> mapIsEmpty!1984 mapRes!1984))

(declare-fun b!35529 () Bool)

(declare-fun res!21549 () Bool)

(assert (=> b!35529 (=> (not res!21549) (not e!22446))))

(declare-datatypes ((array!2453 0))(
  ( (array!2454 (arr!1172 (Array (_ BitVec 32) (_ BitVec 64))) (size!1273 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2453)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2453 (_ BitVec 32)) Bool)

(assert (=> b!35529 (= res!21549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!35530 () Bool)

(declare-fun e!22440 () Bool)

(assert (=> b!35530 (= e!22446 e!22440)))

(declare-fun res!21554 () Bool)

(assert (=> b!35530 (=> (not res!21554) (not e!22440))))

(declare-datatypes ((tuple2!1342 0))(
  ( (tuple2!1343 (_1!681 (_ BitVec 64)) (_2!681 V!1987)) )
))
(declare-datatypes ((List!950 0))(
  ( (Nil!947) (Cons!946 (h!1513 tuple2!1342) (t!3661 List!950)) )
))
(declare-datatypes ((ListLongMap!923 0))(
  ( (ListLongMap!924 (toList!477 List!950)) )
))
(declare-fun lt!13072 () ListLongMap!923)

(declare-fun contains!422 (ListLongMap!923 (_ BitVec 64)) Bool)

(assert (=> b!35530 (= res!21554 (not (contains!422 lt!13072 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1987)

(declare-fun minValue!1443 () V!1987)

(declare-fun getCurrentListMap!298 (array!2453 array!2451 (_ BitVec 32) (_ BitVec 32) V!1987 V!1987 (_ BitVec 32) Int) ListLongMap!923)

(assert (=> b!35530 (= lt!13072 (getCurrentListMap!298 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!35531 () Bool)

(declare-fun res!21551 () Bool)

(assert (=> b!35531 (=> (not res!21551) (not e!22446))))

(declare-datatypes ((List!951 0))(
  ( (Nil!948) (Cons!947 (h!1514 (_ BitVec 64)) (t!3662 List!951)) )
))
(declare-fun arrayNoDuplicates!0 (array!2453 (_ BitVec 32) List!951) Bool)

(assert (=> b!35531 (= res!21551 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!948))))

(declare-fun b!35532 () Bool)

(declare-fun e!22444 () Bool)

(declare-fun e!22442 () Bool)

(assert (=> b!35532 (= e!22444 (and e!22442 mapRes!1984))))

(declare-fun condMapEmpty!1984 () Bool)

(declare-fun mapDefault!1984 () ValueCell!611)

