; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99436 () Bool)

(assert start!99436)

(declare-fun b_free!24979 () Bool)

(declare-fun b_next!24979 () Bool)

(assert (=> start!99436 (= b_free!24979 (not b_next!24979))))

(declare-fun tp!87651 () Bool)

(declare-fun b_and!40839 () Bool)

(assert (=> start!99436 (= tp!87651 b_and!40839)))

(declare-fun res!779141 () Bool)

(declare-fun e!666911 () Bool)

(assert (=> start!99436 (=> (not res!779141) (not e!666911))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75794 0))(
  ( (array!75795 (arr!36543 (Array (_ BitVec 32) (_ BitVec 64))) (size!37080 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75794)

(assert (=> start!99436 (= res!779141 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37080 _keys!1208))))))

(assert (=> start!99436 e!666911))

(declare-fun tp_is_empty!29509 () Bool)

(assert (=> start!99436 tp_is_empty!29509))

(declare-fun array_inv!27806 (array!75794) Bool)

(assert (=> start!99436 (array_inv!27806 _keys!1208)))

(assert (=> start!99436 true))

(assert (=> start!99436 tp!87651))

(declare-datatypes ((V!44473 0))(
  ( (V!44474 (val!14811 Int)) )
))
(declare-datatypes ((ValueCell!14045 0))(
  ( (ValueCellFull!14045 (v!17450 V!44473)) (EmptyCell!14045) )
))
(declare-datatypes ((array!75796 0))(
  ( (array!75797 (arr!36544 (Array (_ BitVec 32) ValueCell!14045)) (size!37081 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75796)

(declare-fun e!666908 () Bool)

(declare-fun array_inv!27807 (array!75796) Bool)

(assert (=> start!99436 (and (array_inv!27807 _values!996) e!666908)))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!666913 () Bool)

(declare-fun b!1173229 () Bool)

(declare-fun arrayContainsKey!0 (array!75794 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1173229 (= e!666913 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1173230 () Bool)

(declare-fun e!666907 () Bool)

(declare-fun mapRes!46091 () Bool)

(assert (=> b!1173230 (= e!666908 (and e!666907 mapRes!46091))))

(declare-fun condMapEmpty!46091 () Bool)

(declare-fun mapDefault!46091 () ValueCell!14045)

