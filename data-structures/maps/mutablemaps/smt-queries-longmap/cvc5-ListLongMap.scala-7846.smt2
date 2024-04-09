; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97856 () Bool)

(assert start!97856)

(declare-fun b_free!23521 () Bool)

(declare-fun b_next!23521 () Bool)

(assert (=> start!97856 (= b_free!23521 (not b_next!23521))))

(declare-fun tp!83268 () Bool)

(declare-fun b_and!37847 () Bool)

(assert (=> start!97856 (= tp!83268 b_and!37847)))

(declare-fun b!1119360 () Bool)

(declare-fun res!747779 () Bool)

(declare-fun e!637533 () Bool)

(assert (=> b!1119360 (=> (not res!747779) (not e!637533))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72930 0))(
  ( (array!72931 (arr!35114 (Array (_ BitVec 32) (_ BitVec 64))) (size!35651 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72930)

(assert (=> b!1119360 (= res!747779 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35651 _keys!1208))))))

(declare-fun b!1119361 () Bool)

(declare-fun res!747772 () Bool)

(assert (=> b!1119361 (=> (not res!747772) (not e!637533))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72930 (_ BitVec 32)) Bool)

(assert (=> b!1119361 (= res!747772 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1119362 () Bool)

(declare-fun res!747777 () Bool)

(assert (=> b!1119362 (=> (not res!747777) (not e!637533))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1119362 (= res!747777 (= (select (arr!35114 _keys!1208) i!673) k!934))))

(declare-fun b!1119363 () Bool)

(declare-fun e!637537 () Bool)

(declare-fun tp_is_empty!28051 () Bool)

(assert (=> b!1119363 (= e!637537 tp_is_empty!28051)))

(declare-fun mapIsEmpty!43894 () Bool)

(declare-fun mapRes!43894 () Bool)

(assert (=> mapIsEmpty!43894 mapRes!43894))

(declare-fun b!1119364 () Bool)

(declare-fun res!747778 () Bool)

(assert (=> b!1119364 (=> (not res!747778) (not e!637533))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1119364 (= res!747778 (validKeyInArray!0 k!934))))

(declare-fun res!747780 () Bool)

(assert (=> start!97856 (=> (not res!747780) (not e!637533))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97856 (= res!747780 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35651 _keys!1208))))))

(assert (=> start!97856 e!637533))

(assert (=> start!97856 tp_is_empty!28051))

(declare-fun array_inv!26840 (array!72930) Bool)

(assert (=> start!97856 (array_inv!26840 _keys!1208)))

(assert (=> start!97856 true))

(assert (=> start!97856 tp!83268))

(declare-datatypes ((V!42529 0))(
  ( (V!42530 (val!14082 Int)) )
))
(declare-datatypes ((ValueCell!13316 0))(
  ( (ValueCellFull!13316 (v!16716 V!42529)) (EmptyCell!13316) )
))
(declare-datatypes ((array!72932 0))(
  ( (array!72933 (arr!35115 (Array (_ BitVec 32) ValueCell!13316)) (size!35652 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72932)

(declare-fun e!637538 () Bool)

(declare-fun array_inv!26841 (array!72932) Bool)

(assert (=> start!97856 (and (array_inv!26841 _values!996) e!637538)))

(declare-fun b!1119365 () Bool)

(declare-fun e!637534 () Bool)

(assert (=> b!1119365 (= e!637533 e!637534)))

(declare-fun res!747771 () Bool)

(assert (=> b!1119365 (=> (not res!747771) (not e!637534))))

(declare-fun lt!497716 () array!72930)

(assert (=> b!1119365 (= res!747771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497716 mask!1564))))

(assert (=> b!1119365 (= lt!497716 (array!72931 (store (arr!35114 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35651 _keys!1208)))))

(declare-fun b!1119366 () Bool)

(declare-fun e!637535 () Bool)

(assert (=> b!1119366 (= e!637534 (not e!637535))))

(declare-fun res!747770 () Bool)

(assert (=> b!1119366 (=> res!747770 e!637535)))

(assert (=> b!1119366 (= res!747770 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72930 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1119366 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36647 0))(
  ( (Unit!36648) )
))
(declare-fun lt!497718 () Unit!36647)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72930 (_ BitVec 64) (_ BitVec 32)) Unit!36647)

(assert (=> b!1119366 (= lt!497718 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1119367 () Bool)

(declare-fun e!637532 () Bool)

(assert (=> b!1119367 (= e!637532 tp_is_empty!28051)))

(declare-fun mapNonEmpty!43894 () Bool)

(declare-fun tp!83267 () Bool)

(assert (=> mapNonEmpty!43894 (= mapRes!43894 (and tp!83267 e!637537))))

(declare-fun mapRest!43894 () (Array (_ BitVec 32) ValueCell!13316))

(declare-fun mapKey!43894 () (_ BitVec 32))

(declare-fun mapValue!43894 () ValueCell!13316)

(assert (=> mapNonEmpty!43894 (= (arr!35115 _values!996) (store mapRest!43894 mapKey!43894 mapValue!43894))))

(declare-fun b!1119368 () Bool)

(assert (=> b!1119368 (= e!637538 (and e!637532 mapRes!43894))))

(declare-fun condMapEmpty!43894 () Bool)

(declare-fun mapDefault!43894 () ValueCell!13316)

