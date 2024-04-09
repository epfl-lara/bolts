; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111794 () Bool)

(assert start!111794)

(declare-fun b_free!30415 () Bool)

(declare-fun b_next!30415 () Bool)

(assert (=> start!111794 (= b_free!30415 (not b_next!30415))))

(declare-fun tp!106722 () Bool)

(declare-fun b_and!48963 () Bool)

(assert (=> start!111794 (= tp!106722 b_and!48963)))

(declare-fun b!1324175 () Bool)

(declare-fun res!879013 () Bool)

(declare-fun e!754927 () Bool)

(assert (=> b!1324175 (=> (not res!879013) (not e!754927))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(declare-datatypes ((array!89339 0))(
  ( (array!89340 (arr!43139 (Array (_ BitVec 32) (_ BitVec 64))) (size!43690 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89339)

(assert (=> b!1324175 (= res!879013 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43690 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!56000 () Bool)

(declare-fun mapRes!56000 () Bool)

(declare-fun tp!106721 () Bool)

(declare-fun e!754925 () Bool)

(assert (=> mapNonEmpty!56000 (= mapRes!56000 (and tp!106721 e!754925))))

(declare-fun mapKey!56000 () (_ BitVec 32))

(declare-datatypes ((V!53417 0))(
  ( (V!53418 (val!18192 Int)) )
))
(declare-datatypes ((ValueCell!17219 0))(
  ( (ValueCellFull!17219 (v!20820 V!53417)) (EmptyCell!17219) )
))
(declare-datatypes ((array!89341 0))(
  ( (array!89342 (arr!43140 (Array (_ BitVec 32) ValueCell!17219)) (size!43691 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89341)

(declare-fun mapValue!56000 () ValueCell!17219)

(declare-fun mapRest!56000 () (Array (_ BitVec 32) ValueCell!17219))

(assert (=> mapNonEmpty!56000 (= (arr!43140 _values!1337) (store mapRest!56000 mapKey!56000 mapValue!56000))))

(declare-fun b!1324176 () Bool)

(declare-fun tp_is_empty!36235 () Bool)

(assert (=> b!1324176 (= e!754925 tp_is_empty!36235)))

(declare-fun b!1324178 () Bool)

(declare-fun e!754923 () Bool)

(declare-fun e!754924 () Bool)

(assert (=> b!1324178 (= e!754923 (and e!754924 mapRes!56000))))

(declare-fun condMapEmpty!56000 () Bool)

(declare-fun mapDefault!56000 () ValueCell!17219)

