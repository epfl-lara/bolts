; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113586 () Bool)

(assert start!113586)

(declare-fun b_free!31543 () Bool)

(declare-fun b_next!31543 () Bool)

(assert (=> start!113586 (= b_free!31543 (not b_next!31543))))

(declare-fun tp!110439 () Bool)

(declare-fun b_and!50885 () Bool)

(assert (=> start!113586 (= tp!110439 b_and!50885)))

(declare-fun b!1347858 () Bool)

(declare-fun res!894410 () Bool)

(declare-fun e!766849 () Bool)

(assert (=> b!1347858 (=> (not res!894410) (not e!766849))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91877 0))(
  ( (array!91878 (arr!44389 (Array (_ BitVec 32) (_ BitVec 64))) (size!44940 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91877)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1347858 (= res!894410 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44940 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1347859 () Bool)

(declare-fun res!894408 () Bool)

(assert (=> b!1347859 (=> (not res!894408) (not e!766849))))

(declare-datatypes ((List!31610 0))(
  ( (Nil!31607) (Cons!31606 (h!32815 (_ BitVec 64)) (t!46239 List!31610)) )
))
(declare-fun arrayNoDuplicates!0 (array!91877 (_ BitVec 32) List!31610) Bool)

(assert (=> b!1347859 (= res!894408 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31607))))

(declare-fun b!1347860 () Bool)

(declare-fun res!894411 () Bool)

(assert (=> b!1347860 (=> (not res!894411) (not e!766849))))

(declare-datatypes ((V!55161 0))(
  ( (V!55162 (val!18846 Int)) )
))
(declare-fun minValue!1245 () V!55161)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!55161)

(declare-datatypes ((ValueCell!17873 0))(
  ( (ValueCellFull!17873 (v!21495 V!55161)) (EmptyCell!17873) )
))
(declare-datatypes ((array!91879 0))(
  ( (array!91880 (arr!44390 (Array (_ BitVec 32) ValueCell!17873)) (size!44941 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91879)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24440 0))(
  ( (tuple2!24441 (_1!12230 (_ BitVec 64)) (_2!12230 V!55161)) )
))
(declare-datatypes ((List!31611 0))(
  ( (Nil!31608) (Cons!31607 (h!32816 tuple2!24440) (t!46240 List!31611)) )
))
(declare-datatypes ((ListLongMap!22109 0))(
  ( (ListLongMap!22110 (toList!11070 List!31611)) )
))
(declare-fun contains!9183 (ListLongMap!22109 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5960 (array!91877 array!91879 (_ BitVec 32) (_ BitVec 32) V!55161 V!55161 (_ BitVec 32) Int) ListLongMap!22109)

(assert (=> b!1347860 (= res!894411 (contains!9183 (getCurrentListMap!5960 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1347861 () Bool)

(assert (=> b!1347861 (= e!766849 (not (not (= k!1142 (select (arr!44389 _keys!1571) from!1960)))))))

(declare-fun lt!595820 () ListLongMap!22109)

(assert (=> b!1347861 (contains!9183 lt!595820 k!1142)))

(declare-datatypes ((Unit!44106 0))(
  ( (Unit!44107) )
))
(declare-fun lt!595819 () Unit!44106)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!405 ((_ BitVec 64) (_ BitVec 64) V!55161 ListLongMap!22109) Unit!44106)

(assert (=> b!1347861 (= lt!595819 (lemmaInListMapAfterAddingDiffThenInBefore!405 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!595820))))

(declare-fun +!4819 (ListLongMap!22109 tuple2!24440) ListLongMap!22109)

(declare-fun getCurrentListMapNoExtraKeys!6546 (array!91877 array!91879 (_ BitVec 32) (_ BitVec 32) V!55161 V!55161 (_ BitVec 32) Int) ListLongMap!22109)

(declare-fun get!22465 (ValueCell!17873 V!55161) V!55161)

(declare-fun dynLambda!3856 (Int (_ BitVec 64)) V!55161)

(assert (=> b!1347861 (= lt!595820 (+!4819 (getCurrentListMapNoExtraKeys!6546 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24441 (select (arr!44389 _keys!1571) from!1960) (get!22465 (select (arr!44390 _values!1303) from!1960) (dynLambda!3856 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1347862 () Bool)

(declare-fun res!894404 () Bool)

(assert (=> b!1347862 (=> (not res!894404) (not e!766849))))

(assert (=> b!1347862 (= res!894404 (and (= (size!44941 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44940 _keys!1571) (size!44941 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1347863 () Bool)

(declare-fun res!894412 () Bool)

(assert (=> b!1347863 (=> (not res!894412) (not e!766849))))

(assert (=> b!1347863 (= res!894412 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!58025 () Bool)

(declare-fun mapRes!58025 () Bool)

(assert (=> mapIsEmpty!58025 mapRes!58025))

(declare-fun b!1347864 () Bool)

(declare-fun res!894406 () Bool)

(assert (=> b!1347864 (=> (not res!894406) (not e!766849))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91877 (_ BitVec 32)) Bool)

(assert (=> b!1347864 (= res!894406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun res!894409 () Bool)

(assert (=> start!113586 (=> (not res!894409) (not e!766849))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113586 (= res!894409 (validMask!0 mask!1977))))

(assert (=> start!113586 e!766849))

(declare-fun tp_is_empty!37543 () Bool)

(assert (=> start!113586 tp_is_empty!37543))

(assert (=> start!113586 true))

(declare-fun array_inv!33351 (array!91877) Bool)

(assert (=> start!113586 (array_inv!33351 _keys!1571)))

(declare-fun e!766847 () Bool)

(declare-fun array_inv!33352 (array!91879) Bool)

(assert (=> start!113586 (and (array_inv!33352 _values!1303) e!766847)))

(assert (=> start!113586 tp!110439))

(declare-fun mapNonEmpty!58025 () Bool)

(declare-fun tp!110438 () Bool)

(declare-fun e!766850 () Bool)

(assert (=> mapNonEmpty!58025 (= mapRes!58025 (and tp!110438 e!766850))))

(declare-fun mapKey!58025 () (_ BitVec 32))

(declare-fun mapRest!58025 () (Array (_ BitVec 32) ValueCell!17873))

(declare-fun mapValue!58025 () ValueCell!17873)

(assert (=> mapNonEmpty!58025 (= (arr!44390 _values!1303) (store mapRest!58025 mapKey!58025 mapValue!58025))))

(declare-fun b!1347865 () Bool)

(declare-fun res!894405 () Bool)

(assert (=> b!1347865 (=> (not res!894405) (not e!766849))))

(assert (=> b!1347865 (= res!894405 (not (= (select (arr!44389 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1347866 () Bool)

(declare-fun res!894407 () Bool)

(assert (=> b!1347866 (=> (not res!894407) (not e!766849))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1347866 (= res!894407 (validKeyInArray!0 (select (arr!44389 _keys!1571) from!1960)))))

(declare-fun b!1347867 () Bool)

(assert (=> b!1347867 (= e!766850 tp_is_empty!37543)))

(declare-fun b!1347868 () Bool)

(declare-fun e!766846 () Bool)

(assert (=> b!1347868 (= e!766847 (and e!766846 mapRes!58025))))

(declare-fun condMapEmpty!58025 () Bool)

(declare-fun mapDefault!58025 () ValueCell!17873)

