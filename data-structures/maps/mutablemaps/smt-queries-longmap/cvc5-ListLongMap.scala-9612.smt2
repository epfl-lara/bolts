; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113712 () Bool)

(assert start!113712)

(declare-fun b_free!31585 () Bool)

(declare-fun b_next!31585 () Bool)

(assert (=> start!113712 (= b_free!31585 (not b_next!31585))))

(declare-fun tp!110571 () Bool)

(declare-fun b_and!50979 () Bool)

(assert (=> start!113712 (= tp!110571 b_and!50979)))

(declare-fun mapNonEmpty!58095 () Bool)

(declare-fun mapRes!58095 () Bool)

(declare-fun tp!110572 () Bool)

(declare-fun e!767513 () Bool)

(assert (=> mapNonEmpty!58095 (= mapRes!58095 (and tp!110572 e!767513))))

(declare-datatypes ((V!55217 0))(
  ( (V!55218 (val!18867 Int)) )
))
(declare-datatypes ((ValueCell!17894 0))(
  ( (ValueCellFull!17894 (v!21520 V!55217)) (EmptyCell!17894) )
))
(declare-fun mapValue!58095 () ValueCell!17894)

(declare-fun mapKey!58095 () (_ BitVec 32))

(declare-fun mapRest!58095 () (Array (_ BitVec 32) ValueCell!17894))

(declare-datatypes ((array!91959 0))(
  ( (array!91960 (arr!44428 (Array (_ BitVec 32) ValueCell!17894)) (size!44979 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91959)

(assert (=> mapNonEmpty!58095 (= (arr!44428 _values!1303) (store mapRest!58095 mapKey!58095 mapValue!58095))))

(declare-fun b!1349161 () Bool)

(declare-fun res!895172 () Bool)

(declare-fun e!767516 () Bool)

(assert (=> b!1349161 (=> (not res!895172) (not e!767516))))

(declare-datatypes ((array!91961 0))(
  ( (array!91962 (arr!44429 (Array (_ BitVec 32) (_ BitVec 64))) (size!44980 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91961)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1349161 (= res!895172 (validKeyInArray!0 (select (arr!44429 _keys!1571) from!1960)))))

(declare-fun b!1349162 () Bool)

(declare-fun res!895174 () Bool)

(assert (=> b!1349162 (=> (not res!895174) (not e!767516))))

(declare-fun minValue!1245 () V!55217)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!55217)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24470 0))(
  ( (tuple2!24471 (_1!12245 (_ BitVec 64)) (_2!12245 V!55217)) )
))
(declare-datatypes ((List!31637 0))(
  ( (Nil!31634) (Cons!31633 (h!32842 tuple2!24470) (t!46296 List!31637)) )
))
(declare-datatypes ((ListLongMap!22139 0))(
  ( (ListLongMap!22140 (toList!11085 List!31637)) )
))
(declare-fun contains!9202 (ListLongMap!22139 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5975 (array!91961 array!91959 (_ BitVec 32) (_ BitVec 32) V!55217 V!55217 (_ BitVec 32) Int) ListLongMap!22139)

(assert (=> b!1349162 (= res!895174 (contains!9202 (getCurrentListMap!5975 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1349163 () Bool)

(declare-fun res!895179 () Bool)

(assert (=> b!1349163 (=> (not res!895179) (not e!767516))))

(assert (=> b!1349163 (= res!895179 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44980 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1349164 () Bool)

(declare-fun res!895170 () Bool)

(assert (=> b!1349164 (=> (not res!895170) (not e!767516))))

(assert (=> b!1349164 (= res!895170 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1349165 () Bool)

(declare-fun res!895177 () Bool)

(declare-fun e!767515 () Bool)

(assert (=> b!1349165 (=> (not res!895177) (not e!767515))))

(assert (=> b!1349165 (= res!895177 (not (= k!1142 (select (arr!44429 _keys!1571) from!1960))))))

(declare-fun b!1349166 () Bool)

(assert (=> b!1349166 (= e!767515 (not (contains!9202 (getCurrentListMap!5975 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) k!1142)))))

(declare-fun lt!596365 () ListLongMap!22139)

(assert (=> b!1349166 (contains!9202 lt!596365 k!1142)))

(declare-fun lt!596364 () V!55217)

(declare-datatypes ((Unit!44141 0))(
  ( (Unit!44142) )
))
(declare-fun lt!596366 () Unit!44141)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!412 ((_ BitVec 64) (_ BitVec 64) V!55217 ListLongMap!22139) Unit!44141)

(assert (=> b!1349166 (= lt!596366 (lemmaInListMapAfterAddingDiffThenInBefore!412 k!1142 (select (arr!44429 _keys!1571) from!1960) lt!596364 lt!596365))))

(declare-fun b!1349167 () Bool)

(declare-fun e!767517 () Bool)

(declare-fun tp_is_empty!37585 () Bool)

(assert (=> b!1349167 (= e!767517 tp_is_empty!37585)))

(declare-fun b!1349168 () Bool)

(declare-fun res!895171 () Bool)

(assert (=> b!1349168 (=> (not res!895171) (not e!767516))))

(declare-datatypes ((List!31638 0))(
  ( (Nil!31635) (Cons!31634 (h!32843 (_ BitVec 64)) (t!46297 List!31638)) )
))
(declare-fun arrayNoDuplicates!0 (array!91961 (_ BitVec 32) List!31638) Bool)

(assert (=> b!1349168 (= res!895171 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31635))))

(declare-fun b!1349160 () Bool)

(declare-fun e!767514 () Bool)

(assert (=> b!1349160 (= e!767514 (and e!767517 mapRes!58095))))

(declare-fun condMapEmpty!58095 () Bool)

(declare-fun mapDefault!58095 () ValueCell!17894)

