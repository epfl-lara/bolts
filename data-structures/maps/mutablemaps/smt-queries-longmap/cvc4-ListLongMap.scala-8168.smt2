; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99914 () Bool)

(assert start!99914)

(declare-fun b_free!25457 () Bool)

(declare-fun b_next!25457 () Bool)

(assert (=> start!99914 (= b_free!25457 (not b_next!25457))))

(declare-fun tp!89086 () Bool)

(declare-fun b_and!41795 () Bool)

(assert (=> start!99914 (= tp!89086 b_and!41795)))

(declare-fun b!1188349 () Bool)

(declare-fun e!675729 () Bool)

(assert (=> b!1188349 (= e!675729 true)))

(declare-datatypes ((V!45109 0))(
  ( (V!45110 (val!15050 Int)) )
))
(declare-fun zeroValue!944 () V!45109)

(declare-datatypes ((array!76742 0))(
  ( (array!76743 (arr!37017 (Array (_ BitVec 32) (_ BitVec 64))) (size!37554 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76742)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!540621 () array!76742)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14284 0))(
  ( (ValueCellFull!14284 (v!17689 V!45109)) (EmptyCell!14284) )
))
(declare-datatypes ((array!76744 0))(
  ( (array!76745 (arr!37018 (Array (_ BitVec 32) ValueCell!14284)) (size!37555 (_ BitVec 32))) )
))
(declare-fun lt!540624 () array!76744)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _values!996 () array!76744)

(declare-fun minValue!944 () V!45109)

(declare-datatypes ((tuple2!19454 0))(
  ( (tuple2!19455 (_1!9737 (_ BitVec 64)) (_2!9737 V!45109)) )
))
(declare-datatypes ((List!26215 0))(
  ( (Nil!26212) (Cons!26211 (h!27420 tuple2!19454) (t!38671 List!26215)) )
))
(declare-datatypes ((ListLongMap!17435 0))(
  ( (ListLongMap!17436 (toList!8733 List!26215)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5147 (array!76742 array!76744 (_ BitVec 32) (_ BitVec 32) V!45109 V!45109 (_ BitVec 32) Int) ListLongMap!17435)

(declare-fun -!1718 (ListLongMap!17435 (_ BitVec 64)) ListLongMap!17435)

(assert (=> b!1188349 (= (getCurrentListMapNoExtraKeys!5147 lt!540621 lt!540624 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1718 (getCurrentListMapNoExtraKeys!5147 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39356 0))(
  ( (Unit!39357) )
))
(declare-fun lt!540620 () Unit!39356)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!924 (array!76742 array!76744 (_ BitVec 32) (_ BitVec 32) V!45109 V!45109 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39356)

(assert (=> b!1188349 (= lt!540620 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!924 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1188350 () Bool)

(declare-fun res!790209 () Bool)

(declare-fun e!675730 () Bool)

(assert (=> b!1188350 (=> (not res!790209) (not e!675730))))

(assert (=> b!1188350 (= res!790209 (= (select (arr!37017 _keys!1208) i!673) k!934))))

(declare-fun b!1188351 () Bool)

(declare-fun res!790205 () Bool)

(assert (=> b!1188351 (=> (not res!790205) (not e!675730))))

(assert (=> b!1188351 (= res!790205 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37554 _keys!1208))))))

(declare-fun b!1188352 () Bool)

(declare-fun e!675726 () Bool)

(declare-fun e!675728 () Bool)

(declare-fun mapRes!46808 () Bool)

(assert (=> b!1188352 (= e!675726 (and e!675728 mapRes!46808))))

(declare-fun condMapEmpty!46808 () Bool)

(declare-fun mapDefault!46808 () ValueCell!14284)

