; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100004 () Bool)

(assert start!100004)

(declare-fun b_free!25547 () Bool)

(declare-fun b_next!25547 () Bool)

(assert (=> start!100004 (= b_free!25547 (not b_next!25547))))

(declare-fun tp!89356 () Bool)

(declare-fun b_and!41975 () Bool)

(assert (=> start!100004 (= tp!89356 b_and!41975)))

(declare-fun b!1190464 () Bool)

(declare-fun res!791827 () Bool)

(declare-fun e!676807 () Bool)

(assert (=> b!1190464 (=> (not res!791827) (not e!676807))))

(declare-datatypes ((array!76920 0))(
  ( (array!76921 (arr!37106 (Array (_ BitVec 32) (_ BitVec 64))) (size!37643 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76920)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76920 (_ BitVec 32)) Bool)

(assert (=> b!1190464 (= res!791827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1190465 () Bool)

(declare-fun e!676810 () Bool)

(assert (=> b!1190465 (= e!676810 true)))

(declare-datatypes ((V!45229 0))(
  ( (V!45230 (val!15095 Int)) )
))
(declare-fun zeroValue!944 () V!45229)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!541434 () array!76920)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14329 0))(
  ( (ValueCellFull!14329 (v!17734 V!45229)) (EmptyCell!14329) )
))
(declare-datatypes ((array!76922 0))(
  ( (array!76923 (arr!37107 (Array (_ BitVec 32) ValueCell!14329)) (size!37644 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76922)

(declare-fun lt!541432 () array!76922)

(declare-fun minValue!944 () V!45229)

(declare-datatypes ((tuple2!19532 0))(
  ( (tuple2!19533 (_1!9776 (_ BitVec 64)) (_2!9776 V!45229)) )
))
(declare-datatypes ((List!26292 0))(
  ( (Nil!26289) (Cons!26288 (h!27497 tuple2!19532) (t!38838 List!26292)) )
))
(declare-datatypes ((ListLongMap!17513 0))(
  ( (ListLongMap!17514 (toList!8772 List!26292)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5186 (array!76920 array!76922 (_ BitVec 32) (_ BitVec 32) V!45229 V!45229 (_ BitVec 32) Int) ListLongMap!17513)

(declare-fun -!1754 (ListLongMap!17513 (_ BitVec 64)) ListLongMap!17513)

(assert (=> b!1190465 (= (getCurrentListMapNoExtraKeys!5186 lt!541434 lt!541432 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1754 (getCurrentListMapNoExtraKeys!5186 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39436 0))(
  ( (Unit!39437) )
))
(declare-fun lt!541433 () Unit!39436)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!960 (array!76920 array!76922 (_ BitVec 32) (_ BitVec 32) V!45229 V!45229 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39436)

(assert (=> b!1190465 (= lt!541433 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!960 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!46943 () Bool)

(declare-fun mapRes!46943 () Bool)

(assert (=> mapIsEmpty!46943 mapRes!46943))

(declare-fun res!791828 () Bool)

(assert (=> start!100004 (=> (not res!791828) (not e!676807))))

(assert (=> start!100004 (= res!791828 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37643 _keys!1208))))))

(assert (=> start!100004 e!676807))

(declare-fun tp_is_empty!30077 () Bool)

(assert (=> start!100004 tp_is_empty!30077))

(declare-fun array_inv!28196 (array!76920) Bool)

(assert (=> start!100004 (array_inv!28196 _keys!1208)))

(assert (=> start!100004 true))

(assert (=> start!100004 tp!89356))

(declare-fun e!676812 () Bool)

(declare-fun array_inv!28197 (array!76922) Bool)

(assert (=> start!100004 (and (array_inv!28197 _values!996) e!676812)))

(declare-fun b!1190466 () Bool)

(declare-fun res!791832 () Bool)

(assert (=> b!1190466 (=> (not res!791832) (not e!676807))))

(assert (=> b!1190466 (= res!791832 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37643 _keys!1208))))))

(declare-fun b!1190467 () Bool)

(declare-fun e!676813 () Bool)

(assert (=> b!1190467 (= e!676807 e!676813)))

(declare-fun res!791826 () Bool)

(assert (=> b!1190467 (=> (not res!791826) (not e!676813))))

(assert (=> b!1190467 (= res!791826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541434 mask!1564))))

(assert (=> b!1190467 (= lt!541434 (array!76921 (store (arr!37106 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37643 _keys!1208)))))

(declare-fun b!1190468 () Bool)

(declare-fun res!791833 () Bool)

(assert (=> b!1190468 (=> (not res!791833) (not e!676813))))

(declare-datatypes ((List!26293 0))(
  ( (Nil!26290) (Cons!26289 (h!27498 (_ BitVec 64)) (t!38839 List!26293)) )
))
(declare-fun arrayNoDuplicates!0 (array!76920 (_ BitVec 32) List!26293) Bool)

(assert (=> b!1190468 (= res!791833 (arrayNoDuplicates!0 lt!541434 #b00000000000000000000000000000000 Nil!26290))))

(declare-fun b!1190469 () Bool)

(declare-fun e!676806 () Bool)

(assert (=> b!1190469 (= e!676813 (not e!676806))))

(declare-fun res!791830 () Bool)

(assert (=> b!1190469 (=> res!791830 e!676806)))

(assert (=> b!1190469 (= res!791830 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76920 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1190469 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!541429 () Unit!39436)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76920 (_ BitVec 64) (_ BitVec 32)) Unit!39436)

(assert (=> b!1190469 (= lt!541429 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1190470 () Bool)

(declare-fun res!791834 () Bool)

(assert (=> b!1190470 (=> (not res!791834) (not e!676807))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1190470 (= res!791834 (validMask!0 mask!1564))))

(declare-fun b!1190471 () Bool)

(declare-fun res!791829 () Bool)

(assert (=> b!1190471 (=> (not res!791829) (not e!676807))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1190471 (= res!791829 (validKeyInArray!0 k!934))))

(declare-fun b!1190472 () Bool)

(declare-fun e!676809 () Bool)

(assert (=> b!1190472 (= e!676809 tp_is_empty!30077)))

(declare-fun b!1190473 () Bool)

(declare-fun res!791825 () Bool)

(assert (=> b!1190473 (=> (not res!791825) (not e!676807))))

(assert (=> b!1190473 (= res!791825 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26290))))

(declare-fun b!1190474 () Bool)

(declare-fun res!791836 () Bool)

(assert (=> b!1190474 (=> (not res!791836) (not e!676807))))

(assert (=> b!1190474 (= res!791836 (and (= (size!37644 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37643 _keys!1208) (size!37644 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1190475 () Bool)

(declare-fun e!676811 () Bool)

(assert (=> b!1190475 (= e!676812 (and e!676811 mapRes!46943))))

(declare-fun condMapEmpty!46943 () Bool)

(declare-fun mapDefault!46943 () ValueCell!14329)

