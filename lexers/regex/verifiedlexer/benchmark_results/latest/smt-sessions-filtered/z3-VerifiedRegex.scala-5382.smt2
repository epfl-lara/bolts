; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274394 () Bool)

(assert start!274394)

(declare-fun b_free!81063 () Bool)

(declare-fun b_next!81767 () Bool)

(assert (=> start!274394 (= b_free!81063 (not b_next!81767))))

(declare-fun tp!902859 () Bool)

(declare-fun b_and!206601 () Bool)

(assert (=> start!274394 (= tp!902859 b_and!206601)))

(declare-fun b!2826688 () Bool)

(declare-fun res!1176395 () Bool)

(declare-fun e!1789028 () Bool)

(assert (=> b!2826688 (=> (not res!1176395) (not e!1789028))))

(declare-datatypes ((B!2449 0))(
  ( (B!2450 (val!10444 Int)) )
))
(declare-datatypes ((List!33333 0))(
  ( (Nil!33209) (Cons!33209 (h!38629 B!2449) (t!231028 List!33333)) )
))
(declare-fun l1!953 () List!33333)

(declare-fun l2!930 () List!33333)

(get-info :version)

(assert (=> b!2826688 (= res!1176395 (and (not ((_ is Nil!33209) l1!953)) ((_ is Cons!33209) l2!930) (= (h!38629 l1!953) (h!38629 l2!930))))))

(declare-fun res!1176394 () Bool)

(assert (=> start!274394 (=> (not res!1176394) (not e!1789028))))

(declare-fun p!1912 () Int)

(declare-fun forall!6809 (List!33333 Int) Bool)

(assert (=> start!274394 (= res!1176394 (forall!6809 l2!930 p!1912))))

(assert (=> start!274394 e!1789028))

(declare-fun e!1789026 () Bool)

(assert (=> start!274394 e!1789026))

(assert (=> start!274394 tp!902859))

(declare-fun e!1789027 () Bool)

(assert (=> start!274394 e!1789027))

(declare-fun b!2826689 () Bool)

(assert (=> b!2826689 (= e!1789028 (not (forall!6809 (t!231028 l2!930) p!1912)))))

(assert (=> b!2826689 (forall!6809 (t!231028 l1!953) p!1912)))

(declare-datatypes ((Unit!47270 0))(
  ( (Unit!47271) )
))
(declare-fun lt!1008509 () Unit!47270)

(declare-fun lemmaForallSubseq!239 (List!33333 List!33333 Int) Unit!47270)

(assert (=> b!2826689 (= lt!1008509 (lemmaForallSubseq!239 (t!231028 l1!953) (t!231028 l2!930) p!1912))))

(declare-fun b!2826690 () Bool)

(declare-fun res!1176397 () Bool)

(assert (=> b!2826690 (=> (not res!1176397) (not e!1789028))))

(declare-fun subseq!463 (List!33333 List!33333) Bool)

(assert (=> b!2826690 (= res!1176397 (subseq!463 (t!231028 l1!953) (t!231028 l2!930)))))

(declare-fun b!2826691 () Bool)

(declare-fun tp_is_empty!14499 () Bool)

(declare-fun tp!902860 () Bool)

(assert (=> b!2826691 (= e!1789026 (and tp_is_empty!14499 tp!902860))))

(declare-fun b!2826692 () Bool)

(declare-fun tp!902858 () Bool)

(assert (=> b!2826692 (= e!1789027 (and tp_is_empty!14499 tp!902858))))

(declare-fun b!2826693 () Bool)

(declare-fun res!1176396 () Bool)

(assert (=> b!2826693 (=> (not res!1176396) (not e!1789028))))

(assert (=> b!2826693 (= res!1176396 (subseq!463 l1!953 l2!930))))

(assert (= (and start!274394 res!1176394) b!2826693))

(assert (= (and b!2826693 res!1176396) b!2826688))

(assert (= (and b!2826688 res!1176395) b!2826690))

(assert (= (and b!2826690 res!1176397) b!2826689))

(assert (= (and start!274394 ((_ is Cons!33209) l2!930)) b!2826691))

(assert (= (and start!274394 ((_ is Cons!33209) l1!953)) b!2826692))

(declare-fun m!3256771 () Bool)

(assert (=> start!274394 m!3256771))

(declare-fun m!3256773 () Bool)

(assert (=> b!2826689 m!3256773))

(declare-fun m!3256775 () Bool)

(assert (=> b!2826689 m!3256775))

(declare-fun m!3256777 () Bool)

(assert (=> b!2826689 m!3256777))

(declare-fun m!3256779 () Bool)

(assert (=> b!2826690 m!3256779))

(declare-fun m!3256781 () Bool)

(assert (=> b!2826693 m!3256781))

(check-sat (not b!2826690) (not b!2826693) (not b!2826689) b_and!206601 tp_is_empty!14499 (not start!274394) (not b_next!81767) (not b!2826691) (not b!2826692))
(check-sat b_and!206601 (not b_next!81767))
(get-model)

(declare-fun b!2826720 () Bool)

(declare-fun e!1789053 () Bool)

(assert (=> b!2826720 (= e!1789053 (subseq!463 (t!231028 (t!231028 l1!953)) (t!231028 (t!231028 l2!930))))))

(declare-fun d!820417 () Bool)

(declare-fun res!1176424 () Bool)

(declare-fun e!1789054 () Bool)

(assert (=> d!820417 (=> res!1176424 e!1789054)))

(assert (=> d!820417 (= res!1176424 ((_ is Nil!33209) (t!231028 l1!953)))))

(assert (=> d!820417 (= (subseq!463 (t!231028 l1!953) (t!231028 l2!930)) e!1789054)))

(declare-fun b!2826719 () Bool)

(declare-fun e!1789056 () Bool)

(declare-fun e!1789055 () Bool)

(assert (=> b!2826719 (= e!1789056 e!1789055)))

(declare-fun res!1176425 () Bool)

(assert (=> b!2826719 (=> res!1176425 e!1789055)))

(assert (=> b!2826719 (= res!1176425 e!1789053)))

(declare-fun res!1176423 () Bool)

(assert (=> b!2826719 (=> (not res!1176423) (not e!1789053))))

(assert (=> b!2826719 (= res!1176423 (= (h!38629 (t!231028 l1!953)) (h!38629 (t!231028 l2!930))))))

(declare-fun b!2826721 () Bool)

(assert (=> b!2826721 (= e!1789055 (subseq!463 (t!231028 l1!953) (t!231028 (t!231028 l2!930))))))

(declare-fun b!2826718 () Bool)

(assert (=> b!2826718 (= e!1789054 e!1789056)))

(declare-fun res!1176422 () Bool)

(assert (=> b!2826718 (=> (not res!1176422) (not e!1789056))))

(assert (=> b!2826718 (= res!1176422 ((_ is Cons!33209) (t!231028 l2!930)))))

(assert (= (and d!820417 (not res!1176424)) b!2826718))

(assert (= (and b!2826718 res!1176422) b!2826719))

(assert (= (and b!2826719 res!1176423) b!2826720))

(assert (= (and b!2826719 (not res!1176425)) b!2826721))

(declare-fun m!3256787 () Bool)

(assert (=> b!2826720 m!3256787))

(declare-fun m!3256789 () Bool)

(assert (=> b!2826721 m!3256789))

(assert (=> b!2826690 d!820417))

(declare-fun d!820421 () Bool)

(declare-fun res!1176434 () Bool)

(declare-fun e!1789065 () Bool)

(assert (=> d!820421 (=> res!1176434 e!1789065)))

(assert (=> d!820421 (= res!1176434 ((_ is Nil!33209) (t!231028 l2!930)))))

(assert (=> d!820421 (= (forall!6809 (t!231028 l2!930) p!1912) e!1789065)))

(declare-fun b!2826730 () Bool)

(declare-fun e!1789066 () Bool)

(assert (=> b!2826730 (= e!1789065 e!1789066)))

(declare-fun res!1176435 () Bool)

(assert (=> b!2826730 (=> (not res!1176435) (not e!1789066))))

(declare-fun dynLambda!13956 (Int B!2449) Bool)

(assert (=> b!2826730 (= res!1176435 (dynLambda!13956 p!1912 (h!38629 (t!231028 l2!930))))))

(declare-fun b!2826731 () Bool)

(assert (=> b!2826731 (= e!1789066 (forall!6809 (t!231028 (t!231028 l2!930)) p!1912))))

(assert (= (and d!820421 (not res!1176434)) b!2826730))

(assert (= (and b!2826730 res!1176435) b!2826731))

(declare-fun b_lambda!84759 () Bool)

(assert (=> (not b_lambda!84759) (not b!2826730)))

(declare-fun t!231034 () Bool)

(declare-fun tb!154057 () Bool)

(assert (=> (and start!274394 (= p!1912 p!1912) t!231034) tb!154057))

(declare-fun result!191954 () Bool)

(assert (=> tb!154057 (= result!191954 true)))

(assert (=> b!2826730 t!231034))

(declare-fun b_and!206607 () Bool)

(assert (= b_and!206601 (and (=> t!231034 result!191954) b_and!206607)))

(declare-fun m!3256799 () Bool)

(assert (=> b!2826730 m!3256799))

(declare-fun m!3256801 () Bool)

(assert (=> b!2826731 m!3256801))

(assert (=> b!2826689 d!820421))

(declare-fun d!820427 () Bool)

(declare-fun res!1176436 () Bool)

(declare-fun e!1789067 () Bool)

(assert (=> d!820427 (=> res!1176436 e!1789067)))

(assert (=> d!820427 (= res!1176436 ((_ is Nil!33209) (t!231028 l1!953)))))

(assert (=> d!820427 (= (forall!6809 (t!231028 l1!953) p!1912) e!1789067)))

(declare-fun b!2826732 () Bool)

(declare-fun e!1789068 () Bool)

(assert (=> b!2826732 (= e!1789067 e!1789068)))

(declare-fun res!1176437 () Bool)

(assert (=> b!2826732 (=> (not res!1176437) (not e!1789068))))

(assert (=> b!2826732 (= res!1176437 (dynLambda!13956 p!1912 (h!38629 (t!231028 l1!953))))))

(declare-fun b!2826733 () Bool)

(assert (=> b!2826733 (= e!1789068 (forall!6809 (t!231028 (t!231028 l1!953)) p!1912))))

(assert (= (and d!820427 (not res!1176436)) b!2826732))

(assert (= (and b!2826732 res!1176437) b!2826733))

(declare-fun b_lambda!84761 () Bool)

(assert (=> (not b_lambda!84761) (not b!2826732)))

(declare-fun t!231036 () Bool)

(declare-fun tb!154059 () Bool)

(assert (=> (and start!274394 (= p!1912 p!1912) t!231036) tb!154059))

(declare-fun result!191956 () Bool)

(assert (=> tb!154059 (= result!191956 true)))

(assert (=> b!2826732 t!231036))

(declare-fun b_and!206609 () Bool)

(assert (= b_and!206607 (and (=> t!231036 result!191956) b_and!206609)))

(declare-fun m!3256803 () Bool)

(assert (=> b!2826732 m!3256803))

(declare-fun m!3256805 () Bool)

(assert (=> b!2826733 m!3256805))

(assert (=> b!2826689 d!820427))

(declare-fun d!820429 () Bool)

(assert (=> d!820429 (forall!6809 (t!231028 l1!953) p!1912)))

(declare-fun lt!1008515 () Unit!47270)

(declare-fun choose!16703 (List!33333 List!33333 Int) Unit!47270)

(assert (=> d!820429 (= lt!1008515 (choose!16703 (t!231028 l1!953) (t!231028 l2!930) p!1912))))

(assert (=> d!820429 (forall!6809 (t!231028 l2!930) p!1912)))

(assert (=> d!820429 (= (lemmaForallSubseq!239 (t!231028 l1!953) (t!231028 l2!930) p!1912) lt!1008515)))

(declare-fun bs!518085 () Bool)

(assert (= bs!518085 d!820429))

(assert (=> bs!518085 m!3256775))

(declare-fun m!3256813 () Bool)

(assert (=> bs!518085 m!3256813))

(assert (=> bs!518085 m!3256773))

(assert (=> b!2826689 d!820429))

(declare-fun b!2826748 () Bool)

(declare-fun e!1789079 () Bool)

(assert (=> b!2826748 (= e!1789079 (subseq!463 (t!231028 l1!953) (t!231028 l2!930)))))

(declare-fun d!820435 () Bool)

(declare-fun res!1176446 () Bool)

(declare-fun e!1789080 () Bool)

(assert (=> d!820435 (=> res!1176446 e!1789080)))

(assert (=> d!820435 (= res!1176446 ((_ is Nil!33209) l1!953))))

(assert (=> d!820435 (= (subseq!463 l1!953 l2!930) e!1789080)))

(declare-fun b!2826747 () Bool)

(declare-fun e!1789082 () Bool)

(declare-fun e!1789081 () Bool)

(assert (=> b!2826747 (= e!1789082 e!1789081)))

(declare-fun res!1176447 () Bool)

(assert (=> b!2826747 (=> res!1176447 e!1789081)))

(assert (=> b!2826747 (= res!1176447 e!1789079)))

(declare-fun res!1176445 () Bool)

(assert (=> b!2826747 (=> (not res!1176445) (not e!1789079))))

(assert (=> b!2826747 (= res!1176445 (= (h!38629 l1!953) (h!38629 l2!930)))))

(declare-fun b!2826749 () Bool)

(assert (=> b!2826749 (= e!1789081 (subseq!463 l1!953 (t!231028 l2!930)))))

(declare-fun b!2826746 () Bool)

(assert (=> b!2826746 (= e!1789080 e!1789082)))

(declare-fun res!1176444 () Bool)

(assert (=> b!2826746 (=> (not res!1176444) (not e!1789082))))

(assert (=> b!2826746 (= res!1176444 ((_ is Cons!33209) l2!930))))

(assert (= (and d!820435 (not res!1176446)) b!2826746))

(assert (= (and b!2826746 res!1176444) b!2826747))

(assert (= (and b!2826747 res!1176445) b!2826748))

(assert (= (and b!2826747 (not res!1176447)) b!2826749))

(assert (=> b!2826748 m!3256779))

(declare-fun m!3256815 () Bool)

(assert (=> b!2826749 m!3256815))

(assert (=> b!2826693 d!820435))

(declare-fun d!820437 () Bool)

(declare-fun res!1176448 () Bool)

(declare-fun e!1789083 () Bool)

(assert (=> d!820437 (=> res!1176448 e!1789083)))

(assert (=> d!820437 (= res!1176448 ((_ is Nil!33209) l2!930))))

(assert (=> d!820437 (= (forall!6809 l2!930 p!1912) e!1789083)))

(declare-fun b!2826750 () Bool)

(declare-fun e!1789084 () Bool)

(assert (=> b!2826750 (= e!1789083 e!1789084)))

(declare-fun res!1176449 () Bool)

(assert (=> b!2826750 (=> (not res!1176449) (not e!1789084))))

(assert (=> b!2826750 (= res!1176449 (dynLambda!13956 p!1912 (h!38629 l2!930)))))

(declare-fun b!2826751 () Bool)

(assert (=> b!2826751 (= e!1789084 (forall!6809 (t!231028 l2!930) p!1912))))

(assert (= (and d!820437 (not res!1176448)) b!2826750))

(assert (= (and b!2826750 res!1176449) b!2826751))

(declare-fun b_lambda!84771 () Bool)

(assert (=> (not b_lambda!84771) (not b!2826750)))

(declare-fun t!231040 () Bool)

(declare-fun tb!154063 () Bool)

(assert (=> (and start!274394 (= p!1912 p!1912) t!231040) tb!154063))

(declare-fun result!191962 () Bool)

(assert (=> tb!154063 (= result!191962 true)))

(assert (=> b!2826750 t!231040))

(declare-fun b_and!206613 () Bool)

(assert (= b_and!206609 (and (=> t!231040 result!191962) b_and!206613)))

(declare-fun m!3256817 () Bool)

(assert (=> b!2826750 m!3256817))

(assert (=> b!2826751 m!3256773))

(assert (=> start!274394 d!820437))

(declare-fun b!2826756 () Bool)

(declare-fun e!1789087 () Bool)

(declare-fun tp!902867 () Bool)

(assert (=> b!2826756 (= e!1789087 (and tp_is_empty!14499 tp!902867))))

(assert (=> b!2826692 (= tp!902858 e!1789087)))

(assert (= (and b!2826692 ((_ is Cons!33209) (t!231028 l1!953))) b!2826756))

(declare-fun b!2826757 () Bool)

(declare-fun e!1789088 () Bool)

(declare-fun tp!902868 () Bool)

(assert (=> b!2826757 (= e!1789088 (and tp_is_empty!14499 tp!902868))))

(assert (=> b!2826691 (= tp!902860 e!1789088)))

(assert (= (and b!2826691 ((_ is Cons!33209) (t!231028 l2!930))) b!2826757))

(declare-fun b_lambda!84773 () Bool)

(assert (= b_lambda!84771 (or (and start!274394 b_free!81063) b_lambda!84773)))

(declare-fun b_lambda!84775 () Bool)

(assert (= b_lambda!84759 (or (and start!274394 b_free!81063) b_lambda!84775)))

(declare-fun b_lambda!84777 () Bool)

(assert (= b_lambda!84761 (or (and start!274394 b_free!81063) b_lambda!84777)))

(check-sat (not b!2826748) b_and!206613 (not d!820429) (not b!2826757) (not b_lambda!84775) (not b!2826720) tp_is_empty!14499 (not b!2826721) (not b!2826733) (not b!2826749) (not b!2826731) (not b_next!81767) (not b!2826751) (not b_lambda!84777) (not b_lambda!84773) (not b!2826756))
(check-sat b_and!206613 (not b_next!81767))
