; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84446 () Bool)

(assert start!84446)

(declare-fun b_free!19989 () Bool)

(declare-fun b_next!19989 () Bool)

(assert (=> start!84446 (= b_free!19989 (not b_next!19989))))

(declare-fun tp!69746 () Bool)

(declare-fun b_and!32059 () Bool)

(assert (=> start!84446 (= tp!69746 b_and!32059)))

(declare-fun b!987288 () Bool)

(declare-fun e!556750 () Bool)

(declare-fun tp_is_empty!23205 () Bool)

(assert (=> b!987288 (= e!556750 tp_is_empty!23205)))

(declare-fun b!987289 () Bool)

(declare-fun e!556748 () Bool)

(declare-fun mapRes!36839 () Bool)

(assert (=> b!987289 (= e!556748 (and e!556750 mapRes!36839))))

(declare-fun condMapEmpty!36839 () Bool)

(declare-datatypes ((V!35923 0))(
  ( (V!35924 (val!11653 Int)) )
))
(declare-datatypes ((ValueCell!11121 0))(
  ( (ValueCellFull!11121 (v!14216 V!35923)) (EmptyCell!11121) )
))
(declare-datatypes ((array!62357 0))(
  ( (array!62358 (arr!30031 (Array (_ BitVec 32) ValueCell!11121)) (size!30511 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62357)

(declare-fun mapDefault!36839 () ValueCell!11121)

(assert (=> b!987289 (= condMapEmpty!36839 (= (arr!30031 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11121)) mapDefault!36839)))))

(declare-fun b!987290 () Bool)

(declare-fun res!660606 () Bool)

(declare-fun e!556751 () Bool)

(assert (=> b!987290 (=> (not res!660606) (not e!556751))))

(declare-datatypes ((array!62359 0))(
  ( (array!62360 (arr!30032 (Array (_ BitVec 32) (_ BitVec 64))) (size!30512 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62359)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62359 (_ BitVec 32)) Bool)

(assert (=> b!987290 (= res!660606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!987291 () Bool)

(declare-fun res!660608 () Bool)

(assert (=> b!987291 (=> (not res!660608) (not e!556751))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!987291 (= res!660608 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30512 _keys!1544))))))

(declare-fun b!987292 () Bool)

(declare-fun res!660604 () Bool)

(assert (=> b!987292 (=> (not res!660604) (not e!556751))))

(declare-datatypes ((List!20893 0))(
  ( (Nil!20890) (Cons!20889 (h!22051 (_ BitVec 64)) (t!29818 List!20893)) )
))
(declare-fun arrayNoDuplicates!0 (array!62359 (_ BitVec 32) List!20893) Bool)

(assert (=> b!987292 (= res!660604 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20890))))

(declare-fun b!987293 () Bool)

(declare-fun res!660605 () Bool)

(assert (=> b!987293 (=> (not res!660605) (not e!556751))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!987293 (= res!660605 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!660607 () Bool)

(assert (=> start!84446 (=> (not res!660607) (not e!556751))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84446 (= res!660607 (validMask!0 mask!1948))))

(assert (=> start!84446 e!556751))

(assert (=> start!84446 true))

(assert (=> start!84446 tp_is_empty!23205))

(declare-fun array_inv!23065 (array!62357) Bool)

(assert (=> start!84446 (and (array_inv!23065 _values!1278) e!556748)))

(assert (=> start!84446 tp!69746))

(declare-fun array_inv!23066 (array!62359) Bool)

(assert (=> start!84446 (array_inv!23066 _keys!1544)))

(declare-fun mapIsEmpty!36839 () Bool)

(assert (=> mapIsEmpty!36839 mapRes!36839))

(declare-fun b!987294 () Bool)

(declare-fun res!660609 () Bool)

(assert (=> b!987294 (=> (not res!660609) (not e!556751))))

(assert (=> b!987294 (= res!660609 (and (= (size!30511 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30512 _keys!1544) (size!30511 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!987295 () Bool)

(declare-fun e!556747 () Bool)

(assert (=> b!987295 (= e!556747 tp_is_empty!23205)))

(declare-fun b!987296 () Bool)

(assert (=> b!987296 (= e!556751 (not (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!30032 _keys!1544) from!1932)))))))

(declare-datatypes ((tuple2!14942 0))(
  ( (tuple2!14943 (_1!7481 (_ BitVec 64)) (_2!7481 V!35923)) )
))
(declare-datatypes ((List!20894 0))(
  ( (Nil!20891) (Cons!20890 (h!22052 tuple2!14942) (t!29819 List!20894)) )
))
(declare-datatypes ((ListLongMap!13653 0))(
  ( (ListLongMap!13654 (toList!6842 List!20894)) )
))
(declare-fun lt!437685 () ListLongMap!13653)

(declare-fun lt!437683 () tuple2!14942)

(declare-fun lt!437686 () tuple2!14942)

(declare-fun +!3030 (ListLongMap!13653 tuple2!14942) ListLongMap!13653)

(assert (=> b!987296 (= (+!3030 (+!3030 lt!437685 lt!437683) lt!437686) (+!3030 (+!3030 lt!437685 lt!437686) lt!437683))))

(declare-fun lt!437684 () V!35923)

(assert (=> b!987296 (= lt!437686 (tuple2!14943 (select (arr!30032 _keys!1544) from!1932) lt!437684))))

(declare-fun minValue!1220 () V!35923)

(assert (=> b!987296 (= lt!437683 (tuple2!14943 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32725 0))(
  ( (Unit!32726) )
))
(declare-fun lt!437682 () Unit!32725)

(declare-fun addCommutativeForDiffKeys!686 (ListLongMap!13653 (_ BitVec 64) V!35923 (_ BitVec 64) V!35923) Unit!32725)

(assert (=> b!987296 (= lt!437682 (addCommutativeForDiffKeys!686 lt!437685 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30032 _keys!1544) from!1932) lt!437684))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15596 (ValueCell!11121 V!35923) V!35923)

(declare-fun dynLambda!1861 (Int (_ BitVec 64)) V!35923)

(assert (=> b!987296 (= lt!437684 (get!15596 (select (arr!30031 _values!1278) from!1932) (dynLambda!1861 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35923)

(declare-fun getCurrentListMapNoExtraKeys!3495 (array!62359 array!62357 (_ BitVec 32) (_ BitVec 32) V!35923 V!35923 (_ BitVec 32) Int) ListLongMap!13653)

(assert (=> b!987296 (= lt!437685 (+!3030 (getCurrentListMapNoExtraKeys!3495 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14943 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!987297 () Bool)

(declare-fun res!660603 () Bool)

(assert (=> b!987297 (=> (not res!660603) (not e!556751))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!987297 (= res!660603 (validKeyInArray!0 (select (arr!30032 _keys!1544) from!1932)))))

(declare-fun mapNonEmpty!36839 () Bool)

(declare-fun tp!69745 () Bool)

(assert (=> mapNonEmpty!36839 (= mapRes!36839 (and tp!69745 e!556747))))

(declare-fun mapValue!36839 () ValueCell!11121)

(declare-fun mapKey!36839 () (_ BitVec 32))

(declare-fun mapRest!36839 () (Array (_ BitVec 32) ValueCell!11121))

(assert (=> mapNonEmpty!36839 (= (arr!30031 _values!1278) (store mapRest!36839 mapKey!36839 mapValue!36839))))

(assert (= (and start!84446 res!660607) b!987294))

(assert (= (and b!987294 res!660609) b!987290))

(assert (= (and b!987290 res!660606) b!987292))

(assert (= (and b!987292 res!660604) b!987291))

(assert (= (and b!987291 res!660608) b!987297))

(assert (= (and b!987297 res!660603) b!987293))

(assert (= (and b!987293 res!660605) b!987296))

(assert (= (and b!987289 condMapEmpty!36839) mapIsEmpty!36839))

(assert (= (and b!987289 (not condMapEmpty!36839)) mapNonEmpty!36839))

(get-info :version)

(assert (= (and mapNonEmpty!36839 ((_ is ValueCellFull!11121) mapValue!36839)) b!987295))

(assert (= (and b!987289 ((_ is ValueCellFull!11121) mapDefault!36839)) b!987288))

(assert (= start!84446 b!987289))

(declare-fun b_lambda!15041 () Bool)

(assert (=> (not b_lambda!15041) (not b!987296)))

(declare-fun t!29817 () Bool)

(declare-fun tb!6775 () Bool)

(assert (=> (and start!84446 (= defaultEntry!1281 defaultEntry!1281) t!29817) tb!6775))

(declare-fun result!13533 () Bool)

(assert (=> tb!6775 (= result!13533 tp_is_empty!23205)))

(assert (=> b!987296 t!29817))

(declare-fun b_and!32061 () Bool)

(assert (= b_and!32059 (and (=> t!29817 result!13533) b_and!32061)))

(declare-fun m!913991 () Bool)

(assert (=> b!987292 m!913991))

(declare-fun m!913993 () Bool)

(assert (=> start!84446 m!913993))

(declare-fun m!913995 () Bool)

(assert (=> start!84446 m!913995))

(declare-fun m!913997 () Bool)

(assert (=> start!84446 m!913997))

(declare-fun m!913999 () Bool)

(assert (=> b!987297 m!913999))

(assert (=> b!987297 m!913999))

(declare-fun m!914001 () Bool)

(assert (=> b!987297 m!914001))

(declare-fun m!914003 () Bool)

(assert (=> b!987290 m!914003))

(assert (=> b!987296 m!913999))

(declare-fun m!914005 () Bool)

(assert (=> b!987296 m!914005))

(declare-fun m!914007 () Bool)

(assert (=> b!987296 m!914007))

(declare-fun m!914009 () Bool)

(assert (=> b!987296 m!914009))

(declare-fun m!914011 () Bool)

(assert (=> b!987296 m!914011))

(declare-fun m!914013 () Bool)

(assert (=> b!987296 m!914013))

(assert (=> b!987296 m!913999))

(declare-fun m!914015 () Bool)

(assert (=> b!987296 m!914015))

(assert (=> b!987296 m!914011))

(declare-fun m!914017 () Bool)

(assert (=> b!987296 m!914017))

(declare-fun m!914019 () Bool)

(assert (=> b!987296 m!914019))

(assert (=> b!987296 m!914005))

(assert (=> b!987296 m!914019))

(declare-fun m!914021 () Bool)

(assert (=> b!987296 m!914021))

(assert (=> b!987296 m!914007))

(assert (=> b!987296 m!914013))

(declare-fun m!914023 () Bool)

(assert (=> b!987296 m!914023))

(declare-fun m!914025 () Bool)

(assert (=> mapNonEmpty!36839 m!914025))

(check-sat b_and!32061 (not b!987296) (not b!987292) (not b!987297) (not b_lambda!15041) (not start!84446) (not b!987290) tp_is_empty!23205 (not b_next!19989) (not mapNonEmpty!36839))
(check-sat b_and!32061 (not b_next!19989))
(get-model)

(declare-fun b_lambda!15045 () Bool)

(assert (= b_lambda!15041 (or (and start!84446 b_free!19989) b_lambda!15045)))

(check-sat b_and!32061 (not b!987296) (not b!987292) (not b!987297) (not start!84446) (not b_lambda!15045) (not b!987290) tp_is_empty!23205 (not b_next!19989) (not mapNonEmpty!36839))
(check-sat b_and!32061 (not b_next!19989))
(get-model)

(declare-fun d!116847 () Bool)

(assert (=> d!116847 (= (validKeyInArray!0 (select (arr!30032 _keys!1544) from!1932)) (and (not (= (select (arr!30032 _keys!1544) from!1932) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30032 _keys!1544) from!1932) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!987297 d!116847))

(declare-fun d!116849 () Bool)

(assert (=> d!116849 (= (validMask!0 mask!1948) (and (or (= mask!1948 #b00000000000000000000000000000111) (= mask!1948 #b00000000000000000000000000001111) (= mask!1948 #b00000000000000000000000000011111) (= mask!1948 #b00000000000000000000000000111111) (= mask!1948 #b00000000000000000000000001111111) (= mask!1948 #b00000000000000000000000011111111) (= mask!1948 #b00000000000000000000000111111111) (= mask!1948 #b00000000000000000000001111111111) (= mask!1948 #b00000000000000000000011111111111) (= mask!1948 #b00000000000000000000111111111111) (= mask!1948 #b00000000000000000001111111111111) (= mask!1948 #b00000000000000000011111111111111) (= mask!1948 #b00000000000000000111111111111111) (= mask!1948 #b00000000000000001111111111111111) (= mask!1948 #b00000000000000011111111111111111) (= mask!1948 #b00000000000000111111111111111111) (= mask!1948 #b00000000000001111111111111111111) (= mask!1948 #b00000000000011111111111111111111) (= mask!1948 #b00000000000111111111111111111111) (= mask!1948 #b00000000001111111111111111111111) (= mask!1948 #b00000000011111111111111111111111) (= mask!1948 #b00000000111111111111111111111111) (= mask!1948 #b00000001111111111111111111111111) (= mask!1948 #b00000011111111111111111111111111) (= mask!1948 #b00000111111111111111111111111111) (= mask!1948 #b00001111111111111111111111111111) (= mask!1948 #b00011111111111111111111111111111) (= mask!1948 #b00111111111111111111111111111111)) (bvsle mask!1948 #b00111111111111111111111111111111)))))

(assert (=> start!84446 d!116849))

(declare-fun d!116851 () Bool)

(assert (=> d!116851 (= (array_inv!23065 _values!1278) (bvsge (size!30511 _values!1278) #b00000000000000000000000000000000))))

(assert (=> start!84446 d!116851))

(declare-fun d!116853 () Bool)

(assert (=> d!116853 (= (array_inv!23066 _keys!1544) (bvsge (size!30512 _keys!1544) #b00000000000000000000000000000000))))

(assert (=> start!84446 d!116853))

(declare-fun d!116855 () Bool)

(declare-fun e!556769 () Bool)

(assert (=> d!116855 e!556769))

(declare-fun res!660635 () Bool)

(assert (=> d!116855 (=> (not res!660635) (not e!556769))))

(declare-fun lt!437711 () ListLongMap!13653)

(declare-fun contains!5719 (ListLongMap!13653 (_ BitVec 64)) Bool)

(assert (=> d!116855 (= res!660635 (contains!5719 lt!437711 (_1!7481 (tuple2!14943 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(declare-fun lt!437710 () List!20894)

(assert (=> d!116855 (= lt!437711 (ListLongMap!13654 lt!437710))))

(declare-fun lt!437713 () Unit!32725)

(declare-fun lt!437712 () Unit!32725)

(assert (=> d!116855 (= lt!437713 lt!437712)))

(declare-datatypes ((Option!520 0))(
  ( (Some!519 (v!14218 V!35923)) (None!518) )
))
(declare-fun getValueByKey!514 (List!20894 (_ BitVec 64)) Option!520)

(assert (=> d!116855 (= (getValueByKey!514 lt!437710 (_1!7481 (tuple2!14943 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))) (Some!519 (_2!7481 (tuple2!14943 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(declare-fun lemmaContainsTupThenGetReturnValue!271 (List!20894 (_ BitVec 64) V!35923) Unit!32725)

(assert (=> d!116855 (= lt!437712 (lemmaContainsTupThenGetReturnValue!271 lt!437710 (_1!7481 (tuple2!14943 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) (_2!7481 (tuple2!14943 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(declare-fun insertStrictlySorted!327 (List!20894 (_ BitVec 64) V!35923) List!20894)

(assert (=> d!116855 (= lt!437710 (insertStrictlySorted!327 (toList!6842 (getCurrentListMapNoExtraKeys!3495 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281)) (_1!7481 (tuple2!14943 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) (_2!7481 (tuple2!14943 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))))

(assert (=> d!116855 (= (+!3030 (getCurrentListMapNoExtraKeys!3495 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14943 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)) lt!437711)))

(declare-fun b!987336 () Bool)

(declare-fun res!660636 () Bool)

(assert (=> b!987336 (=> (not res!660636) (not e!556769))))

(assert (=> b!987336 (= res!660636 (= (getValueByKey!514 (toList!6842 lt!437711) (_1!7481 (tuple2!14943 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))) (Some!519 (_2!7481 (tuple2!14943 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))))

(declare-fun b!987337 () Bool)

(declare-fun contains!5720 (List!20894 tuple2!14942) Bool)

(assert (=> b!987337 (= e!556769 (contains!5720 (toList!6842 lt!437711) (tuple2!14943 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(assert (= (and d!116855 res!660635) b!987336))

(assert (= (and b!987336 res!660636) b!987337))

(declare-fun m!914063 () Bool)

(assert (=> d!116855 m!914063))

(declare-fun m!914065 () Bool)

(assert (=> d!116855 m!914065))

(declare-fun m!914067 () Bool)

(assert (=> d!116855 m!914067))

(declare-fun m!914069 () Bool)

(assert (=> d!116855 m!914069))

(declare-fun m!914071 () Bool)

(assert (=> b!987336 m!914071))

(declare-fun m!914073 () Bool)

(assert (=> b!987337 m!914073))

(assert (=> b!987296 d!116855))

(declare-fun d!116857 () Bool)

(assert (=> d!116857 (= (+!3030 (+!3030 lt!437685 (tuple2!14943 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)) (tuple2!14943 (select (arr!30032 _keys!1544) from!1932) lt!437684)) (+!3030 (+!3030 lt!437685 (tuple2!14943 (select (arr!30032 _keys!1544) from!1932) lt!437684)) (tuple2!14943 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220)))))

(declare-fun lt!437716 () Unit!32725)

(declare-fun choose!1612 (ListLongMap!13653 (_ BitVec 64) V!35923 (_ BitVec 64) V!35923) Unit!32725)

(assert (=> d!116857 (= lt!437716 (choose!1612 lt!437685 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30032 _keys!1544) from!1932) lt!437684))))

(assert (=> d!116857 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!30032 _keys!1544) from!1932)))))

(assert (=> d!116857 (= (addCommutativeForDiffKeys!686 lt!437685 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30032 _keys!1544) from!1932) lt!437684) lt!437716)))

(declare-fun bs!28013 () Bool)

(assert (= bs!28013 d!116857))

(declare-fun m!914075 () Bool)

(assert (=> bs!28013 m!914075))

(declare-fun m!914077 () Bool)

(assert (=> bs!28013 m!914077))

(declare-fun m!914079 () Bool)

(assert (=> bs!28013 m!914079))

(assert (=> bs!28013 m!913999))

(declare-fun m!914081 () Bool)

(assert (=> bs!28013 m!914081))

(assert (=> bs!28013 m!914077))

(assert (=> bs!28013 m!914075))

(declare-fun m!914083 () Bool)

(assert (=> bs!28013 m!914083))

(assert (=> b!987296 d!116857))

(declare-fun d!116859 () Bool)

(declare-fun e!556770 () Bool)

(assert (=> d!116859 e!556770))

(declare-fun res!660637 () Bool)

(assert (=> d!116859 (=> (not res!660637) (not e!556770))))

(declare-fun lt!437718 () ListLongMap!13653)

(assert (=> d!116859 (= res!660637 (contains!5719 lt!437718 (_1!7481 lt!437686)))))

(declare-fun lt!437717 () List!20894)

(assert (=> d!116859 (= lt!437718 (ListLongMap!13654 lt!437717))))

(declare-fun lt!437720 () Unit!32725)

(declare-fun lt!437719 () Unit!32725)

(assert (=> d!116859 (= lt!437720 lt!437719)))

(assert (=> d!116859 (= (getValueByKey!514 lt!437717 (_1!7481 lt!437686)) (Some!519 (_2!7481 lt!437686)))))

(assert (=> d!116859 (= lt!437719 (lemmaContainsTupThenGetReturnValue!271 lt!437717 (_1!7481 lt!437686) (_2!7481 lt!437686)))))

(assert (=> d!116859 (= lt!437717 (insertStrictlySorted!327 (toList!6842 lt!437685) (_1!7481 lt!437686) (_2!7481 lt!437686)))))

(assert (=> d!116859 (= (+!3030 lt!437685 lt!437686) lt!437718)))

(declare-fun b!987338 () Bool)

(declare-fun res!660638 () Bool)

(assert (=> b!987338 (=> (not res!660638) (not e!556770))))

(assert (=> b!987338 (= res!660638 (= (getValueByKey!514 (toList!6842 lt!437718) (_1!7481 lt!437686)) (Some!519 (_2!7481 lt!437686))))))

(declare-fun b!987339 () Bool)

(assert (=> b!987339 (= e!556770 (contains!5720 (toList!6842 lt!437718) lt!437686))))

(assert (= (and d!116859 res!660637) b!987338))

(assert (= (and b!987338 res!660638) b!987339))

(declare-fun m!914085 () Bool)

(assert (=> d!116859 m!914085))

(declare-fun m!914087 () Bool)

(assert (=> d!116859 m!914087))

(declare-fun m!914089 () Bool)

(assert (=> d!116859 m!914089))

(declare-fun m!914091 () Bool)

(assert (=> d!116859 m!914091))

(declare-fun m!914093 () Bool)

(assert (=> b!987338 m!914093))

(declare-fun m!914095 () Bool)

(assert (=> b!987339 m!914095))

(assert (=> b!987296 d!116859))

(declare-fun d!116861 () Bool)

(declare-fun e!556771 () Bool)

(assert (=> d!116861 e!556771))

(declare-fun res!660639 () Bool)

(assert (=> d!116861 (=> (not res!660639) (not e!556771))))

(declare-fun lt!437722 () ListLongMap!13653)

(assert (=> d!116861 (= res!660639 (contains!5719 lt!437722 (_1!7481 lt!437683)))))

(declare-fun lt!437721 () List!20894)

(assert (=> d!116861 (= lt!437722 (ListLongMap!13654 lt!437721))))

(declare-fun lt!437724 () Unit!32725)

(declare-fun lt!437723 () Unit!32725)

(assert (=> d!116861 (= lt!437724 lt!437723)))

(assert (=> d!116861 (= (getValueByKey!514 lt!437721 (_1!7481 lt!437683)) (Some!519 (_2!7481 lt!437683)))))

(assert (=> d!116861 (= lt!437723 (lemmaContainsTupThenGetReturnValue!271 lt!437721 (_1!7481 lt!437683) (_2!7481 lt!437683)))))

(assert (=> d!116861 (= lt!437721 (insertStrictlySorted!327 (toList!6842 (+!3030 lt!437685 lt!437686)) (_1!7481 lt!437683) (_2!7481 lt!437683)))))

(assert (=> d!116861 (= (+!3030 (+!3030 lt!437685 lt!437686) lt!437683) lt!437722)))

(declare-fun b!987340 () Bool)

(declare-fun res!660640 () Bool)

(assert (=> b!987340 (=> (not res!660640) (not e!556771))))

(assert (=> b!987340 (= res!660640 (= (getValueByKey!514 (toList!6842 lt!437722) (_1!7481 lt!437683)) (Some!519 (_2!7481 lt!437683))))))

(declare-fun b!987341 () Bool)

(assert (=> b!987341 (= e!556771 (contains!5720 (toList!6842 lt!437722) lt!437683))))

(assert (= (and d!116861 res!660639) b!987340))

(assert (= (and b!987340 res!660640) b!987341))

(declare-fun m!914097 () Bool)

(assert (=> d!116861 m!914097))

(declare-fun m!914099 () Bool)

(assert (=> d!116861 m!914099))

(declare-fun m!914101 () Bool)

(assert (=> d!116861 m!914101))

(declare-fun m!914103 () Bool)

(assert (=> d!116861 m!914103))

(declare-fun m!914105 () Bool)

(assert (=> b!987340 m!914105))

(declare-fun m!914107 () Bool)

(assert (=> b!987341 m!914107))

(assert (=> b!987296 d!116861))

(declare-fun b!987366 () Bool)

(declare-fun e!556790 () ListLongMap!13653)

(declare-fun call!41805 () ListLongMap!13653)

(assert (=> b!987366 (= e!556790 call!41805)))

(declare-fun d!116863 () Bool)

(declare-fun e!556792 () Bool)

(assert (=> d!116863 e!556792))

(declare-fun res!660650 () Bool)

(assert (=> d!116863 (=> (not res!660650) (not e!556792))))

(declare-fun lt!437745 () ListLongMap!13653)

(assert (=> d!116863 (= res!660650 (not (contains!5719 lt!437745 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!556788 () ListLongMap!13653)

(assert (=> d!116863 (= lt!437745 e!556788)))

(declare-fun c!99967 () Bool)

(assert (=> d!116863 (= c!99967 (bvsge (bvadd #b00000000000000000000000000000001 from!1932) (size!30512 _keys!1544)))))

(assert (=> d!116863 (validMask!0 mask!1948)))

(assert (=> d!116863 (= (getCurrentListMapNoExtraKeys!3495 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) lt!437745)))

(declare-fun b!987367 () Bool)

(declare-fun e!556786 () Bool)

(assert (=> b!987367 (= e!556786 (= lt!437745 (getCurrentListMapNoExtraKeys!3495 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) defaultEntry!1281)))))

(declare-fun b!987368 () Bool)

(assert (=> b!987368 (= e!556788 (ListLongMap!13654 Nil!20891))))

(declare-fun bm!41802 () Bool)

(assert (=> bm!41802 (= call!41805 (getCurrentListMapNoExtraKeys!3495 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932 #b00000000000000000000000000000001) defaultEntry!1281))))

(declare-fun b!987369 () Bool)

(declare-fun e!556791 () Bool)

(declare-fun e!556789 () Bool)

(assert (=> b!987369 (= e!556791 e!556789)))

(assert (=> b!987369 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30512 _keys!1544)))))

(declare-fun res!660649 () Bool)

(assert (=> b!987369 (= res!660649 (contains!5719 lt!437745 (select (arr!30032 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!987369 (=> (not res!660649) (not e!556789))))

(declare-fun b!987370 () Bool)

(assert (=> b!987370 (= e!556792 e!556791)))

(declare-fun c!99968 () Bool)

(declare-fun e!556787 () Bool)

(assert (=> b!987370 (= c!99968 e!556787)))

(declare-fun res!660652 () Bool)

(assert (=> b!987370 (=> (not res!660652) (not e!556787))))

(assert (=> b!987370 (= res!660652 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30512 _keys!1544)))))

(declare-fun b!987371 () Bool)

(declare-fun isEmpty!724 (ListLongMap!13653) Bool)

(assert (=> b!987371 (= e!556786 (isEmpty!724 lt!437745))))

(declare-fun b!987372 () Bool)

(declare-fun res!660651 () Bool)

(assert (=> b!987372 (=> (not res!660651) (not e!556792))))

(assert (=> b!987372 (= res!660651 (not (contains!5719 lt!437745 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!987373 () Bool)

(assert (=> b!987373 (= e!556787 (validKeyInArray!0 (select (arr!30032 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(assert (=> b!987373 (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))

(declare-fun b!987374 () Bool)

(declare-fun lt!437743 () Unit!32725)

(declare-fun lt!437739 () Unit!32725)

(assert (=> b!987374 (= lt!437743 lt!437739)))

(declare-fun lt!437740 () (_ BitVec 64))

(declare-fun lt!437742 () V!35923)

(declare-fun lt!437744 () ListLongMap!13653)

(declare-fun lt!437741 () (_ BitVec 64))

(assert (=> b!987374 (not (contains!5719 (+!3030 lt!437744 (tuple2!14943 lt!437741 lt!437742)) lt!437740))))

(declare-fun addStillNotContains!233 (ListLongMap!13653 (_ BitVec 64) V!35923 (_ BitVec 64)) Unit!32725)

(assert (=> b!987374 (= lt!437739 (addStillNotContains!233 lt!437744 lt!437741 lt!437742 lt!437740))))

(assert (=> b!987374 (= lt!437740 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!987374 (= lt!437742 (get!15596 (select (arr!30031 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1861 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!987374 (= lt!437741 (select (arr!30032 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)))))

(assert (=> b!987374 (= lt!437744 call!41805)))

(assert (=> b!987374 (= e!556790 (+!3030 call!41805 (tuple2!14943 (select (arr!30032 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932)) (get!15596 (select (arr!30031 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1861 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!987375 () Bool)

(assert (=> b!987375 (= e!556791 e!556786)))

(declare-fun c!99969 () Bool)

(assert (=> b!987375 (= c!99969 (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30512 _keys!1544)))))

(declare-fun b!987376 () Bool)

(assert (=> b!987376 (= e!556788 e!556790)))

(declare-fun c!99970 () Bool)

(assert (=> b!987376 (= c!99970 (validKeyInArray!0 (select (arr!30032 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))))))

(declare-fun b!987377 () Bool)

(assert (=> b!987377 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30512 _keys!1544)))))

(assert (=> b!987377 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1932) (size!30511 _values!1278)))))

(declare-fun apply!927 (ListLongMap!13653 (_ BitVec 64)) V!35923)

(assert (=> b!987377 (= e!556789 (= (apply!927 lt!437745 (select (arr!30032 _keys!1544) (bvadd #b00000000000000000000000000000001 from!1932))) (get!15596 (select (arr!30031 _values!1278) (bvadd #b00000000000000000000000000000001 from!1932)) (dynLambda!1861 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!116863 c!99967) b!987368))

(assert (= (and d!116863 (not c!99967)) b!987376))

(assert (= (and b!987376 c!99970) b!987374))

(assert (= (and b!987376 (not c!99970)) b!987366))

(assert (= (or b!987374 b!987366) bm!41802))

(assert (= (and d!116863 res!660650) b!987372))

(assert (= (and b!987372 res!660651) b!987370))

(assert (= (and b!987370 res!660652) b!987373))

(assert (= (and b!987370 c!99968) b!987369))

(assert (= (and b!987370 (not c!99968)) b!987375))

(assert (= (and b!987369 res!660649) b!987377))

(assert (= (and b!987375 c!99969) b!987367))

(assert (= (and b!987375 (not c!99969)) b!987371))

(declare-fun b_lambda!15047 () Bool)

(assert (=> (not b_lambda!15047) (not b!987374)))

(assert (=> b!987374 t!29817))

(declare-fun b_and!32067 () Bool)

(assert (= b_and!32061 (and (=> t!29817 result!13533) b_and!32067)))

(declare-fun b_lambda!15049 () Bool)

(assert (=> (not b_lambda!15049) (not b!987377)))

(assert (=> b!987377 t!29817))

(declare-fun b_and!32069 () Bool)

(assert (= b_and!32067 (and (=> t!29817 result!13533) b_and!32069)))

(declare-fun m!914109 () Bool)

(assert (=> b!987371 m!914109))

(declare-fun m!914111 () Bool)

(assert (=> b!987372 m!914111))

(declare-fun m!914113 () Bool)

(assert (=> b!987377 m!914113))

(declare-fun m!914115 () Bool)

(assert (=> b!987377 m!914115))

(assert (=> b!987377 m!914019))

(declare-fun m!914117 () Bool)

(assert (=> b!987377 m!914117))

(assert (=> b!987377 m!914019))

(declare-fun m!914119 () Bool)

(assert (=> b!987377 m!914119))

(assert (=> b!987377 m!914113))

(assert (=> b!987377 m!914117))

(declare-fun m!914121 () Bool)

(assert (=> b!987367 m!914121))

(assert (=> b!987373 m!914113))

(assert (=> b!987373 m!914113))

(declare-fun m!914123 () Bool)

(assert (=> b!987373 m!914123))

(assert (=> bm!41802 m!914121))

(declare-fun m!914125 () Bool)

(assert (=> b!987374 m!914125))

(declare-fun m!914127 () Bool)

(assert (=> b!987374 m!914127))

(assert (=> b!987374 m!914019))

(assert (=> b!987374 m!914117))

(assert (=> b!987374 m!914019))

(assert (=> b!987374 m!914119))

(assert (=> b!987374 m!914113))

(assert (=> b!987374 m!914117))

(declare-fun m!914129 () Bool)

(assert (=> b!987374 m!914129))

(assert (=> b!987374 m!914129))

(declare-fun m!914131 () Bool)

(assert (=> b!987374 m!914131))

(assert (=> b!987369 m!914113))

(assert (=> b!987369 m!914113))

(declare-fun m!914133 () Bool)

(assert (=> b!987369 m!914133))

(assert (=> b!987376 m!914113))

(assert (=> b!987376 m!914113))

(assert (=> b!987376 m!914123))

(declare-fun m!914135 () Bool)

(assert (=> d!116863 m!914135))

(assert (=> d!116863 m!913993))

(assert (=> b!987296 d!116863))

(declare-fun d!116865 () Bool)

(declare-fun e!556793 () Bool)

(assert (=> d!116865 e!556793))

(declare-fun res!660653 () Bool)

(assert (=> d!116865 (=> (not res!660653) (not e!556793))))

(declare-fun lt!437747 () ListLongMap!13653)

(assert (=> d!116865 (= res!660653 (contains!5719 lt!437747 (_1!7481 lt!437686)))))

(declare-fun lt!437746 () List!20894)

(assert (=> d!116865 (= lt!437747 (ListLongMap!13654 lt!437746))))

(declare-fun lt!437749 () Unit!32725)

(declare-fun lt!437748 () Unit!32725)

(assert (=> d!116865 (= lt!437749 lt!437748)))

(assert (=> d!116865 (= (getValueByKey!514 lt!437746 (_1!7481 lt!437686)) (Some!519 (_2!7481 lt!437686)))))

(assert (=> d!116865 (= lt!437748 (lemmaContainsTupThenGetReturnValue!271 lt!437746 (_1!7481 lt!437686) (_2!7481 lt!437686)))))

(assert (=> d!116865 (= lt!437746 (insertStrictlySorted!327 (toList!6842 (+!3030 lt!437685 lt!437683)) (_1!7481 lt!437686) (_2!7481 lt!437686)))))

(assert (=> d!116865 (= (+!3030 (+!3030 lt!437685 lt!437683) lt!437686) lt!437747)))

(declare-fun b!987378 () Bool)

(declare-fun res!660654 () Bool)

(assert (=> b!987378 (=> (not res!660654) (not e!556793))))

(assert (=> b!987378 (= res!660654 (= (getValueByKey!514 (toList!6842 lt!437747) (_1!7481 lt!437686)) (Some!519 (_2!7481 lt!437686))))))

(declare-fun b!987379 () Bool)

(assert (=> b!987379 (= e!556793 (contains!5720 (toList!6842 lt!437747) lt!437686))))

(assert (= (and d!116865 res!660653) b!987378))

(assert (= (and b!987378 res!660654) b!987379))

(declare-fun m!914137 () Bool)

(assert (=> d!116865 m!914137))

(declare-fun m!914139 () Bool)

(assert (=> d!116865 m!914139))

(declare-fun m!914141 () Bool)

(assert (=> d!116865 m!914141))

(declare-fun m!914143 () Bool)

(assert (=> d!116865 m!914143))

(declare-fun m!914145 () Bool)

(assert (=> b!987378 m!914145))

(declare-fun m!914147 () Bool)

(assert (=> b!987379 m!914147))

(assert (=> b!987296 d!116865))

(declare-fun d!116867 () Bool)

(declare-fun c!99973 () Bool)

(assert (=> d!116867 (= c!99973 ((_ is ValueCellFull!11121) (select (arr!30031 _values!1278) from!1932)))))

(declare-fun e!556796 () V!35923)

(assert (=> d!116867 (= (get!15596 (select (arr!30031 _values!1278) from!1932) (dynLambda!1861 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)) e!556796)))

(declare-fun b!987384 () Bool)

(declare-fun get!15597 (ValueCell!11121 V!35923) V!35923)

(assert (=> b!987384 (= e!556796 (get!15597 (select (arr!30031 _values!1278) from!1932) (dynLambda!1861 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!987385 () Bool)

(declare-fun get!15598 (ValueCell!11121 V!35923) V!35923)

(assert (=> b!987385 (= e!556796 (get!15598 (select (arr!30031 _values!1278) from!1932) (dynLambda!1861 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!116867 c!99973) b!987384))

(assert (= (and d!116867 (not c!99973)) b!987385))

(assert (=> b!987384 m!914005))

(assert (=> b!987384 m!914019))

(declare-fun m!914149 () Bool)

(assert (=> b!987384 m!914149))

(assert (=> b!987385 m!914005))

(assert (=> b!987385 m!914019))

(declare-fun m!914151 () Bool)

(assert (=> b!987385 m!914151))

(assert (=> b!987296 d!116867))

(declare-fun d!116869 () Bool)

(declare-fun e!556797 () Bool)

(assert (=> d!116869 e!556797))

(declare-fun res!660655 () Bool)

(assert (=> d!116869 (=> (not res!660655) (not e!556797))))

(declare-fun lt!437751 () ListLongMap!13653)

(assert (=> d!116869 (= res!660655 (contains!5719 lt!437751 (_1!7481 lt!437683)))))

(declare-fun lt!437750 () List!20894)

(assert (=> d!116869 (= lt!437751 (ListLongMap!13654 lt!437750))))

(declare-fun lt!437753 () Unit!32725)

(declare-fun lt!437752 () Unit!32725)

(assert (=> d!116869 (= lt!437753 lt!437752)))

(assert (=> d!116869 (= (getValueByKey!514 lt!437750 (_1!7481 lt!437683)) (Some!519 (_2!7481 lt!437683)))))

(assert (=> d!116869 (= lt!437752 (lemmaContainsTupThenGetReturnValue!271 lt!437750 (_1!7481 lt!437683) (_2!7481 lt!437683)))))

(assert (=> d!116869 (= lt!437750 (insertStrictlySorted!327 (toList!6842 lt!437685) (_1!7481 lt!437683) (_2!7481 lt!437683)))))

(assert (=> d!116869 (= (+!3030 lt!437685 lt!437683) lt!437751)))

(declare-fun b!987386 () Bool)

(declare-fun res!660656 () Bool)

(assert (=> b!987386 (=> (not res!660656) (not e!556797))))

(assert (=> b!987386 (= res!660656 (= (getValueByKey!514 (toList!6842 lt!437751) (_1!7481 lt!437683)) (Some!519 (_2!7481 lt!437683))))))

(declare-fun b!987387 () Bool)

(assert (=> b!987387 (= e!556797 (contains!5720 (toList!6842 lt!437751) lt!437683))))

(assert (= (and d!116869 res!660655) b!987386))

(assert (= (and b!987386 res!660656) b!987387))

(declare-fun m!914153 () Bool)

(assert (=> d!116869 m!914153))

(declare-fun m!914155 () Bool)

(assert (=> d!116869 m!914155))

(declare-fun m!914157 () Bool)

(assert (=> d!116869 m!914157))

(declare-fun m!914159 () Bool)

(assert (=> d!116869 m!914159))

(declare-fun m!914161 () Bool)

(assert (=> b!987386 m!914161))

(declare-fun m!914163 () Bool)

(assert (=> b!987387 m!914163))

(assert (=> b!987296 d!116869))

(declare-fun b!987398 () Bool)

(declare-fun e!556808 () Bool)

(declare-fun call!41808 () Bool)

(assert (=> b!987398 (= e!556808 call!41808)))

(declare-fun b!987399 () Bool)

(assert (=> b!987399 (= e!556808 call!41808)))

(declare-fun b!987400 () Bool)

(declare-fun e!556807 () Bool)

(assert (=> b!987400 (= e!556807 e!556808)))

(declare-fun c!99976 () Bool)

(assert (=> b!987400 (= c!99976 (validKeyInArray!0 (select (arr!30032 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!987401 () Bool)

(declare-fun e!556806 () Bool)

(assert (=> b!987401 (= e!556806 e!556807)))

(declare-fun res!660664 () Bool)

(assert (=> b!987401 (=> (not res!660664) (not e!556807))))

(declare-fun e!556809 () Bool)

(assert (=> b!987401 (= res!660664 (not e!556809))))

(declare-fun res!660663 () Bool)

(assert (=> b!987401 (=> (not res!660663) (not e!556809))))

(assert (=> b!987401 (= res!660663 (validKeyInArray!0 (select (arr!30032 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun b!987402 () Bool)

(declare-fun contains!5721 (List!20893 (_ BitVec 64)) Bool)

(assert (=> b!987402 (= e!556809 (contains!5721 Nil!20890 (select (arr!30032 _keys!1544) #b00000000000000000000000000000000)))))

(declare-fun bm!41805 () Bool)

(assert (=> bm!41805 (= call!41808 (arrayNoDuplicates!0 _keys!1544 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!99976 (Cons!20889 (select (arr!30032 _keys!1544) #b00000000000000000000000000000000) Nil!20890) Nil!20890)))))

(declare-fun d!116871 () Bool)

(declare-fun res!660665 () Bool)

(assert (=> d!116871 (=> res!660665 e!556806)))

(assert (=> d!116871 (= res!660665 (bvsge #b00000000000000000000000000000000 (size!30512 _keys!1544)))))

(assert (=> d!116871 (= (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20890) e!556806)))

(assert (= (and d!116871 (not res!660665)) b!987401))

(assert (= (and b!987401 res!660663) b!987402))

(assert (= (and b!987401 res!660664) b!987400))

(assert (= (and b!987400 c!99976) b!987398))

(assert (= (and b!987400 (not c!99976)) b!987399))

(assert (= (or b!987398 b!987399) bm!41805))

(declare-fun m!914165 () Bool)

(assert (=> b!987400 m!914165))

(assert (=> b!987400 m!914165))

(declare-fun m!914167 () Bool)

(assert (=> b!987400 m!914167))

(assert (=> b!987401 m!914165))

(assert (=> b!987401 m!914165))

(assert (=> b!987401 m!914167))

(assert (=> b!987402 m!914165))

(assert (=> b!987402 m!914165))

(declare-fun m!914169 () Bool)

(assert (=> b!987402 m!914169))

(assert (=> bm!41805 m!914165))

(declare-fun m!914171 () Bool)

(assert (=> bm!41805 m!914171))

(assert (=> b!987292 d!116871))

(declare-fun d!116873 () Bool)

(declare-fun res!660671 () Bool)

(declare-fun e!556817 () Bool)

(assert (=> d!116873 (=> res!660671 e!556817)))

(assert (=> d!116873 (= res!660671 (bvsge #b00000000000000000000000000000000 (size!30512 _keys!1544)))))

(assert (=> d!116873 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948) e!556817)))

(declare-fun bm!41808 () Bool)

(declare-fun call!41811 () Bool)

(assert (=> bm!41808 (= call!41811 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1544 mask!1948))))

(declare-fun b!987411 () Bool)

(declare-fun e!556818 () Bool)

(declare-fun e!556816 () Bool)

(assert (=> b!987411 (= e!556818 e!556816)))

(declare-fun lt!437761 () (_ BitVec 64))

(assert (=> b!987411 (= lt!437761 (select (arr!30032 _keys!1544) #b00000000000000000000000000000000))))

(declare-fun lt!437760 () Unit!32725)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!62359 (_ BitVec 64) (_ BitVec 32)) Unit!32725)

(assert (=> b!987411 (= lt!437760 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1544 lt!437761 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!62359 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!987411 (arrayContainsKey!0 _keys!1544 lt!437761 #b00000000000000000000000000000000)))

(declare-fun lt!437762 () Unit!32725)

(assert (=> b!987411 (= lt!437762 lt!437760)))

(declare-fun res!660670 () Bool)

(declare-datatypes ((SeekEntryResult!9195 0))(
  ( (MissingZero!9195 (index!39150 (_ BitVec 32))) (Found!9195 (index!39151 (_ BitVec 32))) (Intermediate!9195 (undefined!10007 Bool) (index!39152 (_ BitVec 32)) (x!85925 (_ BitVec 32))) (Undefined!9195) (MissingVacant!9195 (index!39153 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62359 (_ BitVec 32)) SeekEntryResult!9195)

(assert (=> b!987411 (= res!660670 (= (seekEntryOrOpen!0 (select (arr!30032 _keys!1544) #b00000000000000000000000000000000) _keys!1544 mask!1948) (Found!9195 #b00000000000000000000000000000000)))))

(assert (=> b!987411 (=> (not res!660670) (not e!556816))))

(declare-fun b!987412 () Bool)

(assert (=> b!987412 (= e!556816 call!41811)))

(declare-fun b!987413 () Bool)

(assert (=> b!987413 (= e!556818 call!41811)))

(declare-fun b!987414 () Bool)

(assert (=> b!987414 (= e!556817 e!556818)))

(declare-fun c!99979 () Bool)

(assert (=> b!987414 (= c!99979 (validKeyInArray!0 (select (arr!30032 _keys!1544) #b00000000000000000000000000000000)))))

(assert (= (and d!116873 (not res!660671)) b!987414))

(assert (= (and b!987414 c!99979) b!987411))

(assert (= (and b!987414 (not c!99979)) b!987413))

(assert (= (and b!987411 res!660670) b!987412))

(assert (= (or b!987412 b!987413) bm!41808))

(declare-fun m!914173 () Bool)

(assert (=> bm!41808 m!914173))

(assert (=> b!987411 m!914165))

(declare-fun m!914175 () Bool)

(assert (=> b!987411 m!914175))

(declare-fun m!914177 () Bool)

(assert (=> b!987411 m!914177))

(assert (=> b!987411 m!914165))

(declare-fun m!914179 () Bool)

(assert (=> b!987411 m!914179))

(assert (=> b!987414 m!914165))

(assert (=> b!987414 m!914165))

(assert (=> b!987414 m!914167))

(assert (=> b!987290 d!116873))

(declare-fun mapIsEmpty!36845 () Bool)

(declare-fun mapRes!36845 () Bool)

(assert (=> mapIsEmpty!36845 mapRes!36845))

(declare-fun b!987421 () Bool)

(declare-fun e!556824 () Bool)

(assert (=> b!987421 (= e!556824 tp_is_empty!23205)))

(declare-fun mapNonEmpty!36845 () Bool)

(declare-fun tp!69755 () Bool)

(assert (=> mapNonEmpty!36845 (= mapRes!36845 (and tp!69755 e!556824))))

(declare-fun mapValue!36845 () ValueCell!11121)

(declare-fun mapKey!36845 () (_ BitVec 32))

(declare-fun mapRest!36845 () (Array (_ BitVec 32) ValueCell!11121))

(assert (=> mapNonEmpty!36845 (= mapRest!36839 (store mapRest!36845 mapKey!36845 mapValue!36845))))

(declare-fun condMapEmpty!36845 () Bool)

(declare-fun mapDefault!36845 () ValueCell!11121)

(assert (=> mapNonEmpty!36839 (= condMapEmpty!36845 (= mapRest!36839 ((as const (Array (_ BitVec 32) ValueCell!11121)) mapDefault!36845)))))

(declare-fun e!556823 () Bool)

(assert (=> mapNonEmpty!36839 (= tp!69745 (and e!556823 mapRes!36845))))

(declare-fun b!987422 () Bool)

(assert (=> b!987422 (= e!556823 tp_is_empty!23205)))

(assert (= (and mapNonEmpty!36839 condMapEmpty!36845) mapIsEmpty!36845))

(assert (= (and mapNonEmpty!36839 (not condMapEmpty!36845)) mapNonEmpty!36845))

(assert (= (and mapNonEmpty!36845 ((_ is ValueCellFull!11121) mapValue!36845)) b!987421))

(assert (= (and mapNonEmpty!36839 ((_ is ValueCellFull!11121) mapDefault!36845)) b!987422))

(declare-fun m!914181 () Bool)

(assert (=> mapNonEmpty!36845 m!914181))

(declare-fun b_lambda!15051 () Bool)

(assert (= b_lambda!15049 (or (and start!84446 b_free!19989) b_lambda!15051)))

(declare-fun b_lambda!15053 () Bool)

(assert (= b_lambda!15047 (or (and start!84446 b_free!19989) b_lambda!15053)))

(check-sat (not b!987369) (not b!987379) (not b!987341) (not b!987373) (not b!987371) (not bm!41805) (not b_lambda!15051) (not b!987387) (not b!987385) (not b_lambda!15045) (not d!116869) (not b!987400) (not b!987338) (not b!987376) (not d!116859) (not b!987414) (not b!987374) (not d!116855) (not b!987339) (not b!987377) (not b!987337) (not b!987401) (not d!116863) (not b!987384) (not d!116865) (not bm!41802) (not d!116861) tp_is_empty!23205 (not b_next!19989) (not b!987386) (not b!987402) (not b!987340) (not mapNonEmpty!36845) (not b!987367) (not b!987336) b_and!32069 (not b!987378) (not bm!41808) (not b!987372) (not b!987411) (not d!116857) (not b_lambda!15053))
(check-sat b_and!32069 (not b_next!19989))
