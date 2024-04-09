; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101688 () Bool)

(assert start!101688)

(declare-fun b_free!26373 () Bool)

(declare-fun b_next!26373 () Bool)

(assert (=> start!101688 (= b_free!26373 (not b_next!26373))))

(declare-fun tp!92163 () Bool)

(declare-fun b_and!43999 () Bool)

(assert (=> start!101688 (= tp!92163 b_and!43999)))

(declare-fun b!1222714 () Bool)

(declare-fun e!694451 () Bool)

(declare-fun tp_is_empty!31077 () Bool)

(assert (=> b!1222714 (= e!694451 tp_is_empty!31077)))

(declare-fun b!1222715 () Bool)

(declare-fun e!694445 () Bool)

(declare-fun e!694450 () Bool)

(assert (=> b!1222715 (= e!694445 (not e!694450))))

(declare-fun res!812508 () Bool)

(assert (=> b!1222715 (=> res!812508 e!694450)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1222715 (= res!812508 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!78912 0))(
  ( (array!78913 (arr!38080 (Array (_ BitVec 32) (_ BitVec 64))) (size!38617 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78912)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78912 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1222715 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40423 0))(
  ( (Unit!40424) )
))
(declare-fun lt!556356 () Unit!40423)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78912 (_ BitVec 64) (_ BitVec 32)) Unit!40423)

(assert (=> b!1222715 (= lt!556356 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1222716 () Bool)

(declare-fun e!694443 () Bool)

(assert (=> b!1222716 (= e!694443 (bvslt from!1455 (size!38617 _keys!1208)))))

(assert (=> b!1222716 (not (= (select (arr!38080 _keys!1208) from!1455) k0!934))))

(declare-fun lt!556357 () Unit!40423)

(declare-fun e!694444 () Unit!40423)

(assert (=> b!1222716 (= lt!556357 e!694444)))

(declare-fun c!120285 () Bool)

(assert (=> b!1222716 (= c!120285 (= (select (arr!38080 _keys!1208) from!1455) k0!934))))

(declare-fun e!694440 () Bool)

(assert (=> b!1222716 e!694440))

(declare-fun res!812505 () Bool)

(assert (=> b!1222716 (=> (not res!812505) (not e!694440))))

(declare-datatypes ((V!46563 0))(
  ( (V!46564 (val!15595 Int)) )
))
(declare-fun lt!556359 () V!46563)

(declare-datatypes ((tuple2!20230 0))(
  ( (tuple2!20231 (_1!10125 (_ BitVec 64)) (_2!10125 V!46563)) )
))
(declare-datatypes ((List!27043 0))(
  ( (Nil!27040) (Cons!27039 (h!28248 tuple2!20230) (t!40403 List!27043)) )
))
(declare-datatypes ((ListLongMap!18211 0))(
  ( (ListLongMap!18212 (toList!9121 List!27043)) )
))
(declare-fun lt!556351 () ListLongMap!18211)

(declare-datatypes ((ValueCell!14829 0))(
  ( (ValueCellFull!14829 (v!18257 V!46563)) (EmptyCell!14829) )
))
(declare-datatypes ((array!78914 0))(
  ( (array!78915 (arr!38081 (Array (_ BitVec 32) ValueCell!14829)) (size!38618 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78914)

(declare-fun lt!556352 () ListLongMap!18211)

(declare-fun +!4086 (ListLongMap!18211 tuple2!20230) ListLongMap!18211)

(declare-fun get!19482 (ValueCell!14829 V!46563) V!46563)

(assert (=> b!1222716 (= res!812505 (= lt!556352 (+!4086 lt!556351 (tuple2!20231 (select (arr!38080 _keys!1208) from!1455) (get!19482 (select (arr!38081 _values!996) from!1455) lt!556359)))))))

(declare-fun b!1222717 () Bool)

(declare-fun Unit!40425 () Unit!40423)

(assert (=> b!1222717 (= e!694444 Unit!40425)))

(declare-fun b!1222718 () Bool)

(declare-fun res!812500 () Bool)

(declare-fun e!694441 () Bool)

(assert (=> b!1222718 (=> (not res!812500) (not e!694441))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1222718 (= res!812500 (validMask!0 mask!1564))))

(declare-fun b!1222719 () Bool)

(declare-fun e!694442 () Bool)

(assert (=> b!1222719 (= e!694440 e!694442)))

(declare-fun res!812509 () Bool)

(assert (=> b!1222719 (=> res!812509 e!694442)))

(assert (=> b!1222719 (= res!812509 (not (= (select (arr!38080 _keys!1208) from!1455) k0!934)))))

(declare-fun res!812496 () Bool)

(assert (=> start!101688 (=> (not res!812496) (not e!694441))))

(assert (=> start!101688 (= res!812496 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38617 _keys!1208))))))

(assert (=> start!101688 e!694441))

(assert (=> start!101688 tp_is_empty!31077))

(declare-fun array_inv!28890 (array!78912) Bool)

(assert (=> start!101688 (array_inv!28890 _keys!1208)))

(assert (=> start!101688 true))

(assert (=> start!101688 tp!92163))

(declare-fun e!694448 () Bool)

(declare-fun array_inv!28891 (array!78914) Bool)

(assert (=> start!101688 (and (array_inv!28891 _values!996) e!694448)))

(declare-fun b!1222720 () Bool)

(assert (=> b!1222720 (= e!694442 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1222721 () Bool)

(declare-fun res!812507 () Bool)

(assert (=> b!1222721 (=> (not res!812507) (not e!694441))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1222721 (= res!812507 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!48511 () Bool)

(declare-fun mapRes!48511 () Bool)

(declare-fun tp!92162 () Bool)

(declare-fun e!694447 () Bool)

(assert (=> mapNonEmpty!48511 (= mapRes!48511 (and tp!92162 e!694447))))

(declare-fun mapRest!48511 () (Array (_ BitVec 32) ValueCell!14829))

(declare-fun mapKey!48511 () (_ BitVec 32))

(declare-fun mapValue!48511 () ValueCell!14829)

(assert (=> mapNonEmpty!48511 (= (arr!38081 _values!996) (store mapRest!48511 mapKey!48511 mapValue!48511))))

(declare-fun b!1222722 () Bool)

(declare-fun res!812499 () Bool)

(assert (=> b!1222722 (=> (not res!812499) (not e!694441))))

(assert (=> b!1222722 (= res!812499 (= (select (arr!38080 _keys!1208) i!673) k0!934))))

(declare-fun b!1222723 () Bool)

(declare-fun e!694446 () Bool)

(assert (=> b!1222723 (= e!694450 e!694446)))

(declare-fun res!812495 () Bool)

(assert (=> b!1222723 (=> res!812495 e!694446)))

(assert (=> b!1222723 (= res!812495 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46563)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!556348 () array!78912)

(declare-fun lt!556346 () array!78914)

(declare-fun minValue!944 () V!46563)

(declare-fun getCurrentListMapNoExtraKeys!5519 (array!78912 array!78914 (_ BitVec 32) (_ BitVec 32) V!46563 V!46563 (_ BitVec 32) Int) ListLongMap!18211)

(assert (=> b!1222723 (= lt!556352 (getCurrentListMapNoExtraKeys!5519 lt!556348 lt!556346 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1222723 (= lt!556346 (array!78915 (store (arr!38081 _values!996) i!673 (ValueCellFull!14829 lt!556359)) (size!38618 _values!996)))))

(declare-fun dynLambda!3416 (Int (_ BitVec 64)) V!46563)

(assert (=> b!1222723 (= lt!556359 (dynLambda!3416 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!556347 () ListLongMap!18211)

(assert (=> b!1222723 (= lt!556347 (getCurrentListMapNoExtraKeys!5519 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!48511 () Bool)

(assert (=> mapIsEmpty!48511 mapRes!48511))

(declare-fun b!1222724 () Bool)

(assert (=> b!1222724 (= e!694446 e!694443)))

(declare-fun res!812503 () Bool)

(assert (=> b!1222724 (=> res!812503 e!694443)))

(assert (=> b!1222724 (= res!812503 (not (validKeyInArray!0 (select (arr!38080 _keys!1208) from!1455))))))

(declare-fun lt!556354 () ListLongMap!18211)

(assert (=> b!1222724 (= lt!556354 lt!556351)))

(declare-fun lt!556355 () ListLongMap!18211)

(declare-fun -!1963 (ListLongMap!18211 (_ BitVec 64)) ListLongMap!18211)

(assert (=> b!1222724 (= lt!556351 (-!1963 lt!556355 k0!934))))

(assert (=> b!1222724 (= lt!556354 (getCurrentListMapNoExtraKeys!5519 lt!556348 lt!556346 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1222724 (= lt!556355 (getCurrentListMapNoExtraKeys!5519 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!556350 () Unit!40423)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1165 (array!78912 array!78914 (_ BitVec 32) (_ BitVec 32) V!46563 V!46563 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40423)

(assert (=> b!1222724 (= lt!556350 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1165 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1222725 () Bool)

(declare-fun res!812498 () Bool)

(assert (=> b!1222725 (=> (not res!812498) (not e!694441))))

(declare-datatypes ((List!27044 0))(
  ( (Nil!27041) (Cons!27040 (h!28249 (_ BitVec 64)) (t!40404 List!27044)) )
))
(declare-fun arrayNoDuplicates!0 (array!78912 (_ BitVec 32) List!27044) Bool)

(assert (=> b!1222725 (= res!812498 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27041))))

(declare-fun b!1222726 () Bool)

(declare-fun Unit!40426 () Unit!40423)

(assert (=> b!1222726 (= e!694444 Unit!40426)))

(declare-fun lt!556353 () Unit!40423)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78912 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40423)

(assert (=> b!1222726 (= lt!556353 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1222726 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!556349 () Unit!40423)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78912 (_ BitVec 32) (_ BitVec 32)) Unit!40423)

(assert (=> b!1222726 (= lt!556349 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1222726 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27041)))

(declare-fun lt!556358 () Unit!40423)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78912 (_ BitVec 64) (_ BitVec 32) List!27044) Unit!40423)

(assert (=> b!1222726 (= lt!556358 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!27041))))

(assert (=> b!1222726 false))

(declare-fun b!1222727 () Bool)

(declare-fun res!812497 () Bool)

(assert (=> b!1222727 (=> (not res!812497) (not e!694445))))

(assert (=> b!1222727 (= res!812497 (arrayNoDuplicates!0 lt!556348 #b00000000000000000000000000000000 Nil!27041))))

(declare-fun b!1222728 () Bool)

(declare-fun res!812504 () Bool)

(assert (=> b!1222728 (=> (not res!812504) (not e!694441))))

(assert (=> b!1222728 (= res!812504 (and (= (size!38618 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38617 _keys!1208) (size!38618 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1222729 () Bool)

(declare-fun res!812502 () Bool)

(assert (=> b!1222729 (=> (not res!812502) (not e!694441))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78912 (_ BitVec 32)) Bool)

(assert (=> b!1222729 (= res!812502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1222730 () Bool)

(assert (=> b!1222730 (= e!694447 tp_is_empty!31077)))

(declare-fun b!1222731 () Bool)

(declare-fun res!812501 () Bool)

(assert (=> b!1222731 (=> (not res!812501) (not e!694441))))

(assert (=> b!1222731 (= res!812501 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38617 _keys!1208))))))

(declare-fun b!1222732 () Bool)

(assert (=> b!1222732 (= e!694441 e!694445)))

(declare-fun res!812506 () Bool)

(assert (=> b!1222732 (=> (not res!812506) (not e!694445))))

(assert (=> b!1222732 (= res!812506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!556348 mask!1564))))

(assert (=> b!1222732 (= lt!556348 (array!78913 (store (arr!38080 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38617 _keys!1208)))))

(declare-fun b!1222733 () Bool)

(assert (=> b!1222733 (= e!694448 (and e!694451 mapRes!48511))))

(declare-fun condMapEmpty!48511 () Bool)

(declare-fun mapDefault!48511 () ValueCell!14829)

(assert (=> b!1222733 (= condMapEmpty!48511 (= (arr!38081 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14829)) mapDefault!48511)))))

(assert (= (and start!101688 res!812496) b!1222718))

(assert (= (and b!1222718 res!812500) b!1222728))

(assert (= (and b!1222728 res!812504) b!1222729))

(assert (= (and b!1222729 res!812502) b!1222725))

(assert (= (and b!1222725 res!812498) b!1222731))

(assert (= (and b!1222731 res!812501) b!1222721))

(assert (= (and b!1222721 res!812507) b!1222722))

(assert (= (and b!1222722 res!812499) b!1222732))

(assert (= (and b!1222732 res!812506) b!1222727))

(assert (= (and b!1222727 res!812497) b!1222715))

(assert (= (and b!1222715 (not res!812508)) b!1222723))

(assert (= (and b!1222723 (not res!812495)) b!1222724))

(assert (= (and b!1222724 (not res!812503)) b!1222716))

(assert (= (and b!1222716 res!812505) b!1222719))

(assert (= (and b!1222719 (not res!812509)) b!1222720))

(assert (= (and b!1222716 c!120285) b!1222726))

(assert (= (and b!1222716 (not c!120285)) b!1222717))

(assert (= (and b!1222733 condMapEmpty!48511) mapIsEmpty!48511))

(assert (= (and b!1222733 (not condMapEmpty!48511)) mapNonEmpty!48511))

(get-info :version)

(assert (= (and mapNonEmpty!48511 ((_ is ValueCellFull!14829) mapValue!48511)) b!1222730))

(assert (= (and b!1222733 ((_ is ValueCellFull!14829) mapDefault!48511)) b!1222714))

(assert (= start!101688 b!1222733))

(declare-fun b_lambda!22325 () Bool)

(assert (=> (not b_lambda!22325) (not b!1222723)))

(declare-fun t!40402 () Bool)

(declare-fun tb!11181 () Bool)

(assert (=> (and start!101688 (= defaultEntry!1004 defaultEntry!1004) t!40402) tb!11181))

(declare-fun result!22965 () Bool)

(assert (=> tb!11181 (= result!22965 tp_is_empty!31077)))

(assert (=> b!1222723 t!40402))

(declare-fun b_and!44001 () Bool)

(assert (= b_and!43999 (and (=> t!40402 result!22965) b_and!44001)))

(declare-fun m!1127699 () Bool)

(assert (=> b!1222729 m!1127699))

(declare-fun m!1127701 () Bool)

(assert (=> b!1222732 m!1127701))

(declare-fun m!1127703 () Bool)

(assert (=> b!1222732 m!1127703))

(declare-fun m!1127705 () Bool)

(assert (=> b!1222724 m!1127705))

(declare-fun m!1127707 () Bool)

(assert (=> b!1222724 m!1127707))

(declare-fun m!1127709 () Bool)

(assert (=> b!1222724 m!1127709))

(declare-fun m!1127711 () Bool)

(assert (=> b!1222724 m!1127711))

(declare-fun m!1127713 () Bool)

(assert (=> b!1222724 m!1127713))

(declare-fun m!1127715 () Bool)

(assert (=> b!1222724 m!1127715))

(assert (=> b!1222724 m!1127711))

(declare-fun m!1127717 () Bool)

(assert (=> b!1222722 m!1127717))

(declare-fun m!1127719 () Bool)

(assert (=> b!1222721 m!1127719))

(assert (=> b!1222719 m!1127711))

(declare-fun m!1127721 () Bool)

(assert (=> b!1222718 m!1127721))

(declare-fun m!1127723 () Bool)

(assert (=> b!1222725 m!1127723))

(declare-fun m!1127725 () Bool)

(assert (=> b!1222720 m!1127725))

(assert (=> b!1222716 m!1127711))

(declare-fun m!1127727 () Bool)

(assert (=> b!1222716 m!1127727))

(assert (=> b!1222716 m!1127727))

(declare-fun m!1127729 () Bool)

(assert (=> b!1222716 m!1127729))

(declare-fun m!1127731 () Bool)

(assert (=> b!1222716 m!1127731))

(declare-fun m!1127733 () Bool)

(assert (=> start!101688 m!1127733))

(declare-fun m!1127735 () Bool)

(assert (=> start!101688 m!1127735))

(declare-fun m!1127737 () Bool)

(assert (=> mapNonEmpty!48511 m!1127737))

(declare-fun m!1127739 () Bool)

(assert (=> b!1222723 m!1127739))

(declare-fun m!1127741 () Bool)

(assert (=> b!1222723 m!1127741))

(declare-fun m!1127743 () Bool)

(assert (=> b!1222723 m!1127743))

(declare-fun m!1127745 () Bool)

(assert (=> b!1222723 m!1127745))

(declare-fun m!1127747 () Bool)

(assert (=> b!1222727 m!1127747))

(declare-fun m!1127749 () Bool)

(assert (=> b!1222715 m!1127749))

(declare-fun m!1127751 () Bool)

(assert (=> b!1222715 m!1127751))

(declare-fun m!1127753 () Bool)

(assert (=> b!1222726 m!1127753))

(declare-fun m!1127755 () Bool)

(assert (=> b!1222726 m!1127755))

(declare-fun m!1127757 () Bool)

(assert (=> b!1222726 m!1127757))

(declare-fun m!1127759 () Bool)

(assert (=> b!1222726 m!1127759))

(declare-fun m!1127761 () Bool)

(assert (=> b!1222726 m!1127761))

(check-sat (not b_next!26373) (not b!1222725) (not b!1222729) (not b!1222718) (not b!1222720) (not b!1222715) (not b!1222727) (not b!1222721) (not mapNonEmpty!48511) (not b!1222723) tp_is_empty!31077 (not start!101688) (not b!1222724) (not b!1222716) (not b!1222732) (not b_lambda!22325) b_and!44001 (not b!1222726))
(check-sat b_and!44001 (not b_next!26373))
