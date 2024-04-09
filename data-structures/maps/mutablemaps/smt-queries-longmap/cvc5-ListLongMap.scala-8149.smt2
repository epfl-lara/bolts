; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99796 () Bool)

(assert start!99796)

(declare-fun b_free!25339 () Bool)

(declare-fun b_next!25339 () Bool)

(assert (=> start!99796 (= b_free!25339 (not b_next!25339))))

(declare-fun tp!88732 () Bool)

(declare-fun b_and!41559 () Bool)

(assert (=> start!99796 (= tp!88732 b_and!41559)))

(declare-fun b!1184731 () Bool)

(declare-fun res!787581 () Bool)

(declare-fun e!673635 () Bool)

(assert (=> b!1184731 (=> (not res!787581) (not e!673635))))

(declare-datatypes ((array!76506 0))(
  ( (array!76507 (arr!36899 (Array (_ BitVec 32) (_ BitVec 64))) (size!37436 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76506)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76506 (_ BitVec 32)) Bool)

(assert (=> b!1184731 (= res!787581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1184732 () Bool)

(declare-fun res!787577 () Bool)

(assert (=> b!1184732 (=> (not res!787577) (not e!673635))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1184732 (= res!787577 (validKeyInArray!0 k!934))))

(declare-fun b!1184733 () Bool)

(declare-fun e!673640 () Bool)

(declare-fun e!673644 () Bool)

(assert (=> b!1184733 (= e!673640 e!673644)))

(declare-fun res!787583 () Bool)

(assert (=> b!1184733 (=> res!787583 e!673644)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1184733 (= res!787583 (not (= (select (arr!36899 _keys!1208) from!1455) k!934)))))

(declare-fun b!1184734 () Bool)

(declare-fun e!673642 () Bool)

(declare-fun e!673637 () Bool)

(assert (=> b!1184734 (= e!673642 e!673637)))

(declare-fun res!787585 () Bool)

(assert (=> b!1184734 (=> res!787585 e!673637)))

(assert (=> b!1184734 (= res!787585 (not (validKeyInArray!0 (select (arr!36899 _keys!1208) from!1455))))))

(declare-datatypes ((V!44953 0))(
  ( (V!44954 (val!14991 Int)) )
))
(declare-datatypes ((tuple2!19346 0))(
  ( (tuple2!19347 (_1!9683 (_ BitVec 64)) (_2!9683 V!44953)) )
))
(declare-datatypes ((List!26108 0))(
  ( (Nil!26105) (Cons!26104 (h!27313 tuple2!19346) (t!38446 List!26108)) )
))
(declare-datatypes ((ListLongMap!17327 0))(
  ( (ListLongMap!17328 (toList!8679 List!26108)) )
))
(declare-fun lt!537365 () ListLongMap!17327)

(declare-fun lt!537361 () ListLongMap!17327)

(assert (=> b!1184734 (= lt!537365 lt!537361)))

(declare-fun lt!537372 () ListLongMap!17327)

(declare-fun -!1666 (ListLongMap!17327 (_ BitVec 64)) ListLongMap!17327)

(assert (=> b!1184734 (= lt!537361 (-!1666 lt!537372 k!934))))

(declare-fun zeroValue!944 () V!44953)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!537371 () array!76506)

(declare-datatypes ((ValueCell!14225 0))(
  ( (ValueCellFull!14225 (v!17630 V!44953)) (EmptyCell!14225) )
))
(declare-datatypes ((array!76508 0))(
  ( (array!76509 (arr!36900 (Array (_ BitVec 32) ValueCell!14225)) (size!37437 (_ BitVec 32))) )
))
(declare-fun lt!537363 () array!76508)

(declare-fun minValue!944 () V!44953)

(declare-fun getCurrentListMapNoExtraKeys!5098 (array!76506 array!76508 (_ BitVec 32) (_ BitVec 32) V!44953 V!44953 (_ BitVec 32) Int) ListLongMap!17327)

(assert (=> b!1184734 (= lt!537365 (getCurrentListMapNoExtraKeys!5098 lt!537371 lt!537363 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76508)

(assert (=> b!1184734 (= lt!537372 (getCurrentListMapNoExtraKeys!5098 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39159 0))(
  ( (Unit!39160) )
))
(declare-fun lt!537366 () Unit!39159)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!881 (array!76506 array!76508 (_ BitVec 32) (_ BitVec 32) V!44953 V!44953 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39159)

(assert (=> b!1184734 (= lt!537366 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!881 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1184735 () Bool)

(declare-fun e!673639 () Bool)

(assert (=> b!1184735 (= e!673635 e!673639)))

(declare-fun res!787574 () Bool)

(assert (=> b!1184735 (=> (not res!787574) (not e!673639))))

(assert (=> b!1184735 (= res!787574 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!537371 mask!1564))))

(assert (=> b!1184735 (= lt!537371 (array!76507 (store (arr!36899 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37436 _keys!1208)))))

(declare-fun b!1184736 () Bool)

(declare-fun e!673643 () Bool)

(declare-fun tp_is_empty!29869 () Bool)

(assert (=> b!1184736 (= e!673643 tp_is_empty!29869)))

(declare-fun res!787582 () Bool)

(assert (=> start!99796 (=> (not res!787582) (not e!673635))))

(assert (=> start!99796 (= res!787582 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37436 _keys!1208))))))

(assert (=> start!99796 e!673635))

(assert (=> start!99796 tp_is_empty!29869))

(declare-fun array_inv!28040 (array!76506) Bool)

(assert (=> start!99796 (array_inv!28040 _keys!1208)))

(assert (=> start!99796 true))

(assert (=> start!99796 tp!88732))

(declare-fun e!673645 () Bool)

(declare-fun array_inv!28041 (array!76508) Bool)

(assert (=> start!99796 (and (array_inv!28041 _values!996) e!673645)))

(declare-fun b!1184737 () Bool)

(declare-fun res!787587 () Bool)

(assert (=> b!1184737 (=> (not res!787587) (not e!673635))))

(declare-datatypes ((List!26109 0))(
  ( (Nil!26106) (Cons!26105 (h!27314 (_ BitVec 64)) (t!38447 List!26109)) )
))
(declare-fun arrayNoDuplicates!0 (array!76506 (_ BitVec 32) List!26109) Bool)

(assert (=> b!1184737 (= res!787587 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26106))))

(declare-fun b!1184738 () Bool)

(declare-fun res!787584 () Bool)

(assert (=> b!1184738 (=> (not res!787584) (not e!673635))))

(assert (=> b!1184738 (= res!787584 (= (select (arr!36899 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!46631 () Bool)

(declare-fun mapRes!46631 () Bool)

(assert (=> mapIsEmpty!46631 mapRes!46631))

(declare-fun b!1184739 () Bool)

(declare-fun e!673638 () Bool)

(assert (=> b!1184739 (= e!673645 (and e!673638 mapRes!46631))))

(declare-fun condMapEmpty!46631 () Bool)

(declare-fun mapDefault!46631 () ValueCell!14225)

