; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113058 () Bool)

(assert start!113058)

(declare-fun b_free!31073 () Bool)

(declare-fun b_next!31073 () Bool)

(assert (=> start!113058 (= b_free!31073 (not b_next!31073))))

(declare-fun tp!109024 () Bool)

(declare-fun b_and!50113 () Bool)

(assert (=> start!113058 (= tp!109024 b_and!50113)))

(declare-fun b!1339495 () Bool)

(declare-fun res!888669 () Bool)

(declare-fun e!762998 () Bool)

(assert (=> b!1339495 (=> (not res!888669) (not e!762998))))

(declare-datatypes ((array!90965 0))(
  ( (array!90966 (arr!43934 (Array (_ BitVec 32) (_ BitVec 64))) (size!44485 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90965)

(declare-datatypes ((List!31287 0))(
  ( (Nil!31284) (Cons!31283 (h!32492 (_ BitVec 64)) (t!45626 List!31287)) )
))
(declare-fun arrayNoDuplicates!0 (array!90965 (_ BitVec 32) List!31287) Bool)

(assert (=> b!1339495 (= res!888669 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31284))))

(declare-fun res!888671 () Bool)

(assert (=> start!113058 (=> (not res!888671) (not e!762998))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113058 (= res!888671 (validMask!0 mask!1977))))

(assert (=> start!113058 e!762998))

(declare-fun tp_is_empty!37073 () Bool)

(assert (=> start!113058 tp_is_empty!37073))

(assert (=> start!113058 true))

(declare-fun array_inv!33049 (array!90965) Bool)

(assert (=> start!113058 (array_inv!33049 _keys!1571)))

(declare-datatypes ((V!54533 0))(
  ( (V!54534 (val!18611 Int)) )
))
(declare-datatypes ((ValueCell!17638 0))(
  ( (ValueCellFull!17638 (v!21257 V!54533)) (EmptyCell!17638) )
))
(declare-datatypes ((array!90967 0))(
  ( (array!90968 (arr!43935 (Array (_ BitVec 32) ValueCell!17638)) (size!44486 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90967)

(declare-fun e!763000 () Bool)

(declare-fun array_inv!33050 (array!90967) Bool)

(assert (=> start!113058 (and (array_inv!33050 _values!1303) e!763000)))

(assert (=> start!113058 tp!109024))

(declare-fun mapIsEmpty!57316 () Bool)

(declare-fun mapRes!57316 () Bool)

(assert (=> mapIsEmpty!57316 mapRes!57316))

(declare-fun mapNonEmpty!57316 () Bool)

(declare-fun tp!109025 () Bool)

(declare-fun e!762999 () Bool)

(assert (=> mapNonEmpty!57316 (= mapRes!57316 (and tp!109025 e!762999))))

(declare-fun mapValue!57316 () ValueCell!17638)

(declare-fun mapKey!57316 () (_ BitVec 32))

(declare-fun mapRest!57316 () (Array (_ BitVec 32) ValueCell!17638))

(assert (=> mapNonEmpty!57316 (= (arr!43935 _values!1303) (store mapRest!57316 mapKey!57316 mapValue!57316))))

(declare-fun b!1339496 () Bool)

(declare-fun e!762997 () Bool)

(assert (=> b!1339496 (= e!763000 (and e!762997 mapRes!57316))))

(declare-fun condMapEmpty!57316 () Bool)

(declare-fun mapDefault!57316 () ValueCell!17638)

