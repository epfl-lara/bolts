; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113318 () Bool)

(assert start!113318)

(declare-fun b_free!31333 () Bool)

(declare-fun b_next!31333 () Bool)

(assert (=> start!113318 (= b_free!31333 (not b_next!31333))))

(declare-fun tp!109804 () Bool)

(declare-fun b_and!50565 () Bool)

(assert (=> start!113318 (= tp!109804 b_and!50565)))

(declare-fun b!1343986 () Bool)

(declare-fun e!764949 () Bool)

(declare-fun tp_is_empty!37333 () Bool)

(assert (=> b!1343986 (= e!764949 tp_is_empty!37333)))

(declare-fun b!1343987 () Bool)

(declare-fun res!891797 () Bool)

(declare-fun e!764951 () Bool)

(assert (=> b!1343987 (=> (not res!891797) (not e!764951))))

(declare-datatypes ((array!91465 0))(
  ( (array!91466 (arr!44184 (Array (_ BitVec 32) (_ BitVec 64))) (size!44735 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91465)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91465 (_ BitVec 32)) Bool)

(assert (=> b!1343987 (= res!891797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun res!891798 () Bool)

(assert (=> start!113318 (=> (not res!891798) (not e!764951))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113318 (= res!891798 (validMask!0 mask!1977))))

(assert (=> start!113318 e!764951))

(assert (=> start!113318 tp_is_empty!37333))

(assert (=> start!113318 true))

(declare-fun array_inv!33219 (array!91465) Bool)

(assert (=> start!113318 (array_inv!33219 _keys!1571)))

(declare-datatypes ((V!54881 0))(
  ( (V!54882 (val!18741 Int)) )
))
(declare-datatypes ((ValueCell!17768 0))(
  ( (ValueCellFull!17768 (v!21387 V!54881)) (EmptyCell!17768) )
))
(declare-datatypes ((array!91467 0))(
  ( (array!91468 (arr!44185 (Array (_ BitVec 32) ValueCell!17768)) (size!44736 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91467)

(declare-fun e!764947 () Bool)

(declare-fun array_inv!33220 (array!91467) Bool)

(assert (=> start!113318 (and (array_inv!33220 _values!1303) e!764947)))

(assert (=> start!113318 tp!109804))

(declare-fun b!1343988 () Bool)

(declare-fun e!764950 () Bool)

(assert (=> b!1343988 (= e!764950 tp_is_empty!37333)))

(declare-fun mapNonEmpty!57706 () Bool)

(declare-fun mapRes!57706 () Bool)

(declare-fun tp!109805 () Bool)

(assert (=> mapNonEmpty!57706 (= mapRes!57706 (and tp!109805 e!764949))))

(declare-fun mapValue!57706 () ValueCell!17768)

(declare-fun mapKey!57706 () (_ BitVec 32))

(declare-fun mapRest!57706 () (Array (_ BitVec 32) ValueCell!17768))

(assert (=> mapNonEmpty!57706 (= (arr!44185 _values!1303) (store mapRest!57706 mapKey!57706 mapValue!57706))))

(declare-fun mapIsEmpty!57706 () Bool)

(assert (=> mapIsEmpty!57706 mapRes!57706))

(declare-fun b!1343989 () Bool)

(declare-fun res!891796 () Bool)

(assert (=> b!1343989 (=> (not res!891796) (not e!764951))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1343989 (= res!891796 (and (= (size!44736 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44735 _keys!1571) (size!44736 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1343990 () Bool)

(assert (=> b!1343990 (= e!764947 (and e!764950 mapRes!57706))))

(declare-fun condMapEmpty!57706 () Bool)

(declare-fun mapDefault!57706 () ValueCell!17768)

