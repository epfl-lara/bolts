; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100544 () Bool)

(assert start!100544)

(declare-fun b_free!25831 () Bool)

(declare-fun b_next!25831 () Bool)

(assert (=> start!100544 (= b_free!25831 (not b_next!25831))))

(declare-fun tp!90484 () Bool)

(declare-fun b_and!42563 () Bool)

(assert (=> start!100544 (= tp!90484 b_and!42563)))

(declare-fun res!799379 () Bool)

(declare-fun e!681903 () Bool)

(assert (=> start!100544 (=> (not res!799379) (not e!681903))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77824 0))(
  ( (array!77825 (arr!37553 (Array (_ BitVec 32) (_ BitVec 64))) (size!38090 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77824)

(assert (=> start!100544 (= res!799379 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38090 _keys!1208))))))

(assert (=> start!100544 e!681903))

(declare-fun tp_is_empty!30535 () Bool)

(assert (=> start!100544 tp_is_empty!30535))

(declare-fun array_inv!28512 (array!77824) Bool)

(assert (=> start!100544 (array_inv!28512 _keys!1208)))

(assert (=> start!100544 true))

(assert (=> start!100544 tp!90484))

(declare-datatypes ((V!45841 0))(
  ( (V!45842 (val!15324 Int)) )
))
(declare-datatypes ((ValueCell!14558 0))(
  ( (ValueCellFull!14558 (v!17963 V!45841)) (EmptyCell!14558) )
))
(declare-datatypes ((array!77826 0))(
  ( (array!77827 (arr!37554 (Array (_ BitVec 32) ValueCell!14558)) (size!38091 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77826)

(declare-fun e!681902 () Bool)

(declare-fun array_inv!28513 (array!77826) Bool)

(assert (=> start!100544 (and (array_inv!28513 _values!996) e!681902)))

(declare-fun b!1200695 () Bool)

(declare-fun res!799375 () Bool)

(assert (=> b!1200695 (=> (not res!799375) (not e!681903))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1200695 (= res!799375 (= (select (arr!37553 _keys!1208) i!673) k!934))))

(declare-fun b!1200696 () Bool)

(declare-fun e!681900 () Bool)

(declare-fun e!681898 () Bool)

(assert (=> b!1200696 (= e!681900 (not e!681898))))

(declare-fun res!799371 () Bool)

(assert (=> b!1200696 (=> res!799371 e!681898)))

(assert (=> b!1200696 (= res!799371 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77824 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1200696 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39736 0))(
  ( (Unit!39737) )
))
(declare-fun lt!544111 () Unit!39736)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77824 (_ BitVec 64) (_ BitVec 32)) Unit!39736)

(assert (=> b!1200696 (= lt!544111 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1200697 () Bool)

(declare-fun res!799383 () Bool)

(assert (=> b!1200697 (=> (not res!799383) (not e!681903))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1200697 (= res!799383 (validMask!0 mask!1564))))

(declare-fun b!1200698 () Bool)

(declare-fun e!681894 () Bool)

(declare-fun e!681896 () Bool)

(assert (=> b!1200698 (= e!681894 e!681896)))

(declare-fun res!799377 () Bool)

(assert (=> b!1200698 (=> res!799377 e!681896)))

(declare-datatypes ((tuple2!19760 0))(
  ( (tuple2!19761 (_1!9890 (_ BitVec 64)) (_2!9890 V!45841)) )
))
(declare-datatypes ((List!26593 0))(
  ( (Nil!26590) (Cons!26589 (h!27798 tuple2!19760) (t!39411 List!26593)) )
))
(declare-datatypes ((ListLongMap!17741 0))(
  ( (ListLongMap!17742 (toList!8886 List!26593)) )
))
(declare-fun lt!544110 () ListLongMap!17741)

(declare-fun contains!6889 (ListLongMap!17741 (_ BitVec 64)) Bool)

(assert (=> b!1200698 (= res!799377 (not (contains!6889 lt!544110 k!934)))))

(declare-fun zeroValue!944 () V!45841)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45841)

(declare-fun getCurrentListMapNoExtraKeys!5299 (array!77824 array!77826 (_ BitVec 32) (_ BitVec 32) V!45841 V!45841 (_ BitVec 32) Int) ListLongMap!17741)

(assert (=> b!1200698 (= lt!544110 (getCurrentListMapNoExtraKeys!5299 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57318 () Bool)

(declare-fun lt!544109 () array!77824)

(declare-fun lt!544112 () array!77826)

(declare-fun call!57321 () ListLongMap!17741)

(assert (=> bm!57318 (= call!57321 (getCurrentListMapNoExtraKeys!5299 lt!544109 lt!544112 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1200699 () Bool)

(declare-fun e!681904 () Bool)

(assert (=> b!1200699 (= e!681904 tp_is_empty!30535)))

(declare-fun b!1200700 () Bool)

(declare-fun res!799378 () Bool)

(assert (=> b!1200700 (=> (not res!799378) (not e!681903))))

(assert (=> b!1200700 (= res!799378 (and (= (size!38091 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38090 _keys!1208) (size!38091 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1200701 () Bool)

(declare-fun res!799380 () Bool)

(assert (=> b!1200701 (=> (not res!799380) (not e!681903))))

(declare-datatypes ((List!26594 0))(
  ( (Nil!26591) (Cons!26590 (h!27799 (_ BitVec 64)) (t!39412 List!26594)) )
))
(declare-fun arrayNoDuplicates!0 (array!77824 (_ BitVec 32) List!26594) Bool)

(assert (=> b!1200701 (= res!799380 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26591))))

(declare-fun b!1200702 () Bool)

(declare-fun e!681897 () Bool)

(assert (=> b!1200702 (= e!681898 e!681897)))

(declare-fun res!799382 () Bool)

(assert (=> b!1200702 (=> res!799382 e!681897)))

(assert (=> b!1200702 (= res!799382 (not (= from!1455 i!673)))))

(declare-fun lt!544108 () ListLongMap!17741)

(assert (=> b!1200702 (= lt!544108 (getCurrentListMapNoExtraKeys!5299 lt!544109 lt!544112 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3229 (Int (_ BitVec 64)) V!45841)

(assert (=> b!1200702 (= lt!544112 (array!77827 (store (arr!37554 _values!996) i!673 (ValueCellFull!14558 (dynLambda!3229 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38091 _values!996)))))

(declare-fun lt!544107 () ListLongMap!17741)

(assert (=> b!1200702 (= lt!544107 (getCurrentListMapNoExtraKeys!5299 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1200703 () Bool)

(declare-fun res!799372 () Bool)

(assert (=> b!1200703 (=> (not res!799372) (not e!681903))))

(assert (=> b!1200703 (= res!799372 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38090 _keys!1208))))))

(declare-fun call!57322 () ListLongMap!17741)

(declare-fun bm!57319 () Bool)

(assert (=> bm!57319 (= call!57322 (getCurrentListMapNoExtraKeys!5299 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1200704 () Bool)

(declare-fun e!681899 () Bool)

(assert (=> b!1200704 (= e!681899 tp_is_empty!30535)))

(declare-fun mapNonEmpty!47645 () Bool)

(declare-fun mapRes!47645 () Bool)

(declare-fun tp!90483 () Bool)

(assert (=> mapNonEmpty!47645 (= mapRes!47645 (and tp!90483 e!681904))))

(declare-fun mapValue!47645 () ValueCell!14558)

(declare-fun mapRest!47645 () (Array (_ BitVec 32) ValueCell!14558))

(declare-fun mapKey!47645 () (_ BitVec 32))

(assert (=> mapNonEmpty!47645 (= (arr!37554 _values!996) (store mapRest!47645 mapKey!47645 mapValue!47645))))

(declare-fun e!681895 () Bool)

(declare-fun b!1200705 () Bool)

(declare-fun -!1812 (ListLongMap!17741 (_ BitVec 64)) ListLongMap!17741)

(assert (=> b!1200705 (= e!681895 (= call!57321 (-!1812 call!57322 k!934)))))

(declare-fun b!1200706 () Bool)

(assert (=> b!1200706 (= e!681902 (and e!681899 mapRes!47645))))

(declare-fun condMapEmpty!47645 () Bool)

(declare-fun mapDefault!47645 () ValueCell!14558)

