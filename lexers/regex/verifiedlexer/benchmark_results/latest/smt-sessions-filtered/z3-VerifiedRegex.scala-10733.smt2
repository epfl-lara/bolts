; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549158 () Bool)

(assert start!549158)

(declare-fun b!5186539 () Bool)

(declare-fun e!3230977 () Bool)

(declare-fun tp!1455232 () Bool)

(assert (=> b!5186539 (= e!3230977 tp!1455232)))

(declare-fun b!5186540 () Bool)

(declare-fun e!3230975 () Bool)

(declare-fun e!3230981 () Bool)

(assert (=> b!5186540 (= e!3230975 e!3230981)))

(declare-fun res!2203183 () Bool)

(assert (=> b!5186540 (=> res!2203183 e!3230981)))

(declare-fun lt!2136679 () Bool)

(declare-fun lt!2136678 () Bool)

(declare-fun lt!2136682 () Bool)

(declare-datatypes ((C!29696 0))(
  ( (C!29697 (val!24550 Int)) )
))
(declare-datatypes ((List!60438 0))(
  ( (Nil!60314) (Cons!60314 (h!66762 C!29696) (t!373591 List!60438)) )
))
(declare-fun s!2326 () List!60438)

(get-info :version)

(assert (=> b!5186540 (= res!2203183 (or (not (= lt!2136682 (or lt!2136679 lt!2136678))) ((_ is Nil!60314) s!2326)))))

(declare-datatypes ((Regex!14713 0))(
  ( (ElementMatch!14713 (c!893778 C!29696)) (Concat!23558 (regOne!29938 Regex!14713) (regTwo!29938 Regex!14713)) (EmptyExpr!14713) (Star!14713 (reg!15042 Regex!14713)) (EmptyLang!14713) (Union!14713 (regOne!29939 Regex!14713) (regTwo!29939 Regex!14713)) )
))
(declare-fun r!7292 () Regex!14713)

(declare-fun matchRSpec!1816 (Regex!14713 List!60438) Bool)

(assert (=> b!5186540 (= lt!2136678 (matchRSpec!1816 (regTwo!29939 r!7292) s!2326))))

(declare-fun matchR!6898 (Regex!14713 List!60438) Bool)

(assert (=> b!5186540 (= lt!2136678 (matchR!6898 (regTwo!29939 r!7292) s!2326))))

(declare-datatypes ((Unit!152260 0))(
  ( (Unit!152261) )
))
(declare-fun lt!2136680 () Unit!152260)

(declare-fun mainMatchTheorem!1816 (Regex!14713 List!60438) Unit!152260)

(assert (=> b!5186540 (= lt!2136680 (mainMatchTheorem!1816 (regTwo!29939 r!7292) s!2326))))

(assert (=> b!5186540 (= lt!2136679 (matchRSpec!1816 (regOne!29939 r!7292) s!2326))))

(assert (=> b!5186540 (= lt!2136679 (matchR!6898 (regOne!29939 r!7292) s!2326))))

(declare-fun lt!2136683 () Unit!152260)

(assert (=> b!5186540 (= lt!2136683 (mainMatchTheorem!1816 (regOne!29939 r!7292) s!2326))))

(declare-fun b!5186541 () Bool)

(declare-fun e!3230978 () Bool)

(declare-fun tp_is_empty!38679 () Bool)

(declare-fun tp!1455229 () Bool)

(assert (=> b!5186541 (= e!3230978 (and tp_is_empty!38679 tp!1455229))))

(declare-fun b!5186542 () Bool)

(declare-fun res!2203184 () Bool)

(assert (=> b!5186542 (=> res!2203184 e!3230975)))

(declare-datatypes ((List!60439 0))(
  ( (Nil!60315) (Cons!60315 (h!66763 Regex!14713) (t!373592 List!60439)) )
))
(declare-datatypes ((Context!8194 0))(
  ( (Context!8195 (exprs!4597 List!60439)) )
))
(declare-datatypes ((List!60440 0))(
  ( (Nil!60316) (Cons!60316 (h!66764 Context!8194) (t!373593 List!60440)) )
))
(declare-fun zl!343 () List!60440)

(declare-fun generalisedConcat!382 (List!60439) Regex!14713)

(assert (=> b!5186542 (= res!2203184 (not (= r!7292 (generalisedConcat!382 (exprs!4597 (h!66764 zl!343))))))))

(declare-fun b!5186543 () Bool)

(declare-fun res!2203178 () Bool)

(declare-fun e!3230980 () Bool)

(assert (=> b!5186543 (=> (not res!2203178) (not e!3230980))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8194))

(declare-fun toList!8497 ((InoxSet Context!8194)) List!60440)

(assert (=> b!5186543 (= res!2203178 (= (toList!8497 z!1189) zl!343))))

(declare-fun b!5186544 () Bool)

(declare-fun res!2203177 () Bool)

(assert (=> b!5186544 (=> res!2203177 e!3230975)))

(declare-fun isEmpty!32278 (List!60440) Bool)

(assert (=> b!5186544 (= res!2203177 (not (isEmpty!32278 (t!373593 zl!343))))))

(declare-fun b!5186545 () Bool)

(declare-fun res!2203180 () Bool)

(assert (=> b!5186545 (=> res!2203180 e!3230975)))

(assert (=> b!5186545 (= res!2203180 (not ((_ is Cons!60315) (exprs!4597 (h!66764 zl!343)))))))

(declare-fun setIsEmpty!32698 () Bool)

(declare-fun setRes!32698 () Bool)

(assert (=> setIsEmpty!32698 setRes!32698))

(declare-fun b!5186546 () Bool)

(declare-fun res!2203176 () Bool)

(assert (=> b!5186546 (=> (not res!2203176) (not e!3230980))))

(declare-fun unfocusZipper!455 (List!60440) Regex!14713)

(assert (=> b!5186546 (= res!2203176 (= r!7292 (unfocusZipper!455 zl!343)))))

(declare-fun b!5186547 () Bool)

(assert (=> b!5186547 (= e!3230980 (not e!3230975))))

(declare-fun res!2203186 () Bool)

(assert (=> b!5186547 (=> res!2203186 e!3230975)))

(assert (=> b!5186547 (= res!2203186 (not ((_ is Cons!60316) zl!343)))))

(assert (=> b!5186547 (= lt!2136682 (matchRSpec!1816 r!7292 s!2326))))

(assert (=> b!5186547 (= lt!2136682 (matchR!6898 r!7292 s!2326))))

(declare-fun lt!2136681 () Unit!152260)

(assert (=> b!5186547 (= lt!2136681 (mainMatchTheorem!1816 r!7292 s!2326))))

(declare-fun b!5186548 () Bool)

(declare-fun e!3230974 () Bool)

(declare-fun tp!1455235 () Bool)

(declare-fun tp!1455228 () Bool)

(assert (=> b!5186548 (= e!3230974 (and tp!1455235 tp!1455228))))

(declare-fun res!2203181 () Bool)

(assert (=> start!549158 (=> (not res!2203181) (not e!3230980))))

(declare-fun validRegex!6449 (Regex!14713) Bool)

(assert (=> start!549158 (= res!2203181 (validRegex!6449 r!7292))))

(assert (=> start!549158 e!3230980))

(assert (=> start!549158 e!3230974))

(declare-fun condSetEmpty!32698 () Bool)

(assert (=> start!549158 (= condSetEmpty!32698 (= z!1189 ((as const (Array Context!8194 Bool)) false)))))

(assert (=> start!549158 setRes!32698))

(declare-fun e!3230976 () Bool)

(assert (=> start!549158 e!3230976))

(assert (=> start!549158 e!3230978))

(declare-fun setElem!32698 () Context!8194)

(declare-fun tp!1455230 () Bool)

(declare-fun setNonEmpty!32698 () Bool)

(declare-fun e!3230979 () Bool)

(declare-fun inv!80029 (Context!8194) Bool)

(assert (=> setNonEmpty!32698 (= setRes!32698 (and tp!1455230 (inv!80029 setElem!32698) e!3230979))))

(declare-fun setRest!32698 () (InoxSet Context!8194))

(assert (=> setNonEmpty!32698 (= z!1189 ((_ map or) (store ((as const (Array Context!8194 Bool)) false) setElem!32698 true) setRest!32698))))

(declare-fun tp!1455231 () Bool)

(declare-fun b!5186549 () Bool)

(assert (=> b!5186549 (= e!3230976 (and (inv!80029 (h!66764 zl!343)) e!3230977 tp!1455231))))

(declare-fun b!5186550 () Bool)

(assert (=> b!5186550 (= e!3230974 tp_is_empty!38679)))

(declare-fun b!5186551 () Bool)

(declare-fun res!2203179 () Bool)

(assert (=> b!5186551 (=> res!2203179 e!3230975)))

(assert (=> b!5186551 (= res!2203179 (or ((_ is EmptyExpr!14713) r!7292) ((_ is EmptyLang!14713) r!7292) ((_ is ElementMatch!14713) r!7292) (not ((_ is Union!14713) r!7292))))))

(declare-fun b!5186552 () Bool)

(declare-fun res!2203182 () Bool)

(assert (=> b!5186552 (=> res!2203182 e!3230975)))

(declare-fun generalisedUnion!642 (List!60439) Regex!14713)

(declare-fun unfocusZipperList!155 (List!60440) List!60439)

(assert (=> b!5186552 (= res!2203182 (not (= r!7292 (generalisedUnion!642 (unfocusZipperList!155 zl!343)))))))

(declare-fun b!5186553 () Bool)

(assert (=> b!5186553 (= e!3230981 (validRegex!6449 (regOne!29939 r!7292)))))

(declare-fun b!5186554 () Bool)

(declare-fun tp!1455234 () Bool)

(assert (=> b!5186554 (= e!3230974 tp!1455234)))

(declare-fun b!5186555 () Bool)

(declare-fun tp!1455233 () Bool)

(assert (=> b!5186555 (= e!3230979 tp!1455233)))

(declare-fun b!5186556 () Bool)

(declare-fun res!2203185 () Bool)

(assert (=> b!5186556 (=> res!2203185 e!3230981)))

(declare-fun derivationStepZipperUp!103 (Context!8194 C!29696) (InoxSet Context!8194))

(declare-fun derivationStepZipperDown!182 (Regex!14713 Context!8194 C!29696) (InoxSet Context!8194))

(assert (=> b!5186556 (= res!2203185 (not (= (derivationStepZipperUp!103 (Context!8195 (Cons!60315 r!7292 Nil!60315)) (h!66762 s!2326)) (derivationStepZipperDown!182 r!7292 (Context!8195 Nil!60315) (h!66762 s!2326)))))))

(declare-fun b!5186557 () Bool)

(declare-fun tp!1455236 () Bool)

(declare-fun tp!1455237 () Bool)

(assert (=> b!5186557 (= e!3230974 (and tp!1455236 tp!1455237))))

(assert (= (and start!549158 res!2203181) b!5186543))

(assert (= (and b!5186543 res!2203178) b!5186546))

(assert (= (and b!5186546 res!2203176) b!5186547))

(assert (= (and b!5186547 (not res!2203186)) b!5186544))

(assert (= (and b!5186544 (not res!2203177)) b!5186542))

(assert (= (and b!5186542 (not res!2203184)) b!5186545))

(assert (= (and b!5186545 (not res!2203180)) b!5186552))

(assert (= (and b!5186552 (not res!2203182)) b!5186551))

(assert (= (and b!5186551 (not res!2203179)) b!5186540))

(assert (= (and b!5186540 (not res!2203183)) b!5186556))

(assert (= (and b!5186556 (not res!2203185)) b!5186553))

(assert (= (and start!549158 ((_ is ElementMatch!14713) r!7292)) b!5186550))

(assert (= (and start!549158 ((_ is Concat!23558) r!7292)) b!5186557))

(assert (= (and start!549158 ((_ is Star!14713) r!7292)) b!5186554))

(assert (= (and start!549158 ((_ is Union!14713) r!7292)) b!5186548))

(assert (= (and start!549158 condSetEmpty!32698) setIsEmpty!32698))

(assert (= (and start!549158 (not condSetEmpty!32698)) setNonEmpty!32698))

(assert (= setNonEmpty!32698 b!5186555))

(assert (= b!5186549 b!5186539))

(assert (= (and start!549158 ((_ is Cons!60316) zl!343)) b!5186549))

(assert (= (and start!549158 ((_ is Cons!60314) s!2326)) b!5186541))

(declare-fun m!6244764 () Bool)

(assert (=> b!5186553 m!6244764))

(declare-fun m!6244766 () Bool)

(assert (=> b!5186544 m!6244766))

(declare-fun m!6244768 () Bool)

(assert (=> b!5186547 m!6244768))

(declare-fun m!6244770 () Bool)

(assert (=> b!5186547 m!6244770))

(declare-fun m!6244772 () Bool)

(assert (=> b!5186547 m!6244772))

(declare-fun m!6244774 () Bool)

(assert (=> b!5186549 m!6244774))

(declare-fun m!6244776 () Bool)

(assert (=> b!5186556 m!6244776))

(declare-fun m!6244778 () Bool)

(assert (=> b!5186556 m!6244778))

(declare-fun m!6244780 () Bool)

(assert (=> b!5186540 m!6244780))

(declare-fun m!6244782 () Bool)

(assert (=> b!5186540 m!6244782))

(declare-fun m!6244784 () Bool)

(assert (=> b!5186540 m!6244784))

(declare-fun m!6244786 () Bool)

(assert (=> b!5186540 m!6244786))

(declare-fun m!6244788 () Bool)

(assert (=> b!5186540 m!6244788))

(declare-fun m!6244790 () Bool)

(assert (=> b!5186540 m!6244790))

(declare-fun m!6244792 () Bool)

(assert (=> setNonEmpty!32698 m!6244792))

(declare-fun m!6244794 () Bool)

(assert (=> b!5186546 m!6244794))

(declare-fun m!6244796 () Bool)

(assert (=> b!5186552 m!6244796))

(assert (=> b!5186552 m!6244796))

(declare-fun m!6244798 () Bool)

(assert (=> b!5186552 m!6244798))

(declare-fun m!6244800 () Bool)

(assert (=> start!549158 m!6244800))

(declare-fun m!6244802 () Bool)

(assert (=> b!5186543 m!6244802))

(declare-fun m!6244804 () Bool)

(assert (=> b!5186542 m!6244804))

(check-sat (not b!5186540) (not b!5186556) (not setNonEmpty!32698) (not b!5186553) (not b!5186554) (not b!5186544) (not b!5186547) (not b!5186542) (not b!5186546) (not b!5186549) (not b!5186548) (not b!5186557) (not b!5186539) tp_is_empty!38679 (not start!549158) (not b!5186543) (not b!5186541) (not b!5186555) (not b!5186552))
(check-sat)
(get-model)

(declare-fun d!1676234 () Bool)

(assert (=> d!1676234 (= (isEmpty!32278 (t!373593 zl!343)) ((_ is Nil!60316) (t!373593 zl!343)))))

(assert (=> b!5186544 d!1676234))

(declare-fun b!5186598 () Bool)

(declare-fun e!3231014 () Bool)

(declare-fun e!3231013 () Bool)

(assert (=> b!5186598 (= e!3231014 e!3231013)))

(declare-fun res!2203206 () Bool)

(declare-fun nullable!4912 (Regex!14713) Bool)

(assert (=> b!5186598 (= res!2203206 (not (nullable!4912 (reg!15042 (regOne!29939 r!7292)))))))

(assert (=> b!5186598 (=> (not res!2203206) (not e!3231013))))

(declare-fun b!5186599 () Bool)

(declare-fun e!3231010 () Bool)

(declare-fun call!364423 () Bool)

(assert (=> b!5186599 (= e!3231010 call!364423)))

(declare-fun bm!364417 () Bool)

(declare-fun c!893791 () Bool)

(assert (=> bm!364417 (= call!364423 (validRegex!6449 (ite c!893791 (regTwo!29939 (regOne!29939 r!7292)) (regTwo!29938 (regOne!29939 r!7292)))))))

(declare-fun b!5186600 () Bool)

(declare-fun e!3231011 () Bool)

(assert (=> b!5186600 (= e!3231011 call!364423)))

(declare-fun b!5186601 () Bool)

(declare-fun call!364422 () Bool)

(assert (=> b!5186601 (= e!3231013 call!364422)))

(declare-fun b!5186602 () Bool)

(declare-fun e!3231016 () Bool)

(assert (=> b!5186602 (= e!3231016 e!3231010)))

(declare-fun res!2203207 () Bool)

(assert (=> b!5186602 (=> (not res!2203207) (not e!3231010))))

(declare-fun call!364424 () Bool)

(assert (=> b!5186602 (= res!2203207 call!364424)))

(declare-fun b!5186604 () Bool)

(declare-fun e!3231012 () Bool)

(assert (=> b!5186604 (= e!3231012 e!3231014)))

(declare-fun c!893792 () Bool)

(assert (=> b!5186604 (= c!893792 ((_ is Star!14713) (regOne!29939 r!7292)))))

(declare-fun b!5186605 () Bool)

(declare-fun res!2203203 () Bool)

(assert (=> b!5186605 (=> (not res!2203203) (not e!3231011))))

(assert (=> b!5186605 (= res!2203203 call!364424)))

(declare-fun e!3231015 () Bool)

(assert (=> b!5186605 (= e!3231015 e!3231011)))

(declare-fun bm!364418 () Bool)

(assert (=> bm!364418 (= call!364424 call!364422)))

(declare-fun b!5186606 () Bool)

(declare-fun res!2203204 () Bool)

(assert (=> b!5186606 (=> res!2203204 e!3231016)))

(assert (=> b!5186606 (= res!2203204 (not ((_ is Concat!23558) (regOne!29939 r!7292))))))

(assert (=> b!5186606 (= e!3231015 e!3231016)))

(declare-fun bm!364419 () Bool)

(assert (=> bm!364419 (= call!364422 (validRegex!6449 (ite c!893792 (reg!15042 (regOne!29939 r!7292)) (ite c!893791 (regOne!29939 (regOne!29939 r!7292)) (regOne!29938 (regOne!29939 r!7292))))))))

(declare-fun d!1676236 () Bool)

(declare-fun res!2203205 () Bool)

(assert (=> d!1676236 (=> res!2203205 e!3231012)))

(assert (=> d!1676236 (= res!2203205 ((_ is ElementMatch!14713) (regOne!29939 r!7292)))))

(assert (=> d!1676236 (= (validRegex!6449 (regOne!29939 r!7292)) e!3231012)))

(declare-fun b!5186603 () Bool)

(assert (=> b!5186603 (= e!3231014 e!3231015)))

(assert (=> b!5186603 (= c!893791 ((_ is Union!14713) (regOne!29939 r!7292)))))

(assert (= (and d!1676236 (not res!2203205)) b!5186604))

(assert (= (and b!5186604 c!893792) b!5186598))

(assert (= (and b!5186604 (not c!893792)) b!5186603))

(assert (= (and b!5186598 res!2203206) b!5186601))

(assert (= (and b!5186603 c!893791) b!5186605))

(assert (= (and b!5186603 (not c!893791)) b!5186606))

(assert (= (and b!5186605 res!2203203) b!5186600))

(assert (= (and b!5186606 (not res!2203204)) b!5186602))

(assert (= (and b!5186602 res!2203207) b!5186599))

(assert (= (or b!5186600 b!5186599) bm!364417))

(assert (= (or b!5186605 b!5186602) bm!364418))

(assert (= (or b!5186601 bm!364418) bm!364419))

(declare-fun m!6244806 () Bool)

(assert (=> b!5186598 m!6244806))

(declare-fun m!6244808 () Bool)

(assert (=> bm!364417 m!6244808))

(declare-fun m!6244810 () Bool)

(assert (=> bm!364419 m!6244810))

(assert (=> b!5186553 d!1676236))

(declare-fun b!5186842 () Bool)

(declare-fun e!3231148 () Bool)

(declare-fun isEmpty!32280 (List!60439) Bool)

(assert (=> b!5186842 (= e!3231148 (isEmpty!32280 (t!373592 (unfocusZipperList!155 zl!343))))))

(declare-fun b!5186843 () Bool)

(declare-fun e!3231149 () Bool)

(declare-fun e!3231150 () Bool)

(assert (=> b!5186843 (= e!3231149 e!3231150)))

(declare-fun c!893870 () Bool)

(declare-fun tail!10199 (List!60439) List!60439)

(assert (=> b!5186843 (= c!893870 (isEmpty!32280 (tail!10199 (unfocusZipperList!155 zl!343))))))

(declare-fun b!5186844 () Bool)

(declare-fun lt!2136704 () Regex!14713)

(declare-fun head!11102 (List!60439) Regex!14713)

(assert (=> b!5186844 (= e!3231150 (= lt!2136704 (head!11102 (unfocusZipperList!155 zl!343))))))

(declare-fun b!5186845 () Bool)

(declare-fun e!3231147 () Regex!14713)

(assert (=> b!5186845 (= e!3231147 (Union!14713 (h!66763 (unfocusZipperList!155 zl!343)) (generalisedUnion!642 (t!373592 (unfocusZipperList!155 zl!343)))))))

(declare-fun b!5186846 () Bool)

(declare-fun e!3231146 () Bool)

(assert (=> b!5186846 (= e!3231146 e!3231149)))

(declare-fun c!893872 () Bool)

(assert (=> b!5186846 (= c!893872 (isEmpty!32280 (unfocusZipperList!155 zl!343)))))

(declare-fun b!5186847 () Bool)

(declare-fun e!3231151 () Regex!14713)

(assert (=> b!5186847 (= e!3231151 e!3231147)))

(declare-fun c!893871 () Bool)

(assert (=> b!5186847 (= c!893871 ((_ is Cons!60315) (unfocusZipperList!155 zl!343)))))

(declare-fun b!5186848 () Bool)

(assert (=> b!5186848 (= e!3231151 (h!66763 (unfocusZipperList!155 zl!343)))))

(declare-fun b!5186849 () Bool)

(assert (=> b!5186849 (= e!3231147 EmptyLang!14713)))

(declare-fun b!5186850 () Bool)

(declare-fun isUnion!169 (Regex!14713) Bool)

(assert (=> b!5186850 (= e!3231150 (isUnion!169 lt!2136704))))

(declare-fun b!5186851 () Bool)

(declare-fun isEmptyLang!737 (Regex!14713) Bool)

(assert (=> b!5186851 (= e!3231149 (isEmptyLang!737 lt!2136704))))

(declare-fun d!1676238 () Bool)

(assert (=> d!1676238 e!3231146))

(declare-fun res!2203287 () Bool)

(assert (=> d!1676238 (=> (not res!2203287) (not e!3231146))))

(assert (=> d!1676238 (= res!2203287 (validRegex!6449 lt!2136704))))

(assert (=> d!1676238 (= lt!2136704 e!3231151)))

(declare-fun c!893869 () Bool)

(assert (=> d!1676238 (= c!893869 e!3231148)))

(declare-fun res!2203288 () Bool)

(assert (=> d!1676238 (=> (not res!2203288) (not e!3231148))))

(assert (=> d!1676238 (= res!2203288 ((_ is Cons!60315) (unfocusZipperList!155 zl!343)))))

(declare-fun lambda!259305 () Int)

(declare-fun forall!14199 (List!60439 Int) Bool)

(assert (=> d!1676238 (forall!14199 (unfocusZipperList!155 zl!343) lambda!259305)))

(assert (=> d!1676238 (= (generalisedUnion!642 (unfocusZipperList!155 zl!343)) lt!2136704)))

(assert (= (and d!1676238 res!2203288) b!5186842))

(assert (= (and d!1676238 c!893869) b!5186848))

(assert (= (and d!1676238 (not c!893869)) b!5186847))

(assert (= (and b!5186847 c!893871) b!5186845))

(assert (= (and b!5186847 (not c!893871)) b!5186849))

(assert (= (and d!1676238 res!2203287) b!5186846))

(assert (= (and b!5186846 c!893872) b!5186851))

(assert (= (and b!5186846 (not c!893872)) b!5186843))

(assert (= (and b!5186843 c!893870) b!5186844))

(assert (= (and b!5186843 (not c!893870)) b!5186850))

(declare-fun m!6244898 () Bool)

(assert (=> b!5186842 m!6244898))

(declare-fun m!6244900 () Bool)

(assert (=> b!5186851 m!6244900))

(declare-fun m!6244902 () Bool)

(assert (=> b!5186845 m!6244902))

(assert (=> b!5186846 m!6244796))

(declare-fun m!6244904 () Bool)

(assert (=> b!5186846 m!6244904))

(assert (=> b!5186843 m!6244796))

(declare-fun m!6244906 () Bool)

(assert (=> b!5186843 m!6244906))

(assert (=> b!5186843 m!6244906))

(declare-fun m!6244908 () Bool)

(assert (=> b!5186843 m!6244908))

(assert (=> b!5186844 m!6244796))

(declare-fun m!6244910 () Bool)

(assert (=> b!5186844 m!6244910))

(declare-fun m!6244912 () Bool)

(assert (=> d!1676238 m!6244912))

(assert (=> d!1676238 m!6244796))

(declare-fun m!6244914 () Bool)

(assert (=> d!1676238 m!6244914))

(declare-fun m!6244918 () Bool)

(assert (=> b!5186850 m!6244918))

(assert (=> b!5186552 d!1676238))

(declare-fun bs!1208306 () Bool)

(declare-fun d!1676266 () Bool)

(assert (= bs!1208306 (and d!1676266 d!1676238)))

(declare-fun lambda!259312 () Int)

(assert (=> bs!1208306 (= lambda!259312 lambda!259305)))

(declare-fun lt!2136711 () List!60439)

(assert (=> d!1676266 (forall!14199 lt!2136711 lambda!259312)))

(declare-fun e!3231163 () List!60439)

(assert (=> d!1676266 (= lt!2136711 e!3231163)))

(declare-fun c!893882 () Bool)

(assert (=> d!1676266 (= c!893882 ((_ is Cons!60316) zl!343))))

(assert (=> d!1676266 (= (unfocusZipperList!155 zl!343) lt!2136711)))

(declare-fun b!5186872 () Bool)

(assert (=> b!5186872 (= e!3231163 (Cons!60315 (generalisedConcat!382 (exprs!4597 (h!66764 zl!343))) (unfocusZipperList!155 (t!373593 zl!343))))))

(declare-fun b!5186873 () Bool)

(assert (=> b!5186873 (= e!3231163 Nil!60315)))

(assert (= (and d!1676266 c!893882) b!5186872))

(assert (= (and d!1676266 (not c!893882)) b!5186873))

(declare-fun m!6244942 () Bool)

(assert (=> d!1676266 m!6244942))

(assert (=> b!5186872 m!6244804))

(declare-fun m!6244944 () Bool)

(assert (=> b!5186872 m!6244944))

(assert (=> b!5186552 d!1676266))

(declare-fun d!1676272 () Bool)

(declare-fun e!3231176 () Bool)

(assert (=> d!1676272 e!3231176))

(declare-fun res!2203299 () Bool)

(assert (=> d!1676272 (=> (not res!2203299) (not e!3231176))))

(declare-fun lt!2136714 () List!60440)

(declare-fun noDuplicate!1148 (List!60440) Bool)

(assert (=> d!1676272 (= res!2203299 (noDuplicate!1148 lt!2136714))))

(declare-fun choose!38537 ((InoxSet Context!8194)) List!60440)

(assert (=> d!1676272 (= lt!2136714 (choose!38537 z!1189))))

(assert (=> d!1676272 (= (toList!8497 z!1189) lt!2136714)))

(declare-fun b!5186890 () Bool)

(declare-fun content!10684 (List!60440) (InoxSet Context!8194))

(assert (=> b!5186890 (= e!3231176 (= (content!10684 lt!2136714) z!1189))))

(assert (= (and d!1676272 res!2203299) b!5186890))

(declare-fun m!6244946 () Bool)

(assert (=> d!1676272 m!6244946))

(declare-fun m!6244948 () Bool)

(assert (=> d!1676272 m!6244948))

(declare-fun m!6244950 () Bool)

(assert (=> b!5186890 m!6244950))

(assert (=> b!5186543 d!1676272))

(declare-fun bs!1208316 () Bool)

(declare-fun d!1676276 () Bool)

(assert (= bs!1208316 (and d!1676276 d!1676238)))

(declare-fun lambda!259319 () Int)

(assert (=> bs!1208316 (= lambda!259319 lambda!259305)))

(declare-fun bs!1208317 () Bool)

(assert (= bs!1208317 (and d!1676276 d!1676266)))

(assert (=> bs!1208317 (= lambda!259319 lambda!259312)))

(declare-fun b!5186926 () Bool)

(declare-fun e!3231202 () Regex!14713)

(assert (=> b!5186926 (= e!3231202 EmptyExpr!14713)))

(declare-fun b!5186927 () Bool)

(declare-fun e!3231207 () Regex!14713)

(assert (=> b!5186927 (= e!3231207 (h!66763 (exprs!4597 (h!66764 zl!343))))))

(declare-fun b!5186928 () Bool)

(declare-fun e!3231206 () Bool)

(declare-fun e!3231203 () Bool)

(assert (=> b!5186928 (= e!3231206 e!3231203)))

(declare-fun c!893897 () Bool)

(assert (=> b!5186928 (= c!893897 (isEmpty!32280 (exprs!4597 (h!66764 zl!343))))))

(declare-fun b!5186929 () Bool)

(declare-fun e!3231204 () Bool)

(declare-fun lt!2136719 () Regex!14713)

(assert (=> b!5186929 (= e!3231204 (= lt!2136719 (head!11102 (exprs!4597 (h!66764 zl!343)))))))

(declare-fun b!5186930 () Bool)

(assert (=> b!5186930 (= e!3231203 e!3231204)))

(declare-fun c!893900 () Bool)

(assert (=> b!5186930 (= c!893900 (isEmpty!32280 (tail!10199 (exprs!4597 (h!66764 zl!343)))))))

(assert (=> d!1676276 e!3231206))

(declare-fun res!2203315 () Bool)

(assert (=> d!1676276 (=> (not res!2203315) (not e!3231206))))

(assert (=> d!1676276 (= res!2203315 (validRegex!6449 lt!2136719))))

(assert (=> d!1676276 (= lt!2136719 e!3231207)))

(declare-fun c!893898 () Bool)

(declare-fun e!3231205 () Bool)

(assert (=> d!1676276 (= c!893898 e!3231205)))

(declare-fun res!2203316 () Bool)

(assert (=> d!1676276 (=> (not res!2203316) (not e!3231205))))

(assert (=> d!1676276 (= res!2203316 ((_ is Cons!60315) (exprs!4597 (h!66764 zl!343))))))

(assert (=> d!1676276 (forall!14199 (exprs!4597 (h!66764 zl!343)) lambda!259319)))

(assert (=> d!1676276 (= (generalisedConcat!382 (exprs!4597 (h!66764 zl!343))) lt!2136719)))

(declare-fun b!5186931 () Bool)

(declare-fun isConcat!250 (Regex!14713) Bool)

(assert (=> b!5186931 (= e!3231204 (isConcat!250 lt!2136719))))

(declare-fun b!5186932 () Bool)

(assert (=> b!5186932 (= e!3231205 (isEmpty!32280 (t!373592 (exprs!4597 (h!66764 zl!343)))))))

(declare-fun b!5186933 () Bool)

(assert (=> b!5186933 (= e!3231202 (Concat!23558 (h!66763 (exprs!4597 (h!66764 zl!343))) (generalisedConcat!382 (t!373592 (exprs!4597 (h!66764 zl!343))))))))

(declare-fun b!5186934 () Bool)

(declare-fun isEmptyExpr!727 (Regex!14713) Bool)

(assert (=> b!5186934 (= e!3231203 (isEmptyExpr!727 lt!2136719))))

(declare-fun b!5186935 () Bool)

(assert (=> b!5186935 (= e!3231207 e!3231202)))

(declare-fun c!893899 () Bool)

(assert (=> b!5186935 (= c!893899 ((_ is Cons!60315) (exprs!4597 (h!66764 zl!343))))))

(assert (= (and d!1676276 res!2203316) b!5186932))

(assert (= (and d!1676276 c!893898) b!5186927))

(assert (= (and d!1676276 (not c!893898)) b!5186935))

(assert (= (and b!5186935 c!893899) b!5186933))

(assert (= (and b!5186935 (not c!893899)) b!5186926))

(assert (= (and d!1676276 res!2203315) b!5186928))

(assert (= (and b!5186928 c!893897) b!5186934))

(assert (= (and b!5186928 (not c!893897)) b!5186930))

(assert (= (and b!5186930 c!893900) b!5186929))

(assert (= (and b!5186930 (not c!893900)) b!5186931))

(declare-fun m!6244968 () Bool)

(assert (=> b!5186934 m!6244968))

(declare-fun m!6244970 () Bool)

(assert (=> b!5186929 m!6244970))

(declare-fun m!6244972 () Bool)

(assert (=> b!5186928 m!6244972))

(declare-fun m!6244974 () Bool)

(assert (=> d!1676276 m!6244974))

(declare-fun m!6244976 () Bool)

(assert (=> d!1676276 m!6244976))

(declare-fun m!6244978 () Bool)

(assert (=> b!5186933 m!6244978))

(declare-fun m!6244980 () Bool)

(assert (=> b!5186932 m!6244980))

(declare-fun m!6244982 () Bool)

(assert (=> b!5186930 m!6244982))

(assert (=> b!5186930 m!6244982))

(declare-fun m!6244984 () Bool)

(assert (=> b!5186930 m!6244984))

(declare-fun m!6244988 () Bool)

(assert (=> b!5186931 m!6244988))

(assert (=> b!5186542 d!1676276))

(declare-fun b!5187032 () Bool)

(assert (=> b!5187032 true))

(assert (=> b!5187032 true))

(declare-fun bs!1208318 () Bool)

(declare-fun b!5187042 () Bool)

(assert (= bs!1208318 (and b!5187042 b!5187032)))

(declare-fun lambda!259325 () Int)

(declare-fun lambda!259324 () Int)

(assert (=> bs!1208318 (not (= lambda!259325 lambda!259324))))

(assert (=> b!5187042 true))

(assert (=> b!5187042 true))

(declare-fun e!3231263 () Bool)

(declare-fun call!364478 () Bool)

(assert (=> b!5187032 (= e!3231263 call!364478)))

(declare-fun b!5187033 () Bool)

(declare-fun e!3231260 () Bool)

(declare-fun e!3231262 () Bool)

(assert (=> b!5187033 (= e!3231260 e!3231262)))

(declare-fun res!2203341 () Bool)

(assert (=> b!5187033 (= res!2203341 (matchRSpec!1816 (regOne!29939 (regTwo!29939 r!7292)) s!2326))))

(assert (=> b!5187033 (=> res!2203341 e!3231262)))

(declare-fun d!1676286 () Bool)

(declare-fun c!893911 () Bool)

(assert (=> d!1676286 (= c!893911 ((_ is EmptyExpr!14713) (regTwo!29939 r!7292)))))

(declare-fun e!3231259 () Bool)

(assert (=> d!1676286 (= (matchRSpec!1816 (regTwo!29939 r!7292) s!2326) e!3231259)))

(declare-fun b!5187034 () Bool)

(declare-fun e!3231261 () Bool)

(assert (=> b!5187034 (= e!3231261 (= s!2326 (Cons!60314 (c!893778 (regTwo!29939 r!7292)) Nil!60314)))))

(declare-fun b!5187035 () Bool)

(assert (=> b!5187035 (= e!3231262 (matchRSpec!1816 (regTwo!29939 (regTwo!29939 r!7292)) s!2326))))

(declare-fun b!5187036 () Bool)

(declare-fun c!893914 () Bool)

(assert (=> b!5187036 (= c!893914 ((_ is Union!14713) (regTwo!29939 r!7292)))))

(assert (=> b!5187036 (= e!3231261 e!3231260)))

(declare-fun bm!364472 () Bool)

(declare-fun c!893913 () Bool)

(declare-fun Exists!1908 (Int) Bool)

(assert (=> bm!364472 (= call!364478 (Exists!1908 (ite c!893913 lambda!259324 lambda!259325)))))

(declare-fun b!5187037 () Bool)

(declare-fun res!2203339 () Bool)

(assert (=> b!5187037 (=> res!2203339 e!3231263)))

(declare-fun call!364477 () Bool)

(assert (=> b!5187037 (= res!2203339 call!364477)))

(declare-fun e!3231257 () Bool)

(assert (=> b!5187037 (= e!3231257 e!3231263)))

(declare-fun b!5187038 () Bool)

(declare-fun e!3231258 () Bool)

(assert (=> b!5187038 (= e!3231259 e!3231258)))

(declare-fun res!2203340 () Bool)

(assert (=> b!5187038 (= res!2203340 (not ((_ is EmptyLang!14713) (regTwo!29939 r!7292))))))

(assert (=> b!5187038 (=> (not res!2203340) (not e!3231258))))

(declare-fun b!5187039 () Bool)

(assert (=> b!5187039 (= e!3231259 call!364477)))

(declare-fun bm!364473 () Bool)

(declare-fun isEmpty!32282 (List!60438) Bool)

(assert (=> bm!364473 (= call!364477 (isEmpty!32282 s!2326))))

(declare-fun b!5187040 () Bool)

(assert (=> b!5187040 (= e!3231260 e!3231257)))

(assert (=> b!5187040 (= c!893913 ((_ is Star!14713) (regTwo!29939 r!7292)))))

(declare-fun b!5187041 () Bool)

(declare-fun c!893912 () Bool)

(assert (=> b!5187041 (= c!893912 ((_ is ElementMatch!14713) (regTwo!29939 r!7292)))))

(assert (=> b!5187041 (= e!3231258 e!3231261)))

(assert (=> b!5187042 (= e!3231257 call!364478)))

(assert (= (and d!1676286 c!893911) b!5187039))

(assert (= (and d!1676286 (not c!893911)) b!5187038))

(assert (= (and b!5187038 res!2203340) b!5187041))

(assert (= (and b!5187041 c!893912) b!5187034))

(assert (= (and b!5187041 (not c!893912)) b!5187036))

(assert (= (and b!5187036 c!893914) b!5187033))

(assert (= (and b!5187036 (not c!893914)) b!5187040))

(assert (= (and b!5187033 (not res!2203341)) b!5187035))

(assert (= (and b!5187040 c!893913) b!5187037))

(assert (= (and b!5187040 (not c!893913)) b!5187042))

(assert (= (and b!5187037 (not res!2203339)) b!5187032))

(assert (= (or b!5187032 b!5187042) bm!364472))

(assert (= (or b!5187039 b!5187037) bm!364473))

(declare-fun m!6244998 () Bool)

(assert (=> b!5187033 m!6244998))

(declare-fun m!6245000 () Bool)

(assert (=> b!5187035 m!6245000))

(declare-fun m!6245002 () Bool)

(assert (=> bm!364472 m!6245002))

(declare-fun m!6245004 () Bool)

(assert (=> bm!364473 m!6245004))

(assert (=> b!5186540 d!1676286))

(declare-fun d!1676288 () Bool)

(assert (=> d!1676288 (= (matchR!6898 (regOne!29939 r!7292) s!2326) (matchRSpec!1816 (regOne!29939 r!7292) s!2326))))

(declare-fun lt!2136723 () Unit!152260)

(declare-fun choose!38538 (Regex!14713 List!60438) Unit!152260)

(assert (=> d!1676288 (= lt!2136723 (choose!38538 (regOne!29939 r!7292) s!2326))))

(assert (=> d!1676288 (validRegex!6449 (regOne!29939 r!7292))))

(assert (=> d!1676288 (= (mainMatchTheorem!1816 (regOne!29939 r!7292) s!2326) lt!2136723)))

(declare-fun bs!1208319 () Bool)

(assert (= bs!1208319 d!1676288))

(assert (=> bs!1208319 m!6244790))

(assert (=> bs!1208319 m!6244786))

(declare-fun m!6245006 () Bool)

(assert (=> bs!1208319 m!6245006))

(assert (=> bs!1208319 m!6244764))

(assert (=> b!5186540 d!1676288))

(declare-fun b!5187075 () Bool)

(declare-fun e!3231284 () Bool)

(assert (=> b!5187075 (= e!3231284 (nullable!4912 (regTwo!29939 r!7292)))))

(declare-fun b!5187076 () Bool)

(declare-fun e!3231282 () Bool)

(declare-fun lt!2136726 () Bool)

(declare-fun call!364481 () Bool)

(assert (=> b!5187076 (= e!3231282 (= lt!2136726 call!364481))))

(declare-fun b!5187077 () Bool)

(declare-fun e!3231281 () Bool)

(declare-fun e!3231283 () Bool)

(assert (=> b!5187077 (= e!3231281 e!3231283)))

(declare-fun res!2203359 () Bool)

(assert (=> b!5187077 (=> res!2203359 e!3231283)))

(assert (=> b!5187077 (= res!2203359 call!364481)))

(declare-fun b!5187078 () Bool)

(declare-fun res!2203362 () Bool)

(declare-fun e!3231278 () Bool)

(assert (=> b!5187078 (=> (not res!2203362) (not e!3231278))))

(declare-fun tail!10201 (List!60438) List!60438)

(assert (=> b!5187078 (= res!2203362 (isEmpty!32282 (tail!10201 s!2326)))))

(declare-fun b!5187079 () Bool)

(declare-fun res!2203363 () Bool)

(declare-fun e!3231280 () Bool)

(assert (=> b!5187079 (=> res!2203363 e!3231280)))

(assert (=> b!5187079 (= res!2203363 (not ((_ is ElementMatch!14713) (regTwo!29939 r!7292))))))

(declare-fun e!3231279 () Bool)

(assert (=> b!5187079 (= e!3231279 e!3231280)))

(declare-fun b!5187080 () Bool)

(declare-fun res!2203361 () Bool)

(assert (=> b!5187080 (=> (not res!2203361) (not e!3231278))))

(assert (=> b!5187080 (= res!2203361 (not call!364481))))

(declare-fun b!5187081 () Bool)

(declare-fun head!11104 (List!60438) C!29696)

(assert (=> b!5187081 (= e!3231278 (= (head!11104 s!2326) (c!893778 (regTwo!29939 r!7292))))))

(declare-fun b!5187082 () Bool)

(declare-fun res!2203365 () Bool)

(assert (=> b!5187082 (=> res!2203365 e!3231283)))

(assert (=> b!5187082 (= res!2203365 (not (isEmpty!32282 (tail!10201 s!2326))))))

(declare-fun b!5187083 () Bool)

(assert (=> b!5187083 (= e!3231282 e!3231279)))

(declare-fun c!893922 () Bool)

(assert (=> b!5187083 (= c!893922 ((_ is EmptyLang!14713) (regTwo!29939 r!7292)))))

(declare-fun b!5187085 () Bool)

(assert (=> b!5187085 (= e!3231283 (not (= (head!11104 s!2326) (c!893778 (regTwo!29939 r!7292)))))))

(declare-fun b!5187086 () Bool)

(assert (=> b!5187086 (= e!3231279 (not lt!2136726))))

(declare-fun bm!364476 () Bool)

(assert (=> bm!364476 (= call!364481 (isEmpty!32282 s!2326))))

(declare-fun b!5187087 () Bool)

(declare-fun derivativeStep!4014 (Regex!14713 C!29696) Regex!14713)

(assert (=> b!5187087 (= e!3231284 (matchR!6898 (derivativeStep!4014 (regTwo!29939 r!7292) (head!11104 s!2326)) (tail!10201 s!2326)))))

(declare-fun b!5187088 () Bool)

(assert (=> b!5187088 (= e!3231280 e!3231281)))

(declare-fun res!2203364 () Bool)

(assert (=> b!5187088 (=> (not res!2203364) (not e!3231281))))

(assert (=> b!5187088 (= res!2203364 (not lt!2136726))))

(declare-fun d!1676290 () Bool)

(assert (=> d!1676290 e!3231282))

(declare-fun c!893921 () Bool)

(assert (=> d!1676290 (= c!893921 ((_ is EmptyExpr!14713) (regTwo!29939 r!7292)))))

(assert (=> d!1676290 (= lt!2136726 e!3231284)))

(declare-fun c!893923 () Bool)

(assert (=> d!1676290 (= c!893923 (isEmpty!32282 s!2326))))

(assert (=> d!1676290 (validRegex!6449 (regTwo!29939 r!7292))))

(assert (=> d!1676290 (= (matchR!6898 (regTwo!29939 r!7292) s!2326) lt!2136726)))

(declare-fun b!5187084 () Bool)

(declare-fun res!2203358 () Bool)

(assert (=> b!5187084 (=> res!2203358 e!3231280)))

(assert (=> b!5187084 (= res!2203358 e!3231278)))

(declare-fun res!2203360 () Bool)

(assert (=> b!5187084 (=> (not res!2203360) (not e!3231278))))

(assert (=> b!5187084 (= res!2203360 lt!2136726)))

(assert (= (and d!1676290 c!893923) b!5187075))

(assert (= (and d!1676290 (not c!893923)) b!5187087))

(assert (= (and d!1676290 c!893921) b!5187076))

(assert (= (and d!1676290 (not c!893921)) b!5187083))

(assert (= (and b!5187083 c!893922) b!5187086))

(assert (= (and b!5187083 (not c!893922)) b!5187079))

(assert (= (and b!5187079 (not res!2203363)) b!5187084))

(assert (= (and b!5187084 res!2203360) b!5187080))

(assert (= (and b!5187080 res!2203361) b!5187078))

(assert (= (and b!5187078 res!2203362) b!5187081))

(assert (= (and b!5187084 (not res!2203358)) b!5187088))

(assert (= (and b!5187088 res!2203364) b!5187077))

(assert (= (and b!5187077 (not res!2203359)) b!5187082))

(assert (= (and b!5187082 (not res!2203365)) b!5187085))

(assert (= (or b!5187076 b!5187077 b!5187080) bm!364476))

(declare-fun m!6245008 () Bool)

(assert (=> b!5187087 m!6245008))

(assert (=> b!5187087 m!6245008))

(declare-fun m!6245010 () Bool)

(assert (=> b!5187087 m!6245010))

(declare-fun m!6245012 () Bool)

(assert (=> b!5187087 m!6245012))

(assert (=> b!5187087 m!6245010))

(assert (=> b!5187087 m!6245012))

(declare-fun m!6245014 () Bool)

(assert (=> b!5187087 m!6245014))

(assert (=> b!5187078 m!6245012))

(assert (=> b!5187078 m!6245012))

(declare-fun m!6245016 () Bool)

(assert (=> b!5187078 m!6245016))

(assert (=> b!5187085 m!6245008))

(assert (=> b!5187081 m!6245008))

(declare-fun m!6245018 () Bool)

(assert (=> b!5187075 m!6245018))

(assert (=> bm!364476 m!6245004))

(assert (=> b!5187082 m!6245012))

(assert (=> b!5187082 m!6245012))

(assert (=> b!5187082 m!6245016))

(assert (=> d!1676290 m!6245004))

(declare-fun m!6245020 () Bool)

(assert (=> d!1676290 m!6245020))

(assert (=> b!5186540 d!1676290))

(declare-fun d!1676292 () Bool)

(assert (=> d!1676292 (= (matchR!6898 (regTwo!29939 r!7292) s!2326) (matchRSpec!1816 (regTwo!29939 r!7292) s!2326))))

(declare-fun lt!2136727 () Unit!152260)

(assert (=> d!1676292 (= lt!2136727 (choose!38538 (regTwo!29939 r!7292) s!2326))))

(assert (=> d!1676292 (validRegex!6449 (regTwo!29939 r!7292))))

(assert (=> d!1676292 (= (mainMatchTheorem!1816 (regTwo!29939 r!7292) s!2326) lt!2136727)))

(declare-fun bs!1208320 () Bool)

(assert (= bs!1208320 d!1676292))

(assert (=> bs!1208320 m!6244784))

(assert (=> bs!1208320 m!6244780))

(declare-fun m!6245022 () Bool)

(assert (=> bs!1208320 m!6245022))

(assert (=> bs!1208320 m!6245020))

(assert (=> b!5186540 d!1676292))

(declare-fun bs!1208321 () Bool)

(declare-fun b!5187089 () Bool)

(assert (= bs!1208321 (and b!5187089 b!5187032)))

(declare-fun lambda!259326 () Int)

(assert (=> bs!1208321 (= (and (= (reg!15042 (regOne!29939 r!7292)) (reg!15042 (regTwo!29939 r!7292))) (= (regOne!29939 r!7292) (regTwo!29939 r!7292))) (= lambda!259326 lambda!259324))))

(declare-fun bs!1208322 () Bool)

(assert (= bs!1208322 (and b!5187089 b!5187042)))

(assert (=> bs!1208322 (not (= lambda!259326 lambda!259325))))

(assert (=> b!5187089 true))

(assert (=> b!5187089 true))

(declare-fun bs!1208323 () Bool)

(declare-fun b!5187099 () Bool)

(assert (= bs!1208323 (and b!5187099 b!5187032)))

(declare-fun lambda!259327 () Int)

(assert (=> bs!1208323 (not (= lambda!259327 lambda!259324))))

(declare-fun bs!1208324 () Bool)

(assert (= bs!1208324 (and b!5187099 b!5187042)))

(assert (=> bs!1208324 (= (and (= (regOne!29938 (regOne!29939 r!7292)) (regOne!29938 (regTwo!29939 r!7292))) (= (regTwo!29938 (regOne!29939 r!7292)) (regTwo!29938 (regTwo!29939 r!7292)))) (= lambda!259327 lambda!259325))))

(declare-fun bs!1208325 () Bool)

(assert (= bs!1208325 (and b!5187099 b!5187089)))

(assert (=> bs!1208325 (not (= lambda!259327 lambda!259326))))

(assert (=> b!5187099 true))

(assert (=> b!5187099 true))

(declare-fun e!3231291 () Bool)

(declare-fun call!364483 () Bool)

(assert (=> b!5187089 (= e!3231291 call!364483)))

(declare-fun b!5187090 () Bool)

(declare-fun e!3231288 () Bool)

(declare-fun e!3231290 () Bool)

(assert (=> b!5187090 (= e!3231288 e!3231290)))

(declare-fun res!2203368 () Bool)

(assert (=> b!5187090 (= res!2203368 (matchRSpec!1816 (regOne!29939 (regOne!29939 r!7292)) s!2326))))

(assert (=> b!5187090 (=> res!2203368 e!3231290)))

(declare-fun d!1676294 () Bool)

(declare-fun c!893924 () Bool)

(assert (=> d!1676294 (= c!893924 ((_ is EmptyExpr!14713) (regOne!29939 r!7292)))))

(declare-fun e!3231287 () Bool)

(assert (=> d!1676294 (= (matchRSpec!1816 (regOne!29939 r!7292) s!2326) e!3231287)))

(declare-fun b!5187091 () Bool)

(declare-fun e!3231289 () Bool)

(assert (=> b!5187091 (= e!3231289 (= s!2326 (Cons!60314 (c!893778 (regOne!29939 r!7292)) Nil!60314)))))

(declare-fun b!5187092 () Bool)

(assert (=> b!5187092 (= e!3231290 (matchRSpec!1816 (regTwo!29939 (regOne!29939 r!7292)) s!2326))))

(declare-fun b!5187093 () Bool)

(declare-fun c!893927 () Bool)

(assert (=> b!5187093 (= c!893927 ((_ is Union!14713) (regOne!29939 r!7292)))))

(assert (=> b!5187093 (= e!3231289 e!3231288)))

(declare-fun c!893926 () Bool)

(declare-fun bm!364477 () Bool)

(assert (=> bm!364477 (= call!364483 (Exists!1908 (ite c!893926 lambda!259326 lambda!259327)))))

(declare-fun b!5187094 () Bool)

(declare-fun res!2203366 () Bool)

(assert (=> b!5187094 (=> res!2203366 e!3231291)))

(declare-fun call!364482 () Bool)

(assert (=> b!5187094 (= res!2203366 call!364482)))

(declare-fun e!3231285 () Bool)

(assert (=> b!5187094 (= e!3231285 e!3231291)))

(declare-fun b!5187095 () Bool)

(declare-fun e!3231286 () Bool)

(assert (=> b!5187095 (= e!3231287 e!3231286)))

(declare-fun res!2203367 () Bool)

(assert (=> b!5187095 (= res!2203367 (not ((_ is EmptyLang!14713) (regOne!29939 r!7292))))))

(assert (=> b!5187095 (=> (not res!2203367) (not e!3231286))))

(declare-fun b!5187096 () Bool)

(assert (=> b!5187096 (= e!3231287 call!364482)))

(declare-fun bm!364478 () Bool)

(assert (=> bm!364478 (= call!364482 (isEmpty!32282 s!2326))))

(declare-fun b!5187097 () Bool)

(assert (=> b!5187097 (= e!3231288 e!3231285)))

(assert (=> b!5187097 (= c!893926 ((_ is Star!14713) (regOne!29939 r!7292)))))

(declare-fun b!5187098 () Bool)

(declare-fun c!893925 () Bool)

(assert (=> b!5187098 (= c!893925 ((_ is ElementMatch!14713) (regOne!29939 r!7292)))))

(assert (=> b!5187098 (= e!3231286 e!3231289)))

(assert (=> b!5187099 (= e!3231285 call!364483)))

(assert (= (and d!1676294 c!893924) b!5187096))

(assert (= (and d!1676294 (not c!893924)) b!5187095))

(assert (= (and b!5187095 res!2203367) b!5187098))

(assert (= (and b!5187098 c!893925) b!5187091))

(assert (= (and b!5187098 (not c!893925)) b!5187093))

(assert (= (and b!5187093 c!893927) b!5187090))

(assert (= (and b!5187093 (not c!893927)) b!5187097))

(assert (= (and b!5187090 (not res!2203368)) b!5187092))

(assert (= (and b!5187097 c!893926) b!5187094))

(assert (= (and b!5187097 (not c!893926)) b!5187099))

(assert (= (and b!5187094 (not res!2203366)) b!5187089))

(assert (= (or b!5187089 b!5187099) bm!364477))

(assert (= (or b!5187096 b!5187094) bm!364478))

(declare-fun m!6245024 () Bool)

(assert (=> b!5187090 m!6245024))

(declare-fun m!6245026 () Bool)

(assert (=> b!5187092 m!6245026))

(declare-fun m!6245028 () Bool)

(assert (=> bm!364477 m!6245028))

(assert (=> bm!364478 m!6245004))

(assert (=> b!5186540 d!1676294))

(declare-fun b!5187100 () Bool)

(declare-fun e!3231298 () Bool)

(assert (=> b!5187100 (= e!3231298 (nullable!4912 (regOne!29939 r!7292)))))

(declare-fun b!5187101 () Bool)

(declare-fun e!3231296 () Bool)

(declare-fun lt!2136728 () Bool)

(declare-fun call!364484 () Bool)

(assert (=> b!5187101 (= e!3231296 (= lt!2136728 call!364484))))

(declare-fun b!5187102 () Bool)

(declare-fun e!3231295 () Bool)

(declare-fun e!3231297 () Bool)

(assert (=> b!5187102 (= e!3231295 e!3231297)))

(declare-fun res!2203370 () Bool)

(assert (=> b!5187102 (=> res!2203370 e!3231297)))

(assert (=> b!5187102 (= res!2203370 call!364484)))

(declare-fun b!5187103 () Bool)

(declare-fun res!2203373 () Bool)

(declare-fun e!3231292 () Bool)

(assert (=> b!5187103 (=> (not res!2203373) (not e!3231292))))

(assert (=> b!5187103 (= res!2203373 (isEmpty!32282 (tail!10201 s!2326)))))

(declare-fun b!5187104 () Bool)

(declare-fun res!2203374 () Bool)

(declare-fun e!3231294 () Bool)

(assert (=> b!5187104 (=> res!2203374 e!3231294)))

(assert (=> b!5187104 (= res!2203374 (not ((_ is ElementMatch!14713) (regOne!29939 r!7292))))))

(declare-fun e!3231293 () Bool)

(assert (=> b!5187104 (= e!3231293 e!3231294)))

(declare-fun b!5187105 () Bool)

(declare-fun res!2203372 () Bool)

(assert (=> b!5187105 (=> (not res!2203372) (not e!3231292))))

(assert (=> b!5187105 (= res!2203372 (not call!364484))))

(declare-fun b!5187106 () Bool)

(assert (=> b!5187106 (= e!3231292 (= (head!11104 s!2326) (c!893778 (regOne!29939 r!7292))))))

(declare-fun b!5187107 () Bool)

(declare-fun res!2203376 () Bool)

(assert (=> b!5187107 (=> res!2203376 e!3231297)))

(assert (=> b!5187107 (= res!2203376 (not (isEmpty!32282 (tail!10201 s!2326))))))

(declare-fun b!5187108 () Bool)

(assert (=> b!5187108 (= e!3231296 e!3231293)))

(declare-fun c!893929 () Bool)

(assert (=> b!5187108 (= c!893929 ((_ is EmptyLang!14713) (regOne!29939 r!7292)))))

(declare-fun b!5187110 () Bool)

(assert (=> b!5187110 (= e!3231297 (not (= (head!11104 s!2326) (c!893778 (regOne!29939 r!7292)))))))

(declare-fun b!5187111 () Bool)

(assert (=> b!5187111 (= e!3231293 (not lt!2136728))))

(declare-fun bm!364479 () Bool)

(assert (=> bm!364479 (= call!364484 (isEmpty!32282 s!2326))))

(declare-fun b!5187112 () Bool)

(assert (=> b!5187112 (= e!3231298 (matchR!6898 (derivativeStep!4014 (regOne!29939 r!7292) (head!11104 s!2326)) (tail!10201 s!2326)))))

(declare-fun b!5187113 () Bool)

(assert (=> b!5187113 (= e!3231294 e!3231295)))

(declare-fun res!2203375 () Bool)

(assert (=> b!5187113 (=> (not res!2203375) (not e!3231295))))

(assert (=> b!5187113 (= res!2203375 (not lt!2136728))))

(declare-fun d!1676296 () Bool)

(assert (=> d!1676296 e!3231296))

(declare-fun c!893928 () Bool)

(assert (=> d!1676296 (= c!893928 ((_ is EmptyExpr!14713) (regOne!29939 r!7292)))))

(assert (=> d!1676296 (= lt!2136728 e!3231298)))

(declare-fun c!893930 () Bool)

(assert (=> d!1676296 (= c!893930 (isEmpty!32282 s!2326))))

(assert (=> d!1676296 (validRegex!6449 (regOne!29939 r!7292))))

(assert (=> d!1676296 (= (matchR!6898 (regOne!29939 r!7292) s!2326) lt!2136728)))

(declare-fun b!5187109 () Bool)

(declare-fun res!2203369 () Bool)

(assert (=> b!5187109 (=> res!2203369 e!3231294)))

(assert (=> b!5187109 (= res!2203369 e!3231292)))

(declare-fun res!2203371 () Bool)

(assert (=> b!5187109 (=> (not res!2203371) (not e!3231292))))

(assert (=> b!5187109 (= res!2203371 lt!2136728)))

(assert (= (and d!1676296 c!893930) b!5187100))

(assert (= (and d!1676296 (not c!893930)) b!5187112))

(assert (= (and d!1676296 c!893928) b!5187101))

(assert (= (and d!1676296 (not c!893928)) b!5187108))

(assert (= (and b!5187108 c!893929) b!5187111))

(assert (= (and b!5187108 (not c!893929)) b!5187104))

(assert (= (and b!5187104 (not res!2203374)) b!5187109))

(assert (= (and b!5187109 res!2203371) b!5187105))

(assert (= (and b!5187105 res!2203372) b!5187103))

(assert (= (and b!5187103 res!2203373) b!5187106))

(assert (= (and b!5187109 (not res!2203369)) b!5187113))

(assert (= (and b!5187113 res!2203375) b!5187102))

(assert (= (and b!5187102 (not res!2203370)) b!5187107))

(assert (= (and b!5187107 (not res!2203376)) b!5187110))

(assert (= (or b!5187101 b!5187102 b!5187105) bm!364479))

(assert (=> b!5187112 m!6245008))

(assert (=> b!5187112 m!6245008))

(declare-fun m!6245030 () Bool)

(assert (=> b!5187112 m!6245030))

(assert (=> b!5187112 m!6245012))

(assert (=> b!5187112 m!6245030))

(assert (=> b!5187112 m!6245012))

(declare-fun m!6245032 () Bool)

(assert (=> b!5187112 m!6245032))

(assert (=> b!5187103 m!6245012))

(assert (=> b!5187103 m!6245012))

(assert (=> b!5187103 m!6245016))

(assert (=> b!5187110 m!6245008))

(assert (=> b!5187106 m!6245008))

(declare-fun m!6245034 () Bool)

(assert (=> b!5187100 m!6245034))

(assert (=> bm!364479 m!6245004))

(assert (=> b!5187107 m!6245012))

(assert (=> b!5187107 m!6245012))

(assert (=> b!5187107 m!6245016))

(assert (=> d!1676296 m!6245004))

(assert (=> d!1676296 m!6244764))

(assert (=> b!5186540 d!1676296))

(declare-fun bs!1208326 () Bool)

(declare-fun d!1676298 () Bool)

(assert (= bs!1208326 (and d!1676298 d!1676238)))

(declare-fun lambda!259330 () Int)

(assert (=> bs!1208326 (= lambda!259330 lambda!259305)))

(declare-fun bs!1208327 () Bool)

(assert (= bs!1208327 (and d!1676298 d!1676266)))

(assert (=> bs!1208327 (= lambda!259330 lambda!259312)))

(declare-fun bs!1208328 () Bool)

(assert (= bs!1208328 (and d!1676298 d!1676276)))

(assert (=> bs!1208328 (= lambda!259330 lambda!259319)))

(assert (=> d!1676298 (= (inv!80029 (h!66764 zl!343)) (forall!14199 (exprs!4597 (h!66764 zl!343)) lambda!259330))))

(declare-fun bs!1208329 () Bool)

(assert (= bs!1208329 d!1676298))

(declare-fun m!6245036 () Bool)

(assert (=> bs!1208329 m!6245036))

(assert (=> b!5186549 d!1676298))

(declare-fun bs!1208330 () Bool)

(declare-fun d!1676300 () Bool)

(assert (= bs!1208330 (and d!1676300 d!1676238)))

(declare-fun lambda!259331 () Int)

(assert (=> bs!1208330 (= lambda!259331 lambda!259305)))

(declare-fun bs!1208331 () Bool)

(assert (= bs!1208331 (and d!1676300 d!1676266)))

(assert (=> bs!1208331 (= lambda!259331 lambda!259312)))

(declare-fun bs!1208332 () Bool)

(assert (= bs!1208332 (and d!1676300 d!1676276)))

(assert (=> bs!1208332 (= lambda!259331 lambda!259319)))

(declare-fun bs!1208333 () Bool)

(assert (= bs!1208333 (and d!1676300 d!1676298)))

(assert (=> bs!1208333 (= lambda!259331 lambda!259330)))

(assert (=> d!1676300 (= (inv!80029 setElem!32698) (forall!14199 (exprs!4597 setElem!32698) lambda!259331))))

(declare-fun bs!1208334 () Bool)

(assert (= bs!1208334 d!1676300))

(declare-fun m!6245038 () Bool)

(assert (=> bs!1208334 m!6245038))

(assert (=> setNonEmpty!32698 d!1676300))

(declare-fun bs!1208335 () Bool)

(declare-fun b!5187114 () Bool)

(assert (= bs!1208335 (and b!5187114 b!5187032)))

(declare-fun lambda!259332 () Int)

(assert (=> bs!1208335 (= (and (= (reg!15042 r!7292) (reg!15042 (regTwo!29939 r!7292))) (= r!7292 (regTwo!29939 r!7292))) (= lambda!259332 lambda!259324))))

(declare-fun bs!1208336 () Bool)

(assert (= bs!1208336 (and b!5187114 b!5187042)))

(assert (=> bs!1208336 (not (= lambda!259332 lambda!259325))))

(declare-fun bs!1208337 () Bool)

(assert (= bs!1208337 (and b!5187114 b!5187089)))

(assert (=> bs!1208337 (= (and (= (reg!15042 r!7292) (reg!15042 (regOne!29939 r!7292))) (= r!7292 (regOne!29939 r!7292))) (= lambda!259332 lambda!259326))))

(declare-fun bs!1208338 () Bool)

(assert (= bs!1208338 (and b!5187114 b!5187099)))

(assert (=> bs!1208338 (not (= lambda!259332 lambda!259327))))

(assert (=> b!5187114 true))

(assert (=> b!5187114 true))

(declare-fun bs!1208339 () Bool)

(declare-fun b!5187124 () Bool)

(assert (= bs!1208339 (and b!5187124 b!5187099)))

(declare-fun lambda!259333 () Int)

(assert (=> bs!1208339 (= (and (= (regOne!29938 r!7292) (regOne!29938 (regOne!29939 r!7292))) (= (regTwo!29938 r!7292) (regTwo!29938 (regOne!29939 r!7292)))) (= lambda!259333 lambda!259327))))

(declare-fun bs!1208340 () Bool)

(assert (= bs!1208340 (and b!5187124 b!5187089)))

(assert (=> bs!1208340 (not (= lambda!259333 lambda!259326))))

(declare-fun bs!1208341 () Bool)

(assert (= bs!1208341 (and b!5187124 b!5187042)))

(assert (=> bs!1208341 (= (and (= (regOne!29938 r!7292) (regOne!29938 (regTwo!29939 r!7292))) (= (regTwo!29938 r!7292) (regTwo!29938 (regTwo!29939 r!7292)))) (= lambda!259333 lambda!259325))))

(declare-fun bs!1208342 () Bool)

(assert (= bs!1208342 (and b!5187124 b!5187114)))

(assert (=> bs!1208342 (not (= lambda!259333 lambda!259332))))

(declare-fun bs!1208343 () Bool)

(assert (= bs!1208343 (and b!5187124 b!5187032)))

(assert (=> bs!1208343 (not (= lambda!259333 lambda!259324))))

(assert (=> b!5187124 true))

(assert (=> b!5187124 true))

(declare-fun e!3231305 () Bool)

(declare-fun call!364486 () Bool)

(assert (=> b!5187114 (= e!3231305 call!364486)))

(declare-fun b!5187115 () Bool)

(declare-fun e!3231302 () Bool)

(declare-fun e!3231304 () Bool)

(assert (=> b!5187115 (= e!3231302 e!3231304)))

(declare-fun res!2203379 () Bool)

(assert (=> b!5187115 (= res!2203379 (matchRSpec!1816 (regOne!29939 r!7292) s!2326))))

(assert (=> b!5187115 (=> res!2203379 e!3231304)))

(declare-fun d!1676302 () Bool)

(declare-fun c!893931 () Bool)

(assert (=> d!1676302 (= c!893931 ((_ is EmptyExpr!14713) r!7292))))

(declare-fun e!3231301 () Bool)

(assert (=> d!1676302 (= (matchRSpec!1816 r!7292 s!2326) e!3231301)))

(declare-fun b!5187116 () Bool)

(declare-fun e!3231303 () Bool)

(assert (=> b!5187116 (= e!3231303 (= s!2326 (Cons!60314 (c!893778 r!7292) Nil!60314)))))

(declare-fun b!5187117 () Bool)

(assert (=> b!5187117 (= e!3231304 (matchRSpec!1816 (regTwo!29939 r!7292) s!2326))))

(declare-fun b!5187118 () Bool)

(declare-fun c!893934 () Bool)

(assert (=> b!5187118 (= c!893934 ((_ is Union!14713) r!7292))))

(assert (=> b!5187118 (= e!3231303 e!3231302)))

(declare-fun bm!364480 () Bool)

(declare-fun c!893933 () Bool)

(assert (=> bm!364480 (= call!364486 (Exists!1908 (ite c!893933 lambda!259332 lambda!259333)))))

(declare-fun b!5187119 () Bool)

(declare-fun res!2203377 () Bool)

(assert (=> b!5187119 (=> res!2203377 e!3231305)))

(declare-fun call!364485 () Bool)

(assert (=> b!5187119 (= res!2203377 call!364485)))

(declare-fun e!3231299 () Bool)

(assert (=> b!5187119 (= e!3231299 e!3231305)))

(declare-fun b!5187120 () Bool)

(declare-fun e!3231300 () Bool)

(assert (=> b!5187120 (= e!3231301 e!3231300)))

(declare-fun res!2203378 () Bool)

(assert (=> b!5187120 (= res!2203378 (not ((_ is EmptyLang!14713) r!7292)))))

(assert (=> b!5187120 (=> (not res!2203378) (not e!3231300))))

(declare-fun b!5187121 () Bool)

(assert (=> b!5187121 (= e!3231301 call!364485)))

(declare-fun bm!364481 () Bool)

(assert (=> bm!364481 (= call!364485 (isEmpty!32282 s!2326))))

(declare-fun b!5187122 () Bool)

(assert (=> b!5187122 (= e!3231302 e!3231299)))

(assert (=> b!5187122 (= c!893933 ((_ is Star!14713) r!7292))))

(declare-fun b!5187123 () Bool)

(declare-fun c!893932 () Bool)

(assert (=> b!5187123 (= c!893932 ((_ is ElementMatch!14713) r!7292))))

(assert (=> b!5187123 (= e!3231300 e!3231303)))

(assert (=> b!5187124 (= e!3231299 call!364486)))

(assert (= (and d!1676302 c!893931) b!5187121))

(assert (= (and d!1676302 (not c!893931)) b!5187120))

(assert (= (and b!5187120 res!2203378) b!5187123))

(assert (= (and b!5187123 c!893932) b!5187116))

(assert (= (and b!5187123 (not c!893932)) b!5187118))

(assert (= (and b!5187118 c!893934) b!5187115))

(assert (= (and b!5187118 (not c!893934)) b!5187122))

(assert (= (and b!5187115 (not res!2203379)) b!5187117))

(assert (= (and b!5187122 c!893933) b!5187119))

(assert (= (and b!5187122 (not c!893933)) b!5187124))

(assert (= (and b!5187119 (not res!2203377)) b!5187114))

(assert (= (or b!5187114 b!5187124) bm!364480))

(assert (= (or b!5187121 b!5187119) bm!364481))

(assert (=> b!5187115 m!6244786))

(assert (=> b!5187117 m!6244780))

(declare-fun m!6245040 () Bool)

(assert (=> bm!364480 m!6245040))

(assert (=> bm!364481 m!6245004))

(assert (=> b!5186547 d!1676302))

(declare-fun b!5187125 () Bool)

(declare-fun e!3231312 () Bool)

(assert (=> b!5187125 (= e!3231312 (nullable!4912 r!7292))))

(declare-fun b!5187126 () Bool)

(declare-fun e!3231310 () Bool)

(declare-fun lt!2136729 () Bool)

(declare-fun call!364487 () Bool)

(assert (=> b!5187126 (= e!3231310 (= lt!2136729 call!364487))))

(declare-fun b!5187127 () Bool)

(declare-fun e!3231309 () Bool)

(declare-fun e!3231311 () Bool)

(assert (=> b!5187127 (= e!3231309 e!3231311)))

(declare-fun res!2203381 () Bool)

(assert (=> b!5187127 (=> res!2203381 e!3231311)))

(assert (=> b!5187127 (= res!2203381 call!364487)))

(declare-fun b!5187128 () Bool)

(declare-fun res!2203384 () Bool)

(declare-fun e!3231306 () Bool)

(assert (=> b!5187128 (=> (not res!2203384) (not e!3231306))))

(assert (=> b!5187128 (= res!2203384 (isEmpty!32282 (tail!10201 s!2326)))))

(declare-fun b!5187129 () Bool)

(declare-fun res!2203385 () Bool)

(declare-fun e!3231308 () Bool)

(assert (=> b!5187129 (=> res!2203385 e!3231308)))

(assert (=> b!5187129 (= res!2203385 (not ((_ is ElementMatch!14713) r!7292)))))

(declare-fun e!3231307 () Bool)

(assert (=> b!5187129 (= e!3231307 e!3231308)))

(declare-fun b!5187130 () Bool)

(declare-fun res!2203383 () Bool)

(assert (=> b!5187130 (=> (not res!2203383) (not e!3231306))))

(assert (=> b!5187130 (= res!2203383 (not call!364487))))

(declare-fun b!5187131 () Bool)

(assert (=> b!5187131 (= e!3231306 (= (head!11104 s!2326) (c!893778 r!7292)))))

(declare-fun b!5187132 () Bool)

(declare-fun res!2203387 () Bool)

(assert (=> b!5187132 (=> res!2203387 e!3231311)))

(assert (=> b!5187132 (= res!2203387 (not (isEmpty!32282 (tail!10201 s!2326))))))

(declare-fun b!5187133 () Bool)

(assert (=> b!5187133 (= e!3231310 e!3231307)))

(declare-fun c!893936 () Bool)

(assert (=> b!5187133 (= c!893936 ((_ is EmptyLang!14713) r!7292))))

(declare-fun b!5187135 () Bool)

(assert (=> b!5187135 (= e!3231311 (not (= (head!11104 s!2326) (c!893778 r!7292))))))

(declare-fun b!5187136 () Bool)

(assert (=> b!5187136 (= e!3231307 (not lt!2136729))))

(declare-fun bm!364482 () Bool)

(assert (=> bm!364482 (= call!364487 (isEmpty!32282 s!2326))))

(declare-fun b!5187137 () Bool)

(assert (=> b!5187137 (= e!3231312 (matchR!6898 (derivativeStep!4014 r!7292 (head!11104 s!2326)) (tail!10201 s!2326)))))

(declare-fun b!5187138 () Bool)

(assert (=> b!5187138 (= e!3231308 e!3231309)))

(declare-fun res!2203386 () Bool)

(assert (=> b!5187138 (=> (not res!2203386) (not e!3231309))))

(assert (=> b!5187138 (= res!2203386 (not lt!2136729))))

(declare-fun d!1676304 () Bool)

(assert (=> d!1676304 e!3231310))

(declare-fun c!893935 () Bool)

(assert (=> d!1676304 (= c!893935 ((_ is EmptyExpr!14713) r!7292))))

(assert (=> d!1676304 (= lt!2136729 e!3231312)))

(declare-fun c!893937 () Bool)

(assert (=> d!1676304 (= c!893937 (isEmpty!32282 s!2326))))

(assert (=> d!1676304 (validRegex!6449 r!7292)))

(assert (=> d!1676304 (= (matchR!6898 r!7292 s!2326) lt!2136729)))

(declare-fun b!5187134 () Bool)

(declare-fun res!2203380 () Bool)

(assert (=> b!5187134 (=> res!2203380 e!3231308)))

(assert (=> b!5187134 (= res!2203380 e!3231306)))

(declare-fun res!2203382 () Bool)

(assert (=> b!5187134 (=> (not res!2203382) (not e!3231306))))

(assert (=> b!5187134 (= res!2203382 lt!2136729)))

(assert (= (and d!1676304 c!893937) b!5187125))

(assert (= (and d!1676304 (not c!893937)) b!5187137))

(assert (= (and d!1676304 c!893935) b!5187126))

(assert (= (and d!1676304 (not c!893935)) b!5187133))

(assert (= (and b!5187133 c!893936) b!5187136))

(assert (= (and b!5187133 (not c!893936)) b!5187129))

(assert (= (and b!5187129 (not res!2203385)) b!5187134))

(assert (= (and b!5187134 res!2203382) b!5187130))

(assert (= (and b!5187130 res!2203383) b!5187128))

(assert (= (and b!5187128 res!2203384) b!5187131))

(assert (= (and b!5187134 (not res!2203380)) b!5187138))

(assert (= (and b!5187138 res!2203386) b!5187127))

(assert (= (and b!5187127 (not res!2203381)) b!5187132))

(assert (= (and b!5187132 (not res!2203387)) b!5187135))

(assert (= (or b!5187126 b!5187127 b!5187130) bm!364482))

(assert (=> b!5187137 m!6245008))

(assert (=> b!5187137 m!6245008))

(declare-fun m!6245042 () Bool)

(assert (=> b!5187137 m!6245042))

(assert (=> b!5187137 m!6245012))

(assert (=> b!5187137 m!6245042))

(assert (=> b!5187137 m!6245012))

(declare-fun m!6245044 () Bool)

(assert (=> b!5187137 m!6245044))

(assert (=> b!5187128 m!6245012))

(assert (=> b!5187128 m!6245012))

(assert (=> b!5187128 m!6245016))

(assert (=> b!5187135 m!6245008))

(assert (=> b!5187131 m!6245008))

(declare-fun m!6245046 () Bool)

(assert (=> b!5187125 m!6245046))

(assert (=> bm!364482 m!6245004))

(assert (=> b!5187132 m!6245012))

(assert (=> b!5187132 m!6245012))

(assert (=> b!5187132 m!6245016))

(assert (=> d!1676304 m!6245004))

(assert (=> d!1676304 m!6244800))

(assert (=> b!5186547 d!1676304))

(declare-fun d!1676306 () Bool)

(assert (=> d!1676306 (= (matchR!6898 r!7292 s!2326) (matchRSpec!1816 r!7292 s!2326))))

(declare-fun lt!2136730 () Unit!152260)

(assert (=> d!1676306 (= lt!2136730 (choose!38538 r!7292 s!2326))))

(assert (=> d!1676306 (validRegex!6449 r!7292)))

(assert (=> d!1676306 (= (mainMatchTheorem!1816 r!7292 s!2326) lt!2136730)))

(declare-fun bs!1208344 () Bool)

(assert (= bs!1208344 d!1676306))

(assert (=> bs!1208344 m!6244770))

(assert (=> bs!1208344 m!6244768))

(declare-fun m!6245048 () Bool)

(assert (=> bs!1208344 m!6245048))

(assert (=> bs!1208344 m!6244800))

(assert (=> b!5186547 d!1676306))

(declare-fun call!364490 () (InoxSet Context!8194))

(declare-fun e!3231321 () (InoxSet Context!8194))

(declare-fun b!5187149 () Bool)

(assert (=> b!5187149 (= e!3231321 ((_ map or) call!364490 (derivationStepZipperUp!103 (Context!8195 (t!373592 (exprs!4597 (Context!8195 (Cons!60315 r!7292 Nil!60315))))) (h!66762 s!2326))))))

(declare-fun b!5187150 () Bool)

(declare-fun e!3231319 () (InoxSet Context!8194))

(assert (=> b!5187150 (= e!3231321 e!3231319)))

(declare-fun c!893943 () Bool)

(assert (=> b!5187150 (= c!893943 ((_ is Cons!60315) (exprs!4597 (Context!8195 (Cons!60315 r!7292 Nil!60315)))))))

(declare-fun b!5187151 () Bool)

(assert (=> b!5187151 (= e!3231319 ((as const (Array Context!8194 Bool)) false))))

(declare-fun bm!364485 () Bool)

(assert (=> bm!364485 (= call!364490 (derivationStepZipperDown!182 (h!66763 (exprs!4597 (Context!8195 (Cons!60315 r!7292 Nil!60315)))) (Context!8195 (t!373592 (exprs!4597 (Context!8195 (Cons!60315 r!7292 Nil!60315))))) (h!66762 s!2326)))))

(declare-fun b!5187152 () Bool)

(declare-fun e!3231320 () Bool)

(assert (=> b!5187152 (= e!3231320 (nullable!4912 (h!66763 (exprs!4597 (Context!8195 (Cons!60315 r!7292 Nil!60315))))))))

(declare-fun b!5187153 () Bool)

(assert (=> b!5187153 (= e!3231319 call!364490)))

(declare-fun d!1676308 () Bool)

(declare-fun c!893942 () Bool)

(assert (=> d!1676308 (= c!893942 e!3231320)))

(declare-fun res!2203390 () Bool)

(assert (=> d!1676308 (=> (not res!2203390) (not e!3231320))))

(assert (=> d!1676308 (= res!2203390 ((_ is Cons!60315) (exprs!4597 (Context!8195 (Cons!60315 r!7292 Nil!60315)))))))

(assert (=> d!1676308 (= (derivationStepZipperUp!103 (Context!8195 (Cons!60315 r!7292 Nil!60315)) (h!66762 s!2326)) e!3231321)))

(assert (= (and d!1676308 res!2203390) b!5187152))

(assert (= (and d!1676308 c!893942) b!5187149))

(assert (= (and d!1676308 (not c!893942)) b!5187150))

(assert (= (and b!5187150 c!893943) b!5187153))

(assert (= (and b!5187150 (not c!893943)) b!5187151))

(assert (= (or b!5187149 b!5187153) bm!364485))

(declare-fun m!6245050 () Bool)

(assert (=> b!5187149 m!6245050))

(declare-fun m!6245052 () Bool)

(assert (=> bm!364485 m!6245052))

(declare-fun m!6245054 () Bool)

(assert (=> b!5187152 m!6245054))

(assert (=> b!5186556 d!1676308))

(declare-fun call!364507 () (InoxSet Context!8194))

(declare-fun c!893958 () Bool)

(declare-fun call!364506 () List!60439)

(declare-fun bm!364498 () Bool)

(assert (=> bm!364498 (= call!364507 (derivationStepZipperDown!182 (ite c!893958 (regOne!29939 r!7292) (regOne!29938 r!7292)) (ite c!893958 (Context!8195 Nil!60315) (Context!8195 call!364506)) (h!66762 s!2326)))))

(declare-fun b!5187176 () Bool)

(declare-fun e!3231334 () (InoxSet Context!8194))

(declare-fun e!3231338 () (InoxSet Context!8194))

(assert (=> b!5187176 (= e!3231334 e!3231338)))

(declare-fun c!893954 () Bool)

(assert (=> b!5187176 (= c!893954 ((_ is Concat!23558) r!7292))))

(declare-fun call!364504 () (InoxSet Context!8194))

(declare-fun call!364508 () List!60439)

(declare-fun bm!364499 () Bool)

(declare-fun c!893955 () Bool)

(assert (=> bm!364499 (= call!364504 (derivationStepZipperDown!182 (ite c!893958 (regTwo!29939 r!7292) (ite c!893955 (regTwo!29938 r!7292) (ite c!893954 (regOne!29938 r!7292) (reg!15042 r!7292)))) (ite (or c!893958 c!893955) (Context!8195 Nil!60315) (Context!8195 call!364508)) (h!66762 s!2326)))))

(declare-fun b!5187177 () Bool)

(declare-fun e!3231337 () (InoxSet Context!8194))

(declare-fun call!364503 () (InoxSet Context!8194))

(assert (=> b!5187177 (= e!3231337 call!364503)))

(declare-fun b!5187178 () Bool)

(declare-fun e!3231336 () (InoxSet Context!8194))

(assert (=> b!5187178 (= e!3231336 ((_ map or) call!364507 call!364504))))

(declare-fun b!5187179 () Bool)

(declare-fun c!893957 () Bool)

(assert (=> b!5187179 (= c!893957 ((_ is Star!14713) r!7292))))

(assert (=> b!5187179 (= e!3231338 e!3231337)))

(declare-fun bm!364500 () Bool)

(declare-fun call!364505 () (InoxSet Context!8194))

(assert (=> bm!364500 (= call!364503 call!364505)))

(declare-fun b!5187180 () Bool)

(declare-fun e!3231339 () Bool)

(assert (=> b!5187180 (= e!3231339 (nullable!4912 (regOne!29938 r!7292)))))

(declare-fun bm!364501 () Bool)

(declare-fun $colon$colon!1249 (List!60439 Regex!14713) List!60439)

(assert (=> bm!364501 (= call!364506 ($colon$colon!1249 (exprs!4597 (Context!8195 Nil!60315)) (ite (or c!893955 c!893954) (regTwo!29938 r!7292) r!7292)))))

(declare-fun bm!364502 () Bool)

(assert (=> bm!364502 (= call!364505 call!364504)))

(declare-fun d!1676310 () Bool)

(declare-fun c!893956 () Bool)

(assert (=> d!1676310 (= c!893956 (and ((_ is ElementMatch!14713) r!7292) (= (c!893778 r!7292) (h!66762 s!2326))))))

(declare-fun e!3231335 () (InoxSet Context!8194))

(assert (=> d!1676310 (= (derivationStepZipperDown!182 r!7292 (Context!8195 Nil!60315) (h!66762 s!2326)) e!3231335)))

(declare-fun b!5187181 () Bool)

(assert (=> b!5187181 (= e!3231335 (store ((as const (Array Context!8194 Bool)) false) (Context!8195 Nil!60315) true))))

(declare-fun b!5187182 () Bool)

(assert (=> b!5187182 (= c!893955 e!3231339)))

(declare-fun res!2203393 () Bool)

(assert (=> b!5187182 (=> (not res!2203393) (not e!3231339))))

(assert (=> b!5187182 (= res!2203393 ((_ is Concat!23558) r!7292))))

(assert (=> b!5187182 (= e!3231336 e!3231334)))

(declare-fun bm!364503 () Bool)

(assert (=> bm!364503 (= call!364508 call!364506)))

(declare-fun b!5187183 () Bool)

(assert (=> b!5187183 (= e!3231334 ((_ map or) call!364507 call!364505))))

(declare-fun b!5187184 () Bool)

(assert (=> b!5187184 (= e!3231338 call!364503)))

(declare-fun b!5187185 () Bool)

(assert (=> b!5187185 (= e!3231337 ((as const (Array Context!8194 Bool)) false))))

(declare-fun b!5187186 () Bool)

(assert (=> b!5187186 (= e!3231335 e!3231336)))

(assert (=> b!5187186 (= c!893958 ((_ is Union!14713) r!7292))))

(assert (= (and d!1676310 c!893956) b!5187181))

(assert (= (and d!1676310 (not c!893956)) b!5187186))

(assert (= (and b!5187186 c!893958) b!5187178))

(assert (= (and b!5187186 (not c!893958)) b!5187182))

(assert (= (and b!5187182 res!2203393) b!5187180))

(assert (= (and b!5187182 c!893955) b!5187183))

(assert (= (and b!5187182 (not c!893955)) b!5187176))

(assert (= (and b!5187176 c!893954) b!5187184))

(assert (= (and b!5187176 (not c!893954)) b!5187179))

(assert (= (and b!5187179 c!893957) b!5187177))

(assert (= (and b!5187179 (not c!893957)) b!5187185))

(assert (= (or b!5187184 b!5187177) bm!364503))

(assert (= (or b!5187184 b!5187177) bm!364500))

(assert (= (or b!5187183 bm!364503) bm!364501))

(assert (= (or b!5187183 bm!364500) bm!364502))

(assert (= (or b!5187178 bm!364502) bm!364499))

(assert (= (or b!5187178 b!5187183) bm!364498))

(declare-fun m!6245056 () Bool)

(assert (=> b!5187180 m!6245056))

(declare-fun m!6245058 () Bool)

(assert (=> bm!364501 m!6245058))

(declare-fun m!6245060 () Bool)

(assert (=> b!5187181 m!6245060))

(declare-fun m!6245062 () Bool)

(assert (=> bm!364499 m!6245062))

(declare-fun m!6245064 () Bool)

(assert (=> bm!364498 m!6245064))

(assert (=> b!5186556 d!1676310))

(declare-fun b!5187187 () Bool)

(declare-fun e!3231344 () Bool)

(declare-fun e!3231343 () Bool)

(assert (=> b!5187187 (= e!3231344 e!3231343)))

(declare-fun res!2203397 () Bool)

(assert (=> b!5187187 (= res!2203397 (not (nullable!4912 (reg!15042 r!7292))))))

(assert (=> b!5187187 (=> (not res!2203397) (not e!3231343))))

(declare-fun b!5187188 () Bool)

(declare-fun e!3231340 () Bool)

(declare-fun call!364510 () Bool)

(assert (=> b!5187188 (= e!3231340 call!364510)))

(declare-fun bm!364504 () Bool)

(declare-fun c!893959 () Bool)

(assert (=> bm!364504 (= call!364510 (validRegex!6449 (ite c!893959 (regTwo!29939 r!7292) (regTwo!29938 r!7292))))))

(declare-fun b!5187189 () Bool)

(declare-fun e!3231341 () Bool)

(assert (=> b!5187189 (= e!3231341 call!364510)))

(declare-fun b!5187190 () Bool)

(declare-fun call!364509 () Bool)

(assert (=> b!5187190 (= e!3231343 call!364509)))

(declare-fun b!5187191 () Bool)

(declare-fun e!3231346 () Bool)

(assert (=> b!5187191 (= e!3231346 e!3231340)))

(declare-fun res!2203398 () Bool)

(assert (=> b!5187191 (=> (not res!2203398) (not e!3231340))))

(declare-fun call!364511 () Bool)

(assert (=> b!5187191 (= res!2203398 call!364511)))

(declare-fun b!5187193 () Bool)

(declare-fun e!3231342 () Bool)

(assert (=> b!5187193 (= e!3231342 e!3231344)))

(declare-fun c!893960 () Bool)

(assert (=> b!5187193 (= c!893960 ((_ is Star!14713) r!7292))))

(declare-fun b!5187194 () Bool)

(declare-fun res!2203394 () Bool)

(assert (=> b!5187194 (=> (not res!2203394) (not e!3231341))))

(assert (=> b!5187194 (= res!2203394 call!364511)))

(declare-fun e!3231345 () Bool)

(assert (=> b!5187194 (= e!3231345 e!3231341)))

(declare-fun bm!364505 () Bool)

(assert (=> bm!364505 (= call!364511 call!364509)))

(declare-fun b!5187195 () Bool)

(declare-fun res!2203395 () Bool)

(assert (=> b!5187195 (=> res!2203395 e!3231346)))

(assert (=> b!5187195 (= res!2203395 (not ((_ is Concat!23558) r!7292)))))

(assert (=> b!5187195 (= e!3231345 e!3231346)))

(declare-fun bm!364506 () Bool)

(assert (=> bm!364506 (= call!364509 (validRegex!6449 (ite c!893960 (reg!15042 r!7292) (ite c!893959 (regOne!29939 r!7292) (regOne!29938 r!7292)))))))

(declare-fun d!1676312 () Bool)

(declare-fun res!2203396 () Bool)

(assert (=> d!1676312 (=> res!2203396 e!3231342)))

(assert (=> d!1676312 (= res!2203396 ((_ is ElementMatch!14713) r!7292))))

(assert (=> d!1676312 (= (validRegex!6449 r!7292) e!3231342)))

(declare-fun b!5187192 () Bool)

(assert (=> b!5187192 (= e!3231344 e!3231345)))

(assert (=> b!5187192 (= c!893959 ((_ is Union!14713) r!7292))))

(assert (= (and d!1676312 (not res!2203396)) b!5187193))

(assert (= (and b!5187193 c!893960) b!5187187))

(assert (= (and b!5187193 (not c!893960)) b!5187192))

(assert (= (and b!5187187 res!2203397) b!5187190))

(assert (= (and b!5187192 c!893959) b!5187194))

(assert (= (and b!5187192 (not c!893959)) b!5187195))

(assert (= (and b!5187194 res!2203394) b!5187189))

(assert (= (and b!5187195 (not res!2203395)) b!5187191))

(assert (= (and b!5187191 res!2203398) b!5187188))

(assert (= (or b!5187189 b!5187188) bm!364504))

(assert (= (or b!5187194 b!5187191) bm!364505))

(assert (= (or b!5187190 bm!364505) bm!364506))

(declare-fun m!6245066 () Bool)

(assert (=> b!5187187 m!6245066))

(declare-fun m!6245068 () Bool)

(assert (=> bm!364504 m!6245068))

(declare-fun m!6245070 () Bool)

(assert (=> bm!364506 m!6245070))

(assert (=> start!549158 d!1676312))

(declare-fun d!1676314 () Bool)

(declare-fun lt!2136733 () Regex!14713)

(assert (=> d!1676314 (validRegex!6449 lt!2136733)))

(assert (=> d!1676314 (= lt!2136733 (generalisedUnion!642 (unfocusZipperList!155 zl!343)))))

(assert (=> d!1676314 (= (unfocusZipper!455 zl!343) lt!2136733)))

(declare-fun bs!1208345 () Bool)

(assert (= bs!1208345 d!1676314))

(declare-fun m!6245072 () Bool)

(assert (=> bs!1208345 m!6245072))

(assert (=> bs!1208345 m!6244796))

(assert (=> bs!1208345 m!6244796))

(assert (=> bs!1208345 m!6244798))

(assert (=> b!5186546 d!1676314))

(declare-fun e!3231349 () Bool)

(assert (=> b!5186554 (= tp!1455234 e!3231349)))

(declare-fun b!5187209 () Bool)

(declare-fun tp!1455310 () Bool)

(declare-fun tp!1455309 () Bool)

(assert (=> b!5187209 (= e!3231349 (and tp!1455310 tp!1455309))))

(declare-fun b!5187206 () Bool)

(assert (=> b!5187206 (= e!3231349 tp_is_empty!38679)))

(declare-fun b!5187207 () Bool)

(declare-fun tp!1455308 () Bool)

(declare-fun tp!1455307 () Bool)

(assert (=> b!5187207 (= e!3231349 (and tp!1455308 tp!1455307))))

(declare-fun b!5187208 () Bool)

(declare-fun tp!1455306 () Bool)

(assert (=> b!5187208 (= e!3231349 tp!1455306)))

(assert (= (and b!5186554 ((_ is ElementMatch!14713) (reg!15042 r!7292))) b!5187206))

(assert (= (and b!5186554 ((_ is Concat!23558) (reg!15042 r!7292))) b!5187207))

(assert (= (and b!5186554 ((_ is Star!14713) (reg!15042 r!7292))) b!5187208))

(assert (= (and b!5186554 ((_ is Union!14713) (reg!15042 r!7292))) b!5187209))

(declare-fun b!5187217 () Bool)

(declare-fun e!3231355 () Bool)

(declare-fun tp!1455315 () Bool)

(assert (=> b!5187217 (= e!3231355 tp!1455315)))

(declare-fun tp!1455316 () Bool)

(declare-fun b!5187216 () Bool)

(declare-fun e!3231354 () Bool)

(assert (=> b!5187216 (= e!3231354 (and (inv!80029 (h!66764 (t!373593 zl!343))) e!3231355 tp!1455316))))

(assert (=> b!5186549 (= tp!1455231 e!3231354)))

(assert (= b!5187216 b!5187217))

(assert (= (and b!5186549 ((_ is Cons!60316) (t!373593 zl!343))) b!5187216))

(declare-fun m!6245074 () Bool)

(assert (=> b!5187216 m!6245074))

(declare-fun condSetEmpty!32704 () Bool)

(assert (=> setNonEmpty!32698 (= condSetEmpty!32704 (= setRest!32698 ((as const (Array Context!8194 Bool)) false)))))

(declare-fun setRes!32704 () Bool)

(assert (=> setNonEmpty!32698 (= tp!1455230 setRes!32704)))

(declare-fun setIsEmpty!32704 () Bool)

(assert (=> setIsEmpty!32704 setRes!32704))

(declare-fun tp!1455321 () Bool)

(declare-fun setElem!32704 () Context!8194)

(declare-fun e!3231358 () Bool)

(declare-fun setNonEmpty!32704 () Bool)

(assert (=> setNonEmpty!32704 (= setRes!32704 (and tp!1455321 (inv!80029 setElem!32704) e!3231358))))

(declare-fun setRest!32704 () (InoxSet Context!8194))

(assert (=> setNonEmpty!32704 (= setRest!32698 ((_ map or) (store ((as const (Array Context!8194 Bool)) false) setElem!32704 true) setRest!32704))))

(declare-fun b!5187222 () Bool)

(declare-fun tp!1455322 () Bool)

(assert (=> b!5187222 (= e!3231358 tp!1455322)))

(assert (= (and setNonEmpty!32698 condSetEmpty!32704) setIsEmpty!32704))

(assert (= (and setNonEmpty!32698 (not condSetEmpty!32704)) setNonEmpty!32704))

(assert (= setNonEmpty!32704 b!5187222))

(declare-fun m!6245076 () Bool)

(assert (=> setNonEmpty!32704 m!6245076))

(declare-fun b!5187227 () Bool)

(declare-fun e!3231361 () Bool)

(declare-fun tp!1455327 () Bool)

(declare-fun tp!1455328 () Bool)

(assert (=> b!5187227 (= e!3231361 (and tp!1455327 tp!1455328))))

(assert (=> b!5186539 (= tp!1455232 e!3231361)))

(assert (= (and b!5186539 ((_ is Cons!60315) (exprs!4597 (h!66764 zl!343)))) b!5187227))

(declare-fun e!3231362 () Bool)

(assert (=> b!5186548 (= tp!1455235 e!3231362)))

(declare-fun b!5187231 () Bool)

(declare-fun tp!1455333 () Bool)

(declare-fun tp!1455332 () Bool)

(assert (=> b!5187231 (= e!3231362 (and tp!1455333 tp!1455332))))

(declare-fun b!5187228 () Bool)

(assert (=> b!5187228 (= e!3231362 tp_is_empty!38679)))

(declare-fun b!5187229 () Bool)

(declare-fun tp!1455331 () Bool)

(declare-fun tp!1455330 () Bool)

(assert (=> b!5187229 (= e!3231362 (and tp!1455331 tp!1455330))))

(declare-fun b!5187230 () Bool)

(declare-fun tp!1455329 () Bool)

(assert (=> b!5187230 (= e!3231362 tp!1455329)))

(assert (= (and b!5186548 ((_ is ElementMatch!14713) (regOne!29939 r!7292))) b!5187228))

(assert (= (and b!5186548 ((_ is Concat!23558) (regOne!29939 r!7292))) b!5187229))

(assert (= (and b!5186548 ((_ is Star!14713) (regOne!29939 r!7292))) b!5187230))

(assert (= (and b!5186548 ((_ is Union!14713) (regOne!29939 r!7292))) b!5187231))

(declare-fun e!3231363 () Bool)

(assert (=> b!5186548 (= tp!1455228 e!3231363)))

(declare-fun b!5187235 () Bool)

(declare-fun tp!1455338 () Bool)

(declare-fun tp!1455337 () Bool)

(assert (=> b!5187235 (= e!3231363 (and tp!1455338 tp!1455337))))

(declare-fun b!5187232 () Bool)

(assert (=> b!5187232 (= e!3231363 tp_is_empty!38679)))

(declare-fun b!5187233 () Bool)

(declare-fun tp!1455336 () Bool)

(declare-fun tp!1455335 () Bool)

(assert (=> b!5187233 (= e!3231363 (and tp!1455336 tp!1455335))))

(declare-fun b!5187234 () Bool)

(declare-fun tp!1455334 () Bool)

(assert (=> b!5187234 (= e!3231363 tp!1455334)))

(assert (= (and b!5186548 ((_ is ElementMatch!14713) (regTwo!29939 r!7292))) b!5187232))

(assert (= (and b!5186548 ((_ is Concat!23558) (regTwo!29939 r!7292))) b!5187233))

(assert (= (and b!5186548 ((_ is Star!14713) (regTwo!29939 r!7292))) b!5187234))

(assert (= (and b!5186548 ((_ is Union!14713) (regTwo!29939 r!7292))) b!5187235))

(declare-fun e!3231364 () Bool)

(assert (=> b!5186557 (= tp!1455236 e!3231364)))

(declare-fun b!5187239 () Bool)

(declare-fun tp!1455343 () Bool)

(declare-fun tp!1455342 () Bool)

(assert (=> b!5187239 (= e!3231364 (and tp!1455343 tp!1455342))))

(declare-fun b!5187236 () Bool)

(assert (=> b!5187236 (= e!3231364 tp_is_empty!38679)))

(declare-fun b!5187237 () Bool)

(declare-fun tp!1455341 () Bool)

(declare-fun tp!1455340 () Bool)

(assert (=> b!5187237 (= e!3231364 (and tp!1455341 tp!1455340))))

(declare-fun b!5187238 () Bool)

(declare-fun tp!1455339 () Bool)

(assert (=> b!5187238 (= e!3231364 tp!1455339)))

(assert (= (and b!5186557 ((_ is ElementMatch!14713) (regOne!29938 r!7292))) b!5187236))

(assert (= (and b!5186557 ((_ is Concat!23558) (regOne!29938 r!7292))) b!5187237))

(assert (= (and b!5186557 ((_ is Star!14713) (regOne!29938 r!7292))) b!5187238))

(assert (= (and b!5186557 ((_ is Union!14713) (regOne!29938 r!7292))) b!5187239))

(declare-fun e!3231365 () Bool)

(assert (=> b!5186557 (= tp!1455237 e!3231365)))

(declare-fun b!5187243 () Bool)

(declare-fun tp!1455348 () Bool)

(declare-fun tp!1455347 () Bool)

(assert (=> b!5187243 (= e!3231365 (and tp!1455348 tp!1455347))))

(declare-fun b!5187240 () Bool)

(assert (=> b!5187240 (= e!3231365 tp_is_empty!38679)))

(declare-fun b!5187241 () Bool)

(declare-fun tp!1455346 () Bool)

(declare-fun tp!1455345 () Bool)

(assert (=> b!5187241 (= e!3231365 (and tp!1455346 tp!1455345))))

(declare-fun b!5187242 () Bool)

(declare-fun tp!1455344 () Bool)

(assert (=> b!5187242 (= e!3231365 tp!1455344)))

(assert (= (and b!5186557 ((_ is ElementMatch!14713) (regTwo!29938 r!7292))) b!5187240))

(assert (= (and b!5186557 ((_ is Concat!23558) (regTwo!29938 r!7292))) b!5187241))

(assert (= (and b!5186557 ((_ is Star!14713) (regTwo!29938 r!7292))) b!5187242))

(assert (= (and b!5186557 ((_ is Union!14713) (regTwo!29938 r!7292))) b!5187243))

(declare-fun b!5187244 () Bool)

(declare-fun e!3231366 () Bool)

(declare-fun tp!1455349 () Bool)

(declare-fun tp!1455350 () Bool)

(assert (=> b!5187244 (= e!3231366 (and tp!1455349 tp!1455350))))

(assert (=> b!5186555 (= tp!1455233 e!3231366)))

(assert (= (and b!5186555 ((_ is Cons!60315) (exprs!4597 setElem!32698))) b!5187244))

(declare-fun b!5187249 () Bool)

(declare-fun e!3231369 () Bool)

(declare-fun tp!1455353 () Bool)

(assert (=> b!5187249 (= e!3231369 (and tp_is_empty!38679 tp!1455353))))

(assert (=> b!5186541 (= tp!1455229 e!3231369)))

(assert (= (and b!5186541 ((_ is Cons!60314) (t!373591 s!2326))) b!5187249))

(check-sat (not bm!364419) (not b!5186845) (not bm!364498) (not b!5187035) (not b!5186844) (not b!5187087) (not d!1676276) (not b!5187217) (not b!5187033) (not b!5186598) (not b!5187231) (not bm!364501) (not b!5187110) (not b!5186934) (not b!5187135) (not b!5187242) (not d!1676290) (not b!5187207) (not bm!364482) (not b!5187085) (not b!5187234) (not b!5187152) (not d!1676288) (not d!1676298) (not d!1676304) (not b!5187081) tp_is_empty!38679 (not b!5187216) (not b!5186842) (not bm!364477) (not b!5187222) (not d!1676292) (not bm!364485) (not bm!364506) (not b!5187227) (not b!5187078) (not bm!364481) (not b!5187103) (not b!5186850) (not d!1676272) (not bm!364480) (not bm!364472) (not b!5187117) (not bm!364479) (not b!5186846) (not b!5187132) (not b!5187208) (not b!5187249) (not b!5186933) (not d!1676238) (not b!5187131) (not bm!364473) (not d!1676300) (not b!5187149) (not b!5186931) (not setNonEmpty!32704) (not b!5187243) (not b!5186928) (not b!5187241) (not b!5187115) (not b!5186932) (not b!5187112) (not b!5187237) (not b!5187230) (not b!5186930) (not b!5187187) (not b!5187233) (not bm!364476) (not b!5187229) (not b!5187180) (not bm!364417) (not b!5187235) (not b!5187238) (not b!5187239) (not b!5187075) (not bm!364478) (not d!1676306) (not d!1676314) (not bm!364504) (not b!5187244) (not b!5186843) (not bm!364499) (not d!1676266) (not b!5187082) (not b!5186872) (not b!5187092) (not b!5187107) (not b!5187090) (not b!5186929) (not d!1676296) (not b!5187106) (not b!5187100) (not b!5187128) (not b!5186851) (not b!5187137) (not b!5186890) (not b!5187209) (not b!5187125))
(check-sat)
