; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113456 () Bool)

(assert start!113456)

(declare-fun b_free!31471 () Bool)

(declare-fun b_next!31471 () Bool)

(assert (=> start!113456 (= b_free!31471 (not b_next!31471))))

(declare-fun tp!110219 () Bool)

(declare-fun b_and!50769 () Bool)

(assert (=> start!113456 (= tp!110219 b_and!50769)))

(declare-fun b!1346293 () Bool)

(declare-fun res!893416 () Bool)

(declare-fun e!766065 () Bool)

(assert (=> b!1346293 (=> (not res!893416) (not e!766065))))

(declare-datatypes ((array!91735 0))(
  ( (array!91736 (arr!44319 (Array (_ BitVec 32) (_ BitVec 64))) (size!44870 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91735)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91735 (_ BitVec 32)) Bool)

(assert (=> b!1346293 (= res!893416 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1346294 () Bool)

(declare-fun res!893419 () Bool)

(assert (=> b!1346294 (=> (not res!893419) (not e!766065))))

(declare-datatypes ((List!31560 0))(
  ( (Nil!31557) (Cons!31556 (h!32765 (_ BitVec 64)) (t!46157 List!31560)) )
))
(declare-fun arrayNoDuplicates!0 (array!91735 (_ BitVec 32) List!31560) Bool)

(assert (=> b!1346294 (= res!893419 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31557))))

(declare-fun b!1346295 () Bool)

(declare-fun e!766067 () Bool)

(declare-fun tp_is_empty!37471 () Bool)

(assert (=> b!1346295 (= e!766067 tp_is_empty!37471)))

(declare-fun b!1346296 () Bool)

(declare-fun res!893420 () Bool)

(assert (=> b!1346296 (=> (not res!893420) (not e!766065))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1346296 (= res!893420 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44870 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1346297 () Bool)

(declare-fun res!893417 () Bool)

(assert (=> b!1346297 (=> (not res!893417) (not e!766065))))

(declare-datatypes ((V!55065 0))(
  ( (V!55066 (val!18810 Int)) )
))
(declare-datatypes ((ValueCell!17837 0))(
  ( (ValueCellFull!17837 (v!21456 V!55065)) (EmptyCell!17837) )
))
(declare-datatypes ((array!91737 0))(
  ( (array!91738 (arr!44320 (Array (_ BitVec 32) ValueCell!17837)) (size!44871 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91737)

(assert (=> b!1346297 (= res!893417 (and (= (size!44871 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44870 _keys!1571) (size!44871 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1346298 () Bool)

(declare-fun e!766066 () Bool)

(declare-fun e!766064 () Bool)

(declare-fun mapRes!57913 () Bool)

(assert (=> b!1346298 (= e!766066 (and e!766064 mapRes!57913))))

(declare-fun condMapEmpty!57913 () Bool)

(declare-fun mapDefault!57913 () ValueCell!17837)

