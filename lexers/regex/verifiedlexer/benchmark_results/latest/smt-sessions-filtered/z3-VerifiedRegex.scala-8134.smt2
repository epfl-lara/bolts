; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!418560 () Bool)

(assert start!418560)

(declare-fun b!4337917 () Bool)

(declare-fun res!1779666 () Bool)

(declare-fun e!2699150 () Bool)

(assert (=> b!4337917 (=> (not res!1779666) (not e!2699150))))

(declare-datatypes ((V!10321 0))(
  ( (V!10322 (val!16331 Int)) )
))
(declare-datatypes ((K!10075 0))(
  ( (K!10076 (val!16332 Int)) )
))
(declare-datatypes ((tuple2!47982 0))(
  ( (tuple2!47983 (_1!27285 K!10075) (_2!27285 V!10321)) )
))
(declare-datatypes ((List!48841 0))(
  ( (Nil!48717) (Cons!48717 (h!54226 tuple2!47982) (t!355757 List!48841)) )
))
(declare-datatypes ((tuple2!47984 0))(
  ( (tuple2!47985 (_1!27286 (_ BitVec 64)) (_2!27286 List!48841)) )
))
(declare-datatypes ((List!48842 0))(
  ( (Nil!48718) (Cons!48718 (h!54227 tuple2!47984) (t!355758 List!48842)) )
))
(declare-datatypes ((ListLongMap!1439 0))(
  ( (ListLongMap!1440 (toList!2789 List!48842)) )
))
(declare-fun lm!1707 () ListLongMap!1439)

(declare-datatypes ((Hashable!4795 0))(
  ( (HashableExt!4794 (__x!30498 Int)) )
))
(declare-fun hashF!1247 () Hashable!4795)

(declare-fun allKeysSameHashInMap!507 (ListLongMap!1439 Hashable!4795) Bool)

(assert (=> b!4337917 (= res!1779666 (allKeysSameHashInMap!507 lm!1707 hashF!1247))))

(declare-fun b!4337918 () Bool)

(declare-fun res!1779676 () Bool)

(declare-fun e!2699144 () Bool)

(assert (=> b!4337918 (=> (not res!1779676) (not e!2699144))))

(declare-fun lt!1552000 () ListLongMap!1439)

(declare-fun lambda!136493 () Int)

(declare-fun forall!8979 (List!48842 Int) Bool)

(assert (=> b!4337918 (= res!1779676 (forall!8979 (toList!2789 lt!1552000) lambda!136493))))

(declare-fun b!4337919 () Bool)

(declare-fun res!1779675 () Bool)

(assert (=> b!4337919 (=> (not res!1779675) (not e!2699150))))

(declare-fun newBucket!200 () List!48841)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun allKeysSameHash!361 (List!48841 (_ BitVec 64) Hashable!4795) Bool)

(assert (=> b!4337919 (= res!1779675 (allKeysSameHash!361 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4337920 () Bool)

(declare-fun lt!1552001 () tuple2!47984)

(get-info :version)

(assert (=> b!4337920 (= e!2699144 (or (not ((_ is Cons!48718) (toList!2789 lm!1707))) (not (= (_1!27286 (h!54227 (toList!2789 lm!1707))) hash!377)) (= lt!1552000 (ListLongMap!1440 (Cons!48718 lt!1552001 (t!355758 (toList!2789 lm!1707)))))))))

(declare-fun b!4337921 () Bool)

(declare-fun e!2699149 () Bool)

(declare-datatypes ((ListMap!2033 0))(
  ( (ListMap!2034 (toList!2790 List!48841)) )
))
(declare-fun lt!1552005 () ListMap!2033)

(declare-fun lt!1551991 () ListMap!2033)

(declare-fun eq!193 (ListMap!2033 ListMap!2033) Bool)

(assert (=> b!4337921 (= e!2699149 (eq!193 lt!1552005 lt!1551991))))

(declare-fun res!1779674 () Bool)

(assert (=> start!418560 (=> (not res!1779674) (not e!2699150))))

(assert (=> start!418560 (= res!1779674 (forall!8979 (toList!2789 lm!1707) lambda!136493))))

(assert (=> start!418560 e!2699150))

(declare-fun e!2699148 () Bool)

(assert (=> start!418560 e!2699148))

(assert (=> start!418560 true))

(declare-fun e!2699145 () Bool)

(declare-fun inv!64261 (ListLongMap!1439) Bool)

(assert (=> start!418560 (and (inv!64261 lm!1707) e!2699145)))

(declare-fun tp_is_empty!24849 () Bool)

(assert (=> start!418560 tp_is_empty!24849))

(declare-fun tp_is_empty!24851 () Bool)

(assert (=> start!418560 tp_is_empty!24851))

(declare-fun b!4337922 () Bool)

(declare-fun tp!1329171 () Bool)

(assert (=> b!4337922 (= e!2699145 tp!1329171)))

(declare-fun b!4337923 () Bool)

(declare-fun res!1779668 () Bool)

(assert (=> b!4337923 (=> (not res!1779668) (not e!2699150))))

(declare-fun key!3918 () K!10075)

(declare-fun contains!10802 (ListMap!2033 K!10075) Bool)

(declare-fun extractMap!462 (List!48842) ListMap!2033)

(assert (=> b!4337923 (= res!1779668 (contains!10802 (extractMap!462 (toList!2789 lm!1707)) key!3918))))

(declare-fun b!4337924 () Bool)

(declare-fun res!1779671 () Bool)

(assert (=> b!4337924 (=> (not res!1779671) (not e!2699150))))

(declare-fun hash!1358 (Hashable!4795 K!10075) (_ BitVec 64))

(assert (=> b!4337924 (= res!1779671 (= (hash!1358 hashF!1247 key!3918) hash!377))))

(declare-fun tp!1329172 () Bool)

(declare-fun b!4337925 () Bool)

(assert (=> b!4337925 (= e!2699148 (and tp_is_empty!24849 tp_is_empty!24851 tp!1329172))))

(declare-fun b!4337926 () Bool)

(declare-fun e!2699147 () Bool)

(assert (=> b!4337926 (= e!2699150 (not e!2699147))))

(declare-fun res!1779677 () Bool)

(assert (=> b!4337926 (=> res!1779677 e!2699147)))

(declare-fun lt!1551992 () List!48841)

(assert (=> b!4337926 (= res!1779677 (not (= newBucket!200 lt!1551992)))))

(declare-fun lt!1551989 () tuple2!47982)

(declare-fun lt!1551996 () List!48841)

(assert (=> b!4337926 (= lt!1551992 (Cons!48717 lt!1551989 lt!1551996))))

(declare-fun lt!1551990 () List!48841)

(declare-fun removePairForKey!373 (List!48841 K!10075) List!48841)

(assert (=> b!4337926 (= lt!1551996 (removePairForKey!373 lt!1551990 key!3918))))

(declare-fun newValue!99 () V!10321)

(assert (=> b!4337926 (= lt!1551989 (tuple2!47983 key!3918 newValue!99))))

(declare-datatypes ((Unit!68979 0))(
  ( (Unit!68980) )
))
(declare-fun lt!1551995 () Unit!68979)

(declare-fun lt!1552002 () tuple2!47984)

(declare-fun forallContained!1629 (List!48842 Int tuple2!47984) Unit!68979)

(assert (=> b!4337926 (= lt!1551995 (forallContained!1629 (toList!2789 lm!1707) lambda!136493 lt!1552002))))

(declare-fun contains!10803 (List!48842 tuple2!47984) Bool)

(assert (=> b!4337926 (contains!10803 (toList!2789 lm!1707) lt!1552002)))

(assert (=> b!4337926 (= lt!1552002 (tuple2!47985 hash!377 lt!1551990))))

(declare-fun lt!1552003 () Unit!68979)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!250 (List!48842 (_ BitVec 64) List!48841) Unit!68979)

(assert (=> b!4337926 (= lt!1552003 (lemmaGetValueByKeyImpliesContainsTuple!250 (toList!2789 lm!1707) hash!377 lt!1551990))))

(declare-fun apply!11255 (ListLongMap!1439 (_ BitVec 64)) List!48841)

(assert (=> b!4337926 (= lt!1551990 (apply!11255 lm!1707 hash!377))))

(declare-fun b!4337927 () Bool)

(declare-fun res!1779670 () Bool)

(assert (=> b!4337927 (=> (not res!1779670) (not e!2699150))))

(declare-fun contains!10804 (ListLongMap!1439 (_ BitVec 64)) Bool)

(assert (=> b!4337927 (= res!1779670 (contains!10804 lm!1707 hash!377))))

(declare-fun b!4337928 () Bool)

(declare-fun res!1779672 () Bool)

(assert (=> b!4337928 (=> res!1779672 e!2699147)))

(declare-fun noDuplicateKeys!403 (List!48841) Bool)

(assert (=> b!4337928 (= res!1779672 (not (noDuplicateKeys!403 newBucket!200)))))

(declare-fun b!4337929 () Bool)

(declare-fun e!2699146 () Bool)

(assert (=> b!4337929 (= e!2699147 e!2699146)))

(declare-fun res!1779669 () Bool)

(assert (=> b!4337929 (=> res!1779669 e!2699146)))

(assert (=> b!4337929 (= res!1779669 (or (not ((_ is Cons!48718) (toList!2789 lm!1707))) (not (= (_1!27286 (h!54227 (toList!2789 lm!1707))) hash!377))))))

(assert (=> b!4337929 e!2699144))

(declare-fun res!1779673 () Bool)

(assert (=> b!4337929 (=> (not res!1779673) (not e!2699144))))

(assert (=> b!4337929 (= res!1779673 (forall!8979 (toList!2789 lt!1552000) lambda!136493))))

(declare-fun +!477 (ListLongMap!1439 tuple2!47984) ListLongMap!1439)

(assert (=> b!4337929 (= lt!1552000 (+!477 lm!1707 lt!1552001))))

(assert (=> b!4337929 (= lt!1552001 (tuple2!47985 hash!377 newBucket!200))))

(declare-fun lt!1551997 () Unit!68979)

(declare-fun addValidProp!57 (ListLongMap!1439 Int (_ BitVec 64) List!48841) Unit!68979)

(assert (=> b!4337929 (= lt!1551997 (addValidProp!57 lm!1707 lambda!136493 hash!377 newBucket!200))))

(assert (=> b!4337929 (forall!8979 (toList!2789 lm!1707) lambda!136493)))

(declare-fun b!4337930 () Bool)

(assert (=> b!4337930 (= e!2699146 (noDuplicateKeys!403 lt!1551990))))

(declare-fun lt!1551993 () List!48841)

(assert (=> b!4337930 (= lt!1551993 lt!1551996)))

(declare-fun lt!1551998 () ListLongMap!1439)

(assert (=> b!4337930 (= lt!1551998 (+!477 lm!1707 (tuple2!47985 hash!377 lt!1551993)))))

(declare-fun tail!6901 (List!48841) List!48841)

(assert (=> b!4337930 (= lt!1551993 (tail!6901 newBucket!200))))

(assert (=> b!4337930 e!2699149))

(declare-fun res!1779667 () Bool)

(assert (=> b!4337930 (=> (not res!1779667) (not e!2699149))))

(declare-fun lt!1552004 () ListMap!2033)

(assert (=> b!4337930 (= res!1779667 (eq!193 lt!1552004 lt!1551991))))

(declare-fun lt!1551999 () ListMap!2033)

(declare-fun +!478 (ListMap!2033 tuple2!47982) ListMap!2033)

(declare-fun addToMapMapFromBucket!111 (List!48841 ListMap!2033) ListMap!2033)

(assert (=> b!4337930 (= lt!1551991 (+!478 (addToMapMapFromBucket!111 lt!1551996 lt!1551999) lt!1551989))))

(declare-fun lt!1552006 () Unit!68979)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!22 (ListMap!2033 K!10075 V!10321 List!48841) Unit!68979)

(assert (=> b!4337930 (= lt!1552006 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!22 lt!1551999 key!3918 newValue!99 lt!1551996))))

(assert (=> b!4337930 (= lt!1552005 lt!1552004)))

(assert (=> b!4337930 (= lt!1552004 (addToMapMapFromBucket!111 lt!1551996 (+!478 lt!1551999 lt!1551989)))))

(declare-fun lt!1551994 () ListMap!2033)

(assert (=> b!4337930 (= lt!1551994 lt!1552005)))

(assert (=> b!4337930 (= lt!1552005 (addToMapMapFromBucket!111 lt!1551992 lt!1551999))))

(assert (=> b!4337930 (= lt!1551994 (addToMapMapFromBucket!111 newBucket!200 lt!1551999))))

(assert (=> b!4337930 (= lt!1551994 (extractMap!462 (toList!2789 lt!1552000)))))

(assert (=> b!4337930 (= lt!1551999 (extractMap!462 (t!355758 (toList!2789 lm!1707))))))

(assert (= (and start!418560 res!1779674) b!4337917))

(assert (= (and b!4337917 res!1779666) b!4337924))

(assert (= (and b!4337924 res!1779671) b!4337919))

(assert (= (and b!4337919 res!1779675) b!4337923))

(assert (= (and b!4337923 res!1779668) b!4337927))

(assert (= (and b!4337927 res!1779670) b!4337926))

(assert (= (and b!4337926 (not res!1779677)) b!4337928))

(assert (= (and b!4337928 (not res!1779672)) b!4337929))

(assert (= (and b!4337929 res!1779673) b!4337918))

(assert (= (and b!4337918 res!1779676) b!4337920))

(assert (= (and b!4337929 (not res!1779669)) b!4337930))

(assert (= (and b!4337930 res!1779667) b!4337921))

(assert (= (and start!418560 ((_ is Cons!48717) newBucket!200)) b!4337925))

(assert (= start!418560 b!4337922))

(declare-fun m!4934473 () Bool)

(assert (=> b!4337918 m!4934473))

(assert (=> b!4337929 m!4934473))

(declare-fun m!4934475 () Bool)

(assert (=> b!4337929 m!4934475))

(declare-fun m!4934477 () Bool)

(assert (=> b!4337929 m!4934477))

(declare-fun m!4934479 () Bool)

(assert (=> b!4337929 m!4934479))

(declare-fun m!4934481 () Bool)

(assert (=> b!4337921 m!4934481))

(declare-fun m!4934483 () Bool)

(assert (=> b!4337928 m!4934483))

(declare-fun m!4934485 () Bool)

(assert (=> b!4337926 m!4934485))

(declare-fun m!4934487 () Bool)

(assert (=> b!4337926 m!4934487))

(declare-fun m!4934489 () Bool)

(assert (=> b!4337926 m!4934489))

(declare-fun m!4934491 () Bool)

(assert (=> b!4337926 m!4934491))

(declare-fun m!4934493 () Bool)

(assert (=> b!4337926 m!4934493))

(assert (=> start!418560 m!4934479))

(declare-fun m!4934495 () Bool)

(assert (=> start!418560 m!4934495))

(declare-fun m!4934497 () Bool)

(assert (=> b!4337917 m!4934497))

(declare-fun m!4934499 () Bool)

(assert (=> b!4337924 m!4934499))

(declare-fun m!4934501 () Bool)

(assert (=> b!4337930 m!4934501))

(declare-fun m!4934503 () Bool)

(assert (=> b!4337930 m!4934503))

(declare-fun m!4934505 () Bool)

(assert (=> b!4337930 m!4934505))

(declare-fun m!4934507 () Bool)

(assert (=> b!4337930 m!4934507))

(declare-fun m!4934509 () Bool)

(assert (=> b!4337930 m!4934509))

(declare-fun m!4934511 () Bool)

(assert (=> b!4337930 m!4934511))

(declare-fun m!4934513 () Bool)

(assert (=> b!4337930 m!4934513))

(declare-fun m!4934515 () Bool)

(assert (=> b!4337930 m!4934515))

(assert (=> b!4337930 m!4934509))

(declare-fun m!4934517 () Bool)

(assert (=> b!4337930 m!4934517))

(declare-fun m!4934519 () Bool)

(assert (=> b!4337930 m!4934519))

(assert (=> b!4337930 m!4934519))

(declare-fun m!4934521 () Bool)

(assert (=> b!4337930 m!4934521))

(declare-fun m!4934523 () Bool)

(assert (=> b!4337930 m!4934523))

(declare-fun m!4934525 () Bool)

(assert (=> b!4337930 m!4934525))

(declare-fun m!4934527 () Bool)

(assert (=> b!4337919 m!4934527))

(declare-fun m!4934529 () Bool)

(assert (=> b!4337927 m!4934529))

(declare-fun m!4934531 () Bool)

(assert (=> b!4337923 m!4934531))

(assert (=> b!4337923 m!4934531))

(declare-fun m!4934533 () Bool)

(assert (=> b!4337923 m!4934533))

(check-sat (not b!4337925) (not b!4337922) (not b!4337917) (not b!4337926) tp_is_empty!24849 (not b!4337929) (not b!4337924) (not b!4337918) (not b!4337919) (not b!4337928) (not b!4337921) (not b!4337923) (not b!4337927) tp_is_empty!24851 (not start!418560) (not b!4337930))
(check-sat)
(get-model)

(declare-fun d!1275029 () Bool)

(declare-datatypes ((Option!10382 0))(
  ( (None!10381) (Some!10381 (v!43137 List!48841)) )
))
(declare-fun get!15809 (Option!10382) List!48841)

(declare-fun getValueByKey!368 (List!48842 (_ BitVec 64)) Option!10382)

(assert (=> d!1275029 (= (apply!11255 lm!1707 hash!377) (get!15809 (getValueByKey!368 (toList!2789 lm!1707) hash!377)))))

(declare-fun bs!609474 () Bool)

(assert (= bs!609474 d!1275029))

(declare-fun m!4934535 () Bool)

(assert (=> bs!609474 m!4934535))

(assert (=> bs!609474 m!4934535))

(declare-fun m!4934537 () Bool)

(assert (=> bs!609474 m!4934537))

(assert (=> b!4337926 d!1275029))

(declare-fun d!1275031 () Bool)

(declare-fun lt!1552009 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7619 (List!48842) (InoxSet tuple2!47984))

(assert (=> d!1275031 (= lt!1552009 (select (content!7619 (toList!2789 lm!1707)) lt!1552002))))

(declare-fun e!2699156 () Bool)

(assert (=> d!1275031 (= lt!1552009 e!2699156)))

(declare-fun res!1779683 () Bool)

(assert (=> d!1275031 (=> (not res!1779683) (not e!2699156))))

(assert (=> d!1275031 (= res!1779683 ((_ is Cons!48718) (toList!2789 lm!1707)))))

(assert (=> d!1275031 (= (contains!10803 (toList!2789 lm!1707) lt!1552002) lt!1552009)))

(declare-fun b!4337935 () Bool)

(declare-fun e!2699155 () Bool)

(assert (=> b!4337935 (= e!2699156 e!2699155)))

(declare-fun res!1779682 () Bool)

(assert (=> b!4337935 (=> res!1779682 e!2699155)))

(assert (=> b!4337935 (= res!1779682 (= (h!54227 (toList!2789 lm!1707)) lt!1552002))))

(declare-fun b!4337936 () Bool)

(assert (=> b!4337936 (= e!2699155 (contains!10803 (t!355758 (toList!2789 lm!1707)) lt!1552002))))

(assert (= (and d!1275031 res!1779683) b!4337935))

(assert (= (and b!4337935 (not res!1779682)) b!4337936))

(declare-fun m!4934539 () Bool)

(assert (=> d!1275031 m!4934539))

(declare-fun m!4934541 () Bool)

(assert (=> d!1275031 m!4934541))

(declare-fun m!4934543 () Bool)

(assert (=> b!4337936 m!4934543))

(assert (=> b!4337926 d!1275031))

(declare-fun b!4337948 () Bool)

(declare-fun e!2699162 () List!48841)

(assert (=> b!4337948 (= e!2699162 Nil!48717)))

(declare-fun b!4337946 () Bool)

(declare-fun e!2699161 () List!48841)

(assert (=> b!4337946 (= e!2699161 e!2699162)))

(declare-fun c!737537 () Bool)

(assert (=> b!4337946 (= c!737537 ((_ is Cons!48717) lt!1551990))))

(declare-fun d!1275033 () Bool)

(declare-fun lt!1552012 () List!48841)

(declare-fun containsKey!555 (List!48841 K!10075) Bool)

(assert (=> d!1275033 (not (containsKey!555 lt!1552012 key!3918))))

(assert (=> d!1275033 (= lt!1552012 e!2699161)))

(declare-fun c!737538 () Bool)

(assert (=> d!1275033 (= c!737538 (and ((_ is Cons!48717) lt!1551990) (= (_1!27285 (h!54226 lt!1551990)) key!3918)))))

(assert (=> d!1275033 (noDuplicateKeys!403 lt!1551990)))

(assert (=> d!1275033 (= (removePairForKey!373 lt!1551990 key!3918) lt!1552012)))

(declare-fun b!4337947 () Bool)

(assert (=> b!4337947 (= e!2699162 (Cons!48717 (h!54226 lt!1551990) (removePairForKey!373 (t!355757 lt!1551990) key!3918)))))

(declare-fun b!4337945 () Bool)

(assert (=> b!4337945 (= e!2699161 (t!355757 lt!1551990))))

(assert (= (and d!1275033 c!737538) b!4337945))

(assert (= (and d!1275033 (not c!737538)) b!4337946))

(assert (= (and b!4337946 c!737537) b!4337947))

(assert (= (and b!4337946 (not c!737537)) b!4337948))

(declare-fun m!4934545 () Bool)

(assert (=> d!1275033 m!4934545))

(assert (=> d!1275033 m!4934525))

(declare-fun m!4934547 () Bool)

(assert (=> b!4337947 m!4934547))

(assert (=> b!4337926 d!1275033))

(declare-fun d!1275035 () Bool)

(declare-fun dynLambda!20574 (Int tuple2!47984) Bool)

(assert (=> d!1275035 (dynLambda!20574 lambda!136493 lt!1552002)))

(declare-fun lt!1552015 () Unit!68979)

(declare-fun choose!26567 (List!48842 Int tuple2!47984) Unit!68979)

(assert (=> d!1275035 (= lt!1552015 (choose!26567 (toList!2789 lm!1707) lambda!136493 lt!1552002))))

(declare-fun e!2699165 () Bool)

(assert (=> d!1275035 e!2699165))

(declare-fun res!1779686 () Bool)

(assert (=> d!1275035 (=> (not res!1779686) (not e!2699165))))

(assert (=> d!1275035 (= res!1779686 (forall!8979 (toList!2789 lm!1707) lambda!136493))))

(assert (=> d!1275035 (= (forallContained!1629 (toList!2789 lm!1707) lambda!136493 lt!1552002) lt!1552015)))

(declare-fun b!4337951 () Bool)

(assert (=> b!4337951 (= e!2699165 (contains!10803 (toList!2789 lm!1707) lt!1552002))))

(assert (= (and d!1275035 res!1779686) b!4337951))

(declare-fun b_lambda!128427 () Bool)

(assert (=> (not b_lambda!128427) (not d!1275035)))

(declare-fun m!4934549 () Bool)

(assert (=> d!1275035 m!4934549))

(declare-fun m!4934551 () Bool)

(assert (=> d!1275035 m!4934551))

(assert (=> d!1275035 m!4934479))

(assert (=> b!4337951 m!4934485))

(assert (=> b!4337926 d!1275035))

(declare-fun d!1275037 () Bool)

(assert (=> d!1275037 (contains!10803 (toList!2789 lm!1707) (tuple2!47985 hash!377 lt!1551990))))

(declare-fun lt!1552018 () Unit!68979)

(declare-fun choose!26568 (List!48842 (_ BitVec 64) List!48841) Unit!68979)

(assert (=> d!1275037 (= lt!1552018 (choose!26568 (toList!2789 lm!1707) hash!377 lt!1551990))))

(declare-fun e!2699168 () Bool)

(assert (=> d!1275037 e!2699168))

(declare-fun res!1779689 () Bool)

(assert (=> d!1275037 (=> (not res!1779689) (not e!2699168))))

(declare-fun isStrictlySorted!61 (List!48842) Bool)

(assert (=> d!1275037 (= res!1779689 (isStrictlySorted!61 (toList!2789 lm!1707)))))

(assert (=> d!1275037 (= (lemmaGetValueByKeyImpliesContainsTuple!250 (toList!2789 lm!1707) hash!377 lt!1551990) lt!1552018)))

(declare-fun b!4337954 () Bool)

(assert (=> b!4337954 (= e!2699168 (= (getValueByKey!368 (toList!2789 lm!1707) hash!377) (Some!10381 lt!1551990)))))

(assert (= (and d!1275037 res!1779689) b!4337954))

(declare-fun m!4934553 () Bool)

(assert (=> d!1275037 m!4934553))

(declare-fun m!4934555 () Bool)

(assert (=> d!1275037 m!4934555))

(declare-fun m!4934557 () Bool)

(assert (=> d!1275037 m!4934557))

(assert (=> b!4337954 m!4934535))

(assert (=> b!4337926 d!1275037))

(declare-fun d!1275039 () Bool)

(declare-fun res!1779694 () Bool)

(declare-fun e!2699173 () Bool)

(assert (=> d!1275039 (=> res!1779694 e!2699173)))

(assert (=> d!1275039 (= res!1779694 (not ((_ is Cons!48717) newBucket!200)))))

(assert (=> d!1275039 (= (noDuplicateKeys!403 newBucket!200) e!2699173)))

(declare-fun b!4337959 () Bool)

(declare-fun e!2699174 () Bool)

(assert (=> b!4337959 (= e!2699173 e!2699174)))

(declare-fun res!1779695 () Bool)

(assert (=> b!4337959 (=> (not res!1779695) (not e!2699174))))

(assert (=> b!4337959 (= res!1779695 (not (containsKey!555 (t!355757 newBucket!200) (_1!27285 (h!54226 newBucket!200)))))))

(declare-fun b!4337960 () Bool)

(assert (=> b!4337960 (= e!2699174 (noDuplicateKeys!403 (t!355757 newBucket!200)))))

(assert (= (and d!1275039 (not res!1779694)) b!4337959))

(assert (= (and b!4337959 res!1779695) b!4337960))

(declare-fun m!4934559 () Bool)

(assert (=> b!4337959 m!4934559))

(declare-fun m!4934561 () Bool)

(assert (=> b!4337960 m!4934561))

(assert (=> b!4337928 d!1275039))

(declare-fun bs!609475 () Bool)

(declare-fun d!1275041 () Bool)

(assert (= bs!609475 (and d!1275041 start!418560)))

(declare-fun lambda!136496 () Int)

(assert (=> bs!609475 (not (= lambda!136496 lambda!136493))))

(assert (=> d!1275041 true))

(assert (=> d!1275041 (= (allKeysSameHashInMap!507 lm!1707 hashF!1247) (forall!8979 (toList!2789 lm!1707) lambda!136496))))

(declare-fun bs!609476 () Bool)

(assert (= bs!609476 d!1275041))

(declare-fun m!4934563 () Bool)

(assert (=> bs!609476 m!4934563))

(assert (=> b!4337917 d!1275041))

(declare-fun d!1275043 () Bool)

(declare-fun e!2699180 () Bool)

(assert (=> d!1275043 e!2699180))

(declare-fun res!1779698 () Bool)

(assert (=> d!1275043 (=> res!1779698 e!2699180)))

(declare-fun lt!1552027 () Bool)

(assert (=> d!1275043 (= res!1779698 (not lt!1552027))))

(declare-fun lt!1552030 () Bool)

(assert (=> d!1275043 (= lt!1552027 lt!1552030)))

(declare-fun lt!1552028 () Unit!68979)

(declare-fun e!2699179 () Unit!68979)

(assert (=> d!1275043 (= lt!1552028 e!2699179)))

(declare-fun c!737541 () Bool)

(assert (=> d!1275043 (= c!737541 lt!1552030)))

(declare-fun containsKey!557 (List!48842 (_ BitVec 64)) Bool)

(assert (=> d!1275043 (= lt!1552030 (containsKey!557 (toList!2789 lm!1707) hash!377))))

(assert (=> d!1275043 (= (contains!10804 lm!1707 hash!377) lt!1552027)))

(declare-fun b!4337969 () Bool)

(declare-fun lt!1552029 () Unit!68979)

(assert (=> b!4337969 (= e!2699179 lt!1552029)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!281 (List!48842 (_ BitVec 64)) Unit!68979)

(assert (=> b!4337969 (= lt!1552029 (lemmaContainsKeyImpliesGetValueByKeyDefined!281 (toList!2789 lm!1707) hash!377))))

(declare-fun isDefined!7678 (Option!10382) Bool)

(assert (=> b!4337969 (isDefined!7678 (getValueByKey!368 (toList!2789 lm!1707) hash!377))))

(declare-fun b!4337970 () Bool)

(declare-fun Unit!68992 () Unit!68979)

(assert (=> b!4337970 (= e!2699179 Unit!68992)))

(declare-fun b!4337971 () Bool)

(assert (=> b!4337971 (= e!2699180 (isDefined!7678 (getValueByKey!368 (toList!2789 lm!1707) hash!377)))))

(assert (= (and d!1275043 c!737541) b!4337969))

(assert (= (and d!1275043 (not c!737541)) b!4337970))

(assert (= (and d!1275043 (not res!1779698)) b!4337971))

(declare-fun m!4934565 () Bool)

(assert (=> d!1275043 m!4934565))

(declare-fun m!4934567 () Bool)

(assert (=> b!4337969 m!4934567))

(assert (=> b!4337969 m!4934535))

(assert (=> b!4337969 m!4934535))

(declare-fun m!4934569 () Bool)

(assert (=> b!4337969 m!4934569))

(assert (=> b!4337971 m!4934535))

(assert (=> b!4337971 m!4934535))

(assert (=> b!4337971 m!4934569))

(assert (=> b!4337927 d!1275043))

(declare-fun d!1275045 () Bool)

(declare-fun hash!1359 (Hashable!4795 K!10075) (_ BitVec 64))

(assert (=> d!1275045 (= (hash!1358 hashF!1247 key!3918) (hash!1359 hashF!1247 key!3918))))

(declare-fun bs!609477 () Bool)

(assert (= bs!609477 d!1275045))

(declare-fun m!4934571 () Bool)

(assert (=> bs!609477 m!4934571))

(assert (=> b!4337924 d!1275045))

(declare-fun d!1275047 () Bool)

(declare-fun res!1779703 () Bool)

(declare-fun e!2699185 () Bool)

(assert (=> d!1275047 (=> res!1779703 e!2699185)))

(assert (=> d!1275047 (= res!1779703 ((_ is Nil!48718) (toList!2789 lm!1707)))))

(assert (=> d!1275047 (= (forall!8979 (toList!2789 lm!1707) lambda!136493) e!2699185)))

(declare-fun b!4337976 () Bool)

(declare-fun e!2699186 () Bool)

(assert (=> b!4337976 (= e!2699185 e!2699186)))

(declare-fun res!1779704 () Bool)

(assert (=> b!4337976 (=> (not res!1779704) (not e!2699186))))

(assert (=> b!4337976 (= res!1779704 (dynLambda!20574 lambda!136493 (h!54227 (toList!2789 lm!1707))))))

(declare-fun b!4337977 () Bool)

(assert (=> b!4337977 (= e!2699186 (forall!8979 (t!355758 (toList!2789 lm!1707)) lambda!136493))))

(assert (= (and d!1275047 (not res!1779703)) b!4337976))

(assert (= (and b!4337976 res!1779704) b!4337977))

(declare-fun b_lambda!128429 () Bool)

(assert (=> (not b_lambda!128429) (not b!4337976)))

(declare-fun m!4934573 () Bool)

(assert (=> b!4337976 m!4934573))

(declare-fun m!4934575 () Bool)

(assert (=> b!4337977 m!4934575))

(assert (=> start!418560 d!1275047))

(declare-fun d!1275049 () Bool)

(assert (=> d!1275049 (= (inv!64261 lm!1707) (isStrictlySorted!61 (toList!2789 lm!1707)))))

(declare-fun bs!609478 () Bool)

(assert (= bs!609478 d!1275049))

(assert (=> bs!609478 m!4934557))

(assert (=> start!418560 d!1275049))

(declare-fun b!4337996 () Bool)

(declare-datatypes ((List!48843 0))(
  ( (Nil!48719) (Cons!48719 (h!54230 K!10075) (t!355759 List!48843)) )
))
(declare-fun e!2699203 () List!48843)

(declare-fun getKeysList!83 (List!48841) List!48843)

(assert (=> b!4337996 (= e!2699203 (getKeysList!83 (toList!2790 (extractMap!462 (toList!2789 lm!1707)))))))

(declare-fun b!4337997 () Bool)

(declare-fun e!2699199 () Bool)

(declare-fun e!2699201 () Bool)

(assert (=> b!4337997 (= e!2699199 e!2699201)))

(declare-fun res!1779713 () Bool)

(assert (=> b!4337997 (=> (not res!1779713) (not e!2699201))))

(declare-datatypes ((Option!10383 0))(
  ( (None!10382) (Some!10382 (v!43138 V!10321)) )
))
(declare-fun isDefined!7679 (Option!10383) Bool)

(declare-fun getValueByKey!369 (List!48841 K!10075) Option!10383)

(assert (=> b!4337997 (= res!1779713 (isDefined!7679 (getValueByKey!369 (toList!2790 (extractMap!462 (toList!2789 lm!1707))) key!3918)))))

(declare-fun b!4337998 () Bool)

(declare-fun e!2699202 () Unit!68979)

(declare-fun e!2699204 () Unit!68979)

(assert (=> b!4337998 (= e!2699202 e!2699204)))

(declare-fun c!737550 () Bool)

(declare-fun call!301474 () Bool)

(assert (=> b!4337998 (= c!737550 call!301474)))

(declare-fun bm!301469 () Bool)

(declare-fun contains!10805 (List!48843 K!10075) Bool)

(assert (=> bm!301469 (= call!301474 (contains!10805 e!2699203 key!3918))))

(declare-fun c!737549 () Bool)

(declare-fun c!737548 () Bool)

(assert (=> bm!301469 (= c!737549 c!737548)))

(declare-fun b!4337999 () Bool)

(declare-fun lt!1552052 () Unit!68979)

(assert (=> b!4337999 (= e!2699202 lt!1552052)))

(declare-fun lt!1552053 () Unit!68979)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!282 (List!48841 K!10075) Unit!68979)

(assert (=> b!4337999 (= lt!1552053 (lemmaContainsKeyImpliesGetValueByKeyDefined!282 (toList!2790 (extractMap!462 (toList!2789 lm!1707))) key!3918))))

(assert (=> b!4337999 (isDefined!7679 (getValueByKey!369 (toList!2790 (extractMap!462 (toList!2789 lm!1707))) key!3918))))

(declare-fun lt!1552048 () Unit!68979)

(assert (=> b!4337999 (= lt!1552048 lt!1552053)))

(declare-fun lemmaInListThenGetKeysListContains!80 (List!48841 K!10075) Unit!68979)

(assert (=> b!4337999 (= lt!1552052 (lemmaInListThenGetKeysListContains!80 (toList!2790 (extractMap!462 (toList!2789 lm!1707))) key!3918))))

(assert (=> b!4337999 call!301474))

(declare-fun b!4338000 () Bool)

(declare-fun keys!16397 (ListMap!2033) List!48843)

(assert (=> b!4338000 (= e!2699201 (contains!10805 (keys!16397 (extractMap!462 (toList!2789 lm!1707))) key!3918))))

(declare-fun b!4338001 () Bool)

(assert (=> b!4338001 false))

(declare-fun lt!1552047 () Unit!68979)

(declare-fun lt!1552049 () Unit!68979)

(assert (=> b!4338001 (= lt!1552047 lt!1552049)))

(declare-fun containsKey!558 (List!48841 K!10075) Bool)

(assert (=> b!4338001 (containsKey!558 (toList!2790 (extractMap!462 (toList!2789 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!81 (List!48841 K!10075) Unit!68979)

(assert (=> b!4338001 (= lt!1552049 (lemmaInGetKeysListThenContainsKey!81 (toList!2790 (extractMap!462 (toList!2789 lm!1707))) key!3918))))

(declare-fun Unit!68997 () Unit!68979)

(assert (=> b!4338001 (= e!2699204 Unit!68997)))

(declare-fun b!4338002 () Bool)

(declare-fun e!2699200 () Bool)

(assert (=> b!4338002 (= e!2699200 (not (contains!10805 (keys!16397 (extractMap!462 (toList!2789 lm!1707))) key!3918)))))

(declare-fun d!1275051 () Bool)

(assert (=> d!1275051 e!2699199))

(declare-fun res!1779712 () Bool)

(assert (=> d!1275051 (=> res!1779712 e!2699199)))

(assert (=> d!1275051 (= res!1779712 e!2699200)))

(declare-fun res!1779711 () Bool)

(assert (=> d!1275051 (=> (not res!1779711) (not e!2699200))))

(declare-fun lt!1552054 () Bool)

(assert (=> d!1275051 (= res!1779711 (not lt!1552054))))

(declare-fun lt!1552050 () Bool)

(assert (=> d!1275051 (= lt!1552054 lt!1552050)))

(declare-fun lt!1552051 () Unit!68979)

(assert (=> d!1275051 (= lt!1552051 e!2699202)))

(assert (=> d!1275051 (= c!737548 lt!1552050)))

(assert (=> d!1275051 (= lt!1552050 (containsKey!558 (toList!2790 (extractMap!462 (toList!2789 lm!1707))) key!3918))))

(assert (=> d!1275051 (= (contains!10802 (extractMap!462 (toList!2789 lm!1707)) key!3918) lt!1552054)))

(declare-fun b!4338003 () Bool)

(assert (=> b!4338003 (= e!2699203 (keys!16397 (extractMap!462 (toList!2789 lm!1707))))))

(declare-fun b!4338004 () Bool)

(declare-fun Unit!69003 () Unit!68979)

(assert (=> b!4338004 (= e!2699204 Unit!69003)))

(assert (= (and d!1275051 c!737548) b!4337999))

(assert (= (and d!1275051 (not c!737548)) b!4337998))

(assert (= (and b!4337998 c!737550) b!4338001))

(assert (= (and b!4337998 (not c!737550)) b!4338004))

(assert (= (or b!4337999 b!4337998) bm!301469))

(assert (= (and bm!301469 c!737549) b!4337996))

(assert (= (and bm!301469 (not c!737549)) b!4338003))

(assert (= (and d!1275051 res!1779711) b!4338002))

(assert (= (and d!1275051 (not res!1779712)) b!4337997))

(assert (= (and b!4337997 res!1779713) b!4338000))

(assert (=> b!4338000 m!4934531))

(declare-fun m!4934577 () Bool)

(assert (=> b!4338000 m!4934577))

(assert (=> b!4338000 m!4934577))

(declare-fun m!4934579 () Bool)

(assert (=> b!4338000 m!4934579))

(declare-fun m!4934581 () Bool)

(assert (=> b!4337999 m!4934581))

(declare-fun m!4934583 () Bool)

(assert (=> b!4337999 m!4934583))

(assert (=> b!4337999 m!4934583))

(declare-fun m!4934585 () Bool)

(assert (=> b!4337999 m!4934585))

(declare-fun m!4934587 () Bool)

(assert (=> b!4337999 m!4934587))

(assert (=> b!4338003 m!4934531))

(assert (=> b!4338003 m!4934577))

(declare-fun m!4934589 () Bool)

(assert (=> b!4338001 m!4934589))

(declare-fun m!4934591 () Bool)

(assert (=> b!4338001 m!4934591))

(assert (=> b!4337997 m!4934583))

(assert (=> b!4337997 m!4934583))

(assert (=> b!4337997 m!4934585))

(assert (=> b!4338002 m!4934531))

(assert (=> b!4338002 m!4934577))

(assert (=> b!4338002 m!4934577))

(assert (=> b!4338002 m!4934579))

(declare-fun m!4934593 () Bool)

(assert (=> b!4337996 m!4934593))

(assert (=> d!1275051 m!4934589))

(declare-fun m!4934595 () Bool)

(assert (=> bm!301469 m!4934595))

(assert (=> b!4337923 d!1275051))

(declare-fun bs!609479 () Bool)

(declare-fun d!1275053 () Bool)

(assert (= bs!609479 (and d!1275053 start!418560)))

(declare-fun lambda!136499 () Int)

(assert (=> bs!609479 (= lambda!136499 lambda!136493)))

(declare-fun bs!609480 () Bool)

(assert (= bs!609480 (and d!1275053 d!1275041)))

(assert (=> bs!609480 (not (= lambda!136499 lambda!136496))))

(declare-fun lt!1552057 () ListMap!2033)

(declare-fun invariantList!636 (List!48841) Bool)

(assert (=> d!1275053 (invariantList!636 (toList!2790 lt!1552057))))

(declare-fun e!2699207 () ListMap!2033)

(assert (=> d!1275053 (= lt!1552057 e!2699207)))

(declare-fun c!737553 () Bool)

(assert (=> d!1275053 (= c!737553 ((_ is Cons!48718) (toList!2789 lm!1707)))))

(assert (=> d!1275053 (forall!8979 (toList!2789 lm!1707) lambda!136499)))

(assert (=> d!1275053 (= (extractMap!462 (toList!2789 lm!1707)) lt!1552057)))

(declare-fun b!4338009 () Bool)

(assert (=> b!4338009 (= e!2699207 (addToMapMapFromBucket!111 (_2!27286 (h!54227 (toList!2789 lm!1707))) (extractMap!462 (t!355758 (toList!2789 lm!1707)))))))

(declare-fun b!4338010 () Bool)

(assert (=> b!4338010 (= e!2699207 (ListMap!2034 Nil!48717))))

(assert (= (and d!1275053 c!737553) b!4338009))

(assert (= (and d!1275053 (not c!737553)) b!4338010))

(declare-fun m!4934597 () Bool)

(assert (=> d!1275053 m!4934597))

(declare-fun m!4934599 () Bool)

(assert (=> d!1275053 m!4934599))

(assert (=> b!4338009 m!4934501))

(assert (=> b!4338009 m!4934501))

(declare-fun m!4934601 () Bool)

(assert (=> b!4338009 m!4934601))

(assert (=> b!4337923 d!1275053))

(declare-fun d!1275055 () Bool)

(declare-fun content!7620 (List!48841) (InoxSet tuple2!47982))

(assert (=> d!1275055 (= (eq!193 lt!1552005 lt!1551991) (= (content!7620 (toList!2790 lt!1552005)) (content!7620 (toList!2790 lt!1551991))))))

(declare-fun bs!609481 () Bool)

(assert (= bs!609481 d!1275055))

(declare-fun m!4934603 () Bool)

(assert (=> bs!609481 m!4934603))

(declare-fun m!4934605 () Bool)

(assert (=> bs!609481 m!4934605))

(assert (=> b!4337921 d!1275055))

(declare-fun d!1275057 () Bool)

(declare-fun res!1779714 () Bool)

(declare-fun e!2699208 () Bool)

(assert (=> d!1275057 (=> res!1779714 e!2699208)))

(assert (=> d!1275057 (= res!1779714 ((_ is Nil!48718) (toList!2789 lt!1552000)))))

(assert (=> d!1275057 (= (forall!8979 (toList!2789 lt!1552000) lambda!136493) e!2699208)))

(declare-fun b!4338011 () Bool)

(declare-fun e!2699209 () Bool)

(assert (=> b!4338011 (= e!2699208 e!2699209)))

(declare-fun res!1779715 () Bool)

(assert (=> b!4338011 (=> (not res!1779715) (not e!2699209))))

(assert (=> b!4338011 (= res!1779715 (dynLambda!20574 lambda!136493 (h!54227 (toList!2789 lt!1552000))))))

(declare-fun b!4338012 () Bool)

(assert (=> b!4338012 (= e!2699209 (forall!8979 (t!355758 (toList!2789 lt!1552000)) lambda!136493))))

(assert (= (and d!1275057 (not res!1779714)) b!4338011))

(assert (= (and b!4338011 res!1779715) b!4338012))

(declare-fun b_lambda!128431 () Bool)

(assert (=> (not b_lambda!128431) (not b!4338011)))

(declare-fun m!4934607 () Bool)

(assert (=> b!4338011 m!4934607))

(declare-fun m!4934609 () Bool)

(assert (=> b!4338012 m!4934609))

(assert (=> b!4337929 d!1275057))

(declare-fun d!1275059 () Bool)

(declare-fun e!2699212 () Bool)

(assert (=> d!1275059 e!2699212))

(declare-fun res!1779721 () Bool)

(assert (=> d!1275059 (=> (not res!1779721) (not e!2699212))))

(declare-fun lt!1552068 () ListLongMap!1439)

(assert (=> d!1275059 (= res!1779721 (contains!10804 lt!1552068 (_1!27286 lt!1552001)))))

(declare-fun lt!1552066 () List!48842)

(assert (=> d!1275059 (= lt!1552068 (ListLongMap!1440 lt!1552066))))

(declare-fun lt!1552069 () Unit!68979)

(declare-fun lt!1552067 () Unit!68979)

(assert (=> d!1275059 (= lt!1552069 lt!1552067)))

(assert (=> d!1275059 (= (getValueByKey!368 lt!1552066 (_1!27286 lt!1552001)) (Some!10381 (_2!27286 lt!1552001)))))

(declare-fun lemmaContainsTupThenGetReturnValue!152 (List!48842 (_ BitVec 64) List!48841) Unit!68979)

(assert (=> d!1275059 (= lt!1552067 (lemmaContainsTupThenGetReturnValue!152 lt!1552066 (_1!27286 lt!1552001) (_2!27286 lt!1552001)))))

(declare-fun insertStrictlySorted!92 (List!48842 (_ BitVec 64) List!48841) List!48842)

(assert (=> d!1275059 (= lt!1552066 (insertStrictlySorted!92 (toList!2789 lm!1707) (_1!27286 lt!1552001) (_2!27286 lt!1552001)))))

(assert (=> d!1275059 (= (+!477 lm!1707 lt!1552001) lt!1552068)))

(declare-fun b!4338017 () Bool)

(declare-fun res!1779720 () Bool)

(assert (=> b!4338017 (=> (not res!1779720) (not e!2699212))))

(assert (=> b!4338017 (= res!1779720 (= (getValueByKey!368 (toList!2789 lt!1552068) (_1!27286 lt!1552001)) (Some!10381 (_2!27286 lt!1552001))))))

(declare-fun b!4338018 () Bool)

(assert (=> b!4338018 (= e!2699212 (contains!10803 (toList!2789 lt!1552068) lt!1552001))))

(assert (= (and d!1275059 res!1779721) b!4338017))

(assert (= (and b!4338017 res!1779720) b!4338018))

(declare-fun m!4934611 () Bool)

(assert (=> d!1275059 m!4934611))

(declare-fun m!4934613 () Bool)

(assert (=> d!1275059 m!4934613))

(declare-fun m!4934615 () Bool)

(assert (=> d!1275059 m!4934615))

(declare-fun m!4934617 () Bool)

(assert (=> d!1275059 m!4934617))

(declare-fun m!4934619 () Bool)

(assert (=> b!4338017 m!4934619))

(declare-fun m!4934621 () Bool)

(assert (=> b!4338018 m!4934621))

(assert (=> b!4337929 d!1275059))

(declare-fun d!1275061 () Bool)

(assert (=> d!1275061 (forall!8979 (toList!2789 (+!477 lm!1707 (tuple2!47985 hash!377 newBucket!200))) lambda!136493)))

(declare-fun lt!1552072 () Unit!68979)

(declare-fun choose!26569 (ListLongMap!1439 Int (_ BitVec 64) List!48841) Unit!68979)

(assert (=> d!1275061 (= lt!1552072 (choose!26569 lm!1707 lambda!136493 hash!377 newBucket!200))))

(declare-fun e!2699215 () Bool)

(assert (=> d!1275061 e!2699215))

(declare-fun res!1779724 () Bool)

(assert (=> d!1275061 (=> (not res!1779724) (not e!2699215))))

(assert (=> d!1275061 (= res!1779724 (forall!8979 (toList!2789 lm!1707) lambda!136493))))

(assert (=> d!1275061 (= (addValidProp!57 lm!1707 lambda!136493 hash!377 newBucket!200) lt!1552072)))

(declare-fun b!4338022 () Bool)

(assert (=> b!4338022 (= e!2699215 (dynLambda!20574 lambda!136493 (tuple2!47985 hash!377 newBucket!200)))))

(assert (= (and d!1275061 res!1779724) b!4338022))

(declare-fun b_lambda!128433 () Bool)

(assert (=> (not b_lambda!128433) (not b!4338022)))

(declare-fun m!4934623 () Bool)

(assert (=> d!1275061 m!4934623))

(declare-fun m!4934625 () Bool)

(assert (=> d!1275061 m!4934625))

(declare-fun m!4934627 () Bool)

(assert (=> d!1275061 m!4934627))

(assert (=> d!1275061 m!4934479))

(declare-fun m!4934629 () Bool)

(assert (=> b!4338022 m!4934629))

(assert (=> b!4337929 d!1275061))

(assert (=> b!4337929 d!1275047))

(assert (=> b!4337918 d!1275057))

(declare-fun d!1275063 () Bool)

(assert (=> d!1275063 (= (eq!193 lt!1552004 lt!1551991) (= (content!7620 (toList!2790 lt!1552004)) (content!7620 (toList!2790 lt!1551991))))))

(declare-fun bs!609482 () Bool)

(assert (= bs!609482 d!1275063))

(declare-fun m!4934631 () Bool)

(assert (=> bs!609482 m!4934631))

(assert (=> bs!609482 m!4934605))

(assert (=> b!4337930 d!1275063))

(declare-fun b!4338102 () Bool)

(assert (=> b!4338102 true))

(declare-fun bs!609556 () Bool)

(declare-fun b!4338099 () Bool)

(assert (= bs!609556 (and b!4338099 b!4338102)))

(declare-fun lambda!136577 () Int)

(declare-fun lambda!136576 () Int)

(assert (=> bs!609556 (= lambda!136577 lambda!136576)))

(assert (=> b!4338099 true))

(declare-fun lambda!136578 () Int)

(declare-fun lt!1552294 () ListMap!2033)

(assert (=> bs!609556 (= (= lt!1552294 lt!1551999) (= lambda!136578 lambda!136576))))

(assert (=> b!4338099 (= (= lt!1552294 lt!1551999) (= lambda!136578 lambda!136577))))

(assert (=> b!4338099 true))

(declare-fun bs!609557 () Bool)

(declare-fun d!1275065 () Bool)

(assert (= bs!609557 (and d!1275065 b!4338102)))

(declare-fun lambda!136579 () Int)

(declare-fun lt!1552292 () ListMap!2033)

(assert (=> bs!609557 (= (= lt!1552292 lt!1551999) (= lambda!136579 lambda!136576))))

(declare-fun bs!609558 () Bool)

(assert (= bs!609558 (and d!1275065 b!4338099)))

(assert (=> bs!609558 (= (= lt!1552292 lt!1551999) (= lambda!136579 lambda!136577))))

(assert (=> bs!609558 (= (= lt!1552292 lt!1552294) (= lambda!136579 lambda!136578))))

(assert (=> d!1275065 true))

(declare-fun e!2699264 () ListMap!2033)

(assert (=> b!4338099 (= e!2699264 lt!1552294)))

(declare-fun lt!1552291 () ListMap!2033)

(assert (=> b!4338099 (= lt!1552291 (+!478 lt!1551999 (h!54226 newBucket!200)))))

(assert (=> b!4338099 (= lt!1552294 (addToMapMapFromBucket!111 (t!355757 newBucket!200) (+!478 lt!1551999 (h!54226 newBucket!200))))))

(declare-fun lt!1552280 () Unit!68979)

(declare-fun call!301499 () Unit!68979)

(assert (=> b!4338099 (= lt!1552280 call!301499)))

(declare-fun forall!8981 (List!48841 Int) Bool)

(assert (=> b!4338099 (forall!8981 (toList!2790 lt!1551999) lambda!136577)))

(declare-fun lt!1552293 () Unit!68979)

(assert (=> b!4338099 (= lt!1552293 lt!1552280)))

(assert (=> b!4338099 (forall!8981 (toList!2790 lt!1552291) lambda!136578)))

(declare-fun lt!1552289 () Unit!68979)

(declare-fun Unit!69006 () Unit!68979)

(assert (=> b!4338099 (= lt!1552289 Unit!69006)))

(declare-fun call!301500 () Bool)

(assert (=> b!4338099 call!301500))

(declare-fun lt!1552281 () Unit!68979)

(declare-fun Unit!69007 () Unit!68979)

(assert (=> b!4338099 (= lt!1552281 Unit!69007)))

(declare-fun lt!1552282 () Unit!68979)

(declare-fun Unit!69008 () Unit!68979)

(assert (=> b!4338099 (= lt!1552282 Unit!69008)))

(declare-fun lt!1552295 () Unit!68979)

(declare-fun forallContained!1631 (List!48841 Int tuple2!47982) Unit!68979)

(assert (=> b!4338099 (= lt!1552295 (forallContained!1631 (toList!2790 lt!1552291) lambda!136578 (h!54226 newBucket!200)))))

(assert (=> b!4338099 (contains!10802 lt!1552291 (_1!27285 (h!54226 newBucket!200)))))

(declare-fun lt!1552290 () Unit!68979)

(declare-fun Unit!69009 () Unit!68979)

(assert (=> b!4338099 (= lt!1552290 Unit!69009)))

(assert (=> b!4338099 (contains!10802 lt!1552294 (_1!27285 (h!54226 newBucket!200)))))

(declare-fun lt!1552286 () Unit!68979)

(declare-fun Unit!69010 () Unit!68979)

(assert (=> b!4338099 (= lt!1552286 Unit!69010)))

(assert (=> b!4338099 (forall!8981 newBucket!200 lambda!136578)))

(declare-fun lt!1552283 () Unit!68979)

(declare-fun Unit!69011 () Unit!68979)

(assert (=> b!4338099 (= lt!1552283 Unit!69011)))

(declare-fun call!301501 () Bool)

(assert (=> b!4338099 call!301501))

(declare-fun lt!1552296 () Unit!68979)

(declare-fun Unit!69012 () Unit!68979)

(assert (=> b!4338099 (= lt!1552296 Unit!69012)))

(declare-fun lt!1552279 () Unit!68979)

(declare-fun Unit!69013 () Unit!68979)

(assert (=> b!4338099 (= lt!1552279 Unit!69013)))

(declare-fun lt!1552276 () Unit!68979)

(declare-fun addForallContainsKeyThenBeforeAdding!29 (ListMap!2033 ListMap!2033 K!10075 V!10321) Unit!68979)

(assert (=> b!4338099 (= lt!1552276 (addForallContainsKeyThenBeforeAdding!29 lt!1551999 lt!1552294 (_1!27285 (h!54226 newBucket!200)) (_2!27285 (h!54226 newBucket!200))))))

(assert (=> b!4338099 (forall!8981 (toList!2790 lt!1551999) lambda!136578)))

(declare-fun lt!1552287 () Unit!68979)

(assert (=> b!4338099 (= lt!1552287 lt!1552276)))

(assert (=> b!4338099 (forall!8981 (toList!2790 lt!1551999) lambda!136578)))

(declare-fun lt!1552288 () Unit!68979)

(declare-fun Unit!69014 () Unit!68979)

(assert (=> b!4338099 (= lt!1552288 Unit!69014)))

(declare-fun res!1779775 () Bool)

(assert (=> b!4338099 (= res!1779775 (forall!8981 newBucket!200 lambda!136578))))

(declare-fun e!2699265 () Bool)

(assert (=> b!4338099 (=> (not res!1779775) (not e!2699265))))

(assert (=> b!4338099 e!2699265))

(declare-fun lt!1552285 () Unit!68979)

(declare-fun Unit!69015 () Unit!68979)

(assert (=> b!4338099 (= lt!1552285 Unit!69015)))

(declare-fun b!4338100 () Bool)

(declare-fun res!1779777 () Bool)

(declare-fun e!2699263 () Bool)

(assert (=> b!4338100 (=> (not res!1779777) (not e!2699263))))

(assert (=> b!4338100 (= res!1779777 (forall!8981 (toList!2790 lt!1551999) lambda!136579))))

(declare-fun bm!301494 () Bool)

(declare-fun c!737566 () Bool)

(assert (=> bm!301494 (= call!301500 (forall!8981 (ite c!737566 (toList!2790 lt!1551999) (t!355757 newBucket!200)) (ite c!737566 lambda!136576 lambda!136578)))))

(declare-fun b!4338101 () Bool)

(assert (=> b!4338101 (= e!2699263 (invariantList!636 (toList!2790 lt!1552292)))))

(assert (=> b!4338102 (= e!2699264 lt!1551999)))

(declare-fun lt!1552278 () Unit!68979)

(assert (=> b!4338102 (= lt!1552278 call!301499)))

(assert (=> b!4338102 call!301500))

(declare-fun lt!1552284 () Unit!68979)

(assert (=> b!4338102 (= lt!1552284 lt!1552278)))

(assert (=> b!4338102 call!301501))

(declare-fun lt!1552277 () Unit!68979)

(declare-fun Unit!69016 () Unit!68979)

(assert (=> b!4338102 (= lt!1552277 Unit!69016)))

(declare-fun b!4338103 () Bool)

(assert (=> b!4338103 (= e!2699265 (forall!8981 (toList!2790 lt!1551999) lambda!136578))))

(assert (=> d!1275065 e!2699263))

(declare-fun res!1779776 () Bool)

(assert (=> d!1275065 (=> (not res!1779776) (not e!2699263))))

(assert (=> d!1275065 (= res!1779776 (forall!8981 newBucket!200 lambda!136579))))

(assert (=> d!1275065 (= lt!1552292 e!2699264)))

(assert (=> d!1275065 (= c!737566 ((_ is Nil!48717) newBucket!200))))

(assert (=> d!1275065 (noDuplicateKeys!403 newBucket!200)))

(assert (=> d!1275065 (= (addToMapMapFromBucket!111 newBucket!200 lt!1551999) lt!1552292)))

(declare-fun bm!301495 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!29 (ListMap!2033) Unit!68979)

(assert (=> bm!301495 (= call!301499 (lemmaContainsAllItsOwnKeys!29 lt!1551999))))

(declare-fun bm!301496 () Bool)

(assert (=> bm!301496 (= call!301501 (forall!8981 (ite c!737566 (toList!2790 lt!1551999) (toList!2790 lt!1552291)) (ite c!737566 lambda!136576 lambda!136578)))))

(assert (= (and d!1275065 c!737566) b!4338102))

(assert (= (and d!1275065 (not c!737566)) b!4338099))

(assert (= (and b!4338099 res!1779775) b!4338103))

(assert (= (or b!4338102 b!4338099) bm!301495))

(assert (= (or b!4338102 b!4338099) bm!301496))

(assert (= (or b!4338102 b!4338099) bm!301494))

(assert (= (and d!1275065 res!1779776) b!4338100))

(assert (= (and b!4338100 res!1779777) b!4338101))

(declare-fun m!4934841 () Bool)

(assert (=> d!1275065 m!4934841))

(assert (=> d!1275065 m!4934483))

(declare-fun m!4934843 () Bool)

(assert (=> b!4338099 m!4934843))

(declare-fun m!4934845 () Bool)

(assert (=> b!4338099 m!4934845))

(declare-fun m!4934847 () Bool)

(assert (=> b!4338099 m!4934847))

(declare-fun m!4934849 () Bool)

(assert (=> b!4338099 m!4934849))

(declare-fun m!4934851 () Bool)

(assert (=> b!4338099 m!4934851))

(assert (=> b!4338099 m!4934845))

(declare-fun m!4934853 () Bool)

(assert (=> b!4338099 m!4934853))

(declare-fun m!4934855 () Bool)

(assert (=> b!4338099 m!4934855))

(assert (=> b!4338099 m!4934847))

(declare-fun m!4934857 () Bool)

(assert (=> b!4338099 m!4934857))

(assert (=> b!4338099 m!4934853))

(declare-fun m!4934859 () Bool)

(assert (=> b!4338099 m!4934859))

(declare-fun m!4934861 () Bool)

(assert (=> b!4338099 m!4934861))

(declare-fun m!4934863 () Bool)

(assert (=> bm!301496 m!4934863))

(declare-fun m!4934865 () Bool)

(assert (=> b!4338100 m!4934865))

(declare-fun m!4934867 () Bool)

(assert (=> bm!301495 m!4934867))

(assert (=> b!4338103 m!4934845))

(declare-fun m!4934869 () Bool)

(assert (=> b!4338101 m!4934869))

(declare-fun m!4934871 () Bool)

(assert (=> bm!301494 m!4934871))

(assert (=> b!4337930 d!1275065))

(declare-fun d!1275099 () Bool)

(assert (=> d!1275099 (eq!193 (addToMapMapFromBucket!111 lt!1551996 (+!478 lt!1551999 (tuple2!47983 key!3918 newValue!99))) (+!478 (addToMapMapFromBucket!111 lt!1551996 lt!1551999) (tuple2!47983 key!3918 newValue!99)))))

(declare-fun lt!1552326 () Unit!68979)

(declare-fun choose!26570 (ListMap!2033 K!10075 V!10321 List!48841) Unit!68979)

(assert (=> d!1275099 (= lt!1552326 (choose!26570 lt!1551999 key!3918 newValue!99 lt!1551996))))

(assert (=> d!1275099 (not (containsKey!555 lt!1551996 key!3918))))

(assert (=> d!1275099 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!22 lt!1551999 key!3918 newValue!99 lt!1551996) lt!1552326)))

(declare-fun bs!609563 () Bool)

(assert (= bs!609563 d!1275099))

(declare-fun m!4934903 () Bool)

(assert (=> bs!609563 m!4934903))

(declare-fun m!4934905 () Bool)

(assert (=> bs!609563 m!4934905))

(declare-fun m!4934907 () Bool)

(assert (=> bs!609563 m!4934907))

(assert (=> bs!609563 m!4934509))

(declare-fun m!4934909 () Bool)

(assert (=> bs!609563 m!4934909))

(declare-fun m!4934911 () Bool)

(assert (=> bs!609563 m!4934911))

(assert (=> bs!609563 m!4934909))

(assert (=> bs!609563 m!4934903))

(declare-fun m!4934913 () Bool)

(assert (=> bs!609563 m!4934913))

(assert (=> bs!609563 m!4934509))

(assert (=> bs!609563 m!4934905))

(assert (=> b!4337930 d!1275099))

(declare-fun d!1275107 () Bool)

(declare-fun res!1779791 () Bool)

(declare-fun e!2699289 () Bool)

(assert (=> d!1275107 (=> res!1779791 e!2699289)))

(assert (=> d!1275107 (= res!1779791 (not ((_ is Cons!48717) lt!1551990)))))

(assert (=> d!1275107 (= (noDuplicateKeys!403 lt!1551990) e!2699289)))

(declare-fun b!4338139 () Bool)

(declare-fun e!2699290 () Bool)

(assert (=> b!4338139 (= e!2699289 e!2699290)))

(declare-fun res!1779792 () Bool)

(assert (=> b!4338139 (=> (not res!1779792) (not e!2699290))))

(assert (=> b!4338139 (= res!1779792 (not (containsKey!555 (t!355757 lt!1551990) (_1!27285 (h!54226 lt!1551990)))))))

(declare-fun b!4338140 () Bool)

(assert (=> b!4338140 (= e!2699290 (noDuplicateKeys!403 (t!355757 lt!1551990)))))

(assert (= (and d!1275107 (not res!1779791)) b!4338139))

(assert (= (and b!4338139 res!1779792) b!4338140))

(declare-fun m!4934915 () Bool)

(assert (=> b!4338139 m!4934915))

(declare-fun m!4934917 () Bool)

(assert (=> b!4338140 m!4934917))

(assert (=> b!4337930 d!1275107))

(declare-fun d!1275109 () Bool)

(assert (=> d!1275109 (= (tail!6901 newBucket!200) (t!355757 newBucket!200))))

(assert (=> b!4337930 d!1275109))

(declare-fun d!1275113 () Bool)

(declare-fun e!2699293 () Bool)

(assert (=> d!1275113 e!2699293))

(declare-fun res!1779796 () Bool)

(assert (=> d!1275113 (=> (not res!1779796) (not e!2699293))))

(declare-fun lt!1552330 () ListLongMap!1439)

(assert (=> d!1275113 (= res!1779796 (contains!10804 lt!1552330 (_1!27286 (tuple2!47985 hash!377 lt!1551993))))))

(declare-fun lt!1552328 () List!48842)

(assert (=> d!1275113 (= lt!1552330 (ListLongMap!1440 lt!1552328))))

(declare-fun lt!1552331 () Unit!68979)

(declare-fun lt!1552329 () Unit!68979)

(assert (=> d!1275113 (= lt!1552331 lt!1552329)))

(assert (=> d!1275113 (= (getValueByKey!368 lt!1552328 (_1!27286 (tuple2!47985 hash!377 lt!1551993))) (Some!10381 (_2!27286 (tuple2!47985 hash!377 lt!1551993))))))

(assert (=> d!1275113 (= lt!1552329 (lemmaContainsTupThenGetReturnValue!152 lt!1552328 (_1!27286 (tuple2!47985 hash!377 lt!1551993)) (_2!27286 (tuple2!47985 hash!377 lt!1551993))))))

(assert (=> d!1275113 (= lt!1552328 (insertStrictlySorted!92 (toList!2789 lm!1707) (_1!27286 (tuple2!47985 hash!377 lt!1551993)) (_2!27286 (tuple2!47985 hash!377 lt!1551993))))))

(assert (=> d!1275113 (= (+!477 lm!1707 (tuple2!47985 hash!377 lt!1551993)) lt!1552330)))

(declare-fun b!4338143 () Bool)

(declare-fun res!1779795 () Bool)

(assert (=> b!4338143 (=> (not res!1779795) (not e!2699293))))

(assert (=> b!4338143 (= res!1779795 (= (getValueByKey!368 (toList!2789 lt!1552330) (_1!27286 (tuple2!47985 hash!377 lt!1551993))) (Some!10381 (_2!27286 (tuple2!47985 hash!377 lt!1551993)))))))

(declare-fun b!4338144 () Bool)

(assert (=> b!4338144 (= e!2699293 (contains!10803 (toList!2789 lt!1552330) (tuple2!47985 hash!377 lt!1551993)))))

(assert (= (and d!1275113 res!1779796) b!4338143))

(assert (= (and b!4338143 res!1779795) b!4338144))

(declare-fun m!4934925 () Bool)

(assert (=> d!1275113 m!4934925))

(declare-fun m!4934927 () Bool)

(assert (=> d!1275113 m!4934927))

(declare-fun m!4934929 () Bool)

(assert (=> d!1275113 m!4934929))

(declare-fun m!4934931 () Bool)

(assert (=> d!1275113 m!4934931))

(declare-fun m!4934933 () Bool)

(assert (=> b!4338143 m!4934933))

(declare-fun m!4934935 () Bool)

(assert (=> b!4338144 m!4934935))

(assert (=> b!4337930 d!1275113))

(declare-fun bs!609564 () Bool)

(declare-fun b!4338148 () Bool)

(assert (= bs!609564 (and b!4338148 b!4338102)))

(declare-fun lambda!136581 () Int)

(assert (=> bs!609564 (= (= (+!478 lt!1551999 lt!1551989) lt!1551999) (= lambda!136581 lambda!136576))))

(declare-fun bs!609565 () Bool)

(assert (= bs!609565 (and b!4338148 b!4338099)))

(assert (=> bs!609565 (= (= (+!478 lt!1551999 lt!1551989) lt!1551999) (= lambda!136581 lambda!136577))))

(assert (=> bs!609565 (= (= (+!478 lt!1551999 lt!1551989) lt!1552294) (= lambda!136581 lambda!136578))))

(declare-fun bs!609566 () Bool)

(assert (= bs!609566 (and b!4338148 d!1275065)))

(assert (=> bs!609566 (= (= (+!478 lt!1551999 lt!1551989) lt!1552292) (= lambda!136581 lambda!136579))))

(assert (=> b!4338148 true))

(declare-fun bs!609567 () Bool)

(declare-fun b!4338145 () Bool)

(assert (= bs!609567 (and b!4338145 b!4338099)))

(declare-fun lambda!136582 () Int)

(assert (=> bs!609567 (= (= (+!478 lt!1551999 lt!1551989) lt!1551999) (= lambda!136582 lambda!136577))))

(declare-fun bs!609568 () Bool)

(assert (= bs!609568 (and b!4338145 d!1275065)))

(assert (=> bs!609568 (= (= (+!478 lt!1551999 lt!1551989) lt!1552292) (= lambda!136582 lambda!136579))))

(declare-fun bs!609569 () Bool)

(assert (= bs!609569 (and b!4338145 b!4338102)))

(assert (=> bs!609569 (= (= (+!478 lt!1551999 lt!1551989) lt!1551999) (= lambda!136582 lambda!136576))))

(assert (=> bs!609567 (= (= (+!478 lt!1551999 lt!1551989) lt!1552294) (= lambda!136582 lambda!136578))))

(declare-fun bs!609570 () Bool)

(assert (= bs!609570 (and b!4338145 b!4338148)))

(assert (=> bs!609570 (= lambda!136582 lambda!136581)))

(assert (=> b!4338145 true))

(declare-fun lt!1552350 () ListMap!2033)

(declare-fun lambda!136583 () Int)

(assert (=> bs!609567 (= (= lt!1552350 lt!1551999) (= lambda!136583 lambda!136577))))

(assert (=> bs!609568 (= (= lt!1552350 lt!1552292) (= lambda!136583 lambda!136579))))

(assert (=> bs!609569 (= (= lt!1552350 lt!1551999) (= lambda!136583 lambda!136576))))

(assert (=> bs!609567 (= (= lt!1552350 lt!1552294) (= lambda!136583 lambda!136578))))

(assert (=> bs!609570 (= (= lt!1552350 (+!478 lt!1551999 lt!1551989)) (= lambda!136583 lambda!136581))))

(assert (=> b!4338145 (= (= lt!1552350 (+!478 lt!1551999 lt!1551989)) (= lambda!136583 lambda!136582))))

(assert (=> b!4338145 true))

(declare-fun bs!609571 () Bool)

(declare-fun d!1275115 () Bool)

(assert (= bs!609571 (and d!1275115 b!4338099)))

(declare-fun lambda!136584 () Int)

(declare-fun lt!1552348 () ListMap!2033)

(assert (=> bs!609571 (= (= lt!1552348 lt!1551999) (= lambda!136584 lambda!136577))))

(declare-fun bs!609572 () Bool)

(assert (= bs!609572 (and d!1275115 d!1275065)))

(assert (=> bs!609572 (= (= lt!1552348 lt!1552292) (= lambda!136584 lambda!136579))))

(declare-fun bs!609573 () Bool)

(assert (= bs!609573 (and d!1275115 b!4338102)))

(assert (=> bs!609573 (= (= lt!1552348 lt!1551999) (= lambda!136584 lambda!136576))))

(assert (=> bs!609571 (= (= lt!1552348 lt!1552294) (= lambda!136584 lambda!136578))))

(declare-fun bs!609574 () Bool)

(assert (= bs!609574 (and d!1275115 b!4338145)))

(assert (=> bs!609574 (= (= lt!1552348 lt!1552350) (= lambda!136584 lambda!136583))))

(declare-fun bs!609575 () Bool)

(assert (= bs!609575 (and d!1275115 b!4338148)))

(assert (=> bs!609575 (= (= lt!1552348 (+!478 lt!1551999 lt!1551989)) (= lambda!136584 lambda!136581))))

(assert (=> bs!609574 (= (= lt!1552348 (+!478 lt!1551999 lt!1551989)) (= lambda!136584 lambda!136582))))

(assert (=> d!1275115 true))

(declare-fun e!2699295 () ListMap!2033)

(assert (=> b!4338145 (= e!2699295 lt!1552350)))

(declare-fun lt!1552347 () ListMap!2033)

(assert (=> b!4338145 (= lt!1552347 (+!478 (+!478 lt!1551999 lt!1551989) (h!54226 lt!1551996)))))

(assert (=> b!4338145 (= lt!1552350 (addToMapMapFromBucket!111 (t!355757 lt!1551996) (+!478 (+!478 lt!1551999 lt!1551989) (h!54226 lt!1551996))))))

(declare-fun lt!1552336 () Unit!68979)

(declare-fun call!301505 () Unit!68979)

(assert (=> b!4338145 (= lt!1552336 call!301505)))

(assert (=> b!4338145 (forall!8981 (toList!2790 (+!478 lt!1551999 lt!1551989)) lambda!136582)))

(declare-fun lt!1552349 () Unit!68979)

(assert (=> b!4338145 (= lt!1552349 lt!1552336)))

(assert (=> b!4338145 (forall!8981 (toList!2790 lt!1552347) lambda!136583)))

(declare-fun lt!1552345 () Unit!68979)

(declare-fun Unit!69028 () Unit!68979)

(assert (=> b!4338145 (= lt!1552345 Unit!69028)))

(declare-fun call!301506 () Bool)

(assert (=> b!4338145 call!301506))

(declare-fun lt!1552337 () Unit!68979)

(declare-fun Unit!69029 () Unit!68979)

(assert (=> b!4338145 (= lt!1552337 Unit!69029)))

(declare-fun lt!1552338 () Unit!68979)

(declare-fun Unit!69030 () Unit!68979)

(assert (=> b!4338145 (= lt!1552338 Unit!69030)))

(declare-fun lt!1552351 () Unit!68979)

(assert (=> b!4338145 (= lt!1552351 (forallContained!1631 (toList!2790 lt!1552347) lambda!136583 (h!54226 lt!1551996)))))

(assert (=> b!4338145 (contains!10802 lt!1552347 (_1!27285 (h!54226 lt!1551996)))))

(declare-fun lt!1552346 () Unit!68979)

(declare-fun Unit!69031 () Unit!68979)

(assert (=> b!4338145 (= lt!1552346 Unit!69031)))

(assert (=> b!4338145 (contains!10802 lt!1552350 (_1!27285 (h!54226 lt!1551996)))))

(declare-fun lt!1552342 () Unit!68979)

(declare-fun Unit!69032 () Unit!68979)

(assert (=> b!4338145 (= lt!1552342 Unit!69032)))

(assert (=> b!4338145 (forall!8981 lt!1551996 lambda!136583)))

(declare-fun lt!1552339 () Unit!68979)

(declare-fun Unit!69033 () Unit!68979)

(assert (=> b!4338145 (= lt!1552339 Unit!69033)))

(declare-fun call!301507 () Bool)

(assert (=> b!4338145 call!301507))

(declare-fun lt!1552352 () Unit!68979)

(declare-fun Unit!69034 () Unit!68979)

(assert (=> b!4338145 (= lt!1552352 Unit!69034)))

(declare-fun lt!1552335 () Unit!68979)

(declare-fun Unit!69035 () Unit!68979)

(assert (=> b!4338145 (= lt!1552335 Unit!69035)))

(declare-fun lt!1552332 () Unit!68979)

(assert (=> b!4338145 (= lt!1552332 (addForallContainsKeyThenBeforeAdding!29 (+!478 lt!1551999 lt!1551989) lt!1552350 (_1!27285 (h!54226 lt!1551996)) (_2!27285 (h!54226 lt!1551996))))))

(assert (=> b!4338145 (forall!8981 (toList!2790 (+!478 lt!1551999 lt!1551989)) lambda!136583)))

(declare-fun lt!1552343 () Unit!68979)

(assert (=> b!4338145 (= lt!1552343 lt!1552332)))

(assert (=> b!4338145 (forall!8981 (toList!2790 (+!478 lt!1551999 lt!1551989)) lambda!136583)))

(declare-fun lt!1552344 () Unit!68979)

(declare-fun Unit!69036 () Unit!68979)

(assert (=> b!4338145 (= lt!1552344 Unit!69036)))

(declare-fun res!1779797 () Bool)

(assert (=> b!4338145 (= res!1779797 (forall!8981 lt!1551996 lambda!136583))))

(declare-fun e!2699296 () Bool)

(assert (=> b!4338145 (=> (not res!1779797) (not e!2699296))))

(assert (=> b!4338145 e!2699296))

(declare-fun lt!1552341 () Unit!68979)

(declare-fun Unit!69037 () Unit!68979)

(assert (=> b!4338145 (= lt!1552341 Unit!69037)))

(declare-fun b!4338146 () Bool)

(declare-fun res!1779799 () Bool)

(declare-fun e!2699294 () Bool)

(assert (=> b!4338146 (=> (not res!1779799) (not e!2699294))))

(assert (=> b!4338146 (= res!1779799 (forall!8981 (toList!2790 (+!478 lt!1551999 lt!1551989)) lambda!136584))))

(declare-fun c!737577 () Bool)

(declare-fun bm!301500 () Bool)

(assert (=> bm!301500 (= call!301506 (forall!8981 (ite c!737577 (toList!2790 (+!478 lt!1551999 lt!1551989)) (t!355757 lt!1551996)) (ite c!737577 lambda!136581 lambda!136583)))))

(declare-fun b!4338147 () Bool)

(assert (=> b!4338147 (= e!2699294 (invariantList!636 (toList!2790 lt!1552348)))))

(assert (=> b!4338148 (= e!2699295 (+!478 lt!1551999 lt!1551989))))

(declare-fun lt!1552334 () Unit!68979)

(assert (=> b!4338148 (= lt!1552334 call!301505)))

(assert (=> b!4338148 call!301506))

(declare-fun lt!1552340 () Unit!68979)

(assert (=> b!4338148 (= lt!1552340 lt!1552334)))

(assert (=> b!4338148 call!301507))

(declare-fun lt!1552333 () Unit!68979)

(declare-fun Unit!69038 () Unit!68979)

(assert (=> b!4338148 (= lt!1552333 Unit!69038)))

(declare-fun b!4338149 () Bool)

(assert (=> b!4338149 (= e!2699296 (forall!8981 (toList!2790 (+!478 lt!1551999 lt!1551989)) lambda!136583))))

(assert (=> d!1275115 e!2699294))

(declare-fun res!1779798 () Bool)

(assert (=> d!1275115 (=> (not res!1779798) (not e!2699294))))

(assert (=> d!1275115 (= res!1779798 (forall!8981 lt!1551996 lambda!136584))))

(assert (=> d!1275115 (= lt!1552348 e!2699295)))

(assert (=> d!1275115 (= c!737577 ((_ is Nil!48717) lt!1551996))))

(assert (=> d!1275115 (noDuplicateKeys!403 lt!1551996)))

(assert (=> d!1275115 (= (addToMapMapFromBucket!111 lt!1551996 (+!478 lt!1551999 lt!1551989)) lt!1552348)))

(declare-fun bm!301501 () Bool)

(assert (=> bm!301501 (= call!301505 (lemmaContainsAllItsOwnKeys!29 (+!478 lt!1551999 lt!1551989)))))

(declare-fun bm!301502 () Bool)

(assert (=> bm!301502 (= call!301507 (forall!8981 (ite c!737577 (toList!2790 (+!478 lt!1551999 lt!1551989)) (toList!2790 lt!1552347)) (ite c!737577 lambda!136581 lambda!136583)))))

(assert (= (and d!1275115 c!737577) b!4338148))

(assert (= (and d!1275115 (not c!737577)) b!4338145))

(assert (= (and b!4338145 res!1779797) b!4338149))

(assert (= (or b!4338148 b!4338145) bm!301501))

(assert (= (or b!4338148 b!4338145) bm!301502))

(assert (= (or b!4338148 b!4338145) bm!301500))

(assert (= (and d!1275115 res!1779798) b!4338146))

(assert (= (and b!4338146 res!1779799) b!4338147))

(declare-fun m!4934941 () Bool)

(assert (=> d!1275115 m!4934941))

(declare-fun m!4934943 () Bool)

(assert (=> d!1275115 m!4934943))

(declare-fun m!4934945 () Bool)

(assert (=> b!4338145 m!4934945))

(declare-fun m!4934947 () Bool)

(assert (=> b!4338145 m!4934947))

(assert (=> b!4338145 m!4934519))

(declare-fun m!4934949 () Bool)

(assert (=> b!4338145 m!4934949))

(declare-fun m!4934951 () Bool)

(assert (=> b!4338145 m!4934951))

(assert (=> b!4338145 m!4934519))

(declare-fun m!4934953 () Bool)

(assert (=> b!4338145 m!4934953))

(assert (=> b!4338145 m!4934947))

(declare-fun m!4934955 () Bool)

(assert (=> b!4338145 m!4934955))

(declare-fun m!4934957 () Bool)

(assert (=> b!4338145 m!4934957))

(assert (=> b!4338145 m!4934949))

(declare-fun m!4934959 () Bool)

(assert (=> b!4338145 m!4934959))

(assert (=> b!4338145 m!4934955))

(declare-fun m!4934961 () Bool)

(assert (=> b!4338145 m!4934961))

(declare-fun m!4934963 () Bool)

(assert (=> b!4338145 m!4934963))

(declare-fun m!4934965 () Bool)

(assert (=> bm!301502 m!4934965))

(declare-fun m!4934967 () Bool)

(assert (=> b!4338146 m!4934967))

(assert (=> bm!301501 m!4934519))

(declare-fun m!4934969 () Bool)

(assert (=> bm!301501 m!4934969))

(assert (=> b!4338149 m!4934947))

(declare-fun m!4934971 () Bool)

(assert (=> b!4338147 m!4934971))

(declare-fun m!4934973 () Bool)

(assert (=> bm!301500 m!4934973))

(assert (=> b!4337930 d!1275115))

(declare-fun bs!609576 () Bool)

(declare-fun d!1275119 () Bool)

(assert (= bs!609576 (and d!1275119 start!418560)))

(declare-fun lambda!136585 () Int)

(assert (=> bs!609576 (= lambda!136585 lambda!136493)))

(declare-fun bs!609577 () Bool)

(assert (= bs!609577 (and d!1275119 d!1275041)))

(assert (=> bs!609577 (not (= lambda!136585 lambda!136496))))

(declare-fun bs!609578 () Bool)

(assert (= bs!609578 (and d!1275119 d!1275053)))

(assert (=> bs!609578 (= lambda!136585 lambda!136499)))

(declare-fun lt!1552358 () ListMap!2033)

(assert (=> d!1275119 (invariantList!636 (toList!2790 lt!1552358))))

(declare-fun e!2699304 () ListMap!2033)

(assert (=> d!1275119 (= lt!1552358 e!2699304)))

(declare-fun c!737582 () Bool)

(assert (=> d!1275119 (= c!737582 ((_ is Cons!48718) (toList!2789 lt!1552000)))))

(assert (=> d!1275119 (forall!8979 (toList!2789 lt!1552000) lambda!136585)))

(assert (=> d!1275119 (= (extractMap!462 (toList!2789 lt!1552000)) lt!1552358)))

(declare-fun b!4338161 () Bool)

(assert (=> b!4338161 (= e!2699304 (addToMapMapFromBucket!111 (_2!27286 (h!54227 (toList!2789 lt!1552000))) (extractMap!462 (t!355758 (toList!2789 lt!1552000)))))))

(declare-fun b!4338162 () Bool)

(assert (=> b!4338162 (= e!2699304 (ListMap!2034 Nil!48717))))

(assert (= (and d!1275119 c!737582) b!4338161))

(assert (= (and d!1275119 (not c!737582)) b!4338162))

(declare-fun m!4934975 () Bool)

(assert (=> d!1275119 m!4934975))

(declare-fun m!4934977 () Bool)

(assert (=> d!1275119 m!4934977))

(declare-fun m!4934979 () Bool)

(assert (=> b!4338161 m!4934979))

(assert (=> b!4338161 m!4934979))

(declare-fun m!4934981 () Bool)

(assert (=> b!4338161 m!4934981))

(assert (=> b!4337930 d!1275119))

(declare-fun d!1275121 () Bool)

(declare-fun e!2699317 () Bool)

(assert (=> d!1275121 e!2699317))

(declare-fun res!1779817 () Bool)

(assert (=> d!1275121 (=> (not res!1779817) (not e!2699317))))

(declare-fun lt!1552376 () ListMap!2033)

(assert (=> d!1275121 (= res!1779817 (contains!10802 lt!1552376 (_1!27285 lt!1551989)))))

(declare-fun lt!1552375 () List!48841)

(assert (=> d!1275121 (= lt!1552376 (ListMap!2034 lt!1552375))))

(declare-fun lt!1552378 () Unit!68979)

(declare-fun lt!1552377 () Unit!68979)

(assert (=> d!1275121 (= lt!1552378 lt!1552377)))

(assert (=> d!1275121 (= (getValueByKey!369 lt!1552375 (_1!27285 lt!1551989)) (Some!10382 (_2!27285 lt!1551989)))))

(declare-fun lemmaContainsTupThenGetReturnValue!154 (List!48841 K!10075 V!10321) Unit!68979)

(assert (=> d!1275121 (= lt!1552377 (lemmaContainsTupThenGetReturnValue!154 lt!1552375 (_1!27285 lt!1551989) (_2!27285 lt!1551989)))))

(declare-fun insertNoDuplicatedKeys!69 (List!48841 K!10075 V!10321) List!48841)

(assert (=> d!1275121 (= lt!1552375 (insertNoDuplicatedKeys!69 (toList!2790 lt!1551999) (_1!27285 lt!1551989) (_2!27285 lt!1551989)))))

(assert (=> d!1275121 (= (+!478 lt!1551999 lt!1551989) lt!1552376)))

(declare-fun b!4338184 () Bool)

(declare-fun res!1779816 () Bool)

(assert (=> b!4338184 (=> (not res!1779816) (not e!2699317))))

(assert (=> b!4338184 (= res!1779816 (= (getValueByKey!369 (toList!2790 lt!1552376) (_1!27285 lt!1551989)) (Some!10382 (_2!27285 lt!1551989))))))

(declare-fun b!4338185 () Bool)

(declare-fun contains!10807 (List!48841 tuple2!47982) Bool)

(assert (=> b!4338185 (= e!2699317 (contains!10807 (toList!2790 lt!1552376) lt!1551989))))

(assert (= (and d!1275121 res!1779817) b!4338184))

(assert (= (and b!4338184 res!1779816) b!4338185))

(declare-fun m!4935013 () Bool)

(assert (=> d!1275121 m!4935013))

(declare-fun m!4935015 () Bool)

(assert (=> d!1275121 m!4935015))

(declare-fun m!4935017 () Bool)

(assert (=> d!1275121 m!4935017))

(declare-fun m!4935019 () Bool)

(assert (=> d!1275121 m!4935019))

(declare-fun m!4935021 () Bool)

(assert (=> b!4338184 m!4935021))

(declare-fun m!4935023 () Bool)

(assert (=> b!4338185 m!4935023))

(assert (=> b!4337930 d!1275121))

(declare-fun bs!609592 () Bool)

(declare-fun d!1275135 () Bool)

(assert (= bs!609592 (and d!1275135 start!418560)))

(declare-fun lambda!136589 () Int)

(assert (=> bs!609592 (= lambda!136589 lambda!136493)))

(declare-fun bs!609593 () Bool)

(assert (= bs!609593 (and d!1275135 d!1275041)))

(assert (=> bs!609593 (not (= lambda!136589 lambda!136496))))

(declare-fun bs!609594 () Bool)

(assert (= bs!609594 (and d!1275135 d!1275053)))

(assert (=> bs!609594 (= lambda!136589 lambda!136499)))

(declare-fun bs!609595 () Bool)

(assert (= bs!609595 (and d!1275135 d!1275119)))

(assert (=> bs!609595 (= lambda!136589 lambda!136585)))

(declare-fun lt!1552379 () ListMap!2033)

(assert (=> d!1275135 (invariantList!636 (toList!2790 lt!1552379))))

(declare-fun e!2699318 () ListMap!2033)

(assert (=> d!1275135 (= lt!1552379 e!2699318)))

(declare-fun c!737585 () Bool)

(assert (=> d!1275135 (= c!737585 ((_ is Cons!48718) (t!355758 (toList!2789 lm!1707))))))

(assert (=> d!1275135 (forall!8979 (t!355758 (toList!2789 lm!1707)) lambda!136589)))

(assert (=> d!1275135 (= (extractMap!462 (t!355758 (toList!2789 lm!1707))) lt!1552379)))

(declare-fun b!4338186 () Bool)

(assert (=> b!4338186 (= e!2699318 (addToMapMapFromBucket!111 (_2!27286 (h!54227 (t!355758 (toList!2789 lm!1707)))) (extractMap!462 (t!355758 (t!355758 (toList!2789 lm!1707))))))))

(declare-fun b!4338187 () Bool)

(assert (=> b!4338187 (= e!2699318 (ListMap!2034 Nil!48717))))

(assert (= (and d!1275135 c!737585) b!4338186))

(assert (= (and d!1275135 (not c!737585)) b!4338187))

(declare-fun m!4935025 () Bool)

(assert (=> d!1275135 m!4935025))

(declare-fun m!4935027 () Bool)

(assert (=> d!1275135 m!4935027))

(declare-fun m!4935029 () Bool)

(assert (=> b!4338186 m!4935029))

(assert (=> b!4338186 m!4935029))

(declare-fun m!4935031 () Bool)

(assert (=> b!4338186 m!4935031))

(assert (=> b!4337930 d!1275135))

(declare-fun bs!609596 () Bool)

(declare-fun b!4338191 () Bool)

(assert (= bs!609596 (and b!4338191 d!1275115)))

(declare-fun lambda!136590 () Int)

(assert (=> bs!609596 (= (= lt!1551999 lt!1552348) (= lambda!136590 lambda!136584))))

(declare-fun bs!609597 () Bool)

(assert (= bs!609597 (and b!4338191 b!4338099)))

(assert (=> bs!609597 (= lambda!136590 lambda!136577)))

(declare-fun bs!609598 () Bool)

(assert (= bs!609598 (and b!4338191 d!1275065)))

(assert (=> bs!609598 (= (= lt!1551999 lt!1552292) (= lambda!136590 lambda!136579))))

(declare-fun bs!609599 () Bool)

(assert (= bs!609599 (and b!4338191 b!4338102)))

(assert (=> bs!609599 (= lambda!136590 lambda!136576)))

(assert (=> bs!609597 (= (= lt!1551999 lt!1552294) (= lambda!136590 lambda!136578))))

(declare-fun bs!609600 () Bool)

(assert (= bs!609600 (and b!4338191 b!4338145)))

(assert (=> bs!609600 (= (= lt!1551999 lt!1552350) (= lambda!136590 lambda!136583))))

(declare-fun bs!609601 () Bool)

(assert (= bs!609601 (and b!4338191 b!4338148)))

(assert (=> bs!609601 (= (= lt!1551999 (+!478 lt!1551999 lt!1551989)) (= lambda!136590 lambda!136581))))

(assert (=> bs!609600 (= (= lt!1551999 (+!478 lt!1551999 lt!1551989)) (= lambda!136590 lambda!136582))))

(assert (=> b!4338191 true))

(declare-fun bs!609602 () Bool)

(declare-fun b!4338188 () Bool)

(assert (= bs!609602 (and b!4338188 b!4338099)))

(declare-fun lambda!136591 () Int)

(assert (=> bs!609602 (= lambda!136591 lambda!136577)))

(declare-fun bs!609603 () Bool)

(assert (= bs!609603 (and b!4338188 d!1275065)))

(assert (=> bs!609603 (= (= lt!1551999 lt!1552292) (= lambda!136591 lambda!136579))))

(declare-fun bs!609604 () Bool)

(assert (= bs!609604 (and b!4338188 b!4338102)))

(assert (=> bs!609604 (= lambda!136591 lambda!136576)))

(assert (=> bs!609602 (= (= lt!1551999 lt!1552294) (= lambda!136591 lambda!136578))))

(declare-fun bs!609605 () Bool)

(assert (= bs!609605 (and b!4338188 b!4338145)))

(assert (=> bs!609605 (= (= lt!1551999 lt!1552350) (= lambda!136591 lambda!136583))))

(declare-fun bs!609606 () Bool)

(assert (= bs!609606 (and b!4338188 d!1275115)))

(assert (=> bs!609606 (= (= lt!1551999 lt!1552348) (= lambda!136591 lambda!136584))))

(declare-fun bs!609607 () Bool)

(assert (= bs!609607 (and b!4338188 b!4338191)))

(assert (=> bs!609607 (= lambda!136591 lambda!136590)))

(declare-fun bs!609608 () Bool)

(assert (= bs!609608 (and b!4338188 b!4338148)))

(assert (=> bs!609608 (= (= lt!1551999 (+!478 lt!1551999 lt!1551989)) (= lambda!136591 lambda!136581))))

(assert (=> bs!609605 (= (= lt!1551999 (+!478 lt!1551999 lt!1551989)) (= lambda!136591 lambda!136582))))

(assert (=> b!4338188 true))

(declare-fun lambda!136592 () Int)

(declare-fun lt!1552398 () ListMap!2033)

(assert (=> bs!609602 (= (= lt!1552398 lt!1551999) (= lambda!136592 lambda!136577))))

(assert (=> b!4338188 (= (= lt!1552398 lt!1551999) (= lambda!136592 lambda!136591))))

(assert (=> bs!609603 (= (= lt!1552398 lt!1552292) (= lambda!136592 lambda!136579))))

(assert (=> bs!609604 (= (= lt!1552398 lt!1551999) (= lambda!136592 lambda!136576))))

(assert (=> bs!609602 (= (= lt!1552398 lt!1552294) (= lambda!136592 lambda!136578))))

(assert (=> bs!609605 (= (= lt!1552398 lt!1552350) (= lambda!136592 lambda!136583))))

(assert (=> bs!609606 (= (= lt!1552398 lt!1552348) (= lambda!136592 lambda!136584))))

(assert (=> bs!609607 (= (= lt!1552398 lt!1551999) (= lambda!136592 lambda!136590))))

(assert (=> bs!609608 (= (= lt!1552398 (+!478 lt!1551999 lt!1551989)) (= lambda!136592 lambda!136581))))

(assert (=> bs!609605 (= (= lt!1552398 (+!478 lt!1551999 lt!1551989)) (= lambda!136592 lambda!136582))))

(assert (=> b!4338188 true))

(declare-fun bs!609609 () Bool)

(declare-fun d!1275137 () Bool)

(assert (= bs!609609 (and d!1275137 b!4338099)))

(declare-fun lambda!136593 () Int)

(declare-fun lt!1552396 () ListMap!2033)

(assert (=> bs!609609 (= (= lt!1552396 lt!1551999) (= lambda!136593 lambda!136577))))

(declare-fun bs!609610 () Bool)

(assert (= bs!609610 (and d!1275137 b!4338188)))

(assert (=> bs!609610 (= (= lt!1552396 lt!1551999) (= lambda!136593 lambda!136591))))

(declare-fun bs!609611 () Bool)

(assert (= bs!609611 (and d!1275137 b!4338102)))

(assert (=> bs!609611 (= (= lt!1552396 lt!1551999) (= lambda!136593 lambda!136576))))

(assert (=> bs!609609 (= (= lt!1552396 lt!1552294) (= lambda!136593 lambda!136578))))

(declare-fun bs!609612 () Bool)

(assert (= bs!609612 (and d!1275137 b!4338145)))

(assert (=> bs!609612 (= (= lt!1552396 lt!1552350) (= lambda!136593 lambda!136583))))

(declare-fun bs!609613 () Bool)

(assert (= bs!609613 (and d!1275137 d!1275115)))

(assert (=> bs!609613 (= (= lt!1552396 lt!1552348) (= lambda!136593 lambda!136584))))

(declare-fun bs!609614 () Bool)

(assert (= bs!609614 (and d!1275137 b!4338191)))

(assert (=> bs!609614 (= (= lt!1552396 lt!1551999) (= lambda!136593 lambda!136590))))

(assert (=> bs!609610 (= (= lt!1552396 lt!1552398) (= lambda!136593 lambda!136592))))

(declare-fun bs!609615 () Bool)

(assert (= bs!609615 (and d!1275137 d!1275065)))

(assert (=> bs!609615 (= (= lt!1552396 lt!1552292) (= lambda!136593 lambda!136579))))

(declare-fun bs!609616 () Bool)

(assert (= bs!609616 (and d!1275137 b!4338148)))

(assert (=> bs!609616 (= (= lt!1552396 (+!478 lt!1551999 lt!1551989)) (= lambda!136593 lambda!136581))))

(assert (=> bs!609612 (= (= lt!1552396 (+!478 lt!1551999 lt!1551989)) (= lambda!136593 lambda!136582))))

(assert (=> d!1275137 true))

(declare-fun e!2699320 () ListMap!2033)

(assert (=> b!4338188 (= e!2699320 lt!1552398)))

(declare-fun lt!1552395 () ListMap!2033)

(assert (=> b!4338188 (= lt!1552395 (+!478 lt!1551999 (h!54226 lt!1551996)))))

(assert (=> b!4338188 (= lt!1552398 (addToMapMapFromBucket!111 (t!355757 lt!1551996) (+!478 lt!1551999 (h!54226 lt!1551996))))))

(declare-fun lt!1552384 () Unit!68979)

(declare-fun call!301508 () Unit!68979)

(assert (=> b!4338188 (= lt!1552384 call!301508)))

(assert (=> b!4338188 (forall!8981 (toList!2790 lt!1551999) lambda!136591)))

(declare-fun lt!1552397 () Unit!68979)

(assert (=> b!4338188 (= lt!1552397 lt!1552384)))

(assert (=> b!4338188 (forall!8981 (toList!2790 lt!1552395) lambda!136592)))

(declare-fun lt!1552393 () Unit!68979)

(declare-fun Unit!69050 () Unit!68979)

(assert (=> b!4338188 (= lt!1552393 Unit!69050)))

(declare-fun call!301509 () Bool)

(assert (=> b!4338188 call!301509))

(declare-fun lt!1552385 () Unit!68979)

(declare-fun Unit!69051 () Unit!68979)

(assert (=> b!4338188 (= lt!1552385 Unit!69051)))

(declare-fun lt!1552386 () Unit!68979)

(declare-fun Unit!69052 () Unit!68979)

(assert (=> b!4338188 (= lt!1552386 Unit!69052)))

(declare-fun lt!1552399 () Unit!68979)

(assert (=> b!4338188 (= lt!1552399 (forallContained!1631 (toList!2790 lt!1552395) lambda!136592 (h!54226 lt!1551996)))))

(assert (=> b!4338188 (contains!10802 lt!1552395 (_1!27285 (h!54226 lt!1551996)))))

(declare-fun lt!1552394 () Unit!68979)

(declare-fun Unit!69053 () Unit!68979)

(assert (=> b!4338188 (= lt!1552394 Unit!69053)))

(assert (=> b!4338188 (contains!10802 lt!1552398 (_1!27285 (h!54226 lt!1551996)))))

(declare-fun lt!1552390 () Unit!68979)

(declare-fun Unit!69054 () Unit!68979)

(assert (=> b!4338188 (= lt!1552390 Unit!69054)))

(assert (=> b!4338188 (forall!8981 lt!1551996 lambda!136592)))

(declare-fun lt!1552387 () Unit!68979)

(declare-fun Unit!69055 () Unit!68979)

(assert (=> b!4338188 (= lt!1552387 Unit!69055)))

(declare-fun call!301510 () Bool)

(assert (=> b!4338188 call!301510))

(declare-fun lt!1552400 () Unit!68979)

(declare-fun Unit!69056 () Unit!68979)

(assert (=> b!4338188 (= lt!1552400 Unit!69056)))

(declare-fun lt!1552383 () Unit!68979)

(declare-fun Unit!69057 () Unit!68979)

(assert (=> b!4338188 (= lt!1552383 Unit!69057)))

(declare-fun lt!1552380 () Unit!68979)

(assert (=> b!4338188 (= lt!1552380 (addForallContainsKeyThenBeforeAdding!29 lt!1551999 lt!1552398 (_1!27285 (h!54226 lt!1551996)) (_2!27285 (h!54226 lt!1551996))))))

(assert (=> b!4338188 (forall!8981 (toList!2790 lt!1551999) lambda!136592)))

(declare-fun lt!1552391 () Unit!68979)

(assert (=> b!4338188 (= lt!1552391 lt!1552380)))

(assert (=> b!4338188 (forall!8981 (toList!2790 lt!1551999) lambda!136592)))

(declare-fun lt!1552392 () Unit!68979)

(declare-fun Unit!69058 () Unit!68979)

(assert (=> b!4338188 (= lt!1552392 Unit!69058)))

(declare-fun res!1779818 () Bool)

(assert (=> b!4338188 (= res!1779818 (forall!8981 lt!1551996 lambda!136592))))

(declare-fun e!2699321 () Bool)

(assert (=> b!4338188 (=> (not res!1779818) (not e!2699321))))

(assert (=> b!4338188 e!2699321))

(declare-fun lt!1552389 () Unit!68979)

(declare-fun Unit!69059 () Unit!68979)

(assert (=> b!4338188 (= lt!1552389 Unit!69059)))

(declare-fun b!4338189 () Bool)

(declare-fun res!1779820 () Bool)

(declare-fun e!2699319 () Bool)

(assert (=> b!4338189 (=> (not res!1779820) (not e!2699319))))

(assert (=> b!4338189 (= res!1779820 (forall!8981 (toList!2790 lt!1551999) lambda!136593))))

(declare-fun bm!301503 () Bool)

(declare-fun c!737586 () Bool)

(assert (=> bm!301503 (= call!301509 (forall!8981 (ite c!737586 (toList!2790 lt!1551999) (t!355757 lt!1551996)) (ite c!737586 lambda!136590 lambda!136592)))))

(declare-fun b!4338190 () Bool)

(assert (=> b!4338190 (= e!2699319 (invariantList!636 (toList!2790 lt!1552396)))))

(assert (=> b!4338191 (= e!2699320 lt!1551999)))

(declare-fun lt!1552382 () Unit!68979)

(assert (=> b!4338191 (= lt!1552382 call!301508)))

(assert (=> b!4338191 call!301509))

(declare-fun lt!1552388 () Unit!68979)

(assert (=> b!4338191 (= lt!1552388 lt!1552382)))

(assert (=> b!4338191 call!301510))

(declare-fun lt!1552381 () Unit!68979)

(declare-fun Unit!69060 () Unit!68979)

(assert (=> b!4338191 (= lt!1552381 Unit!69060)))

(declare-fun b!4338192 () Bool)

(assert (=> b!4338192 (= e!2699321 (forall!8981 (toList!2790 lt!1551999) lambda!136592))))

(assert (=> d!1275137 e!2699319))

(declare-fun res!1779819 () Bool)

(assert (=> d!1275137 (=> (not res!1779819) (not e!2699319))))

(assert (=> d!1275137 (= res!1779819 (forall!8981 lt!1551996 lambda!136593))))

(assert (=> d!1275137 (= lt!1552396 e!2699320)))

(assert (=> d!1275137 (= c!737586 ((_ is Nil!48717) lt!1551996))))

(assert (=> d!1275137 (noDuplicateKeys!403 lt!1551996)))

(assert (=> d!1275137 (= (addToMapMapFromBucket!111 lt!1551996 lt!1551999) lt!1552396)))

(declare-fun bm!301504 () Bool)

(assert (=> bm!301504 (= call!301508 (lemmaContainsAllItsOwnKeys!29 lt!1551999))))

(declare-fun bm!301505 () Bool)

(assert (=> bm!301505 (= call!301510 (forall!8981 (ite c!737586 (toList!2790 lt!1551999) (toList!2790 lt!1552395)) (ite c!737586 lambda!136590 lambda!136592)))))

(assert (= (and d!1275137 c!737586) b!4338191))

(assert (= (and d!1275137 (not c!737586)) b!4338188))

(assert (= (and b!4338188 res!1779818) b!4338192))

(assert (= (or b!4338191 b!4338188) bm!301504))

(assert (= (or b!4338191 b!4338188) bm!301505))

(assert (= (or b!4338191 b!4338188) bm!301503))

(assert (= (and d!1275137 res!1779819) b!4338189))

(assert (= (and b!4338189 res!1779820) b!4338190))

(declare-fun m!4935041 () Bool)

(assert (=> d!1275137 m!4935041))

(assert (=> d!1275137 m!4934943))

(declare-fun m!4935043 () Bool)

(assert (=> b!4338188 m!4935043))

(declare-fun m!4935045 () Bool)

(assert (=> b!4338188 m!4935045))

(declare-fun m!4935047 () Bool)

(assert (=> b!4338188 m!4935047))

(declare-fun m!4935049 () Bool)

(assert (=> b!4338188 m!4935049))

(declare-fun m!4935051 () Bool)

(assert (=> b!4338188 m!4935051))

(assert (=> b!4338188 m!4935045))

(declare-fun m!4935053 () Bool)

(assert (=> b!4338188 m!4935053))

(declare-fun m!4935055 () Bool)

(assert (=> b!4338188 m!4935055))

(assert (=> b!4338188 m!4935047))

(declare-fun m!4935057 () Bool)

(assert (=> b!4338188 m!4935057))

(assert (=> b!4338188 m!4935053))

(declare-fun m!4935059 () Bool)

(assert (=> b!4338188 m!4935059))

(declare-fun m!4935061 () Bool)

(assert (=> b!4338188 m!4935061))

(declare-fun m!4935063 () Bool)

(assert (=> bm!301505 m!4935063))

(declare-fun m!4935065 () Bool)

(assert (=> b!4338189 m!4935065))

(assert (=> bm!301504 m!4934867))

(assert (=> b!4338192 m!4935045))

(declare-fun m!4935067 () Bool)

(assert (=> b!4338190 m!4935067))

(declare-fun m!4935069 () Bool)

(assert (=> bm!301503 m!4935069))

(assert (=> b!4337930 d!1275137))

(declare-fun d!1275141 () Bool)

(declare-fun e!2699325 () Bool)

(assert (=> d!1275141 e!2699325))

(declare-fun res!1779825 () Bool)

(assert (=> d!1275141 (=> (not res!1779825) (not e!2699325))))

(declare-fun lt!1552405 () ListMap!2033)

(assert (=> d!1275141 (= res!1779825 (contains!10802 lt!1552405 (_1!27285 lt!1551989)))))

(declare-fun lt!1552404 () List!48841)

(assert (=> d!1275141 (= lt!1552405 (ListMap!2034 lt!1552404))))

(declare-fun lt!1552407 () Unit!68979)

(declare-fun lt!1552406 () Unit!68979)

(assert (=> d!1275141 (= lt!1552407 lt!1552406)))

(assert (=> d!1275141 (= (getValueByKey!369 lt!1552404 (_1!27285 lt!1551989)) (Some!10382 (_2!27285 lt!1551989)))))

(assert (=> d!1275141 (= lt!1552406 (lemmaContainsTupThenGetReturnValue!154 lt!1552404 (_1!27285 lt!1551989) (_2!27285 lt!1551989)))))

(assert (=> d!1275141 (= lt!1552404 (insertNoDuplicatedKeys!69 (toList!2790 (addToMapMapFromBucket!111 lt!1551996 lt!1551999)) (_1!27285 lt!1551989) (_2!27285 lt!1551989)))))

(assert (=> d!1275141 (= (+!478 (addToMapMapFromBucket!111 lt!1551996 lt!1551999) lt!1551989) lt!1552405)))

(declare-fun b!4338199 () Bool)

(declare-fun res!1779824 () Bool)

(assert (=> b!4338199 (=> (not res!1779824) (not e!2699325))))

(assert (=> b!4338199 (= res!1779824 (= (getValueByKey!369 (toList!2790 lt!1552405) (_1!27285 lt!1551989)) (Some!10382 (_2!27285 lt!1551989))))))

(declare-fun b!4338200 () Bool)

(assert (=> b!4338200 (= e!2699325 (contains!10807 (toList!2790 lt!1552405) lt!1551989))))

(assert (= (and d!1275141 res!1779825) b!4338199))

(assert (= (and b!4338199 res!1779824) b!4338200))

(declare-fun m!4935073 () Bool)

(assert (=> d!1275141 m!4935073))

(declare-fun m!4935075 () Bool)

(assert (=> d!1275141 m!4935075))

(declare-fun m!4935077 () Bool)

(assert (=> d!1275141 m!4935077))

(declare-fun m!4935079 () Bool)

(assert (=> d!1275141 m!4935079))

(declare-fun m!4935081 () Bool)

(assert (=> b!4338199 m!4935081))

(declare-fun m!4935083 () Bool)

(assert (=> b!4338200 m!4935083))

(assert (=> b!4337930 d!1275141))

(declare-fun bs!609623 () Bool)

(declare-fun b!4338204 () Bool)

(assert (= bs!609623 (and b!4338204 b!4338099)))

(declare-fun lambda!136597 () Int)

(assert (=> bs!609623 (= lambda!136597 lambda!136577)))

(declare-fun bs!609624 () Bool)

(assert (= bs!609624 (and b!4338204 b!4338188)))

(assert (=> bs!609624 (= lambda!136597 lambda!136591)))

(declare-fun bs!609625 () Bool)

(assert (= bs!609625 (and b!4338204 b!4338102)))

(assert (=> bs!609625 (= lambda!136597 lambda!136576)))

(assert (=> bs!609623 (= (= lt!1551999 lt!1552294) (= lambda!136597 lambda!136578))))

(declare-fun bs!609626 () Bool)

(assert (= bs!609626 (and b!4338204 d!1275137)))

(assert (=> bs!609626 (= (= lt!1551999 lt!1552396) (= lambda!136597 lambda!136593))))

(declare-fun bs!609627 () Bool)

(assert (= bs!609627 (and b!4338204 b!4338145)))

(assert (=> bs!609627 (= (= lt!1551999 lt!1552350) (= lambda!136597 lambda!136583))))

(declare-fun bs!609628 () Bool)

(assert (= bs!609628 (and b!4338204 d!1275115)))

(assert (=> bs!609628 (= (= lt!1551999 lt!1552348) (= lambda!136597 lambda!136584))))

(declare-fun bs!609629 () Bool)

(assert (= bs!609629 (and b!4338204 b!4338191)))

(assert (=> bs!609629 (= lambda!136597 lambda!136590)))

(assert (=> bs!609624 (= (= lt!1551999 lt!1552398) (= lambda!136597 lambda!136592))))

(declare-fun bs!609630 () Bool)

(assert (= bs!609630 (and b!4338204 d!1275065)))

(assert (=> bs!609630 (= (= lt!1551999 lt!1552292) (= lambda!136597 lambda!136579))))

(declare-fun bs!609631 () Bool)

(assert (= bs!609631 (and b!4338204 b!4338148)))

(assert (=> bs!609631 (= (= lt!1551999 (+!478 lt!1551999 lt!1551989)) (= lambda!136597 lambda!136581))))

(assert (=> bs!609627 (= (= lt!1551999 (+!478 lt!1551999 lt!1551989)) (= lambda!136597 lambda!136582))))

(assert (=> b!4338204 true))

(declare-fun bs!609632 () Bool)

(declare-fun b!4338201 () Bool)

(assert (= bs!609632 (and b!4338201 b!4338099)))

(declare-fun lambda!136598 () Int)

(assert (=> bs!609632 (= lambda!136598 lambda!136577)))

(declare-fun bs!609633 () Bool)

(assert (= bs!609633 (and b!4338201 b!4338188)))

(assert (=> bs!609633 (= lambda!136598 lambda!136591)))

(declare-fun bs!609634 () Bool)

(assert (= bs!609634 (and b!4338201 b!4338102)))

(assert (=> bs!609634 (= lambda!136598 lambda!136576)))

(declare-fun bs!609635 () Bool)

(assert (= bs!609635 (and b!4338201 d!1275137)))

(assert (=> bs!609635 (= (= lt!1551999 lt!1552396) (= lambda!136598 lambda!136593))))

(declare-fun bs!609636 () Bool)

(assert (= bs!609636 (and b!4338201 b!4338145)))

(assert (=> bs!609636 (= (= lt!1551999 lt!1552350) (= lambda!136598 lambda!136583))))

(declare-fun bs!609637 () Bool)

(assert (= bs!609637 (and b!4338201 d!1275115)))

(assert (=> bs!609637 (= (= lt!1551999 lt!1552348) (= lambda!136598 lambda!136584))))

(declare-fun bs!609638 () Bool)

(assert (= bs!609638 (and b!4338201 b!4338191)))

(assert (=> bs!609638 (= lambda!136598 lambda!136590)))

(assert (=> bs!609633 (= (= lt!1551999 lt!1552398) (= lambda!136598 lambda!136592))))

(declare-fun bs!609639 () Bool)

(assert (= bs!609639 (and b!4338201 d!1275065)))

(assert (=> bs!609639 (= (= lt!1551999 lt!1552292) (= lambda!136598 lambda!136579))))

(assert (=> bs!609632 (= (= lt!1551999 lt!1552294) (= lambda!136598 lambda!136578))))

(declare-fun bs!609640 () Bool)

(assert (= bs!609640 (and b!4338201 b!4338204)))

(assert (=> bs!609640 (= lambda!136598 lambda!136597)))

(declare-fun bs!609641 () Bool)

(assert (= bs!609641 (and b!4338201 b!4338148)))

(assert (=> bs!609641 (= (= lt!1551999 (+!478 lt!1551999 lt!1551989)) (= lambda!136598 lambda!136581))))

(assert (=> bs!609636 (= (= lt!1551999 (+!478 lt!1551999 lt!1551989)) (= lambda!136598 lambda!136582))))

(assert (=> b!4338201 true))

(declare-fun lt!1552426 () ListMap!2033)

(declare-fun lambda!136599 () Int)

(assert (=> bs!609632 (= (= lt!1552426 lt!1551999) (= lambda!136599 lambda!136577))))

(assert (=> bs!609633 (= (= lt!1552426 lt!1551999) (= lambda!136599 lambda!136591))))

(assert (=> bs!609634 (= (= lt!1552426 lt!1551999) (= lambda!136599 lambda!136576))))

(assert (=> bs!609635 (= (= lt!1552426 lt!1552396) (= lambda!136599 lambda!136593))))

(assert (=> b!4338201 (= (= lt!1552426 lt!1551999) (= lambda!136599 lambda!136598))))

(assert (=> bs!609636 (= (= lt!1552426 lt!1552350) (= lambda!136599 lambda!136583))))

(assert (=> bs!609637 (= (= lt!1552426 lt!1552348) (= lambda!136599 lambda!136584))))

(assert (=> bs!609638 (= (= lt!1552426 lt!1551999) (= lambda!136599 lambda!136590))))

(assert (=> bs!609633 (= (= lt!1552426 lt!1552398) (= lambda!136599 lambda!136592))))

(assert (=> bs!609639 (= (= lt!1552426 lt!1552292) (= lambda!136599 lambda!136579))))

(assert (=> bs!609632 (= (= lt!1552426 lt!1552294) (= lambda!136599 lambda!136578))))

(assert (=> bs!609640 (= (= lt!1552426 lt!1551999) (= lambda!136599 lambda!136597))))

(assert (=> bs!609641 (= (= lt!1552426 (+!478 lt!1551999 lt!1551989)) (= lambda!136599 lambda!136581))))

(assert (=> bs!609636 (= (= lt!1552426 (+!478 lt!1551999 lt!1551989)) (= lambda!136599 lambda!136582))))

(assert (=> b!4338201 true))

(declare-fun bs!609642 () Bool)

(declare-fun d!1275145 () Bool)

(assert (= bs!609642 (and d!1275145 b!4338099)))

(declare-fun lambda!136600 () Int)

(declare-fun lt!1552424 () ListMap!2033)

(assert (=> bs!609642 (= (= lt!1552424 lt!1551999) (= lambda!136600 lambda!136577))))

(declare-fun bs!609643 () Bool)

(assert (= bs!609643 (and d!1275145 b!4338188)))

(assert (=> bs!609643 (= (= lt!1552424 lt!1551999) (= lambda!136600 lambda!136591))))

(declare-fun bs!609644 () Bool)

(assert (= bs!609644 (and d!1275145 b!4338201)))

(assert (=> bs!609644 (= (= lt!1552424 lt!1552426) (= lambda!136600 lambda!136599))))

(declare-fun bs!609645 () Bool)

(assert (= bs!609645 (and d!1275145 b!4338102)))

(assert (=> bs!609645 (= (= lt!1552424 lt!1551999) (= lambda!136600 lambda!136576))))

(declare-fun bs!609646 () Bool)

(assert (= bs!609646 (and d!1275145 d!1275137)))

(assert (=> bs!609646 (= (= lt!1552424 lt!1552396) (= lambda!136600 lambda!136593))))

(assert (=> bs!609644 (= (= lt!1552424 lt!1551999) (= lambda!136600 lambda!136598))))

(declare-fun bs!609647 () Bool)

(assert (= bs!609647 (and d!1275145 b!4338145)))

(assert (=> bs!609647 (= (= lt!1552424 lt!1552350) (= lambda!136600 lambda!136583))))

(declare-fun bs!609648 () Bool)

(assert (= bs!609648 (and d!1275145 d!1275115)))

(assert (=> bs!609648 (= (= lt!1552424 lt!1552348) (= lambda!136600 lambda!136584))))

(declare-fun bs!609649 () Bool)

(assert (= bs!609649 (and d!1275145 b!4338191)))

(assert (=> bs!609649 (= (= lt!1552424 lt!1551999) (= lambda!136600 lambda!136590))))

(assert (=> bs!609643 (= (= lt!1552424 lt!1552398) (= lambda!136600 lambda!136592))))

(declare-fun bs!609650 () Bool)

(assert (= bs!609650 (and d!1275145 d!1275065)))

(assert (=> bs!609650 (= (= lt!1552424 lt!1552292) (= lambda!136600 lambda!136579))))

(assert (=> bs!609642 (= (= lt!1552424 lt!1552294) (= lambda!136600 lambda!136578))))

(declare-fun bs!609651 () Bool)

(assert (= bs!609651 (and d!1275145 b!4338204)))

(assert (=> bs!609651 (= (= lt!1552424 lt!1551999) (= lambda!136600 lambda!136597))))

(declare-fun bs!609652 () Bool)

(assert (= bs!609652 (and d!1275145 b!4338148)))

(assert (=> bs!609652 (= (= lt!1552424 (+!478 lt!1551999 lt!1551989)) (= lambda!136600 lambda!136581))))

(assert (=> bs!609647 (= (= lt!1552424 (+!478 lt!1551999 lt!1551989)) (= lambda!136600 lambda!136582))))

(assert (=> d!1275145 true))

(declare-fun e!2699327 () ListMap!2033)

(assert (=> b!4338201 (= e!2699327 lt!1552426)))

(declare-fun lt!1552423 () ListMap!2033)

(assert (=> b!4338201 (= lt!1552423 (+!478 lt!1551999 (h!54226 lt!1551992)))))

(assert (=> b!4338201 (= lt!1552426 (addToMapMapFromBucket!111 (t!355757 lt!1551992) (+!478 lt!1551999 (h!54226 lt!1551992))))))

(declare-fun lt!1552412 () Unit!68979)

(declare-fun call!301511 () Unit!68979)

(assert (=> b!4338201 (= lt!1552412 call!301511)))

(assert (=> b!4338201 (forall!8981 (toList!2790 lt!1551999) lambda!136598)))

(declare-fun lt!1552425 () Unit!68979)

(assert (=> b!4338201 (= lt!1552425 lt!1552412)))

(assert (=> b!4338201 (forall!8981 (toList!2790 lt!1552423) lambda!136599)))

(declare-fun lt!1552421 () Unit!68979)

(declare-fun Unit!69063 () Unit!68979)

(assert (=> b!4338201 (= lt!1552421 Unit!69063)))

(declare-fun call!301512 () Bool)

(assert (=> b!4338201 call!301512))

(declare-fun lt!1552413 () Unit!68979)

(declare-fun Unit!69064 () Unit!68979)

(assert (=> b!4338201 (= lt!1552413 Unit!69064)))

(declare-fun lt!1552414 () Unit!68979)

(declare-fun Unit!69065 () Unit!68979)

(assert (=> b!4338201 (= lt!1552414 Unit!69065)))

(declare-fun lt!1552427 () Unit!68979)

(assert (=> b!4338201 (= lt!1552427 (forallContained!1631 (toList!2790 lt!1552423) lambda!136599 (h!54226 lt!1551992)))))

(assert (=> b!4338201 (contains!10802 lt!1552423 (_1!27285 (h!54226 lt!1551992)))))

(declare-fun lt!1552422 () Unit!68979)

(declare-fun Unit!69066 () Unit!68979)

(assert (=> b!4338201 (= lt!1552422 Unit!69066)))

(assert (=> b!4338201 (contains!10802 lt!1552426 (_1!27285 (h!54226 lt!1551992)))))

(declare-fun lt!1552418 () Unit!68979)

(declare-fun Unit!69067 () Unit!68979)

(assert (=> b!4338201 (= lt!1552418 Unit!69067)))

(assert (=> b!4338201 (forall!8981 lt!1551992 lambda!136599)))

(declare-fun lt!1552415 () Unit!68979)

(declare-fun Unit!69068 () Unit!68979)

(assert (=> b!4338201 (= lt!1552415 Unit!69068)))

(declare-fun call!301513 () Bool)

(assert (=> b!4338201 call!301513))

(declare-fun lt!1552428 () Unit!68979)

(declare-fun Unit!69069 () Unit!68979)

(assert (=> b!4338201 (= lt!1552428 Unit!69069)))

(declare-fun lt!1552411 () Unit!68979)

(declare-fun Unit!69070 () Unit!68979)

(assert (=> b!4338201 (= lt!1552411 Unit!69070)))

(declare-fun lt!1552408 () Unit!68979)

(assert (=> b!4338201 (= lt!1552408 (addForallContainsKeyThenBeforeAdding!29 lt!1551999 lt!1552426 (_1!27285 (h!54226 lt!1551992)) (_2!27285 (h!54226 lt!1551992))))))

(assert (=> b!4338201 (forall!8981 (toList!2790 lt!1551999) lambda!136599)))

(declare-fun lt!1552419 () Unit!68979)

(assert (=> b!4338201 (= lt!1552419 lt!1552408)))

(assert (=> b!4338201 (forall!8981 (toList!2790 lt!1551999) lambda!136599)))

(declare-fun lt!1552420 () Unit!68979)

(declare-fun Unit!69071 () Unit!68979)

(assert (=> b!4338201 (= lt!1552420 Unit!69071)))

(declare-fun res!1779826 () Bool)

(assert (=> b!4338201 (= res!1779826 (forall!8981 lt!1551992 lambda!136599))))

(declare-fun e!2699328 () Bool)

(assert (=> b!4338201 (=> (not res!1779826) (not e!2699328))))

(assert (=> b!4338201 e!2699328))

(declare-fun lt!1552417 () Unit!68979)

(declare-fun Unit!69072 () Unit!68979)

(assert (=> b!4338201 (= lt!1552417 Unit!69072)))

(declare-fun b!4338202 () Bool)

(declare-fun res!1779828 () Bool)

(declare-fun e!2699326 () Bool)

(assert (=> b!4338202 (=> (not res!1779828) (not e!2699326))))

(assert (=> b!4338202 (= res!1779828 (forall!8981 (toList!2790 lt!1551999) lambda!136600))))

(declare-fun bm!301506 () Bool)

(declare-fun c!737587 () Bool)

(assert (=> bm!301506 (= call!301512 (forall!8981 (ite c!737587 (toList!2790 lt!1551999) (t!355757 lt!1551992)) (ite c!737587 lambda!136597 lambda!136599)))))

(declare-fun b!4338203 () Bool)

(assert (=> b!4338203 (= e!2699326 (invariantList!636 (toList!2790 lt!1552424)))))

(assert (=> b!4338204 (= e!2699327 lt!1551999)))

(declare-fun lt!1552410 () Unit!68979)

(assert (=> b!4338204 (= lt!1552410 call!301511)))

(assert (=> b!4338204 call!301512))

(declare-fun lt!1552416 () Unit!68979)

(assert (=> b!4338204 (= lt!1552416 lt!1552410)))

(assert (=> b!4338204 call!301513))

(declare-fun lt!1552409 () Unit!68979)

(declare-fun Unit!69073 () Unit!68979)

(assert (=> b!4338204 (= lt!1552409 Unit!69073)))

(declare-fun b!4338205 () Bool)

(assert (=> b!4338205 (= e!2699328 (forall!8981 (toList!2790 lt!1551999) lambda!136599))))

(assert (=> d!1275145 e!2699326))

(declare-fun res!1779827 () Bool)

(assert (=> d!1275145 (=> (not res!1779827) (not e!2699326))))

(assert (=> d!1275145 (= res!1779827 (forall!8981 lt!1551992 lambda!136600))))

(assert (=> d!1275145 (= lt!1552424 e!2699327)))

(assert (=> d!1275145 (= c!737587 ((_ is Nil!48717) lt!1551992))))

(assert (=> d!1275145 (noDuplicateKeys!403 lt!1551992)))

(assert (=> d!1275145 (= (addToMapMapFromBucket!111 lt!1551992 lt!1551999) lt!1552424)))

(declare-fun bm!301507 () Bool)

(assert (=> bm!301507 (= call!301511 (lemmaContainsAllItsOwnKeys!29 lt!1551999))))

(declare-fun bm!301508 () Bool)

(assert (=> bm!301508 (= call!301513 (forall!8981 (ite c!737587 (toList!2790 lt!1551999) (toList!2790 lt!1552423)) (ite c!737587 lambda!136597 lambda!136599)))))

(assert (= (and d!1275145 c!737587) b!4338204))

(assert (= (and d!1275145 (not c!737587)) b!4338201))

(assert (= (and b!4338201 res!1779826) b!4338205))

(assert (= (or b!4338204 b!4338201) bm!301507))

(assert (= (or b!4338204 b!4338201) bm!301508))

(assert (= (or b!4338204 b!4338201) bm!301506))

(assert (= (and d!1275145 res!1779827) b!4338202))

(assert (= (and b!4338202 res!1779828) b!4338203))

(declare-fun m!4935093 () Bool)

(assert (=> d!1275145 m!4935093))

(declare-fun m!4935095 () Bool)

(assert (=> d!1275145 m!4935095))

(declare-fun m!4935097 () Bool)

(assert (=> b!4338201 m!4935097))

(declare-fun m!4935099 () Bool)

(assert (=> b!4338201 m!4935099))

(declare-fun m!4935101 () Bool)

(assert (=> b!4338201 m!4935101))

(declare-fun m!4935103 () Bool)

(assert (=> b!4338201 m!4935103))

(declare-fun m!4935105 () Bool)

(assert (=> b!4338201 m!4935105))

(assert (=> b!4338201 m!4935099))

(declare-fun m!4935107 () Bool)

(assert (=> b!4338201 m!4935107))

(declare-fun m!4935109 () Bool)

(assert (=> b!4338201 m!4935109))

(assert (=> b!4338201 m!4935101))

(declare-fun m!4935111 () Bool)

(assert (=> b!4338201 m!4935111))

(assert (=> b!4338201 m!4935107))

(declare-fun m!4935113 () Bool)

(assert (=> b!4338201 m!4935113))

(declare-fun m!4935115 () Bool)

(assert (=> b!4338201 m!4935115))

(declare-fun m!4935117 () Bool)

(assert (=> bm!301508 m!4935117))

(declare-fun m!4935119 () Bool)

(assert (=> b!4338202 m!4935119))

(assert (=> bm!301507 m!4934867))

(assert (=> b!4338205 m!4935099))

(declare-fun m!4935121 () Bool)

(assert (=> b!4338203 m!4935121))

(declare-fun m!4935123 () Bool)

(assert (=> bm!301506 m!4935123))

(assert (=> b!4337930 d!1275145))

(declare-fun bs!609657 () Bool)

(declare-fun d!1275151 () Bool)

(assert (= bs!609657 (and d!1275151 b!4338099)))

(declare-fun lambda!136603 () Int)

(assert (=> bs!609657 (not (= lambda!136603 lambda!136577))))

(declare-fun bs!609658 () Bool)

(assert (= bs!609658 (and d!1275151 b!4338188)))

(assert (=> bs!609658 (not (= lambda!136603 lambda!136591))))

(declare-fun bs!609659 () Bool)

(assert (= bs!609659 (and d!1275151 d!1275145)))

(assert (=> bs!609659 (not (= lambda!136603 lambda!136600))))

(declare-fun bs!609660 () Bool)

(assert (= bs!609660 (and d!1275151 b!4338201)))

(assert (=> bs!609660 (not (= lambda!136603 lambda!136599))))

(declare-fun bs!609661 () Bool)

(assert (= bs!609661 (and d!1275151 b!4338102)))

(assert (=> bs!609661 (not (= lambda!136603 lambda!136576))))

(declare-fun bs!609662 () Bool)

(assert (= bs!609662 (and d!1275151 d!1275137)))

(assert (=> bs!609662 (not (= lambda!136603 lambda!136593))))

(assert (=> bs!609660 (not (= lambda!136603 lambda!136598))))

(declare-fun bs!609663 () Bool)

(assert (= bs!609663 (and d!1275151 b!4338145)))

(assert (=> bs!609663 (not (= lambda!136603 lambda!136583))))

(declare-fun bs!609664 () Bool)

(assert (= bs!609664 (and d!1275151 d!1275115)))

(assert (=> bs!609664 (not (= lambda!136603 lambda!136584))))

(declare-fun bs!609665 () Bool)

(assert (= bs!609665 (and d!1275151 b!4338191)))

(assert (=> bs!609665 (not (= lambda!136603 lambda!136590))))

(assert (=> bs!609658 (not (= lambda!136603 lambda!136592))))

(declare-fun bs!609666 () Bool)

(assert (= bs!609666 (and d!1275151 d!1275065)))

(assert (=> bs!609666 (not (= lambda!136603 lambda!136579))))

(assert (=> bs!609657 (not (= lambda!136603 lambda!136578))))

(declare-fun bs!609667 () Bool)

(assert (= bs!609667 (and d!1275151 b!4338204)))

(assert (=> bs!609667 (not (= lambda!136603 lambda!136597))))

(declare-fun bs!609668 () Bool)

(assert (= bs!609668 (and d!1275151 b!4338148)))

(assert (=> bs!609668 (not (= lambda!136603 lambda!136581))))

(assert (=> bs!609663 (not (= lambda!136603 lambda!136582))))

(assert (=> d!1275151 true))

(assert (=> d!1275151 true))

(assert (=> d!1275151 (= (allKeysSameHash!361 newBucket!200 hash!377 hashF!1247) (forall!8981 newBucket!200 lambda!136603))))

(declare-fun bs!609669 () Bool)

(assert (= bs!609669 d!1275151))

(declare-fun m!4935133 () Bool)

(assert (=> bs!609669 m!4935133))

(assert (=> b!4337919 d!1275151))

(declare-fun b!4338233 () Bool)

(declare-fun e!2699343 () Bool)

(declare-fun tp!1329186 () Bool)

(declare-fun tp!1329187 () Bool)

(assert (=> b!4338233 (= e!2699343 (and tp!1329186 tp!1329187))))

(assert (=> b!4337922 (= tp!1329171 e!2699343)))

(assert (= (and b!4337922 ((_ is Cons!48718) (toList!2789 lm!1707))) b!4338233))

(declare-fun e!2699346 () Bool)

(declare-fun tp!1329190 () Bool)

(declare-fun b!4338238 () Bool)

(assert (=> b!4338238 (= e!2699346 (and tp_is_empty!24849 tp_is_empty!24851 tp!1329190))))

(assert (=> b!4337925 (= tp!1329172 e!2699346)))

(assert (= (and b!4337925 ((_ is Cons!48717) (t!355757 newBucket!200))) b!4338238))

(declare-fun b_lambda!128451 () Bool)

(assert (= b_lambda!128433 (or start!418560 b_lambda!128451)))

(declare-fun bs!609670 () Bool)

(declare-fun d!1275159 () Bool)

(assert (= bs!609670 (and d!1275159 start!418560)))

(assert (=> bs!609670 (= (dynLambda!20574 lambda!136493 (tuple2!47985 hash!377 newBucket!200)) (noDuplicateKeys!403 (_2!27286 (tuple2!47985 hash!377 newBucket!200))))))

(declare-fun m!4935135 () Bool)

(assert (=> bs!609670 m!4935135))

(assert (=> b!4338022 d!1275159))

(declare-fun b_lambda!128453 () Bool)

(assert (= b_lambda!128427 (or start!418560 b_lambda!128453)))

(declare-fun bs!609671 () Bool)

(declare-fun d!1275161 () Bool)

(assert (= bs!609671 (and d!1275161 start!418560)))

(assert (=> bs!609671 (= (dynLambda!20574 lambda!136493 lt!1552002) (noDuplicateKeys!403 (_2!27286 lt!1552002)))))

(declare-fun m!4935137 () Bool)

(assert (=> bs!609671 m!4935137))

(assert (=> d!1275035 d!1275161))

(declare-fun b_lambda!128455 () Bool)

(assert (= b_lambda!128429 (or start!418560 b_lambda!128455)))

(declare-fun bs!609672 () Bool)

(declare-fun d!1275163 () Bool)

(assert (= bs!609672 (and d!1275163 start!418560)))

(assert (=> bs!609672 (= (dynLambda!20574 lambda!136493 (h!54227 (toList!2789 lm!1707))) (noDuplicateKeys!403 (_2!27286 (h!54227 (toList!2789 lm!1707)))))))

(declare-fun m!4935139 () Bool)

(assert (=> bs!609672 m!4935139))

(assert (=> b!4337976 d!1275163))

(declare-fun b_lambda!128457 () Bool)

(assert (= b_lambda!128431 (or start!418560 b_lambda!128457)))

(declare-fun bs!609673 () Bool)

(declare-fun d!1275165 () Bool)

(assert (= bs!609673 (and d!1275165 start!418560)))

(assert (=> bs!609673 (= (dynLambda!20574 lambda!136493 (h!54227 (toList!2789 lt!1552000))) (noDuplicateKeys!403 (_2!27286 (h!54227 (toList!2789 lt!1552000)))))))

(declare-fun m!4935141 () Bool)

(assert (=> bs!609673 m!4935141))

(assert (=> b!4338011 d!1275165))

(check-sat (not b!4337951) (not d!1275045) (not bm!301469) (not b!4338139) (not b!4338018) (not bm!301507) (not b!4338185) (not b!4338186) (not b!4338201) (not bs!609672) (not b!4337971) (not d!1275049) (not b!4337999) (not d!1275029) (not bm!301494) (not d!1275119) (not d!1275043) (not d!1275037) (not b!4338144) (not bm!301506) (not d!1275035) (not b!4337959) (not b!4337969) (not d!1275033) (not d!1275151) (not b_lambda!128455) (not b!4338149) (not b!4338189) (not b!4337997) (not d!1275065) (not b_lambda!128451) (not d!1275113) (not bs!609670) (not b!4338205) (not d!1275115) (not b!4338003) (not b!4337977) (not b!4338017) (not b!4338190) (not bs!609673) (not b!4338100) (not d!1275031) (not b!4338233) (not d!1275059) (not bm!301501) (not d!1275099) (not bm!301504) (not d!1275141) (not bm!301500) (not bm!301508) (not b!4338001) (not b!4338203) (not b_lambda!128457) (not b!4337996) (not b!4337947) (not b!4338199) (not b!4338099) (not b!4338009) (not b!4338188) (not bm!301503) (not b!4338200) tp_is_empty!24849 (not d!1275061) (not d!1275053) (not b!4338103) (not d!1275121) (not d!1275135) (not b!4338161) (not d!1275051) (not b!4338192) (not b!4337936) (not b!4338146) (not b!4338147) (not bm!301495) (not b!4338000) (not d!1275145) (not b!4338140) (not b!4338002) (not b!4337954) (not d!1275055) (not bs!609671) (not b!4338238) (not bm!301496) (not bm!301502) (not d!1275063) (not b!4338101) (not b!4338202) (not d!1275041) (not b!4338184) (not b!4338145) (not b!4337960) (not d!1275137) (not b!4338143) (not b_lambda!128453) (not bm!301505) tp_is_empty!24851 (not b!4338012))
(check-sat)
