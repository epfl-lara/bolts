; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111390 () Bool)

(assert start!111390)

(declare-fun b_free!30011 () Bool)

(declare-fun b_next!30011 () Bool)

(assert (=> start!111390 (= b_free!30011 (not b_next!30011))))

(declare-fun tp!105510 () Bool)

(declare-fun b_and!48241 () Bool)

(assert (=> start!111390 (= tp!105510 b_and!48241)))

(declare-fun b!1317551 () Bool)

(declare-fun e!751893 () Bool)

(assert (=> b!1317551 (= e!751893 false)))

(declare-datatypes ((array!88569 0))(
  ( (array!88570 (arr!42754 (Array (_ BitVec 32) (_ BitVec 64))) (size!43305 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88569)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!52877 0))(
  ( (V!52878 (val!17990 Int)) )
))
(declare-fun zeroValue!1279 () V!52877)

(declare-datatypes ((ValueCell!17017 0))(
  ( (ValueCellFull!17017 (v!20618 V!52877)) (EmptyCell!17017) )
))
(declare-datatypes ((array!88571 0))(
  ( (array!88572 (arr!42755 (Array (_ BitVec 32) ValueCell!17017)) (size!43306 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88571)

(declare-fun minValue!1279 () V!52877)

(declare-fun lt!586324 () Bool)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23304 0))(
  ( (tuple2!23305 (_1!11662 (_ BitVec 64)) (_2!11662 V!52877)) )
))
(declare-datatypes ((List!30493 0))(
  ( (Nil!30490) (Cons!30489 (h!31698 tuple2!23304) (t!44108 List!30493)) )
))
(declare-datatypes ((ListLongMap!20973 0))(
  ( (ListLongMap!20974 (toList!10502 List!30493)) )
))
(declare-fun contains!8593 (ListLongMap!20973 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5458 (array!88569 array!88571 (_ BitVec 32) (_ BitVec 32) V!52877 V!52877 (_ BitVec 32) Int) ListLongMap!20973)

(assert (=> b!1317551 (= lt!586324 (contains!8593 (getCurrentListMap!5458 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1317552 () Bool)

(declare-fun e!751896 () Bool)

(declare-fun e!751895 () Bool)

(declare-fun mapRes!55394 () Bool)

(assert (=> b!1317552 (= e!751896 (and e!751895 mapRes!55394))))

(declare-fun condMapEmpty!55394 () Bool)

(declare-fun mapDefault!55394 () ValueCell!17017)

