; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98922 () Bool)

(assert start!98922)

(declare-fun b_free!24491 () Bool)

(declare-fun b_next!24491 () Bool)

(assert (=> start!98922 (= b_free!24491 (not b_next!24491))))

(declare-fun tp!86185 () Bool)

(declare-fun b_and!39845 () Bool)

(assert (=> start!98922 (= tp!86185 b_and!39845)))

(declare-fun b!1157534 () Bool)

(declare-datatypes ((Unit!38024 0))(
  ( (Unit!38025) )
))
(declare-fun e!658321 () Unit!38024)

(declare-fun Unit!38026 () Unit!38024)

(assert (=> b!1157534 (= e!658321 Unit!38026)))

(declare-fun lt!519893 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1157534 (= lt!519893 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!115229 () Bool)

(assert (=> b!1157534 (= c!115229 (and (not lt!519893) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!519889 () Unit!38024)

(declare-fun e!658322 () Unit!38024)

(assert (=> b!1157534 (= lt!519889 e!658322)))

(declare-datatypes ((V!43821 0))(
  ( (V!43822 (val!14567 Int)) )
))
(declare-fun zeroValue!944 () V!43821)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13801 0))(
  ( (ValueCellFull!13801 (v!17205 V!43821)) (EmptyCell!13801) )
))
(declare-datatypes ((array!74832 0))(
  ( (array!74833 (arr!36063 (Array (_ BitVec 32) ValueCell!13801)) (size!36600 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74832)

(declare-fun minValue!944 () V!43821)

(declare-datatypes ((array!74834 0))(
  ( (array!74835 (arr!36064 (Array (_ BitVec 32) (_ BitVec 64))) (size!36601 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74834)

(declare-fun lt!519896 () Unit!38024)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!510 (array!74834 array!74832 (_ BitVec 32) (_ BitVec 32) V!43821 V!43821 (_ BitVec 64) (_ BitVec 32) Int) Unit!38024)

(assert (=> b!1157534 (= lt!519896 (lemmaListMapContainsThenArrayContainsFrom!510 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115226 () Bool)

(assert (=> b!1157534 (= c!115226 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!768772 () Bool)

(declare-fun e!658319 () Bool)

(assert (=> b!1157534 (= res!768772 e!658319)))

(declare-fun e!658312 () Bool)

(assert (=> b!1157534 (=> (not res!768772) (not e!658312))))

(assert (=> b!1157534 e!658312))

(declare-fun lt!519883 () Unit!38024)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74834 (_ BitVec 32) (_ BitVec 32)) Unit!38024)

(assert (=> b!1157534 (= lt!519883 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25384 0))(
  ( (Nil!25381) (Cons!25380 (h!26589 (_ BitVec 64)) (t!36874 List!25384)) )
))
(declare-fun arrayNoDuplicates!0 (array!74834 (_ BitVec 32) List!25384) Bool)

(assert (=> b!1157534 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25381)))

(declare-fun lt!519898 () Unit!38024)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74834 (_ BitVec 64) (_ BitVec 32) List!25384) Unit!38024)

(assert (=> b!1157534 (= lt!519898 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25381))))

(assert (=> b!1157534 false))

(declare-fun b!1157535 () Bool)

(declare-fun c!115227 () Bool)

(assert (=> b!1157535 (= c!115227 (and (not lt!519893) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!658315 () Unit!38024)

(assert (=> b!1157535 (= e!658322 e!658315)))

(declare-fun b!1157536 () Bool)

(declare-fun e!658314 () Unit!38024)

(declare-fun Unit!38027 () Unit!38024)

(assert (=> b!1157536 (= e!658314 Unit!38027)))

(declare-fun b!1157537 () Bool)

(declare-fun arrayContainsKey!0 (array!74834 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1157537 (= e!658312 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1157538 () Bool)

(assert (=> b!1157538 (= e!658315 e!658314)))

(declare-fun c!115228 () Bool)

(assert (=> b!1157538 (= c!115228 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!519893))))

(declare-fun b!1157539 () Bool)

(declare-fun e!658323 () Bool)

(declare-fun tp_is_empty!29021 () Bool)

(assert (=> b!1157539 (= e!658323 tp_is_empty!29021)))

(declare-fun b!1157540 () Bool)

(declare-fun res!768771 () Bool)

(declare-fun e!658311 () Bool)

(assert (=> b!1157540 (=> (not res!768771) (not e!658311))))

(assert (=> b!1157540 (= res!768771 (and (= (size!36600 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36601 _keys!1208) (size!36600 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!45356 () Bool)

(declare-fun mapRes!45356 () Bool)

(assert (=> mapIsEmpty!45356 mapRes!45356))

(declare-fun b!1157541 () Bool)

(declare-fun e!658307 () Bool)

(declare-fun e!658313 () Bool)

(assert (=> b!1157541 (= e!658307 (not e!658313))))

(declare-fun res!768763 () Bool)

(assert (=> b!1157541 (=> res!768763 e!658313)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1157541 (= res!768763 (bvsgt from!1455 i!673))))

(assert (=> b!1157541 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!519899 () Unit!38024)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74834 (_ BitVec 64) (_ BitVec 32)) Unit!38024)

(assert (=> b!1157541 (= lt!519899 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun e!658320 () Bool)

(declare-fun b!1157542 () Bool)

(declare-fun lt!519894 () array!74834)

(declare-datatypes ((tuple2!18604 0))(
  ( (tuple2!18605 (_1!9312 (_ BitVec 64)) (_2!9312 V!43821)) )
))
(declare-datatypes ((List!25385 0))(
  ( (Nil!25382) (Cons!25381 (h!26590 tuple2!18604) (t!36875 List!25385)) )
))
(declare-datatypes ((ListLongMap!16585 0))(
  ( (ListLongMap!16586 (toList!8308 List!25385)) )
))
(declare-fun lt!519897 () ListLongMap!16585)

(declare-fun lt!519895 () array!74832)

(declare-fun getCurrentListMapNoExtraKeys!4745 (array!74834 array!74832 (_ BitVec 32) (_ BitVec 32) V!43821 V!43821 (_ BitVec 32) Int) ListLongMap!16585)

(assert (=> b!1157542 (= e!658320 (= lt!519897 (getCurrentListMapNoExtraKeys!4745 lt!519894 lt!519895 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1157543 () Bool)

(assert (=> b!1157543 (= e!658311 e!658307)))

(declare-fun res!768770 () Bool)

(assert (=> b!1157543 (=> (not res!768770) (not e!658307))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74834 (_ BitVec 32)) Bool)

(assert (=> b!1157543 (= res!768770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!519894 mask!1564))))

(assert (=> b!1157543 (= lt!519894 (array!74835 (store (arr!36064 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36601 _keys!1208)))))

(declare-fun b!1157544 () Bool)

(declare-fun e!658310 () Bool)

(assert (=> b!1157544 (= e!658310 (and e!658323 mapRes!45356))))

(declare-fun condMapEmpty!45356 () Bool)

(declare-fun mapDefault!45356 () ValueCell!13801)

