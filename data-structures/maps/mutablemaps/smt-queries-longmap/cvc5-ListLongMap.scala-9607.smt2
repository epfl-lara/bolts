; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113598 () Bool)

(assert start!113598)

(declare-fun b_free!31555 () Bool)

(declare-fun b_next!31555 () Bool)

(assert (=> start!113598 (= b_free!31555 (not b_next!31555))))

(declare-fun tp!110475 () Bool)

(declare-fun b_and!50909 () Bool)

(assert (=> start!113598 (= tp!110475 b_and!50909)))

(declare-fun b!1348086 () Bool)

(declare-fun res!894570 () Bool)

(declare-fun e!766937 () Bool)

(assert (=> b!1348086 (=> (not res!894570) (not e!766937))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91899 0))(
  ( (array!91900 (arr!44400 (Array (_ BitVec 32) (_ BitVec 64))) (size!44951 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91899)

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1348086 (= res!894570 (not (= (select (arr!44400 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1348087 () Bool)

(declare-fun res!894568 () Bool)

(assert (=> b!1348087 (=> (not res!894568) (not e!766937))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91899 (_ BitVec 32)) Bool)

(assert (=> b!1348087 (= res!894568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1348088 () Bool)

(declare-fun res!894569 () Bool)

(assert (=> b!1348088 (=> (not res!894569) (not e!766937))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!55177 0))(
  ( (V!55178 (val!18852 Int)) )
))
(declare-datatypes ((ValueCell!17879 0))(
  ( (ValueCellFull!17879 (v!21501 V!55177)) (EmptyCell!17879) )
))
(declare-datatypes ((array!91901 0))(
  ( (array!91902 (arr!44401 (Array (_ BitVec 32) ValueCell!17879)) (size!44952 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91901)

(assert (=> b!1348088 (= res!894569 (and (= (size!44952 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44951 _keys!1571) (size!44952 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1348089 () Bool)

(declare-fun res!894567 () Bool)

(assert (=> b!1348089 (=> (not res!894567) (not e!766937))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1348089 (= res!894567 (validKeyInArray!0 (select (arr!44400 _keys!1571) from!1960)))))

(declare-fun mapNonEmpty!58043 () Bool)

(declare-fun mapRes!58043 () Bool)

(declare-fun tp!110474 () Bool)

(declare-fun e!766936 () Bool)

(assert (=> mapNonEmpty!58043 (= mapRes!58043 (and tp!110474 e!766936))))

(declare-fun mapValue!58043 () ValueCell!17879)

(declare-fun mapKey!58043 () (_ BitVec 32))

(declare-fun mapRest!58043 () (Array (_ BitVec 32) ValueCell!17879))

(assert (=> mapNonEmpty!58043 (= (arr!44401 _values!1303) (store mapRest!58043 mapKey!58043 mapValue!58043))))

(declare-fun b!1348090 () Bool)

(declare-fun tp_is_empty!37555 () Bool)

(assert (=> b!1348090 (= e!766936 tp_is_empty!37555)))

(declare-fun minValue!1245 () V!55177)

(declare-fun b!1348091 () Bool)

(declare-fun zeroValue!1245 () V!55177)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24450 0))(
  ( (tuple2!24451 (_1!12235 (_ BitVec 64)) (_2!12235 V!55177)) )
))
(declare-datatypes ((List!31619 0))(
  ( (Nil!31616) (Cons!31615 (h!32824 tuple2!24450) (t!46260 List!31619)) )
))
(declare-datatypes ((ListLongMap!22119 0))(
  ( (ListLongMap!22120 (toList!11075 List!31619)) )
))
(declare-fun contains!9188 (ListLongMap!22119 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5965 (array!91899 array!91901 (_ BitVec 32) (_ BitVec 32) V!55177 V!55177 (_ BitVec 32) Int) ListLongMap!22119)

(assert (=> b!1348091 (= e!766937 (not (contains!9188 (getCurrentListMap!5965 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) k!1142)))))

(declare-fun lt!595894 () ListLongMap!22119)

(declare-fun +!4824 (ListLongMap!22119 tuple2!24450) ListLongMap!22119)

(assert (=> b!1348091 (contains!9188 (+!4824 lt!595894 (tuple2!24451 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k!1142)))

(declare-datatypes ((Unit!44116 0))(
  ( (Unit!44117) )
))
(declare-fun lt!595892 () Unit!44116)

(declare-fun addStillContains!1217 (ListLongMap!22119 (_ BitVec 64) V!55177 (_ BitVec 64)) Unit!44116)

(assert (=> b!1348091 (= lt!595892 (addStillContains!1217 lt!595894 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k!1142))))

(assert (=> b!1348091 (contains!9188 lt!595894 k!1142)))

(declare-fun lt!595895 () Unit!44116)

(declare-fun lt!595891 () V!55177)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!410 ((_ BitVec 64) (_ BitVec 64) V!55177 ListLongMap!22119) Unit!44116)

(assert (=> b!1348091 (= lt!595895 (lemmaInListMapAfterAddingDiffThenInBefore!410 k!1142 (select (arr!44400 _keys!1571) from!1960) lt!595891 lt!595894))))

(declare-fun lt!595893 () ListLongMap!22119)

(assert (=> b!1348091 (contains!9188 lt!595893 k!1142)))

(declare-fun lt!595890 () Unit!44116)

(assert (=> b!1348091 (= lt!595890 (lemmaInListMapAfterAddingDiffThenInBefore!410 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!595893))))

(assert (=> b!1348091 (= lt!595893 (+!4824 lt!595894 (tuple2!24451 (select (arr!44400 _keys!1571) from!1960) lt!595891)))))

(declare-fun get!22474 (ValueCell!17879 V!55177) V!55177)

(declare-fun dynLambda!3861 (Int (_ BitVec 64)) V!55177)

(assert (=> b!1348091 (= lt!595891 (get!22474 (select (arr!44401 _values!1303) from!1960) (dynLambda!3861 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6551 (array!91899 array!91901 (_ BitVec 32) (_ BitVec 32) V!55177 V!55177 (_ BitVec 32) Int) ListLongMap!22119)

(assert (=> b!1348091 (= lt!595894 (getCurrentListMapNoExtraKeys!6551 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1348092 () Bool)

(declare-fun e!766938 () Bool)

(assert (=> b!1348092 (= e!766938 tp_is_empty!37555)))

(declare-fun b!1348093 () Bool)

(declare-fun res!894573 () Bool)

(assert (=> b!1348093 (=> (not res!894573) (not e!766937))))

(assert (=> b!1348093 (= res!894573 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44951 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1348094 () Bool)

(declare-fun e!766940 () Bool)

(assert (=> b!1348094 (= e!766940 (and e!766938 mapRes!58043))))

(declare-fun condMapEmpty!58043 () Bool)

(declare-fun mapDefault!58043 () ValueCell!17879)

