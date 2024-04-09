; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99920 () Bool)

(assert start!99920)

(declare-fun b_free!25463 () Bool)

(declare-fun b_next!25463 () Bool)

(assert (=> start!99920 (= b_free!25463 (not b_next!25463))))

(declare-fun tp!89103 () Bool)

(declare-fun b_and!41807 () Bool)

(assert (=> start!99920 (= tp!89103 b_and!41807)))

(declare-fun res!790323 () Bool)

(declare-fun e!675802 () Bool)

(assert (=> start!99920 (=> (not res!790323) (not e!675802))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76754 0))(
  ( (array!76755 (arr!37023 (Array (_ BitVec 32) (_ BitVec 64))) (size!37560 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76754)

(assert (=> start!99920 (= res!790323 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37560 _keys!1208))))))

(assert (=> start!99920 e!675802))

(declare-fun tp_is_empty!29993 () Bool)

(assert (=> start!99920 tp_is_empty!29993))

(declare-fun array_inv!28134 (array!76754) Bool)

(assert (=> start!99920 (array_inv!28134 _keys!1208)))

(assert (=> start!99920 true))

(assert (=> start!99920 tp!89103))

(declare-datatypes ((V!45117 0))(
  ( (V!45118 (val!15053 Int)) )
))
(declare-datatypes ((ValueCell!14287 0))(
  ( (ValueCellFull!14287 (v!17692 V!45117)) (EmptyCell!14287) )
))
(declare-datatypes ((array!76756 0))(
  ( (array!76757 (arr!37024 (Array (_ BitVec 32) ValueCell!14287)) (size!37561 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76756)

(declare-fun e!675805 () Bool)

(declare-fun array_inv!28135 (array!76756) Bool)

(assert (=> start!99920 (and (array_inv!28135 _values!996) e!675805)))

(declare-fun b!1188490 () Bool)

(declare-fun res!790320 () Bool)

(assert (=> b!1188490 (=> (not res!790320) (not e!675802))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1188490 (= res!790320 (= (select (arr!37023 _keys!1208) i!673) k!934))))

(declare-fun b!1188491 () Bool)

(declare-fun res!790314 () Bool)

(assert (=> b!1188491 (=> (not res!790314) (not e!675802))))

(assert (=> b!1188491 (= res!790314 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37560 _keys!1208))))))

(declare-fun b!1188492 () Bool)

(declare-fun res!790321 () Bool)

(assert (=> b!1188492 (=> (not res!790321) (not e!675802))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1188492 (= res!790321 (validKeyInArray!0 k!934))))

(declare-fun b!1188493 () Bool)

(declare-fun res!790319 () Bool)

(assert (=> b!1188493 (=> (not res!790319) (not e!675802))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76754 (_ BitVec 32)) Bool)

(assert (=> b!1188493 (= res!790319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!46817 () Bool)

(declare-fun mapRes!46817 () Bool)

(assert (=> mapIsEmpty!46817 mapRes!46817))

(declare-fun b!1188494 () Bool)

(declare-fun e!675798 () Bool)

(declare-fun e!675800 () Bool)

(assert (=> b!1188494 (= e!675798 (not e!675800))))

(declare-fun res!790322 () Bool)

(assert (=> b!1188494 (=> res!790322 e!675800)))

(assert (=> b!1188494 (= res!790322 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76754 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1188494 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39362 0))(
  ( (Unit!39363) )
))
(declare-fun lt!540673 () Unit!39362)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76754 (_ BitVec 64) (_ BitVec 32)) Unit!39362)

(assert (=> b!1188494 (= lt!540673 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1188495 () Bool)

(declare-fun res!790324 () Bool)

(assert (=> b!1188495 (=> (not res!790324) (not e!675802))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1188495 (= res!790324 (validMask!0 mask!1564))))

(declare-fun b!1188496 () Bool)

(declare-fun e!675804 () Bool)

(assert (=> b!1188496 (= e!675805 (and e!675804 mapRes!46817))))

(declare-fun condMapEmpty!46817 () Bool)

(declare-fun mapDefault!46817 () ValueCell!14287)

