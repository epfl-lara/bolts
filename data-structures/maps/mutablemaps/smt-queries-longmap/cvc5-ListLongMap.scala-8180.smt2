; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99982 () Bool)

(assert start!99982)

(declare-fun b_free!25525 () Bool)

(declare-fun b_next!25525 () Bool)

(assert (=> start!99982 (= b_free!25525 (not b_next!25525))))

(declare-fun tp!89289 () Bool)

(declare-fun b_and!41931 () Bool)

(assert (=> start!99982 (= tp!89289 b_and!41931)))

(declare-fun b!1189947 () Bool)

(declare-fun res!791435 () Bool)

(declare-fun e!676546 () Bool)

(assert (=> b!1189947 (=> (not res!791435) (not e!676546))))

(declare-datatypes ((array!76876 0))(
  ( (array!76877 (arr!37084 (Array (_ BitVec 32) (_ BitVec 64))) (size!37621 (_ BitVec 32))) )
))
(declare-fun lt!541232 () array!76876)

(declare-datatypes ((List!26271 0))(
  ( (Nil!26268) (Cons!26267 (h!27476 (_ BitVec 64)) (t!38795 List!26271)) )
))
(declare-fun arrayNoDuplicates!0 (array!76876 (_ BitVec 32) List!26271) Bool)

(assert (=> b!1189947 (= res!791435 (arrayNoDuplicates!0 lt!541232 #b00000000000000000000000000000000 Nil!26268))))

(declare-fun res!791437 () Bool)

(declare-fun e!676543 () Bool)

(assert (=> start!99982 (=> (not res!791437) (not e!676543))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _keys!1208 () array!76876)

(assert (=> start!99982 (= res!791437 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37621 _keys!1208))))))

(assert (=> start!99982 e!676543))

(declare-fun tp_is_empty!30055 () Bool)

(assert (=> start!99982 tp_is_empty!30055))

(declare-fun array_inv!28178 (array!76876) Bool)

(assert (=> start!99982 (array_inv!28178 _keys!1208)))

(assert (=> start!99982 true))

(assert (=> start!99982 tp!89289))

(declare-datatypes ((V!45201 0))(
  ( (V!45202 (val!15084 Int)) )
))
(declare-datatypes ((ValueCell!14318 0))(
  ( (ValueCellFull!14318 (v!17723 V!45201)) (EmptyCell!14318) )
))
(declare-datatypes ((array!76878 0))(
  ( (array!76879 (arr!37085 (Array (_ BitVec 32) ValueCell!14318)) (size!37622 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76878)

(declare-fun e!676542 () Bool)

(declare-fun array_inv!28179 (array!76878) Bool)

(assert (=> start!99982 (and (array_inv!28179 _values!996) e!676542)))

(declare-fun b!1189948 () Bool)

(declare-fun res!791438 () Bool)

(assert (=> b!1189948 (=> (not res!791438) (not e!676543))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1189948 (= res!791438 (validMask!0 mask!1564))))

(declare-fun b!1189949 () Bool)

(declare-fun res!791432 () Bool)

(assert (=> b!1189949 (=> (not res!791432) (not e!676543))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1189949 (= res!791432 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37621 _keys!1208))))))

(declare-fun b!1189950 () Bool)

(assert (=> b!1189950 (= e!676543 e!676546)))

(declare-fun res!791431 () Bool)

(assert (=> b!1189950 (=> (not res!791431) (not e!676546))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76876 (_ BitVec 32)) Bool)

(assert (=> b!1189950 (= res!791431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541232 mask!1564))))

(assert (=> b!1189950 (= lt!541232 (array!76877 (store (arr!37084 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37621 _keys!1208)))))

(declare-fun b!1189951 () Bool)

(declare-fun e!676545 () Bool)

(assert (=> b!1189951 (= e!676545 true)))

(declare-fun zeroValue!944 () V!45201)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!541236 () array!76878)

(declare-fun minValue!944 () V!45201)

(declare-datatypes ((tuple2!19512 0))(
  ( (tuple2!19513 (_1!9766 (_ BitVec 64)) (_2!9766 V!45201)) )
))
(declare-datatypes ((List!26272 0))(
  ( (Nil!26269) (Cons!26268 (h!27477 tuple2!19512) (t!38796 List!26272)) )
))
(declare-datatypes ((ListLongMap!17493 0))(
  ( (ListLongMap!17494 (toList!8762 List!26272)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5176 (array!76876 array!76878 (_ BitVec 32) (_ BitVec 32) V!45201 V!45201 (_ BitVec 32) Int) ListLongMap!17493)

(declare-fun -!1744 (ListLongMap!17493 (_ BitVec 64)) ListLongMap!17493)

(assert (=> b!1189951 (= (getCurrentListMapNoExtraKeys!5176 lt!541232 lt!541236 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1744 (getCurrentListMapNoExtraKeys!5176 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39416 0))(
  ( (Unit!39417) )
))
(declare-fun lt!541235 () Unit!39416)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!950 (array!76876 array!76878 (_ BitVec 32) (_ BitVec 32) V!45201 V!45201 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39416)

(assert (=> b!1189951 (= lt!541235 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!950 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1189952 () Bool)

(declare-fun e!676549 () Bool)

(declare-fun mapRes!46910 () Bool)

(assert (=> b!1189952 (= e!676542 (and e!676549 mapRes!46910))))

(declare-fun condMapEmpty!46910 () Bool)

(declare-fun mapDefault!46910 () ValueCell!14318)

