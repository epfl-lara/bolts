; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46930 () Bool)

(assert start!46930)

(declare-fun b!516717 () Bool)

(declare-fun b_free!13595 () Bool)

(declare-fun b_next!13603 () Bool)

(assert (=> b!516717 (= b_free!13595 (not b_next!13603))))

(declare-fun tp!161219 () Bool)

(declare-fun b_and!51061 () Bool)

(assert (=> b!516717 (= tp!161219 b_and!51061)))

(declare-fun b_free!13597 () Bool)

(declare-fun b_next!13605 () Bool)

(assert (=> start!46930 (= b_free!13597 (not b_next!13605))))

(declare-fun tp!161216 () Bool)

(declare-fun b_and!51063 () Bool)

(assert (=> start!46930 (= tp!161216 b_and!51063)))

(declare-fun b!516727 () Bool)

(declare-fun b_free!13599 () Bool)

(declare-fun b_next!13607 () Bool)

(assert (=> b!516727 (= b_free!13599 (not b_next!13607))))

(declare-fun tp!161220 () Bool)

(declare-fun b_and!51065 () Bool)

(assert (=> b!516727 (= tp!161220 b_and!51065)))

(declare-fun res!219126 () Bool)

(declare-fun e!309237 () Bool)

(assert (=> start!46930 (=> (not res!219126) (not e!309237))))

(declare-datatypes ((V!1520 0))(
  ( (V!1521 (val!1801 Int)) )
))
(declare-datatypes ((K!1422 0))(
  ( (K!1423 (val!1802 Int)) )
))
(declare-datatypes ((tuple2!5816 0))(
  ( (tuple2!5817 (_1!3124 K!1422) (_2!3124 V!1520)) )
))
(declare-datatypes ((List!4740 0))(
  ( (Nil!4730) (Cons!4730 (h!10129 tuple2!5816) (t!73302 List!4740)) )
))
(declare-datatypes ((array!2025 0))(
  ( (array!2026 (arr!930 (Array (_ BitVec 32) List!4740)) (size!3864 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!495 0))(
  ( (HashableExt!494 (__x!3460 Int)) )
))
(declare-datatypes ((array!2027 0))(
  ( (array!2028 (arr!931 (Array (_ BitVec 32) (_ BitVec 64))) (size!3865 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1046 0))(
  ( (LongMapFixedSize!1047 (defaultEntry!874 Int) (mask!1949 (_ BitVec 32)) (extraKeys!769 (_ BitVec 32)) (zeroValue!779 List!4740) (minValue!779 List!4740) (_size!1155 (_ BitVec 32)) (_keys!814 array!2027) (_values!801 array!2025) (_vacant!584 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2033 0))(
  ( (Cell!2034 (v!15777 LongMapFixedSize!1046)) )
))
(declare-datatypes ((MutLongMap!523 0))(
  ( (LongMap!523 (underlying!1225 Cell!2033)) (MutLongMapExt!522 (__x!3461 Int)) )
))
(declare-datatypes ((Cell!2035 0))(
  ( (Cell!2036 (v!15778 MutLongMap!523)) )
))
(declare-datatypes ((MutableMap!495 0))(
  ( (MutableMapExt!494 (__x!3462 Int)) (HashMap!495 (underlying!1226 Cell!2035) (hashF!2385 Hashable!495) (_size!1156 (_ BitVec 32)) (defaultValue!644 Int)) )
))
(declare-fun hm!65 () MutableMap!495)

(get-info :version)

(assert (=> start!46930 (= res!219126 ((_ is HashMap!495) hm!65))))

(assert (=> start!46930 e!309237))

(declare-fun e!309244 () Bool)

(assert (=> start!46930 e!309244))

(assert (=> start!46930 tp!161216))

(declare-fun tp_is_empty!2633 () Bool)

(assert (=> start!46930 tp_is_empty!2633))

(declare-fun tp!161221 () Bool)

(declare-fun e!309240 () Bool)

(declare-fun e!309238 () Bool)

(declare-fun tp!161218 () Bool)

(declare-fun array_inv!679 (array!2027) Bool)

(declare-fun array_inv!680 (array!2025) Bool)

(assert (=> b!516717 (= e!309240 (and tp!161219 tp!161218 tp!161221 (array_inv!679 (_keys!814 (v!15777 (underlying!1225 (v!15778 (underlying!1226 hm!65)))))) (array_inv!680 (_values!801 (v!15777 (underlying!1225 (v!15778 (underlying!1226 hm!65)))))) e!309238))))

(declare-fun b!516718 () Bool)

(declare-fun e!309247 () Bool)

(declare-fun e!309246 () Bool)

(assert (=> b!516718 (= e!309247 e!309246)))

(declare-fun b!516719 () Bool)

(declare-fun e!309243 () Bool)

(assert (=> b!516719 (= e!309237 e!309243)))

(declare-fun res!219130 () Bool)

(assert (=> b!516719 (=> (not res!219130) (not e!309243))))

(declare-datatypes ((ListMap!197 0))(
  ( (ListMap!198 (toList!423 List!4740)) )
))
(declare-fun lt!214868 () ListMap!197)

(declare-fun p!6060 () Int)

(declare-fun forall!1405 (List!4740 Int) Bool)

(assert (=> b!516719 (= res!219130 (forall!1405 (toList!423 lt!214868) p!6060))))

(declare-fun map!1046 (MutableMap!495) ListMap!197)

(assert (=> b!516719 (= lt!214868 (map!1046 hm!65))))

(declare-fun b!516720 () Bool)

(declare-fun res!219127 () Bool)

(assert (=> b!516720 (=> (not res!219127) (not e!309237))))

(declare-fun valid!488 (MutableMap!495) Bool)

(assert (=> b!516720 (= res!219127 (valid!488 hm!65))))

(declare-fun b!516721 () Bool)

(declare-fun tp!161214 () Bool)

(declare-fun mapRes!2022 () Bool)

(assert (=> b!516721 (= e!309238 (and tp!161214 mapRes!2022))))

(declare-fun condMapEmpty!2022 () Bool)

(declare-fun mapDefault!2022 () List!4740)

(assert (=> b!516721 (= condMapEmpty!2022 (= (arr!930 (_values!801 (v!15777 (underlying!1225 (v!15778 (underlying!1226 hm!65)))))) ((as const (Array (_ BitVec 32) List!4740)) mapDefault!2022)))))

(declare-fun mapIsEmpty!2022 () Bool)

(assert (=> mapIsEmpty!2022 mapRes!2022))

(declare-fun b!516722 () Bool)

(assert (=> b!516722 (= e!309246 e!309240)))

(declare-fun b!516723 () Bool)

(declare-fun e!309241 () Bool)

(declare-fun e!309242 () Bool)

(assert (=> b!516723 (= e!309241 e!309242)))

(declare-fun res!219125 () Bool)

(assert (=> b!516723 (=> (not res!219125) (not e!309242))))

(declare-fun lt!214869 () ListMap!197)

(declare-fun invariantList!76 (List!4740) Bool)

(assert (=> b!516723 (= res!219125 (invariantList!76 (toList!423 lt!214869)))))

(declare-datatypes ((tuple2!5818 0))(
  ( (tuple2!5819 (_1!3125 Bool) (_2!3125 MutableMap!495)) )
))
(declare-fun lt!214870 () tuple2!5818)

(assert (=> b!516723 (= lt!214869 (map!1046 (_2!3125 lt!214870)))))

(declare-fun b!516724 () Bool)

(assert (=> b!516724 (= e!309243 e!309241)))

(declare-fun res!219124 () Bool)

(assert (=> b!516724 (=> (not res!219124) (not e!309241))))

(assert (=> b!516724 (= res!219124 (valid!488 (_2!3125 lt!214870)))))

(declare-fun k0!1740 () K!1422)

(declare-fun remove!41 (MutableMap!495 K!1422) tuple2!5818)

(assert (=> b!516724 (= lt!214870 (remove!41 hm!65 k0!1740))))

(declare-fun lt!214873 () ListMap!197)

(declare-fun -!38 (ListMap!197 K!1422) ListMap!197)

(assert (=> b!516724 (= lt!214873 (-!38 lt!214868 k0!1740))))

(declare-fun b!516725 () Bool)

(assert (=> b!516725 (= e!309242 (not (invariantList!76 (toList!423 lt!214873))))))

(assert (=> b!516725 (forall!1405 (toList!423 lt!214873) p!6060)))

(declare-datatypes ((Unit!8610 0))(
  ( (Unit!8611) )
))
(declare-fun lt!214871 () Unit!8610)

(declare-fun lemmaForallSubset!11 (List!4740 List!4740 Int) Unit!8610)

(assert (=> b!516725 (= lt!214871 (lemmaForallSubset!11 (toList!423 lt!214873) (toList!423 lt!214868) p!6060))))

(declare-fun b!516726 () Bool)

(declare-fun res!219128 () Bool)

(assert (=> b!516726 (=> (not res!219128) (not e!309242))))

(declare-fun eq!35 (ListMap!197 ListMap!197) Bool)

(assert (=> b!516726 (= res!219128 (eq!35 lt!214869 lt!214873))))

(declare-fun e!309245 () Bool)

(assert (=> b!516727 (= e!309244 (and e!309245 tp!161220))))

(declare-fun b!516728 () Bool)

(declare-fun lt!214872 () MutLongMap!523)

(assert (=> b!516728 (= e!309245 (and e!309247 ((_ is LongMap!523) lt!214872)))))

(assert (=> b!516728 (= lt!214872 (v!15778 (underlying!1226 hm!65)))))

(declare-fun b!516729 () Bool)

(declare-fun res!219129 () Bool)

(assert (=> b!516729 (=> (not res!219129) (not e!309242))))

(assert (=> b!516729 (= res!219129 (_1!3125 lt!214870))))

(declare-fun mapNonEmpty!2022 () Bool)

(declare-fun tp!161217 () Bool)

(declare-fun tp!161215 () Bool)

(assert (=> mapNonEmpty!2022 (= mapRes!2022 (and tp!161217 tp!161215))))

(declare-fun mapKey!2022 () (_ BitVec 32))

(declare-fun mapValue!2022 () List!4740)

(declare-fun mapRest!2022 () (Array (_ BitVec 32) List!4740))

(assert (=> mapNonEmpty!2022 (= (arr!930 (_values!801 (v!15777 (underlying!1225 (v!15778 (underlying!1226 hm!65)))))) (store mapRest!2022 mapKey!2022 mapValue!2022))))

(assert (= (and start!46930 res!219126) b!516720))

(assert (= (and b!516720 res!219127) b!516719))

(assert (= (and b!516719 res!219130) b!516724))

(assert (= (and b!516724 res!219124) b!516723))

(assert (= (and b!516723 res!219125) b!516729))

(assert (= (and b!516729 res!219129) b!516726))

(assert (= (and b!516726 res!219128) b!516725))

(assert (= (and b!516721 condMapEmpty!2022) mapIsEmpty!2022))

(assert (= (and b!516721 (not condMapEmpty!2022)) mapNonEmpty!2022))

(assert (= b!516717 b!516721))

(assert (= b!516722 b!516717))

(assert (= b!516718 b!516722))

(assert (= (and b!516728 ((_ is LongMap!523) (v!15778 (underlying!1226 hm!65)))) b!516718))

(assert (= b!516727 b!516728))

(assert (= (and start!46930 ((_ is HashMap!495) hm!65)) b!516727))

(declare-fun m!763237 () Bool)

(assert (=> b!516724 m!763237))

(declare-fun m!763239 () Bool)

(assert (=> b!516724 m!763239))

(declare-fun m!763241 () Bool)

(assert (=> b!516724 m!763241))

(declare-fun m!763243 () Bool)

(assert (=> b!516726 m!763243))

(declare-fun m!763245 () Bool)

(assert (=> b!516719 m!763245))

(declare-fun m!763247 () Bool)

(assert (=> b!516719 m!763247))

(declare-fun m!763249 () Bool)

(assert (=> b!516720 m!763249))

(declare-fun m!763251 () Bool)

(assert (=> b!516725 m!763251))

(declare-fun m!763253 () Bool)

(assert (=> b!516725 m!763253))

(declare-fun m!763255 () Bool)

(assert (=> b!516725 m!763255))

(declare-fun m!763257 () Bool)

(assert (=> b!516723 m!763257))

(declare-fun m!763259 () Bool)

(assert (=> b!516723 m!763259))

(declare-fun m!763261 () Bool)

(assert (=> b!516717 m!763261))

(declare-fun m!763263 () Bool)

(assert (=> b!516717 m!763263))

(declare-fun m!763265 () Bool)

(assert (=> mapNonEmpty!2022 m!763265))

(check-sat tp_is_empty!2633 (not b_next!13603) b_and!51063 (not b!516726) (not b!516719) b_and!51061 (not b!516721) b_and!51065 (not b!516725) (not b!516723) (not b!516720) (not b_next!13605) (not mapNonEmpty!2022) (not b!516724) (not b_next!13607) (not b!516717))
(check-sat (not b_next!13603) b_and!51063 b_and!51061 (not b_next!13607) b_and!51065 (not b_next!13605))
(get-model)

(declare-fun d!184812 () Bool)

(assert (=> d!184812 (= (array_inv!679 (_keys!814 (v!15777 (underlying!1225 (v!15778 (underlying!1226 hm!65)))))) (bvsge (size!3865 (_keys!814 (v!15777 (underlying!1225 (v!15778 (underlying!1226 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!516717 d!184812))

(declare-fun d!184814 () Bool)

(assert (=> d!184814 (= (array_inv!680 (_values!801 (v!15777 (underlying!1225 (v!15778 (underlying!1226 hm!65)))))) (bvsge (size!3864 (_values!801 (v!15777 (underlying!1225 (v!15778 (underlying!1226 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!516717 d!184814))

(declare-fun d!184816 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!828 (List!4740) (InoxSet tuple2!5816))

(assert (=> d!184816 (= (eq!35 lt!214869 lt!214873) (= (content!828 (toList!423 lt!214869)) (content!828 (toList!423 lt!214873))))))

(declare-fun bs!59893 () Bool)

(assert (= bs!59893 d!184816))

(declare-fun m!763267 () Bool)

(assert (=> bs!59893 m!763267))

(declare-fun m!763269 () Bool)

(assert (=> bs!59893 m!763269))

(assert (=> b!516726 d!184816))

(declare-fun d!184818 () Bool)

(declare-fun noDuplicatedKeys!17 (List!4740) Bool)

(assert (=> d!184818 (= (invariantList!76 (toList!423 lt!214873)) (noDuplicatedKeys!17 (toList!423 lt!214873)))))

(declare-fun bs!59894 () Bool)

(assert (= bs!59894 d!184818))

(declare-fun m!763271 () Bool)

(assert (=> bs!59894 m!763271))

(assert (=> b!516725 d!184818))

(declare-fun d!184820 () Bool)

(declare-fun res!219135 () Bool)

(declare-fun e!309252 () Bool)

(assert (=> d!184820 (=> res!219135 e!309252)))

(assert (=> d!184820 (= res!219135 ((_ is Nil!4730) (toList!423 lt!214873)))))

(assert (=> d!184820 (= (forall!1405 (toList!423 lt!214873) p!6060) e!309252)))

(declare-fun b!516734 () Bool)

(declare-fun e!309253 () Bool)

(assert (=> b!516734 (= e!309252 e!309253)))

(declare-fun res!219136 () Bool)

(assert (=> b!516734 (=> (not res!219136) (not e!309253))))

(declare-fun dynLambda!2981 (Int tuple2!5816) Bool)

(assert (=> b!516734 (= res!219136 (dynLambda!2981 p!6060 (h!10129 (toList!423 lt!214873))))))

(declare-fun b!516735 () Bool)

(assert (=> b!516735 (= e!309253 (forall!1405 (t!73302 (toList!423 lt!214873)) p!6060))))

(assert (= (and d!184820 (not res!219135)) b!516734))

(assert (= (and b!516734 res!219136) b!516735))

(declare-fun b_lambda!20085 () Bool)

(assert (=> (not b_lambda!20085) (not b!516734)))

(declare-fun t!73304 () Bool)

(declare-fun tb!47161 () Bool)

(assert (=> (and start!46930 (= p!6060 p!6060) t!73304) tb!47161))

(declare-fun result!52224 () Bool)

(assert (=> tb!47161 (= result!52224 true)))

(assert (=> b!516734 t!73304))

(declare-fun b_and!51067 () Bool)

(assert (= b_and!51063 (and (=> t!73304 result!52224) b_and!51067)))

(declare-fun m!763273 () Bool)

(assert (=> b!516734 m!763273))

(declare-fun m!763275 () Bool)

(assert (=> b!516735 m!763275))

(assert (=> b!516725 d!184820))

(declare-fun d!184822 () Bool)

(assert (=> d!184822 (forall!1405 (toList!423 lt!214873) p!6060)))

(declare-fun lt!214876 () Unit!8610)

(declare-fun choose!3684 (List!4740 List!4740 Int) Unit!8610)

(assert (=> d!184822 (= lt!214876 (choose!3684 (toList!423 lt!214873) (toList!423 lt!214868) p!6060))))

(assert (=> d!184822 (invariantList!76 (toList!423 lt!214873))))

(assert (=> d!184822 (= (lemmaForallSubset!11 (toList!423 lt!214873) (toList!423 lt!214868) p!6060) lt!214876)))

(declare-fun bs!59895 () Bool)

(assert (= bs!59895 d!184822))

(assert (=> bs!59895 m!763253))

(declare-fun m!763277 () Bool)

(assert (=> bs!59895 m!763277))

(assert (=> bs!59895 m!763251))

(assert (=> b!516725 d!184822))

(declare-fun d!184824 () Bool)

(declare-fun res!219141 () Bool)

(declare-fun e!309256 () Bool)

(assert (=> d!184824 (=> (not res!219141) (not e!309256))))

(declare-fun valid!489 (MutLongMap!523) Bool)

(assert (=> d!184824 (= res!219141 (valid!489 (v!15778 (underlying!1226 hm!65))))))

(assert (=> d!184824 (= (valid!488 hm!65) e!309256)))

(declare-fun b!516740 () Bool)

(declare-fun res!219142 () Bool)

(assert (=> b!516740 (=> (not res!219142) (not e!309256))))

(declare-fun lambda!14516 () Int)

(declare-datatypes ((tuple2!5820 0))(
  ( (tuple2!5821 (_1!3126 (_ BitVec 64)) (_2!3126 List!4740)) )
))
(declare-datatypes ((List!4741 0))(
  ( (Nil!4731) (Cons!4731 (h!10130 tuple2!5820) (t!73307 List!4741)) )
))
(declare-fun forall!1406 (List!4741 Int) Bool)

(declare-datatypes ((ListLongMap!81 0))(
  ( (ListLongMap!82 (toList!424 List!4741)) )
))
(declare-fun map!1047 (MutLongMap!523) ListLongMap!81)

(assert (=> b!516740 (= res!219142 (forall!1406 (toList!424 (map!1047 (v!15778 (underlying!1226 hm!65)))) lambda!14516))))

(declare-fun b!516741 () Bool)

(declare-fun allKeysSameHashInMap!29 (ListLongMap!81 Hashable!495) Bool)

(assert (=> b!516741 (= e!309256 (allKeysSameHashInMap!29 (map!1047 (v!15778 (underlying!1226 hm!65))) (hashF!2385 hm!65)))))

(assert (= (and d!184824 res!219141) b!516740))

(assert (= (and b!516740 res!219142) b!516741))

(declare-fun m!763279 () Bool)

(assert (=> d!184824 m!763279))

(declare-fun m!763281 () Bool)

(assert (=> b!516740 m!763281))

(declare-fun m!763283 () Bool)

(assert (=> b!516740 m!763283))

(assert (=> b!516741 m!763281))

(assert (=> b!516741 m!763281))

(declare-fun m!763285 () Bool)

(assert (=> b!516741 m!763285))

(assert (=> b!516720 d!184824))

(declare-fun bs!59896 () Bool)

(declare-fun b!516742 () Bool)

(assert (= bs!59896 (and b!516742 b!516740)))

(declare-fun lambda!14517 () Int)

(assert (=> bs!59896 (= lambda!14517 lambda!14516)))

(declare-fun d!184826 () Bool)

(declare-fun res!219143 () Bool)

(declare-fun e!309257 () Bool)

(assert (=> d!184826 (=> (not res!219143) (not e!309257))))

(assert (=> d!184826 (= res!219143 (valid!489 (v!15778 (underlying!1226 (_2!3125 lt!214870)))))))

(assert (=> d!184826 (= (valid!488 (_2!3125 lt!214870)) e!309257)))

(declare-fun res!219144 () Bool)

(assert (=> b!516742 (=> (not res!219144) (not e!309257))))

(assert (=> b!516742 (= res!219144 (forall!1406 (toList!424 (map!1047 (v!15778 (underlying!1226 (_2!3125 lt!214870))))) lambda!14517))))

(declare-fun b!516743 () Bool)

(assert (=> b!516743 (= e!309257 (allKeysSameHashInMap!29 (map!1047 (v!15778 (underlying!1226 (_2!3125 lt!214870)))) (hashF!2385 (_2!3125 lt!214870))))))

(assert (= (and d!184826 res!219143) b!516742))

(assert (= (and b!516742 res!219144) b!516743))

(declare-fun m!763287 () Bool)

(assert (=> d!184826 m!763287))

(declare-fun m!763289 () Bool)

(assert (=> b!516742 m!763289))

(declare-fun m!763291 () Bool)

(assert (=> b!516742 m!763291))

(assert (=> b!516743 m!763289))

(assert (=> b!516743 m!763289))

(declare-fun m!763293 () Bool)

(assert (=> b!516743 m!763293))

(assert (=> b!516724 d!184826))

(declare-fun bs!59897 () Bool)

(declare-fun b!516767 () Bool)

(assert (= bs!59897 (and b!516767 b!516740)))

(declare-fun lambda!14524 () Int)

(assert (=> bs!59897 (= lambda!14524 lambda!14516)))

(declare-fun bs!59898 () Bool)

(assert (= bs!59898 (and b!516767 b!516742)))

(assert (=> bs!59898 (= lambda!14524 lambda!14517)))

(declare-fun b!516766 () Bool)

(declare-fun e!309271 () Bool)

(declare-fun lt!214942 () ListLongMap!81)

(declare-datatypes ((tuple2!5822 0))(
  ( (tuple2!5823 (_1!3127 Unit!8610) (_2!3127 MutableMap!495)) )
))
(declare-fun lt!214945 () tuple2!5822)

(assert (=> b!516766 (= e!309271 (allKeysSameHashInMap!29 lt!214942 (hashF!2385 (_2!3127 lt!214945))))))

(declare-fun bm!37752 () Bool)

(declare-fun call!37760 () ListMap!197)

(declare-fun lt!214954 () tuple2!5818)

(assert (=> bm!37752 (= call!37760 (map!1046 (_2!3125 lt!214954)))))

(declare-fun e!309273 () tuple2!5818)

(declare-datatypes ((tuple2!5824 0))(
  ( (tuple2!5825 (_1!3128 Bool) (_2!3128 MutLongMap!523)) )
))
(declare-fun lt!214958 () tuple2!5824)

(assert (=> b!516767 (= e!309273 (tuple2!5819 (_1!3128 lt!214958) (_2!3127 lt!214945)))))

(declare-fun lt!214964 () (_ BitVec 64))

(declare-fun hash!525 (Hashable!495 K!1422) (_ BitVec 64))

(assert (=> b!516767 (= lt!214964 (hash!525 (hashF!2385 hm!65) k0!1740))))

(declare-fun lt!214963 () List!4740)

(declare-fun apply!1188 (MutLongMap!523 (_ BitVec 64)) List!4740)

(assert (=> b!516767 (= lt!214963 (apply!1188 (v!15778 (underlying!1226 hm!65)) lt!214964))))

(declare-fun lt!214959 () Unit!8610)

(declare-fun call!37762 () ListLongMap!81)

(declare-fun forallContained!447 (List!4741 Int tuple2!5820) Unit!8610)

(assert (=> b!516767 (= lt!214959 (forallContained!447 (toList!424 call!37762) lambda!14524 (tuple2!5821 lt!214964 (apply!1188 (v!15778 (underlying!1226 hm!65)) lt!214964))))))

(declare-fun lt!214961 () ListMap!197)

(assert (=> b!516767 (= lt!214961 (map!1046 hm!65))))

(declare-fun lt!214965 () ListLongMap!81)

(assert (=> b!516767 (= lt!214965 call!37762)))

(declare-fun lt!214937 () List!4740)

(declare-fun removePairForKey!16 (List!4740 K!1422) List!4740)

(assert (=> b!516767 (= lt!214937 (removePairForKey!16 lt!214963 k0!1740))))

(declare-fun update!57 (MutLongMap!523 (_ BitVec 64) List!4740) tuple2!5824)

(assert (=> b!516767 (= lt!214958 (update!57 (v!15778 (underlying!1226 hm!65)) lt!214964 lt!214937))))

(declare-fun lt!214960 () Bool)

(declare-fun Unit!8612 () Unit!8610)

(declare-fun Unit!8613 () Unit!8610)

(assert (=> b!516767 (= lt!214945 (ite (and (_1!3128 lt!214958) lt!214960) (tuple2!5823 Unit!8612 (HashMap!495 (Cell!2036 (_2!3128 lt!214958)) (hashF!2385 hm!65) (bvsub (_size!1156 hm!65) #b00000000000000000000000000000001) (defaultValue!644 hm!65))) (tuple2!5823 Unit!8613 (HashMap!495 (Cell!2036 (_2!3128 lt!214958)) (hashF!2385 hm!65) (_size!1156 hm!65) (defaultValue!644 hm!65)))))))

(declare-fun lt!214941 () Unit!8610)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!16 (List!4740 K!1422) Unit!8610)

(assert (=> b!516767 (= lt!214941 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!16 lt!214963 k0!1740))))

(declare-fun noDuplicateKeys!18 (List!4740) Bool)

(assert (=> b!516767 (noDuplicateKeys!18 (removePairForKey!16 lt!214963 k0!1740))))

(declare-fun lt!214940 () Unit!8610)

(assert (=> b!516767 (= lt!214940 lt!214941)))

(declare-fun c!100093 () Bool)

(assert (=> b!516767 (= c!100093 (_1!3128 lt!214958))))

(declare-fun lt!214946 () Unit!8610)

(declare-fun e!309275 () Unit!8610)

(assert (=> b!516767 (= lt!214946 e!309275)))

(declare-fun b!516768 () Bool)

(declare-fun e!309274 () ListMap!197)

(declare-fun call!37758 () ListMap!197)

(assert (=> b!516768 (= e!309274 call!37758)))

(declare-fun b!516769 () Bool)

(declare-fun call!37757 () ListMap!197)

(assert (=> b!516769 (= call!37757 lt!214961)))

(declare-fun lt!214949 () Unit!8610)

(declare-fun Unit!8614 () Unit!8610)

(assert (=> b!516769 (= lt!214949 Unit!8614)))

(declare-fun call!37761 () Bool)

(assert (=> b!516769 call!37761))

(declare-fun Unit!8615 () Unit!8610)

(assert (=> b!516769 (= e!309275 Unit!8615)))

(declare-fun b!516770 () Bool)

(assert (=> b!516770 (= e!309274 (-!38 call!37758 k0!1740))))

(declare-fun bm!37753 () Bool)

(assert (=> bm!37753 (= call!37758 (map!1046 hm!65))))

(declare-fun call!37764 () ListMap!197)

(declare-fun bm!37754 () Bool)

(declare-fun c!100096 () Bool)

(declare-fun call!37763 () ListMap!197)

(assert (=> bm!37754 (= call!37763 (-!38 (ite c!100096 call!37764 lt!214961) k0!1740))))

(declare-fun b!516771 () Bool)

(declare-fun res!219152 () Bool)

(declare-fun e!309272 () Bool)

(assert (=> b!516771 (=> (not res!219152) (not e!309272))))

(assert (=> b!516771 (= res!219152 (valid!488 (_2!3125 lt!214954)))))

(declare-fun bm!37755 () Bool)

(assert (=> bm!37755 (= call!37761 (valid!488 (_2!3127 lt!214945)))))

(declare-fun b!516772 () Bool)

(assert (=> b!516772 (eq!35 call!37757 call!37763)))

(declare-fun lt!214938 () Unit!8610)

(declare-fun lt!214956 () Unit!8610)

(assert (=> b!516772 (= lt!214938 lt!214956)))

(declare-fun extractMap!22 (List!4741) ListMap!197)

(declare-fun +!25 (ListLongMap!81 tuple2!5820) ListLongMap!81)

(assert (=> b!516772 (eq!35 (extractMap!22 (toList!424 (+!25 lt!214965 (tuple2!5821 lt!214964 lt!214937)))) (-!38 call!37764 k0!1740))))

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!14 (ListLongMap!81 (_ BitVec 64) List!4740 K!1422 Hashable!495) Unit!8610)

(assert (=> b!516772 (= lt!214956 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!14 lt!214965 lt!214964 lt!214937 k0!1740 (hashF!2385 (_2!3127 lt!214945))))))

(declare-fun lt!214966 () Unit!8610)

(declare-fun Unit!8616 () Unit!8610)

(assert (=> b!516772 (= lt!214966 Unit!8616)))

(declare-fun contains!1093 (ListMap!197 K!1422) Bool)

(assert (=> b!516772 (contains!1093 lt!214961 k0!1740)))

(declare-fun lt!214952 () Unit!8610)

(declare-fun Unit!8617 () Unit!8610)

(assert (=> b!516772 (= lt!214952 Unit!8617)))

(assert (=> b!516772 call!37761))

(declare-fun lt!214939 () Unit!8610)

(declare-fun Unit!8618 () Unit!8610)

(assert (=> b!516772 (= lt!214939 Unit!8618)))

(assert (=> b!516772 (allKeysSameHashInMap!29 (map!1047 (v!15778 (underlying!1226 (_2!3127 lt!214945)))) (hashF!2385 (_2!3127 lt!214945)))))

(declare-fun lt!214947 () Unit!8610)

(declare-fun Unit!8619 () Unit!8610)

(assert (=> b!516772 (= lt!214947 Unit!8619)))

(assert (=> b!516772 (forall!1406 (toList!424 (map!1047 (v!15778 (underlying!1226 (_2!3127 lt!214945))))) lambda!14524)))

(declare-fun lt!214951 () Unit!8610)

(declare-fun lt!214944 () Unit!8610)

(assert (=> b!516772 (= lt!214951 lt!214944)))

(assert (=> b!516772 e!309271))

(declare-fun res!219153 () Bool)

(assert (=> b!516772 (=> (not res!219153) (not e!309271))))

(assert (=> b!516772 (= res!219153 (forall!1406 (toList!424 lt!214942) lambda!14524))))

(assert (=> b!516772 (= lt!214942 (+!25 lt!214965 (tuple2!5821 lt!214964 lt!214937)))))

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!16 (ListLongMap!81 (_ BitVec 64) List!4740 Hashable!495) Unit!8610)

(assert (=> b!516772 (= lt!214944 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!16 lt!214965 lt!214964 lt!214937 (hashF!2385 (_2!3127 lt!214945))))))

(declare-fun lt!214962 () Unit!8610)

(declare-fun lt!214955 () Unit!8610)

(assert (=> b!516772 (= lt!214962 lt!214955)))

(declare-fun allKeysSameHash!17 (List!4740 (_ BitVec 64) Hashable!495) Bool)

(assert (=> b!516772 (allKeysSameHash!17 (removePairForKey!16 lt!214963 k0!1740) lt!214964 (hashF!2385 (_2!3127 lt!214945)))))

(declare-fun lemmaRemovePairForKeyPreservesHash!16 (List!4740 K!1422 (_ BitVec 64) Hashable!495) Unit!8610)

(assert (=> b!516772 (= lt!214955 (lemmaRemovePairForKeyPreservesHash!16 lt!214963 k0!1740 lt!214964 (hashF!2385 (_2!3127 lt!214945))))))

(declare-fun lt!214957 () Unit!8610)

(declare-fun lt!214948 () Unit!8610)

(assert (=> b!516772 (= lt!214957 lt!214948)))

(assert (=> b!516772 (allKeysSameHash!17 lt!214963 lt!214964 (hashF!2385 (_2!3127 lt!214945)))))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!16 (List!4741 (_ BitVec 64) List!4740 Hashable!495) Unit!8610)

(assert (=> b!516772 (= lt!214948 (lemmaInLongMapAllKeySameHashThenForTuple!16 (toList!424 lt!214965) lt!214964 lt!214963 (hashF!2385 (_2!3127 lt!214945))))))

(declare-fun Unit!8620 () Unit!8610)

(assert (=> b!516772 (= e!309275 Unit!8620)))

(declare-fun bm!37756 () Bool)

(declare-fun lt!214950 () ListLongMap!81)

(assert (=> bm!37756 (= call!37764 (extractMap!22 (ite c!100096 (toList!424 lt!214950) (toList!424 lt!214965))))))

(declare-fun bm!37757 () Bool)

(assert (=> bm!37757 (= call!37762 (map!1047 (v!15778 (underlying!1226 hm!65))))))

(declare-fun bm!37758 () Bool)

(assert (=> bm!37758 (= call!37757 (map!1046 (_2!3127 lt!214945)))))

(declare-fun bm!37759 () Bool)

(declare-fun call!37759 () Bool)

(assert (=> bm!37759 (= call!37759 (eq!35 call!37760 e!309274))))

(declare-fun c!100095 () Bool)

(declare-fun c!100094 () Bool)

(assert (=> bm!37759 (= c!100095 c!100094)))

(declare-fun d!184828 () Bool)

(assert (=> d!184828 e!309272))

(declare-fun res!219151 () Bool)

(assert (=> d!184828 (=> (not res!219151) (not e!309272))))

(assert (=> d!184828 (= res!219151 ((_ is HashMap!495) (_2!3125 lt!214954)))))

(assert (=> d!184828 (= lt!214954 e!309273)))

(assert (=> d!184828 (= c!100096 (not lt!214960))))

(declare-fun contains!1094 (MutableMap!495 K!1422) Bool)

(assert (=> d!184828 (= lt!214960 (contains!1094 hm!65 k0!1740))))

(assert (=> d!184828 (valid!488 hm!65)))

(assert (=> d!184828 (= (remove!41 hm!65 k0!1740) lt!214954)))

(declare-fun b!516773 () Bool)

(declare-fun e!309270 () Bool)

(assert (=> b!516773 (= e!309272 e!309270)))

(assert (=> b!516773 (= c!100094 (_1!3125 lt!214954))))

(declare-fun b!516774 () Bool)

(assert (=> b!516774 (= e!309270 call!37759)))

(declare-fun b!516775 () Bool)

(assert (=> b!516775 (= e!309273 (tuple2!5819 true hm!65))))

(assert (=> b!516775 (= lt!214950 call!37762)))

(declare-fun lt!214943 () Unit!8610)

(declare-fun lemmaRemoveNotContainedDoesNotChange!14 (ListLongMap!81 K!1422 Hashable!495) Unit!8610)

(assert (=> b!516775 (= lt!214943 (lemmaRemoveNotContainedDoesNotChange!14 lt!214950 k0!1740 (hashF!2385 hm!65)))))

(assert (=> b!516775 (= call!37764 call!37763)))

(declare-fun lt!214953 () Unit!8610)

(assert (=> b!516775 (= lt!214953 lt!214943)))

(declare-fun b!516776 () Bool)

(assert (=> b!516776 (= e!309270 call!37759)))

(assert (= (and d!184828 c!100096) b!516775))

(assert (= (and d!184828 (not c!100096)) b!516767))

(assert (= (and b!516767 c!100093) b!516772))

(assert (= (and b!516767 (not c!100093)) b!516769))

(assert (= (and b!516772 res!219153) b!516766))

(assert (= (or b!516772 b!516769) bm!37755))

(assert (= (or b!516772 b!516769) bm!37758))

(assert (= (or b!516775 b!516767) bm!37757))

(assert (= (or b!516775 b!516772) bm!37756))

(assert (= (or b!516775 b!516772) bm!37754))

(assert (= (and d!184828 res!219151) b!516771))

(assert (= (and b!516771 res!219152) b!516773))

(assert (= (and b!516773 c!100094) b!516774))

(assert (= (and b!516773 (not c!100094)) b!516776))

(assert (= (or b!516774 b!516776) bm!37753))

(assert (= (or b!516774 b!516776) bm!37752))

(assert (= (or b!516774 b!516776) bm!37759))

(assert (= (and bm!37759 c!100095) b!516770))

(assert (= (and bm!37759 (not c!100095)) b!516768))

(declare-fun m!763295 () Bool)

(assert (=> bm!37759 m!763295))

(assert (=> bm!37753 m!763247))

(declare-fun m!763297 () Bool)

(assert (=> bm!37754 m!763297))

(declare-fun m!763299 () Bool)

(assert (=> b!516771 m!763299))

(declare-fun m!763301 () Bool)

(assert (=> d!184828 m!763301))

(assert (=> d!184828 m!763249))

(declare-fun m!763303 () Bool)

(assert (=> b!516772 m!763303))

(declare-fun m!763305 () Bool)

(assert (=> b!516772 m!763305))

(declare-fun m!763307 () Bool)

(assert (=> b!516772 m!763307))

(declare-fun m!763309 () Bool)

(assert (=> b!516772 m!763309))

(declare-fun m!763311 () Bool)

(assert (=> b!516772 m!763311))

(declare-fun m!763313 () Bool)

(assert (=> b!516772 m!763313))

(declare-fun m!763315 () Bool)

(assert (=> b!516772 m!763315))

(assert (=> b!516772 m!763303))

(declare-fun m!763317 () Bool)

(assert (=> b!516772 m!763317))

(declare-fun m!763319 () Bool)

(assert (=> b!516772 m!763319))

(declare-fun m!763321 () Bool)

(assert (=> b!516772 m!763321))

(declare-fun m!763323 () Bool)

(assert (=> b!516772 m!763323))

(assert (=> b!516772 m!763307))

(declare-fun m!763325 () Bool)

(assert (=> b!516772 m!763325))

(declare-fun m!763327 () Bool)

(assert (=> b!516772 m!763327))

(declare-fun m!763329 () Bool)

(assert (=> b!516772 m!763329))

(assert (=> b!516772 m!763321))

(declare-fun m!763331 () Bool)

(assert (=> b!516772 m!763331))

(declare-fun m!763333 () Bool)

(assert (=> b!516772 m!763333))

(assert (=> b!516772 m!763323))

(declare-fun m!763335 () Bool)

(assert (=> b!516772 m!763335))

(declare-fun m!763337 () Bool)

(assert (=> bm!37755 m!763337))

(assert (=> bm!37757 m!763281))

(declare-fun m!763339 () Bool)

(assert (=> b!516770 m!763339))

(declare-fun m!763341 () Bool)

(assert (=> bm!37752 m!763341))

(declare-fun m!763343 () Bool)

(assert (=> b!516775 m!763343))

(declare-fun m!763345 () Bool)

(assert (=> bm!37756 m!763345))

(assert (=> b!516767 m!763303))

(assert (=> b!516767 m!763247))

(declare-fun m!763347 () Bool)

(assert (=> b!516767 m!763347))

(assert (=> b!516767 m!763303))

(declare-fun m!763349 () Bool)

(assert (=> b!516767 m!763349))

(declare-fun m!763351 () Bool)

(assert (=> b!516767 m!763351))

(declare-fun m!763353 () Bool)

(assert (=> b!516767 m!763353))

(declare-fun m!763355 () Bool)

(assert (=> b!516767 m!763355))

(declare-fun m!763357 () Bool)

(assert (=> b!516767 m!763357))

(declare-fun m!763359 () Bool)

(assert (=> bm!37758 m!763359))

(declare-fun m!763361 () Bool)

(assert (=> b!516766 m!763361))

(assert (=> b!516724 d!184828))

(declare-fun d!184830 () Bool)

(declare-fun e!309278 () Bool)

(assert (=> d!184830 e!309278))

(declare-fun res!219156 () Bool)

(assert (=> d!184830 (=> (not res!219156) (not e!309278))))

(declare-fun lt!214969 () ListMap!197)

(assert (=> d!184830 (= res!219156 (not (contains!1093 lt!214969 k0!1740)))))

(declare-fun removePresrvNoDuplicatedKeys!14 (List!4740 K!1422) List!4740)

(assert (=> d!184830 (= lt!214969 (ListMap!198 (removePresrvNoDuplicatedKeys!14 (toList!423 lt!214868) k0!1740)))))

(assert (=> d!184830 (= (-!38 lt!214868 k0!1740) lt!214969)))

(declare-fun b!516779 () Bool)

(declare-datatypes ((List!4742 0))(
  ( (Nil!4732) (Cons!4732 (h!10131 K!1422) (t!73308 List!4742)) )
))
(declare-fun content!829 (List!4742) (InoxSet K!1422))

(declare-fun keys!1857 (ListMap!197) List!4742)

(assert (=> b!516779 (= e!309278 (= ((_ map and) (content!829 (keys!1857 lt!214868)) ((_ map not) (store ((as const (Array K!1422 Bool)) false) k0!1740 true))) (content!829 (keys!1857 lt!214969))))))

(assert (= (and d!184830 res!219156) b!516779))

(declare-fun m!763363 () Bool)

(assert (=> d!184830 m!763363))

(declare-fun m!763365 () Bool)

(assert (=> d!184830 m!763365))

(declare-fun m!763367 () Bool)

(assert (=> b!516779 m!763367))

(declare-fun m!763369 () Bool)

(assert (=> b!516779 m!763369))

(declare-fun m!763371 () Bool)

(assert (=> b!516779 m!763371))

(assert (=> b!516779 m!763367))

(declare-fun m!763373 () Bool)

(assert (=> b!516779 m!763373))

(assert (=> b!516779 m!763369))

(declare-fun m!763375 () Bool)

(assert (=> b!516779 m!763375))

(assert (=> b!516724 d!184830))

(declare-fun d!184832 () Bool)

(assert (=> d!184832 (= (invariantList!76 (toList!423 lt!214869)) (noDuplicatedKeys!17 (toList!423 lt!214869)))))

(declare-fun bs!59899 () Bool)

(assert (= bs!59899 d!184832))

(declare-fun m!763377 () Bool)

(assert (=> bs!59899 m!763377))

(assert (=> b!516723 d!184832))

(declare-fun d!184834 () Bool)

(declare-fun lt!214972 () ListMap!197)

(assert (=> d!184834 (invariantList!76 (toList!423 lt!214972))))

(assert (=> d!184834 (= lt!214972 (extractMap!22 (toList!424 (map!1047 (v!15778 (underlying!1226 (_2!3125 lt!214870)))))))))

(assert (=> d!184834 (valid!488 (_2!3125 lt!214870))))

(assert (=> d!184834 (= (map!1046 (_2!3125 lt!214870)) lt!214972)))

(declare-fun bs!59900 () Bool)

(assert (= bs!59900 d!184834))

(declare-fun m!763379 () Bool)

(assert (=> bs!59900 m!763379))

(assert (=> bs!59900 m!763289))

(declare-fun m!763381 () Bool)

(assert (=> bs!59900 m!763381))

(assert (=> bs!59900 m!763237))

(assert (=> b!516723 d!184834))

(declare-fun d!184836 () Bool)

(declare-fun res!219157 () Bool)

(declare-fun e!309279 () Bool)

(assert (=> d!184836 (=> res!219157 e!309279)))

(assert (=> d!184836 (= res!219157 ((_ is Nil!4730) (toList!423 lt!214868)))))

(assert (=> d!184836 (= (forall!1405 (toList!423 lt!214868) p!6060) e!309279)))

(declare-fun b!516780 () Bool)

(declare-fun e!309280 () Bool)

(assert (=> b!516780 (= e!309279 e!309280)))

(declare-fun res!219158 () Bool)

(assert (=> b!516780 (=> (not res!219158) (not e!309280))))

(assert (=> b!516780 (= res!219158 (dynLambda!2981 p!6060 (h!10129 (toList!423 lt!214868))))))

(declare-fun b!516781 () Bool)

(assert (=> b!516781 (= e!309280 (forall!1405 (t!73302 (toList!423 lt!214868)) p!6060))))

(assert (= (and d!184836 (not res!219157)) b!516780))

(assert (= (and b!516780 res!219158) b!516781))

(declare-fun b_lambda!20087 () Bool)

(assert (=> (not b_lambda!20087) (not b!516780)))

(declare-fun t!73306 () Bool)

(declare-fun tb!47163 () Bool)

(assert (=> (and start!46930 (= p!6060 p!6060) t!73306) tb!47163))

(declare-fun result!52226 () Bool)

(assert (=> tb!47163 (= result!52226 true)))

(assert (=> b!516780 t!73306))

(declare-fun b_and!51069 () Bool)

(assert (= b_and!51067 (and (=> t!73306 result!52226) b_and!51069)))

(declare-fun m!763383 () Bool)

(assert (=> b!516780 m!763383))

(declare-fun m!763385 () Bool)

(assert (=> b!516781 m!763385))

(assert (=> b!516719 d!184836))

(declare-fun d!184838 () Bool)

(declare-fun lt!214973 () ListMap!197)

(assert (=> d!184838 (invariantList!76 (toList!423 lt!214973))))

(assert (=> d!184838 (= lt!214973 (extractMap!22 (toList!424 (map!1047 (v!15778 (underlying!1226 hm!65))))))))

(assert (=> d!184838 (valid!488 hm!65)))

(assert (=> d!184838 (= (map!1046 hm!65) lt!214973)))

(declare-fun bs!59901 () Bool)

(assert (= bs!59901 d!184838))

(declare-fun m!763387 () Bool)

(assert (=> bs!59901 m!763387))

(assert (=> bs!59901 m!763281))

(declare-fun m!763389 () Bool)

(assert (=> bs!59901 m!763389))

(assert (=> bs!59901 m!763249))

(assert (=> b!516719 d!184838))

(declare-fun tp!161224 () Bool)

(declare-fun tp_is_empty!2635 () Bool)

(declare-fun e!309283 () Bool)

(declare-fun b!516786 () Bool)

(assert (=> b!516786 (= e!309283 (and tp_is_empty!2633 tp_is_empty!2635 tp!161224))))

(assert (=> b!516717 (= tp!161218 e!309283)))

(assert (= (and b!516717 ((_ is Cons!4730) (zeroValue!779 (v!15777 (underlying!1225 (v!15778 (underlying!1226 hm!65))))))) b!516786))

(declare-fun tp!161225 () Bool)

(declare-fun e!309284 () Bool)

(declare-fun b!516787 () Bool)

(assert (=> b!516787 (= e!309284 (and tp_is_empty!2633 tp_is_empty!2635 tp!161225))))

(assert (=> b!516717 (= tp!161221 e!309284)))

(assert (= (and b!516717 ((_ is Cons!4730) (minValue!779 (v!15777 (underlying!1225 (v!15778 (underlying!1226 hm!65))))))) b!516787))

(declare-fun tp!161226 () Bool)

(declare-fun b!516788 () Bool)

(declare-fun e!309285 () Bool)

(assert (=> b!516788 (= e!309285 (and tp_is_empty!2633 tp_is_empty!2635 tp!161226))))

(assert (=> b!516721 (= tp!161214 e!309285)))

(assert (= (and b!516721 ((_ is Cons!4730) mapDefault!2022)) b!516788))

(declare-fun e!309291 () Bool)

(declare-fun b!516795 () Bool)

(declare-fun tp!161233 () Bool)

(assert (=> b!516795 (= e!309291 (and tp_is_empty!2633 tp_is_empty!2635 tp!161233))))

(declare-fun condMapEmpty!2025 () Bool)

(declare-fun mapDefault!2025 () List!4740)

(assert (=> mapNonEmpty!2022 (= condMapEmpty!2025 (= mapRest!2022 ((as const (Array (_ BitVec 32) List!4740)) mapDefault!2025)))))

(declare-fun e!309290 () Bool)

(declare-fun mapRes!2025 () Bool)

(assert (=> mapNonEmpty!2022 (= tp!161217 (and e!309290 mapRes!2025))))

(declare-fun b!516796 () Bool)

(declare-fun tp!161235 () Bool)

(assert (=> b!516796 (= e!309290 (and tp_is_empty!2633 tp_is_empty!2635 tp!161235))))

(declare-fun mapNonEmpty!2025 () Bool)

(declare-fun tp!161234 () Bool)

(assert (=> mapNonEmpty!2025 (= mapRes!2025 (and tp!161234 e!309291))))

(declare-fun mapValue!2025 () List!4740)

(declare-fun mapRest!2025 () (Array (_ BitVec 32) List!4740))

(declare-fun mapKey!2025 () (_ BitVec 32))

(assert (=> mapNonEmpty!2025 (= mapRest!2022 (store mapRest!2025 mapKey!2025 mapValue!2025))))

(declare-fun mapIsEmpty!2025 () Bool)

(assert (=> mapIsEmpty!2025 mapRes!2025))

(assert (= (and mapNonEmpty!2022 condMapEmpty!2025) mapIsEmpty!2025))

(assert (= (and mapNonEmpty!2022 (not condMapEmpty!2025)) mapNonEmpty!2025))

(assert (= (and mapNonEmpty!2025 ((_ is Cons!4730) mapValue!2025)) b!516795))

(assert (= (and mapNonEmpty!2022 ((_ is Cons!4730) mapDefault!2025)) b!516796))

(declare-fun m!763391 () Bool)

(assert (=> mapNonEmpty!2025 m!763391))

(declare-fun b!516797 () Bool)

(declare-fun e!309292 () Bool)

(declare-fun tp!161236 () Bool)

(assert (=> b!516797 (= e!309292 (and tp_is_empty!2633 tp_is_empty!2635 tp!161236))))

(assert (=> mapNonEmpty!2022 (= tp!161215 e!309292)))

(assert (= (and mapNonEmpty!2022 ((_ is Cons!4730) mapValue!2022)) b!516797))

(declare-fun b_lambda!20089 () Bool)

(assert (= b_lambda!20085 (or (and start!46930 b_free!13597) b_lambda!20089)))

(declare-fun b_lambda!20091 () Bool)

(assert (= b_lambda!20087 (or (and start!46930 b_free!13597) b_lambda!20091)))

(check-sat (not bm!37752) (not d!184834) tp_is_empty!2633 (not d!184822) tp_is_empty!2635 (not d!184824) (not b!516766) (not b!516779) (not b!516767) (not b!516740) (not b!516796) (not b!516787) (not b_next!13607) (not bm!37756) (not b!516771) (not b_lambda!20091) (not d!184830) (not d!184838) (not d!184816) (not bm!37753) (not b_next!13603) (not b!516741) (not bm!37757) (not b!516788) (not b_lambda!20089) (not bm!37755) b_and!51061 (not d!184826) (not b!516781) (not d!184832) b_and!51069 (not d!184828) (not bm!37754) (not mapNonEmpty!2025) (not bm!37759) b_and!51065 (not b!516743) (not b!516735) (not bm!37758) (not b!516795) (not b!516742) (not b!516775) (not b!516770) (not b!516786) (not b_next!13605) (not b!516797) (not d!184818) (not b!516772))
(check-sat (not b_next!13603) b_and!51061 (not b_next!13607) b_and!51069 b_and!51065 (not b_next!13605))
