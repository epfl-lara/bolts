; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!695832 () Bool)

(assert start!695832)

(declare-fun b!7139596 () Bool)

(declare-fun e!4290729 () Bool)

(declare-datatypes ((C!36588 0))(
  ( (C!36589 (val!28242 Int)) )
))
(declare-datatypes ((Regex!18157 0))(
  ( (ElementMatch!18157 (c!1331400 C!36588)) (Concat!27002 (regOne!36826 Regex!18157) (regTwo!36826 Regex!18157)) (EmptyExpr!18157) (Star!18157 (reg!18486 Regex!18157)) (EmptyLang!18157) (Union!18157 (regOne!36827 Regex!18157) (regTwo!36827 Regex!18157)) )
))
(declare-datatypes ((List!69392 0))(
  ( (Nil!69268) (Cons!69268 (h!75716 Regex!18157) (t!383409 List!69392)) )
))
(declare-fun lt!2566896 () List!69392)

(declare-fun lt!2566897 () Regex!18157)

(declare-fun contains!20597 (List!69392 Regex!18157) Bool)

(assert (=> b!7139596 (= e!4290729 (contains!20597 lt!2566896 lt!2566897))))

(declare-fun b!7139597 () Bool)

(declare-fun res!2913165 () Bool)

(declare-fun e!4290727 () Bool)

(assert (=> b!7139597 (=> res!2913165 e!4290727)))

(declare-fun lt!2566898 () Bool)

(assert (=> b!7139597 (= res!2913165 (not lt!2566898))))

(declare-fun b!7139598 () Bool)

(declare-fun e!4290725 () Bool)

(declare-fun tp!1968917 () Bool)

(declare-fun tp!1968919 () Bool)

(assert (=> b!7139598 (= e!4290725 (and tp!1968917 tp!1968919))))

(declare-fun b!7139599 () Bool)

(declare-fun e!4290724 () Bool)

(declare-fun tp!1968913 () Bool)

(assert (=> b!7139599 (= e!4290724 tp!1968913)))

(declare-fun b!7139600 () Bool)

(declare-fun tp!1968914 () Bool)

(declare-fun tp!1968915 () Bool)

(assert (=> b!7139600 (= e!4290725 (and tp!1968914 tp!1968915))))

(declare-fun res!2913160 () Bool)

(declare-fun e!4290726 () Bool)

(assert (=> start!695832 (=> (not res!2913160) (not e!4290726))))

(declare-fun r!11483 () Regex!18157)

(declare-fun validRegex!9324 (Regex!18157) Bool)

(assert (=> start!695832 (= res!2913160 (validRegex!9324 r!11483))))

(assert (=> start!695832 e!4290726))

(assert (=> start!695832 e!4290725))

(declare-fun condSetEmpty!52501 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Context!14302 0))(
  ( (Context!14303 (exprs!7651 List!69392)) )
))
(declare-fun z!3189 () (InoxSet Context!14302))

(assert (=> start!695832 (= condSetEmpty!52501 (= z!3189 ((as const (Array Context!14302 Bool)) false)))))

(declare-fun setRes!52501 () Bool)

(assert (=> start!695832 setRes!52501))

(declare-fun b!7139601 () Bool)

(declare-fun tp_is_empty!45951 () Bool)

(assert (=> b!7139601 (= e!4290725 tp_is_empty!45951)))

(declare-fun b!7139602 () Bool)

(declare-fun tp!1968918 () Bool)

(assert (=> b!7139602 (= e!4290725 tp!1968918)))

(declare-fun setNonEmpty!52501 () Bool)

(declare-fun tp!1968916 () Bool)

(declare-fun setElem!52501 () Context!14302)

(declare-fun inv!88456 (Context!14302) Bool)

(assert (=> setNonEmpty!52501 (= setRes!52501 (and tp!1968916 (inv!88456 setElem!52501) e!4290724))))

(declare-fun setRest!52501 () (InoxSet Context!14302))

(assert (=> setNonEmpty!52501 (= z!3189 ((_ map or) (store ((as const (Array Context!14302 Bool)) false) setElem!52501 true) setRest!52501))))

(declare-fun b!7139603 () Bool)

(declare-fun e!4290728 () Bool)

(declare-fun e!4290730 () Bool)

(assert (=> b!7139603 (= e!4290728 e!4290730)))

(declare-fun res!2913163 () Bool)

(assert (=> b!7139603 (=> (not res!2913163) (not e!4290730))))

(declare-fun lt!2566894 () Regex!18157)

(assert (=> b!7139603 (= res!2913163 (= r!11483 lt!2566894))))

(declare-fun generalisedUnion!2662 (List!69392) Regex!18157)

(assert (=> b!7139603 (= lt!2566894 (generalisedUnion!2662 lt!2566896))))

(declare-datatypes ((List!69393 0))(
  ( (Nil!69269) (Cons!69269 (h!75717 Context!14302) (t!383410 List!69393)) )
))
(declare-fun lt!2566895 () List!69393)

(declare-fun unfocusZipperList!2198 (List!69393) List!69392)

(assert (=> b!7139603 (= lt!2566896 (unfocusZipperList!2198 lt!2566895))))

(declare-fun b!7139604 () Bool)

(assert (=> b!7139604 (= e!4290727 e!4290729)))

(declare-fun res!2913159 () Bool)

(assert (=> b!7139604 (=> res!2913159 e!4290729)))

(declare-fun nullable!7676 (Regex!18157) Bool)

(assert (=> b!7139604 (= res!2913159 (not (nullable!7676 lt!2566897)))))

(declare-fun lambda!434368 () Int)

(declare-fun getWitness!1917 (List!69392 Int) Regex!18157)

(assert (=> b!7139604 (= lt!2566897 (getWitness!1917 lt!2566896 lambda!434368))))

(declare-fun b!7139605 () Bool)

(assert (=> b!7139605 (= e!4290726 e!4290728)))

(declare-fun res!2913164 () Bool)

(assert (=> b!7139605 (=> (not res!2913164) (not e!4290728))))

(declare-fun unfocusZipper!2505 (List!69393) Regex!18157)

(assert (=> b!7139605 (= res!2913164 (= r!11483 (unfocusZipper!2505 lt!2566895)))))

(declare-fun toList!11188 ((InoxSet Context!14302)) List!69393)

(assert (=> b!7139605 (= lt!2566895 (toList!11188 z!3189))))

(declare-fun setIsEmpty!52501 () Bool)

(assert (=> setIsEmpty!52501 setRes!52501))

(declare-fun b!7139606 () Bool)

(assert (=> b!7139606 (= e!4290730 (not e!4290727))))

(declare-fun res!2913162 () Bool)

(assert (=> b!7139606 (=> res!2913162 e!4290727)))

(declare-fun exists!3929 (List!69392 Int) Bool)

(assert (=> b!7139606 (= res!2913162 (not (= lt!2566898 (exists!3929 lt!2566896 lambda!434368))))))

(assert (=> b!7139606 (= lt!2566898 (exists!3929 lt!2566896 lambda!434368))))

(assert (=> b!7139606 (= lt!2566898 (nullable!7676 lt!2566894))))

(declare-datatypes ((Unit!163171 0))(
  ( (Unit!163172) )
))
(declare-fun lt!2566893 () Unit!163171)

(declare-fun nullableGenUnionSpec!44 (Regex!18157 List!69392) Unit!163171)

(assert (=> b!7139606 (= lt!2566893 (nullableGenUnionSpec!44 lt!2566894 lt!2566896))))

(declare-fun b!7139607 () Bool)

(declare-fun res!2913161 () Bool)

(assert (=> b!7139607 (=> res!2913161 e!4290727)))

(assert (=> b!7139607 (= res!2913161 (not (exists!3929 lt!2566896 lambda!434368)))))

(assert (= (and start!695832 res!2913160) b!7139605))

(assert (= (and b!7139605 res!2913164) b!7139603))

(assert (= (and b!7139603 res!2913163) b!7139606))

(assert (= (and b!7139606 (not res!2913162)) b!7139597))

(assert (= (and b!7139597 (not res!2913165)) b!7139607))

(assert (= (and b!7139607 (not res!2913161)) b!7139604))

(assert (= (and b!7139604 (not res!2913159)) b!7139596))

(get-info :version)

(assert (= (and start!695832 ((_ is ElementMatch!18157) r!11483)) b!7139601))

(assert (= (and start!695832 ((_ is Concat!27002) r!11483)) b!7139598))

(assert (= (and start!695832 ((_ is Star!18157) r!11483)) b!7139602))

(assert (= (and start!695832 ((_ is Union!18157) r!11483)) b!7139600))

(assert (= (and start!695832 condSetEmpty!52501) setIsEmpty!52501))

(assert (= (and start!695832 (not condSetEmpty!52501)) setNonEmpty!52501))

(assert (= setNonEmpty!52501 b!7139599))

(declare-fun m!7854754 () Bool)

(assert (=> setNonEmpty!52501 m!7854754))

(declare-fun m!7854756 () Bool)

(assert (=> b!7139607 m!7854756))

(declare-fun m!7854758 () Bool)

(assert (=> start!695832 m!7854758))

(declare-fun m!7854760 () Bool)

(assert (=> b!7139603 m!7854760))

(declare-fun m!7854762 () Bool)

(assert (=> b!7139603 m!7854762))

(declare-fun m!7854764 () Bool)

(assert (=> b!7139596 m!7854764))

(assert (=> b!7139606 m!7854756))

(assert (=> b!7139606 m!7854756))

(declare-fun m!7854766 () Bool)

(assert (=> b!7139606 m!7854766))

(declare-fun m!7854768 () Bool)

(assert (=> b!7139606 m!7854768))

(declare-fun m!7854770 () Bool)

(assert (=> b!7139604 m!7854770))

(declare-fun m!7854772 () Bool)

(assert (=> b!7139604 m!7854772))

(declare-fun m!7854774 () Bool)

(assert (=> b!7139605 m!7854774))

(declare-fun m!7854776 () Bool)

(assert (=> b!7139605 m!7854776))

(check-sat (not b!7139599) (not setNonEmpty!52501) (not b!7139604) (not b!7139596) tp_is_empty!45951 (not b!7139602) (not b!7139606) (not b!7139607) (not b!7139605) (not b!7139603) (not start!695832) (not b!7139598) (not b!7139600))
(check-sat)
(get-model)

(declare-fun bs!1888099 () Bool)

(declare-fun d!2227057 () Bool)

(assert (= bs!1888099 (and d!2227057 b!7139606)))

(declare-fun lambda!434371 () Int)

(assert (=> bs!1888099 (not (= lambda!434371 lambda!434368))))

(assert (=> d!2227057 true))

(declare-fun order!28535 () Int)

(declare-fun dynLambda!28177 (Int Int) Int)

(assert (=> d!2227057 (< (dynLambda!28177 order!28535 lambda!434368) (dynLambda!28177 order!28535 lambda!434371))))

(declare-fun forall!16990 (List!69392 Int) Bool)

(assert (=> d!2227057 (= (exists!3929 lt!2566896 lambda!434368) (not (forall!16990 lt!2566896 lambda!434371)))))

(declare-fun bs!1888100 () Bool)

(assert (= bs!1888100 d!2227057))

(declare-fun m!7854778 () Bool)

(assert (=> bs!1888100 m!7854778))

(assert (=> b!7139607 d!2227057))

(assert (=> b!7139606 d!2227057))

(declare-fun d!2227059 () Bool)

(declare-fun nullableFct!2981 (Regex!18157) Bool)

(assert (=> d!2227059 (= (nullable!7676 lt!2566894) (nullableFct!2981 lt!2566894))))

(declare-fun bs!1888101 () Bool)

(assert (= bs!1888101 d!2227059))

(declare-fun m!7854780 () Bool)

(assert (=> bs!1888101 m!7854780))

(assert (=> b!7139606 d!2227059))

(declare-fun bs!1888105 () Bool)

(declare-fun d!2227063 () Bool)

(assert (= bs!1888105 (and d!2227063 b!7139606)))

(declare-fun lambda!434379 () Int)

(assert (=> bs!1888105 (not (= lambda!434379 lambda!434368))))

(declare-fun bs!1888106 () Bool)

(assert (= bs!1888106 (and d!2227063 d!2227057)))

(assert (=> bs!1888106 (not (= lambda!434379 lambda!434371))))

(declare-fun lambda!434380 () Int)

(assert (=> bs!1888105 (= lambda!434380 lambda!434368)))

(assert (=> bs!1888106 (not (= lambda!434380 lambda!434371))))

(declare-fun bs!1888107 () Bool)

(assert (= bs!1888107 d!2227063))

(assert (=> bs!1888107 (not (= lambda!434380 lambda!434379))))

(assert (=> d!2227063 (= (nullable!7676 lt!2566894) (exists!3929 lt!2566896 lambda!434380))))

(declare-fun lt!2566901 () Unit!163171)

(declare-fun choose!55201 (Regex!18157 List!69392) Unit!163171)

(assert (=> d!2227063 (= lt!2566901 (choose!55201 lt!2566894 lt!2566896))))

(assert (=> d!2227063 (forall!16990 lt!2566896 lambda!434379)))

(assert (=> d!2227063 (= (nullableGenUnionSpec!44 lt!2566894 lt!2566896) lt!2566901)))

(assert (=> bs!1888107 m!7854766))

(declare-fun m!7854786 () Bool)

(assert (=> bs!1888107 m!7854786))

(declare-fun m!7854788 () Bool)

(assert (=> bs!1888107 m!7854788))

(declare-fun m!7854790 () Bool)

(assert (=> bs!1888107 m!7854790))

(assert (=> b!7139606 d!2227063))

(declare-fun bs!1888108 () Bool)

(declare-fun d!2227069 () Bool)

(assert (= bs!1888108 (and d!2227069 b!7139606)))

(declare-fun lambda!434387 () Int)

(assert (=> bs!1888108 (not (= lambda!434387 lambda!434368))))

(declare-fun bs!1888110 () Bool)

(assert (= bs!1888110 (and d!2227069 d!2227057)))

(assert (=> bs!1888110 (not (= lambda!434387 lambda!434371))))

(declare-fun bs!1888112 () Bool)

(assert (= bs!1888112 (and d!2227069 d!2227063)))

(assert (=> bs!1888112 (= lambda!434387 lambda!434379)))

(assert (=> bs!1888112 (not (= lambda!434387 lambda!434380))))

(assert (=> d!2227069 (= (inv!88456 setElem!52501) (forall!16990 (exprs!7651 setElem!52501) lambda!434387))))

(declare-fun bs!1888113 () Bool)

(assert (= bs!1888113 d!2227069))

(declare-fun m!7854792 () Bool)

(assert (=> bs!1888113 m!7854792))

(assert (=> setNonEmpty!52501 d!2227069))

(declare-fun b!7139642 () Bool)

(declare-fun e!4290758 () Bool)

(declare-fun call!651126 () Bool)

(assert (=> b!7139642 (= e!4290758 call!651126)))

(declare-fun b!7139643 () Bool)

(declare-fun e!4290753 () Bool)

(declare-fun call!651127 () Bool)

(assert (=> b!7139643 (= e!4290753 call!651127)))

(declare-fun d!2227071 () Bool)

(declare-fun res!2913184 () Bool)

(declare-fun e!4290755 () Bool)

(assert (=> d!2227071 (=> res!2913184 e!4290755)))

(assert (=> d!2227071 (= res!2913184 ((_ is ElementMatch!18157) r!11483))))

(assert (=> d!2227071 (= (validRegex!9324 r!11483) e!4290755)))

(declare-fun bm!651120 () Bool)

(declare-fun call!651125 () Bool)

(declare-fun c!1331409 () Bool)

(assert (=> bm!651120 (= call!651125 (validRegex!9324 (ite c!1331409 (regOne!36827 r!11483) (regOne!36826 r!11483))))))

(declare-fun bm!651121 () Bool)

(assert (=> bm!651121 (= call!651126 call!651127)))

(declare-fun b!7139644 () Bool)

(declare-fun e!4290757 () Bool)

(assert (=> b!7139644 (= e!4290757 call!651126)))

(declare-fun b!7139645 () Bool)

(declare-fun res!2913182 () Bool)

(assert (=> b!7139645 (=> (not res!2913182) (not e!4290758))))

(assert (=> b!7139645 (= res!2913182 call!651125)))

(declare-fun e!4290754 () Bool)

(assert (=> b!7139645 (= e!4290754 e!4290758)))

(declare-fun bm!651122 () Bool)

(declare-fun c!1331410 () Bool)

(assert (=> bm!651122 (= call!651127 (validRegex!9324 (ite c!1331410 (reg!18486 r!11483) (ite c!1331409 (regTwo!36827 r!11483) (regTwo!36826 r!11483)))))))

(declare-fun b!7139646 () Bool)

(declare-fun e!4290759 () Bool)

(assert (=> b!7139646 (= e!4290759 e!4290757)))

(declare-fun res!2913181 () Bool)

(assert (=> b!7139646 (=> (not res!2913181) (not e!4290757))))

(assert (=> b!7139646 (= res!2913181 call!651125)))

(declare-fun b!7139647 () Bool)

(declare-fun res!2913183 () Bool)

(assert (=> b!7139647 (=> res!2913183 e!4290759)))

(assert (=> b!7139647 (= res!2913183 (not ((_ is Concat!27002) r!11483)))))

(assert (=> b!7139647 (= e!4290754 e!4290759)))

(declare-fun b!7139648 () Bool)

(declare-fun e!4290756 () Bool)

(assert (=> b!7139648 (= e!4290756 e!4290754)))

(assert (=> b!7139648 (= c!1331409 ((_ is Union!18157) r!11483))))

(declare-fun b!7139649 () Bool)

(assert (=> b!7139649 (= e!4290756 e!4290753)))

(declare-fun res!2913180 () Bool)

(assert (=> b!7139649 (= res!2913180 (not (nullable!7676 (reg!18486 r!11483))))))

(assert (=> b!7139649 (=> (not res!2913180) (not e!4290753))))

(declare-fun b!7139650 () Bool)

(assert (=> b!7139650 (= e!4290755 e!4290756)))

(assert (=> b!7139650 (= c!1331410 ((_ is Star!18157) r!11483))))

(assert (= (and d!2227071 (not res!2913184)) b!7139650))

(assert (= (and b!7139650 c!1331410) b!7139649))

(assert (= (and b!7139650 (not c!1331410)) b!7139648))

(assert (= (and b!7139649 res!2913180) b!7139643))

(assert (= (and b!7139648 c!1331409) b!7139645))

(assert (= (and b!7139648 (not c!1331409)) b!7139647))

(assert (= (and b!7139645 res!2913182) b!7139642))

(assert (= (and b!7139647 (not res!2913183)) b!7139646))

(assert (= (and b!7139646 res!2913181) b!7139644))

(assert (= (or b!7139642 b!7139644) bm!651121))

(assert (= (or b!7139645 b!7139646) bm!651120))

(assert (= (or b!7139643 bm!651121) bm!651122))

(declare-fun m!7854802 () Bool)

(assert (=> bm!651120 m!7854802))

(declare-fun m!7854804 () Bool)

(assert (=> bm!651122 m!7854804))

(declare-fun m!7854806 () Bool)

(assert (=> b!7139649 m!7854806))

(assert (=> start!695832 d!2227071))

(declare-fun d!2227077 () Bool)

(declare-fun lt!2566915 () Bool)

(declare-fun content!14187 (List!69392) (InoxSet Regex!18157))

(assert (=> d!2227077 (= lt!2566915 (select (content!14187 lt!2566896) lt!2566897))))

(declare-fun e!4290772 () Bool)

(assert (=> d!2227077 (= lt!2566915 e!4290772)))

(declare-fun res!2913195 () Bool)

(assert (=> d!2227077 (=> (not res!2913195) (not e!4290772))))

(assert (=> d!2227077 (= res!2913195 ((_ is Cons!69268) lt!2566896))))

(assert (=> d!2227077 (= (contains!20597 lt!2566896 lt!2566897) lt!2566915)))

(declare-fun b!7139665 () Bool)

(declare-fun e!4290773 () Bool)

(assert (=> b!7139665 (= e!4290772 e!4290773)))

(declare-fun res!2913196 () Bool)

(assert (=> b!7139665 (=> res!2913196 e!4290773)))

(assert (=> b!7139665 (= res!2913196 (= (h!75716 lt!2566896) lt!2566897))))

(declare-fun b!7139666 () Bool)

(assert (=> b!7139666 (= e!4290773 (contains!20597 (t!383409 lt!2566896) lt!2566897))))

(assert (= (and d!2227077 res!2913195) b!7139665))

(assert (= (and b!7139665 (not res!2913196)) b!7139666))

(declare-fun m!7854818 () Bool)

(assert (=> d!2227077 m!7854818))

(declare-fun m!7854820 () Bool)

(assert (=> d!2227077 m!7854820))

(declare-fun m!7854822 () Bool)

(assert (=> b!7139666 m!7854822))

(assert (=> b!7139596 d!2227077))

(declare-fun d!2227081 () Bool)

(declare-fun lt!2566921 () Regex!18157)

(assert (=> d!2227081 (validRegex!9324 lt!2566921)))

(assert (=> d!2227081 (= lt!2566921 (generalisedUnion!2662 (unfocusZipperList!2198 lt!2566895)))))

(assert (=> d!2227081 (= (unfocusZipper!2505 lt!2566895) lt!2566921)))

(declare-fun bs!1888116 () Bool)

(assert (= bs!1888116 d!2227081))

(declare-fun m!7854830 () Bool)

(assert (=> bs!1888116 m!7854830))

(assert (=> bs!1888116 m!7854762))

(assert (=> bs!1888116 m!7854762))

(declare-fun m!7854832 () Bool)

(assert (=> bs!1888116 m!7854832))

(assert (=> b!7139605 d!2227081))

(declare-fun d!2227085 () Bool)

(declare-fun e!4290780 () Bool)

(assert (=> d!2227085 e!4290780))

(declare-fun res!2913203 () Bool)

(assert (=> d!2227085 (=> (not res!2913203) (not e!4290780))))

(declare-fun lt!2566927 () List!69393)

(declare-fun noDuplicate!2823 (List!69393) Bool)

(assert (=> d!2227085 (= res!2913203 (noDuplicate!2823 lt!2566927))))

(declare-fun choose!55204 ((InoxSet Context!14302)) List!69393)

(assert (=> d!2227085 (= lt!2566927 (choose!55204 z!3189))))

(assert (=> d!2227085 (= (toList!11188 z!3189) lt!2566927)))

(declare-fun b!7139673 () Bool)

(declare-fun content!14189 (List!69393) (InoxSet Context!14302))

(assert (=> b!7139673 (= e!4290780 (= (content!14189 lt!2566927) z!3189))))

(assert (= (and d!2227085 res!2913203) b!7139673))

(declare-fun m!7854838 () Bool)

(assert (=> d!2227085 m!7854838))

(declare-fun m!7854840 () Bool)

(assert (=> d!2227085 m!7854840))

(declare-fun m!7854842 () Bool)

(assert (=> b!7139673 m!7854842))

(assert (=> b!7139605 d!2227085))

(declare-fun d!2227089 () Bool)

(assert (=> d!2227089 (= (nullable!7676 lt!2566897) (nullableFct!2981 lt!2566897))))

(declare-fun bs!1888118 () Bool)

(assert (= bs!1888118 d!2227089))

(declare-fun m!7854848 () Bool)

(assert (=> bs!1888118 m!7854848))

(assert (=> b!7139604 d!2227089))

(declare-fun b!7139705 () Bool)

(declare-fun e!4290812 () Bool)

(declare-fun lt!2566933 () Regex!18157)

(assert (=> b!7139705 (= e!4290812 (contains!20597 lt!2566896 lt!2566933))))

(declare-fun b!7139706 () Bool)

(declare-fun e!4290811 () Regex!18157)

(declare-fun e!4290813 () Regex!18157)

(assert (=> b!7139706 (= e!4290811 e!4290813)))

(declare-fun c!1331422 () Bool)

(assert (=> b!7139706 (= c!1331422 ((_ is Cons!69268) lt!2566896))))

(declare-fun b!7139708 () Bool)

(declare-fun lt!2566934 () Unit!163171)

(declare-fun Unit!163174 () Unit!163171)

(assert (=> b!7139708 (= lt!2566934 Unit!163174)))

(assert (=> b!7139708 false))

(declare-fun head!14501 (List!69392) Regex!18157)

(assert (=> b!7139708 (= e!4290813 (head!14501 lt!2566896))))

(declare-fun b!7139710 () Bool)

(assert (=> b!7139710 (= e!4290813 (getWitness!1917 (t!383409 lt!2566896) lambda!434368))))

(declare-fun b!7139713 () Bool)

(assert (=> b!7139713 (= e!4290811 (h!75716 lt!2566896))))

(declare-fun d!2227093 () Bool)

(assert (=> d!2227093 e!4290812))

(declare-fun res!2913220 () Bool)

(assert (=> d!2227093 (=> (not res!2913220) (not e!4290812))))

(declare-fun dynLambda!28180 (Int Regex!18157) Bool)

(assert (=> d!2227093 (= res!2913220 (dynLambda!28180 lambda!434368 lt!2566933))))

(assert (=> d!2227093 (= lt!2566933 e!4290811)))

(declare-fun c!1331424 () Bool)

(declare-fun e!4290808 () Bool)

(assert (=> d!2227093 (= c!1331424 e!4290808)))

(declare-fun res!2913225 () Bool)

(assert (=> d!2227093 (=> (not res!2913225) (not e!4290808))))

(assert (=> d!2227093 (= res!2913225 ((_ is Cons!69268) lt!2566896))))

(assert (=> d!2227093 (exists!3929 lt!2566896 lambda!434368)))

(assert (=> d!2227093 (= (getWitness!1917 lt!2566896 lambda!434368) lt!2566933)))

(declare-fun b!7139711 () Bool)

(assert (=> b!7139711 (= e!4290808 (dynLambda!28180 lambda!434368 (h!75716 lt!2566896)))))

(assert (= (and d!2227093 res!2913225) b!7139711))

(assert (= (and d!2227093 c!1331424) b!7139713))

(assert (= (and d!2227093 (not c!1331424)) b!7139706))

(assert (= (and b!7139706 c!1331422) b!7139710))

(assert (= (and b!7139706 (not c!1331422)) b!7139708))

(assert (= (and d!2227093 res!2913220) b!7139705))

(declare-fun b_lambda!272497 () Bool)

(assert (=> (not b_lambda!272497) (not d!2227093)))

(declare-fun b_lambda!272499 () Bool)

(assert (=> (not b_lambda!272499) (not b!7139711)))

(declare-fun m!7854854 () Bool)

(assert (=> b!7139711 m!7854854))

(declare-fun m!7854858 () Bool)

(assert (=> b!7139708 m!7854858))

(declare-fun m!7854860 () Bool)

(assert (=> b!7139710 m!7854860))

(declare-fun m!7854864 () Bool)

(assert (=> b!7139705 m!7854864))

(declare-fun m!7854866 () Bool)

(assert (=> d!2227093 m!7854866))

(assert (=> d!2227093 m!7854756))

(assert (=> b!7139604 d!2227093))

(declare-fun bs!1888122 () Bool)

(declare-fun d!2227097 () Bool)

(assert (= bs!1888122 (and d!2227097 d!2227063)))

(declare-fun lambda!434395 () Int)

(assert (=> bs!1888122 (= lambda!434395 lambda!434379)))

(declare-fun bs!1888123 () Bool)

(assert (= bs!1888123 (and d!2227097 d!2227069)))

(assert (=> bs!1888123 (= lambda!434395 lambda!434387)))

(declare-fun bs!1888124 () Bool)

(assert (= bs!1888124 (and d!2227097 b!7139606)))

(assert (=> bs!1888124 (not (= lambda!434395 lambda!434368))))

(declare-fun bs!1888125 () Bool)

(assert (= bs!1888125 (and d!2227097 d!2227057)))

(assert (=> bs!1888125 (not (= lambda!434395 lambda!434371))))

(assert (=> bs!1888122 (not (= lambda!434395 lambda!434380))))

(declare-fun b!7139770 () Bool)

(declare-fun e!4290846 () Bool)

(declare-fun isEmpty!40060 (List!69392) Bool)

(assert (=> b!7139770 (= e!4290846 (isEmpty!40060 (t!383409 lt!2566896)))))

(declare-fun b!7139771 () Bool)

(declare-fun e!4290849 () Regex!18157)

(declare-fun e!4290845 () Regex!18157)

(assert (=> b!7139771 (= e!4290849 e!4290845)))

(declare-fun c!1331447 () Bool)

(assert (=> b!7139771 (= c!1331447 ((_ is Cons!69268) lt!2566896))))

(declare-fun b!7139772 () Bool)

(declare-fun e!4290848 () Bool)

(declare-fun lt!2566940 () Regex!18157)

(declare-fun isEmptyLang!2092 (Regex!18157) Bool)

(assert (=> b!7139772 (= e!4290848 (isEmptyLang!2092 lt!2566940))))

(declare-fun b!7139773 () Bool)

(assert (=> b!7139773 (= e!4290849 (h!75716 lt!2566896))))

(declare-fun b!7139774 () Bool)

(declare-fun e!4290850 () Bool)

(assert (=> b!7139774 (= e!4290850 (= lt!2566940 (head!14501 lt!2566896)))))

(declare-fun b!7139775 () Bool)

(declare-fun isUnion!1520 (Regex!18157) Bool)

(assert (=> b!7139775 (= e!4290850 (isUnion!1520 lt!2566940))))

(declare-fun b!7139777 () Bool)

(declare-fun e!4290847 () Bool)

(assert (=> b!7139777 (= e!4290847 e!4290848)))

(declare-fun c!1331448 () Bool)

(assert (=> b!7139777 (= c!1331448 (isEmpty!40060 lt!2566896))))

(assert (=> d!2227097 e!4290847))

(declare-fun res!2913236 () Bool)

(assert (=> d!2227097 (=> (not res!2913236) (not e!4290847))))

(assert (=> d!2227097 (= res!2913236 (validRegex!9324 lt!2566940))))

(assert (=> d!2227097 (= lt!2566940 e!4290849)))

(declare-fun c!1331445 () Bool)

(assert (=> d!2227097 (= c!1331445 e!4290846)))

(declare-fun res!2913237 () Bool)

(assert (=> d!2227097 (=> (not res!2913237) (not e!4290846))))

(assert (=> d!2227097 (= res!2913237 ((_ is Cons!69268) lt!2566896))))

(assert (=> d!2227097 (forall!16990 lt!2566896 lambda!434395)))

(assert (=> d!2227097 (= (generalisedUnion!2662 lt!2566896) lt!2566940)))

(declare-fun b!7139776 () Bool)

(assert (=> b!7139776 (= e!4290848 e!4290850)))

(declare-fun c!1331446 () Bool)

(declare-fun tail!13971 (List!69392) List!69392)

(assert (=> b!7139776 (= c!1331446 (isEmpty!40060 (tail!13971 lt!2566896)))))

(declare-fun b!7139778 () Bool)

(assert (=> b!7139778 (= e!4290845 (Union!18157 (h!75716 lt!2566896) (generalisedUnion!2662 (t!383409 lt!2566896))))))

(declare-fun b!7139779 () Bool)

(assert (=> b!7139779 (= e!4290845 EmptyLang!18157)))

(assert (= (and d!2227097 res!2913237) b!7139770))

(assert (= (and d!2227097 c!1331445) b!7139773))

(assert (= (and d!2227097 (not c!1331445)) b!7139771))

(assert (= (and b!7139771 c!1331447) b!7139778))

(assert (= (and b!7139771 (not c!1331447)) b!7139779))

(assert (= (and d!2227097 res!2913236) b!7139777))

(assert (= (and b!7139777 c!1331448) b!7139772))

(assert (= (and b!7139777 (not c!1331448)) b!7139776))

(assert (= (and b!7139776 c!1331446) b!7139774))

(assert (= (and b!7139776 (not c!1331446)) b!7139775))

(declare-fun m!7854886 () Bool)

(assert (=> b!7139776 m!7854886))

(assert (=> b!7139776 m!7854886))

(declare-fun m!7854888 () Bool)

(assert (=> b!7139776 m!7854888))

(declare-fun m!7854890 () Bool)

(assert (=> b!7139778 m!7854890))

(declare-fun m!7854892 () Bool)

(assert (=> b!7139772 m!7854892))

(declare-fun m!7854894 () Bool)

(assert (=> d!2227097 m!7854894))

(declare-fun m!7854896 () Bool)

(assert (=> d!2227097 m!7854896))

(declare-fun m!7854898 () Bool)

(assert (=> b!7139775 m!7854898))

(assert (=> b!7139774 m!7854858))

(declare-fun m!7854900 () Bool)

(assert (=> b!7139770 m!7854900))

(declare-fun m!7854902 () Bool)

(assert (=> b!7139777 m!7854902))

(assert (=> b!7139603 d!2227097))

(declare-fun bs!1888130 () Bool)

(declare-fun d!2227101 () Bool)

(assert (= bs!1888130 (and d!2227101 d!2227063)))

(declare-fun lambda!434401 () Int)

(assert (=> bs!1888130 (= lambda!434401 lambda!434379)))

(declare-fun bs!1888131 () Bool)

(assert (= bs!1888131 (and d!2227101 d!2227097)))

(assert (=> bs!1888131 (= lambda!434401 lambda!434395)))

(declare-fun bs!1888132 () Bool)

(assert (= bs!1888132 (and d!2227101 d!2227069)))

(assert (=> bs!1888132 (= lambda!434401 lambda!434387)))

(declare-fun bs!1888133 () Bool)

(assert (= bs!1888133 (and d!2227101 b!7139606)))

(assert (=> bs!1888133 (not (= lambda!434401 lambda!434368))))

(declare-fun bs!1888134 () Bool)

(assert (= bs!1888134 (and d!2227101 d!2227057)))

(assert (=> bs!1888134 (not (= lambda!434401 lambda!434371))))

(assert (=> bs!1888130 (not (= lambda!434401 lambda!434380))))

(declare-fun lt!2566946 () List!69392)

(assert (=> d!2227101 (forall!16990 lt!2566946 lambda!434401)))

(declare-fun e!4290856 () List!69392)

(assert (=> d!2227101 (= lt!2566946 e!4290856)))

(declare-fun c!1331454 () Bool)

(assert (=> d!2227101 (= c!1331454 ((_ is Cons!69269) lt!2566895))))

(assert (=> d!2227101 (= (unfocusZipperList!2198 lt!2566895) lt!2566946)))

(declare-fun b!7139790 () Bool)

(declare-fun generalisedConcat!2342 (List!69392) Regex!18157)

(assert (=> b!7139790 (= e!4290856 (Cons!69268 (generalisedConcat!2342 (exprs!7651 (h!75717 lt!2566895))) (unfocusZipperList!2198 (t!383410 lt!2566895))))))

(declare-fun b!7139791 () Bool)

(assert (=> b!7139791 (= e!4290856 Nil!69268)))

(assert (= (and d!2227101 c!1331454) b!7139790))

(assert (= (and d!2227101 (not c!1331454)) b!7139791))

(declare-fun m!7854910 () Bool)

(assert (=> d!2227101 m!7854910))

(declare-fun m!7854912 () Bool)

(assert (=> b!7139790 m!7854912))

(declare-fun m!7854914 () Bool)

(assert (=> b!7139790 m!7854914))

(assert (=> b!7139603 d!2227101))

(declare-fun b!7139805 () Bool)

(declare-fun e!4290859 () Bool)

(declare-fun tp!1968933 () Bool)

(declare-fun tp!1968934 () Bool)

(assert (=> b!7139805 (= e!4290859 (and tp!1968933 tp!1968934))))

(assert (=> b!7139598 (= tp!1968917 e!4290859)))

(declare-fun b!7139802 () Bool)

(assert (=> b!7139802 (= e!4290859 tp_is_empty!45951)))

(declare-fun b!7139803 () Bool)

(declare-fun tp!1968930 () Bool)

(declare-fun tp!1968931 () Bool)

(assert (=> b!7139803 (= e!4290859 (and tp!1968930 tp!1968931))))

(declare-fun b!7139804 () Bool)

(declare-fun tp!1968932 () Bool)

(assert (=> b!7139804 (= e!4290859 tp!1968932)))

(assert (= (and b!7139598 ((_ is ElementMatch!18157) (regOne!36826 r!11483))) b!7139802))

(assert (= (and b!7139598 ((_ is Concat!27002) (regOne!36826 r!11483))) b!7139803))

(assert (= (and b!7139598 ((_ is Star!18157) (regOne!36826 r!11483))) b!7139804))

(assert (= (and b!7139598 ((_ is Union!18157) (regOne!36826 r!11483))) b!7139805))

(declare-fun b!7139811 () Bool)

(declare-fun e!4290860 () Bool)

(declare-fun tp!1968938 () Bool)

(declare-fun tp!1968939 () Bool)

(assert (=> b!7139811 (= e!4290860 (and tp!1968938 tp!1968939))))

(assert (=> b!7139598 (= tp!1968919 e!4290860)))

(declare-fun b!7139808 () Bool)

(assert (=> b!7139808 (= e!4290860 tp_is_empty!45951)))

(declare-fun b!7139809 () Bool)

(declare-fun tp!1968935 () Bool)

(declare-fun tp!1968936 () Bool)

(assert (=> b!7139809 (= e!4290860 (and tp!1968935 tp!1968936))))

(declare-fun b!7139810 () Bool)

(declare-fun tp!1968937 () Bool)

(assert (=> b!7139810 (= e!4290860 tp!1968937)))

(assert (= (and b!7139598 ((_ is ElementMatch!18157) (regTwo!36826 r!11483))) b!7139808))

(assert (= (and b!7139598 ((_ is Concat!27002) (regTwo!36826 r!11483))) b!7139809))

(assert (= (and b!7139598 ((_ is Star!18157) (regTwo!36826 r!11483))) b!7139810))

(assert (= (and b!7139598 ((_ is Union!18157) (regTwo!36826 r!11483))) b!7139811))

(declare-fun condSetEmpty!52504 () Bool)

(assert (=> setNonEmpty!52501 (= condSetEmpty!52504 (= setRest!52501 ((as const (Array Context!14302 Bool)) false)))))

(declare-fun setRes!52504 () Bool)

(assert (=> setNonEmpty!52501 (= tp!1968916 setRes!52504)))

(declare-fun setIsEmpty!52504 () Bool)

(assert (=> setIsEmpty!52504 setRes!52504))

(declare-fun e!4290866 () Bool)

(declare-fun setElem!52504 () Context!14302)

(declare-fun tp!1968960 () Bool)

(declare-fun setNonEmpty!52504 () Bool)

(assert (=> setNonEmpty!52504 (= setRes!52504 (and tp!1968960 (inv!88456 setElem!52504) e!4290866))))

(declare-fun setRest!52504 () (InoxSet Context!14302))

(assert (=> setNonEmpty!52504 (= setRest!52501 ((_ map or) (store ((as const (Array Context!14302 Bool)) false) setElem!52504 true) setRest!52504))))

(declare-fun b!7139828 () Bool)

(declare-fun tp!1968959 () Bool)

(assert (=> b!7139828 (= e!4290866 tp!1968959)))

(assert (= (and setNonEmpty!52501 condSetEmpty!52504) setIsEmpty!52504))

(assert (= (and setNonEmpty!52501 (not condSetEmpty!52504)) setNonEmpty!52504))

(assert (= setNonEmpty!52504 b!7139828))

(declare-fun m!7854918 () Bool)

(assert (=> setNonEmpty!52504 m!7854918))

(declare-fun b!7139836 () Bool)

(declare-fun e!4290868 () Bool)

(declare-fun tp!1968969 () Bool)

(declare-fun tp!1968970 () Bool)

(assert (=> b!7139836 (= e!4290868 (and tp!1968969 tp!1968970))))

(assert (=> b!7139602 (= tp!1968918 e!4290868)))

(declare-fun b!7139833 () Bool)

(assert (=> b!7139833 (= e!4290868 tp_is_empty!45951)))

(declare-fun b!7139834 () Bool)

(declare-fun tp!1968966 () Bool)

(declare-fun tp!1968967 () Bool)

(assert (=> b!7139834 (= e!4290868 (and tp!1968966 tp!1968967))))

(declare-fun b!7139835 () Bool)

(declare-fun tp!1968968 () Bool)

(assert (=> b!7139835 (= e!4290868 tp!1968968)))

(assert (= (and b!7139602 ((_ is ElementMatch!18157) (reg!18486 r!11483))) b!7139833))

(assert (= (and b!7139602 ((_ is Concat!27002) (reg!18486 r!11483))) b!7139834))

(assert (= (and b!7139602 ((_ is Star!18157) (reg!18486 r!11483))) b!7139835))

(assert (= (and b!7139602 ((_ is Union!18157) (reg!18486 r!11483))) b!7139836))

(declare-fun b!7139848 () Bool)

(declare-fun e!4290872 () Bool)

(declare-fun tp!1968979 () Bool)

(declare-fun tp!1968980 () Bool)

(assert (=> b!7139848 (= e!4290872 (and tp!1968979 tp!1968980))))

(assert (=> b!7139600 (= tp!1968914 e!4290872)))

(declare-fun b!7139845 () Bool)

(assert (=> b!7139845 (= e!4290872 tp_is_empty!45951)))

(declare-fun b!7139846 () Bool)

(declare-fun tp!1968976 () Bool)

(declare-fun tp!1968977 () Bool)

(assert (=> b!7139846 (= e!4290872 (and tp!1968976 tp!1968977))))

(declare-fun b!7139847 () Bool)

(declare-fun tp!1968978 () Bool)

(assert (=> b!7139847 (= e!4290872 tp!1968978)))

(assert (= (and b!7139600 ((_ is ElementMatch!18157) (regOne!36827 r!11483))) b!7139845))

(assert (= (and b!7139600 ((_ is Concat!27002) (regOne!36827 r!11483))) b!7139846))

(assert (= (and b!7139600 ((_ is Star!18157) (regOne!36827 r!11483))) b!7139847))

(assert (= (and b!7139600 ((_ is Union!18157) (regOne!36827 r!11483))) b!7139848))

(declare-fun b!7139852 () Bool)

(declare-fun e!4290873 () Bool)

(declare-fun tp!1968988 () Bool)

(declare-fun tp!1968989 () Bool)

(assert (=> b!7139852 (= e!4290873 (and tp!1968988 tp!1968989))))

(assert (=> b!7139600 (= tp!1968915 e!4290873)))

(declare-fun b!7139849 () Bool)

(assert (=> b!7139849 (= e!4290873 tp_is_empty!45951)))

(declare-fun b!7139850 () Bool)

(declare-fun tp!1968985 () Bool)

(declare-fun tp!1968986 () Bool)

(assert (=> b!7139850 (= e!4290873 (and tp!1968985 tp!1968986))))

(declare-fun b!7139851 () Bool)

(declare-fun tp!1968987 () Bool)

(assert (=> b!7139851 (= e!4290873 tp!1968987)))

(assert (= (and b!7139600 ((_ is ElementMatch!18157) (regTwo!36827 r!11483))) b!7139849))

(assert (= (and b!7139600 ((_ is Concat!27002) (regTwo!36827 r!11483))) b!7139850))

(assert (= (and b!7139600 ((_ is Star!18157) (regTwo!36827 r!11483))) b!7139851))

(assert (= (and b!7139600 ((_ is Union!18157) (regTwo!36827 r!11483))) b!7139852))

(declare-fun b!7139866 () Bool)

(declare-fun e!4290879 () Bool)

(declare-fun tp!1969006 () Bool)

(declare-fun tp!1969007 () Bool)

(assert (=> b!7139866 (= e!4290879 (and tp!1969006 tp!1969007))))

(assert (=> b!7139599 (= tp!1968913 e!4290879)))

(assert (= (and b!7139599 ((_ is Cons!69268) (exprs!7651 setElem!52501))) b!7139866))

(declare-fun b_lambda!272501 () Bool)

(assert (= b_lambda!272499 (or b!7139606 b_lambda!272501)))

(declare-fun bs!1888141 () Bool)

(declare-fun d!2227105 () Bool)

(assert (= bs!1888141 (and d!2227105 b!7139606)))

(assert (=> bs!1888141 (= (dynLambda!28180 lambda!434368 (h!75716 lt!2566896)) (nullable!7676 (h!75716 lt!2566896)))))

(declare-fun m!7854920 () Bool)

(assert (=> bs!1888141 m!7854920))

(assert (=> b!7139711 d!2227105))

(declare-fun b_lambda!272503 () Bool)

(assert (= b_lambda!272497 (or b!7139606 b_lambda!272503)))

(declare-fun bs!1888142 () Bool)

(declare-fun d!2227107 () Bool)

(assert (= bs!1888142 (and d!2227107 b!7139606)))

(assert (=> bs!1888142 (= (dynLambda!28180 lambda!434368 lt!2566933) (nullable!7676 lt!2566933))))

(declare-fun m!7854922 () Bool)

(assert (=> bs!1888142 m!7854922))

(assert (=> d!2227093 d!2227107))

(check-sat (not b!7139673) (not b!7139809) (not b!7139834) (not bm!651122) (not b!7139803) (not b!7139772) (not b!7139810) (not b!7139775) (not b!7139851) (not b!7139777) (not d!2227057) (not bm!651120) (not bs!1888141) (not bs!1888142) (not b_lambda!272501) (not b!7139828) (not d!2227101) (not b!7139805) (not b!7139708) (not d!2227077) (not d!2227085) (not b!7139852) (not b!7139774) (not b!7139804) (not b!7139778) (not b!7139666) (not d!2227069) (not b!7139835) (not b!7139710) (not b!7139847) (not b!7139790) (not b!7139850) (not d!2227063) (not b!7139811) (not b!7139705) (not b!7139848) (not d!2227059) (not d!2227089) (not d!2227097) (not b!7139846) tp_is_empty!45951 (not b!7139649) (not d!2227081) (not b!7139836) (not d!2227093) (not setNonEmpty!52504) (not b_lambda!272503) (not b!7139776) (not b!7139770) (not b!7139866))
(check-sat)
