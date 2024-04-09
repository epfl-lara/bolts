; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111458 () Bool)

(assert start!111458)

(declare-fun b_free!30079 () Bool)

(declare-fun b_next!30079 () Bool)

(assert (=> start!111458 (= b_free!30079 (not b_next!30079))))

(declare-fun tp!105714 () Bool)

(declare-fun b_and!48327 () Bool)

(assert (=> start!111458 (= tp!105714 b_and!48327)))

(declare-fun b!1318499 () Bool)

(declare-fun res!875150 () Bool)

(declare-fun e!752403 () Bool)

(assert (=> b!1318499 (=> (not res!875150) (not e!752403))))

(declare-datatypes ((array!88699 0))(
  ( (array!88700 (arr!42819 (Array (_ BitVec 32) (_ BitVec 64))) (size!43370 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88699)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1318499 (= res!875150 (not (= (select (arr!42819 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1318500 () Bool)

(declare-fun res!875145 () Bool)

(assert (=> b!1318500 (=> (not res!875145) (not e!752403))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!52969 0))(
  ( (V!52970 (val!18024 Int)) )
))
(declare-fun zeroValue!1279 () V!52969)

(declare-datatypes ((ValueCell!17051 0))(
  ( (ValueCellFull!17051 (v!20652 V!52969)) (EmptyCell!17051) )
))
(declare-datatypes ((array!88701 0))(
  ( (array!88702 (arr!42820 (Array (_ BitVec 32) ValueCell!17051)) (size!43371 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88701)

(declare-fun minValue!1279 () V!52969)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23348 0))(
  ( (tuple2!23349 (_1!11684 (_ BitVec 64)) (_2!11684 V!52969)) )
))
(declare-datatypes ((List!30540 0))(
  ( (Nil!30537) (Cons!30536 (h!31745 tuple2!23348) (t!44175 List!30540)) )
))
(declare-datatypes ((ListLongMap!21017 0))(
  ( (ListLongMap!21018 (toList!10524 List!30540)) )
))
(declare-fun contains!8615 (ListLongMap!21017 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5479 (array!88699 array!88701 (_ BitVec 32) (_ BitVec 32) V!52969 V!52969 (_ BitVec 32) Int) ListLongMap!21017)

(assert (=> b!1318500 (= res!875145 (contains!8615 (getCurrentListMap!5479 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun res!875149 () Bool)

(assert (=> start!111458 (=> (not res!875149) (not e!752403))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111458 (= res!875149 (validMask!0 mask!2019))))

(assert (=> start!111458 e!752403))

(declare-fun array_inv!32285 (array!88699) Bool)

(assert (=> start!111458 (array_inv!32285 _keys!1609)))

(assert (=> start!111458 true))

(declare-fun tp_is_empty!35899 () Bool)

(assert (=> start!111458 tp_is_empty!35899))

(declare-fun e!752405 () Bool)

(declare-fun array_inv!32286 (array!88701) Bool)

(assert (=> start!111458 (and (array_inv!32286 _values!1337) e!752405)))

(assert (=> start!111458 tp!105714))

(declare-fun b!1318501 () Bool)

(declare-fun e!752404 () Bool)

(declare-fun mapRes!55496 () Bool)

(assert (=> b!1318501 (= e!752405 (and e!752404 mapRes!55496))))

(declare-fun condMapEmpty!55496 () Bool)

(declare-fun mapDefault!55496 () ValueCell!17051)

