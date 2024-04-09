; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109616 () Bool)

(assert start!109616)

(declare-fun b_free!29069 () Bool)

(declare-fun b_next!29069 () Bool)

(assert (=> start!109616 (= b_free!29069 (not b_next!29069))))

(declare-fun tp!102326 () Bool)

(declare-fun b_and!47169 () Bool)

(assert (=> start!109616 (= tp!102326 b_and!47169)))

(declare-fun b!1297799 () Bool)

(declare-fun e!740465 () Bool)

(declare-fun tp_is_empty!34709 () Bool)

(assert (=> b!1297799 (= e!740465 tp_is_empty!34709)))

(declare-fun b!1297800 () Bool)

(declare-fun res!862564 () Bool)

(declare-fun e!740467 () Bool)

(assert (=> b!1297800 (=> (not res!862564) (not e!740467))))

(declare-datatypes ((array!86391 0))(
  ( (array!86392 (arr!41692 (Array (_ BitVec 32) (_ BitVec 64))) (size!42243 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86391)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86391 (_ BitVec 32)) Bool)

(assert (=> b!1297800 (= res!862564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1297801 () Bool)

(declare-fun res!862569 () Bool)

(assert (=> b!1297801 (=> (not res!862569) (not e!740467))))

(declare-datatypes ((List!29776 0))(
  ( (Nil!29773) (Cons!29772 (h!30981 (_ BitVec 64)) (t!43347 List!29776)) )
))
(declare-fun arrayNoDuplicates!0 (array!86391 (_ BitVec 32) List!29776) Bool)

(assert (=> b!1297801 (= res!862569 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29773))))

(declare-fun b!1297802 () Bool)

(declare-fun res!862565 () Bool)

(assert (=> b!1297802 (=> (not res!862565) (not e!740467))))

(declare-datatypes ((V!51381 0))(
  ( (V!51382 (val!17429 Int)) )
))
(declare-fun minValue!1387 () V!51381)

(declare-fun zeroValue!1387 () V!51381)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16456 0))(
  ( (ValueCellFull!16456 (v!20030 V!51381)) (EmptyCell!16456) )
))
(declare-datatypes ((array!86393 0))(
  ( (array!86394 (arr!41693 (Array (_ BitVec 32) ValueCell!16456)) (size!42244 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86393)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22614 0))(
  ( (tuple2!22615 (_1!11317 (_ BitVec 64)) (_2!11317 V!51381)) )
))
(declare-datatypes ((List!29777 0))(
  ( (Nil!29774) (Cons!29773 (h!30982 tuple2!22614) (t!43348 List!29777)) )
))
(declare-datatypes ((ListLongMap!20283 0))(
  ( (ListLongMap!20284 (toList!10157 List!29777)) )
))
(declare-fun contains!8211 (ListLongMap!20283 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5131 (array!86391 array!86393 (_ BitVec 32) (_ BitVec 32) V!51381 V!51381 (_ BitVec 32) Int) ListLongMap!20283)

(assert (=> b!1297802 (= res!862565 (contains!8211 (getCurrentListMap!5131 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapNonEmpty!53624 () Bool)

(declare-fun mapRes!53624 () Bool)

(declare-fun tp!102327 () Bool)

(declare-fun e!740466 () Bool)

(assert (=> mapNonEmpty!53624 (= mapRes!53624 (and tp!102327 e!740466))))

(declare-fun mapKey!53624 () (_ BitVec 32))

(declare-fun mapValue!53624 () ValueCell!16456)

(declare-fun mapRest!53624 () (Array (_ BitVec 32) ValueCell!16456))

(assert (=> mapNonEmpty!53624 (= (arr!41693 _values!1445) (store mapRest!53624 mapKey!53624 mapValue!53624))))

(declare-fun b!1297803 () Bool)

(declare-fun e!740464 () Bool)

(assert (=> b!1297803 (= e!740464 (and e!740465 mapRes!53624))))

(declare-fun condMapEmpty!53624 () Bool)

(declare-fun mapDefault!53624 () ValueCell!16456)

