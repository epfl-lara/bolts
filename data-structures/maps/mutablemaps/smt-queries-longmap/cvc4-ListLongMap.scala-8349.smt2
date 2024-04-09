; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101684 () Bool)

(assert start!101684)

(declare-fun b_free!26369 () Bool)

(declare-fun b_next!26369 () Bool)

(assert (=> start!101684 (= b_free!26369 (not b_next!26369))))

(declare-fun tp!92150 () Bool)

(declare-fun b_and!43991 () Bool)

(assert (=> start!101684 (= tp!92150 b_and!43991)))

(declare-datatypes ((array!78904 0))(
  ( (array!78905 (arr!38076 (Array (_ BitVec 32) (_ BitVec 64))) (size!38613 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78904)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1222590 () Bool)

(declare-fun e!694369 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1222590 (= e!694369 (not (= (select (arr!38076 _keys!1208) from!1455) k!934)))))

(declare-datatypes ((Unit!40416 0))(
  ( (Unit!40417) )
))
(declare-fun lt!556264 () Unit!40416)

(declare-fun e!694375 () Unit!40416)

(assert (=> b!1222590 (= lt!556264 e!694375)))

(declare-fun c!120279 () Bool)

(assert (=> b!1222590 (= c!120279 (= (select (arr!38076 _keys!1208) from!1455) k!934))))

(declare-fun e!694377 () Bool)

(assert (=> b!1222590 e!694377))

(declare-fun res!812408 () Bool)

(assert (=> b!1222590 (=> (not res!812408) (not e!694377))))

(declare-datatypes ((V!46557 0))(
  ( (V!46558 (val!15593 Int)) )
))
(declare-fun lt!556267 () V!46557)

(declare-datatypes ((tuple2!20226 0))(
  ( (tuple2!20227 (_1!10123 (_ BitVec 64)) (_2!10123 V!46557)) )
))
(declare-datatypes ((List!27039 0))(
  ( (Nil!27036) (Cons!27035 (h!28244 tuple2!20226) (t!40395 List!27039)) )
))
(declare-datatypes ((ListLongMap!18207 0))(
  ( (ListLongMap!18208 (toList!9119 List!27039)) )
))
(declare-fun lt!556265 () ListLongMap!18207)

(declare-datatypes ((ValueCell!14827 0))(
  ( (ValueCellFull!14827 (v!18255 V!46557)) (EmptyCell!14827) )
))
(declare-datatypes ((array!78906 0))(
  ( (array!78907 (arr!38077 (Array (_ BitVec 32) ValueCell!14827)) (size!38614 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78906)

(declare-fun lt!556272 () ListLongMap!18207)

(declare-fun +!4084 (ListLongMap!18207 tuple2!20226) ListLongMap!18207)

(declare-fun get!19478 (ValueCell!14827 V!46557) V!46557)

(assert (=> b!1222590 (= res!812408 (= lt!556272 (+!4084 lt!556265 (tuple2!20227 (select (arr!38076 _keys!1208) from!1455) (get!19478 (select (arr!38077 _values!996) from!1455) lt!556267)))))))

(declare-fun b!1222591 () Bool)

(declare-fun e!694368 () Bool)

(declare-fun e!694370 () Bool)

(assert (=> b!1222591 (= e!694368 e!694370)))

(declare-fun res!812415 () Bool)

(assert (=> b!1222591 (=> res!812415 e!694370)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1222591 (= res!812415 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46557)

(declare-fun lt!556263 () array!78906)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!556269 () array!78904)

(declare-fun minValue!944 () V!46557)

(declare-fun getCurrentListMapNoExtraKeys!5517 (array!78904 array!78906 (_ BitVec 32) (_ BitVec 32) V!46557 V!46557 (_ BitVec 32) Int) ListLongMap!18207)

(assert (=> b!1222591 (= lt!556272 (getCurrentListMapNoExtraKeys!5517 lt!556269 lt!556263 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1222591 (= lt!556263 (array!78907 (store (arr!38077 _values!996) i!673 (ValueCellFull!14827 lt!556267)) (size!38614 _values!996)))))

(declare-fun dynLambda!3414 (Int (_ BitVec 64)) V!46557)

(assert (=> b!1222591 (= lt!556267 (dynLambda!3414 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!556270 () ListLongMap!18207)

(assert (=> b!1222591 (= lt!556270 (getCurrentListMapNoExtraKeys!5517 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1222592 () Bool)

(declare-fun res!812407 () Bool)

(declare-fun e!694371 () Bool)

(assert (=> b!1222592 (=> (not res!812407) (not e!694371))))

(assert (=> b!1222592 (= res!812407 (= (select (arr!38076 _keys!1208) i!673) k!934))))

(declare-fun b!1222593 () Bool)

(assert (=> b!1222593 (= e!694370 e!694369)))

(declare-fun res!812414 () Bool)

(assert (=> b!1222593 (=> res!812414 e!694369)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1222593 (= res!812414 (not (validKeyInArray!0 (select (arr!38076 _keys!1208) from!1455))))))

(declare-fun lt!556275 () ListLongMap!18207)

(assert (=> b!1222593 (= lt!556275 lt!556265)))

(declare-fun lt!556274 () ListLongMap!18207)

(declare-fun -!1961 (ListLongMap!18207 (_ BitVec 64)) ListLongMap!18207)

(assert (=> b!1222593 (= lt!556265 (-!1961 lt!556274 k!934))))

(assert (=> b!1222593 (= lt!556275 (getCurrentListMapNoExtraKeys!5517 lt!556269 lt!556263 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1222593 (= lt!556274 (getCurrentListMapNoExtraKeys!5517 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!556271 () Unit!40416)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1163 (array!78904 array!78906 (_ BitVec 32) (_ BitVec 32) V!46557 V!46557 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40416)

(assert (=> b!1222593 (= lt!556271 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1163 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1222594 () Bool)

(declare-fun res!812405 () Bool)

(assert (=> b!1222594 (=> (not res!812405) (not e!694371))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1222594 (= res!812405 (validMask!0 mask!1564))))

(declare-fun b!1222595 () Bool)

(declare-fun res!812406 () Bool)

(assert (=> b!1222595 (=> (not res!812406) (not e!694371))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78904 (_ BitVec 32)) Bool)

(assert (=> b!1222595 (= res!812406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun e!694379 () Bool)

(declare-fun b!1222596 () Bool)

(declare-fun arrayContainsKey!0 (array!78904 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1222596 (= e!694379 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun res!812413 () Bool)

(assert (=> start!101684 (=> (not res!812413) (not e!694371))))

(assert (=> start!101684 (= res!812413 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38613 _keys!1208))))))

(assert (=> start!101684 e!694371))

(declare-fun tp_is_empty!31073 () Bool)

(assert (=> start!101684 tp_is_empty!31073))

(declare-fun array_inv!28886 (array!78904) Bool)

(assert (=> start!101684 (array_inv!28886 _keys!1208)))

(assert (=> start!101684 true))

(assert (=> start!101684 tp!92150))

(declare-fun e!694373 () Bool)

(declare-fun array_inv!28887 (array!78906) Bool)

(assert (=> start!101684 (and (array_inv!28887 _values!996) e!694373)))

(declare-fun b!1222597 () Bool)

(declare-fun res!812409 () Bool)

(assert (=> b!1222597 (=> (not res!812409) (not e!694371))))

(assert (=> b!1222597 (= res!812409 (validKeyInArray!0 k!934))))

(declare-fun b!1222598 () Bool)

(declare-fun e!694372 () Bool)

(assert (=> b!1222598 (= e!694372 (not e!694368))))

(declare-fun res!812410 () Bool)

(assert (=> b!1222598 (=> res!812410 e!694368)))

(assert (=> b!1222598 (= res!812410 (bvsgt from!1455 i!673))))

(assert (=> b!1222598 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!556266 () Unit!40416)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78904 (_ BitVec 64) (_ BitVec 32)) Unit!40416)

(assert (=> b!1222598 (= lt!556266 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1222599 () Bool)

(assert (=> b!1222599 (= e!694371 e!694372)))

(declare-fun res!812417 () Bool)

(assert (=> b!1222599 (=> (not res!812417) (not e!694372))))

(assert (=> b!1222599 (= res!812417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!556269 mask!1564))))

(assert (=> b!1222599 (= lt!556269 (array!78905 (store (arr!38076 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38613 _keys!1208)))))

(declare-fun mapNonEmpty!48505 () Bool)

(declare-fun mapRes!48505 () Bool)

(declare-fun tp!92151 () Bool)

(declare-fun e!694374 () Bool)

(assert (=> mapNonEmpty!48505 (= mapRes!48505 (and tp!92151 e!694374))))

(declare-fun mapRest!48505 () (Array (_ BitVec 32) ValueCell!14827))

(declare-fun mapValue!48505 () ValueCell!14827)

(declare-fun mapKey!48505 () (_ BitVec 32))

(assert (=> mapNonEmpty!48505 (= (arr!38077 _values!996) (store mapRest!48505 mapKey!48505 mapValue!48505))))

(declare-fun b!1222600 () Bool)

(declare-fun Unit!40418 () Unit!40416)

(assert (=> b!1222600 (= e!694375 Unit!40418)))

(declare-fun b!1222601 () Bool)

(declare-fun res!812418 () Bool)

(assert (=> b!1222601 (=> (not res!812418) (not e!694371))))

(assert (=> b!1222601 (= res!812418 (and (= (size!38614 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38613 _keys!1208) (size!38614 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1222602 () Bool)

(assert (=> b!1222602 (= e!694377 e!694379)))

(declare-fun res!812411 () Bool)

(assert (=> b!1222602 (=> res!812411 e!694379)))

(assert (=> b!1222602 (= res!812411 (not (= (select (arr!38076 _keys!1208) from!1455) k!934)))))

(declare-fun b!1222603 () Bool)

(declare-fun res!812419 () Bool)

(assert (=> b!1222603 (=> (not res!812419) (not e!694372))))

(declare-datatypes ((List!27040 0))(
  ( (Nil!27037) (Cons!27036 (h!28245 (_ BitVec 64)) (t!40396 List!27040)) )
))
(declare-fun arrayNoDuplicates!0 (array!78904 (_ BitVec 32) List!27040) Bool)

(assert (=> b!1222603 (= res!812419 (arrayNoDuplicates!0 lt!556269 #b00000000000000000000000000000000 Nil!27037))))

(declare-fun mapIsEmpty!48505 () Bool)

(assert (=> mapIsEmpty!48505 mapRes!48505))

(declare-fun b!1222604 () Bool)

(assert (=> b!1222604 (= e!694374 tp_is_empty!31073)))

(declare-fun b!1222605 () Bool)

(declare-fun e!694378 () Bool)

(assert (=> b!1222605 (= e!694378 tp_is_empty!31073)))

(declare-fun b!1222606 () Bool)

(declare-fun res!812416 () Bool)

(assert (=> b!1222606 (=> (not res!812416) (not e!694371))))

(assert (=> b!1222606 (= res!812416 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27037))))

(declare-fun b!1222607 () Bool)

(assert (=> b!1222607 (= e!694373 (and e!694378 mapRes!48505))))

(declare-fun condMapEmpty!48505 () Bool)

(declare-fun mapDefault!48505 () ValueCell!14827)

