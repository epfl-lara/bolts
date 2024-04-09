; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99938 () Bool)

(assert start!99938)

(declare-fun b_free!25481 () Bool)

(declare-fun b_next!25481 () Bool)

(assert (=> start!99938 (= b_free!25481 (not b_next!25481))))

(declare-fun tp!89158 () Bool)

(declare-fun b_and!41843 () Bool)

(assert (=> start!99938 (= tp!89158 b_and!41843)))

(declare-fun b!1188913 () Bool)

(declare-fun e!676021 () Bool)

(declare-fun e!676016 () Bool)

(assert (=> b!1188913 (= e!676021 e!676016)))

(declare-fun res!790643 () Bool)

(assert (=> b!1188913 (=> res!790643 e!676016)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1188913 (= res!790643 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!45141 0))(
  ( (V!45142 (val!15062 Int)) )
))
(declare-fun zeroValue!944 () V!45141)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14296 0))(
  ( (ValueCellFull!14296 (v!17701 V!45141)) (EmptyCell!14296) )
))
(declare-datatypes ((array!76790 0))(
  ( (array!76791 (arr!37041 (Array (_ BitVec 32) ValueCell!14296)) (size!37578 (_ BitVec 32))) )
))
(declare-fun lt!540837 () array!76790)

(declare-datatypes ((array!76792 0))(
  ( (array!76793 (arr!37042 (Array (_ BitVec 32) (_ BitVec 64))) (size!37579 (_ BitVec 32))) )
))
(declare-fun lt!540838 () array!76792)

(declare-datatypes ((tuple2!19472 0))(
  ( (tuple2!19473 (_1!9746 (_ BitVec 64)) (_2!9746 V!45141)) )
))
(declare-datatypes ((List!26232 0))(
  ( (Nil!26229) (Cons!26228 (h!27437 tuple2!19472) (t!38712 List!26232)) )
))
(declare-datatypes ((ListLongMap!17453 0))(
  ( (ListLongMap!17454 (toList!8742 List!26232)) )
))
(declare-fun lt!540839 () ListLongMap!17453)

(declare-fun minValue!944 () V!45141)

(declare-fun getCurrentListMapNoExtraKeys!5156 (array!76792 array!76790 (_ BitVec 32) (_ BitVec 32) V!45141 V!45141 (_ BitVec 32) Int) ListLongMap!17453)

(assert (=> b!1188913 (= lt!540839 (getCurrentListMapNoExtraKeys!5156 lt!540838 lt!540837 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!76790)

(declare-fun dynLambda!3110 (Int (_ BitVec 64)) V!45141)

(assert (=> b!1188913 (= lt!540837 (array!76791 (store (arr!37041 _values!996) i!673 (ValueCellFull!14296 (dynLambda!3110 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37578 _values!996)))))

(declare-fun lt!540836 () ListLongMap!17453)

(declare-fun _keys!1208 () array!76792)

(assert (=> b!1188913 (= lt!540836 (getCurrentListMapNoExtraKeys!5156 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1188914 () Bool)

(declare-fun res!790646 () Bool)

(declare-fun e!676017 () Bool)

(assert (=> b!1188914 (=> (not res!790646) (not e!676017))))

(declare-datatypes ((List!26233 0))(
  ( (Nil!26230) (Cons!26229 (h!27438 (_ BitVec 64)) (t!38713 List!26233)) )
))
(declare-fun arrayNoDuplicates!0 (array!76792 (_ BitVec 32) List!26233) Bool)

(assert (=> b!1188914 (= res!790646 (arrayNoDuplicates!0 lt!540838 #b00000000000000000000000000000000 Nil!26230))))

(declare-fun b!1188915 () Bool)

(assert (=> b!1188915 (= e!676017 (not e!676021))))

(declare-fun res!790644 () Bool)

(assert (=> b!1188915 (=> res!790644 e!676021)))

(assert (=> b!1188915 (= res!790644 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76792 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1188915 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39376 0))(
  ( (Unit!39377) )
))
(declare-fun lt!540835 () Unit!39376)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76792 (_ BitVec 64) (_ BitVec 32)) Unit!39376)

(assert (=> b!1188915 (= lt!540835 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!46844 () Bool)

(declare-fun mapRes!46844 () Bool)

(assert (=> mapIsEmpty!46844 mapRes!46844))

(declare-fun res!790641 () Bool)

(declare-fun e!676014 () Bool)

(assert (=> start!99938 (=> (not res!790641) (not e!676014))))

(assert (=> start!99938 (= res!790641 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37579 _keys!1208))))))

(assert (=> start!99938 e!676014))

(declare-fun tp_is_empty!30011 () Bool)

(assert (=> start!99938 tp_is_empty!30011))

(declare-fun array_inv!28148 (array!76792) Bool)

(assert (=> start!99938 (array_inv!28148 _keys!1208)))

(assert (=> start!99938 true))

(assert (=> start!99938 tp!89158))

(declare-fun e!676018 () Bool)

(declare-fun array_inv!28149 (array!76790) Bool)

(assert (=> start!99938 (and (array_inv!28149 _values!996) e!676018)))

(declare-fun b!1188916 () Bool)

(declare-fun res!790648 () Bool)

(assert (=> b!1188916 (=> (not res!790648) (not e!676014))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1188916 (= res!790648 (validKeyInArray!0 k!934))))

(declare-fun b!1188917 () Bool)

(assert (=> b!1188917 (= e!676016 true)))

(declare-fun -!1726 (ListLongMap!17453 (_ BitVec 64)) ListLongMap!17453)

(assert (=> b!1188917 (= (getCurrentListMapNoExtraKeys!5156 lt!540838 lt!540837 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1726 (getCurrentListMapNoExtraKeys!5156 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun lt!540840 () Unit!39376)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!932 (array!76792 array!76790 (_ BitVec 32) (_ BitVec 32) V!45141 V!45141 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39376)

(assert (=> b!1188917 (= lt!540840 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!932 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1188918 () Bool)

(declare-fun res!790639 () Bool)

(assert (=> b!1188918 (=> (not res!790639) (not e!676014))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76792 (_ BitVec 32)) Bool)

(assert (=> b!1188918 (= res!790639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1188919 () Bool)

(assert (=> b!1188919 (= e!676014 e!676017)))

(declare-fun res!790638 () Bool)

(assert (=> b!1188919 (=> (not res!790638) (not e!676017))))

(assert (=> b!1188919 (= res!790638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540838 mask!1564))))

(assert (=> b!1188919 (= lt!540838 (array!76793 (store (arr!37042 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37579 _keys!1208)))))

(declare-fun b!1188920 () Bool)

(declare-fun res!790642 () Bool)

(assert (=> b!1188920 (=> (not res!790642) (not e!676014))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1188920 (= res!790642 (validMask!0 mask!1564))))

(declare-fun b!1188921 () Bool)

(declare-fun res!790645 () Bool)

(assert (=> b!1188921 (=> (not res!790645) (not e!676014))))

(assert (=> b!1188921 (= res!790645 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26230))))

(declare-fun b!1188922 () Bool)

(declare-fun res!790640 () Bool)

(assert (=> b!1188922 (=> (not res!790640) (not e!676014))))

(assert (=> b!1188922 (= res!790640 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37579 _keys!1208))))))

(declare-fun b!1188923 () Bool)

(declare-fun e!676015 () Bool)

(assert (=> b!1188923 (= e!676018 (and e!676015 mapRes!46844))))

(declare-fun condMapEmpty!46844 () Bool)

(declare-fun mapDefault!46844 () ValueCell!14296)

