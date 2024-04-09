; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98970 () Bool)

(assert start!98970)

(declare-fun b_free!24539 () Bool)

(declare-fun b_next!24539 () Bool)

(assert (=> start!98970 (= b_free!24539 (not b_next!24539))))

(declare-fun tp!86328 () Bool)

(declare-fun b_and!39941 () Bool)

(assert (=> start!98970 (= tp!86328 b_and!39941)))

(declare-datatypes ((V!43885 0))(
  ( (V!43886 (val!14591 Int)) )
))
(declare-fun zeroValue!944 () V!43885)

(declare-fun bm!56006 () Bool)

(declare-fun c!115658 () Bool)

(declare-datatypes ((tuple2!18652 0))(
  ( (tuple2!18653 (_1!9336 (_ BitVec 64)) (_2!9336 V!43885)) )
))
(declare-datatypes ((List!25430 0))(
  ( (Nil!25427) (Cons!25426 (h!26635 tuple2!18652) (t!36968 List!25430)) )
))
(declare-datatypes ((ListLongMap!16633 0))(
  ( (ListLongMap!16634 (toList!8332 List!25430)) )
))
(declare-fun lt!521486 () ListLongMap!16633)

(declare-fun c!115660 () Bool)

(declare-fun lt!521470 () ListLongMap!16633)

(declare-fun call!56012 () ListLongMap!16633)

(declare-fun minValue!944 () V!43885)

(declare-fun +!3658 (ListLongMap!16633 tuple2!18652) ListLongMap!16633)

(assert (=> bm!56006 (= call!56012 (+!3658 (ite c!115658 lt!521470 lt!521486) (ite c!115658 (tuple2!18653 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!115660 (tuple2!18653 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18653 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1159742 () Bool)

(declare-fun e!659538 () Bool)

(declare-fun e!659535 () Bool)

(assert (=> b!1159742 (= e!659538 (not e!659535))))

(declare-fun res!769839 () Bool)

(assert (=> b!1159742 (=> res!769839 e!659535)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1159742 (= res!769839 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!74928 0))(
  ( (array!74929 (arr!36111 (Array (_ BitVec 32) (_ BitVec 64))) (size!36648 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74928)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!74928 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1159742 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38122 0))(
  ( (Unit!38123) )
))
(declare-fun lt!521480 () Unit!38122)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74928 (_ BitVec 64) (_ BitVec 32)) Unit!38122)

(assert (=> b!1159742 (= lt!521480 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1159743 () Bool)

(declare-fun e!659536 () Bool)

(declare-fun tp_is_empty!29069 () Bool)

(assert (=> b!1159743 (= e!659536 tp_is_empty!29069)))

(declare-fun b!1159744 () Bool)

(declare-fun e!659531 () Bool)

(declare-fun e!659546 () Bool)

(assert (=> b!1159744 (= e!659531 e!659546)))

(declare-fun res!769841 () Bool)

(assert (=> b!1159744 (=> res!769841 e!659546)))

(assert (=> b!1159744 (= res!769841 (not (= (select (arr!36111 _keys!1208) from!1455) k!934)))))

(declare-fun e!659533 () Bool)

(assert (=> b!1159744 e!659533))

(declare-fun c!115659 () Bool)

(assert (=> b!1159744 (= c!115659 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13825 0))(
  ( (ValueCellFull!13825 (v!17229 V!43885)) (EmptyCell!13825) )
))
(declare-datatypes ((array!74930 0))(
  ( (array!74931 (arr!36112 (Array (_ BitVec 32) ValueCell!13825)) (size!36649 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74930)

(declare-fun lt!521482 () Unit!38122)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!628 (array!74928 array!74930 (_ BitVec 32) (_ BitVec 32) V!43885 V!43885 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38122)

(assert (=> b!1159744 (= lt!521482 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!628 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159745 () Bool)

(declare-fun lt!521475 () array!74928)

(declare-fun lt!521478 () array!74930)

(declare-fun lt!521481 () ListLongMap!16633)

(declare-fun e!659547 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4768 (array!74928 array!74930 (_ BitVec 32) (_ BitVec 32) V!43885 V!43885 (_ BitVec 32) Int) ListLongMap!16633)

(assert (=> b!1159745 (= e!659547 (= lt!521481 (getCurrentListMapNoExtraKeys!4768 lt!521475 lt!521478 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1159746 () Bool)

(declare-fun lt!521472 () Bool)

(assert (=> b!1159746 (= c!115660 (and (not lt!521472) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!659540 () Unit!38122)

(declare-fun e!659541 () Unit!38122)

(assert (=> b!1159746 (= e!659540 e!659541)))

(declare-fun b!1159747 () Bool)

(declare-fun e!659537 () Unit!38122)

(assert (=> b!1159747 (= e!659541 e!659537)))

(declare-fun c!115661 () Bool)

(assert (=> b!1159747 (= c!115661 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!521472))))

(declare-fun res!769842 () Bool)

(declare-fun e!659542 () Bool)

(assert (=> start!98970 (=> (not res!769842) (not e!659542))))

(assert (=> start!98970 (= res!769842 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36648 _keys!1208))))))

(assert (=> start!98970 e!659542))

(assert (=> start!98970 tp_is_empty!29069))

(declare-fun array_inv!27500 (array!74928) Bool)

(assert (=> start!98970 (array_inv!27500 _keys!1208)))

(assert (=> start!98970 true))

(assert (=> start!98970 tp!86328))

(declare-fun e!659532 () Bool)

(declare-fun array_inv!27501 (array!74930) Bool)

(assert (=> start!98970 (and (array_inv!27501 _values!996) e!659532)))

(declare-fun b!1159748 () Bool)

(declare-fun res!769847 () Bool)

(assert (=> b!1159748 (=> (not res!769847) (not e!659542))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74928 (_ BitVec 32)) Bool)

(assert (=> b!1159748 (= res!769847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!45428 () Bool)

(declare-fun mapRes!45428 () Bool)

(assert (=> mapIsEmpty!45428 mapRes!45428))

(declare-fun b!1159749 () Bool)

(assert (=> b!1159749 (= e!659542 e!659538)))

(declare-fun res!769840 () Bool)

(assert (=> b!1159749 (=> (not res!769840) (not e!659538))))

(assert (=> b!1159749 (= res!769840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!521475 mask!1564))))

(assert (=> b!1159749 (= lt!521475 (array!74929 (store (arr!36111 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36648 _keys!1208)))))

(declare-fun b!1159750 () Bool)

(assert (=> b!1159750 (= e!659546 true)))

(assert (=> b!1159750 e!659547))

(declare-fun res!769843 () Bool)

(assert (=> b!1159750 (=> (not res!769843) (not e!659547))))

(assert (=> b!1159750 (= res!769843 (= lt!521481 lt!521486))))

(declare-fun lt!521476 () ListLongMap!16633)

(declare-fun -!1404 (ListLongMap!16633 (_ BitVec 64)) ListLongMap!16633)

(assert (=> b!1159750 (= lt!521481 (-!1404 lt!521476 k!934))))

(declare-fun lt!521469 () V!43885)

(assert (=> b!1159750 (= (-!1404 (+!3658 lt!521486 (tuple2!18653 (select (arr!36111 _keys!1208) from!1455) lt!521469)) (select (arr!36111 _keys!1208) from!1455)) lt!521486)))

(declare-fun lt!521466 () Unit!38122)

(declare-fun addThenRemoveForNewKeyIsSame!242 (ListLongMap!16633 (_ BitVec 64) V!43885) Unit!38122)

(assert (=> b!1159750 (= lt!521466 (addThenRemoveForNewKeyIsSame!242 lt!521486 (select (arr!36111 _keys!1208) from!1455) lt!521469))))

(declare-fun lt!521468 () V!43885)

(declare-fun get!18442 (ValueCell!13825 V!43885) V!43885)

(assert (=> b!1159750 (= lt!521469 (get!18442 (select (arr!36112 _values!996) from!1455) lt!521468))))

(declare-fun lt!521485 () Unit!38122)

(declare-fun e!659543 () Unit!38122)

(assert (=> b!1159750 (= lt!521485 e!659543)))

(declare-fun c!115657 () Bool)

(declare-fun contains!6814 (ListLongMap!16633 (_ BitVec 64)) Bool)

(assert (=> b!1159750 (= c!115657 (contains!6814 lt!521486 k!934))))

(assert (=> b!1159750 (= lt!521486 (getCurrentListMapNoExtraKeys!4768 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159751 () Bool)

(declare-fun lt!521483 () Unit!38122)

(assert (=> b!1159751 (= e!659541 lt!521483)))

(declare-fun call!56015 () Unit!38122)

(assert (=> b!1159751 (= lt!521483 call!56015)))

(declare-fun call!56011 () Bool)

(assert (=> b!1159751 call!56011))

(declare-fun b!1159752 () Bool)

(declare-fun Unit!38124 () Unit!38122)

(assert (=> b!1159752 (= e!659543 Unit!38124)))

(declare-fun bm!56007 () Bool)

(declare-fun call!56016 () Bool)

(assert (=> bm!56007 (= call!56011 call!56016)))

(declare-fun b!1159753 () Bool)

(declare-fun res!769853 () Bool)

(assert (=> b!1159753 (=> (not res!769853) (not e!659542))))

(assert (=> b!1159753 (= res!769853 (= (select (arr!36111 _keys!1208) i!673) k!934))))

(declare-fun b!1159754 () Bool)

(assert (=> b!1159754 (contains!6814 call!56012 k!934)))

(declare-fun lt!521473 () Unit!38122)

(declare-fun call!56013 () Unit!38122)

(assert (=> b!1159754 (= lt!521473 call!56013)))

(assert (=> b!1159754 call!56016))

(assert (=> b!1159754 (= lt!521470 (+!3658 lt!521486 (tuple2!18653 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!521487 () Unit!38122)

(declare-fun addStillContains!955 (ListLongMap!16633 (_ BitVec 64) V!43885 (_ BitVec 64)) Unit!38122)

(assert (=> b!1159754 (= lt!521487 (addStillContains!955 lt!521486 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1159754 (= e!659540 lt!521473)))

(declare-fun b!1159755 () Bool)

(declare-fun Unit!38125 () Unit!38122)

(assert (=> b!1159755 (= e!659543 Unit!38125)))

(assert (=> b!1159755 (= lt!521472 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1159755 (= c!115658 (and (not lt!521472) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!521474 () Unit!38122)

(assert (=> b!1159755 (= lt!521474 e!659540)))

(declare-fun lt!521484 () Unit!38122)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!529 (array!74928 array!74930 (_ BitVec 32) (_ BitVec 32) V!43885 V!43885 (_ BitVec 64) (_ BitVec 32) Int) Unit!38122)

(assert (=> b!1159755 (= lt!521484 (lemmaListMapContainsThenArrayContainsFrom!529 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115662 () Bool)

(assert (=> b!1159755 (= c!115662 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!769844 () Bool)

(declare-fun e!659539 () Bool)

(assert (=> b!1159755 (= res!769844 e!659539)))

(declare-fun e!659544 () Bool)

(assert (=> b!1159755 (=> (not res!769844) (not e!659544))))

(assert (=> b!1159755 e!659544))

(declare-fun lt!521477 () Unit!38122)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74928 (_ BitVec 32) (_ BitVec 32)) Unit!38122)

(assert (=> b!1159755 (= lt!521477 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25431 0))(
  ( (Nil!25428) (Cons!25427 (h!26636 (_ BitVec 64)) (t!36969 List!25431)) )
))
(declare-fun arrayNoDuplicates!0 (array!74928 (_ BitVec 32) List!25431) Bool)

(assert (=> b!1159755 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25428)))

(declare-fun lt!521479 () Unit!38122)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74928 (_ BitVec 64) (_ BitVec 32) List!25431) Unit!38122)

(assert (=> b!1159755 (= lt!521479 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25428))))

(assert (=> b!1159755 false))

(declare-fun b!1159756 () Bool)

(assert (=> b!1159756 (= e!659539 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1159757 () Bool)

(declare-fun res!769845 () Bool)

(assert (=> b!1159757 (=> (not res!769845) (not e!659542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1159757 (= res!769845 (validKeyInArray!0 k!934))))

(declare-fun b!1159758 () Bool)

(declare-fun e!659534 () Bool)

(assert (=> b!1159758 (= e!659532 (and e!659534 mapRes!45428))))

(declare-fun condMapEmpty!45428 () Bool)

(declare-fun mapDefault!45428 () ValueCell!13825)

