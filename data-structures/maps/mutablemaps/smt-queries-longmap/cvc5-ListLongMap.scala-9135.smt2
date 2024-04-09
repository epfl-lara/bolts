; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109630 () Bool)

(assert start!109630)

(declare-fun b_free!29083 () Bool)

(declare-fun b_next!29083 () Bool)

(assert (=> start!109630 (= b_free!29083 (not b_next!29083))))

(declare-fun tp!102368 () Bool)

(declare-fun b_and!47183 () Bool)

(assert (=> start!109630 (= tp!102368 b_and!47183)))

(declare-fun b!1298009 () Bool)

(declare-fun res!862714 () Bool)

(declare-fun e!740569 () Bool)

(assert (=> b!1298009 (=> (not res!862714) (not e!740569))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86415 0))(
  ( (array!86416 (arr!41704 (Array (_ BitVec 32) (_ BitVec 64))) (size!42255 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86415)

(assert (=> b!1298009 (= res!862714 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42255 _keys!1741))))))

(declare-fun b!1298010 () Bool)

(declare-fun res!862713 () Bool)

(assert (=> b!1298010 (=> (not res!862713) (not e!740569))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86415 (_ BitVec 32)) Bool)

(assert (=> b!1298010 (= res!862713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!53645 () Bool)

(declare-fun mapRes!53645 () Bool)

(declare-fun tp!102369 () Bool)

(declare-fun e!740568 () Bool)

(assert (=> mapNonEmpty!53645 (= mapRes!53645 (and tp!102369 e!740568))))

(declare-datatypes ((V!51401 0))(
  ( (V!51402 (val!17436 Int)) )
))
(declare-datatypes ((ValueCell!16463 0))(
  ( (ValueCellFull!16463 (v!20037 V!51401)) (EmptyCell!16463) )
))
(declare-fun mapValue!53645 () ValueCell!16463)

(declare-fun mapKey!53645 () (_ BitVec 32))

(declare-datatypes ((array!86417 0))(
  ( (array!86418 (arr!41705 (Array (_ BitVec 32) ValueCell!16463)) (size!42256 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86417)

(declare-fun mapRest!53645 () (Array (_ BitVec 32) ValueCell!16463))

(assert (=> mapNonEmpty!53645 (= (arr!41705 _values!1445) (store mapRest!53645 mapKey!53645 mapValue!53645))))

(declare-fun b!1298011 () Bool)

(declare-fun e!740572 () Bool)

(declare-fun tp_is_empty!34723 () Bool)

(assert (=> b!1298011 (= e!740572 tp_is_empty!34723)))

(declare-fun mapIsEmpty!53645 () Bool)

(assert (=> mapIsEmpty!53645 mapRes!53645))

(declare-fun b!1298012 () Bool)

(assert (=> b!1298012 (= e!740568 tp_is_empty!34723)))

(declare-fun b!1298013 () Bool)

(assert (=> b!1298013 (= e!740569 (not true))))

(declare-fun minValue!1387 () V!51401)

(declare-fun zeroValue!1387 () V!51401)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22624 0))(
  ( (tuple2!22625 (_1!11322 (_ BitVec 64)) (_2!11322 V!51401)) )
))
(declare-datatypes ((List!29786 0))(
  ( (Nil!29783) (Cons!29782 (h!30991 tuple2!22624) (t!43357 List!29786)) )
))
(declare-datatypes ((ListLongMap!20293 0))(
  ( (ListLongMap!20294 (toList!10162 List!29786)) )
))
(declare-fun contains!8216 (ListLongMap!20293 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5136 (array!86415 array!86417 (_ BitVec 32) (_ BitVec 32) V!51401 V!51401 (_ BitVec 32) Int) ListLongMap!20293)

(assert (=> b!1298013 (contains!8216 (getCurrentListMap!5136 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42918 0))(
  ( (Unit!42919) )
))
(declare-fun lt!580606 () Unit!42918)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!34 (array!86415 array!86417 (_ BitVec 32) (_ BitVec 32) V!51401 V!51401 (_ BitVec 64) (_ BitVec 32) Int) Unit!42918)

(assert (=> b!1298013 (= lt!580606 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!34 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1298014 () Bool)

(declare-fun e!740571 () Bool)

(assert (=> b!1298014 (= e!740571 (and e!740572 mapRes!53645))))

(declare-fun condMapEmpty!53645 () Bool)

(declare-fun mapDefault!53645 () ValueCell!16463)

