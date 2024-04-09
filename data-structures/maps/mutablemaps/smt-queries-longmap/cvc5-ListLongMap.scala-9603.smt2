; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113574 () Bool)

(assert start!113574)

(declare-fun b_free!31531 () Bool)

(declare-fun b_next!31531 () Bool)

(assert (=> start!113574 (= b_free!31531 (not b_next!31531))))

(declare-fun tp!110402 () Bool)

(declare-fun b_and!50861 () Bool)

(assert (=> start!113574 (= tp!110402 b_and!50861)))

(declare-fun b!1347630 () Bool)

(declare-fun res!894247 () Bool)

(declare-fun e!766760 () Bool)

(assert (=> b!1347630 (=> (not res!894247) (not e!766760))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91853 0))(
  ( (array!91854 (arr!44377 (Array (_ BitVec 32) (_ BitVec 64))) (size!44928 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91853)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!55145 0))(
  ( (V!55146 (val!18840 Int)) )
))
(declare-datatypes ((ValueCell!17867 0))(
  ( (ValueCellFull!17867 (v!21489 V!55145)) (EmptyCell!17867) )
))
(declare-datatypes ((array!91855 0))(
  ( (array!91856 (arr!44378 (Array (_ BitVec 32) ValueCell!17867)) (size!44929 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91855)

(assert (=> b!1347630 (= res!894247 (and (= (size!44929 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44928 _keys!1571) (size!44929 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!58007 () Bool)

(declare-fun mapRes!58007 () Bool)

(declare-fun tp!110403 () Bool)

(declare-fun e!766759 () Bool)

(assert (=> mapNonEmpty!58007 (= mapRes!58007 (and tp!110403 e!766759))))

(declare-fun mapValue!58007 () ValueCell!17867)

(declare-fun mapKey!58007 () (_ BitVec 32))

(declare-fun mapRest!58007 () (Array (_ BitVec 32) ValueCell!17867))

(assert (=> mapNonEmpty!58007 (= (arr!44378 _values!1303) (store mapRest!58007 mapKey!58007 mapValue!58007))))

(declare-fun mapIsEmpty!58007 () Bool)

(assert (=> mapIsEmpty!58007 mapRes!58007))

(declare-fun b!1347631 () Bool)

(declare-fun res!894246 () Bool)

(assert (=> b!1347631 (=> (not res!894246) (not e!766760))))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1347631 (= res!894246 (validKeyInArray!0 (select (arr!44377 _keys!1571) from!1960)))))

(declare-fun b!1347632 () Bool)

(declare-fun tp_is_empty!37531 () Bool)

(assert (=> b!1347632 (= e!766759 tp_is_empty!37531)))

(declare-fun b!1347633 () Bool)

(declare-fun e!766758 () Bool)

(assert (=> b!1347633 (= e!766758 tp_is_empty!37531)))

(declare-fun res!894248 () Bool)

(assert (=> start!113574 (=> (not res!894248) (not e!766760))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113574 (= res!894248 (validMask!0 mask!1977))))

(assert (=> start!113574 e!766760))

(assert (=> start!113574 tp_is_empty!37531))

(assert (=> start!113574 true))

(declare-fun array_inv!33343 (array!91853) Bool)

(assert (=> start!113574 (array_inv!33343 _keys!1571)))

(declare-fun e!766757 () Bool)

(declare-fun array_inv!33344 (array!91855) Bool)

(assert (=> start!113574 (and (array_inv!33344 _values!1303) e!766757)))

(assert (=> start!113574 tp!110402))

(declare-fun b!1347634 () Bool)

(declare-fun res!894249 () Bool)

(assert (=> b!1347634 (=> (not res!894249) (not e!766760))))

(declare-fun minValue!1245 () V!55145)

(declare-fun zeroValue!1245 () V!55145)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24430 0))(
  ( (tuple2!24431 (_1!12225 (_ BitVec 64)) (_2!12225 V!55145)) )
))
(declare-datatypes ((List!31599 0))(
  ( (Nil!31596) (Cons!31595 (h!32804 tuple2!24430) (t!46216 List!31599)) )
))
(declare-datatypes ((ListLongMap!22099 0))(
  ( (ListLongMap!22100 (toList!11065 List!31599)) )
))
(declare-fun contains!9178 (ListLongMap!22099 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5955 (array!91853 array!91855 (_ BitVec 32) (_ BitVec 32) V!55145 V!55145 (_ BitVec 32) Int) ListLongMap!22099)

(assert (=> b!1347634 (= res!894249 (contains!9178 (getCurrentListMap!5955 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1347635 () Bool)

(declare-fun res!894242 () Bool)

(assert (=> b!1347635 (=> (not res!894242) (not e!766760))))

(assert (=> b!1347635 (= res!894242 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44928 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1347636 () Bool)

(declare-fun res!894243 () Bool)

(assert (=> b!1347636 (=> (not res!894243) (not e!766760))))

(assert (=> b!1347636 (= res!894243 (not (= (select (arr!44377 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1347637 () Bool)

(declare-fun res!894244 () Bool)

(assert (=> b!1347637 (=> (not res!894244) (not e!766760))))

(declare-datatypes ((List!31600 0))(
  ( (Nil!31597) (Cons!31596 (h!32805 (_ BitVec 64)) (t!46217 List!31600)) )
))
(declare-fun arrayNoDuplicates!0 (array!91853 (_ BitVec 32) List!31600) Bool)

(assert (=> b!1347637 (= res!894244 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31597))))

(declare-fun b!1347638 () Bool)

(assert (=> b!1347638 (= e!766757 (and e!766758 mapRes!58007))))

(declare-fun condMapEmpty!58007 () Bool)

(declare-fun mapDefault!58007 () ValueCell!17867)

