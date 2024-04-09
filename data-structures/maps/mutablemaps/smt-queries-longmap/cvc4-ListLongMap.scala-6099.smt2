; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78734 () Bool)

(assert start!78734)

(declare-fun b_free!16919 () Bool)

(declare-fun b_next!16919 () Bool)

(assert (=> start!78734 (= b_free!16919 (not b_next!16919))))

(declare-fun tp!59199 () Bool)

(declare-fun b_and!27593 () Bool)

(assert (=> start!78734 (= tp!59199 b_and!27593)))

(declare-fun b!917769 () Bool)

(declare-fun res!618872 () Bool)

(declare-fun e!515258 () Bool)

(assert (=> b!917769 (=> (not res!618872) (not e!515258))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!917769 (= res!618872 (validKeyInArray!0 k!1099))))

(declare-fun mapNonEmpty!30897 () Bool)

(declare-fun mapRes!30897 () Bool)

(declare-fun tp!59198 () Bool)

(declare-fun e!515262 () Bool)

(assert (=> mapNonEmpty!30897 (= mapRes!30897 (and tp!59198 e!515262))))

(declare-fun mapKey!30897 () (_ BitVec 32))

(declare-datatypes ((V!30867 0))(
  ( (V!30868 (val!9764 Int)) )
))
(declare-datatypes ((ValueCell!9232 0))(
  ( (ValueCellFull!9232 (v!12282 V!30867)) (EmptyCell!9232) )
))
(declare-datatypes ((array!54846 0))(
  ( (array!54847 (arr!26364 (Array (_ BitVec 32) ValueCell!9232)) (size!26824 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54846)

(declare-fun mapValue!30897 () ValueCell!9232)

(declare-fun mapRest!30897 () (Array (_ BitVec 32) ValueCell!9232))

(assert (=> mapNonEmpty!30897 (= (arr!26364 _values!1231) (store mapRest!30897 mapKey!30897 mapValue!30897))))

(declare-fun b!917770 () Bool)

(declare-fun e!515256 () Bool)

(assert (=> b!917770 (= e!515258 e!515256)))

(declare-fun res!618870 () Bool)

(assert (=> b!917770 (=> (not res!618870) (not e!515256))))

(declare-fun lt!412063 () (_ BitVec 64))

(assert (=> b!917770 (= res!618870 (validKeyInArray!0 lt!412063))))

(declare-datatypes ((array!54848 0))(
  ( (array!54849 (arr!26365 (Array (_ BitVec 32) (_ BitVec 64))) (size!26825 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54848)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!917770 (= lt!412063 (select (arr!26365 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!917771 () Bool)

(declare-fun res!618869 () Bool)

(declare-fun e!515260 () Bool)

(assert (=> b!917771 (=> (not res!618869) (not e!515260))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(assert (=> b!917771 (= res!618869 (and (= (size!26824 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26825 _keys!1487) (size!26824 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!917772 () Bool)

(declare-fun res!618871 () Bool)

(assert (=> b!917772 (=> (not res!618871) (not e!515258))))

(assert (=> b!917772 (= res!618871 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!917773 () Bool)

(declare-fun e!515261 () Bool)

(declare-fun tp_is_empty!19427 () Bool)

(assert (=> b!917773 (= e!515261 tp_is_empty!19427)))

(declare-fun mapIsEmpty!30897 () Bool)

(assert (=> mapIsEmpty!30897 mapRes!30897))

(declare-fun b!917774 () Bool)

(declare-fun e!515257 () Bool)

(assert (=> b!917774 (= e!515257 (and e!515261 mapRes!30897))))

(declare-fun condMapEmpty!30897 () Bool)

(declare-fun mapDefault!30897 () ValueCell!9232)

