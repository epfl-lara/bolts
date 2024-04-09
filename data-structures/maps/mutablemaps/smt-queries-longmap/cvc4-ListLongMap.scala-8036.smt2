; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99096 () Bool)

(assert start!99096)

(declare-fun b_free!24665 () Bool)

(declare-fun b_next!24665 () Bool)

(assert (=> start!99096 (= b_free!24665 (not b_next!24665))))

(declare-fun tp!86706 () Bool)

(declare-fun b_and!40193 () Bool)

(assert (=> start!99096 (= tp!86706 b_and!40193)))

(declare-fun res!772469 () Bool)

(declare-fun e!662216 () Bool)

(assert (=> start!99096 (=> (not res!772469) (not e!662216))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75174 0))(
  ( (array!75175 (arr!36234 (Array (_ BitVec 32) (_ BitVec 64))) (size!36771 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75174)

(assert (=> start!99096 (= res!772469 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36771 _keys!1208))))))

(assert (=> start!99096 e!662216))

(declare-fun tp_is_empty!29195 () Bool)

(assert (=> start!99096 tp_is_empty!29195))

(declare-fun array_inv!27590 (array!75174) Bool)

(assert (=> start!99096 (array_inv!27590 _keys!1208)))

(assert (=> start!99096 true))

(assert (=> start!99096 tp!86706))

(declare-datatypes ((V!44053 0))(
  ( (V!44054 (val!14654 Int)) )
))
(declare-datatypes ((ValueCell!13888 0))(
  ( (ValueCellFull!13888 (v!17292 V!44053)) (EmptyCell!13888) )
))
(declare-datatypes ((array!75176 0))(
  ( (array!75177 (arr!36235 (Array (_ BitVec 32) ValueCell!13888)) (size!36772 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75176)

(declare-fun e!662218 () Bool)

(declare-fun array_inv!27591 (array!75176) Bool)

(assert (=> start!99096 (and (array_inv!27591 _values!996) e!662218)))

(declare-fun b!1164690 () Bool)

(declare-fun e!662215 () Bool)

(declare-fun mapRes!45617 () Bool)

(assert (=> b!1164690 (= e!662218 (and e!662215 mapRes!45617))))

(declare-fun condMapEmpty!45617 () Bool)

(declare-fun mapDefault!45617 () ValueCell!13888)

