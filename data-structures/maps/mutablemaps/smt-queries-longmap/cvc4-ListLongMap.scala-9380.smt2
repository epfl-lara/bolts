; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111756 () Bool)

(assert start!111756)

(declare-fun b_free!30377 () Bool)

(declare-fun b_next!30377 () Bool)

(assert (=> start!111756 (= b_free!30377 (not b_next!30377))))

(declare-fun tp!106607 () Bool)

(declare-fun b_and!48923 () Bool)

(assert (=> start!111756 (= tp!106607 b_and!48923)))

(declare-fun b!1323714 () Bool)

(declare-fun res!878722 () Bool)

(declare-fun e!754641 () Bool)

(assert (=> b!1323714 (=> (not res!878722) (not e!754641))))

(declare-datatypes ((array!89269 0))(
  ( (array!89270 (arr!43104 (Array (_ BitVec 32) (_ BitVec 64))) (size!43655 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89269)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1323714 (= res!878722 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43655 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!55943 () Bool)

(declare-fun mapRes!55943 () Bool)

(assert (=> mapIsEmpty!55943 mapRes!55943))

(declare-fun b!1323715 () Bool)

(declare-fun res!878721 () Bool)

(assert (=> b!1323715 (=> (not res!878721) (not e!754641))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1323715 (= res!878721 (validKeyInArray!0 (select (arr!43104 _keys!1609) from!2000)))))

(declare-fun b!1323716 () Bool)

(declare-fun res!878724 () Bool)

(assert (=> b!1323716 (=> (not res!878724) (not e!754641))))

(declare-datatypes ((V!53365 0))(
  ( (V!53366 (val!18173 Int)) )
))
(declare-datatypes ((ValueCell!17200 0))(
  ( (ValueCellFull!17200 (v!20801 V!53365)) (EmptyCell!17200) )
))
(declare-datatypes ((array!89271 0))(
  ( (array!89272 (arr!43105 (Array (_ BitVec 32) ValueCell!17200)) (size!43656 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89271)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1323716 (= res!878724 (and (= (size!43656 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43655 _keys!1609) (size!43656 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1323717 () Bool)

(declare-fun res!878726 () Bool)

(assert (=> b!1323717 (=> (not res!878726) (not e!754641))))

(assert (=> b!1323717 (= res!878726 (not (= (select (arr!43104 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1323718 () Bool)

(declare-fun e!754639 () Bool)

(declare-fun e!754640 () Bool)

(assert (=> b!1323718 (= e!754639 (and e!754640 mapRes!55943))))

(declare-fun condMapEmpty!55943 () Bool)

(declare-fun mapDefault!55943 () ValueCell!17200)

