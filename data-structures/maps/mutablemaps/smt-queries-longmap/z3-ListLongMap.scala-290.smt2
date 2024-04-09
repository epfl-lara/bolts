; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4764 () Bool)

(assert start!4764)

(declare-fun b_free!1329 () Bool)

(declare-fun b_next!1329 () Bool)

(assert (=> start!4764 (= b_free!1329 (not b_next!1329))))

(declare-fun tp!5459 () Bool)

(declare-fun b_and!2189 () Bool)

(assert (=> start!4764 (= tp!5459 b_and!2189)))

(declare-fun b!36793 () Bool)

(declare-fun e!23246 () Bool)

(declare-datatypes ((B!736 0))(
  ( (B!737 (val!868 Int)) )
))
(declare-datatypes ((tuple2!1400 0))(
  ( (tuple2!1401 (_1!710 (_ BitVec 64)) (_2!710 B!736)) )
))
(declare-datatypes ((List!988 0))(
  ( (Nil!985) (Cons!984 (h!1552 tuple2!1400) (t!3727 List!988)) )
))
(declare-datatypes ((ListLongMap!981 0))(
  ( (ListLongMap!982 (toList!506 List!988)) )
))
(declare-fun lt!13606 () ListLongMap!981)

(declare-fun k0!388 () (_ BitVec 64))

(declare-fun contains!454 (ListLongMap!981 (_ BitVec 64)) Bool)

(assert (=> b!36793 (= e!23246 (not (contains!454 lt!13606 k0!388)))))

(declare-fun res!22258 () Bool)

(declare-fun e!23245 () Bool)

(assert (=> start!4764 (=> (not res!22258) (not e!23245))))

(declare-fun lm!252 () ListLongMap!981)

(declare-fun p!304 () Int)

(declare-fun forall!168 (List!988 Int) Bool)

(assert (=> start!4764 (= res!22258 (forall!168 (toList!506 lm!252) p!304))))

(assert (=> start!4764 e!23245))

(declare-fun e!23247 () Bool)

(declare-fun inv!1623 (ListLongMap!981) Bool)

(assert (=> start!4764 (and (inv!1623 lm!252) e!23247)))

(assert (=> start!4764 tp!5459))

(assert (=> start!4764 true))

(declare-fun b!36794 () Bool)

(declare-fun res!22256 () Bool)

(assert (=> b!36794 (=> (not res!22256) (not e!23245))))

(declare-fun isEmpty!192 (ListLongMap!981) Bool)

(assert (=> b!36794 (= res!22256 (not (isEmpty!192 lm!252)))))

(declare-fun b!36795 () Bool)

(declare-fun tp!5458 () Bool)

(assert (=> b!36795 (= e!23247 tp!5458)))

(declare-fun b!36796 () Bool)

(assert (=> b!36796 (= e!23245 e!23246)))

(declare-fun res!22255 () Bool)

(assert (=> b!36796 (=> res!22255 e!23246)))

(assert (=> b!36796 (= res!22255 (not (forall!168 (toList!506 lt!13606) p!304)))))

(declare-fun tail!93 (ListLongMap!981) ListLongMap!981)

(assert (=> b!36796 (= lt!13606 (tail!93 lm!252))))

(declare-fun b!36797 () Bool)

(declare-fun res!22254 () Bool)

(assert (=> b!36797 (=> (not res!22254) (not e!23245))))

(declare-fun head!840 (List!988) tuple2!1400)

(assert (=> b!36797 (= res!22254 (not (= (_1!710 (head!840 (toList!506 lm!252))) k0!388)))))

(declare-fun b!36798 () Bool)

(declare-fun res!22257 () Bool)

(assert (=> b!36798 (=> (not res!22257) (not e!23245))))

(assert (=> b!36798 (= res!22257 (contains!454 lm!252 k0!388))))

(assert (= (and start!4764 res!22258) b!36798))

(assert (= (and b!36798 res!22257) b!36794))

(assert (= (and b!36794 res!22256) b!36797))

(assert (= (and b!36797 res!22254) b!36796))

(assert (= (and b!36796 (not res!22255)) b!36793))

(assert (= start!4764 b!36795))

(declare-fun m!29649 () Bool)

(assert (=> b!36796 m!29649))

(declare-fun m!29651 () Bool)

(assert (=> b!36796 m!29651))

(declare-fun m!29653 () Bool)

(assert (=> b!36793 m!29653))

(declare-fun m!29655 () Bool)

(assert (=> start!4764 m!29655))

(declare-fun m!29657 () Bool)

(assert (=> start!4764 m!29657))

(declare-fun m!29659 () Bool)

(assert (=> b!36794 m!29659))

(declare-fun m!29661 () Bool)

(assert (=> b!36798 m!29661))

(declare-fun m!29663 () Bool)

(assert (=> b!36797 m!29663))

(check-sat (not b!36794) (not b!36798) (not b!36795) (not b_next!1329) (not b!36793) b_and!2189 (not start!4764) (not b!36797) (not b!36796))
(check-sat b_and!2189 (not b_next!1329))
(get-model)

(declare-fun d!5563 () Bool)

(declare-fun isEmpty!194 (List!988) Bool)

(assert (=> d!5563 (= (isEmpty!192 lm!252) (isEmpty!194 (toList!506 lm!252)))))

(declare-fun bs!1408 () Bool)

(assert (= bs!1408 d!5563))

(declare-fun m!29681 () Bool)

(assert (=> bs!1408 m!29681))

(assert (=> b!36794 d!5563))

(declare-fun d!5565 () Bool)

(declare-fun res!22284 () Bool)

(declare-fun e!23267 () Bool)

(assert (=> d!5565 (=> res!22284 e!23267)))

(get-info :version)

(assert (=> d!5565 (= res!22284 ((_ is Nil!985) (toList!506 lm!252)))))

(assert (=> d!5565 (= (forall!168 (toList!506 lm!252) p!304) e!23267)))

(declare-fun b!36827 () Bool)

(declare-fun e!23268 () Bool)

(assert (=> b!36827 (= e!23267 e!23268)))

(declare-fun res!22285 () Bool)

(assert (=> b!36827 (=> (not res!22285) (not e!23268))))

(declare-fun dynLambda!170 (Int tuple2!1400) Bool)

(assert (=> b!36827 (= res!22285 (dynLambda!170 p!304 (h!1552 (toList!506 lm!252))))))

(declare-fun b!36828 () Bool)

(assert (=> b!36828 (= e!23268 (forall!168 (t!3727 (toList!506 lm!252)) p!304))))

(assert (= (and d!5565 (not res!22284)) b!36827))

(assert (= (and b!36827 res!22285) b!36828))

(declare-fun b_lambda!1791 () Bool)

(assert (=> (not b_lambda!1791) (not b!36827)))

(declare-fun t!3732 () Bool)

(declare-fun tb!729 () Bool)

(assert (=> (and start!4764 (= p!304 p!304) t!3732) tb!729))

(declare-fun result!1253 () Bool)

(assert (=> tb!729 (= result!1253 true)))

(assert (=> b!36827 t!3732))

(declare-fun b_and!2195 () Bool)

(assert (= b_and!2189 (and (=> t!3732 result!1253) b_and!2195)))

(declare-fun m!29687 () Bool)

(assert (=> b!36827 m!29687))

(declare-fun m!29689 () Bool)

(assert (=> b!36828 m!29689))

(assert (=> start!4764 d!5565))

(declare-fun d!5571 () Bool)

(declare-fun isStrictlySorted!175 (List!988) Bool)

(assert (=> d!5571 (= (inv!1623 lm!252) (isStrictlySorted!175 (toList!506 lm!252)))))

(declare-fun bs!1410 () Bool)

(assert (= bs!1410 d!5571))

(declare-fun m!29693 () Bool)

(assert (=> bs!1410 m!29693))

(assert (=> start!4764 d!5571))

(declare-fun d!5575 () Bool)

(declare-fun res!22286 () Bool)

(declare-fun e!23269 () Bool)

(assert (=> d!5575 (=> res!22286 e!23269)))

(assert (=> d!5575 (= res!22286 ((_ is Nil!985) (toList!506 lt!13606)))))

(assert (=> d!5575 (= (forall!168 (toList!506 lt!13606) p!304) e!23269)))

(declare-fun b!36829 () Bool)

(declare-fun e!23270 () Bool)

(assert (=> b!36829 (= e!23269 e!23270)))

(declare-fun res!22287 () Bool)

(assert (=> b!36829 (=> (not res!22287) (not e!23270))))

(assert (=> b!36829 (= res!22287 (dynLambda!170 p!304 (h!1552 (toList!506 lt!13606))))))

(declare-fun b!36830 () Bool)

(assert (=> b!36830 (= e!23270 (forall!168 (t!3727 (toList!506 lt!13606)) p!304))))

(assert (= (and d!5575 (not res!22286)) b!36829))

(assert (= (and b!36829 res!22287) b!36830))

(declare-fun b_lambda!1793 () Bool)

(assert (=> (not b_lambda!1793) (not b!36829)))

(declare-fun t!3734 () Bool)

(declare-fun tb!731 () Bool)

(assert (=> (and start!4764 (= p!304 p!304) t!3734) tb!731))

(declare-fun result!1255 () Bool)

(assert (=> tb!731 (= result!1255 true)))

(assert (=> b!36829 t!3734))

(declare-fun b_and!2197 () Bool)

(assert (= b_and!2195 (and (=> t!3734 result!1255) b_and!2197)))

(declare-fun m!29695 () Bool)

(assert (=> b!36829 m!29695))

(declare-fun m!29697 () Bool)

(assert (=> b!36830 m!29697))

(assert (=> b!36796 d!5575))

(declare-fun d!5577 () Bool)

(declare-fun tail!96 (List!988) List!988)

(assert (=> d!5577 (= (tail!93 lm!252) (ListLongMap!982 (tail!96 (toList!506 lm!252))))))

(declare-fun bs!1411 () Bool)

(assert (= bs!1411 d!5577))

(declare-fun m!29699 () Bool)

(assert (=> bs!1411 m!29699))

(assert (=> b!36796 d!5577))

(declare-fun d!5579 () Bool)

(assert (=> d!5579 (= (head!840 (toList!506 lm!252)) (h!1552 (toList!506 lm!252)))))

(assert (=> b!36797 d!5579))

(declare-fun d!5581 () Bool)

(declare-fun e!23296 () Bool)

(assert (=> d!5581 e!23296))

(declare-fun res!22304 () Bool)

(assert (=> d!5581 (=> res!22304 e!23296)))

(declare-fun lt!13645 () Bool)

(assert (=> d!5581 (= res!22304 (not lt!13645))))

(declare-fun lt!13644 () Bool)

(assert (=> d!5581 (= lt!13645 lt!13644)))

(declare-datatypes ((Unit!824 0))(
  ( (Unit!825) )
))
(declare-fun lt!13642 () Unit!824)

(declare-fun e!23295 () Unit!824)

(assert (=> d!5581 (= lt!13642 e!23295)))

(declare-fun c!4225 () Bool)

(assert (=> d!5581 (= c!4225 lt!13644)))

(declare-fun containsKey!46 (List!988 (_ BitVec 64)) Bool)

(assert (=> d!5581 (= lt!13644 (containsKey!46 (toList!506 lt!13606) k0!388))))

(assert (=> d!5581 (= (contains!454 lt!13606 k0!388) lt!13645)))

(declare-fun b!36863 () Bool)

(declare-fun lt!13643 () Unit!824)

(assert (=> b!36863 (= e!23295 lt!13643)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!43 (List!988 (_ BitVec 64)) Unit!824)

(assert (=> b!36863 (= lt!13643 (lemmaContainsKeyImpliesGetValueByKeyDefined!43 (toList!506 lt!13606) k0!388))))

(declare-datatypes ((Option!88 0))(
  ( (Some!87 (v!1956 B!736)) (None!86) )
))
(declare-fun isDefined!44 (Option!88) Bool)

(declare-fun getValueByKey!82 (List!988 (_ BitVec 64)) Option!88)

(assert (=> b!36863 (isDefined!44 (getValueByKey!82 (toList!506 lt!13606) k0!388))))

(declare-fun b!36864 () Bool)

(declare-fun Unit!827 () Unit!824)

(assert (=> b!36864 (= e!23295 Unit!827)))

(declare-fun b!36865 () Bool)

(assert (=> b!36865 (= e!23296 (isDefined!44 (getValueByKey!82 (toList!506 lt!13606) k0!388)))))

(assert (= (and d!5581 c!4225) b!36863))

(assert (= (and d!5581 (not c!4225)) b!36864))

(assert (= (and d!5581 (not res!22304)) b!36865))

(declare-fun m!29731 () Bool)

(assert (=> d!5581 m!29731))

(declare-fun m!29733 () Bool)

(assert (=> b!36863 m!29733))

(declare-fun m!29735 () Bool)

(assert (=> b!36863 m!29735))

(assert (=> b!36863 m!29735))

(declare-fun m!29737 () Bool)

(assert (=> b!36863 m!29737))

(assert (=> b!36865 m!29735))

(assert (=> b!36865 m!29735))

(assert (=> b!36865 m!29737))

(assert (=> b!36793 d!5581))

(declare-fun d!5597 () Bool)

(declare-fun e!23298 () Bool)

(assert (=> d!5597 e!23298))

(declare-fun res!22305 () Bool)

(assert (=> d!5597 (=> res!22305 e!23298)))

(declare-fun lt!13649 () Bool)

(assert (=> d!5597 (= res!22305 (not lt!13649))))

(declare-fun lt!13648 () Bool)

(assert (=> d!5597 (= lt!13649 lt!13648)))

(declare-fun lt!13646 () Unit!824)

(declare-fun e!23297 () Unit!824)

(assert (=> d!5597 (= lt!13646 e!23297)))

(declare-fun c!4226 () Bool)

(assert (=> d!5597 (= c!4226 lt!13648)))

(assert (=> d!5597 (= lt!13648 (containsKey!46 (toList!506 lm!252) k0!388))))

(assert (=> d!5597 (= (contains!454 lm!252 k0!388) lt!13649)))

(declare-fun b!36866 () Bool)

(declare-fun lt!13647 () Unit!824)

(assert (=> b!36866 (= e!23297 lt!13647)))

(assert (=> b!36866 (= lt!13647 (lemmaContainsKeyImpliesGetValueByKeyDefined!43 (toList!506 lm!252) k0!388))))

(assert (=> b!36866 (isDefined!44 (getValueByKey!82 (toList!506 lm!252) k0!388))))

(declare-fun b!36867 () Bool)

(declare-fun Unit!828 () Unit!824)

(assert (=> b!36867 (= e!23297 Unit!828)))

(declare-fun b!36868 () Bool)

(assert (=> b!36868 (= e!23298 (isDefined!44 (getValueByKey!82 (toList!506 lm!252) k0!388)))))

(assert (= (and d!5597 c!4226) b!36866))

(assert (= (and d!5597 (not c!4226)) b!36867))

(assert (= (and d!5597 (not res!22305)) b!36868))

(declare-fun m!29741 () Bool)

(assert (=> d!5597 m!29741))

(declare-fun m!29743 () Bool)

(assert (=> b!36866 m!29743))

(declare-fun m!29745 () Bool)

(assert (=> b!36866 m!29745))

(assert (=> b!36866 m!29745))

(declare-fun m!29747 () Bool)

(assert (=> b!36866 m!29747))

(assert (=> b!36868 m!29745))

(assert (=> b!36868 m!29745))

(assert (=> b!36868 m!29747))

(assert (=> b!36798 d!5597))

(declare-fun b!36882 () Bool)

(declare-fun e!23307 () Bool)

(declare-fun tp_is_empty!1659 () Bool)

(declare-fun tp!5470 () Bool)

(assert (=> b!36882 (= e!23307 (and tp_is_empty!1659 tp!5470))))

(assert (=> b!36795 (= tp!5458 e!23307)))

(assert (= (and b!36795 ((_ is Cons!984) (toList!506 lm!252))) b!36882))

(declare-fun b_lambda!1803 () Bool)

(assert (= b_lambda!1791 (or (and start!4764 b_free!1329) b_lambda!1803)))

(declare-fun b_lambda!1807 () Bool)

(assert (= b_lambda!1793 (or (and start!4764 b_free!1329) b_lambda!1807)))

(check-sat (not d!5577) (not b!36830) (not d!5597) (not b_next!1329) b_and!2197 (not b_lambda!1803) (not b!36882) (not b!36865) (not b!36863) (not d!5581) (not b_lambda!1807) (not b!36828) (not d!5563) tp_is_empty!1659 (not b!36868) (not b!36866) (not d!5571))
(check-sat b_and!2197 (not b_next!1329))
(get-model)

(declare-fun d!5609 () Bool)

(declare-fun res!22314 () Bool)

(declare-fun e!23318 () Bool)

(assert (=> d!5609 (=> res!22314 e!23318)))

(assert (=> d!5609 (= res!22314 (and ((_ is Cons!984) (toList!506 lt!13606)) (= (_1!710 (h!1552 (toList!506 lt!13606))) k0!388)))))

(assert (=> d!5609 (= (containsKey!46 (toList!506 lt!13606) k0!388) e!23318)))

(declare-fun b!36896 () Bool)

(declare-fun e!23319 () Bool)

(assert (=> b!36896 (= e!23318 e!23319)))

(declare-fun res!22315 () Bool)

(assert (=> b!36896 (=> (not res!22315) (not e!23319))))

(assert (=> b!36896 (= res!22315 (and (or (not ((_ is Cons!984) (toList!506 lt!13606))) (bvsle (_1!710 (h!1552 (toList!506 lt!13606))) k0!388)) ((_ is Cons!984) (toList!506 lt!13606)) (bvslt (_1!710 (h!1552 (toList!506 lt!13606))) k0!388)))))

(declare-fun b!36897 () Bool)

(assert (=> b!36897 (= e!23319 (containsKey!46 (t!3727 (toList!506 lt!13606)) k0!388))))

(assert (= (and d!5609 (not res!22314)) b!36896))

(assert (= (and b!36896 res!22315) b!36897))

(declare-fun m!29771 () Bool)

(assert (=> b!36897 m!29771))

(assert (=> d!5581 d!5609))

(declare-fun d!5611 () Bool)

(assert (=> d!5611 (isDefined!44 (getValueByKey!82 (toList!506 lm!252) k0!388))))

(declare-fun lt!13660 () Unit!824)

(declare-fun choose!229 (List!988 (_ BitVec 64)) Unit!824)

(assert (=> d!5611 (= lt!13660 (choose!229 (toList!506 lm!252) k0!388))))

(declare-fun e!23322 () Bool)

(assert (=> d!5611 e!23322))

(declare-fun res!22318 () Bool)

(assert (=> d!5611 (=> (not res!22318) (not e!23322))))

(assert (=> d!5611 (= res!22318 (isStrictlySorted!175 (toList!506 lm!252)))))

(assert (=> d!5611 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!43 (toList!506 lm!252) k0!388) lt!13660)))

(declare-fun b!36900 () Bool)

(assert (=> b!36900 (= e!23322 (containsKey!46 (toList!506 lm!252) k0!388))))

(assert (= (and d!5611 res!22318) b!36900))

(assert (=> d!5611 m!29745))

(assert (=> d!5611 m!29745))

(assert (=> d!5611 m!29747))

(declare-fun m!29773 () Bool)

(assert (=> d!5611 m!29773))

(assert (=> d!5611 m!29693))

(assert (=> b!36900 m!29741))

(assert (=> b!36866 d!5611))

(declare-fun d!5613 () Bool)

(declare-fun isEmpty!197 (Option!88) Bool)

(assert (=> d!5613 (= (isDefined!44 (getValueByKey!82 (toList!506 lm!252) k0!388)) (not (isEmpty!197 (getValueByKey!82 (toList!506 lm!252) k0!388))))))

(declare-fun bs!1417 () Bool)

(assert (= bs!1417 d!5613))

(assert (=> bs!1417 m!29745))

(declare-fun m!29775 () Bool)

(assert (=> bs!1417 m!29775))

(assert (=> b!36866 d!5613))

(declare-fun d!5615 () Bool)

(declare-fun c!4233 () Bool)

(assert (=> d!5615 (= c!4233 (and ((_ is Cons!984) (toList!506 lm!252)) (= (_1!710 (h!1552 (toList!506 lm!252))) k0!388)))))

(declare-fun e!23327 () Option!88)

(assert (=> d!5615 (= (getValueByKey!82 (toList!506 lm!252) k0!388) e!23327)))

(declare-fun b!36909 () Bool)

(assert (=> b!36909 (= e!23327 (Some!87 (_2!710 (h!1552 (toList!506 lm!252)))))))

(declare-fun b!36910 () Bool)

(declare-fun e!23328 () Option!88)

(assert (=> b!36910 (= e!23327 e!23328)))

(declare-fun c!4234 () Bool)

(assert (=> b!36910 (= c!4234 (and ((_ is Cons!984) (toList!506 lm!252)) (not (= (_1!710 (h!1552 (toList!506 lm!252))) k0!388))))))

(declare-fun b!36912 () Bool)

(assert (=> b!36912 (= e!23328 None!86)))

(declare-fun b!36911 () Bool)

(assert (=> b!36911 (= e!23328 (getValueByKey!82 (t!3727 (toList!506 lm!252)) k0!388))))

(assert (= (and d!5615 c!4233) b!36909))

(assert (= (and d!5615 (not c!4233)) b!36910))

(assert (= (and b!36910 c!4234) b!36911))

(assert (= (and b!36910 (not c!4234)) b!36912))

(declare-fun m!29777 () Bool)

(assert (=> b!36911 m!29777))

(assert (=> b!36866 d!5615))

(declare-fun d!5617 () Bool)

(assert (=> d!5617 (isDefined!44 (getValueByKey!82 (toList!506 lt!13606) k0!388))))

(declare-fun lt!13661 () Unit!824)

(assert (=> d!5617 (= lt!13661 (choose!229 (toList!506 lt!13606) k0!388))))

(declare-fun e!23329 () Bool)

(assert (=> d!5617 e!23329))

(declare-fun res!22319 () Bool)

(assert (=> d!5617 (=> (not res!22319) (not e!23329))))

(assert (=> d!5617 (= res!22319 (isStrictlySorted!175 (toList!506 lt!13606)))))

(assert (=> d!5617 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!43 (toList!506 lt!13606) k0!388) lt!13661)))

(declare-fun b!36913 () Bool)

(assert (=> b!36913 (= e!23329 (containsKey!46 (toList!506 lt!13606) k0!388))))

(assert (= (and d!5617 res!22319) b!36913))

(assert (=> d!5617 m!29735))

(assert (=> d!5617 m!29735))

(assert (=> d!5617 m!29737))

(declare-fun m!29779 () Bool)

(assert (=> d!5617 m!29779))

(declare-fun m!29781 () Bool)

(assert (=> d!5617 m!29781))

(assert (=> b!36913 m!29731))

(assert (=> b!36863 d!5617))

(declare-fun d!5619 () Bool)

(assert (=> d!5619 (= (isDefined!44 (getValueByKey!82 (toList!506 lt!13606) k0!388)) (not (isEmpty!197 (getValueByKey!82 (toList!506 lt!13606) k0!388))))))

(declare-fun bs!1418 () Bool)

(assert (= bs!1418 d!5619))

(assert (=> bs!1418 m!29735))

(declare-fun m!29783 () Bool)

(assert (=> bs!1418 m!29783))

(assert (=> b!36863 d!5619))

(declare-fun d!5621 () Bool)

(declare-fun c!4235 () Bool)

(assert (=> d!5621 (= c!4235 (and ((_ is Cons!984) (toList!506 lt!13606)) (= (_1!710 (h!1552 (toList!506 lt!13606))) k0!388)))))

(declare-fun e!23330 () Option!88)

(assert (=> d!5621 (= (getValueByKey!82 (toList!506 lt!13606) k0!388) e!23330)))

(declare-fun b!36914 () Bool)

(assert (=> b!36914 (= e!23330 (Some!87 (_2!710 (h!1552 (toList!506 lt!13606)))))))

(declare-fun b!36915 () Bool)

(declare-fun e!23331 () Option!88)

(assert (=> b!36915 (= e!23330 e!23331)))

(declare-fun c!4236 () Bool)

(assert (=> b!36915 (= c!4236 (and ((_ is Cons!984) (toList!506 lt!13606)) (not (= (_1!710 (h!1552 (toList!506 lt!13606))) k0!388))))))

(declare-fun b!36917 () Bool)

(assert (=> b!36917 (= e!23331 None!86)))

(declare-fun b!36916 () Bool)

(assert (=> b!36916 (= e!23331 (getValueByKey!82 (t!3727 (toList!506 lt!13606)) k0!388))))

(assert (= (and d!5621 c!4235) b!36914))

(assert (= (and d!5621 (not c!4235)) b!36915))

(assert (= (and b!36915 c!4236) b!36916))

(assert (= (and b!36915 (not c!4236)) b!36917))

(declare-fun m!29785 () Bool)

(assert (=> b!36916 m!29785))

(assert (=> b!36863 d!5621))

(declare-fun d!5625 () Bool)

(declare-fun res!22324 () Bool)

(declare-fun e!23340 () Bool)

(assert (=> d!5625 (=> res!22324 e!23340)))

(assert (=> d!5625 (= res!22324 (or ((_ is Nil!985) (toList!506 lm!252)) ((_ is Nil!985) (t!3727 (toList!506 lm!252)))))))

(assert (=> d!5625 (= (isStrictlySorted!175 (toList!506 lm!252)) e!23340)))

(declare-fun b!36930 () Bool)

(declare-fun e!23341 () Bool)

(assert (=> b!36930 (= e!23340 e!23341)))

(declare-fun res!22325 () Bool)

(assert (=> b!36930 (=> (not res!22325) (not e!23341))))

(assert (=> b!36930 (= res!22325 (bvslt (_1!710 (h!1552 (toList!506 lm!252))) (_1!710 (h!1552 (t!3727 (toList!506 lm!252))))))))

(declare-fun b!36931 () Bool)

(assert (=> b!36931 (= e!23341 (isStrictlySorted!175 (t!3727 (toList!506 lm!252))))))

(assert (= (and d!5625 (not res!22324)) b!36930))

(assert (= (and b!36930 res!22325) b!36931))

(declare-fun m!29789 () Bool)

(assert (=> b!36931 m!29789))

(assert (=> d!5571 d!5625))

(declare-fun d!5629 () Bool)

(declare-fun res!22326 () Bool)

(declare-fun e!23342 () Bool)

(assert (=> d!5629 (=> res!22326 e!23342)))

(assert (=> d!5629 (= res!22326 (and ((_ is Cons!984) (toList!506 lm!252)) (= (_1!710 (h!1552 (toList!506 lm!252))) k0!388)))))

(assert (=> d!5629 (= (containsKey!46 (toList!506 lm!252) k0!388) e!23342)))

(declare-fun b!36932 () Bool)

(declare-fun e!23343 () Bool)

(assert (=> b!36932 (= e!23342 e!23343)))

(declare-fun res!22327 () Bool)

(assert (=> b!36932 (=> (not res!22327) (not e!23343))))

(assert (=> b!36932 (= res!22327 (and (or (not ((_ is Cons!984) (toList!506 lm!252))) (bvsle (_1!710 (h!1552 (toList!506 lm!252))) k0!388)) ((_ is Cons!984) (toList!506 lm!252)) (bvslt (_1!710 (h!1552 (toList!506 lm!252))) k0!388)))))

(declare-fun b!36933 () Bool)

(assert (=> b!36933 (= e!23343 (containsKey!46 (t!3727 (toList!506 lm!252)) k0!388))))

(assert (= (and d!5629 (not res!22326)) b!36932))

(assert (= (and b!36932 res!22327) b!36933))

(declare-fun m!29791 () Bool)

(assert (=> b!36933 m!29791))

(assert (=> d!5597 d!5629))

(declare-fun d!5631 () Bool)

(declare-fun res!22328 () Bool)

(declare-fun e!23344 () Bool)

(assert (=> d!5631 (=> res!22328 e!23344)))

(assert (=> d!5631 (= res!22328 ((_ is Nil!985) (t!3727 (toList!506 lm!252))))))

(assert (=> d!5631 (= (forall!168 (t!3727 (toList!506 lm!252)) p!304) e!23344)))

(declare-fun b!36934 () Bool)

(declare-fun e!23345 () Bool)

(assert (=> b!36934 (= e!23344 e!23345)))

(declare-fun res!22329 () Bool)

(assert (=> b!36934 (=> (not res!22329) (not e!23345))))

(assert (=> b!36934 (= res!22329 (dynLambda!170 p!304 (h!1552 (t!3727 (toList!506 lm!252)))))))

(declare-fun b!36935 () Bool)

(assert (=> b!36935 (= e!23345 (forall!168 (t!3727 (t!3727 (toList!506 lm!252))) p!304))))

(assert (= (and d!5631 (not res!22328)) b!36934))

(assert (= (and b!36934 res!22329) b!36935))

(declare-fun b_lambda!1813 () Bool)

(assert (=> (not b_lambda!1813) (not b!36934)))

(declare-fun t!3742 () Bool)

(declare-fun tb!739 () Bool)

(assert (=> (and start!4764 (= p!304 p!304) t!3742) tb!739))

(declare-fun result!1269 () Bool)

(assert (=> tb!739 (= result!1269 true)))

(assert (=> b!36934 t!3742))

(declare-fun b_and!2205 () Bool)

(assert (= b_and!2197 (and (=> t!3742 result!1269) b_and!2205)))

(declare-fun m!29793 () Bool)

(assert (=> b!36934 m!29793))

(declare-fun m!29795 () Bool)

(assert (=> b!36935 m!29795))

(assert (=> b!36828 d!5631))

(assert (=> b!36868 d!5613))

(assert (=> b!36868 d!5615))

(assert (=> b!36865 d!5619))

(assert (=> b!36865 d!5621))

(declare-fun d!5633 () Bool)

(assert (=> d!5633 (= (tail!96 (toList!506 lm!252)) (t!3727 (toList!506 lm!252)))))

(assert (=> d!5577 d!5633))

(declare-fun d!5637 () Bool)

(assert (=> d!5637 (= (isEmpty!194 (toList!506 lm!252)) ((_ is Nil!985) (toList!506 lm!252)))))

(assert (=> d!5563 d!5637))

(declare-fun d!5639 () Bool)

(declare-fun res!22330 () Bool)

(declare-fun e!23348 () Bool)

(assert (=> d!5639 (=> res!22330 e!23348)))

(assert (=> d!5639 (= res!22330 ((_ is Nil!985) (t!3727 (toList!506 lt!13606))))))

(assert (=> d!5639 (= (forall!168 (t!3727 (toList!506 lt!13606)) p!304) e!23348)))

(declare-fun b!36940 () Bool)

(declare-fun e!23349 () Bool)

(assert (=> b!36940 (= e!23348 e!23349)))

(declare-fun res!22331 () Bool)

(assert (=> b!36940 (=> (not res!22331) (not e!23349))))

(assert (=> b!36940 (= res!22331 (dynLambda!170 p!304 (h!1552 (t!3727 (toList!506 lt!13606)))))))

(declare-fun b!36941 () Bool)

(assert (=> b!36941 (= e!23349 (forall!168 (t!3727 (t!3727 (toList!506 lt!13606))) p!304))))

(assert (= (and d!5639 (not res!22330)) b!36940))

(assert (= (and b!36940 res!22331) b!36941))

(declare-fun b_lambda!1815 () Bool)

(assert (=> (not b_lambda!1815) (not b!36940)))

(declare-fun t!3744 () Bool)

(declare-fun tb!741 () Bool)

(assert (=> (and start!4764 (= p!304 p!304) t!3744) tb!741))

(declare-fun result!1271 () Bool)

(assert (=> tb!741 (= result!1271 true)))

(assert (=> b!36940 t!3744))

(declare-fun b_and!2207 () Bool)

(assert (= b_and!2205 (and (=> t!3744 result!1271) b_and!2207)))

(declare-fun m!29799 () Bool)

(assert (=> b!36940 m!29799))

(declare-fun m!29801 () Bool)

(assert (=> b!36941 m!29801))

(assert (=> b!36830 d!5639))

(declare-fun b!36946 () Bool)

(declare-fun e!23354 () Bool)

(declare-fun tp!5475 () Bool)

(assert (=> b!36946 (= e!23354 (and tp_is_empty!1659 tp!5475))))

(assert (=> b!36882 (= tp!5470 e!23354)))

(assert (= (and b!36882 ((_ is Cons!984) (t!3727 (toList!506 lm!252)))) b!36946))

(declare-fun b_lambda!1817 () Bool)

(assert (= b_lambda!1813 (or (and start!4764 b_free!1329) b_lambda!1817)))

(declare-fun b_lambda!1819 () Bool)

(assert (= b_lambda!1815 (or (and start!4764 b_free!1329) b_lambda!1819)))

(check-sat (not b_lambda!1819) (not d!5613) (not b!36931) (not b_next!1329) (not b!36911) (not d!5617) (not b!36941) (not b!36935) (not b!36900) (not b!36897) (not b!36913) (not d!5619) (not d!5611) (not b!36946) (not b_lambda!1803) (not b_lambda!1817) (not b_lambda!1807) (not b!36916) b_and!2207 tp_is_empty!1659 (not b!36933))
(check-sat b_and!2207 (not b_next!1329))
