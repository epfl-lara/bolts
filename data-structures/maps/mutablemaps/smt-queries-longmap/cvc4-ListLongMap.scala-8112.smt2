; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99578 () Bool)

(assert start!99578)

(declare-fun b_free!25121 () Bool)

(declare-fun b_next!25121 () Bool)

(assert (=> start!99578 (= b_free!25121 (not b_next!25121))))

(declare-fun tp!88077 () Bool)

(declare-fun b_and!41123 () Bool)

(assert (=> start!99578 (= tp!88077 b_and!41123)))

(declare-fun b!1177711 () Bool)

(declare-fun e!669538 () Bool)

(declare-fun tp_is_empty!29651 () Bool)

(assert (=> b!1177711 (= e!669538 tp_is_empty!29651)))

(declare-fun b!1177712 () Bool)

(declare-datatypes ((Unit!38834 0))(
  ( (Unit!38835) )
))
(declare-fun e!669547 () Unit!38834)

(declare-fun Unit!38836 () Unit!38834)

(assert (=> b!1177712 (= e!669547 Unit!38836)))

(declare-fun b!1177713 () Bool)

(declare-fun res!782420 () Bool)

(declare-fun e!669544 () Bool)

(assert (=> b!1177713 (=> (not res!782420) (not e!669544))))

(declare-datatypes ((array!76076 0))(
  ( (array!76077 (arr!36684 (Array (_ BitVec 32) (_ BitVec 64))) (size!37221 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76076)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!44661 0))(
  ( (V!44662 (val!14882 Int)) )
))
(declare-datatypes ((ValueCell!14116 0))(
  ( (ValueCellFull!14116 (v!17521 V!44661)) (EmptyCell!14116) )
))
(declare-datatypes ((array!76078 0))(
  ( (array!76079 (arr!36685 (Array (_ BitVec 32) ValueCell!14116)) (size!37222 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76078)

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1177713 (= res!782420 (and (= (size!37222 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37221 _keys!1208) (size!37222 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!782414 () Bool)

(assert (=> start!99578 (=> (not res!782414) (not e!669544))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99578 (= res!782414 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37221 _keys!1208))))))

(assert (=> start!99578 e!669544))

(assert (=> start!99578 tp_is_empty!29651))

(declare-fun array_inv!27904 (array!76076) Bool)

(assert (=> start!99578 (array_inv!27904 _keys!1208)))

(assert (=> start!99578 true))

(assert (=> start!99578 tp!88077))

(declare-fun e!669541 () Bool)

(declare-fun array_inv!27905 (array!76078) Bool)

(assert (=> start!99578 (and (array_inv!27905 _values!996) e!669541)))

(declare-fun b!1177714 () Bool)

(declare-fun res!782408 () Bool)

(declare-fun e!669550 () Bool)

(assert (=> b!1177714 (=> (not res!782408) (not e!669550))))

(declare-fun lt!531840 () array!76076)

(declare-datatypes ((List!25926 0))(
  ( (Nil!25923) (Cons!25922 (h!27131 (_ BitVec 64)) (t!38046 List!25926)) )
))
(declare-fun arrayNoDuplicates!0 (array!76076 (_ BitVec 32) List!25926) Bool)

(assert (=> b!1177714 (= res!782408 (arrayNoDuplicates!0 lt!531840 #b00000000000000000000000000000000 Nil!25923))))

(declare-fun b!1177715 () Bool)

(declare-fun e!669540 () Bool)

(declare-fun e!669542 () Bool)

(assert (=> b!1177715 (= e!669540 e!669542)))

(declare-fun res!782410 () Bool)

(assert (=> b!1177715 (=> res!782410 e!669542)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1177715 (= res!782410 (not (= (select (arr!36684 _keys!1208) from!1455) k!934)))))

(declare-fun b!1177716 () Bool)

(declare-fun e!669549 () Bool)

(declare-fun e!669546 () Bool)

(assert (=> b!1177716 (= e!669549 e!669546)))

(declare-fun res!782421 () Bool)

(assert (=> b!1177716 (=> res!782421 e!669546)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1177716 (= res!782421 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44661)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!531838 () array!76078)

(declare-datatypes ((tuple2!19160 0))(
  ( (tuple2!19161 (_1!9590 (_ BitVec 64)) (_2!9590 V!44661)) )
))
(declare-datatypes ((List!25927 0))(
  ( (Nil!25924) (Cons!25923 (h!27132 tuple2!19160) (t!38047 List!25927)) )
))
(declare-datatypes ((ListLongMap!17141 0))(
  ( (ListLongMap!17142 (toList!8586 List!25927)) )
))
(declare-fun lt!531841 () ListLongMap!17141)

(declare-fun minValue!944 () V!44661)

(declare-fun getCurrentListMapNoExtraKeys!5017 (array!76076 array!76078 (_ BitVec 32) (_ BitVec 32) V!44661 V!44661 (_ BitVec 32) Int) ListLongMap!17141)

(assert (=> b!1177716 (= lt!531841 (getCurrentListMapNoExtraKeys!5017 lt!531840 lt!531838 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!531839 () V!44661)

(assert (=> b!1177716 (= lt!531838 (array!76079 (store (arr!36685 _values!996) i!673 (ValueCellFull!14116 lt!531839)) (size!37222 _values!996)))))

(declare-fun dynLambda!2992 (Int (_ BitVec 64)) V!44661)

(assert (=> b!1177716 (= lt!531839 (dynLambda!2992 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!531847 () ListLongMap!17141)

(assert (=> b!1177716 (= lt!531847 (getCurrentListMapNoExtraKeys!5017 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1177717 () Bool)

(declare-fun res!782413 () Bool)

(assert (=> b!1177717 (=> (not res!782413) (not e!669544))))

(assert (=> b!1177717 (= res!782413 (= (select (arr!36684 _keys!1208) i!673) k!934))))

(declare-fun b!1177718 () Bool)

(declare-fun arrayContainsKey!0 (array!76076 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1177718 (= e!669542 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1177719 () Bool)

(declare-fun e!669539 () Bool)

(assert (=> b!1177719 (= e!669546 e!669539)))

(declare-fun res!782416 () Bool)

(assert (=> b!1177719 (=> res!782416 e!669539)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1177719 (= res!782416 (not (validKeyInArray!0 (select (arr!36684 _keys!1208) from!1455))))))

(declare-fun lt!531845 () ListLongMap!17141)

(declare-fun lt!531837 () ListLongMap!17141)

(assert (=> b!1177719 (= lt!531845 lt!531837)))

(declare-fun lt!531842 () ListLongMap!17141)

(declare-fun -!1587 (ListLongMap!17141 (_ BitVec 64)) ListLongMap!17141)

(assert (=> b!1177719 (= lt!531837 (-!1587 lt!531842 k!934))))

(assert (=> b!1177719 (= lt!531845 (getCurrentListMapNoExtraKeys!5017 lt!531840 lt!531838 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1177719 (= lt!531842 (getCurrentListMapNoExtraKeys!5017 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!531849 () Unit!38834)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!811 (array!76076 array!76078 (_ BitVec 32) (_ BitVec 32) V!44661 V!44661 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38834)

(assert (=> b!1177719 (= lt!531849 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!811 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1177720 () Bool)

(declare-fun res!782411 () Bool)

(assert (=> b!1177720 (=> (not res!782411) (not e!669544))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76076 (_ BitVec 32)) Bool)

(assert (=> b!1177720 (= res!782411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1177721 () Bool)

(declare-fun e!669548 () Bool)

(declare-fun mapRes!46304 () Bool)

(assert (=> b!1177721 (= e!669541 (and e!669548 mapRes!46304))))

(declare-fun condMapEmpty!46304 () Bool)

(declare-fun mapDefault!46304 () ValueCell!14116)

