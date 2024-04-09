; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99886 () Bool)

(assert start!99886)

(declare-fun b_free!25429 () Bool)

(declare-fun b_next!25429 () Bool)

(assert (=> start!99886 (= b_free!25429 (not b_next!25429))))

(declare-fun tp!89001 () Bool)

(declare-fun b_and!41739 () Bool)

(assert (=> start!99886 (= tp!89001 b_and!41739)))

(declare-fun b!1187521 () Bool)

(declare-fun e!675265 () Bool)

(declare-fun e!675262 () Bool)

(assert (=> b!1187521 (= e!675265 (not e!675262))))

(declare-fun res!789609 () Bool)

(assert (=> b!1187521 (=> res!789609 e!675262)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1187521 (= res!789609 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!76686 0))(
  ( (array!76687 (arr!36989 (Array (_ BitVec 32) (_ BitVec 64))) (size!37526 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76686)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76686 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1187521 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39311 0))(
  ( (Unit!39312) )
))
(declare-fun lt!539943 () Unit!39311)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76686 (_ BitVec 64) (_ BitVec 32)) Unit!39311)

(assert (=> b!1187521 (= lt!539943 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!789608 () Bool)

(declare-fun e!675257 () Bool)

(assert (=> start!99886 (=> (not res!789608) (not e!675257))))

(assert (=> start!99886 (= res!789608 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37526 _keys!1208))))))

(assert (=> start!99886 e!675257))

(declare-fun tp_is_empty!29959 () Bool)

(assert (=> start!99886 tp_is_empty!29959))

(declare-fun array_inv!28108 (array!76686) Bool)

(assert (=> start!99886 (array_inv!28108 _keys!1208)))

(assert (=> start!99886 true))

(assert (=> start!99886 tp!89001))

(declare-datatypes ((V!45073 0))(
  ( (V!45074 (val!15036 Int)) )
))
(declare-datatypes ((ValueCell!14270 0))(
  ( (ValueCellFull!14270 (v!17675 V!45073)) (EmptyCell!14270) )
))
(declare-datatypes ((array!76688 0))(
  ( (array!76689 (arr!36990 (Array (_ BitVec 32) ValueCell!14270)) (size!37527 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76688)

(declare-fun e!675263 () Bool)

(declare-fun array_inv!28109 (array!76688) Bool)

(assert (=> start!99886 (and (array_inv!28109 _values!996) e!675263)))

(declare-fun b!1187522 () Bool)

(declare-fun e!675259 () Unit!39311)

(declare-fun Unit!39313 () Unit!39311)

(assert (=> b!1187522 (= e!675259 Unit!39313)))

(declare-fun mapNonEmpty!46766 () Bool)

(declare-fun mapRes!46766 () Bool)

(declare-fun tp!89002 () Bool)

(declare-fun e!675255 () Bool)

(assert (=> mapNonEmpty!46766 (= mapRes!46766 (and tp!89002 e!675255))))

(declare-fun mapRest!46766 () (Array (_ BitVec 32) ValueCell!14270))

(declare-fun mapValue!46766 () ValueCell!14270)

(declare-fun mapKey!46766 () (_ BitVec 32))

(assert (=> mapNonEmpty!46766 (= (arr!36990 _values!996) (store mapRest!46766 mapKey!46766 mapValue!46766))))

(declare-fun b!1187523 () Bool)

(assert (=> b!1187523 (= e!675255 tp_is_empty!29959)))

(declare-fun b!1187524 () Bool)

(declare-fun e!675261 () Bool)

(assert (=> b!1187524 (= e!675262 e!675261)))

(declare-fun res!789603 () Bool)

(assert (=> b!1187524 (=> res!789603 e!675261)))

(assert (=> b!1187524 (= res!789603 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45073)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45073)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!19430 0))(
  ( (tuple2!19431 (_1!9725 (_ BitVec 64)) (_2!9725 V!45073)) )
))
(declare-datatypes ((List!26190 0))(
  ( (Nil!26187) (Cons!26186 (h!27395 tuple2!19430) (t!38618 List!26190)) )
))
(declare-datatypes ((ListLongMap!17411 0))(
  ( (ListLongMap!17412 (toList!8721 List!26190)) )
))
(declare-fun lt!539929 () ListLongMap!17411)

(declare-fun lt!539942 () array!76688)

(declare-fun lt!539932 () array!76686)

(declare-fun getCurrentListMapNoExtraKeys!5136 (array!76686 array!76688 (_ BitVec 32) (_ BitVec 32) V!45073 V!45073 (_ BitVec 32) Int) ListLongMap!17411)

(assert (=> b!1187524 (= lt!539929 (getCurrentListMapNoExtraKeys!5136 lt!539932 lt!539942 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!539934 () V!45073)

(assert (=> b!1187524 (= lt!539942 (array!76689 (store (arr!36990 _values!996) i!673 (ValueCellFull!14270 lt!539934)) (size!37527 _values!996)))))

(declare-fun dynLambda!3093 (Int (_ BitVec 64)) V!45073)

(assert (=> b!1187524 (= lt!539934 (dynLambda!3093 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!539938 () ListLongMap!17411)

(assert (=> b!1187524 (= lt!539938 (getCurrentListMapNoExtraKeys!5136 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun e!675256 () Bool)

(declare-fun b!1187525 () Bool)

(assert (=> b!1187525 (= e!675256 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1187526 () Bool)

(declare-fun res!789599 () Bool)

(assert (=> b!1187526 (=> (not res!789599) (not e!675257))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1187526 (= res!789599 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!46766 () Bool)

(assert (=> mapIsEmpty!46766 mapRes!46766))

(declare-fun b!1187527 () Bool)

(declare-fun res!789604 () Bool)

(assert (=> b!1187527 (=> (not res!789604) (not e!675257))))

(assert (=> b!1187527 (= res!789604 (= (select (arr!36989 _keys!1208) i!673) k!934))))

(declare-fun b!1187528 () Bool)

(declare-fun e!675264 () Bool)

(assert (=> b!1187528 (= e!675264 e!675256)))

(declare-fun res!789610 () Bool)

(assert (=> b!1187528 (=> res!789610 e!675256)))

(assert (=> b!1187528 (= res!789610 (not (= (select (arr!36989 _keys!1208) from!1455) k!934)))))

(declare-fun b!1187529 () Bool)

(declare-fun res!789612 () Bool)

(assert (=> b!1187529 (=> (not res!789612) (not e!675257))))

(assert (=> b!1187529 (= res!789612 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37526 _keys!1208))))))

(declare-fun b!1187530 () Bool)

(declare-fun res!789611 () Bool)

(assert (=> b!1187530 (=> (not res!789611) (not e!675257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1187530 (= res!789611 (validMask!0 mask!1564))))

(declare-fun b!1187531 () Bool)

(declare-fun Unit!39314 () Unit!39311)

(assert (=> b!1187531 (= e!675259 Unit!39314)))

(declare-fun lt!539935 () Unit!39311)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76686 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39311)

(assert (=> b!1187531 (= lt!539935 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1187531 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!539927 () Unit!39311)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76686 (_ BitVec 32) (_ BitVec 32)) Unit!39311)

(assert (=> b!1187531 (= lt!539927 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26191 0))(
  ( (Nil!26188) (Cons!26187 (h!27396 (_ BitVec 64)) (t!38619 List!26191)) )
))
(declare-fun arrayNoDuplicates!0 (array!76686 (_ BitVec 32) List!26191) Bool)

(assert (=> b!1187531 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26188)))

(declare-fun lt!539930 () Unit!39311)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76686 (_ BitVec 64) (_ BitVec 32) List!26191) Unit!39311)

(assert (=> b!1187531 (= lt!539930 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26188))))

(assert (=> b!1187531 false))

(declare-fun b!1187532 () Bool)

(declare-fun e!675258 () Bool)

(assert (=> b!1187532 (= e!675261 e!675258)))

(declare-fun res!789602 () Bool)

(assert (=> b!1187532 (=> res!789602 e!675258)))

(assert (=> b!1187532 (= res!789602 (not (validKeyInArray!0 (select (arr!36989 _keys!1208) from!1455))))))

(declare-fun lt!539928 () ListLongMap!17411)

(declare-fun lt!539936 () ListLongMap!17411)

(assert (=> b!1187532 (= lt!539928 lt!539936)))

(declare-fun lt!539926 () ListLongMap!17411)

(declare-fun -!1706 (ListLongMap!17411 (_ BitVec 64)) ListLongMap!17411)

(assert (=> b!1187532 (= lt!539936 (-!1706 lt!539926 k!934))))

(assert (=> b!1187532 (= lt!539928 (getCurrentListMapNoExtraKeys!5136 lt!539932 lt!539942 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1187532 (= lt!539926 (getCurrentListMapNoExtraKeys!5136 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!539941 () Unit!39311)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!915 (array!76686 array!76688 (_ BitVec 32) (_ BitVec 32) V!45073 V!45073 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39311)

(assert (=> b!1187532 (= lt!539941 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!915 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1187533 () Bool)

(declare-fun e!675254 () Bool)

(assert (=> b!1187533 (= e!675254 tp_is_empty!29959)))

(declare-fun b!1187534 () Bool)

(assert (=> b!1187534 (= e!675258 true)))

(declare-fun lt!539933 () ListLongMap!17411)

(declare-fun lt!539937 () ListLongMap!17411)

(assert (=> b!1187534 (= (-!1706 lt!539933 k!934) lt!539937)))

(declare-fun lt!539939 () V!45073)

(declare-fun lt!539940 () Unit!39311)

(declare-fun addRemoveCommutativeForDiffKeys!213 (ListLongMap!17411 (_ BitVec 64) V!45073 (_ BitVec 64)) Unit!39311)

(assert (=> b!1187534 (= lt!539940 (addRemoveCommutativeForDiffKeys!213 lt!539926 (select (arr!36989 _keys!1208) from!1455) lt!539939 k!934))))

(assert (=> b!1187534 (and (= lt!539938 lt!539933) (= lt!539936 lt!539928))))

(declare-fun lt!539925 () tuple2!19430)

(declare-fun +!3923 (ListLongMap!17411 tuple2!19430) ListLongMap!17411)

(assert (=> b!1187534 (= lt!539933 (+!3923 lt!539926 lt!539925))))

(assert (=> b!1187534 (not (= (select (arr!36989 _keys!1208) from!1455) k!934))))

(declare-fun lt!539931 () Unit!39311)

(assert (=> b!1187534 (= lt!539931 e!675259)))

(declare-fun c!117215 () Bool)

(assert (=> b!1187534 (= c!117215 (= (select (arr!36989 _keys!1208) from!1455) k!934))))

(assert (=> b!1187534 e!675264))

(declare-fun res!789600 () Bool)

(assert (=> b!1187534 (=> (not res!789600) (not e!675264))))

(assert (=> b!1187534 (= res!789600 (= lt!539929 lt!539937))))

(assert (=> b!1187534 (= lt!539937 (+!3923 lt!539936 lt!539925))))

(assert (=> b!1187534 (= lt!539925 (tuple2!19431 (select (arr!36989 _keys!1208) from!1455) lt!539939))))

(declare-fun get!18989 (ValueCell!14270 V!45073) V!45073)

(assert (=> b!1187534 (= lt!539939 (get!18989 (select (arr!36990 _values!996) from!1455) lt!539934))))

(declare-fun b!1187535 () Bool)

(assert (=> b!1187535 (= e!675257 e!675265)))

(declare-fun res!789601 () Bool)

(assert (=> b!1187535 (=> (not res!789601) (not e!675265))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76686 (_ BitVec 32)) Bool)

(assert (=> b!1187535 (= res!789601 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!539932 mask!1564))))

(assert (=> b!1187535 (= lt!539932 (array!76687 (store (arr!36989 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37526 _keys!1208)))))

(declare-fun b!1187536 () Bool)

(declare-fun res!789605 () Bool)

(assert (=> b!1187536 (=> (not res!789605) (not e!675257))))

(assert (=> b!1187536 (= res!789605 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26188))))

(declare-fun b!1187537 () Bool)

(assert (=> b!1187537 (= e!675263 (and e!675254 mapRes!46766))))

(declare-fun condMapEmpty!46766 () Bool)

(declare-fun mapDefault!46766 () ValueCell!14270)

