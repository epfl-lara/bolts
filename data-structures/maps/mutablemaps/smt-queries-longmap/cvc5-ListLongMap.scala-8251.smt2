; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100490 () Bool)

(assert start!100490)

(declare-fun b_free!25777 () Bool)

(declare-fun b_next!25777 () Bool)

(assert (=> start!100490 (= b_free!25777 (not b_next!25777))))

(declare-fun tp!90322 () Bool)

(declare-fun b_and!42455 () Bool)

(assert (=> start!100490 (= tp!90322 b_and!42455)))

(declare-fun b!1199432 () Bool)

(declare-fun e!681279 () Bool)

(declare-fun e!681276 () Bool)

(assert (=> b!1199432 (= e!681279 e!681276)))

(declare-fun res!798450 () Bool)

(assert (=> b!1199432 (=> (not res!798450) (not e!681276))))

(declare-datatypes ((array!77718 0))(
  ( (array!77719 (arr!37500 (Array (_ BitVec 32) (_ BitVec 64))) (size!38037 (_ BitVec 32))) )
))
(declare-fun lt!543730 () array!77718)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77718 (_ BitVec 32)) Bool)

(assert (=> b!1199432 (= res!798450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543730 mask!1564))))

(declare-fun _keys!1208 () array!77718)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1199432 (= lt!543730 (array!77719 (store (arr!37500 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38037 _keys!1208)))))

(declare-fun res!798445 () Bool)

(assert (=> start!100490 (=> (not res!798445) (not e!681279))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100490 (= res!798445 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38037 _keys!1208))))))

(assert (=> start!100490 e!681279))

(declare-fun tp_is_empty!30481 () Bool)

(assert (=> start!100490 tp_is_empty!30481))

(declare-fun array_inv!28480 (array!77718) Bool)

(assert (=> start!100490 (array_inv!28480 _keys!1208)))

(assert (=> start!100490 true))

(assert (=> start!100490 tp!90322))

(declare-datatypes ((V!45769 0))(
  ( (V!45770 (val!15297 Int)) )
))
(declare-datatypes ((ValueCell!14531 0))(
  ( (ValueCellFull!14531 (v!17936 V!45769)) (EmptyCell!14531) )
))
(declare-datatypes ((array!77720 0))(
  ( (array!77721 (arr!37501 (Array (_ BitVec 32) ValueCell!14531)) (size!38038 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77720)

(declare-fun e!681280 () Bool)

(declare-fun array_inv!28481 (array!77720) Bool)

(assert (=> start!100490 (and (array_inv!28481 _values!996) e!681280)))

(declare-fun b!1199433 () Bool)

(declare-fun e!681275 () Bool)

(assert (=> b!1199433 (= e!681275 tp_is_empty!30481)))

(declare-fun b!1199434 () Bool)

(declare-fun res!798448 () Bool)

(assert (=> b!1199434 (=> (not res!798448) (not e!681279))))

(declare-datatypes ((List!26551 0))(
  ( (Nil!26548) (Cons!26547 (h!27756 (_ BitVec 64)) (t!39315 List!26551)) )
))
(declare-fun arrayNoDuplicates!0 (array!77718 (_ BitVec 32) List!26551) Bool)

(assert (=> b!1199434 (= res!798448 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26548))))

(declare-fun b!1199435 () Bool)

(declare-fun res!798453 () Bool)

(assert (=> b!1199435 (=> (not res!798453) (not e!681279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1199435 (= res!798453 (validMask!0 mask!1564))))

(declare-fun b!1199436 () Bool)

(declare-fun res!798452 () Bool)

(assert (=> b!1199436 (=> (not res!798452) (not e!681279))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1199436 (= res!798452 (and (= (size!38038 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38037 _keys!1208) (size!38038 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1199437 () Bool)

(declare-fun res!798447 () Bool)

(assert (=> b!1199437 (=> (not res!798447) (not e!681279))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1199437 (= res!798447 (validKeyInArray!0 k!934))))

(declare-fun b!1199438 () Bool)

(declare-fun res!798449 () Bool)

(assert (=> b!1199438 (=> (not res!798449) (not e!681279))))

(assert (=> b!1199438 (= res!798449 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38037 _keys!1208))))))

(declare-fun b!1199439 () Bool)

(declare-fun mapRes!47564 () Bool)

(assert (=> b!1199439 (= e!681280 (and e!681275 mapRes!47564))))

(declare-fun condMapEmpty!47564 () Bool)

(declare-fun mapDefault!47564 () ValueCell!14531)

