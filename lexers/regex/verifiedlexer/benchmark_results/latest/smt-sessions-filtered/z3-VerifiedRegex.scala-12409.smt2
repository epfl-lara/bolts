; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693758 () Bool)

(assert start!693758)

(declare-fun b_free!133741 () Bool)

(declare-fun b_next!134531 () Bool)

(assert (=> start!693758 (= b_free!133741 (not b_next!134531))))

(declare-fun tp!1961566 () Bool)

(declare-fun b_and!350837 () Bool)

(assert (=> start!693758 (= tp!1961566 b_and!350837)))

(declare-fun setIsEmpty!51230 () Bool)

(declare-fun setRes!51231 () Bool)

(assert (=> setIsEmpty!51230 setRes!51231))

(declare-fun setNonEmpty!51230 () Bool)

(declare-fun setRes!51230 () Bool)

(declare-fun tp!1961565 () Bool)

(declare-fun tp_is_empty!45445 () Bool)

(assert (=> setNonEmpty!51230 (= setRes!51230 (and tp!1961565 tp_is_empty!45445))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!647 0))(
  ( (A!648 (val!27973 Int)) )
))
(declare-fun s1!424 () (InoxSet A!647))

(declare-fun setElem!51230 () A!647)

(declare-fun setRest!51231 () (InoxSet A!647))

(assert (=> setNonEmpty!51230 (= s1!424 ((_ map or) (store ((as const (Array A!647 Bool)) false) setElem!51230 true) setRest!51231))))

(declare-fun b!7123113 () Bool)

(declare-fun res!2906256 () Bool)

(declare-fun e!4280343 () Bool)

(assert (=> b!7123113 (=> (not res!2906256) (not e!4280343))))

(declare-datatypes ((B!3305 0))(
  ( (B!3306 (val!27974 Int)) )
))
(declare-datatypes ((List!69022 0))(
  ( (Nil!68898) (Cons!68898 (h!75346 B!3305) (t!382933 List!69022)) )
))
(declare-fun l2!759 () List!69022)

(get-info :version)

(assert (=> b!7123113 (= res!2906256 ((_ is Cons!68898) l2!759))))

(declare-fun setNonEmpty!51231 () Bool)

(declare-fun tp!1961567 () Bool)

(assert (=> setNonEmpty!51231 (= setRes!51231 (and tp!1961567 tp_is_empty!45445))))

(declare-fun s2!395 () (InoxSet A!647))

(declare-fun setElem!51231 () A!647)

(declare-fun setRest!51230 () (InoxSet A!647))

(assert (=> setNonEmpty!51231 (= s2!395 ((_ map or) (store ((as const (Array A!647 Bool)) false) setElem!51231 true) setRest!51230))))

(declare-fun setIsEmpty!51231 () Bool)

(assert (=> setIsEmpty!51231 setRes!51230))

(declare-fun b!7123114 () Bool)

(declare-fun e!4280341 () Bool)

(declare-fun tp_is_empty!45447 () Bool)

(declare-fun tp!1961564 () Bool)

(assert (=> b!7123114 (= e!4280341 (and tp_is_empty!45447 tp!1961564))))

(declare-fun b!7123115 () Bool)

(declare-fun lt!2562399 () List!69022)

(declare-fun subseq!761 (List!69022 List!69022) Bool)

(assert (=> b!7123115 (= e!4280343 (not (subseq!761 (t!382933 l2!759) lt!2562399)))))

(declare-datatypes ((Unit!162751 0))(
  ( (Unit!162752) )
))
(declare-fun lt!2562400 () Unit!162751)

(declare-fun subseqTail!34 (List!69022 List!69022) Unit!162751)

(assert (=> b!7123115 (= lt!2562400 (subseqTail!34 l2!759 lt!2562399))))

(declare-fun lt!2562398 () (InoxSet B!3305))

(declare-fun lt!2562401 () (InoxSet B!3305))

(assert (=> b!7123115 (= (select lt!2562398 (h!75346 l2!759)) (select lt!2562401 (h!75346 l2!759)))))

(declare-fun lt!2562397 () Unit!162751)

(declare-fun f!607 () Int)

(declare-fun lemmaMapAssociativeElem!22 ((InoxSet A!647) (InoxSet A!647) Int B!3305) Unit!162751)

(assert (=> b!7123115 (= lt!2562397 (lemmaMapAssociativeElem!22 s1!424 s2!395 f!607 (h!75346 l2!759)))))

(declare-fun b!7123116 () Bool)

(declare-fun e!4280340 () Bool)

(declare-fun tp!1961563 () Bool)

(assert (=> b!7123116 (= e!4280340 (and tp_is_empty!45447 tp!1961563))))

(declare-fun res!2906257 () Bool)

(declare-fun e!4280342 () Bool)

(assert (=> start!693758 (=> (not res!2906257) (not e!4280342))))

(declare-fun l1!770 () List!69022)

(declare-fun toList!11125 ((InoxSet B!3305)) List!69022)

(assert (=> start!693758 (= res!2906257 (= l1!770 (toList!11125 lt!2562398)))))

(declare-fun map!16431 ((InoxSet A!647) Int) (InoxSet B!3305))

(assert (=> start!693758 (= lt!2562398 ((_ map or) (map!16431 s1!424 f!607) (map!16431 s2!395 f!607)))))

(assert (=> start!693758 e!4280342))

(declare-fun condSetEmpty!51230 () Bool)

(assert (=> start!693758 (= condSetEmpty!51230 (= s1!424 ((as const (Array A!647 Bool)) false)))))

(assert (=> start!693758 setRes!51230))

(assert (=> start!693758 e!4280340))

(assert (=> start!693758 e!4280341))

(declare-fun condSetEmpty!51231 () Bool)

(assert (=> start!693758 (= condSetEmpty!51231 (= s2!395 ((as const (Array A!647 Bool)) false)))))

(assert (=> start!693758 setRes!51231))

(assert (=> start!693758 tp!1961566))

(declare-fun b!7123117 () Bool)

(assert (=> b!7123117 (= e!4280342 e!4280343)))

(declare-fun res!2906258 () Bool)

(assert (=> b!7123117 (=> (not res!2906258) (not e!4280343))))

(assert (=> b!7123117 (= res!2906258 (subseq!761 l2!759 lt!2562399))))

(assert (=> b!7123117 (= lt!2562399 (toList!11125 lt!2562401))))

(assert (=> b!7123117 (= lt!2562401 (map!16431 ((_ map or) s1!424 s2!395) f!607))))

(assert (= (and start!693758 res!2906257) b!7123117))

(assert (= (and b!7123117 res!2906258) b!7123113))

(assert (= (and b!7123113 res!2906256) b!7123115))

(assert (= (and start!693758 condSetEmpty!51230) setIsEmpty!51231))

(assert (= (and start!693758 (not condSetEmpty!51230)) setNonEmpty!51230))

(assert (= (and start!693758 ((_ is Cons!68898) l2!759)) b!7123116))

(assert (= (and start!693758 ((_ is Cons!68898) l1!770)) b!7123114))

(assert (= (and start!693758 condSetEmpty!51231) setIsEmpty!51230))

(assert (= (and start!693758 (not condSetEmpty!51231)) setNonEmpty!51231))

(declare-fun m!7840428 () Bool)

(assert (=> b!7123115 m!7840428))

(declare-fun m!7840430 () Bool)

(assert (=> b!7123115 m!7840430))

(declare-fun m!7840432 () Bool)

(assert (=> b!7123115 m!7840432))

(declare-fun m!7840434 () Bool)

(assert (=> b!7123115 m!7840434))

(declare-fun m!7840436 () Bool)

(assert (=> b!7123115 m!7840436))

(declare-fun m!7840438 () Bool)

(assert (=> start!693758 m!7840438))

(declare-fun m!7840440 () Bool)

(assert (=> start!693758 m!7840440))

(declare-fun m!7840442 () Bool)

(assert (=> start!693758 m!7840442))

(declare-fun m!7840444 () Bool)

(assert (=> b!7123117 m!7840444))

(declare-fun m!7840446 () Bool)

(assert (=> b!7123117 m!7840446))

(declare-fun m!7840448 () Bool)

(assert (=> b!7123117 m!7840448))

(check-sat (not b!7123114) tp_is_empty!45447 b_and!350837 (not b!7123116) (not b!7123115) (not start!693758) tp_is_empty!45445 (not setNonEmpty!51231) (not setNonEmpty!51230) (not b_next!134531) (not b!7123117))
(check-sat b_and!350837 (not b_next!134531))
(get-model)

(declare-fun d!2222850 () Bool)

(declare-fun e!4280360 () Bool)

(assert (=> d!2222850 e!4280360))

(declare-fun res!2906275 () Bool)

(assert (=> d!2222850 (=> (not res!2906275) (not e!4280360))))

(declare-fun lt!2562404 () List!69022)

(declare-fun noDuplicate!2796 (List!69022) Bool)

(assert (=> d!2222850 (= res!2906275 (noDuplicate!2796 lt!2562404))))

(declare-fun choose!55028 ((InoxSet B!3305)) List!69022)

(assert (=> d!2222850 (= lt!2562404 (choose!55028 lt!2562398))))

(assert (=> d!2222850 (= (toList!11125 lt!2562398) lt!2562404)))

(declare-fun b!7123134 () Bool)

(declare-fun content!14095 (List!69022) (InoxSet B!3305))

(assert (=> b!7123134 (= e!4280360 (= (content!14095 lt!2562404) lt!2562398))))

(assert (= (and d!2222850 res!2906275) b!7123134))

(declare-fun m!7840454 () Bool)

(assert (=> d!2222850 m!7840454))

(declare-fun m!7840456 () Bool)

(assert (=> d!2222850 m!7840456))

(declare-fun m!7840458 () Bool)

(assert (=> b!7123134 m!7840458))

(assert (=> start!693758 d!2222850))

(declare-fun d!2222852 () Bool)

(declare-fun choose!55029 ((InoxSet A!647) Int) (InoxSet B!3305))

(assert (=> d!2222852 (= (map!16431 s1!424 f!607) (choose!55029 s1!424 f!607))))

(declare-fun bs!1886129 () Bool)

(assert (= bs!1886129 d!2222852))

(declare-fun m!7840460 () Bool)

(assert (=> bs!1886129 m!7840460))

(assert (=> start!693758 d!2222852))

(declare-fun d!2222854 () Bool)

(assert (=> d!2222854 (= (map!16431 s2!395 f!607) (choose!55029 s2!395 f!607))))

(declare-fun bs!1886130 () Bool)

(assert (= bs!1886130 d!2222854))

(declare-fun m!7840462 () Bool)

(assert (=> bs!1886130 m!7840462))

(assert (=> start!693758 d!2222854))

(declare-fun b!7123163 () Bool)

(declare-fun e!4280379 () Bool)

(declare-fun e!4280382 () Bool)

(assert (=> b!7123163 (= e!4280379 e!4280382)))

(declare-fun res!2906287 () Bool)

(assert (=> b!7123163 (=> res!2906287 e!4280382)))

(declare-fun e!4280380 () Bool)

(assert (=> b!7123163 (= res!2906287 e!4280380)))

(declare-fun res!2906288 () Bool)

(assert (=> b!7123163 (=> (not res!2906288) (not e!4280380))))

(assert (=> b!7123163 (= res!2906288 (= (h!75346 l2!759) (h!75346 lt!2562399)))))

(declare-fun b!7123162 () Bool)

(declare-fun e!4280381 () Bool)

(assert (=> b!7123162 (= e!4280381 e!4280379)))

(declare-fun res!2906286 () Bool)

(assert (=> b!7123162 (=> (not res!2906286) (not e!4280379))))

(assert (=> b!7123162 (= res!2906286 ((_ is Cons!68898) lt!2562399))))

(declare-fun b!7123165 () Bool)

(assert (=> b!7123165 (= e!4280382 (subseq!761 l2!759 (t!382933 lt!2562399)))))

(declare-fun d!2222856 () Bool)

(declare-fun res!2906285 () Bool)

(assert (=> d!2222856 (=> res!2906285 e!4280381)))

(assert (=> d!2222856 (= res!2906285 ((_ is Nil!68898) l2!759))))

(assert (=> d!2222856 (= (subseq!761 l2!759 lt!2562399) e!4280381)))

(declare-fun b!7123164 () Bool)

(assert (=> b!7123164 (= e!4280380 (subseq!761 (t!382933 l2!759) (t!382933 lt!2562399)))))

(assert (= (and d!2222856 (not res!2906285)) b!7123162))

(assert (= (and b!7123162 res!2906286) b!7123163))

(assert (= (and b!7123163 res!2906288) b!7123164))

(assert (= (and b!7123163 (not res!2906287)) b!7123165))

(declare-fun m!7840476 () Bool)

(assert (=> b!7123165 m!7840476))

(declare-fun m!7840478 () Bool)

(assert (=> b!7123164 m!7840478))

(assert (=> b!7123117 d!2222856))

(declare-fun d!2222860 () Bool)

(declare-fun e!4280383 () Bool)

(assert (=> d!2222860 e!4280383))

(declare-fun res!2906289 () Bool)

(assert (=> d!2222860 (=> (not res!2906289) (not e!4280383))))

(declare-fun lt!2562408 () List!69022)

(assert (=> d!2222860 (= res!2906289 (noDuplicate!2796 lt!2562408))))

(assert (=> d!2222860 (= lt!2562408 (choose!55028 lt!2562401))))

(assert (=> d!2222860 (= (toList!11125 lt!2562401) lt!2562408)))

(declare-fun b!7123166 () Bool)

(assert (=> b!7123166 (= e!4280383 (= (content!14095 lt!2562408) lt!2562401))))

(assert (= (and d!2222860 res!2906289) b!7123166))

(declare-fun m!7840480 () Bool)

(assert (=> d!2222860 m!7840480))

(declare-fun m!7840482 () Bool)

(assert (=> d!2222860 m!7840482))

(declare-fun m!7840484 () Bool)

(assert (=> b!7123166 m!7840484))

(assert (=> b!7123117 d!2222860))

(declare-fun d!2222862 () Bool)

(assert (=> d!2222862 (= (map!16431 ((_ map or) s1!424 s2!395) f!607) (choose!55029 ((_ map or) s1!424 s2!395) f!607))))

(declare-fun bs!1886131 () Bool)

(assert (= bs!1886131 d!2222862))

(declare-fun m!7840486 () Bool)

(assert (=> bs!1886131 m!7840486))

(assert (=> b!7123117 d!2222862))

(declare-fun b!7123169 () Bool)

(declare-fun e!4280384 () Bool)

(declare-fun e!4280387 () Bool)

(assert (=> b!7123169 (= e!4280384 e!4280387)))

(declare-fun res!2906292 () Bool)

(assert (=> b!7123169 (=> res!2906292 e!4280387)))

(declare-fun e!4280385 () Bool)

(assert (=> b!7123169 (= res!2906292 e!4280385)))

(declare-fun res!2906293 () Bool)

(assert (=> b!7123169 (=> (not res!2906293) (not e!4280385))))

(assert (=> b!7123169 (= res!2906293 (= (h!75346 (t!382933 l2!759)) (h!75346 lt!2562399)))))

(declare-fun b!7123168 () Bool)

(declare-fun e!4280386 () Bool)

(assert (=> b!7123168 (= e!4280386 e!4280384)))

(declare-fun res!2906291 () Bool)

(assert (=> b!7123168 (=> (not res!2906291) (not e!4280384))))

(assert (=> b!7123168 (= res!2906291 ((_ is Cons!68898) lt!2562399))))

(declare-fun b!7123171 () Bool)

(assert (=> b!7123171 (= e!4280387 (subseq!761 (t!382933 l2!759) (t!382933 lt!2562399)))))

(declare-fun d!2222864 () Bool)

(declare-fun res!2906290 () Bool)

(assert (=> d!2222864 (=> res!2906290 e!4280386)))

(assert (=> d!2222864 (= res!2906290 ((_ is Nil!68898) (t!382933 l2!759)))))

(assert (=> d!2222864 (= (subseq!761 (t!382933 l2!759) lt!2562399) e!4280386)))

(declare-fun b!7123170 () Bool)

(assert (=> b!7123170 (= e!4280385 (subseq!761 (t!382933 (t!382933 l2!759)) (t!382933 lt!2562399)))))

(assert (= (and d!2222864 (not res!2906290)) b!7123168))

(assert (= (and b!7123168 res!2906291) b!7123169))

(assert (= (and b!7123169 res!2906293) b!7123170))

(assert (= (and b!7123169 (not res!2906292)) b!7123171))

(assert (=> b!7123171 m!7840478))

(declare-fun m!7840488 () Bool)

(assert (=> b!7123170 m!7840488))

(assert (=> b!7123115 d!2222864))

(declare-fun b!7123202 () Bool)

(declare-fun e!4280408 () Unit!162751)

(declare-fun Unit!162755 () Unit!162751)

(assert (=> b!7123202 (= e!4280408 Unit!162755)))

(declare-fun d!2222866 () Bool)

(declare-fun tail!13926 (List!69022) List!69022)

(assert (=> d!2222866 (subseq!761 (tail!13926 l2!759) lt!2562399)))

(declare-fun lt!2562418 () Unit!162751)

(assert (=> d!2222866 (= lt!2562418 e!4280408)))

(declare-fun c!1329105 () Bool)

(assert (=> d!2222866 (= c!1329105 (and ((_ is Cons!68898) l2!759) ((_ is Cons!68898) lt!2562399)))))

(declare-fun e!4280411 () Bool)

(assert (=> d!2222866 e!4280411))

(declare-fun res!2906304 () Bool)

(assert (=> d!2222866 (=> (not res!2906304) (not e!4280411))))

(declare-fun isEmpty!40010 (List!69022) Bool)

(assert (=> d!2222866 (= res!2906304 (not (isEmpty!40010 l2!759)))))

(assert (=> d!2222866 (= (subseqTail!34 l2!759 lt!2562399) lt!2562418)))

(declare-fun b!7123203 () Bool)

(assert (=> b!7123203 (= e!4280411 (subseq!761 l2!759 lt!2562399))))

(declare-fun b!7123204 () Bool)

(declare-fun e!4280410 () Unit!162751)

(declare-fun Unit!162756 () Unit!162751)

(assert (=> b!7123204 (= e!4280410 Unit!162756)))

(declare-fun call!650768 () Unit!162751)

(declare-fun c!1329104 () Bool)

(declare-fun bm!650763 () Bool)

(assert (=> bm!650763 (= call!650768 (subseqTail!34 (ite c!1329104 l2!759 (t!382933 l2!759)) (t!382933 lt!2562399)))))

(declare-fun b!7123205 () Bool)

(declare-fun c!1329103 () Bool)

(assert (=> b!7123205 (= c!1329103 (not (isEmpty!40010 (t!382933 l2!759))))))

(declare-fun e!4280409 () Unit!162751)

(assert (=> b!7123205 (= e!4280409 e!4280410)))

(declare-fun b!7123206 () Bool)

(assert (=> b!7123206 (= e!4280408 e!4280409)))

(assert (=> b!7123206 (= c!1329104 (subseq!761 l2!759 (t!382933 lt!2562399)))))

(declare-fun b!7123207 () Bool)

(assert (=> b!7123207 (= e!4280410 call!650768)))

(declare-fun b!7123208 () Bool)

(assert (=> b!7123208 (= e!4280409 call!650768)))

(assert (= (and d!2222866 res!2906304) b!7123203))

(assert (= (and d!2222866 c!1329105) b!7123206))

(assert (= (and d!2222866 (not c!1329105)) b!7123202))

(assert (= (and b!7123206 c!1329104) b!7123208))

(assert (= (and b!7123206 (not c!1329104)) b!7123205))

(assert (= (and b!7123205 c!1329103) b!7123207))

(assert (= (and b!7123205 (not c!1329103)) b!7123204))

(assert (= (or b!7123208 b!7123207) bm!650763))

(declare-fun m!7840514 () Bool)

(assert (=> d!2222866 m!7840514))

(assert (=> d!2222866 m!7840514))

(declare-fun m!7840516 () Bool)

(assert (=> d!2222866 m!7840516))

(declare-fun m!7840518 () Bool)

(assert (=> d!2222866 m!7840518))

(assert (=> b!7123203 m!7840444))

(declare-fun m!7840520 () Bool)

(assert (=> bm!650763 m!7840520))

(assert (=> b!7123206 m!7840476))

(declare-fun m!7840522 () Bool)

(assert (=> b!7123205 m!7840522))

(assert (=> b!7123115 d!2222866))

(declare-fun d!2222880 () Bool)

(assert (=> d!2222880 (= (select ((_ map or) (map!16431 s1!424 f!607) (map!16431 s2!395 f!607)) (h!75346 l2!759)) (select (map!16431 ((_ map or) s1!424 s2!395) f!607) (h!75346 l2!759)))))

(declare-fun lt!2562421 () Unit!162751)

(declare-fun choose!55033 ((InoxSet A!647) (InoxSet A!647) Int B!3305) Unit!162751)

(assert (=> d!2222880 (= lt!2562421 (choose!55033 s1!424 s2!395 f!607 (h!75346 l2!759)))))

(assert (=> d!2222880 (= (lemmaMapAssociativeElem!22 s1!424 s2!395 f!607 (h!75346 l2!759)) lt!2562421)))

(declare-fun bs!1886136 () Bool)

(assert (= bs!1886136 d!2222880))

(assert (=> bs!1886136 m!7840448))

(assert (=> bs!1886136 m!7840442))

(declare-fun m!7840524 () Bool)

(assert (=> bs!1886136 m!7840524))

(declare-fun m!7840526 () Bool)

(assert (=> bs!1886136 m!7840526))

(declare-fun m!7840528 () Bool)

(assert (=> bs!1886136 m!7840528))

(assert (=> bs!1886136 m!7840440))

(assert (=> b!7123115 d!2222880))

(declare-fun b!7123214 () Bool)

(declare-fun e!4280414 () Bool)

(declare-fun tp!1961578 () Bool)

(assert (=> b!7123214 (= e!4280414 (and tp_is_empty!45447 tp!1961578))))

(assert (=> b!7123114 (= tp!1961564 e!4280414)))

(assert (= (and b!7123114 ((_ is Cons!68898) (t!382933 l1!770))) b!7123214))

(declare-fun condSetEmpty!51238 () Bool)

(assert (=> setNonEmpty!51231 (= condSetEmpty!51238 (= setRest!51230 ((as const (Array A!647 Bool)) false)))))

(declare-fun setRes!51238 () Bool)

(assert (=> setNonEmpty!51231 (= tp!1961567 setRes!51238)))

(declare-fun setIsEmpty!51238 () Bool)

(assert (=> setIsEmpty!51238 setRes!51238))

(declare-fun setNonEmpty!51238 () Bool)

(declare-fun tp!1961581 () Bool)

(assert (=> setNonEmpty!51238 (= setRes!51238 (and tp!1961581 tp_is_empty!45445))))

(declare-fun setElem!51238 () A!647)

(declare-fun setRest!51238 () (InoxSet A!647))

(assert (=> setNonEmpty!51238 (= setRest!51230 ((_ map or) (store ((as const (Array A!647 Bool)) false) setElem!51238 true) setRest!51238))))

(assert (= (and setNonEmpty!51231 condSetEmpty!51238) setIsEmpty!51238))

(assert (= (and setNonEmpty!51231 (not condSetEmpty!51238)) setNonEmpty!51238))

(declare-fun b!7123217 () Bool)

(declare-fun e!4280415 () Bool)

(declare-fun tp!1961582 () Bool)

(assert (=> b!7123217 (= e!4280415 (and tp_is_empty!45447 tp!1961582))))

(assert (=> b!7123116 (= tp!1961563 e!4280415)))

(assert (= (and b!7123116 ((_ is Cons!68898) (t!382933 l2!759))) b!7123217))

(declare-fun condSetEmpty!51239 () Bool)

(assert (=> setNonEmpty!51230 (= condSetEmpty!51239 (= setRest!51231 ((as const (Array A!647 Bool)) false)))))

(declare-fun setRes!51239 () Bool)

(assert (=> setNonEmpty!51230 (= tp!1961565 setRes!51239)))

(declare-fun setIsEmpty!51239 () Bool)

(assert (=> setIsEmpty!51239 setRes!51239))

(declare-fun setNonEmpty!51239 () Bool)

(declare-fun tp!1961583 () Bool)

(assert (=> setNonEmpty!51239 (= setRes!51239 (and tp!1961583 tp_is_empty!45445))))

(declare-fun setElem!51239 () A!647)

(declare-fun setRest!51239 () (InoxSet A!647))

(assert (=> setNonEmpty!51239 (= setRest!51231 ((_ map or) (store ((as const (Array A!647 Bool)) false) setElem!51239 true) setRest!51239))))

(assert (= (and setNonEmpty!51230 condSetEmpty!51239) setIsEmpty!51239))

(assert (= (and setNonEmpty!51230 (not condSetEmpty!51239)) setNonEmpty!51239))

(check-sat (not b!7123217) (not d!2222860) (not b_next!134531) (not bm!650763) tp_is_empty!45445 (not b!7123203) (not d!2222862) (not b!7123134) (not d!2222866) tp_is_empty!45447 (not d!2222880) (not b!7123206) (not d!2222852) (not b!7123165) (not b!7123170) (not d!2222854) b_and!350837 (not setNonEmpty!51238) (not setNonEmpty!51239) (not b!7123214) (not d!2222850) (not b!7123166) (not b!7123171) (not b!7123164) (not b!7123205))
(check-sat b_and!350837 (not b_next!134531))
(get-model)

(declare-fun d!2222882 () Bool)

(assert (=> d!2222882 true))

(declare-fun setRes!51242 () Bool)

(assert (=> d!2222882 setRes!51242))

(declare-fun condSetEmpty!51242 () Bool)

(declare-fun res!2906307 () (InoxSet B!3305))

(assert (=> d!2222882 (= condSetEmpty!51242 (= res!2906307 ((as const (Array B!3305 Bool)) false)))))

(assert (=> d!2222882 (= (choose!55029 ((_ map or) s1!424 s2!395) f!607) res!2906307)))

(declare-fun setIsEmpty!51242 () Bool)

(assert (=> setIsEmpty!51242 setRes!51242))

(declare-fun setNonEmpty!51242 () Bool)

(declare-fun tp!1961586 () Bool)

(assert (=> setNonEmpty!51242 (= setRes!51242 (and tp!1961586 tp_is_empty!45447))))

(declare-fun setElem!51242 () B!3305)

(declare-fun setRest!51242 () (InoxSet B!3305))

(assert (=> setNonEmpty!51242 (= res!2906307 ((_ map or) (store ((as const (Array B!3305 Bool)) false) setElem!51242 true) setRest!51242))))

(assert (= (and d!2222882 condSetEmpty!51242) setIsEmpty!51242))

(assert (= (and d!2222882 (not condSetEmpty!51242)) setNonEmpty!51242))

(assert (=> d!2222862 d!2222882))

(declare-fun b!7123219 () Bool)

(declare-fun e!4280416 () Bool)

(declare-fun e!4280419 () Bool)

(assert (=> b!7123219 (= e!4280416 e!4280419)))

(declare-fun res!2906310 () Bool)

(assert (=> b!7123219 (=> res!2906310 e!4280419)))

(declare-fun e!4280417 () Bool)

(assert (=> b!7123219 (= res!2906310 e!4280417)))

(declare-fun res!2906311 () Bool)

(assert (=> b!7123219 (=> (not res!2906311) (not e!4280417))))

(assert (=> b!7123219 (= res!2906311 (= (h!75346 l2!759) (h!75346 (t!382933 lt!2562399))))))

(declare-fun b!7123218 () Bool)

(declare-fun e!4280418 () Bool)

(assert (=> b!7123218 (= e!4280418 e!4280416)))

(declare-fun res!2906309 () Bool)

(assert (=> b!7123218 (=> (not res!2906309) (not e!4280416))))

(assert (=> b!7123218 (= res!2906309 ((_ is Cons!68898) (t!382933 lt!2562399)))))

(declare-fun b!7123221 () Bool)

(assert (=> b!7123221 (= e!4280419 (subseq!761 l2!759 (t!382933 (t!382933 lt!2562399))))))

(declare-fun d!2222884 () Bool)

(declare-fun res!2906308 () Bool)

(assert (=> d!2222884 (=> res!2906308 e!4280418)))

(assert (=> d!2222884 (= res!2906308 ((_ is Nil!68898) l2!759))))

(assert (=> d!2222884 (= (subseq!761 l2!759 (t!382933 lt!2562399)) e!4280418)))

(declare-fun b!7123220 () Bool)

(assert (=> b!7123220 (= e!4280417 (subseq!761 (t!382933 l2!759) (t!382933 (t!382933 lt!2562399))))))

(assert (= (and d!2222884 (not res!2906308)) b!7123218))

(assert (= (and b!7123218 res!2906309) b!7123219))

(assert (= (and b!7123219 res!2906311) b!7123220))

(assert (= (and b!7123219 (not res!2906310)) b!7123221))

(declare-fun m!7840530 () Bool)

(assert (=> b!7123221 m!7840530))

(declare-fun m!7840532 () Bool)

(assert (=> b!7123220 m!7840532))

(assert (=> b!7123206 d!2222884))

(declare-fun d!2222886 () Bool)

(declare-fun res!2906320 () Bool)

(declare-fun e!4280428 () Bool)

(assert (=> d!2222886 (=> res!2906320 e!4280428)))

(assert (=> d!2222886 (= res!2906320 ((_ is Nil!68898) lt!2562408))))

(assert (=> d!2222886 (= (noDuplicate!2796 lt!2562408) e!4280428)))

(declare-fun b!7123230 () Bool)

(declare-fun e!4280429 () Bool)

(assert (=> b!7123230 (= e!4280428 e!4280429)))

(declare-fun res!2906321 () Bool)

(assert (=> b!7123230 (=> (not res!2906321) (not e!4280429))))

(declare-fun contains!20527 (List!69022 B!3305) Bool)

(assert (=> b!7123230 (= res!2906321 (not (contains!20527 (t!382933 lt!2562408) (h!75346 lt!2562408))))))

(declare-fun b!7123231 () Bool)

(assert (=> b!7123231 (= e!4280429 (noDuplicate!2796 (t!382933 lt!2562408)))))

(assert (= (and d!2222886 (not res!2906320)) b!7123230))

(assert (= (and b!7123230 res!2906321) b!7123231))

(declare-fun m!7840538 () Bool)

(assert (=> b!7123230 m!7840538))

(declare-fun m!7840540 () Bool)

(assert (=> b!7123231 m!7840540))

(assert (=> d!2222860 d!2222886))

(declare-fun d!2222896 () Bool)

(declare-fun e!4280434 () Bool)

(assert (=> d!2222896 e!4280434))

(declare-fun res!2906331 () Bool)

(assert (=> d!2222896 (=> (not res!2906331) (not e!4280434))))

(declare-fun res!2906330 () List!69022)

(assert (=> d!2222896 (= res!2906331 (noDuplicate!2796 res!2906330))))

(declare-fun e!4280435 () Bool)

(assert (=> d!2222896 e!4280435))

(assert (=> d!2222896 (= (choose!55028 lt!2562401) res!2906330)))

(declare-fun b!7123236 () Bool)

(declare-fun tp!1961593 () Bool)

(assert (=> b!7123236 (= e!4280435 (and tp_is_empty!45447 tp!1961593))))

(declare-fun b!7123237 () Bool)

(assert (=> b!7123237 (= e!4280434 (= (content!14095 res!2906330) lt!2562401))))

(assert (= (and d!2222896 ((_ is Cons!68898) res!2906330)) b!7123236))

(assert (= (and d!2222896 res!2906331) b!7123237))

(declare-fun m!7840542 () Bool)

(assert (=> d!2222896 m!7840542))

(declare-fun m!7840544 () Bool)

(assert (=> b!7123237 m!7840544))

(assert (=> d!2222860 d!2222896))

(declare-fun d!2222902 () Bool)

(assert (=> d!2222902 (= (isEmpty!40010 (t!382933 l2!759)) ((_ is Nil!68898) (t!382933 l2!759)))))

(assert (=> b!7123205 d!2222902))

(declare-fun d!2222904 () Bool)

(declare-fun c!1329108 () Bool)

(assert (=> d!2222904 (= c!1329108 ((_ is Nil!68898) lt!2562404))))

(declare-fun e!4280444 () (InoxSet B!3305))

(assert (=> d!2222904 (= (content!14095 lt!2562404) e!4280444)))

(declare-fun b!7123248 () Bool)

(assert (=> b!7123248 (= e!4280444 ((as const (Array B!3305 Bool)) false))))

(declare-fun b!7123249 () Bool)

(assert (=> b!7123249 (= e!4280444 ((_ map or) (store ((as const (Array B!3305 Bool)) false) (h!75346 lt!2562404) true) (content!14095 (t!382933 lt!2562404))))))

(assert (= (and d!2222904 c!1329108) b!7123248))

(assert (= (and d!2222904 (not c!1329108)) b!7123249))

(declare-fun m!7840550 () Bool)

(assert (=> b!7123249 m!7840550))

(declare-fun m!7840552 () Bool)

(assert (=> b!7123249 m!7840552))

(assert (=> b!7123134 d!2222904))

(declare-fun d!2222908 () Bool)

(assert (=> d!2222908 true))

(declare-fun setRes!51247 () Bool)

(assert (=> d!2222908 setRes!51247))

(declare-fun condSetEmpty!51247 () Bool)

(declare-fun res!2906338 () (InoxSet B!3305))

(assert (=> d!2222908 (= condSetEmpty!51247 (= res!2906338 ((as const (Array B!3305 Bool)) false)))))

(assert (=> d!2222908 (= (choose!55029 s1!424 f!607) res!2906338)))

(declare-fun setIsEmpty!51247 () Bool)

(assert (=> setIsEmpty!51247 setRes!51247))

(declare-fun setNonEmpty!51247 () Bool)

(declare-fun tp!1961594 () Bool)

(assert (=> setNonEmpty!51247 (= setRes!51247 (and tp!1961594 tp_is_empty!45447))))

(declare-fun setElem!51247 () B!3305)

(declare-fun setRest!51247 () (InoxSet B!3305))

(assert (=> setNonEmpty!51247 (= res!2906338 ((_ map or) (store ((as const (Array B!3305 Bool)) false) setElem!51247 true) setRest!51247))))

(assert (= (and d!2222908 condSetEmpty!51247) setIsEmpty!51247))

(assert (= (and d!2222908 (not condSetEmpty!51247)) setNonEmpty!51247))

(assert (=> d!2222852 d!2222908))

(declare-fun b!7123252 () Bool)

(declare-fun e!4280447 () Unit!162751)

(declare-fun Unit!162757 () Unit!162751)

(assert (=> b!7123252 (= e!4280447 Unit!162757)))

(declare-fun d!2222910 () Bool)

(assert (=> d!2222910 (subseq!761 (tail!13926 (ite c!1329104 l2!759 (t!382933 l2!759))) (t!382933 lt!2562399))))

(declare-fun lt!2562422 () Unit!162751)

(assert (=> d!2222910 (= lt!2562422 e!4280447)))

(declare-fun c!1329111 () Bool)

(assert (=> d!2222910 (= c!1329111 (and ((_ is Cons!68898) (ite c!1329104 l2!759 (t!382933 l2!759))) ((_ is Cons!68898) (t!382933 lt!2562399))))))

(declare-fun e!4280450 () Bool)

(assert (=> d!2222910 e!4280450))

(declare-fun res!2906341 () Bool)

(assert (=> d!2222910 (=> (not res!2906341) (not e!4280450))))

(assert (=> d!2222910 (= res!2906341 (not (isEmpty!40010 (ite c!1329104 l2!759 (t!382933 l2!759)))))))

(assert (=> d!2222910 (= (subseqTail!34 (ite c!1329104 l2!759 (t!382933 l2!759)) (t!382933 lt!2562399)) lt!2562422)))

(declare-fun b!7123253 () Bool)

(assert (=> b!7123253 (= e!4280450 (subseq!761 (ite c!1329104 l2!759 (t!382933 l2!759)) (t!382933 lt!2562399)))))

(declare-fun b!7123254 () Bool)

(declare-fun e!4280449 () Unit!162751)

(declare-fun Unit!162758 () Unit!162751)

(assert (=> b!7123254 (= e!4280449 Unit!162758)))

(declare-fun call!650769 () Unit!162751)

(declare-fun c!1329110 () Bool)

(declare-fun bm!650764 () Bool)

(assert (=> bm!650764 (= call!650769 (subseqTail!34 (ite c!1329110 (ite c!1329104 l2!759 (t!382933 l2!759)) (t!382933 (ite c!1329104 l2!759 (t!382933 l2!759)))) (t!382933 (t!382933 lt!2562399))))))

(declare-fun b!7123255 () Bool)

(declare-fun c!1329109 () Bool)

(assert (=> b!7123255 (= c!1329109 (not (isEmpty!40010 (t!382933 (ite c!1329104 l2!759 (t!382933 l2!759))))))))

(declare-fun e!4280448 () Unit!162751)

(assert (=> b!7123255 (= e!4280448 e!4280449)))

(declare-fun b!7123256 () Bool)

(assert (=> b!7123256 (= e!4280447 e!4280448)))

(assert (=> b!7123256 (= c!1329110 (subseq!761 (ite c!1329104 l2!759 (t!382933 l2!759)) (t!382933 (t!382933 lt!2562399))))))

(declare-fun b!7123257 () Bool)

(assert (=> b!7123257 (= e!4280449 call!650769)))

(declare-fun b!7123258 () Bool)

(assert (=> b!7123258 (= e!4280448 call!650769)))

(assert (= (and d!2222910 res!2906341) b!7123253))

(assert (= (and d!2222910 c!1329111) b!7123256))

(assert (= (and d!2222910 (not c!1329111)) b!7123252))

(assert (= (and b!7123256 c!1329110) b!7123258))

(assert (= (and b!7123256 (not c!1329110)) b!7123255))

(assert (= (and b!7123255 c!1329109) b!7123257))

(assert (= (and b!7123255 (not c!1329109)) b!7123254))

(assert (= (or b!7123258 b!7123257) bm!650764))

(declare-fun m!7840554 () Bool)

(assert (=> d!2222910 m!7840554))

(assert (=> d!2222910 m!7840554))

(declare-fun m!7840556 () Bool)

(assert (=> d!2222910 m!7840556))

(declare-fun m!7840558 () Bool)

(assert (=> d!2222910 m!7840558))

(declare-fun m!7840560 () Bool)

(assert (=> b!7123253 m!7840560))

(declare-fun m!7840562 () Bool)

(assert (=> bm!650764 m!7840562))

(declare-fun m!7840564 () Bool)

(assert (=> b!7123256 m!7840564))

(declare-fun m!7840566 () Bool)

(assert (=> b!7123255 m!7840566))

(assert (=> bm!650763 d!2222910))

(declare-fun d!2222912 () Bool)

(declare-fun c!1329112 () Bool)

(assert (=> d!2222912 (= c!1329112 ((_ is Nil!68898) lt!2562408))))

(declare-fun e!4280453 () (InoxSet B!3305))

(assert (=> d!2222912 (= (content!14095 lt!2562408) e!4280453)))

(declare-fun b!7123261 () Bool)

(assert (=> b!7123261 (= e!4280453 ((as const (Array B!3305 Bool)) false))))

(declare-fun b!7123262 () Bool)

(assert (=> b!7123262 (= e!4280453 ((_ map or) (store ((as const (Array B!3305 Bool)) false) (h!75346 lt!2562408) true) (content!14095 (t!382933 lt!2562408))))))

(assert (= (and d!2222912 c!1329112) b!7123261))

(assert (= (and d!2222912 (not c!1329112)) b!7123262))

(declare-fun m!7840568 () Bool)

(assert (=> b!7123262 m!7840568))

(declare-fun m!7840570 () Bool)

(assert (=> b!7123262 m!7840570))

(assert (=> b!7123166 d!2222912))

(declare-fun b!7123266 () Bool)

(declare-fun e!4280456 () Bool)

(declare-fun e!4280459 () Bool)

(assert (=> b!7123266 (= e!4280456 e!4280459)))

(declare-fun res!2906348 () Bool)

(assert (=> b!7123266 (=> res!2906348 e!4280459)))

(declare-fun e!4280457 () Bool)

(assert (=> b!7123266 (= res!2906348 e!4280457)))

(declare-fun res!2906349 () Bool)

(assert (=> b!7123266 (=> (not res!2906349) (not e!4280457))))

(assert (=> b!7123266 (= res!2906349 (= (h!75346 (t!382933 (t!382933 l2!759))) (h!75346 (t!382933 lt!2562399))))))

(declare-fun b!7123265 () Bool)

(declare-fun e!4280458 () Bool)

(assert (=> b!7123265 (= e!4280458 e!4280456)))

(declare-fun res!2906347 () Bool)

(assert (=> b!7123265 (=> (not res!2906347) (not e!4280456))))

(assert (=> b!7123265 (= res!2906347 ((_ is Cons!68898) (t!382933 lt!2562399)))))

(declare-fun b!7123268 () Bool)

(assert (=> b!7123268 (= e!4280459 (subseq!761 (t!382933 (t!382933 l2!759)) (t!382933 (t!382933 lt!2562399))))))

(declare-fun d!2222914 () Bool)

(declare-fun res!2906346 () Bool)

(assert (=> d!2222914 (=> res!2906346 e!4280458)))

(assert (=> d!2222914 (= res!2906346 ((_ is Nil!68898) (t!382933 (t!382933 l2!759))))))

(assert (=> d!2222914 (= (subseq!761 (t!382933 (t!382933 l2!759)) (t!382933 lt!2562399)) e!4280458)))

(declare-fun b!7123267 () Bool)

(assert (=> b!7123267 (= e!4280457 (subseq!761 (t!382933 (t!382933 (t!382933 l2!759))) (t!382933 (t!382933 lt!2562399))))))

(assert (= (and d!2222914 (not res!2906346)) b!7123265))

(assert (= (and b!7123265 res!2906347) b!7123266))

(assert (= (and b!7123266 res!2906349) b!7123267))

(assert (= (and b!7123266 (not res!2906348)) b!7123268))

(declare-fun m!7840576 () Bool)

(assert (=> b!7123268 m!7840576))

(declare-fun m!7840578 () Bool)

(assert (=> b!7123267 m!7840578))

(assert (=> b!7123170 d!2222914))

(declare-fun b!7123274 () Bool)

(declare-fun e!4280464 () Bool)

(declare-fun e!4280467 () Bool)

(assert (=> b!7123274 (= e!4280464 e!4280467)))

(declare-fun res!2906356 () Bool)

(assert (=> b!7123274 (=> res!2906356 e!4280467)))

(declare-fun e!4280465 () Bool)

(assert (=> b!7123274 (= res!2906356 e!4280465)))

(declare-fun res!2906357 () Bool)

(assert (=> b!7123274 (=> (not res!2906357) (not e!4280465))))

(assert (=> b!7123274 (= res!2906357 (= (h!75346 (t!382933 l2!759)) (h!75346 (t!382933 lt!2562399))))))

(declare-fun b!7123273 () Bool)

(declare-fun e!4280466 () Bool)

(assert (=> b!7123273 (= e!4280466 e!4280464)))

(declare-fun res!2906355 () Bool)

(assert (=> b!7123273 (=> (not res!2906355) (not e!4280464))))

(assert (=> b!7123273 (= res!2906355 ((_ is Cons!68898) (t!382933 lt!2562399)))))

(declare-fun b!7123276 () Bool)

(assert (=> b!7123276 (= e!4280467 (subseq!761 (t!382933 l2!759) (t!382933 (t!382933 lt!2562399))))))

(declare-fun d!2222918 () Bool)

(declare-fun res!2906354 () Bool)

(assert (=> d!2222918 (=> res!2906354 e!4280466)))

(assert (=> d!2222918 (= res!2906354 ((_ is Nil!68898) (t!382933 l2!759)))))

(assert (=> d!2222918 (= (subseq!761 (t!382933 l2!759) (t!382933 lt!2562399)) e!4280466)))

(declare-fun b!7123275 () Bool)

(assert (=> b!7123275 (= e!4280465 (subseq!761 (t!382933 (t!382933 l2!759)) (t!382933 (t!382933 lt!2562399))))))

(assert (= (and d!2222918 (not res!2906354)) b!7123273))

(assert (= (and b!7123273 res!2906355) b!7123274))

(assert (= (and b!7123274 res!2906357) b!7123275))

(assert (= (and b!7123274 (not res!2906356)) b!7123276))

(assert (=> b!7123276 m!7840532))

(assert (=> b!7123275 m!7840576))

(assert (=> b!7123164 d!2222918))

(declare-fun d!2222922 () Bool)

(assert (=> d!2222922 true))

(declare-fun setRes!51248 () Bool)

(assert (=> d!2222922 setRes!51248))

(declare-fun condSetEmpty!51248 () Bool)

(declare-fun res!2906362 () (InoxSet B!3305))

(assert (=> d!2222922 (= condSetEmpty!51248 (= res!2906362 ((as const (Array B!3305 Bool)) false)))))

(assert (=> d!2222922 (= (choose!55029 s2!395 f!607) res!2906362)))

(declare-fun setIsEmpty!51248 () Bool)

(assert (=> setIsEmpty!51248 setRes!51248))

(declare-fun setNonEmpty!51248 () Bool)

(declare-fun tp!1961598 () Bool)

(assert (=> setNonEmpty!51248 (= setRes!51248 (and tp!1961598 tp_is_empty!45447))))

(declare-fun setElem!51248 () B!3305)

(declare-fun setRest!51248 () (InoxSet B!3305))

(assert (=> setNonEmpty!51248 (= res!2906362 ((_ map or) (store ((as const (Array B!3305 Bool)) false) setElem!51248 true) setRest!51248))))

(assert (= (and d!2222922 condSetEmpty!51248) setIsEmpty!51248))

(assert (= (and d!2222922 (not condSetEmpty!51248)) setNonEmpty!51248))

(assert (=> d!2222854 d!2222922))

(assert (=> b!7123171 d!2222918))

(declare-fun d!2222926 () Bool)

(declare-fun res!2906363 () Bool)

(declare-fun e!4280472 () Bool)

(assert (=> d!2222926 (=> res!2906363 e!4280472)))

(assert (=> d!2222926 (= res!2906363 ((_ is Nil!68898) lt!2562404))))

(assert (=> d!2222926 (= (noDuplicate!2796 lt!2562404) e!4280472)))

(declare-fun b!7123281 () Bool)

(declare-fun e!4280473 () Bool)

(assert (=> b!7123281 (= e!4280472 e!4280473)))

(declare-fun res!2906364 () Bool)

(assert (=> b!7123281 (=> (not res!2906364) (not e!4280473))))

(assert (=> b!7123281 (= res!2906364 (not (contains!20527 (t!382933 lt!2562404) (h!75346 lt!2562404))))))

(declare-fun b!7123282 () Bool)

(assert (=> b!7123282 (= e!4280473 (noDuplicate!2796 (t!382933 lt!2562404)))))

(assert (= (and d!2222926 (not res!2906363)) b!7123281))

(assert (= (and b!7123281 res!2906364) b!7123282))

(declare-fun m!7840586 () Bool)

(assert (=> b!7123281 m!7840586))

(declare-fun m!7840588 () Bool)

(assert (=> b!7123282 m!7840588))

(assert (=> d!2222850 d!2222926))

(declare-fun d!2222928 () Bool)

(declare-fun e!4280474 () Bool)

(assert (=> d!2222928 e!4280474))

(declare-fun res!2906366 () Bool)

(assert (=> d!2222928 (=> (not res!2906366) (not e!4280474))))

(declare-fun res!2906365 () List!69022)

(assert (=> d!2222928 (= res!2906366 (noDuplicate!2796 res!2906365))))

(declare-fun e!4280475 () Bool)

(assert (=> d!2222928 e!4280475))

(assert (=> d!2222928 (= (choose!55028 lt!2562398) res!2906365)))

(declare-fun b!7123283 () Bool)

(declare-fun tp!1961599 () Bool)

(assert (=> b!7123283 (= e!4280475 (and tp_is_empty!45447 tp!1961599))))

(declare-fun b!7123284 () Bool)

(assert (=> b!7123284 (= e!4280474 (= (content!14095 res!2906365) lt!2562398))))

(assert (= (and d!2222928 ((_ is Cons!68898) res!2906365)) b!7123283))

(assert (= (and d!2222928 res!2906366) b!7123284))

(declare-fun m!7840590 () Bool)

(assert (=> d!2222928 m!7840590))

(declare-fun m!7840592 () Bool)

(assert (=> b!7123284 m!7840592))

(assert (=> d!2222850 d!2222928))

(assert (=> b!7123165 d!2222884))

(assert (=> d!2222880 d!2222852))

(assert (=> d!2222880 d!2222854))

(assert (=> d!2222880 d!2222862))

(declare-fun d!2222930 () Bool)

(assert (=> d!2222930 (= (select ((_ map or) (map!16431 s1!424 f!607) (map!16431 s2!395 f!607)) (h!75346 l2!759)) (select (map!16431 ((_ map or) s1!424 s2!395) f!607) (h!75346 l2!759)))))

(assert (=> d!2222930 true))

(declare-fun _$5!302 () Unit!162751)

(assert (=> d!2222930 (= (choose!55033 s1!424 s2!395 f!607 (h!75346 l2!759)) _$5!302)))

(declare-fun bs!1886138 () Bool)

(assert (= bs!1886138 d!2222930))

(assert (=> bs!1886138 m!7840440))

(assert (=> bs!1886138 m!7840528))

(assert (=> bs!1886138 m!7840448))

(assert (=> bs!1886138 m!7840442))

(assert (=> bs!1886138 m!7840524))

(assert (=> d!2222880 d!2222930))

(declare-fun b!7123292 () Bool)

(declare-fun e!4280478 () Bool)

(declare-fun e!4280481 () Bool)

(assert (=> b!7123292 (= e!4280478 e!4280481)))

(declare-fun res!2906369 () Bool)

(assert (=> b!7123292 (=> res!2906369 e!4280481)))

(declare-fun e!4280479 () Bool)

(assert (=> b!7123292 (= res!2906369 e!4280479)))

(declare-fun res!2906370 () Bool)

(assert (=> b!7123292 (=> (not res!2906370) (not e!4280479))))

(assert (=> b!7123292 (= res!2906370 (= (h!75346 (tail!13926 l2!759)) (h!75346 lt!2562399)))))

(declare-fun b!7123291 () Bool)

(declare-fun e!4280480 () Bool)

(assert (=> b!7123291 (= e!4280480 e!4280478)))

(declare-fun res!2906368 () Bool)

(assert (=> b!7123291 (=> (not res!2906368) (not e!4280478))))

(assert (=> b!7123291 (= res!2906368 ((_ is Cons!68898) lt!2562399))))

(declare-fun b!7123294 () Bool)

(assert (=> b!7123294 (= e!4280481 (subseq!761 (tail!13926 l2!759) (t!382933 lt!2562399)))))

(declare-fun d!2222934 () Bool)

(declare-fun res!2906367 () Bool)

(assert (=> d!2222934 (=> res!2906367 e!4280480)))

(assert (=> d!2222934 (= res!2906367 ((_ is Nil!68898) (tail!13926 l2!759)))))

(assert (=> d!2222934 (= (subseq!761 (tail!13926 l2!759) lt!2562399) e!4280480)))

(declare-fun b!7123293 () Bool)

(assert (=> b!7123293 (= e!4280479 (subseq!761 (t!382933 (tail!13926 l2!759)) (t!382933 lt!2562399)))))

(assert (= (and d!2222934 (not res!2906367)) b!7123291))

(assert (= (and b!7123291 res!2906368) b!7123292))

(assert (= (and b!7123292 res!2906370) b!7123293))

(assert (= (and b!7123292 (not res!2906369)) b!7123294))

(assert (=> b!7123294 m!7840514))

(declare-fun m!7840594 () Bool)

(assert (=> b!7123294 m!7840594))

(declare-fun m!7840596 () Bool)

(assert (=> b!7123293 m!7840596))

(assert (=> d!2222866 d!2222934))

(declare-fun d!2222936 () Bool)

(assert (=> d!2222936 (= (tail!13926 l2!759) (t!382933 l2!759))))

(assert (=> d!2222866 d!2222936))

(declare-fun d!2222938 () Bool)

(assert (=> d!2222938 (= (isEmpty!40010 l2!759) ((_ is Nil!68898) l2!759))))

(assert (=> d!2222866 d!2222938))

(assert (=> b!7123203 d!2222856))

(declare-fun condSetEmpty!51249 () Bool)

(assert (=> setNonEmpty!51239 (= condSetEmpty!51249 (= setRest!51239 ((as const (Array A!647 Bool)) false)))))

(declare-fun setRes!51249 () Bool)

(assert (=> setNonEmpty!51239 (= tp!1961583 setRes!51249)))

(declare-fun setIsEmpty!51249 () Bool)

(assert (=> setIsEmpty!51249 setRes!51249))

(declare-fun setNonEmpty!51249 () Bool)

(declare-fun tp!1961600 () Bool)

(assert (=> setNonEmpty!51249 (= setRes!51249 (and tp!1961600 tp_is_empty!45445))))

(declare-fun setElem!51249 () A!647)

(declare-fun setRest!51249 () (InoxSet A!647))

(assert (=> setNonEmpty!51249 (= setRest!51239 ((_ map or) (store ((as const (Array A!647 Bool)) false) setElem!51249 true) setRest!51249))))

(assert (= (and setNonEmpty!51239 condSetEmpty!51249) setIsEmpty!51249))

(assert (= (and setNonEmpty!51239 (not condSetEmpty!51249)) setNonEmpty!51249))

(declare-fun condSetEmpty!51250 () Bool)

(assert (=> setNonEmpty!51238 (= condSetEmpty!51250 (= setRest!51238 ((as const (Array A!647 Bool)) false)))))

(declare-fun setRes!51250 () Bool)

(assert (=> setNonEmpty!51238 (= tp!1961581 setRes!51250)))

(declare-fun setIsEmpty!51250 () Bool)

(assert (=> setIsEmpty!51250 setRes!51250))

(declare-fun setNonEmpty!51250 () Bool)

(declare-fun tp!1961601 () Bool)

(assert (=> setNonEmpty!51250 (= setRes!51250 (and tp!1961601 tp_is_empty!45445))))

(declare-fun setElem!51250 () A!647)

(declare-fun setRest!51250 () (InoxSet A!647))

(assert (=> setNonEmpty!51250 (= setRest!51238 ((_ map or) (store ((as const (Array A!647 Bool)) false) setElem!51250 true) setRest!51250))))

(assert (= (and setNonEmpty!51238 condSetEmpty!51250) setIsEmpty!51250))

(assert (= (and setNonEmpty!51238 (not condSetEmpty!51250)) setNonEmpty!51250))

(declare-fun b!7123301 () Bool)

(declare-fun e!4280487 () Bool)

(declare-fun tp!1961602 () Bool)

(assert (=> b!7123301 (= e!4280487 (and tp_is_empty!45447 tp!1961602))))

(assert (=> b!7123214 (= tp!1961578 e!4280487)))

(assert (= (and b!7123214 ((_ is Cons!68898) (t!382933 (t!382933 l1!770)))) b!7123301))

(declare-fun b!7123302 () Bool)

(declare-fun e!4280488 () Bool)

(declare-fun tp!1961603 () Bool)

(assert (=> b!7123302 (= e!4280488 (and tp_is_empty!45447 tp!1961603))))

(assert (=> b!7123217 (= tp!1961582 e!4280488)))

(assert (= (and b!7123217 ((_ is Cons!68898) (t!382933 (t!382933 l2!759)))) b!7123302))

(check-sat (not d!2222930) (not b!7123282) b_and!350837 (not b!7123301) (not d!2222928) (not setNonEmpty!51248) (not b!7123220) (not b_next!134531) (not b!7123237) (not b!7123302) (not setNonEmpty!51247) (not b!7123293) (not b!7123249) (not b!7123255) (not setNonEmpty!51242) tp_is_empty!45447 (not b!7123275) (not bm!650764) (not b!7123267) (not d!2222910) (not b!7123294) (not b!7123276) (not b!7123256) (not b!7123236) (not d!2222896) (not b!7123281) (not b!7123230) (not b!7123221) (not b!7123284) (not b!7123283) (not setNonEmpty!51249) tp_is_empty!45445 (not b!7123253) (not setNonEmpty!51250) (not b!7123262) (not b!7123268) (not b!7123231))
(check-sat b_and!350837 (not b_next!134531))
