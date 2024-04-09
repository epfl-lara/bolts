; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97902 () Bool)

(assert start!97902)

(declare-fun b_free!23567 () Bool)

(declare-fun b_next!23567 () Bool)

(assert (=> start!97902 (= b_free!23567 (not b_next!23567))))

(declare-fun tp!83406 () Bool)

(declare-fun b_and!37939 () Bool)

(assert (=> start!97902 (= tp!83406 b_and!37939)))

(declare-fun res!748529 () Bool)

(declare-fun e!638015 () Bool)

(assert (=> start!97902 (=> (not res!748529) (not e!638015))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73020 0))(
  ( (array!73021 (arr!35159 (Array (_ BitVec 32) (_ BitVec 64))) (size!35696 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73020)

(assert (=> start!97902 (= res!748529 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35696 _keys!1208))))))

(assert (=> start!97902 e!638015))

(declare-fun tp_is_empty!28097 () Bool)

(assert (=> start!97902 tp_is_empty!28097))

(declare-fun array_inv!26872 (array!73020) Bool)

(assert (=> start!97902 (array_inv!26872 _keys!1208)))

(assert (=> start!97902 true))

(assert (=> start!97902 tp!83406))

(declare-datatypes ((V!42589 0))(
  ( (V!42590 (val!14105 Int)) )
))
(declare-datatypes ((ValueCell!13339 0))(
  ( (ValueCellFull!13339 (v!16739 V!42589)) (EmptyCell!13339) )
))
(declare-datatypes ((array!73022 0))(
  ( (array!73023 (arr!35160 (Array (_ BitVec 32) ValueCell!13339)) (size!35697 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73022)

(declare-fun e!638018 () Bool)

(declare-fun array_inv!26873 (array!73022) Bool)

(assert (=> start!97902 (and (array_inv!26873 _values!996) e!638018)))

(declare-fun b!1120372 () Bool)

(declare-fun res!748534 () Bool)

(assert (=> b!1120372 (=> (not res!748534) (not e!638015))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1120372 (= res!748534 (validMask!0 mask!1564))))

(declare-fun b!1120373 () Bool)

(declare-fun res!748530 () Bool)

(assert (=> b!1120373 (=> (not res!748530) (not e!638015))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1120373 (= res!748530 (and (= (size!35697 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35696 _keys!1208) (size!35697 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1120374 () Bool)

(declare-fun e!638019 () Bool)

(assert (=> b!1120374 (= e!638019 tp_is_empty!28097)))

(declare-fun b!1120375 () Bool)

(declare-fun e!638017 () Bool)

(assert (=> b!1120375 (= e!638015 e!638017)))

(declare-fun res!748535 () Bool)

(assert (=> b!1120375 (=> (not res!748535) (not e!638017))))

(declare-fun lt!497994 () array!73020)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73020 (_ BitVec 32)) Bool)

(assert (=> b!1120375 (= res!748535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497994 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1120375 (= lt!497994 (array!73021 (store (arr!35159 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35696 _keys!1208)))))

(declare-fun b!1120376 () Bool)

(declare-fun res!748533 () Bool)

(assert (=> b!1120376 (=> (not res!748533) (not e!638015))))

(declare-datatypes ((List!24592 0))(
  ( (Nil!24589) (Cons!24588 (h!25797 (_ BitVec 64)) (t!35158 List!24592)) )
))
(declare-fun arrayNoDuplicates!0 (array!73020 (_ BitVec 32) List!24592) Bool)

(assert (=> b!1120376 (= res!748533 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24589))))

(declare-fun mapIsEmpty!43963 () Bool)

(declare-fun mapRes!43963 () Bool)

(assert (=> mapIsEmpty!43963 mapRes!43963))

(declare-fun b!1120377 () Bool)

(declare-fun res!748536 () Bool)

(assert (=> b!1120377 (=> (not res!748536) (not e!638015))))

(assert (=> b!1120377 (= res!748536 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35696 _keys!1208))))))

(declare-fun b!1120378 () Bool)

(declare-fun e!638016 () Bool)

(assert (=> b!1120378 (= e!638017 (not e!638016))))

(declare-fun res!748537 () Bool)

(assert (=> b!1120378 (=> res!748537 e!638016)))

(assert (=> b!1120378 (= res!748537 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73020 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1120378 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36685 0))(
  ( (Unit!36686) )
))
(declare-fun lt!497992 () Unit!36685)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73020 (_ BitVec 64) (_ BitVec 32)) Unit!36685)

(assert (=> b!1120378 (= lt!497992 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1120379 () Bool)

(declare-fun e!638021 () Bool)

(assert (=> b!1120379 (= e!638021 tp_is_empty!28097)))

(declare-fun b!1120380 () Bool)

(declare-fun res!748539 () Bool)

(assert (=> b!1120380 (=> (not res!748539) (not e!638017))))

(assert (=> b!1120380 (= res!748539 (arrayNoDuplicates!0 lt!497994 #b00000000000000000000000000000000 Nil!24589))))

(declare-fun b!1120381 () Bool)

(declare-fun res!748538 () Bool)

(assert (=> b!1120381 (=> (not res!748538) (not e!638015))))

(assert (=> b!1120381 (= res!748538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1120382 () Bool)

(declare-fun res!748531 () Bool)

(assert (=> b!1120382 (=> (not res!748531) (not e!638015))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1120382 (= res!748531 (validKeyInArray!0 k!934))))

(declare-fun b!1120383 () Bool)

(assert (=> b!1120383 (= e!638016 true)))

(declare-fun zeroValue!944 () V!42589)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42589)

(declare-datatypes ((tuple2!17752 0))(
  ( (tuple2!17753 (_1!8886 (_ BitVec 64)) (_2!8886 V!42589)) )
))
(declare-datatypes ((List!24593 0))(
  ( (Nil!24590) (Cons!24589 (h!25798 tuple2!17752) (t!35159 List!24593)) )
))
(declare-datatypes ((ListLongMap!15733 0))(
  ( (ListLongMap!15734 (toList!7882 List!24593)) )
))
(declare-fun lt!497991 () ListLongMap!15733)

(declare-fun getCurrentListMapNoExtraKeys!4343 (array!73020 array!73022 (_ BitVec 32) (_ BitVec 32) V!42589 V!42589 (_ BitVec 32) Int) ListLongMap!15733)

(declare-fun dynLambda!2445 (Int (_ BitVec 64)) V!42589)

(assert (=> b!1120383 (= lt!497991 (getCurrentListMapNoExtraKeys!4343 lt!497994 (array!73023 (store (arr!35160 _values!996) i!673 (ValueCellFull!13339 (dynLambda!2445 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35697 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497993 () ListLongMap!15733)

(assert (=> b!1120383 (= lt!497993 (getCurrentListMapNoExtraKeys!4343 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1120384 () Bool)

(declare-fun res!748532 () Bool)

(assert (=> b!1120384 (=> (not res!748532) (not e!638015))))

(assert (=> b!1120384 (= res!748532 (= (select (arr!35159 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!43963 () Bool)

(declare-fun tp!83405 () Bool)

(assert (=> mapNonEmpty!43963 (= mapRes!43963 (and tp!83405 e!638019))))

(declare-fun mapKey!43963 () (_ BitVec 32))

(declare-fun mapValue!43963 () ValueCell!13339)

(declare-fun mapRest!43963 () (Array (_ BitVec 32) ValueCell!13339))

(assert (=> mapNonEmpty!43963 (= (arr!35160 _values!996) (store mapRest!43963 mapKey!43963 mapValue!43963))))

(declare-fun b!1120385 () Bool)

(assert (=> b!1120385 (= e!638018 (and e!638021 mapRes!43963))))

(declare-fun condMapEmpty!43963 () Bool)

(declare-fun mapDefault!43963 () ValueCell!13339)

