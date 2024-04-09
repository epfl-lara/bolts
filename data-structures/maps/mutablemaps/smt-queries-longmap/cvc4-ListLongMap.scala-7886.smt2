; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98100 () Bool)

(assert start!98100)

(declare-fun b_free!23765 () Bool)

(declare-fun b_next!23765 () Bool)

(assert (=> start!98100 (= b_free!23765 (not b_next!23765))))

(declare-fun tp!84000 () Bool)

(declare-fun b_and!38335 () Bool)

(assert (=> start!98100 (= tp!84000 b_and!38335)))

(declare-fun b!1125984 () Bool)

(declare-fun res!752482 () Bool)

(declare-fun e!640971 () Bool)

(assert (=> b!1125984 (=> (not res!752482) (not e!640971))))

(declare-datatypes ((array!73412 0))(
  ( (array!73413 (arr!35355 (Array (_ BitVec 32) (_ BitVec 64))) (size!35892 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73412)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73412 (_ BitVec 32)) Bool)

(assert (=> b!1125984 (= res!752482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1125985 () Bool)

(declare-fun res!752489 () Bool)

(assert (=> b!1125985 (=> (not res!752489) (not e!640971))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42853 0))(
  ( (V!42854 (val!14204 Int)) )
))
(declare-datatypes ((ValueCell!13438 0))(
  ( (ValueCellFull!13438 (v!16838 V!42853)) (EmptyCell!13438) )
))
(declare-datatypes ((array!73414 0))(
  ( (array!73415 (arr!35356 (Array (_ BitVec 32) ValueCell!13438)) (size!35893 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73414)

(assert (=> b!1125985 (= res!752489 (and (= (size!35893 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35892 _keys!1208) (size!35893 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1125986 () Bool)

(declare-fun res!752483 () Bool)

(assert (=> b!1125986 (=> (not res!752483) (not e!640971))))

(declare-datatypes ((List!24767 0))(
  ( (Nil!24764) (Cons!24763 (h!25972 (_ BitVec 64)) (t!35531 List!24767)) )
))
(declare-fun arrayNoDuplicates!0 (array!73412 (_ BitVec 32) List!24767) Bool)

(assert (=> b!1125986 (= res!752483 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24764))))

(declare-fun b!1125987 () Bool)

(declare-fun e!640966 () Bool)

(declare-fun tp_is_empty!28295 () Bool)

(assert (=> b!1125987 (= e!640966 tp_is_empty!28295)))

(declare-fun b!1125988 () Bool)

(declare-fun e!640970 () Bool)

(declare-fun e!640972 () Bool)

(assert (=> b!1125988 (= e!640970 (not e!640972))))

(declare-fun res!752485 () Bool)

(assert (=> b!1125988 (=> res!752485 e!640972)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1125988 (= res!752485 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73412 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1125988 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36845 0))(
  ( (Unit!36846) )
))
(declare-fun lt!500044 () Unit!36845)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73412 (_ BitVec 64) (_ BitVec 32)) Unit!36845)

(assert (=> b!1125988 (= lt!500044 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1125989 () Bool)

(declare-fun res!752478 () Bool)

(assert (=> b!1125989 (=> (not res!752478) (not e!640971))))

(assert (=> b!1125989 (= res!752478 (= (select (arr!35355 _keys!1208) i!673) k!934))))

(declare-fun b!1125990 () Bool)

(declare-fun res!752480 () Bool)

(assert (=> b!1125990 (=> (not res!752480) (not e!640971))))

(assert (=> b!1125990 (= res!752480 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35892 _keys!1208))))))

(declare-fun b!1125991 () Bool)

(declare-fun e!640973 () Bool)

(assert (=> b!1125991 (= e!640973 true)))

(declare-fun zeroValue!944 () V!42853)

(declare-fun lt!500042 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42853)

(declare-datatypes ((tuple2!17940 0))(
  ( (tuple2!17941 (_1!8980 (_ BitVec 64)) (_2!8980 V!42853)) )
))
(declare-datatypes ((List!24768 0))(
  ( (Nil!24765) (Cons!24764 (h!25973 tuple2!17940) (t!35532 List!24768)) )
))
(declare-datatypes ((ListLongMap!15921 0))(
  ( (ListLongMap!15922 (toList!7976 List!24768)) )
))
(declare-fun contains!6485 (ListLongMap!15921 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!4435 (array!73412 array!73414 (_ BitVec 32) (_ BitVec 32) V!42853 V!42853 (_ BitVec 32) Int) ListLongMap!15921)

(assert (=> b!1125991 (= lt!500042 (contains!6485 (getCurrentListMapNoExtraKeys!4435 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1125992 () Bool)

(declare-fun e!640968 () Bool)

(declare-fun mapRes!44260 () Bool)

(assert (=> b!1125992 (= e!640968 (and e!640966 mapRes!44260))))

(declare-fun condMapEmpty!44260 () Bool)

(declare-fun mapDefault!44260 () ValueCell!13438)

