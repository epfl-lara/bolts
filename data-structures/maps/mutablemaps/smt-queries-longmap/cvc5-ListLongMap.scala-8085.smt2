; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99412 () Bool)

(assert start!99412)

(declare-fun b_free!24955 () Bool)

(declare-fun b_next!24955 () Bool)

(assert (=> start!99412 (= b_free!24955 (not b_next!24955))))

(declare-fun tp!87580 () Bool)

(declare-fun b_and!40791 () Bool)

(assert (=> start!99412 (= tp!87580 b_and!40791)))

(declare-fun res!778567 () Bool)

(declare-fun e!666469 () Bool)

(assert (=> start!99412 (=> (not res!778567) (not e!666469))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75746 0))(
  ( (array!75747 (arr!36519 (Array (_ BitVec 32) (_ BitVec 64))) (size!37056 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75746)

(assert (=> start!99412 (= res!778567 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37056 _keys!1208))))))

(assert (=> start!99412 e!666469))

(declare-fun tp_is_empty!29485 () Bool)

(assert (=> start!99412 tp_is_empty!29485))

(declare-fun array_inv!27788 (array!75746) Bool)

(assert (=> start!99412 (array_inv!27788 _keys!1208)))

(assert (=> start!99412 true))

(assert (=> start!99412 tp!87580))

(declare-datatypes ((V!44441 0))(
  ( (V!44442 (val!14799 Int)) )
))
(declare-datatypes ((ValueCell!14033 0))(
  ( (ValueCellFull!14033 (v!17438 V!44441)) (EmptyCell!14033) )
))
(declare-datatypes ((array!75748 0))(
  ( (array!75749 (arr!36520 (Array (_ BitVec 32) ValueCell!14033)) (size!37057 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75748)

(declare-fun e!666472 () Bool)

(declare-fun array_inv!27789 (array!75748) Bool)

(assert (=> start!99412 (and (array_inv!27789 _values!996) e!666472)))

(declare-fun b!1172471 () Bool)

(declare-fun res!778580 () Bool)

(assert (=> b!1172471 (=> (not res!778580) (not e!666469))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1172471 (= res!778580 (validMask!0 mask!1564))))

(declare-fun b!1172472 () Bool)

(declare-fun res!778568 () Bool)

(assert (=> b!1172472 (=> (not res!778568) (not e!666469))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1172472 (= res!778568 (and (= (size!37057 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37056 _keys!1208) (size!37057 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1172473 () Bool)

(declare-fun e!666474 () Bool)

(declare-fun mapRes!46055 () Bool)

(assert (=> b!1172473 (= e!666472 (and e!666474 mapRes!46055))))

(declare-fun condMapEmpty!46055 () Bool)

(declare-fun mapDefault!46055 () ValueCell!14033)

