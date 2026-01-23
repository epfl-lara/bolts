; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!549268 () Bool)

(assert start!549268)

(declare-fun b!5188096 () Bool)

(declare-fun e!3231824 () Bool)

(declare-fun e!3231828 () Bool)

(assert (=> b!5188096 (= e!3231824 (not e!3231828))))

(declare-fun res!2203707 () Bool)

(assert (=> b!5188096 (=> res!2203707 e!3231828)))

(declare-datatypes ((C!29702 0))(
  ( (C!29703 (val!24553 Int)) )
))
(declare-datatypes ((Regex!14716 0))(
  ( (ElementMatch!14716 (c!894145 C!29702)) (Concat!23561 (regOne!29944 Regex!14716) (regTwo!29944 Regex!14716)) (EmptyExpr!14716) (Star!14716 (reg!15045 Regex!14716)) (EmptyLang!14716) (Union!14716 (regOne!29945 Regex!14716) (regTwo!29945 Regex!14716)) )
))
(declare-datatypes ((List!60447 0))(
  ( (Nil!60323) (Cons!60323 (h!66771 Regex!14716) (t!373600 List!60447)) )
))
(declare-datatypes ((Context!8200 0))(
  ( (Context!8201 (exprs!4600 List!60447)) )
))
(declare-datatypes ((List!60448 0))(
  ( (Nil!60324) (Cons!60324 (h!66772 Context!8200) (t!373601 List!60448)) )
))
(declare-fun zl!343 () List!60448)

(assert (=> b!5188096 (= res!2203707 (not (is-Cons!60324 zl!343)))))

(declare-fun lt!2136841 () Bool)

(declare-fun r!7292 () Regex!14716)

(declare-datatypes ((List!60449 0))(
  ( (Nil!60325) (Cons!60325 (h!66773 C!29702) (t!373602 List!60449)) )
))
(declare-fun s!2326 () List!60449)

(declare-fun matchRSpec!1819 (Regex!14716 List!60449) Bool)

(assert (=> b!5188096 (= lt!2136841 (matchRSpec!1819 r!7292 s!2326))))

(declare-fun matchR!6901 (Regex!14716 List!60449) Bool)

(assert (=> b!5188096 (= lt!2136841 (matchR!6901 r!7292 s!2326))))

(declare-datatypes ((Unit!152266 0))(
  ( (Unit!152267) )
))
(declare-fun lt!2136839 () Unit!152266)

(declare-fun mainMatchTheorem!1819 (Regex!14716 List!60449) Unit!152266)

(assert (=> b!5188096 (= lt!2136839 (mainMatchTheorem!1819 r!7292 s!2326))))

(declare-fun b!5188097 () Bool)

(declare-fun res!2203702 () Bool)

(declare-fun e!3231831 () Bool)

(assert (=> b!5188097 (=> res!2203702 e!3231831)))

(declare-fun lt!2136842 () (Set Context!8200))

(declare-fun lt!2136845 () Context!8200)

(declare-fun derivationStepZipperDown!185 (Regex!14716 Context!8200 C!29702) (Set Context!8200))

(assert (=> b!5188097 (= res!2203702 (not (= lt!2136842 (set.union (derivationStepZipperDown!185 (regOne!29945 r!7292) lt!2136845 (h!66773 s!2326)) (derivationStepZipperDown!185 (regTwo!29945 r!7292) lt!2136845 (h!66773 s!2326))))))))

(declare-fun b!5188098 () Bool)

(declare-fun e!3231832 () Bool)

(declare-fun tp!1455557 () Bool)

(assert (=> b!5188098 (= e!3231832 tp!1455557)))

(declare-fun b!5188099 () Bool)

(declare-fun validRegex!6452 (Regex!14716) Bool)

(assert (=> b!5188099 (= e!3231831 (validRegex!6452 (regOne!29945 r!7292)))))

(declare-fun b!5188100 () Bool)

(declare-fun res!2203711 () Bool)

(assert (=> b!5188100 (=> res!2203711 e!3231828)))

(assert (=> b!5188100 (= res!2203711 (not (is-Cons!60323 (exprs!4600 (h!66772 zl!343)))))))

(declare-fun b!5188101 () Bool)

(declare-fun res!2203710 () Bool)

(assert (=> b!5188101 (=> res!2203710 e!3231828)))

(declare-fun generalisedConcat!385 (List!60447) Regex!14716)

(assert (=> b!5188101 (= res!2203710 (not (= r!7292 (generalisedConcat!385 (exprs!4600 (h!66772 zl!343))))))))

(declare-fun b!5188102 () Bool)

(declare-fun e!3231827 () Bool)

(declare-fun tp!1455556 () Bool)

(declare-fun tp!1455559 () Bool)

(assert (=> b!5188102 (= e!3231827 (and tp!1455556 tp!1455559))))

(declare-fun b!5188103 () Bool)

(declare-fun res!2203708 () Bool)

(assert (=> b!5188103 (=> res!2203708 e!3231828)))

(assert (=> b!5188103 (= res!2203708 (or (is-EmptyExpr!14716 r!7292) (is-EmptyLang!14716 r!7292) (is-ElementMatch!14716 r!7292) (not (is-Union!14716 r!7292))))))

(declare-fun b!5188104 () Bool)

(declare-fun res!2203704 () Bool)

(assert (=> b!5188104 (=> (not res!2203704) (not e!3231824))))

(declare-fun z!1189 () (Set Context!8200))

(declare-fun toList!8500 ((Set Context!8200)) List!60448)

(assert (=> b!5188104 (= res!2203704 (= (toList!8500 z!1189) zl!343))))

(declare-fun b!5188105 () Bool)

(declare-fun e!3231829 () Bool)

(assert (=> b!5188105 (= e!3231829 e!3231831)))

(declare-fun res!2203703 () Bool)

(assert (=> b!5188105 (=> res!2203703 e!3231831)))

(declare-fun lt!2136838 () (Set Context!8200))

(assert (=> b!5188105 (= res!2203703 (not (= lt!2136838 lt!2136842)))))

(assert (=> b!5188105 (= lt!2136842 (derivationStepZipperDown!185 r!7292 lt!2136845 (h!66773 s!2326)))))

(assert (=> b!5188105 (= lt!2136845 (Context!8201 Nil!60323))))

(declare-fun derivationStepZipperUp!106 (Context!8200 C!29702) (Set Context!8200))

(assert (=> b!5188105 (= lt!2136838 (derivationStepZipperUp!106 (Context!8201 (Cons!60323 r!7292 Nil!60323)) (h!66773 s!2326)))))

(declare-fun b!5188106 () Bool)

(declare-fun e!3231826 () Bool)

(declare-fun tp!1455552 () Bool)

(assert (=> b!5188106 (= e!3231826 tp!1455552)))

(declare-fun b!5188107 () Bool)

(declare-fun tp!1455558 () Bool)

(assert (=> b!5188107 (= e!3231827 tp!1455558)))

(declare-fun b!5188108 () Bool)

(declare-fun res!2203709 () Bool)

(assert (=> b!5188108 (=> res!2203709 e!3231828)))

(declare-fun generalisedUnion!645 (List!60447) Regex!14716)

(declare-fun unfocusZipperList!158 (List!60448) List!60447)

(assert (=> b!5188108 (= res!2203709 (not (= r!7292 (generalisedUnion!645 (unfocusZipperList!158 zl!343)))))))

(declare-fun b!5188109 () Bool)

(assert (=> b!5188109 (= e!3231828 e!3231829)))

(declare-fun res!2203706 () Bool)

(assert (=> b!5188109 (=> res!2203706 e!3231829)))

(declare-fun lt!2136843 () Bool)

(declare-fun lt!2136840 () Bool)

(assert (=> b!5188109 (= res!2203706 (or (not (= lt!2136841 (or lt!2136843 lt!2136840))) (is-Nil!60325 s!2326)))))

(assert (=> b!5188109 (= lt!2136840 (matchRSpec!1819 (regTwo!29945 r!7292) s!2326))))

(assert (=> b!5188109 (= lt!2136840 (matchR!6901 (regTwo!29945 r!7292) s!2326))))

(declare-fun lt!2136846 () Unit!152266)

(assert (=> b!5188109 (= lt!2136846 (mainMatchTheorem!1819 (regTwo!29945 r!7292) s!2326))))

(assert (=> b!5188109 (= lt!2136843 (matchRSpec!1819 (regOne!29945 r!7292) s!2326))))

(assert (=> b!5188109 (= lt!2136843 (matchR!6901 (regOne!29945 r!7292) s!2326))))

(declare-fun lt!2136844 () Unit!152266)

(assert (=> b!5188109 (= lt!2136844 (mainMatchTheorem!1819 (regOne!29945 r!7292) s!2326))))

(declare-fun b!5188110 () Bool)

(declare-fun tp!1455553 () Bool)

(declare-fun tp!1455555 () Bool)

(assert (=> b!5188110 (= e!3231827 (and tp!1455553 tp!1455555))))

(declare-fun tp!1455554 () Bool)

(declare-fun b!5188111 () Bool)

(declare-fun e!3231825 () Bool)

(declare-fun inv!80038 (Context!8200) Bool)

(assert (=> b!5188111 (= e!3231825 (and (inv!80038 (h!66772 zl!343)) e!3231832 tp!1455554))))

(declare-fun b!5188112 () Bool)

(declare-fun res!2203701 () Bool)

(assert (=> b!5188112 (=> res!2203701 e!3231828)))

(declare-fun isEmpty!32289 (List!60448) Bool)

(assert (=> b!5188112 (= res!2203701 (not (isEmpty!32289 (t!373601 zl!343))))))

(declare-fun setIsEmpty!32719 () Bool)

(declare-fun setRes!32719 () Bool)

(assert (=> setIsEmpty!32719 setRes!32719))

(declare-fun b!5188113 () Bool)

(declare-fun tp_is_empty!38685 () Bool)

(assert (=> b!5188113 (= e!3231827 tp_is_empty!38685)))

(declare-fun setNonEmpty!32719 () Bool)

(declare-fun setElem!32719 () Context!8200)

(declare-fun tp!1455550 () Bool)

(assert (=> setNonEmpty!32719 (= setRes!32719 (and tp!1455550 (inv!80038 setElem!32719) e!3231826))))

(declare-fun setRest!32719 () (Set Context!8200))

(assert (=> setNonEmpty!32719 (= z!1189 (set.union (set.insert setElem!32719 (as set.empty (Set Context!8200))) setRest!32719))))

(declare-fun res!2203712 () Bool)

(assert (=> start!549268 (=> (not res!2203712) (not e!3231824))))

(assert (=> start!549268 (= res!2203712 (validRegex!6452 r!7292))))

(assert (=> start!549268 e!3231824))

(assert (=> start!549268 e!3231827))

(declare-fun condSetEmpty!32719 () Bool)

(assert (=> start!549268 (= condSetEmpty!32719 (= z!1189 (as set.empty (Set Context!8200))))))

(assert (=> start!549268 setRes!32719))

(assert (=> start!549268 e!3231825))

(declare-fun e!3231830 () Bool)

(assert (=> start!549268 e!3231830))

(declare-fun b!5188114 () Bool)

(declare-fun tp!1455551 () Bool)

(assert (=> b!5188114 (= e!3231830 (and tp_is_empty!38685 tp!1455551))))

(declare-fun b!5188115 () Bool)

(declare-fun res!2203705 () Bool)

(assert (=> b!5188115 (=> (not res!2203705) (not e!3231824))))

(declare-fun unfocusZipper!458 (List!60448) Regex!14716)

(assert (=> b!5188115 (= res!2203705 (= r!7292 (unfocusZipper!458 zl!343)))))

(assert (= (and start!549268 res!2203712) b!5188104))

(assert (= (and b!5188104 res!2203704) b!5188115))

(assert (= (and b!5188115 res!2203705) b!5188096))

(assert (= (and b!5188096 (not res!2203707)) b!5188112))

(assert (= (and b!5188112 (not res!2203701)) b!5188101))

(assert (= (and b!5188101 (not res!2203710)) b!5188100))

(assert (= (and b!5188100 (not res!2203711)) b!5188108))

(assert (= (and b!5188108 (not res!2203709)) b!5188103))

(assert (= (and b!5188103 (not res!2203708)) b!5188109))

(assert (= (and b!5188109 (not res!2203706)) b!5188105))

(assert (= (and b!5188105 (not res!2203703)) b!5188097))

(assert (= (and b!5188097 (not res!2203702)) b!5188099))

(assert (= (and start!549268 (is-ElementMatch!14716 r!7292)) b!5188113))

(assert (= (and start!549268 (is-Concat!23561 r!7292)) b!5188110))

(assert (= (and start!549268 (is-Star!14716 r!7292)) b!5188107))

(assert (= (and start!549268 (is-Union!14716 r!7292)) b!5188102))

(assert (= (and start!549268 condSetEmpty!32719) setIsEmpty!32719))

(assert (= (and start!549268 (not condSetEmpty!32719)) setNonEmpty!32719))

(assert (= setNonEmpty!32719 b!5188106))

(assert (= b!5188111 b!5188098))

(assert (= (and start!549268 (is-Cons!60324 zl!343)) b!5188111))

(assert (= (and start!549268 (is-Cons!60325 s!2326)) b!5188114))

(declare-fun m!6245434 () Bool)

(assert (=> b!5188109 m!6245434))

(declare-fun m!6245436 () Bool)

(assert (=> b!5188109 m!6245436))

(declare-fun m!6245438 () Bool)

(assert (=> b!5188109 m!6245438))

(declare-fun m!6245440 () Bool)

(assert (=> b!5188109 m!6245440))

(declare-fun m!6245442 () Bool)

(assert (=> b!5188109 m!6245442))

(declare-fun m!6245444 () Bool)

(assert (=> b!5188109 m!6245444))

(declare-fun m!6245446 () Bool)

(assert (=> b!5188101 m!6245446))

(declare-fun m!6245448 () Bool)

(assert (=> b!5188099 m!6245448))

(declare-fun m!6245450 () Bool)

(assert (=> start!549268 m!6245450))

(declare-fun m!6245452 () Bool)

(assert (=> b!5188096 m!6245452))

(declare-fun m!6245454 () Bool)

(assert (=> b!5188096 m!6245454))

(declare-fun m!6245456 () Bool)

(assert (=> b!5188096 m!6245456))

(declare-fun m!6245458 () Bool)

(assert (=> b!5188097 m!6245458))

(declare-fun m!6245460 () Bool)

(assert (=> b!5188097 m!6245460))

(declare-fun m!6245462 () Bool)

(assert (=> b!5188108 m!6245462))

(assert (=> b!5188108 m!6245462))

(declare-fun m!6245464 () Bool)

(assert (=> b!5188108 m!6245464))

(declare-fun m!6245466 () Bool)

(assert (=> b!5188111 m!6245466))

(declare-fun m!6245468 () Bool)

(assert (=> b!5188115 m!6245468))

(declare-fun m!6245470 () Bool)

(assert (=> setNonEmpty!32719 m!6245470))

(declare-fun m!6245472 () Bool)

(assert (=> b!5188104 m!6245472))

(declare-fun m!6245474 () Bool)

(assert (=> b!5188105 m!6245474))

(declare-fun m!6245476 () Bool)

(assert (=> b!5188105 m!6245476))

(declare-fun m!6245478 () Bool)

(assert (=> b!5188112 m!6245478))

(push 1)

(assert (not b!5188110))

(assert tp_is_empty!38685)

(assert (not setNonEmpty!32719))

(assert (not b!5188097))

(assert (not b!5188108))

(assert (not b!5188112))

(assert (not b!5188098))

(assert (not b!5188102))

(assert (not b!5188105))

(assert (not b!5188109))

(assert (not b!5188106))

(assert (not b!5188101))

(assert (not start!549268))

(assert (not b!5188111))

(assert (not b!5188115))

(assert (not b!5188107))

(assert (not b!5188114))

(assert (not b!5188099))

(assert (not b!5188104))

(assert (not b!5188096))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5188262 () Bool)

(declare-fun e!3231914 () Bool)

(declare-fun lt!2136876 () Regex!14716)

(declare-fun head!11109 (List!60447) Regex!14716)

(assert (=> b!5188262 (= e!3231914 (= lt!2136876 (head!11109 (exprs!4600 (h!66772 zl!343)))))))

(declare-fun b!5188264 () Bool)

(declare-fun e!3231910 () Bool)

(declare-fun isEmpty!32291 (List!60447) Bool)

(assert (=> b!5188264 (= e!3231910 (isEmpty!32291 (t!373600 (exprs!4600 (h!66772 zl!343)))))))

(declare-fun b!5188265 () Bool)

(declare-fun e!3231913 () Bool)

(declare-fun e!3231911 () Bool)

(assert (=> b!5188265 (= e!3231913 e!3231911)))

(declare-fun c!894183 () Bool)

(assert (=> b!5188265 (= c!894183 (isEmpty!32291 (exprs!4600 (h!66772 zl!343))))))

(declare-fun b!5188266 () Bool)

(declare-fun e!3231912 () Regex!14716)

(assert (=> b!5188266 (= e!3231912 (h!66771 (exprs!4600 (h!66772 zl!343))))))

(declare-fun b!5188267 () Bool)

(declare-fun e!3231915 () Regex!14716)

(assert (=> b!5188267 (= e!3231912 e!3231915)))

(declare-fun c!894184 () Bool)

(assert (=> b!5188267 (= c!894184 (is-Cons!60323 (exprs!4600 (h!66772 zl!343))))))

(declare-fun b!5188268 () Bool)

(assert (=> b!5188268 (= e!3231915 (Concat!23561 (h!66771 (exprs!4600 (h!66772 zl!343))) (generalisedConcat!385 (t!373600 (exprs!4600 (h!66772 zl!343))))))))

(declare-fun b!5188269 () Bool)

(assert (=> b!5188269 (= e!3231915 EmptyExpr!14716)))

(declare-fun b!5188263 () Bool)

(assert (=> b!5188263 (= e!3231911 e!3231914)))

(declare-fun c!894185 () Bool)

(declare-fun tail!10206 (List!60447) List!60447)

(assert (=> b!5188263 (= c!894185 (isEmpty!32291 (tail!10206 (exprs!4600 (h!66772 zl!343)))))))

(declare-fun d!1676402 () Bool)

(assert (=> d!1676402 e!3231913))

(declare-fun res!2203764 () Bool)

(assert (=> d!1676402 (=> (not res!2203764) (not e!3231913))))

(assert (=> d!1676402 (= res!2203764 (validRegex!6452 lt!2136876))))

(assert (=> d!1676402 (= lt!2136876 e!3231912)))

(declare-fun c!894186 () Bool)

(assert (=> d!1676402 (= c!894186 e!3231910)))

(declare-fun res!2203763 () Bool)

(assert (=> d!1676402 (=> (not res!2203763) (not e!3231910))))

(assert (=> d!1676402 (= res!2203763 (is-Cons!60323 (exprs!4600 (h!66772 zl!343))))))

(declare-fun lambda!259382 () Int)

(declare-fun forall!14203 (List!60447 Int) Bool)

(assert (=> d!1676402 (forall!14203 (exprs!4600 (h!66772 zl!343)) lambda!259382)))

(assert (=> d!1676402 (= (generalisedConcat!385 (exprs!4600 (h!66772 zl!343))) lt!2136876)))

(declare-fun b!5188270 () Bool)

(declare-fun isConcat!254 (Regex!14716) Bool)

(assert (=> b!5188270 (= e!3231914 (isConcat!254 lt!2136876))))

(declare-fun b!5188271 () Bool)

(declare-fun isEmptyExpr!731 (Regex!14716) Bool)

(assert (=> b!5188271 (= e!3231911 (isEmptyExpr!731 lt!2136876))))

(assert (= (and d!1676402 res!2203763) b!5188264))

(assert (= (and d!1676402 c!894186) b!5188266))

(assert (= (and d!1676402 (not c!894186)) b!5188267))

(assert (= (and b!5188267 c!894184) b!5188268))

(assert (= (and b!5188267 (not c!894184)) b!5188269))

(assert (= (and d!1676402 res!2203764) b!5188265))

(assert (= (and b!5188265 c!894183) b!5188271))

(assert (= (and b!5188265 (not c!894183)) b!5188263))

(assert (= (and b!5188263 c!894185) b!5188262))

(assert (= (and b!5188263 (not c!894185)) b!5188270))

(declare-fun m!6245544 () Bool)

(assert (=> d!1676402 m!6245544))

(declare-fun m!6245546 () Bool)

(assert (=> d!1676402 m!6245546))

(declare-fun m!6245548 () Bool)

(assert (=> b!5188268 m!6245548))

(declare-fun m!6245550 () Bool)

(assert (=> b!5188270 m!6245550))

(declare-fun m!6245552 () Bool)

(assert (=> b!5188264 m!6245552))

(declare-fun m!6245554 () Bool)

(assert (=> b!5188262 m!6245554))

(declare-fun m!6245556 () Bool)

(assert (=> b!5188265 m!6245556))

(declare-fun m!6245558 () Bool)

(assert (=> b!5188271 m!6245558))

(declare-fun m!6245560 () Bool)

(assert (=> b!5188263 m!6245560))

(assert (=> b!5188263 m!6245560))

(declare-fun m!6245562 () Bool)

(assert (=> b!5188263 m!6245562))

(assert (=> b!5188101 d!1676402))

(declare-fun d!1676410 () Bool)

(assert (=> d!1676410 (= (isEmpty!32289 (t!373601 zl!343)) (is-Nil!60324 (t!373601 zl!343)))))

(assert (=> b!5188112 d!1676410))

(declare-fun b!5188311 () Bool)

(assert (=> b!5188311 true))

(assert (=> b!5188311 true))

(declare-fun bs!1208412 () Bool)

(declare-fun b!5188307 () Bool)

(assert (= bs!1208412 (and b!5188307 b!5188311)))

(declare-fun lambda!259388 () Int)

(declare-fun lambda!259387 () Int)

(assert (=> bs!1208412 (not (= lambda!259388 lambda!259387))))

(assert (=> b!5188307 true))

(assert (=> b!5188307 true))

(declare-fun b!5188304 () Bool)

(declare-fun c!894196 () Bool)

(assert (=> b!5188304 (= c!894196 (is-Union!14716 (regTwo!29945 r!7292)))))

(declare-fun e!3231938 () Bool)

(declare-fun e!3231934 () Bool)

(assert (=> b!5188304 (= e!3231938 e!3231934)))

(declare-fun b!5188305 () Bool)

(declare-fun c!894195 () Bool)

(assert (=> b!5188305 (= c!894195 (is-ElementMatch!14716 (regTwo!29945 r!7292)))))

(declare-fun e!3231940 () Bool)

(assert (=> b!5188305 (= e!3231940 e!3231938)))

(declare-fun c!894197 () Bool)

(declare-fun bm!364631 () Bool)

(declare-fun call!364636 () Bool)

(declare-fun Exists!1911 (Int) Bool)

(assert (=> bm!364631 (= call!364636 (Exists!1911 (ite c!894197 lambda!259387 lambda!259388)))))

(declare-fun e!3231939 () Bool)

(assert (=> b!5188307 (= e!3231939 call!364636)))

(declare-fun b!5188308 () Bool)

(assert (=> b!5188308 (= e!3231938 (= s!2326 (Cons!60325 (c!894145 (regTwo!29945 r!7292)) Nil!60325)))))

(declare-fun b!5188309 () Bool)

(declare-fun res!2203782 () Bool)

(declare-fun e!3231935 () Bool)

(assert (=> b!5188309 (=> res!2203782 e!3231935)))

(declare-fun call!364637 () Bool)

(assert (=> b!5188309 (= res!2203782 call!364637)))

(assert (=> b!5188309 (= e!3231939 e!3231935)))

(declare-fun b!5188310 () Bool)

(declare-fun e!3231936 () Bool)

(assert (=> b!5188310 (= e!3231934 e!3231936)))

(declare-fun res!2203781 () Bool)

(assert (=> b!5188310 (= res!2203781 (matchRSpec!1819 (regOne!29945 (regTwo!29945 r!7292)) s!2326))))

(assert (=> b!5188310 (=> res!2203781 e!3231936)))

(assert (=> b!5188311 (= e!3231935 call!364636)))

(declare-fun d!1676412 () Bool)

(declare-fun c!894198 () Bool)

(assert (=> d!1676412 (= c!894198 (is-EmptyExpr!14716 (regTwo!29945 r!7292)))))

(declare-fun e!3231937 () Bool)

(assert (=> d!1676412 (= (matchRSpec!1819 (regTwo!29945 r!7292) s!2326) e!3231937)))

(declare-fun b!5188306 () Bool)

(assert (=> b!5188306 (= e!3231936 (matchRSpec!1819 (regTwo!29945 (regTwo!29945 r!7292)) s!2326))))

(declare-fun bm!364632 () Bool)

(declare-fun isEmpty!32292 (List!60449) Bool)

(assert (=> bm!364632 (= call!364637 (isEmpty!32292 s!2326))))

(declare-fun b!5188312 () Bool)

(assert (=> b!5188312 (= e!3231937 call!364637)))

(declare-fun b!5188313 () Bool)

(assert (=> b!5188313 (= e!3231937 e!3231940)))

(declare-fun res!2203783 () Bool)

(assert (=> b!5188313 (= res!2203783 (not (is-EmptyLang!14716 (regTwo!29945 r!7292))))))

(assert (=> b!5188313 (=> (not res!2203783) (not e!3231940))))

(declare-fun b!5188314 () Bool)

(assert (=> b!5188314 (= e!3231934 e!3231939)))

(assert (=> b!5188314 (= c!894197 (is-Star!14716 (regTwo!29945 r!7292)))))

(assert (= (and d!1676412 c!894198) b!5188312))

(assert (= (and d!1676412 (not c!894198)) b!5188313))

(assert (= (and b!5188313 res!2203783) b!5188305))

(assert (= (and b!5188305 c!894195) b!5188308))

(assert (= (and b!5188305 (not c!894195)) b!5188304))

(assert (= (and b!5188304 c!894196) b!5188310))

(assert (= (and b!5188304 (not c!894196)) b!5188314))

(assert (= (and b!5188310 (not res!2203781)) b!5188306))

(assert (= (and b!5188314 c!894197) b!5188309))

(assert (= (and b!5188314 (not c!894197)) b!5188307))

(assert (= (and b!5188309 (not res!2203782)) b!5188311))

(assert (= (or b!5188311 b!5188307) bm!364631))

(assert (= (or b!5188312 b!5188309) bm!364632))

(declare-fun m!6245564 () Bool)

(assert (=> bm!364631 m!6245564))

(declare-fun m!6245566 () Bool)

(assert (=> b!5188310 m!6245566))

(declare-fun m!6245568 () Bool)

(assert (=> b!5188306 m!6245568))

(declare-fun m!6245570 () Bool)

(assert (=> bm!364632 m!6245570))

(assert (=> b!5188109 d!1676412))

(declare-fun d!1676414 () Bool)

(assert (=> d!1676414 (= (matchR!6901 (regOne!29945 r!7292) s!2326) (matchRSpec!1819 (regOne!29945 r!7292) s!2326))))

(declare-fun lt!2136879 () Unit!152266)

(declare-fun choose!38544 (Regex!14716 List!60449) Unit!152266)

(assert (=> d!1676414 (= lt!2136879 (choose!38544 (regOne!29945 r!7292) s!2326))))

(assert (=> d!1676414 (validRegex!6452 (regOne!29945 r!7292))))

(assert (=> d!1676414 (= (mainMatchTheorem!1819 (regOne!29945 r!7292) s!2326) lt!2136879)))

(declare-fun bs!1208413 () Bool)

(assert (= bs!1208413 d!1676414))

(assert (=> bs!1208413 m!6245444))

(assert (=> bs!1208413 m!6245440))

(declare-fun m!6245572 () Bool)

(assert (=> bs!1208413 m!6245572))

(assert (=> bs!1208413 m!6245448))

(assert (=> b!5188109 d!1676414))

(declare-fun b!5188347 () Bool)

(declare-fun e!3231960 () Bool)

(declare-fun e!3231959 () Bool)

(assert (=> b!5188347 (= e!3231960 e!3231959)))

(declare-fun c!894205 () Bool)

(assert (=> b!5188347 (= c!894205 (is-EmptyLang!14716 (regTwo!29945 r!7292)))))

(declare-fun b!5188348 () Bool)

(declare-fun res!2203801 () Bool)

(declare-fun e!3231958 () Bool)

(assert (=> b!5188348 (=> res!2203801 e!3231958)))

(declare-fun e!3231961 () Bool)

(assert (=> b!5188348 (= res!2203801 e!3231961)))

(declare-fun res!2203805 () Bool)

(assert (=> b!5188348 (=> (not res!2203805) (not e!3231961))))

(declare-fun lt!2136882 () Bool)

(assert (=> b!5188348 (= res!2203805 lt!2136882)))

(declare-fun b!5188349 () Bool)

(declare-fun res!2203804 () Bool)

(assert (=> b!5188349 (=> (not res!2203804) (not e!3231961))))

(declare-fun call!364640 () Bool)

(assert (=> b!5188349 (= res!2203804 (not call!364640))))

(declare-fun b!5188350 () Bool)

(declare-fun e!3231956 () Bool)

(declare-fun nullable!4915 (Regex!14716) Bool)

(assert (=> b!5188350 (= e!3231956 (nullable!4915 (regTwo!29945 r!7292)))))

(declare-fun b!5188351 () Bool)

(declare-fun head!11110 (List!60449) C!29702)

(assert (=> b!5188351 (= e!3231961 (= (head!11110 s!2326) (c!894145 (regTwo!29945 r!7292))))))

(declare-fun b!5188352 () Bool)

(declare-fun res!2203802 () Bool)

(declare-fun e!3231957 () Bool)

(assert (=> b!5188352 (=> res!2203802 e!3231957)))

(declare-fun tail!10207 (List!60449) List!60449)

(assert (=> b!5188352 (= res!2203802 (not (isEmpty!32292 (tail!10207 s!2326))))))

(declare-fun b!5188353 () Bool)

(assert (=> b!5188353 (= e!3231957 (not (= (head!11110 s!2326) (c!894145 (regTwo!29945 r!7292)))))))

(declare-fun b!5188354 () Bool)

(assert (=> b!5188354 (= e!3231960 (= lt!2136882 call!364640))))

(declare-fun b!5188355 () Bool)

(declare-fun e!3231955 () Bool)

(assert (=> b!5188355 (= e!3231958 e!3231955)))

(declare-fun res!2203806 () Bool)

(assert (=> b!5188355 (=> (not res!2203806) (not e!3231955))))

(assert (=> b!5188355 (= res!2203806 (not lt!2136882))))

(declare-fun b!5188356 () Bool)

(declare-fun res!2203807 () Bool)

(assert (=> b!5188356 (=> res!2203807 e!3231958)))

(assert (=> b!5188356 (= res!2203807 (not (is-ElementMatch!14716 (regTwo!29945 r!7292))))))

(assert (=> b!5188356 (= e!3231959 e!3231958)))

(declare-fun b!5188358 () Bool)

(assert (=> b!5188358 (= e!3231955 e!3231957)))

(declare-fun res!2203803 () Bool)

(assert (=> b!5188358 (=> res!2203803 e!3231957)))

(assert (=> b!5188358 (= res!2203803 call!364640)))

(declare-fun b!5188359 () Bool)

(declare-fun derivativeStep!4017 (Regex!14716 C!29702) Regex!14716)

(assert (=> b!5188359 (= e!3231956 (matchR!6901 (derivativeStep!4017 (regTwo!29945 r!7292) (head!11110 s!2326)) (tail!10207 s!2326)))))

(declare-fun b!5188360 () Bool)

(declare-fun res!2203800 () Bool)

(assert (=> b!5188360 (=> (not res!2203800) (not e!3231961))))

(assert (=> b!5188360 (= res!2203800 (isEmpty!32292 (tail!10207 s!2326)))))

(declare-fun bm!364635 () Bool)

(assert (=> bm!364635 (= call!364640 (isEmpty!32292 s!2326))))

(declare-fun b!5188357 () Bool)

(assert (=> b!5188357 (= e!3231959 (not lt!2136882))))

(declare-fun d!1676416 () Bool)

(assert (=> d!1676416 e!3231960))

(declare-fun c!894207 () Bool)

(assert (=> d!1676416 (= c!894207 (is-EmptyExpr!14716 (regTwo!29945 r!7292)))))

(assert (=> d!1676416 (= lt!2136882 e!3231956)))

(declare-fun c!894206 () Bool)

(assert (=> d!1676416 (= c!894206 (isEmpty!32292 s!2326))))

(assert (=> d!1676416 (validRegex!6452 (regTwo!29945 r!7292))))

(assert (=> d!1676416 (= (matchR!6901 (regTwo!29945 r!7292) s!2326) lt!2136882)))

(assert (= (and d!1676416 c!894206) b!5188350))

(assert (= (and d!1676416 (not c!894206)) b!5188359))

(assert (= (and d!1676416 c!894207) b!5188354))

(assert (= (and d!1676416 (not c!894207)) b!5188347))

(assert (= (and b!5188347 c!894205) b!5188357))

(assert (= (and b!5188347 (not c!894205)) b!5188356))

(assert (= (and b!5188356 (not res!2203807)) b!5188348))

(assert (= (and b!5188348 res!2203805) b!5188349))

(assert (= (and b!5188349 res!2203804) b!5188360))

(assert (= (and b!5188360 res!2203800) b!5188351))

(assert (= (and b!5188348 (not res!2203801)) b!5188355))

(assert (= (and b!5188355 res!2203806) b!5188358))

(assert (= (and b!5188358 (not res!2203803)) b!5188352))

(assert (= (and b!5188352 (not res!2203802)) b!5188353))

(assert (= (or b!5188354 b!5188349 b!5188358) bm!364635))

(assert (=> bm!364635 m!6245570))

(declare-fun m!6245574 () Bool)

(assert (=> b!5188353 m!6245574))

(declare-fun m!6245576 () Bool)

(assert (=> b!5188352 m!6245576))

(assert (=> b!5188352 m!6245576))

(declare-fun m!6245578 () Bool)

(assert (=> b!5188352 m!6245578))

(assert (=> d!1676416 m!6245570))

(declare-fun m!6245580 () Bool)

(assert (=> d!1676416 m!6245580))

(assert (=> b!5188351 m!6245574))

(declare-fun m!6245582 () Bool)

(assert (=> b!5188350 m!6245582))

(assert (=> b!5188359 m!6245574))

(assert (=> b!5188359 m!6245574))

(declare-fun m!6245584 () Bool)

(assert (=> b!5188359 m!6245584))

(assert (=> b!5188359 m!6245576))

(assert (=> b!5188359 m!6245584))

(assert (=> b!5188359 m!6245576))

(declare-fun m!6245586 () Bool)

(assert (=> b!5188359 m!6245586))

(assert (=> b!5188360 m!6245576))

(assert (=> b!5188360 m!6245576))

(assert (=> b!5188360 m!6245578))

(assert (=> b!5188109 d!1676416))

(declare-fun d!1676418 () Bool)

(assert (=> d!1676418 (= (matchR!6901 (regTwo!29945 r!7292) s!2326) (matchRSpec!1819 (regTwo!29945 r!7292) s!2326))))

(declare-fun lt!2136883 () Unit!152266)

(assert (=> d!1676418 (= lt!2136883 (choose!38544 (regTwo!29945 r!7292) s!2326))))

(assert (=> d!1676418 (validRegex!6452 (regTwo!29945 r!7292))))

(assert (=> d!1676418 (= (mainMatchTheorem!1819 (regTwo!29945 r!7292) s!2326) lt!2136883)))

(declare-fun bs!1208414 () Bool)

(assert (= bs!1208414 d!1676418))

(assert (=> bs!1208414 m!6245438))

(assert (=> bs!1208414 m!6245434))

(declare-fun m!6245588 () Bool)

(assert (=> bs!1208414 m!6245588))

(assert (=> bs!1208414 m!6245580))

(assert (=> b!5188109 d!1676418))

(declare-fun bs!1208415 () Bool)

(declare-fun b!5188368 () Bool)

(assert (= bs!1208415 (and b!5188368 b!5188311)))

(declare-fun lambda!259389 () Int)

(assert (=> bs!1208415 (= (and (= (reg!15045 (regOne!29945 r!7292)) (reg!15045 (regTwo!29945 r!7292))) (= (regOne!29945 r!7292) (regTwo!29945 r!7292))) (= lambda!259389 lambda!259387))))

(declare-fun bs!1208416 () Bool)

(assert (= bs!1208416 (and b!5188368 b!5188307)))

(assert (=> bs!1208416 (not (= lambda!259389 lambda!259388))))

(assert (=> b!5188368 true))

(assert (=> b!5188368 true))

(declare-fun bs!1208417 () Bool)

(declare-fun b!5188364 () Bool)

(assert (= bs!1208417 (and b!5188364 b!5188311)))

(declare-fun lambda!259390 () Int)

(assert (=> bs!1208417 (not (= lambda!259390 lambda!259387))))

(declare-fun bs!1208418 () Bool)

(assert (= bs!1208418 (and b!5188364 b!5188307)))

(assert (=> bs!1208418 (= (and (= (regOne!29944 (regOne!29945 r!7292)) (regOne!29944 (regTwo!29945 r!7292))) (= (regTwo!29944 (regOne!29945 r!7292)) (regTwo!29944 (regTwo!29945 r!7292)))) (= lambda!259390 lambda!259388))))

(declare-fun bs!1208419 () Bool)

(assert (= bs!1208419 (and b!5188364 b!5188368)))

(assert (=> bs!1208419 (not (= lambda!259390 lambda!259389))))

(assert (=> b!5188364 true))

(assert (=> b!5188364 true))

(declare-fun b!5188361 () Bool)

(declare-fun c!894209 () Bool)

(assert (=> b!5188361 (= c!894209 (is-Union!14716 (regOne!29945 r!7292)))))

(declare-fun e!3231966 () Bool)

(declare-fun e!3231962 () Bool)

(assert (=> b!5188361 (= e!3231966 e!3231962)))

(declare-fun b!5188362 () Bool)

(declare-fun c!894208 () Bool)

(assert (=> b!5188362 (= c!894208 (is-ElementMatch!14716 (regOne!29945 r!7292)))))

(declare-fun e!3231968 () Bool)

(assert (=> b!5188362 (= e!3231968 e!3231966)))

(declare-fun call!364641 () Bool)

(declare-fun c!894210 () Bool)

(declare-fun bm!364636 () Bool)

(assert (=> bm!364636 (= call!364641 (Exists!1911 (ite c!894210 lambda!259389 lambda!259390)))))

(declare-fun e!3231967 () Bool)

(assert (=> b!5188364 (= e!3231967 call!364641)))

(declare-fun b!5188365 () Bool)

(assert (=> b!5188365 (= e!3231966 (= s!2326 (Cons!60325 (c!894145 (regOne!29945 r!7292)) Nil!60325)))))

(declare-fun b!5188366 () Bool)

(declare-fun res!2203809 () Bool)

(declare-fun e!3231963 () Bool)

(assert (=> b!5188366 (=> res!2203809 e!3231963)))

(declare-fun call!364642 () Bool)

(assert (=> b!5188366 (= res!2203809 call!364642)))

(assert (=> b!5188366 (= e!3231967 e!3231963)))

(declare-fun b!5188367 () Bool)

(declare-fun e!3231964 () Bool)

(assert (=> b!5188367 (= e!3231962 e!3231964)))

(declare-fun res!2203808 () Bool)

(assert (=> b!5188367 (= res!2203808 (matchRSpec!1819 (regOne!29945 (regOne!29945 r!7292)) s!2326))))

(assert (=> b!5188367 (=> res!2203808 e!3231964)))

(assert (=> b!5188368 (= e!3231963 call!364641)))

(declare-fun d!1676420 () Bool)

(declare-fun c!894211 () Bool)

(assert (=> d!1676420 (= c!894211 (is-EmptyExpr!14716 (regOne!29945 r!7292)))))

(declare-fun e!3231965 () Bool)

(assert (=> d!1676420 (= (matchRSpec!1819 (regOne!29945 r!7292) s!2326) e!3231965)))

(declare-fun b!5188363 () Bool)

(assert (=> b!5188363 (= e!3231964 (matchRSpec!1819 (regTwo!29945 (regOne!29945 r!7292)) s!2326))))

(declare-fun bm!364637 () Bool)

(assert (=> bm!364637 (= call!364642 (isEmpty!32292 s!2326))))

(declare-fun b!5188369 () Bool)

(assert (=> b!5188369 (= e!3231965 call!364642)))

(declare-fun b!5188370 () Bool)

(assert (=> b!5188370 (= e!3231965 e!3231968)))

(declare-fun res!2203810 () Bool)

(assert (=> b!5188370 (= res!2203810 (not (is-EmptyLang!14716 (regOne!29945 r!7292))))))

(assert (=> b!5188370 (=> (not res!2203810) (not e!3231968))))

(declare-fun b!5188371 () Bool)

(assert (=> b!5188371 (= e!3231962 e!3231967)))

(assert (=> b!5188371 (= c!894210 (is-Star!14716 (regOne!29945 r!7292)))))

(assert (= (and d!1676420 c!894211) b!5188369))

(assert (= (and d!1676420 (not c!894211)) b!5188370))

(assert (= (and b!5188370 res!2203810) b!5188362))

(assert (= (and b!5188362 c!894208) b!5188365))

(assert (= (and b!5188362 (not c!894208)) b!5188361))

(assert (= (and b!5188361 c!894209) b!5188367))

(assert (= (and b!5188361 (not c!894209)) b!5188371))

(assert (= (and b!5188367 (not res!2203808)) b!5188363))

(assert (= (and b!5188371 c!894210) b!5188366))

(assert (= (and b!5188371 (not c!894210)) b!5188364))

(assert (= (and b!5188366 (not res!2203809)) b!5188368))

(assert (= (or b!5188368 b!5188364) bm!364636))

(assert (= (or b!5188369 b!5188366) bm!364637))

(declare-fun m!6245590 () Bool)

(assert (=> bm!364636 m!6245590))

(declare-fun m!6245592 () Bool)

(assert (=> b!5188367 m!6245592))

(declare-fun m!6245594 () Bool)

(assert (=> b!5188363 m!6245594))

(assert (=> bm!364637 m!6245570))

(assert (=> b!5188109 d!1676420))

(declare-fun b!5188372 () Bool)

(declare-fun e!3231974 () Bool)

(declare-fun e!3231973 () Bool)

(assert (=> b!5188372 (= e!3231974 e!3231973)))

(declare-fun c!894212 () Bool)

(assert (=> b!5188372 (= c!894212 (is-EmptyLang!14716 (regOne!29945 r!7292)))))

(declare-fun b!5188373 () Bool)

(declare-fun res!2203812 () Bool)

(declare-fun e!3231972 () Bool)

(assert (=> b!5188373 (=> res!2203812 e!3231972)))

(declare-fun e!3231975 () Bool)

(assert (=> b!5188373 (= res!2203812 e!3231975)))

(declare-fun res!2203816 () Bool)

(assert (=> b!5188373 (=> (not res!2203816) (not e!3231975))))

(declare-fun lt!2136884 () Bool)

(assert (=> b!5188373 (= res!2203816 lt!2136884)))

(declare-fun b!5188374 () Bool)

(declare-fun res!2203815 () Bool)

(assert (=> b!5188374 (=> (not res!2203815) (not e!3231975))))

(declare-fun call!364643 () Bool)

(assert (=> b!5188374 (= res!2203815 (not call!364643))))

(declare-fun b!5188375 () Bool)

(declare-fun e!3231970 () Bool)

(assert (=> b!5188375 (= e!3231970 (nullable!4915 (regOne!29945 r!7292)))))

(declare-fun b!5188376 () Bool)

(assert (=> b!5188376 (= e!3231975 (= (head!11110 s!2326) (c!894145 (regOne!29945 r!7292))))))

(declare-fun b!5188377 () Bool)

(declare-fun res!2203813 () Bool)

(declare-fun e!3231971 () Bool)

(assert (=> b!5188377 (=> res!2203813 e!3231971)))

(assert (=> b!5188377 (= res!2203813 (not (isEmpty!32292 (tail!10207 s!2326))))))

(declare-fun b!5188378 () Bool)

(assert (=> b!5188378 (= e!3231971 (not (= (head!11110 s!2326) (c!894145 (regOne!29945 r!7292)))))))

(declare-fun b!5188379 () Bool)

(assert (=> b!5188379 (= e!3231974 (= lt!2136884 call!364643))))

(declare-fun b!5188380 () Bool)

(declare-fun e!3231969 () Bool)

(assert (=> b!5188380 (= e!3231972 e!3231969)))

(declare-fun res!2203817 () Bool)

(assert (=> b!5188380 (=> (not res!2203817) (not e!3231969))))

(assert (=> b!5188380 (= res!2203817 (not lt!2136884))))

(declare-fun b!5188381 () Bool)

(declare-fun res!2203818 () Bool)

(assert (=> b!5188381 (=> res!2203818 e!3231972)))

(assert (=> b!5188381 (= res!2203818 (not (is-ElementMatch!14716 (regOne!29945 r!7292))))))

(assert (=> b!5188381 (= e!3231973 e!3231972)))

(declare-fun b!5188383 () Bool)

(assert (=> b!5188383 (= e!3231969 e!3231971)))

(declare-fun res!2203814 () Bool)

(assert (=> b!5188383 (=> res!2203814 e!3231971)))

(assert (=> b!5188383 (= res!2203814 call!364643)))

(declare-fun b!5188384 () Bool)

(assert (=> b!5188384 (= e!3231970 (matchR!6901 (derivativeStep!4017 (regOne!29945 r!7292) (head!11110 s!2326)) (tail!10207 s!2326)))))

(declare-fun b!5188385 () Bool)

(declare-fun res!2203811 () Bool)

(assert (=> b!5188385 (=> (not res!2203811) (not e!3231975))))

(assert (=> b!5188385 (= res!2203811 (isEmpty!32292 (tail!10207 s!2326)))))

(declare-fun bm!364638 () Bool)

(assert (=> bm!364638 (= call!364643 (isEmpty!32292 s!2326))))

(declare-fun b!5188382 () Bool)

(assert (=> b!5188382 (= e!3231973 (not lt!2136884))))

(declare-fun d!1676422 () Bool)

(assert (=> d!1676422 e!3231974))

(declare-fun c!894214 () Bool)

(assert (=> d!1676422 (= c!894214 (is-EmptyExpr!14716 (regOne!29945 r!7292)))))

(assert (=> d!1676422 (= lt!2136884 e!3231970)))

(declare-fun c!894213 () Bool)

(assert (=> d!1676422 (= c!894213 (isEmpty!32292 s!2326))))

(assert (=> d!1676422 (validRegex!6452 (regOne!29945 r!7292))))

(assert (=> d!1676422 (= (matchR!6901 (regOne!29945 r!7292) s!2326) lt!2136884)))

(assert (= (and d!1676422 c!894213) b!5188375))

(assert (= (and d!1676422 (not c!894213)) b!5188384))

(assert (= (and d!1676422 c!894214) b!5188379))

(assert (= (and d!1676422 (not c!894214)) b!5188372))

(assert (= (and b!5188372 c!894212) b!5188382))

(assert (= (and b!5188372 (not c!894212)) b!5188381))

(assert (= (and b!5188381 (not res!2203818)) b!5188373))

(assert (= (and b!5188373 res!2203816) b!5188374))

(assert (= (and b!5188374 res!2203815) b!5188385))

(assert (= (and b!5188385 res!2203811) b!5188376))

(assert (= (and b!5188373 (not res!2203812)) b!5188380))

(assert (= (and b!5188380 res!2203817) b!5188383))

(assert (= (and b!5188383 (not res!2203814)) b!5188377))

(assert (= (and b!5188377 (not res!2203813)) b!5188378))

(assert (= (or b!5188379 b!5188374 b!5188383) bm!364638))

(assert (=> bm!364638 m!6245570))

(assert (=> b!5188378 m!6245574))

(assert (=> b!5188377 m!6245576))

(assert (=> b!5188377 m!6245576))

(assert (=> b!5188377 m!6245578))

(assert (=> d!1676422 m!6245570))

(assert (=> d!1676422 m!6245448))

(assert (=> b!5188376 m!6245574))

(declare-fun m!6245596 () Bool)

(assert (=> b!5188375 m!6245596))

(assert (=> b!5188384 m!6245574))

(assert (=> b!5188384 m!6245574))

(declare-fun m!6245598 () Bool)

(assert (=> b!5188384 m!6245598))

(assert (=> b!5188384 m!6245576))

(assert (=> b!5188384 m!6245598))

(assert (=> b!5188384 m!6245576))

(declare-fun m!6245600 () Bool)

(assert (=> b!5188384 m!6245600))

(assert (=> b!5188385 m!6245576))

(assert (=> b!5188385 m!6245576))

(assert (=> b!5188385 m!6245578))

(assert (=> b!5188109 d!1676422))

(declare-fun d!1676424 () Bool)

(declare-fun res!2203829 () Bool)

(declare-fun e!3231992 () Bool)

(assert (=> d!1676424 (=> res!2203829 e!3231992)))

(assert (=> d!1676424 (= res!2203829 (is-ElementMatch!14716 r!7292))))

(assert (=> d!1676424 (= (validRegex!6452 r!7292) e!3231992)))

(declare-fun b!5188404 () Bool)

(declare-fun e!3231996 () Bool)

(declare-fun call!364650 () Bool)

(assert (=> b!5188404 (= e!3231996 call!364650)))

(declare-fun call!364652 () Bool)

(declare-fun c!894220 () Bool)

(declare-fun c!894219 () Bool)

(declare-fun bm!364645 () Bool)

(assert (=> bm!364645 (= call!364652 (validRegex!6452 (ite c!894220 (reg!15045 r!7292) (ite c!894219 (regOne!29945 r!7292) (regOne!29944 r!7292)))))))

(declare-fun b!5188405 () Bool)

(declare-fun res!2203833 () Bool)

(declare-fun e!3231993 () Bool)

(assert (=> b!5188405 (=> res!2203833 e!3231993)))

(assert (=> b!5188405 (= res!2203833 (not (is-Concat!23561 r!7292)))))

(declare-fun e!3231990 () Bool)

(assert (=> b!5188405 (= e!3231990 e!3231993)))

(declare-fun b!5188406 () Bool)

(assert (=> b!5188406 (= e!3231993 e!3231996)))

(declare-fun res!2203832 () Bool)

(assert (=> b!5188406 (=> (not res!2203832) (not e!3231996))))

(declare-fun call!364651 () Bool)

(assert (=> b!5188406 (= res!2203832 call!364651)))

(declare-fun b!5188407 () Bool)

(declare-fun e!3231994 () Bool)

(declare-fun e!3231991 () Bool)

(assert (=> b!5188407 (= e!3231994 e!3231991)))

(declare-fun res!2203830 () Bool)

(assert (=> b!5188407 (= res!2203830 (not (nullable!4915 (reg!15045 r!7292))))))

(assert (=> b!5188407 (=> (not res!2203830) (not e!3231991))))

(declare-fun b!5188408 () Bool)

(assert (=> b!5188408 (= e!3231994 e!3231990)))

(assert (=> b!5188408 (= c!894219 (is-Union!14716 r!7292))))

(declare-fun b!5188409 () Bool)

(assert (=> b!5188409 (= e!3231992 e!3231994)))

(assert (=> b!5188409 (= c!894220 (is-Star!14716 r!7292))))

(declare-fun bm!364646 () Bool)

(assert (=> bm!364646 (= call!364651 call!364652)))

(declare-fun bm!364647 () Bool)

(assert (=> bm!364647 (= call!364650 (validRegex!6452 (ite c!894219 (regTwo!29945 r!7292) (regTwo!29944 r!7292))))))

(declare-fun b!5188410 () Bool)

(declare-fun res!2203831 () Bool)

(declare-fun e!3231995 () Bool)

(assert (=> b!5188410 (=> (not res!2203831) (not e!3231995))))

(assert (=> b!5188410 (= res!2203831 call!364651)))

(assert (=> b!5188410 (= e!3231990 e!3231995)))

(declare-fun b!5188411 () Bool)

(assert (=> b!5188411 (= e!3231991 call!364652)))

(declare-fun b!5188412 () Bool)

(assert (=> b!5188412 (= e!3231995 call!364650)))

(assert (= (and d!1676424 (not res!2203829)) b!5188409))

(assert (= (and b!5188409 c!894220) b!5188407))

(assert (= (and b!5188409 (not c!894220)) b!5188408))

(assert (= (and b!5188407 res!2203830) b!5188411))

(assert (= (and b!5188408 c!894219) b!5188410))

(assert (= (and b!5188408 (not c!894219)) b!5188405))

(assert (= (and b!5188410 res!2203831) b!5188412))

(assert (= (and b!5188405 (not res!2203833)) b!5188406))

(assert (= (and b!5188406 res!2203832) b!5188404))

(assert (= (or b!5188412 b!5188404) bm!364647))

(assert (= (or b!5188410 b!5188406) bm!364646))

(assert (= (or b!5188411 bm!364646) bm!364645))

(declare-fun m!6245602 () Bool)

(assert (=> bm!364645 m!6245602))

(declare-fun m!6245604 () Bool)

(assert (=> b!5188407 m!6245604))

(declare-fun m!6245606 () Bool)

(assert (=> bm!364647 m!6245606))

(assert (=> start!549268 d!1676424))

(declare-fun d!1676426 () Bool)

(declare-fun res!2203834 () Bool)

(declare-fun e!3231999 () Bool)

(assert (=> d!1676426 (=> res!2203834 e!3231999)))

(assert (=> d!1676426 (= res!2203834 (is-ElementMatch!14716 (regOne!29945 r!7292)))))

(assert (=> d!1676426 (= (validRegex!6452 (regOne!29945 r!7292)) e!3231999)))

(declare-fun b!5188413 () Bool)

(declare-fun e!3232003 () Bool)

(declare-fun call!364653 () Bool)

(assert (=> b!5188413 (= e!3232003 call!364653)))

(declare-fun c!894221 () Bool)

(declare-fun bm!364648 () Bool)

(declare-fun c!894222 () Bool)

(declare-fun call!364655 () Bool)

(assert (=> bm!364648 (= call!364655 (validRegex!6452 (ite c!894222 (reg!15045 (regOne!29945 r!7292)) (ite c!894221 (regOne!29945 (regOne!29945 r!7292)) (regOne!29944 (regOne!29945 r!7292))))))))

(declare-fun b!5188414 () Bool)

(declare-fun res!2203838 () Bool)

(declare-fun e!3232000 () Bool)

(assert (=> b!5188414 (=> res!2203838 e!3232000)))

(assert (=> b!5188414 (= res!2203838 (not (is-Concat!23561 (regOne!29945 r!7292))))))

(declare-fun e!3231997 () Bool)

(assert (=> b!5188414 (= e!3231997 e!3232000)))

(declare-fun b!5188415 () Bool)

(assert (=> b!5188415 (= e!3232000 e!3232003)))

(declare-fun res!2203837 () Bool)

(assert (=> b!5188415 (=> (not res!2203837) (not e!3232003))))

(declare-fun call!364654 () Bool)

(assert (=> b!5188415 (= res!2203837 call!364654)))

(declare-fun b!5188416 () Bool)

(declare-fun e!3232001 () Bool)

(declare-fun e!3231998 () Bool)

(assert (=> b!5188416 (= e!3232001 e!3231998)))

(declare-fun res!2203835 () Bool)

(assert (=> b!5188416 (= res!2203835 (not (nullable!4915 (reg!15045 (regOne!29945 r!7292)))))))

(assert (=> b!5188416 (=> (not res!2203835) (not e!3231998))))

(declare-fun b!5188417 () Bool)

(assert (=> b!5188417 (= e!3232001 e!3231997)))

(assert (=> b!5188417 (= c!894221 (is-Union!14716 (regOne!29945 r!7292)))))

(declare-fun b!5188418 () Bool)

(assert (=> b!5188418 (= e!3231999 e!3232001)))

(assert (=> b!5188418 (= c!894222 (is-Star!14716 (regOne!29945 r!7292)))))

(declare-fun bm!364649 () Bool)

(assert (=> bm!364649 (= call!364654 call!364655)))

(declare-fun bm!364650 () Bool)

(assert (=> bm!364650 (= call!364653 (validRegex!6452 (ite c!894221 (regTwo!29945 (regOne!29945 r!7292)) (regTwo!29944 (regOne!29945 r!7292)))))))

(declare-fun b!5188419 () Bool)

(declare-fun res!2203836 () Bool)

(declare-fun e!3232002 () Bool)

(assert (=> b!5188419 (=> (not res!2203836) (not e!3232002))))

(assert (=> b!5188419 (= res!2203836 call!364654)))

(assert (=> b!5188419 (= e!3231997 e!3232002)))

(declare-fun b!5188420 () Bool)

(assert (=> b!5188420 (= e!3231998 call!364655)))

(declare-fun b!5188421 () Bool)

(assert (=> b!5188421 (= e!3232002 call!364653)))

(assert (= (and d!1676426 (not res!2203834)) b!5188418))

(assert (= (and b!5188418 c!894222) b!5188416))

(assert (= (and b!5188418 (not c!894222)) b!5188417))

(assert (= (and b!5188416 res!2203835) b!5188420))

(assert (= (and b!5188417 c!894221) b!5188419))

(assert (= (and b!5188417 (not c!894221)) b!5188414))

(assert (= (and b!5188419 res!2203836) b!5188421))

(assert (= (and b!5188414 (not res!2203838)) b!5188415))

(assert (= (and b!5188415 res!2203837) b!5188413))

(assert (= (or b!5188421 b!5188413) bm!364650))

(assert (= (or b!5188419 b!5188415) bm!364649))

(assert (= (or b!5188420 bm!364649) bm!364648))

(declare-fun m!6245608 () Bool)

(assert (=> bm!364648 m!6245608))

(declare-fun m!6245610 () Bool)

(assert (=> b!5188416 m!6245610))

(declare-fun m!6245612 () Bool)

(assert (=> bm!364650 m!6245612))

(assert (=> b!5188099 d!1676426))

(declare-fun bs!1208420 () Bool)

(declare-fun d!1676428 () Bool)

(assert (= bs!1208420 (and d!1676428 d!1676402)))

(declare-fun lambda!259393 () Int)

(assert (=> bs!1208420 (= lambda!259393 lambda!259382)))

(assert (=> d!1676428 (= (inv!80038 (h!66772 zl!343)) (forall!14203 (exprs!4600 (h!66772 zl!343)) lambda!259393))))

(declare-fun bs!1208421 () Bool)

(assert (= bs!1208421 d!1676428))

(declare-fun m!6245614 () Bool)

(assert (=> bs!1208421 m!6245614))

(assert (=> b!5188111 d!1676428))

(declare-fun d!1676430 () Bool)

(declare-fun lt!2136887 () Regex!14716)

(assert (=> d!1676430 (validRegex!6452 lt!2136887)))

(assert (=> d!1676430 (= lt!2136887 (generalisedUnion!645 (unfocusZipperList!158 zl!343)))))

(assert (=> d!1676430 (= (unfocusZipper!458 zl!343) lt!2136887)))

(declare-fun bs!1208422 () Bool)

(assert (= bs!1208422 d!1676430))

(declare-fun m!6245616 () Bool)

(assert (=> bs!1208422 m!6245616))

(assert (=> bs!1208422 m!6245462))

(assert (=> bs!1208422 m!6245462))

(assert (=> bs!1208422 m!6245464))

(assert (=> b!5188115 d!1676430))

(declare-fun bs!1208423 () Bool)

(declare-fun b!5188429 () Bool)

(assert (= bs!1208423 (and b!5188429 b!5188311)))

(declare-fun lambda!259394 () Int)

(assert (=> bs!1208423 (= (and (= (reg!15045 r!7292) (reg!15045 (regTwo!29945 r!7292))) (= r!7292 (regTwo!29945 r!7292))) (= lambda!259394 lambda!259387))))

(declare-fun bs!1208424 () Bool)

(assert (= bs!1208424 (and b!5188429 b!5188307)))

(assert (=> bs!1208424 (not (= lambda!259394 lambda!259388))))

(declare-fun bs!1208425 () Bool)

(assert (= bs!1208425 (and b!5188429 b!5188368)))

(assert (=> bs!1208425 (= (and (= (reg!15045 r!7292) (reg!15045 (regOne!29945 r!7292))) (= r!7292 (regOne!29945 r!7292))) (= lambda!259394 lambda!259389))))

(declare-fun bs!1208426 () Bool)

(assert (= bs!1208426 (and b!5188429 b!5188364)))

(assert (=> bs!1208426 (not (= lambda!259394 lambda!259390))))

(assert (=> b!5188429 true))

(assert (=> b!5188429 true))

(declare-fun bs!1208427 () Bool)

(declare-fun b!5188425 () Bool)

(assert (= bs!1208427 (and b!5188425 b!5188368)))

(declare-fun lambda!259395 () Int)

(assert (=> bs!1208427 (not (= lambda!259395 lambda!259389))))

(declare-fun bs!1208428 () Bool)

(assert (= bs!1208428 (and b!5188425 b!5188311)))

(assert (=> bs!1208428 (not (= lambda!259395 lambda!259387))))

(declare-fun bs!1208429 () Bool)

(assert (= bs!1208429 (and b!5188425 b!5188429)))

(assert (=> bs!1208429 (not (= lambda!259395 lambda!259394))))

(declare-fun bs!1208430 () Bool)

(assert (= bs!1208430 (and b!5188425 b!5188307)))

(assert (=> bs!1208430 (= (and (= (regOne!29944 r!7292) (regOne!29944 (regTwo!29945 r!7292))) (= (regTwo!29944 r!7292) (regTwo!29944 (regTwo!29945 r!7292)))) (= lambda!259395 lambda!259388))))

(declare-fun bs!1208431 () Bool)

(assert (= bs!1208431 (and b!5188425 b!5188364)))

(assert (=> bs!1208431 (= (and (= (regOne!29944 r!7292) (regOne!29944 (regOne!29945 r!7292))) (= (regTwo!29944 r!7292) (regTwo!29944 (regOne!29945 r!7292)))) (= lambda!259395 lambda!259390))))

(assert (=> b!5188425 true))

(assert (=> b!5188425 true))

(declare-fun b!5188422 () Bool)

(declare-fun c!894224 () Bool)

(assert (=> b!5188422 (= c!894224 (is-Union!14716 r!7292))))

(declare-fun e!3232008 () Bool)

(declare-fun e!3232004 () Bool)

(assert (=> b!5188422 (= e!3232008 e!3232004)))

(declare-fun b!5188423 () Bool)

(declare-fun c!894223 () Bool)

(assert (=> b!5188423 (= c!894223 (is-ElementMatch!14716 r!7292))))

(declare-fun e!3232010 () Bool)

(assert (=> b!5188423 (= e!3232010 e!3232008)))

(declare-fun c!894225 () Bool)

(declare-fun bm!364651 () Bool)

(declare-fun call!364656 () Bool)

(assert (=> bm!364651 (= call!364656 (Exists!1911 (ite c!894225 lambda!259394 lambda!259395)))))

(declare-fun e!3232009 () Bool)

(assert (=> b!5188425 (= e!3232009 call!364656)))

(declare-fun b!5188426 () Bool)

(assert (=> b!5188426 (= e!3232008 (= s!2326 (Cons!60325 (c!894145 r!7292) Nil!60325)))))

(declare-fun b!5188427 () Bool)

(declare-fun res!2203840 () Bool)

(declare-fun e!3232005 () Bool)

(assert (=> b!5188427 (=> res!2203840 e!3232005)))

(declare-fun call!364657 () Bool)

(assert (=> b!5188427 (= res!2203840 call!364657)))

(assert (=> b!5188427 (= e!3232009 e!3232005)))

(declare-fun b!5188428 () Bool)

(declare-fun e!3232006 () Bool)

(assert (=> b!5188428 (= e!3232004 e!3232006)))

(declare-fun res!2203839 () Bool)

(assert (=> b!5188428 (= res!2203839 (matchRSpec!1819 (regOne!29945 r!7292) s!2326))))

(assert (=> b!5188428 (=> res!2203839 e!3232006)))

(assert (=> b!5188429 (= e!3232005 call!364656)))

(declare-fun d!1676432 () Bool)

(declare-fun c!894226 () Bool)

(assert (=> d!1676432 (= c!894226 (is-EmptyExpr!14716 r!7292))))

(declare-fun e!3232007 () Bool)

(assert (=> d!1676432 (= (matchRSpec!1819 r!7292 s!2326) e!3232007)))

(declare-fun b!5188424 () Bool)

(assert (=> b!5188424 (= e!3232006 (matchRSpec!1819 (regTwo!29945 r!7292) s!2326))))

(declare-fun bm!364652 () Bool)

(assert (=> bm!364652 (= call!364657 (isEmpty!32292 s!2326))))

(declare-fun b!5188430 () Bool)

(assert (=> b!5188430 (= e!3232007 call!364657)))

(declare-fun b!5188431 () Bool)

(assert (=> b!5188431 (= e!3232007 e!3232010)))

(declare-fun res!2203841 () Bool)

(assert (=> b!5188431 (= res!2203841 (not (is-EmptyLang!14716 r!7292)))))

(assert (=> b!5188431 (=> (not res!2203841) (not e!3232010))))

(declare-fun b!5188432 () Bool)

(assert (=> b!5188432 (= e!3232004 e!3232009)))

(assert (=> b!5188432 (= c!894225 (is-Star!14716 r!7292))))

(assert (= (and d!1676432 c!894226) b!5188430))

(assert (= (and d!1676432 (not c!894226)) b!5188431))

(assert (= (and b!5188431 res!2203841) b!5188423))

(assert (= (and b!5188423 c!894223) b!5188426))

(assert (= (and b!5188423 (not c!894223)) b!5188422))

(assert (= (and b!5188422 c!894224) b!5188428))

(assert (= (and b!5188422 (not c!894224)) b!5188432))

(assert (= (and b!5188428 (not res!2203839)) b!5188424))

(assert (= (and b!5188432 c!894225) b!5188427))

(assert (= (and b!5188432 (not c!894225)) b!5188425))

(assert (= (and b!5188427 (not res!2203840)) b!5188429))

(assert (= (or b!5188429 b!5188425) bm!364651))

(assert (= (or b!5188430 b!5188427) bm!364652))

(declare-fun m!6245618 () Bool)

(assert (=> bm!364651 m!6245618))

(assert (=> b!5188428 m!6245440))

(assert (=> b!5188424 m!6245434))

(assert (=> bm!364652 m!6245570))

(assert (=> b!5188096 d!1676432))

(declare-fun b!5188433 () Bool)

(declare-fun e!3232016 () Bool)

(declare-fun e!3232015 () Bool)

(assert (=> b!5188433 (= e!3232016 e!3232015)))

(declare-fun c!894227 () Bool)

(assert (=> b!5188433 (= c!894227 (is-EmptyLang!14716 r!7292))))

(declare-fun b!5188434 () Bool)

(declare-fun res!2203843 () Bool)

(declare-fun e!3232014 () Bool)

(assert (=> b!5188434 (=> res!2203843 e!3232014)))

(declare-fun e!3232017 () Bool)

(assert (=> b!5188434 (= res!2203843 e!3232017)))

(declare-fun res!2203847 () Bool)

(assert (=> b!5188434 (=> (not res!2203847) (not e!3232017))))

(declare-fun lt!2136888 () Bool)

(assert (=> b!5188434 (= res!2203847 lt!2136888)))

(declare-fun b!5188435 () Bool)

(declare-fun res!2203846 () Bool)

(assert (=> b!5188435 (=> (not res!2203846) (not e!3232017))))

(declare-fun call!364658 () Bool)

(assert (=> b!5188435 (= res!2203846 (not call!364658))))

(declare-fun b!5188436 () Bool)

(declare-fun e!3232012 () Bool)

(assert (=> b!5188436 (= e!3232012 (nullable!4915 r!7292))))

(declare-fun b!5188437 () Bool)

(assert (=> b!5188437 (= e!3232017 (= (head!11110 s!2326) (c!894145 r!7292)))))

(declare-fun b!5188438 () Bool)

(declare-fun res!2203844 () Bool)

(declare-fun e!3232013 () Bool)

(assert (=> b!5188438 (=> res!2203844 e!3232013)))

(assert (=> b!5188438 (= res!2203844 (not (isEmpty!32292 (tail!10207 s!2326))))))

(declare-fun b!5188439 () Bool)

(assert (=> b!5188439 (= e!3232013 (not (= (head!11110 s!2326) (c!894145 r!7292))))))

(declare-fun b!5188440 () Bool)

(assert (=> b!5188440 (= e!3232016 (= lt!2136888 call!364658))))

(declare-fun b!5188441 () Bool)

(declare-fun e!3232011 () Bool)

(assert (=> b!5188441 (= e!3232014 e!3232011)))

(declare-fun res!2203848 () Bool)

(assert (=> b!5188441 (=> (not res!2203848) (not e!3232011))))

(assert (=> b!5188441 (= res!2203848 (not lt!2136888))))

(declare-fun b!5188442 () Bool)

(declare-fun res!2203849 () Bool)

(assert (=> b!5188442 (=> res!2203849 e!3232014)))

(assert (=> b!5188442 (= res!2203849 (not (is-ElementMatch!14716 r!7292)))))

(assert (=> b!5188442 (= e!3232015 e!3232014)))

(declare-fun b!5188444 () Bool)

(assert (=> b!5188444 (= e!3232011 e!3232013)))

(declare-fun res!2203845 () Bool)

(assert (=> b!5188444 (=> res!2203845 e!3232013)))

(assert (=> b!5188444 (= res!2203845 call!364658)))

(declare-fun b!5188445 () Bool)

(assert (=> b!5188445 (= e!3232012 (matchR!6901 (derivativeStep!4017 r!7292 (head!11110 s!2326)) (tail!10207 s!2326)))))

(declare-fun b!5188446 () Bool)

(declare-fun res!2203842 () Bool)

(assert (=> b!5188446 (=> (not res!2203842) (not e!3232017))))

(assert (=> b!5188446 (= res!2203842 (isEmpty!32292 (tail!10207 s!2326)))))

(declare-fun bm!364653 () Bool)

(assert (=> bm!364653 (= call!364658 (isEmpty!32292 s!2326))))

(declare-fun b!5188443 () Bool)

(assert (=> b!5188443 (= e!3232015 (not lt!2136888))))

(declare-fun d!1676434 () Bool)

(assert (=> d!1676434 e!3232016))

(declare-fun c!894229 () Bool)

(assert (=> d!1676434 (= c!894229 (is-EmptyExpr!14716 r!7292))))

(assert (=> d!1676434 (= lt!2136888 e!3232012)))

(declare-fun c!894228 () Bool)

(assert (=> d!1676434 (= c!894228 (isEmpty!32292 s!2326))))

(assert (=> d!1676434 (validRegex!6452 r!7292)))

(assert (=> d!1676434 (= (matchR!6901 r!7292 s!2326) lt!2136888)))

(assert (= (and d!1676434 c!894228) b!5188436))

(assert (= (and d!1676434 (not c!894228)) b!5188445))

(assert (= (and d!1676434 c!894229) b!5188440))

(assert (= (and d!1676434 (not c!894229)) b!5188433))

(assert (= (and b!5188433 c!894227) b!5188443))

(assert (= (and b!5188433 (not c!894227)) b!5188442))

(assert (= (and b!5188442 (not res!2203849)) b!5188434))

(assert (= (and b!5188434 res!2203847) b!5188435))

(assert (= (and b!5188435 res!2203846) b!5188446))

(assert (= (and b!5188446 res!2203842) b!5188437))

(assert (= (and b!5188434 (not res!2203843)) b!5188441))

(assert (= (and b!5188441 res!2203848) b!5188444))

(assert (= (and b!5188444 (not res!2203845)) b!5188438))

(assert (= (and b!5188438 (not res!2203844)) b!5188439))

(assert (= (or b!5188440 b!5188435 b!5188444) bm!364653))

(assert (=> bm!364653 m!6245570))

(assert (=> b!5188439 m!6245574))

(assert (=> b!5188438 m!6245576))

(assert (=> b!5188438 m!6245576))

(assert (=> b!5188438 m!6245578))

(assert (=> d!1676434 m!6245570))

(assert (=> d!1676434 m!6245450))

(assert (=> b!5188437 m!6245574))

(declare-fun m!6245620 () Bool)

(assert (=> b!5188436 m!6245620))

(assert (=> b!5188445 m!6245574))

(assert (=> b!5188445 m!6245574))

(declare-fun m!6245622 () Bool)

(assert (=> b!5188445 m!6245622))

(assert (=> b!5188445 m!6245576))

(assert (=> b!5188445 m!6245622))

(assert (=> b!5188445 m!6245576))

(declare-fun m!6245624 () Bool)

(assert (=> b!5188445 m!6245624))

(assert (=> b!5188446 m!6245576))

(assert (=> b!5188446 m!6245576))

(assert (=> b!5188446 m!6245578))

(assert (=> b!5188096 d!1676434))

(declare-fun d!1676436 () Bool)

(assert (=> d!1676436 (= (matchR!6901 r!7292 s!2326) (matchRSpec!1819 r!7292 s!2326))))

(declare-fun lt!2136889 () Unit!152266)

(assert (=> d!1676436 (= lt!2136889 (choose!38544 r!7292 s!2326))))

(assert (=> d!1676436 (validRegex!6452 r!7292)))

(assert (=> d!1676436 (= (mainMatchTheorem!1819 r!7292 s!2326) lt!2136889)))

(declare-fun bs!1208432 () Bool)

(assert (= bs!1208432 d!1676436))

(assert (=> bs!1208432 m!6245454))

(assert (=> bs!1208432 m!6245452))

(declare-fun m!6245626 () Bool)

(assert (=> bs!1208432 m!6245626))

(assert (=> bs!1208432 m!6245450))

(assert (=> b!5188096 d!1676436))

(declare-fun b!5188469 () Bool)

(declare-fun e!3232033 () (Set Context!8200))

(declare-fun call!364672 () (Set Context!8200))

(assert (=> b!5188469 (= e!3232033 call!364672)))

(declare-fun c!894243 () Bool)

(declare-fun c!894244 () Bool)

(declare-fun call!364675 () List!60447)

(declare-fun bm!364666 () Bool)

(declare-fun $colon$colon!1252 (List!60447 Regex!14716) List!60447)

(assert (=> bm!364666 (= call!364675 ($colon$colon!1252 (exprs!4600 lt!2136845) (ite (or c!894243 c!894244) (regTwo!29944 (regOne!29945 r!7292)) (regOne!29945 r!7292))))))

(declare-fun b!5188470 () Bool)

(declare-fun e!3232032 () (Set Context!8200))

(declare-fun call!364676 () (Set Context!8200))

(declare-fun call!364673 () (Set Context!8200))

(assert (=> b!5188470 (= e!3232032 (set.union call!364676 call!364673))))

(declare-fun bm!364667 () Bool)

(declare-fun call!364671 () (Set Context!8200))

(assert (=> bm!364667 (= call!364673 call!364671)))

(declare-fun bm!364668 () Bool)

(declare-fun c!894242 () Bool)

(assert (=> bm!364668 (= call!364676 (derivationStepZipperDown!185 (ite c!894242 (regOne!29945 (regOne!29945 r!7292)) (regOne!29944 (regOne!29945 r!7292))) (ite c!894242 lt!2136845 (Context!8201 call!364675)) (h!66773 s!2326)))))

(declare-fun bm!364669 () Bool)

(assert (=> bm!364669 (= call!364672 call!364673)))

(declare-fun b!5188471 () Bool)

(assert (=> b!5188471 (= e!3232032 e!3232033)))

(assert (=> b!5188471 (= c!894244 (is-Concat!23561 (regOne!29945 r!7292)))))

(declare-fun b!5188472 () Bool)

(declare-fun e!3232031 () (Set Context!8200))

(declare-fun e!3232030 () (Set Context!8200))

(assert (=> b!5188472 (= e!3232031 e!3232030)))

(assert (=> b!5188472 (= c!894242 (is-Union!14716 (regOne!29945 r!7292)))))

(declare-fun b!5188474 () Bool)

(declare-fun e!3232034 () (Set Context!8200))

(assert (=> b!5188474 (= e!3232034 call!364672)))

(declare-fun bm!364670 () Bool)

(declare-fun call!364674 () List!60447)

(assert (=> bm!364670 (= call!364674 call!364675)))

(declare-fun b!5188475 () Bool)

(assert (=> b!5188475 (= e!3232034 (as set.empty (Set Context!8200)))))

(declare-fun b!5188476 () Bool)

(declare-fun e!3232035 () Bool)

(assert (=> b!5188476 (= c!894243 e!3232035)))

(declare-fun res!2203852 () Bool)

(assert (=> b!5188476 (=> (not res!2203852) (not e!3232035))))

(assert (=> b!5188476 (= res!2203852 (is-Concat!23561 (regOne!29945 r!7292)))))

(assert (=> b!5188476 (= e!3232030 e!3232032)))

(declare-fun bm!364671 () Bool)

(assert (=> bm!364671 (= call!364671 (derivationStepZipperDown!185 (ite c!894242 (regTwo!29945 (regOne!29945 r!7292)) (ite c!894243 (regTwo!29944 (regOne!29945 r!7292)) (ite c!894244 (regOne!29944 (regOne!29945 r!7292)) (reg!15045 (regOne!29945 r!7292))))) (ite (or c!894242 c!894243) lt!2136845 (Context!8201 call!364674)) (h!66773 s!2326)))))

(declare-fun b!5188477 () Bool)

(assert (=> b!5188477 (= e!3232031 (set.insert lt!2136845 (as set.empty (Set Context!8200))))))

(declare-fun b!5188478 () Bool)

(declare-fun c!894241 () Bool)

(assert (=> b!5188478 (= c!894241 (is-Star!14716 (regOne!29945 r!7292)))))

(assert (=> b!5188478 (= e!3232033 e!3232034)))

(declare-fun b!5188479 () Bool)

(assert (=> b!5188479 (= e!3232035 (nullable!4915 (regOne!29944 (regOne!29945 r!7292))))))

(declare-fun d!1676438 () Bool)

(declare-fun c!894240 () Bool)

(assert (=> d!1676438 (= c!894240 (and (is-ElementMatch!14716 (regOne!29945 r!7292)) (= (c!894145 (regOne!29945 r!7292)) (h!66773 s!2326))))))

(assert (=> d!1676438 (= (derivationStepZipperDown!185 (regOne!29945 r!7292) lt!2136845 (h!66773 s!2326)) e!3232031)))

(declare-fun b!5188473 () Bool)

(assert (=> b!5188473 (= e!3232030 (set.union call!364676 call!364671))))

(assert (= (and d!1676438 c!894240) b!5188477))

(assert (= (and d!1676438 (not c!894240)) b!5188472))

(assert (= (and b!5188472 c!894242) b!5188473))

(assert (= (and b!5188472 (not c!894242)) b!5188476))

(assert (= (and b!5188476 res!2203852) b!5188479))

(assert (= (and b!5188476 c!894243) b!5188470))

(assert (= (and b!5188476 (not c!894243)) b!5188471))

(assert (= (and b!5188471 c!894244) b!5188469))

(assert (= (and b!5188471 (not c!894244)) b!5188478))

(assert (= (and b!5188478 c!894241) b!5188474))

(assert (= (and b!5188478 (not c!894241)) b!5188475))

(assert (= (or b!5188469 b!5188474) bm!364670))

(assert (= (or b!5188469 b!5188474) bm!364669))

(assert (= (or b!5188470 bm!364670) bm!364666))

(assert (= (or b!5188470 bm!364669) bm!364667))

(assert (= (or b!5188473 bm!364667) bm!364671))

(assert (= (or b!5188473 b!5188470) bm!364668))

(declare-fun m!6245628 () Bool)

(assert (=> bm!364668 m!6245628))

(declare-fun m!6245630 () Bool)

(assert (=> b!5188479 m!6245630))

(declare-fun m!6245632 () Bool)

(assert (=> bm!364666 m!6245632))

(declare-fun m!6245634 () Bool)

(assert (=> bm!364671 m!6245634))

(declare-fun m!6245636 () Bool)

(assert (=> b!5188477 m!6245636))

(assert (=> b!5188097 d!1676438))

(declare-fun b!5188480 () Bool)

(declare-fun e!3232039 () (Set Context!8200))

(declare-fun call!364678 () (Set Context!8200))

(assert (=> b!5188480 (= e!3232039 call!364678)))

(declare-fun bm!364672 () Bool)

(declare-fun call!364681 () List!60447)

(declare-fun c!894249 () Bool)

(declare-fun c!894248 () Bool)

(assert (=> bm!364672 (= call!364681 ($colon$colon!1252 (exprs!4600 lt!2136845) (ite (or c!894248 c!894249) (regTwo!29944 (regTwo!29945 r!7292)) (regTwo!29945 r!7292))))))

(declare-fun b!5188481 () Bool)

(declare-fun e!3232038 () (Set Context!8200))

(declare-fun call!364682 () (Set Context!8200))

(declare-fun call!364679 () (Set Context!8200))

(assert (=> b!5188481 (= e!3232038 (set.union call!364682 call!364679))))

(declare-fun bm!364673 () Bool)

(declare-fun call!364677 () (Set Context!8200))

(assert (=> bm!364673 (= call!364679 call!364677)))

(declare-fun bm!364674 () Bool)

(declare-fun c!894247 () Bool)

(assert (=> bm!364674 (= call!364682 (derivationStepZipperDown!185 (ite c!894247 (regOne!29945 (regTwo!29945 r!7292)) (regOne!29944 (regTwo!29945 r!7292))) (ite c!894247 lt!2136845 (Context!8201 call!364681)) (h!66773 s!2326)))))

(declare-fun bm!364675 () Bool)

(assert (=> bm!364675 (= call!364678 call!364679)))

(declare-fun b!5188482 () Bool)

(assert (=> b!5188482 (= e!3232038 e!3232039)))

(assert (=> b!5188482 (= c!894249 (is-Concat!23561 (regTwo!29945 r!7292)))))

(declare-fun b!5188483 () Bool)

(declare-fun e!3232037 () (Set Context!8200))

(declare-fun e!3232036 () (Set Context!8200))

(assert (=> b!5188483 (= e!3232037 e!3232036)))

(assert (=> b!5188483 (= c!894247 (is-Union!14716 (regTwo!29945 r!7292)))))

(declare-fun b!5188485 () Bool)

(declare-fun e!3232040 () (Set Context!8200))

(assert (=> b!5188485 (= e!3232040 call!364678)))

(declare-fun bm!364676 () Bool)

(declare-fun call!364680 () List!60447)

(assert (=> bm!364676 (= call!364680 call!364681)))

(declare-fun b!5188486 () Bool)

(assert (=> b!5188486 (= e!3232040 (as set.empty (Set Context!8200)))))

(declare-fun b!5188487 () Bool)

(declare-fun e!3232041 () Bool)

(assert (=> b!5188487 (= c!894248 e!3232041)))

(declare-fun res!2203853 () Bool)

(assert (=> b!5188487 (=> (not res!2203853) (not e!3232041))))

(assert (=> b!5188487 (= res!2203853 (is-Concat!23561 (regTwo!29945 r!7292)))))

(assert (=> b!5188487 (= e!3232036 e!3232038)))

(declare-fun bm!364677 () Bool)

(assert (=> bm!364677 (= call!364677 (derivationStepZipperDown!185 (ite c!894247 (regTwo!29945 (regTwo!29945 r!7292)) (ite c!894248 (regTwo!29944 (regTwo!29945 r!7292)) (ite c!894249 (regOne!29944 (regTwo!29945 r!7292)) (reg!15045 (regTwo!29945 r!7292))))) (ite (or c!894247 c!894248) lt!2136845 (Context!8201 call!364680)) (h!66773 s!2326)))))

(declare-fun b!5188488 () Bool)

(assert (=> b!5188488 (= e!3232037 (set.insert lt!2136845 (as set.empty (Set Context!8200))))))

(declare-fun b!5188489 () Bool)

(declare-fun c!894246 () Bool)

(assert (=> b!5188489 (= c!894246 (is-Star!14716 (regTwo!29945 r!7292)))))

(assert (=> b!5188489 (= e!3232039 e!3232040)))

(declare-fun b!5188490 () Bool)

(assert (=> b!5188490 (= e!3232041 (nullable!4915 (regOne!29944 (regTwo!29945 r!7292))))))

(declare-fun d!1676440 () Bool)

(declare-fun c!894245 () Bool)

(assert (=> d!1676440 (= c!894245 (and (is-ElementMatch!14716 (regTwo!29945 r!7292)) (= (c!894145 (regTwo!29945 r!7292)) (h!66773 s!2326))))))

(assert (=> d!1676440 (= (derivationStepZipperDown!185 (regTwo!29945 r!7292) lt!2136845 (h!66773 s!2326)) e!3232037)))

(declare-fun b!5188484 () Bool)

(assert (=> b!5188484 (= e!3232036 (set.union call!364682 call!364677))))

(assert (= (and d!1676440 c!894245) b!5188488))

(assert (= (and d!1676440 (not c!894245)) b!5188483))

(assert (= (and b!5188483 c!894247) b!5188484))

(assert (= (and b!5188483 (not c!894247)) b!5188487))

(assert (= (and b!5188487 res!2203853) b!5188490))

(assert (= (and b!5188487 c!894248) b!5188481))

(assert (= (and b!5188487 (not c!894248)) b!5188482))

(assert (= (and b!5188482 c!894249) b!5188480))

(assert (= (and b!5188482 (not c!894249)) b!5188489))

(assert (= (and b!5188489 c!894246) b!5188485))

(assert (= (and b!5188489 (not c!894246)) b!5188486))

(assert (= (or b!5188480 b!5188485) bm!364676))

(assert (= (or b!5188480 b!5188485) bm!364675))

(assert (= (or b!5188481 bm!364676) bm!364672))

(assert (= (or b!5188481 bm!364675) bm!364673))

(assert (= (or b!5188484 bm!364673) bm!364677))

(assert (= (or b!5188484 b!5188481) bm!364674))

(declare-fun m!6245638 () Bool)

(assert (=> bm!364674 m!6245638))

(declare-fun m!6245640 () Bool)

(assert (=> b!5188490 m!6245640))

(declare-fun m!6245642 () Bool)

(assert (=> bm!364672 m!6245642))

(declare-fun m!6245644 () Bool)

(assert (=> bm!364677 m!6245644))

(assert (=> b!5188488 m!6245636))

(assert (=> b!5188097 d!1676440))

(declare-fun bs!1208433 () Bool)

(declare-fun d!1676442 () Bool)

(assert (= bs!1208433 (and d!1676442 d!1676402)))

(declare-fun lambda!259398 () Int)

(assert (=> bs!1208433 (= lambda!259398 lambda!259382)))

(declare-fun bs!1208434 () Bool)

(assert (= bs!1208434 (and d!1676442 d!1676428)))

(assert (=> bs!1208434 (= lambda!259398 lambda!259393)))

(declare-fun b!5188511 () Bool)

(declare-fun e!3232054 () Bool)

(declare-fun e!3232058 () Bool)

(assert (=> b!5188511 (= e!3232054 e!3232058)))

(declare-fun c!894261 () Bool)

(assert (=> b!5188511 (= c!894261 (isEmpty!32291 (unfocusZipperList!158 zl!343)))))

(declare-fun b!5188512 () Bool)

(declare-fun e!3232056 () Bool)

(declare-fun lt!2136892 () Regex!14716)

(assert (=> b!5188512 (= e!3232056 (= lt!2136892 (head!11109 (unfocusZipperList!158 zl!343))))))

(assert (=> d!1676442 e!3232054))

(declare-fun res!2203859 () Bool)

(assert (=> d!1676442 (=> (not res!2203859) (not e!3232054))))

(assert (=> d!1676442 (= res!2203859 (validRegex!6452 lt!2136892))))

(declare-fun e!3232057 () Regex!14716)

(assert (=> d!1676442 (= lt!2136892 e!3232057)))

(declare-fun c!894260 () Bool)

(declare-fun e!3232055 () Bool)

(assert (=> d!1676442 (= c!894260 e!3232055)))

(declare-fun res!2203858 () Bool)

(assert (=> d!1676442 (=> (not res!2203858) (not e!3232055))))

(assert (=> d!1676442 (= res!2203858 (is-Cons!60323 (unfocusZipperList!158 zl!343)))))

(assert (=> d!1676442 (forall!14203 (unfocusZipperList!158 zl!343) lambda!259398)))

(assert (=> d!1676442 (= (generalisedUnion!645 (unfocusZipperList!158 zl!343)) lt!2136892)))

(declare-fun b!5188513 () Bool)

(assert (=> b!5188513 (= e!3232055 (isEmpty!32291 (t!373600 (unfocusZipperList!158 zl!343))))))

(declare-fun b!5188514 () Bool)

(assert (=> b!5188514 (= e!3232058 e!3232056)))

(declare-fun c!894259 () Bool)

(assert (=> b!5188514 (= c!894259 (isEmpty!32291 (tail!10206 (unfocusZipperList!158 zl!343))))))

(declare-fun b!5188515 () Bool)

(declare-fun isUnion!173 (Regex!14716) Bool)

(assert (=> b!5188515 (= e!3232056 (isUnion!173 lt!2136892))))

(declare-fun b!5188516 () Bool)

(declare-fun e!3232059 () Regex!14716)

(assert (=> b!5188516 (= e!3232057 e!3232059)))

(declare-fun c!894258 () Bool)

(assert (=> b!5188516 (= c!894258 (is-Cons!60323 (unfocusZipperList!158 zl!343)))))

(declare-fun b!5188517 () Bool)

(assert (=> b!5188517 (= e!3232059 (Union!14716 (h!66771 (unfocusZipperList!158 zl!343)) (generalisedUnion!645 (t!373600 (unfocusZipperList!158 zl!343)))))))

(declare-fun b!5188518 () Bool)

(assert (=> b!5188518 (= e!3232059 EmptyLang!14716)))

(declare-fun b!5188519 () Bool)

(declare-fun isEmptyLang!741 (Regex!14716) Bool)

(assert (=> b!5188519 (= e!3232058 (isEmptyLang!741 lt!2136892))))

(declare-fun b!5188520 () Bool)

(assert (=> b!5188520 (= e!3232057 (h!66771 (unfocusZipperList!158 zl!343)))))

(assert (= (and d!1676442 res!2203858) b!5188513))

(assert (= (and d!1676442 c!894260) b!5188520))

(assert (= (and d!1676442 (not c!894260)) b!5188516))

(assert (= (and b!5188516 c!894258) b!5188517))

(assert (= (and b!5188516 (not c!894258)) b!5188518))

(assert (= (and d!1676442 res!2203859) b!5188511))

(assert (= (and b!5188511 c!894261) b!5188519))

(assert (= (and b!5188511 (not c!894261)) b!5188514))

(assert (= (and b!5188514 c!894259) b!5188512))

(assert (= (and b!5188514 (not c!894259)) b!5188515))

(declare-fun m!6245646 () Bool)

(assert (=> b!5188513 m!6245646))

(assert (=> b!5188514 m!6245462))

(declare-fun m!6245648 () Bool)

(assert (=> b!5188514 m!6245648))

(assert (=> b!5188514 m!6245648))

(declare-fun m!6245650 () Bool)

(assert (=> b!5188514 m!6245650))

(assert (=> b!5188512 m!6245462))

(declare-fun m!6245652 () Bool)

(assert (=> b!5188512 m!6245652))

(declare-fun m!6245654 () Bool)

(assert (=> b!5188515 m!6245654))

(declare-fun m!6245656 () Bool)

(assert (=> d!1676442 m!6245656))

(assert (=> d!1676442 m!6245462))

(declare-fun m!6245658 () Bool)

(assert (=> d!1676442 m!6245658))

(declare-fun m!6245660 () Bool)

(assert (=> b!5188519 m!6245660))

(declare-fun m!6245662 () Bool)

(assert (=> b!5188517 m!6245662))

(assert (=> b!5188511 m!6245462))

(declare-fun m!6245664 () Bool)

(assert (=> b!5188511 m!6245664))

(assert (=> b!5188108 d!1676442))

(declare-fun bs!1208435 () Bool)

(declare-fun d!1676444 () Bool)

(assert (= bs!1208435 (and d!1676444 d!1676402)))

(declare-fun lambda!259401 () Int)

(assert (=> bs!1208435 (= lambda!259401 lambda!259382)))

(declare-fun bs!1208436 () Bool)

(assert (= bs!1208436 (and d!1676444 d!1676428)))

(assert (=> bs!1208436 (= lambda!259401 lambda!259393)))

(declare-fun bs!1208437 () Bool)

(assert (= bs!1208437 (and d!1676444 d!1676442)))

(assert (=> bs!1208437 (= lambda!259401 lambda!259398)))

(declare-fun lt!2136895 () List!60447)

(assert (=> d!1676444 (forall!14203 lt!2136895 lambda!259401)))

(declare-fun e!3232062 () List!60447)

(assert (=> d!1676444 (= lt!2136895 e!3232062)))

(declare-fun c!894264 () Bool)

(assert (=> d!1676444 (= c!894264 (is-Cons!60324 zl!343))))

(assert (=> d!1676444 (= (unfocusZipperList!158 zl!343) lt!2136895)))

(declare-fun b!5188525 () Bool)

(assert (=> b!5188525 (= e!3232062 (Cons!60323 (generalisedConcat!385 (exprs!4600 (h!66772 zl!343))) (unfocusZipperList!158 (t!373601 zl!343))))))

(declare-fun b!5188526 () Bool)

(assert (=> b!5188526 (= e!3232062 Nil!60323)))

(assert (= (and d!1676444 c!894264) b!5188525))

(assert (= (and d!1676444 (not c!894264)) b!5188526))

(declare-fun m!6245666 () Bool)

(assert (=> d!1676444 m!6245666))

(assert (=> b!5188525 m!6245446))

(declare-fun m!6245668 () Bool)

(assert (=> b!5188525 m!6245668))

(assert (=> b!5188108 d!1676444))

(declare-fun d!1676446 () Bool)

(declare-fun e!3232065 () Bool)

(assert (=> d!1676446 e!3232065))

(declare-fun res!2203862 () Bool)

(assert (=> d!1676446 (=> (not res!2203862) (not e!3232065))))

(declare-fun lt!2136898 () List!60448)

(declare-fun noDuplicate!1152 (List!60448) Bool)

(assert (=> d!1676446 (= res!2203862 (noDuplicate!1152 lt!2136898))))

(declare-fun choose!38545 ((Set Context!8200)) List!60448)

(assert (=> d!1676446 (= lt!2136898 (choose!38545 z!1189))))

(assert (=> d!1676446 (= (toList!8500 z!1189) lt!2136898)))

(declare-fun b!5188529 () Bool)

(declare-fun content!10688 (List!60448) (Set Context!8200))

(assert (=> b!5188529 (= e!3232065 (= (content!10688 lt!2136898) z!1189))))

(assert (= (and d!1676446 res!2203862) b!5188529))

(declare-fun m!6245670 () Bool)

(assert (=> d!1676446 m!6245670))

(declare-fun m!6245672 () Bool)

(assert (=> d!1676446 m!6245672))

(declare-fun m!6245674 () Bool)

(assert (=> b!5188529 m!6245674))

(assert (=> b!5188104 d!1676446))

(declare-fun bs!1208438 () Bool)

(declare-fun d!1676448 () Bool)

(assert (= bs!1208438 (and d!1676448 d!1676402)))

(declare-fun lambda!259402 () Int)

(assert (=> bs!1208438 (= lambda!259402 lambda!259382)))

(declare-fun bs!1208439 () Bool)

(assert (= bs!1208439 (and d!1676448 d!1676428)))

(assert (=> bs!1208439 (= lambda!259402 lambda!259393)))

(declare-fun bs!1208440 () Bool)

(assert (= bs!1208440 (and d!1676448 d!1676442)))

(assert (=> bs!1208440 (= lambda!259402 lambda!259398)))

(declare-fun bs!1208441 () Bool)

(assert (= bs!1208441 (and d!1676448 d!1676444)))

(assert (=> bs!1208441 (= lambda!259402 lambda!259401)))

(assert (=> d!1676448 (= (inv!80038 setElem!32719) (forall!14203 (exprs!4600 setElem!32719) lambda!259402))))

(declare-fun bs!1208442 () Bool)

(assert (= bs!1208442 d!1676448))

(declare-fun m!6245676 () Bool)

(assert (=> bs!1208442 m!6245676))

(assert (=> setNonEmpty!32719 d!1676448))

(declare-fun b!5188530 () Bool)

(declare-fun e!3232069 () (Set Context!8200))

(declare-fun call!364684 () (Set Context!8200))

(assert (=> b!5188530 (= e!3232069 call!364684)))

(declare-fun c!894268 () Bool)

(declare-fun bm!364678 () Bool)

(declare-fun c!894269 () Bool)

(declare-fun call!364687 () List!60447)

(assert (=> bm!364678 (= call!364687 ($colon$colon!1252 (exprs!4600 lt!2136845) (ite (or c!894268 c!894269) (regTwo!29944 r!7292) r!7292)))))

(declare-fun b!5188531 () Bool)

(declare-fun e!3232068 () (Set Context!8200))

(declare-fun call!364688 () (Set Context!8200))

(declare-fun call!364685 () (Set Context!8200))

(assert (=> b!5188531 (= e!3232068 (set.union call!364688 call!364685))))

(declare-fun bm!364679 () Bool)

(declare-fun call!364683 () (Set Context!8200))

(assert (=> bm!364679 (= call!364685 call!364683)))

(declare-fun bm!364680 () Bool)

(declare-fun c!894267 () Bool)

(assert (=> bm!364680 (= call!364688 (derivationStepZipperDown!185 (ite c!894267 (regOne!29945 r!7292) (regOne!29944 r!7292)) (ite c!894267 lt!2136845 (Context!8201 call!364687)) (h!66773 s!2326)))))

(declare-fun bm!364681 () Bool)

(assert (=> bm!364681 (= call!364684 call!364685)))

(declare-fun b!5188532 () Bool)

(assert (=> b!5188532 (= e!3232068 e!3232069)))

(assert (=> b!5188532 (= c!894269 (is-Concat!23561 r!7292))))

(declare-fun b!5188533 () Bool)

(declare-fun e!3232067 () (Set Context!8200))

(declare-fun e!3232066 () (Set Context!8200))

(assert (=> b!5188533 (= e!3232067 e!3232066)))

(assert (=> b!5188533 (= c!894267 (is-Union!14716 r!7292))))

(declare-fun b!5188535 () Bool)

(declare-fun e!3232070 () (Set Context!8200))

(assert (=> b!5188535 (= e!3232070 call!364684)))

(declare-fun bm!364682 () Bool)

(declare-fun call!364686 () List!60447)

(assert (=> bm!364682 (= call!364686 call!364687)))

(declare-fun b!5188536 () Bool)

(assert (=> b!5188536 (= e!3232070 (as set.empty (Set Context!8200)))))

(declare-fun b!5188537 () Bool)

(declare-fun e!3232071 () Bool)

(assert (=> b!5188537 (= c!894268 e!3232071)))

(declare-fun res!2203863 () Bool)

(assert (=> b!5188537 (=> (not res!2203863) (not e!3232071))))

(assert (=> b!5188537 (= res!2203863 (is-Concat!23561 r!7292))))

(assert (=> b!5188537 (= e!3232066 e!3232068)))

(declare-fun bm!364683 () Bool)

(assert (=> bm!364683 (= call!364683 (derivationStepZipperDown!185 (ite c!894267 (regTwo!29945 r!7292) (ite c!894268 (regTwo!29944 r!7292) (ite c!894269 (regOne!29944 r!7292) (reg!15045 r!7292)))) (ite (or c!894267 c!894268) lt!2136845 (Context!8201 call!364686)) (h!66773 s!2326)))))

(declare-fun b!5188538 () Bool)

(assert (=> b!5188538 (= e!3232067 (set.insert lt!2136845 (as set.empty (Set Context!8200))))))

(declare-fun b!5188539 () Bool)

(declare-fun c!894266 () Bool)

(assert (=> b!5188539 (= c!894266 (is-Star!14716 r!7292))))

(assert (=> b!5188539 (= e!3232069 e!3232070)))

(declare-fun b!5188540 () Bool)

(assert (=> b!5188540 (= e!3232071 (nullable!4915 (regOne!29944 r!7292)))))

(declare-fun d!1676450 () Bool)

(declare-fun c!894265 () Bool)

(assert (=> d!1676450 (= c!894265 (and (is-ElementMatch!14716 r!7292) (= (c!894145 r!7292) (h!66773 s!2326))))))

(assert (=> d!1676450 (= (derivationStepZipperDown!185 r!7292 lt!2136845 (h!66773 s!2326)) e!3232067)))

(declare-fun b!5188534 () Bool)

(assert (=> b!5188534 (= e!3232066 (set.union call!364688 call!364683))))

(assert (= (and d!1676450 c!894265) b!5188538))

(assert (= (and d!1676450 (not c!894265)) b!5188533))

(assert (= (and b!5188533 c!894267) b!5188534))

(assert (= (and b!5188533 (not c!894267)) b!5188537))

(assert (= (and b!5188537 res!2203863) b!5188540))

(assert (= (and b!5188537 c!894268) b!5188531))

(assert (= (and b!5188537 (not c!894268)) b!5188532))

(assert (= (and b!5188532 c!894269) b!5188530))

(assert (= (and b!5188532 (not c!894269)) b!5188539))

(assert (= (and b!5188539 c!894266) b!5188535))

(assert (= (and b!5188539 (not c!894266)) b!5188536))

(assert (= (or b!5188530 b!5188535) bm!364682))

(assert (= (or b!5188530 b!5188535) bm!364681))

(assert (= (or b!5188531 bm!364682) bm!364678))

(assert (= (or b!5188531 bm!364681) bm!364679))

(assert (= (or b!5188534 bm!364679) bm!364683))

(assert (= (or b!5188534 b!5188531) bm!364680))

(declare-fun m!6245678 () Bool)

(assert (=> bm!364680 m!6245678))

(declare-fun m!6245680 () Bool)

(assert (=> b!5188540 m!6245680))

(declare-fun m!6245682 () Bool)

(assert (=> bm!364678 m!6245682))

(declare-fun m!6245684 () Bool)

(assert (=> bm!364683 m!6245684))

(assert (=> b!5188538 m!6245636))

(assert (=> b!5188105 d!1676450))

(declare-fun b!5188551 () Bool)

(declare-fun e!3232080 () (Set Context!8200))

(declare-fun e!3232079 () (Set Context!8200))

(assert (=> b!5188551 (= e!3232080 e!3232079)))

(declare-fun c!894275 () Bool)

(assert (=> b!5188551 (= c!894275 (is-Cons!60323 (exprs!4600 (Context!8201 (Cons!60323 r!7292 Nil!60323)))))))

(declare-fun bm!364686 () Bool)

(declare-fun call!364691 () (Set Context!8200))

(assert (=> bm!364686 (= call!364691 (derivationStepZipperDown!185 (h!66771 (exprs!4600 (Context!8201 (Cons!60323 r!7292 Nil!60323)))) (Context!8201 (t!373600 (exprs!4600 (Context!8201 (Cons!60323 r!7292 Nil!60323))))) (h!66773 s!2326)))))

(declare-fun b!5188553 () Bool)

(assert (=> b!5188553 (= e!3232080 (set.union call!364691 (derivationStepZipperUp!106 (Context!8201 (t!373600 (exprs!4600 (Context!8201 (Cons!60323 r!7292 Nil!60323))))) (h!66773 s!2326))))))

(declare-fun b!5188554 () Bool)

(declare-fun e!3232078 () Bool)

(assert (=> b!5188554 (= e!3232078 (nullable!4915 (h!66771 (exprs!4600 (Context!8201 (Cons!60323 r!7292 Nil!60323))))))))

(declare-fun b!5188555 () Bool)

(assert (=> b!5188555 (= e!3232079 (as set.empty (Set Context!8200)))))

(declare-fun b!5188552 () Bool)

(assert (=> b!5188552 (= e!3232079 call!364691)))

(declare-fun d!1676452 () Bool)

(declare-fun c!894274 () Bool)

(assert (=> d!1676452 (= c!894274 e!3232078)))

(declare-fun res!2203866 () Bool)

(assert (=> d!1676452 (=> (not res!2203866) (not e!3232078))))

(assert (=> d!1676452 (= res!2203866 (is-Cons!60323 (exprs!4600 (Context!8201 (Cons!60323 r!7292 Nil!60323)))))))

(assert (=> d!1676452 (= (derivationStepZipperUp!106 (Context!8201 (Cons!60323 r!7292 Nil!60323)) (h!66773 s!2326)) e!3232080)))

(assert (= (and d!1676452 res!2203866) b!5188554))

(assert (= (and d!1676452 c!894274) b!5188553))

(assert (= (and d!1676452 (not c!894274)) b!5188551))

(assert (= (and b!5188551 c!894275) b!5188552))

(assert (= (and b!5188551 (not c!894275)) b!5188555))

(assert (= (or b!5188553 b!5188552) bm!364686))

(declare-fun m!6245686 () Bool)

(assert (=> bm!364686 m!6245686))

(declare-fun m!6245688 () Bool)

(assert (=> b!5188553 m!6245688))

(declare-fun m!6245690 () Bool)

(assert (=> b!5188554 m!6245690))

(assert (=> b!5188105 d!1676452))

(declare-fun b!5188560 () Bool)

(declare-fun e!3232083 () Bool)

(declare-fun tp!1455594 () Bool)

(declare-fun tp!1455595 () Bool)

(assert (=> b!5188560 (= e!3232083 (and tp!1455594 tp!1455595))))

(assert (=> b!5188106 (= tp!1455552 e!3232083)))

(assert (= (and b!5188106 (is-Cons!60323 (exprs!4600 setElem!32719))) b!5188560))

(declare-fun b!5188573 () Bool)

(declare-fun e!3232086 () Bool)

(declare-fun tp!1455610 () Bool)

(assert (=> b!5188573 (= e!3232086 tp!1455610)))

(declare-fun b!5188571 () Bool)

(assert (=> b!5188571 (= e!3232086 tp_is_empty!38685)))

(declare-fun b!5188574 () Bool)

(declare-fun tp!1455607 () Bool)

(declare-fun tp!1455606 () Bool)

(assert (=> b!5188574 (= e!3232086 (and tp!1455607 tp!1455606))))

(declare-fun b!5188572 () Bool)

(declare-fun tp!1455608 () Bool)

(declare-fun tp!1455609 () Bool)

(assert (=> b!5188572 (= e!3232086 (and tp!1455608 tp!1455609))))

(assert (=> b!5188107 (= tp!1455558 e!3232086)))

(assert (= (and b!5188107 (is-ElementMatch!14716 (reg!15045 r!7292))) b!5188571))

(assert (= (and b!5188107 (is-Concat!23561 (reg!15045 r!7292))) b!5188572))

(assert (= (and b!5188107 (is-Star!14716 (reg!15045 r!7292))) b!5188573))

(assert (= (and b!5188107 (is-Union!14716 (reg!15045 r!7292))) b!5188574))

(declare-fun b!5188577 () Bool)

(declare-fun e!3232087 () Bool)

(declare-fun tp!1455615 () Bool)

(assert (=> b!5188577 (= e!3232087 tp!1455615)))

(declare-fun b!5188575 () Bool)

(assert (=> b!5188575 (= e!3232087 tp_is_empty!38685)))

(declare-fun b!5188578 () Bool)

(declare-fun tp!1455612 () Bool)

(declare-fun tp!1455611 () Bool)

(assert (=> b!5188578 (= e!3232087 (and tp!1455612 tp!1455611))))

(declare-fun b!5188576 () Bool)

(declare-fun tp!1455613 () Bool)

(declare-fun tp!1455614 () Bool)

(assert (=> b!5188576 (= e!3232087 (and tp!1455613 tp!1455614))))

(assert (=> b!5188102 (= tp!1455556 e!3232087)))

(assert (= (and b!5188102 (is-ElementMatch!14716 (regOne!29945 r!7292))) b!5188575))

(assert (= (and b!5188102 (is-Concat!23561 (regOne!29945 r!7292))) b!5188576))

(assert (= (and b!5188102 (is-Star!14716 (regOne!29945 r!7292))) b!5188577))

(assert (= (and b!5188102 (is-Union!14716 (regOne!29945 r!7292))) b!5188578))

(declare-fun b!5188581 () Bool)

(declare-fun e!3232088 () Bool)

(declare-fun tp!1455620 () Bool)

(assert (=> b!5188581 (= e!3232088 tp!1455620)))

(declare-fun b!5188579 () Bool)

(assert (=> b!5188579 (= e!3232088 tp_is_empty!38685)))

(declare-fun b!5188582 () Bool)

(declare-fun tp!1455617 () Bool)

(declare-fun tp!1455616 () Bool)

(assert (=> b!5188582 (= e!3232088 (and tp!1455617 tp!1455616))))

(declare-fun b!5188580 () Bool)

(declare-fun tp!1455618 () Bool)

(declare-fun tp!1455619 () Bool)

(assert (=> b!5188580 (= e!3232088 (and tp!1455618 tp!1455619))))

(assert (=> b!5188102 (= tp!1455559 e!3232088)))

(assert (= (and b!5188102 (is-ElementMatch!14716 (regTwo!29945 r!7292))) b!5188579))

(assert (= (and b!5188102 (is-Concat!23561 (regTwo!29945 r!7292))) b!5188580))

(assert (= (and b!5188102 (is-Star!14716 (regTwo!29945 r!7292))) b!5188581))

(assert (= (and b!5188102 (is-Union!14716 (regTwo!29945 r!7292))) b!5188582))

(declare-fun b!5188583 () Bool)

(declare-fun e!3232089 () Bool)

(declare-fun tp!1455621 () Bool)

(declare-fun tp!1455622 () Bool)

(assert (=> b!5188583 (= e!3232089 (and tp!1455621 tp!1455622))))

(assert (=> b!5188098 (= tp!1455557 e!3232089)))

(assert (= (and b!5188098 (is-Cons!60323 (exprs!4600 (h!66772 zl!343)))) b!5188583))

(declare-fun condSetEmpty!32725 () Bool)

(assert (=> setNonEmpty!32719 (= condSetEmpty!32725 (= setRest!32719 (as set.empty (Set Context!8200))))))

(declare-fun setRes!32725 () Bool)

(assert (=> setNonEmpty!32719 (= tp!1455550 setRes!32725)))

(declare-fun setIsEmpty!32725 () Bool)

(assert (=> setIsEmpty!32725 setRes!32725))

(declare-fun e!3232092 () Bool)

(declare-fun setElem!32725 () Context!8200)

(declare-fun tp!1455628 () Bool)

(declare-fun setNonEmpty!32725 () Bool)

(assert (=> setNonEmpty!32725 (= setRes!32725 (and tp!1455628 (inv!80038 setElem!32725) e!3232092))))

(declare-fun setRest!32725 () (Set Context!8200))

(assert (=> setNonEmpty!32725 (= setRest!32719 (set.union (set.insert setElem!32725 (as set.empty (Set Context!8200))) setRest!32725))))

(declare-fun b!5188588 () Bool)

(declare-fun tp!1455627 () Bool)

(assert (=> b!5188588 (= e!3232092 tp!1455627)))

(assert (= (and setNonEmpty!32719 condSetEmpty!32725) setIsEmpty!32725))

(assert (= (and setNonEmpty!32719 (not condSetEmpty!32725)) setNonEmpty!32725))

(assert (= setNonEmpty!32725 b!5188588))

(declare-fun m!6245692 () Bool)

(assert (=> setNonEmpty!32725 m!6245692))

(declare-fun b!5188591 () Bool)

(declare-fun e!3232093 () Bool)

(declare-fun tp!1455633 () Bool)

(assert (=> b!5188591 (= e!3232093 tp!1455633)))

(declare-fun b!5188589 () Bool)

(assert (=> b!5188589 (= e!3232093 tp_is_empty!38685)))

(declare-fun b!5188592 () Bool)

(declare-fun tp!1455630 () Bool)

(declare-fun tp!1455629 () Bool)

(assert (=> b!5188592 (= e!3232093 (and tp!1455630 tp!1455629))))

(declare-fun b!5188590 () Bool)

(declare-fun tp!1455631 () Bool)

(declare-fun tp!1455632 () Bool)

(assert (=> b!5188590 (= e!3232093 (and tp!1455631 tp!1455632))))

(assert (=> b!5188110 (= tp!1455553 e!3232093)))

(assert (= (and b!5188110 (is-ElementMatch!14716 (regOne!29944 r!7292))) b!5188589))

(assert (= (and b!5188110 (is-Concat!23561 (regOne!29944 r!7292))) b!5188590))

(assert (= (and b!5188110 (is-Star!14716 (regOne!29944 r!7292))) b!5188591))

(assert (= (and b!5188110 (is-Union!14716 (regOne!29944 r!7292))) b!5188592))

(declare-fun b!5188595 () Bool)

(declare-fun e!3232094 () Bool)

(declare-fun tp!1455638 () Bool)

(assert (=> b!5188595 (= e!3232094 tp!1455638)))

(declare-fun b!5188593 () Bool)

(assert (=> b!5188593 (= e!3232094 tp_is_empty!38685)))

(declare-fun b!5188596 () Bool)

(declare-fun tp!1455635 () Bool)

(declare-fun tp!1455634 () Bool)

(assert (=> b!5188596 (= e!3232094 (and tp!1455635 tp!1455634))))

(declare-fun b!5188594 () Bool)

(declare-fun tp!1455636 () Bool)

(declare-fun tp!1455637 () Bool)

(assert (=> b!5188594 (= e!3232094 (and tp!1455636 tp!1455637))))

(assert (=> b!5188110 (= tp!1455555 e!3232094)))

(assert (= (and b!5188110 (is-ElementMatch!14716 (regTwo!29944 r!7292))) b!5188593))

(assert (= (and b!5188110 (is-Concat!23561 (regTwo!29944 r!7292))) b!5188594))

(assert (= (and b!5188110 (is-Star!14716 (regTwo!29944 r!7292))) b!5188595))

(assert (= (and b!5188110 (is-Union!14716 (regTwo!29944 r!7292))) b!5188596))

(declare-fun b!5188601 () Bool)

(declare-fun e!3232097 () Bool)

(declare-fun tp!1455641 () Bool)

(assert (=> b!5188601 (= e!3232097 (and tp_is_empty!38685 tp!1455641))))

(assert (=> b!5188114 (= tp!1455551 e!3232097)))

(assert (= (and b!5188114 (is-Cons!60325 (t!373602 s!2326))) b!5188601))

(declare-fun b!5188609 () Bool)

(declare-fun e!3232103 () Bool)

(declare-fun tp!1455646 () Bool)

(assert (=> b!5188609 (= e!3232103 tp!1455646)))

(declare-fun tp!1455647 () Bool)

(declare-fun b!5188608 () Bool)

(declare-fun e!3232102 () Bool)

(assert (=> b!5188608 (= e!3232102 (and (inv!80038 (h!66772 (t!373601 zl!343))) e!3232103 tp!1455647))))

(assert (=> b!5188111 (= tp!1455554 e!3232102)))

(assert (= b!5188608 b!5188609))

(assert (= (and b!5188111 (is-Cons!60324 (t!373601 zl!343))) b!5188608))

(declare-fun m!6245694 () Bool)

(assert (=> b!5188608 m!6245694))

(push 1)

(assert (not bm!364635))

(assert (not b!5188437))

(assert (not b!5188377))

(assert (not bm!364683))

(assert (not bm!364672))

(assert (not bm!364680))

(assert (not b!5188265))

(assert (not bm!364631))

(assert (not bm!364650))

(assert (not b!5188515))

(assert (not d!1676442))

(assert (not b!5188596))

(assert (not b!5188581))

(assert (not b!5188574))

(assert tp_is_empty!38685)

(assert (not b!5188595))

(assert (not b!5188512))

(assert (not d!1676416))

(assert (not b!5188436))

(assert (not b!5188490))

(assert (not b!5188601))

(assert (not b!5188578))

(assert (not bm!364668))

(assert (not b!5188367))

(assert (not bm!364651))

(assert (not b!5188310))

(assert (not b!5188353))

(assert (not bm!364674))

(assert (not bm!364638))

(assert (not d!1676448))

(assert (not d!1676446))

(assert (not bm!364678))

(assert (not bm!364666))

(assert (not d!1676436))

(assert (not b!5188591))

(assert (not b!5188360))

(assert (not d!1676430))

(assert (not b!5188576))

(assert (not b!5188407))

(assert (not b!5188529))

(assert (not bm!364632))

(assert (not bm!364677))

(assert (not bm!364645))

(assert (not bm!364647))

(assert (not b!5188582))

(assert (not bm!364636))

(assert (not b!5188352))

(assert (not b!5188517))

(assert (not bm!364648))

(assert (not b!5188428))

(assert (not b!5188519))

(assert (not b!5188438))

(assert (not b!5188439))

(assert (not b!5188554))

(assert (not b!5188351))

(assert (not bm!364671))

(assert (not d!1676428))

(assert (not b!5188384))

(assert (not b!5188445))

(assert (not b!5188511))

(assert (not b!5188553))

(assert (not b!5188592))

(assert (not b!5188263))

(assert (not b!5188376))

(assert (not d!1676418))

(assert (not d!1676444))

(assert (not b!5188588))

(assert (not setNonEmpty!32725))

(assert (not b!5188446))

(assert (not d!1676422))

(assert (not b!5188363))

(assert (not b!5188262))

(assert (not d!1676402))

(assert (not b!5188264))

(assert (not d!1676434))

(assert (not b!5188572))

(assert (not d!1676414))

(assert (not b!5188479))

(assert (not b!5188609))

(assert (not b!5188359))

(assert (not bm!364652))

(assert (not bm!364653))

(assert (not b!5188424))

(assert (not b!5188573))

(assert (not b!5188594))

(assert (not b!5188375))

(assert (not b!5188580))

(assert (not b!5188378))

(assert (not bm!364637))

(assert (not b!5188416))

(assert (not b!5188583))

(assert (not b!5188306))

(assert (not b!5188590))

(assert (not b!5188385))

(assert (not b!5188560))

(assert (not bm!364686))

(assert (not b!5188271))

(assert (not b!5188525))

(assert (not b!5188540))

(assert (not b!5188268))

(assert (not b!5188270))

(assert (not b!5188577))

(assert (not b!5188350))

(assert (not b!5188608))

(assert (not b!5188514))

(assert (not b!5188513))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

