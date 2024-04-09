; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100306 () Bool)

(assert start!100306)

(declare-fun b!1196075 () Bool)

(declare-fun e!679636 () Bool)

(assert (=> b!1196075 (= e!679636 (not true))))

(declare-datatypes ((array!77436 0))(
  ( (array!77437 (arr!37361 (Array (_ BitVec 32) (_ BitVec 64))) (size!37898 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77436)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77436 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1196075 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39604 0))(
  ( (Unit!39605) )
))
(declare-fun lt!542981 () Unit!39604)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77436 (_ BitVec 64) (_ BitVec 32)) Unit!39604)

(assert (=> b!1196075 (= lt!542981 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1196076 () Bool)

(declare-fun res!796044 () Bool)

(declare-fun e!679632 () Bool)

(assert (=> b!1196076 (=> (not res!796044) (not e!679632))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45577 0))(
  ( (V!45578 (val!15225 Int)) )
))
(declare-datatypes ((ValueCell!14459 0))(
  ( (ValueCellFull!14459 (v!17864 V!45577)) (EmptyCell!14459) )
))
(declare-datatypes ((array!77438 0))(
  ( (array!77439 (arr!37362 (Array (_ BitVec 32) ValueCell!14459)) (size!37899 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77438)

(assert (=> b!1196076 (= res!796044 (and (= (size!37899 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37898 _keys!1208) (size!37899 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1196077 () Bool)

(declare-fun res!796047 () Bool)

(assert (=> b!1196077 (=> (not res!796047) (not e!679632))))

(assert (=> b!1196077 (= res!796047 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37898 _keys!1208))))))

(declare-fun b!1196078 () Bool)

(declare-fun res!796042 () Bool)

(assert (=> b!1196078 (=> (not res!796042) (not e!679632))))

(assert (=> b!1196078 (= res!796042 (= (select (arr!37361 _keys!1208) i!673) k!934))))

(declare-fun b!1196079 () Bool)

(declare-fun e!679633 () Bool)

(declare-fun e!679635 () Bool)

(declare-fun mapRes!47342 () Bool)

(assert (=> b!1196079 (= e!679633 (and e!679635 mapRes!47342))))

(declare-fun condMapEmpty!47342 () Bool)

(declare-fun mapDefault!47342 () ValueCell!14459)

