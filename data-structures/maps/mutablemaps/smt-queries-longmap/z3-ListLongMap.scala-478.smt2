; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!9928 () Bool)

(assert start!9928)

(declare-fun b!74991 () Bool)

(declare-fun b_free!2129 () Bool)

(declare-fun b_next!2129 () Bool)

(assert (=> b!74991 (= b_free!2129 (not b_next!2129))))

(declare-fun tp!8572 () Bool)

(declare-fun b_and!4589 () Bool)

(assert (=> b!74991 (= tp!8572 b_and!4589)))

(declare-fun b!74997 () Bool)

(declare-fun b_free!2131 () Bool)

(declare-fun b_next!2131 () Bool)

(assert (=> b!74997 (= b_free!2131 (not b_next!2131))))

(declare-fun tp!8574 () Bool)

(declare-fun b_and!4591 () Bool)

(assert (=> b!74997 (= tp!8574 b_and!4591)))

(declare-fun e!49015 () Bool)

(declare-datatypes ((V!2955 0))(
  ( (V!2956 (val!1285 Int)) )
))
(declare-datatypes ((array!3908 0))(
  ( (array!3909 (arr!1864 (Array (_ BitVec 32) (_ BitVec 64))) (size!2103 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!897 0))(
  ( (ValueCellFull!897 (v!2548 V!2955)) (EmptyCell!897) )
))
(declare-datatypes ((array!3910 0))(
  ( (array!3911 (arr!1865 (Array (_ BitVec 32) ValueCell!897)) (size!2104 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!702 0))(
  ( (LongMapFixedSize!703 (defaultEntry!2234 Int) (mask!6211 (_ BitVec 32)) (extraKeys!2089 (_ BitVec 32)) (zeroValue!2134 V!2955) (minValue!2134 V!2955) (_size!400 (_ BitVec 32)) (_keys!3890 array!3908) (_values!2217 array!3910) (_vacant!400 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!512 0))(
  ( (Cell!513 (v!2549 LongMapFixedSize!702)) )
))
(declare-datatypes ((LongMap!512 0))(
  ( (LongMap!513 (underlying!267 Cell!512)) )
))
(declare-fun thiss!992 () LongMap!512)

(declare-fun e!49020 () Bool)

(declare-fun tp_is_empty!2481 () Bool)

(declare-fun array_inv!1107 (array!3908) Bool)

(declare-fun array_inv!1108 (array!3910) Bool)

(assert (=> b!74991 (= e!49015 (and tp!8572 tp_is_empty!2481 (array_inv!1107 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (array_inv!1108 (_values!2217 (v!2549 (underlying!267 thiss!992)))) e!49020))))

(declare-fun b!74992 () Bool)

(declare-fun e!49021 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3908 (_ BitVec 32)) Bool)

(assert (=> b!74992 (= e!49021 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992)))))))

(declare-fun b!74993 () Bool)

(declare-datatypes ((Unit!2169 0))(
  ( (Unit!2170) )
))
(declare-fun e!49027 () Unit!2169)

(declare-fun Unit!2171 () Unit!2169)

(assert (=> b!74993 (= e!49027 Unit!2171)))

(declare-fun b!74994 () Bool)

(declare-fun res!39589 () Bool)

(declare-fun e!49026 () Bool)

(assert (=> b!74994 (=> (not res!39589) (not e!49026))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!74994 (= res!39589 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992)))))))))

(declare-fun b!74995 () Bool)

(declare-fun e!49023 () Bool)

(declare-fun e!49016 () Bool)

(assert (=> b!74995 (= e!49023 e!49016)))

(declare-fun b!74996 () Bool)

(declare-fun e!49030 () Bool)

(declare-fun e!49022 () Bool)

(assert (=> b!74996 (= e!49030 e!49022)))

(declare-fun res!39596 () Bool)

(assert (=> b!74996 (=> (not res!39596) (not e!49022))))

(declare-datatypes ((tuple2!2154 0))(
  ( (tuple2!2155 (_1!1087 Bool) (_2!1087 LongMapFixedSize!702)) )
))
(declare-fun lt!33752 () tuple2!2154)

(assert (=> b!74996 (= res!39596 (and (_1!1087 lt!33752) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!33744 () Unit!2169)

(assert (=> b!74996 (= lt!33744 e!49027)))

(declare-fun c!11343 () Bool)

(declare-datatypes ((tuple2!2156 0))(
  ( (tuple2!2157 (_1!1088 (_ BitVec 64)) (_2!1088 V!2955)) )
))
(declare-datatypes ((List!1513 0))(
  ( (Nil!1510) (Cons!1509 (h!2097 tuple2!2156) (t!5095 List!1513)) )
))
(declare-datatypes ((ListLongMap!1445 0))(
  ( (ListLongMap!1446 (toList!738 List!1513)) )
))
(declare-fun lt!33747 () ListLongMap!1445)

(declare-fun contains!732 (ListLongMap!1445 (_ BitVec 64)) Bool)

(assert (=> b!74996 (= c!11343 (contains!732 lt!33747 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!702)

(declare-fun lt!33745 () V!2955)

(declare-fun update!104 (LongMapFixedSize!702 (_ BitVec 64) V!2955) tuple2!2154)

(assert (=> b!74996 (= lt!33752 (update!104 newMap!16 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))))

(declare-fun mapNonEmpty!3197 () Bool)

(declare-fun mapRes!3197 () Bool)

(declare-fun tp!8573 () Bool)

(declare-fun e!49031 () Bool)

(assert (=> mapNonEmpty!3197 (= mapRes!3197 (and tp!8573 e!49031))))

(declare-fun mapKey!3197 () (_ BitVec 32))

(declare-fun mapValue!3197 () ValueCell!897)

(declare-fun mapRest!3197 () (Array (_ BitVec 32) ValueCell!897))

(assert (=> mapNonEmpty!3197 (= (arr!1865 (_values!2217 newMap!16)) (store mapRest!3197 mapKey!3197 mapValue!3197))))

(declare-fun res!39594 () Bool)

(assert (=> start!9928 (=> (not res!39594) (not e!49026))))

(declare-fun valid!296 (LongMap!512) Bool)

(assert (=> start!9928 (= res!39594 (valid!296 thiss!992))))

(assert (=> start!9928 e!49026))

(assert (=> start!9928 e!49023))

(assert (=> start!9928 true))

(declare-fun e!49019 () Bool)

(assert (=> start!9928 e!49019))

(declare-fun b!74990 () Bool)

(declare-fun res!39593 () Bool)

(assert (=> b!74990 (=> res!39593 e!49021)))

(assert (=> b!74990 (= res!39593 (or (not (= (size!2104 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6211 (v!2549 (underlying!267 thiss!992)))))) (not (= (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (size!2104 (_values!2217 (v!2549 (underlying!267 thiss!992)))))) (bvslt (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000000) (bvslt (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000000) (bvsgt (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!3197 () Bool)

(assert (=> mapIsEmpty!3197 mapRes!3197))

(declare-fun e!49029 () Bool)

(assert (=> b!74997 (= e!49019 (and tp!8574 tp_is_empty!2481 (array_inv!1107 (_keys!3890 newMap!16)) (array_inv!1108 (_values!2217 newMap!16)) e!49029))))

(declare-fun b!74998 () Bool)

(declare-fun e!49014 () Bool)

(assert (=> b!74998 (= e!49026 e!49014)))

(declare-fun res!39591 () Bool)

(assert (=> b!74998 (=> (not res!39591) (not e!49014))))

(declare-fun lt!33754 () ListLongMap!1445)

(assert (=> b!74998 (= res!39591 (= lt!33754 lt!33747))))

(declare-fun map!1163 (LongMapFixedSize!702) ListLongMap!1445)

(assert (=> b!74998 (= lt!33747 (map!1163 newMap!16))))

(declare-fun getCurrentListMap!429 (array!3908 array!3910 (_ BitVec 32) (_ BitVec 32) V!2955 V!2955 (_ BitVec 32) Int) ListLongMap!1445)

(assert (=> b!74998 (= lt!33754 (getCurrentListMap!429 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (_values!2217 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992))) (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) (minValue!2134 (v!2549 (underlying!267 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992)))))))

(declare-fun b!74999 () Bool)

(declare-fun e!49017 () Bool)

(assert (=> b!74999 (= e!49029 (and e!49017 mapRes!3197))))

(declare-fun condMapEmpty!3198 () Bool)

(declare-fun mapDefault!3197 () ValueCell!897)

(assert (=> b!74999 (= condMapEmpty!3198 (= (arr!1865 (_values!2217 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!897)) mapDefault!3197)))))

(declare-fun b!75000 () Bool)

(assert (=> b!75000 (= e!49016 e!49015)))

(declare-fun b!75001 () Bool)

(assert (=> b!75001 (= e!49014 e!49030)))

(declare-fun res!39592 () Bool)

(assert (=> b!75001 (=> (not res!39592) (not e!49030))))

(assert (=> b!75001 (= res!39592 (and (not (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1162 (ValueCell!897 V!2955) V!2955)

(declare-fun dynLambda!337 (Int (_ BitVec 64)) V!2955)

(assert (=> b!75001 (= lt!33745 (get!1162 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) from!355) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!75002 () Bool)

(declare-fun e!49025 () Bool)

(declare-fun mapRes!3198 () Bool)

(assert (=> b!75002 (= e!49020 (and e!49025 mapRes!3198))))

(declare-fun condMapEmpty!3197 () Bool)

(declare-fun mapDefault!3198 () ValueCell!897)

(assert (=> b!75002 (= condMapEmpty!3197 (= (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!897)) mapDefault!3198)))))

(declare-fun mapNonEmpty!3198 () Bool)

(declare-fun tp!8571 () Bool)

(declare-fun e!49024 () Bool)

(assert (=> mapNonEmpty!3198 (= mapRes!3198 (and tp!8571 e!49024))))

(declare-fun mapKey!3198 () (_ BitVec 32))

(declare-fun mapRest!3198 () (Array (_ BitVec 32) ValueCell!897))

(declare-fun mapValue!3198 () ValueCell!897)

(assert (=> mapNonEmpty!3198 (= (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (store mapRest!3198 mapKey!3198 mapValue!3198))))

(declare-fun b!75003 () Bool)

(declare-fun Unit!2172 () Unit!2169)

(assert (=> b!75003 (= e!49027 Unit!2172)))

(declare-fun lt!33748 () Unit!2169)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!54 (array!3908 array!3910 (_ BitVec 32) (_ BitVec 32) V!2955 V!2955 (_ BitVec 64) (_ BitVec 32) Int) Unit!2169)

(assert (=> b!75003 (= lt!33748 (lemmaListMapContainsThenArrayContainsFrom!54 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (_values!2217 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992))) (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) (minValue!2134 (v!2549 (underlying!267 thiss!992))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3908 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!75003 (arrayContainsKey!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!33743 () Unit!2169)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3908 (_ BitVec 32) (_ BitVec 32)) Unit!2169)

(assert (=> b!75003 (= lt!33743 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1514 0))(
  ( (Nil!1511) (Cons!1510 (h!2098 (_ BitVec 64)) (t!5096 List!1514)) )
))
(declare-fun arrayNoDuplicates!0 (array!3908 (_ BitVec 32) List!1514) Bool)

(assert (=> b!75003 (arrayNoDuplicates!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) from!355 Nil!1511)))

(declare-fun lt!33751 () Unit!2169)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3908 (_ BitVec 32) (_ BitVec 64) List!1514) Unit!2169)

(assert (=> b!75003 (= lt!33751 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (Cons!1510 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) Nil!1511)))))

(assert (=> b!75003 false))

(declare-fun b!75004 () Bool)

(declare-fun res!39597 () Bool)

(assert (=> b!75004 (=> (not res!39597) (not e!49026))))

(assert (=> b!75004 (= res!39597 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6211 newMap!16)) (_size!400 (v!2549 (underlying!267 thiss!992)))))))

(declare-fun b!75005 () Bool)

(assert (=> b!75005 (= e!49022 (not e!49021))))

(declare-fun res!39590 () Bool)

(assert (=> b!75005 (=> res!39590 e!49021)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!75005 (= res!39590 (not (validMask!0 (mask!6211 (v!2549 (underlying!267 thiss!992))))))))

(declare-fun lt!33746 () ListLongMap!1445)

(declare-fun lt!33749 () tuple2!2156)

(declare-fun lt!33753 () tuple2!2156)

(declare-fun +!101 (ListLongMap!1445 tuple2!2156) ListLongMap!1445)

(assert (=> b!75005 (= (+!101 (+!101 lt!33746 lt!33749) lt!33753) (+!101 (+!101 lt!33746 lt!33753) lt!33749))))

(assert (=> b!75005 (= lt!33753 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))))

(assert (=> b!75005 (= lt!33749 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))))

(declare-fun lt!33750 () Unit!2169)

(declare-fun addCommutativeForDiffKeys!20 (ListLongMap!1445 (_ BitVec 64) V!2955 (_ BitVec 64) V!2955) Unit!2169)

(assert (=> b!75005 (= lt!33750 (addCommutativeForDiffKeys!20 lt!33746 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!65 (array!3908 array!3910 (_ BitVec 32) (_ BitVec 32) V!2955 V!2955 (_ BitVec 32) Int) ListLongMap!1445)

(assert (=> b!75005 (= lt!33746 (getCurrentListMapNoExtraKeys!65 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (_values!2217 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992))) (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) (minValue!2134 (v!2549 (underlying!267 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992)))))))

(declare-fun b!75006 () Bool)

(assert (=> b!75006 (= e!49017 tp_is_empty!2481)))

(declare-fun b!75007 () Bool)

(assert (=> b!75007 (= e!49024 tp_is_empty!2481)))

(declare-fun b!75008 () Bool)

(declare-fun res!39595 () Bool)

(assert (=> b!75008 (=> (not res!39595) (not e!49026))))

(declare-fun valid!297 (LongMapFixedSize!702) Bool)

(assert (=> b!75008 (= res!39595 (valid!297 newMap!16))))

(declare-fun b!75009 () Bool)

(assert (=> b!75009 (= e!49025 tp_is_empty!2481)))

(declare-fun b!75010 () Bool)

(assert (=> b!75010 (= e!49031 tp_is_empty!2481)))

(declare-fun mapIsEmpty!3198 () Bool)

(assert (=> mapIsEmpty!3198 mapRes!3198))

(assert (= (and start!9928 res!39594) b!74994))

(assert (= (and b!74994 res!39589) b!75008))

(assert (= (and b!75008 res!39595) b!75004))

(assert (= (and b!75004 res!39597) b!74998))

(assert (= (and b!74998 res!39591) b!75001))

(assert (= (and b!75001 res!39592) b!74996))

(assert (= (and b!74996 c!11343) b!75003))

(assert (= (and b!74996 (not c!11343)) b!74993))

(assert (= (and b!74996 res!39596) b!75005))

(assert (= (and b!75005 (not res!39590)) b!74990))

(assert (= (and b!74990 (not res!39593)) b!74992))

(assert (= (and b!75002 condMapEmpty!3197) mapIsEmpty!3198))

(assert (= (and b!75002 (not condMapEmpty!3197)) mapNonEmpty!3198))

(get-info :version)

(assert (= (and mapNonEmpty!3198 ((_ is ValueCellFull!897) mapValue!3198)) b!75007))

(assert (= (and b!75002 ((_ is ValueCellFull!897) mapDefault!3198)) b!75009))

(assert (= b!74991 b!75002))

(assert (= b!75000 b!74991))

(assert (= b!74995 b!75000))

(assert (= start!9928 b!74995))

(assert (= (and b!74999 condMapEmpty!3198) mapIsEmpty!3197))

(assert (= (and b!74999 (not condMapEmpty!3198)) mapNonEmpty!3197))

(assert (= (and mapNonEmpty!3197 ((_ is ValueCellFull!897) mapValue!3197)) b!75010))

(assert (= (and b!74999 ((_ is ValueCellFull!897) mapDefault!3197)) b!75006))

(assert (= b!74997 b!74999))

(assert (= start!9928 b!74997))

(declare-fun b_lambda!3383 () Bool)

(assert (=> (not b_lambda!3383) (not b!75001)))

(declare-fun t!5092 () Bool)

(declare-fun tb!1553 () Bool)

(assert (=> (and b!74991 (= (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992)))) t!5092) tb!1553))

(declare-fun result!2711 () Bool)

(assert (=> tb!1553 (= result!2711 tp_is_empty!2481)))

(assert (=> b!75001 t!5092))

(declare-fun b_and!4593 () Bool)

(assert (= b_and!4589 (and (=> t!5092 result!2711) b_and!4593)))

(declare-fun tb!1555 () Bool)

(declare-fun t!5094 () Bool)

(assert (=> (and b!74997 (= (defaultEntry!2234 newMap!16) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992)))) t!5094) tb!1555))

(declare-fun result!2715 () Bool)

(assert (= result!2715 result!2711))

(assert (=> b!75001 t!5094))

(declare-fun b_and!4595 () Bool)

(assert (= b_and!4591 (and (=> t!5094 result!2715) b_and!4595)))

(declare-fun m!74381 () Bool)

(assert (=> b!74997 m!74381))

(declare-fun m!74383 () Bool)

(assert (=> b!74997 m!74383))

(declare-fun m!74385 () Bool)

(assert (=> b!75003 m!74385))

(declare-fun m!74387 () Bool)

(assert (=> b!75003 m!74387))

(declare-fun m!74389 () Bool)

(assert (=> b!75003 m!74389))

(declare-fun m!74391 () Bool)

(assert (=> b!75003 m!74391))

(assert (=> b!75003 m!74389))

(assert (=> b!75003 m!74389))

(declare-fun m!74393 () Bool)

(assert (=> b!75003 m!74393))

(assert (=> b!75003 m!74389))

(declare-fun m!74395 () Bool)

(assert (=> b!75003 m!74395))

(declare-fun m!74397 () Bool)

(assert (=> b!75005 m!74397))

(declare-fun m!74399 () Bool)

(assert (=> b!75005 m!74399))

(declare-fun m!74401 () Bool)

(assert (=> b!75005 m!74401))

(assert (=> b!75005 m!74397))

(assert (=> b!75005 m!74389))

(declare-fun m!74403 () Bool)

(assert (=> b!75005 m!74403))

(declare-fun m!74405 () Bool)

(assert (=> b!75005 m!74405))

(declare-fun m!74407 () Bool)

(assert (=> b!75005 m!74407))

(assert (=> b!75005 m!74389))

(assert (=> b!75005 m!74405))

(declare-fun m!74409 () Bool)

(assert (=> b!75005 m!74409))

(declare-fun m!74411 () Bool)

(assert (=> b!75008 m!74411))

(declare-fun m!74413 () Bool)

(assert (=> b!74991 m!74413))

(declare-fun m!74415 () Bool)

(assert (=> b!74991 m!74415))

(declare-fun m!74417 () Bool)

(assert (=> b!74992 m!74417))

(assert (=> b!74996 m!74389))

(assert (=> b!74996 m!74389))

(declare-fun m!74419 () Bool)

(assert (=> b!74996 m!74419))

(assert (=> b!74996 m!74389))

(declare-fun m!74421 () Bool)

(assert (=> b!74996 m!74421))

(declare-fun m!74423 () Bool)

(assert (=> start!9928 m!74423))

(declare-fun m!74425 () Bool)

(assert (=> mapNonEmpty!3197 m!74425))

(assert (=> b!75001 m!74389))

(declare-fun m!74427 () Bool)

(assert (=> b!75001 m!74427))

(declare-fun m!74429 () Bool)

(assert (=> b!75001 m!74429))

(assert (=> b!75001 m!74427))

(assert (=> b!75001 m!74429))

(declare-fun m!74431 () Bool)

(assert (=> b!75001 m!74431))

(declare-fun m!74433 () Bool)

(assert (=> b!74998 m!74433))

(declare-fun m!74435 () Bool)

(assert (=> b!74998 m!74435))

(declare-fun m!74437 () Bool)

(assert (=> mapNonEmpty!3198 m!74437))

(check-sat b_and!4595 (not b_next!2131) (not b_next!2129) (not b!75005) (not b!74997) b_and!4593 tp_is_empty!2481 (not b!74992) (not b!74998) (not start!9928) (not mapNonEmpty!3197) (not mapNonEmpty!3198) (not b!75001) (not b!75008) (not b!74991) (not b!75003) (not b_lambda!3383) (not b!74996))
(check-sat b_and!4593 b_and!4595 (not b_next!2129) (not b_next!2131))
(get-model)

(declare-fun b_lambda!3387 () Bool)

(assert (= b_lambda!3383 (or (and b!74991 b_free!2129) (and b!74997 b_free!2131 (= (defaultEntry!2234 newMap!16) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))))) b_lambda!3387)))

(check-sat b_and!4595 (not b_next!2131) (not b_next!2129) (not b!74997) b_and!4593 tp_is_empty!2481 (not b!74992) (not b!74998) (not start!9928) (not mapNonEmpty!3197) (not mapNonEmpty!3198) (not b!74996) (not b!75001) (not b!75008) (not b!75005) (not b_lambda!3387) (not b!74991) (not b!75003))
(check-sat b_and!4593 b_and!4595 (not b_next!2129) (not b_next!2131))
(get-model)

(declare-fun d!17815 () Bool)

(assert (=> d!17815 (= (map!1163 newMap!16) (getCurrentListMap!429 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun bs!3223 () Bool)

(assert (= bs!3223 d!17815))

(declare-fun m!74497 () Bool)

(assert (=> bs!3223 m!74497))

(assert (=> b!74998 d!17815))

(declare-fun lt!33835 () ListLongMap!1445)

(declare-fun b!75120 () Bool)

(declare-fun e!49116 () Bool)

(declare-fun apply!76 (ListLongMap!1445 (_ BitVec 64)) V!2955)

(assert (=> b!75120 (= e!49116 (= (apply!76 lt!33835 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1162 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!75120 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2104 (_values!2217 (v!2549 (underlying!267 thiss!992))))))))

(assert (=> b!75120 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))

(declare-fun bm!6649 () Bool)

(declare-fun call!6657 () ListLongMap!1445)

(declare-fun call!6652 () ListLongMap!1445)

(assert (=> bm!6649 (= call!6657 call!6652)))

(declare-fun bm!6650 () Bool)

(declare-fun call!6655 () Bool)

(assert (=> bm!6650 (= call!6655 (contains!732 lt!33835 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!6651 () Bool)

(declare-fun call!6654 () ListLongMap!1445)

(assert (=> bm!6651 (= call!6654 call!6657)))

(declare-fun b!75121 () Bool)

(declare-fun res!39647 () Bool)

(declare-fun e!49117 () Bool)

(assert (=> b!75121 (=> (not res!39647) (not e!49117))))

(declare-fun e!49118 () Bool)

(assert (=> b!75121 (= res!39647 e!49118)))

(declare-fun res!39649 () Bool)

(assert (=> b!75121 (=> res!39649 e!49118)))

(declare-fun e!49115 () Bool)

(assert (=> b!75121 (= res!39649 (not e!49115))))

(declare-fun res!39648 () Bool)

(assert (=> b!75121 (=> (not res!39648) (not e!49115))))

(assert (=> b!75121 (= res!39648 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))

(declare-fun b!75122 () Bool)

(declare-fun e!49123 () ListLongMap!1445)

(declare-fun call!6653 () ListLongMap!1445)

(assert (=> b!75122 (= e!49123 call!6653)))

(declare-fun b!75123 () Bool)

(declare-fun e!49122 () Bool)

(assert (=> b!75123 (= e!49122 (= (apply!76 lt!33835 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2134 (v!2549 (underlying!267 thiss!992)))))))

(declare-fun b!75124 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!75124 (= e!49115 (validKeyInArray!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!75125 () Bool)

(declare-fun e!49112 () Bool)

(assert (=> b!75125 (= e!49112 (validKeyInArray!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!75126 () Bool)

(assert (=> b!75126 (= e!49123 call!6654)))

(declare-fun b!75127 () Bool)

(declare-fun e!49113 () Bool)

(declare-fun e!49120 () Bool)

(assert (=> b!75127 (= e!49113 e!49120)))

(declare-fun res!39643 () Bool)

(declare-fun call!6656 () Bool)

(assert (=> b!75127 (= res!39643 call!6656)))

(assert (=> b!75127 (=> (not res!39643) (not e!49120))))

(declare-fun b!75128 () Bool)

(declare-fun e!49121 () Bool)

(assert (=> b!75128 (= e!49121 (not call!6655))))

(declare-fun b!75129 () Bool)

(assert (=> b!75129 (= e!49121 e!49122)))

(declare-fun res!39645 () Bool)

(assert (=> b!75129 (= res!39645 call!6655)))

(assert (=> b!75129 (=> (not res!39645) (not e!49122))))

(declare-fun b!75130 () Bool)

(assert (=> b!75130 (= e!49118 e!49116)))

(declare-fun res!39651 () Bool)

(assert (=> b!75130 (=> (not res!39651) (not e!49116))))

(assert (=> b!75130 (= res!39651 (contains!732 lt!33835 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!75130 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))

(declare-fun b!75131 () Bool)

(assert (=> b!75131 (= e!49120 (= (apply!76 lt!33835 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))))

(declare-fun b!75132 () Bool)

(assert (=> b!75132 (= e!49117 e!49121)))

(declare-fun c!11359 () Bool)

(assert (=> b!75132 (= c!11359 (not (= (bvand (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!17817 () Bool)

(assert (=> d!17817 e!49117))

(declare-fun res!39644 () Bool)

(assert (=> d!17817 (=> (not res!39644) (not e!49117))))

(assert (=> d!17817 (= res!39644 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))))

(declare-fun lt!33839 () ListLongMap!1445)

(assert (=> d!17817 (= lt!33835 lt!33839)))

(declare-fun lt!33843 () Unit!2169)

(declare-fun e!49114 () Unit!2169)

(assert (=> d!17817 (= lt!33843 e!49114)))

(declare-fun c!11361 () Bool)

(assert (=> d!17817 (= c!11361 e!49112)))

(declare-fun res!39646 () Bool)

(assert (=> d!17817 (=> (not res!39646) (not e!49112))))

(assert (=> d!17817 (= res!39646 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))

(declare-fun e!49124 () ListLongMap!1445)

(assert (=> d!17817 (= lt!33839 e!49124)))

(declare-fun c!11363 () Bool)

(assert (=> d!17817 (= c!11363 (and (not (= (bvand (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!17817 (validMask!0 (mask!6211 (v!2549 (underlying!267 thiss!992))))))

(assert (=> d!17817 (= (getCurrentListMap!429 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (_values!2217 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992))) (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) (minValue!2134 (v!2549 (underlying!267 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992)))) lt!33835)))

(declare-fun b!75133 () Bool)

(declare-fun call!6658 () ListLongMap!1445)

(assert (=> b!75133 (= e!49124 (+!101 call!6658 (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992))))))))

(declare-fun bm!6652 () Bool)

(assert (=> bm!6652 (= call!6653 call!6658)))

(declare-fun bm!6653 () Bool)

(declare-fun c!11360 () Bool)

(assert (=> bm!6653 (= call!6658 (+!101 (ite c!11363 call!6652 (ite c!11360 call!6657 call!6654)) (ite (or c!11363 c!11360) (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(declare-fun bm!6654 () Bool)

(assert (=> bm!6654 (= call!6656 (contains!732 lt!33835 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!75134 () Bool)

(assert (=> b!75134 (= e!49113 (not call!6656))))

(declare-fun b!75135 () Bool)

(declare-fun e!49119 () ListLongMap!1445)

(assert (=> b!75135 (= e!49124 e!49119)))

(assert (=> b!75135 (= c!11360 (and (not (= (bvand (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!75136 () Bool)

(declare-fun c!11362 () Bool)

(assert (=> b!75136 (= c!11362 (and (not (= (bvand (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!75136 (= e!49119 e!49123)))

(declare-fun b!75137 () Bool)

(declare-fun Unit!2173 () Unit!2169)

(assert (=> b!75137 (= e!49114 Unit!2173)))

(declare-fun bm!6655 () Bool)

(assert (=> bm!6655 (= call!6652 (getCurrentListMapNoExtraKeys!65 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (_values!2217 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992))) (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) (minValue!2134 (v!2549 (underlying!267 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992)))))))

(declare-fun b!75138 () Bool)

(declare-fun lt!33854 () Unit!2169)

(assert (=> b!75138 (= e!49114 lt!33854)))

(declare-fun lt!33838 () ListLongMap!1445)

(assert (=> b!75138 (= lt!33838 (getCurrentListMapNoExtraKeys!65 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (_values!2217 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992))) (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) (minValue!2134 (v!2549 (underlying!267 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992)))))))

(declare-fun lt!33845 () (_ BitVec 64))

(assert (=> b!75138 (= lt!33845 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!33849 () (_ BitVec 64))

(assert (=> b!75138 (= lt!33849 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!33846 () Unit!2169)

(declare-fun addStillContains!52 (ListLongMap!1445 (_ BitVec 64) V!2955 (_ BitVec 64)) Unit!2169)

(assert (=> b!75138 (= lt!33846 (addStillContains!52 lt!33838 lt!33845 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) lt!33849))))

(assert (=> b!75138 (contains!732 (+!101 lt!33838 (tuple2!2157 lt!33845 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) lt!33849)))

(declare-fun lt!33853 () Unit!2169)

(assert (=> b!75138 (= lt!33853 lt!33846)))

(declare-fun lt!33855 () ListLongMap!1445)

(assert (=> b!75138 (= lt!33855 (getCurrentListMapNoExtraKeys!65 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (_values!2217 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992))) (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) (minValue!2134 (v!2549 (underlying!267 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992)))))))

(declare-fun lt!33852 () (_ BitVec 64))

(assert (=> b!75138 (= lt!33852 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!33850 () (_ BitVec 64))

(assert (=> b!75138 (= lt!33850 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!33837 () Unit!2169)

(declare-fun addApplyDifferent!52 (ListLongMap!1445 (_ BitVec 64) V!2955 (_ BitVec 64)) Unit!2169)

(assert (=> b!75138 (= lt!33837 (addApplyDifferent!52 lt!33855 lt!33852 (minValue!2134 (v!2549 (underlying!267 thiss!992))) lt!33850))))

(assert (=> b!75138 (= (apply!76 (+!101 lt!33855 (tuple2!2157 lt!33852 (minValue!2134 (v!2549 (underlying!267 thiss!992))))) lt!33850) (apply!76 lt!33855 lt!33850))))

(declare-fun lt!33856 () Unit!2169)

(assert (=> b!75138 (= lt!33856 lt!33837)))

(declare-fun lt!33842 () ListLongMap!1445)

(assert (=> b!75138 (= lt!33842 (getCurrentListMapNoExtraKeys!65 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (_values!2217 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992))) (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) (minValue!2134 (v!2549 (underlying!267 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992)))))))

(declare-fun lt!33848 () (_ BitVec 64))

(assert (=> b!75138 (= lt!33848 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!33841 () (_ BitVec 64))

(assert (=> b!75138 (= lt!33841 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!33836 () Unit!2169)

(assert (=> b!75138 (= lt!33836 (addApplyDifferent!52 lt!33842 lt!33848 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) lt!33841))))

(assert (=> b!75138 (= (apply!76 (+!101 lt!33842 (tuple2!2157 lt!33848 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) lt!33841) (apply!76 lt!33842 lt!33841))))

(declare-fun lt!33844 () Unit!2169)

(assert (=> b!75138 (= lt!33844 lt!33836)))

(declare-fun lt!33851 () ListLongMap!1445)

(assert (=> b!75138 (= lt!33851 (getCurrentListMapNoExtraKeys!65 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (_values!2217 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992))) (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) (minValue!2134 (v!2549 (underlying!267 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992)))))))

(declare-fun lt!33847 () (_ BitVec 64))

(assert (=> b!75138 (= lt!33847 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!33840 () (_ BitVec 64))

(assert (=> b!75138 (= lt!33840 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!75138 (= lt!33854 (addApplyDifferent!52 lt!33851 lt!33847 (minValue!2134 (v!2549 (underlying!267 thiss!992))) lt!33840))))

(assert (=> b!75138 (= (apply!76 (+!101 lt!33851 (tuple2!2157 lt!33847 (minValue!2134 (v!2549 (underlying!267 thiss!992))))) lt!33840) (apply!76 lt!33851 lt!33840))))

(declare-fun b!75139 () Bool)

(declare-fun res!39650 () Bool)

(assert (=> b!75139 (=> (not res!39650) (not e!49117))))

(assert (=> b!75139 (= res!39650 e!49113)))

(declare-fun c!11364 () Bool)

(assert (=> b!75139 (= c!11364 (not (= (bvand (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!75140 () Bool)

(assert (=> b!75140 (= e!49119 call!6653)))

(assert (= (and d!17817 c!11363) b!75133))

(assert (= (and d!17817 (not c!11363)) b!75135))

(assert (= (and b!75135 c!11360) b!75140))

(assert (= (and b!75135 (not c!11360)) b!75136))

(assert (= (and b!75136 c!11362) b!75122))

(assert (= (and b!75136 (not c!11362)) b!75126))

(assert (= (or b!75122 b!75126) bm!6651))

(assert (= (or b!75140 bm!6651) bm!6649))

(assert (= (or b!75140 b!75122) bm!6652))

(assert (= (or b!75133 bm!6649) bm!6655))

(assert (= (or b!75133 bm!6652) bm!6653))

(assert (= (and d!17817 res!39646) b!75125))

(assert (= (and d!17817 c!11361) b!75138))

(assert (= (and d!17817 (not c!11361)) b!75137))

(assert (= (and d!17817 res!39644) b!75121))

(assert (= (and b!75121 res!39648) b!75124))

(assert (= (and b!75121 (not res!39649)) b!75130))

(assert (= (and b!75130 res!39651) b!75120))

(assert (= (and b!75121 res!39647) b!75139))

(assert (= (and b!75139 c!11364) b!75127))

(assert (= (and b!75139 (not c!11364)) b!75134))

(assert (= (and b!75127 res!39643) b!75131))

(assert (= (or b!75127 b!75134) bm!6654))

(assert (= (and b!75139 res!39650) b!75132))

(assert (= (and b!75132 c!11359) b!75129))

(assert (= (and b!75132 (not c!11359)) b!75128))

(assert (= (and b!75129 res!39645) b!75123))

(assert (= (or b!75129 b!75128) bm!6650))

(declare-fun b_lambda!3389 () Bool)

(assert (=> (not b_lambda!3389) (not b!75120)))

(assert (=> b!75120 t!5092))

(declare-fun b_and!4605 () Bool)

(assert (= b_and!4593 (and (=> t!5092 result!2711) b_and!4605)))

(assert (=> b!75120 t!5094))

(declare-fun b_and!4607 () Bool)

(assert (= b_and!4595 (and (=> t!5094 result!2715) b_and!4607)))

(declare-fun m!74499 () Bool)

(assert (=> b!75130 m!74499))

(assert (=> b!75130 m!74499))

(declare-fun m!74501 () Bool)

(assert (=> b!75130 m!74501))

(declare-fun m!74503 () Bool)

(assert (=> b!75123 m!74503))

(assert (=> b!75125 m!74499))

(assert (=> b!75125 m!74499))

(declare-fun m!74505 () Bool)

(assert (=> b!75125 m!74505))

(declare-fun m!74507 () Bool)

(assert (=> bm!6650 m!74507))

(assert (=> b!75120 m!74429))

(assert (=> b!75120 m!74499))

(declare-fun m!74509 () Bool)

(assert (=> b!75120 m!74509))

(assert (=> b!75120 m!74429))

(declare-fun m!74511 () Bool)

(assert (=> b!75120 m!74511))

(assert (=> b!75120 m!74499))

(declare-fun m!74513 () Bool)

(assert (=> b!75120 m!74513))

(assert (=> b!75120 m!74509))

(declare-fun m!74515 () Bool)

(assert (=> b!75133 m!74515))

(assert (=> b!75124 m!74499))

(assert (=> b!75124 m!74499))

(assert (=> b!75124 m!74505))

(declare-fun m!74517 () Bool)

(assert (=> b!75138 m!74517))

(assert (=> b!75138 m!74407))

(declare-fun m!74519 () Bool)

(assert (=> b!75138 m!74519))

(declare-fun m!74521 () Bool)

(assert (=> b!75138 m!74521))

(declare-fun m!74523 () Bool)

(assert (=> b!75138 m!74523))

(declare-fun m!74525 () Bool)

(assert (=> b!75138 m!74525))

(declare-fun m!74527 () Bool)

(assert (=> b!75138 m!74527))

(assert (=> b!75138 m!74499))

(declare-fun m!74529 () Bool)

(assert (=> b!75138 m!74529))

(declare-fun m!74531 () Bool)

(assert (=> b!75138 m!74531))

(assert (=> b!75138 m!74523))

(declare-fun m!74533 () Bool)

(assert (=> b!75138 m!74533))

(declare-fun m!74535 () Bool)

(assert (=> b!75138 m!74535))

(declare-fun m!74537 () Bool)

(assert (=> b!75138 m!74537))

(declare-fun m!74539 () Bool)

(assert (=> b!75138 m!74539))

(assert (=> b!75138 m!74519))

(assert (=> b!75138 m!74537))

(declare-fun m!74541 () Bool)

(assert (=> b!75138 m!74541))

(assert (=> b!75138 m!74535))

(declare-fun m!74543 () Bool)

(assert (=> b!75138 m!74543))

(declare-fun m!74545 () Bool)

(assert (=> b!75138 m!74545))

(assert (=> d!17817 m!74401))

(assert (=> bm!6655 m!74407))

(declare-fun m!74547 () Bool)

(assert (=> bm!6653 m!74547))

(declare-fun m!74549 () Bool)

(assert (=> b!75131 m!74549))

(declare-fun m!74551 () Bool)

(assert (=> bm!6654 m!74551))

(assert (=> b!74998 d!17817))

(declare-fun d!17819 () Bool)

(assert (=> d!17819 (= (array_inv!1107 (_keys!3890 newMap!16)) (bvsge (size!2103 (_keys!3890 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!74997 d!17819))

(declare-fun d!17821 () Bool)

(assert (=> d!17821 (= (array_inv!1108 (_values!2217 newMap!16)) (bvsge (size!2104 (_values!2217 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!74997 d!17821))

(declare-fun d!17823 () Bool)

(declare-fun e!49129 () Bool)

(assert (=> d!17823 e!49129))

(declare-fun res!39654 () Bool)

(assert (=> d!17823 (=> res!39654 e!49129)))

(declare-fun lt!33865 () Bool)

(assert (=> d!17823 (= res!39654 (not lt!33865))))

(declare-fun lt!33866 () Bool)

(assert (=> d!17823 (= lt!33865 lt!33866)))

(declare-fun lt!33867 () Unit!2169)

(declare-fun e!49130 () Unit!2169)

(assert (=> d!17823 (= lt!33867 e!49130)))

(declare-fun c!11367 () Bool)

(assert (=> d!17823 (= c!11367 lt!33866)))

(declare-fun containsKey!137 (List!1513 (_ BitVec 64)) Bool)

(assert (=> d!17823 (= lt!33866 (containsKey!137 (toList!738 lt!33747) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(assert (=> d!17823 (= (contains!732 lt!33747 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)) lt!33865)))

(declare-fun b!75147 () Bool)

(declare-fun lt!33868 () Unit!2169)

(assert (=> b!75147 (= e!49130 lt!33868)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!86 (List!1513 (_ BitVec 64)) Unit!2169)

(assert (=> b!75147 (= lt!33868 (lemmaContainsKeyImpliesGetValueByKeyDefined!86 (toList!738 lt!33747) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(declare-datatypes ((Option!139 0))(
  ( (Some!138 (v!2553 V!2955)) (None!137) )
))
(declare-fun isDefined!87 (Option!139) Bool)

(declare-fun getValueByKey!133 (List!1513 (_ BitVec 64)) Option!139)

(assert (=> b!75147 (isDefined!87 (getValueByKey!133 (toList!738 lt!33747) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(declare-fun b!75148 () Bool)

(declare-fun Unit!2174 () Unit!2169)

(assert (=> b!75148 (= e!49130 Unit!2174)))

(declare-fun b!75149 () Bool)

(assert (=> b!75149 (= e!49129 (isDefined!87 (getValueByKey!133 (toList!738 lt!33747) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355))))))

(assert (= (and d!17823 c!11367) b!75147))

(assert (= (and d!17823 (not c!11367)) b!75148))

(assert (= (and d!17823 (not res!39654)) b!75149))

(assert (=> d!17823 m!74389))

(declare-fun m!74553 () Bool)

(assert (=> d!17823 m!74553))

(assert (=> b!75147 m!74389))

(declare-fun m!74555 () Bool)

(assert (=> b!75147 m!74555))

(assert (=> b!75147 m!74389))

(declare-fun m!74557 () Bool)

(assert (=> b!75147 m!74557))

(assert (=> b!75147 m!74557))

(declare-fun m!74559 () Bool)

(assert (=> b!75147 m!74559))

(assert (=> b!75149 m!74389))

(assert (=> b!75149 m!74557))

(assert (=> b!75149 m!74557))

(assert (=> b!75149 m!74559))

(assert (=> b!74996 d!17823))

(declare-fun b!75234 () Bool)

(declare-fun e!49178 () Bool)

(declare-fun e!49185 () Bool)

(assert (=> b!75234 (= e!49178 e!49185)))

(declare-fun call!6726 () ListLongMap!1445)

(declare-fun res!39683 () Bool)

(assert (=> b!75234 (= res!39683 (contains!732 call!6726 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(assert (=> b!75234 (=> (not res!39683) (not e!49185))))

(declare-fun call!6724 () ListLongMap!1445)

(declare-fun lt!33940 () (_ BitVec 32))

(declare-fun c!11397 () Bool)

(declare-fun lt!33943 () array!3910)

(declare-fun c!11403 () Bool)

(declare-fun bm!6704 () Bool)

(assert (=> bm!6704 (= call!6724 (getCurrentListMap!429 (_keys!3890 newMap!16) (ite c!11403 (_values!2217 newMap!16) lt!33943) (mask!6211 newMap!16) (ite (and c!11403 c!11397) lt!33940 (extraKeys!2089 newMap!16)) (ite (and c!11403 c!11397) lt!33745 (zeroValue!2134 newMap!16)) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun b!75235 () Bool)

(declare-fun res!39684 () Bool)

(declare-datatypes ((SeekEntryResult!247 0))(
  ( (MissingZero!247 (index!3120 (_ BitVec 32))) (Found!247 (index!3121 (_ BitVec 32))) (Intermediate!247 (undefined!1059 Bool) (index!3122 (_ BitVec 32)) (x!11307 (_ BitVec 32))) (Undefined!247) (MissingVacant!247 (index!3123 (_ BitVec 32))) )
))
(declare-fun lt!33942 () SeekEntryResult!247)

(assert (=> b!75235 (= res!39684 (= (select (arr!1864 (_keys!3890 newMap!16)) (index!3123 lt!33942)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!49179 () Bool)

(assert (=> b!75235 (=> (not res!39684) (not e!49179))))

(declare-fun bm!6705 () Bool)

(declare-fun call!6708 () Bool)

(declare-fun call!6719 () Bool)

(assert (=> bm!6705 (= call!6708 call!6719)))

(declare-fun b!75236 () Bool)

(declare-fun e!49180 () tuple2!2154)

(declare-fun e!49176 () tuple2!2154)

(assert (=> b!75236 (= e!49180 e!49176)))

(declare-fun lt!33929 () SeekEntryResult!247)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3908 (_ BitVec 32)) SeekEntryResult!247)

(assert (=> b!75236 (= lt!33929 (seekEntryOrOpen!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (_keys!3890 newMap!16) (mask!6211 newMap!16)))))

(declare-fun c!11405 () Bool)

(assert (=> b!75236 (= c!11405 ((_ is Undefined!247) lt!33929))))

(declare-fun b!75237 () Bool)

(declare-fun e!49190 () Bool)

(assert (=> b!75237 (= e!49190 e!49178)))

(declare-fun c!11401 () Bool)

(declare-fun lt!33935 () tuple2!2154)

(assert (=> b!75237 (= c!11401 (_1!1087 lt!33935))))

(declare-fun b!75238 () Bool)

(declare-fun lt!33924 () tuple2!2154)

(declare-fun call!6711 () tuple2!2154)

(assert (=> b!75238 (= lt!33924 call!6711)))

(declare-fun e!49195 () tuple2!2154)

(assert (=> b!75238 (= e!49195 (tuple2!2155 (_1!1087 lt!33924) (_2!1087 lt!33924)))))

(declare-fun b!75239 () Bool)

(declare-fun res!39693 () Bool)

(declare-fun e!49187 () Bool)

(assert (=> b!75239 (=> (not res!39693) (not e!49187))))

(declare-fun lt!33947 () SeekEntryResult!247)

(assert (=> b!75239 (= res!39693 (= (select (arr!1864 (_keys!3890 newMap!16)) (index!3120 lt!33947)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!6706 () Bool)

(declare-fun c!11407 () Bool)

(assert (=> bm!6706 (= c!11407 c!11405)))

(declare-fun call!6725 () Bool)

(declare-fun e!49184 () ListLongMap!1445)

(assert (=> bm!6706 (= call!6725 (contains!732 e!49184 (ite c!11405 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (select (arr!1864 (_keys!3890 newMap!16)) (index!3121 lt!33929)))))))

(declare-fun b!75240 () Bool)

(declare-fun e!49192 () Bool)

(assert (=> b!75240 (= e!49192 e!49179)))

(declare-fun res!39688 () Bool)

(declare-fun call!6716 () Bool)

(assert (=> b!75240 (= res!39688 call!6716)))

(assert (=> b!75240 (=> (not res!39688) (not e!49179))))

(declare-fun b!75241 () Bool)

(declare-fun res!39686 () Bool)

(declare-fun e!49183 () Bool)

(assert (=> b!75241 (=> (not res!39686) (not e!49183))))

(assert (=> b!75241 (= res!39686 call!6716)))

(declare-fun e!49186 () Bool)

(assert (=> b!75241 (= e!49186 e!49183)))

(declare-fun b!75242 () Bool)

(declare-fun e!49194 () tuple2!2154)

(assert (=> b!75242 (= e!49180 e!49194)))

(assert (=> b!75242 (= c!11397 (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!75243 () Bool)

(declare-fun call!6730 () ListLongMap!1445)

(assert (=> b!75243 (= e!49178 (= call!6726 call!6730))))

(declare-fun b!75244 () Bool)

(declare-fun call!6729 () ListLongMap!1445)

(assert (=> b!75244 (= e!49184 call!6729)))

(declare-fun b!75245 () Bool)

(assert (=> b!75245 (= e!49192 ((_ is Undefined!247) lt!33942))))

(declare-fun b!75246 () Bool)

(declare-fun call!6722 () Bool)

(assert (=> b!75246 (= e!49187 (not call!6722))))

(declare-fun b!75247 () Bool)

(declare-fun c!11402 () Bool)

(assert (=> b!75247 (= c!11402 ((_ is MissingVacant!247) lt!33929))))

(declare-fun e!49196 () tuple2!2154)

(assert (=> b!75247 (= e!49176 e!49196)))

(declare-fun b!75248 () Bool)

(declare-fun e!49189 () Unit!2169)

(declare-fun Unit!2175 () Unit!2169)

(assert (=> b!75248 (= e!49189 Unit!2175)))

(declare-fun lt!33927 () Unit!2169)

(declare-fun call!6717 () Unit!2169)

(assert (=> b!75248 (= lt!33927 call!6717)))

(declare-fun call!6715 () SeekEntryResult!247)

(assert (=> b!75248 (= lt!33947 call!6715)))

(declare-fun c!11404 () Bool)

(assert (=> b!75248 (= c!11404 ((_ is MissingZero!247) lt!33947))))

(declare-fun e!49177 () Bool)

(assert (=> b!75248 e!49177))

(declare-fun lt!33945 () Unit!2169)

(assert (=> b!75248 (= lt!33945 lt!33927)))

(assert (=> b!75248 false))

(declare-fun b!75249 () Bool)

(declare-fun res!39689 () Bool)

(declare-fun call!6728 () Bool)

(assert (=> b!75249 (= res!39689 call!6728)))

(declare-fun e!49191 () Bool)

(assert (=> b!75249 (=> (not res!39689) (not e!49191))))

(declare-fun b!75250 () Bool)

(assert (=> b!75250 (= e!49185 (= call!6726 (+!101 call!6730 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))))))

(declare-fun b!75251 () Bool)

(declare-fun res!39695 () Bool)

(assert (=> b!75251 (=> (not res!39695) (not e!49183))))

(assert (=> b!75251 (= res!39695 (= (select (arr!1864 (_keys!3890 newMap!16)) (index!3120 lt!33942)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!6707 () Bool)

(declare-fun call!6727 () Bool)

(declare-fun call!6721 () Bool)

(assert (=> bm!6707 (= call!6727 call!6721)))

(declare-fun bm!6708 () Bool)

(assert (=> bm!6708 (= call!6716 call!6728)))

(declare-fun b!75252 () Bool)

(declare-fun e!49188 () Bool)

(declare-fun e!49175 () Bool)

(assert (=> b!75252 (= e!49188 e!49175)))

(declare-fun res!39696 () Bool)

(assert (=> b!75252 (= res!39696 call!6727)))

(assert (=> b!75252 (=> (not res!39696) (not e!49175))))

(declare-fun bm!6709 () Bool)

(assert (=> bm!6709 (= call!6726 (map!1163 (_2!1087 lt!33935)))))

(declare-fun lt!33948 () SeekEntryResult!247)

(declare-fun b!75253 () Bool)

(assert (=> b!75253 (= e!49191 (= (select (arr!1864 (_keys!3890 newMap!16)) (index!3121 lt!33948)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(declare-fun e!49181 () ListLongMap!1445)

(declare-fun call!6710 () ListLongMap!1445)

(declare-fun bm!6710 () Bool)

(assert (=> bm!6710 (= call!6710 (+!101 e!49181 (ite c!11403 (ite c!11397 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 lt!33745) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 lt!33745)) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))))))

(declare-fun c!11408 () Bool)

(assert (=> bm!6710 (= c!11408 c!11403)))

(declare-fun bm!6711 () Bool)

(declare-fun updateHelperNewKey!25 (LongMapFixedSize!702 (_ BitVec 64) V!2955 (_ BitVec 32)) tuple2!2154)

(assert (=> bm!6711 (= call!6711 (updateHelperNewKey!25 newMap!16 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745 (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929))))))

(declare-fun b!75254 () Bool)

(assert (=> b!75254 (= e!49181 (getCurrentListMap!429 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun d!17825 () Bool)

(assert (=> d!17825 e!49190))

(declare-fun res!39685 () Bool)

(assert (=> d!17825 (=> (not res!39685) (not e!49190))))

(assert (=> d!17825 (= res!39685 (valid!297 (_2!1087 lt!33935)))))

(assert (=> d!17825 (= lt!33935 e!49180)))

(assert (=> d!17825 (= c!11403 (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (bvneg (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355))))))

(assert (=> d!17825 (valid!297 newMap!16)))

(assert (=> d!17825 (= (update!104 newMap!16 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745) lt!33935)))

(declare-fun b!75255 () Bool)

(assert (=> b!75255 (= e!49183 (not call!6708))))

(declare-fun bm!6712 () Bool)

(declare-fun call!6707 () SeekEntryResult!247)

(assert (=> bm!6712 (= call!6715 call!6707)))

(declare-fun bm!6713 () Bool)

(declare-fun call!6709 () ListLongMap!1445)

(assert (=> bm!6713 (= call!6729 call!6709)))

(declare-fun b!75256 () Bool)

(declare-fun res!39692 () Bool)

(assert (=> b!75256 (=> (not res!39692) (not e!49187))))

(assert (=> b!75256 (= res!39692 call!6727)))

(assert (=> b!75256 (= e!49177 e!49187)))

(declare-fun b!75257 () Bool)

(declare-fun lt!33939 () Unit!2169)

(assert (=> b!75257 (= e!49189 lt!33939)))

(declare-fun call!6712 () Unit!2169)

(assert (=> b!75257 (= lt!33939 call!6712)))

(declare-fun lt!33944 () SeekEntryResult!247)

(assert (=> b!75257 (= lt!33944 call!6715)))

(declare-fun res!39690 () Bool)

(assert (=> b!75257 (= res!39690 ((_ is Found!247) lt!33944))))

(declare-fun e!49182 () Bool)

(assert (=> b!75257 (=> (not res!39690) (not e!49182))))

(assert (=> b!75257 e!49182))

(declare-fun bm!6714 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!25 (array!3908 array!3910 (_ BitVec 32) (_ BitVec 32) V!2955 V!2955 (_ BitVec 64) Int) Unit!2169)

(assert (=> bm!6714 (= call!6717 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!25 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (defaultEntry!2234 newMap!16)))))

(declare-fun bm!6715 () Bool)

(assert (=> bm!6715 (= call!6707 (seekEntryOrOpen!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (_keys!3890 newMap!16) (mask!6211 newMap!16)))))

(declare-fun bm!6716 () Bool)

(assert (=> bm!6716 (= call!6730 (map!1163 newMap!16))))

(declare-fun b!75258 () Bool)

(assert (=> b!75258 (= e!49184 call!6724)))

(declare-fun bm!6717 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!25 (array!3908 array!3910 (_ BitVec 32) (_ BitVec 32) V!2955 V!2955 (_ BitVec 64) Int) Unit!2169)

(assert (=> bm!6717 (= call!6712 (lemmaInListMapThenSeekEntryOrOpenFindsIt!25 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (defaultEntry!2234 newMap!16)))))

(declare-fun b!75259 () Bool)

(declare-fun lt!33938 () Unit!2169)

(declare-fun lt!33923 () Unit!2169)

(assert (=> b!75259 (= lt!33938 lt!33923)))

(assert (=> b!75259 call!6725))

(declare-fun lemmaValidKeyInArrayIsInListMap!83 (array!3908 array!3910 (_ BitVec 32) (_ BitVec 32) V!2955 V!2955 (_ BitVec 32) Int) Unit!2169)

(assert (=> b!75259 (= lt!33923 (lemmaValidKeyInArrayIsInListMap!83 (_keys!3890 newMap!16) lt!33943 (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) (index!3121 lt!33929) (defaultEntry!2234 newMap!16)))))

(assert (=> b!75259 (= lt!33943 (array!3911 (store (arr!1865 (_values!2217 newMap!16)) (index!3121 lt!33929) (ValueCellFull!897 lt!33745)) (size!2104 (_values!2217 newMap!16))))))

(declare-fun lt!33934 () Unit!2169)

(declare-fun lt!33930 () Unit!2169)

(assert (=> b!75259 (= lt!33934 lt!33930)))

(assert (=> b!75259 (= call!6710 call!6729)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!25 (array!3908 array!3910 (_ BitVec 32) (_ BitVec 32) V!2955 V!2955 (_ BitVec 32) (_ BitVec 64) V!2955 Int) Unit!2169)

(assert (=> b!75259 (= lt!33930 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!25 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) (index!3121 lt!33929) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745 (defaultEntry!2234 newMap!16)))))

(declare-fun lt!33949 () Unit!2169)

(assert (=> b!75259 (= lt!33949 e!49189)))

(declare-fun c!11400 () Bool)

(assert (=> b!75259 (= c!11400 (contains!732 (getCurrentListMap!429 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(assert (=> b!75259 (= e!49195 (tuple2!2155 true (LongMapFixedSize!703 (defaultEntry!2234 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) (_size!400 newMap!16) (_keys!3890 newMap!16) (array!3911 (store (arr!1865 (_values!2217 newMap!16)) (index!3121 lt!33929) (ValueCellFull!897 lt!33745)) (size!2104 (_values!2217 newMap!16))) (_vacant!400 newMap!16))))))

(declare-fun b!75260 () Bool)

(assert (=> b!75260 (= e!49175 (not call!6722))))

(declare-fun b!75261 () Bool)

(declare-fun lt!33937 () Unit!2169)

(declare-fun e!49193 () Unit!2169)

(assert (=> b!75261 (= lt!33937 e!49193)))

(declare-fun c!11396 () Bool)

(assert (=> b!75261 (= c!11396 call!6725)))

(assert (=> b!75261 (= e!49176 (tuple2!2155 false newMap!16))))

(declare-fun call!6714 () ListLongMap!1445)

(declare-fun call!6713 () ListLongMap!1445)

(declare-fun b!75262 () Bool)

(assert (=> b!75262 (= e!49181 (ite c!11397 call!6714 call!6713))))

(declare-fun b!75263 () Bool)

(assert (=> b!75263 (= e!49182 (= (select (arr!1864 (_keys!3890 newMap!16)) (index!3121 lt!33944)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(declare-fun bm!6718 () Bool)

(declare-fun lt!33932 () (_ BitVec 32))

(assert (=> bm!6718 (= call!6709 (getCurrentListMap!429 (_keys!3890 newMap!16) (ite (or c!11403 c!11405) (_values!2217 newMap!16) (array!3911 (store (arr!1865 (_values!2217 newMap!16)) (index!3121 lt!33929) (ValueCellFull!897 lt!33745)) (size!2104 (_values!2217 newMap!16)))) (mask!6211 newMap!16) (ite c!11403 (ite c!11397 (extraKeys!2089 newMap!16) lt!33932) (extraKeys!2089 newMap!16)) (zeroValue!2134 newMap!16) (ite c!11403 (ite c!11397 (minValue!2134 newMap!16) lt!33745) (minValue!2134 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun bm!6719 () Bool)

(assert (=> bm!6719 (= call!6722 call!6719)))

(declare-fun b!75264 () Bool)

(assert (=> b!75264 (= e!49196 e!49195)))

(declare-fun c!11399 () Bool)

(assert (=> b!75264 (= c!11399 ((_ is MissingZero!247) lt!33929))))

(declare-fun bm!6720 () Bool)

(declare-fun call!6723 () Bool)

(assert (=> bm!6720 (= call!6721 call!6723)))

(declare-fun b!75265 () Bool)

(declare-fun lt!33933 () Unit!2169)

(declare-fun lt!33926 () Unit!2169)

(assert (=> b!75265 (= lt!33933 lt!33926)))

(declare-fun call!6718 () ListLongMap!1445)

(assert (=> b!75265 (= call!6718 call!6714)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!25 (array!3908 array!3910 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2955 V!2955 V!2955 Int) Unit!2169)

(assert (=> b!75265 (= lt!33926 (lemmaChangeLongMinValueKeyThenAddPairToListMap!25 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) lt!33932 (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) lt!33745 (defaultEntry!2234 newMap!16)))))

(assert (=> b!75265 (= lt!33932 (bvor (extraKeys!2089 newMap!16) #b00000000000000000000000000000010))))

(assert (=> b!75265 (= e!49194 (tuple2!2155 true (LongMapFixedSize!703 (defaultEntry!2234 newMap!16) (mask!6211 newMap!16) (bvor (extraKeys!2089 newMap!16) #b00000000000000000000000000000010) (zeroValue!2134 newMap!16) lt!33745 (_size!400 newMap!16) (_keys!3890 newMap!16) (_values!2217 newMap!16) (_vacant!400 newMap!16))))))

(declare-fun bm!6721 () Bool)

(assert (=> bm!6721 (= call!6718 call!6710)))

(declare-fun b!75266 () Bool)

(assert (=> b!75266 (= e!49188 ((_ is Undefined!247) lt!33947))))

(declare-fun b!75267 () Bool)

(assert (=> b!75267 (= e!49179 (not call!6708))))

(declare-fun bm!6722 () Bool)

(assert (=> bm!6722 (= call!6713 call!6724)))

(declare-fun b!75268 () Bool)

(declare-fun Unit!2176 () Unit!2169)

(assert (=> b!75268 (= e!49193 Unit!2176)))

(declare-fun lt!33931 () Unit!2169)

(assert (=> b!75268 (= lt!33931 call!6712)))

(declare-fun call!6720 () SeekEntryResult!247)

(assert (=> b!75268 (= lt!33948 call!6720)))

(declare-fun res!39694 () Bool)

(assert (=> b!75268 (= res!39694 ((_ is Found!247) lt!33948))))

(assert (=> b!75268 (=> (not res!39694) (not e!49191))))

(assert (=> b!75268 e!49191))

(declare-fun lt!33941 () Unit!2169)

(assert (=> b!75268 (= lt!33941 lt!33931)))

(assert (=> b!75268 false))

(declare-fun c!11398 () Bool)

(declare-fun bm!6723 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!6723 (= call!6723 (inRange!0 (ite c!11405 (ite c!11396 (index!3121 lt!33948) (ite c!11398 (index!3120 lt!33942) (index!3123 lt!33942))) (ite c!11400 (index!3121 lt!33944) (ite c!11404 (index!3120 lt!33947) (index!3123 lt!33947)))) (mask!6211 newMap!16)))))

(declare-fun b!75269 () Bool)

(declare-fun res!39687 () Bool)

(assert (=> b!75269 (= res!39687 (= (select (arr!1864 (_keys!3890 newMap!16)) (index!3123 lt!33947)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!75269 (=> (not res!39687) (not e!49175))))

(declare-fun b!75270 () Bool)

(declare-fun c!11409 () Bool)

(assert (=> b!75270 (= c!11409 ((_ is MissingVacant!247) lt!33947))))

(assert (=> b!75270 (= e!49177 e!49188)))

(declare-fun b!75271 () Bool)

(declare-fun c!11406 () Bool)

(assert (=> b!75271 (= c!11406 ((_ is MissingVacant!247) lt!33942))))

(assert (=> b!75271 (= e!49186 e!49192)))

(declare-fun bm!6724 () Bool)

(assert (=> bm!6724 (= call!6720 call!6707)))

(declare-fun b!75272 () Bool)

(declare-fun lt!33928 () tuple2!2154)

(assert (=> b!75272 (= e!49196 (tuple2!2155 (_1!1087 lt!33928) (_2!1087 lt!33928)))))

(assert (=> b!75272 (= lt!33928 call!6711)))

(declare-fun b!75273 () Bool)

(declare-fun lt!33936 () Unit!2169)

(assert (=> b!75273 (= e!49193 lt!33936)))

(assert (=> b!75273 (= lt!33936 call!6717)))

(assert (=> b!75273 (= lt!33942 call!6720)))

(assert (=> b!75273 (= c!11398 ((_ is MissingZero!247) lt!33942))))

(assert (=> b!75273 e!49186))

(declare-fun bm!6725 () Bool)

(assert (=> bm!6725 (= call!6714 call!6709)))

(declare-fun bm!6726 () Bool)

(assert (=> bm!6726 (= call!6719 (arrayContainsKey!0 (_keys!3890 newMap!16) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun bm!6727 () Bool)

(assert (=> bm!6727 (= call!6728 call!6723)))

(declare-fun b!75274 () Bool)

(declare-fun res!39691 () Bool)

(assert (=> b!75274 (= res!39691 call!6721)))

(assert (=> b!75274 (=> (not res!39691) (not e!49182))))

(declare-fun b!75275 () Bool)

(declare-fun lt!33925 () Unit!2169)

(declare-fun lt!33946 () Unit!2169)

(assert (=> b!75275 (= lt!33925 lt!33946)))

(assert (=> b!75275 (= call!6718 call!6713)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!25 (array!3908 array!3910 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2955 V!2955 V!2955 Int) Unit!2169)

(assert (=> b!75275 (= lt!33946 (lemmaChangeZeroKeyThenAddPairToListMap!25 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) lt!33940 (zeroValue!2134 newMap!16) lt!33745 (minValue!2134 newMap!16) (defaultEntry!2234 newMap!16)))))

(assert (=> b!75275 (= lt!33940 (bvor (extraKeys!2089 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!75275 (= e!49194 (tuple2!2155 true (LongMapFixedSize!703 (defaultEntry!2234 newMap!16) (mask!6211 newMap!16) (bvor (extraKeys!2089 newMap!16) #b00000000000000000000000000000001) lt!33745 (minValue!2134 newMap!16) (_size!400 newMap!16) (_keys!3890 newMap!16) (_values!2217 newMap!16) (_vacant!400 newMap!16))))))

(assert (= (and d!17825 c!11403) b!75242))

(assert (= (and d!17825 (not c!11403)) b!75236))

(assert (= (and b!75242 c!11397) b!75275))

(assert (= (and b!75242 (not c!11397)) b!75265))

(assert (= (or b!75275 b!75265) bm!6725))

(assert (= (or b!75275 b!75265) bm!6722))

(assert (= (or b!75275 b!75265) bm!6721))

(assert (= (and b!75236 c!11405) b!75261))

(assert (= (and b!75236 (not c!11405)) b!75247))

(assert (= (and b!75261 c!11396) b!75268))

(assert (= (and b!75261 (not c!11396)) b!75273))

(assert (= (and b!75268 res!39694) b!75249))

(assert (= (and b!75249 res!39689) b!75253))

(assert (= (and b!75273 c!11398) b!75241))

(assert (= (and b!75273 (not c!11398)) b!75271))

(assert (= (and b!75241 res!39686) b!75251))

(assert (= (and b!75251 res!39695) b!75255))

(assert (= (and b!75271 c!11406) b!75240))

(assert (= (and b!75271 (not c!11406)) b!75245))

(assert (= (and b!75240 res!39688) b!75235))

(assert (= (and b!75235 res!39684) b!75267))

(assert (= (or b!75241 b!75240) bm!6708))

(assert (= (or b!75255 b!75267) bm!6705))

(assert (= (or b!75249 bm!6708) bm!6727))

(assert (= (or b!75268 b!75273) bm!6724))

(assert (= (and b!75247 c!11402) b!75272))

(assert (= (and b!75247 (not c!11402)) b!75264))

(assert (= (and b!75264 c!11399) b!75238))

(assert (= (and b!75264 (not c!11399)) b!75259))

(assert (= (and b!75259 c!11400) b!75257))

(assert (= (and b!75259 (not c!11400)) b!75248))

(assert (= (and b!75257 res!39690) b!75274))

(assert (= (and b!75274 res!39691) b!75263))

(assert (= (and b!75248 c!11404) b!75256))

(assert (= (and b!75248 (not c!11404)) b!75270))

(assert (= (and b!75256 res!39692) b!75239))

(assert (= (and b!75239 res!39693) b!75246))

(assert (= (and b!75270 c!11409) b!75252))

(assert (= (and b!75270 (not c!11409)) b!75266))

(assert (= (and b!75252 res!39696) b!75269))

(assert (= (and b!75269 res!39687) b!75260))

(assert (= (or b!75256 b!75252) bm!6707))

(assert (= (or b!75246 b!75260) bm!6719))

(assert (= (or b!75274 bm!6707) bm!6720))

(assert (= (or b!75257 b!75248) bm!6712))

(assert (= (or b!75272 b!75238) bm!6711))

(assert (= (or bm!6727 bm!6720) bm!6723))

(assert (= (or bm!6705 bm!6719) bm!6726))

(assert (= (or b!75273 b!75248) bm!6714))

(assert (= (or b!75261 b!75259) bm!6713))

(assert (= (or bm!6724 bm!6712) bm!6715))

(assert (= (or b!75268 b!75257) bm!6717))

(assert (= (or b!75261 b!75259) bm!6706))

(assert (= (and bm!6706 c!11407) b!75244))

(assert (= (and bm!6706 (not c!11407)) b!75258))

(assert (= (or bm!6722 b!75258) bm!6704))

(assert (= (or bm!6725 bm!6713) bm!6718))

(assert (= (or bm!6721 b!75259) bm!6710))

(assert (= (and bm!6710 c!11408) b!75262))

(assert (= (and bm!6710 (not c!11408)) b!75254))

(assert (= (and d!17825 res!39685) b!75237))

(assert (= (and b!75237 c!11401) b!75234))

(assert (= (and b!75237 (not c!11401)) b!75243))

(assert (= (and b!75234 res!39683) b!75250))

(assert (= (or b!75234 b!75250 b!75243) bm!6709))

(assert (= (or b!75250 b!75243) bm!6716))

(declare-fun m!74561 () Bool)

(assert (=> b!75250 m!74561))

(assert (=> bm!6711 m!74389))

(declare-fun m!74563 () Bool)

(assert (=> bm!6711 m!74563))

(declare-fun m!74565 () Bool)

(assert (=> bm!6710 m!74565))

(assert (=> bm!6715 m!74389))

(declare-fun m!74567 () Bool)

(assert (=> bm!6715 m!74567))

(assert (=> bm!6726 m!74389))

(declare-fun m!74569 () Bool)

(assert (=> bm!6726 m!74569))

(declare-fun m!74571 () Bool)

(assert (=> b!75251 m!74571))

(declare-fun m!74573 () Bool)

(assert (=> b!75275 m!74573))

(assert (=> bm!6717 m!74389))

(declare-fun m!74575 () Bool)

(assert (=> bm!6717 m!74575))

(declare-fun m!74577 () Bool)

(assert (=> b!75269 m!74577))

(declare-fun m!74579 () Bool)

(assert (=> bm!6709 m!74579))

(declare-fun m!74581 () Bool)

(assert (=> bm!6718 m!74581))

(declare-fun m!74583 () Bool)

(assert (=> bm!6718 m!74583))

(assert (=> bm!6714 m!74389))

(declare-fun m!74585 () Bool)

(assert (=> bm!6714 m!74585))

(declare-fun m!74587 () Bool)

(assert (=> bm!6706 m!74587))

(declare-fun m!74589 () Bool)

(assert (=> bm!6706 m!74589))

(assert (=> bm!6716 m!74433))

(declare-fun m!74591 () Bool)

(assert (=> b!75265 m!74591))

(declare-fun m!74593 () Bool)

(assert (=> d!17825 m!74593))

(assert (=> d!17825 m!74411))

(declare-fun m!74595 () Bool)

(assert (=> b!75235 m!74595))

(assert (=> b!75236 m!74389))

(assert (=> b!75236 m!74567))

(declare-fun m!74597 () Bool)

(assert (=> bm!6723 m!74597))

(declare-fun m!74599 () Bool)

(assert (=> bm!6704 m!74599))

(declare-fun m!74601 () Bool)

(assert (=> b!75253 m!74601))

(assert (=> b!75259 m!74389))

(declare-fun m!74603 () Bool)

(assert (=> b!75259 m!74603))

(assert (=> b!75259 m!74497))

(declare-fun m!74605 () Bool)

(assert (=> b!75259 m!74605))

(assert (=> b!75259 m!74581))

(assert (=> b!75259 m!74497))

(assert (=> b!75259 m!74389))

(declare-fun m!74607 () Bool)

(assert (=> b!75259 m!74607))

(declare-fun m!74609 () Bool)

(assert (=> b!75239 m!74609))

(declare-fun m!74611 () Bool)

(assert (=> b!75263 m!74611))

(assert (=> b!75234 m!74389))

(declare-fun m!74613 () Bool)

(assert (=> b!75234 m!74613))

(assert (=> b!75254 m!74497))

(assert (=> b!74996 d!17825))

(declare-fun d!17827 () Bool)

(declare-fun res!39703 () Bool)

(declare-fun e!49199 () Bool)

(assert (=> d!17827 (=> (not res!39703) (not e!49199))))

(declare-fun simpleValid!51 (LongMapFixedSize!702) Bool)

(assert (=> d!17827 (= res!39703 (simpleValid!51 newMap!16))))

(assert (=> d!17827 (= (valid!297 newMap!16) e!49199)))

(declare-fun b!75282 () Bool)

(declare-fun res!39704 () Bool)

(assert (=> b!75282 (=> (not res!39704) (not e!49199))))

(declare-fun arrayCountValidKeys!0 (array!3908 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!75282 (= res!39704 (= (arrayCountValidKeys!0 (_keys!3890 newMap!16) #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))) (_size!400 newMap!16)))))

(declare-fun b!75283 () Bool)

(declare-fun res!39705 () Bool)

(assert (=> b!75283 (=> (not res!39705) (not e!49199))))

(assert (=> b!75283 (= res!39705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3890 newMap!16) (mask!6211 newMap!16)))))

(declare-fun b!75284 () Bool)

(assert (=> b!75284 (= e!49199 (arrayNoDuplicates!0 (_keys!3890 newMap!16) #b00000000000000000000000000000000 Nil!1511))))

(assert (= (and d!17827 res!39703) b!75282))

(assert (= (and b!75282 res!39704) b!75283))

(assert (= (and b!75283 res!39705) b!75284))

(declare-fun m!74615 () Bool)

(assert (=> d!17827 m!74615))

(declare-fun m!74617 () Bool)

(assert (=> b!75282 m!74617))

(declare-fun m!74619 () Bool)

(assert (=> b!75283 m!74619))

(declare-fun m!74621 () Bool)

(assert (=> b!75284 m!74621))

(assert (=> b!75008 d!17827))

(declare-fun d!17829 () Bool)

(assert (=> d!17829 (not (arrayContainsKey!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!33952 () Unit!2169)

(declare-fun choose!68 (array!3908 (_ BitVec 32) (_ BitVec 64) List!1514) Unit!2169)

(assert (=> d!17829 (= lt!33952 (choose!68 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (Cons!1510 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) Nil!1511)))))

(assert (=> d!17829 (bvslt (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!17829 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (Cons!1510 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) Nil!1511)) lt!33952)))

(declare-fun bs!3224 () Bool)

(assert (= bs!3224 d!17829))

(assert (=> bs!3224 m!74389))

(assert (=> bs!3224 m!74393))

(assert (=> bs!3224 m!74389))

(declare-fun m!74623 () Bool)

(assert (=> bs!3224 m!74623))

(assert (=> b!75003 d!17829))

(declare-fun d!17831 () Bool)

(assert (=> d!17831 (arrayNoDuplicates!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) from!355 Nil!1511)))

(declare-fun lt!33955 () Unit!2169)

(declare-fun choose!39 (array!3908 (_ BitVec 32) (_ BitVec 32)) Unit!2169)

(assert (=> d!17831 (= lt!33955 (choose!39 (_keys!3890 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!17831 (bvslt (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!17831 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000000 from!355) lt!33955)))

(declare-fun bs!3225 () Bool)

(assert (= bs!3225 d!17831))

(assert (=> bs!3225 m!74387))

(declare-fun m!74625 () Bool)

(assert (=> bs!3225 m!74625))

(assert (=> b!75003 d!17831))

(declare-fun d!17833 () Bool)

(declare-fun res!39710 () Bool)

(declare-fun e!49204 () Bool)

(assert (=> d!17833 (=> res!39710 e!49204)))

(assert (=> d!17833 (= res!39710 (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(assert (=> d!17833 (= (arrayContainsKey!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!49204)))

(declare-fun b!75289 () Bool)

(declare-fun e!49205 () Bool)

(assert (=> b!75289 (= e!49204 e!49205)))

(declare-fun res!39711 () Bool)

(assert (=> b!75289 (=> (not res!39711) (not e!49205))))

(assert (=> b!75289 (= res!39711 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))

(declare-fun b!75290 () Bool)

(assert (=> b!75290 (= e!49205 (arrayContainsKey!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!17833 (not res!39710)) b!75289))

(assert (= (and b!75289 res!39711) b!75290))

(assert (=> d!17833 m!74499))

(assert (=> b!75290 m!74389))

(declare-fun m!74627 () Bool)

(assert (=> b!75290 m!74627))

(assert (=> b!75003 d!17833))

(declare-fun d!17835 () Bool)

(declare-fun e!49208 () Bool)

(assert (=> d!17835 e!49208))

(declare-fun c!11412 () Bool)

(assert (=> d!17835 (= c!11412 (and (not (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!33958 () Unit!2169)

(declare-fun choose!433 (array!3908 array!3910 (_ BitVec 32) (_ BitVec 32) V!2955 V!2955 (_ BitVec 64) (_ BitVec 32) Int) Unit!2169)

(assert (=> d!17835 (= lt!33958 (choose!433 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (_values!2217 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992))) (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) (minValue!2134 (v!2549 (underlying!267 thiss!992))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992)))))))

(assert (=> d!17835 (validMask!0 (mask!6211 (v!2549 (underlying!267 thiss!992))))))

(assert (=> d!17835 (= (lemmaListMapContainsThenArrayContainsFrom!54 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (_values!2217 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992))) (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) (minValue!2134 (v!2549 (underlying!267 thiss!992))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992)))) lt!33958)))

(declare-fun b!75295 () Bool)

(assert (=> b!75295 (= e!49208 (arrayContainsKey!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!75296 () Bool)

(assert (=> b!75296 (= e!49208 (ite (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!17835 c!11412) b!75295))

(assert (= (and d!17835 (not c!11412)) b!75296))

(assert (=> d!17835 m!74389))

(declare-fun m!74629 () Bool)

(assert (=> d!17835 m!74629))

(assert (=> d!17835 m!74401))

(assert (=> b!75295 m!74389))

(assert (=> b!75295 m!74393))

(assert (=> b!75003 d!17835))

(declare-fun b!75307 () Bool)

(declare-fun e!49217 () Bool)

(declare-fun call!6733 () Bool)

(assert (=> b!75307 (= e!49217 call!6733)))

(declare-fun b!75308 () Bool)

(declare-fun e!49219 () Bool)

(declare-fun contains!733 (List!1514 (_ BitVec 64)) Bool)

(assert (=> b!75308 (= e!49219 (contains!733 Nil!1511 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(declare-fun b!75310 () Bool)

(declare-fun e!49220 () Bool)

(assert (=> b!75310 (= e!49220 e!49217)))

(declare-fun c!11415 () Bool)

(assert (=> b!75310 (= c!11415 (validKeyInArray!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(declare-fun bm!6730 () Bool)

(assert (=> bm!6730 (= call!6733 (arrayNoDuplicates!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!11415 (Cons!1510 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) Nil!1511) Nil!1511)))))

(declare-fun b!75311 () Bool)

(declare-fun e!49218 () Bool)

(assert (=> b!75311 (= e!49218 e!49220)))

(declare-fun res!39718 () Bool)

(assert (=> b!75311 (=> (not res!39718) (not e!49220))))

(assert (=> b!75311 (= res!39718 (not e!49219))))

(declare-fun res!39720 () Bool)

(assert (=> b!75311 (=> (not res!39720) (not e!49219))))

(assert (=> b!75311 (= res!39720 (validKeyInArray!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(declare-fun d!17837 () Bool)

(declare-fun res!39719 () Bool)

(assert (=> d!17837 (=> res!39719 e!49218)))

(assert (=> d!17837 (= res!39719 (bvsge from!355 (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))

(assert (=> d!17837 (= (arrayNoDuplicates!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) from!355 Nil!1511) e!49218)))

(declare-fun b!75309 () Bool)

(assert (=> b!75309 (= e!49217 call!6733)))

(assert (= (and d!17837 (not res!39719)) b!75311))

(assert (= (and b!75311 res!39720) b!75308))

(assert (= (and b!75311 res!39718) b!75310))

(assert (= (and b!75310 c!11415) b!75307))

(assert (= (and b!75310 (not c!11415)) b!75309))

(assert (= (or b!75307 b!75309) bm!6730))

(assert (=> b!75308 m!74389))

(assert (=> b!75308 m!74389))

(declare-fun m!74631 () Bool)

(assert (=> b!75308 m!74631))

(assert (=> b!75310 m!74389))

(assert (=> b!75310 m!74389))

(declare-fun m!74633 () Bool)

(assert (=> b!75310 m!74633))

(assert (=> bm!6730 m!74389))

(declare-fun m!74635 () Bool)

(assert (=> bm!6730 m!74635))

(assert (=> b!75311 m!74389))

(assert (=> b!75311 m!74389))

(assert (=> b!75311 m!74633))

(assert (=> b!75003 d!17837))

(declare-fun bm!6733 () Bool)

(declare-fun call!6736 () Bool)

(assert (=> bm!6733 (= call!6736 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3890 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992)))))))

(declare-fun b!75320 () Bool)

(declare-fun e!49229 () Bool)

(assert (=> b!75320 (= e!49229 call!6736)))

(declare-fun d!17839 () Bool)

(declare-fun res!39726 () Bool)

(declare-fun e!49227 () Bool)

(assert (=> d!17839 (=> res!39726 e!49227)))

(assert (=> d!17839 (= res!39726 (bvsge #b00000000000000000000000000000000 (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))

(assert (=> d!17839 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992)))) e!49227)))

(declare-fun b!75321 () Bool)

(declare-fun e!49228 () Bool)

(assert (=> b!75321 (= e!49228 call!6736)))

(declare-fun b!75322 () Bool)

(assert (=> b!75322 (= e!49227 e!49229)))

(declare-fun c!11418 () Bool)

(assert (=> b!75322 (= c!11418 (validKeyInArray!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!75323 () Bool)

(assert (=> b!75323 (= e!49229 e!49228)))

(declare-fun lt!33967 () (_ BitVec 64))

(assert (=> b!75323 (= lt!33967 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!33966 () Unit!2169)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3908 (_ BitVec 64) (_ BitVec 32)) Unit!2169)

(assert (=> b!75323 (= lt!33966 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) lt!33967 #b00000000000000000000000000000000))))

(assert (=> b!75323 (arrayContainsKey!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) lt!33967 #b00000000000000000000000000000000)))

(declare-fun lt!33965 () Unit!2169)

(assert (=> b!75323 (= lt!33965 lt!33966)))

(declare-fun res!39725 () Bool)

(assert (=> b!75323 (= res!39725 (= (seekEntryOrOpen!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) #b00000000000000000000000000000000) (_keys!3890 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992)))) (Found!247 #b00000000000000000000000000000000)))))

(assert (=> b!75323 (=> (not res!39725) (not e!49228))))

(assert (= (and d!17839 (not res!39726)) b!75322))

(assert (= (and b!75322 c!11418) b!75323))

(assert (= (and b!75322 (not c!11418)) b!75320))

(assert (= (and b!75323 res!39725) b!75321))

(assert (= (or b!75321 b!75320) bm!6733))

(declare-fun m!74637 () Bool)

(assert (=> bm!6733 m!74637))

(declare-fun m!74639 () Bool)

(assert (=> b!75322 m!74639))

(assert (=> b!75322 m!74639))

(declare-fun m!74641 () Bool)

(assert (=> b!75322 m!74641))

(assert (=> b!75323 m!74639))

(declare-fun m!74643 () Bool)

(assert (=> b!75323 m!74643))

(declare-fun m!74645 () Bool)

(assert (=> b!75323 m!74645))

(assert (=> b!75323 m!74639))

(declare-fun m!74647 () Bool)

(assert (=> b!75323 m!74647))

(assert (=> b!74992 d!17839))

(declare-fun d!17841 () Bool)

(assert (=> d!17841 (= (+!101 (+!101 lt!33746 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)) (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) (+!101 (+!101 lt!33746 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)))))

(declare-fun lt!33970 () Unit!2169)

(declare-fun choose!434 (ListLongMap!1445 (_ BitVec 64) V!2955 (_ BitVec 64) V!2955) Unit!2169)

(assert (=> d!17841 (= lt!33970 (choose!434 lt!33746 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))))

(assert (=> d!17841 (not (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!17841 (= (addCommutativeForDiffKeys!20 lt!33746 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))) lt!33970)))

(declare-fun bs!3226 () Bool)

(assert (= bs!3226 d!17841))

(declare-fun m!74649 () Bool)

(assert (=> bs!3226 m!74649))

(declare-fun m!74651 () Bool)

(assert (=> bs!3226 m!74651))

(assert (=> bs!3226 m!74389))

(declare-fun m!74653 () Bool)

(assert (=> bs!3226 m!74653))

(declare-fun m!74655 () Bool)

(assert (=> bs!3226 m!74655))

(assert (=> bs!3226 m!74655))

(declare-fun m!74657 () Bool)

(assert (=> bs!3226 m!74657))

(assert (=> bs!3226 m!74649))

(assert (=> b!75005 d!17841))

(declare-fun lt!33986 () ListLongMap!1445)

(declare-fun e!49248 () Bool)

(declare-fun b!75348 () Bool)

(assert (=> b!75348 (= e!49248 (= lt!33986 (getCurrentListMapNoExtraKeys!65 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (_values!2217 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992))) (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) (minValue!2134 (v!2549 (underlying!267 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))))))))

(declare-fun b!75349 () Bool)

(assert (=> b!75349 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))

(assert (=> b!75349 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2104 (_values!2217 (v!2549 (underlying!267 thiss!992))))))))

(declare-fun e!49249 () Bool)

(assert (=> b!75349 (= e!49249 (= (apply!76 lt!33986 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1162 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!75351 () Bool)

(declare-fun e!49247 () Bool)

(assert (=> b!75351 (= e!49247 e!49248)))

(declare-fun c!11428 () Bool)

(assert (=> b!75351 (= c!11428 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))

(declare-fun b!75352 () Bool)

(declare-fun e!49246 () ListLongMap!1445)

(declare-fun call!6739 () ListLongMap!1445)

(assert (=> b!75352 (= e!49246 call!6739)))

(declare-fun b!75353 () Bool)

(declare-fun lt!33988 () Unit!2169)

(declare-fun lt!33990 () Unit!2169)

(assert (=> b!75353 (= lt!33988 lt!33990)))

(declare-fun lt!33991 () (_ BitVec 64))

(declare-fun lt!33989 () (_ BitVec 64))

(declare-fun lt!33987 () ListLongMap!1445)

(declare-fun lt!33985 () V!2955)

(assert (=> b!75353 (not (contains!732 (+!101 lt!33987 (tuple2!2157 lt!33989 lt!33985)) lt!33991))))

(declare-fun addStillNotContains!27 (ListLongMap!1445 (_ BitVec 64) V!2955 (_ BitVec 64)) Unit!2169)

(assert (=> b!75353 (= lt!33990 (addStillNotContains!27 lt!33987 lt!33989 lt!33985 lt!33991))))

(assert (=> b!75353 (= lt!33991 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!75353 (= lt!33985 (get!1162 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!75353 (= lt!33989 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!75353 (= lt!33987 call!6739)))

(assert (=> b!75353 (= e!49246 (+!101 call!6739 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1162 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!75354 () Bool)

(declare-fun e!49250 () Bool)

(assert (=> b!75354 (= e!49250 (validKeyInArray!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!75354 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!75355 () Bool)

(declare-fun e!49244 () Bool)

(assert (=> b!75355 (= e!49244 e!49247)))

(declare-fun c!11430 () Bool)

(assert (=> b!75355 (= c!11430 e!49250)))

(declare-fun res!39736 () Bool)

(assert (=> b!75355 (=> (not res!39736) (not e!49250))))

(assert (=> b!75355 (= res!39736 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))

(declare-fun b!75356 () Bool)

(assert (=> b!75356 (= e!49247 e!49249)))

(assert (=> b!75356 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))

(declare-fun res!39738 () Bool)

(assert (=> b!75356 (= res!39738 (contains!732 lt!33986 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!75356 (=> (not res!39738) (not e!49249))))

(declare-fun bm!6736 () Bool)

(assert (=> bm!6736 (= call!6739 (getCurrentListMapNoExtraKeys!65 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (_values!2217 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992))) (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) (minValue!2134 (v!2549 (underlying!267 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992)))))))

(declare-fun b!75357 () Bool)

(declare-fun e!49245 () ListLongMap!1445)

(assert (=> b!75357 (= e!49245 (ListLongMap!1446 Nil!1510))))

(declare-fun d!17843 () Bool)

(assert (=> d!17843 e!49244))

(declare-fun res!39737 () Bool)

(assert (=> d!17843 (=> (not res!39737) (not e!49244))))

(assert (=> d!17843 (= res!39737 (not (contains!732 lt!33986 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!17843 (= lt!33986 e!49245)))

(declare-fun c!11429 () Bool)

(assert (=> d!17843 (= c!11429 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))

(assert (=> d!17843 (validMask!0 (mask!6211 (v!2549 (underlying!267 thiss!992))))))

(assert (=> d!17843 (= (getCurrentListMapNoExtraKeys!65 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (_values!2217 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992))) (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) (minValue!2134 (v!2549 (underlying!267 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992)))) lt!33986)))

(declare-fun b!75350 () Bool)

(declare-fun res!39735 () Bool)

(assert (=> b!75350 (=> (not res!39735) (not e!49244))))

(assert (=> b!75350 (= res!39735 (not (contains!732 lt!33986 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!75358 () Bool)

(assert (=> b!75358 (= e!49245 e!49246)))

(declare-fun c!11427 () Bool)

(assert (=> b!75358 (= c!11427 (validKeyInArray!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!75359 () Bool)

(declare-fun isEmpty!324 (ListLongMap!1445) Bool)

(assert (=> b!75359 (= e!49248 (isEmpty!324 lt!33986))))

(assert (= (and d!17843 c!11429) b!75357))

(assert (= (and d!17843 (not c!11429)) b!75358))

(assert (= (and b!75358 c!11427) b!75353))

(assert (= (and b!75358 (not c!11427)) b!75352))

(assert (= (or b!75353 b!75352) bm!6736))

(assert (= (and d!17843 res!39737) b!75350))

(assert (= (and b!75350 res!39735) b!75355))

(assert (= (and b!75355 res!39736) b!75354))

(assert (= (and b!75355 c!11430) b!75356))

(assert (= (and b!75355 (not c!11430)) b!75351))

(assert (= (and b!75356 res!39738) b!75349))

(assert (= (and b!75351 c!11428) b!75348))

(assert (= (and b!75351 (not c!11428)) b!75359))

(declare-fun b_lambda!3391 () Bool)

(assert (=> (not b_lambda!3391) (not b!75349)))

(assert (=> b!75349 t!5092))

(declare-fun b_and!4609 () Bool)

(assert (= b_and!4605 (and (=> t!5092 result!2711) b_and!4609)))

(assert (=> b!75349 t!5094))

(declare-fun b_and!4611 () Bool)

(assert (= b_and!4607 (and (=> t!5094 result!2715) b_and!4611)))

(declare-fun b_lambda!3393 () Bool)

(assert (=> (not b_lambda!3393) (not b!75353)))

(assert (=> b!75353 t!5092))

(declare-fun b_and!4613 () Bool)

(assert (= b_and!4609 (and (=> t!5092 result!2711) b_and!4613)))

(assert (=> b!75353 t!5094))

(declare-fun b_and!4615 () Bool)

(assert (= b_and!4611 (and (=> t!5094 result!2715) b_and!4615)))

(declare-fun m!74659 () Bool)

(assert (=> b!75348 m!74659))

(assert (=> b!75354 m!74499))

(assert (=> b!75354 m!74499))

(assert (=> b!75354 m!74505))

(assert (=> b!75358 m!74499))

(assert (=> b!75358 m!74499))

(assert (=> b!75358 m!74505))

(declare-fun m!74661 () Bool)

(assert (=> d!17843 m!74661))

(assert (=> d!17843 m!74401))

(assert (=> b!75356 m!74499))

(assert (=> b!75356 m!74499))

(declare-fun m!74663 () Bool)

(assert (=> b!75356 m!74663))

(assert (=> b!75349 m!74499))

(assert (=> b!75349 m!74509))

(assert (=> b!75349 m!74499))

(declare-fun m!74665 () Bool)

(assert (=> b!75349 m!74665))

(assert (=> b!75349 m!74429))

(assert (=> b!75349 m!74509))

(assert (=> b!75349 m!74429))

(assert (=> b!75349 m!74511))

(declare-fun m!74667 () Bool)

(assert (=> b!75350 m!74667))

(assert (=> bm!6736 m!74659))

(assert (=> b!75353 m!74499))

(declare-fun m!74669 () Bool)

(assert (=> b!75353 m!74669))

(declare-fun m!74671 () Bool)

(assert (=> b!75353 m!74671))

(assert (=> b!75353 m!74669))

(assert (=> b!75353 m!74429))

(assert (=> b!75353 m!74509))

(assert (=> b!75353 m!74429))

(assert (=> b!75353 m!74511))

(declare-fun m!74673 () Bool)

(assert (=> b!75353 m!74673))

(declare-fun m!74675 () Bool)

(assert (=> b!75353 m!74675))

(assert (=> b!75353 m!74509))

(declare-fun m!74677 () Bool)

(assert (=> b!75359 m!74677))

(assert (=> b!75005 d!17843))

(declare-fun d!17845 () Bool)

(declare-fun e!49253 () Bool)

(assert (=> d!17845 e!49253))

(declare-fun res!39743 () Bool)

(assert (=> d!17845 (=> (not res!39743) (not e!49253))))

(declare-fun lt!34002 () ListLongMap!1445)

(assert (=> d!17845 (= res!39743 (contains!732 lt!34002 (_1!1088 lt!33749)))))

(declare-fun lt!34003 () List!1513)

(assert (=> d!17845 (= lt!34002 (ListLongMap!1446 lt!34003))))

(declare-fun lt!34001 () Unit!2169)

(declare-fun lt!34000 () Unit!2169)

(assert (=> d!17845 (= lt!34001 lt!34000)))

(assert (=> d!17845 (= (getValueByKey!133 lt!34003 (_1!1088 lt!33749)) (Some!138 (_2!1088 lt!33749)))))

(declare-fun lemmaContainsTupThenGetReturnValue!52 (List!1513 (_ BitVec 64) V!2955) Unit!2169)

(assert (=> d!17845 (= lt!34000 (lemmaContainsTupThenGetReturnValue!52 lt!34003 (_1!1088 lt!33749) (_2!1088 lt!33749)))))

(declare-fun insertStrictlySorted!54 (List!1513 (_ BitVec 64) V!2955) List!1513)

(assert (=> d!17845 (= lt!34003 (insertStrictlySorted!54 (toList!738 (+!101 lt!33746 lt!33753)) (_1!1088 lt!33749) (_2!1088 lt!33749)))))

(assert (=> d!17845 (= (+!101 (+!101 lt!33746 lt!33753) lt!33749) lt!34002)))

(declare-fun b!75364 () Bool)

(declare-fun res!39744 () Bool)

(assert (=> b!75364 (=> (not res!39744) (not e!49253))))

(assert (=> b!75364 (= res!39744 (= (getValueByKey!133 (toList!738 lt!34002) (_1!1088 lt!33749)) (Some!138 (_2!1088 lt!33749))))))

(declare-fun b!75365 () Bool)

(declare-fun contains!734 (List!1513 tuple2!2156) Bool)

(assert (=> b!75365 (= e!49253 (contains!734 (toList!738 lt!34002) lt!33749))))

(assert (= (and d!17845 res!39743) b!75364))

(assert (= (and b!75364 res!39744) b!75365))

(declare-fun m!74679 () Bool)

(assert (=> d!17845 m!74679))

(declare-fun m!74681 () Bool)

(assert (=> d!17845 m!74681))

(declare-fun m!74683 () Bool)

(assert (=> d!17845 m!74683))

(declare-fun m!74685 () Bool)

(assert (=> d!17845 m!74685))

(declare-fun m!74687 () Bool)

(assert (=> b!75364 m!74687))

(declare-fun m!74689 () Bool)

(assert (=> b!75365 m!74689))

(assert (=> b!75005 d!17845))

(declare-fun d!17847 () Bool)

(declare-fun e!49254 () Bool)

(assert (=> d!17847 e!49254))

(declare-fun res!39745 () Bool)

(assert (=> d!17847 (=> (not res!39745) (not e!49254))))

(declare-fun lt!34006 () ListLongMap!1445)

(assert (=> d!17847 (= res!39745 (contains!732 lt!34006 (_1!1088 lt!33753)))))

(declare-fun lt!34007 () List!1513)

(assert (=> d!17847 (= lt!34006 (ListLongMap!1446 lt!34007))))

(declare-fun lt!34005 () Unit!2169)

(declare-fun lt!34004 () Unit!2169)

(assert (=> d!17847 (= lt!34005 lt!34004)))

(assert (=> d!17847 (= (getValueByKey!133 lt!34007 (_1!1088 lt!33753)) (Some!138 (_2!1088 lt!33753)))))

(assert (=> d!17847 (= lt!34004 (lemmaContainsTupThenGetReturnValue!52 lt!34007 (_1!1088 lt!33753) (_2!1088 lt!33753)))))

(assert (=> d!17847 (= lt!34007 (insertStrictlySorted!54 (toList!738 (+!101 lt!33746 lt!33749)) (_1!1088 lt!33753) (_2!1088 lt!33753)))))

(assert (=> d!17847 (= (+!101 (+!101 lt!33746 lt!33749) lt!33753) lt!34006)))

(declare-fun b!75366 () Bool)

(declare-fun res!39746 () Bool)

(assert (=> b!75366 (=> (not res!39746) (not e!49254))))

(assert (=> b!75366 (= res!39746 (= (getValueByKey!133 (toList!738 lt!34006) (_1!1088 lt!33753)) (Some!138 (_2!1088 lt!33753))))))

(declare-fun b!75367 () Bool)

(assert (=> b!75367 (= e!49254 (contains!734 (toList!738 lt!34006) lt!33753))))

(assert (= (and d!17847 res!39745) b!75366))

(assert (= (and b!75366 res!39746) b!75367))

(declare-fun m!74691 () Bool)

(assert (=> d!17847 m!74691))

(declare-fun m!74693 () Bool)

(assert (=> d!17847 m!74693))

(declare-fun m!74695 () Bool)

(assert (=> d!17847 m!74695))

(declare-fun m!74697 () Bool)

(assert (=> d!17847 m!74697))

(declare-fun m!74699 () Bool)

(assert (=> b!75366 m!74699))

(declare-fun m!74701 () Bool)

(assert (=> b!75367 m!74701))

(assert (=> b!75005 d!17847))

(declare-fun d!17849 () Bool)

(assert (=> d!17849 (= (validMask!0 (mask!6211 (v!2549 (underlying!267 thiss!992)))) (and (or (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000001111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000011111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000001111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000011111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000111111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000001111111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000011111111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000111111111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000000000000001111111111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000000000000011111111111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000000000000111111111111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000000000001111111111111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000000000011111111111111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000000000111111111111111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000000001111111111111111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000000011111111111111111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000000111111111111111111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000001111111111111111111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000011111111111111111111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000000111111111111111111111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000001111111111111111111111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000011111111111111111111111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00000111111111111111111111111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00001111111111111111111111111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00011111111111111111111111111111) (= (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!6211 (v!2549 (underlying!267 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!75005 d!17849))

(declare-fun d!17851 () Bool)

(declare-fun e!49255 () Bool)

(assert (=> d!17851 e!49255))

(declare-fun res!39747 () Bool)

(assert (=> d!17851 (=> (not res!39747) (not e!49255))))

(declare-fun lt!34010 () ListLongMap!1445)

(assert (=> d!17851 (= res!39747 (contains!732 lt!34010 (_1!1088 lt!33753)))))

(declare-fun lt!34011 () List!1513)

(assert (=> d!17851 (= lt!34010 (ListLongMap!1446 lt!34011))))

(declare-fun lt!34009 () Unit!2169)

(declare-fun lt!34008 () Unit!2169)

(assert (=> d!17851 (= lt!34009 lt!34008)))

(assert (=> d!17851 (= (getValueByKey!133 lt!34011 (_1!1088 lt!33753)) (Some!138 (_2!1088 lt!33753)))))

(assert (=> d!17851 (= lt!34008 (lemmaContainsTupThenGetReturnValue!52 lt!34011 (_1!1088 lt!33753) (_2!1088 lt!33753)))))

(assert (=> d!17851 (= lt!34011 (insertStrictlySorted!54 (toList!738 lt!33746) (_1!1088 lt!33753) (_2!1088 lt!33753)))))

(assert (=> d!17851 (= (+!101 lt!33746 lt!33753) lt!34010)))

(declare-fun b!75368 () Bool)

(declare-fun res!39748 () Bool)

(assert (=> b!75368 (=> (not res!39748) (not e!49255))))

(assert (=> b!75368 (= res!39748 (= (getValueByKey!133 (toList!738 lt!34010) (_1!1088 lt!33753)) (Some!138 (_2!1088 lt!33753))))))

(declare-fun b!75369 () Bool)

(assert (=> b!75369 (= e!49255 (contains!734 (toList!738 lt!34010) lt!33753))))

(assert (= (and d!17851 res!39747) b!75368))

(assert (= (and b!75368 res!39748) b!75369))

(declare-fun m!74703 () Bool)

(assert (=> d!17851 m!74703))

(declare-fun m!74705 () Bool)

(assert (=> d!17851 m!74705))

(declare-fun m!74707 () Bool)

(assert (=> d!17851 m!74707))

(declare-fun m!74709 () Bool)

(assert (=> d!17851 m!74709))

(declare-fun m!74711 () Bool)

(assert (=> b!75368 m!74711))

(declare-fun m!74713 () Bool)

(assert (=> b!75369 m!74713))

(assert (=> b!75005 d!17851))

(declare-fun d!17853 () Bool)

(declare-fun e!49256 () Bool)

(assert (=> d!17853 e!49256))

(declare-fun res!39749 () Bool)

(assert (=> d!17853 (=> (not res!39749) (not e!49256))))

(declare-fun lt!34014 () ListLongMap!1445)

(assert (=> d!17853 (= res!39749 (contains!732 lt!34014 (_1!1088 lt!33749)))))

(declare-fun lt!34015 () List!1513)

(assert (=> d!17853 (= lt!34014 (ListLongMap!1446 lt!34015))))

(declare-fun lt!34013 () Unit!2169)

(declare-fun lt!34012 () Unit!2169)

(assert (=> d!17853 (= lt!34013 lt!34012)))

(assert (=> d!17853 (= (getValueByKey!133 lt!34015 (_1!1088 lt!33749)) (Some!138 (_2!1088 lt!33749)))))

(assert (=> d!17853 (= lt!34012 (lemmaContainsTupThenGetReturnValue!52 lt!34015 (_1!1088 lt!33749) (_2!1088 lt!33749)))))

(assert (=> d!17853 (= lt!34015 (insertStrictlySorted!54 (toList!738 lt!33746) (_1!1088 lt!33749) (_2!1088 lt!33749)))))

(assert (=> d!17853 (= (+!101 lt!33746 lt!33749) lt!34014)))

(declare-fun b!75370 () Bool)

(declare-fun res!39750 () Bool)

(assert (=> b!75370 (=> (not res!39750) (not e!49256))))

(assert (=> b!75370 (= res!39750 (= (getValueByKey!133 (toList!738 lt!34014) (_1!1088 lt!33749)) (Some!138 (_2!1088 lt!33749))))))

(declare-fun b!75371 () Bool)

(assert (=> b!75371 (= e!49256 (contains!734 (toList!738 lt!34014) lt!33749))))

(assert (= (and d!17853 res!39749) b!75370))

(assert (= (and b!75370 res!39750) b!75371))

(declare-fun m!74715 () Bool)

(assert (=> d!17853 m!74715))

(declare-fun m!74717 () Bool)

(assert (=> d!17853 m!74717))

(declare-fun m!74719 () Bool)

(assert (=> d!17853 m!74719))

(declare-fun m!74721 () Bool)

(assert (=> d!17853 m!74721))

(declare-fun m!74723 () Bool)

(assert (=> b!75370 m!74723))

(declare-fun m!74725 () Bool)

(assert (=> b!75371 m!74725))

(assert (=> b!75005 d!17853))

(declare-fun d!17855 () Bool)

(assert (=> d!17855 (= (array_inv!1107 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvsge (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!74991 d!17855))

(declare-fun d!17857 () Bool)

(assert (=> d!17857 (= (array_inv!1108 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvsge (size!2104 (_values!2217 (v!2549 (underlying!267 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!74991 d!17857))

(declare-fun d!17859 () Bool)

(assert (=> d!17859 (= (valid!296 thiss!992) (valid!297 (v!2549 (underlying!267 thiss!992))))))

(declare-fun bs!3227 () Bool)

(assert (= bs!3227 d!17859))

(declare-fun m!74727 () Bool)

(assert (=> bs!3227 m!74727))

(assert (=> start!9928 d!17859))

(declare-fun d!17861 () Bool)

(declare-fun c!11433 () Bool)

(assert (=> d!17861 (= c!11433 ((_ is ValueCellFull!897) (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(declare-fun e!49259 () V!2955)

(assert (=> d!17861 (= (get!1162 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) from!355) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!49259)))

(declare-fun b!75376 () Bool)

(declare-fun get!1163 (ValueCell!897 V!2955) V!2955)

(assert (=> b!75376 (= e!49259 (get!1163 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) from!355) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!75377 () Bool)

(declare-fun get!1164 (ValueCell!897 V!2955) V!2955)

(assert (=> b!75377 (= e!49259 (get!1164 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) from!355) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!17861 c!11433) b!75376))

(assert (= (and d!17861 (not c!11433)) b!75377))

(assert (=> b!75376 m!74427))

(assert (=> b!75376 m!74429))

(declare-fun m!74729 () Bool)

(assert (=> b!75376 m!74729))

(assert (=> b!75377 m!74427))

(assert (=> b!75377 m!74429))

(declare-fun m!74731 () Bool)

(assert (=> b!75377 m!74731))

(assert (=> b!75001 d!17861))

(declare-fun condMapEmpty!3207 () Bool)

(declare-fun mapDefault!3207 () ValueCell!897)

(assert (=> mapNonEmpty!3198 (= condMapEmpty!3207 (= mapRest!3198 ((as const (Array (_ BitVec 32) ValueCell!897)) mapDefault!3207)))))

(declare-fun e!49264 () Bool)

(declare-fun mapRes!3207 () Bool)

(assert (=> mapNonEmpty!3198 (= tp!8571 (and e!49264 mapRes!3207))))

(declare-fun b!75384 () Bool)

(declare-fun e!49265 () Bool)

(assert (=> b!75384 (= e!49265 tp_is_empty!2481)))

(declare-fun b!75385 () Bool)

(assert (=> b!75385 (= e!49264 tp_is_empty!2481)))

(declare-fun mapNonEmpty!3207 () Bool)

(declare-fun tp!8589 () Bool)

(assert (=> mapNonEmpty!3207 (= mapRes!3207 (and tp!8589 e!49265))))

(declare-fun mapKey!3207 () (_ BitVec 32))

(declare-fun mapValue!3207 () ValueCell!897)

(declare-fun mapRest!3207 () (Array (_ BitVec 32) ValueCell!897))

(assert (=> mapNonEmpty!3207 (= mapRest!3198 (store mapRest!3207 mapKey!3207 mapValue!3207))))

(declare-fun mapIsEmpty!3207 () Bool)

(assert (=> mapIsEmpty!3207 mapRes!3207))

(assert (= (and mapNonEmpty!3198 condMapEmpty!3207) mapIsEmpty!3207))

(assert (= (and mapNonEmpty!3198 (not condMapEmpty!3207)) mapNonEmpty!3207))

(assert (= (and mapNonEmpty!3207 ((_ is ValueCellFull!897) mapValue!3207)) b!75384))

(assert (= (and mapNonEmpty!3198 ((_ is ValueCellFull!897) mapDefault!3207)) b!75385))

(declare-fun m!74733 () Bool)

(assert (=> mapNonEmpty!3207 m!74733))

(declare-fun condMapEmpty!3208 () Bool)

(declare-fun mapDefault!3208 () ValueCell!897)

(assert (=> mapNonEmpty!3197 (= condMapEmpty!3208 (= mapRest!3197 ((as const (Array (_ BitVec 32) ValueCell!897)) mapDefault!3208)))))

(declare-fun e!49266 () Bool)

(declare-fun mapRes!3208 () Bool)

(assert (=> mapNonEmpty!3197 (= tp!8573 (and e!49266 mapRes!3208))))

(declare-fun b!75386 () Bool)

(declare-fun e!49267 () Bool)

(assert (=> b!75386 (= e!49267 tp_is_empty!2481)))

(declare-fun b!75387 () Bool)

(assert (=> b!75387 (= e!49266 tp_is_empty!2481)))

(declare-fun mapNonEmpty!3208 () Bool)

(declare-fun tp!8590 () Bool)

(assert (=> mapNonEmpty!3208 (= mapRes!3208 (and tp!8590 e!49267))))

(declare-fun mapValue!3208 () ValueCell!897)

(declare-fun mapKey!3208 () (_ BitVec 32))

(declare-fun mapRest!3208 () (Array (_ BitVec 32) ValueCell!897))

(assert (=> mapNonEmpty!3208 (= mapRest!3197 (store mapRest!3208 mapKey!3208 mapValue!3208))))

(declare-fun mapIsEmpty!3208 () Bool)

(assert (=> mapIsEmpty!3208 mapRes!3208))

(assert (= (and mapNonEmpty!3197 condMapEmpty!3208) mapIsEmpty!3208))

(assert (= (and mapNonEmpty!3197 (not condMapEmpty!3208)) mapNonEmpty!3208))

(assert (= (and mapNonEmpty!3208 ((_ is ValueCellFull!897) mapValue!3208)) b!75386))

(assert (= (and mapNonEmpty!3197 ((_ is ValueCellFull!897) mapDefault!3208)) b!75387))

(declare-fun m!74735 () Bool)

(assert (=> mapNonEmpty!3208 m!74735))

(declare-fun b_lambda!3395 () Bool)

(assert (= b_lambda!3393 (or (and b!74991 b_free!2129) (and b!74997 b_free!2131 (= (defaultEntry!2234 newMap!16) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))))) b_lambda!3395)))

(declare-fun b_lambda!3397 () Bool)

(assert (= b_lambda!3391 (or (and b!74991 b_free!2129) (and b!74997 b_free!2131 (= (defaultEntry!2234 newMap!16) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))))) b_lambda!3397)))

(declare-fun b_lambda!3399 () Bool)

(assert (= b_lambda!3389 (or (and b!74991 b_free!2129) (and b!74997 b_free!2131 (= (defaultEntry!2234 newMap!16) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))))) b_lambda!3399)))

(check-sat (not bm!6711) (not b_lambda!3397) (not b!75284) (not b_lambda!3395) (not bm!6733) (not bm!6726) (not mapNonEmpty!3208) (not b!75369) (not b!75265) (not b!75290) (not b!75323) (not b!75377) (not d!17845) (not b!75130) (not b!75370) (not b_next!2131) (not b!75295) (not b!75366) (not d!17815) (not bm!6650) (not bm!6654) (not b_next!2129) (not bm!6730) (not b!75254) (not b!75368) (not b!75349) (not b!75356) b_and!4613 (not b!75138) (not d!17851) (not b!75354) (not b!75147) (not d!17841) (not b_lambda!3387) (not b!75365) (not d!17831) (not bm!6704) (not b!75124) (not bm!6710) (not d!17817) (not b!75322) (not b!75123) (not b!75250) (not b!75283) (not bm!6717) (not b!75359) (not bm!6714) (not d!17843) (not b!75311) (not b!75358) (not d!17823) (not b!75149) (not b!75350) (not bm!6736) (not bm!6655) (not b!75131) (not d!17829) b_and!4615 (not b!75364) (not b!75348) (not d!17853) (not b!75120) (not b!75308) (not bm!6715) (not d!17827) (not b_lambda!3399) (not b!75234) (not d!17847) (not bm!6709) (not b!75353) (not b!75376) (not b!75125) tp_is_empty!2481 (not b!75259) (not b!75310) (not bm!6706) (not bm!6718) (not bm!6723) (not b!75133) (not b!75371) (not mapNonEmpty!3207) (not b!75282) (not b!75275) (not b!75367) (not b!75236) (not d!17825) (not d!17835) (not d!17859) (not bm!6716) (not bm!6653))
(check-sat b_and!4613 b_and!4615 (not b_next!2129) (not b_next!2131))
(get-model)

(declare-fun b!75388 () Bool)

(declare-fun lt!34017 () ListLongMap!1445)

(declare-fun e!49272 () Bool)

(assert (=> b!75388 (= e!49272 (= lt!34017 (getCurrentListMapNoExtraKeys!65 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (_values!2217 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992))) (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) (minValue!2134 (v!2549 (underlying!267 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))))))))

(declare-fun b!75389 () Bool)

(assert (=> b!75389 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))

(assert (=> b!75389 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2104 (_values!2217 (v!2549 (underlying!267 thiss!992))))))))

(declare-fun e!49273 () Bool)

(assert (=> b!75389 (= e!49273 (= (apply!76 lt!34017 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))) (get!1162 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!75391 () Bool)

(declare-fun e!49271 () Bool)

(assert (=> b!75391 (= e!49271 e!49272)))

(declare-fun c!11435 () Bool)

(assert (=> b!75391 (= c!11435 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))

(declare-fun b!75392 () Bool)

(declare-fun e!49270 () ListLongMap!1445)

(declare-fun call!6740 () ListLongMap!1445)

(assert (=> b!75392 (= e!49270 call!6740)))

(declare-fun b!75393 () Bool)

(declare-fun lt!34019 () Unit!2169)

(declare-fun lt!34021 () Unit!2169)

(assert (=> b!75393 (= lt!34019 lt!34021)))

(declare-fun lt!34020 () (_ BitVec 64))

(declare-fun lt!34016 () V!2955)

(declare-fun lt!34018 () ListLongMap!1445)

(declare-fun lt!34022 () (_ BitVec 64))

(assert (=> b!75393 (not (contains!732 (+!101 lt!34018 (tuple2!2157 lt!34020 lt!34016)) lt!34022))))

(assert (=> b!75393 (= lt!34021 (addStillNotContains!27 lt!34018 lt!34020 lt!34016 lt!34022))))

(assert (=> b!75393 (= lt!34022 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!75393 (= lt!34016 (get!1162 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!75393 (= lt!34020 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (=> b!75393 (= lt!34018 call!6740)))

(assert (=> b!75393 (= e!49270 (+!101 call!6740 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (get!1162 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!75394 () Bool)

(declare-fun e!49274 () Bool)

(assert (=> b!75394 (= e!49274 (validKeyInArray!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!75394 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!75395 () Bool)

(declare-fun e!49268 () Bool)

(assert (=> b!75395 (= e!49268 e!49271)))

(declare-fun c!11437 () Bool)

(assert (=> b!75395 (= c!11437 e!49274)))

(declare-fun res!39752 () Bool)

(assert (=> b!75395 (=> (not res!39752) (not e!49274))))

(assert (=> b!75395 (= res!39752 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))

(declare-fun b!75396 () Bool)

(assert (=> b!75396 (= e!49271 e!49273)))

(assert (=> b!75396 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))

(declare-fun res!39754 () Bool)

(assert (=> b!75396 (= res!39754 (contains!732 lt!34017 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!75396 (=> (not res!39754) (not e!49273))))

(declare-fun bm!6737 () Bool)

(assert (=> bm!6737 (= call!6740 (getCurrentListMapNoExtraKeys!65 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (_values!2217 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992))) (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) (minValue!2134 (v!2549 (underlying!267 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992)))))))

(declare-fun b!75397 () Bool)

(declare-fun e!49269 () ListLongMap!1445)

(assert (=> b!75397 (= e!49269 (ListLongMap!1446 Nil!1510))))

(declare-fun d!17863 () Bool)

(assert (=> d!17863 e!49268))

(declare-fun res!39753 () Bool)

(assert (=> d!17863 (=> (not res!39753) (not e!49268))))

(assert (=> d!17863 (= res!39753 (not (contains!732 lt!34017 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!17863 (= lt!34017 e!49269)))

(declare-fun c!11436 () Bool)

(assert (=> d!17863 (= c!11436 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))

(assert (=> d!17863 (validMask!0 (mask!6211 (v!2549 (underlying!267 thiss!992))))))

(assert (=> d!17863 (= (getCurrentListMapNoExtraKeys!65 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (_values!2217 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992))) (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) (minValue!2134 (v!2549 (underlying!267 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992)))) lt!34017)))

(declare-fun b!75390 () Bool)

(declare-fun res!39751 () Bool)

(assert (=> b!75390 (=> (not res!39751) (not e!49268))))

(assert (=> b!75390 (= res!39751 (not (contains!732 lt!34017 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!75398 () Bool)

(assert (=> b!75398 (= e!49269 e!49270)))

(declare-fun c!11434 () Bool)

(assert (=> b!75398 (= c!11434 (validKeyInArray!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(declare-fun b!75399 () Bool)

(assert (=> b!75399 (= e!49272 (isEmpty!324 lt!34017))))

(assert (= (and d!17863 c!11436) b!75397))

(assert (= (and d!17863 (not c!11436)) b!75398))

(assert (= (and b!75398 c!11434) b!75393))

(assert (= (and b!75398 (not c!11434)) b!75392))

(assert (= (or b!75393 b!75392) bm!6737))

(assert (= (and d!17863 res!39753) b!75390))

(assert (= (and b!75390 res!39751) b!75395))

(assert (= (and b!75395 res!39752) b!75394))

(assert (= (and b!75395 c!11437) b!75396))

(assert (= (and b!75395 (not c!11437)) b!75391))

(assert (= (and b!75396 res!39754) b!75389))

(assert (= (and b!75391 c!11435) b!75388))

(assert (= (and b!75391 (not c!11435)) b!75399))

(declare-fun b_lambda!3401 () Bool)

(assert (=> (not b_lambda!3401) (not b!75389)))

(assert (=> b!75389 t!5092))

(declare-fun b_and!4617 () Bool)

(assert (= b_and!4613 (and (=> t!5092 result!2711) b_and!4617)))

(assert (=> b!75389 t!5094))

(declare-fun b_and!4619 () Bool)

(assert (= b_and!4615 (and (=> t!5094 result!2715) b_and!4619)))

(declare-fun b_lambda!3403 () Bool)

(assert (=> (not b_lambda!3403) (not b!75393)))

(assert (=> b!75393 t!5092))

(declare-fun b_and!4621 () Bool)

(assert (= b_and!4617 (and (=> t!5092 result!2711) b_and!4621)))

(assert (=> b!75393 t!5094))

(declare-fun b_and!4623 () Bool)

(assert (= b_and!4619 (and (=> t!5094 result!2715) b_and!4623)))

(declare-fun m!74737 () Bool)

(assert (=> b!75388 m!74737))

(declare-fun m!74739 () Bool)

(assert (=> b!75394 m!74739))

(assert (=> b!75394 m!74739))

(declare-fun m!74741 () Bool)

(assert (=> b!75394 m!74741))

(assert (=> b!75398 m!74739))

(assert (=> b!75398 m!74739))

(assert (=> b!75398 m!74741))

(declare-fun m!74743 () Bool)

(assert (=> d!17863 m!74743))

(assert (=> d!17863 m!74401))

(assert (=> b!75396 m!74739))

(assert (=> b!75396 m!74739))

(declare-fun m!74745 () Bool)

(assert (=> b!75396 m!74745))

(assert (=> b!75389 m!74739))

(declare-fun m!74747 () Bool)

(assert (=> b!75389 m!74747))

(assert (=> b!75389 m!74739))

(declare-fun m!74749 () Bool)

(assert (=> b!75389 m!74749))

(assert (=> b!75389 m!74429))

(assert (=> b!75389 m!74747))

(assert (=> b!75389 m!74429))

(declare-fun m!74751 () Bool)

(assert (=> b!75389 m!74751))

(declare-fun m!74753 () Bool)

(assert (=> b!75390 m!74753))

(assert (=> bm!6737 m!74737))

(assert (=> b!75393 m!74739))

(declare-fun m!74755 () Bool)

(assert (=> b!75393 m!74755))

(declare-fun m!74757 () Bool)

(assert (=> b!75393 m!74757))

(assert (=> b!75393 m!74755))

(assert (=> b!75393 m!74429))

(assert (=> b!75393 m!74747))

(assert (=> b!75393 m!74429))

(assert (=> b!75393 m!74751))

(declare-fun m!74759 () Bool)

(assert (=> b!75393 m!74759))

(declare-fun m!74761 () Bool)

(assert (=> b!75393 m!74761))

(assert (=> b!75393 m!74747))

(declare-fun m!74763 () Bool)

(assert (=> b!75399 m!74763))

(assert (=> b!75348 d!17863))

(declare-fun d!17865 () Bool)

(declare-fun e!49275 () Bool)

(assert (=> d!17865 e!49275))

(declare-fun res!39755 () Bool)

(assert (=> d!17865 (=> res!39755 e!49275)))

(declare-fun lt!34023 () Bool)

(assert (=> d!17865 (= res!39755 (not lt!34023))))

(declare-fun lt!34024 () Bool)

(assert (=> d!17865 (= lt!34023 lt!34024)))

(declare-fun lt!34025 () Unit!2169)

(declare-fun e!49276 () Unit!2169)

(assert (=> d!17865 (= lt!34025 e!49276)))

(declare-fun c!11438 () Bool)

(assert (=> d!17865 (= c!11438 lt!34024)))

(assert (=> d!17865 (= lt!34024 (containsKey!137 (toList!738 lt!33986) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!17865 (= (contains!732 lt!33986 #b0000000000000000000000000000000000000000000000000000000000000000) lt!34023)))

(declare-fun b!75400 () Bool)

(declare-fun lt!34026 () Unit!2169)

(assert (=> b!75400 (= e!49276 lt!34026)))

(assert (=> b!75400 (= lt!34026 (lemmaContainsKeyImpliesGetValueByKeyDefined!86 (toList!738 lt!33986) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!75400 (isDefined!87 (getValueByKey!133 (toList!738 lt!33986) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!75401 () Bool)

(declare-fun Unit!2177 () Unit!2169)

(assert (=> b!75401 (= e!49276 Unit!2177)))

(declare-fun b!75402 () Bool)

(assert (=> b!75402 (= e!49275 (isDefined!87 (getValueByKey!133 (toList!738 lt!33986) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!17865 c!11438) b!75400))

(assert (= (and d!17865 (not c!11438)) b!75401))

(assert (= (and d!17865 (not res!39755)) b!75402))

(declare-fun m!74765 () Bool)

(assert (=> d!17865 m!74765))

(declare-fun m!74767 () Bool)

(assert (=> b!75400 m!74767))

(declare-fun m!74769 () Bool)

(assert (=> b!75400 m!74769))

(assert (=> b!75400 m!74769))

(declare-fun m!74771 () Bool)

(assert (=> b!75400 m!74771))

(assert (=> b!75402 m!74769))

(assert (=> b!75402 m!74769))

(assert (=> b!75402 m!74771))

(assert (=> d!17843 d!17865))

(assert (=> d!17843 d!17849))

(declare-fun d!17867 () Bool)

(declare-fun e!49277 () Bool)

(assert (=> d!17867 e!49277))

(declare-fun res!39756 () Bool)

(assert (=> d!17867 (=> res!39756 e!49277)))

(declare-fun lt!34027 () Bool)

(assert (=> d!17867 (= res!39756 (not lt!34027))))

(declare-fun lt!34028 () Bool)

(assert (=> d!17867 (= lt!34027 lt!34028)))

(declare-fun lt!34029 () Unit!2169)

(declare-fun e!49278 () Unit!2169)

(assert (=> d!17867 (= lt!34029 e!49278)))

(declare-fun c!11439 () Bool)

(assert (=> d!17867 (= c!11439 lt!34028)))

(assert (=> d!17867 (= lt!34028 (containsKey!137 (toList!738 call!6726) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(assert (=> d!17867 (= (contains!732 call!6726 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)) lt!34027)))

(declare-fun b!75403 () Bool)

(declare-fun lt!34030 () Unit!2169)

(assert (=> b!75403 (= e!49278 lt!34030)))

(assert (=> b!75403 (= lt!34030 (lemmaContainsKeyImpliesGetValueByKeyDefined!86 (toList!738 call!6726) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(assert (=> b!75403 (isDefined!87 (getValueByKey!133 (toList!738 call!6726) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(declare-fun b!75404 () Bool)

(declare-fun Unit!2178 () Unit!2169)

(assert (=> b!75404 (= e!49278 Unit!2178)))

(declare-fun b!75405 () Bool)

(assert (=> b!75405 (= e!49277 (isDefined!87 (getValueByKey!133 (toList!738 call!6726) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355))))))

(assert (= (and d!17867 c!11439) b!75403))

(assert (= (and d!17867 (not c!11439)) b!75404))

(assert (= (and d!17867 (not res!39756)) b!75405))

(assert (=> d!17867 m!74389))

(declare-fun m!74773 () Bool)

(assert (=> d!17867 m!74773))

(assert (=> b!75403 m!74389))

(declare-fun m!74775 () Bool)

(assert (=> b!75403 m!74775))

(assert (=> b!75403 m!74389))

(declare-fun m!74777 () Bool)

(assert (=> b!75403 m!74777))

(assert (=> b!75403 m!74777))

(declare-fun m!74779 () Bool)

(assert (=> b!75403 m!74779))

(assert (=> b!75405 m!74389))

(assert (=> b!75405 m!74777))

(assert (=> b!75405 m!74777))

(assert (=> b!75405 m!74779))

(assert (=> b!75234 d!17867))

(declare-fun d!17869 () Bool)

(declare-fun lt!34033 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!78 (List!1513) (InoxSet tuple2!2156))

(assert (=> d!17869 (= lt!34033 (select (content!78 (toList!738 lt!34010)) lt!33753))))

(declare-fun e!49284 () Bool)

(assert (=> d!17869 (= lt!34033 e!49284)))

(declare-fun res!39761 () Bool)

(assert (=> d!17869 (=> (not res!39761) (not e!49284))))

(assert (=> d!17869 (= res!39761 ((_ is Cons!1509) (toList!738 lt!34010)))))

(assert (=> d!17869 (= (contains!734 (toList!738 lt!34010) lt!33753) lt!34033)))

(declare-fun b!75410 () Bool)

(declare-fun e!49283 () Bool)

(assert (=> b!75410 (= e!49284 e!49283)))

(declare-fun res!39762 () Bool)

(assert (=> b!75410 (=> res!39762 e!49283)))

(assert (=> b!75410 (= res!39762 (= (h!2097 (toList!738 lt!34010)) lt!33753))))

(declare-fun b!75411 () Bool)

(assert (=> b!75411 (= e!49283 (contains!734 (t!5095 (toList!738 lt!34010)) lt!33753))))

(assert (= (and d!17869 res!39761) b!75410))

(assert (= (and b!75410 (not res!39762)) b!75411))

(declare-fun m!74781 () Bool)

(assert (=> d!17869 m!74781))

(declare-fun m!74783 () Bool)

(assert (=> d!17869 m!74783))

(declare-fun m!74785 () Bool)

(assert (=> b!75411 m!74785))

(assert (=> b!75369 d!17869))

(declare-fun d!17871 () Bool)

(assert (=> d!17871 (= (+!101 (getCurrentListMap!429 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)) (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 lt!33745)) (getCurrentListMap!429 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) lt!33940 lt!33745 (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun lt!34036 () Unit!2169)

(declare-fun choose!435 (array!3908 array!3910 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2955 V!2955 V!2955 Int) Unit!2169)

(assert (=> d!17871 (= lt!34036 (choose!435 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) lt!33940 (zeroValue!2134 newMap!16) lt!33745 (minValue!2134 newMap!16) (defaultEntry!2234 newMap!16)))))

(assert (=> d!17871 (validMask!0 (mask!6211 newMap!16))))

(assert (=> d!17871 (= (lemmaChangeZeroKeyThenAddPairToListMap!25 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) lt!33940 (zeroValue!2134 newMap!16) lt!33745 (minValue!2134 newMap!16) (defaultEntry!2234 newMap!16)) lt!34036)))

(declare-fun bs!3228 () Bool)

(assert (= bs!3228 d!17871))

(assert (=> bs!3228 m!74497))

(declare-fun m!74787 () Bool)

(assert (=> bs!3228 m!74787))

(declare-fun m!74789 () Bool)

(assert (=> bs!3228 m!74789))

(assert (=> bs!3228 m!74497))

(declare-fun m!74791 () Bool)

(assert (=> bs!3228 m!74791))

(declare-fun m!74793 () Bool)

(assert (=> bs!3228 m!74793))

(assert (=> b!75275 d!17871))

(declare-fun d!17873 () Bool)

(assert (=> d!17873 (= (get!1164 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) from!355) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!75377 d!17873))

(declare-fun b!75412 () Bool)

(declare-fun e!49289 () Bool)

(declare-fun lt!34037 () ListLongMap!1445)

(assert (=> b!75412 (= e!49289 (= (apply!76 lt!34037 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000)) (get!1162 (select (arr!1865 (ite (or c!11403 c!11405) (_values!2217 newMap!16) (array!3911 (store (arr!1865 (_values!2217 newMap!16)) (index!3121 lt!33929) (ValueCellFull!897 lt!33745)) (size!2104 (_values!2217 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!337 (defaultEntry!2234 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!75412 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2104 (ite (or c!11403 c!11405) (_values!2217 newMap!16) (array!3911 (store (arr!1865 (_values!2217 newMap!16)) (index!3121 lt!33929) (ValueCellFull!897 lt!33745)) (size!2104 (_values!2217 newMap!16)))))))))

(assert (=> b!75412 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))))))

(declare-fun bm!6738 () Bool)

(declare-fun call!6746 () ListLongMap!1445)

(declare-fun call!6741 () ListLongMap!1445)

(assert (=> bm!6738 (= call!6746 call!6741)))

(declare-fun bm!6739 () Bool)

(declare-fun call!6744 () Bool)

(assert (=> bm!6739 (= call!6744 (contains!732 lt!34037 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!6740 () Bool)

(declare-fun call!6743 () ListLongMap!1445)

(assert (=> bm!6740 (= call!6743 call!6746)))

(declare-fun b!75413 () Bool)

(declare-fun res!39767 () Bool)

(declare-fun e!49290 () Bool)

(assert (=> b!75413 (=> (not res!39767) (not e!49290))))

(declare-fun e!49291 () Bool)

(assert (=> b!75413 (= res!39767 e!49291)))

(declare-fun res!39769 () Bool)

(assert (=> b!75413 (=> res!39769 e!49291)))

(declare-fun e!49288 () Bool)

(assert (=> b!75413 (= res!39769 (not e!49288))))

(declare-fun res!39768 () Bool)

(assert (=> b!75413 (=> (not res!39768) (not e!49288))))

(assert (=> b!75413 (= res!39768 (bvslt #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))))))

(declare-fun b!75414 () Bool)

(declare-fun e!49296 () ListLongMap!1445)

(declare-fun call!6742 () ListLongMap!1445)

(assert (=> b!75414 (= e!49296 call!6742)))

(declare-fun b!75415 () Bool)

(declare-fun e!49295 () Bool)

(assert (=> b!75415 (= e!49295 (= (apply!76 lt!34037 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!11403 (ite c!11397 (minValue!2134 newMap!16) lt!33745) (minValue!2134 newMap!16))))))

(declare-fun b!75416 () Bool)

(assert (=> b!75416 (= e!49288 (validKeyInArray!0 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!75417 () Bool)

(declare-fun e!49285 () Bool)

(assert (=> b!75417 (= e!49285 (validKeyInArray!0 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!75418 () Bool)

(assert (=> b!75418 (= e!49296 call!6743)))

(declare-fun b!75419 () Bool)

(declare-fun e!49286 () Bool)

(declare-fun e!49293 () Bool)

(assert (=> b!75419 (= e!49286 e!49293)))

(declare-fun res!39763 () Bool)

(declare-fun call!6745 () Bool)

(assert (=> b!75419 (= res!39763 call!6745)))

(assert (=> b!75419 (=> (not res!39763) (not e!49293))))

(declare-fun b!75420 () Bool)

(declare-fun e!49294 () Bool)

(assert (=> b!75420 (= e!49294 (not call!6744))))

(declare-fun b!75421 () Bool)

(assert (=> b!75421 (= e!49294 e!49295)))

(declare-fun res!39765 () Bool)

(assert (=> b!75421 (= res!39765 call!6744)))

(assert (=> b!75421 (=> (not res!39765) (not e!49295))))

(declare-fun b!75422 () Bool)

(assert (=> b!75422 (= e!49291 e!49289)))

(declare-fun res!39771 () Bool)

(assert (=> b!75422 (=> (not res!39771) (not e!49289))))

(assert (=> b!75422 (= res!39771 (contains!732 lt!34037 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!75422 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))))))

(declare-fun b!75423 () Bool)

(assert (=> b!75423 (= e!49293 (= (apply!76 lt!34037 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2134 newMap!16)))))

(declare-fun b!75424 () Bool)

(assert (=> b!75424 (= e!49290 e!49294)))

(declare-fun c!11440 () Bool)

(assert (=> b!75424 (= c!11440 (not (= (bvand (ite c!11403 (ite c!11397 (extraKeys!2089 newMap!16) lt!33932) (extraKeys!2089 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!17875 () Bool)

(assert (=> d!17875 e!49290))

(declare-fun res!39764 () Bool)

(assert (=> d!17875 (=> (not res!39764) (not e!49290))))

(assert (=> d!17875 (= res!39764 (or (bvsge #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))))))))

(declare-fun lt!34041 () ListLongMap!1445)

(assert (=> d!17875 (= lt!34037 lt!34041)))

(declare-fun lt!34045 () Unit!2169)

(declare-fun e!49287 () Unit!2169)

(assert (=> d!17875 (= lt!34045 e!49287)))

(declare-fun c!11442 () Bool)

(assert (=> d!17875 (= c!11442 e!49285)))

(declare-fun res!39766 () Bool)

(assert (=> d!17875 (=> (not res!39766) (not e!49285))))

(assert (=> d!17875 (= res!39766 (bvslt #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))))))

(declare-fun e!49297 () ListLongMap!1445)

(assert (=> d!17875 (= lt!34041 e!49297)))

(declare-fun c!11444 () Bool)

(assert (=> d!17875 (= c!11444 (and (not (= (bvand (ite c!11403 (ite c!11397 (extraKeys!2089 newMap!16) lt!33932) (extraKeys!2089 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!11403 (ite c!11397 (extraKeys!2089 newMap!16) lt!33932) (extraKeys!2089 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!17875 (validMask!0 (mask!6211 newMap!16))))

(assert (=> d!17875 (= (getCurrentListMap!429 (_keys!3890 newMap!16) (ite (or c!11403 c!11405) (_values!2217 newMap!16) (array!3911 (store (arr!1865 (_values!2217 newMap!16)) (index!3121 lt!33929) (ValueCellFull!897 lt!33745)) (size!2104 (_values!2217 newMap!16)))) (mask!6211 newMap!16) (ite c!11403 (ite c!11397 (extraKeys!2089 newMap!16) lt!33932) (extraKeys!2089 newMap!16)) (zeroValue!2134 newMap!16) (ite c!11403 (ite c!11397 (minValue!2134 newMap!16) lt!33745) (minValue!2134 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)) lt!34037)))

(declare-fun call!6747 () ListLongMap!1445)

(declare-fun b!75425 () Bool)

(assert (=> b!75425 (= e!49297 (+!101 call!6747 (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!11403 (ite c!11397 (minValue!2134 newMap!16) lt!33745) (minValue!2134 newMap!16)))))))

(declare-fun bm!6741 () Bool)

(assert (=> bm!6741 (= call!6742 call!6747)))

(declare-fun bm!6742 () Bool)

(declare-fun c!11441 () Bool)

(assert (=> bm!6742 (= call!6747 (+!101 (ite c!11444 call!6741 (ite c!11441 call!6746 call!6743)) (ite (or c!11444 c!11441) (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 newMap!16)) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!11403 (ite c!11397 (minValue!2134 newMap!16) lt!33745) (minValue!2134 newMap!16))))))))

(declare-fun bm!6743 () Bool)

(assert (=> bm!6743 (= call!6745 (contains!732 lt!34037 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!75426 () Bool)

(assert (=> b!75426 (= e!49286 (not call!6745))))

(declare-fun b!75427 () Bool)

(declare-fun e!49292 () ListLongMap!1445)

(assert (=> b!75427 (= e!49297 e!49292)))

(assert (=> b!75427 (= c!11441 (and (not (= (bvand (ite c!11403 (ite c!11397 (extraKeys!2089 newMap!16) lt!33932) (extraKeys!2089 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!11403 (ite c!11397 (extraKeys!2089 newMap!16) lt!33932) (extraKeys!2089 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!75428 () Bool)

(declare-fun c!11443 () Bool)

(assert (=> b!75428 (= c!11443 (and (not (= (bvand (ite c!11403 (ite c!11397 (extraKeys!2089 newMap!16) lt!33932) (extraKeys!2089 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!11403 (ite c!11397 (extraKeys!2089 newMap!16) lt!33932) (extraKeys!2089 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!75428 (= e!49292 e!49296)))

(declare-fun b!75429 () Bool)

(declare-fun Unit!2179 () Unit!2169)

(assert (=> b!75429 (= e!49287 Unit!2179)))

(declare-fun bm!6744 () Bool)

(assert (=> bm!6744 (= call!6741 (getCurrentListMapNoExtraKeys!65 (_keys!3890 newMap!16) (ite (or c!11403 c!11405) (_values!2217 newMap!16) (array!3911 (store (arr!1865 (_values!2217 newMap!16)) (index!3121 lt!33929) (ValueCellFull!897 lt!33745)) (size!2104 (_values!2217 newMap!16)))) (mask!6211 newMap!16) (ite c!11403 (ite c!11397 (extraKeys!2089 newMap!16) lt!33932) (extraKeys!2089 newMap!16)) (zeroValue!2134 newMap!16) (ite c!11403 (ite c!11397 (minValue!2134 newMap!16) lt!33745) (minValue!2134 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun b!75430 () Bool)

(declare-fun lt!34056 () Unit!2169)

(assert (=> b!75430 (= e!49287 lt!34056)))

(declare-fun lt!34040 () ListLongMap!1445)

(assert (=> b!75430 (= lt!34040 (getCurrentListMapNoExtraKeys!65 (_keys!3890 newMap!16) (ite (or c!11403 c!11405) (_values!2217 newMap!16) (array!3911 (store (arr!1865 (_values!2217 newMap!16)) (index!3121 lt!33929) (ValueCellFull!897 lt!33745)) (size!2104 (_values!2217 newMap!16)))) (mask!6211 newMap!16) (ite c!11403 (ite c!11397 (extraKeys!2089 newMap!16) lt!33932) (extraKeys!2089 newMap!16)) (zeroValue!2134 newMap!16) (ite c!11403 (ite c!11397 (minValue!2134 newMap!16) lt!33745) (minValue!2134 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun lt!34047 () (_ BitVec 64))

(assert (=> b!75430 (= lt!34047 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34051 () (_ BitVec 64))

(assert (=> b!75430 (= lt!34051 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!34048 () Unit!2169)

(assert (=> b!75430 (= lt!34048 (addStillContains!52 lt!34040 lt!34047 (zeroValue!2134 newMap!16) lt!34051))))

(assert (=> b!75430 (contains!732 (+!101 lt!34040 (tuple2!2157 lt!34047 (zeroValue!2134 newMap!16))) lt!34051)))

(declare-fun lt!34055 () Unit!2169)

(assert (=> b!75430 (= lt!34055 lt!34048)))

(declare-fun lt!34057 () ListLongMap!1445)

(assert (=> b!75430 (= lt!34057 (getCurrentListMapNoExtraKeys!65 (_keys!3890 newMap!16) (ite (or c!11403 c!11405) (_values!2217 newMap!16) (array!3911 (store (arr!1865 (_values!2217 newMap!16)) (index!3121 lt!33929) (ValueCellFull!897 lt!33745)) (size!2104 (_values!2217 newMap!16)))) (mask!6211 newMap!16) (ite c!11403 (ite c!11397 (extraKeys!2089 newMap!16) lt!33932) (extraKeys!2089 newMap!16)) (zeroValue!2134 newMap!16) (ite c!11403 (ite c!11397 (minValue!2134 newMap!16) lt!33745) (minValue!2134 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun lt!34054 () (_ BitVec 64))

(assert (=> b!75430 (= lt!34054 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34052 () (_ BitVec 64))

(assert (=> b!75430 (= lt!34052 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!34039 () Unit!2169)

(assert (=> b!75430 (= lt!34039 (addApplyDifferent!52 lt!34057 lt!34054 (ite c!11403 (ite c!11397 (minValue!2134 newMap!16) lt!33745) (minValue!2134 newMap!16)) lt!34052))))

(assert (=> b!75430 (= (apply!76 (+!101 lt!34057 (tuple2!2157 lt!34054 (ite c!11403 (ite c!11397 (minValue!2134 newMap!16) lt!33745) (minValue!2134 newMap!16)))) lt!34052) (apply!76 lt!34057 lt!34052))))

(declare-fun lt!34058 () Unit!2169)

(assert (=> b!75430 (= lt!34058 lt!34039)))

(declare-fun lt!34044 () ListLongMap!1445)

(assert (=> b!75430 (= lt!34044 (getCurrentListMapNoExtraKeys!65 (_keys!3890 newMap!16) (ite (or c!11403 c!11405) (_values!2217 newMap!16) (array!3911 (store (arr!1865 (_values!2217 newMap!16)) (index!3121 lt!33929) (ValueCellFull!897 lt!33745)) (size!2104 (_values!2217 newMap!16)))) (mask!6211 newMap!16) (ite c!11403 (ite c!11397 (extraKeys!2089 newMap!16) lt!33932) (extraKeys!2089 newMap!16)) (zeroValue!2134 newMap!16) (ite c!11403 (ite c!11397 (minValue!2134 newMap!16) lt!33745) (minValue!2134 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun lt!34050 () (_ BitVec 64))

(assert (=> b!75430 (= lt!34050 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34043 () (_ BitVec 64))

(assert (=> b!75430 (= lt!34043 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!34038 () Unit!2169)

(assert (=> b!75430 (= lt!34038 (addApplyDifferent!52 lt!34044 lt!34050 (zeroValue!2134 newMap!16) lt!34043))))

(assert (=> b!75430 (= (apply!76 (+!101 lt!34044 (tuple2!2157 lt!34050 (zeroValue!2134 newMap!16))) lt!34043) (apply!76 lt!34044 lt!34043))))

(declare-fun lt!34046 () Unit!2169)

(assert (=> b!75430 (= lt!34046 lt!34038)))

(declare-fun lt!34053 () ListLongMap!1445)

(assert (=> b!75430 (= lt!34053 (getCurrentListMapNoExtraKeys!65 (_keys!3890 newMap!16) (ite (or c!11403 c!11405) (_values!2217 newMap!16) (array!3911 (store (arr!1865 (_values!2217 newMap!16)) (index!3121 lt!33929) (ValueCellFull!897 lt!33745)) (size!2104 (_values!2217 newMap!16)))) (mask!6211 newMap!16) (ite c!11403 (ite c!11397 (extraKeys!2089 newMap!16) lt!33932) (extraKeys!2089 newMap!16)) (zeroValue!2134 newMap!16) (ite c!11403 (ite c!11397 (minValue!2134 newMap!16) lt!33745) (minValue!2134 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun lt!34049 () (_ BitVec 64))

(assert (=> b!75430 (= lt!34049 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34042 () (_ BitVec 64))

(assert (=> b!75430 (= lt!34042 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!75430 (= lt!34056 (addApplyDifferent!52 lt!34053 lt!34049 (ite c!11403 (ite c!11397 (minValue!2134 newMap!16) lt!33745) (minValue!2134 newMap!16)) lt!34042))))

(assert (=> b!75430 (= (apply!76 (+!101 lt!34053 (tuple2!2157 lt!34049 (ite c!11403 (ite c!11397 (minValue!2134 newMap!16) lt!33745) (minValue!2134 newMap!16)))) lt!34042) (apply!76 lt!34053 lt!34042))))

(declare-fun b!75431 () Bool)

(declare-fun res!39770 () Bool)

(assert (=> b!75431 (=> (not res!39770) (not e!49290))))

(assert (=> b!75431 (= res!39770 e!49286)))

(declare-fun c!11445 () Bool)

(assert (=> b!75431 (= c!11445 (not (= (bvand (ite c!11403 (ite c!11397 (extraKeys!2089 newMap!16) lt!33932) (extraKeys!2089 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!75432 () Bool)

(assert (=> b!75432 (= e!49292 call!6742)))

(assert (= (and d!17875 c!11444) b!75425))

(assert (= (and d!17875 (not c!11444)) b!75427))

(assert (= (and b!75427 c!11441) b!75432))

(assert (= (and b!75427 (not c!11441)) b!75428))

(assert (= (and b!75428 c!11443) b!75414))

(assert (= (and b!75428 (not c!11443)) b!75418))

(assert (= (or b!75414 b!75418) bm!6740))

(assert (= (or b!75432 bm!6740) bm!6738))

(assert (= (or b!75432 b!75414) bm!6741))

(assert (= (or b!75425 bm!6738) bm!6744))

(assert (= (or b!75425 bm!6741) bm!6742))

(assert (= (and d!17875 res!39766) b!75417))

(assert (= (and d!17875 c!11442) b!75430))

(assert (= (and d!17875 (not c!11442)) b!75429))

(assert (= (and d!17875 res!39764) b!75413))

(assert (= (and b!75413 res!39768) b!75416))

(assert (= (and b!75413 (not res!39769)) b!75422))

(assert (= (and b!75422 res!39771) b!75412))

(assert (= (and b!75413 res!39767) b!75431))

(assert (= (and b!75431 c!11445) b!75419))

(assert (= (and b!75431 (not c!11445)) b!75426))

(assert (= (and b!75419 res!39763) b!75423))

(assert (= (or b!75419 b!75426) bm!6743))

(assert (= (and b!75431 res!39770) b!75424))

(assert (= (and b!75424 c!11440) b!75421))

(assert (= (and b!75424 (not c!11440)) b!75420))

(assert (= (and b!75421 res!39765) b!75415))

(assert (= (or b!75421 b!75420) bm!6739))

(declare-fun b_lambda!3405 () Bool)

(assert (=> (not b_lambda!3405) (not b!75412)))

(declare-fun tb!1561 () Bool)

(declare-fun t!5102 () Bool)

(assert (=> (and b!74991 (= (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) (defaultEntry!2234 newMap!16)) t!5102) tb!1561))

(declare-fun result!2725 () Bool)

(assert (=> tb!1561 (= result!2725 tp_is_empty!2481)))

(assert (=> b!75412 t!5102))

(declare-fun b_and!4625 () Bool)

(assert (= b_and!4621 (and (=> t!5102 result!2725) b_and!4625)))

(declare-fun t!5104 () Bool)

(declare-fun tb!1563 () Bool)

(assert (=> (and b!74997 (= (defaultEntry!2234 newMap!16) (defaultEntry!2234 newMap!16)) t!5104) tb!1563))

(declare-fun result!2727 () Bool)

(assert (= result!2727 result!2725))

(assert (=> b!75412 t!5104))

(declare-fun b_and!4627 () Bool)

(assert (= b_and!4623 (and (=> t!5104 result!2727) b_and!4627)))

(declare-fun m!74795 () Bool)

(assert (=> b!75422 m!74795))

(assert (=> b!75422 m!74795))

(declare-fun m!74797 () Bool)

(assert (=> b!75422 m!74797))

(declare-fun m!74799 () Bool)

(assert (=> b!75415 m!74799))

(assert (=> b!75417 m!74795))

(assert (=> b!75417 m!74795))

(declare-fun m!74801 () Bool)

(assert (=> b!75417 m!74801))

(declare-fun m!74803 () Bool)

(assert (=> bm!6739 m!74803))

(declare-fun m!74805 () Bool)

(assert (=> b!75412 m!74805))

(assert (=> b!75412 m!74795))

(declare-fun m!74807 () Bool)

(assert (=> b!75412 m!74807))

(assert (=> b!75412 m!74805))

(declare-fun m!74809 () Bool)

(assert (=> b!75412 m!74809))

(assert (=> b!75412 m!74795))

(declare-fun m!74811 () Bool)

(assert (=> b!75412 m!74811))

(assert (=> b!75412 m!74807))

(declare-fun m!74813 () Bool)

(assert (=> b!75425 m!74813))

(assert (=> b!75416 m!74795))

(assert (=> b!75416 m!74795))

(assert (=> b!75416 m!74801))

(declare-fun m!74815 () Bool)

(assert (=> b!75430 m!74815))

(declare-fun m!74817 () Bool)

(assert (=> b!75430 m!74817))

(declare-fun m!74819 () Bool)

(assert (=> b!75430 m!74819))

(declare-fun m!74821 () Bool)

(assert (=> b!75430 m!74821))

(declare-fun m!74823 () Bool)

(assert (=> b!75430 m!74823))

(declare-fun m!74825 () Bool)

(assert (=> b!75430 m!74825))

(declare-fun m!74827 () Bool)

(assert (=> b!75430 m!74827))

(assert (=> b!75430 m!74795))

(declare-fun m!74829 () Bool)

(assert (=> b!75430 m!74829))

(declare-fun m!74831 () Bool)

(assert (=> b!75430 m!74831))

(assert (=> b!75430 m!74823))

(declare-fun m!74833 () Bool)

(assert (=> b!75430 m!74833))

(declare-fun m!74835 () Bool)

(assert (=> b!75430 m!74835))

(declare-fun m!74837 () Bool)

(assert (=> b!75430 m!74837))

(declare-fun m!74839 () Bool)

(assert (=> b!75430 m!74839))

(assert (=> b!75430 m!74819))

(assert (=> b!75430 m!74837))

(declare-fun m!74841 () Bool)

(assert (=> b!75430 m!74841))

(assert (=> b!75430 m!74835))

(declare-fun m!74843 () Bool)

(assert (=> b!75430 m!74843))

(declare-fun m!74845 () Bool)

(assert (=> b!75430 m!74845))

(assert (=> d!17875 m!74787))

(assert (=> bm!6744 m!74817))

(declare-fun m!74847 () Bool)

(assert (=> bm!6742 m!74847))

(declare-fun m!74849 () Bool)

(assert (=> b!75423 m!74849))

(declare-fun m!74851 () Bool)

(assert (=> bm!6743 m!74851))

(assert (=> bm!6718 d!17875))

(declare-fun d!17877 () Bool)

(declare-fun e!49298 () Bool)

(assert (=> d!17877 e!49298))

(declare-fun res!39772 () Bool)

(assert (=> d!17877 (=> res!39772 e!49298)))

(declare-fun lt!34059 () Bool)

(assert (=> d!17877 (= res!39772 (not lt!34059))))

(declare-fun lt!34060 () Bool)

(assert (=> d!17877 (= lt!34059 lt!34060)))

(declare-fun lt!34061 () Unit!2169)

(declare-fun e!49299 () Unit!2169)

(assert (=> d!17877 (= lt!34061 e!49299)))

(declare-fun c!11446 () Bool)

(assert (=> d!17877 (= c!11446 lt!34060)))

(assert (=> d!17877 (= lt!34060 (containsKey!137 (toList!738 lt!33986) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!17877 (= (contains!732 lt!33986 #b1000000000000000000000000000000000000000000000000000000000000000) lt!34059)))

(declare-fun b!75433 () Bool)

(declare-fun lt!34062 () Unit!2169)

(assert (=> b!75433 (= e!49299 lt!34062)))

(assert (=> b!75433 (= lt!34062 (lemmaContainsKeyImpliesGetValueByKeyDefined!86 (toList!738 lt!33986) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!75433 (isDefined!87 (getValueByKey!133 (toList!738 lt!33986) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!75434 () Bool)

(declare-fun Unit!2180 () Unit!2169)

(assert (=> b!75434 (= e!49299 Unit!2180)))

(declare-fun b!75435 () Bool)

(assert (=> b!75435 (= e!49298 (isDefined!87 (getValueByKey!133 (toList!738 lt!33986) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!17877 c!11446) b!75433))

(assert (= (and d!17877 (not c!11446)) b!75434))

(assert (= (and d!17877 (not res!39772)) b!75435))

(declare-fun m!74853 () Bool)

(assert (=> d!17877 m!74853))

(declare-fun m!74855 () Bool)

(assert (=> b!75433 m!74855))

(declare-fun m!74857 () Bool)

(assert (=> b!75433 m!74857))

(assert (=> b!75433 m!74857))

(declare-fun m!74859 () Bool)

(assert (=> b!75433 m!74859))

(assert (=> b!75435 m!74857))

(assert (=> b!75435 m!74857))

(assert (=> b!75435 m!74859))

(assert (=> b!75350 d!17877))

(declare-fun d!17879 () Bool)

(declare-fun lt!34063 () Bool)

(assert (=> d!17879 (= lt!34063 (select (content!78 (toList!738 lt!34014)) lt!33749))))

(declare-fun e!49301 () Bool)

(assert (=> d!17879 (= lt!34063 e!49301)))

(declare-fun res!39773 () Bool)

(assert (=> d!17879 (=> (not res!39773) (not e!49301))))

(assert (=> d!17879 (= res!39773 ((_ is Cons!1509) (toList!738 lt!34014)))))

(assert (=> d!17879 (= (contains!734 (toList!738 lt!34014) lt!33749) lt!34063)))

(declare-fun b!75436 () Bool)

(declare-fun e!49300 () Bool)

(assert (=> b!75436 (= e!49301 e!49300)))

(declare-fun res!39774 () Bool)

(assert (=> b!75436 (=> res!39774 e!49300)))

(assert (=> b!75436 (= res!39774 (= (h!2097 (toList!738 lt!34014)) lt!33749))))

(declare-fun b!75437 () Bool)

(assert (=> b!75437 (= e!49300 (contains!734 (t!5095 (toList!738 lt!34014)) lt!33749))))

(assert (= (and d!17879 res!39773) b!75436))

(assert (= (and b!75436 (not res!39774)) b!75437))

(declare-fun m!74861 () Bool)

(assert (=> d!17879 m!74861))

(declare-fun m!74863 () Bool)

(assert (=> d!17879 m!74863))

(declare-fun m!74865 () Bool)

(assert (=> b!75437 m!74865))

(assert (=> b!75371 d!17879))

(declare-fun d!17881 () Bool)

(declare-fun get!1165 (Option!139) V!2955)

(assert (=> d!17881 (= (apply!76 lt!33835 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1165 (getValueByKey!133 (toList!738 lt!33835) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!3229 () Bool)

(assert (= bs!3229 d!17881))

(declare-fun m!74867 () Bool)

(assert (=> bs!3229 m!74867))

(assert (=> bs!3229 m!74867))

(declare-fun m!74869 () Bool)

(assert (=> bs!3229 m!74869))

(assert (=> b!75131 d!17881))

(declare-fun d!17883 () Bool)

(declare-fun e!49302 () Bool)

(assert (=> d!17883 e!49302))

(declare-fun res!39775 () Bool)

(assert (=> d!17883 (=> res!39775 e!49302)))

(declare-fun lt!34064 () Bool)

(assert (=> d!17883 (= res!39775 (not lt!34064))))

(declare-fun lt!34065 () Bool)

(assert (=> d!17883 (= lt!34064 lt!34065)))

(declare-fun lt!34066 () Unit!2169)

(declare-fun e!49303 () Unit!2169)

(assert (=> d!17883 (= lt!34066 e!49303)))

(declare-fun c!11447 () Bool)

(assert (=> d!17883 (= c!11447 lt!34065)))

(assert (=> d!17883 (= lt!34065 (containsKey!137 (toList!738 lt!34002) (_1!1088 lt!33749)))))

(assert (=> d!17883 (= (contains!732 lt!34002 (_1!1088 lt!33749)) lt!34064)))

(declare-fun b!75438 () Bool)

(declare-fun lt!34067 () Unit!2169)

(assert (=> b!75438 (= e!49303 lt!34067)))

(assert (=> b!75438 (= lt!34067 (lemmaContainsKeyImpliesGetValueByKeyDefined!86 (toList!738 lt!34002) (_1!1088 lt!33749)))))

(assert (=> b!75438 (isDefined!87 (getValueByKey!133 (toList!738 lt!34002) (_1!1088 lt!33749)))))

(declare-fun b!75439 () Bool)

(declare-fun Unit!2181 () Unit!2169)

(assert (=> b!75439 (= e!49303 Unit!2181)))

(declare-fun b!75440 () Bool)

(assert (=> b!75440 (= e!49302 (isDefined!87 (getValueByKey!133 (toList!738 lt!34002) (_1!1088 lt!33749))))))

(assert (= (and d!17883 c!11447) b!75438))

(assert (= (and d!17883 (not c!11447)) b!75439))

(assert (= (and d!17883 (not res!39775)) b!75440))

(declare-fun m!74871 () Bool)

(assert (=> d!17883 m!74871))

(declare-fun m!74873 () Bool)

(assert (=> b!75438 m!74873))

(assert (=> b!75438 m!74687))

(assert (=> b!75438 m!74687))

(declare-fun m!74875 () Bool)

(assert (=> b!75438 m!74875))

(assert (=> b!75440 m!74687))

(assert (=> b!75440 m!74687))

(assert (=> b!75440 m!74875))

(assert (=> d!17845 d!17883))

(declare-fun b!75450 () Bool)

(declare-fun e!49308 () Option!139)

(declare-fun e!49309 () Option!139)

(assert (=> b!75450 (= e!49308 e!49309)))

(declare-fun c!11453 () Bool)

(assert (=> b!75450 (= c!11453 (and ((_ is Cons!1509) lt!34003) (not (= (_1!1088 (h!2097 lt!34003)) (_1!1088 lt!33749)))))))

(declare-fun b!75451 () Bool)

(assert (=> b!75451 (= e!49309 (getValueByKey!133 (t!5095 lt!34003) (_1!1088 lt!33749)))))

(declare-fun b!75449 () Bool)

(assert (=> b!75449 (= e!49308 (Some!138 (_2!1088 (h!2097 lt!34003))))))

(declare-fun b!75452 () Bool)

(assert (=> b!75452 (= e!49309 None!137)))

(declare-fun d!17885 () Bool)

(declare-fun c!11452 () Bool)

(assert (=> d!17885 (= c!11452 (and ((_ is Cons!1509) lt!34003) (= (_1!1088 (h!2097 lt!34003)) (_1!1088 lt!33749))))))

(assert (=> d!17885 (= (getValueByKey!133 lt!34003 (_1!1088 lt!33749)) e!49308)))

(assert (= (and d!17885 c!11452) b!75449))

(assert (= (and d!17885 (not c!11452)) b!75450))

(assert (= (and b!75450 c!11453) b!75451))

(assert (= (and b!75450 (not c!11453)) b!75452))

(declare-fun m!74877 () Bool)

(assert (=> b!75451 m!74877))

(assert (=> d!17845 d!17885))

(declare-fun d!17887 () Bool)

(assert (=> d!17887 (= (getValueByKey!133 lt!34003 (_1!1088 lt!33749)) (Some!138 (_2!1088 lt!33749)))))

(declare-fun lt!34070 () Unit!2169)

(declare-fun choose!436 (List!1513 (_ BitVec 64) V!2955) Unit!2169)

(assert (=> d!17887 (= lt!34070 (choose!436 lt!34003 (_1!1088 lt!33749) (_2!1088 lt!33749)))))

(declare-fun e!49312 () Bool)

(assert (=> d!17887 e!49312))

(declare-fun res!39780 () Bool)

(assert (=> d!17887 (=> (not res!39780) (not e!49312))))

(declare-fun isStrictlySorted!288 (List!1513) Bool)

(assert (=> d!17887 (= res!39780 (isStrictlySorted!288 lt!34003))))

(assert (=> d!17887 (= (lemmaContainsTupThenGetReturnValue!52 lt!34003 (_1!1088 lt!33749) (_2!1088 lt!33749)) lt!34070)))

(declare-fun b!75457 () Bool)

(declare-fun res!39781 () Bool)

(assert (=> b!75457 (=> (not res!39781) (not e!49312))))

(assert (=> b!75457 (= res!39781 (containsKey!137 lt!34003 (_1!1088 lt!33749)))))

(declare-fun b!75458 () Bool)

(assert (=> b!75458 (= e!49312 (contains!734 lt!34003 (tuple2!2157 (_1!1088 lt!33749) (_2!1088 lt!33749))))))

(assert (= (and d!17887 res!39780) b!75457))

(assert (= (and b!75457 res!39781) b!75458))

(assert (=> d!17887 m!74681))

(declare-fun m!74879 () Bool)

(assert (=> d!17887 m!74879))

(declare-fun m!74881 () Bool)

(assert (=> d!17887 m!74881))

(declare-fun m!74883 () Bool)

(assert (=> b!75457 m!74883))

(declare-fun m!74885 () Bool)

(assert (=> b!75458 m!74885))

(assert (=> d!17845 d!17887))

(declare-fun e!49323 () List!1513)

(declare-fun b!75479 () Bool)

(declare-fun c!11463 () Bool)

(declare-fun c!11464 () Bool)

(assert (=> b!75479 (= e!49323 (ite c!11464 (t!5095 (toList!738 (+!101 lt!33746 lt!33753))) (ite c!11463 (Cons!1509 (h!2097 (toList!738 (+!101 lt!33746 lt!33753))) (t!5095 (toList!738 (+!101 lt!33746 lt!33753)))) Nil!1510)))))

(declare-fun c!11462 () Bool)

(declare-fun call!6754 () List!1513)

(declare-fun bm!6751 () Bool)

(declare-fun $colon$colon!66 (List!1513 tuple2!2156) List!1513)

(assert (=> bm!6751 (= call!6754 ($colon$colon!66 e!49323 (ite c!11462 (h!2097 (toList!738 (+!101 lt!33746 lt!33753))) (tuple2!2157 (_1!1088 lt!33749) (_2!1088 lt!33749)))))))

(declare-fun c!11465 () Bool)

(assert (=> bm!6751 (= c!11465 c!11462)))

(declare-fun b!75480 () Bool)

(assert (=> b!75480 (= e!49323 (insertStrictlySorted!54 (t!5095 (toList!738 (+!101 lt!33746 lt!33753))) (_1!1088 lt!33749) (_2!1088 lt!33749)))))

(declare-fun b!75481 () Bool)

(assert (=> b!75481 (= c!11463 (and ((_ is Cons!1509) (toList!738 (+!101 lt!33746 lt!33753))) (bvsgt (_1!1088 (h!2097 (toList!738 (+!101 lt!33746 lt!33753)))) (_1!1088 lt!33749))))))

(declare-fun e!49324 () List!1513)

(declare-fun e!49326 () List!1513)

(assert (=> b!75481 (= e!49324 e!49326)))

(declare-fun b!75482 () Bool)

(declare-fun e!49327 () List!1513)

(assert (=> b!75482 (= e!49327 e!49324)))

(assert (=> b!75482 (= c!11464 (and ((_ is Cons!1509) (toList!738 (+!101 lt!33746 lt!33753))) (= (_1!1088 (h!2097 (toList!738 (+!101 lt!33746 lt!33753)))) (_1!1088 lt!33749))))))

(declare-fun b!75483 () Bool)

(declare-fun call!6755 () List!1513)

(assert (=> b!75483 (= e!49324 call!6755)))

(declare-fun bm!6752 () Bool)

(declare-fun call!6756 () List!1513)

(assert (=> bm!6752 (= call!6756 call!6755)))

(declare-fun b!75484 () Bool)

(assert (=> b!75484 (= e!49326 call!6756)))

(declare-fun d!17889 () Bool)

(declare-fun e!49325 () Bool)

(assert (=> d!17889 e!49325))

(declare-fun res!39786 () Bool)

(assert (=> d!17889 (=> (not res!39786) (not e!49325))))

(declare-fun lt!34073 () List!1513)

(assert (=> d!17889 (= res!39786 (isStrictlySorted!288 lt!34073))))

(assert (=> d!17889 (= lt!34073 e!49327)))

(assert (=> d!17889 (= c!11462 (and ((_ is Cons!1509) (toList!738 (+!101 lt!33746 lt!33753))) (bvslt (_1!1088 (h!2097 (toList!738 (+!101 lt!33746 lt!33753)))) (_1!1088 lt!33749))))))

(assert (=> d!17889 (isStrictlySorted!288 (toList!738 (+!101 lt!33746 lt!33753)))))

(assert (=> d!17889 (= (insertStrictlySorted!54 (toList!738 (+!101 lt!33746 lt!33753)) (_1!1088 lt!33749) (_2!1088 lt!33749)) lt!34073)))

(declare-fun b!75485 () Bool)

(assert (=> b!75485 (= e!49326 call!6756)))

(declare-fun b!75486 () Bool)

(assert (=> b!75486 (= e!49327 call!6754)))

(declare-fun b!75487 () Bool)

(declare-fun res!39787 () Bool)

(assert (=> b!75487 (=> (not res!39787) (not e!49325))))

(assert (=> b!75487 (= res!39787 (containsKey!137 lt!34073 (_1!1088 lt!33749)))))

(declare-fun bm!6753 () Bool)

(assert (=> bm!6753 (= call!6755 call!6754)))

(declare-fun b!75488 () Bool)

(assert (=> b!75488 (= e!49325 (contains!734 lt!34073 (tuple2!2157 (_1!1088 lt!33749) (_2!1088 lt!33749))))))

(assert (= (and d!17889 c!11462) b!75486))

(assert (= (and d!17889 (not c!11462)) b!75482))

(assert (= (and b!75482 c!11464) b!75483))

(assert (= (and b!75482 (not c!11464)) b!75481))

(assert (= (and b!75481 c!11463) b!75484))

(assert (= (and b!75481 (not c!11463)) b!75485))

(assert (= (or b!75484 b!75485) bm!6752))

(assert (= (or b!75483 bm!6752) bm!6753))

(assert (= (or b!75486 bm!6753) bm!6751))

(assert (= (and bm!6751 c!11465) b!75480))

(assert (= (and bm!6751 (not c!11465)) b!75479))

(assert (= (and d!17889 res!39786) b!75487))

(assert (= (and b!75487 res!39787) b!75488))

(declare-fun m!74887 () Bool)

(assert (=> d!17889 m!74887))

(declare-fun m!74889 () Bool)

(assert (=> d!17889 m!74889))

(declare-fun m!74891 () Bool)

(assert (=> b!75487 m!74891))

(declare-fun m!74893 () Bool)

(assert (=> b!75488 m!74893))

(declare-fun m!74895 () Bool)

(assert (=> bm!6751 m!74895))

(declare-fun m!74897 () Bool)

(assert (=> b!75480 m!74897))

(assert (=> d!17845 d!17889))

(declare-fun b!75501 () Bool)

(declare-fun e!49335 () SeekEntryResult!247)

(declare-fun e!49334 () SeekEntryResult!247)

(assert (=> b!75501 (= e!49335 e!49334)))

(declare-fun lt!34081 () (_ BitVec 64))

(declare-fun lt!34082 () SeekEntryResult!247)

(assert (=> b!75501 (= lt!34081 (select (arr!1864 (_keys!3890 newMap!16)) (index!3122 lt!34082)))))

(declare-fun c!11473 () Bool)

(assert (=> b!75501 (= c!11473 (= lt!34081 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(declare-fun b!75502 () Bool)

(assert (=> b!75502 (= e!49335 Undefined!247)))

(declare-fun b!75503 () Bool)

(assert (=> b!75503 (= e!49334 (Found!247 (index!3122 lt!34082)))))

(declare-fun b!75504 () Bool)

(declare-fun e!49336 () SeekEntryResult!247)

(assert (=> b!75504 (= e!49336 (MissingZero!247 (index!3122 lt!34082)))))

(declare-fun b!75506 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3908 (_ BitVec 32)) SeekEntryResult!247)

(assert (=> b!75506 (= e!49336 (seekKeyOrZeroReturnVacant!0 (x!11307 lt!34082) (index!3122 lt!34082) (index!3122 lt!34082) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (_keys!3890 newMap!16) (mask!6211 newMap!16)))))

(declare-fun b!75505 () Bool)

(declare-fun c!11472 () Bool)

(assert (=> b!75505 (= c!11472 (= lt!34081 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!75505 (= e!49334 e!49336)))

(declare-fun lt!34080 () SeekEntryResult!247)

(declare-fun d!17891 () Bool)

(assert (=> d!17891 (and (or ((_ is Undefined!247) lt!34080) (not ((_ is Found!247) lt!34080)) (and (bvsge (index!3121 lt!34080) #b00000000000000000000000000000000) (bvslt (index!3121 lt!34080) (size!2103 (_keys!3890 newMap!16))))) (or ((_ is Undefined!247) lt!34080) ((_ is Found!247) lt!34080) (not ((_ is MissingZero!247) lt!34080)) (and (bvsge (index!3120 lt!34080) #b00000000000000000000000000000000) (bvslt (index!3120 lt!34080) (size!2103 (_keys!3890 newMap!16))))) (or ((_ is Undefined!247) lt!34080) ((_ is Found!247) lt!34080) ((_ is MissingZero!247) lt!34080) (not ((_ is MissingVacant!247) lt!34080)) (and (bvsge (index!3123 lt!34080) #b00000000000000000000000000000000) (bvslt (index!3123 lt!34080) (size!2103 (_keys!3890 newMap!16))))) (or ((_ is Undefined!247) lt!34080) (ite ((_ is Found!247) lt!34080) (= (select (arr!1864 (_keys!3890 newMap!16)) (index!3121 lt!34080)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)) (ite ((_ is MissingZero!247) lt!34080) (= (select (arr!1864 (_keys!3890 newMap!16)) (index!3120 lt!34080)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!247) lt!34080) (= (select (arr!1864 (_keys!3890 newMap!16)) (index!3123 lt!34080)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!17891 (= lt!34080 e!49335)))

(declare-fun c!11474 () Bool)

(assert (=> d!17891 (= c!11474 (and ((_ is Intermediate!247) lt!34082) (undefined!1059 lt!34082)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3908 (_ BitVec 32)) SeekEntryResult!247)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!17891 (= lt!34082 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (mask!6211 newMap!16)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (_keys!3890 newMap!16) (mask!6211 newMap!16)))))

(assert (=> d!17891 (validMask!0 (mask!6211 newMap!16))))

(assert (=> d!17891 (= (seekEntryOrOpen!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (_keys!3890 newMap!16) (mask!6211 newMap!16)) lt!34080)))

(assert (= (and d!17891 c!11474) b!75502))

(assert (= (and d!17891 (not c!11474)) b!75501))

(assert (= (and b!75501 c!11473) b!75503))

(assert (= (and b!75501 (not c!11473)) b!75505))

(assert (= (and b!75505 c!11472) b!75504))

(assert (= (and b!75505 (not c!11472)) b!75506))

(declare-fun m!74899 () Bool)

(assert (=> b!75501 m!74899))

(assert (=> b!75506 m!74389))

(declare-fun m!74901 () Bool)

(assert (=> b!75506 m!74901))

(declare-fun m!74903 () Bool)

(assert (=> d!17891 m!74903))

(declare-fun m!74905 () Bool)

(assert (=> d!17891 m!74905))

(assert (=> d!17891 m!74389))

(declare-fun m!74907 () Bool)

(assert (=> d!17891 m!74907))

(declare-fun m!74909 () Bool)

(assert (=> d!17891 m!74909))

(declare-fun m!74911 () Bool)

(assert (=> d!17891 m!74911))

(assert (=> d!17891 m!74389))

(assert (=> d!17891 m!74905))

(assert (=> d!17891 m!74787))

(assert (=> b!75236 d!17891))

(declare-fun d!17893 () Bool)

(declare-fun e!49337 () Bool)

(assert (=> d!17893 e!49337))

(declare-fun res!39788 () Bool)

(assert (=> d!17893 (=> (not res!39788) (not e!49337))))

(declare-fun lt!34085 () ListLongMap!1445)

(assert (=> d!17893 (= res!39788 (contains!732 lt!34085 (_1!1088 (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(declare-fun lt!34086 () List!1513)

(assert (=> d!17893 (= lt!34085 (ListLongMap!1446 lt!34086))))

(declare-fun lt!34084 () Unit!2169)

(declare-fun lt!34083 () Unit!2169)

(assert (=> d!17893 (= lt!34084 lt!34083)))

(assert (=> d!17893 (= (getValueByKey!133 lt!34086 (_1!1088 (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))) (Some!138 (_2!1088 (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (=> d!17893 (= lt!34083 (lemmaContainsTupThenGetReturnValue!52 lt!34086 (_1!1088 (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992))))) (_2!1088 (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (=> d!17893 (= lt!34086 (insertStrictlySorted!54 (toList!738 call!6658) (_1!1088 (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992))))) (_2!1088 (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (=> d!17893 (= (+!101 call!6658 (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992))))) lt!34085)))

(declare-fun b!75507 () Bool)

(declare-fun res!39789 () Bool)

(assert (=> b!75507 (=> (not res!39789) (not e!49337))))

(assert (=> b!75507 (= res!39789 (= (getValueByKey!133 (toList!738 lt!34085) (_1!1088 (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))) (Some!138 (_2!1088 (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992))))))))))

(declare-fun b!75508 () Bool)

(assert (=> b!75508 (= e!49337 (contains!734 (toList!738 lt!34085) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992))))))))

(assert (= (and d!17893 res!39788) b!75507))

(assert (= (and b!75507 res!39789) b!75508))

(declare-fun m!74913 () Bool)

(assert (=> d!17893 m!74913))

(declare-fun m!74915 () Bool)

(assert (=> d!17893 m!74915))

(declare-fun m!74917 () Bool)

(assert (=> d!17893 m!74917))

(declare-fun m!74919 () Bool)

(assert (=> d!17893 m!74919))

(declare-fun m!74921 () Bool)

(assert (=> b!75507 m!74921))

(declare-fun m!74923 () Bool)

(assert (=> b!75508 m!74923))

(assert (=> b!75133 d!17893))

(declare-fun d!17895 () Bool)

(assert (=> d!17895 (= (validKeyInArray!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) #b00000000000000000000000000000000)) (and (not (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!75322 d!17895))

(assert (=> d!17829 d!17833))

(declare-fun d!17897 () Bool)

(assert (=> d!17897 (not (arrayContainsKey!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> d!17897 true))

(declare-fun _$68!58 () Unit!2169)

(assert (=> d!17897 (= (choose!68 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (Cons!1510 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) Nil!1511)) _$68!58)))

(declare-fun bs!3230 () Bool)

(assert (= bs!3230 d!17897))

(assert (=> bs!3230 m!74389))

(assert (=> bs!3230 m!74393))

(assert (=> d!17829 d!17897))

(declare-fun d!17899 () Bool)

(declare-fun e!49360 () Bool)

(assert (=> d!17899 e!49360))

(declare-fun res!39815 () Bool)

(assert (=> d!17899 (=> (not res!39815) (not e!49360))))

(declare-fun lt!34176 () tuple2!2154)

(assert (=> d!17899 (= res!39815 (_1!1087 lt!34176))))

(assert (=> d!17899 (= lt!34176 (tuple2!2155 true (LongMapFixedSize!703 (defaultEntry!2234 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) (bvadd (_size!400 newMap!16) #b00000000000000000000000000000001) (array!3909 (store (arr!1864 (_keys!3890 newMap!16)) (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)) (size!2103 (_keys!3890 newMap!16))) (array!3911 (store (arr!1865 (_values!2217 newMap!16)) (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929)) (ValueCellFull!897 lt!33745)) (size!2104 (_values!2217 newMap!16))) (_vacant!400 newMap!16))))))

(declare-fun lt!34168 () Unit!2169)

(declare-fun lt!34159 () Unit!2169)

(assert (=> d!17899 (= lt!34168 lt!34159)))

(declare-fun lt!34163 () array!3908)

(declare-fun lt!34147 () array!3910)

(assert (=> d!17899 (contains!732 (getCurrentListMap!429 lt!34163 lt!34147 (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)) (select (store (arr!1864 (_keys!3890 newMap!16)) (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)) (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929))))))

(assert (=> d!17899 (= lt!34159 (lemmaValidKeyInArrayIsInListMap!83 lt!34163 lt!34147 (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929)) (defaultEntry!2234 newMap!16)))))

(assert (=> d!17899 (= lt!34147 (array!3911 (store (arr!1865 (_values!2217 newMap!16)) (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929)) (ValueCellFull!897 lt!33745)) (size!2104 (_values!2217 newMap!16))))))

(assert (=> d!17899 (= lt!34163 (array!3909 (store (arr!1864 (_keys!3890 newMap!16)) (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)) (size!2103 (_keys!3890 newMap!16))))))

(declare-fun lt!34152 () Unit!2169)

(declare-fun lt!34175 () Unit!2169)

(assert (=> d!17899 (= lt!34152 lt!34175)))

(declare-fun lt!34173 () array!3908)

(assert (=> d!17899 (= (arrayCountValidKeys!0 lt!34173 (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929)) (bvadd (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!3908 (_ BitVec 32)) Unit!2169)

(assert (=> d!17899 (= lt!34175 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!34173 (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929))))))

(assert (=> d!17899 (= lt!34173 (array!3909 (store (arr!1864 (_keys!3890 newMap!16)) (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)) (size!2103 (_keys!3890 newMap!16))))))

(declare-fun lt!34151 () Unit!2169)

(declare-fun lt!34164 () Unit!2169)

(assert (=> d!17899 (= lt!34151 lt!34164)))

(declare-fun lt!34154 () array!3908)

(assert (=> d!17899 (arrayContainsKey!0 lt!34154 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(assert (=> d!17899 (= lt!34164 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!34154 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929))))))

(assert (=> d!17899 (= lt!34154 (array!3909 (store (arr!1864 (_keys!3890 newMap!16)) (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)) (size!2103 (_keys!3890 newMap!16))))))

(declare-fun lt!34153 () Unit!2169)

(declare-fun lt!34158 () Unit!2169)

(assert (=> d!17899 (= lt!34153 lt!34158)))

(assert (=> d!17899 (= (+!101 (getCurrentListMap!429 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)) (getCurrentListMap!429 (array!3909 (store (arr!1864 (_keys!3890 newMap!16)) (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)) (size!2103 (_keys!3890 newMap!16))) (array!3911 (store (arr!1865 (_values!2217 newMap!16)) (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929)) (ValueCellFull!897 lt!33745)) (size!2104 (_values!2217 newMap!16))) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!14 (array!3908 array!3910 (_ BitVec 32) (_ BitVec 32) V!2955 V!2955 (_ BitVec 32) (_ BitVec 64) V!2955 Int) Unit!2169)

(assert (=> d!17899 (= lt!34158 (lemmaAddValidKeyToArrayThenAddPairToListMap!14 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745 (defaultEntry!2234 newMap!16)))))

(declare-fun lt!34162 () Unit!2169)

(declare-fun lt!34174 () Unit!2169)

(assert (=> d!17899 (= lt!34162 lt!34174)))

(assert (=> d!17899 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!3909 (store (arr!1864 (_keys!3890 newMap!16)) (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)) (size!2103 (_keys!3890 newMap!16))) (mask!6211 newMap!16))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!3908 (_ BitVec 32) (_ BitVec 32)) Unit!2169)

(assert (=> d!17899 (= lt!34174 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (_keys!3890 newMap!16) (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929)) (mask!6211 newMap!16)))))

(declare-fun lt!34155 () Unit!2169)

(declare-fun lt!34165 () Unit!2169)

(assert (=> d!17899 (= lt!34155 lt!34165)))

(assert (=> d!17899 (= (arrayCountValidKeys!0 (array!3909 (store (arr!1864 (_keys!3890 newMap!16)) (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)) (size!2103 (_keys!3890 newMap!16))) #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!3890 newMap!16) #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!3908 (_ BitVec 32) (_ BitVec 64)) Unit!2169)

(assert (=> d!17899 (= lt!34165 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!3890 newMap!16) (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(declare-fun lt!34157 () Unit!2169)

(declare-fun lt!34170 () Unit!2169)

(assert (=> d!17899 (= lt!34157 lt!34170)))

(declare-fun lt!34169 () List!1514)

(declare-fun lt!34172 () (_ BitVec 32))

(assert (=> d!17899 (arrayNoDuplicates!0 (array!3909 (store (arr!1864 (_keys!3890 newMap!16)) (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)) (size!2103 (_keys!3890 newMap!16))) lt!34172 lt!34169)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!3908 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1514) Unit!2169)

(assert (=> d!17899 (= lt!34170 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!3890 newMap!16) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929)) lt!34172 lt!34169))))

(assert (=> d!17899 (= lt!34169 Nil!1511)))

(assert (=> d!17899 (= lt!34172 #b00000000000000000000000000000000)))

(declare-fun lt!34149 () Unit!2169)

(declare-fun e!49358 () Unit!2169)

(assert (=> d!17899 (= lt!34149 e!49358)))

(declare-fun c!11485 () Bool)

(assert (=> d!17899 (= c!11485 (arrayContainsKey!0 (_keys!3890 newMap!16) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun lt!34166 () Unit!2169)

(declare-fun e!49356 () Unit!2169)

(assert (=> d!17899 (= lt!34166 e!49356)))

(declare-fun c!11484 () Bool)

(assert (=> d!17899 (= c!11484 (contains!732 (getCurrentListMap!429 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(assert (=> d!17899 (valid!297 newMap!16)))

(assert (=> d!17899 (= (updateHelperNewKey!25 newMap!16 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745 (ite c!11402 (index!3123 lt!33929) (index!3120 lt!33929))) lt!34176)))

(declare-fun lt!34171 () SeekEntryResult!247)

(declare-fun lt!34148 () SeekEntryResult!247)

(declare-fun call!6768 () Bool)

(declare-fun c!11483 () Bool)

(declare-fun bm!6762 () Bool)

(assert (=> bm!6762 (= call!6768 (inRange!0 (ite c!11484 (index!3121 lt!34171) (ite c!11483 (index!3120 lt!34148) (index!3123 lt!34148))) (mask!6211 newMap!16)))))

(declare-fun b!75543 () Bool)

(declare-fun res!39816 () Bool)

(assert (=> b!75543 (= res!39816 (= (select (arr!1864 (_keys!3890 newMap!16)) (index!3123 lt!34148)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!49357 () Bool)

(assert (=> b!75543 (=> (not res!39816) (not e!49357))))

(declare-fun b!75544 () Bool)

(declare-fun Unit!2182 () Unit!2169)

(assert (=> b!75544 (= e!49358 Unit!2182)))

(declare-fun b!75545 () Bool)

(declare-fun c!11486 () Bool)

(assert (=> b!75545 (= c!11486 ((_ is MissingVacant!247) lt!34148))))

(declare-fun e!49359 () Bool)

(declare-fun e!49354 () Bool)

(assert (=> b!75545 (= e!49359 e!49354)))

(declare-fun b!75546 () Bool)

(declare-fun res!39809 () Bool)

(declare-fun e!49355 () Bool)

(assert (=> b!75546 (=> (not res!39809) (not e!49355))))

(assert (=> b!75546 (= res!39809 (= (select (arr!1864 (_keys!3890 newMap!16)) (index!3120 lt!34148)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!75547 () Bool)

(assert (=> b!75547 (= e!49360 (= (map!1163 (_2!1087 lt!34176)) (+!101 (map!1163 newMap!16) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))))))

(declare-fun b!75548 () Bool)

(assert (=> b!75548 (= e!49354 ((_ is Undefined!247) lt!34148))))

(declare-fun b!75549 () Bool)

(assert (=> b!75549 (= e!49354 e!49357)))

(declare-fun res!39814 () Bool)

(declare-fun call!6765 () Bool)

(assert (=> b!75549 (= res!39814 call!6765)))

(assert (=> b!75549 (=> (not res!39814) (not e!49357))))

(declare-fun b!75550 () Bool)

(declare-fun res!39812 () Bool)

(assert (=> b!75550 (= res!39812 call!6768)))

(declare-fun e!49361 () Bool)

(assert (=> b!75550 (=> (not res!39812) (not e!49361))))

(declare-fun b!75551 () Bool)

(assert (=> b!75551 (= e!49361 (= (select (arr!1864 (_keys!3890 newMap!16)) (index!3121 lt!34171)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(declare-fun call!6767 () SeekEntryResult!247)

(declare-fun bm!6763 () Bool)

(assert (=> bm!6763 (= call!6767 (seekEntryOrOpen!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (_keys!3890 newMap!16) (mask!6211 newMap!16)))))

(declare-fun b!75552 () Bool)

(declare-fun call!6766 () Bool)

(assert (=> b!75552 (= e!49355 (not call!6766))))

(declare-fun b!75553 () Bool)

(declare-fun Unit!2183 () Unit!2169)

(assert (=> b!75553 (= e!49356 Unit!2183)))

(declare-fun lt!34156 () Unit!2169)

(assert (=> b!75553 (= lt!34156 (lemmaInListMapThenSeekEntryOrOpenFindsIt!25 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (defaultEntry!2234 newMap!16)))))

(assert (=> b!75553 (= lt!34171 call!6767)))

(declare-fun res!39813 () Bool)

(assert (=> b!75553 (= res!39813 ((_ is Found!247) lt!34171))))

(assert (=> b!75553 (=> (not res!39813) (not e!49361))))

(assert (=> b!75553 e!49361))

(declare-fun lt!34160 () Unit!2169)

(assert (=> b!75553 (= lt!34160 lt!34156)))

(assert (=> b!75553 false))

(declare-fun b!75554 () Bool)

(declare-fun Unit!2184 () Unit!2169)

(assert (=> b!75554 (= e!49358 Unit!2184)))

(declare-fun lt!34167 () Unit!2169)

(declare-fun lemmaArrayContainsKeyThenInListMap!14 (array!3908 array!3910 (_ BitVec 32) (_ BitVec 32) V!2955 V!2955 (_ BitVec 64) (_ BitVec 32) Int) Unit!2169)

(assert (=> b!75554 (= lt!34167 (lemmaArrayContainsKeyThenInListMap!14 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(assert (=> b!75554 (contains!732 (getCurrentListMap!429 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355))))

(declare-fun lt!34161 () Unit!2169)

(assert (=> b!75554 (= lt!34161 lt!34167)))

(assert (=> b!75554 false))

(declare-fun bm!6764 () Bool)

(assert (=> bm!6764 (= call!6765 call!6768)))

(declare-fun bm!6765 () Bool)

(assert (=> bm!6765 (= call!6766 (arrayContainsKey!0 (_keys!3890 newMap!16) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!75555 () Bool)

(declare-fun res!39808 () Bool)

(assert (=> b!75555 (=> (not res!39808) (not e!49360))))

(assert (=> b!75555 (= res!39808 (valid!297 (_2!1087 lt!34176)))))

(declare-fun b!75556 () Bool)

(declare-fun res!39810 () Bool)

(assert (=> b!75556 (=> (not res!39810) (not e!49360))))

(assert (=> b!75556 (= res!39810 (contains!732 (map!1163 (_2!1087 lt!34176)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(declare-fun b!75557 () Bool)

(declare-fun lt!34150 () Unit!2169)

(assert (=> b!75557 (= e!49356 lt!34150)))

(assert (=> b!75557 (= lt!34150 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!25 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (defaultEntry!2234 newMap!16)))))

(assert (=> b!75557 (= lt!34148 call!6767)))

(assert (=> b!75557 (= c!11483 ((_ is MissingZero!247) lt!34148))))

(assert (=> b!75557 e!49359))

(declare-fun b!75558 () Bool)

(assert (=> b!75558 (= e!49357 (not call!6766))))

(declare-fun b!75559 () Bool)

(declare-fun res!39811 () Bool)

(assert (=> b!75559 (=> (not res!39811) (not e!49355))))

(assert (=> b!75559 (= res!39811 call!6765)))

(assert (=> b!75559 (= e!49359 e!49355)))

(assert (= (and d!17899 c!11484) b!75553))

(assert (= (and d!17899 (not c!11484)) b!75557))

(assert (= (and b!75553 res!39813) b!75550))

(assert (= (and b!75550 res!39812) b!75551))

(assert (= (and b!75557 c!11483) b!75559))

(assert (= (and b!75557 (not c!11483)) b!75545))

(assert (= (and b!75559 res!39811) b!75546))

(assert (= (and b!75546 res!39809) b!75552))

(assert (= (and b!75545 c!11486) b!75549))

(assert (= (and b!75545 (not c!11486)) b!75548))

(assert (= (and b!75549 res!39814) b!75543))

(assert (= (and b!75543 res!39816) b!75558))

(assert (= (or b!75559 b!75549) bm!6764))

(assert (= (or b!75552 b!75558) bm!6765))

(assert (= (or b!75550 bm!6764) bm!6762))

(assert (= (or b!75553 b!75557) bm!6763))

(assert (= (and d!17899 c!11485) b!75554))

(assert (= (and d!17899 (not c!11485)) b!75544))

(assert (= (and d!17899 res!39815) b!75555))

(assert (= (and b!75555 res!39808) b!75556))

(assert (= (and b!75556 res!39810) b!75547))

(assert (=> b!75557 m!74389))

(assert (=> b!75557 m!74585))

(declare-fun m!74925 () Bool)

(assert (=> b!75555 m!74925))

(assert (=> bm!6765 m!74389))

(assert (=> bm!6765 m!74569))

(declare-fun m!74927 () Bool)

(assert (=> b!75546 m!74927))

(assert (=> b!75554 m!74389))

(declare-fun m!74929 () Bool)

(assert (=> b!75554 m!74929))

(assert (=> b!75554 m!74497))

(assert (=> b!75554 m!74497))

(assert (=> b!75554 m!74389))

(assert (=> b!75554 m!74607))

(declare-fun m!74931 () Bool)

(assert (=> b!75543 m!74931))

(assert (=> bm!6763 m!74389))

(assert (=> bm!6763 m!74567))

(assert (=> b!75553 m!74389))

(assert (=> b!75553 m!74575))

(declare-fun m!74933 () Bool)

(assert (=> bm!6762 m!74933))

(declare-fun m!74935 () Bool)

(assert (=> b!75556 m!74935))

(assert (=> b!75556 m!74935))

(assert (=> b!75556 m!74389))

(declare-fun m!74937 () Bool)

(assert (=> b!75556 m!74937))

(assert (=> b!75547 m!74935))

(assert (=> b!75547 m!74433))

(assert (=> b!75547 m!74433))

(declare-fun m!74939 () Bool)

(assert (=> b!75547 m!74939))

(declare-fun m!74941 () Bool)

(assert (=> b!75551 m!74941))

(declare-fun m!74943 () Bool)

(assert (=> d!17899 m!74943))

(assert (=> d!17899 m!74389))

(declare-fun m!74945 () Bool)

(assert (=> d!17899 m!74945))

(assert (=> d!17899 m!74389))

(declare-fun m!74947 () Bool)

(assert (=> d!17899 m!74947))

(declare-fun m!74949 () Bool)

(assert (=> d!17899 m!74949))

(declare-fun m!74951 () Bool)

(assert (=> d!17899 m!74951))

(assert (=> d!17899 m!74617))

(declare-fun m!74953 () Bool)

(assert (=> d!17899 m!74953))

(assert (=> d!17899 m!74389))

(assert (=> d!17899 m!74569))

(assert (=> d!17899 m!74411))

(assert (=> d!17899 m!74497))

(assert (=> d!17899 m!74389))

(assert (=> d!17899 m!74607))

(assert (=> d!17899 m!74389))

(declare-fun m!74955 () Bool)

(assert (=> d!17899 m!74955))

(assert (=> d!17899 m!74389))

(declare-fun m!74957 () Bool)

(assert (=> d!17899 m!74957))

(assert (=> d!17899 m!74497))

(declare-fun m!74959 () Bool)

(assert (=> d!17899 m!74959))

(declare-fun m!74961 () Bool)

(assert (=> d!17899 m!74961))

(declare-fun m!74963 () Bool)

(assert (=> d!17899 m!74963))

(declare-fun m!74965 () Bool)

(assert (=> d!17899 m!74965))

(declare-fun m!74967 () Bool)

(assert (=> d!17899 m!74967))

(assert (=> d!17899 m!74961))

(declare-fun m!74969 () Bool)

(assert (=> d!17899 m!74969))

(assert (=> d!17899 m!74389))

(declare-fun m!74971 () Bool)

(assert (=> d!17899 m!74971))

(assert (=> d!17899 m!74497))

(declare-fun m!74973 () Bool)

(assert (=> d!17899 m!74973))

(assert (=> d!17899 m!74389))

(declare-fun m!74975 () Bool)

(assert (=> d!17899 m!74975))

(declare-fun m!74977 () Bool)

(assert (=> d!17899 m!74977))

(assert (=> d!17899 m!74959))

(declare-fun m!74979 () Bool)

(assert (=> d!17899 m!74979))

(assert (=> bm!6711 d!17899))

(declare-fun d!17901 () Bool)

(assert (=> d!17901 (= (+!101 (getCurrentListMap!429 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 lt!33745)) (getCurrentListMap!429 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) lt!33932 (zeroValue!2134 newMap!16) lt!33745 #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun lt!34179 () Unit!2169)

(declare-fun choose!437 (array!3908 array!3910 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!2955 V!2955 V!2955 Int) Unit!2169)

(assert (=> d!17901 (= lt!34179 (choose!437 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) lt!33932 (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) lt!33745 (defaultEntry!2234 newMap!16)))))

(assert (=> d!17901 (validMask!0 (mask!6211 newMap!16))))

(assert (=> d!17901 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!25 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) lt!33932 (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) lt!33745 (defaultEntry!2234 newMap!16)) lt!34179)))

(declare-fun bs!3231 () Bool)

(assert (= bs!3231 d!17901))

(assert (=> bs!3231 m!74787))

(declare-fun m!74981 () Bool)

(assert (=> bs!3231 m!74981))

(assert (=> bs!3231 m!74497))

(assert (=> bs!3231 m!74497))

(declare-fun m!74983 () Bool)

(assert (=> bs!3231 m!74983))

(declare-fun m!74985 () Bool)

(assert (=> bs!3231 m!74985))

(assert (=> b!75265 d!17901))

(declare-fun d!17903 () Bool)

(assert (=> d!17903 (= (validKeyInArray!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!75354 d!17903))

(assert (=> d!17817 d!17849))

(declare-fun d!17905 () Bool)

(declare-fun e!49362 () Bool)

(assert (=> d!17905 e!49362))

(declare-fun res!39817 () Bool)

(assert (=> d!17905 (=> (not res!39817) (not e!49362))))

(declare-fun lt!34182 () ListLongMap!1445)

(assert (=> d!17905 (= res!39817 (contains!732 lt!34182 (_1!1088 (ite (or c!11363 c!11360) (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992))))))))))

(declare-fun lt!34183 () List!1513)

(assert (=> d!17905 (= lt!34182 (ListLongMap!1446 lt!34183))))

(declare-fun lt!34181 () Unit!2169)

(declare-fun lt!34180 () Unit!2169)

(assert (=> d!17905 (= lt!34181 lt!34180)))

(assert (=> d!17905 (= (getValueByKey!133 lt!34183 (_1!1088 (ite (or c!11363 c!11360) (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992))))))) (Some!138 (_2!1088 (ite (or c!11363 c!11360) (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992))))))))))

(assert (=> d!17905 (= lt!34180 (lemmaContainsTupThenGetReturnValue!52 lt!34183 (_1!1088 (ite (or c!11363 c!11360) (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))) (_2!1088 (ite (or c!11363 c!11360) (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992))))))))))

(assert (=> d!17905 (= lt!34183 (insertStrictlySorted!54 (toList!738 (ite c!11363 call!6652 (ite c!11360 call!6657 call!6654))) (_1!1088 (ite (or c!11363 c!11360) (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))) (_2!1088 (ite (or c!11363 c!11360) (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992))))))))))

(assert (=> d!17905 (= (+!101 (ite c!11363 call!6652 (ite c!11360 call!6657 call!6654)) (ite (or c!11363 c!11360) (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))) lt!34182)))

(declare-fun b!75560 () Bool)

(declare-fun res!39818 () Bool)

(assert (=> b!75560 (=> (not res!39818) (not e!49362))))

(assert (=> b!75560 (= res!39818 (= (getValueByKey!133 (toList!738 lt!34182) (_1!1088 (ite (or c!11363 c!11360) (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992))))))) (Some!138 (_2!1088 (ite (or c!11363 c!11360) (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))))))))

(declare-fun b!75561 () Bool)

(assert (=> b!75561 (= e!49362 (contains!734 (toList!738 lt!34182) (ite (or c!11363 c!11360) (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (= (and d!17905 res!39817) b!75560))

(assert (= (and b!75560 res!39818) b!75561))

(declare-fun m!74987 () Bool)

(assert (=> d!17905 m!74987))

(declare-fun m!74989 () Bool)

(assert (=> d!17905 m!74989))

(declare-fun m!74991 () Bool)

(assert (=> d!17905 m!74991))

(declare-fun m!74993 () Bool)

(assert (=> d!17905 m!74993))

(declare-fun m!74995 () Bool)

(assert (=> b!75560 m!74995))

(declare-fun m!74997 () Bool)

(assert (=> b!75561 m!74997))

(assert (=> bm!6653 d!17905))

(declare-fun d!17907 () Bool)

(declare-fun res!39819 () Bool)

(declare-fun e!49363 () Bool)

(assert (=> d!17907 (=> (not res!39819) (not e!49363))))

(assert (=> d!17907 (= res!39819 (simpleValid!51 (_2!1087 lt!33935)))))

(assert (=> d!17907 (= (valid!297 (_2!1087 lt!33935)) e!49363)))

(declare-fun b!75562 () Bool)

(declare-fun res!39820 () Bool)

(assert (=> b!75562 (=> (not res!39820) (not e!49363))))

(assert (=> b!75562 (= res!39820 (= (arrayCountValidKeys!0 (_keys!3890 (_2!1087 lt!33935)) #b00000000000000000000000000000000 (size!2103 (_keys!3890 (_2!1087 lt!33935)))) (_size!400 (_2!1087 lt!33935))))))

(declare-fun b!75563 () Bool)

(declare-fun res!39821 () Bool)

(assert (=> b!75563 (=> (not res!39821) (not e!49363))))

(assert (=> b!75563 (= res!39821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3890 (_2!1087 lt!33935)) (mask!6211 (_2!1087 lt!33935))))))

(declare-fun b!75564 () Bool)

(assert (=> b!75564 (= e!49363 (arrayNoDuplicates!0 (_keys!3890 (_2!1087 lt!33935)) #b00000000000000000000000000000000 Nil!1511))))

(assert (= (and d!17907 res!39819) b!75562))

(assert (= (and b!75562 res!39820) b!75563))

(assert (= (and b!75563 res!39821) b!75564))

(declare-fun m!74999 () Bool)

(assert (=> d!17907 m!74999))

(declare-fun m!75001 () Bool)

(assert (=> b!75562 m!75001))

(declare-fun m!75003 () Bool)

(assert (=> b!75563 m!75003))

(declare-fun m!75005 () Bool)

(assert (=> b!75564 m!75005))

(assert (=> d!17825 d!17907))

(assert (=> d!17825 d!17827))

(declare-fun d!17909 () Bool)

(declare-fun lt!34186 () Bool)

(declare-fun content!79 (List!1514) (InoxSet (_ BitVec 64)))

(assert (=> d!17909 (= lt!34186 (select (content!79 Nil!1511) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(declare-fun e!49368 () Bool)

(assert (=> d!17909 (= lt!34186 e!49368)))

(declare-fun res!39826 () Bool)

(assert (=> d!17909 (=> (not res!39826) (not e!49368))))

(assert (=> d!17909 (= res!39826 ((_ is Cons!1510) Nil!1511))))

(assert (=> d!17909 (= (contains!733 Nil!1511 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)) lt!34186)))

(declare-fun b!75569 () Bool)

(declare-fun e!49369 () Bool)

(assert (=> b!75569 (= e!49368 e!49369)))

(declare-fun res!39827 () Bool)

(assert (=> b!75569 (=> res!39827 e!49369)))

(assert (=> b!75569 (= res!39827 (= (h!2098 Nil!1511) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(declare-fun b!75570 () Bool)

(assert (=> b!75570 (= e!49369 (contains!733 (t!5096 Nil!1511) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(assert (= (and d!17909 res!39826) b!75569))

(assert (= (and b!75569 (not res!39827)) b!75570))

(declare-fun m!75007 () Bool)

(assert (=> d!17909 m!75007))

(assert (=> d!17909 m!74389))

(declare-fun m!75009 () Bool)

(assert (=> d!17909 m!75009))

(assert (=> b!75570 m!74389))

(declare-fun m!75011 () Bool)

(assert (=> b!75570 m!75011))

(assert (=> b!75308 d!17909))

(declare-fun d!17911 () Bool)

(declare-fun e!49370 () Bool)

(assert (=> d!17911 e!49370))

(declare-fun res!39828 () Bool)

(assert (=> d!17911 (=> res!39828 e!49370)))

(declare-fun lt!34187 () Bool)

(assert (=> d!17911 (= res!39828 (not lt!34187))))

(declare-fun lt!34188 () Bool)

(assert (=> d!17911 (= lt!34187 lt!34188)))

(declare-fun lt!34189 () Unit!2169)

(declare-fun e!49371 () Unit!2169)

(assert (=> d!17911 (= lt!34189 e!49371)))

(declare-fun c!11487 () Bool)

(assert (=> d!17911 (= c!11487 lt!34188)))

(assert (=> d!17911 (= lt!34188 (containsKey!137 (toList!738 lt!33986) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!17911 (= (contains!732 lt!33986 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!34187)))

(declare-fun b!75571 () Bool)

(declare-fun lt!34190 () Unit!2169)

(assert (=> b!75571 (= e!49371 lt!34190)))

(assert (=> b!75571 (= lt!34190 (lemmaContainsKeyImpliesGetValueByKeyDefined!86 (toList!738 lt!33986) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!75571 (isDefined!87 (getValueByKey!133 (toList!738 lt!33986) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!75572 () Bool)

(declare-fun Unit!2185 () Unit!2169)

(assert (=> b!75572 (= e!49371 Unit!2185)))

(declare-fun b!75573 () Bool)

(assert (=> b!75573 (= e!49370 (isDefined!87 (getValueByKey!133 (toList!738 lt!33986) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!17911 c!11487) b!75571))

(assert (= (and d!17911 (not c!11487)) b!75572))

(assert (= (and d!17911 (not res!39828)) b!75573))

(assert (=> d!17911 m!74499))

(declare-fun m!75013 () Bool)

(assert (=> d!17911 m!75013))

(assert (=> b!75571 m!74499))

(declare-fun m!75015 () Bool)

(assert (=> b!75571 m!75015))

(assert (=> b!75571 m!74499))

(declare-fun m!75017 () Bool)

(assert (=> b!75571 m!75017))

(assert (=> b!75571 m!75017))

(declare-fun m!75019 () Bool)

(assert (=> b!75571 m!75019))

(assert (=> b!75573 m!74499))

(assert (=> b!75573 m!75017))

(assert (=> b!75573 m!75017))

(assert (=> b!75573 m!75019))

(assert (=> b!75356 d!17911))

(declare-fun d!17913 () Bool)

(declare-fun e!49372 () Bool)

(assert (=> d!17913 e!49372))

(declare-fun res!39829 () Bool)

(assert (=> d!17913 (=> res!39829 e!49372)))

(declare-fun lt!34191 () Bool)

(assert (=> d!17913 (= res!39829 (not lt!34191))))

(declare-fun lt!34192 () Bool)

(assert (=> d!17913 (= lt!34191 lt!34192)))

(declare-fun lt!34193 () Unit!2169)

(declare-fun e!49373 () Unit!2169)

(assert (=> d!17913 (= lt!34193 e!49373)))

(declare-fun c!11488 () Bool)

(assert (=> d!17913 (= c!11488 lt!34192)))

(assert (=> d!17913 (= lt!34192 (containsKey!137 (toList!738 e!49184) (ite c!11405 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (select (arr!1864 (_keys!3890 newMap!16)) (index!3121 lt!33929)))))))

(assert (=> d!17913 (= (contains!732 e!49184 (ite c!11405 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (select (arr!1864 (_keys!3890 newMap!16)) (index!3121 lt!33929)))) lt!34191)))

(declare-fun b!75574 () Bool)

(declare-fun lt!34194 () Unit!2169)

(assert (=> b!75574 (= e!49373 lt!34194)))

(assert (=> b!75574 (= lt!34194 (lemmaContainsKeyImpliesGetValueByKeyDefined!86 (toList!738 e!49184) (ite c!11405 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (select (arr!1864 (_keys!3890 newMap!16)) (index!3121 lt!33929)))))))

(assert (=> b!75574 (isDefined!87 (getValueByKey!133 (toList!738 e!49184) (ite c!11405 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (select (arr!1864 (_keys!3890 newMap!16)) (index!3121 lt!33929)))))))

(declare-fun b!75575 () Bool)

(declare-fun Unit!2186 () Unit!2169)

(assert (=> b!75575 (= e!49373 Unit!2186)))

(declare-fun b!75576 () Bool)

(assert (=> b!75576 (= e!49372 (isDefined!87 (getValueByKey!133 (toList!738 e!49184) (ite c!11405 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (select (arr!1864 (_keys!3890 newMap!16)) (index!3121 lt!33929))))))))

(assert (= (and d!17913 c!11488) b!75574))

(assert (= (and d!17913 (not c!11488)) b!75575))

(assert (= (and d!17913 (not res!39829)) b!75576))

(declare-fun m!75021 () Bool)

(assert (=> d!17913 m!75021))

(declare-fun m!75023 () Bool)

(assert (=> b!75574 m!75023))

(declare-fun m!75025 () Bool)

(assert (=> b!75574 m!75025))

(assert (=> b!75574 m!75025))

(declare-fun m!75027 () Bool)

(assert (=> b!75574 m!75027))

(assert (=> b!75576 m!75025))

(assert (=> b!75576 m!75025))

(assert (=> b!75576 m!75027))

(assert (=> bm!6706 d!17913))

(declare-fun d!17915 () Bool)

(assert (=> d!17915 (= (validKeyInArray!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)) (and (not (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!75310 d!17915))

(declare-fun d!17917 () Bool)

(assert (=> d!17917 (= (apply!76 lt!33835 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1165 (getValueByKey!133 (toList!738 lt!33835) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!3232 () Bool)

(assert (= bs!3232 d!17917))

(assert (=> bs!3232 m!74499))

(declare-fun m!75029 () Bool)

(assert (=> bs!3232 m!75029))

(assert (=> bs!3232 m!75029))

(declare-fun m!75031 () Bool)

(assert (=> bs!3232 m!75031))

(assert (=> b!75120 d!17917))

(declare-fun d!17919 () Bool)

(declare-fun c!11489 () Bool)

(assert (=> d!17919 (= c!11489 ((_ is ValueCellFull!897) (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!49374 () V!2955)

(assert (=> d!17919 (= (get!1162 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!49374)))

(declare-fun b!75577 () Bool)

(assert (=> b!75577 (= e!49374 (get!1163 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!75578 () Bool)

(assert (=> b!75578 (= e!49374 (get!1164 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!17919 c!11489) b!75577))

(assert (= (and d!17919 (not c!11489)) b!75578))

(assert (=> b!75577 m!74509))

(assert (=> b!75577 m!74429))

(declare-fun m!75033 () Bool)

(assert (=> b!75577 m!75033))

(assert (=> b!75578 m!74509))

(assert (=> b!75578 m!74429))

(declare-fun m!75035 () Bool)

(assert (=> b!75578 m!75035))

(assert (=> b!75120 d!17919))

(declare-fun b!75579 () Bool)

(declare-fun e!49375 () Bool)

(declare-fun call!6769 () Bool)

(assert (=> b!75579 (= e!49375 call!6769)))

(declare-fun b!75580 () Bool)

(declare-fun e!49377 () Bool)

(assert (=> b!75580 (= e!49377 (contains!733 (ite c!11415 (Cons!1510 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) Nil!1511) Nil!1511) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun b!75582 () Bool)

(declare-fun e!49378 () Bool)

(assert (=> b!75582 (= e!49378 e!49375)))

(declare-fun c!11490 () Bool)

(assert (=> b!75582 (= c!11490 (validKeyInArray!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun bm!6766 () Bool)

(assert (=> bm!6766 (= call!6769 (arrayNoDuplicates!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!11490 (Cons!1510 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001)) (ite c!11415 (Cons!1510 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) Nil!1511) Nil!1511)) (ite c!11415 (Cons!1510 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) Nil!1511) Nil!1511))))))

(declare-fun b!75583 () Bool)

(declare-fun e!49376 () Bool)

(assert (=> b!75583 (= e!49376 e!49378)))

(declare-fun res!39830 () Bool)

(assert (=> b!75583 (=> (not res!39830) (not e!49378))))

(assert (=> b!75583 (= res!39830 (not e!49377))))

(declare-fun res!39832 () Bool)

(assert (=> b!75583 (=> (not res!39832) (not e!49377))))

(assert (=> b!75583 (= res!39832 (validKeyInArray!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd from!355 #b00000000000000000000000000000001))))))

(declare-fun d!17921 () Bool)

(declare-fun res!39831 () Bool)

(assert (=> d!17921 (=> res!39831 e!49376)))

(assert (=> d!17921 (= res!39831 (bvsge (bvadd from!355 #b00000000000000000000000000000001) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))

(assert (=> d!17921 (= (arrayNoDuplicates!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!11415 (Cons!1510 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) Nil!1511) Nil!1511)) e!49376)))

(declare-fun b!75581 () Bool)

(assert (=> b!75581 (= e!49375 call!6769)))

(assert (= (and d!17921 (not res!39831)) b!75583))

(assert (= (and b!75583 res!39832) b!75580))

(assert (= (and b!75583 res!39830) b!75582))

(assert (= (and b!75582 c!11490) b!75579))

(assert (= (and b!75582 (not c!11490)) b!75581))

(assert (= (or b!75579 b!75581) bm!6766))

(declare-fun m!75037 () Bool)

(assert (=> b!75580 m!75037))

(assert (=> b!75580 m!75037))

(declare-fun m!75039 () Bool)

(assert (=> b!75580 m!75039))

(assert (=> b!75582 m!75037))

(assert (=> b!75582 m!75037))

(declare-fun m!75041 () Bool)

(assert (=> b!75582 m!75041))

(assert (=> bm!6766 m!75037))

(declare-fun m!75043 () Bool)

(assert (=> bm!6766 m!75043))

(assert (=> b!75583 m!75037))

(assert (=> b!75583 m!75037))

(assert (=> b!75583 m!75041))

(assert (=> bm!6730 d!17921))

(declare-fun d!17923 () Bool)

(declare-fun e!49379 () Bool)

(assert (=> d!17923 e!49379))

(declare-fun res!39833 () Bool)

(assert (=> d!17923 (=> res!39833 e!49379)))

(declare-fun lt!34195 () Bool)

(assert (=> d!17923 (= res!39833 (not lt!34195))))

(declare-fun lt!34196 () Bool)

(assert (=> d!17923 (= lt!34195 lt!34196)))

(declare-fun lt!34197 () Unit!2169)

(declare-fun e!49380 () Unit!2169)

(assert (=> d!17923 (= lt!34197 e!49380)))

(declare-fun c!11491 () Bool)

(assert (=> d!17923 (= c!11491 lt!34196)))

(assert (=> d!17923 (= lt!34196 (containsKey!137 (toList!738 lt!33835) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!17923 (= (contains!732 lt!33835 #b1000000000000000000000000000000000000000000000000000000000000000) lt!34195)))

(declare-fun b!75584 () Bool)

(declare-fun lt!34198 () Unit!2169)

(assert (=> b!75584 (= e!49380 lt!34198)))

(assert (=> b!75584 (= lt!34198 (lemmaContainsKeyImpliesGetValueByKeyDefined!86 (toList!738 lt!33835) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!75584 (isDefined!87 (getValueByKey!133 (toList!738 lt!33835) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!75585 () Bool)

(declare-fun Unit!2187 () Unit!2169)

(assert (=> b!75585 (= e!49380 Unit!2187)))

(declare-fun b!75586 () Bool)

(assert (=> b!75586 (= e!49379 (isDefined!87 (getValueByKey!133 (toList!738 lt!33835) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!17923 c!11491) b!75584))

(assert (= (and d!17923 (not c!11491)) b!75585))

(assert (= (and d!17923 (not res!39833)) b!75586))

(declare-fun m!75045 () Bool)

(assert (=> d!17923 m!75045))

(declare-fun m!75047 () Bool)

(assert (=> b!75584 m!75047))

(declare-fun m!75049 () Bool)

(assert (=> b!75584 m!75049))

(assert (=> b!75584 m!75049))

(declare-fun m!75051 () Bool)

(assert (=> b!75584 m!75051))

(assert (=> b!75586 m!75049))

(assert (=> b!75586 m!75049))

(assert (=> b!75586 m!75051))

(assert (=> bm!6650 d!17923))

(assert (=> b!75358 d!17903))

(declare-fun b!75588 () Bool)

(declare-fun e!49381 () Option!139)

(declare-fun e!49382 () Option!139)

(assert (=> b!75588 (= e!49381 e!49382)))

(declare-fun c!11493 () Bool)

(assert (=> b!75588 (= c!11493 (and ((_ is Cons!1509) (toList!738 lt!34002)) (not (= (_1!1088 (h!2097 (toList!738 lt!34002))) (_1!1088 lt!33749)))))))

(declare-fun b!75589 () Bool)

(assert (=> b!75589 (= e!49382 (getValueByKey!133 (t!5095 (toList!738 lt!34002)) (_1!1088 lt!33749)))))

(declare-fun b!75587 () Bool)

(assert (=> b!75587 (= e!49381 (Some!138 (_2!1088 (h!2097 (toList!738 lt!34002)))))))

(declare-fun b!75590 () Bool)

(assert (=> b!75590 (= e!49382 None!137)))

(declare-fun d!17925 () Bool)

(declare-fun c!11492 () Bool)

(assert (=> d!17925 (= c!11492 (and ((_ is Cons!1509) (toList!738 lt!34002)) (= (_1!1088 (h!2097 (toList!738 lt!34002))) (_1!1088 lt!33749))))))

(assert (=> d!17925 (= (getValueByKey!133 (toList!738 lt!34002) (_1!1088 lt!33749)) e!49381)))

(assert (= (and d!17925 c!11492) b!75587))

(assert (= (and d!17925 (not c!11492)) b!75588))

(assert (= (and b!75588 c!11493) b!75589))

(assert (= (and b!75588 (not c!11493)) b!75590))

(declare-fun m!75053 () Bool)

(assert (=> b!75589 m!75053))

(assert (=> b!75364 d!17925))

(declare-fun b!75607 () Bool)

(declare-fun e!49391 () Bool)

(declare-fun call!6774 () Bool)

(assert (=> b!75607 (= e!49391 (not call!6774))))

(declare-fun b!75608 () Bool)

(declare-fun e!49392 () Bool)

(declare-fun e!49393 () Bool)

(assert (=> b!75608 (= e!49392 e!49393)))

(declare-fun c!11498 () Bool)

(declare-fun lt!34203 () SeekEntryResult!247)

(assert (=> b!75608 (= c!11498 ((_ is MissingVacant!247) lt!34203))))

(declare-fun b!75609 () Bool)

(declare-fun res!39843 () Bool)

(declare-fun e!49394 () Bool)

(assert (=> b!75609 (=> (not res!39843) (not e!49394))))

(assert (=> b!75609 (= res!39843 (= (select (arr!1864 (_keys!3890 newMap!16)) (index!3123 lt!34203)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!75609 (and (bvsge (index!3123 lt!34203) #b00000000000000000000000000000000) (bvslt (index!3123 lt!34203) (size!2103 (_keys!3890 newMap!16))))))

(declare-fun b!75610 () Bool)

(assert (=> b!75610 (= e!49392 e!49391)))

(declare-fun res!39842 () Bool)

(declare-fun call!6775 () Bool)

(assert (=> b!75610 (= res!39842 call!6775)))

(assert (=> b!75610 (=> (not res!39842) (not e!49391))))

(declare-fun b!75611 () Bool)

(assert (=> b!75611 (= e!49393 ((_ is Undefined!247) lt!34203))))

(declare-fun b!75612 () Bool)

(assert (=> b!75612 (and (bvsge (index!3120 lt!34203) #b00000000000000000000000000000000) (bvslt (index!3120 lt!34203) (size!2103 (_keys!3890 newMap!16))))))

(declare-fun res!39844 () Bool)

(assert (=> b!75612 (= res!39844 (= (select (arr!1864 (_keys!3890 newMap!16)) (index!3120 lt!34203)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!75612 (=> (not res!39844) (not e!49391))))

(declare-fun b!75613 () Bool)

(assert (=> b!75613 (= e!49394 (not call!6774))))

(declare-fun bm!6771 () Bool)

(declare-fun c!11499 () Bool)

(assert (=> bm!6771 (= call!6775 (inRange!0 (ite c!11499 (index!3120 lt!34203) (index!3123 lt!34203)) (mask!6211 newMap!16)))))

(declare-fun bm!6772 () Bool)

(assert (=> bm!6772 (= call!6774 (arrayContainsKey!0 (_keys!3890 newMap!16) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun d!17927 () Bool)

(assert (=> d!17927 e!49392))

(assert (=> d!17927 (= c!11499 ((_ is MissingZero!247) lt!34203))))

(assert (=> d!17927 (= lt!34203 (seekEntryOrOpen!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (_keys!3890 newMap!16) (mask!6211 newMap!16)))))

(declare-fun lt!34204 () Unit!2169)

(declare-fun choose!438 (array!3908 array!3910 (_ BitVec 32) (_ BitVec 32) V!2955 V!2955 (_ BitVec 64) Int) Unit!2169)

(assert (=> d!17927 (= lt!34204 (choose!438 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (defaultEntry!2234 newMap!16)))))

(assert (=> d!17927 (validMask!0 (mask!6211 newMap!16))))

(assert (=> d!17927 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!25 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (defaultEntry!2234 newMap!16)) lt!34204)))

(declare-fun b!75614 () Bool)

(declare-fun res!39845 () Bool)

(assert (=> b!75614 (=> (not res!39845) (not e!49394))))

(assert (=> b!75614 (= res!39845 call!6775)))

(assert (=> b!75614 (= e!49393 e!49394)))

(assert (= (and d!17927 c!11499) b!75610))

(assert (= (and d!17927 (not c!11499)) b!75608))

(assert (= (and b!75610 res!39842) b!75612))

(assert (= (and b!75612 res!39844) b!75607))

(assert (= (and b!75608 c!11498) b!75614))

(assert (= (and b!75608 (not c!11498)) b!75611))

(assert (= (and b!75614 res!39845) b!75609))

(assert (= (and b!75609 res!39843) b!75613))

(assert (= (or b!75610 b!75614) bm!6771))

(assert (= (or b!75607 b!75613) bm!6772))

(declare-fun m!75055 () Bool)

(assert (=> bm!6771 m!75055))

(assert (=> bm!6772 m!74389))

(assert (=> bm!6772 m!74569))

(declare-fun m!75057 () Bool)

(assert (=> b!75612 m!75057))

(declare-fun m!75059 () Bool)

(assert (=> b!75609 m!75059))

(assert (=> d!17927 m!74389))

(assert (=> d!17927 m!74567))

(assert (=> d!17927 m!74389))

(declare-fun m!75061 () Bool)

(assert (=> d!17927 m!75061))

(assert (=> d!17927 m!74787))

(assert (=> bm!6714 d!17927))

(declare-fun b!75616 () Bool)

(declare-fun e!49395 () Option!139)

(declare-fun e!49396 () Option!139)

(assert (=> b!75616 (= e!49395 e!49396)))

(declare-fun c!11501 () Bool)

(assert (=> b!75616 (= c!11501 (and ((_ is Cons!1509) (toList!738 lt!34006)) (not (= (_1!1088 (h!2097 (toList!738 lt!34006))) (_1!1088 lt!33753)))))))

(declare-fun b!75617 () Bool)

(assert (=> b!75617 (= e!49396 (getValueByKey!133 (t!5095 (toList!738 lt!34006)) (_1!1088 lt!33753)))))

(declare-fun b!75615 () Bool)

(assert (=> b!75615 (= e!49395 (Some!138 (_2!1088 (h!2097 (toList!738 lt!34006)))))))

(declare-fun b!75618 () Bool)

(assert (=> b!75618 (= e!49396 None!137)))

(declare-fun d!17929 () Bool)

(declare-fun c!11500 () Bool)

(assert (=> d!17929 (= c!11500 (and ((_ is Cons!1509) (toList!738 lt!34006)) (= (_1!1088 (h!2097 (toList!738 lt!34006))) (_1!1088 lt!33753))))))

(assert (=> d!17929 (= (getValueByKey!133 (toList!738 lt!34006) (_1!1088 lt!33753)) e!49395)))

(assert (= (and d!17929 c!11500) b!75615))

(assert (= (and d!17929 (not c!11500)) b!75616))

(assert (= (and b!75616 c!11501) b!75617))

(assert (= (and b!75616 (not c!11501)) b!75618))

(declare-fun m!75063 () Bool)

(assert (=> b!75617 m!75063))

(assert (=> b!75366 d!17929))

(declare-fun d!17931 () Bool)

(declare-fun e!49397 () Bool)

(assert (=> d!17931 e!49397))

(declare-fun res!39846 () Bool)

(assert (=> d!17931 (=> (not res!39846) (not e!49397))))

(declare-fun lt!34207 () ListLongMap!1445)

(assert (=> d!17931 (= res!39846 (contains!732 lt!34207 (_1!1088 (tuple2!2157 lt!33852 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(declare-fun lt!34208 () List!1513)

(assert (=> d!17931 (= lt!34207 (ListLongMap!1446 lt!34208))))

(declare-fun lt!34206 () Unit!2169)

(declare-fun lt!34205 () Unit!2169)

(assert (=> d!17931 (= lt!34206 lt!34205)))

(assert (=> d!17931 (= (getValueByKey!133 lt!34208 (_1!1088 (tuple2!2157 lt!33852 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))) (Some!138 (_2!1088 (tuple2!2157 lt!33852 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (=> d!17931 (= lt!34205 (lemmaContainsTupThenGetReturnValue!52 lt!34208 (_1!1088 (tuple2!2157 lt!33852 (minValue!2134 (v!2549 (underlying!267 thiss!992))))) (_2!1088 (tuple2!2157 lt!33852 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (=> d!17931 (= lt!34208 (insertStrictlySorted!54 (toList!738 lt!33855) (_1!1088 (tuple2!2157 lt!33852 (minValue!2134 (v!2549 (underlying!267 thiss!992))))) (_2!1088 (tuple2!2157 lt!33852 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (=> d!17931 (= (+!101 lt!33855 (tuple2!2157 lt!33852 (minValue!2134 (v!2549 (underlying!267 thiss!992))))) lt!34207)))

(declare-fun b!75619 () Bool)

(declare-fun res!39847 () Bool)

(assert (=> b!75619 (=> (not res!39847) (not e!49397))))

(assert (=> b!75619 (= res!39847 (= (getValueByKey!133 (toList!738 lt!34207) (_1!1088 (tuple2!2157 lt!33852 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))) (Some!138 (_2!1088 (tuple2!2157 lt!33852 (minValue!2134 (v!2549 (underlying!267 thiss!992))))))))))

(declare-fun b!75620 () Bool)

(assert (=> b!75620 (= e!49397 (contains!734 (toList!738 lt!34207) (tuple2!2157 lt!33852 (minValue!2134 (v!2549 (underlying!267 thiss!992))))))))

(assert (= (and d!17931 res!39846) b!75619))

(assert (= (and b!75619 res!39847) b!75620))

(declare-fun m!75065 () Bool)

(assert (=> d!17931 m!75065))

(declare-fun m!75067 () Bool)

(assert (=> d!17931 m!75067))

(declare-fun m!75069 () Bool)

(assert (=> d!17931 m!75069))

(declare-fun m!75071 () Bool)

(assert (=> d!17931 m!75071))

(declare-fun m!75073 () Bool)

(assert (=> b!75619 m!75073))

(declare-fun m!75075 () Bool)

(assert (=> b!75620 m!75075))

(assert (=> b!75138 d!17931))

(declare-fun d!17933 () Bool)

(declare-fun e!49398 () Bool)

(assert (=> d!17933 e!49398))

(declare-fun res!39848 () Bool)

(assert (=> d!17933 (=> (not res!39848) (not e!49398))))

(declare-fun lt!34211 () ListLongMap!1445)

(assert (=> d!17933 (= res!39848 (contains!732 lt!34211 (_1!1088 (tuple2!2157 lt!33845 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(declare-fun lt!34212 () List!1513)

(assert (=> d!17933 (= lt!34211 (ListLongMap!1446 lt!34212))))

(declare-fun lt!34210 () Unit!2169)

(declare-fun lt!34209 () Unit!2169)

(assert (=> d!17933 (= lt!34210 lt!34209)))

(assert (=> d!17933 (= (getValueByKey!133 lt!34212 (_1!1088 (tuple2!2157 lt!33845 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))) (Some!138 (_2!1088 (tuple2!2157 lt!33845 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (=> d!17933 (= lt!34209 (lemmaContainsTupThenGetReturnValue!52 lt!34212 (_1!1088 (tuple2!2157 lt!33845 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) (_2!1088 (tuple2!2157 lt!33845 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (=> d!17933 (= lt!34212 (insertStrictlySorted!54 (toList!738 lt!33838) (_1!1088 (tuple2!2157 lt!33845 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) (_2!1088 (tuple2!2157 lt!33845 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (=> d!17933 (= (+!101 lt!33838 (tuple2!2157 lt!33845 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) lt!34211)))

(declare-fun b!75621 () Bool)

(declare-fun res!39849 () Bool)

(assert (=> b!75621 (=> (not res!39849) (not e!49398))))

(assert (=> b!75621 (= res!39849 (= (getValueByKey!133 (toList!738 lt!34211) (_1!1088 (tuple2!2157 lt!33845 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))) (Some!138 (_2!1088 (tuple2!2157 lt!33845 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))))))))

(declare-fun b!75622 () Bool)

(assert (=> b!75622 (= e!49398 (contains!734 (toList!738 lt!34211) (tuple2!2157 lt!33845 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))))))

(assert (= (and d!17933 res!39848) b!75621))

(assert (= (and b!75621 res!39849) b!75622))

(declare-fun m!75077 () Bool)

(assert (=> d!17933 m!75077))

(declare-fun m!75079 () Bool)

(assert (=> d!17933 m!75079))

(declare-fun m!75081 () Bool)

(assert (=> d!17933 m!75081))

(declare-fun m!75083 () Bool)

(assert (=> d!17933 m!75083))

(declare-fun m!75085 () Bool)

(assert (=> b!75621 m!75085))

(declare-fun m!75087 () Bool)

(assert (=> b!75622 m!75087))

(assert (=> b!75138 d!17933))

(declare-fun d!17935 () Bool)

(assert (=> d!17935 (= (apply!76 (+!101 lt!33842 (tuple2!2157 lt!33848 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) lt!33841) (apply!76 lt!33842 lt!33841))))

(declare-fun lt!34215 () Unit!2169)

(declare-fun choose!439 (ListLongMap!1445 (_ BitVec 64) V!2955 (_ BitVec 64)) Unit!2169)

(assert (=> d!17935 (= lt!34215 (choose!439 lt!33842 lt!33848 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) lt!33841))))

(declare-fun e!49401 () Bool)

(assert (=> d!17935 e!49401))

(declare-fun res!39852 () Bool)

(assert (=> d!17935 (=> (not res!39852) (not e!49401))))

(assert (=> d!17935 (= res!39852 (contains!732 lt!33842 lt!33841))))

(assert (=> d!17935 (= (addApplyDifferent!52 lt!33842 lt!33848 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) lt!33841) lt!34215)))

(declare-fun b!75626 () Bool)

(assert (=> b!75626 (= e!49401 (not (= lt!33841 lt!33848)))))

(assert (= (and d!17935 res!39852) b!75626))

(assert (=> d!17935 m!74535))

(assert (=> d!17935 m!74525))

(declare-fun m!75089 () Bool)

(assert (=> d!17935 m!75089))

(declare-fun m!75091 () Bool)

(assert (=> d!17935 m!75091))

(assert (=> d!17935 m!74535))

(assert (=> d!17935 m!74543))

(assert (=> b!75138 d!17935))

(declare-fun d!17937 () Bool)

(assert (=> d!17937 (= (apply!76 (+!101 lt!33851 (tuple2!2157 lt!33847 (minValue!2134 (v!2549 (underlying!267 thiss!992))))) lt!33840) (get!1165 (getValueByKey!133 (toList!738 (+!101 lt!33851 (tuple2!2157 lt!33847 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))) lt!33840)))))

(declare-fun bs!3233 () Bool)

(assert (= bs!3233 d!17937))

(declare-fun m!75093 () Bool)

(assert (=> bs!3233 m!75093))

(assert (=> bs!3233 m!75093))

(declare-fun m!75095 () Bool)

(assert (=> bs!3233 m!75095))

(assert (=> b!75138 d!17937))

(declare-fun d!17939 () Bool)

(assert (=> d!17939 (= (apply!76 (+!101 lt!33855 (tuple2!2157 lt!33852 (minValue!2134 (v!2549 (underlying!267 thiss!992))))) lt!33850) (get!1165 (getValueByKey!133 (toList!738 (+!101 lt!33855 (tuple2!2157 lt!33852 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))) lt!33850)))))

(declare-fun bs!3234 () Bool)

(assert (= bs!3234 d!17939))

(declare-fun m!75097 () Bool)

(assert (=> bs!3234 m!75097))

(assert (=> bs!3234 m!75097))

(declare-fun m!75099 () Bool)

(assert (=> bs!3234 m!75099))

(assert (=> b!75138 d!17939))

(declare-fun d!17941 () Bool)

(declare-fun e!49402 () Bool)

(assert (=> d!17941 e!49402))

(declare-fun res!39853 () Bool)

(assert (=> d!17941 (=> (not res!39853) (not e!49402))))

(declare-fun lt!34218 () ListLongMap!1445)

(assert (=> d!17941 (= res!39853 (contains!732 lt!34218 (_1!1088 (tuple2!2157 lt!33847 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(declare-fun lt!34219 () List!1513)

(assert (=> d!17941 (= lt!34218 (ListLongMap!1446 lt!34219))))

(declare-fun lt!34217 () Unit!2169)

(declare-fun lt!34216 () Unit!2169)

(assert (=> d!17941 (= lt!34217 lt!34216)))

(assert (=> d!17941 (= (getValueByKey!133 lt!34219 (_1!1088 (tuple2!2157 lt!33847 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))) (Some!138 (_2!1088 (tuple2!2157 lt!33847 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (=> d!17941 (= lt!34216 (lemmaContainsTupThenGetReturnValue!52 lt!34219 (_1!1088 (tuple2!2157 lt!33847 (minValue!2134 (v!2549 (underlying!267 thiss!992))))) (_2!1088 (tuple2!2157 lt!33847 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (=> d!17941 (= lt!34219 (insertStrictlySorted!54 (toList!738 lt!33851) (_1!1088 (tuple2!2157 lt!33847 (minValue!2134 (v!2549 (underlying!267 thiss!992))))) (_2!1088 (tuple2!2157 lt!33847 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (=> d!17941 (= (+!101 lt!33851 (tuple2!2157 lt!33847 (minValue!2134 (v!2549 (underlying!267 thiss!992))))) lt!34218)))

(declare-fun b!75627 () Bool)

(declare-fun res!39854 () Bool)

(assert (=> b!75627 (=> (not res!39854) (not e!49402))))

(assert (=> b!75627 (= res!39854 (= (getValueByKey!133 (toList!738 lt!34218) (_1!1088 (tuple2!2157 lt!33847 (minValue!2134 (v!2549 (underlying!267 thiss!992)))))) (Some!138 (_2!1088 (tuple2!2157 lt!33847 (minValue!2134 (v!2549 (underlying!267 thiss!992))))))))))

(declare-fun b!75628 () Bool)

(assert (=> b!75628 (= e!49402 (contains!734 (toList!738 lt!34218) (tuple2!2157 lt!33847 (minValue!2134 (v!2549 (underlying!267 thiss!992))))))))

(assert (= (and d!17941 res!39853) b!75627))

(assert (= (and b!75627 res!39854) b!75628))

(declare-fun m!75101 () Bool)

(assert (=> d!17941 m!75101))

(declare-fun m!75103 () Bool)

(assert (=> d!17941 m!75103))

(declare-fun m!75105 () Bool)

(assert (=> d!17941 m!75105))

(declare-fun m!75107 () Bool)

(assert (=> d!17941 m!75107))

(declare-fun m!75109 () Bool)

(assert (=> b!75627 m!75109))

(declare-fun m!75111 () Bool)

(assert (=> b!75628 m!75111))

(assert (=> b!75138 d!17941))

(declare-fun d!17943 () Bool)

(declare-fun e!49403 () Bool)

(assert (=> d!17943 e!49403))

(declare-fun res!39855 () Bool)

(assert (=> d!17943 (=> (not res!39855) (not e!49403))))

(declare-fun lt!34222 () ListLongMap!1445)

(assert (=> d!17943 (= res!39855 (contains!732 lt!34222 (_1!1088 (tuple2!2157 lt!33848 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(declare-fun lt!34223 () List!1513)

(assert (=> d!17943 (= lt!34222 (ListLongMap!1446 lt!34223))))

(declare-fun lt!34221 () Unit!2169)

(declare-fun lt!34220 () Unit!2169)

(assert (=> d!17943 (= lt!34221 lt!34220)))

(assert (=> d!17943 (= (getValueByKey!133 lt!34223 (_1!1088 (tuple2!2157 lt!33848 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))) (Some!138 (_2!1088 (tuple2!2157 lt!33848 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (=> d!17943 (= lt!34220 (lemmaContainsTupThenGetReturnValue!52 lt!34223 (_1!1088 (tuple2!2157 lt!33848 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) (_2!1088 (tuple2!2157 lt!33848 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (=> d!17943 (= lt!34223 (insertStrictlySorted!54 (toList!738 lt!33842) (_1!1088 (tuple2!2157 lt!33848 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) (_2!1088 (tuple2!2157 lt!33848 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (=> d!17943 (= (+!101 lt!33842 (tuple2!2157 lt!33848 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) lt!34222)))

(declare-fun b!75629 () Bool)

(declare-fun res!39856 () Bool)

(assert (=> b!75629 (=> (not res!39856) (not e!49403))))

(assert (=> b!75629 (= res!39856 (= (getValueByKey!133 (toList!738 lt!34222) (_1!1088 (tuple2!2157 lt!33848 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))) (Some!138 (_2!1088 (tuple2!2157 lt!33848 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))))))))

(declare-fun b!75630 () Bool)

(assert (=> b!75630 (= e!49403 (contains!734 (toList!738 lt!34222) (tuple2!2157 lt!33848 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))))))

(assert (= (and d!17943 res!39855) b!75629))

(assert (= (and b!75629 res!39856) b!75630))

(declare-fun m!75113 () Bool)

(assert (=> d!17943 m!75113))

(declare-fun m!75115 () Bool)

(assert (=> d!17943 m!75115))

(declare-fun m!75117 () Bool)

(assert (=> d!17943 m!75117))

(declare-fun m!75119 () Bool)

(assert (=> d!17943 m!75119))

(declare-fun m!75121 () Bool)

(assert (=> b!75629 m!75121))

(declare-fun m!75123 () Bool)

(assert (=> b!75630 m!75123))

(assert (=> b!75138 d!17943))

(declare-fun d!17945 () Bool)

(assert (=> d!17945 (= (apply!76 (+!101 lt!33855 (tuple2!2157 lt!33852 (minValue!2134 (v!2549 (underlying!267 thiss!992))))) lt!33850) (apply!76 lt!33855 lt!33850))))

(declare-fun lt!34224 () Unit!2169)

(assert (=> d!17945 (= lt!34224 (choose!439 lt!33855 lt!33852 (minValue!2134 (v!2549 (underlying!267 thiss!992))) lt!33850))))

(declare-fun e!49404 () Bool)

(assert (=> d!17945 e!49404))

(declare-fun res!39857 () Bool)

(assert (=> d!17945 (=> (not res!39857) (not e!49404))))

(assert (=> d!17945 (= res!39857 (contains!732 lt!33855 lt!33850))))

(assert (=> d!17945 (= (addApplyDifferent!52 lt!33855 lt!33852 (minValue!2134 (v!2549 (underlying!267 thiss!992))) lt!33850) lt!34224)))

(declare-fun b!75631 () Bool)

(assert (=> b!75631 (= e!49404 (not (= lt!33850 lt!33852)))))

(assert (= (and d!17945 res!39857) b!75631))

(assert (=> d!17945 m!74519))

(assert (=> d!17945 m!74529))

(declare-fun m!75125 () Bool)

(assert (=> d!17945 m!75125))

(declare-fun m!75127 () Bool)

(assert (=> d!17945 m!75127))

(assert (=> d!17945 m!74519))

(assert (=> d!17945 m!74521))

(assert (=> b!75138 d!17945))

(declare-fun d!17947 () Bool)

(assert (=> d!17947 (= (apply!76 lt!33842 lt!33841) (get!1165 (getValueByKey!133 (toList!738 lt!33842) lt!33841)))))

(declare-fun bs!3235 () Bool)

(assert (= bs!3235 d!17947))

(declare-fun m!75129 () Bool)

(assert (=> bs!3235 m!75129))

(assert (=> bs!3235 m!75129))

(declare-fun m!75131 () Bool)

(assert (=> bs!3235 m!75131))

(assert (=> b!75138 d!17947))

(declare-fun d!17949 () Bool)

(declare-fun e!49405 () Bool)

(assert (=> d!17949 e!49405))

(declare-fun res!39858 () Bool)

(assert (=> d!17949 (=> res!39858 e!49405)))

(declare-fun lt!34225 () Bool)

(assert (=> d!17949 (= res!39858 (not lt!34225))))

(declare-fun lt!34226 () Bool)

(assert (=> d!17949 (= lt!34225 lt!34226)))

(declare-fun lt!34227 () Unit!2169)

(declare-fun e!49406 () Unit!2169)

(assert (=> d!17949 (= lt!34227 e!49406)))

(declare-fun c!11502 () Bool)

(assert (=> d!17949 (= c!11502 lt!34226)))

(assert (=> d!17949 (= lt!34226 (containsKey!137 (toList!738 (+!101 lt!33838 (tuple2!2157 lt!33845 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))) lt!33849))))

(assert (=> d!17949 (= (contains!732 (+!101 lt!33838 (tuple2!2157 lt!33845 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) lt!33849) lt!34225)))

(declare-fun b!75632 () Bool)

(declare-fun lt!34228 () Unit!2169)

(assert (=> b!75632 (= e!49406 lt!34228)))

(assert (=> b!75632 (= lt!34228 (lemmaContainsKeyImpliesGetValueByKeyDefined!86 (toList!738 (+!101 lt!33838 (tuple2!2157 lt!33845 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))) lt!33849))))

(assert (=> b!75632 (isDefined!87 (getValueByKey!133 (toList!738 (+!101 lt!33838 (tuple2!2157 lt!33845 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))) lt!33849))))

(declare-fun b!75633 () Bool)

(declare-fun Unit!2188 () Unit!2169)

(assert (=> b!75633 (= e!49406 Unit!2188)))

(declare-fun b!75634 () Bool)

(assert (=> b!75634 (= e!49405 (isDefined!87 (getValueByKey!133 (toList!738 (+!101 lt!33838 (tuple2!2157 lt!33845 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))) lt!33849)))))

(assert (= (and d!17949 c!11502) b!75632))

(assert (= (and d!17949 (not c!11502)) b!75633))

(assert (= (and d!17949 (not res!39858)) b!75634))

(declare-fun m!75133 () Bool)

(assert (=> d!17949 m!75133))

(declare-fun m!75135 () Bool)

(assert (=> b!75632 m!75135))

(declare-fun m!75137 () Bool)

(assert (=> b!75632 m!75137))

(assert (=> b!75632 m!75137))

(declare-fun m!75139 () Bool)

(assert (=> b!75632 m!75139))

(assert (=> b!75634 m!75137))

(assert (=> b!75634 m!75137))

(assert (=> b!75634 m!75139))

(assert (=> b!75138 d!17949))

(declare-fun d!17951 () Bool)

(assert (=> d!17951 (= (apply!76 lt!33851 lt!33840) (get!1165 (getValueByKey!133 (toList!738 lt!33851) lt!33840)))))

(declare-fun bs!3236 () Bool)

(assert (= bs!3236 d!17951))

(declare-fun m!75141 () Bool)

(assert (=> bs!3236 m!75141))

(assert (=> bs!3236 m!75141))

(declare-fun m!75143 () Bool)

(assert (=> bs!3236 m!75143))

(assert (=> b!75138 d!17951))

(declare-fun d!17953 () Bool)

(assert (=> d!17953 (= (apply!76 (+!101 lt!33851 (tuple2!2157 lt!33847 (minValue!2134 (v!2549 (underlying!267 thiss!992))))) lt!33840) (apply!76 lt!33851 lt!33840))))

(declare-fun lt!34229 () Unit!2169)

(assert (=> d!17953 (= lt!34229 (choose!439 lt!33851 lt!33847 (minValue!2134 (v!2549 (underlying!267 thiss!992))) lt!33840))))

(declare-fun e!49407 () Bool)

(assert (=> d!17953 e!49407))

(declare-fun res!39859 () Bool)

(assert (=> d!17953 (=> (not res!39859) (not e!49407))))

(assert (=> d!17953 (= res!39859 (contains!732 lt!33851 lt!33840))))

(assert (=> d!17953 (= (addApplyDifferent!52 lt!33851 lt!33847 (minValue!2134 (v!2549 (underlying!267 thiss!992))) lt!33840) lt!34229)))

(declare-fun b!75635 () Bool)

(assert (=> b!75635 (= e!49407 (not (= lt!33840 lt!33847)))))

(assert (= (and d!17953 res!39859) b!75635))

(assert (=> d!17953 m!74537))

(assert (=> d!17953 m!74545))

(declare-fun m!75145 () Bool)

(assert (=> d!17953 m!75145))

(declare-fun m!75147 () Bool)

(assert (=> d!17953 m!75147))

(assert (=> d!17953 m!74537))

(assert (=> d!17953 m!74541))

(assert (=> b!75138 d!17953))

(declare-fun d!17955 () Bool)

(assert (=> d!17955 (= (apply!76 (+!101 lt!33842 (tuple2!2157 lt!33848 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) lt!33841) (get!1165 (getValueByKey!133 (toList!738 (+!101 lt!33842 (tuple2!2157 lt!33848 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))) lt!33841)))))

(declare-fun bs!3237 () Bool)

(assert (= bs!3237 d!17955))

(declare-fun m!75149 () Bool)

(assert (=> bs!3237 m!75149))

(assert (=> bs!3237 m!75149))

(declare-fun m!75151 () Bool)

(assert (=> bs!3237 m!75151))

(assert (=> b!75138 d!17955))

(assert (=> b!75138 d!17843))

(declare-fun d!17957 () Bool)

(assert (=> d!17957 (= (apply!76 lt!33855 lt!33850) (get!1165 (getValueByKey!133 (toList!738 lt!33855) lt!33850)))))

(declare-fun bs!3238 () Bool)

(assert (= bs!3238 d!17957))

(declare-fun m!75153 () Bool)

(assert (=> bs!3238 m!75153))

(assert (=> bs!3238 m!75153))

(declare-fun m!75155 () Bool)

(assert (=> bs!3238 m!75155))

(assert (=> b!75138 d!17957))

(declare-fun d!17959 () Bool)

(assert (=> d!17959 (contains!732 (+!101 lt!33838 (tuple2!2157 lt!33845 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) lt!33849)))

(declare-fun lt!34232 () Unit!2169)

(declare-fun choose!440 (ListLongMap!1445 (_ BitVec 64) V!2955 (_ BitVec 64)) Unit!2169)

(assert (=> d!17959 (= lt!34232 (choose!440 lt!33838 lt!33845 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) lt!33849))))

(assert (=> d!17959 (contains!732 lt!33838 lt!33849)))

(assert (=> d!17959 (= (addStillContains!52 lt!33838 lt!33845 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) lt!33849) lt!34232)))

(declare-fun bs!3239 () Bool)

(assert (= bs!3239 d!17959))

(assert (=> bs!3239 m!74523))

(assert (=> bs!3239 m!74523))

(assert (=> bs!3239 m!74533))

(declare-fun m!75157 () Bool)

(assert (=> bs!3239 m!75157))

(declare-fun m!75159 () Bool)

(assert (=> bs!3239 m!75159))

(assert (=> b!75138 d!17959))

(declare-fun bm!6775 () Bool)

(declare-fun call!6778 () (_ BitVec 32))

(assert (=> bm!6775 (= call!6778 (arrayCountValidKeys!0 (_keys!3890 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2103 (_keys!3890 newMap!16))))))

(declare-fun d!17961 () Bool)

(declare-fun lt!34235 () (_ BitVec 32))

(assert (=> d!17961 (and (bvsge lt!34235 #b00000000000000000000000000000000) (bvsle lt!34235 (bvsub (size!2103 (_keys!3890 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!49413 () (_ BitVec 32))

(assert (=> d!17961 (= lt!34235 e!49413)))

(declare-fun c!11507 () Bool)

(assert (=> d!17961 (= c!11507 (bvsge #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))))))

(assert (=> d!17961 (and (bvsle #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2103 (_keys!3890 newMap!16)) (size!2103 (_keys!3890 newMap!16))))))

(assert (=> d!17961 (= (arrayCountValidKeys!0 (_keys!3890 newMap!16) #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))) lt!34235)))

(declare-fun b!75645 () Bool)

(assert (=> b!75645 (= e!49413 #b00000000000000000000000000000000)))

(declare-fun b!75646 () Bool)

(declare-fun e!49412 () (_ BitVec 32))

(assert (=> b!75646 (= e!49413 e!49412)))

(declare-fun c!11508 () Bool)

(assert (=> b!75646 (= c!11508 (validKeyInArray!0 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!75647 () Bool)

(assert (=> b!75647 (= e!49412 call!6778)))

(declare-fun b!75648 () Bool)

(assert (=> b!75648 (= e!49412 (bvadd #b00000000000000000000000000000001 call!6778))))

(assert (= (and d!17961 c!11507) b!75645))

(assert (= (and d!17961 (not c!11507)) b!75646))

(assert (= (and b!75646 c!11508) b!75648))

(assert (= (and b!75646 (not c!11508)) b!75647))

(assert (= (or b!75648 b!75647) bm!6775))

(declare-fun m!75161 () Bool)

(assert (=> bm!6775 m!75161))

(assert (=> b!75646 m!74795))

(assert (=> b!75646 m!74795))

(assert (=> b!75646 m!74801))

(assert (=> b!75282 d!17961))

(assert (=> bm!6716 d!17815))

(declare-fun d!17963 () Bool)

(assert (=> d!17963 (= (apply!76 lt!33835 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1165 (getValueByKey!133 (toList!738 lt!33835) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!3240 () Bool)

(assert (= bs!3240 d!17963))

(assert (=> bs!3240 m!75049))

(assert (=> bs!3240 m!75049))

(declare-fun m!75163 () Bool)

(assert (=> bs!3240 m!75163))

(assert (=> b!75123 d!17963))

(declare-fun d!17965 () Bool)

(assert (=> d!17965 (isDefined!87 (getValueByKey!133 (toList!738 lt!33747) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(declare-fun lt!34238 () Unit!2169)

(declare-fun choose!441 (List!1513 (_ BitVec 64)) Unit!2169)

(assert (=> d!17965 (= lt!34238 (choose!441 (toList!738 lt!33747) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(declare-fun e!49416 () Bool)

(assert (=> d!17965 e!49416))

(declare-fun res!39862 () Bool)

(assert (=> d!17965 (=> (not res!39862) (not e!49416))))

(assert (=> d!17965 (= res!39862 (isStrictlySorted!288 (toList!738 lt!33747)))))

(assert (=> d!17965 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!86 (toList!738 lt!33747) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)) lt!34238)))

(declare-fun b!75651 () Bool)

(assert (=> b!75651 (= e!49416 (containsKey!137 (toList!738 lt!33747) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(assert (= (and d!17965 res!39862) b!75651))

(assert (=> d!17965 m!74389))

(assert (=> d!17965 m!74557))

(assert (=> d!17965 m!74557))

(assert (=> d!17965 m!74559))

(assert (=> d!17965 m!74389))

(declare-fun m!75165 () Bool)

(assert (=> d!17965 m!75165))

(declare-fun m!75167 () Bool)

(assert (=> d!17965 m!75167))

(assert (=> b!75651 m!74389))

(assert (=> b!75651 m!74553))

(assert (=> b!75147 d!17965))

(declare-fun d!17967 () Bool)

(declare-fun isEmpty!325 (Option!139) Bool)

(assert (=> d!17967 (= (isDefined!87 (getValueByKey!133 (toList!738 lt!33747) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355))) (not (isEmpty!325 (getValueByKey!133 (toList!738 lt!33747) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))))

(declare-fun bs!3241 () Bool)

(assert (= bs!3241 d!17967))

(assert (=> bs!3241 m!74557))

(declare-fun m!75169 () Bool)

(assert (=> bs!3241 m!75169))

(assert (=> b!75147 d!17967))

(declare-fun b!75653 () Bool)

(declare-fun e!49417 () Option!139)

(declare-fun e!49418 () Option!139)

(assert (=> b!75653 (= e!49417 e!49418)))

(declare-fun c!11510 () Bool)

(assert (=> b!75653 (= c!11510 (and ((_ is Cons!1509) (toList!738 lt!33747)) (not (= (_1!1088 (h!2097 (toList!738 lt!33747))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))))

(declare-fun b!75654 () Bool)

(assert (=> b!75654 (= e!49418 (getValueByKey!133 (t!5095 (toList!738 lt!33747)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(declare-fun b!75652 () Bool)

(assert (=> b!75652 (= e!49417 (Some!138 (_2!1088 (h!2097 (toList!738 lt!33747)))))))

(declare-fun b!75655 () Bool)

(assert (=> b!75655 (= e!49418 None!137)))

(declare-fun c!11509 () Bool)

(declare-fun d!17969 () Bool)

(assert (=> d!17969 (= c!11509 (and ((_ is Cons!1509) (toList!738 lt!33747)) (= (_1!1088 (h!2097 (toList!738 lt!33747))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355))))))

(assert (=> d!17969 (= (getValueByKey!133 (toList!738 lt!33747) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)) e!49417)))

(assert (= (and d!17969 c!11509) b!75652))

(assert (= (and d!17969 (not c!11509)) b!75653))

(assert (= (and b!75653 c!11510) b!75654))

(assert (= (and b!75653 (not c!11510)) b!75655))

(assert (=> b!75654 m!74389))

(declare-fun m!75171 () Bool)

(assert (=> b!75654 m!75171))

(assert (=> b!75147 d!17969))

(declare-fun b!75656 () Bool)

(declare-fun e!49419 () Bool)

(declare-fun call!6779 () Bool)

(assert (=> b!75656 (= e!49419 call!6779)))

(declare-fun b!75657 () Bool)

(declare-fun e!49421 () Bool)

(assert (=> b!75657 (= e!49421 (contains!733 Nil!1511 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!75659 () Bool)

(declare-fun e!49422 () Bool)

(assert (=> b!75659 (= e!49422 e!49419)))

(declare-fun c!11511 () Bool)

(assert (=> b!75659 (= c!11511 (validKeyInArray!0 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!6776 () Bool)

(assert (=> bm!6776 (= call!6779 (arrayNoDuplicates!0 (_keys!3890 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!11511 (Cons!1510 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000) Nil!1511) Nil!1511)))))

(declare-fun b!75660 () Bool)

(declare-fun e!49420 () Bool)

(assert (=> b!75660 (= e!49420 e!49422)))

(declare-fun res!39863 () Bool)

(assert (=> b!75660 (=> (not res!39863) (not e!49422))))

(assert (=> b!75660 (= res!39863 (not e!49421))))

(declare-fun res!39865 () Bool)

(assert (=> b!75660 (=> (not res!39865) (not e!49421))))

(assert (=> b!75660 (= res!39865 (validKeyInArray!0 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!17971 () Bool)

(declare-fun res!39864 () Bool)

(assert (=> d!17971 (=> res!39864 e!49420)))

(assert (=> d!17971 (= res!39864 (bvsge #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))))))

(assert (=> d!17971 (= (arrayNoDuplicates!0 (_keys!3890 newMap!16) #b00000000000000000000000000000000 Nil!1511) e!49420)))

(declare-fun b!75658 () Bool)

(assert (=> b!75658 (= e!49419 call!6779)))

(assert (= (and d!17971 (not res!39864)) b!75660))

(assert (= (and b!75660 res!39865) b!75657))

(assert (= (and b!75660 res!39863) b!75659))

(assert (= (and b!75659 c!11511) b!75656))

(assert (= (and b!75659 (not c!11511)) b!75658))

(assert (= (or b!75656 b!75658) bm!6776))

(assert (=> b!75657 m!74795))

(assert (=> b!75657 m!74795))

(declare-fun m!75173 () Bool)

(assert (=> b!75657 m!75173))

(assert (=> b!75659 m!74795))

(assert (=> b!75659 m!74795))

(assert (=> b!75659 m!74801))

(assert (=> bm!6776 m!74795))

(declare-fun m!75175 () Bool)

(assert (=> bm!6776 m!75175))

(assert (=> b!75660 m!74795))

(assert (=> b!75660 m!74795))

(assert (=> b!75660 m!74801))

(assert (=> b!75284 d!17971))

(declare-fun d!17973 () Bool)

(declare-fun e!49425 () Bool)

(assert (=> d!17973 e!49425))

(declare-fun res!39870 () Bool)

(assert (=> d!17973 (=> (not res!39870) (not e!49425))))

(declare-fun lt!34243 () SeekEntryResult!247)

(assert (=> d!17973 (= res!39870 ((_ is Found!247) lt!34243))))

(assert (=> d!17973 (= lt!34243 (seekEntryOrOpen!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (_keys!3890 newMap!16) (mask!6211 newMap!16)))))

(declare-fun lt!34244 () Unit!2169)

(declare-fun choose!442 (array!3908 array!3910 (_ BitVec 32) (_ BitVec 32) V!2955 V!2955 (_ BitVec 64) Int) Unit!2169)

(assert (=> d!17973 (= lt!34244 (choose!442 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (defaultEntry!2234 newMap!16)))))

(assert (=> d!17973 (validMask!0 (mask!6211 newMap!16))))

(assert (=> d!17973 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!25 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (defaultEntry!2234 newMap!16)) lt!34244)))

(declare-fun b!75665 () Bool)

(declare-fun res!39871 () Bool)

(assert (=> b!75665 (=> (not res!39871) (not e!49425))))

(assert (=> b!75665 (= res!39871 (inRange!0 (index!3121 lt!34243) (mask!6211 newMap!16)))))

(declare-fun b!75666 () Bool)

(assert (=> b!75666 (= e!49425 (= (select (arr!1864 (_keys!3890 newMap!16)) (index!3121 lt!34243)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(assert (=> b!75666 (and (bvsge (index!3121 lt!34243) #b00000000000000000000000000000000) (bvslt (index!3121 lt!34243) (size!2103 (_keys!3890 newMap!16))))))

(assert (= (and d!17973 res!39870) b!75665))

(assert (= (and b!75665 res!39871) b!75666))

(assert (=> d!17973 m!74389))

(assert (=> d!17973 m!74567))

(assert (=> d!17973 m!74389))

(declare-fun m!75177 () Bool)

(assert (=> d!17973 m!75177))

(assert (=> d!17973 m!74787))

(declare-fun m!75179 () Bool)

(assert (=> b!75665 m!75179))

(declare-fun m!75181 () Bool)

(assert (=> b!75666 m!75181))

(assert (=> bm!6717 d!17973))

(assert (=> b!75149 d!17967))

(assert (=> b!75149 d!17969))

(declare-fun d!17975 () Bool)

(declare-fun e!49426 () Bool)

(assert (=> d!17975 e!49426))

(declare-fun res!39872 () Bool)

(assert (=> d!17975 (=> (not res!39872) (not e!49426))))

(declare-fun lt!34247 () ListLongMap!1445)

(assert (=> d!17975 (= res!39872 (contains!732 lt!34247 (_1!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))))))

(declare-fun lt!34248 () List!1513)

(assert (=> d!17975 (= lt!34247 (ListLongMap!1446 lt!34248))))

(declare-fun lt!34246 () Unit!2169)

(declare-fun lt!34245 () Unit!2169)

(assert (=> d!17975 (= lt!34246 lt!34245)))

(assert (=> d!17975 (= (getValueByKey!133 lt!34248 (_1!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))) (Some!138 (_2!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))))))

(assert (=> d!17975 (= lt!34245 (lemmaContainsTupThenGetReturnValue!52 lt!34248 (_1!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)) (_2!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))))))

(assert (=> d!17975 (= lt!34248 (insertStrictlySorted!54 (toList!738 call!6730) (_1!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)) (_2!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))))))

(assert (=> d!17975 (= (+!101 call!6730 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)) lt!34247)))

(declare-fun b!75667 () Bool)

(declare-fun res!39873 () Bool)

(assert (=> b!75667 (=> (not res!39873) (not e!49426))))

(assert (=> b!75667 (= res!39873 (= (getValueByKey!133 (toList!738 lt!34247) (_1!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))) (Some!138 (_2!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)))))))

(declare-fun b!75668 () Bool)

(assert (=> b!75668 (= e!49426 (contains!734 (toList!738 lt!34247) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)))))

(assert (= (and d!17975 res!39872) b!75667))

(assert (= (and b!75667 res!39873) b!75668))

(declare-fun m!75183 () Bool)

(assert (=> d!17975 m!75183))

(declare-fun m!75185 () Bool)

(assert (=> d!17975 m!75185))

(declare-fun m!75187 () Bool)

(assert (=> d!17975 m!75187))

(declare-fun m!75189 () Bool)

(assert (=> d!17975 m!75189))

(declare-fun m!75191 () Bool)

(assert (=> b!75667 m!75191))

(declare-fun m!75193 () Bool)

(assert (=> b!75668 m!75193))

(assert (=> b!75250 d!17975))

(assert (=> b!75125 d!17903))

(declare-fun d!17977 () Bool)

(declare-fun e!49427 () Bool)

(assert (=> d!17977 e!49427))

(declare-fun res!39874 () Bool)

(assert (=> d!17977 (=> (not res!39874) (not e!49427))))

(declare-fun lt!34251 () ListLongMap!1445)

(assert (=> d!17977 (= res!39874 (contains!732 lt!34251 (_1!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))))))

(declare-fun lt!34252 () List!1513)

(assert (=> d!17977 (= lt!34251 (ListLongMap!1446 lt!34252))))

(declare-fun lt!34250 () Unit!2169)

(declare-fun lt!34249 () Unit!2169)

(assert (=> d!17977 (= lt!34250 lt!34249)))

(assert (=> d!17977 (= (getValueByKey!133 lt!34252 (_1!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))) (Some!138 (_2!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))))))

(assert (=> d!17977 (= lt!34249 (lemmaContainsTupThenGetReturnValue!52 lt!34252 (_1!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)) (_2!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))))))

(assert (=> d!17977 (= lt!34252 (insertStrictlySorted!54 (toList!738 lt!33746) (_1!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)) (_2!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))))))

(assert (=> d!17977 (= (+!101 lt!33746 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)) lt!34251)))

(declare-fun b!75669 () Bool)

(declare-fun res!39875 () Bool)

(assert (=> b!75669 (=> (not res!39875) (not e!49427))))

(assert (=> b!75669 (= res!39875 (= (getValueByKey!133 (toList!738 lt!34251) (_1!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))) (Some!138 (_2!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)))))))

(declare-fun b!75670 () Bool)

(assert (=> b!75670 (= e!49427 (contains!734 (toList!738 lt!34251) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)))))

(assert (= (and d!17977 res!39874) b!75669))

(assert (= (and b!75669 res!39875) b!75670))

(declare-fun m!75195 () Bool)

(assert (=> d!17977 m!75195))

(declare-fun m!75197 () Bool)

(assert (=> d!17977 m!75197))

(declare-fun m!75199 () Bool)

(assert (=> d!17977 m!75199))

(declare-fun m!75201 () Bool)

(assert (=> d!17977 m!75201))

(declare-fun m!75203 () Bool)

(assert (=> b!75669 m!75203))

(declare-fun m!75205 () Bool)

(assert (=> b!75670 m!75205))

(assert (=> d!17841 d!17977))

(declare-fun d!17979 () Bool)

(assert (=> d!17979 (= (+!101 (+!101 lt!33746 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)) (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) (+!101 (+!101 lt!33746 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)))))

(assert (=> d!17979 true))

(declare-fun _$28!124 () Unit!2169)

(assert (=> d!17979 (= (choose!434 lt!33746 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))) _$28!124)))

(declare-fun bs!3242 () Bool)

(assert (= bs!3242 d!17979))

(assert (=> bs!3242 m!74649))

(assert (=> bs!3242 m!74649))

(assert (=> bs!3242 m!74651))

(assert (=> bs!3242 m!74655))

(assert (=> bs!3242 m!74655))

(assert (=> bs!3242 m!74657))

(assert (=> d!17841 d!17979))

(declare-fun d!17981 () Bool)

(declare-fun e!49428 () Bool)

(assert (=> d!17981 e!49428))

(declare-fun res!39876 () Bool)

(assert (=> d!17981 (=> (not res!39876) (not e!49428))))

(declare-fun lt!34255 () ListLongMap!1445)

(assert (=> d!17981 (= res!39876 (contains!732 lt!34255 (_1!1088 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(declare-fun lt!34256 () List!1513)

(assert (=> d!17981 (= lt!34255 (ListLongMap!1446 lt!34256))))

(declare-fun lt!34254 () Unit!2169)

(declare-fun lt!34253 () Unit!2169)

(assert (=> d!17981 (= lt!34254 lt!34253)))

(assert (=> d!17981 (= (getValueByKey!133 lt!34256 (_1!1088 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))) (Some!138 (_2!1088 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (=> d!17981 (= lt!34253 (lemmaContainsTupThenGetReturnValue!52 lt!34256 (_1!1088 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) (_2!1088 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (=> d!17981 (= lt!34256 (insertStrictlySorted!54 (toList!738 (+!101 lt!33746 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))) (_1!1088 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) (_2!1088 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (=> d!17981 (= (+!101 (+!101 lt!33746 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)) (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) lt!34255)))

(declare-fun b!75671 () Bool)

(declare-fun res!39877 () Bool)

(assert (=> b!75671 (=> (not res!39877) (not e!49428))))

(assert (=> b!75671 (= res!39877 (= (getValueByKey!133 (toList!738 lt!34255) (_1!1088 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))) (Some!138 (_2!1088 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))))))))

(declare-fun b!75672 () Bool)

(assert (=> b!75672 (= e!49428 (contains!734 (toList!738 lt!34255) (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))))))

(assert (= (and d!17981 res!39876) b!75671))

(assert (= (and b!75671 res!39877) b!75672))

(declare-fun m!75207 () Bool)

(assert (=> d!17981 m!75207))

(declare-fun m!75209 () Bool)

(assert (=> d!17981 m!75209))

(declare-fun m!75211 () Bool)

(assert (=> d!17981 m!75211))

(declare-fun m!75213 () Bool)

(assert (=> d!17981 m!75213))

(declare-fun m!75215 () Bool)

(assert (=> b!75671 m!75215))

(declare-fun m!75217 () Bool)

(assert (=> b!75672 m!75217))

(assert (=> d!17841 d!17981))

(declare-fun d!17983 () Bool)

(declare-fun e!49429 () Bool)

(assert (=> d!17983 e!49429))

(declare-fun res!39878 () Bool)

(assert (=> d!17983 (=> (not res!39878) (not e!49429))))

(declare-fun lt!34259 () ListLongMap!1445)

(assert (=> d!17983 (= res!39878 (contains!732 lt!34259 (_1!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))))))

(declare-fun lt!34260 () List!1513)

(assert (=> d!17983 (= lt!34259 (ListLongMap!1446 lt!34260))))

(declare-fun lt!34258 () Unit!2169)

(declare-fun lt!34257 () Unit!2169)

(assert (=> d!17983 (= lt!34258 lt!34257)))

(assert (=> d!17983 (= (getValueByKey!133 lt!34260 (_1!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))) (Some!138 (_2!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))))))

(assert (=> d!17983 (= lt!34257 (lemmaContainsTupThenGetReturnValue!52 lt!34260 (_1!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)) (_2!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))))))

(assert (=> d!17983 (= lt!34260 (insertStrictlySorted!54 (toList!738 (+!101 lt!33746 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))) (_1!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)) (_2!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))))))

(assert (=> d!17983 (= (+!101 (+!101 lt!33746 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)) lt!34259)))

(declare-fun b!75673 () Bool)

(declare-fun res!39879 () Bool)

(assert (=> b!75673 (=> (not res!39879) (not e!49429))))

(assert (=> b!75673 (= res!39879 (= (getValueByKey!133 (toList!738 lt!34259) (_1!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))) (Some!138 (_2!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)))))))

(declare-fun b!75674 () Bool)

(assert (=> b!75674 (= e!49429 (contains!734 (toList!738 lt!34259) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)))))

(assert (= (and d!17983 res!39878) b!75673))

(assert (= (and b!75673 res!39879) b!75674))

(declare-fun m!75219 () Bool)

(assert (=> d!17983 m!75219))

(declare-fun m!75221 () Bool)

(assert (=> d!17983 m!75221))

(declare-fun m!75223 () Bool)

(assert (=> d!17983 m!75223))

(declare-fun m!75225 () Bool)

(assert (=> d!17983 m!75225))

(declare-fun m!75227 () Bool)

(assert (=> b!75673 m!75227))

(declare-fun m!75229 () Bool)

(assert (=> b!75674 m!75229))

(assert (=> d!17841 d!17983))

(declare-fun d!17985 () Bool)

(declare-fun e!49430 () Bool)

(assert (=> d!17985 e!49430))

(declare-fun res!39880 () Bool)

(assert (=> d!17985 (=> (not res!39880) (not e!49430))))

(declare-fun lt!34263 () ListLongMap!1445)

(assert (=> d!17985 (= res!39880 (contains!732 lt!34263 (_1!1088 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(declare-fun lt!34264 () List!1513)

(assert (=> d!17985 (= lt!34263 (ListLongMap!1446 lt!34264))))

(declare-fun lt!34262 () Unit!2169)

(declare-fun lt!34261 () Unit!2169)

(assert (=> d!17985 (= lt!34262 lt!34261)))

(assert (=> d!17985 (= (getValueByKey!133 lt!34264 (_1!1088 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))) (Some!138 (_2!1088 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (=> d!17985 (= lt!34261 (lemmaContainsTupThenGetReturnValue!52 lt!34264 (_1!1088 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) (_2!1088 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (=> d!17985 (= lt!34264 (insertStrictlySorted!54 (toList!738 lt!33746) (_1!1088 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) (_2!1088 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))))))

(assert (=> d!17985 (= (+!101 lt!33746 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))) lt!34263)))

(declare-fun b!75675 () Bool)

(declare-fun res!39881 () Bool)

(assert (=> b!75675 (=> (not res!39881) (not e!49430))))

(assert (=> b!75675 (= res!39881 (= (getValueByKey!133 (toList!738 lt!34263) (_1!1088 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992)))))) (Some!138 (_2!1088 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))))))))

(declare-fun b!75676 () Bool)

(assert (=> b!75676 (= e!49430 (contains!734 (toList!738 lt!34263) (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 (v!2549 (underlying!267 thiss!992))))))))

(assert (= (and d!17985 res!39880) b!75675))

(assert (= (and b!75675 res!39881) b!75676))

(declare-fun m!75231 () Bool)

(assert (=> d!17985 m!75231))

(declare-fun m!75233 () Bool)

(assert (=> d!17985 m!75233))

(declare-fun m!75235 () Bool)

(assert (=> d!17985 m!75235))

(declare-fun m!75237 () Bool)

(assert (=> d!17985 m!75237))

(declare-fun m!75239 () Bool)

(assert (=> b!75675 m!75239))

(declare-fun m!75241 () Bool)

(assert (=> b!75676 m!75241))

(assert (=> d!17841 d!17985))

(declare-fun b!75677 () Bool)

(declare-fun e!49435 () Bool)

(declare-fun lt!34265 () ListLongMap!1445)

(assert (=> b!75677 (= e!49435 (= (apply!76 lt!34265 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000)) (get!1162 (select (arr!1865 (_values!2217 newMap!16)) #b00000000000000000000000000000000) (dynLambda!337 (defaultEntry!2234 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!75677 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2104 (_values!2217 newMap!16))))))

(assert (=> b!75677 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))))))

(declare-fun bm!6777 () Bool)

(declare-fun call!6785 () ListLongMap!1445)

(declare-fun call!6780 () ListLongMap!1445)

(assert (=> bm!6777 (= call!6785 call!6780)))

(declare-fun bm!6778 () Bool)

(declare-fun call!6783 () Bool)

(assert (=> bm!6778 (= call!6783 (contains!732 lt!34265 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!6779 () Bool)

(declare-fun call!6782 () ListLongMap!1445)

(assert (=> bm!6779 (= call!6782 call!6785)))

(declare-fun b!75678 () Bool)

(declare-fun res!39886 () Bool)

(declare-fun e!49436 () Bool)

(assert (=> b!75678 (=> (not res!39886) (not e!49436))))

(declare-fun e!49437 () Bool)

(assert (=> b!75678 (= res!39886 e!49437)))

(declare-fun res!39888 () Bool)

(assert (=> b!75678 (=> res!39888 e!49437)))

(declare-fun e!49434 () Bool)

(assert (=> b!75678 (= res!39888 (not e!49434))))

(declare-fun res!39887 () Bool)

(assert (=> b!75678 (=> (not res!39887) (not e!49434))))

(assert (=> b!75678 (= res!39887 (bvslt #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))))))

(declare-fun b!75679 () Bool)

(declare-fun e!49442 () ListLongMap!1445)

(declare-fun call!6781 () ListLongMap!1445)

(assert (=> b!75679 (= e!49442 call!6781)))

(declare-fun b!75680 () Bool)

(declare-fun e!49441 () Bool)

(assert (=> b!75680 (= e!49441 (= (apply!76 lt!34265 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2134 newMap!16)))))

(declare-fun b!75681 () Bool)

(assert (=> b!75681 (= e!49434 (validKeyInArray!0 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!75682 () Bool)

(declare-fun e!49431 () Bool)

(assert (=> b!75682 (= e!49431 (validKeyInArray!0 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!75683 () Bool)

(assert (=> b!75683 (= e!49442 call!6782)))

(declare-fun b!75684 () Bool)

(declare-fun e!49432 () Bool)

(declare-fun e!49439 () Bool)

(assert (=> b!75684 (= e!49432 e!49439)))

(declare-fun res!39882 () Bool)

(declare-fun call!6784 () Bool)

(assert (=> b!75684 (= res!39882 call!6784)))

(assert (=> b!75684 (=> (not res!39882) (not e!49439))))

(declare-fun b!75685 () Bool)

(declare-fun e!49440 () Bool)

(assert (=> b!75685 (= e!49440 (not call!6783))))

(declare-fun b!75686 () Bool)

(assert (=> b!75686 (= e!49440 e!49441)))

(declare-fun res!39884 () Bool)

(assert (=> b!75686 (= res!39884 call!6783)))

(assert (=> b!75686 (=> (not res!39884) (not e!49441))))

(declare-fun b!75687 () Bool)

(assert (=> b!75687 (= e!49437 e!49435)))

(declare-fun res!39890 () Bool)

(assert (=> b!75687 (=> (not res!39890) (not e!49435))))

(assert (=> b!75687 (= res!39890 (contains!732 lt!34265 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!75687 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))))))

(declare-fun b!75688 () Bool)

(assert (=> b!75688 (= e!49439 (= (apply!76 lt!34265 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2134 newMap!16)))))

(declare-fun b!75689 () Bool)

(assert (=> b!75689 (= e!49436 e!49440)))

(declare-fun c!11512 () Bool)

(assert (=> b!75689 (= c!11512 (not (= (bvand (extraKeys!2089 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!17987 () Bool)

(assert (=> d!17987 e!49436))

(declare-fun res!39883 () Bool)

(assert (=> d!17987 (=> (not res!39883) (not e!49436))))

(assert (=> d!17987 (= res!39883 (or (bvsge #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))))))))

(declare-fun lt!34269 () ListLongMap!1445)

(assert (=> d!17987 (= lt!34265 lt!34269)))

(declare-fun lt!34273 () Unit!2169)

(declare-fun e!49433 () Unit!2169)

(assert (=> d!17987 (= lt!34273 e!49433)))

(declare-fun c!11514 () Bool)

(assert (=> d!17987 (= c!11514 e!49431)))

(declare-fun res!39885 () Bool)

(assert (=> d!17987 (=> (not res!39885) (not e!49431))))

(assert (=> d!17987 (= res!39885 (bvslt #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))))))

(declare-fun e!49443 () ListLongMap!1445)

(assert (=> d!17987 (= lt!34269 e!49443)))

(declare-fun c!11516 () Bool)

(assert (=> d!17987 (= c!11516 (and (not (= (bvand (extraKeys!2089 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2089 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!17987 (validMask!0 (mask!6211 newMap!16))))

(assert (=> d!17987 (= (getCurrentListMap!429 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)) lt!34265)))

(declare-fun b!75690 () Bool)

(declare-fun call!6786 () ListLongMap!1445)

(assert (=> b!75690 (= e!49443 (+!101 call!6786 (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 newMap!16))))))

(declare-fun bm!6780 () Bool)

(assert (=> bm!6780 (= call!6781 call!6786)))

(declare-fun c!11513 () Bool)

(declare-fun bm!6781 () Bool)

(assert (=> bm!6781 (= call!6786 (+!101 (ite c!11516 call!6780 (ite c!11513 call!6785 call!6782)) (ite (or c!11516 c!11513) (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2134 newMap!16)) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 newMap!16)))))))

(declare-fun bm!6782 () Bool)

(assert (=> bm!6782 (= call!6784 (contains!732 lt!34265 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!75691 () Bool)

(assert (=> b!75691 (= e!49432 (not call!6784))))

(declare-fun b!75692 () Bool)

(declare-fun e!49438 () ListLongMap!1445)

(assert (=> b!75692 (= e!49443 e!49438)))

(assert (=> b!75692 (= c!11513 (and (not (= (bvand (extraKeys!2089 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2089 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!75693 () Bool)

(declare-fun c!11515 () Bool)

(assert (=> b!75693 (= c!11515 (and (not (= (bvand (extraKeys!2089 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2089 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!75693 (= e!49438 e!49442)))

(declare-fun b!75694 () Bool)

(declare-fun Unit!2189 () Unit!2169)

(assert (=> b!75694 (= e!49433 Unit!2189)))

(declare-fun bm!6783 () Bool)

(assert (=> bm!6783 (= call!6780 (getCurrentListMapNoExtraKeys!65 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun b!75695 () Bool)

(declare-fun lt!34284 () Unit!2169)

(assert (=> b!75695 (= e!49433 lt!34284)))

(declare-fun lt!34268 () ListLongMap!1445)

(assert (=> b!75695 (= lt!34268 (getCurrentListMapNoExtraKeys!65 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun lt!34275 () (_ BitVec 64))

(assert (=> b!75695 (= lt!34275 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34279 () (_ BitVec 64))

(assert (=> b!75695 (= lt!34279 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!34276 () Unit!2169)

(assert (=> b!75695 (= lt!34276 (addStillContains!52 lt!34268 lt!34275 (zeroValue!2134 newMap!16) lt!34279))))

(assert (=> b!75695 (contains!732 (+!101 lt!34268 (tuple2!2157 lt!34275 (zeroValue!2134 newMap!16))) lt!34279)))

(declare-fun lt!34283 () Unit!2169)

(assert (=> b!75695 (= lt!34283 lt!34276)))

(declare-fun lt!34285 () ListLongMap!1445)

(assert (=> b!75695 (= lt!34285 (getCurrentListMapNoExtraKeys!65 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun lt!34282 () (_ BitVec 64))

(assert (=> b!75695 (= lt!34282 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34280 () (_ BitVec 64))

(assert (=> b!75695 (= lt!34280 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!34267 () Unit!2169)

(assert (=> b!75695 (= lt!34267 (addApplyDifferent!52 lt!34285 lt!34282 (minValue!2134 newMap!16) lt!34280))))

(assert (=> b!75695 (= (apply!76 (+!101 lt!34285 (tuple2!2157 lt!34282 (minValue!2134 newMap!16))) lt!34280) (apply!76 lt!34285 lt!34280))))

(declare-fun lt!34286 () Unit!2169)

(assert (=> b!75695 (= lt!34286 lt!34267)))

(declare-fun lt!34272 () ListLongMap!1445)

(assert (=> b!75695 (= lt!34272 (getCurrentListMapNoExtraKeys!65 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun lt!34278 () (_ BitVec 64))

(assert (=> b!75695 (= lt!34278 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34271 () (_ BitVec 64))

(assert (=> b!75695 (= lt!34271 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!34266 () Unit!2169)

(assert (=> b!75695 (= lt!34266 (addApplyDifferent!52 lt!34272 lt!34278 (zeroValue!2134 newMap!16) lt!34271))))

(assert (=> b!75695 (= (apply!76 (+!101 lt!34272 (tuple2!2157 lt!34278 (zeroValue!2134 newMap!16))) lt!34271) (apply!76 lt!34272 lt!34271))))

(declare-fun lt!34274 () Unit!2169)

(assert (=> b!75695 (= lt!34274 lt!34266)))

(declare-fun lt!34281 () ListLongMap!1445)

(assert (=> b!75695 (= lt!34281 (getCurrentListMapNoExtraKeys!65 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun lt!34277 () (_ BitVec 64))

(assert (=> b!75695 (= lt!34277 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34270 () (_ BitVec 64))

(assert (=> b!75695 (= lt!34270 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!75695 (= lt!34284 (addApplyDifferent!52 lt!34281 lt!34277 (minValue!2134 newMap!16) lt!34270))))

(assert (=> b!75695 (= (apply!76 (+!101 lt!34281 (tuple2!2157 lt!34277 (minValue!2134 newMap!16))) lt!34270) (apply!76 lt!34281 lt!34270))))

(declare-fun b!75696 () Bool)

(declare-fun res!39889 () Bool)

(assert (=> b!75696 (=> (not res!39889) (not e!49436))))

(assert (=> b!75696 (= res!39889 e!49432)))

(declare-fun c!11517 () Bool)

(assert (=> b!75696 (= c!11517 (not (= (bvand (extraKeys!2089 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!75697 () Bool)

(assert (=> b!75697 (= e!49438 call!6781)))

(assert (= (and d!17987 c!11516) b!75690))

(assert (= (and d!17987 (not c!11516)) b!75692))

(assert (= (and b!75692 c!11513) b!75697))

(assert (= (and b!75692 (not c!11513)) b!75693))

(assert (= (and b!75693 c!11515) b!75679))

(assert (= (and b!75693 (not c!11515)) b!75683))

(assert (= (or b!75679 b!75683) bm!6779))

(assert (= (or b!75697 bm!6779) bm!6777))

(assert (= (or b!75697 b!75679) bm!6780))

(assert (= (or b!75690 bm!6777) bm!6783))

(assert (= (or b!75690 bm!6780) bm!6781))

(assert (= (and d!17987 res!39885) b!75682))

(assert (= (and d!17987 c!11514) b!75695))

(assert (= (and d!17987 (not c!11514)) b!75694))

(assert (= (and d!17987 res!39883) b!75678))

(assert (= (and b!75678 res!39887) b!75681))

(assert (= (and b!75678 (not res!39888)) b!75687))

(assert (= (and b!75687 res!39890) b!75677))

(assert (= (and b!75678 res!39886) b!75696))

(assert (= (and b!75696 c!11517) b!75684))

(assert (= (and b!75696 (not c!11517)) b!75691))

(assert (= (and b!75684 res!39882) b!75688))

(assert (= (or b!75684 b!75691) bm!6782))

(assert (= (and b!75696 res!39889) b!75689))

(assert (= (and b!75689 c!11512) b!75686))

(assert (= (and b!75689 (not c!11512)) b!75685))

(assert (= (and b!75686 res!39884) b!75680))

(assert (= (or b!75686 b!75685) bm!6778))

(declare-fun b_lambda!3407 () Bool)

(assert (=> (not b_lambda!3407) (not b!75677)))

(assert (=> b!75677 t!5102))

(declare-fun b_and!4629 () Bool)

(assert (= b_and!4625 (and (=> t!5102 result!2725) b_and!4629)))

(assert (=> b!75677 t!5104))

(declare-fun b_and!4631 () Bool)

(assert (= b_and!4627 (and (=> t!5104 result!2727) b_and!4631)))

(assert (=> b!75687 m!74795))

(assert (=> b!75687 m!74795))

(declare-fun m!75243 () Bool)

(assert (=> b!75687 m!75243))

(declare-fun m!75245 () Bool)

(assert (=> b!75680 m!75245))

(assert (=> b!75682 m!74795))

(assert (=> b!75682 m!74795))

(assert (=> b!75682 m!74801))

(declare-fun m!75247 () Bool)

(assert (=> bm!6778 m!75247))

(assert (=> b!75677 m!74805))

(assert (=> b!75677 m!74795))

(declare-fun m!75249 () Bool)

(assert (=> b!75677 m!75249))

(assert (=> b!75677 m!74805))

(declare-fun m!75251 () Bool)

(assert (=> b!75677 m!75251))

(assert (=> b!75677 m!74795))

(declare-fun m!75253 () Bool)

(assert (=> b!75677 m!75253))

(assert (=> b!75677 m!75249))

(declare-fun m!75255 () Bool)

(assert (=> b!75690 m!75255))

(assert (=> b!75681 m!74795))

(assert (=> b!75681 m!74795))

(assert (=> b!75681 m!74801))

(declare-fun m!75257 () Bool)

(assert (=> b!75695 m!75257))

(declare-fun m!75259 () Bool)

(assert (=> b!75695 m!75259))

(declare-fun m!75261 () Bool)

(assert (=> b!75695 m!75261))

(declare-fun m!75263 () Bool)

(assert (=> b!75695 m!75263))

(declare-fun m!75265 () Bool)

(assert (=> b!75695 m!75265))

(declare-fun m!75267 () Bool)

(assert (=> b!75695 m!75267))

(declare-fun m!75269 () Bool)

(assert (=> b!75695 m!75269))

(assert (=> b!75695 m!74795))

(declare-fun m!75271 () Bool)

(assert (=> b!75695 m!75271))

(declare-fun m!75273 () Bool)

(assert (=> b!75695 m!75273))

(assert (=> b!75695 m!75265))

(declare-fun m!75275 () Bool)

(assert (=> b!75695 m!75275))

(declare-fun m!75277 () Bool)

(assert (=> b!75695 m!75277))

(declare-fun m!75279 () Bool)

(assert (=> b!75695 m!75279))

(declare-fun m!75281 () Bool)

(assert (=> b!75695 m!75281))

(assert (=> b!75695 m!75261))

(assert (=> b!75695 m!75279))

(declare-fun m!75283 () Bool)

(assert (=> b!75695 m!75283))

(assert (=> b!75695 m!75277))

(declare-fun m!75285 () Bool)

(assert (=> b!75695 m!75285))

(declare-fun m!75287 () Bool)

(assert (=> b!75695 m!75287))

(assert (=> d!17987 m!74787))

(assert (=> bm!6783 m!75259))

(declare-fun m!75289 () Bool)

(assert (=> bm!6781 m!75289))

(declare-fun m!75291 () Bool)

(assert (=> b!75688 m!75291))

(declare-fun m!75293 () Bool)

(assert (=> bm!6782 m!75293))

(assert (=> d!17815 d!17987))

(declare-fun b!75699 () Bool)

(declare-fun e!49444 () Option!139)

(declare-fun e!49445 () Option!139)

(assert (=> b!75699 (= e!49444 e!49445)))

(declare-fun c!11519 () Bool)

(assert (=> b!75699 (= c!11519 (and ((_ is Cons!1509) (toList!738 lt!34010)) (not (= (_1!1088 (h!2097 (toList!738 lt!34010))) (_1!1088 lt!33753)))))))

(declare-fun b!75700 () Bool)

(assert (=> b!75700 (= e!49445 (getValueByKey!133 (t!5095 (toList!738 lt!34010)) (_1!1088 lt!33753)))))

(declare-fun b!75698 () Bool)

(assert (=> b!75698 (= e!49444 (Some!138 (_2!1088 (h!2097 (toList!738 lt!34010)))))))

(declare-fun b!75701 () Bool)

(assert (=> b!75701 (= e!49445 None!137)))

(declare-fun d!17989 () Bool)

(declare-fun c!11518 () Bool)

(assert (=> d!17989 (= c!11518 (and ((_ is Cons!1509) (toList!738 lt!34010)) (= (_1!1088 (h!2097 (toList!738 lt!34010))) (_1!1088 lt!33753))))))

(assert (=> d!17989 (= (getValueByKey!133 (toList!738 lt!34010) (_1!1088 lt!33753)) e!49444)))

(assert (= (and d!17989 c!11518) b!75698))

(assert (= (and d!17989 (not c!11518)) b!75699))

(assert (= (and b!75699 c!11519) b!75700))

(assert (= (and b!75699 (not c!11519)) b!75701))

(declare-fun m!75295 () Bool)

(assert (=> b!75700 m!75295))

(assert (=> b!75368 d!17989))

(assert (=> b!75295 d!17833))

(declare-fun d!17991 () Bool)

(assert (=> d!17991 (= (get!1163 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) from!355) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!2548 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(assert (=> b!75376 d!17991))

(declare-fun e!49450 () Bool)

(declare-fun b!75702 () Bool)

(declare-fun lt!34287 () ListLongMap!1445)

(assert (=> b!75702 (= e!49450 (= (apply!76 lt!34287 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000)) (get!1162 (select (arr!1865 (ite c!11403 (_values!2217 newMap!16) lt!33943)) #b00000000000000000000000000000000) (dynLambda!337 (defaultEntry!2234 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!75702 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2104 (ite c!11403 (_values!2217 newMap!16) lt!33943))))))

(assert (=> b!75702 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))))))

(declare-fun bm!6784 () Bool)

(declare-fun call!6792 () ListLongMap!1445)

(declare-fun call!6787 () ListLongMap!1445)

(assert (=> bm!6784 (= call!6792 call!6787)))

(declare-fun bm!6785 () Bool)

(declare-fun call!6790 () Bool)

(assert (=> bm!6785 (= call!6790 (contains!732 lt!34287 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!6786 () Bool)

(declare-fun call!6789 () ListLongMap!1445)

(assert (=> bm!6786 (= call!6789 call!6792)))

(declare-fun b!75703 () Bool)

(declare-fun res!39895 () Bool)

(declare-fun e!49451 () Bool)

(assert (=> b!75703 (=> (not res!39895) (not e!49451))))

(declare-fun e!49452 () Bool)

(assert (=> b!75703 (= res!39895 e!49452)))

(declare-fun res!39897 () Bool)

(assert (=> b!75703 (=> res!39897 e!49452)))

(declare-fun e!49449 () Bool)

(assert (=> b!75703 (= res!39897 (not e!49449))))

(declare-fun res!39896 () Bool)

(assert (=> b!75703 (=> (not res!39896) (not e!49449))))

(assert (=> b!75703 (= res!39896 (bvslt #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))))))

(declare-fun b!75704 () Bool)

(declare-fun e!49457 () ListLongMap!1445)

(declare-fun call!6788 () ListLongMap!1445)

(assert (=> b!75704 (= e!49457 call!6788)))

(declare-fun b!75705 () Bool)

(declare-fun e!49456 () Bool)

(assert (=> b!75705 (= e!49456 (= (apply!76 lt!34287 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2134 newMap!16)))))

(declare-fun b!75706 () Bool)

(assert (=> b!75706 (= e!49449 (validKeyInArray!0 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!75707 () Bool)

(declare-fun e!49446 () Bool)

(assert (=> b!75707 (= e!49446 (validKeyInArray!0 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!75708 () Bool)

(assert (=> b!75708 (= e!49457 call!6789)))

(declare-fun b!75709 () Bool)

(declare-fun e!49447 () Bool)

(declare-fun e!49454 () Bool)

(assert (=> b!75709 (= e!49447 e!49454)))

(declare-fun res!39891 () Bool)

(declare-fun call!6791 () Bool)

(assert (=> b!75709 (= res!39891 call!6791)))

(assert (=> b!75709 (=> (not res!39891) (not e!49454))))

(declare-fun b!75710 () Bool)

(declare-fun e!49455 () Bool)

(assert (=> b!75710 (= e!49455 (not call!6790))))

(declare-fun b!75711 () Bool)

(assert (=> b!75711 (= e!49455 e!49456)))

(declare-fun res!39893 () Bool)

(assert (=> b!75711 (= res!39893 call!6790)))

(assert (=> b!75711 (=> (not res!39893) (not e!49456))))

(declare-fun b!75712 () Bool)

(assert (=> b!75712 (= e!49452 e!49450)))

(declare-fun res!39899 () Bool)

(assert (=> b!75712 (=> (not res!39899) (not e!49450))))

(assert (=> b!75712 (= res!39899 (contains!732 lt!34287 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!75712 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))))))

(declare-fun b!75713 () Bool)

(assert (=> b!75713 (= e!49454 (= (apply!76 lt!34287 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!11403 c!11397) lt!33745 (zeroValue!2134 newMap!16))))))

(declare-fun b!75714 () Bool)

(assert (=> b!75714 (= e!49451 e!49455)))

(declare-fun c!11520 () Bool)

(assert (=> b!75714 (= c!11520 (not (= (bvand (ite (and c!11403 c!11397) lt!33940 (extraKeys!2089 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!17993 () Bool)

(assert (=> d!17993 e!49451))

(declare-fun res!39892 () Bool)

(assert (=> d!17993 (=> (not res!39892) (not e!49451))))

(assert (=> d!17993 (= res!39892 (or (bvsge #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))))))))

(declare-fun lt!34291 () ListLongMap!1445)

(assert (=> d!17993 (= lt!34287 lt!34291)))

(declare-fun lt!34295 () Unit!2169)

(declare-fun e!49448 () Unit!2169)

(assert (=> d!17993 (= lt!34295 e!49448)))

(declare-fun c!11522 () Bool)

(assert (=> d!17993 (= c!11522 e!49446)))

(declare-fun res!39894 () Bool)

(assert (=> d!17993 (=> (not res!39894) (not e!49446))))

(assert (=> d!17993 (= res!39894 (bvslt #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))))))

(declare-fun e!49458 () ListLongMap!1445)

(assert (=> d!17993 (= lt!34291 e!49458)))

(declare-fun c!11524 () Bool)

(assert (=> d!17993 (= c!11524 (and (not (= (bvand (ite (and c!11403 c!11397) lt!33940 (extraKeys!2089 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite (and c!11403 c!11397) lt!33940 (extraKeys!2089 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!17993 (validMask!0 (mask!6211 newMap!16))))

(assert (=> d!17993 (= (getCurrentListMap!429 (_keys!3890 newMap!16) (ite c!11403 (_values!2217 newMap!16) lt!33943) (mask!6211 newMap!16) (ite (and c!11403 c!11397) lt!33940 (extraKeys!2089 newMap!16)) (ite (and c!11403 c!11397) lt!33745 (zeroValue!2134 newMap!16)) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)) lt!34287)))

(declare-fun b!75715 () Bool)

(declare-fun call!6793 () ListLongMap!1445)

(assert (=> b!75715 (= e!49458 (+!101 call!6793 (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 newMap!16))))))

(declare-fun bm!6787 () Bool)

(assert (=> bm!6787 (= call!6788 call!6793)))

(declare-fun c!11521 () Bool)

(declare-fun bm!6788 () Bool)

(assert (=> bm!6788 (= call!6793 (+!101 (ite c!11524 call!6787 (ite c!11521 call!6792 call!6789)) (ite (or c!11524 c!11521) (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!11403 c!11397) lt!33745 (zeroValue!2134 newMap!16))) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2134 newMap!16)))))))

(declare-fun bm!6789 () Bool)

(assert (=> bm!6789 (= call!6791 (contains!732 lt!34287 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!75716 () Bool)

(assert (=> b!75716 (= e!49447 (not call!6791))))

(declare-fun b!75717 () Bool)

(declare-fun e!49453 () ListLongMap!1445)

(assert (=> b!75717 (= e!49458 e!49453)))

(assert (=> b!75717 (= c!11521 (and (not (= (bvand (ite (and c!11403 c!11397) lt!33940 (extraKeys!2089 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite (and c!11403 c!11397) lt!33940 (extraKeys!2089 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun c!11523 () Bool)

(declare-fun b!75718 () Bool)

(assert (=> b!75718 (= c!11523 (and (not (= (bvand (ite (and c!11403 c!11397) lt!33940 (extraKeys!2089 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite (and c!11403 c!11397) lt!33940 (extraKeys!2089 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!75718 (= e!49453 e!49457)))

(declare-fun b!75719 () Bool)

(declare-fun Unit!2190 () Unit!2169)

(assert (=> b!75719 (= e!49448 Unit!2190)))

(declare-fun bm!6790 () Bool)

(assert (=> bm!6790 (= call!6787 (getCurrentListMapNoExtraKeys!65 (_keys!3890 newMap!16) (ite c!11403 (_values!2217 newMap!16) lt!33943) (mask!6211 newMap!16) (ite (and c!11403 c!11397) lt!33940 (extraKeys!2089 newMap!16)) (ite (and c!11403 c!11397) lt!33745 (zeroValue!2134 newMap!16)) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun b!75720 () Bool)

(declare-fun lt!34306 () Unit!2169)

(assert (=> b!75720 (= e!49448 lt!34306)))

(declare-fun lt!34290 () ListLongMap!1445)

(assert (=> b!75720 (= lt!34290 (getCurrentListMapNoExtraKeys!65 (_keys!3890 newMap!16) (ite c!11403 (_values!2217 newMap!16) lt!33943) (mask!6211 newMap!16) (ite (and c!11403 c!11397) lt!33940 (extraKeys!2089 newMap!16)) (ite (and c!11403 c!11397) lt!33745 (zeroValue!2134 newMap!16)) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun lt!34297 () (_ BitVec 64))

(assert (=> b!75720 (= lt!34297 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34301 () (_ BitVec 64))

(assert (=> b!75720 (= lt!34301 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!34298 () Unit!2169)

(assert (=> b!75720 (= lt!34298 (addStillContains!52 lt!34290 lt!34297 (ite (and c!11403 c!11397) lt!33745 (zeroValue!2134 newMap!16)) lt!34301))))

(assert (=> b!75720 (contains!732 (+!101 lt!34290 (tuple2!2157 lt!34297 (ite (and c!11403 c!11397) lt!33745 (zeroValue!2134 newMap!16)))) lt!34301)))

(declare-fun lt!34305 () Unit!2169)

(assert (=> b!75720 (= lt!34305 lt!34298)))

(declare-fun lt!34307 () ListLongMap!1445)

(assert (=> b!75720 (= lt!34307 (getCurrentListMapNoExtraKeys!65 (_keys!3890 newMap!16) (ite c!11403 (_values!2217 newMap!16) lt!33943) (mask!6211 newMap!16) (ite (and c!11403 c!11397) lt!33940 (extraKeys!2089 newMap!16)) (ite (and c!11403 c!11397) lt!33745 (zeroValue!2134 newMap!16)) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun lt!34304 () (_ BitVec 64))

(assert (=> b!75720 (= lt!34304 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34302 () (_ BitVec 64))

(assert (=> b!75720 (= lt!34302 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!34289 () Unit!2169)

(assert (=> b!75720 (= lt!34289 (addApplyDifferent!52 lt!34307 lt!34304 (minValue!2134 newMap!16) lt!34302))))

(assert (=> b!75720 (= (apply!76 (+!101 lt!34307 (tuple2!2157 lt!34304 (minValue!2134 newMap!16))) lt!34302) (apply!76 lt!34307 lt!34302))))

(declare-fun lt!34308 () Unit!2169)

(assert (=> b!75720 (= lt!34308 lt!34289)))

(declare-fun lt!34294 () ListLongMap!1445)

(assert (=> b!75720 (= lt!34294 (getCurrentListMapNoExtraKeys!65 (_keys!3890 newMap!16) (ite c!11403 (_values!2217 newMap!16) lt!33943) (mask!6211 newMap!16) (ite (and c!11403 c!11397) lt!33940 (extraKeys!2089 newMap!16)) (ite (and c!11403 c!11397) lt!33745 (zeroValue!2134 newMap!16)) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun lt!34300 () (_ BitVec 64))

(assert (=> b!75720 (= lt!34300 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34293 () (_ BitVec 64))

(assert (=> b!75720 (= lt!34293 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!34288 () Unit!2169)

(assert (=> b!75720 (= lt!34288 (addApplyDifferent!52 lt!34294 lt!34300 (ite (and c!11403 c!11397) lt!33745 (zeroValue!2134 newMap!16)) lt!34293))))

(assert (=> b!75720 (= (apply!76 (+!101 lt!34294 (tuple2!2157 lt!34300 (ite (and c!11403 c!11397) lt!33745 (zeroValue!2134 newMap!16)))) lt!34293) (apply!76 lt!34294 lt!34293))))

(declare-fun lt!34296 () Unit!2169)

(assert (=> b!75720 (= lt!34296 lt!34288)))

(declare-fun lt!34303 () ListLongMap!1445)

(assert (=> b!75720 (= lt!34303 (getCurrentListMapNoExtraKeys!65 (_keys!3890 newMap!16) (ite c!11403 (_values!2217 newMap!16) lt!33943) (mask!6211 newMap!16) (ite (and c!11403 c!11397) lt!33940 (extraKeys!2089 newMap!16)) (ite (and c!11403 c!11397) lt!33745 (zeroValue!2134 newMap!16)) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)))))

(declare-fun lt!34299 () (_ BitVec 64))

(assert (=> b!75720 (= lt!34299 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!34292 () (_ BitVec 64))

(assert (=> b!75720 (= lt!34292 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!75720 (= lt!34306 (addApplyDifferent!52 lt!34303 lt!34299 (minValue!2134 newMap!16) lt!34292))))

(assert (=> b!75720 (= (apply!76 (+!101 lt!34303 (tuple2!2157 lt!34299 (minValue!2134 newMap!16))) lt!34292) (apply!76 lt!34303 lt!34292))))

(declare-fun b!75721 () Bool)

(declare-fun res!39898 () Bool)

(assert (=> b!75721 (=> (not res!39898) (not e!49451))))

(assert (=> b!75721 (= res!39898 e!49447)))

(declare-fun c!11525 () Bool)

(assert (=> b!75721 (= c!11525 (not (= (bvand (ite (and c!11403 c!11397) lt!33940 (extraKeys!2089 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!75722 () Bool)

(assert (=> b!75722 (= e!49453 call!6788)))

(assert (= (and d!17993 c!11524) b!75715))

(assert (= (and d!17993 (not c!11524)) b!75717))

(assert (= (and b!75717 c!11521) b!75722))

(assert (= (and b!75717 (not c!11521)) b!75718))

(assert (= (and b!75718 c!11523) b!75704))

(assert (= (and b!75718 (not c!11523)) b!75708))

(assert (= (or b!75704 b!75708) bm!6786))

(assert (= (or b!75722 bm!6786) bm!6784))

(assert (= (or b!75722 b!75704) bm!6787))

(assert (= (or b!75715 bm!6784) bm!6790))

(assert (= (or b!75715 bm!6787) bm!6788))

(assert (= (and d!17993 res!39894) b!75707))

(assert (= (and d!17993 c!11522) b!75720))

(assert (= (and d!17993 (not c!11522)) b!75719))

(assert (= (and d!17993 res!39892) b!75703))

(assert (= (and b!75703 res!39896) b!75706))

(assert (= (and b!75703 (not res!39897)) b!75712))

(assert (= (and b!75712 res!39899) b!75702))

(assert (= (and b!75703 res!39895) b!75721))

(assert (= (and b!75721 c!11525) b!75709))

(assert (= (and b!75721 (not c!11525)) b!75716))

(assert (= (and b!75709 res!39891) b!75713))

(assert (= (or b!75709 b!75716) bm!6789))

(assert (= (and b!75721 res!39898) b!75714))

(assert (= (and b!75714 c!11520) b!75711))

(assert (= (and b!75714 (not c!11520)) b!75710))

(assert (= (and b!75711 res!39893) b!75705))

(assert (= (or b!75711 b!75710) bm!6785))

(declare-fun b_lambda!3409 () Bool)

(assert (=> (not b_lambda!3409) (not b!75702)))

(assert (=> b!75702 t!5102))

(declare-fun b_and!4633 () Bool)

(assert (= b_and!4629 (and (=> t!5102 result!2725) b_and!4633)))

(assert (=> b!75702 t!5104))

(declare-fun b_and!4635 () Bool)

(assert (= b_and!4631 (and (=> t!5104 result!2727) b_and!4635)))

(assert (=> b!75712 m!74795))

(assert (=> b!75712 m!74795))

(declare-fun m!75297 () Bool)

(assert (=> b!75712 m!75297))

(declare-fun m!75299 () Bool)

(assert (=> b!75705 m!75299))

(assert (=> b!75707 m!74795))

(assert (=> b!75707 m!74795))

(assert (=> b!75707 m!74801))

(declare-fun m!75301 () Bool)

(assert (=> bm!6785 m!75301))

(assert (=> b!75702 m!74805))

(assert (=> b!75702 m!74795))

(declare-fun m!75303 () Bool)

(assert (=> b!75702 m!75303))

(assert (=> b!75702 m!74805))

(declare-fun m!75305 () Bool)

(assert (=> b!75702 m!75305))

(assert (=> b!75702 m!74795))

(declare-fun m!75307 () Bool)

(assert (=> b!75702 m!75307))

(assert (=> b!75702 m!75303))

(declare-fun m!75309 () Bool)

(assert (=> b!75715 m!75309))

(assert (=> b!75706 m!74795))

(assert (=> b!75706 m!74795))

(assert (=> b!75706 m!74801))

(declare-fun m!75311 () Bool)

(assert (=> b!75720 m!75311))

(declare-fun m!75313 () Bool)

(assert (=> b!75720 m!75313))

(declare-fun m!75315 () Bool)

(assert (=> b!75720 m!75315))

(declare-fun m!75317 () Bool)

(assert (=> b!75720 m!75317))

(declare-fun m!75319 () Bool)

(assert (=> b!75720 m!75319))

(declare-fun m!75321 () Bool)

(assert (=> b!75720 m!75321))

(declare-fun m!75323 () Bool)

(assert (=> b!75720 m!75323))

(assert (=> b!75720 m!74795))

(declare-fun m!75325 () Bool)

(assert (=> b!75720 m!75325))

(declare-fun m!75327 () Bool)

(assert (=> b!75720 m!75327))

(assert (=> b!75720 m!75319))

(declare-fun m!75329 () Bool)

(assert (=> b!75720 m!75329))

(declare-fun m!75331 () Bool)

(assert (=> b!75720 m!75331))

(declare-fun m!75333 () Bool)

(assert (=> b!75720 m!75333))

(declare-fun m!75335 () Bool)

(assert (=> b!75720 m!75335))

(assert (=> b!75720 m!75315))

(assert (=> b!75720 m!75333))

(declare-fun m!75337 () Bool)

(assert (=> b!75720 m!75337))

(assert (=> b!75720 m!75331))

(declare-fun m!75339 () Bool)

(assert (=> b!75720 m!75339))

(declare-fun m!75341 () Bool)

(assert (=> b!75720 m!75341))

(assert (=> d!17993 m!74787))

(assert (=> bm!6790 m!75313))

(declare-fun m!75343 () Bool)

(assert (=> bm!6788 m!75343))

(declare-fun m!75345 () Bool)

(assert (=> b!75713 m!75345))

(declare-fun m!75347 () Bool)

(assert (=> bm!6789 m!75347))

(assert (=> bm!6704 d!17993))

(declare-fun b!75724 () Bool)

(declare-fun e!49459 () Option!139)

(declare-fun e!49460 () Option!139)

(assert (=> b!75724 (= e!49459 e!49460)))

(declare-fun c!11527 () Bool)

(assert (=> b!75724 (= c!11527 (and ((_ is Cons!1509) (toList!738 lt!34014)) (not (= (_1!1088 (h!2097 (toList!738 lt!34014))) (_1!1088 lt!33749)))))))

(declare-fun b!75725 () Bool)

(assert (=> b!75725 (= e!49460 (getValueByKey!133 (t!5095 (toList!738 lt!34014)) (_1!1088 lt!33749)))))

(declare-fun b!75723 () Bool)

(assert (=> b!75723 (= e!49459 (Some!138 (_2!1088 (h!2097 (toList!738 lt!34014)))))))

(declare-fun b!75726 () Bool)

(assert (=> b!75726 (= e!49460 None!137)))

(declare-fun d!17995 () Bool)

(declare-fun c!11526 () Bool)

(assert (=> d!17995 (= c!11526 (and ((_ is Cons!1509) (toList!738 lt!34014)) (= (_1!1088 (h!2097 (toList!738 lt!34014))) (_1!1088 lt!33749))))))

(assert (=> d!17995 (= (getValueByKey!133 (toList!738 lt!34014) (_1!1088 lt!33749)) e!49459)))

(assert (= (and d!17995 c!11526) b!75723))

(assert (= (and d!17995 (not c!11526)) b!75724))

(assert (= (and b!75724 c!11527) b!75725))

(assert (= (and b!75724 (not c!11527)) b!75726))

(declare-fun m!75349 () Bool)

(assert (=> b!75725 m!75349))

(assert (=> b!75370 d!17995))

(declare-fun bm!6791 () Bool)

(declare-fun call!6794 () Bool)

(assert (=> bm!6791 (= call!6794 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3890 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992)))))))

(declare-fun b!75727 () Bool)

(declare-fun e!49463 () Bool)

(assert (=> b!75727 (= e!49463 call!6794)))

(declare-fun d!17997 () Bool)

(declare-fun res!39901 () Bool)

(declare-fun e!49461 () Bool)

(assert (=> d!17997 (=> res!39901 e!49461)))

(assert (=> d!17997 (= res!39901 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))

(assert (=> d!17997 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3890 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992)))) e!49461)))

(declare-fun b!75728 () Bool)

(declare-fun e!49462 () Bool)

(assert (=> b!75728 (= e!49462 call!6794)))

(declare-fun b!75729 () Bool)

(assert (=> b!75729 (= e!49461 e!49463)))

(declare-fun c!11528 () Bool)

(assert (=> b!75729 (= c!11528 (validKeyInArray!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!75730 () Bool)

(assert (=> b!75730 (= e!49463 e!49462)))

(declare-fun lt!34311 () (_ BitVec 64))

(assert (=> b!75730 (= lt!34311 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!34310 () Unit!2169)

(assert (=> b!75730 (= lt!34310 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) lt!34311 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!75730 (arrayContainsKey!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) lt!34311 #b00000000000000000000000000000000)))

(declare-fun lt!34309 () Unit!2169)

(assert (=> b!75730 (= lt!34309 lt!34310)))

(declare-fun res!39900 () Bool)

(assert (=> b!75730 (= res!39900 (= (seekEntryOrOpen!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3890 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992)))) (Found!247 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!75730 (=> (not res!39900) (not e!49462))))

(assert (= (and d!17997 (not res!39901)) b!75729))

(assert (= (and b!75729 c!11528) b!75730))

(assert (= (and b!75729 (not c!11528)) b!75727))

(assert (= (and b!75730 res!39900) b!75728))

(assert (= (or b!75728 b!75727) bm!6791))

(declare-fun m!75351 () Bool)

(assert (=> bm!6791 m!75351))

(declare-fun m!75353 () Bool)

(assert (=> b!75729 m!75353))

(assert (=> b!75729 m!75353))

(declare-fun m!75355 () Bool)

(assert (=> b!75729 m!75355))

(assert (=> b!75730 m!75353))

(declare-fun m!75357 () Bool)

(assert (=> b!75730 m!75357))

(declare-fun m!75359 () Bool)

(assert (=> b!75730 m!75359))

(assert (=> b!75730 m!75353))

(declare-fun m!75361 () Bool)

(assert (=> b!75730 m!75361))

(assert (=> bm!6733 d!17997))

(declare-fun d!17999 () Bool)

(assert (=> d!17999 (= (apply!76 lt!33986 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1165 (getValueByKey!133 (toList!738 lt!33986) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!3243 () Bool)

(assert (= bs!3243 d!17999))

(assert (=> bs!3243 m!74499))

(assert (=> bs!3243 m!75017))

(assert (=> bs!3243 m!75017))

(declare-fun m!75363 () Bool)

(assert (=> bs!3243 m!75363))

(assert (=> b!75349 d!17999))

(assert (=> b!75349 d!17919))

(declare-fun d!18001 () Bool)

(declare-fun e!49464 () Bool)

(assert (=> d!18001 e!49464))

(declare-fun res!39902 () Bool)

(assert (=> d!18001 (=> res!39902 e!49464)))

(declare-fun lt!34312 () Bool)

(assert (=> d!18001 (= res!39902 (not lt!34312))))

(declare-fun lt!34313 () Bool)

(assert (=> d!18001 (= lt!34312 lt!34313)))

(declare-fun lt!34314 () Unit!2169)

(declare-fun e!49465 () Unit!2169)

(assert (=> d!18001 (= lt!34314 e!49465)))

(declare-fun c!11529 () Bool)

(assert (=> d!18001 (= c!11529 lt!34313)))

(assert (=> d!18001 (= lt!34313 (containsKey!137 (toList!738 lt!33835) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!18001 (= (contains!732 lt!33835 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!34312)))

(declare-fun b!75731 () Bool)

(declare-fun lt!34315 () Unit!2169)

(assert (=> b!75731 (= e!49465 lt!34315)))

(assert (=> b!75731 (= lt!34315 (lemmaContainsKeyImpliesGetValueByKeyDefined!86 (toList!738 lt!33835) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!75731 (isDefined!87 (getValueByKey!133 (toList!738 lt!33835) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!75732 () Bool)

(declare-fun Unit!2191 () Unit!2169)

(assert (=> b!75732 (= e!49465 Unit!2191)))

(declare-fun b!75733 () Bool)

(assert (=> b!75733 (= e!49464 (isDefined!87 (getValueByKey!133 (toList!738 lt!33835) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!18001 c!11529) b!75731))

(assert (= (and d!18001 (not c!11529)) b!75732))

(assert (= (and d!18001 (not res!39902)) b!75733))

(assert (=> d!18001 m!74499))

(declare-fun m!75365 () Bool)

(assert (=> d!18001 m!75365))

(assert (=> b!75731 m!74499))

(declare-fun m!75367 () Bool)

(assert (=> b!75731 m!75367))

(assert (=> b!75731 m!74499))

(assert (=> b!75731 m!75029))

(assert (=> b!75731 m!75029))

(declare-fun m!75369 () Bool)

(assert (=> b!75731 m!75369))

(assert (=> b!75733 m!74499))

(assert (=> b!75733 m!75029))

(assert (=> b!75733 m!75029))

(assert (=> b!75733 m!75369))

(assert (=> b!75130 d!18001))

(declare-fun d!18003 () Bool)

(assert (=> d!18003 (= (map!1163 (_2!1087 lt!33935)) (getCurrentListMap!429 (_keys!3890 (_2!1087 lt!33935)) (_values!2217 (_2!1087 lt!33935)) (mask!6211 (_2!1087 lt!33935)) (extraKeys!2089 (_2!1087 lt!33935)) (zeroValue!2134 (_2!1087 lt!33935)) (minValue!2134 (_2!1087 lt!33935)) #b00000000000000000000000000000000 (defaultEntry!2234 (_2!1087 lt!33935))))))

(declare-fun bs!3244 () Bool)

(assert (= bs!3244 d!18003))

(declare-fun m!75371 () Bool)

(assert (=> bs!3244 m!75371))

(assert (=> bm!6709 d!18003))

(declare-fun d!18005 () Bool)

(declare-fun res!39907 () Bool)

(declare-fun e!49470 () Bool)

(assert (=> d!18005 (=> res!39907 e!49470)))

(assert (=> d!18005 (= res!39907 (and ((_ is Cons!1509) (toList!738 lt!33747)) (= (_1!1088 (h!2097 (toList!738 lt!33747))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355))))))

(assert (=> d!18005 (= (containsKey!137 (toList!738 lt!33747) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)) e!49470)))

(declare-fun b!75738 () Bool)

(declare-fun e!49471 () Bool)

(assert (=> b!75738 (= e!49470 e!49471)))

(declare-fun res!39908 () Bool)

(assert (=> b!75738 (=> (not res!39908) (not e!49471))))

(assert (=> b!75738 (= res!39908 (and (or (not ((_ is Cons!1509) (toList!738 lt!33747))) (bvsle (_1!1088 (h!2097 (toList!738 lt!33747))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355))) ((_ is Cons!1509) (toList!738 lt!33747)) (bvslt (_1!1088 (h!2097 (toList!738 lt!33747))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355))))))

(declare-fun b!75739 () Bool)

(assert (=> b!75739 (= e!49471 (containsKey!137 (t!5095 (toList!738 lt!33747)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(assert (= (and d!18005 (not res!39907)) b!75738))

(assert (= (and b!75738 res!39908) b!75739))

(assert (=> b!75739 m!74389))

(declare-fun m!75373 () Bool)

(assert (=> b!75739 m!75373))

(assert (=> d!17823 d!18005))

(declare-fun d!18007 () Bool)

(declare-fun e!49472 () Bool)

(assert (=> d!18007 e!49472))

(declare-fun res!39909 () Bool)

(assert (=> d!18007 (=> (not res!39909) (not e!49472))))

(declare-fun lt!34318 () ListLongMap!1445)

(assert (=> d!18007 (= res!39909 (contains!732 lt!34318 (_1!1088 (ite c!11403 (ite c!11397 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 lt!33745) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 lt!33745)) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)))))))

(declare-fun lt!34319 () List!1513)

(assert (=> d!18007 (= lt!34318 (ListLongMap!1446 lt!34319))))

(declare-fun lt!34317 () Unit!2169)

(declare-fun lt!34316 () Unit!2169)

(assert (=> d!18007 (= lt!34317 lt!34316)))

(assert (=> d!18007 (= (getValueByKey!133 lt!34319 (_1!1088 (ite c!11403 (ite c!11397 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 lt!33745) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 lt!33745)) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)))) (Some!138 (_2!1088 (ite c!11403 (ite c!11397 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 lt!33745) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 lt!33745)) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)))))))

(assert (=> d!18007 (= lt!34316 (lemmaContainsTupThenGetReturnValue!52 lt!34319 (_1!1088 (ite c!11403 (ite c!11397 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 lt!33745) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 lt!33745)) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))) (_2!1088 (ite c!11403 (ite c!11397 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 lt!33745) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 lt!33745)) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)))))))

(assert (=> d!18007 (= lt!34319 (insertStrictlySorted!54 (toList!738 e!49181) (_1!1088 (ite c!11403 (ite c!11397 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 lt!33745) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 lt!33745)) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))) (_2!1088 (ite c!11403 (ite c!11397 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 lt!33745) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 lt!33745)) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)))))))

(assert (=> d!18007 (= (+!101 e!49181 (ite c!11403 (ite c!11397 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 lt!33745) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 lt!33745)) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))) lt!34318)))

(declare-fun b!75740 () Bool)

(declare-fun res!39910 () Bool)

(assert (=> b!75740 (=> (not res!39910) (not e!49472))))

(assert (=> b!75740 (= res!39910 (= (getValueByKey!133 (toList!738 lt!34318) (_1!1088 (ite c!11403 (ite c!11397 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 lt!33745) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 lt!33745)) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)))) (Some!138 (_2!1088 (ite c!11403 (ite c!11397 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 lt!33745) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 lt!33745)) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))))))))

(declare-fun b!75741 () Bool)

(assert (=> b!75741 (= e!49472 (contains!734 (toList!738 lt!34318) (ite c!11403 (ite c!11397 (tuple2!2157 #b0000000000000000000000000000000000000000000000000000000000000000 lt!33745) (tuple2!2157 #b1000000000000000000000000000000000000000000000000000000000000000 lt!33745)) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745))))))

(assert (= (and d!18007 res!39909) b!75740))

(assert (= (and b!75740 res!39910) b!75741))

(declare-fun m!75375 () Bool)

(assert (=> d!18007 m!75375))

(declare-fun m!75377 () Bool)

(assert (=> d!18007 m!75377))

(declare-fun m!75379 () Bool)

(assert (=> d!18007 m!75379))

(declare-fun m!75381 () Bool)

(assert (=> d!18007 m!75381))

(declare-fun m!75383 () Bool)

(assert (=> b!75740 m!75383))

(declare-fun m!75385 () Bool)

(assert (=> b!75741 m!75385))

(assert (=> bm!6710 d!18007))

(declare-fun d!18009 () Bool)

(assert (=> d!18009 (arrayContainsKey!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) lt!33967 #b00000000000000000000000000000000)))

(declare-fun lt!34322 () Unit!2169)

(declare-fun choose!13 (array!3908 (_ BitVec 64) (_ BitVec 32)) Unit!2169)

(assert (=> d!18009 (= lt!34322 (choose!13 (_keys!3890 (v!2549 (underlying!267 thiss!992))) lt!33967 #b00000000000000000000000000000000))))

(assert (=> d!18009 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!18009 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) lt!33967 #b00000000000000000000000000000000) lt!34322)))

(declare-fun bs!3245 () Bool)

(assert (= bs!3245 d!18009))

(assert (=> bs!3245 m!74645))

(declare-fun m!75387 () Bool)

(assert (=> bs!3245 m!75387))

(assert (=> b!75323 d!18009))

(declare-fun d!18011 () Bool)

(declare-fun res!39911 () Bool)

(declare-fun e!49473 () Bool)

(assert (=> d!18011 (=> res!39911 e!49473)))

(assert (=> d!18011 (= res!39911 (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) #b00000000000000000000000000000000) lt!33967))))

(assert (=> d!18011 (= (arrayContainsKey!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) lt!33967 #b00000000000000000000000000000000) e!49473)))

(declare-fun b!75742 () Bool)

(declare-fun e!49474 () Bool)

(assert (=> b!75742 (= e!49473 e!49474)))

(declare-fun res!39912 () Bool)

(assert (=> b!75742 (=> (not res!39912) (not e!49474))))

(assert (=> b!75742 (= res!39912 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))

(declare-fun b!75743 () Bool)

(assert (=> b!75743 (= e!49474 (arrayContainsKey!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) lt!33967 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!18011 (not res!39911)) b!75742))

(assert (= (and b!75742 res!39912) b!75743))

(assert (=> d!18011 m!74639))

(declare-fun m!75389 () Bool)

(assert (=> b!75743 m!75389))

(assert (=> b!75323 d!18011))

(declare-fun b!75744 () Bool)

(declare-fun e!49476 () SeekEntryResult!247)

(declare-fun e!49475 () SeekEntryResult!247)

(assert (=> b!75744 (= e!49476 e!49475)))

(declare-fun lt!34324 () (_ BitVec 64))

(declare-fun lt!34325 () SeekEntryResult!247)

(assert (=> b!75744 (= lt!34324 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (index!3122 lt!34325)))))

(declare-fun c!11531 () Bool)

(assert (=> b!75744 (= c!11531 (= lt!34324 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!75745 () Bool)

(assert (=> b!75745 (= e!49476 Undefined!247)))

(declare-fun b!75746 () Bool)

(assert (=> b!75746 (= e!49475 (Found!247 (index!3122 lt!34325)))))

(declare-fun b!75747 () Bool)

(declare-fun e!49477 () SeekEntryResult!247)

(assert (=> b!75747 (= e!49477 (MissingZero!247 (index!3122 lt!34325)))))

(declare-fun b!75749 () Bool)

(assert (=> b!75749 (= e!49477 (seekKeyOrZeroReturnVacant!0 (x!11307 lt!34325) (index!3122 lt!34325) (index!3122 lt!34325) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) #b00000000000000000000000000000000) (_keys!3890 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992)))))))

(declare-fun b!75748 () Bool)

(declare-fun c!11530 () Bool)

(assert (=> b!75748 (= c!11530 (= lt!34324 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!75748 (= e!49475 e!49477)))

(declare-fun d!18013 () Bool)

(declare-fun lt!34323 () SeekEntryResult!247)

(assert (=> d!18013 (and (or ((_ is Undefined!247) lt!34323) (not ((_ is Found!247) lt!34323)) (and (bvsge (index!3121 lt!34323) #b00000000000000000000000000000000) (bvslt (index!3121 lt!34323) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))) (or ((_ is Undefined!247) lt!34323) ((_ is Found!247) lt!34323) (not ((_ is MissingZero!247) lt!34323)) (and (bvsge (index!3120 lt!34323) #b00000000000000000000000000000000) (bvslt (index!3120 lt!34323) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))) (or ((_ is Undefined!247) lt!34323) ((_ is Found!247) lt!34323) ((_ is MissingZero!247) lt!34323) (not ((_ is MissingVacant!247) lt!34323)) (and (bvsge (index!3123 lt!34323) #b00000000000000000000000000000000) (bvslt (index!3123 lt!34323) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))) (or ((_ is Undefined!247) lt!34323) (ite ((_ is Found!247) lt!34323) (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (index!3121 lt!34323)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!247) lt!34323) (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (index!3120 lt!34323)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!247) lt!34323) (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (index!3123 lt!34323)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!18013 (= lt!34323 e!49476)))

(declare-fun c!11532 () Bool)

(assert (=> d!18013 (= c!11532 (and ((_ is Intermediate!247) lt!34325) (undefined!1059 lt!34325)))))

(assert (=> d!18013 (= lt!34325 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) #b00000000000000000000000000000000) (mask!6211 (v!2549 (underlying!267 thiss!992)))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) #b00000000000000000000000000000000) (_keys!3890 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992)))))))

(assert (=> d!18013 (validMask!0 (mask!6211 (v!2549 (underlying!267 thiss!992))))))

(assert (=> d!18013 (= (seekEntryOrOpen!0 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) #b00000000000000000000000000000000) (_keys!3890 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992)))) lt!34323)))

(assert (= (and d!18013 c!11532) b!75745))

(assert (= (and d!18013 (not c!11532)) b!75744))

(assert (= (and b!75744 c!11531) b!75746))

(assert (= (and b!75744 (not c!11531)) b!75748))

(assert (= (and b!75748 c!11530) b!75747))

(assert (= (and b!75748 (not c!11530)) b!75749))

(declare-fun m!75391 () Bool)

(assert (=> b!75744 m!75391))

(assert (=> b!75749 m!74639))

(declare-fun m!75393 () Bool)

(assert (=> b!75749 m!75393))

(declare-fun m!75395 () Bool)

(assert (=> d!18013 m!75395))

(declare-fun m!75397 () Bool)

(assert (=> d!18013 m!75397))

(assert (=> d!18013 m!74639))

(declare-fun m!75399 () Bool)

(assert (=> d!18013 m!75399))

(declare-fun m!75401 () Bool)

(assert (=> d!18013 m!75401))

(declare-fun m!75403 () Bool)

(assert (=> d!18013 m!75403))

(assert (=> d!18013 m!74639))

(assert (=> d!18013 m!75397))

(assert (=> d!18013 m!74401))

(assert (=> b!75323 d!18013))

(declare-fun d!18015 () Bool)

(declare-fun e!49478 () Bool)

(assert (=> d!18015 e!49478))

(declare-fun res!39913 () Bool)

(assert (=> d!18015 (=> (not res!39913) (not e!49478))))

(declare-fun lt!34328 () ListLongMap!1445)

(assert (=> d!18015 (= res!39913 (contains!732 lt!34328 (_1!1088 (tuple2!2157 lt!33989 lt!33985))))))

(declare-fun lt!34329 () List!1513)

(assert (=> d!18015 (= lt!34328 (ListLongMap!1446 lt!34329))))

(declare-fun lt!34327 () Unit!2169)

(declare-fun lt!34326 () Unit!2169)

(assert (=> d!18015 (= lt!34327 lt!34326)))

(assert (=> d!18015 (= (getValueByKey!133 lt!34329 (_1!1088 (tuple2!2157 lt!33989 lt!33985))) (Some!138 (_2!1088 (tuple2!2157 lt!33989 lt!33985))))))

(assert (=> d!18015 (= lt!34326 (lemmaContainsTupThenGetReturnValue!52 lt!34329 (_1!1088 (tuple2!2157 lt!33989 lt!33985)) (_2!1088 (tuple2!2157 lt!33989 lt!33985))))))

(assert (=> d!18015 (= lt!34329 (insertStrictlySorted!54 (toList!738 lt!33987) (_1!1088 (tuple2!2157 lt!33989 lt!33985)) (_2!1088 (tuple2!2157 lt!33989 lt!33985))))))

(assert (=> d!18015 (= (+!101 lt!33987 (tuple2!2157 lt!33989 lt!33985)) lt!34328)))

(declare-fun b!75750 () Bool)

(declare-fun res!39914 () Bool)

(assert (=> b!75750 (=> (not res!39914) (not e!49478))))

(assert (=> b!75750 (= res!39914 (= (getValueByKey!133 (toList!738 lt!34328) (_1!1088 (tuple2!2157 lt!33989 lt!33985))) (Some!138 (_2!1088 (tuple2!2157 lt!33989 lt!33985)))))))

(declare-fun b!75751 () Bool)

(assert (=> b!75751 (= e!49478 (contains!734 (toList!738 lt!34328) (tuple2!2157 lt!33989 lt!33985)))))

(assert (= (and d!18015 res!39913) b!75750))

(assert (= (and b!75750 res!39914) b!75751))

(declare-fun m!75405 () Bool)

(assert (=> d!18015 m!75405))

(declare-fun m!75407 () Bool)

(assert (=> d!18015 m!75407))

(declare-fun m!75409 () Bool)

(assert (=> d!18015 m!75409))

(declare-fun m!75411 () Bool)

(assert (=> d!18015 m!75411))

(declare-fun m!75413 () Bool)

(assert (=> b!75750 m!75413))

(declare-fun m!75415 () Bool)

(assert (=> b!75751 m!75415))

(assert (=> b!75353 d!18015))

(declare-fun d!18017 () Bool)

(declare-fun e!49479 () Bool)

(assert (=> d!18017 e!49479))

(declare-fun res!39915 () Bool)

(assert (=> d!18017 (=> res!39915 e!49479)))

(declare-fun lt!34330 () Bool)

(assert (=> d!18017 (= res!39915 (not lt!34330))))

(declare-fun lt!34331 () Bool)

(assert (=> d!18017 (= lt!34330 lt!34331)))

(declare-fun lt!34332 () Unit!2169)

(declare-fun e!49480 () Unit!2169)

(assert (=> d!18017 (= lt!34332 e!49480)))

(declare-fun c!11533 () Bool)

(assert (=> d!18017 (= c!11533 lt!34331)))

(assert (=> d!18017 (= lt!34331 (containsKey!137 (toList!738 (+!101 lt!33987 (tuple2!2157 lt!33989 lt!33985))) lt!33991))))

(assert (=> d!18017 (= (contains!732 (+!101 lt!33987 (tuple2!2157 lt!33989 lt!33985)) lt!33991) lt!34330)))

(declare-fun b!75752 () Bool)

(declare-fun lt!34333 () Unit!2169)

(assert (=> b!75752 (= e!49480 lt!34333)))

(assert (=> b!75752 (= lt!34333 (lemmaContainsKeyImpliesGetValueByKeyDefined!86 (toList!738 (+!101 lt!33987 (tuple2!2157 lt!33989 lt!33985))) lt!33991))))

(assert (=> b!75752 (isDefined!87 (getValueByKey!133 (toList!738 (+!101 lt!33987 (tuple2!2157 lt!33989 lt!33985))) lt!33991))))

(declare-fun b!75753 () Bool)

(declare-fun Unit!2192 () Unit!2169)

(assert (=> b!75753 (= e!49480 Unit!2192)))

(declare-fun b!75754 () Bool)

(assert (=> b!75754 (= e!49479 (isDefined!87 (getValueByKey!133 (toList!738 (+!101 lt!33987 (tuple2!2157 lt!33989 lt!33985))) lt!33991)))))

(assert (= (and d!18017 c!11533) b!75752))

(assert (= (and d!18017 (not c!11533)) b!75753))

(assert (= (and d!18017 (not res!39915)) b!75754))

(declare-fun m!75417 () Bool)

(assert (=> d!18017 m!75417))

(declare-fun m!75419 () Bool)

(assert (=> b!75752 m!75419))

(declare-fun m!75421 () Bool)

(assert (=> b!75752 m!75421))

(assert (=> b!75752 m!75421))

(declare-fun m!75423 () Bool)

(assert (=> b!75752 m!75423))

(assert (=> b!75754 m!75421))

(assert (=> b!75754 m!75421))

(assert (=> b!75754 m!75423))

(assert (=> b!75353 d!18017))

(declare-fun d!18019 () Bool)

(assert (=> d!18019 (not (contains!732 (+!101 lt!33987 (tuple2!2157 lt!33989 lt!33985)) lt!33991))))

(declare-fun lt!34336 () Unit!2169)

(declare-fun choose!443 (ListLongMap!1445 (_ BitVec 64) V!2955 (_ BitVec 64)) Unit!2169)

(assert (=> d!18019 (= lt!34336 (choose!443 lt!33987 lt!33989 lt!33985 lt!33991))))

(declare-fun e!49483 () Bool)

(assert (=> d!18019 e!49483))

(declare-fun res!39918 () Bool)

(assert (=> d!18019 (=> (not res!39918) (not e!49483))))

(assert (=> d!18019 (= res!39918 (not (contains!732 lt!33987 lt!33991)))))

(assert (=> d!18019 (= (addStillNotContains!27 lt!33987 lt!33989 lt!33985 lt!33991) lt!34336)))

(declare-fun b!75758 () Bool)

(assert (=> b!75758 (= e!49483 (not (= lt!33989 lt!33991)))))

(assert (= (and d!18019 res!39918) b!75758))

(assert (=> d!18019 m!74669))

(assert (=> d!18019 m!74669))

(assert (=> d!18019 m!74671))

(declare-fun m!75425 () Bool)

(assert (=> d!18019 m!75425))

(declare-fun m!75427 () Bool)

(assert (=> d!18019 m!75427))

(assert (=> b!75353 d!18019))

(assert (=> b!75353 d!17919))

(declare-fun d!18021 () Bool)

(declare-fun e!49484 () Bool)

(assert (=> d!18021 e!49484))

(declare-fun res!39919 () Bool)

(assert (=> d!18021 (=> (not res!39919) (not e!49484))))

(declare-fun lt!34339 () ListLongMap!1445)

(assert (=> d!18021 (= res!39919 (contains!732 lt!34339 (_1!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1162 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!34340 () List!1513)

(assert (=> d!18021 (= lt!34339 (ListLongMap!1446 lt!34340))))

(declare-fun lt!34338 () Unit!2169)

(declare-fun lt!34337 () Unit!2169)

(assert (=> d!18021 (= lt!34338 lt!34337)))

(assert (=> d!18021 (= (getValueByKey!133 lt!34340 (_1!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1162 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!138 (_2!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1162 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!18021 (= lt!34337 (lemmaContainsTupThenGetReturnValue!52 lt!34340 (_1!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1162 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1162 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!18021 (= lt!34340 (insertStrictlySorted!54 (toList!738 call!6739) (_1!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1162 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1162 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!18021 (= (+!101 call!6739 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1162 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!34339)))

(declare-fun b!75759 () Bool)

(declare-fun res!39920 () Bool)

(assert (=> b!75759 (=> (not res!39920) (not e!49484))))

(assert (=> b!75759 (= res!39920 (= (getValueByKey!133 (toList!738 lt!34339) (_1!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1162 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!138 (_2!1088 (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1162 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!75760 () Bool)

(assert (=> b!75760 (= e!49484 (contains!734 (toList!738 lt!34339) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1162 (select (arr!1865 (_values!2217 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!337 (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!18021 res!39919) b!75759))

(assert (= (and b!75759 res!39920) b!75760))

(declare-fun m!75429 () Bool)

(assert (=> d!18021 m!75429))

(declare-fun m!75431 () Bool)

(assert (=> d!18021 m!75431))

(declare-fun m!75433 () Bool)

(assert (=> d!18021 m!75433))

(declare-fun m!75435 () Bool)

(assert (=> d!18021 m!75435))

(declare-fun m!75437 () Bool)

(assert (=> b!75759 m!75437))

(declare-fun m!75439 () Bool)

(assert (=> b!75760 m!75439))

(assert (=> b!75353 d!18021))

(declare-fun d!18023 () Bool)

(declare-fun e!49485 () Bool)

(assert (=> d!18023 e!49485))

(declare-fun res!39921 () Bool)

(assert (=> d!18023 (=> res!39921 e!49485)))

(declare-fun lt!34341 () Bool)

(assert (=> d!18023 (= res!39921 (not lt!34341))))

(declare-fun lt!34342 () Bool)

(assert (=> d!18023 (= lt!34341 lt!34342)))

(declare-fun lt!34343 () Unit!2169)

(declare-fun e!49486 () Unit!2169)

(assert (=> d!18023 (= lt!34343 e!49486)))

(declare-fun c!11534 () Bool)

(assert (=> d!18023 (= c!11534 lt!34342)))

(assert (=> d!18023 (= lt!34342 (containsKey!137 (toList!738 lt!34006) (_1!1088 lt!33753)))))

(assert (=> d!18023 (= (contains!732 lt!34006 (_1!1088 lt!33753)) lt!34341)))

(declare-fun b!75761 () Bool)

(declare-fun lt!34344 () Unit!2169)

(assert (=> b!75761 (= e!49486 lt!34344)))

(assert (=> b!75761 (= lt!34344 (lemmaContainsKeyImpliesGetValueByKeyDefined!86 (toList!738 lt!34006) (_1!1088 lt!33753)))))

(assert (=> b!75761 (isDefined!87 (getValueByKey!133 (toList!738 lt!34006) (_1!1088 lt!33753)))))

(declare-fun b!75762 () Bool)

(declare-fun Unit!2193 () Unit!2169)

(assert (=> b!75762 (= e!49486 Unit!2193)))

(declare-fun b!75763 () Bool)

(assert (=> b!75763 (= e!49485 (isDefined!87 (getValueByKey!133 (toList!738 lt!34006) (_1!1088 lt!33753))))))

(assert (= (and d!18023 c!11534) b!75761))

(assert (= (and d!18023 (not c!11534)) b!75762))

(assert (= (and d!18023 (not res!39921)) b!75763))

(declare-fun m!75441 () Bool)

(assert (=> d!18023 m!75441))

(declare-fun m!75443 () Bool)

(assert (=> b!75761 m!75443))

(assert (=> b!75761 m!74699))

(assert (=> b!75761 m!74699))

(declare-fun m!75445 () Bool)

(assert (=> b!75761 m!75445))

(assert (=> b!75763 m!74699))

(assert (=> b!75763 m!74699))

(assert (=> b!75763 m!75445))

(assert (=> d!17847 d!18023))

(declare-fun b!75765 () Bool)

(declare-fun e!49487 () Option!139)

(declare-fun e!49488 () Option!139)

(assert (=> b!75765 (= e!49487 e!49488)))

(declare-fun c!11536 () Bool)

(assert (=> b!75765 (= c!11536 (and ((_ is Cons!1509) lt!34007) (not (= (_1!1088 (h!2097 lt!34007)) (_1!1088 lt!33753)))))))

(declare-fun b!75766 () Bool)

(assert (=> b!75766 (= e!49488 (getValueByKey!133 (t!5095 lt!34007) (_1!1088 lt!33753)))))

(declare-fun b!75764 () Bool)

(assert (=> b!75764 (= e!49487 (Some!138 (_2!1088 (h!2097 lt!34007))))))

(declare-fun b!75767 () Bool)

(assert (=> b!75767 (= e!49488 None!137)))

(declare-fun d!18025 () Bool)

(declare-fun c!11535 () Bool)

(assert (=> d!18025 (= c!11535 (and ((_ is Cons!1509) lt!34007) (= (_1!1088 (h!2097 lt!34007)) (_1!1088 lt!33753))))))

(assert (=> d!18025 (= (getValueByKey!133 lt!34007 (_1!1088 lt!33753)) e!49487)))

(assert (= (and d!18025 c!11535) b!75764))

(assert (= (and d!18025 (not c!11535)) b!75765))

(assert (= (and b!75765 c!11536) b!75766))

(assert (= (and b!75765 (not c!11536)) b!75767))

(declare-fun m!75447 () Bool)

(assert (=> b!75766 m!75447))

(assert (=> d!17847 d!18025))

(declare-fun d!18027 () Bool)

(assert (=> d!18027 (= (getValueByKey!133 lt!34007 (_1!1088 lt!33753)) (Some!138 (_2!1088 lt!33753)))))

(declare-fun lt!34345 () Unit!2169)

(assert (=> d!18027 (= lt!34345 (choose!436 lt!34007 (_1!1088 lt!33753) (_2!1088 lt!33753)))))

(declare-fun e!49489 () Bool)

(assert (=> d!18027 e!49489))

(declare-fun res!39922 () Bool)

(assert (=> d!18027 (=> (not res!39922) (not e!49489))))

(assert (=> d!18027 (= res!39922 (isStrictlySorted!288 lt!34007))))

(assert (=> d!18027 (= (lemmaContainsTupThenGetReturnValue!52 lt!34007 (_1!1088 lt!33753) (_2!1088 lt!33753)) lt!34345)))

(declare-fun b!75768 () Bool)

(declare-fun res!39923 () Bool)

(assert (=> b!75768 (=> (not res!39923) (not e!49489))))

(assert (=> b!75768 (= res!39923 (containsKey!137 lt!34007 (_1!1088 lt!33753)))))

(declare-fun b!75769 () Bool)

(assert (=> b!75769 (= e!49489 (contains!734 lt!34007 (tuple2!2157 (_1!1088 lt!33753) (_2!1088 lt!33753))))))

(assert (= (and d!18027 res!39922) b!75768))

(assert (= (and b!75768 res!39923) b!75769))

(assert (=> d!18027 m!74693))

(declare-fun m!75449 () Bool)

(assert (=> d!18027 m!75449))

(declare-fun m!75451 () Bool)

(assert (=> d!18027 m!75451))

(declare-fun m!75453 () Bool)

(assert (=> b!75768 m!75453))

(declare-fun m!75455 () Bool)

(assert (=> b!75769 m!75455))

(assert (=> d!17847 d!18027))

(declare-fun b!75770 () Bool)

(declare-fun c!11538 () Bool)

(declare-fun e!49490 () List!1513)

(declare-fun c!11539 () Bool)

(assert (=> b!75770 (= e!49490 (ite c!11539 (t!5095 (toList!738 (+!101 lt!33746 lt!33749))) (ite c!11538 (Cons!1509 (h!2097 (toList!738 (+!101 lt!33746 lt!33749))) (t!5095 (toList!738 (+!101 lt!33746 lt!33749)))) Nil!1510)))))

(declare-fun bm!6792 () Bool)

(declare-fun call!6795 () List!1513)

(declare-fun c!11537 () Bool)

(assert (=> bm!6792 (= call!6795 ($colon$colon!66 e!49490 (ite c!11537 (h!2097 (toList!738 (+!101 lt!33746 lt!33749))) (tuple2!2157 (_1!1088 lt!33753) (_2!1088 lt!33753)))))))

(declare-fun c!11540 () Bool)

(assert (=> bm!6792 (= c!11540 c!11537)))

(declare-fun b!75771 () Bool)

(assert (=> b!75771 (= e!49490 (insertStrictlySorted!54 (t!5095 (toList!738 (+!101 lt!33746 lt!33749))) (_1!1088 lt!33753) (_2!1088 lt!33753)))))

(declare-fun b!75772 () Bool)

(assert (=> b!75772 (= c!11538 (and ((_ is Cons!1509) (toList!738 (+!101 lt!33746 lt!33749))) (bvsgt (_1!1088 (h!2097 (toList!738 (+!101 lt!33746 lt!33749)))) (_1!1088 lt!33753))))))

(declare-fun e!49491 () List!1513)

(declare-fun e!49493 () List!1513)

(assert (=> b!75772 (= e!49491 e!49493)))

(declare-fun b!75773 () Bool)

(declare-fun e!49494 () List!1513)

(assert (=> b!75773 (= e!49494 e!49491)))

(assert (=> b!75773 (= c!11539 (and ((_ is Cons!1509) (toList!738 (+!101 lt!33746 lt!33749))) (= (_1!1088 (h!2097 (toList!738 (+!101 lt!33746 lt!33749)))) (_1!1088 lt!33753))))))

(declare-fun b!75774 () Bool)

(declare-fun call!6796 () List!1513)

(assert (=> b!75774 (= e!49491 call!6796)))

(declare-fun bm!6793 () Bool)

(declare-fun call!6797 () List!1513)

(assert (=> bm!6793 (= call!6797 call!6796)))

(declare-fun b!75775 () Bool)

(assert (=> b!75775 (= e!49493 call!6797)))

(declare-fun d!18029 () Bool)

(declare-fun e!49492 () Bool)

(assert (=> d!18029 e!49492))

(declare-fun res!39924 () Bool)

(assert (=> d!18029 (=> (not res!39924) (not e!49492))))

(declare-fun lt!34346 () List!1513)

(assert (=> d!18029 (= res!39924 (isStrictlySorted!288 lt!34346))))

(assert (=> d!18029 (= lt!34346 e!49494)))

(assert (=> d!18029 (= c!11537 (and ((_ is Cons!1509) (toList!738 (+!101 lt!33746 lt!33749))) (bvslt (_1!1088 (h!2097 (toList!738 (+!101 lt!33746 lt!33749)))) (_1!1088 lt!33753))))))

(assert (=> d!18029 (isStrictlySorted!288 (toList!738 (+!101 lt!33746 lt!33749)))))

(assert (=> d!18029 (= (insertStrictlySorted!54 (toList!738 (+!101 lt!33746 lt!33749)) (_1!1088 lt!33753) (_2!1088 lt!33753)) lt!34346)))

(declare-fun b!75776 () Bool)

(assert (=> b!75776 (= e!49493 call!6797)))

(declare-fun b!75777 () Bool)

(assert (=> b!75777 (= e!49494 call!6795)))

(declare-fun b!75778 () Bool)

(declare-fun res!39925 () Bool)

(assert (=> b!75778 (=> (not res!39925) (not e!49492))))

(assert (=> b!75778 (= res!39925 (containsKey!137 lt!34346 (_1!1088 lt!33753)))))

(declare-fun bm!6794 () Bool)

(assert (=> bm!6794 (= call!6796 call!6795)))

(declare-fun b!75779 () Bool)

(assert (=> b!75779 (= e!49492 (contains!734 lt!34346 (tuple2!2157 (_1!1088 lt!33753) (_2!1088 lt!33753))))))

(assert (= (and d!18029 c!11537) b!75777))

(assert (= (and d!18029 (not c!11537)) b!75773))

(assert (= (and b!75773 c!11539) b!75774))

(assert (= (and b!75773 (not c!11539)) b!75772))

(assert (= (and b!75772 c!11538) b!75775))

(assert (= (and b!75772 (not c!11538)) b!75776))

(assert (= (or b!75775 b!75776) bm!6793))

(assert (= (or b!75774 bm!6793) bm!6794))

(assert (= (or b!75777 bm!6794) bm!6792))

(assert (= (and bm!6792 c!11540) b!75771))

(assert (= (and bm!6792 (not c!11540)) b!75770))

(assert (= (and d!18029 res!39924) b!75778))

(assert (= (and b!75778 res!39925) b!75779))

(declare-fun m!75457 () Bool)

(assert (=> d!18029 m!75457))

(declare-fun m!75459 () Bool)

(assert (=> d!18029 m!75459))

(declare-fun m!75461 () Bool)

(assert (=> b!75778 m!75461))

(declare-fun m!75463 () Bool)

(assert (=> b!75779 m!75463))

(declare-fun m!75465 () Bool)

(assert (=> bm!6792 m!75465))

(declare-fun m!75467 () Bool)

(assert (=> b!75771 m!75467))

(assert (=> d!17847 d!18029))

(assert (=> b!75254 d!17987))

(declare-fun d!18031 () Bool)

(declare-fun e!49495 () Bool)

(assert (=> d!18031 e!49495))

(declare-fun res!39926 () Bool)

(assert (=> d!18031 (=> res!39926 e!49495)))

(declare-fun lt!34347 () Bool)

(assert (=> d!18031 (= res!39926 (not lt!34347))))

(declare-fun lt!34348 () Bool)

(assert (=> d!18031 (= lt!34347 lt!34348)))

(declare-fun lt!34349 () Unit!2169)

(declare-fun e!49496 () Unit!2169)

(assert (=> d!18031 (= lt!34349 e!49496)))

(declare-fun c!11541 () Bool)

(assert (=> d!18031 (= c!11541 lt!34348)))

(assert (=> d!18031 (= lt!34348 (containsKey!137 (toList!738 lt!33835) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!18031 (= (contains!732 lt!33835 #b0000000000000000000000000000000000000000000000000000000000000000) lt!34347)))

(declare-fun b!75780 () Bool)

(declare-fun lt!34350 () Unit!2169)

(assert (=> b!75780 (= e!49496 lt!34350)))

(assert (=> b!75780 (= lt!34350 (lemmaContainsKeyImpliesGetValueByKeyDefined!86 (toList!738 lt!33835) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!75780 (isDefined!87 (getValueByKey!133 (toList!738 lt!33835) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!75781 () Bool)

(declare-fun Unit!2194 () Unit!2169)

(assert (=> b!75781 (= e!49496 Unit!2194)))

(declare-fun b!75782 () Bool)

(assert (=> b!75782 (= e!49495 (isDefined!87 (getValueByKey!133 (toList!738 lt!33835) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!18031 c!11541) b!75780))

(assert (= (and d!18031 (not c!11541)) b!75781))

(assert (= (and d!18031 (not res!39926)) b!75782))

(declare-fun m!75469 () Bool)

(assert (=> d!18031 m!75469))

(declare-fun m!75471 () Bool)

(assert (=> b!75780 m!75471))

(assert (=> b!75780 m!74867))

(assert (=> b!75780 m!74867))

(declare-fun m!75473 () Bool)

(assert (=> b!75780 m!75473))

(assert (=> b!75782 m!74867))

(assert (=> b!75782 m!74867))

(assert (=> b!75782 m!75473))

(assert (=> bm!6654 d!18031))

(assert (=> bm!6736 d!17863))

(assert (=> b!75311 d!17915))

(declare-fun d!18033 () Bool)

(assert (=> d!18033 (= (inRange!0 (ite c!11405 (ite c!11396 (index!3121 lt!33948) (ite c!11398 (index!3120 lt!33942) (index!3123 lt!33942))) (ite c!11400 (index!3121 lt!33944) (ite c!11404 (index!3120 lt!33947) (index!3123 lt!33947)))) (mask!6211 newMap!16)) (and (bvsge (ite c!11405 (ite c!11396 (index!3121 lt!33948) (ite c!11398 (index!3120 lt!33942) (index!3123 lt!33942))) (ite c!11400 (index!3121 lt!33944) (ite c!11404 (index!3120 lt!33947) (index!3123 lt!33947)))) #b00000000000000000000000000000000) (bvslt (ite c!11405 (ite c!11396 (index!3121 lt!33948) (ite c!11398 (index!3120 lt!33942) (index!3123 lt!33942))) (ite c!11400 (index!3121 lt!33944) (ite c!11404 (index!3120 lt!33947) (index!3123 lt!33947)))) (bvadd (mask!6211 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!6723 d!18033))

(declare-fun d!18035 () Bool)

(declare-fun isEmpty!326 (List!1513) Bool)

(assert (=> d!18035 (= (isEmpty!324 lt!33986) (isEmpty!326 (toList!738 lt!33986)))))

(declare-fun bs!3246 () Bool)

(assert (= bs!3246 d!18035))

(declare-fun m!75475 () Bool)

(assert (=> bs!3246 m!75475))

(assert (=> b!75359 d!18035))

(declare-fun d!18037 () Bool)

(declare-fun res!39927 () Bool)

(declare-fun e!49497 () Bool)

(assert (=> d!18037 (=> res!39927 e!49497)))

(assert (=> d!18037 (= res!39927 (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(assert (=> d!18037 (= (arrayContainsKey!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) e!49497)))

(declare-fun b!75783 () Bool)

(declare-fun e!49498 () Bool)

(assert (=> b!75783 (= e!49497 e!49498)))

(declare-fun res!39928 () Bool)

(assert (=> b!75783 (=> (not res!39928) (not e!49498))))

(assert (=> b!75783 (= res!39928 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))))))

(declare-fun b!75784 () Bool)

(assert (=> b!75784 (= e!49498 (arrayContainsKey!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!18037 (not res!39927)) b!75783))

(assert (= (and b!75783 res!39928) b!75784))

(assert (=> d!18037 m!74739))

(assert (=> b!75784 m!74389))

(declare-fun m!75477 () Bool)

(assert (=> b!75784 m!75477))

(assert (=> b!75290 d!18037))

(assert (=> bm!6655 d!17843))

(declare-fun d!18039 () Bool)

(declare-fun e!49499 () Bool)

(assert (=> d!18039 e!49499))

(declare-fun res!39929 () Bool)

(assert (=> d!18039 (=> res!39929 e!49499)))

(declare-fun lt!34351 () Bool)

(assert (=> d!18039 (= res!39929 (not lt!34351))))

(declare-fun lt!34352 () Bool)

(assert (=> d!18039 (= lt!34351 lt!34352)))

(declare-fun lt!34353 () Unit!2169)

(declare-fun e!49500 () Unit!2169)

(assert (=> d!18039 (= lt!34353 e!49500)))

(declare-fun c!11542 () Bool)

(assert (=> d!18039 (= c!11542 lt!34352)))

(assert (=> d!18039 (= lt!34352 (containsKey!137 (toList!738 lt!34010) (_1!1088 lt!33753)))))

(assert (=> d!18039 (= (contains!732 lt!34010 (_1!1088 lt!33753)) lt!34351)))

(declare-fun b!75785 () Bool)

(declare-fun lt!34354 () Unit!2169)

(assert (=> b!75785 (= e!49500 lt!34354)))

(assert (=> b!75785 (= lt!34354 (lemmaContainsKeyImpliesGetValueByKeyDefined!86 (toList!738 lt!34010) (_1!1088 lt!33753)))))

(assert (=> b!75785 (isDefined!87 (getValueByKey!133 (toList!738 lt!34010) (_1!1088 lt!33753)))))

(declare-fun b!75786 () Bool)

(declare-fun Unit!2195 () Unit!2169)

(assert (=> b!75786 (= e!49500 Unit!2195)))

(declare-fun b!75787 () Bool)

(assert (=> b!75787 (= e!49499 (isDefined!87 (getValueByKey!133 (toList!738 lt!34010) (_1!1088 lt!33753))))))

(assert (= (and d!18039 c!11542) b!75785))

(assert (= (and d!18039 (not c!11542)) b!75786))

(assert (= (and d!18039 (not res!39929)) b!75787))

(declare-fun m!75479 () Bool)

(assert (=> d!18039 m!75479))

(declare-fun m!75481 () Bool)

(assert (=> b!75785 m!75481))

(assert (=> b!75785 m!74711))

(assert (=> b!75785 m!74711))

(declare-fun m!75483 () Bool)

(assert (=> b!75785 m!75483))

(assert (=> b!75787 m!74711))

(assert (=> b!75787 m!74711))

(assert (=> b!75787 m!75483))

(assert (=> d!17851 d!18039))

(declare-fun b!75789 () Bool)

(declare-fun e!49501 () Option!139)

(declare-fun e!49502 () Option!139)

(assert (=> b!75789 (= e!49501 e!49502)))

(declare-fun c!11544 () Bool)

(assert (=> b!75789 (= c!11544 (and ((_ is Cons!1509) lt!34011) (not (= (_1!1088 (h!2097 lt!34011)) (_1!1088 lt!33753)))))))

(declare-fun b!75790 () Bool)

(assert (=> b!75790 (= e!49502 (getValueByKey!133 (t!5095 lt!34011) (_1!1088 lt!33753)))))

(declare-fun b!75788 () Bool)

(assert (=> b!75788 (= e!49501 (Some!138 (_2!1088 (h!2097 lt!34011))))))

(declare-fun b!75791 () Bool)

(assert (=> b!75791 (= e!49502 None!137)))

(declare-fun d!18041 () Bool)

(declare-fun c!11543 () Bool)

(assert (=> d!18041 (= c!11543 (and ((_ is Cons!1509) lt!34011) (= (_1!1088 (h!2097 lt!34011)) (_1!1088 lt!33753))))))

(assert (=> d!18041 (= (getValueByKey!133 lt!34011 (_1!1088 lt!33753)) e!49501)))

(assert (= (and d!18041 c!11543) b!75788))

(assert (= (and d!18041 (not c!11543)) b!75789))

(assert (= (and b!75789 c!11544) b!75790))

(assert (= (and b!75789 (not c!11544)) b!75791))

(declare-fun m!75485 () Bool)

(assert (=> b!75790 m!75485))

(assert (=> d!17851 d!18041))

(declare-fun d!18043 () Bool)

(assert (=> d!18043 (= (getValueByKey!133 lt!34011 (_1!1088 lt!33753)) (Some!138 (_2!1088 lt!33753)))))

(declare-fun lt!34355 () Unit!2169)

(assert (=> d!18043 (= lt!34355 (choose!436 lt!34011 (_1!1088 lt!33753) (_2!1088 lt!33753)))))

(declare-fun e!49503 () Bool)

(assert (=> d!18043 e!49503))

(declare-fun res!39930 () Bool)

(assert (=> d!18043 (=> (not res!39930) (not e!49503))))

(assert (=> d!18043 (= res!39930 (isStrictlySorted!288 lt!34011))))

(assert (=> d!18043 (= (lemmaContainsTupThenGetReturnValue!52 lt!34011 (_1!1088 lt!33753) (_2!1088 lt!33753)) lt!34355)))

(declare-fun b!75792 () Bool)

(declare-fun res!39931 () Bool)

(assert (=> b!75792 (=> (not res!39931) (not e!49503))))

(assert (=> b!75792 (= res!39931 (containsKey!137 lt!34011 (_1!1088 lt!33753)))))

(declare-fun b!75793 () Bool)

(assert (=> b!75793 (= e!49503 (contains!734 lt!34011 (tuple2!2157 (_1!1088 lt!33753) (_2!1088 lt!33753))))))

(assert (= (and d!18043 res!39930) b!75792))

(assert (= (and b!75792 res!39931) b!75793))

(assert (=> d!18043 m!74705))

(declare-fun m!75487 () Bool)

(assert (=> d!18043 m!75487))

(declare-fun m!75489 () Bool)

(assert (=> d!18043 m!75489))

(declare-fun m!75491 () Bool)

(assert (=> b!75792 m!75491))

(declare-fun m!75493 () Bool)

(assert (=> b!75793 m!75493))

(assert (=> d!17851 d!18043))

(declare-fun e!49504 () List!1513)

(declare-fun c!11546 () Bool)

(declare-fun c!11547 () Bool)

(declare-fun b!75794 () Bool)

(assert (=> b!75794 (= e!49504 (ite c!11547 (t!5095 (toList!738 lt!33746)) (ite c!11546 (Cons!1509 (h!2097 (toList!738 lt!33746)) (t!5095 (toList!738 lt!33746))) Nil!1510)))))

(declare-fun bm!6795 () Bool)

(declare-fun call!6798 () List!1513)

(declare-fun c!11545 () Bool)

(assert (=> bm!6795 (= call!6798 ($colon$colon!66 e!49504 (ite c!11545 (h!2097 (toList!738 lt!33746)) (tuple2!2157 (_1!1088 lt!33753) (_2!1088 lt!33753)))))))

(declare-fun c!11548 () Bool)

(assert (=> bm!6795 (= c!11548 c!11545)))

(declare-fun b!75795 () Bool)

(assert (=> b!75795 (= e!49504 (insertStrictlySorted!54 (t!5095 (toList!738 lt!33746)) (_1!1088 lt!33753) (_2!1088 lt!33753)))))

(declare-fun b!75796 () Bool)

(assert (=> b!75796 (= c!11546 (and ((_ is Cons!1509) (toList!738 lt!33746)) (bvsgt (_1!1088 (h!2097 (toList!738 lt!33746))) (_1!1088 lt!33753))))))

(declare-fun e!49505 () List!1513)

(declare-fun e!49507 () List!1513)

(assert (=> b!75796 (= e!49505 e!49507)))

(declare-fun b!75797 () Bool)

(declare-fun e!49508 () List!1513)

(assert (=> b!75797 (= e!49508 e!49505)))

(assert (=> b!75797 (= c!11547 (and ((_ is Cons!1509) (toList!738 lt!33746)) (= (_1!1088 (h!2097 (toList!738 lt!33746))) (_1!1088 lt!33753))))))

(declare-fun b!75798 () Bool)

(declare-fun call!6799 () List!1513)

(assert (=> b!75798 (= e!49505 call!6799)))

(declare-fun bm!6796 () Bool)

(declare-fun call!6800 () List!1513)

(assert (=> bm!6796 (= call!6800 call!6799)))

(declare-fun b!75799 () Bool)

(assert (=> b!75799 (= e!49507 call!6800)))

(declare-fun d!18045 () Bool)

(declare-fun e!49506 () Bool)

(assert (=> d!18045 e!49506))

(declare-fun res!39932 () Bool)

(assert (=> d!18045 (=> (not res!39932) (not e!49506))))

(declare-fun lt!34356 () List!1513)

(assert (=> d!18045 (= res!39932 (isStrictlySorted!288 lt!34356))))

(assert (=> d!18045 (= lt!34356 e!49508)))

(assert (=> d!18045 (= c!11545 (and ((_ is Cons!1509) (toList!738 lt!33746)) (bvslt (_1!1088 (h!2097 (toList!738 lt!33746))) (_1!1088 lt!33753))))))

(assert (=> d!18045 (isStrictlySorted!288 (toList!738 lt!33746))))

(assert (=> d!18045 (= (insertStrictlySorted!54 (toList!738 lt!33746) (_1!1088 lt!33753) (_2!1088 lt!33753)) lt!34356)))

(declare-fun b!75800 () Bool)

(assert (=> b!75800 (= e!49507 call!6800)))

(declare-fun b!75801 () Bool)

(assert (=> b!75801 (= e!49508 call!6798)))

(declare-fun b!75802 () Bool)

(declare-fun res!39933 () Bool)

(assert (=> b!75802 (=> (not res!39933) (not e!49506))))

(assert (=> b!75802 (= res!39933 (containsKey!137 lt!34356 (_1!1088 lt!33753)))))

(declare-fun bm!6797 () Bool)

(assert (=> bm!6797 (= call!6799 call!6798)))

(declare-fun b!75803 () Bool)

(assert (=> b!75803 (= e!49506 (contains!734 lt!34356 (tuple2!2157 (_1!1088 lt!33753) (_2!1088 lt!33753))))))

(assert (= (and d!18045 c!11545) b!75801))

(assert (= (and d!18045 (not c!11545)) b!75797))

(assert (= (and b!75797 c!11547) b!75798))

(assert (= (and b!75797 (not c!11547)) b!75796))

(assert (= (and b!75796 c!11546) b!75799))

(assert (= (and b!75796 (not c!11546)) b!75800))

(assert (= (or b!75799 b!75800) bm!6796))

(assert (= (or b!75798 bm!6796) bm!6797))

(assert (= (or b!75801 bm!6797) bm!6795))

(assert (= (and bm!6795 c!11548) b!75795))

(assert (= (and bm!6795 (not c!11548)) b!75794))

(assert (= (and d!18045 res!39932) b!75802))

(assert (= (and b!75802 res!39933) b!75803))

(declare-fun m!75495 () Bool)

(assert (=> d!18045 m!75495))

(declare-fun m!75497 () Bool)

(assert (=> d!18045 m!75497))

(declare-fun m!75499 () Bool)

(assert (=> b!75802 m!75499))

(declare-fun m!75501 () Bool)

(assert (=> b!75803 m!75501))

(declare-fun m!75503 () Bool)

(assert (=> bm!6795 m!75503))

(declare-fun m!75505 () Bool)

(assert (=> b!75795 m!75505))

(assert (=> d!17851 d!18045))

(assert (=> bm!6715 d!17891))

(declare-fun d!18047 () Bool)

(declare-fun lt!34357 () Bool)

(assert (=> d!18047 (= lt!34357 (select (content!78 (toList!738 lt!34002)) lt!33749))))

(declare-fun e!49510 () Bool)

(assert (=> d!18047 (= lt!34357 e!49510)))

(declare-fun res!39934 () Bool)

(assert (=> d!18047 (=> (not res!39934) (not e!49510))))

(assert (=> d!18047 (= res!39934 ((_ is Cons!1509) (toList!738 lt!34002)))))

(assert (=> d!18047 (= (contains!734 (toList!738 lt!34002) lt!33749) lt!34357)))

(declare-fun b!75804 () Bool)

(declare-fun e!49509 () Bool)

(assert (=> b!75804 (= e!49510 e!49509)))

(declare-fun res!39935 () Bool)

(assert (=> b!75804 (=> res!39935 e!49509)))

(assert (=> b!75804 (= res!39935 (= (h!2097 (toList!738 lt!34002)) lt!33749))))

(declare-fun b!75805 () Bool)

(assert (=> b!75805 (= e!49509 (contains!734 (t!5095 (toList!738 lt!34002)) lt!33749))))

(assert (= (and d!18047 res!39934) b!75804))

(assert (= (and b!75804 (not res!39935)) b!75805))

(declare-fun m!75507 () Bool)

(assert (=> d!18047 m!75507))

(declare-fun m!75509 () Bool)

(assert (=> d!18047 m!75509))

(declare-fun m!75511 () Bool)

(assert (=> b!75805 m!75511))

(assert (=> b!75365 d!18047))

(declare-fun b!75817 () Bool)

(declare-fun e!49513 () Bool)

(assert (=> b!75817 (= e!49513 (and (bvsge (extraKeys!2089 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!2089 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!400 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun d!18049 () Bool)

(declare-fun res!39946 () Bool)

(assert (=> d!18049 (=> (not res!39946) (not e!49513))))

(assert (=> d!18049 (= res!39946 (validMask!0 (mask!6211 newMap!16)))))

(assert (=> d!18049 (= (simpleValid!51 newMap!16) e!49513)))

(declare-fun b!75814 () Bool)

(declare-fun res!39944 () Bool)

(assert (=> b!75814 (=> (not res!39944) (not e!49513))))

(assert (=> b!75814 (= res!39944 (and (= (size!2104 (_values!2217 newMap!16)) (bvadd (mask!6211 newMap!16) #b00000000000000000000000000000001)) (= (size!2103 (_keys!3890 newMap!16)) (size!2104 (_values!2217 newMap!16))) (bvsge (_size!400 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!400 newMap!16) (bvadd (mask!6211 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!75816 () Bool)

(declare-fun res!39945 () Bool)

(assert (=> b!75816 (=> (not res!39945) (not e!49513))))

(declare-fun size!2107 (LongMapFixedSize!702) (_ BitVec 32))

(assert (=> b!75816 (= res!39945 (= (size!2107 newMap!16) (bvadd (_size!400 newMap!16) (bvsdiv (bvadd (extraKeys!2089 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!75815 () Bool)

(declare-fun res!39947 () Bool)

(assert (=> b!75815 (=> (not res!39947) (not e!49513))))

(assert (=> b!75815 (= res!39947 (bvsge (size!2107 newMap!16) (_size!400 newMap!16)))))

(assert (= (and d!18049 res!39946) b!75814))

(assert (= (and b!75814 res!39944) b!75815))

(assert (= (and b!75815 res!39947) b!75816))

(assert (= (and b!75816 res!39945) b!75817))

(assert (=> d!18049 m!74787))

(declare-fun m!75513 () Bool)

(assert (=> b!75816 m!75513))

(assert (=> b!75815 m!75513))

(assert (=> d!17827 d!18049))

(declare-fun d!18051 () Bool)

(declare-fun e!49514 () Bool)

(assert (=> d!18051 e!49514))

(declare-fun res!39948 () Bool)

(assert (=> d!18051 (=> res!39948 e!49514)))

(declare-fun lt!34358 () Bool)

(assert (=> d!18051 (= res!39948 (not lt!34358))))

(declare-fun lt!34359 () Bool)

(assert (=> d!18051 (= lt!34358 lt!34359)))

(declare-fun lt!34360 () Unit!2169)

(declare-fun e!49515 () Unit!2169)

(assert (=> d!18051 (= lt!34360 e!49515)))

(declare-fun c!11549 () Bool)

(assert (=> d!18051 (= c!11549 lt!34359)))

(assert (=> d!18051 (= lt!34359 (containsKey!137 (toList!738 lt!34014) (_1!1088 lt!33749)))))

(assert (=> d!18051 (= (contains!732 lt!34014 (_1!1088 lt!33749)) lt!34358)))

(declare-fun b!75818 () Bool)

(declare-fun lt!34361 () Unit!2169)

(assert (=> b!75818 (= e!49515 lt!34361)))

(assert (=> b!75818 (= lt!34361 (lemmaContainsKeyImpliesGetValueByKeyDefined!86 (toList!738 lt!34014) (_1!1088 lt!33749)))))

(assert (=> b!75818 (isDefined!87 (getValueByKey!133 (toList!738 lt!34014) (_1!1088 lt!33749)))))

(declare-fun b!75819 () Bool)

(declare-fun Unit!2196 () Unit!2169)

(assert (=> b!75819 (= e!49515 Unit!2196)))

(declare-fun b!75820 () Bool)

(assert (=> b!75820 (= e!49514 (isDefined!87 (getValueByKey!133 (toList!738 lt!34014) (_1!1088 lt!33749))))))

(assert (= (and d!18051 c!11549) b!75818))

(assert (= (and d!18051 (not c!11549)) b!75819))

(assert (= (and d!18051 (not res!39948)) b!75820))

(declare-fun m!75515 () Bool)

(assert (=> d!18051 m!75515))

(declare-fun m!75517 () Bool)

(assert (=> b!75818 m!75517))

(assert (=> b!75818 m!74723))

(assert (=> b!75818 m!74723))

(declare-fun m!75519 () Bool)

(assert (=> b!75818 m!75519))

(assert (=> b!75820 m!74723))

(assert (=> b!75820 m!74723))

(assert (=> b!75820 m!75519))

(assert (=> d!17853 d!18051))

(declare-fun b!75822 () Bool)

(declare-fun e!49516 () Option!139)

(declare-fun e!49517 () Option!139)

(assert (=> b!75822 (= e!49516 e!49517)))

(declare-fun c!11551 () Bool)

(assert (=> b!75822 (= c!11551 (and ((_ is Cons!1509) lt!34015) (not (= (_1!1088 (h!2097 lt!34015)) (_1!1088 lt!33749)))))))

(declare-fun b!75823 () Bool)

(assert (=> b!75823 (= e!49517 (getValueByKey!133 (t!5095 lt!34015) (_1!1088 lt!33749)))))

(declare-fun b!75821 () Bool)

(assert (=> b!75821 (= e!49516 (Some!138 (_2!1088 (h!2097 lt!34015))))))

(declare-fun b!75824 () Bool)

(assert (=> b!75824 (= e!49517 None!137)))

(declare-fun d!18053 () Bool)

(declare-fun c!11550 () Bool)

(assert (=> d!18053 (= c!11550 (and ((_ is Cons!1509) lt!34015) (= (_1!1088 (h!2097 lt!34015)) (_1!1088 lt!33749))))))

(assert (=> d!18053 (= (getValueByKey!133 lt!34015 (_1!1088 lt!33749)) e!49516)))

(assert (= (and d!18053 c!11550) b!75821))

(assert (= (and d!18053 (not c!11550)) b!75822))

(assert (= (and b!75822 c!11551) b!75823))

(assert (= (and b!75822 (not c!11551)) b!75824))

(declare-fun m!75521 () Bool)

(assert (=> b!75823 m!75521))

(assert (=> d!17853 d!18053))

(declare-fun d!18055 () Bool)

(assert (=> d!18055 (= (getValueByKey!133 lt!34015 (_1!1088 lt!33749)) (Some!138 (_2!1088 lt!33749)))))

(declare-fun lt!34362 () Unit!2169)

(assert (=> d!18055 (= lt!34362 (choose!436 lt!34015 (_1!1088 lt!33749) (_2!1088 lt!33749)))))

(declare-fun e!49518 () Bool)

(assert (=> d!18055 e!49518))

(declare-fun res!39949 () Bool)

(assert (=> d!18055 (=> (not res!39949) (not e!49518))))

(assert (=> d!18055 (= res!39949 (isStrictlySorted!288 lt!34015))))

(assert (=> d!18055 (= (lemmaContainsTupThenGetReturnValue!52 lt!34015 (_1!1088 lt!33749) (_2!1088 lt!33749)) lt!34362)))

(declare-fun b!75825 () Bool)

(declare-fun res!39950 () Bool)

(assert (=> b!75825 (=> (not res!39950) (not e!49518))))

(assert (=> b!75825 (= res!39950 (containsKey!137 lt!34015 (_1!1088 lt!33749)))))

(declare-fun b!75826 () Bool)

(assert (=> b!75826 (= e!49518 (contains!734 lt!34015 (tuple2!2157 (_1!1088 lt!33749) (_2!1088 lt!33749))))))

(assert (= (and d!18055 res!39949) b!75825))

(assert (= (and b!75825 res!39950) b!75826))

(assert (=> d!18055 m!74717))

(declare-fun m!75523 () Bool)

(assert (=> d!18055 m!75523))

(declare-fun m!75525 () Bool)

(assert (=> d!18055 m!75525))

(declare-fun m!75527 () Bool)

(assert (=> b!75825 m!75527))

(declare-fun m!75529 () Bool)

(assert (=> b!75826 m!75529))

(assert (=> d!17853 d!18055))

(declare-fun b!75827 () Bool)

(declare-fun c!11553 () Bool)

(declare-fun e!49519 () List!1513)

(declare-fun c!11554 () Bool)

(assert (=> b!75827 (= e!49519 (ite c!11554 (t!5095 (toList!738 lt!33746)) (ite c!11553 (Cons!1509 (h!2097 (toList!738 lt!33746)) (t!5095 (toList!738 lt!33746))) Nil!1510)))))

(declare-fun bm!6798 () Bool)

(declare-fun call!6801 () List!1513)

(declare-fun c!11552 () Bool)

(assert (=> bm!6798 (= call!6801 ($colon$colon!66 e!49519 (ite c!11552 (h!2097 (toList!738 lt!33746)) (tuple2!2157 (_1!1088 lt!33749) (_2!1088 lt!33749)))))))

(declare-fun c!11555 () Bool)

(assert (=> bm!6798 (= c!11555 c!11552)))

(declare-fun b!75828 () Bool)

(assert (=> b!75828 (= e!49519 (insertStrictlySorted!54 (t!5095 (toList!738 lt!33746)) (_1!1088 lt!33749) (_2!1088 lt!33749)))))

(declare-fun b!75829 () Bool)

(assert (=> b!75829 (= c!11553 (and ((_ is Cons!1509) (toList!738 lt!33746)) (bvsgt (_1!1088 (h!2097 (toList!738 lt!33746))) (_1!1088 lt!33749))))))

(declare-fun e!49520 () List!1513)

(declare-fun e!49522 () List!1513)

(assert (=> b!75829 (= e!49520 e!49522)))

(declare-fun b!75830 () Bool)

(declare-fun e!49523 () List!1513)

(assert (=> b!75830 (= e!49523 e!49520)))

(assert (=> b!75830 (= c!11554 (and ((_ is Cons!1509) (toList!738 lt!33746)) (= (_1!1088 (h!2097 (toList!738 lt!33746))) (_1!1088 lt!33749))))))

(declare-fun b!75831 () Bool)

(declare-fun call!6802 () List!1513)

(assert (=> b!75831 (= e!49520 call!6802)))

(declare-fun bm!6799 () Bool)

(declare-fun call!6803 () List!1513)

(assert (=> bm!6799 (= call!6803 call!6802)))

(declare-fun b!75832 () Bool)

(assert (=> b!75832 (= e!49522 call!6803)))

(declare-fun d!18057 () Bool)

(declare-fun e!49521 () Bool)

(assert (=> d!18057 e!49521))

(declare-fun res!39951 () Bool)

(assert (=> d!18057 (=> (not res!39951) (not e!49521))))

(declare-fun lt!34363 () List!1513)

(assert (=> d!18057 (= res!39951 (isStrictlySorted!288 lt!34363))))

(assert (=> d!18057 (= lt!34363 e!49523)))

(assert (=> d!18057 (= c!11552 (and ((_ is Cons!1509) (toList!738 lt!33746)) (bvslt (_1!1088 (h!2097 (toList!738 lt!33746))) (_1!1088 lt!33749))))))

(assert (=> d!18057 (isStrictlySorted!288 (toList!738 lt!33746))))

(assert (=> d!18057 (= (insertStrictlySorted!54 (toList!738 lt!33746) (_1!1088 lt!33749) (_2!1088 lt!33749)) lt!34363)))

(declare-fun b!75833 () Bool)

(assert (=> b!75833 (= e!49522 call!6803)))

(declare-fun b!75834 () Bool)

(assert (=> b!75834 (= e!49523 call!6801)))

(declare-fun b!75835 () Bool)

(declare-fun res!39952 () Bool)

(assert (=> b!75835 (=> (not res!39952) (not e!49521))))

(assert (=> b!75835 (= res!39952 (containsKey!137 lt!34363 (_1!1088 lt!33749)))))

(declare-fun bm!6800 () Bool)

(assert (=> bm!6800 (= call!6802 call!6801)))

(declare-fun b!75836 () Bool)

(assert (=> b!75836 (= e!49521 (contains!734 lt!34363 (tuple2!2157 (_1!1088 lt!33749) (_2!1088 lt!33749))))))

(assert (= (and d!18057 c!11552) b!75834))

(assert (= (and d!18057 (not c!11552)) b!75830))

(assert (= (and b!75830 c!11554) b!75831))

(assert (= (and b!75830 (not c!11554)) b!75829))

(assert (= (and b!75829 c!11553) b!75832))

(assert (= (and b!75829 (not c!11553)) b!75833))

(assert (= (or b!75832 b!75833) bm!6799))

(assert (= (or b!75831 bm!6799) bm!6800))

(assert (= (or b!75834 bm!6800) bm!6798))

(assert (= (and bm!6798 c!11555) b!75828))

(assert (= (and bm!6798 (not c!11555)) b!75827))

(assert (= (and d!18057 res!39951) b!75835))

(assert (= (and b!75835 res!39952) b!75836))

(declare-fun m!75531 () Bool)

(assert (=> d!18057 m!75531))

(assert (=> d!18057 m!75497))

(declare-fun m!75533 () Bool)

(assert (=> b!75835 m!75533))

(declare-fun m!75535 () Bool)

(assert (=> b!75836 m!75535))

(declare-fun m!75537 () Bool)

(assert (=> bm!6798 m!75537))

(declare-fun m!75539 () Bool)

(assert (=> b!75828 m!75539))

(assert (=> d!17853 d!18057))

(declare-fun d!18059 () Bool)

(declare-fun lt!34364 () Bool)

(assert (=> d!18059 (= lt!34364 (select (content!78 (toList!738 lt!34006)) lt!33753))))

(declare-fun e!49525 () Bool)

(assert (=> d!18059 (= lt!34364 e!49525)))

(declare-fun res!39953 () Bool)

(assert (=> d!18059 (=> (not res!39953) (not e!49525))))

(assert (=> d!18059 (= res!39953 ((_ is Cons!1509) (toList!738 lt!34006)))))

(assert (=> d!18059 (= (contains!734 (toList!738 lt!34006) lt!33753) lt!34364)))

(declare-fun b!75837 () Bool)

(declare-fun e!49524 () Bool)

(assert (=> b!75837 (= e!49525 e!49524)))

(declare-fun res!39954 () Bool)

(assert (=> b!75837 (=> res!39954 e!49524)))

(assert (=> b!75837 (= res!39954 (= (h!2097 (toList!738 lt!34006)) lt!33753))))

(declare-fun b!75838 () Bool)

(assert (=> b!75838 (= e!49524 (contains!734 (t!5095 (toList!738 lt!34006)) lt!33753))))

(assert (= (and d!18059 res!39953) b!75837))

(assert (= (and b!75837 (not res!39954)) b!75838))

(declare-fun m!75541 () Bool)

(assert (=> d!18059 m!75541))

(declare-fun m!75543 () Bool)

(assert (=> d!18059 m!75543))

(declare-fun m!75545 () Bool)

(assert (=> b!75838 m!75545))

(assert (=> b!75367 d!18059))

(declare-fun bm!6801 () Bool)

(declare-fun call!6804 () Bool)

(assert (=> bm!6801 (= call!6804 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3890 newMap!16) (mask!6211 newMap!16)))))

(declare-fun b!75839 () Bool)

(declare-fun e!49528 () Bool)

(assert (=> b!75839 (= e!49528 call!6804)))

(declare-fun d!18061 () Bool)

(declare-fun res!39956 () Bool)

(declare-fun e!49526 () Bool)

(assert (=> d!18061 (=> res!39956 e!49526)))

(assert (=> d!18061 (= res!39956 (bvsge #b00000000000000000000000000000000 (size!2103 (_keys!3890 newMap!16))))))

(assert (=> d!18061 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3890 newMap!16) (mask!6211 newMap!16)) e!49526)))

(declare-fun b!75840 () Bool)

(declare-fun e!49527 () Bool)

(assert (=> b!75840 (= e!49527 call!6804)))

(declare-fun b!75841 () Bool)

(assert (=> b!75841 (= e!49526 e!49528)))

(declare-fun c!11556 () Bool)

(assert (=> b!75841 (= c!11556 (validKeyInArray!0 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!75842 () Bool)

(assert (=> b!75842 (= e!49528 e!49527)))

(declare-fun lt!34367 () (_ BitVec 64))

(assert (=> b!75842 (= lt!34367 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!34366 () Unit!2169)

(assert (=> b!75842 (= lt!34366 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3890 newMap!16) lt!34367 #b00000000000000000000000000000000))))

(assert (=> b!75842 (arrayContainsKey!0 (_keys!3890 newMap!16) lt!34367 #b00000000000000000000000000000000)))

(declare-fun lt!34365 () Unit!2169)

(assert (=> b!75842 (= lt!34365 lt!34366)))

(declare-fun res!39955 () Bool)

(assert (=> b!75842 (= res!39955 (= (seekEntryOrOpen!0 (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000) (_keys!3890 newMap!16) (mask!6211 newMap!16)) (Found!247 #b00000000000000000000000000000000)))))

(assert (=> b!75842 (=> (not res!39955) (not e!49527))))

(assert (= (and d!18061 (not res!39956)) b!75841))

(assert (= (and b!75841 c!11556) b!75842))

(assert (= (and b!75841 (not c!11556)) b!75839))

(assert (= (and b!75842 res!39955) b!75840))

(assert (= (or b!75840 b!75839) bm!6801))

(declare-fun m!75547 () Bool)

(assert (=> bm!6801 m!75547))

(assert (=> b!75841 m!74795))

(assert (=> b!75841 m!74795))

(assert (=> b!75841 m!74801))

(assert (=> b!75842 m!74795))

(declare-fun m!75549 () Bool)

(assert (=> b!75842 m!75549))

(declare-fun m!75551 () Bool)

(assert (=> b!75842 m!75551))

(assert (=> b!75842 m!74795))

(declare-fun m!75553 () Bool)

(assert (=> b!75842 m!75553))

(assert (=> b!75283 d!18061))

(assert (=> b!75124 d!17903))

(declare-fun d!18063 () Bool)

(declare-fun e!49531 () Bool)

(assert (=> d!18063 e!49531))

(declare-fun c!11559 () Bool)

(assert (=> d!18063 (= c!11559 (and (not (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!18063 true))

(declare-fun _$29!93 () Unit!2169)

(assert (=> d!18063 (= (choose!433 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (_values!2217 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992))) (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) (zeroValue!2134 (v!2549 (underlying!267 thiss!992))) (minValue!2134 (v!2549 (underlying!267 thiss!992))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992)))) _$29!93)))

(declare-fun b!75847 () Bool)

(assert (=> b!75847 (= e!49531 (arrayContainsKey!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!75848 () Bool)

(assert (=> b!75848 (= e!49531 (ite (= (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2089 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!18063 c!11559) b!75847))

(assert (= (and d!18063 (not c!11559)) b!75848))

(assert (=> b!75847 m!74389))

(assert (=> b!75847 m!74393))

(assert (=> d!17835 d!18063))

(assert (=> d!17835 d!17849))

(declare-fun d!18065 () Bool)

(declare-fun e!49534 () Bool)

(assert (=> d!18065 e!49534))

(declare-fun res!39959 () Bool)

(assert (=> d!18065 (=> (not res!39959) (not e!49534))))

(assert (=> d!18065 (= res!39959 (and (bvsge (index!3121 lt!33929) #b00000000000000000000000000000000) (bvslt (index!3121 lt!33929) (size!2103 (_keys!3890 newMap!16)))))))

(declare-fun lt!34370 () Unit!2169)

(declare-fun choose!444 (array!3908 array!3910 (_ BitVec 32) (_ BitVec 32) V!2955 V!2955 (_ BitVec 32) Int) Unit!2169)

(assert (=> d!18065 (= lt!34370 (choose!444 (_keys!3890 newMap!16) lt!33943 (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) (index!3121 lt!33929) (defaultEntry!2234 newMap!16)))))

(assert (=> d!18065 (validMask!0 (mask!6211 newMap!16))))

(assert (=> d!18065 (= (lemmaValidKeyInArrayIsInListMap!83 (_keys!3890 newMap!16) lt!33943 (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) (index!3121 lt!33929) (defaultEntry!2234 newMap!16)) lt!34370)))

(declare-fun b!75851 () Bool)

(assert (=> b!75851 (= e!49534 (contains!732 (getCurrentListMap!429 (_keys!3890 newMap!16) lt!33943 (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)) (select (arr!1864 (_keys!3890 newMap!16)) (index!3121 lt!33929))))))

(assert (= (and d!18065 res!39959) b!75851))

(declare-fun m!75555 () Bool)

(assert (=> d!18065 m!75555))

(assert (=> d!18065 m!74787))

(declare-fun m!75557 () Bool)

(assert (=> b!75851 m!75557))

(assert (=> b!75851 m!74587))

(assert (=> b!75851 m!75557))

(assert (=> b!75851 m!74587))

(declare-fun m!75559 () Bool)

(assert (=> b!75851 m!75559))

(assert (=> b!75259 d!18065))

(declare-fun d!18067 () Bool)

(declare-fun e!49537 () Bool)

(assert (=> d!18067 e!49537))

(declare-fun res!39962 () Bool)

(assert (=> d!18067 (=> (not res!39962) (not e!49537))))

(assert (=> d!18067 (= res!39962 (and (bvsge (index!3121 lt!33929) #b00000000000000000000000000000000) (bvslt (index!3121 lt!33929) (size!2104 (_values!2217 newMap!16)))))))

(declare-fun lt!34373 () Unit!2169)

(declare-fun choose!445 (array!3908 array!3910 (_ BitVec 32) (_ BitVec 32) V!2955 V!2955 (_ BitVec 32) (_ BitVec 64) V!2955 Int) Unit!2169)

(assert (=> d!18067 (= lt!34373 (choose!445 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) (index!3121 lt!33929) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745 (defaultEntry!2234 newMap!16)))))

(assert (=> d!18067 (validMask!0 (mask!6211 newMap!16))))

(assert (=> d!18067 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!25 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) (index!3121 lt!33929) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745 (defaultEntry!2234 newMap!16)) lt!34373)))

(declare-fun b!75854 () Bool)

(assert (=> b!75854 (= e!49537 (= (+!101 (getCurrentListMap!429 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)) (tuple2!2157 (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) lt!33745)) (getCurrentListMap!429 (_keys!3890 newMap!16) (array!3911 (store (arr!1865 (_values!2217 newMap!16)) (index!3121 lt!33929) (ValueCellFull!897 lt!33745)) (size!2104 (_values!2217 newMap!16))) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16))))))

(assert (= (and d!18067 res!39962) b!75854))

(assert (=> d!18067 m!74389))

(declare-fun m!75561 () Bool)

(assert (=> d!18067 m!75561))

(assert (=> d!18067 m!74787))

(assert (=> b!75854 m!74497))

(assert (=> b!75854 m!74497))

(assert (=> b!75854 m!74973))

(assert (=> b!75854 m!74581))

(declare-fun m!75563 () Bool)

(assert (=> b!75854 m!75563))

(assert (=> b!75259 d!18067))

(declare-fun d!18069 () Bool)

(declare-fun e!49538 () Bool)

(assert (=> d!18069 e!49538))

(declare-fun res!39963 () Bool)

(assert (=> d!18069 (=> res!39963 e!49538)))

(declare-fun lt!34374 () Bool)

(assert (=> d!18069 (= res!39963 (not lt!34374))))

(declare-fun lt!34375 () Bool)

(assert (=> d!18069 (= lt!34374 lt!34375)))

(declare-fun lt!34376 () Unit!2169)

(declare-fun e!49539 () Unit!2169)

(assert (=> d!18069 (= lt!34376 e!49539)))

(declare-fun c!11560 () Bool)

(assert (=> d!18069 (= c!11560 lt!34375)))

(assert (=> d!18069 (= lt!34375 (containsKey!137 (toList!738 (getCurrentListMap!429 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(assert (=> d!18069 (= (contains!732 (getCurrentListMap!429 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16)) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)) lt!34374)))

(declare-fun b!75855 () Bool)

(declare-fun lt!34377 () Unit!2169)

(assert (=> b!75855 (= e!49539 lt!34377)))

(assert (=> b!75855 (= lt!34377 (lemmaContainsKeyImpliesGetValueByKeyDefined!86 (toList!738 (getCurrentListMap!429 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(assert (=> b!75855 (isDefined!87 (getValueByKey!133 (toList!738 (getCurrentListMap!429 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(declare-fun b!75856 () Bool)

(declare-fun Unit!2197 () Unit!2169)

(assert (=> b!75856 (= e!49539 Unit!2197)))

(declare-fun b!75857 () Bool)

(assert (=> b!75857 (= e!49538 (isDefined!87 (getValueByKey!133 (toList!738 (getCurrentListMap!429 (_keys!3890 newMap!16) (_values!2217 newMap!16) (mask!6211 newMap!16) (extraKeys!2089 newMap!16) (zeroValue!2134 newMap!16) (minValue!2134 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2234 newMap!16))) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355))))))

(assert (= (and d!18069 c!11560) b!75855))

(assert (= (and d!18069 (not c!11560)) b!75856))

(assert (= (and d!18069 (not res!39963)) b!75857))

(assert (=> d!18069 m!74389))

(declare-fun m!75565 () Bool)

(assert (=> d!18069 m!75565))

(assert (=> b!75855 m!74389))

(declare-fun m!75567 () Bool)

(assert (=> b!75855 m!75567))

(assert (=> b!75855 m!74389))

(declare-fun m!75569 () Bool)

(assert (=> b!75855 m!75569))

(assert (=> b!75855 m!75569))

(declare-fun m!75571 () Bool)

(assert (=> b!75855 m!75571))

(assert (=> b!75857 m!74389))

(assert (=> b!75857 m!75569))

(assert (=> b!75857 m!75569))

(assert (=> b!75857 m!75571))

(assert (=> b!75259 d!18069))

(assert (=> b!75259 d!17987))

(assert (=> d!17831 d!17837))

(declare-fun d!18071 () Bool)

(assert (=> d!18071 (arrayNoDuplicates!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) from!355 Nil!1511)))

(assert (=> d!18071 true))

(declare-fun _$71!99 () Unit!2169)

(assert (=> d!18071 (= (choose!39 (_keys!3890 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000000 from!355) _$71!99)))

(declare-fun bs!3247 () Bool)

(assert (= bs!3247 d!18071))

(assert (=> bs!3247 m!74387))

(assert (=> d!17831 d!18071))

(declare-fun d!18073 () Bool)

(declare-fun res!39964 () Bool)

(declare-fun e!49540 () Bool)

(assert (=> d!18073 (=> res!39964 e!49540)))

(assert (=> d!18073 (= res!39964 (= (select (arr!1864 (_keys!3890 newMap!16)) #b00000000000000000000000000000000) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355)))))

(assert (=> d!18073 (= (arrayContainsKey!0 (_keys!3890 newMap!16) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) #b00000000000000000000000000000000) e!49540)))

(declare-fun b!75858 () Bool)

(declare-fun e!49541 () Bool)

(assert (=> b!75858 (= e!49540 e!49541)))

(declare-fun res!39965 () Bool)

(assert (=> b!75858 (=> (not res!39965) (not e!49541))))

(assert (=> b!75858 (= res!39965 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2103 (_keys!3890 newMap!16))))))

(declare-fun b!75859 () Bool)

(assert (=> b!75859 (= e!49541 (arrayContainsKey!0 (_keys!3890 newMap!16) (select (arr!1864 (_keys!3890 (v!2549 (underlying!267 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!18073 (not res!39964)) b!75858))

(assert (= (and b!75858 res!39965) b!75859))

(assert (=> d!18073 m!74795))

(assert (=> b!75859 m!74389))

(declare-fun m!75573 () Bool)

(assert (=> b!75859 m!75573))

(assert (=> bm!6726 d!18073))

(declare-fun d!18075 () Bool)

(declare-fun res!39966 () Bool)

(declare-fun e!49542 () Bool)

(assert (=> d!18075 (=> (not res!39966) (not e!49542))))

(assert (=> d!18075 (= res!39966 (simpleValid!51 (v!2549 (underlying!267 thiss!992))))))

(assert (=> d!18075 (= (valid!297 (v!2549 (underlying!267 thiss!992))) e!49542)))

(declare-fun b!75860 () Bool)

(declare-fun res!39967 () Bool)

(assert (=> b!75860 (=> (not res!39967) (not e!49542))))

(assert (=> b!75860 (= res!39967 (= (arrayCountValidKeys!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000000 (size!2103 (_keys!3890 (v!2549 (underlying!267 thiss!992))))) (_size!400 (v!2549 (underlying!267 thiss!992)))))))

(declare-fun b!75861 () Bool)

(declare-fun res!39968 () Bool)

(assert (=> b!75861 (=> (not res!39968) (not e!49542))))

(assert (=> b!75861 (= res!39968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3890 (v!2549 (underlying!267 thiss!992))) (mask!6211 (v!2549 (underlying!267 thiss!992)))))))

(declare-fun b!75862 () Bool)

(assert (=> b!75862 (= e!49542 (arrayNoDuplicates!0 (_keys!3890 (v!2549 (underlying!267 thiss!992))) #b00000000000000000000000000000000 Nil!1511))))

(assert (= (and d!18075 res!39966) b!75860))

(assert (= (and b!75860 res!39967) b!75861))

(assert (= (and b!75861 res!39968) b!75862))

(declare-fun m!75575 () Bool)

(assert (=> d!18075 m!75575))

(declare-fun m!75577 () Bool)

(assert (=> b!75860 m!75577))

(assert (=> b!75861 m!74417))

(declare-fun m!75579 () Bool)

(assert (=> b!75862 m!75579))

(assert (=> d!17859 d!18075))

(declare-fun condMapEmpty!3209 () Bool)

(declare-fun mapDefault!3209 () ValueCell!897)

(assert (=> mapNonEmpty!3208 (= condMapEmpty!3209 (= mapRest!3208 ((as const (Array (_ BitVec 32) ValueCell!897)) mapDefault!3209)))))

(declare-fun e!49543 () Bool)

(declare-fun mapRes!3209 () Bool)

(assert (=> mapNonEmpty!3208 (= tp!8590 (and e!49543 mapRes!3209))))

(declare-fun b!75863 () Bool)

(declare-fun e!49544 () Bool)

(assert (=> b!75863 (= e!49544 tp_is_empty!2481)))

(declare-fun b!75864 () Bool)

(assert (=> b!75864 (= e!49543 tp_is_empty!2481)))

(declare-fun mapNonEmpty!3209 () Bool)

(declare-fun tp!8591 () Bool)

(assert (=> mapNonEmpty!3209 (= mapRes!3209 (and tp!8591 e!49544))))

(declare-fun mapKey!3209 () (_ BitVec 32))

(declare-fun mapValue!3209 () ValueCell!897)

(declare-fun mapRest!3209 () (Array (_ BitVec 32) ValueCell!897))

(assert (=> mapNonEmpty!3209 (= mapRest!3208 (store mapRest!3209 mapKey!3209 mapValue!3209))))

(declare-fun mapIsEmpty!3209 () Bool)

(assert (=> mapIsEmpty!3209 mapRes!3209))

(assert (= (and mapNonEmpty!3208 condMapEmpty!3209) mapIsEmpty!3209))

(assert (= (and mapNonEmpty!3208 (not condMapEmpty!3209)) mapNonEmpty!3209))

(assert (= (and mapNonEmpty!3209 ((_ is ValueCellFull!897) mapValue!3209)) b!75863))

(assert (= (and mapNonEmpty!3208 ((_ is ValueCellFull!897) mapDefault!3209)) b!75864))

(declare-fun m!75581 () Bool)

(assert (=> mapNonEmpty!3209 m!75581))

(declare-fun condMapEmpty!3210 () Bool)

(declare-fun mapDefault!3210 () ValueCell!897)

(assert (=> mapNonEmpty!3207 (= condMapEmpty!3210 (= mapRest!3207 ((as const (Array (_ BitVec 32) ValueCell!897)) mapDefault!3210)))))

(declare-fun e!49545 () Bool)

(declare-fun mapRes!3210 () Bool)

(assert (=> mapNonEmpty!3207 (= tp!8589 (and e!49545 mapRes!3210))))

(declare-fun b!75865 () Bool)

(declare-fun e!49546 () Bool)

(assert (=> b!75865 (= e!49546 tp_is_empty!2481)))

(declare-fun b!75866 () Bool)

(assert (=> b!75866 (= e!49545 tp_is_empty!2481)))

(declare-fun mapNonEmpty!3210 () Bool)

(declare-fun tp!8592 () Bool)

(assert (=> mapNonEmpty!3210 (= mapRes!3210 (and tp!8592 e!49546))))

(declare-fun mapValue!3210 () ValueCell!897)

(declare-fun mapRest!3210 () (Array (_ BitVec 32) ValueCell!897))

(declare-fun mapKey!3210 () (_ BitVec 32))

(assert (=> mapNonEmpty!3210 (= mapRest!3207 (store mapRest!3210 mapKey!3210 mapValue!3210))))

(declare-fun mapIsEmpty!3210 () Bool)

(assert (=> mapIsEmpty!3210 mapRes!3210))

(assert (= (and mapNonEmpty!3207 condMapEmpty!3210) mapIsEmpty!3210))

(assert (= (and mapNonEmpty!3207 (not condMapEmpty!3210)) mapNonEmpty!3210))

(assert (= (and mapNonEmpty!3210 ((_ is ValueCellFull!897) mapValue!3210)) b!75865))

(assert (= (and mapNonEmpty!3207 ((_ is ValueCellFull!897) mapDefault!3210)) b!75866))

(declare-fun m!75583 () Bool)

(assert (=> mapNonEmpty!3210 m!75583))

(declare-fun b_lambda!3411 () Bool)

(assert (= b_lambda!3401 (or (and b!74991 b_free!2129) (and b!74997 b_free!2131 (= (defaultEntry!2234 newMap!16) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))))) b_lambda!3411)))

(declare-fun b_lambda!3413 () Bool)

(assert (= b_lambda!3407 (or (and b!74991 b_free!2129 (= (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) (defaultEntry!2234 newMap!16))) (and b!74997 b_free!2131) b_lambda!3413)))

(declare-fun b_lambda!3415 () Bool)

(assert (= b_lambda!3403 (or (and b!74991 b_free!2129) (and b!74997 b_free!2131 (= (defaultEntry!2234 newMap!16) (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))))) b_lambda!3415)))

(declare-fun b_lambda!3417 () Bool)

(assert (= b_lambda!3405 (or (and b!74991 b_free!2129 (= (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) (defaultEntry!2234 newMap!16))) (and b!74997 b_free!2131) b_lambda!3417)))

(declare-fun b_lambda!3419 () Bool)

(assert (= b_lambda!3409 (or (and b!74991 b_free!2129 (= (defaultEntry!2234 (v!2549 (underlying!267 thiss!992))) (defaultEntry!2234 newMap!16))) (and b!74997 b_free!2131) b_lambda!3419)))

(check-sat (not b!75389) (not bm!6763) (not b!75861) (not b!75826) (not d!17977) (not d!18057) (not b!75768) (not d!18075) (not b!75706) (not b!75506) (not d!17945) (not d!18065) (not b!75488) (not d!18007) (not b!75792) (not b!75411) (not bm!6783) (not d!17875) (not bm!6739) (not b!75560) (not d!17975) (not b!75630) (not d!17927) (not b!75563) (not b!75553) (not b!75578) (not b!75790) (not d!18045) (not d!17907) (not b!75750) (not b!75793) (not b!75820) (not b_next!2131) (not b!75700) (not b!75838) (not d!17985) (not b!75771) (not d!17993) (not d!17933) (not d!18059) (not b!75828) (not d!17983) (not b!75628) (not d!17935) (not b!75818) (not b!75677) (not b!75782) (not b!75668) (not b_next!2129) (not d!17943) (not b!75857) (not d!17979) (not b!75741) (not b_lambda!3397) (not d!18001) (not d!17923) (not b!75660) (not b!75675) (not b!75836) (not b!75580) (not b!75430) (not b!75690) (not b!75437) (not b!75823) (not b!75766) (not b!75707) (not b!75749) (not d!18017) (not b!75458) (not b!75589) (not b!75674) (not d!18069) (not bm!6775) (not b!75779) (not d!18019) (not d!17959) (not d!18071) (not b!75556) (not d!17949) (not b!75583) (not b!75725) (not bm!6743) (not b!75731) (not d!17869) (not bm!6782) (not b!75574) b_and!4635 (not b!75802) (not b!75854) (not d!17871) (not b!75740) (not b!75405) (not b_lambda!3419) (not b!75769) (not b!75695) (not b_lambda!3387) (not b!75507) (not b!75785) (not b!75739) (not b!75620) (not d!17963) (not d!17939) (not b!75671) (not b!75629) (not d!17947) (not b!75555) (not d!17891) (not b!75676) (not b!75805) (not bm!6789) (not b!75730) (not bm!6772) (not b!75562) (not d!17865) (not b!75622) (not b!75394) (not b!75754) (not b!75659) (not bm!6795) (not b!75487) (not b!75584) (not b!75667) (not bm!6778) (not d!17967) (not b!75573) (not b!75670) (not b!75654) (not d!17931) (not d!17913) (not bm!6781) (not bm!6792) (not b!75561) (not b!75435) (not b!75651) (not d!17867) (not d!18035) (not d!18029) (not b_lambda!3417) (not d!18043) (not b!75634) (not d!17955) (not d!17911) (not b!75815) (not b!75847) (not bm!6737) (not b!75564) (not b!75780) (not d!18049) (not b!75715) (not b!75851) (not b_lambda!3411) (not d!17973) (not b!75688) (not b!75784) (not d!17953) (not b!75557) (not b!75855) (not b!75760) (not b!75729) (not b!75713) (not b!75733) (not b!75577) (not mapNonEmpty!3210) (not b!75547) (not b!75752) (not b!75763) (not b_lambda!3413) (not b_lambda!3415) (not b!75751) (not b_lambda!3399) (not b!75759) (not b!75720) (not mapNonEmpty!3209) (not bm!6765) (not b!75438) (not d!17879) (not d!17887) (not bm!6791) (not b!75571) (not b!75388) (not b!75403) (not b!75416) (not bm!6788) (not b!75860) (not d!18055) (not d!17917) (not b!75712) (not b!75582) (not b!75841) (not b!75390) (not b!75646) (not b!75617) (not b!75402) (not bm!6776) (not b!75687) (not b!75627) (not b!75576) tp_is_empty!2481 (not d!18015) (not d!18009) (not b!75433) (not b!75398) (not d!18039) b_and!4633 (not b!75842) (not b!75669) (not b!75795) (not b!75508) (not d!17951) (not b!75682) (not bm!6766) (not d!17981) (not b!75440) (not d!17937) (not b!75396) (not d!18013) (not d!17941) (not d!17905) (not b!75761) (not b!75705) (not d!17909) (not d!17899) (not d!17877) (not b_lambda!3395) (not b!75787) (not b!75412) (not b!75422) (not b!75393) (not b!75554) (not b!75862) (not b!75415) (not bm!6762) (not b!75665) (not d!18021) (not b!75586) (not b!75680) (not d!18027) (not bm!6744) (not b!75400) (not d!17901) (not d!18031) (not b!75672) (not b!75423) (not b!75657) (not d!17881) (not b!75816) (not bm!6751) (not b!75451) (not b!75673) (not d!18003) (not d!18023) (not bm!6790) (not b!75825) (not b!75835) (not b!75480) (not bm!6771) (not d!17889) (not d!18047) (not b!75621) (not b!75859) (not d!17863) (not b!75417) (not d!17883) (not b!75399) (not d!17999) (not b!75778) (not b!75632) (not b!75457) (not bm!6742) (not d!17987) (not bm!6785) (not bm!6801) (not b!75619) (not d!18067) (not b!75570) (not d!18051) (not bm!6798) (not d!17965) (not b!75681) (not d!17957) (not d!17897) (not b!75702) (not b!75743) (not d!17893) (not b!75425) (not b!75803))
(check-sat b_and!4633 b_and!4635 (not b_next!2129) (not b_next!2131))
