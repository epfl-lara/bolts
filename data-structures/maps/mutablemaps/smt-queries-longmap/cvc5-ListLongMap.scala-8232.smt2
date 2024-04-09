; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100336 () Bool)

(assert start!100336)

(declare-fun b_free!25687 () Bool)

(declare-fun b_next!25687 () Bool)

(assert (=> start!100336 (= b_free!25687 (not b_next!25687))))

(declare-fun tp!90009 () Bool)

(declare-fun b_and!42255 () Bool)

(assert (=> start!100336 (= tp!90009 b_and!42255)))

(declare-fun b!1196699 () Bool)

(declare-fun e!679926 () Bool)

(declare-fun tp_is_empty!30367 () Bool)

(assert (=> b!1196699 (= e!679926 tp_is_empty!30367)))

(declare-fun b!1196700 () Bool)

(declare-fun res!796505 () Bool)

(declare-fun e!679923 () Bool)

(assert (=> b!1196700 (=> (not res!796505) (not e!679923))))

(declare-datatypes ((array!77494 0))(
  ( (array!77495 (arr!37390 (Array (_ BitVec 32) (_ BitVec 64))) (size!37927 (_ BitVec 32))) )
))
(declare-fun lt!543084 () array!77494)

(declare-datatypes ((List!26469 0))(
  ( (Nil!26466) (Cons!26465 (h!27674 (_ BitVec 64)) (t!39155 List!26469)) )
))
(declare-fun arrayNoDuplicates!0 (array!77494 (_ BitVec 32) List!26469) Bool)

(assert (=> b!1196700 (= res!796505 (arrayNoDuplicates!0 lt!543084 #b00000000000000000000000000000000 Nil!26466))))

(declare-datatypes ((V!45617 0))(
  ( (V!45618 (val!15240 Int)) )
))
(declare-datatypes ((tuple2!19652 0))(
  ( (tuple2!19653 (_1!9836 (_ BitVec 64)) (_2!9836 V!45617)) )
))
(declare-datatypes ((List!26470 0))(
  ( (Nil!26467) (Cons!26466 (h!27675 tuple2!19652) (t!39156 List!26470)) )
))
(declare-datatypes ((ListLongMap!17633 0))(
  ( (ListLongMap!17634 (toList!8832 List!26470)) )
))
(declare-fun call!57181 () ListLongMap!17633)

(declare-fun b!1196701 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!57182 () ListLongMap!17633)

(declare-fun e!679929 () Bool)

(declare-fun -!1799 (ListLongMap!17633 (_ BitVec 64)) ListLongMap!17633)

(assert (=> b!1196701 (= e!679929 (= call!57181 (-!1799 call!57182 k!934)))))

(declare-fun res!796513 () Bool)

(declare-fun e!679924 () Bool)

(assert (=> start!100336 (=> (not res!796513) (not e!679924))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _keys!1208 () array!77494)

(assert (=> start!100336 (= res!796513 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37927 _keys!1208))))))

(assert (=> start!100336 e!679924))

(assert (=> start!100336 tp_is_empty!30367))

(declare-fun array_inv!28400 (array!77494) Bool)

(assert (=> start!100336 (array_inv!28400 _keys!1208)))

(assert (=> start!100336 true))

(assert (=> start!100336 tp!90009))

(declare-datatypes ((ValueCell!14474 0))(
  ( (ValueCellFull!14474 (v!17879 V!45617)) (EmptyCell!14474) )
))
(declare-datatypes ((array!77496 0))(
  ( (array!77497 (arr!37391 (Array (_ BitVec 32) ValueCell!14474)) (size!37928 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77496)

(declare-fun e!679930 () Bool)

(declare-fun array_inv!28401 (array!77496) Bool)

(assert (=> start!100336 (and (array_inv!28401 _values!996) e!679930)))

(declare-fun b!1196702 () Bool)

(declare-fun res!796508 () Bool)

(assert (=> b!1196702 (=> (not res!796508) (not e!679924))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1196702 (= res!796508 (validKeyInArray!0 k!934))))

(declare-fun b!1196703 () Bool)

(declare-fun res!796504 () Bool)

(assert (=> b!1196703 (=> (not res!796504) (not e!679924))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1196703 (= res!796504 (= (select (arr!37390 _keys!1208) i!673) k!934))))

(declare-fun b!1196704 () Bool)

(assert (=> b!1196704 (= e!679929 (= call!57181 call!57182))))

(declare-fun b!1196705 () Bool)

(declare-fun res!796506 () Bool)

(assert (=> b!1196705 (=> (not res!796506) (not e!679924))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1196705 (= res!796506 (validMask!0 mask!1564))))

(declare-fun zeroValue!944 () V!45617)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45617)

(declare-fun bm!57178 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5245 (array!77494 array!77496 (_ BitVec 32) (_ BitVec 32) V!45617 V!45617 (_ BitVec 32) Int) ListLongMap!17633)

(assert (=> bm!57178 (= call!57182 (getCurrentListMapNoExtraKeys!5245 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1196706 () Bool)

(declare-fun e!679925 () Bool)

(assert (=> b!1196706 (= e!679925 tp_is_empty!30367)))

(declare-fun mapIsEmpty!47387 () Bool)

(declare-fun mapRes!47387 () Bool)

(assert (=> mapIsEmpty!47387 mapRes!47387))

(declare-fun b!1196707 () Bool)

(declare-fun res!796512 () Bool)

(assert (=> b!1196707 (=> (not res!796512) (not e!679924))))

(assert (=> b!1196707 (= res!796512 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26466))))

(declare-fun b!1196708 () Bool)

(declare-fun e!679927 () Bool)

(assert (=> b!1196708 (= e!679927 true)))

(assert (=> b!1196708 e!679929))

(declare-fun c!117293 () Bool)

(assert (=> b!1196708 (= c!117293 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!39624 0))(
  ( (Unit!39625) )
))
(declare-fun lt!543082 () Unit!39624)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1006 (array!77494 array!77496 (_ BitVec 32) (_ BitVec 32) V!45617 V!45617 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39624)

(assert (=> b!1196708 (= lt!543082 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1006 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1196709 () Bool)

(assert (=> b!1196709 (= e!679924 e!679923)))

(declare-fun res!796509 () Bool)

(assert (=> b!1196709 (=> (not res!796509) (not e!679923))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77494 (_ BitVec 32)) Bool)

(assert (=> b!1196709 (= res!796509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543084 mask!1564))))

(assert (=> b!1196709 (= lt!543084 (array!77495 (store (arr!37390 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37927 _keys!1208)))))

(declare-fun b!1196710 () Bool)

(assert (=> b!1196710 (= e!679923 (not e!679927))))

(declare-fun res!796503 () Bool)

(assert (=> b!1196710 (=> res!796503 e!679927)))

(assert (=> b!1196710 (= res!796503 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!37927 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!77494 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1196710 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!543083 () Unit!39624)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77494 (_ BitVec 64) (_ BitVec 32)) Unit!39624)

(assert (=> b!1196710 (= lt!543083 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1196711 () Bool)

(declare-fun res!796511 () Bool)

(assert (=> b!1196711 (=> (not res!796511) (not e!679924))))

(assert (=> b!1196711 (= res!796511 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!57179 () Bool)

(declare-fun dynLambda!3182 (Int (_ BitVec 64)) V!45617)

(assert (=> bm!57179 (= call!57181 (getCurrentListMapNoExtraKeys!5245 lt!543084 (array!77497 (store (arr!37391 _values!996) i!673 (ValueCellFull!14474 (dynLambda!3182 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37928 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1196712 () Bool)

(assert (=> b!1196712 (= e!679930 (and e!679926 mapRes!47387))))

(declare-fun condMapEmpty!47387 () Bool)

(declare-fun mapDefault!47387 () ValueCell!14474)

