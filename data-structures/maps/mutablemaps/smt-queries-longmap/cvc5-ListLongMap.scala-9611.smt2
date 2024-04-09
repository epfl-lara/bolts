; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113706 () Bool)

(assert start!113706)

(declare-fun b_free!31579 () Bool)

(declare-fun b_next!31579 () Bool)

(assert (=> start!113706 (= b_free!31579 (not b_next!31579))))

(declare-fun tp!110554 () Bool)

(declare-fun b_and!50967 () Bool)

(assert (=> start!113706 (= tp!110554 b_and!50967)))

(declare-fun res!895085 () Bool)

(declare-fun e!767467 () Bool)

(assert (=> start!113706 (=> (not res!895085) (not e!767467))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113706 (= res!895085 (validMask!0 mask!1977))))

(assert (=> start!113706 e!767467))

(declare-fun tp_is_empty!37579 () Bool)

(assert (=> start!113706 tp_is_empty!37579))

(assert (=> start!113706 true))

(declare-datatypes ((array!91949 0))(
  ( (array!91950 (arr!44423 (Array (_ BitVec 32) (_ BitVec 64))) (size!44974 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91949)

(declare-fun array_inv!33373 (array!91949) Bool)

(assert (=> start!113706 (array_inv!33373 _keys!1571)))

(declare-datatypes ((V!55209 0))(
  ( (V!55210 (val!18864 Int)) )
))
(declare-datatypes ((ValueCell!17891 0))(
  ( (ValueCellFull!17891 (v!21517 V!55209)) (EmptyCell!17891) )
))
(declare-datatypes ((array!91951 0))(
  ( (array!91952 (arr!44424 (Array (_ BitVec 32) ValueCell!17891)) (size!44975 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91951)

(declare-fun e!767469 () Bool)

(declare-fun array_inv!33374 (array!91951) Bool)

(assert (=> start!113706 (and (array_inv!33374 _values!1303) e!767469)))

(assert (=> start!113706 tp!110554))

(declare-fun b!1349035 () Bool)

(declare-fun res!895082 () Bool)

(assert (=> b!1349035 (=> (not res!895082) (not e!767467))))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1349035 (= res!895082 (validKeyInArray!0 (select (arr!44423 _keys!1571) from!1960)))))

(declare-fun b!1349036 () Bool)

(declare-fun res!895086 () Bool)

(assert (=> b!1349036 (=> (not res!895086) (not e!767467))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1349036 (= res!895086 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1349037 () Bool)

(declare-fun res!895081 () Bool)

(assert (=> b!1349037 (=> (not res!895081) (not e!767467))))

(declare-fun k!1142 () (_ BitVec 64))

(assert (=> b!1349037 (= res!895081 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44974 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1349038 () Bool)

(declare-fun res!895077 () Bool)

(assert (=> b!1349038 (=> (not res!895077) (not e!767467))))

(declare-fun minValue!1245 () V!55209)

(declare-fun zeroValue!1245 () V!55209)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24466 0))(
  ( (tuple2!24467 (_1!12243 (_ BitVec 64)) (_2!12243 V!55209)) )
))
(declare-datatypes ((List!31633 0))(
  ( (Nil!31630) (Cons!31629 (h!32838 tuple2!24466) (t!46286 List!31633)) )
))
(declare-datatypes ((ListLongMap!22135 0))(
  ( (ListLongMap!22136 (toList!11083 List!31633)) )
))
(declare-fun contains!9200 (ListLongMap!22135 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5973 (array!91949 array!91951 (_ BitVec 32) (_ BitVec 32) V!55209 V!55209 (_ BitVec 32) Int) ListLongMap!22135)

(assert (=> b!1349038 (= res!895077 (contains!9200 (getCurrentListMap!5973 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1349039 () Bool)

(assert (=> b!1349039 (= e!767467 (= k!1142 (select (arr!44423 _keys!1571) from!1960)))))

(declare-fun b!1349040 () Bool)

(declare-fun e!767468 () Bool)

(assert (=> b!1349040 (= e!767468 tp_is_empty!37579)))

(declare-fun mapNonEmpty!58086 () Bool)

(declare-fun mapRes!58086 () Bool)

(declare-fun tp!110553 () Bool)

(assert (=> mapNonEmpty!58086 (= mapRes!58086 (and tp!110553 e!767468))))

(declare-fun mapRest!58086 () (Array (_ BitVec 32) ValueCell!17891))

(declare-fun mapValue!58086 () ValueCell!17891)

(declare-fun mapKey!58086 () (_ BitVec 32))

(assert (=> mapNonEmpty!58086 (= (arr!44424 _values!1303) (store mapRest!58086 mapKey!58086 mapValue!58086))))

(declare-fun mapIsEmpty!58086 () Bool)

(assert (=> mapIsEmpty!58086 mapRes!58086))

(declare-fun b!1349041 () Bool)

(declare-fun res!895084 () Bool)

(assert (=> b!1349041 (=> (not res!895084) (not e!767467))))

(declare-datatypes ((List!31634 0))(
  ( (Nil!31631) (Cons!31630 (h!32839 (_ BitVec 64)) (t!46287 List!31634)) )
))
(declare-fun arrayNoDuplicates!0 (array!91949 (_ BitVec 32) List!31634) Bool)

(assert (=> b!1349041 (= res!895084 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31631))))

(declare-fun b!1349042 () Bool)

(declare-fun res!895080 () Bool)

(assert (=> b!1349042 (=> (not res!895080) (not e!767467))))

(assert (=> b!1349042 (= res!895080 (and (= (size!44975 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44974 _keys!1571) (size!44975 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1349043 () Bool)

(declare-fun e!767465 () Bool)

(assert (=> b!1349043 (= e!767469 (and e!767465 mapRes!58086))))

(declare-fun condMapEmpty!58086 () Bool)

(declare-fun mapDefault!58086 () ValueCell!17891)

