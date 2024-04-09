; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87462 () Bool)

(assert start!87462)

(declare-fun b!1012831 () Bool)

(assert (=> b!1012831 true))

(assert (=> b!1012831 true))

(declare-datatypes ((Unit!33051 0))(
  ( (Unit!33052) )
))
(declare-fun e!569779 () Unit!33051)

(declare-fun lt!447700 () Unit!33051)

(assert (=> b!1012831 (= e!569779 lt!447700)))

(declare-datatypes ((List!21495 0))(
  ( (Nil!21492) (Cons!21491 (h!22689 (_ BitVec 64)) (t!30504 List!21495)) )
))
(declare-fun lt!447702 () List!21495)

(declare-datatypes ((B!1366 0))(
  ( (B!1367 (val!11767 Int)) )
))
(declare-fun value!115 () B!1366)

(declare-datatypes ((tuple2!15170 0))(
  ( (tuple2!15171 (_1!7595 (_ BitVec 64)) (_2!7595 B!1366)) )
))
(declare-datatypes ((List!21496 0))(
  ( (Nil!21493) (Cons!21492 (h!22690 tuple2!15170) (t!30505 List!21496)) )
))
(declare-fun l!412 () List!21496)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!20 (List!21496 List!21495 B!1366 tuple2!15170) Unit!33051)

(assert (=> b!1012831 (= lt!447700 (lemmaForallGetValueByKeySameWithASmallerHead!20 (t!30505 l!412) lt!447702 value!115 (h!22690 l!412)))))

(declare-fun lambda!422 () Int)

(declare-fun forall!225 (List!21495 Int) Bool)

(assert (=> b!1012831 (forall!225 lt!447702 lambda!422)))

(declare-fun res!680260 () Bool)

(declare-fun e!569778 () Bool)

(assert (=> start!87462 (=> (not res!680260) (not e!569778))))

(declare-fun isStrictlySorted!543 (List!21496) Bool)

(assert (=> start!87462 (= res!680260 (isStrictlySorted!543 l!412))))

(assert (=> start!87462 e!569778))

(declare-fun e!569780 () Bool)

(assert (=> start!87462 e!569780))

(declare-fun tp_is_empty!23433 () Bool)

(assert (=> start!87462 tp_is_empty!23433))

(declare-fun b!1012832 () Bool)

(declare-fun Unit!33053 () Unit!33051)

(assert (=> b!1012832 (= e!569779 Unit!33053)))

(declare-fun b!1012833 () Bool)

(assert (=> b!1012833 (= e!569778 (not (isStrictlySorted!543 (t!30505 l!412))))))

(declare-fun lt!447701 () Unit!33051)

(assert (=> b!1012833 (= lt!447701 e!569779)))

(declare-fun c!102306 () Bool)

(declare-fun isEmpty!809 (List!21495) Bool)

(assert (=> b!1012833 (= c!102306 (not (isEmpty!809 lt!447702)))))

(declare-fun getKeysOf!29 (List!21496 B!1366) List!21495)

(assert (=> b!1012833 (= lt!447702 (getKeysOf!29 (t!30505 l!412) value!115))))

(declare-fun b!1012834 () Bool)

(declare-fun tp!70350 () Bool)

(assert (=> b!1012834 (= e!569780 (and tp_is_empty!23433 tp!70350))))

(declare-fun b!1012835 () Bool)

(declare-fun res!680259 () Bool)

(assert (=> b!1012835 (=> (not res!680259) (not e!569778))))

(get-info :version)

(assert (=> b!1012835 (= res!680259 (and (not (= (_2!7595 (h!22690 l!412)) value!115)) ((_ is Cons!21492) l!412)))))

(assert (= (and start!87462 res!680260) b!1012835))

(assert (= (and b!1012835 res!680259) b!1012833))

(assert (= (and b!1012833 c!102306) b!1012831))

(assert (= (and b!1012833 (not c!102306)) b!1012832))

(assert (= (and start!87462 ((_ is Cons!21492) l!412)) b!1012834))

(declare-fun m!936279 () Bool)

(assert (=> b!1012831 m!936279))

(declare-fun m!936281 () Bool)

(assert (=> b!1012831 m!936281))

(declare-fun m!936283 () Bool)

(assert (=> start!87462 m!936283))

(declare-fun m!936285 () Bool)

(assert (=> b!1012833 m!936285))

(declare-fun m!936287 () Bool)

(assert (=> b!1012833 m!936287))

(declare-fun m!936289 () Bool)

(assert (=> b!1012833 m!936289))

(check-sat (not b!1012834) (not b!1012833) (not start!87462) tp_is_empty!23433 (not b!1012831))
(check-sat)
(get-model)

(declare-fun bs!28844 () Bool)

(declare-fun b!1012872 () Bool)

(assert (= bs!28844 (and b!1012872 b!1012831)))

(declare-fun lambda!430 () Int)

(assert (=> bs!28844 (= (= (t!30505 l!412) l!412) (= lambda!430 lambda!422))))

(assert (=> b!1012872 true))

(assert (=> b!1012872 true))

(declare-fun bs!28845 () Bool)

(declare-fun d!120319 () Bool)

(assert (= bs!28845 (and d!120319 b!1012831)))

(declare-fun lambda!431 () Int)

(assert (=> bs!28845 (= (= (Cons!21492 (h!22690 l!412) (t!30505 l!412)) l!412) (= lambda!431 lambda!422))))

(declare-fun bs!28846 () Bool)

(assert (= bs!28846 (and d!120319 b!1012872)))

(assert (=> bs!28846 (= (= (Cons!21492 (h!22690 l!412) (t!30505 l!412)) (t!30505 l!412)) (= lambda!431 lambda!430))))

(assert (=> d!120319 true))

(assert (=> d!120319 true))

(assert (=> d!120319 true))

(assert (=> d!120319 (forall!225 lt!447702 lambda!431)))

(declare-fun lt!447714 () Unit!33051)

(declare-fun choose!1634 (List!21496 List!21495 B!1366 tuple2!15170) Unit!33051)

(assert (=> d!120319 (= lt!447714 (choose!1634 (t!30505 l!412) lt!447702 value!115 (h!22690 l!412)))))

(declare-fun e!569798 () Bool)

(assert (=> d!120319 e!569798))

(declare-fun res!680280 () Bool)

(assert (=> d!120319 (=> (not res!680280) (not e!569798))))

(assert (=> d!120319 (= res!680280 (isStrictlySorted!543 (t!30505 l!412)))))

(assert (=> d!120319 (= (lemmaForallGetValueByKeySameWithASmallerHead!20 (t!30505 l!412) lt!447702 value!115 (h!22690 l!412)) lt!447714)))

(declare-fun b!1012871 () Bool)

(declare-fun res!680281 () Bool)

(assert (=> b!1012871 (=> (not res!680281) (not e!569798))))

(declare-fun isEmpty!811 (List!21496) Bool)

(assert (=> b!1012871 (= res!680281 (not (isEmpty!811 (t!30505 l!412))))))

(declare-fun res!680279 () Bool)

(assert (=> b!1012872 (=> (not res!680279) (not e!569798))))

(assert (=> b!1012872 (= res!680279 (forall!225 lt!447702 lambda!430))))

(declare-fun b!1012873 () Bool)

(declare-fun head!928 (List!21496) tuple2!15170)

(assert (=> b!1012873 (= e!569798 (bvslt (_1!7595 (h!22690 l!412)) (_1!7595 (head!928 (t!30505 l!412)))))))

(assert (= (and d!120319 res!680280) b!1012871))

(assert (= (and b!1012871 res!680281) b!1012872))

(assert (= (and b!1012872 res!680279) b!1012873))

(declare-fun m!936305 () Bool)

(assert (=> d!120319 m!936305))

(declare-fun m!936307 () Bool)

(assert (=> d!120319 m!936307))

(assert (=> d!120319 m!936285))

(declare-fun m!936309 () Bool)

(assert (=> b!1012871 m!936309))

(declare-fun m!936311 () Bool)

(assert (=> b!1012872 m!936311))

(declare-fun m!936313 () Bool)

(assert (=> b!1012873 m!936313))

(assert (=> b!1012831 d!120319))

(declare-fun d!120329 () Bool)

(declare-fun res!680292 () Bool)

(declare-fun e!569809 () Bool)

(assert (=> d!120329 (=> res!680292 e!569809)))

(assert (=> d!120329 (= res!680292 ((_ is Nil!21492) lt!447702))))

(assert (=> d!120329 (= (forall!225 lt!447702 lambda!422) e!569809)))

(declare-fun b!1012886 () Bool)

(declare-fun e!569810 () Bool)

(assert (=> b!1012886 (= e!569809 e!569810)))

(declare-fun res!680293 () Bool)

(assert (=> b!1012886 (=> (not res!680293) (not e!569810))))

(declare-fun dynLambda!1885 (Int (_ BitVec 64)) Bool)

(assert (=> b!1012886 (= res!680293 (dynLambda!1885 lambda!422 (h!22689 lt!447702)))))

(declare-fun b!1012887 () Bool)

(assert (=> b!1012887 (= e!569810 (forall!225 (t!30504 lt!447702) lambda!422))))

(assert (= (and d!120329 (not res!680292)) b!1012886))

(assert (= (and b!1012886 res!680293) b!1012887))

(declare-fun b_lambda!15271 () Bool)

(assert (=> (not b_lambda!15271) (not b!1012886)))

(declare-fun m!936317 () Bool)

(assert (=> b!1012886 m!936317))

(declare-fun m!936319 () Bool)

(assert (=> b!1012887 m!936319))

(assert (=> b!1012831 d!120329))

(declare-fun d!120335 () Bool)

(declare-fun res!680298 () Bool)

(declare-fun e!569815 () Bool)

(assert (=> d!120335 (=> res!680298 e!569815)))

(assert (=> d!120335 (= res!680298 (or ((_ is Nil!21493) l!412) ((_ is Nil!21493) (t!30505 l!412))))))

(assert (=> d!120335 (= (isStrictlySorted!543 l!412) e!569815)))

(declare-fun b!1012892 () Bool)

(declare-fun e!569816 () Bool)

(assert (=> b!1012892 (= e!569815 e!569816)))

(declare-fun res!680299 () Bool)

(assert (=> b!1012892 (=> (not res!680299) (not e!569816))))

(assert (=> b!1012892 (= res!680299 (bvslt (_1!7595 (h!22690 l!412)) (_1!7595 (h!22690 (t!30505 l!412)))))))

(declare-fun b!1012893 () Bool)

(assert (=> b!1012893 (= e!569816 (isStrictlySorted!543 (t!30505 l!412)))))

(assert (= (and d!120335 (not res!680298)) b!1012892))

(assert (= (and b!1012892 res!680299) b!1012893))

(assert (=> b!1012893 m!936285))

(assert (=> start!87462 d!120335))

(declare-fun d!120337 () Bool)

(declare-fun res!680300 () Bool)

(declare-fun e!569817 () Bool)

(assert (=> d!120337 (=> res!680300 e!569817)))

(assert (=> d!120337 (= res!680300 (or ((_ is Nil!21493) (t!30505 l!412)) ((_ is Nil!21493) (t!30505 (t!30505 l!412)))))))

(assert (=> d!120337 (= (isStrictlySorted!543 (t!30505 l!412)) e!569817)))

(declare-fun b!1012894 () Bool)

(declare-fun e!569818 () Bool)

(assert (=> b!1012894 (= e!569817 e!569818)))

(declare-fun res!680301 () Bool)

(assert (=> b!1012894 (=> (not res!680301) (not e!569818))))

(assert (=> b!1012894 (= res!680301 (bvslt (_1!7595 (h!22690 (t!30505 l!412))) (_1!7595 (h!22690 (t!30505 (t!30505 l!412))))))))

(declare-fun b!1012895 () Bool)

(assert (=> b!1012895 (= e!569818 (isStrictlySorted!543 (t!30505 (t!30505 l!412))))))

(assert (= (and d!120337 (not res!680300)) b!1012894))

(assert (= (and b!1012894 res!680301) b!1012895))

(declare-fun m!936321 () Bool)

(assert (=> b!1012895 m!936321))

(assert (=> b!1012833 d!120337))

(declare-fun d!120339 () Bool)

(assert (=> d!120339 (= (isEmpty!809 lt!447702) ((_ is Nil!21492) lt!447702))))

(assert (=> b!1012833 d!120339))

(declare-fun bs!28859 () Bool)

(declare-fun b!1012981 () Bool)

(assert (= bs!28859 (and b!1012981 b!1012831)))

(declare-fun lt!447821 () List!21496)

(declare-fun lt!447817 () tuple2!15170)

(declare-fun lambda!460 () Int)

(assert (=> bs!28859 (= (= (Cons!21492 lt!447817 lt!447821) l!412) (= lambda!460 lambda!422))))

(declare-fun bs!28860 () Bool)

(assert (= bs!28860 (and b!1012981 b!1012872)))

(assert (=> bs!28860 (= (= (Cons!21492 lt!447817 lt!447821) (t!30505 l!412)) (= lambda!460 lambda!430))))

(declare-fun bs!28861 () Bool)

(assert (= bs!28861 (and b!1012981 d!120319)))

(assert (=> bs!28861 (= (= (Cons!21492 lt!447817 lt!447821) (Cons!21492 (h!22690 l!412) (t!30505 l!412))) (= lambda!460 lambda!431))))

(assert (=> b!1012981 true))

(assert (=> b!1012981 true))

(assert (=> b!1012981 true))

(declare-fun bs!28862 () Bool)

(declare-fun b!1012979 () Bool)

(assert (= bs!28862 (and b!1012979 b!1012831)))

(declare-fun lt!447822 () tuple2!15170)

(declare-fun lt!447813 () List!21496)

(declare-fun lambda!461 () Int)

(assert (=> bs!28862 (= (= (Cons!21492 lt!447822 lt!447813) l!412) (= lambda!461 lambda!422))))

(declare-fun bs!28863 () Bool)

(assert (= bs!28863 (and b!1012979 b!1012872)))

(assert (=> bs!28863 (= (= (Cons!21492 lt!447822 lt!447813) (t!30505 l!412)) (= lambda!461 lambda!430))))

(declare-fun bs!28864 () Bool)

(assert (= bs!28864 (and b!1012979 d!120319)))

(assert (=> bs!28864 (= (= (Cons!21492 lt!447822 lt!447813) (Cons!21492 (h!22690 l!412) (t!30505 l!412))) (= lambda!461 lambda!431))))

(declare-fun bs!28866 () Bool)

(assert (= bs!28866 (and b!1012979 b!1012981)))

(assert (=> bs!28866 (= (= (Cons!21492 lt!447822 lt!447813) (Cons!21492 lt!447817 lt!447821)) (= lambda!461 lambda!460))))

(assert (=> b!1012979 true))

(assert (=> b!1012979 true))

(assert (=> b!1012979 true))

(declare-fun bs!28870 () Bool)

(declare-fun d!120341 () Bool)

(assert (= bs!28870 (and d!120341 b!1012872)))

(declare-fun lambda!463 () Int)

(assert (=> bs!28870 (= lambda!463 lambda!430)))

(declare-fun bs!28871 () Bool)

(assert (= bs!28871 (and d!120341 d!120319)))

(assert (=> bs!28871 (= (= (t!30505 l!412) (Cons!21492 (h!22690 l!412) (t!30505 l!412))) (= lambda!463 lambda!431))))

(declare-fun bs!28872 () Bool)

(assert (= bs!28872 (and d!120341 b!1012979)))

(assert (=> bs!28872 (= (= (t!30505 l!412) (Cons!21492 lt!447822 lt!447813)) (= lambda!463 lambda!461))))

(declare-fun bs!28874 () Bool)

(assert (= bs!28874 (and d!120341 b!1012981)))

(assert (=> bs!28874 (= (= (t!30505 l!412) (Cons!21492 lt!447817 lt!447821)) (= lambda!463 lambda!460))))

(declare-fun bs!28876 () Bool)

(assert (= bs!28876 (and d!120341 b!1012831)))

(assert (=> bs!28876 (= (= (t!30505 l!412) l!412) (= lambda!463 lambda!422))))

(assert (=> d!120341 true))

(assert (=> d!120341 true))

(declare-fun lt!447824 () List!21495)

(declare-fun bm!42619 () Bool)

(declare-fun call!42622 () Bool)

(declare-fun c!102344 () Bool)

(declare-fun lt!447820 () List!21495)

(assert (=> bm!42619 (= call!42622 (forall!225 (ite c!102344 lt!447824 lt!447820) (ite c!102344 lambda!460 lambda!461)))))

(declare-fun b!1012974 () Bool)

(declare-fun e!569860 () List!21495)

(assert (=> b!1012974 (= e!569860 Nil!21492)))

(declare-fun b!1012975 () Bool)

(declare-fun e!569855 () List!21495)

(assert (=> b!1012975 (= e!569855 e!569860)))

(declare-fun c!102342 () Bool)

(assert (=> b!1012975 (= c!102342 (and ((_ is Cons!21492) (t!30505 l!412)) (not (= (_2!7595 (h!22690 (t!30505 l!412))) value!115))))))

(declare-fun b!1012976 () Bool)

(declare-fun call!42624 () List!21495)

(assert (=> b!1012976 (= e!569855 (Cons!21491 (_1!7595 (h!22690 (t!30505 l!412))) call!42624))))

(declare-fun c!102345 () Bool)

(declare-fun call!42625 () Bool)

(assert (=> b!1012976 (= c!102345 (not call!42625))))

(declare-fun lt!447814 () Unit!33051)

(declare-fun e!569858 () Unit!33051)

(assert (=> b!1012976 (= lt!447814 e!569858)))

(declare-fun bm!42620 () Bool)

(declare-fun call!42623 () Unit!33051)

(assert (=> bm!42620 (= call!42623 (lemmaForallGetValueByKeySameWithASmallerHead!20 (ite c!102344 lt!447821 lt!447813) (ite c!102344 lt!447824 lt!447820) value!115 (ite c!102344 lt!447817 lt!447822)))))

(declare-fun b!1012977 () Bool)

(declare-fun Unit!33059 () Unit!33051)

(assert (=> b!1012977 (= e!569858 Unit!33059)))

(declare-fun b!1012978 () Bool)

(declare-fun e!569859 () Unit!33051)

(declare-fun Unit!33060 () Unit!33051)

(assert (=> b!1012978 (= e!569859 Unit!33060)))

(declare-fun lt!447823 () Unit!33051)

(assert (=> b!1012979 (= e!569859 lt!447823)))

(assert (=> b!1012979 (= lt!447813 (t!30505 (t!30505 l!412)))))

(assert (=> b!1012979 (= lt!447820 call!42624)))

(assert (=> b!1012979 (= lt!447822 (h!22690 (t!30505 l!412)))))

(assert (=> b!1012979 (= lt!447823 call!42623)))

(assert (=> b!1012979 call!42622))

(declare-fun lt!447815 () List!21495)

(assert (=> d!120341 (forall!225 lt!447815 lambda!463)))

(assert (=> d!120341 (= lt!447815 e!569855)))

(assert (=> d!120341 (= c!102344 (and ((_ is Cons!21492) (t!30505 l!412)) (= (_2!7595 (h!22690 (t!30505 l!412))) value!115)))))

(assert (=> d!120341 (isStrictlySorted!543 (t!30505 l!412))))

(assert (=> d!120341 (= (getKeysOf!29 (t!30505 l!412) value!115) lt!447815)))

(declare-fun b!1012980 () Bool)

(declare-fun lt!447816 () Unit!33051)

(assert (=> b!1012980 (= lt!447816 e!569859)))

(declare-fun c!102343 () Bool)

(assert (=> b!1012980 (= c!102343 (not call!42625))))

(declare-fun lt!447819 () List!21495)

(assert (=> b!1012980 (= lt!447819 call!42624)))

(assert (=> b!1012980 (= e!569860 call!42624)))

(declare-fun bm!42621 () Bool)

(assert (=> bm!42621 (= call!42624 (getKeysOf!29 (t!30505 (t!30505 l!412)) value!115))))

(assert (=> b!1012981 call!42622))

(declare-fun lt!447818 () Unit!33051)

(assert (=> b!1012981 (= lt!447818 call!42623)))

(assert (=> b!1012981 (= lt!447817 (h!22690 (t!30505 l!412)))))

(assert (=> b!1012981 (= lt!447824 call!42624)))

(assert (=> b!1012981 (= lt!447821 (t!30505 (t!30505 l!412)))))

(assert (=> b!1012981 (= e!569858 lt!447818)))

(declare-fun bm!42622 () Bool)

(assert (=> bm!42622 (= call!42625 (isEmpty!809 call!42624))))

(assert (= (and d!120341 c!102344) b!1012976))

(assert (= (and d!120341 (not c!102344)) b!1012975))

(assert (= (and b!1012976 c!102345) b!1012981))

(assert (= (and b!1012976 (not c!102345)) b!1012977))

(assert (= (and b!1012975 c!102342) b!1012980))

(assert (= (and b!1012975 (not c!102342)) b!1012974))

(assert (= (and b!1012980 c!102343) b!1012979))

(assert (= (and b!1012980 (not c!102343)) b!1012978))

(assert (= (or b!1012981 b!1012979) bm!42620))

(assert (= (or b!1012981 b!1012979) bm!42619))

(assert (= (or b!1012976 b!1012981 b!1012980 b!1012979) bm!42621))

(assert (= (or b!1012976 b!1012980) bm!42622))

(declare-fun m!936347 () Bool)

(assert (=> bm!42619 m!936347))

(declare-fun m!936353 () Bool)

(assert (=> bm!42620 m!936353))

(declare-fun m!936357 () Bool)

(assert (=> d!120341 m!936357))

(assert (=> d!120341 m!936285))

(declare-fun m!936359 () Bool)

(assert (=> bm!42621 m!936359))

(declare-fun m!936361 () Bool)

(assert (=> bm!42622 m!936361))

(assert (=> b!1012833 d!120341))

(declare-fun b!1012995 () Bool)

(declare-fun e!569866 () Bool)

(declare-fun tp!70356 () Bool)

(assert (=> b!1012995 (= e!569866 (and tp_is_empty!23433 tp!70356))))

(assert (=> b!1012834 (= tp!70350 e!569866)))

(assert (= (and b!1012834 ((_ is Cons!21492) (t!30505 l!412))) b!1012995))

(declare-fun b_lambda!15273 () Bool)

(assert (= b_lambda!15271 (or b!1012831 b_lambda!15273)))

(declare-fun bs!28880 () Bool)

(declare-fun d!120353 () Bool)

(assert (= bs!28880 (and d!120353 b!1012831)))

(declare-datatypes ((Option!572 0))(
  ( (Some!571 (v!14420 B!1366)) (None!570) )
))
(declare-fun getValueByKey!521 (List!21496 (_ BitVec 64)) Option!572)

(assert (=> bs!28880 (= (dynLambda!1885 lambda!422 (h!22689 lt!447702)) (= (getValueByKey!521 l!412 (h!22689 lt!447702)) (Some!571 value!115)))))

(declare-fun m!936363 () Bool)

(assert (=> bs!28880 m!936363))

(assert (=> b!1012886 d!120353))

(check-sat (not b!1012871) (not b_lambda!15273) (not b!1012872) (not b!1012893) (not bs!28880) (not b!1012895) (not b!1012995) (not bm!42622) (not d!120341) (not b!1012873) (not b!1012887) tp_is_empty!23433 (not bm!42620) (not d!120319) (not bm!42621) (not bm!42619))
(check-sat)
