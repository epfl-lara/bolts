; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99092 () Bool)

(assert start!99092)

(declare-fun b_free!24661 () Bool)

(declare-fun b_next!24661 () Bool)

(assert (=> start!99092 (= b_free!24661 (not b_next!24661))))

(declare-fun tp!86695 () Bool)

(declare-fun b_and!40185 () Bool)

(assert (=> start!99092 (= tp!86695 b_and!40185)))

(declare-fun res!772401 () Bool)

(declare-fun e!662176 () Bool)

(assert (=> start!99092 (=> (not res!772401) (not e!662176))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75166 0))(
  ( (array!75167 (arr!36230 (Array (_ BitVec 32) (_ BitVec 64))) (size!36767 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75166)

(assert (=> start!99092 (= res!772401 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36767 _keys!1208))))))

(assert (=> start!99092 e!662176))

(declare-fun tp_is_empty!29191 () Bool)

(assert (=> start!99092 tp_is_empty!29191))

(declare-fun array_inv!27586 (array!75166) Bool)

(assert (=> start!99092 (array_inv!27586 _keys!1208)))

(assert (=> start!99092 true))

(assert (=> start!99092 tp!86695))

(declare-datatypes ((V!44049 0))(
  ( (V!44050 (val!14652 Int)) )
))
(declare-datatypes ((ValueCell!13886 0))(
  ( (ValueCellFull!13886 (v!17290 V!44049)) (EmptyCell!13886) )
))
(declare-datatypes ((array!75168 0))(
  ( (array!75169 (arr!36231 (Array (_ BitVec 32) ValueCell!13886)) (size!36768 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75168)

(declare-fun e!662177 () Bool)

(declare-fun array_inv!27587 (array!75168) Bool)

(assert (=> start!99092 (and (array_inv!27587 _values!996) e!662177)))

(declare-fun b!1164602 () Bool)

(declare-fun res!772396 () Bool)

(assert (=> b!1164602 (=> (not res!772396) (not e!662176))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1164602 (= res!772396 (and (= (size!36768 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36767 _keys!1208) (size!36768 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1164603 () Bool)

(declare-fun e!662175 () Bool)

(declare-fun mapRes!45611 () Bool)

(assert (=> b!1164603 (= e!662177 (and e!662175 mapRes!45611))))

(declare-fun condMapEmpty!45611 () Bool)

(declare-fun mapDefault!45611 () ValueCell!13886)

