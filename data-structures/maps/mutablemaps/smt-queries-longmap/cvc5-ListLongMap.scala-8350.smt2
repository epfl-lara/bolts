; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101686 () Bool)

(assert start!101686)

(declare-fun b_free!26371 () Bool)

(declare-fun b_next!26371 () Bool)

(assert (=> start!101686 (= b_free!26371 (not b_next!26371))))

(declare-fun tp!92156 () Bool)

(declare-fun b_and!43995 () Bool)

(assert (=> start!101686 (= tp!92156 b_and!43995)))

(declare-fun b!1222652 () Bool)

(declare-fun e!694410 () Bool)

(declare-fun e!694411 () Bool)

(assert (=> b!1222652 (= e!694410 e!694411)))

(declare-fun res!812455 () Bool)

(assert (=> b!1222652 (=> (not res!812455) (not e!694411))))

(declare-datatypes ((array!78908 0))(
  ( (array!78909 (arr!38078 (Array (_ BitVec 32) (_ BitVec 64))) (size!38615 (_ BitVec 32))) )
))
(declare-fun lt!556308 () array!78908)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78908 (_ BitVec 32)) Bool)

(assert (=> b!1222652 (= res!812455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!556308 mask!1564))))

(declare-fun _keys!1208 () array!78908)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1222652 (= lt!556308 (array!78909 (store (arr!38078 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38615 _keys!1208)))))

(declare-fun b!1222653 () Bool)

(declare-fun res!812452 () Bool)

(assert (=> b!1222653 (=> (not res!812452) (not e!694410))))

(assert (=> b!1222653 (= res!812452 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38615 _keys!1208))))))

(declare-fun b!1222655 () Bool)

(declare-fun res!812460 () Bool)

(assert (=> b!1222655 (=> (not res!812460) (not e!694410))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!46561 0))(
  ( (V!46562 (val!15594 Int)) )
))
(declare-datatypes ((ValueCell!14828 0))(
  ( (ValueCellFull!14828 (v!18256 V!46561)) (EmptyCell!14828) )
))
(declare-datatypes ((array!78910 0))(
  ( (array!78911 (arr!38079 (Array (_ BitVec 32) ValueCell!14828)) (size!38616 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78910)

(assert (=> b!1222655 (= res!812460 (and (= (size!38616 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38615 _keys!1208) (size!38616 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1222656 () Bool)

(declare-fun e!694412 () Bool)

(declare-fun e!694408 () Bool)

(assert (=> b!1222656 (= e!694412 e!694408)))

(declare-fun res!812454 () Bool)

(assert (=> b!1222656 (=> res!812454 e!694408)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1222656 (= res!812454 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46561)

(declare-datatypes ((tuple2!20228 0))(
  ( (tuple2!20229 (_1!10124 (_ BitVec 64)) (_2!10124 V!46561)) )
))
(declare-datatypes ((List!27041 0))(
  ( (Nil!27038) (Cons!27037 (h!28246 tuple2!20228) (t!40399 List!27041)) )
))
(declare-datatypes ((ListLongMap!18209 0))(
  ( (ListLongMap!18210 (toList!9120 List!27041)) )
))
(declare-fun lt!556316 () ListLongMap!18209)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!556311 () array!78910)

(declare-fun minValue!944 () V!46561)

(declare-fun getCurrentListMapNoExtraKeys!5518 (array!78908 array!78910 (_ BitVec 32) (_ BitVec 32) V!46561 V!46561 (_ BitVec 32) Int) ListLongMap!18209)

(assert (=> b!1222656 (= lt!556316 (getCurrentListMapNoExtraKeys!5518 lt!556308 lt!556311 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!556306 () V!46561)

(assert (=> b!1222656 (= lt!556311 (array!78911 (store (arr!38079 _values!996) i!673 (ValueCellFull!14828 lt!556306)) (size!38616 _values!996)))))

(declare-fun dynLambda!3415 (Int (_ BitVec 64)) V!46561)

(assert (=> b!1222656 (= lt!556306 (dynLambda!3415 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!556312 () ListLongMap!18209)

(assert (=> b!1222656 (= lt!556312 (getCurrentListMapNoExtraKeys!5518 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1222657 () Bool)

(declare-datatypes ((Unit!40419 0))(
  ( (Unit!40420) )
))
(declare-fun e!694415 () Unit!40419)

(declare-fun Unit!40421 () Unit!40419)

(assert (=> b!1222657 (= e!694415 Unit!40421)))

(declare-fun mapNonEmpty!48508 () Bool)

(declare-fun mapRes!48508 () Bool)

(declare-fun tp!92157 () Bool)

(declare-fun e!694404 () Bool)

(assert (=> mapNonEmpty!48508 (= mapRes!48508 (and tp!92157 e!694404))))

(declare-fun mapKey!48508 () (_ BitVec 32))

(declare-fun mapRest!48508 () (Array (_ BitVec 32) ValueCell!14828))

(declare-fun mapValue!48508 () ValueCell!14828)

(assert (=> mapNonEmpty!48508 (= (arr!38079 _values!996) (store mapRest!48508 mapKey!48508 mapValue!48508))))

(declare-fun b!1222658 () Bool)

(declare-fun res!812450 () Bool)

(assert (=> b!1222658 (=> (not res!812450) (not e!694410))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1222658 (= res!812450 (validMask!0 mask!1564))))

(declare-fun b!1222659 () Bool)

(declare-fun res!812457 () Bool)

(assert (=> b!1222659 (=> (not res!812457) (not e!694410))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1222659 (= res!812457 (= (select (arr!38078 _keys!1208) i!673) k!934))))

(declare-fun b!1222660 () Bool)

(declare-fun tp_is_empty!31075 () Bool)

(assert (=> b!1222660 (= e!694404 tp_is_empty!31075)))

(declare-fun res!812453 () Bool)

(assert (=> start!101686 (=> (not res!812453) (not e!694410))))

(assert (=> start!101686 (= res!812453 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38615 _keys!1208))))))

(assert (=> start!101686 e!694410))

(assert (=> start!101686 tp_is_empty!31075))

(declare-fun array_inv!28888 (array!78908) Bool)

(assert (=> start!101686 (array_inv!28888 _keys!1208)))

(assert (=> start!101686 true))

(assert (=> start!101686 tp!92156))

(declare-fun e!694407 () Bool)

(declare-fun array_inv!28889 (array!78910) Bool)

(assert (=> start!101686 (and (array_inv!28889 _values!996) e!694407)))

(declare-fun b!1222654 () Bool)

(declare-fun Unit!40422 () Unit!40419)

(assert (=> b!1222654 (= e!694415 Unit!40422)))

(declare-fun lt!556307 () Unit!40419)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78908 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40419)

(assert (=> b!1222654 (= lt!556307 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!78908 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1222654 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!556314 () Unit!40419)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78908 (_ BitVec 32) (_ BitVec 32)) Unit!40419)

(assert (=> b!1222654 (= lt!556314 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!27042 0))(
  ( (Nil!27039) (Cons!27038 (h!28247 (_ BitVec 64)) (t!40400 List!27042)) )
))
(declare-fun arrayNoDuplicates!0 (array!78908 (_ BitVec 32) List!27042) Bool)

(assert (=> b!1222654 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27039)))

(declare-fun lt!556313 () Unit!40419)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78908 (_ BitVec 64) (_ BitVec 32) List!27042) Unit!40419)

(assert (=> b!1222654 (= lt!556313 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!27039))))

(assert (=> b!1222654 false))

(declare-fun b!1222661 () Bool)

(declare-fun res!812451 () Bool)

(assert (=> b!1222661 (=> (not res!812451) (not e!694410))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1222661 (= res!812451 (validKeyInArray!0 k!934))))

(declare-fun b!1222662 () Bool)

(declare-fun res!812462 () Bool)

(assert (=> b!1222662 (=> (not res!812462) (not e!694410))))

(assert (=> b!1222662 (= res!812462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1222663 () Bool)

(assert (=> b!1222663 (= e!694411 (not e!694412))))

(declare-fun res!812463 () Bool)

(assert (=> b!1222663 (=> res!812463 e!694412)))

(assert (=> b!1222663 (= res!812463 (bvsgt from!1455 i!673))))

(assert (=> b!1222663 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!556305 () Unit!40419)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78908 (_ BitVec 64) (_ BitVec 32)) Unit!40419)

(assert (=> b!1222663 (= lt!556305 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1222664 () Bool)

(declare-fun e!694405 () Bool)

(assert (=> b!1222664 (= e!694405 (bvslt from!1455 (size!38615 _keys!1208)))))

(assert (=> b!1222664 (not (= (select (arr!38078 _keys!1208) from!1455) k!934))))

(declare-fun lt!556317 () Unit!40419)

(assert (=> b!1222664 (= lt!556317 e!694415)))

(declare-fun c!120282 () Bool)

(assert (=> b!1222664 (= c!120282 (= (select (arr!38078 _keys!1208) from!1455) k!934))))

(declare-fun e!694413 () Bool)

(assert (=> b!1222664 e!694413))

(declare-fun res!812456 () Bool)

(assert (=> b!1222664 (=> (not res!812456) (not e!694413))))

(declare-fun lt!556310 () ListLongMap!18209)

(declare-fun +!4085 (ListLongMap!18209 tuple2!20228) ListLongMap!18209)

(declare-fun get!19481 (ValueCell!14828 V!46561) V!46561)

(assert (=> b!1222664 (= res!812456 (= lt!556316 (+!4085 lt!556310 (tuple2!20229 (select (arr!38078 _keys!1208) from!1455) (get!19481 (select (arr!38079 _values!996) from!1455) lt!556306)))))))

(declare-fun b!1222665 () Bool)

(declare-fun e!694409 () Bool)

(assert (=> b!1222665 (= e!694409 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!48508 () Bool)

(assert (=> mapIsEmpty!48508 mapRes!48508))

(declare-fun b!1222666 () Bool)

(declare-fun res!812464 () Bool)

(assert (=> b!1222666 (=> (not res!812464) (not e!694411))))

(assert (=> b!1222666 (= res!812464 (arrayNoDuplicates!0 lt!556308 #b00000000000000000000000000000000 Nil!27039))))

(declare-fun b!1222667 () Bool)

(declare-fun res!812459 () Bool)

(assert (=> b!1222667 (=> (not res!812459) (not e!694410))))

(assert (=> b!1222667 (= res!812459 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27039))))

(declare-fun b!1222668 () Bool)

(assert (=> b!1222668 (= e!694408 e!694405)))

(declare-fun res!812461 () Bool)

(assert (=> b!1222668 (=> res!812461 e!694405)))

(assert (=> b!1222668 (= res!812461 (not (validKeyInArray!0 (select (arr!38078 _keys!1208) from!1455))))))

(declare-fun lt!556315 () ListLongMap!18209)

(assert (=> b!1222668 (= lt!556315 lt!556310)))

(declare-fun lt!556309 () ListLongMap!18209)

(declare-fun -!1962 (ListLongMap!18209 (_ BitVec 64)) ListLongMap!18209)

(assert (=> b!1222668 (= lt!556310 (-!1962 lt!556309 k!934))))

(assert (=> b!1222668 (= lt!556315 (getCurrentListMapNoExtraKeys!5518 lt!556308 lt!556311 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1222668 (= lt!556309 (getCurrentListMapNoExtraKeys!5518 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!556304 () Unit!40419)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1164 (array!78908 array!78910 (_ BitVec 32) (_ BitVec 32) V!46561 V!46561 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40419)

(assert (=> b!1222668 (= lt!556304 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1164 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1222669 () Bool)

(assert (=> b!1222669 (= e!694413 e!694409)))

(declare-fun res!812458 () Bool)

(assert (=> b!1222669 (=> res!812458 e!694409)))

(assert (=> b!1222669 (= res!812458 (not (= (select (arr!38078 _keys!1208) from!1455) k!934)))))

(declare-fun b!1222670 () Bool)

(declare-fun e!694406 () Bool)

(assert (=> b!1222670 (= e!694406 tp_is_empty!31075)))

(declare-fun b!1222671 () Bool)

(assert (=> b!1222671 (= e!694407 (and e!694406 mapRes!48508))))

(declare-fun condMapEmpty!48508 () Bool)

(declare-fun mapDefault!48508 () ValueCell!14828)

