; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100574 () Bool)

(assert start!100574)

(declare-fun b_free!25861 () Bool)

(declare-fun b_next!25861 () Bool)

(assert (=> start!100574 (= b_free!25861 (not b_next!25861))))

(declare-fun tp!90573 () Bool)

(declare-fun b_and!42623 () Bool)

(assert (=> start!100574 (= tp!90573 b_and!42623)))

(declare-fun b!1201690 () Bool)

(declare-fun call!57537 () Bool)

(assert (=> b!1201690 call!57537))

(declare-datatypes ((Unit!39760 0))(
  ( (Unit!39761) )
))
(declare-fun lt!544573 () Unit!39760)

(declare-fun call!57533 () Unit!39760)

(assert (=> b!1201690 (= lt!544573 call!57533)))

(declare-fun e!682440 () Unit!39760)

(assert (=> b!1201690 (= e!682440 lt!544573)))

(declare-fun b!1201691 () Bool)

(declare-fun e!682442 () Unit!39760)

(declare-fun lt!544575 () Unit!39760)

(assert (=> b!1201691 (= e!682442 lt!544575)))

(declare-fun lt!544569 () Unit!39760)

(declare-fun call!57531 () Unit!39760)

(assert (=> b!1201691 (= lt!544569 call!57531)))

(declare-datatypes ((V!45881 0))(
  ( (V!45882 (val!15339 Int)) )
))
(declare-datatypes ((tuple2!19786 0))(
  ( (tuple2!19787 (_1!9903 (_ BitVec 64)) (_2!9903 V!45881)) )
))
(declare-datatypes ((List!26617 0))(
  ( (Nil!26614) (Cons!26613 (h!27822 tuple2!19786) (t!39465 List!26617)) )
))
(declare-datatypes ((ListLongMap!17767 0))(
  ( (ListLongMap!17768 (toList!8899 List!26617)) )
))
(declare-fun lt!544574 () ListLongMap!17767)

(declare-fun call!57534 () ListLongMap!17767)

(assert (=> b!1201691 (= lt!544574 call!57534)))

(declare-fun call!57538 () Bool)

(assert (=> b!1201691 call!57538))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun minValue!944 () V!45881)

(declare-fun addStillContains!1000 (ListLongMap!17767 (_ BitVec 64) V!45881 (_ BitVec 64)) Unit!39760)

(assert (=> b!1201691 (= lt!544575 (addStillContains!1000 lt!544574 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun contains!6899 (ListLongMap!17767 (_ BitVec 64)) Bool)

(declare-fun +!3939 (ListLongMap!17767 tuple2!19786) ListLongMap!17767)

(assert (=> b!1201691 (contains!6899 (+!3939 lt!544574 (tuple2!19787 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun bm!57528 () Bool)

(declare-fun call!57536 () ListLongMap!17767)

(assert (=> bm!57528 (= call!57536 call!57534)))

(declare-fun zeroValue!944 () V!45881)

(declare-datatypes ((array!77880 0))(
  ( (array!77881 (arr!37581 (Array (_ BitVec 32) (_ BitVec 64))) (size!38118 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77880)

(declare-fun c!117512 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14573 0))(
  ( (ValueCellFull!14573 (v!17978 V!45881)) (EmptyCell!14573) )
))
(declare-datatypes ((array!77882 0))(
  ( (array!77883 (arr!37582 (Array (_ BitVec 32) ValueCell!14573)) (size!38119 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77882)

(declare-fun call!57532 () ListLongMap!17767)

(declare-fun lt!544572 () array!77882)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!57529 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!544579 () array!77880)

(declare-fun getCurrentListMapNoExtraKeys!5310 (array!77880 array!77882 (_ BitVec 32) (_ BitVec 32) V!45881 V!45881 (_ BitVec 32) Int) ListLongMap!17767)

(assert (=> bm!57529 (= call!57532 (getCurrentListMapNoExtraKeys!5310 (ite c!117512 _keys!1208 lt!544579) (ite c!117512 _values!996 lt!544572) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201692 () Bool)

(declare-fun res!799988 () Bool)

(declare-fun e!682436 () Bool)

(assert (=> b!1201692 (=> (not res!799988) (not e!682436))))

(assert (=> b!1201692 (= res!799988 (and (= (size!38119 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38118 _keys!1208) (size!38119 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1201693 () Bool)

(assert (=> b!1201693 (= e!682442 e!682440)))

(declare-fun c!117513 () Bool)

(declare-fun lt!544578 () Bool)

(assert (=> b!1201693 (= c!117513 (and (not lt!544578) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1201694 () Bool)

(declare-fun res!799992 () Bool)

(assert (=> b!1201694 (=> (not res!799992) (not e!682436))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1201694 (= res!799992 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38118 _keys!1208))))))

(declare-fun b!1201695 () Bool)

(declare-fun e!682433 () Bool)

(declare-fun e!682435 () Bool)

(assert (=> b!1201695 (= e!682433 e!682435)))

(declare-fun res!799994 () Bool)

(assert (=> b!1201695 (=> res!799994 e!682435)))

(assert (=> b!1201695 (= res!799994 (not (= (select (arr!37581 _keys!1208) from!1455) k!934)))))

(declare-fun e!682441 () Bool)

(assert (=> b!1201695 e!682441))

(assert (=> b!1201695 (= c!117512 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!544577 () Unit!39760)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1024 (array!77880 array!77882 (_ BitVec 32) (_ BitVec 32) V!45881 V!45881 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39760)

(assert (=> b!1201695 (= lt!544577 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1024 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1201696 () Bool)

(declare-fun e!682434 () Bool)

(declare-fun e!682443 () Bool)

(declare-fun mapRes!47690 () Bool)

(assert (=> b!1201696 (= e!682434 (and e!682443 mapRes!47690))))

(declare-fun condMapEmpty!47690 () Bool)

(declare-fun mapDefault!47690 () ValueCell!14573)

