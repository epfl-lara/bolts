; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99804 () Bool)

(assert start!99804)

(declare-fun b_free!25347 () Bool)

(declare-fun b_next!25347 () Bool)

(assert (=> start!99804 (= b_free!25347 (not b_next!25347))))

(declare-fun tp!88755 () Bool)

(declare-fun b_and!41575 () Bool)

(assert (=> start!99804 (= tp!88755 b_and!41575)))

(declare-fun b!1184979 () Bool)

(declare-datatypes ((Unit!39171 0))(
  ( (Unit!39172) )
))
(declare-fun e!673779 () Unit!39171)

(declare-fun Unit!39173 () Unit!39171)

(assert (=> b!1184979 (= e!673779 Unit!39173)))

(declare-datatypes ((array!76522 0))(
  ( (array!76523 (arr!36907 (Array (_ BitVec 32) (_ BitVec 64))) (size!37444 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76522)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!537598 () Unit!39171)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76522 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39171)

(assert (=> b!1184979 (= lt!537598 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76522 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1184979 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!537588 () Unit!39171)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76522 (_ BitVec 32) (_ BitVec 32)) Unit!39171)

(assert (=> b!1184979 (= lt!537588 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26115 0))(
  ( (Nil!26112) (Cons!26111 (h!27320 (_ BitVec 64)) (t!38461 List!26115)) )
))
(declare-fun arrayNoDuplicates!0 (array!76522 (_ BitVec 32) List!26115) Bool)

(assert (=> b!1184979 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26112)))

(declare-fun lt!537603 () Unit!39171)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76522 (_ BitVec 64) (_ BitVec 32) List!26115) Unit!39171)

(assert (=> b!1184979 (= lt!537603 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26112))))

(assert (=> b!1184979 false))

(declare-fun b!1184980 () Bool)

(declare-fun res!787765 () Bool)

(declare-fun e!673788 () Bool)

(assert (=> b!1184980 (=> (not res!787765) (not e!673788))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76522 (_ BitVec 32)) Bool)

(assert (=> b!1184980 (= res!787765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1184981 () Bool)

(declare-fun e!673783 () Bool)

(assert (=> b!1184981 (= e!673783 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1184982 () Bool)

(declare-fun res!787755 () Bool)

(assert (=> b!1184982 (=> (not res!787755) (not e!673788))))

(assert (=> b!1184982 (= res!787755 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26112))))

(declare-fun b!1184983 () Bool)

(declare-fun e!673778 () Bool)

(assert (=> b!1184983 (= e!673778 true)))

(declare-datatypes ((V!44963 0))(
  ( (V!44964 (val!14995 Int)) )
))
(declare-datatypes ((tuple2!19354 0))(
  ( (tuple2!19355 (_1!9687 (_ BitVec 64)) (_2!9687 V!44963)) )
))
(declare-datatypes ((List!26116 0))(
  ( (Nil!26113) (Cons!26112 (h!27321 tuple2!19354) (t!38462 List!26116)) )
))
(declare-datatypes ((ListLongMap!17335 0))(
  ( (ListLongMap!17336 (toList!8683 List!26116)) )
))
(declare-fun lt!537594 () ListLongMap!17335)

(declare-fun lt!537595 () ListLongMap!17335)

(declare-fun -!1670 (ListLongMap!17335 (_ BitVec 64)) ListLongMap!17335)

(assert (=> b!1184983 (= (-!1670 lt!537594 k0!934) lt!537595)))

(declare-fun lt!537596 () ListLongMap!17335)

(declare-fun lt!537599 () V!44963)

(declare-fun lt!537602 () Unit!39171)

(declare-fun addRemoveCommutativeForDiffKeys!181 (ListLongMap!17335 (_ BitVec 64) V!44963 (_ BitVec 64)) Unit!39171)

(assert (=> b!1184983 (= lt!537602 (addRemoveCommutativeForDiffKeys!181 lt!537596 (select (arr!36907 _keys!1208) from!1455) lt!537599 k0!934))))

(declare-fun lt!537592 () ListLongMap!17335)

(declare-fun lt!537600 () ListLongMap!17335)

(declare-fun lt!537590 () ListLongMap!17335)

(assert (=> b!1184983 (and (= lt!537592 lt!537594) (= lt!537600 lt!537590))))

(declare-fun lt!537605 () tuple2!19354)

(declare-fun +!3891 (ListLongMap!17335 tuple2!19354) ListLongMap!17335)

(assert (=> b!1184983 (= lt!537594 (+!3891 lt!537596 lt!537605))))

(assert (=> b!1184983 (not (= (select (arr!36907 _keys!1208) from!1455) k0!934))))

(declare-fun lt!537589 () Unit!39171)

(assert (=> b!1184983 (= lt!537589 e!673779)))

(declare-fun c!117092 () Bool)

(assert (=> b!1184983 (= c!117092 (= (select (arr!36907 _keys!1208) from!1455) k0!934))))

(declare-fun e!673789 () Bool)

(assert (=> b!1184983 e!673789))

(declare-fun res!787758 () Bool)

(assert (=> b!1184983 (=> (not res!787758) (not e!673789))))

(declare-fun lt!537597 () ListLongMap!17335)

(assert (=> b!1184983 (= res!787758 (= lt!537597 lt!537595))))

(assert (=> b!1184983 (= lt!537595 (+!3891 lt!537600 lt!537605))))

(assert (=> b!1184983 (= lt!537605 (tuple2!19355 (select (arr!36907 _keys!1208) from!1455) lt!537599))))

(declare-datatypes ((ValueCell!14229 0))(
  ( (ValueCellFull!14229 (v!17634 V!44963)) (EmptyCell!14229) )
))
(declare-datatypes ((array!76524 0))(
  ( (array!76525 (arr!36908 (Array (_ BitVec 32) ValueCell!14229)) (size!37445 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76524)

(declare-fun lt!537601 () V!44963)

(declare-fun get!18929 (ValueCell!14229 V!44963) V!44963)

(assert (=> b!1184983 (= lt!537599 (get!18929 (select (arr!36908 _values!996) from!1455) lt!537601))))

(declare-fun b!1184984 () Bool)

(declare-fun e!673782 () Bool)

(declare-fun e!673785 () Bool)

(assert (=> b!1184984 (= e!673782 e!673785)))

(declare-fun res!787759 () Bool)

(assert (=> b!1184984 (=> res!787759 e!673785)))

(assert (=> b!1184984 (= res!787759 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44963)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!537593 () array!76524)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!537606 () array!76522)

(declare-fun minValue!944 () V!44963)

(declare-fun getCurrentListMapNoExtraKeys!5102 (array!76522 array!76524 (_ BitVec 32) (_ BitVec 32) V!44963 V!44963 (_ BitVec 32) Int) ListLongMap!17335)

(assert (=> b!1184984 (= lt!537597 (getCurrentListMapNoExtraKeys!5102 lt!537606 lt!537593 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1184984 (= lt!537593 (array!76525 (store (arr!36908 _values!996) i!673 (ValueCellFull!14229 lt!537601)) (size!37445 _values!996)))))

(declare-fun dynLambda!3064 (Int (_ BitVec 64)) V!44963)

(assert (=> b!1184984 (= lt!537601 (dynLambda!3064 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1184984 (= lt!537592 (getCurrentListMapNoExtraKeys!5102 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1184985 () Bool)

(declare-fun e!673786 () Bool)

(declare-fun tp_is_empty!29877 () Bool)

(assert (=> b!1184985 (= e!673786 tp_is_empty!29877)))

(declare-fun b!1184986 () Bool)

(declare-fun res!787762 () Bool)

(declare-fun e!673781 () Bool)

(assert (=> b!1184986 (=> (not res!787762) (not e!673781))))

(assert (=> b!1184986 (= res!787762 (arrayNoDuplicates!0 lt!537606 #b00000000000000000000000000000000 Nil!26112))))

(declare-fun mapIsEmpty!46643 () Bool)

(declare-fun mapRes!46643 () Bool)

(assert (=> mapIsEmpty!46643 mapRes!46643))

(declare-fun b!1184987 () Bool)

(declare-fun res!787761 () Bool)

(assert (=> b!1184987 (=> (not res!787761) (not e!673788))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1184987 (= res!787761 (validKeyInArray!0 k0!934))))

(declare-fun b!1184988 () Bool)

(declare-fun e!673787 () Bool)

(assert (=> b!1184988 (= e!673787 tp_is_empty!29877)))

(declare-fun b!1184989 () Bool)

(declare-fun res!787763 () Bool)

(assert (=> b!1184989 (=> (not res!787763) (not e!673788))))

(assert (=> b!1184989 (= res!787763 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37444 _keys!1208))))))

(declare-fun mapNonEmpty!46643 () Bool)

(declare-fun tp!88756 () Bool)

(assert (=> mapNonEmpty!46643 (= mapRes!46643 (and tp!88756 e!673786))))

(declare-fun mapRest!46643 () (Array (_ BitVec 32) ValueCell!14229))

(declare-fun mapValue!46643 () ValueCell!14229)

(declare-fun mapKey!46643 () (_ BitVec 32))

(assert (=> mapNonEmpty!46643 (= (arr!36908 _values!996) (store mapRest!46643 mapKey!46643 mapValue!46643))))

(declare-fun b!1184990 () Bool)

(declare-fun Unit!39174 () Unit!39171)

(assert (=> b!1184990 (= e!673779 Unit!39174)))

(declare-fun res!787766 () Bool)

(assert (=> start!99804 (=> (not res!787766) (not e!673788))))

(assert (=> start!99804 (= res!787766 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37444 _keys!1208))))))

(assert (=> start!99804 e!673788))

(assert (=> start!99804 tp_is_empty!29877))

(declare-fun array_inv!28046 (array!76522) Bool)

(assert (=> start!99804 (array_inv!28046 _keys!1208)))

(assert (=> start!99804 true))

(assert (=> start!99804 tp!88755))

(declare-fun e!673784 () Bool)

(declare-fun array_inv!28047 (array!76524) Bool)

(assert (=> start!99804 (and (array_inv!28047 _values!996) e!673784)))

(declare-fun b!1184991 () Bool)

(declare-fun res!787754 () Bool)

(assert (=> b!1184991 (=> (not res!787754) (not e!673788))))

(assert (=> b!1184991 (= res!787754 (and (= (size!37445 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37444 _keys!1208) (size!37445 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1184992 () Bool)

(assert (=> b!1184992 (= e!673781 (not e!673782))))

(declare-fun res!787767 () Bool)

(assert (=> b!1184992 (=> res!787767 e!673782)))

(assert (=> b!1184992 (= res!787767 (bvsgt from!1455 i!673))))

(assert (=> b!1184992 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!537591 () Unit!39171)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76522 (_ BitVec 64) (_ BitVec 32)) Unit!39171)

(assert (=> b!1184992 (= lt!537591 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1184993 () Bool)

(assert (=> b!1184993 (= e!673785 e!673778)))

(declare-fun res!787756 () Bool)

(assert (=> b!1184993 (=> res!787756 e!673778)))

(assert (=> b!1184993 (= res!787756 (not (validKeyInArray!0 (select (arr!36907 _keys!1208) from!1455))))))

(assert (=> b!1184993 (= lt!537590 lt!537600)))

(assert (=> b!1184993 (= lt!537600 (-!1670 lt!537596 k0!934))))

(assert (=> b!1184993 (= lt!537590 (getCurrentListMapNoExtraKeys!5102 lt!537606 lt!537593 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1184993 (= lt!537596 (getCurrentListMapNoExtraKeys!5102 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!537604 () Unit!39171)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!885 (array!76522 array!76524 (_ BitVec 32) (_ BitVec 32) V!44963 V!44963 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39171)

(assert (=> b!1184993 (= lt!537604 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!885 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1184994 () Bool)

(assert (=> b!1184994 (= e!673784 (and e!673787 mapRes!46643))))

(declare-fun condMapEmpty!46643 () Bool)

(declare-fun mapDefault!46643 () ValueCell!14229)

(assert (=> b!1184994 (= condMapEmpty!46643 (= (arr!36908 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14229)) mapDefault!46643)))))

(declare-fun b!1184995 () Bool)

(declare-fun res!787760 () Bool)

(assert (=> b!1184995 (=> (not res!787760) (not e!673788))))

(assert (=> b!1184995 (= res!787760 (= (select (arr!36907 _keys!1208) i!673) k0!934))))

(declare-fun b!1184996 () Bool)

(declare-fun res!787757 () Bool)

(assert (=> b!1184996 (=> (not res!787757) (not e!673788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1184996 (= res!787757 (validMask!0 mask!1564))))

(declare-fun b!1184997 () Bool)

(assert (=> b!1184997 (= e!673788 e!673781)))

(declare-fun res!787764 () Bool)

(assert (=> b!1184997 (=> (not res!787764) (not e!673781))))

(assert (=> b!1184997 (= res!787764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!537606 mask!1564))))

(assert (=> b!1184997 (= lt!537606 (array!76523 (store (arr!36907 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37444 _keys!1208)))))

(declare-fun b!1184998 () Bool)

(assert (=> b!1184998 (= e!673789 e!673783)))

(declare-fun res!787768 () Bool)

(assert (=> b!1184998 (=> res!787768 e!673783)))

(assert (=> b!1184998 (= res!787768 (not (= (select (arr!36907 _keys!1208) from!1455) k0!934)))))

(assert (= (and start!99804 res!787766) b!1184996))

(assert (= (and b!1184996 res!787757) b!1184991))

(assert (= (and b!1184991 res!787754) b!1184980))

(assert (= (and b!1184980 res!787765) b!1184982))

(assert (= (and b!1184982 res!787755) b!1184989))

(assert (= (and b!1184989 res!787763) b!1184987))

(assert (= (and b!1184987 res!787761) b!1184995))

(assert (= (and b!1184995 res!787760) b!1184997))

(assert (= (and b!1184997 res!787764) b!1184986))

(assert (= (and b!1184986 res!787762) b!1184992))

(assert (= (and b!1184992 (not res!787767)) b!1184984))

(assert (= (and b!1184984 (not res!787759)) b!1184993))

(assert (= (and b!1184993 (not res!787756)) b!1184983))

(assert (= (and b!1184983 res!787758) b!1184998))

(assert (= (and b!1184998 (not res!787768)) b!1184981))

(assert (= (and b!1184983 c!117092) b!1184979))

(assert (= (and b!1184983 (not c!117092)) b!1184990))

(assert (= (and b!1184994 condMapEmpty!46643) mapIsEmpty!46643))

(assert (= (and b!1184994 (not condMapEmpty!46643)) mapNonEmpty!46643))

(get-info :version)

(assert (= (and mapNonEmpty!46643 ((_ is ValueCellFull!14229) mapValue!46643)) b!1184985))

(assert (= (and b!1184994 ((_ is ValueCellFull!14229) mapDefault!46643)) b!1184988))

(assert (= start!99804 b!1184994))

(declare-fun b_lambda!20509 () Bool)

(assert (=> (not b_lambda!20509) (not b!1184984)))

(declare-fun t!38460 () Bool)

(declare-fun tb!10167 () Bool)

(assert (=> (and start!99804 (= defaultEntry!1004 defaultEntry!1004) t!38460) tb!10167))

(declare-fun result!20893 () Bool)

(assert (=> tb!10167 (= result!20893 tp_is_empty!29877)))

(assert (=> b!1184984 t!38460))

(declare-fun b_and!41577 () Bool)

(assert (= b_and!41575 (and (=> t!38460 result!20893) b_and!41577)))

(declare-fun m!1093395 () Bool)

(assert (=> b!1184995 m!1093395))

(declare-fun m!1093397 () Bool)

(assert (=> b!1184981 m!1093397))

(declare-fun m!1093399 () Bool)

(assert (=> b!1184993 m!1093399))

(declare-fun m!1093401 () Bool)

(assert (=> b!1184993 m!1093401))

(declare-fun m!1093403 () Bool)

(assert (=> b!1184993 m!1093403))

(declare-fun m!1093405 () Bool)

(assert (=> b!1184993 m!1093405))

(assert (=> b!1184993 m!1093403))

(declare-fun m!1093407 () Bool)

(assert (=> b!1184993 m!1093407))

(declare-fun m!1093409 () Bool)

(assert (=> b!1184993 m!1093409))

(declare-fun m!1093411 () Bool)

(assert (=> mapNonEmpty!46643 m!1093411))

(assert (=> b!1184998 m!1093403))

(declare-fun m!1093413 () Bool)

(assert (=> b!1184984 m!1093413))

(declare-fun m!1093415 () Bool)

(assert (=> b!1184984 m!1093415))

(declare-fun m!1093417 () Bool)

(assert (=> b!1184984 m!1093417))

(declare-fun m!1093419 () Bool)

(assert (=> b!1184984 m!1093419))

(declare-fun m!1093421 () Bool)

(assert (=> b!1184986 m!1093421))

(declare-fun m!1093423 () Bool)

(assert (=> b!1184997 m!1093423))

(declare-fun m!1093425 () Bool)

(assert (=> b!1184997 m!1093425))

(declare-fun m!1093427 () Bool)

(assert (=> start!99804 m!1093427))

(declare-fun m!1093429 () Bool)

(assert (=> start!99804 m!1093429))

(declare-fun m!1093431 () Bool)

(assert (=> b!1184982 m!1093431))

(declare-fun m!1093433 () Bool)

(assert (=> b!1184983 m!1093433))

(assert (=> b!1184983 m!1093403))

(declare-fun m!1093435 () Bool)

(assert (=> b!1184983 m!1093435))

(declare-fun m!1093437 () Bool)

(assert (=> b!1184983 m!1093437))

(declare-fun m!1093439 () Bool)

(assert (=> b!1184983 m!1093439))

(declare-fun m!1093441 () Bool)

(assert (=> b!1184983 m!1093441))

(assert (=> b!1184983 m!1093433))

(declare-fun m!1093443 () Bool)

(assert (=> b!1184983 m!1093443))

(assert (=> b!1184983 m!1093403))

(declare-fun m!1093445 () Bool)

(assert (=> b!1184980 m!1093445))

(declare-fun m!1093447 () Bool)

(assert (=> b!1184979 m!1093447))

(declare-fun m!1093449 () Bool)

(assert (=> b!1184979 m!1093449))

(declare-fun m!1093451 () Bool)

(assert (=> b!1184979 m!1093451))

(declare-fun m!1093453 () Bool)

(assert (=> b!1184979 m!1093453))

(declare-fun m!1093455 () Bool)

(assert (=> b!1184979 m!1093455))

(declare-fun m!1093457 () Bool)

(assert (=> b!1184996 m!1093457))

(declare-fun m!1093459 () Bool)

(assert (=> b!1184987 m!1093459))

(declare-fun m!1093461 () Bool)

(assert (=> b!1184992 m!1093461))

(declare-fun m!1093463 () Bool)

(assert (=> b!1184992 m!1093463))

(check-sat (not mapNonEmpty!46643) (not b!1184984) (not b!1184986) (not b!1184979) (not b!1184980) tp_is_empty!29877 (not b!1184996) b_and!41577 (not b_next!25347) (not b_lambda!20509) (not b!1184987) (not b!1184993) (not b!1184981) (not b!1184992) (not start!99804) (not b!1184983) (not b!1184997) (not b!1184982))
(check-sat b_and!41577 (not b_next!25347))
