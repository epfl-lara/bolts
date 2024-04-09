; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99180 () Bool)

(assert start!99180)

(declare-fun b_free!24749 () Bool)

(declare-fun b_next!24749 () Bool)

(assert (=> start!99180 (= b_free!24749 (not b_next!24749))))

(declare-fun tp!86959 () Bool)

(declare-fun b_and!40361 () Bool)

(assert (=> start!99180 (= tp!86959 b_and!40361)))

(declare-fun res!773903 () Bool)

(declare-fun e!663152 () Bool)

(assert (=> start!99180 (=> (not res!773903) (not e!663152))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75336 0))(
  ( (array!75337 (arr!36315 (Array (_ BitVec 32) (_ BitVec 64))) (size!36852 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75336)

(assert (=> start!99180 (= res!773903 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36852 _keys!1208))))))

(assert (=> start!99180 e!663152))

(declare-fun tp_is_empty!29279 () Bool)

(assert (=> start!99180 tp_is_empty!29279))

(declare-fun array_inv!27646 (array!75336) Bool)

(assert (=> start!99180 (array_inv!27646 _keys!1208)))

(assert (=> start!99180 true))

(assert (=> start!99180 tp!86959))

(declare-datatypes ((V!44165 0))(
  ( (V!44166 (val!14696 Int)) )
))
(declare-datatypes ((ValueCell!13930 0))(
  ( (ValueCellFull!13930 (v!17334 V!44165)) (EmptyCell!13930) )
))
(declare-datatypes ((array!75338 0))(
  ( (array!75339 (arr!36316 (Array (_ BitVec 32) ValueCell!13930)) (size!36853 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75338)

(declare-fun e!663151 () Bool)

(declare-fun array_inv!27647 (array!75338) Bool)

(assert (=> start!99180 (and (array_inv!27647 _values!996) e!663151)))

(declare-fun b!1166591 () Bool)

(declare-fun e!663155 () Bool)

(declare-fun mapRes!45743 () Bool)

(assert (=> b!1166591 (= e!663151 (and e!663155 mapRes!45743))))

(declare-fun condMapEmpty!45743 () Bool)

(declare-fun mapDefault!45743 () ValueCell!13930)

