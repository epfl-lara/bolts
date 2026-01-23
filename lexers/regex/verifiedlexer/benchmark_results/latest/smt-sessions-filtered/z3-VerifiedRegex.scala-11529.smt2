; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!632746 () Bool)

(assert start!632746)

(declare-fun b!6387825 () Bool)

(assert (=> b!6387825 true))

(assert (=> b!6387825 true))

(declare-fun lambda!352582 () Int)

(declare-fun lambda!352581 () Int)

(assert (=> b!6387825 (not (= lambda!352582 lambda!352581))))

(assert (=> b!6387825 true))

(assert (=> b!6387825 true))

(declare-fun b!6387795 () Bool)

(assert (=> b!6387795 true))

(declare-fun bs!1598681 () Bool)

(declare-fun b!6387793 () Bool)

(assert (= bs!1598681 (and b!6387793 b!6387825)))

(declare-datatypes ((C!32880 0))(
  ( (C!32881 (val!26142 Int)) )
))
(declare-datatypes ((Regex!16305 0))(
  ( (ElementMatch!16305 (c!1164242 C!32880)) (Concat!25150 (regOne!33122 Regex!16305) (regTwo!33122 Regex!16305)) (EmptyExpr!16305) (Star!16305 (reg!16634 Regex!16305)) (EmptyLang!16305) (Union!16305 (regOne!33123 Regex!16305) (regTwo!33123 Regex!16305)) )
))
(declare-fun r!7292 () Regex!16305)

(declare-fun lambda!352584 () Int)

(declare-fun lt!2371972 () Regex!16305)

(assert (=> bs!1598681 (= (= lt!2371972 (regOne!33122 r!7292)) (= lambda!352584 lambda!352581))))

(assert (=> bs!1598681 (not (= lambda!352584 lambda!352582))))

(assert (=> b!6387793 true))

(assert (=> b!6387793 true))

(assert (=> b!6387793 true))

(declare-fun lambda!352585 () Int)

(assert (=> bs!1598681 (not (= lambda!352585 lambda!352581))))

(assert (=> bs!1598681 (= (= lt!2371972 (regOne!33122 r!7292)) (= lambda!352585 lambda!352582))))

(assert (=> b!6387793 (not (= lambda!352585 lambda!352584))))

(assert (=> b!6387793 true))

(assert (=> b!6387793 true))

(assert (=> b!6387793 true))

(declare-fun b!6387789 () Bool)

(declare-datatypes ((Unit!158551 0))(
  ( (Unit!158552) )
))
(declare-fun e!3877281 () Unit!158551)

(declare-fun Unit!158553 () Unit!158551)

(assert (=> b!6387789 (= e!3877281 Unit!158553)))

(declare-fun b!6387790 () Bool)

(declare-fun res!2627585 () Bool)

(declare-fun e!3877275 () Bool)

(assert (=> b!6387790 (=> res!2627585 e!3877275)))

(declare-fun e!3877272 () Bool)

(assert (=> b!6387790 (= res!2627585 e!3877272)))

(declare-fun res!2627583 () Bool)

(assert (=> b!6387790 (=> (not res!2627583) (not e!3877272))))

(get-info :version)

(assert (=> b!6387790 (= res!2627583 ((_ is Concat!25150) (regOne!33122 r!7292)))))

(declare-fun b!6387791 () Bool)

(declare-fun res!2627573 () Bool)

(declare-fun e!3877283 () Bool)

(assert (=> b!6387791 (=> res!2627573 e!3877283)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65214 0))(
  ( (Nil!65090) (Cons!65090 (h!71538 Regex!16305) (t!378820 List!65214)) )
))
(declare-datatypes ((Context!11378 0))(
  ( (Context!11379 (exprs!6189 List!65214)) )
))
(declare-fun lt!2371994 () (InoxSet Context!11378))

(declare-fun lt!2371981 () (InoxSet Context!11378))

(declare-datatypes ((List!65215 0))(
  ( (Nil!65091) (Cons!65091 (h!71539 C!32880) (t!378821 List!65215)) )
))
(declare-fun s!2326 () List!65215)

(declare-fun matchZipper!2317 ((InoxSet Context!11378) List!65215) Bool)

(assert (=> b!6387791 (= res!2627573 (not (= (matchZipper!2317 lt!2371994 s!2326) (matchZipper!2317 lt!2371981 (t!378821 s!2326)))))))

(declare-fun b!6387792 () Bool)

(declare-fun res!2627586 () Bool)

(assert (=> b!6387792 (=> res!2627586 e!3877283)))

(declare-fun lt!2371969 () Regex!16305)

(assert (=> b!6387792 (= res!2627586 (not (= lt!2371969 r!7292)))))

(declare-fun e!3877269 () Bool)

(declare-fun e!3877273 () Bool)

(assert (=> b!6387793 (= e!3877269 e!3877273)))

(declare-fun res!2627570 () Bool)

(assert (=> b!6387793 (=> res!2627570 e!3877273)))

(declare-datatypes ((tuple2!66568 0))(
  ( (tuple2!66569 (_1!36587 List!65215) (_2!36587 List!65215)) )
))
(declare-fun lt!2371982 () tuple2!66568)

(declare-fun ++!14373 (List!65215 List!65215) List!65215)

(assert (=> b!6387793 (= res!2627570 (not (= (++!14373 (_1!36587 lt!2371982) (_2!36587 lt!2371982)) s!2326)))))

(declare-datatypes ((Option!16196 0))(
  ( (None!16195) (Some!16195 (v!52364 tuple2!66568)) )
))
(declare-fun lt!2371980 () Option!16196)

(declare-fun get!22541 (Option!16196) tuple2!66568)

(assert (=> b!6387793 (= lt!2371982 (get!22541 lt!2371980))))

(declare-fun Exists!3375 (Int) Bool)

(assert (=> b!6387793 (= (Exists!3375 lambda!352584) (Exists!3375 lambda!352585))))

(declare-fun lt!2371987 () Unit!158551)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1912 (Regex!16305 Regex!16305 List!65215) Unit!158551)

(assert (=> b!6387793 (= lt!2371987 (lemmaExistCutMatchRandMatchRSpecEquivalent!1912 lt!2371972 (regTwo!33122 r!7292) s!2326))))

(declare-fun isDefined!12899 (Option!16196) Bool)

(assert (=> b!6387793 (= (isDefined!12899 lt!2371980) (Exists!3375 lambda!352584))))

(declare-fun findConcatSeparation!2610 (Regex!16305 Regex!16305 List!65215 List!65215 List!65215) Option!16196)

(assert (=> b!6387793 (= lt!2371980 (findConcatSeparation!2610 lt!2371972 (regTwo!33122 r!7292) Nil!65091 s!2326 s!2326))))

(declare-fun lt!2371990 () Unit!158551)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2374 (Regex!16305 Regex!16305 List!65215) Unit!158551)

(assert (=> b!6387793 (= lt!2371990 (lemmaFindConcatSeparationEquivalentToExists!2374 lt!2371972 (regTwo!33122 r!7292) s!2326))))

(declare-fun b!6387794 () Bool)

(declare-fun e!3877287 () Bool)

(assert (=> b!6387794 (= e!3877273 e!3877287)))

(declare-fun res!2627575 () Bool)

(assert (=> b!6387794 (=> res!2627575 e!3877287)))

(declare-fun lt!2371960 () (InoxSet Context!11378))

(declare-fun lt!2371984 () (InoxSet Context!11378))

(declare-fun derivationStepZipper!2271 ((InoxSet Context!11378) C!32880) (InoxSet Context!11378))

(assert (=> b!6387794 (= res!2627575 (not (= lt!2371960 (derivationStepZipper!2271 lt!2371984 (h!71539 s!2326)))))))

(declare-fun lt!2371961 () Context!11378)

(declare-fun lambda!352583 () Int)

(declare-fun flatMap!1810 ((InoxSet Context!11378) Int) (InoxSet Context!11378))

(declare-fun derivationStepZipperUp!1479 (Context!11378 C!32880) (InoxSet Context!11378))

(assert (=> b!6387794 (= (flatMap!1810 lt!2371984 lambda!352583) (derivationStepZipperUp!1479 lt!2371961 (h!71539 s!2326)))))

(declare-fun lt!2371977 () Unit!158551)

(declare-fun lemmaFlatMapOnSingletonSet!1336 ((InoxSet Context!11378) Context!11378 Int) Unit!158551)

(assert (=> b!6387794 (= lt!2371977 (lemmaFlatMapOnSingletonSet!1336 lt!2371984 lt!2371961 lambda!352583))))

(assert (=> b!6387794 (= lt!2371984 (store ((as const (Array Context!11378 Bool)) false) lt!2371961 true))))

(declare-fun e!3877286 () Bool)

(assert (=> b!6387795 (= e!3877286 e!3877275)))

(declare-fun res!2627576 () Bool)

(assert (=> b!6387795 (=> res!2627576 e!3877275)))

(assert (=> b!6387795 (= res!2627576 (or (and ((_ is ElementMatch!16305) (regOne!33122 r!7292)) (= (c!1164242 (regOne!33122 r!7292)) (h!71539 s!2326))) ((_ is Union!16305) (regOne!33122 r!7292))))))

(declare-fun lt!2371983 () Unit!158551)

(assert (=> b!6387795 (= lt!2371983 e!3877281)))

(declare-fun c!1164241 () Bool)

(declare-datatypes ((List!65216 0))(
  ( (Nil!65092) (Cons!65092 (h!71540 Context!11378) (t!378822 List!65216)) )
))
(declare-fun zl!343 () List!65216)

(declare-fun nullable!6298 (Regex!16305) Bool)

(assert (=> b!6387795 (= c!1164241 (nullable!6298 (h!71538 (exprs!6189 (h!71540 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!11378))

(assert (=> b!6387795 (= (flatMap!1810 z!1189 lambda!352583) (derivationStepZipperUp!1479 (h!71540 zl!343) (h!71539 s!2326)))))

(declare-fun lt!2371964 () Unit!158551)

(assert (=> b!6387795 (= lt!2371964 (lemmaFlatMapOnSingletonSet!1336 z!1189 (h!71540 zl!343) lambda!352583))))

(assert (=> b!6387795 (= lt!2371960 (derivationStepZipperUp!1479 lt!2371961 (h!71539 s!2326)))))

(declare-fun lt!2371991 () (InoxSet Context!11378))

(declare-fun derivationStepZipperDown!1553 (Regex!16305 Context!11378 C!32880) (InoxSet Context!11378))

(assert (=> b!6387795 (= lt!2371991 (derivationStepZipperDown!1553 (h!71538 (exprs!6189 (h!71540 zl!343))) lt!2371961 (h!71539 s!2326)))))

(assert (=> b!6387795 (= lt!2371961 (Context!11379 (t!378820 (exprs!6189 (h!71540 zl!343)))))))

(declare-fun lt!2371966 () (InoxSet Context!11378))

(assert (=> b!6387795 (= lt!2371966 (derivationStepZipperUp!1479 (Context!11379 (Cons!65090 (h!71538 (exprs!6189 (h!71540 zl!343))) (t!378820 (exprs!6189 (h!71540 zl!343))))) (h!71539 s!2326)))))

(declare-fun b!6387796 () Bool)

(declare-fun res!2627567 () Bool)

(assert (=> b!6387796 (=> res!2627567 e!3877286)))

(declare-fun isEmpty!37228 (List!65214) Bool)

(assert (=> b!6387796 (= res!2627567 (isEmpty!37228 (t!378820 (exprs!6189 (h!71540 zl!343)))))))

(declare-fun b!6387797 () Bool)

(declare-fun res!2627568 () Bool)

(declare-fun e!3877270 () Bool)

(assert (=> b!6387797 (=> res!2627568 e!3877270)))

(assert (=> b!6387797 (= res!2627568 (or ((_ is EmptyExpr!16305) r!7292) ((_ is EmptyLang!16305) r!7292) ((_ is ElementMatch!16305) r!7292) ((_ is Union!16305) r!7292) (not ((_ is Concat!25150) r!7292))))))

(declare-fun b!6387798 () Bool)

(declare-fun e!3877284 () Bool)

(declare-fun tp_is_empty!41863 () Bool)

(declare-fun tp!1776820 () Bool)

(assert (=> b!6387798 (= e!3877284 (and tp_is_empty!41863 tp!1776820))))

(declare-fun b!6387799 () Bool)

(declare-fun res!2627560 () Bool)

(assert (=> b!6387799 (=> res!2627560 e!3877273)))

(declare-fun isEmpty!37229 (List!65215) Bool)

(assert (=> b!6387799 (= res!2627560 (not (isEmpty!37229 (_1!36587 lt!2371982))))))

(declare-fun b!6387800 () Bool)

(declare-fun e!3877268 () Bool)

(declare-fun tp!1776826 () Bool)

(assert (=> b!6387800 (= e!3877268 tp!1776826)))

(declare-fun b!6387801 () Bool)

(declare-fun e!3877277 () Bool)

(assert (=> b!6387801 (= e!3877283 e!3877277)))

(declare-fun res!2627561 () Bool)

(assert (=> b!6387801 (=> res!2627561 e!3877277)))

(declare-fun lt!2371989 () Regex!16305)

(assert (=> b!6387801 (= res!2627561 (not (= r!7292 lt!2371989)))))

(assert (=> b!6387801 (= lt!2371989 (Concat!25150 lt!2371972 (regTwo!33122 r!7292)))))

(declare-fun res!2627584 () Bool)

(declare-fun e!3877282 () Bool)

(assert (=> start!632746 (=> (not res!2627584) (not e!3877282))))

(declare-fun validRegex!8041 (Regex!16305) Bool)

(assert (=> start!632746 (= res!2627584 (validRegex!8041 r!7292))))

(assert (=> start!632746 e!3877282))

(assert (=> start!632746 e!3877268))

(declare-fun condSetEmpty!43618 () Bool)

(assert (=> start!632746 (= condSetEmpty!43618 (= z!1189 ((as const (Array Context!11378 Bool)) false)))))

(declare-fun setRes!43618 () Bool)

(assert (=> start!632746 setRes!43618))

(declare-fun e!3877278 () Bool)

(assert (=> start!632746 e!3877278))

(assert (=> start!632746 e!3877284))

(declare-fun b!6387802 () Bool)

(declare-fun e!3877288 () Bool)

(assert (=> b!6387802 (= e!3877277 e!3877288)))

(declare-fun res!2627577 () Bool)

(assert (=> b!6387802 (=> res!2627577 e!3877288)))

(declare-fun lt!2371974 () Context!11378)

(declare-fun lt!2371967 () Regex!16305)

(declare-fun unfocusZipper!2047 (List!65216) Regex!16305)

(assert (=> b!6387802 (= res!2627577 (not (= (unfocusZipper!2047 (Cons!65092 lt!2371974 Nil!65092)) lt!2371967)))))

(assert (=> b!6387802 (= lt!2371967 (Concat!25150 (reg!16634 (regOne!33122 r!7292)) lt!2371989))))

(declare-fun b!6387803 () Bool)

(declare-fun res!2627579 () Bool)

(assert (=> b!6387803 (=> res!2627579 e!3877287)))

(declare-fun regexDepth!332 (Regex!16305) Int)

(declare-fun generalisedConcat!1902 (List!65214) Regex!16305)

(assert (=> b!6387803 (= res!2627579 (< (regexDepth!332 r!7292) (regexDepth!332 (generalisedConcat!1902 (t!378820 (exprs!6189 (h!71540 zl!343)))))))))

(declare-fun b!6387804 () Bool)

(declare-fun res!2627587 () Bool)

(assert (=> b!6387804 (=> res!2627587 e!3877270)))

(assert (=> b!6387804 (= res!2627587 (not ((_ is Cons!65090) (exprs!6189 (h!71540 zl!343)))))))

(declare-fun b!6387805 () Bool)

(declare-fun Unit!158554 () Unit!158551)

(assert (=> b!6387805 (= e!3877281 Unit!158554)))

(declare-fun lt!2371971 () Unit!158551)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1136 ((InoxSet Context!11378) (InoxSet Context!11378) List!65215) Unit!158551)

(assert (=> b!6387805 (= lt!2371971 (lemmaZipperConcatMatchesSameAsBothZippers!1136 lt!2371991 lt!2371960 (t!378821 s!2326)))))

(declare-fun res!2627569 () Bool)

(assert (=> b!6387805 (= res!2627569 (matchZipper!2317 lt!2371991 (t!378821 s!2326)))))

(declare-fun e!3877279 () Bool)

(assert (=> b!6387805 (=> res!2627569 e!3877279)))

(assert (=> b!6387805 (= (matchZipper!2317 ((_ map or) lt!2371991 lt!2371960) (t!378821 s!2326)) e!3877279)))

(declare-fun b!6387806 () Bool)

(declare-fun e!3877274 () Bool)

(assert (=> b!6387806 (= e!3877282 e!3877274)))

(declare-fun res!2627578 () Bool)

(assert (=> b!6387806 (=> (not res!2627578) (not e!3877274))))

(assert (=> b!6387806 (= res!2627578 (= r!7292 lt!2371969))))

(assert (=> b!6387806 (= lt!2371969 (unfocusZipper!2047 zl!343))))

(declare-fun b!6387807 () Bool)

(declare-fun e!3877267 () Bool)

(declare-fun tp!1776825 () Bool)

(assert (=> b!6387807 (= e!3877267 tp!1776825)))

(declare-fun b!6387808 () Bool)

(declare-fun res!2627590 () Bool)

(assert (=> b!6387808 (=> res!2627590 e!3877273)))

(declare-fun matchR!8488 (Regex!16305 List!65215) Bool)

(assert (=> b!6387808 (= res!2627590 (not (matchR!8488 (regTwo!33122 r!7292) (_2!36587 lt!2371982))))))

(declare-fun b!6387809 () Bool)

(declare-fun res!2627562 () Bool)

(assert (=> b!6387809 (=> res!2627562 e!3877287)))

(declare-fun zipperDepth!374 (List!65216) Int)

(assert (=> b!6387809 (= res!2627562 (< (zipperDepth!374 zl!343) (zipperDepth!374 (Cons!65092 lt!2371961 Nil!65092))))))

(declare-fun b!6387810 () Bool)

(assert (=> b!6387810 (= e!3877272 (nullable!6298 (regOne!33122 (regOne!33122 r!7292))))))

(declare-fun b!6387811 () Bool)

(declare-fun e!3877280 () Bool)

(declare-fun lt!2371978 () Bool)

(declare-fun lt!2371985 () Bool)

(assert (=> b!6387811 (= e!3877280 (or (not lt!2371978) lt!2371985))))

(declare-fun b!6387812 () Bool)

(declare-fun res!2627563 () Bool)

(assert (=> b!6387812 (=> res!2627563 e!3877270)))

(declare-fun isEmpty!37230 (List!65216) Bool)

(assert (=> b!6387812 (= res!2627563 (not (isEmpty!37230 (t!378822 zl!343))))))

(declare-fun setIsEmpty!43618 () Bool)

(assert (=> setIsEmpty!43618 setRes!43618))

(declare-fun b!6387813 () Bool)

(declare-fun e!3877271 () Bool)

(declare-fun tp!1776821 () Bool)

(assert (=> b!6387813 (= e!3877271 tp!1776821)))

(declare-fun setNonEmpty!43618 () Bool)

(declare-fun setElem!43618 () Context!11378)

(declare-fun tp!1776823 () Bool)

(declare-fun inv!84009 (Context!11378) Bool)

(assert (=> setNonEmpty!43618 (= setRes!43618 (and tp!1776823 (inv!84009 setElem!43618) e!3877267))))

(declare-fun setRest!43618 () (InoxSet Context!11378))

(assert (=> setNonEmpty!43618 (= z!1189 ((_ map or) (store ((as const (Array Context!11378 Bool)) false) setElem!43618 true) setRest!43618))))

(declare-fun b!6387814 () Bool)

(declare-fun tp!1776824 () Bool)

(declare-fun tp!1776822 () Bool)

(assert (=> b!6387814 (= e!3877268 (and tp!1776824 tp!1776822))))

(declare-fun b!6387815 () Bool)

(declare-fun e!3877276 () Bool)

(assert (=> b!6387815 (= e!3877275 e!3877276)))

(declare-fun res!2627574 () Bool)

(assert (=> b!6387815 (=> res!2627574 e!3877276)))

(declare-fun lt!2371965 () (InoxSet Context!11378))

(assert (=> b!6387815 (= res!2627574 (not (= lt!2371991 lt!2371965)))))

(declare-fun lt!2371996 () Context!11378)

(assert (=> b!6387815 (= lt!2371965 (derivationStepZipperDown!1553 (reg!16634 (regOne!33122 r!7292)) lt!2371996 (h!71539 s!2326)))))

(declare-fun lt!2371962 () List!65214)

(assert (=> b!6387815 (= lt!2371996 (Context!11379 lt!2371962))))

(assert (=> b!6387815 (= lt!2371962 (Cons!65090 lt!2371972 (t!378820 (exprs!6189 (h!71540 zl!343)))))))

(assert (=> b!6387815 (= lt!2371972 (Star!16305 (reg!16634 (regOne!33122 r!7292))))))

(declare-fun b!6387816 () Bool)

(declare-fun tp!1776819 () Bool)

(declare-fun tp!1776818 () Bool)

(assert (=> b!6387816 (= e!3877268 (and tp!1776819 tp!1776818))))

(declare-fun b!6387817 () Bool)

(declare-fun e!3877285 () Bool)

(assert (=> b!6387817 (= e!3877288 e!3877285)))

(declare-fun res!2627580 () Bool)

(assert (=> b!6387817 (=> res!2627580 e!3877285)))

(declare-fun lt!2371979 () Context!11378)

(assert (=> b!6387817 (= res!2627580 (not (= (unfocusZipper!2047 (Cons!65092 lt!2371979 Nil!65092)) (reg!16634 (regOne!33122 r!7292)))))))

(declare-fun lt!2371986 () (InoxSet Context!11378))

(assert (=> b!6387817 (= (flatMap!1810 lt!2371986 lambda!352583) (derivationStepZipperUp!1479 lt!2371996 (h!71539 s!2326)))))

(declare-fun lt!2371975 () Unit!158551)

(assert (=> b!6387817 (= lt!2371975 (lemmaFlatMapOnSingletonSet!1336 lt!2371986 lt!2371996 lambda!352583))))

(declare-fun lt!2371988 () (InoxSet Context!11378))

(assert (=> b!6387817 (= (flatMap!1810 lt!2371988 lambda!352583) (derivationStepZipperUp!1479 lt!2371979 (h!71539 s!2326)))))

(declare-fun lt!2371963 () Unit!158551)

(assert (=> b!6387817 (= lt!2371963 (lemmaFlatMapOnSingletonSet!1336 lt!2371988 lt!2371979 lambda!352583))))

(declare-fun lt!2371973 () (InoxSet Context!11378))

(assert (=> b!6387817 (= lt!2371973 (derivationStepZipperUp!1479 lt!2371996 (h!71539 s!2326)))))

(declare-fun lt!2371976 () (InoxSet Context!11378))

(assert (=> b!6387817 (= lt!2371976 (derivationStepZipperUp!1479 lt!2371979 (h!71539 s!2326)))))

(assert (=> b!6387817 (= lt!2371986 (store ((as const (Array Context!11378 Bool)) false) lt!2371996 true))))

(assert (=> b!6387817 (= lt!2371988 (store ((as const (Array Context!11378 Bool)) false) lt!2371979 true))))

(assert (=> b!6387817 (= lt!2371979 (Context!11379 (Cons!65090 (reg!16634 (regOne!33122 r!7292)) Nil!65090)))))

(declare-fun tp!1776817 () Bool)

(declare-fun b!6387818 () Bool)

(assert (=> b!6387818 (= e!3877278 (and (inv!84009 (h!71540 zl!343)) e!3877271 tp!1776817))))

(declare-fun b!6387819 () Bool)

(assert (=> b!6387819 (= e!3877287 (inv!84009 lt!2371961))))

(declare-fun b!6387820 () Bool)

(assert (=> b!6387820 (= e!3877276 e!3877283)))

(declare-fun res!2627588 () Bool)

(assert (=> b!6387820 (=> res!2627588 e!3877283)))

(assert (=> b!6387820 (= res!2627588 (not (= lt!2371981 lt!2371965)))))

(assert (=> b!6387820 (= (flatMap!1810 lt!2371994 lambda!352583) (derivationStepZipperUp!1479 lt!2371974 (h!71539 s!2326)))))

(declare-fun lt!2371970 () Unit!158551)

(assert (=> b!6387820 (= lt!2371970 (lemmaFlatMapOnSingletonSet!1336 lt!2371994 lt!2371974 lambda!352583))))

(declare-fun lt!2371958 () (InoxSet Context!11378))

(assert (=> b!6387820 (= lt!2371958 (derivationStepZipperUp!1479 lt!2371974 (h!71539 s!2326)))))

(assert (=> b!6387820 (= lt!2371981 (derivationStepZipper!2271 lt!2371994 (h!71539 s!2326)))))

(assert (=> b!6387820 (= lt!2371994 (store ((as const (Array Context!11378 Bool)) false) lt!2371974 true))))

(assert (=> b!6387820 (= lt!2371974 (Context!11379 (Cons!65090 (reg!16634 (regOne!33122 r!7292)) lt!2371962)))))

(declare-fun b!6387821 () Bool)

(assert (=> b!6387821 (= e!3877285 e!3877269)))

(declare-fun res!2627581 () Bool)

(assert (=> b!6387821 (=> res!2627581 e!3877269)))

(assert (=> b!6387821 (= res!2627581 (not lt!2371978))))

(assert (=> b!6387821 e!3877280))

(declare-fun res!2627572 () Bool)

(assert (=> b!6387821 (=> (not res!2627572) (not e!3877280))))

(declare-fun matchRSpec!3406 (Regex!16305 List!65215) Bool)

(assert (=> b!6387821 (= res!2627572 (= (matchR!8488 lt!2371967 s!2326) (matchRSpec!3406 lt!2371967 s!2326)))))

(declare-fun lt!2371995 () Unit!158551)

(declare-fun mainMatchTheorem!3406 (Regex!16305 List!65215) Unit!158551)

(assert (=> b!6387821 (= lt!2371995 (mainMatchTheorem!3406 lt!2371967 s!2326))))

(declare-fun b!6387822 () Bool)

(assert (=> b!6387822 (= e!3877268 tp_is_empty!41863)))

(declare-fun b!6387823 () Bool)

(declare-fun res!2627558 () Bool)

(assert (=> b!6387823 (=> (not res!2627558) (not e!3877282))))

(declare-fun toList!10089 ((InoxSet Context!11378)) List!65216)

(assert (=> b!6387823 (= res!2627558 (= (toList!10089 z!1189) zl!343))))

(declare-fun b!6387824 () Bool)

(declare-fun res!2627589 () Bool)

(assert (=> b!6387824 (=> res!2627589 e!3877270)))

(assert (=> b!6387824 (= res!2627589 (not (= r!7292 (generalisedConcat!1902 (exprs!6189 (h!71540 zl!343))))))))

(assert (=> b!6387825 (= e!3877270 e!3877286)))

(declare-fun res!2627571 () Bool)

(assert (=> b!6387825 (=> res!2627571 e!3877286)))

(declare-fun lt!2371968 () Bool)

(assert (=> b!6387825 (= res!2627571 (or (not (= lt!2371978 lt!2371968)) ((_ is Nil!65091) s!2326)))))

(assert (=> b!6387825 (= (Exists!3375 lambda!352581) (Exists!3375 lambda!352582))))

(declare-fun lt!2371959 () Unit!158551)

(assert (=> b!6387825 (= lt!2371959 (lemmaExistCutMatchRandMatchRSpecEquivalent!1912 (regOne!33122 r!7292) (regTwo!33122 r!7292) s!2326))))

(assert (=> b!6387825 (= lt!2371968 (Exists!3375 lambda!352581))))

(assert (=> b!6387825 (= lt!2371968 (isDefined!12899 (findConcatSeparation!2610 (regOne!33122 r!7292) (regTwo!33122 r!7292) Nil!65091 s!2326 s!2326)))))

(declare-fun lt!2371993 () Unit!158551)

(assert (=> b!6387825 (= lt!2371993 (lemmaFindConcatSeparationEquivalentToExists!2374 (regOne!33122 r!7292) (regTwo!33122 r!7292) s!2326))))

(declare-fun b!6387826 () Bool)

(assert (=> b!6387826 (= e!3877279 (matchZipper!2317 lt!2371960 (t!378821 s!2326)))))

(declare-fun b!6387827 () Bool)

(declare-fun res!2627565 () Bool)

(assert (=> b!6387827 (=> res!2627565 e!3877275)))

(assert (=> b!6387827 (= res!2627565 (or ((_ is Concat!25150) (regOne!33122 r!7292)) (not ((_ is Star!16305) (regOne!33122 r!7292)))))))

(declare-fun b!6387828 () Bool)

(assert (=> b!6387828 (= e!3877274 (not e!3877270))))

(declare-fun res!2627582 () Bool)

(assert (=> b!6387828 (=> res!2627582 e!3877270)))

(assert (=> b!6387828 (= res!2627582 (not ((_ is Cons!65092) zl!343)))))

(assert (=> b!6387828 (= lt!2371978 lt!2371985)))

(assert (=> b!6387828 (= lt!2371985 (matchRSpec!3406 r!7292 s!2326))))

(assert (=> b!6387828 (= lt!2371978 (matchR!8488 r!7292 s!2326))))

(declare-fun lt!2371992 () Unit!158551)

(assert (=> b!6387828 (= lt!2371992 (mainMatchTheorem!3406 r!7292 s!2326))))

(declare-fun b!6387829 () Bool)

(declare-fun res!2627564 () Bool)

(assert (=> b!6387829 (=> res!2627564 e!3877270)))

(declare-fun generalisedUnion!2149 (List!65214) Regex!16305)

(declare-fun unfocusZipperList!1726 (List!65216) List!65214)

(assert (=> b!6387829 (= res!2627564 (not (= r!7292 (generalisedUnion!2149 (unfocusZipperList!1726 zl!343)))))))

(declare-fun b!6387830 () Bool)

(declare-fun res!2627559 () Bool)

(assert (=> b!6387830 (=> res!2627559 e!3877285)))

(assert (=> b!6387830 (= res!2627559 (not (= (unfocusZipper!2047 (Cons!65092 lt!2371996 Nil!65092)) lt!2371989)))))

(declare-fun b!6387831 () Bool)

(declare-fun res!2627566 () Bool)

(assert (=> b!6387831 (=> res!2627566 e!3877273)))

(assert (=> b!6387831 (= res!2627566 (not (matchR!8488 lt!2371972 (_1!36587 lt!2371982))))))

(assert (= (and start!632746 res!2627584) b!6387823))

(assert (= (and b!6387823 res!2627558) b!6387806))

(assert (= (and b!6387806 res!2627578) b!6387828))

(assert (= (and b!6387828 (not res!2627582)) b!6387812))

(assert (= (and b!6387812 (not res!2627563)) b!6387824))

(assert (= (and b!6387824 (not res!2627589)) b!6387804))

(assert (= (and b!6387804 (not res!2627587)) b!6387829))

(assert (= (and b!6387829 (not res!2627564)) b!6387797))

(assert (= (and b!6387797 (not res!2627568)) b!6387825))

(assert (= (and b!6387825 (not res!2627571)) b!6387796))

(assert (= (and b!6387796 (not res!2627567)) b!6387795))

(assert (= (and b!6387795 c!1164241) b!6387805))

(assert (= (and b!6387795 (not c!1164241)) b!6387789))

(assert (= (and b!6387805 (not res!2627569)) b!6387826))

(assert (= (and b!6387795 (not res!2627576)) b!6387790))

(assert (= (and b!6387790 res!2627583) b!6387810))

(assert (= (and b!6387790 (not res!2627585)) b!6387827))

(assert (= (and b!6387827 (not res!2627565)) b!6387815))

(assert (= (and b!6387815 (not res!2627574)) b!6387820))

(assert (= (and b!6387820 (not res!2627588)) b!6387791))

(assert (= (and b!6387791 (not res!2627573)) b!6387792))

(assert (= (and b!6387792 (not res!2627586)) b!6387801))

(assert (= (and b!6387801 (not res!2627561)) b!6387802))

(assert (= (and b!6387802 (not res!2627577)) b!6387817))

(assert (= (and b!6387817 (not res!2627580)) b!6387830))

(assert (= (and b!6387830 (not res!2627559)) b!6387821))

(assert (= (and b!6387821 res!2627572) b!6387811))

(assert (= (and b!6387821 (not res!2627581)) b!6387793))

(assert (= (and b!6387793 (not res!2627570)) b!6387831))

(assert (= (and b!6387831 (not res!2627566)) b!6387808))

(assert (= (and b!6387808 (not res!2627590)) b!6387799))

(assert (= (and b!6387799 (not res!2627560)) b!6387794))

(assert (= (and b!6387794 (not res!2627575)) b!6387803))

(assert (= (and b!6387803 (not res!2627579)) b!6387809))

(assert (= (and b!6387809 (not res!2627562)) b!6387819))

(assert (= (and start!632746 ((_ is ElementMatch!16305) r!7292)) b!6387822))

(assert (= (and start!632746 ((_ is Concat!25150) r!7292)) b!6387816))

(assert (= (and start!632746 ((_ is Star!16305) r!7292)) b!6387800))

(assert (= (and start!632746 ((_ is Union!16305) r!7292)) b!6387814))

(assert (= (and start!632746 condSetEmpty!43618) setIsEmpty!43618))

(assert (= (and start!632746 (not condSetEmpty!43618)) setNonEmpty!43618))

(assert (= setNonEmpty!43618 b!6387807))

(assert (= b!6387818 b!6387813))

(assert (= (and start!632746 ((_ is Cons!65092) zl!343)) b!6387818))

(assert (= (and start!632746 ((_ is Cons!65091) s!2326)) b!6387798))

(declare-fun m!7187032 () Bool)

(assert (=> b!6387826 m!7187032))

(declare-fun m!7187034 () Bool)

(assert (=> b!6387828 m!7187034))

(declare-fun m!7187036 () Bool)

(assert (=> b!6387828 m!7187036))

(declare-fun m!7187038 () Bool)

(assert (=> b!6387828 m!7187038))

(declare-fun m!7187040 () Bool)

(assert (=> b!6387794 m!7187040))

(declare-fun m!7187042 () Bool)

(assert (=> b!6387794 m!7187042))

(declare-fun m!7187044 () Bool)

(assert (=> b!6387794 m!7187044))

(declare-fun m!7187046 () Bool)

(assert (=> b!6387794 m!7187046))

(declare-fun m!7187048 () Bool)

(assert (=> b!6387794 m!7187048))

(declare-fun m!7187050 () Bool)

(assert (=> b!6387823 m!7187050))

(declare-fun m!7187052 () Bool)

(assert (=> b!6387793 m!7187052))

(declare-fun m!7187054 () Bool)

(assert (=> b!6387793 m!7187054))

(declare-fun m!7187056 () Bool)

(assert (=> b!6387793 m!7187056))

(declare-fun m!7187058 () Bool)

(assert (=> b!6387793 m!7187058))

(declare-fun m!7187060 () Bool)

(assert (=> b!6387793 m!7187060))

(declare-fun m!7187062 () Bool)

(assert (=> b!6387793 m!7187062))

(assert (=> b!6387793 m!7187054))

(declare-fun m!7187064 () Bool)

(assert (=> b!6387793 m!7187064))

(declare-fun m!7187066 () Bool)

(assert (=> b!6387793 m!7187066))

(declare-fun m!7187068 () Bool)

(assert (=> b!6387821 m!7187068))

(declare-fun m!7187070 () Bool)

(assert (=> b!6387821 m!7187070))

(declare-fun m!7187072 () Bool)

(assert (=> b!6387821 m!7187072))

(declare-fun m!7187074 () Bool)

(assert (=> start!632746 m!7187074))

(declare-fun m!7187076 () Bool)

(assert (=> b!6387824 m!7187076))

(declare-fun m!7187078 () Bool)

(assert (=> b!6387791 m!7187078))

(declare-fun m!7187080 () Bool)

(assert (=> b!6387791 m!7187080))

(declare-fun m!7187082 () Bool)

(assert (=> b!6387812 m!7187082))

(declare-fun m!7187084 () Bool)

(assert (=> b!6387815 m!7187084))

(declare-fun m!7187086 () Bool)

(assert (=> b!6387818 m!7187086))

(declare-fun m!7187088 () Bool)

(assert (=> b!6387796 m!7187088))

(declare-fun m!7187090 () Bool)

(assert (=> b!6387829 m!7187090))

(assert (=> b!6387829 m!7187090))

(declare-fun m!7187092 () Bool)

(assert (=> b!6387829 m!7187092))

(declare-fun m!7187094 () Bool)

(assert (=> b!6387831 m!7187094))

(declare-fun m!7187096 () Bool)

(assert (=> b!6387820 m!7187096))

(declare-fun m!7187098 () Bool)

(assert (=> b!6387820 m!7187098))

(declare-fun m!7187100 () Bool)

(assert (=> b!6387820 m!7187100))

(declare-fun m!7187102 () Bool)

(assert (=> b!6387820 m!7187102))

(declare-fun m!7187104 () Bool)

(assert (=> b!6387820 m!7187104))

(declare-fun m!7187106 () Bool)

(assert (=> b!6387805 m!7187106))

(declare-fun m!7187108 () Bool)

(assert (=> b!6387805 m!7187108))

(declare-fun m!7187110 () Bool)

(assert (=> b!6387805 m!7187110))

(declare-fun m!7187112 () Bool)

(assert (=> b!6387806 m!7187112))

(declare-fun m!7187114 () Bool)

(assert (=> b!6387830 m!7187114))

(declare-fun m!7187116 () Bool)

(assert (=> b!6387819 m!7187116))

(declare-fun m!7187118 () Bool)

(assert (=> b!6387810 m!7187118))

(declare-fun m!7187120 () Bool)

(assert (=> b!6387795 m!7187120))

(declare-fun m!7187122 () Bool)

(assert (=> b!6387795 m!7187122))

(declare-fun m!7187124 () Bool)

(assert (=> b!6387795 m!7187124))

(assert (=> b!6387795 m!7187044))

(declare-fun m!7187126 () Bool)

(assert (=> b!6387795 m!7187126))

(declare-fun m!7187128 () Bool)

(assert (=> b!6387795 m!7187128))

(declare-fun m!7187130 () Bool)

(assert (=> b!6387795 m!7187130))

(declare-fun m!7187132 () Bool)

(assert (=> b!6387803 m!7187132))

(declare-fun m!7187134 () Bool)

(assert (=> b!6387803 m!7187134))

(assert (=> b!6387803 m!7187134))

(declare-fun m!7187136 () Bool)

(assert (=> b!6387803 m!7187136))

(declare-fun m!7187138 () Bool)

(assert (=> b!6387809 m!7187138))

(declare-fun m!7187140 () Bool)

(assert (=> b!6387809 m!7187140))

(declare-fun m!7187142 () Bool)

(assert (=> b!6387817 m!7187142))

(declare-fun m!7187144 () Bool)

(assert (=> b!6387817 m!7187144))

(declare-fun m!7187146 () Bool)

(assert (=> b!6387817 m!7187146))

(declare-fun m!7187148 () Bool)

(assert (=> b!6387817 m!7187148))

(declare-fun m!7187150 () Bool)

(assert (=> b!6387817 m!7187150))

(declare-fun m!7187152 () Bool)

(assert (=> b!6387817 m!7187152))

(declare-fun m!7187154 () Bool)

(assert (=> b!6387817 m!7187154))

(declare-fun m!7187156 () Bool)

(assert (=> b!6387817 m!7187156))

(declare-fun m!7187158 () Bool)

(assert (=> b!6387817 m!7187158))

(declare-fun m!7187160 () Bool)

(assert (=> setNonEmpty!43618 m!7187160))

(declare-fun m!7187162 () Bool)

(assert (=> b!6387808 m!7187162))

(declare-fun m!7187164 () Bool)

(assert (=> b!6387799 m!7187164))

(declare-fun m!7187166 () Bool)

(assert (=> b!6387802 m!7187166))

(declare-fun m!7187168 () Bool)

(assert (=> b!6387825 m!7187168))

(declare-fun m!7187170 () Bool)

(assert (=> b!6387825 m!7187170))

(declare-fun m!7187172 () Bool)

(assert (=> b!6387825 m!7187172))

(assert (=> b!6387825 m!7187168))

(declare-fun m!7187174 () Bool)

(assert (=> b!6387825 m!7187174))

(declare-fun m!7187176 () Bool)

(assert (=> b!6387825 m!7187176))

(assert (=> b!6387825 m!7187170))

(declare-fun m!7187178 () Bool)

(assert (=> b!6387825 m!7187178))

(check-sat (not b!6387815) (not b!6387812) (not b!6387794) (not b!6387820) (not b!6387795) (not b!6387807) (not b!6387791) (not b!6387810) (not b!6387817) (not b!6387800) (not b!6387803) (not b!6387821) (not b!6387793) (not b!6387796) (not b!6387824) (not b!6387798) (not b!6387829) (not start!632746) (not b!6387813) tp_is_empty!41863 (not b!6387823) (not b!6387819) (not b!6387828) (not b!6387814) (not b!6387816) (not setNonEmpty!43618) (not b!6387818) (not b!6387806) (not b!6387808) (not b!6387830) (not b!6387805) (not b!6387831) (not b!6387809) (not b!6387799) (not b!6387825) (not b!6387802) (not b!6387826))
(check-sat)
(get-model)

(declare-fun d!2002544 () Bool)

(declare-fun nullableFct!2243 (Regex!16305) Bool)

(assert (=> d!2002544 (= (nullable!6298 (regOne!33122 (regOne!33122 r!7292))) (nullableFct!2243 (regOne!33122 (regOne!33122 r!7292))))))

(declare-fun bs!1598701 () Bool)

(assert (= bs!1598701 d!2002544))

(declare-fun m!7187356 () Bool)

(assert (=> bs!1598701 m!7187356))

(assert (=> b!6387810 d!2002544))

(declare-fun b!6388161 () Bool)

(declare-fun e!3877479 () Bool)

(declare-fun lt!2372046 () Regex!16305)

(declare-fun isEmptyLang!1713 (Regex!16305) Bool)

(assert (=> b!6388161 (= e!3877479 (isEmptyLang!1713 lt!2372046))))

(declare-fun b!6388162 () Bool)

(declare-fun e!3877478 () Bool)

(assert (=> b!6388162 (= e!3877479 e!3877478)))

(declare-fun c!1164350 () Bool)

(declare-fun tail!12186 (List!65214) List!65214)

(assert (=> b!6388162 (= c!1164350 (isEmpty!37228 (tail!12186 (unfocusZipperList!1726 zl!343))))))

(declare-fun b!6388163 () Bool)

(declare-fun e!3877482 () Bool)

(assert (=> b!6388163 (= e!3877482 e!3877479)))

(declare-fun c!1164347 () Bool)

(assert (=> b!6388163 (= c!1164347 (isEmpty!37228 (unfocusZipperList!1726 zl!343)))))

(declare-fun b!6388164 () Bool)

(declare-fun e!3877480 () Regex!16305)

(declare-fun e!3877477 () Regex!16305)

(assert (=> b!6388164 (= e!3877480 e!3877477)))

(declare-fun c!1164348 () Bool)

(assert (=> b!6388164 (= c!1164348 ((_ is Cons!65090) (unfocusZipperList!1726 zl!343)))))

(declare-fun b!6388165 () Bool)

(declare-fun isUnion!1143 (Regex!16305) Bool)

(assert (=> b!6388165 (= e!3877478 (isUnion!1143 lt!2372046))))

(declare-fun b!6388166 () Bool)

(declare-fun e!3877481 () Bool)

(assert (=> b!6388166 (= e!3877481 (isEmpty!37228 (t!378820 (unfocusZipperList!1726 zl!343))))))

(declare-fun b!6388167 () Bool)

(declare-fun head!13101 (List!65214) Regex!16305)

(assert (=> b!6388167 (= e!3877478 (= lt!2372046 (head!13101 (unfocusZipperList!1726 zl!343))))))

(declare-fun d!2002546 () Bool)

(assert (=> d!2002546 e!3877482))

(declare-fun res!2627708 () Bool)

(assert (=> d!2002546 (=> (not res!2627708) (not e!3877482))))

(assert (=> d!2002546 (= res!2627708 (validRegex!8041 lt!2372046))))

(assert (=> d!2002546 (= lt!2372046 e!3877480)))

(declare-fun c!1164349 () Bool)

(assert (=> d!2002546 (= c!1164349 e!3877481)))

(declare-fun res!2627709 () Bool)

(assert (=> d!2002546 (=> (not res!2627709) (not e!3877481))))

(assert (=> d!2002546 (= res!2627709 ((_ is Cons!65090) (unfocusZipperList!1726 zl!343)))))

(declare-fun lambda!352612 () Int)

(declare-fun forall!15483 (List!65214 Int) Bool)

(assert (=> d!2002546 (forall!15483 (unfocusZipperList!1726 zl!343) lambda!352612)))

(assert (=> d!2002546 (= (generalisedUnion!2149 (unfocusZipperList!1726 zl!343)) lt!2372046)))

(declare-fun b!6388168 () Bool)

(assert (=> b!6388168 (= e!3877477 (Union!16305 (h!71538 (unfocusZipperList!1726 zl!343)) (generalisedUnion!2149 (t!378820 (unfocusZipperList!1726 zl!343)))))))

(declare-fun b!6388169 () Bool)

(assert (=> b!6388169 (= e!3877477 EmptyLang!16305)))

(declare-fun b!6388170 () Bool)

(assert (=> b!6388170 (= e!3877480 (h!71538 (unfocusZipperList!1726 zl!343)))))

(assert (= (and d!2002546 res!2627709) b!6388166))

(assert (= (and d!2002546 c!1164349) b!6388170))

(assert (= (and d!2002546 (not c!1164349)) b!6388164))

(assert (= (and b!6388164 c!1164348) b!6388168))

(assert (= (and b!6388164 (not c!1164348)) b!6388169))

(assert (= (and d!2002546 res!2627708) b!6388163))

(assert (= (and b!6388163 c!1164347) b!6388161))

(assert (= (and b!6388163 (not c!1164347)) b!6388162))

(assert (= (and b!6388162 c!1164350) b!6388167))

(assert (= (and b!6388162 (not c!1164350)) b!6388165))

(declare-fun m!7187402 () Bool)

(assert (=> d!2002546 m!7187402))

(assert (=> d!2002546 m!7187090))

(declare-fun m!7187404 () Bool)

(assert (=> d!2002546 m!7187404))

(declare-fun m!7187406 () Bool)

(assert (=> b!6388168 m!7187406))

(declare-fun m!7187408 () Bool)

(assert (=> b!6388165 m!7187408))

(declare-fun m!7187410 () Bool)

(assert (=> b!6388161 m!7187410))

(assert (=> b!6388162 m!7187090))

(declare-fun m!7187412 () Bool)

(assert (=> b!6388162 m!7187412))

(assert (=> b!6388162 m!7187412))

(declare-fun m!7187414 () Bool)

(assert (=> b!6388162 m!7187414))

(assert (=> b!6388163 m!7187090))

(declare-fun m!7187416 () Bool)

(assert (=> b!6388163 m!7187416))

(declare-fun m!7187418 () Bool)

(assert (=> b!6388166 m!7187418))

(assert (=> b!6388167 m!7187090))

(declare-fun m!7187420 () Bool)

(assert (=> b!6388167 m!7187420))

(assert (=> b!6387829 d!2002546))

(declare-fun bs!1598706 () Bool)

(declare-fun d!2002556 () Bool)

(assert (= bs!1598706 (and d!2002556 d!2002546)))

(declare-fun lambda!352615 () Int)

(assert (=> bs!1598706 (= lambda!352615 lambda!352612)))

(declare-fun lt!2372050 () List!65214)

(assert (=> d!2002556 (forall!15483 lt!2372050 lambda!352615)))

(declare-fun e!3877497 () List!65214)

(assert (=> d!2002556 (= lt!2372050 e!3877497)))

(declare-fun c!1164363 () Bool)

(assert (=> d!2002556 (= c!1164363 ((_ is Cons!65092) zl!343))))

(assert (=> d!2002556 (= (unfocusZipperList!1726 zl!343) lt!2372050)))

(declare-fun b!6388197 () Bool)

(assert (=> b!6388197 (= e!3877497 (Cons!65090 (generalisedConcat!1902 (exprs!6189 (h!71540 zl!343))) (unfocusZipperList!1726 (t!378822 zl!343))))))

(declare-fun b!6388198 () Bool)

(assert (=> b!6388198 (= e!3877497 Nil!65090)))

(assert (= (and d!2002556 c!1164363) b!6388197))

(assert (= (and d!2002556 (not c!1164363)) b!6388198))

(declare-fun m!7187422 () Bool)

(assert (=> d!2002556 m!7187422))

(assert (=> b!6388197 m!7187076))

(declare-fun m!7187424 () Bool)

(assert (=> b!6388197 m!7187424))

(assert (=> b!6387829 d!2002556))

(declare-fun b!6388299 () Bool)

(declare-fun e!3877553 () Bool)

(declare-fun lt!2372071 () Bool)

(assert (=> b!6388299 (= e!3877553 (not lt!2372071))))

(declare-fun b!6388300 () Bool)

(declare-fun e!3877552 () Bool)

(declare-fun head!13102 (List!65215) C!32880)

(assert (=> b!6388300 (= e!3877552 (= (head!13102 (_1!36587 lt!2371982)) (c!1164242 lt!2371972)))))

(declare-fun b!6388302 () Bool)

(declare-fun res!2627760 () Bool)

(assert (=> b!6388302 (=> (not res!2627760) (not e!3877552))))

(declare-fun tail!12187 (List!65215) List!65215)

(assert (=> b!6388302 (= res!2627760 (isEmpty!37229 (tail!12187 (_1!36587 lt!2371982))))))

(declare-fun b!6388303 () Bool)

(declare-fun e!3877558 () Bool)

(assert (=> b!6388303 (= e!3877558 e!3877553)))

(declare-fun c!1164399 () Bool)

(assert (=> b!6388303 (= c!1164399 ((_ is EmptyLang!16305) lt!2371972))))

(declare-fun b!6388304 () Bool)

(declare-fun e!3877556 () Bool)

(declare-fun e!3877554 () Bool)

(assert (=> b!6388304 (= e!3877556 e!3877554)))

(declare-fun res!2627761 () Bool)

(assert (=> b!6388304 (=> (not res!2627761) (not e!3877554))))

(assert (=> b!6388304 (= res!2627761 (not lt!2372071))))

(declare-fun b!6388305 () Bool)

(declare-fun e!3877557 () Bool)

(assert (=> b!6388305 (= e!3877557 (not (= (head!13102 (_1!36587 lt!2371982)) (c!1164242 lt!2371972))))))

(declare-fun b!6388306 () Bool)

(declare-fun call!546167 () Bool)

(assert (=> b!6388306 (= e!3877558 (= lt!2372071 call!546167))))

(declare-fun b!6388307 () Bool)

(declare-fun res!2627758 () Bool)

(assert (=> b!6388307 (=> res!2627758 e!3877557)))

(assert (=> b!6388307 (= res!2627758 (not (isEmpty!37229 (tail!12187 (_1!36587 lt!2371982)))))))

(declare-fun b!6388308 () Bool)

(declare-fun e!3877555 () Bool)

(declare-fun derivativeStep!5009 (Regex!16305 C!32880) Regex!16305)

(assert (=> b!6388308 (= e!3877555 (matchR!8488 (derivativeStep!5009 lt!2371972 (head!13102 (_1!36587 lt!2371982))) (tail!12187 (_1!36587 lt!2371982))))))

(declare-fun b!6388309 () Bool)

(assert (=> b!6388309 (= e!3877554 e!3877557)))

(declare-fun res!2627759 () Bool)

(assert (=> b!6388309 (=> res!2627759 e!3877557)))

(assert (=> b!6388309 (= res!2627759 call!546167)))

(declare-fun b!6388301 () Bool)

(declare-fun res!2627754 () Bool)

(assert (=> b!6388301 (=> (not res!2627754) (not e!3877552))))

(assert (=> b!6388301 (= res!2627754 (not call!546167))))

(declare-fun d!2002558 () Bool)

(assert (=> d!2002558 e!3877558))

(declare-fun c!1164400 () Bool)

(assert (=> d!2002558 (= c!1164400 ((_ is EmptyExpr!16305) lt!2371972))))

(assert (=> d!2002558 (= lt!2372071 e!3877555)))

(declare-fun c!1164398 () Bool)

(assert (=> d!2002558 (= c!1164398 (isEmpty!37229 (_1!36587 lt!2371982)))))

(assert (=> d!2002558 (validRegex!8041 lt!2371972)))

(assert (=> d!2002558 (= (matchR!8488 lt!2371972 (_1!36587 lt!2371982)) lt!2372071)))

(declare-fun b!6388310 () Bool)

(assert (=> b!6388310 (= e!3877555 (nullable!6298 lt!2371972))))

(declare-fun b!6388311 () Bool)

(declare-fun res!2627756 () Bool)

(assert (=> b!6388311 (=> res!2627756 e!3877556)))

(assert (=> b!6388311 (= res!2627756 (not ((_ is ElementMatch!16305) lt!2371972)))))

(assert (=> b!6388311 (= e!3877553 e!3877556)))

(declare-fun bm!546162 () Bool)

(assert (=> bm!546162 (= call!546167 (isEmpty!37229 (_1!36587 lt!2371982)))))

(declare-fun b!6388312 () Bool)

(declare-fun res!2627755 () Bool)

(assert (=> b!6388312 (=> res!2627755 e!3877556)))

(assert (=> b!6388312 (= res!2627755 e!3877552)))

(declare-fun res!2627757 () Bool)

(assert (=> b!6388312 (=> (not res!2627757) (not e!3877552))))

(assert (=> b!6388312 (= res!2627757 lt!2372071)))

(assert (= (and d!2002558 c!1164398) b!6388310))

(assert (= (and d!2002558 (not c!1164398)) b!6388308))

(assert (= (and d!2002558 c!1164400) b!6388306))

(assert (= (and d!2002558 (not c!1164400)) b!6388303))

(assert (= (and b!6388303 c!1164399) b!6388299))

(assert (= (and b!6388303 (not c!1164399)) b!6388311))

(assert (= (and b!6388311 (not res!2627756)) b!6388312))

(assert (= (and b!6388312 res!2627757) b!6388301))

(assert (= (and b!6388301 res!2627754) b!6388302))

(assert (= (and b!6388302 res!2627760) b!6388300))

(assert (= (and b!6388312 (not res!2627755)) b!6388304))

(assert (= (and b!6388304 res!2627761) b!6388309))

(assert (= (and b!6388309 (not res!2627759)) b!6388307))

(assert (= (and b!6388307 (not res!2627758)) b!6388305))

(assert (= (or b!6388306 b!6388301 b!6388309) bm!546162))

(declare-fun m!7187482 () Bool)

(assert (=> b!6388305 m!7187482))

(assert (=> d!2002558 m!7187164))

(declare-fun m!7187484 () Bool)

(assert (=> d!2002558 m!7187484))

(assert (=> b!6388308 m!7187482))

(assert (=> b!6388308 m!7187482))

(declare-fun m!7187486 () Bool)

(assert (=> b!6388308 m!7187486))

(declare-fun m!7187488 () Bool)

(assert (=> b!6388308 m!7187488))

(assert (=> b!6388308 m!7187486))

(assert (=> b!6388308 m!7187488))

(declare-fun m!7187490 () Bool)

(assert (=> b!6388308 m!7187490))

(assert (=> bm!546162 m!7187164))

(declare-fun m!7187492 () Bool)

(assert (=> b!6388310 m!7187492))

(assert (=> b!6388302 m!7187488))

(assert (=> b!6388302 m!7187488))

(declare-fun m!7187494 () Bool)

(assert (=> b!6388302 m!7187494))

(assert (=> b!6388300 m!7187482))

(assert (=> b!6388307 m!7187488))

(assert (=> b!6388307 m!7187488))

(assert (=> b!6388307 m!7187494))

(assert (=> b!6387831 d!2002558))

(declare-fun d!2002576 () Bool)

(declare-fun lt!2372074 () Regex!16305)

(assert (=> d!2002576 (validRegex!8041 lt!2372074)))

(assert (=> d!2002576 (= lt!2372074 (generalisedUnion!2149 (unfocusZipperList!1726 (Cons!65092 lt!2371996 Nil!65092))))))

(assert (=> d!2002576 (= (unfocusZipper!2047 (Cons!65092 lt!2371996 Nil!65092)) lt!2372074)))

(declare-fun bs!1598718 () Bool)

(assert (= bs!1598718 d!2002576))

(declare-fun m!7187496 () Bool)

(assert (=> bs!1598718 m!7187496))

(declare-fun m!7187498 () Bool)

(assert (=> bs!1598718 m!7187498))

(assert (=> bs!1598718 m!7187498))

(declare-fun m!7187500 () Bool)

(assert (=> bs!1598718 m!7187500))

(assert (=> b!6387830 d!2002576))

(declare-fun d!2002578 () Bool)

(declare-fun c!1164407 () Bool)

(assert (=> d!2002578 (= c!1164407 (isEmpty!37229 (t!378821 s!2326)))))

(declare-fun e!3877570 () Bool)

(assert (=> d!2002578 (= (matchZipper!2317 lt!2371960 (t!378821 s!2326)) e!3877570)))

(declare-fun b!6388332 () Bool)

(declare-fun nullableZipper!2070 ((InoxSet Context!11378)) Bool)

(assert (=> b!6388332 (= e!3877570 (nullableZipper!2070 lt!2371960))))

(declare-fun b!6388333 () Bool)

(assert (=> b!6388333 (= e!3877570 (matchZipper!2317 (derivationStepZipper!2271 lt!2371960 (head!13102 (t!378821 s!2326))) (tail!12187 (t!378821 s!2326))))))

(assert (= (and d!2002578 c!1164407) b!6388332))

(assert (= (and d!2002578 (not c!1164407)) b!6388333))

(declare-fun m!7187508 () Bool)

(assert (=> d!2002578 m!7187508))

(declare-fun m!7187510 () Bool)

(assert (=> b!6388332 m!7187510))

(declare-fun m!7187512 () Bool)

(assert (=> b!6388333 m!7187512))

(assert (=> b!6388333 m!7187512))

(declare-fun m!7187514 () Bool)

(assert (=> b!6388333 m!7187514))

(declare-fun m!7187516 () Bool)

(assert (=> b!6388333 m!7187516))

(assert (=> b!6388333 m!7187514))

(assert (=> b!6388333 m!7187516))

(declare-fun m!7187518 () Bool)

(assert (=> b!6388333 m!7187518))

(assert (=> b!6387826 d!2002578))

(declare-fun b!6388396 () Bool)

(declare-fun e!3877612 () Bool)

(declare-fun e!3877611 () Bool)

(assert (=> b!6388396 (= e!3877612 e!3877611)))

(declare-fun res!2627788 () Bool)

(assert (=> b!6388396 (= res!2627788 (not (nullable!6298 (reg!16634 r!7292))))))

(assert (=> b!6388396 (=> (not res!2627788) (not e!3877611))))

(declare-fun b!6388397 () Bool)

(declare-fun e!3877617 () Bool)

(assert (=> b!6388397 (= e!3877612 e!3877617)))

(declare-fun c!1164431 () Bool)

(assert (=> b!6388397 (= c!1164431 ((_ is Union!16305) r!7292))))

(declare-fun b!6388398 () Bool)

(declare-fun e!3877615 () Bool)

(declare-fun call!546194 () Bool)

(assert (=> b!6388398 (= e!3877615 call!546194)))

(declare-fun b!6388399 () Bool)

(declare-fun call!546193 () Bool)

(assert (=> b!6388399 (= e!3877611 call!546193)))

(declare-fun bm!546187 () Bool)

(assert (=> bm!546187 (= call!546194 call!546193)))

(declare-fun b!6388400 () Bool)

(declare-fun res!2627789 () Bool)

(declare-fun e!3877614 () Bool)

(assert (=> b!6388400 (=> (not res!2627789) (not e!3877614))))

(declare-fun call!546192 () Bool)

(assert (=> b!6388400 (= res!2627789 call!546192)))

(assert (=> b!6388400 (= e!3877617 e!3877614)))

(declare-fun b!6388401 () Bool)

(assert (=> b!6388401 (= e!3877614 call!546194)))

(declare-fun b!6388402 () Bool)

(declare-fun e!3877613 () Bool)

(assert (=> b!6388402 (= e!3877613 e!3877612)))

(declare-fun c!1164430 () Bool)

(assert (=> b!6388402 (= c!1164430 ((_ is Star!16305) r!7292))))

(declare-fun bm!546189 () Bool)

(assert (=> bm!546189 (= call!546192 (validRegex!8041 (ite c!1164431 (regOne!33123 r!7292) (regOne!33122 r!7292))))))

(declare-fun d!2002582 () Bool)

(declare-fun res!2627790 () Bool)

(assert (=> d!2002582 (=> res!2627790 e!3877613)))

(assert (=> d!2002582 (= res!2627790 ((_ is ElementMatch!16305) r!7292))))

(assert (=> d!2002582 (= (validRegex!8041 r!7292) e!3877613)))

(declare-fun bm!546188 () Bool)

(assert (=> bm!546188 (= call!546193 (validRegex!8041 (ite c!1164430 (reg!16634 r!7292) (ite c!1164431 (regTwo!33123 r!7292) (regTwo!33122 r!7292)))))))

(declare-fun b!6388403 () Bool)

(declare-fun e!3877616 () Bool)

(assert (=> b!6388403 (= e!3877616 e!3877615)))

(declare-fun res!2627787 () Bool)

(assert (=> b!6388403 (=> (not res!2627787) (not e!3877615))))

(assert (=> b!6388403 (= res!2627787 call!546192)))

(declare-fun b!6388404 () Bool)

(declare-fun res!2627791 () Bool)

(assert (=> b!6388404 (=> res!2627791 e!3877616)))

(assert (=> b!6388404 (= res!2627791 (not ((_ is Concat!25150) r!7292)))))

(assert (=> b!6388404 (= e!3877617 e!3877616)))

(assert (= (and d!2002582 (not res!2627790)) b!6388402))

(assert (= (and b!6388402 c!1164430) b!6388396))

(assert (= (and b!6388402 (not c!1164430)) b!6388397))

(assert (= (and b!6388396 res!2627788) b!6388399))

(assert (= (and b!6388397 c!1164431) b!6388400))

(assert (= (and b!6388397 (not c!1164431)) b!6388404))

(assert (= (and b!6388400 res!2627789) b!6388401))

(assert (= (and b!6388404 (not res!2627791)) b!6388403))

(assert (= (and b!6388403 res!2627787) b!6388398))

(assert (= (or b!6388401 b!6388398) bm!546187))

(assert (= (or b!6388400 b!6388403) bm!546189))

(assert (= (or b!6388399 bm!546187) bm!546188))

(declare-fun m!7187596 () Bool)

(assert (=> b!6388396 m!7187596))

(declare-fun m!7187598 () Bool)

(assert (=> bm!546189 m!7187598))

(declare-fun m!7187600 () Bool)

(assert (=> bm!546188 m!7187600))

(assert (=> start!632746 d!2002582))

(declare-fun bs!1598797 () Bool)

(declare-fun b!6388525 () Bool)

(assert (= bs!1598797 (and b!6388525 b!6387825)))

(declare-fun lambda!352647 () Int)

(assert (=> bs!1598797 (not (= lambda!352647 lambda!352581))))

(assert (=> bs!1598797 (not (= lambda!352647 lambda!352582))))

(declare-fun bs!1598798 () Bool)

(assert (= bs!1598798 (and b!6388525 b!6387793)))

(assert (=> bs!1598798 (not (= lambda!352647 lambda!352584))))

(assert (=> bs!1598798 (not (= lambda!352647 lambda!352585))))

(assert (=> b!6388525 true))

(assert (=> b!6388525 true))

(declare-fun bs!1598799 () Bool)

(declare-fun b!6388533 () Bool)

(assert (= bs!1598799 (and b!6388533 b!6387825)))

(declare-fun lambda!352648 () Int)

(assert (=> bs!1598799 (= lambda!352648 lambda!352582)))

(declare-fun bs!1598800 () Bool)

(assert (= bs!1598800 (and b!6388533 b!6387793)))

(assert (=> bs!1598800 (= (= (regOne!33122 r!7292) lt!2371972) (= lambda!352648 lambda!352585))))

(assert (=> bs!1598800 (not (= lambda!352648 lambda!352584))))

(assert (=> bs!1598799 (not (= lambda!352648 lambda!352581))))

(declare-fun bs!1598801 () Bool)

(assert (= bs!1598801 (and b!6388533 b!6388525)))

(assert (=> bs!1598801 (not (= lambda!352648 lambda!352647))))

(assert (=> b!6388533 true))

(assert (=> b!6388533 true))

(declare-fun b!6388524 () Bool)

(declare-fun e!3877680 () Bool)

(declare-fun e!3877677 () Bool)

(assert (=> b!6388524 (= e!3877680 e!3877677)))

(declare-fun res!2627824 () Bool)

(assert (=> b!6388524 (= res!2627824 (matchRSpec!3406 (regOne!33123 r!7292) s!2326))))

(assert (=> b!6388524 (=> res!2627824 e!3877677)))

(declare-fun e!3877679 () Bool)

(declare-fun call!546200 () Bool)

(assert (=> b!6388525 (= e!3877679 call!546200)))

(declare-fun b!6388526 () Bool)

(declare-fun res!2627825 () Bool)

(assert (=> b!6388526 (=> res!2627825 e!3877679)))

(declare-fun call!546201 () Bool)

(assert (=> b!6388526 (= res!2627825 call!546201)))

(declare-fun e!3877682 () Bool)

(assert (=> b!6388526 (= e!3877682 e!3877679)))

(declare-fun c!1164451 () Bool)

(declare-fun bm!546195 () Bool)

(assert (=> bm!546195 (= call!546200 (Exists!3375 (ite c!1164451 lambda!352647 lambda!352648)))))

(declare-fun b!6388527 () Bool)

(declare-fun c!1164450 () Bool)

(assert (=> b!6388527 (= c!1164450 ((_ is ElementMatch!16305) r!7292))))

(declare-fun e!3877678 () Bool)

(declare-fun e!3877681 () Bool)

(assert (=> b!6388527 (= e!3877678 e!3877681)))

(declare-fun b!6388528 () Bool)

(declare-fun e!3877683 () Bool)

(assert (=> b!6388528 (= e!3877683 e!3877678)))

(declare-fun res!2627823 () Bool)

(assert (=> b!6388528 (= res!2627823 (not ((_ is EmptyLang!16305) r!7292)))))

(assert (=> b!6388528 (=> (not res!2627823) (not e!3877678))))

(declare-fun b!6388529 () Bool)

(assert (=> b!6388529 (= e!3877677 (matchRSpec!3406 (regTwo!33123 r!7292) s!2326))))

(declare-fun bm!546196 () Bool)

(assert (=> bm!546196 (= call!546201 (isEmpty!37229 s!2326))))

(declare-fun b!6388530 () Bool)

(assert (=> b!6388530 (= e!3877680 e!3877682)))

(assert (=> b!6388530 (= c!1164451 ((_ is Star!16305) r!7292))))

(declare-fun b!6388531 () Bool)

(declare-fun c!1164449 () Bool)

(assert (=> b!6388531 (= c!1164449 ((_ is Union!16305) r!7292))))

(assert (=> b!6388531 (= e!3877681 e!3877680)))

(declare-fun d!2002620 () Bool)

(declare-fun c!1164452 () Bool)

(assert (=> d!2002620 (= c!1164452 ((_ is EmptyExpr!16305) r!7292))))

(assert (=> d!2002620 (= (matchRSpec!3406 r!7292 s!2326) e!3877683)))

(declare-fun b!6388532 () Bool)

(assert (=> b!6388532 (= e!3877683 call!546201)))

(assert (=> b!6388533 (= e!3877682 call!546200)))

(declare-fun b!6388534 () Bool)

(assert (=> b!6388534 (= e!3877681 (= s!2326 (Cons!65091 (c!1164242 r!7292) Nil!65091)))))

(assert (= (and d!2002620 c!1164452) b!6388532))

(assert (= (and d!2002620 (not c!1164452)) b!6388528))

(assert (= (and b!6388528 res!2627823) b!6388527))

(assert (= (and b!6388527 c!1164450) b!6388534))

(assert (= (and b!6388527 (not c!1164450)) b!6388531))

(assert (= (and b!6388531 c!1164449) b!6388524))

(assert (= (and b!6388531 (not c!1164449)) b!6388530))

(assert (= (and b!6388524 (not res!2627824)) b!6388529))

(assert (= (and b!6388530 c!1164451) b!6388526))

(assert (= (and b!6388530 (not c!1164451)) b!6388533))

(assert (= (and b!6388526 (not res!2627825)) b!6388525))

(assert (= (or b!6388525 b!6388533) bm!546195))

(assert (= (or b!6388532 b!6388526) bm!546196))

(declare-fun m!7187670 () Bool)

(assert (=> b!6388524 m!7187670))

(declare-fun m!7187672 () Bool)

(assert (=> bm!546195 m!7187672))

(declare-fun m!7187674 () Bool)

(assert (=> b!6388529 m!7187674))

(declare-fun m!7187676 () Bool)

(assert (=> bm!546196 m!7187676))

(assert (=> b!6387828 d!2002620))

(declare-fun b!6388535 () Bool)

(declare-fun e!3877685 () Bool)

(declare-fun lt!2372091 () Bool)

(assert (=> b!6388535 (= e!3877685 (not lt!2372091))))

(declare-fun b!6388536 () Bool)

(declare-fun e!3877684 () Bool)

(assert (=> b!6388536 (= e!3877684 (= (head!13102 s!2326) (c!1164242 r!7292)))))

(declare-fun b!6388538 () Bool)

(declare-fun res!2627832 () Bool)

(assert (=> b!6388538 (=> (not res!2627832) (not e!3877684))))

(assert (=> b!6388538 (= res!2627832 (isEmpty!37229 (tail!12187 s!2326)))))

(declare-fun b!6388539 () Bool)

(declare-fun e!3877690 () Bool)

(assert (=> b!6388539 (= e!3877690 e!3877685)))

(declare-fun c!1164454 () Bool)

(assert (=> b!6388539 (= c!1164454 ((_ is EmptyLang!16305) r!7292))))

(declare-fun b!6388540 () Bool)

(declare-fun e!3877688 () Bool)

(declare-fun e!3877686 () Bool)

(assert (=> b!6388540 (= e!3877688 e!3877686)))

(declare-fun res!2627833 () Bool)

(assert (=> b!6388540 (=> (not res!2627833) (not e!3877686))))

(assert (=> b!6388540 (= res!2627833 (not lt!2372091))))

(declare-fun b!6388541 () Bool)

(declare-fun e!3877689 () Bool)

(assert (=> b!6388541 (= e!3877689 (not (= (head!13102 s!2326) (c!1164242 r!7292))))))

(declare-fun b!6388542 () Bool)

(declare-fun call!546202 () Bool)

(assert (=> b!6388542 (= e!3877690 (= lt!2372091 call!546202))))

(declare-fun b!6388543 () Bool)

(declare-fun res!2627830 () Bool)

(assert (=> b!6388543 (=> res!2627830 e!3877689)))

(assert (=> b!6388543 (= res!2627830 (not (isEmpty!37229 (tail!12187 s!2326))))))

(declare-fun b!6388544 () Bool)

(declare-fun e!3877687 () Bool)

(assert (=> b!6388544 (= e!3877687 (matchR!8488 (derivativeStep!5009 r!7292 (head!13102 s!2326)) (tail!12187 s!2326)))))

(declare-fun b!6388545 () Bool)

(assert (=> b!6388545 (= e!3877686 e!3877689)))

(declare-fun res!2627831 () Bool)

(assert (=> b!6388545 (=> res!2627831 e!3877689)))

(assert (=> b!6388545 (= res!2627831 call!546202)))

(declare-fun b!6388537 () Bool)

(declare-fun res!2627826 () Bool)

(assert (=> b!6388537 (=> (not res!2627826) (not e!3877684))))

(assert (=> b!6388537 (= res!2627826 (not call!546202))))

(declare-fun d!2002656 () Bool)

(assert (=> d!2002656 e!3877690))

(declare-fun c!1164455 () Bool)

(assert (=> d!2002656 (= c!1164455 ((_ is EmptyExpr!16305) r!7292))))

(assert (=> d!2002656 (= lt!2372091 e!3877687)))

(declare-fun c!1164453 () Bool)

(assert (=> d!2002656 (= c!1164453 (isEmpty!37229 s!2326))))

(assert (=> d!2002656 (validRegex!8041 r!7292)))

(assert (=> d!2002656 (= (matchR!8488 r!7292 s!2326) lt!2372091)))

(declare-fun b!6388546 () Bool)

(assert (=> b!6388546 (= e!3877687 (nullable!6298 r!7292))))

(declare-fun b!6388547 () Bool)

(declare-fun res!2627828 () Bool)

(assert (=> b!6388547 (=> res!2627828 e!3877688)))

(assert (=> b!6388547 (= res!2627828 (not ((_ is ElementMatch!16305) r!7292)))))

(assert (=> b!6388547 (= e!3877685 e!3877688)))

(declare-fun bm!546197 () Bool)

(assert (=> bm!546197 (= call!546202 (isEmpty!37229 s!2326))))

(declare-fun b!6388548 () Bool)

(declare-fun res!2627827 () Bool)

(assert (=> b!6388548 (=> res!2627827 e!3877688)))

(assert (=> b!6388548 (= res!2627827 e!3877684)))

(declare-fun res!2627829 () Bool)

(assert (=> b!6388548 (=> (not res!2627829) (not e!3877684))))

(assert (=> b!6388548 (= res!2627829 lt!2372091)))

(assert (= (and d!2002656 c!1164453) b!6388546))

(assert (= (and d!2002656 (not c!1164453)) b!6388544))

(assert (= (and d!2002656 c!1164455) b!6388542))

(assert (= (and d!2002656 (not c!1164455)) b!6388539))

(assert (= (and b!6388539 c!1164454) b!6388535))

(assert (= (and b!6388539 (not c!1164454)) b!6388547))

(assert (= (and b!6388547 (not res!2627828)) b!6388548))

(assert (= (and b!6388548 res!2627829) b!6388537))

(assert (= (and b!6388537 res!2627826) b!6388538))

(assert (= (and b!6388538 res!2627832) b!6388536))

(assert (= (and b!6388548 (not res!2627827)) b!6388540))

(assert (= (and b!6388540 res!2627833) b!6388545))

(assert (= (and b!6388545 (not res!2627831)) b!6388543))

(assert (= (and b!6388543 (not res!2627830)) b!6388541))

(assert (= (or b!6388542 b!6388537 b!6388545) bm!546197))

(declare-fun m!7187678 () Bool)

(assert (=> b!6388541 m!7187678))

(assert (=> d!2002656 m!7187676))

(assert (=> d!2002656 m!7187074))

(assert (=> b!6388544 m!7187678))

(assert (=> b!6388544 m!7187678))

(declare-fun m!7187680 () Bool)

(assert (=> b!6388544 m!7187680))

(declare-fun m!7187682 () Bool)

(assert (=> b!6388544 m!7187682))

(assert (=> b!6388544 m!7187680))

(assert (=> b!6388544 m!7187682))

(declare-fun m!7187684 () Bool)

(assert (=> b!6388544 m!7187684))

(assert (=> bm!546197 m!7187676))

(declare-fun m!7187686 () Bool)

(assert (=> b!6388546 m!7187686))

(assert (=> b!6388538 m!7187682))

(assert (=> b!6388538 m!7187682))

(declare-fun m!7187688 () Bool)

(assert (=> b!6388538 m!7187688))

(assert (=> b!6388536 m!7187678))

(assert (=> b!6388543 m!7187682))

(assert (=> b!6388543 m!7187682))

(assert (=> b!6388543 m!7187688))

(assert (=> b!6387828 d!2002656))

(declare-fun d!2002658 () Bool)

(assert (=> d!2002658 (= (matchR!8488 r!7292 s!2326) (matchRSpec!3406 r!7292 s!2326))))

(declare-fun lt!2372094 () Unit!158551)

(declare-fun choose!47536 (Regex!16305 List!65215) Unit!158551)

(assert (=> d!2002658 (= lt!2372094 (choose!47536 r!7292 s!2326))))

(assert (=> d!2002658 (validRegex!8041 r!7292)))

(assert (=> d!2002658 (= (mainMatchTheorem!3406 r!7292 s!2326) lt!2372094)))

(declare-fun bs!1598802 () Bool)

(assert (= bs!1598802 d!2002658))

(assert (=> bs!1598802 m!7187036))

(assert (=> bs!1598802 m!7187034))

(declare-fun m!7187690 () Bool)

(assert (=> bs!1598802 m!7187690))

(assert (=> bs!1598802 m!7187074))

(assert (=> b!6387828 d!2002658))

(declare-fun b!6388555 () Bool)

(assert (=> b!6388555 true))

(declare-fun bs!1598803 () Bool)

(declare-fun b!6388557 () Bool)

(assert (= bs!1598803 (and b!6388557 b!6388555)))

(declare-fun lambda!352656 () Int)

(declare-fun lt!2372104 () Int)

(declare-fun lt!2372103 () Int)

(declare-fun lambda!352657 () Int)

(assert (=> bs!1598803 (= (= lt!2372104 lt!2372103) (= lambda!352657 lambda!352656))))

(assert (=> b!6388557 true))

(declare-fun d!2002660 () Bool)

(declare-fun e!3877696 () Bool)

(assert (=> d!2002660 e!3877696))

(declare-fun res!2627836 () Bool)

(assert (=> d!2002660 (=> (not res!2627836) (not e!3877696))))

(assert (=> d!2002660 (= res!2627836 (>= lt!2372104 0))))

(declare-fun e!3877695 () Int)

(assert (=> d!2002660 (= lt!2372104 e!3877695)))

(declare-fun c!1164464 () Bool)

(assert (=> d!2002660 (= c!1164464 ((_ is Cons!65092) zl!343))))

(assert (=> d!2002660 (= (zipperDepth!374 zl!343) lt!2372104)))

(assert (=> b!6388555 (= e!3877695 lt!2372103)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!263 (Context!11378) Int)

(assert (=> b!6388555 (= lt!2372103 (maxBigInt!0 (contextDepth!263 (h!71540 zl!343)) (zipperDepth!374 (t!378822 zl!343))))))

(declare-fun lambda!352655 () Int)

(declare-fun lt!2372106 () Unit!158551)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!247 (List!65216 Int Int Int) Unit!158551)

(assert (=> b!6388555 (= lt!2372106 (lemmaForallContextDepthBiggerThanTransitive!247 (t!378822 zl!343) lt!2372103 (zipperDepth!374 (t!378822 zl!343)) lambda!352655))))

(declare-fun forall!15485 (List!65216 Int) Bool)

(assert (=> b!6388555 (forall!15485 (t!378822 zl!343) lambda!352656)))

(declare-fun lt!2372105 () Unit!158551)

(assert (=> b!6388555 (= lt!2372105 lt!2372106)))

(declare-fun b!6388556 () Bool)

(assert (=> b!6388556 (= e!3877695 0)))

(assert (=> b!6388557 (= e!3877696 (forall!15485 zl!343 lambda!352657))))

(assert (= (and d!2002660 c!1164464) b!6388555))

(assert (= (and d!2002660 (not c!1164464)) b!6388556))

(assert (= (and d!2002660 res!2627836) b!6388557))

(declare-fun m!7187692 () Bool)

(assert (=> b!6388555 m!7187692))

(declare-fun m!7187694 () Bool)

(assert (=> b!6388555 m!7187694))

(declare-fun m!7187696 () Bool)

(assert (=> b!6388555 m!7187696))

(assert (=> b!6388555 m!7187696))

(declare-fun m!7187698 () Bool)

(assert (=> b!6388555 m!7187698))

(assert (=> b!6388555 m!7187694))

(assert (=> b!6388555 m!7187696))

(declare-fun m!7187700 () Bool)

(assert (=> b!6388555 m!7187700))

(declare-fun m!7187702 () Bool)

(assert (=> b!6388557 m!7187702))

(assert (=> b!6387809 d!2002660))

(declare-fun bs!1598804 () Bool)

(declare-fun b!6388560 () Bool)

(assert (= bs!1598804 (and b!6388560 b!6388555)))

(declare-fun lambda!352658 () Int)

(assert (=> bs!1598804 (= lambda!352658 lambda!352655)))

(declare-fun lambda!352659 () Int)

(declare-fun lt!2372107 () Int)

(assert (=> bs!1598804 (= (= lt!2372107 lt!2372103) (= lambda!352659 lambda!352656))))

(declare-fun bs!1598805 () Bool)

(assert (= bs!1598805 (and b!6388560 b!6388557)))

(assert (=> bs!1598805 (= (= lt!2372107 lt!2372104) (= lambda!352659 lambda!352657))))

(assert (=> b!6388560 true))

(declare-fun bs!1598806 () Bool)

(declare-fun b!6388562 () Bool)

(assert (= bs!1598806 (and b!6388562 b!6388555)))

(declare-fun lambda!352660 () Int)

(declare-fun lt!2372108 () Int)

(assert (=> bs!1598806 (= (= lt!2372108 lt!2372103) (= lambda!352660 lambda!352656))))

(declare-fun bs!1598807 () Bool)

(assert (= bs!1598807 (and b!6388562 b!6388557)))

(assert (=> bs!1598807 (= (= lt!2372108 lt!2372104) (= lambda!352660 lambda!352657))))

(declare-fun bs!1598808 () Bool)

(assert (= bs!1598808 (and b!6388562 b!6388560)))

(assert (=> bs!1598808 (= (= lt!2372108 lt!2372107) (= lambda!352660 lambda!352659))))

(assert (=> b!6388562 true))

(declare-fun d!2002662 () Bool)

(declare-fun e!3877698 () Bool)

(assert (=> d!2002662 e!3877698))

(declare-fun res!2627837 () Bool)

(assert (=> d!2002662 (=> (not res!2627837) (not e!3877698))))

(assert (=> d!2002662 (= res!2627837 (>= lt!2372108 0))))

(declare-fun e!3877697 () Int)

(assert (=> d!2002662 (= lt!2372108 e!3877697)))

(declare-fun c!1164465 () Bool)

(assert (=> d!2002662 (= c!1164465 ((_ is Cons!65092) (Cons!65092 lt!2371961 Nil!65092)))))

(assert (=> d!2002662 (= (zipperDepth!374 (Cons!65092 lt!2371961 Nil!65092)) lt!2372108)))

(assert (=> b!6388560 (= e!3877697 lt!2372107)))

(assert (=> b!6388560 (= lt!2372107 (maxBigInt!0 (contextDepth!263 (h!71540 (Cons!65092 lt!2371961 Nil!65092))) (zipperDepth!374 (t!378822 (Cons!65092 lt!2371961 Nil!65092)))))))

(declare-fun lt!2372110 () Unit!158551)

(assert (=> b!6388560 (= lt!2372110 (lemmaForallContextDepthBiggerThanTransitive!247 (t!378822 (Cons!65092 lt!2371961 Nil!65092)) lt!2372107 (zipperDepth!374 (t!378822 (Cons!65092 lt!2371961 Nil!65092))) lambda!352658))))

(assert (=> b!6388560 (forall!15485 (t!378822 (Cons!65092 lt!2371961 Nil!65092)) lambda!352659)))

(declare-fun lt!2372109 () Unit!158551)

(assert (=> b!6388560 (= lt!2372109 lt!2372110)))

(declare-fun b!6388561 () Bool)

(assert (=> b!6388561 (= e!3877697 0)))

(assert (=> b!6388562 (= e!3877698 (forall!15485 (Cons!65092 lt!2371961 Nil!65092) lambda!352660))))

(assert (= (and d!2002662 c!1164465) b!6388560))

(assert (= (and d!2002662 (not c!1164465)) b!6388561))

(assert (= (and d!2002662 res!2627837) b!6388562))

(declare-fun m!7187704 () Bool)

(assert (=> b!6388560 m!7187704))

(declare-fun m!7187706 () Bool)

(assert (=> b!6388560 m!7187706))

(declare-fun m!7187708 () Bool)

(assert (=> b!6388560 m!7187708))

(assert (=> b!6388560 m!7187708))

(declare-fun m!7187710 () Bool)

(assert (=> b!6388560 m!7187710))

(assert (=> b!6388560 m!7187706))

(assert (=> b!6388560 m!7187708))

(declare-fun m!7187712 () Bool)

(assert (=> b!6388560 m!7187712))

(declare-fun m!7187714 () Bool)

(assert (=> b!6388562 m!7187714))

(assert (=> b!6387809 d!2002662))

(declare-fun b!6388563 () Bool)

(declare-fun e!3877700 () Bool)

(declare-fun lt!2372111 () Bool)

(assert (=> b!6388563 (= e!3877700 (not lt!2372111))))

(declare-fun b!6388564 () Bool)

(declare-fun e!3877699 () Bool)

(assert (=> b!6388564 (= e!3877699 (= (head!13102 (_2!36587 lt!2371982)) (c!1164242 (regTwo!33122 r!7292))))))

(declare-fun b!6388566 () Bool)

(declare-fun res!2627844 () Bool)

(assert (=> b!6388566 (=> (not res!2627844) (not e!3877699))))

(assert (=> b!6388566 (= res!2627844 (isEmpty!37229 (tail!12187 (_2!36587 lt!2371982))))))

(declare-fun b!6388567 () Bool)

(declare-fun e!3877705 () Bool)

(assert (=> b!6388567 (= e!3877705 e!3877700)))

(declare-fun c!1164467 () Bool)

(assert (=> b!6388567 (= c!1164467 ((_ is EmptyLang!16305) (regTwo!33122 r!7292)))))

(declare-fun b!6388568 () Bool)

(declare-fun e!3877703 () Bool)

(declare-fun e!3877701 () Bool)

(assert (=> b!6388568 (= e!3877703 e!3877701)))

(declare-fun res!2627845 () Bool)

(assert (=> b!6388568 (=> (not res!2627845) (not e!3877701))))

(assert (=> b!6388568 (= res!2627845 (not lt!2372111))))

(declare-fun b!6388569 () Bool)

(declare-fun e!3877704 () Bool)

(assert (=> b!6388569 (= e!3877704 (not (= (head!13102 (_2!36587 lt!2371982)) (c!1164242 (regTwo!33122 r!7292)))))))

(declare-fun b!6388570 () Bool)

(declare-fun call!546203 () Bool)

(assert (=> b!6388570 (= e!3877705 (= lt!2372111 call!546203))))

(declare-fun b!6388571 () Bool)

(declare-fun res!2627842 () Bool)

(assert (=> b!6388571 (=> res!2627842 e!3877704)))

(assert (=> b!6388571 (= res!2627842 (not (isEmpty!37229 (tail!12187 (_2!36587 lt!2371982)))))))

(declare-fun b!6388572 () Bool)

(declare-fun e!3877702 () Bool)

(assert (=> b!6388572 (= e!3877702 (matchR!8488 (derivativeStep!5009 (regTwo!33122 r!7292) (head!13102 (_2!36587 lt!2371982))) (tail!12187 (_2!36587 lt!2371982))))))

(declare-fun b!6388573 () Bool)

(assert (=> b!6388573 (= e!3877701 e!3877704)))

(declare-fun res!2627843 () Bool)

(assert (=> b!6388573 (=> res!2627843 e!3877704)))

(assert (=> b!6388573 (= res!2627843 call!546203)))

(declare-fun b!6388565 () Bool)

(declare-fun res!2627838 () Bool)

(assert (=> b!6388565 (=> (not res!2627838) (not e!3877699))))

(assert (=> b!6388565 (= res!2627838 (not call!546203))))

(declare-fun d!2002664 () Bool)

(assert (=> d!2002664 e!3877705))

(declare-fun c!1164468 () Bool)

(assert (=> d!2002664 (= c!1164468 ((_ is EmptyExpr!16305) (regTwo!33122 r!7292)))))

(assert (=> d!2002664 (= lt!2372111 e!3877702)))

(declare-fun c!1164466 () Bool)

(assert (=> d!2002664 (= c!1164466 (isEmpty!37229 (_2!36587 lt!2371982)))))

(assert (=> d!2002664 (validRegex!8041 (regTwo!33122 r!7292))))

(assert (=> d!2002664 (= (matchR!8488 (regTwo!33122 r!7292) (_2!36587 lt!2371982)) lt!2372111)))

(declare-fun b!6388574 () Bool)

(assert (=> b!6388574 (= e!3877702 (nullable!6298 (regTwo!33122 r!7292)))))

(declare-fun b!6388575 () Bool)

(declare-fun res!2627840 () Bool)

(assert (=> b!6388575 (=> res!2627840 e!3877703)))

(assert (=> b!6388575 (= res!2627840 (not ((_ is ElementMatch!16305) (regTwo!33122 r!7292))))))

(assert (=> b!6388575 (= e!3877700 e!3877703)))

(declare-fun bm!546198 () Bool)

(assert (=> bm!546198 (= call!546203 (isEmpty!37229 (_2!36587 lt!2371982)))))

(declare-fun b!6388576 () Bool)

(declare-fun res!2627839 () Bool)

(assert (=> b!6388576 (=> res!2627839 e!3877703)))

(assert (=> b!6388576 (= res!2627839 e!3877699)))

(declare-fun res!2627841 () Bool)

(assert (=> b!6388576 (=> (not res!2627841) (not e!3877699))))

(assert (=> b!6388576 (= res!2627841 lt!2372111)))

(assert (= (and d!2002664 c!1164466) b!6388574))

(assert (= (and d!2002664 (not c!1164466)) b!6388572))

(assert (= (and d!2002664 c!1164468) b!6388570))

(assert (= (and d!2002664 (not c!1164468)) b!6388567))

(assert (= (and b!6388567 c!1164467) b!6388563))

(assert (= (and b!6388567 (not c!1164467)) b!6388575))

(assert (= (and b!6388575 (not res!2627840)) b!6388576))

(assert (= (and b!6388576 res!2627841) b!6388565))

(assert (= (and b!6388565 res!2627838) b!6388566))

(assert (= (and b!6388566 res!2627844) b!6388564))

(assert (= (and b!6388576 (not res!2627839)) b!6388568))

(assert (= (and b!6388568 res!2627845) b!6388573))

(assert (= (and b!6388573 (not res!2627843)) b!6388571))

(assert (= (and b!6388571 (not res!2627842)) b!6388569))

(assert (= (or b!6388570 b!6388565 b!6388573) bm!546198))

(declare-fun m!7187716 () Bool)

(assert (=> b!6388569 m!7187716))

(declare-fun m!7187718 () Bool)

(assert (=> d!2002664 m!7187718))

(declare-fun m!7187720 () Bool)

(assert (=> d!2002664 m!7187720))

(assert (=> b!6388572 m!7187716))

(assert (=> b!6388572 m!7187716))

(declare-fun m!7187722 () Bool)

(assert (=> b!6388572 m!7187722))

(declare-fun m!7187724 () Bool)

(assert (=> b!6388572 m!7187724))

(assert (=> b!6388572 m!7187722))

(assert (=> b!6388572 m!7187724))

(declare-fun m!7187726 () Bool)

(assert (=> b!6388572 m!7187726))

(assert (=> bm!546198 m!7187718))

(declare-fun m!7187728 () Bool)

(assert (=> b!6388574 m!7187728))

(assert (=> b!6388566 m!7187724))

(assert (=> b!6388566 m!7187724))

(declare-fun m!7187730 () Bool)

(assert (=> b!6388566 m!7187730))

(assert (=> b!6388564 m!7187716))

(assert (=> b!6388571 m!7187724))

(assert (=> b!6388571 m!7187724))

(assert (=> b!6388571 m!7187730))

(assert (=> b!6387808 d!2002664))

(declare-fun bs!1598809 () Bool)

(declare-fun d!2002666 () Bool)

(assert (= bs!1598809 (and d!2002666 b!6387795)))

(declare-fun lambda!352663 () Int)

(assert (=> bs!1598809 (= lambda!352663 lambda!352583)))

(assert (=> d!2002666 true))

(assert (=> d!2002666 (= (derivationStepZipper!2271 lt!2371984 (h!71539 s!2326)) (flatMap!1810 lt!2371984 lambda!352663))))

(declare-fun bs!1598810 () Bool)

(assert (= bs!1598810 d!2002666))

(declare-fun m!7187732 () Bool)

(assert (=> bs!1598810 m!7187732))

(assert (=> b!6387794 d!2002666))

(declare-fun d!2002668 () Bool)

(declare-fun choose!47538 ((InoxSet Context!11378) Int) (InoxSet Context!11378))

(assert (=> d!2002668 (= (flatMap!1810 lt!2371984 lambda!352583) (choose!47538 lt!2371984 lambda!352583))))

(declare-fun bs!1598811 () Bool)

(assert (= bs!1598811 d!2002668))

(declare-fun m!7187734 () Bool)

(assert (=> bs!1598811 m!7187734))

(assert (=> b!6387794 d!2002668))

(declare-fun b!6388589 () Bool)

(declare-fun e!3877713 () (InoxSet Context!11378))

(assert (=> b!6388589 (= e!3877713 ((as const (Array Context!11378 Bool)) false))))

(declare-fun d!2002670 () Bool)

(declare-fun c!1164475 () Bool)

(declare-fun e!3877714 () Bool)

(assert (=> d!2002670 (= c!1164475 e!3877714)))

(declare-fun res!2627848 () Bool)

(assert (=> d!2002670 (=> (not res!2627848) (not e!3877714))))

(assert (=> d!2002670 (= res!2627848 ((_ is Cons!65090) (exprs!6189 lt!2371961)))))

(declare-fun e!3877712 () (InoxSet Context!11378))

(assert (=> d!2002670 (= (derivationStepZipperUp!1479 lt!2371961 (h!71539 s!2326)) e!3877712)))

(declare-fun bm!546201 () Bool)

(declare-fun call!546206 () (InoxSet Context!11378))

(assert (=> bm!546201 (= call!546206 (derivationStepZipperDown!1553 (h!71538 (exprs!6189 lt!2371961)) (Context!11379 (t!378820 (exprs!6189 lt!2371961))) (h!71539 s!2326)))))

(declare-fun b!6388590 () Bool)

(assert (=> b!6388590 (= e!3877714 (nullable!6298 (h!71538 (exprs!6189 lt!2371961))))))

(declare-fun b!6388591 () Bool)

(assert (=> b!6388591 (= e!3877712 ((_ map or) call!546206 (derivationStepZipperUp!1479 (Context!11379 (t!378820 (exprs!6189 lt!2371961))) (h!71539 s!2326))))))

(declare-fun b!6388592 () Bool)

(assert (=> b!6388592 (= e!3877713 call!546206)))

(declare-fun b!6388593 () Bool)

(assert (=> b!6388593 (= e!3877712 e!3877713)))

(declare-fun c!1164476 () Bool)

(assert (=> b!6388593 (= c!1164476 ((_ is Cons!65090) (exprs!6189 lt!2371961)))))

(assert (= (and d!2002670 res!2627848) b!6388590))

(assert (= (and d!2002670 c!1164475) b!6388591))

(assert (= (and d!2002670 (not c!1164475)) b!6388593))

(assert (= (and b!6388593 c!1164476) b!6388592))

(assert (= (and b!6388593 (not c!1164476)) b!6388589))

(assert (= (or b!6388591 b!6388592) bm!546201))

(declare-fun m!7187736 () Bool)

(assert (=> bm!546201 m!7187736))

(declare-fun m!7187738 () Bool)

(assert (=> b!6388590 m!7187738))

(declare-fun m!7187740 () Bool)

(assert (=> b!6388591 m!7187740))

(assert (=> b!6387794 d!2002670))

(declare-fun d!2002672 () Bool)

(declare-fun dynLambda!25825 (Int Context!11378) (InoxSet Context!11378))

(assert (=> d!2002672 (= (flatMap!1810 lt!2371984 lambda!352583) (dynLambda!25825 lambda!352583 lt!2371961))))

(declare-fun lt!2372114 () Unit!158551)

(declare-fun choose!47539 ((InoxSet Context!11378) Context!11378 Int) Unit!158551)

(assert (=> d!2002672 (= lt!2372114 (choose!47539 lt!2371984 lt!2371961 lambda!352583))))

(assert (=> d!2002672 (= lt!2371984 (store ((as const (Array Context!11378 Bool)) false) lt!2371961 true))))

(assert (=> d!2002672 (= (lemmaFlatMapOnSingletonSet!1336 lt!2371984 lt!2371961 lambda!352583) lt!2372114)))

(declare-fun b_lambda!242721 () Bool)

(assert (=> (not b_lambda!242721) (not d!2002672)))

(declare-fun bs!1598812 () Bool)

(assert (= bs!1598812 d!2002672))

(assert (=> bs!1598812 m!7187046))

(declare-fun m!7187742 () Bool)

(assert (=> bs!1598812 m!7187742))

(declare-fun m!7187744 () Bool)

(assert (=> bs!1598812 m!7187744))

(assert (=> bs!1598812 m!7187040))

(assert (=> b!6387794 d!2002672))

(declare-fun bs!1598813 () Bool)

(declare-fun d!2002674 () Bool)

(assert (= bs!1598813 (and d!2002674 d!2002546)))

(declare-fun lambda!352666 () Int)

(assert (=> bs!1598813 (= lambda!352666 lambda!352612)))

(declare-fun bs!1598814 () Bool)

(assert (= bs!1598814 (and d!2002674 d!2002556)))

(assert (=> bs!1598814 (= lambda!352666 lambda!352615)))

(assert (=> d!2002674 (= (inv!84009 setElem!43618) (forall!15483 (exprs!6189 setElem!43618) lambda!352666))))

(declare-fun bs!1598815 () Bool)

(assert (= bs!1598815 d!2002674))

(declare-fun m!7187746 () Bool)

(assert (=> bs!1598815 m!7187746))

(assert (=> setNonEmpty!43618 d!2002674))

(declare-fun c!1164489 () Bool)

(declare-fun call!546221 () List!65214)

(declare-fun c!1164488 () Bool)

(declare-fun c!1164491 () Bool)

(declare-fun bm!546214 () Bool)

(declare-fun call!546220 () (InoxSet Context!11378))

(assert (=> bm!546214 (= call!546220 (derivationStepZipperDown!1553 (ite c!1164489 (regOne!33123 (reg!16634 (regOne!33122 r!7292))) (ite c!1164488 (regTwo!33122 (reg!16634 (regOne!33122 r!7292))) (ite c!1164491 (regOne!33122 (reg!16634 (regOne!33122 r!7292))) (reg!16634 (reg!16634 (regOne!33122 r!7292)))))) (ite (or c!1164489 c!1164488) lt!2371996 (Context!11379 call!546221)) (h!71539 s!2326)))))

(declare-fun b!6388616 () Bool)

(declare-fun e!3877728 () (InoxSet Context!11378))

(declare-fun call!546219 () (InoxSet Context!11378))

(assert (=> b!6388616 (= e!3877728 call!546219)))

(declare-fun b!6388617 () Bool)

(declare-fun e!3877730 () Bool)

(assert (=> b!6388617 (= c!1164488 e!3877730)))

(declare-fun res!2627851 () Bool)

(assert (=> b!6388617 (=> (not res!2627851) (not e!3877730))))

(assert (=> b!6388617 (= res!2627851 ((_ is Concat!25150) (reg!16634 (regOne!33122 r!7292))))))

(declare-fun e!3877731 () (InoxSet Context!11378))

(declare-fun e!3877729 () (InoxSet Context!11378))

(assert (=> b!6388617 (= e!3877731 e!3877729)))

(declare-fun b!6388618 () Bool)

(declare-fun e!3877727 () (InoxSet Context!11378))

(assert (=> b!6388618 (= e!3877727 call!546219)))

(declare-fun call!546224 () List!65214)

(declare-fun call!546222 () (InoxSet Context!11378))

(declare-fun bm!546215 () Bool)

(assert (=> bm!546215 (= call!546222 (derivationStepZipperDown!1553 (ite c!1164489 (regTwo!33123 (reg!16634 (regOne!33122 r!7292))) (regOne!33122 (reg!16634 (regOne!33122 r!7292)))) (ite c!1164489 lt!2371996 (Context!11379 call!546224)) (h!71539 s!2326)))))

(declare-fun d!2002676 () Bool)

(declare-fun c!1164487 () Bool)

(assert (=> d!2002676 (= c!1164487 (and ((_ is ElementMatch!16305) (reg!16634 (regOne!33122 r!7292))) (= (c!1164242 (reg!16634 (regOne!33122 r!7292))) (h!71539 s!2326))))))

(declare-fun e!3877732 () (InoxSet Context!11378))

(assert (=> d!2002676 (= (derivationStepZipperDown!1553 (reg!16634 (regOne!33122 r!7292)) lt!2371996 (h!71539 s!2326)) e!3877732)))

(declare-fun bm!546216 () Bool)

(assert (=> bm!546216 (= call!546221 call!546224)))

(declare-fun b!6388619 () Bool)

(declare-fun call!546223 () (InoxSet Context!11378))

(assert (=> b!6388619 (= e!3877729 ((_ map or) call!546222 call!546223))))

(declare-fun b!6388620 () Bool)

(assert (=> b!6388620 (= e!3877732 (store ((as const (Array Context!11378 Bool)) false) lt!2371996 true))))

(declare-fun bm!546217 () Bool)

(declare-fun $colon$colon!2166 (List!65214 Regex!16305) List!65214)

(assert (=> bm!546217 (= call!546224 ($colon$colon!2166 (exprs!6189 lt!2371996) (ite (or c!1164488 c!1164491) (regTwo!33122 (reg!16634 (regOne!33122 r!7292))) (reg!16634 (regOne!33122 r!7292)))))))

(declare-fun b!6388621 () Bool)

(assert (=> b!6388621 (= e!3877730 (nullable!6298 (regOne!33122 (reg!16634 (regOne!33122 r!7292)))))))

(declare-fun b!6388622 () Bool)

(assert (=> b!6388622 (= e!3877727 ((as const (Array Context!11378 Bool)) false))))

(declare-fun bm!546218 () Bool)

(assert (=> bm!546218 (= call!546223 call!546220)))

(declare-fun b!6388623 () Bool)

(declare-fun c!1164490 () Bool)

(assert (=> b!6388623 (= c!1164490 ((_ is Star!16305) (reg!16634 (regOne!33122 r!7292))))))

(assert (=> b!6388623 (= e!3877728 e!3877727)))

(declare-fun b!6388624 () Bool)

(assert (=> b!6388624 (= e!3877731 ((_ map or) call!546220 call!546222))))

(declare-fun b!6388625 () Bool)

(assert (=> b!6388625 (= e!3877729 e!3877728)))

(assert (=> b!6388625 (= c!1164491 ((_ is Concat!25150) (reg!16634 (regOne!33122 r!7292))))))

(declare-fun bm!546219 () Bool)

(assert (=> bm!546219 (= call!546219 call!546223)))

(declare-fun b!6388626 () Bool)

(assert (=> b!6388626 (= e!3877732 e!3877731)))

(assert (=> b!6388626 (= c!1164489 ((_ is Union!16305) (reg!16634 (regOne!33122 r!7292))))))

(assert (= (and d!2002676 c!1164487) b!6388620))

(assert (= (and d!2002676 (not c!1164487)) b!6388626))

(assert (= (and b!6388626 c!1164489) b!6388624))

(assert (= (and b!6388626 (not c!1164489)) b!6388617))

(assert (= (and b!6388617 res!2627851) b!6388621))

(assert (= (and b!6388617 c!1164488) b!6388619))

(assert (= (and b!6388617 (not c!1164488)) b!6388625))

(assert (= (and b!6388625 c!1164491) b!6388616))

(assert (= (and b!6388625 (not c!1164491)) b!6388623))

(assert (= (and b!6388623 c!1164490) b!6388618))

(assert (= (and b!6388623 (not c!1164490)) b!6388622))

(assert (= (or b!6388616 b!6388618) bm!546216))

(assert (= (or b!6388616 b!6388618) bm!546219))

(assert (= (or b!6388619 bm!546216) bm!546217))

(assert (= (or b!6388619 bm!546219) bm!546218))

(assert (= (or b!6388624 b!6388619) bm!546215))

(assert (= (or b!6388624 bm!546218) bm!546214))

(declare-fun m!7187748 () Bool)

(assert (=> bm!546214 m!7187748))

(declare-fun m!7187750 () Bool)

(assert (=> b!6388621 m!7187750))

(assert (=> b!6388620 m!7187144))

(declare-fun m!7187752 () Bool)

(assert (=> bm!546215 m!7187752))

(declare-fun m!7187754 () Bool)

(assert (=> bm!546217 m!7187754))

(assert (=> b!6387815 d!2002676))

(declare-fun bm!546220 () Bool)

(declare-fun c!1164493 () Bool)

(declare-fun call!546226 () (InoxSet Context!11378))

(declare-fun c!1164496 () Bool)

(declare-fun call!546227 () List!65214)

(declare-fun c!1164494 () Bool)

(assert (=> bm!546220 (= call!546226 (derivationStepZipperDown!1553 (ite c!1164494 (regOne!33123 (h!71538 (exprs!6189 (h!71540 zl!343)))) (ite c!1164493 (regTwo!33122 (h!71538 (exprs!6189 (h!71540 zl!343)))) (ite c!1164496 (regOne!33122 (h!71538 (exprs!6189 (h!71540 zl!343)))) (reg!16634 (h!71538 (exprs!6189 (h!71540 zl!343))))))) (ite (or c!1164494 c!1164493) lt!2371961 (Context!11379 call!546227)) (h!71539 s!2326)))))

(declare-fun b!6388627 () Bool)

(declare-fun e!3877734 () (InoxSet Context!11378))

(declare-fun call!546225 () (InoxSet Context!11378))

(assert (=> b!6388627 (= e!3877734 call!546225)))

(declare-fun b!6388628 () Bool)

(declare-fun e!3877736 () Bool)

(assert (=> b!6388628 (= c!1164493 e!3877736)))

(declare-fun res!2627852 () Bool)

(assert (=> b!6388628 (=> (not res!2627852) (not e!3877736))))

(assert (=> b!6388628 (= res!2627852 ((_ is Concat!25150) (h!71538 (exprs!6189 (h!71540 zl!343)))))))

(declare-fun e!3877737 () (InoxSet Context!11378))

(declare-fun e!3877735 () (InoxSet Context!11378))

(assert (=> b!6388628 (= e!3877737 e!3877735)))

(declare-fun b!6388629 () Bool)

(declare-fun e!3877733 () (InoxSet Context!11378))

(assert (=> b!6388629 (= e!3877733 call!546225)))

(declare-fun bm!546221 () Bool)

(declare-fun call!546228 () (InoxSet Context!11378))

(declare-fun call!546230 () List!65214)

(assert (=> bm!546221 (= call!546228 (derivationStepZipperDown!1553 (ite c!1164494 (regTwo!33123 (h!71538 (exprs!6189 (h!71540 zl!343)))) (regOne!33122 (h!71538 (exprs!6189 (h!71540 zl!343))))) (ite c!1164494 lt!2371961 (Context!11379 call!546230)) (h!71539 s!2326)))))

(declare-fun d!2002678 () Bool)

(declare-fun c!1164492 () Bool)

(assert (=> d!2002678 (= c!1164492 (and ((_ is ElementMatch!16305) (h!71538 (exprs!6189 (h!71540 zl!343)))) (= (c!1164242 (h!71538 (exprs!6189 (h!71540 zl!343)))) (h!71539 s!2326))))))

(declare-fun e!3877738 () (InoxSet Context!11378))

(assert (=> d!2002678 (= (derivationStepZipperDown!1553 (h!71538 (exprs!6189 (h!71540 zl!343))) lt!2371961 (h!71539 s!2326)) e!3877738)))

(declare-fun bm!546222 () Bool)

(assert (=> bm!546222 (= call!546227 call!546230)))

(declare-fun b!6388630 () Bool)

(declare-fun call!546229 () (InoxSet Context!11378))

(assert (=> b!6388630 (= e!3877735 ((_ map or) call!546228 call!546229))))

(declare-fun b!6388631 () Bool)

(assert (=> b!6388631 (= e!3877738 (store ((as const (Array Context!11378 Bool)) false) lt!2371961 true))))

(declare-fun bm!546223 () Bool)

(assert (=> bm!546223 (= call!546230 ($colon$colon!2166 (exprs!6189 lt!2371961) (ite (or c!1164493 c!1164496) (regTwo!33122 (h!71538 (exprs!6189 (h!71540 zl!343)))) (h!71538 (exprs!6189 (h!71540 zl!343))))))))

(declare-fun b!6388632 () Bool)

(assert (=> b!6388632 (= e!3877736 (nullable!6298 (regOne!33122 (h!71538 (exprs!6189 (h!71540 zl!343))))))))

(declare-fun b!6388633 () Bool)

(assert (=> b!6388633 (= e!3877733 ((as const (Array Context!11378 Bool)) false))))

(declare-fun bm!546224 () Bool)

(assert (=> bm!546224 (= call!546229 call!546226)))

(declare-fun b!6388634 () Bool)

(declare-fun c!1164495 () Bool)

(assert (=> b!6388634 (= c!1164495 ((_ is Star!16305) (h!71538 (exprs!6189 (h!71540 zl!343)))))))

(assert (=> b!6388634 (= e!3877734 e!3877733)))

(declare-fun b!6388635 () Bool)

(assert (=> b!6388635 (= e!3877737 ((_ map or) call!546226 call!546228))))

(declare-fun b!6388636 () Bool)

(assert (=> b!6388636 (= e!3877735 e!3877734)))

(assert (=> b!6388636 (= c!1164496 ((_ is Concat!25150) (h!71538 (exprs!6189 (h!71540 zl!343)))))))

(declare-fun bm!546225 () Bool)

(assert (=> bm!546225 (= call!546225 call!546229)))

(declare-fun b!6388637 () Bool)

(assert (=> b!6388637 (= e!3877738 e!3877737)))

(assert (=> b!6388637 (= c!1164494 ((_ is Union!16305) (h!71538 (exprs!6189 (h!71540 zl!343)))))))

(assert (= (and d!2002678 c!1164492) b!6388631))

(assert (= (and d!2002678 (not c!1164492)) b!6388637))

(assert (= (and b!6388637 c!1164494) b!6388635))

(assert (= (and b!6388637 (not c!1164494)) b!6388628))

(assert (= (and b!6388628 res!2627852) b!6388632))

(assert (= (and b!6388628 c!1164493) b!6388630))

(assert (= (and b!6388628 (not c!1164493)) b!6388636))

(assert (= (and b!6388636 c!1164496) b!6388627))

(assert (= (and b!6388636 (not c!1164496)) b!6388634))

(assert (= (and b!6388634 c!1164495) b!6388629))

(assert (= (and b!6388634 (not c!1164495)) b!6388633))

(assert (= (or b!6388627 b!6388629) bm!546222))

(assert (= (or b!6388627 b!6388629) bm!546225))

(assert (= (or b!6388630 bm!546222) bm!546223))

(assert (= (or b!6388630 bm!546225) bm!546224))

(assert (= (or b!6388635 b!6388630) bm!546221))

(assert (= (or b!6388635 bm!546224) bm!546220))

(declare-fun m!7187756 () Bool)

(assert (=> bm!546220 m!7187756))

(declare-fun m!7187758 () Bool)

(assert (=> b!6388632 m!7187758))

(assert (=> b!6388631 m!7187040))

(declare-fun m!7187760 () Bool)

(assert (=> bm!546221 m!7187760))

(declare-fun m!7187762 () Bool)

(assert (=> bm!546223 m!7187762))

(assert (=> b!6387795 d!2002678))

(declare-fun d!2002680 () Bool)

(assert (=> d!2002680 (= (nullable!6298 (h!71538 (exprs!6189 (h!71540 zl!343)))) (nullableFct!2243 (h!71538 (exprs!6189 (h!71540 zl!343)))))))

(declare-fun bs!1598816 () Bool)

(assert (= bs!1598816 d!2002680))

(declare-fun m!7187764 () Bool)

(assert (=> bs!1598816 m!7187764))

(assert (=> b!6387795 d!2002680))

(declare-fun b!6388638 () Bool)

(declare-fun e!3877740 () (InoxSet Context!11378))

(assert (=> b!6388638 (= e!3877740 ((as const (Array Context!11378 Bool)) false))))

(declare-fun d!2002682 () Bool)

(declare-fun c!1164497 () Bool)

(declare-fun e!3877741 () Bool)

(assert (=> d!2002682 (= c!1164497 e!3877741)))

(declare-fun res!2627853 () Bool)

(assert (=> d!2002682 (=> (not res!2627853) (not e!3877741))))

(assert (=> d!2002682 (= res!2627853 ((_ is Cons!65090) (exprs!6189 (Context!11379 (Cons!65090 (h!71538 (exprs!6189 (h!71540 zl!343))) (t!378820 (exprs!6189 (h!71540 zl!343))))))))))

(declare-fun e!3877739 () (InoxSet Context!11378))

(assert (=> d!2002682 (= (derivationStepZipperUp!1479 (Context!11379 (Cons!65090 (h!71538 (exprs!6189 (h!71540 zl!343))) (t!378820 (exprs!6189 (h!71540 zl!343))))) (h!71539 s!2326)) e!3877739)))

(declare-fun bm!546226 () Bool)

(declare-fun call!546231 () (InoxSet Context!11378))

(assert (=> bm!546226 (= call!546231 (derivationStepZipperDown!1553 (h!71538 (exprs!6189 (Context!11379 (Cons!65090 (h!71538 (exprs!6189 (h!71540 zl!343))) (t!378820 (exprs!6189 (h!71540 zl!343))))))) (Context!11379 (t!378820 (exprs!6189 (Context!11379 (Cons!65090 (h!71538 (exprs!6189 (h!71540 zl!343))) (t!378820 (exprs!6189 (h!71540 zl!343)))))))) (h!71539 s!2326)))))

(declare-fun b!6388639 () Bool)

(assert (=> b!6388639 (= e!3877741 (nullable!6298 (h!71538 (exprs!6189 (Context!11379 (Cons!65090 (h!71538 (exprs!6189 (h!71540 zl!343))) (t!378820 (exprs!6189 (h!71540 zl!343)))))))))))

(declare-fun b!6388640 () Bool)

(assert (=> b!6388640 (= e!3877739 ((_ map or) call!546231 (derivationStepZipperUp!1479 (Context!11379 (t!378820 (exprs!6189 (Context!11379 (Cons!65090 (h!71538 (exprs!6189 (h!71540 zl!343))) (t!378820 (exprs!6189 (h!71540 zl!343)))))))) (h!71539 s!2326))))))

(declare-fun b!6388641 () Bool)

(assert (=> b!6388641 (= e!3877740 call!546231)))

(declare-fun b!6388642 () Bool)

(assert (=> b!6388642 (= e!3877739 e!3877740)))

(declare-fun c!1164498 () Bool)

(assert (=> b!6388642 (= c!1164498 ((_ is Cons!65090) (exprs!6189 (Context!11379 (Cons!65090 (h!71538 (exprs!6189 (h!71540 zl!343))) (t!378820 (exprs!6189 (h!71540 zl!343))))))))))

(assert (= (and d!2002682 res!2627853) b!6388639))

(assert (= (and d!2002682 c!1164497) b!6388640))

(assert (= (and d!2002682 (not c!1164497)) b!6388642))

(assert (= (and b!6388642 c!1164498) b!6388641))

(assert (= (and b!6388642 (not c!1164498)) b!6388638))

(assert (= (or b!6388640 b!6388641) bm!546226))

(declare-fun m!7187766 () Bool)

(assert (=> bm!546226 m!7187766))

(declare-fun m!7187768 () Bool)

(assert (=> b!6388639 m!7187768))

(declare-fun m!7187770 () Bool)

(assert (=> b!6388640 m!7187770))

(assert (=> b!6387795 d!2002682))

(declare-fun d!2002684 () Bool)

(assert (=> d!2002684 (= (flatMap!1810 z!1189 lambda!352583) (dynLambda!25825 lambda!352583 (h!71540 zl!343)))))

(declare-fun lt!2372115 () Unit!158551)

(assert (=> d!2002684 (= lt!2372115 (choose!47539 z!1189 (h!71540 zl!343) lambda!352583))))

(assert (=> d!2002684 (= z!1189 (store ((as const (Array Context!11378 Bool)) false) (h!71540 zl!343) true))))

(assert (=> d!2002684 (= (lemmaFlatMapOnSingletonSet!1336 z!1189 (h!71540 zl!343) lambda!352583) lt!2372115)))

(declare-fun b_lambda!242723 () Bool)

(assert (=> (not b_lambda!242723) (not d!2002684)))

(declare-fun bs!1598817 () Bool)

(assert (= bs!1598817 d!2002684))

(assert (=> bs!1598817 m!7187128))

(declare-fun m!7187772 () Bool)

(assert (=> bs!1598817 m!7187772))

(declare-fun m!7187774 () Bool)

(assert (=> bs!1598817 m!7187774))

(declare-fun m!7187776 () Bool)

(assert (=> bs!1598817 m!7187776))

(assert (=> b!6387795 d!2002684))

(assert (=> b!6387795 d!2002670))

(declare-fun b!6388643 () Bool)

(declare-fun e!3877743 () (InoxSet Context!11378))

(assert (=> b!6388643 (= e!3877743 ((as const (Array Context!11378 Bool)) false))))

(declare-fun d!2002686 () Bool)

(declare-fun c!1164499 () Bool)

(declare-fun e!3877744 () Bool)

(assert (=> d!2002686 (= c!1164499 e!3877744)))

(declare-fun res!2627854 () Bool)

(assert (=> d!2002686 (=> (not res!2627854) (not e!3877744))))

(assert (=> d!2002686 (= res!2627854 ((_ is Cons!65090) (exprs!6189 (h!71540 zl!343))))))

(declare-fun e!3877742 () (InoxSet Context!11378))

(assert (=> d!2002686 (= (derivationStepZipperUp!1479 (h!71540 zl!343) (h!71539 s!2326)) e!3877742)))

(declare-fun bm!546227 () Bool)

(declare-fun call!546232 () (InoxSet Context!11378))

(assert (=> bm!546227 (= call!546232 (derivationStepZipperDown!1553 (h!71538 (exprs!6189 (h!71540 zl!343))) (Context!11379 (t!378820 (exprs!6189 (h!71540 zl!343)))) (h!71539 s!2326)))))

(declare-fun b!6388644 () Bool)

(assert (=> b!6388644 (= e!3877744 (nullable!6298 (h!71538 (exprs!6189 (h!71540 zl!343)))))))

(declare-fun b!6388645 () Bool)

(assert (=> b!6388645 (= e!3877742 ((_ map or) call!546232 (derivationStepZipperUp!1479 (Context!11379 (t!378820 (exprs!6189 (h!71540 zl!343)))) (h!71539 s!2326))))))

(declare-fun b!6388646 () Bool)

(assert (=> b!6388646 (= e!3877743 call!546232)))

(declare-fun b!6388647 () Bool)

(assert (=> b!6388647 (= e!3877742 e!3877743)))

(declare-fun c!1164500 () Bool)

(assert (=> b!6388647 (= c!1164500 ((_ is Cons!65090) (exprs!6189 (h!71540 zl!343))))))

(assert (= (and d!2002686 res!2627854) b!6388644))

(assert (= (and d!2002686 c!1164499) b!6388645))

(assert (= (and d!2002686 (not c!1164499)) b!6388647))

(assert (= (and b!6388647 c!1164500) b!6388646))

(assert (= (and b!6388647 (not c!1164500)) b!6388643))

(assert (= (or b!6388645 b!6388646) bm!546227))

(declare-fun m!7187778 () Bool)

(assert (=> bm!546227 m!7187778))

(assert (=> b!6388644 m!7187124))

(declare-fun m!7187780 () Bool)

(assert (=> b!6388645 m!7187780))

(assert (=> b!6387795 d!2002686))

(declare-fun d!2002688 () Bool)

(assert (=> d!2002688 (= (flatMap!1810 z!1189 lambda!352583) (choose!47538 z!1189 lambda!352583))))

(declare-fun bs!1598818 () Bool)

(assert (= bs!1598818 d!2002688))

(declare-fun m!7187782 () Bool)

(assert (=> bs!1598818 m!7187782))

(assert (=> b!6387795 d!2002688))

(declare-fun d!2002690 () Bool)

(assert (=> d!2002690 (= (isEmpty!37230 (t!378822 zl!343)) ((_ is Nil!65092) (t!378822 zl!343)))))

(assert (=> b!6387812 d!2002690))

(declare-fun d!2002692 () Bool)

(declare-fun c!1164501 () Bool)

(assert (=> d!2002692 (= c!1164501 (isEmpty!37229 s!2326))))

(declare-fun e!3877745 () Bool)

(assert (=> d!2002692 (= (matchZipper!2317 lt!2371994 s!2326) e!3877745)))

(declare-fun b!6388648 () Bool)

(assert (=> b!6388648 (= e!3877745 (nullableZipper!2070 lt!2371994))))

(declare-fun b!6388649 () Bool)

(assert (=> b!6388649 (= e!3877745 (matchZipper!2317 (derivationStepZipper!2271 lt!2371994 (head!13102 s!2326)) (tail!12187 s!2326)))))

(assert (= (and d!2002692 c!1164501) b!6388648))

(assert (= (and d!2002692 (not c!1164501)) b!6388649))

(assert (=> d!2002692 m!7187676))

(declare-fun m!7187784 () Bool)

(assert (=> b!6388648 m!7187784))

(assert (=> b!6388649 m!7187678))

(assert (=> b!6388649 m!7187678))

(declare-fun m!7187786 () Bool)

(assert (=> b!6388649 m!7187786))

(assert (=> b!6388649 m!7187682))

(assert (=> b!6388649 m!7187786))

(assert (=> b!6388649 m!7187682))

(declare-fun m!7187788 () Bool)

(assert (=> b!6388649 m!7187788))

(assert (=> b!6387791 d!2002692))

(declare-fun d!2002694 () Bool)

(declare-fun c!1164502 () Bool)

(assert (=> d!2002694 (= c!1164502 (isEmpty!37229 (t!378821 s!2326)))))

(declare-fun e!3877746 () Bool)

(assert (=> d!2002694 (= (matchZipper!2317 lt!2371981 (t!378821 s!2326)) e!3877746)))

(declare-fun b!6388650 () Bool)

(assert (=> b!6388650 (= e!3877746 (nullableZipper!2070 lt!2371981))))

(declare-fun b!6388651 () Bool)

(assert (=> b!6388651 (= e!3877746 (matchZipper!2317 (derivationStepZipper!2271 lt!2371981 (head!13102 (t!378821 s!2326))) (tail!12187 (t!378821 s!2326))))))

(assert (= (and d!2002694 c!1164502) b!6388650))

(assert (= (and d!2002694 (not c!1164502)) b!6388651))

(assert (=> d!2002694 m!7187508))

(declare-fun m!7187790 () Bool)

(assert (=> b!6388650 m!7187790))

(assert (=> b!6388651 m!7187512))

(assert (=> b!6388651 m!7187512))

(declare-fun m!7187792 () Bool)

(assert (=> b!6388651 m!7187792))

(assert (=> b!6388651 m!7187516))

(assert (=> b!6388651 m!7187792))

(assert (=> b!6388651 m!7187516))

(declare-fun m!7187794 () Bool)

(assert (=> b!6388651 m!7187794))

(assert (=> b!6387791 d!2002694))

(declare-fun d!2002696 () Bool)

(assert (=> d!2002696 (= (get!22541 lt!2371980) (v!52364 lt!2371980))))

(assert (=> b!6387793 d!2002696))

(declare-fun bs!1598819 () Bool)

(declare-fun d!2002698 () Bool)

(assert (= bs!1598819 (and d!2002698 b!6387825)))

(declare-fun lambda!352671 () Int)

(assert (=> bs!1598819 (not (= lambda!352671 lambda!352582))))

(declare-fun bs!1598820 () Bool)

(assert (= bs!1598820 (and d!2002698 b!6387793)))

(assert (=> bs!1598820 (not (= lambda!352671 lambda!352585))))

(declare-fun bs!1598821 () Bool)

(assert (= bs!1598821 (and d!2002698 b!6388533)))

(assert (=> bs!1598821 (not (= lambda!352671 lambda!352648))))

(assert (=> bs!1598820 (= lambda!352671 lambda!352584)))

(assert (=> bs!1598819 (= (= lt!2371972 (regOne!33122 r!7292)) (= lambda!352671 lambda!352581))))

(declare-fun bs!1598822 () Bool)

(assert (= bs!1598822 (and d!2002698 b!6388525)))

(assert (=> bs!1598822 (not (= lambda!352671 lambda!352647))))

(assert (=> d!2002698 true))

(assert (=> d!2002698 true))

(assert (=> d!2002698 true))

(declare-fun lambda!352672 () Int)

(assert (=> bs!1598819 (= (= lt!2371972 (regOne!33122 r!7292)) (= lambda!352672 lambda!352582))))

(declare-fun bs!1598823 () Bool)

(assert (= bs!1598823 d!2002698))

(assert (=> bs!1598823 (not (= lambda!352672 lambda!352671))))

(assert (=> bs!1598820 (= lambda!352672 lambda!352585)))

(assert (=> bs!1598821 (= (= lt!2371972 (regOne!33122 r!7292)) (= lambda!352672 lambda!352648))))

(assert (=> bs!1598820 (not (= lambda!352672 lambda!352584))))

(assert (=> bs!1598819 (not (= lambda!352672 lambda!352581))))

(assert (=> bs!1598822 (not (= lambda!352672 lambda!352647))))

(assert (=> d!2002698 true))

(assert (=> d!2002698 true))

(assert (=> d!2002698 true))

(assert (=> d!2002698 (= (Exists!3375 lambda!352671) (Exists!3375 lambda!352672))))

(declare-fun lt!2372118 () Unit!158551)

(declare-fun choose!47540 (Regex!16305 Regex!16305 List!65215) Unit!158551)

(assert (=> d!2002698 (= lt!2372118 (choose!47540 lt!2371972 (regTwo!33122 r!7292) s!2326))))

(assert (=> d!2002698 (validRegex!8041 lt!2371972)))

(assert (=> d!2002698 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1912 lt!2371972 (regTwo!33122 r!7292) s!2326) lt!2372118)))

(declare-fun m!7187796 () Bool)

(assert (=> bs!1598823 m!7187796))

(declare-fun m!7187798 () Bool)

(assert (=> bs!1598823 m!7187798))

(declare-fun m!7187800 () Bool)

(assert (=> bs!1598823 m!7187800))

(assert (=> bs!1598823 m!7187484))

(assert (=> b!6387793 d!2002698))

(declare-fun d!2002700 () Bool)

(declare-fun choose!47541 (Int) Bool)

(assert (=> d!2002700 (= (Exists!3375 lambda!352585) (choose!47541 lambda!352585))))

(declare-fun bs!1598824 () Bool)

(assert (= bs!1598824 d!2002700))

(declare-fun m!7187802 () Bool)

(assert (=> bs!1598824 m!7187802))

(assert (=> b!6387793 d!2002700))

(declare-fun b!6388670 () Bool)

(declare-fun res!2627868 () Bool)

(declare-fun e!3877755 () Bool)

(assert (=> b!6388670 (=> (not res!2627868) (not e!3877755))))

(declare-fun lt!2372121 () List!65215)

(declare-fun size!40364 (List!65215) Int)

(assert (=> b!6388670 (= res!2627868 (= (size!40364 lt!2372121) (+ (size!40364 (_1!36587 lt!2371982)) (size!40364 (_2!36587 lt!2371982)))))))

(declare-fun b!6388671 () Bool)

(assert (=> b!6388671 (= e!3877755 (or (not (= (_2!36587 lt!2371982) Nil!65091)) (= lt!2372121 (_1!36587 lt!2371982))))))

(declare-fun b!6388669 () Bool)

(declare-fun e!3877756 () List!65215)

(assert (=> b!6388669 (= e!3877756 (Cons!65091 (h!71539 (_1!36587 lt!2371982)) (++!14373 (t!378821 (_1!36587 lt!2371982)) (_2!36587 lt!2371982))))))

(declare-fun b!6388668 () Bool)

(assert (=> b!6388668 (= e!3877756 (_2!36587 lt!2371982))))

(declare-fun d!2002702 () Bool)

(assert (=> d!2002702 e!3877755))

(declare-fun res!2627867 () Bool)

(assert (=> d!2002702 (=> (not res!2627867) (not e!3877755))))

(declare-fun content!12324 (List!65215) (InoxSet C!32880))

(assert (=> d!2002702 (= res!2627867 (= (content!12324 lt!2372121) ((_ map or) (content!12324 (_1!36587 lt!2371982)) (content!12324 (_2!36587 lt!2371982)))))))

(assert (=> d!2002702 (= lt!2372121 e!3877756)))

(declare-fun c!1164505 () Bool)

(assert (=> d!2002702 (= c!1164505 ((_ is Nil!65091) (_1!36587 lt!2371982)))))

(assert (=> d!2002702 (= (++!14373 (_1!36587 lt!2371982) (_2!36587 lt!2371982)) lt!2372121)))

(assert (= (and d!2002702 c!1164505) b!6388668))

(assert (= (and d!2002702 (not c!1164505)) b!6388669))

(assert (= (and d!2002702 res!2627867) b!6388670))

(assert (= (and b!6388670 res!2627868) b!6388671))

(declare-fun m!7187804 () Bool)

(assert (=> b!6388670 m!7187804))

(declare-fun m!7187806 () Bool)

(assert (=> b!6388670 m!7187806))

(declare-fun m!7187808 () Bool)

(assert (=> b!6388670 m!7187808))

(declare-fun m!7187810 () Bool)

(assert (=> b!6388669 m!7187810))

(declare-fun m!7187812 () Bool)

(assert (=> d!2002702 m!7187812))

(declare-fun m!7187814 () Bool)

(assert (=> d!2002702 m!7187814))

(declare-fun m!7187816 () Bool)

(assert (=> d!2002702 m!7187816))

(assert (=> b!6387793 d!2002702))

(declare-fun b!6388690 () Bool)

(declare-fun e!3877769 () Option!16196)

(assert (=> b!6388690 (= e!3877769 (Some!16195 (tuple2!66569 Nil!65091 s!2326)))))

(declare-fun b!6388692 () Bool)

(declare-fun e!3877771 () Bool)

(declare-fun lt!2372129 () Option!16196)

(assert (=> b!6388692 (= e!3877771 (not (isDefined!12899 lt!2372129)))))

(declare-fun b!6388693 () Bool)

(declare-fun e!3877770 () Option!16196)

(assert (=> b!6388693 (= e!3877769 e!3877770)))

(declare-fun c!1164511 () Bool)

(assert (=> b!6388693 (= c!1164511 ((_ is Nil!65091) s!2326))))

(declare-fun b!6388694 () Bool)

(assert (=> b!6388694 (= e!3877770 None!16195)))

(declare-fun d!2002704 () Bool)

(assert (=> d!2002704 e!3877771))

(declare-fun res!2627883 () Bool)

(assert (=> d!2002704 (=> res!2627883 e!3877771)))

(declare-fun e!3877768 () Bool)

(assert (=> d!2002704 (= res!2627883 e!3877768)))

(declare-fun res!2627882 () Bool)

(assert (=> d!2002704 (=> (not res!2627882) (not e!3877768))))

(assert (=> d!2002704 (= res!2627882 (isDefined!12899 lt!2372129))))

(assert (=> d!2002704 (= lt!2372129 e!3877769)))

(declare-fun c!1164510 () Bool)

(declare-fun e!3877767 () Bool)

(assert (=> d!2002704 (= c!1164510 e!3877767)))

(declare-fun res!2627879 () Bool)

(assert (=> d!2002704 (=> (not res!2627879) (not e!3877767))))

(assert (=> d!2002704 (= res!2627879 (matchR!8488 lt!2371972 Nil!65091))))

(assert (=> d!2002704 (validRegex!8041 lt!2371972)))

(assert (=> d!2002704 (= (findConcatSeparation!2610 lt!2371972 (regTwo!33122 r!7292) Nil!65091 s!2326 s!2326) lt!2372129)))

(declare-fun b!6388691 () Bool)

(declare-fun res!2627880 () Bool)

(assert (=> b!6388691 (=> (not res!2627880) (not e!3877768))))

(assert (=> b!6388691 (= res!2627880 (matchR!8488 lt!2371972 (_1!36587 (get!22541 lt!2372129))))))

(declare-fun b!6388695 () Bool)

(declare-fun lt!2372130 () Unit!158551)

(declare-fun lt!2372128 () Unit!158551)

(assert (=> b!6388695 (= lt!2372130 lt!2372128)))

(assert (=> b!6388695 (= (++!14373 (++!14373 Nil!65091 (Cons!65091 (h!71539 s!2326) Nil!65091)) (t!378821 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2468 (List!65215 C!32880 List!65215 List!65215) Unit!158551)

(assert (=> b!6388695 (= lt!2372128 (lemmaMoveElementToOtherListKeepsConcatEq!2468 Nil!65091 (h!71539 s!2326) (t!378821 s!2326) s!2326))))

(assert (=> b!6388695 (= e!3877770 (findConcatSeparation!2610 lt!2371972 (regTwo!33122 r!7292) (++!14373 Nil!65091 (Cons!65091 (h!71539 s!2326) Nil!65091)) (t!378821 s!2326) s!2326))))

(declare-fun b!6388696 () Bool)

(assert (=> b!6388696 (= e!3877768 (= (++!14373 (_1!36587 (get!22541 lt!2372129)) (_2!36587 (get!22541 lt!2372129))) s!2326))))

(declare-fun b!6388697 () Bool)

(assert (=> b!6388697 (= e!3877767 (matchR!8488 (regTwo!33122 r!7292) s!2326))))

(declare-fun b!6388698 () Bool)

(declare-fun res!2627881 () Bool)

(assert (=> b!6388698 (=> (not res!2627881) (not e!3877768))))

(assert (=> b!6388698 (= res!2627881 (matchR!8488 (regTwo!33122 r!7292) (_2!36587 (get!22541 lt!2372129))))))

(assert (= (and d!2002704 res!2627879) b!6388697))

(assert (= (and d!2002704 c!1164510) b!6388690))

(assert (= (and d!2002704 (not c!1164510)) b!6388693))

(assert (= (and b!6388693 c!1164511) b!6388694))

(assert (= (and b!6388693 (not c!1164511)) b!6388695))

(assert (= (and d!2002704 res!2627882) b!6388691))

(assert (= (and b!6388691 res!2627880) b!6388698))

(assert (= (and b!6388698 res!2627881) b!6388696))

(assert (= (and d!2002704 (not res!2627883)) b!6388692))

(declare-fun m!7187818 () Bool)

(assert (=> d!2002704 m!7187818))

(declare-fun m!7187820 () Bool)

(assert (=> d!2002704 m!7187820))

(assert (=> d!2002704 m!7187484))

(declare-fun m!7187822 () Bool)

(assert (=> b!6388695 m!7187822))

(assert (=> b!6388695 m!7187822))

(declare-fun m!7187824 () Bool)

(assert (=> b!6388695 m!7187824))

(declare-fun m!7187826 () Bool)

(assert (=> b!6388695 m!7187826))

(assert (=> b!6388695 m!7187822))

(declare-fun m!7187828 () Bool)

(assert (=> b!6388695 m!7187828))

(declare-fun m!7187830 () Bool)

(assert (=> b!6388696 m!7187830))

(declare-fun m!7187832 () Bool)

(assert (=> b!6388696 m!7187832))

(assert (=> b!6388692 m!7187818))

(assert (=> b!6388698 m!7187830))

(declare-fun m!7187834 () Bool)

(assert (=> b!6388698 m!7187834))

(declare-fun m!7187836 () Bool)

(assert (=> b!6388697 m!7187836))

(assert (=> b!6388691 m!7187830))

(declare-fun m!7187838 () Bool)

(assert (=> b!6388691 m!7187838))

(assert (=> b!6387793 d!2002704))

(declare-fun d!2002706 () Bool)

(declare-fun isEmpty!37232 (Option!16196) Bool)

(assert (=> d!2002706 (= (isDefined!12899 lt!2371980) (not (isEmpty!37232 lt!2371980)))))

(declare-fun bs!1598825 () Bool)

(assert (= bs!1598825 d!2002706))

(declare-fun m!7187840 () Bool)

(assert (=> bs!1598825 m!7187840))

(assert (=> b!6387793 d!2002706))

(declare-fun d!2002708 () Bool)

(assert (=> d!2002708 (= (Exists!3375 lambda!352584) (choose!47541 lambda!352584))))

(declare-fun bs!1598826 () Bool)

(assert (= bs!1598826 d!2002708))

(declare-fun m!7187842 () Bool)

(assert (=> bs!1598826 m!7187842))

(assert (=> b!6387793 d!2002708))

(declare-fun bs!1598827 () Bool)

(declare-fun d!2002710 () Bool)

(assert (= bs!1598827 (and d!2002710 b!6387825)))

(declare-fun lambda!352675 () Int)

(assert (=> bs!1598827 (not (= lambda!352675 lambda!352582))))

(declare-fun bs!1598828 () Bool)

(assert (= bs!1598828 (and d!2002710 d!2002698)))

(assert (=> bs!1598828 (= lambda!352675 lambda!352671)))

(declare-fun bs!1598829 () Bool)

(assert (= bs!1598829 (and d!2002710 b!6388533)))

(assert (=> bs!1598829 (not (= lambda!352675 lambda!352648))))

(declare-fun bs!1598830 () Bool)

(assert (= bs!1598830 (and d!2002710 b!6387793)))

(assert (=> bs!1598830 (= lambda!352675 lambda!352584)))

(assert (=> bs!1598830 (not (= lambda!352675 lambda!352585))))

(assert (=> bs!1598828 (not (= lambda!352675 lambda!352672))))

(assert (=> bs!1598827 (= (= lt!2371972 (regOne!33122 r!7292)) (= lambda!352675 lambda!352581))))

(declare-fun bs!1598831 () Bool)

(assert (= bs!1598831 (and d!2002710 b!6388525)))

(assert (=> bs!1598831 (not (= lambda!352675 lambda!352647))))

(assert (=> d!2002710 true))

(assert (=> d!2002710 true))

(assert (=> d!2002710 true))

(assert (=> d!2002710 (= (isDefined!12899 (findConcatSeparation!2610 lt!2371972 (regTwo!33122 r!7292) Nil!65091 s!2326 s!2326)) (Exists!3375 lambda!352675))))

(declare-fun lt!2372133 () Unit!158551)

(declare-fun choose!47542 (Regex!16305 Regex!16305 List!65215) Unit!158551)

(assert (=> d!2002710 (= lt!2372133 (choose!47542 lt!2371972 (regTwo!33122 r!7292) s!2326))))

(assert (=> d!2002710 (validRegex!8041 lt!2371972)))

(assert (=> d!2002710 (= (lemmaFindConcatSeparationEquivalentToExists!2374 lt!2371972 (regTwo!33122 r!7292) s!2326) lt!2372133)))

(declare-fun bs!1598832 () Bool)

(assert (= bs!1598832 d!2002710))

(assert (=> bs!1598832 m!7187064))

(declare-fun m!7187844 () Bool)

(assert (=> bs!1598832 m!7187844))

(declare-fun m!7187846 () Bool)

(assert (=> bs!1598832 m!7187846))

(assert (=> bs!1598832 m!7187064))

(declare-fun m!7187848 () Bool)

(assert (=> bs!1598832 m!7187848))

(assert (=> bs!1598832 m!7187484))

(assert (=> b!6387793 d!2002710))

(declare-fun bs!1598833 () Bool)

(declare-fun d!2002712 () Bool)

(assert (= bs!1598833 (and d!2002712 d!2002546)))

(declare-fun lambda!352676 () Int)

(assert (=> bs!1598833 (= lambda!352676 lambda!352612)))

(declare-fun bs!1598834 () Bool)

(assert (= bs!1598834 (and d!2002712 d!2002556)))

(assert (=> bs!1598834 (= lambda!352676 lambda!352615)))

(declare-fun bs!1598835 () Bool)

(assert (= bs!1598835 (and d!2002712 d!2002674)))

(assert (=> bs!1598835 (= lambda!352676 lambda!352666)))

(assert (=> d!2002712 (= (inv!84009 lt!2371961) (forall!15483 (exprs!6189 lt!2371961) lambda!352676))))

(declare-fun bs!1598836 () Bool)

(assert (= bs!1598836 d!2002712))

(declare-fun m!7187850 () Bool)

(assert (=> bs!1598836 m!7187850))

(assert (=> b!6387819 d!2002712))

(declare-fun bs!1598837 () Bool)

(declare-fun d!2002714 () Bool)

(assert (= bs!1598837 (and d!2002714 d!2002546)))

(declare-fun lambda!352677 () Int)

(assert (=> bs!1598837 (= lambda!352677 lambda!352612)))

(declare-fun bs!1598838 () Bool)

(assert (= bs!1598838 (and d!2002714 d!2002556)))

(assert (=> bs!1598838 (= lambda!352677 lambda!352615)))

(declare-fun bs!1598839 () Bool)

(assert (= bs!1598839 (and d!2002714 d!2002674)))

(assert (=> bs!1598839 (= lambda!352677 lambda!352666)))

(declare-fun bs!1598840 () Bool)

(assert (= bs!1598840 (and d!2002714 d!2002712)))

(assert (=> bs!1598840 (= lambda!352677 lambda!352676)))

(assert (=> d!2002714 (= (inv!84009 (h!71540 zl!343)) (forall!15483 (exprs!6189 (h!71540 zl!343)) lambda!352677))))

(declare-fun bs!1598841 () Bool)

(assert (= bs!1598841 d!2002714))

(declare-fun m!7187852 () Bool)

(assert (=> bs!1598841 m!7187852))

(assert (=> b!6387818 d!2002714))

(declare-fun d!2002716 () Bool)

(assert (=> d!2002716 (= (isEmpty!37229 (_1!36587 lt!2371982)) ((_ is Nil!65091) (_1!36587 lt!2371982)))))

(assert (=> b!6387799 d!2002716))

(declare-fun d!2002718 () Bool)

(assert (=> d!2002718 (= (flatMap!1810 lt!2371994 lambda!352583) (choose!47538 lt!2371994 lambda!352583))))

(declare-fun bs!1598842 () Bool)

(assert (= bs!1598842 d!2002718))

(declare-fun m!7187854 () Bool)

(assert (=> bs!1598842 m!7187854))

(assert (=> b!6387820 d!2002718))

(declare-fun b!6388703 () Bool)

(declare-fun e!3877775 () (InoxSet Context!11378))

(assert (=> b!6388703 (= e!3877775 ((as const (Array Context!11378 Bool)) false))))

(declare-fun d!2002720 () Bool)

(declare-fun c!1164512 () Bool)

(declare-fun e!3877776 () Bool)

(assert (=> d!2002720 (= c!1164512 e!3877776)))

(declare-fun res!2627888 () Bool)

(assert (=> d!2002720 (=> (not res!2627888) (not e!3877776))))

(assert (=> d!2002720 (= res!2627888 ((_ is Cons!65090) (exprs!6189 lt!2371974)))))

(declare-fun e!3877774 () (InoxSet Context!11378))

(assert (=> d!2002720 (= (derivationStepZipperUp!1479 lt!2371974 (h!71539 s!2326)) e!3877774)))

(declare-fun bm!546228 () Bool)

(declare-fun call!546233 () (InoxSet Context!11378))

(assert (=> bm!546228 (= call!546233 (derivationStepZipperDown!1553 (h!71538 (exprs!6189 lt!2371974)) (Context!11379 (t!378820 (exprs!6189 lt!2371974))) (h!71539 s!2326)))))

(declare-fun b!6388704 () Bool)

(assert (=> b!6388704 (= e!3877776 (nullable!6298 (h!71538 (exprs!6189 lt!2371974))))))

(declare-fun b!6388705 () Bool)

(assert (=> b!6388705 (= e!3877774 ((_ map or) call!546233 (derivationStepZipperUp!1479 (Context!11379 (t!378820 (exprs!6189 lt!2371974))) (h!71539 s!2326))))))

(declare-fun b!6388706 () Bool)

(assert (=> b!6388706 (= e!3877775 call!546233)))

(declare-fun b!6388707 () Bool)

(assert (=> b!6388707 (= e!3877774 e!3877775)))

(declare-fun c!1164513 () Bool)

(assert (=> b!6388707 (= c!1164513 ((_ is Cons!65090) (exprs!6189 lt!2371974)))))

(assert (= (and d!2002720 res!2627888) b!6388704))

(assert (= (and d!2002720 c!1164512) b!6388705))

(assert (= (and d!2002720 (not c!1164512)) b!6388707))

(assert (= (and b!6388707 c!1164513) b!6388706))

(assert (= (and b!6388707 (not c!1164513)) b!6388703))

(assert (= (or b!6388705 b!6388706) bm!546228))

(declare-fun m!7187856 () Bool)

(assert (=> bm!546228 m!7187856))

(declare-fun m!7187858 () Bool)

(assert (=> b!6388704 m!7187858))

(declare-fun m!7187860 () Bool)

(assert (=> b!6388705 m!7187860))

(assert (=> b!6387820 d!2002720))

(declare-fun d!2002722 () Bool)

(assert (=> d!2002722 (= (flatMap!1810 lt!2371994 lambda!352583) (dynLambda!25825 lambda!352583 lt!2371974))))

(declare-fun lt!2372134 () Unit!158551)

(assert (=> d!2002722 (= lt!2372134 (choose!47539 lt!2371994 lt!2371974 lambda!352583))))

(assert (=> d!2002722 (= lt!2371994 (store ((as const (Array Context!11378 Bool)) false) lt!2371974 true))))

(assert (=> d!2002722 (= (lemmaFlatMapOnSingletonSet!1336 lt!2371994 lt!2371974 lambda!352583) lt!2372134)))

(declare-fun b_lambda!242725 () Bool)

(assert (=> (not b_lambda!242725) (not d!2002722)))

(declare-fun bs!1598843 () Bool)

(assert (= bs!1598843 d!2002722))

(assert (=> bs!1598843 m!7187100))

(declare-fun m!7187862 () Bool)

(assert (=> bs!1598843 m!7187862))

(declare-fun m!7187864 () Bool)

(assert (=> bs!1598843 m!7187864))

(assert (=> bs!1598843 m!7187104))

(assert (=> b!6387820 d!2002722))

(declare-fun bs!1598844 () Bool)

(declare-fun d!2002724 () Bool)

(assert (= bs!1598844 (and d!2002724 b!6387795)))

(declare-fun lambda!352678 () Int)

(assert (=> bs!1598844 (= lambda!352678 lambda!352583)))

(declare-fun bs!1598845 () Bool)

(assert (= bs!1598845 (and d!2002724 d!2002666)))

(assert (=> bs!1598845 (= lambda!352678 lambda!352663)))

(assert (=> d!2002724 true))

(assert (=> d!2002724 (= (derivationStepZipper!2271 lt!2371994 (h!71539 s!2326)) (flatMap!1810 lt!2371994 lambda!352678))))

(declare-fun bs!1598846 () Bool)

(assert (= bs!1598846 d!2002724))

(declare-fun m!7187866 () Bool)

(assert (=> bs!1598846 m!7187866))

(assert (=> b!6387820 d!2002724))

(declare-fun d!2002726 () Bool)

(assert (=> d!2002726 (= (isEmpty!37228 (t!378820 (exprs!6189 (h!71540 zl!343)))) ((_ is Nil!65090) (t!378820 (exprs!6189 (h!71540 zl!343)))))))

(assert (=> b!6387796 d!2002726))

(declare-fun d!2002728 () Bool)

(declare-fun lt!2372135 () Regex!16305)

(assert (=> d!2002728 (validRegex!8041 lt!2372135)))

(assert (=> d!2002728 (= lt!2372135 (generalisedUnion!2149 (unfocusZipperList!1726 (Cons!65092 lt!2371979 Nil!65092))))))

(assert (=> d!2002728 (= (unfocusZipper!2047 (Cons!65092 lt!2371979 Nil!65092)) lt!2372135)))

(declare-fun bs!1598847 () Bool)

(assert (= bs!1598847 d!2002728))

(declare-fun m!7187868 () Bool)

(assert (=> bs!1598847 m!7187868))

(declare-fun m!7187870 () Bool)

(assert (=> bs!1598847 m!7187870))

(assert (=> bs!1598847 m!7187870))

(declare-fun m!7187872 () Bool)

(assert (=> bs!1598847 m!7187872))

(assert (=> b!6387817 d!2002728))

(declare-fun d!2002730 () Bool)

(assert (=> d!2002730 (= (flatMap!1810 lt!2371988 lambda!352583) (choose!47538 lt!2371988 lambda!352583))))

(declare-fun bs!1598848 () Bool)

(assert (= bs!1598848 d!2002730))

(declare-fun m!7187874 () Bool)

(assert (=> bs!1598848 m!7187874))

(assert (=> b!6387817 d!2002730))

(declare-fun d!2002732 () Bool)

(assert (=> d!2002732 (= (flatMap!1810 lt!2371986 lambda!352583) (choose!47538 lt!2371986 lambda!352583))))

(declare-fun bs!1598849 () Bool)

(assert (= bs!1598849 d!2002732))

(declare-fun m!7187876 () Bool)

(assert (=> bs!1598849 m!7187876))

(assert (=> b!6387817 d!2002732))

(declare-fun b!6388708 () Bool)

(declare-fun e!3877778 () (InoxSet Context!11378))

(assert (=> b!6388708 (= e!3877778 ((as const (Array Context!11378 Bool)) false))))

(declare-fun d!2002734 () Bool)

(declare-fun c!1164514 () Bool)

(declare-fun e!3877779 () Bool)

(assert (=> d!2002734 (= c!1164514 e!3877779)))

(declare-fun res!2627889 () Bool)

(assert (=> d!2002734 (=> (not res!2627889) (not e!3877779))))

(assert (=> d!2002734 (= res!2627889 ((_ is Cons!65090) (exprs!6189 lt!2371979)))))

(declare-fun e!3877777 () (InoxSet Context!11378))

(assert (=> d!2002734 (= (derivationStepZipperUp!1479 lt!2371979 (h!71539 s!2326)) e!3877777)))

(declare-fun bm!546229 () Bool)

(declare-fun call!546234 () (InoxSet Context!11378))

(assert (=> bm!546229 (= call!546234 (derivationStepZipperDown!1553 (h!71538 (exprs!6189 lt!2371979)) (Context!11379 (t!378820 (exprs!6189 lt!2371979))) (h!71539 s!2326)))))

(declare-fun b!6388709 () Bool)

(assert (=> b!6388709 (= e!3877779 (nullable!6298 (h!71538 (exprs!6189 lt!2371979))))))

(declare-fun b!6388710 () Bool)

(assert (=> b!6388710 (= e!3877777 ((_ map or) call!546234 (derivationStepZipperUp!1479 (Context!11379 (t!378820 (exprs!6189 lt!2371979))) (h!71539 s!2326))))))

(declare-fun b!6388711 () Bool)

(assert (=> b!6388711 (= e!3877778 call!546234)))

(declare-fun b!6388712 () Bool)

(assert (=> b!6388712 (= e!3877777 e!3877778)))

(declare-fun c!1164515 () Bool)

(assert (=> b!6388712 (= c!1164515 ((_ is Cons!65090) (exprs!6189 lt!2371979)))))

(assert (= (and d!2002734 res!2627889) b!6388709))

(assert (= (and d!2002734 c!1164514) b!6388710))

(assert (= (and d!2002734 (not c!1164514)) b!6388712))

(assert (= (and b!6388712 c!1164515) b!6388711))

(assert (= (and b!6388712 (not c!1164515)) b!6388708))

(assert (= (or b!6388710 b!6388711) bm!546229))

(declare-fun m!7187878 () Bool)

(assert (=> bm!546229 m!7187878))

(declare-fun m!7187880 () Bool)

(assert (=> b!6388709 m!7187880))

(declare-fun m!7187882 () Bool)

(assert (=> b!6388710 m!7187882))

(assert (=> b!6387817 d!2002734))

(declare-fun b!6388713 () Bool)

(declare-fun e!3877781 () (InoxSet Context!11378))

(assert (=> b!6388713 (= e!3877781 ((as const (Array Context!11378 Bool)) false))))

(declare-fun d!2002736 () Bool)

(declare-fun c!1164516 () Bool)

(declare-fun e!3877782 () Bool)

(assert (=> d!2002736 (= c!1164516 e!3877782)))

(declare-fun res!2627890 () Bool)

(assert (=> d!2002736 (=> (not res!2627890) (not e!3877782))))

(assert (=> d!2002736 (= res!2627890 ((_ is Cons!65090) (exprs!6189 lt!2371996)))))

(declare-fun e!3877780 () (InoxSet Context!11378))

(assert (=> d!2002736 (= (derivationStepZipperUp!1479 lt!2371996 (h!71539 s!2326)) e!3877780)))

(declare-fun bm!546230 () Bool)

(declare-fun call!546235 () (InoxSet Context!11378))

(assert (=> bm!546230 (= call!546235 (derivationStepZipperDown!1553 (h!71538 (exprs!6189 lt!2371996)) (Context!11379 (t!378820 (exprs!6189 lt!2371996))) (h!71539 s!2326)))))

(declare-fun b!6388714 () Bool)

(assert (=> b!6388714 (= e!3877782 (nullable!6298 (h!71538 (exprs!6189 lt!2371996))))))

(declare-fun b!6388715 () Bool)

(assert (=> b!6388715 (= e!3877780 ((_ map or) call!546235 (derivationStepZipperUp!1479 (Context!11379 (t!378820 (exprs!6189 lt!2371996))) (h!71539 s!2326))))))

(declare-fun b!6388716 () Bool)

(assert (=> b!6388716 (= e!3877781 call!546235)))

(declare-fun b!6388717 () Bool)

(assert (=> b!6388717 (= e!3877780 e!3877781)))

(declare-fun c!1164517 () Bool)

(assert (=> b!6388717 (= c!1164517 ((_ is Cons!65090) (exprs!6189 lt!2371996)))))

(assert (= (and d!2002736 res!2627890) b!6388714))

(assert (= (and d!2002736 c!1164516) b!6388715))

(assert (= (and d!2002736 (not c!1164516)) b!6388717))

(assert (= (and b!6388717 c!1164517) b!6388716))

(assert (= (and b!6388717 (not c!1164517)) b!6388713))

(assert (= (or b!6388715 b!6388716) bm!546230))

(declare-fun m!7187884 () Bool)

(assert (=> bm!546230 m!7187884))

(declare-fun m!7187886 () Bool)

(assert (=> b!6388714 m!7187886))

(declare-fun m!7187888 () Bool)

(assert (=> b!6388715 m!7187888))

(assert (=> b!6387817 d!2002736))

(declare-fun d!2002738 () Bool)

(assert (=> d!2002738 (= (flatMap!1810 lt!2371986 lambda!352583) (dynLambda!25825 lambda!352583 lt!2371996))))

(declare-fun lt!2372136 () Unit!158551)

(assert (=> d!2002738 (= lt!2372136 (choose!47539 lt!2371986 lt!2371996 lambda!352583))))

(assert (=> d!2002738 (= lt!2371986 (store ((as const (Array Context!11378 Bool)) false) lt!2371996 true))))

(assert (=> d!2002738 (= (lemmaFlatMapOnSingletonSet!1336 lt!2371986 lt!2371996 lambda!352583) lt!2372136)))

(declare-fun b_lambda!242727 () Bool)

(assert (=> (not b_lambda!242727) (not d!2002738)))

(declare-fun bs!1598850 () Bool)

(assert (= bs!1598850 d!2002738))

(assert (=> bs!1598850 m!7187154))

(declare-fun m!7187890 () Bool)

(assert (=> bs!1598850 m!7187890))

(declare-fun m!7187892 () Bool)

(assert (=> bs!1598850 m!7187892))

(assert (=> bs!1598850 m!7187144))

(assert (=> b!6387817 d!2002738))

(declare-fun d!2002740 () Bool)

(assert (=> d!2002740 (= (flatMap!1810 lt!2371988 lambda!352583) (dynLambda!25825 lambda!352583 lt!2371979))))

(declare-fun lt!2372137 () Unit!158551)

(assert (=> d!2002740 (= lt!2372137 (choose!47539 lt!2371988 lt!2371979 lambda!352583))))

(assert (=> d!2002740 (= lt!2371988 (store ((as const (Array Context!11378 Bool)) false) lt!2371979 true))))

(assert (=> d!2002740 (= (lemmaFlatMapOnSingletonSet!1336 lt!2371988 lt!2371979 lambda!352583) lt!2372137)))

(declare-fun b_lambda!242729 () Bool)

(assert (=> (not b_lambda!242729) (not d!2002740)))

(declare-fun bs!1598851 () Bool)

(assert (= bs!1598851 d!2002740))

(assert (=> bs!1598851 m!7187146))

(declare-fun m!7187894 () Bool)

(assert (=> bs!1598851 m!7187894))

(declare-fun m!7187896 () Bool)

(assert (=> bs!1598851 m!7187896))

(assert (=> bs!1598851 m!7187158))

(assert (=> b!6387817 d!2002740))

(declare-fun bs!1598852 () Bool)

(declare-fun d!2002742 () Bool)

(assert (= bs!1598852 (and d!2002742 d!2002546)))

(declare-fun lambda!352681 () Int)

(assert (=> bs!1598852 (= lambda!352681 lambda!352612)))

(declare-fun bs!1598853 () Bool)

(assert (= bs!1598853 (and d!2002742 d!2002712)))

(assert (=> bs!1598853 (= lambda!352681 lambda!352676)))

(declare-fun bs!1598854 () Bool)

(assert (= bs!1598854 (and d!2002742 d!2002556)))

(assert (=> bs!1598854 (= lambda!352681 lambda!352615)))

(declare-fun bs!1598855 () Bool)

(assert (= bs!1598855 (and d!2002742 d!2002674)))

(assert (=> bs!1598855 (= lambda!352681 lambda!352666)))

(declare-fun bs!1598856 () Bool)

(assert (= bs!1598856 (and d!2002742 d!2002714)))

(assert (=> bs!1598856 (= lambda!352681 lambda!352677)))

(declare-fun b!6388738 () Bool)

(declare-fun e!3877798 () Bool)

(assert (=> b!6388738 (= e!3877798 (isEmpty!37228 (t!378820 (exprs!6189 (h!71540 zl!343)))))))

(declare-fun b!6388739 () Bool)

(declare-fun e!3877800 () Bool)

(declare-fun lt!2372140 () Regex!16305)

(declare-fun isEmptyExpr!1706 (Regex!16305) Bool)

(assert (=> b!6388739 (= e!3877800 (isEmptyExpr!1706 lt!2372140))))

(declare-fun b!6388740 () Bool)

(declare-fun e!3877795 () Bool)

(assert (=> b!6388740 (= e!3877795 (= lt!2372140 (head!13101 (exprs!6189 (h!71540 zl!343)))))))

(declare-fun b!6388741 () Bool)

(declare-fun e!3877796 () Regex!16305)

(assert (=> b!6388741 (= e!3877796 (Concat!25150 (h!71538 (exprs!6189 (h!71540 zl!343))) (generalisedConcat!1902 (t!378820 (exprs!6189 (h!71540 zl!343))))))))

(declare-fun b!6388742 () Bool)

(assert (=> b!6388742 (= e!3877796 EmptyExpr!16305)))

(declare-fun b!6388743 () Bool)

(declare-fun isConcat!1229 (Regex!16305) Bool)

(assert (=> b!6388743 (= e!3877795 (isConcat!1229 lt!2372140))))

(declare-fun b!6388744 () Bool)

(declare-fun e!3877797 () Bool)

(assert (=> b!6388744 (= e!3877797 e!3877800)))

(declare-fun c!1164528 () Bool)

(assert (=> b!6388744 (= c!1164528 (isEmpty!37228 (exprs!6189 (h!71540 zl!343))))))

(assert (=> d!2002742 e!3877797))

(declare-fun res!2627895 () Bool)

(assert (=> d!2002742 (=> (not res!2627895) (not e!3877797))))

(assert (=> d!2002742 (= res!2627895 (validRegex!8041 lt!2372140))))

(declare-fun e!3877799 () Regex!16305)

(assert (=> d!2002742 (= lt!2372140 e!3877799)))

(declare-fun c!1164527 () Bool)

(assert (=> d!2002742 (= c!1164527 e!3877798)))

(declare-fun res!2627896 () Bool)

(assert (=> d!2002742 (=> (not res!2627896) (not e!3877798))))

(assert (=> d!2002742 (= res!2627896 ((_ is Cons!65090) (exprs!6189 (h!71540 zl!343))))))

(assert (=> d!2002742 (forall!15483 (exprs!6189 (h!71540 zl!343)) lambda!352681)))

(assert (=> d!2002742 (= (generalisedConcat!1902 (exprs!6189 (h!71540 zl!343))) lt!2372140)))

(declare-fun b!6388745 () Bool)

(assert (=> b!6388745 (= e!3877799 e!3877796)))

(declare-fun c!1164526 () Bool)

(assert (=> b!6388745 (= c!1164526 ((_ is Cons!65090) (exprs!6189 (h!71540 zl!343))))))

(declare-fun b!6388746 () Bool)

(assert (=> b!6388746 (= e!3877800 e!3877795)))

(declare-fun c!1164529 () Bool)

(assert (=> b!6388746 (= c!1164529 (isEmpty!37228 (tail!12186 (exprs!6189 (h!71540 zl!343)))))))

(declare-fun b!6388747 () Bool)

(assert (=> b!6388747 (= e!3877799 (h!71538 (exprs!6189 (h!71540 zl!343))))))

(assert (= (and d!2002742 res!2627896) b!6388738))

(assert (= (and d!2002742 c!1164527) b!6388747))

(assert (= (and d!2002742 (not c!1164527)) b!6388745))

(assert (= (and b!6388745 c!1164526) b!6388741))

(assert (= (and b!6388745 (not c!1164526)) b!6388742))

(assert (= (and d!2002742 res!2627895) b!6388744))

(assert (= (and b!6388744 c!1164528) b!6388739))

(assert (= (and b!6388744 (not c!1164528)) b!6388746))

(assert (= (and b!6388746 c!1164529) b!6388740))

(assert (= (and b!6388746 (not c!1164529)) b!6388743))

(declare-fun m!7187898 () Bool)

(assert (=> b!6388746 m!7187898))

(assert (=> b!6388746 m!7187898))

(declare-fun m!7187900 () Bool)

(assert (=> b!6388746 m!7187900))

(declare-fun m!7187902 () Bool)

(assert (=> b!6388740 m!7187902))

(declare-fun m!7187904 () Bool)

(assert (=> b!6388744 m!7187904))

(declare-fun m!7187906 () Bool)

(assert (=> d!2002742 m!7187906))

(declare-fun m!7187908 () Bool)

(assert (=> d!2002742 m!7187908))

(declare-fun m!7187910 () Bool)

(assert (=> b!6388739 m!7187910))

(assert (=> b!6388741 m!7187134))

(assert (=> b!6388738 m!7187088))

(declare-fun m!7187912 () Bool)

(assert (=> b!6388743 m!7187912))

(assert (=> b!6387824 d!2002742))

(declare-fun e!3877803 () Bool)

(declare-fun d!2002744 () Bool)

(assert (=> d!2002744 (= (matchZipper!2317 ((_ map or) lt!2371991 lt!2371960) (t!378821 s!2326)) e!3877803)))

(declare-fun res!2627899 () Bool)

(assert (=> d!2002744 (=> res!2627899 e!3877803)))

(assert (=> d!2002744 (= res!2627899 (matchZipper!2317 lt!2371991 (t!378821 s!2326)))))

(declare-fun lt!2372143 () Unit!158551)

(declare-fun choose!47543 ((InoxSet Context!11378) (InoxSet Context!11378) List!65215) Unit!158551)

(assert (=> d!2002744 (= lt!2372143 (choose!47543 lt!2371991 lt!2371960 (t!378821 s!2326)))))

(assert (=> d!2002744 (= (lemmaZipperConcatMatchesSameAsBothZippers!1136 lt!2371991 lt!2371960 (t!378821 s!2326)) lt!2372143)))

(declare-fun b!6388750 () Bool)

(assert (=> b!6388750 (= e!3877803 (matchZipper!2317 lt!2371960 (t!378821 s!2326)))))

(assert (= (and d!2002744 (not res!2627899)) b!6388750))

(assert (=> d!2002744 m!7187110))

(assert (=> d!2002744 m!7187108))

(declare-fun m!7187914 () Bool)

(assert (=> d!2002744 m!7187914))

(assert (=> b!6388750 m!7187032))

(assert (=> b!6387805 d!2002744))

(declare-fun d!2002746 () Bool)

(declare-fun c!1164530 () Bool)

(assert (=> d!2002746 (= c!1164530 (isEmpty!37229 (t!378821 s!2326)))))

(declare-fun e!3877804 () Bool)

(assert (=> d!2002746 (= (matchZipper!2317 lt!2371991 (t!378821 s!2326)) e!3877804)))

(declare-fun b!6388751 () Bool)

(assert (=> b!6388751 (= e!3877804 (nullableZipper!2070 lt!2371991))))

(declare-fun b!6388752 () Bool)

(assert (=> b!6388752 (= e!3877804 (matchZipper!2317 (derivationStepZipper!2271 lt!2371991 (head!13102 (t!378821 s!2326))) (tail!12187 (t!378821 s!2326))))))

(assert (= (and d!2002746 c!1164530) b!6388751))

(assert (= (and d!2002746 (not c!1164530)) b!6388752))

(assert (=> d!2002746 m!7187508))

(declare-fun m!7187916 () Bool)

(assert (=> b!6388751 m!7187916))

(assert (=> b!6388752 m!7187512))

(assert (=> b!6388752 m!7187512))

(declare-fun m!7187918 () Bool)

(assert (=> b!6388752 m!7187918))

(assert (=> b!6388752 m!7187516))

(assert (=> b!6388752 m!7187918))

(assert (=> b!6388752 m!7187516))

(declare-fun m!7187920 () Bool)

(assert (=> b!6388752 m!7187920))

(assert (=> b!6387805 d!2002746))

(declare-fun d!2002748 () Bool)

(declare-fun c!1164531 () Bool)

(assert (=> d!2002748 (= c!1164531 (isEmpty!37229 (t!378821 s!2326)))))

(declare-fun e!3877805 () Bool)

(assert (=> d!2002748 (= (matchZipper!2317 ((_ map or) lt!2371991 lt!2371960) (t!378821 s!2326)) e!3877805)))

(declare-fun b!6388753 () Bool)

(assert (=> b!6388753 (= e!3877805 (nullableZipper!2070 ((_ map or) lt!2371991 lt!2371960)))))

(declare-fun b!6388754 () Bool)

(assert (=> b!6388754 (= e!3877805 (matchZipper!2317 (derivationStepZipper!2271 ((_ map or) lt!2371991 lt!2371960) (head!13102 (t!378821 s!2326))) (tail!12187 (t!378821 s!2326))))))

(assert (= (and d!2002748 c!1164531) b!6388753))

(assert (= (and d!2002748 (not c!1164531)) b!6388754))

(assert (=> d!2002748 m!7187508))

(declare-fun m!7187922 () Bool)

(assert (=> b!6388753 m!7187922))

(assert (=> b!6388754 m!7187512))

(assert (=> b!6388754 m!7187512))

(declare-fun m!7187924 () Bool)

(assert (=> b!6388754 m!7187924))

(assert (=> b!6388754 m!7187516))

(assert (=> b!6388754 m!7187924))

(assert (=> b!6388754 m!7187516))

(declare-fun m!7187926 () Bool)

(assert (=> b!6388754 m!7187926))

(assert (=> b!6387805 d!2002748))

(declare-fun d!2002750 () Bool)

(declare-fun lt!2372144 () Regex!16305)

(assert (=> d!2002750 (validRegex!8041 lt!2372144)))

(assert (=> d!2002750 (= lt!2372144 (generalisedUnion!2149 (unfocusZipperList!1726 zl!343)))))

(assert (=> d!2002750 (= (unfocusZipper!2047 zl!343) lt!2372144)))

(declare-fun bs!1598857 () Bool)

(assert (= bs!1598857 d!2002750))

(declare-fun m!7187928 () Bool)

(assert (=> bs!1598857 m!7187928))

(assert (=> bs!1598857 m!7187090))

(assert (=> bs!1598857 m!7187090))

(assert (=> bs!1598857 m!7187092))

(assert (=> b!6387806 d!2002750))

(declare-fun d!2002752 () Bool)

(assert (=> d!2002752 (= (Exists!3375 lambda!352581) (choose!47541 lambda!352581))))

(declare-fun bs!1598858 () Bool)

(assert (= bs!1598858 d!2002752))

(declare-fun m!7187930 () Bool)

(assert (=> bs!1598858 m!7187930))

(assert (=> b!6387825 d!2002752))

(declare-fun b!6388755 () Bool)

(declare-fun e!3877808 () Option!16196)

(assert (=> b!6388755 (= e!3877808 (Some!16195 (tuple2!66569 Nil!65091 s!2326)))))

(declare-fun b!6388757 () Bool)

(declare-fun e!3877810 () Bool)

(declare-fun lt!2372146 () Option!16196)

(assert (=> b!6388757 (= e!3877810 (not (isDefined!12899 lt!2372146)))))

(declare-fun b!6388758 () Bool)

(declare-fun e!3877809 () Option!16196)

(assert (=> b!6388758 (= e!3877808 e!3877809)))

(declare-fun c!1164533 () Bool)

(assert (=> b!6388758 (= c!1164533 ((_ is Nil!65091) s!2326))))

(declare-fun b!6388759 () Bool)

(assert (=> b!6388759 (= e!3877809 None!16195)))

(declare-fun d!2002754 () Bool)

(assert (=> d!2002754 e!3877810))

(declare-fun res!2627904 () Bool)

(assert (=> d!2002754 (=> res!2627904 e!3877810)))

(declare-fun e!3877807 () Bool)

(assert (=> d!2002754 (= res!2627904 e!3877807)))

(declare-fun res!2627903 () Bool)

(assert (=> d!2002754 (=> (not res!2627903) (not e!3877807))))

(assert (=> d!2002754 (= res!2627903 (isDefined!12899 lt!2372146))))

(assert (=> d!2002754 (= lt!2372146 e!3877808)))

(declare-fun c!1164532 () Bool)

(declare-fun e!3877806 () Bool)

(assert (=> d!2002754 (= c!1164532 e!3877806)))

(declare-fun res!2627900 () Bool)

(assert (=> d!2002754 (=> (not res!2627900) (not e!3877806))))

(assert (=> d!2002754 (= res!2627900 (matchR!8488 (regOne!33122 r!7292) Nil!65091))))

(assert (=> d!2002754 (validRegex!8041 (regOne!33122 r!7292))))

(assert (=> d!2002754 (= (findConcatSeparation!2610 (regOne!33122 r!7292) (regTwo!33122 r!7292) Nil!65091 s!2326 s!2326) lt!2372146)))

(declare-fun b!6388756 () Bool)

(declare-fun res!2627901 () Bool)

(assert (=> b!6388756 (=> (not res!2627901) (not e!3877807))))

(assert (=> b!6388756 (= res!2627901 (matchR!8488 (regOne!33122 r!7292) (_1!36587 (get!22541 lt!2372146))))))

(declare-fun b!6388760 () Bool)

(declare-fun lt!2372147 () Unit!158551)

(declare-fun lt!2372145 () Unit!158551)

(assert (=> b!6388760 (= lt!2372147 lt!2372145)))

(assert (=> b!6388760 (= (++!14373 (++!14373 Nil!65091 (Cons!65091 (h!71539 s!2326) Nil!65091)) (t!378821 s!2326)) s!2326)))

(assert (=> b!6388760 (= lt!2372145 (lemmaMoveElementToOtherListKeepsConcatEq!2468 Nil!65091 (h!71539 s!2326) (t!378821 s!2326) s!2326))))

(assert (=> b!6388760 (= e!3877809 (findConcatSeparation!2610 (regOne!33122 r!7292) (regTwo!33122 r!7292) (++!14373 Nil!65091 (Cons!65091 (h!71539 s!2326) Nil!65091)) (t!378821 s!2326) s!2326))))

(declare-fun b!6388761 () Bool)

(assert (=> b!6388761 (= e!3877807 (= (++!14373 (_1!36587 (get!22541 lt!2372146)) (_2!36587 (get!22541 lt!2372146))) s!2326))))

(declare-fun b!6388762 () Bool)

(assert (=> b!6388762 (= e!3877806 (matchR!8488 (regTwo!33122 r!7292) s!2326))))

(declare-fun b!6388763 () Bool)

(declare-fun res!2627902 () Bool)

(assert (=> b!6388763 (=> (not res!2627902) (not e!3877807))))

(assert (=> b!6388763 (= res!2627902 (matchR!8488 (regTwo!33122 r!7292) (_2!36587 (get!22541 lt!2372146))))))

(assert (= (and d!2002754 res!2627900) b!6388762))

(assert (= (and d!2002754 c!1164532) b!6388755))

(assert (= (and d!2002754 (not c!1164532)) b!6388758))

(assert (= (and b!6388758 c!1164533) b!6388759))

(assert (= (and b!6388758 (not c!1164533)) b!6388760))

(assert (= (and d!2002754 res!2627903) b!6388756))

(assert (= (and b!6388756 res!2627901) b!6388763))

(assert (= (and b!6388763 res!2627902) b!6388761))

(assert (= (and d!2002754 (not res!2627904)) b!6388757))

(declare-fun m!7187932 () Bool)

(assert (=> d!2002754 m!7187932))

(declare-fun m!7187934 () Bool)

(assert (=> d!2002754 m!7187934))

(declare-fun m!7187936 () Bool)

(assert (=> d!2002754 m!7187936))

(assert (=> b!6388760 m!7187822))

(assert (=> b!6388760 m!7187822))

(assert (=> b!6388760 m!7187824))

(assert (=> b!6388760 m!7187826))

(assert (=> b!6388760 m!7187822))

(declare-fun m!7187938 () Bool)

(assert (=> b!6388760 m!7187938))

(declare-fun m!7187940 () Bool)

(assert (=> b!6388761 m!7187940))

(declare-fun m!7187942 () Bool)

(assert (=> b!6388761 m!7187942))

(assert (=> b!6388757 m!7187932))

(assert (=> b!6388763 m!7187940))

(declare-fun m!7187944 () Bool)

(assert (=> b!6388763 m!7187944))

(assert (=> b!6388762 m!7187836))

(assert (=> b!6388756 m!7187940))

(declare-fun m!7187946 () Bool)

(assert (=> b!6388756 m!7187946))

(assert (=> b!6387825 d!2002754))

(declare-fun d!2002756 () Bool)

(assert (=> d!2002756 (= (Exists!3375 lambda!352582) (choose!47541 lambda!352582))))

(declare-fun bs!1598859 () Bool)

(assert (= bs!1598859 d!2002756))

(declare-fun m!7187948 () Bool)

(assert (=> bs!1598859 m!7187948))

(assert (=> b!6387825 d!2002756))

(declare-fun bs!1598860 () Bool)

(declare-fun d!2002758 () Bool)

(assert (= bs!1598860 (and d!2002758 b!6387825)))

(declare-fun lambda!352682 () Int)

(assert (=> bs!1598860 (not (= lambda!352682 lambda!352582))))

(declare-fun bs!1598861 () Bool)

(assert (= bs!1598861 (and d!2002758 d!2002698)))

(assert (=> bs!1598861 (= (= (regOne!33122 r!7292) lt!2371972) (= lambda!352682 lambda!352671))))

(declare-fun bs!1598862 () Bool)

(assert (= bs!1598862 (and d!2002758 b!6388533)))

(assert (=> bs!1598862 (not (= lambda!352682 lambda!352648))))

(declare-fun bs!1598863 () Bool)

(assert (= bs!1598863 (and d!2002758 b!6387793)))

(assert (=> bs!1598863 (= (= (regOne!33122 r!7292) lt!2371972) (= lambda!352682 lambda!352584))))

(declare-fun bs!1598864 () Bool)

(assert (= bs!1598864 (and d!2002758 d!2002710)))

(assert (=> bs!1598864 (= (= (regOne!33122 r!7292) lt!2371972) (= lambda!352682 lambda!352675))))

(assert (=> bs!1598863 (not (= lambda!352682 lambda!352585))))

(assert (=> bs!1598861 (not (= lambda!352682 lambda!352672))))

(assert (=> bs!1598860 (= lambda!352682 lambda!352581)))

(declare-fun bs!1598865 () Bool)

(assert (= bs!1598865 (and d!2002758 b!6388525)))

(assert (=> bs!1598865 (not (= lambda!352682 lambda!352647))))

(assert (=> d!2002758 true))

(assert (=> d!2002758 true))

(assert (=> d!2002758 true))

(assert (=> d!2002758 (= (isDefined!12899 (findConcatSeparation!2610 (regOne!33122 r!7292) (regTwo!33122 r!7292) Nil!65091 s!2326 s!2326)) (Exists!3375 lambda!352682))))

(declare-fun lt!2372148 () Unit!158551)

(assert (=> d!2002758 (= lt!2372148 (choose!47542 (regOne!33122 r!7292) (regTwo!33122 r!7292) s!2326))))

(assert (=> d!2002758 (validRegex!8041 (regOne!33122 r!7292))))

(assert (=> d!2002758 (= (lemmaFindConcatSeparationEquivalentToExists!2374 (regOne!33122 r!7292) (regTwo!33122 r!7292) s!2326) lt!2372148)))

(declare-fun bs!1598866 () Bool)

(assert (= bs!1598866 d!2002758))

(assert (=> bs!1598866 m!7187170))

(assert (=> bs!1598866 m!7187172))

(declare-fun m!7187950 () Bool)

(assert (=> bs!1598866 m!7187950))

(assert (=> bs!1598866 m!7187170))

(declare-fun m!7187952 () Bool)

(assert (=> bs!1598866 m!7187952))

(assert (=> bs!1598866 m!7187936))

(assert (=> b!6387825 d!2002758))

(declare-fun bs!1598867 () Bool)

(declare-fun d!2002760 () Bool)

(assert (= bs!1598867 (and d!2002760 d!2002758)))

(declare-fun lambda!352683 () Int)

(assert (=> bs!1598867 (= lambda!352683 lambda!352682)))

(declare-fun bs!1598868 () Bool)

(assert (= bs!1598868 (and d!2002760 b!6387825)))

(assert (=> bs!1598868 (not (= lambda!352683 lambda!352582))))

(declare-fun bs!1598869 () Bool)

(assert (= bs!1598869 (and d!2002760 d!2002698)))

(assert (=> bs!1598869 (= (= (regOne!33122 r!7292) lt!2371972) (= lambda!352683 lambda!352671))))

(declare-fun bs!1598870 () Bool)

(assert (= bs!1598870 (and d!2002760 b!6388533)))

(assert (=> bs!1598870 (not (= lambda!352683 lambda!352648))))

(declare-fun bs!1598871 () Bool)

(assert (= bs!1598871 (and d!2002760 b!6387793)))

(assert (=> bs!1598871 (= (= (regOne!33122 r!7292) lt!2371972) (= lambda!352683 lambda!352584))))

(declare-fun bs!1598872 () Bool)

(assert (= bs!1598872 (and d!2002760 d!2002710)))

(assert (=> bs!1598872 (= (= (regOne!33122 r!7292) lt!2371972) (= lambda!352683 lambda!352675))))

(assert (=> bs!1598871 (not (= lambda!352683 lambda!352585))))

(assert (=> bs!1598869 (not (= lambda!352683 lambda!352672))))

(assert (=> bs!1598868 (= lambda!352683 lambda!352581)))

(declare-fun bs!1598873 () Bool)

(assert (= bs!1598873 (and d!2002760 b!6388525)))

(assert (=> bs!1598873 (not (= lambda!352683 lambda!352647))))

(assert (=> d!2002760 true))

(assert (=> d!2002760 true))

(assert (=> d!2002760 true))

(declare-fun lambda!352684 () Int)

(assert (=> bs!1598867 (not (= lambda!352684 lambda!352682))))

(assert (=> bs!1598868 (= lambda!352684 lambda!352582)))

(assert (=> bs!1598869 (not (= lambda!352684 lambda!352671))))

(assert (=> bs!1598870 (= lambda!352684 lambda!352648)))

(assert (=> bs!1598871 (not (= lambda!352684 lambda!352584))))

(assert (=> bs!1598871 (= (= (regOne!33122 r!7292) lt!2371972) (= lambda!352684 lambda!352585))))

(assert (=> bs!1598869 (= (= (regOne!33122 r!7292) lt!2371972) (= lambda!352684 lambda!352672))))

(assert (=> bs!1598868 (not (= lambda!352684 lambda!352581))))

(assert (=> bs!1598873 (not (= lambda!352684 lambda!352647))))

(declare-fun bs!1598874 () Bool)

(assert (= bs!1598874 d!2002760))

(assert (=> bs!1598874 (not (= lambda!352684 lambda!352683))))

(assert (=> bs!1598872 (not (= lambda!352684 lambda!352675))))

(assert (=> d!2002760 true))

(assert (=> d!2002760 true))

(assert (=> d!2002760 true))

(assert (=> d!2002760 (= (Exists!3375 lambda!352683) (Exists!3375 lambda!352684))))

(declare-fun lt!2372149 () Unit!158551)

(assert (=> d!2002760 (= lt!2372149 (choose!47540 (regOne!33122 r!7292) (regTwo!33122 r!7292) s!2326))))

(assert (=> d!2002760 (validRegex!8041 (regOne!33122 r!7292))))

(assert (=> d!2002760 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1912 (regOne!33122 r!7292) (regTwo!33122 r!7292) s!2326) lt!2372149)))

(declare-fun m!7187954 () Bool)

(assert (=> bs!1598874 m!7187954))

(declare-fun m!7187956 () Bool)

(assert (=> bs!1598874 m!7187956))

(declare-fun m!7187958 () Bool)

(assert (=> bs!1598874 m!7187958))

(assert (=> bs!1598874 m!7187936))

(assert (=> b!6387825 d!2002760))

(declare-fun d!2002762 () Bool)

(assert (=> d!2002762 (= (isDefined!12899 (findConcatSeparation!2610 (regOne!33122 r!7292) (regTwo!33122 r!7292) Nil!65091 s!2326 s!2326)) (not (isEmpty!37232 (findConcatSeparation!2610 (regOne!33122 r!7292) (regTwo!33122 r!7292) Nil!65091 s!2326 s!2326))))))

(declare-fun bs!1598875 () Bool)

(assert (= bs!1598875 d!2002762))

(assert (=> bs!1598875 m!7187170))

(declare-fun m!7187960 () Bool)

(assert (=> bs!1598875 m!7187960))

(assert (=> b!6387825 d!2002762))

(declare-fun d!2002764 () Bool)

(declare-fun lt!2372150 () Regex!16305)

(assert (=> d!2002764 (validRegex!8041 lt!2372150)))

(assert (=> d!2002764 (= lt!2372150 (generalisedUnion!2149 (unfocusZipperList!1726 (Cons!65092 lt!2371974 Nil!65092))))))

(assert (=> d!2002764 (= (unfocusZipper!2047 (Cons!65092 lt!2371974 Nil!65092)) lt!2372150)))

(declare-fun bs!1598876 () Bool)

(assert (= bs!1598876 d!2002764))

(declare-fun m!7187962 () Bool)

(assert (=> bs!1598876 m!7187962))

(declare-fun m!7187964 () Bool)

(assert (=> bs!1598876 m!7187964))

(assert (=> bs!1598876 m!7187964))

(declare-fun m!7187966 () Bool)

(assert (=> bs!1598876 m!7187966))

(assert (=> b!6387802 d!2002764))

(declare-fun b!6388764 () Bool)

(declare-fun e!3877812 () Bool)

(declare-fun lt!2372151 () Bool)

(assert (=> b!6388764 (= e!3877812 (not lt!2372151))))

(declare-fun b!6388765 () Bool)

(declare-fun e!3877811 () Bool)

(assert (=> b!6388765 (= e!3877811 (= (head!13102 s!2326) (c!1164242 lt!2371967)))))

(declare-fun b!6388767 () Bool)

(declare-fun res!2627911 () Bool)

(assert (=> b!6388767 (=> (not res!2627911) (not e!3877811))))

(assert (=> b!6388767 (= res!2627911 (isEmpty!37229 (tail!12187 s!2326)))))

(declare-fun b!6388768 () Bool)

(declare-fun e!3877817 () Bool)

(assert (=> b!6388768 (= e!3877817 e!3877812)))

(declare-fun c!1164535 () Bool)

(assert (=> b!6388768 (= c!1164535 ((_ is EmptyLang!16305) lt!2371967))))

(declare-fun b!6388769 () Bool)

(declare-fun e!3877815 () Bool)

(declare-fun e!3877813 () Bool)

(assert (=> b!6388769 (= e!3877815 e!3877813)))

(declare-fun res!2627912 () Bool)

(assert (=> b!6388769 (=> (not res!2627912) (not e!3877813))))

(assert (=> b!6388769 (= res!2627912 (not lt!2372151))))

(declare-fun b!6388770 () Bool)

(declare-fun e!3877816 () Bool)

(assert (=> b!6388770 (= e!3877816 (not (= (head!13102 s!2326) (c!1164242 lt!2371967))))))

(declare-fun b!6388771 () Bool)

(declare-fun call!546236 () Bool)

(assert (=> b!6388771 (= e!3877817 (= lt!2372151 call!546236))))

(declare-fun b!6388772 () Bool)

(declare-fun res!2627909 () Bool)

(assert (=> b!6388772 (=> res!2627909 e!3877816)))

(assert (=> b!6388772 (= res!2627909 (not (isEmpty!37229 (tail!12187 s!2326))))))

(declare-fun b!6388773 () Bool)

(declare-fun e!3877814 () Bool)

(assert (=> b!6388773 (= e!3877814 (matchR!8488 (derivativeStep!5009 lt!2371967 (head!13102 s!2326)) (tail!12187 s!2326)))))

(declare-fun b!6388774 () Bool)

(assert (=> b!6388774 (= e!3877813 e!3877816)))

(declare-fun res!2627910 () Bool)

(assert (=> b!6388774 (=> res!2627910 e!3877816)))

(assert (=> b!6388774 (= res!2627910 call!546236)))

(declare-fun b!6388766 () Bool)

(declare-fun res!2627905 () Bool)

(assert (=> b!6388766 (=> (not res!2627905) (not e!3877811))))

(assert (=> b!6388766 (= res!2627905 (not call!546236))))

(declare-fun d!2002766 () Bool)

(assert (=> d!2002766 e!3877817))

(declare-fun c!1164536 () Bool)

(assert (=> d!2002766 (= c!1164536 ((_ is EmptyExpr!16305) lt!2371967))))

(assert (=> d!2002766 (= lt!2372151 e!3877814)))

(declare-fun c!1164534 () Bool)

(assert (=> d!2002766 (= c!1164534 (isEmpty!37229 s!2326))))

(assert (=> d!2002766 (validRegex!8041 lt!2371967)))

(assert (=> d!2002766 (= (matchR!8488 lt!2371967 s!2326) lt!2372151)))

(declare-fun b!6388775 () Bool)

(assert (=> b!6388775 (= e!3877814 (nullable!6298 lt!2371967))))

(declare-fun b!6388776 () Bool)

(declare-fun res!2627907 () Bool)

(assert (=> b!6388776 (=> res!2627907 e!3877815)))

(assert (=> b!6388776 (= res!2627907 (not ((_ is ElementMatch!16305) lt!2371967)))))

(assert (=> b!6388776 (= e!3877812 e!3877815)))

(declare-fun bm!546231 () Bool)

(assert (=> bm!546231 (= call!546236 (isEmpty!37229 s!2326))))

(declare-fun b!6388777 () Bool)

(declare-fun res!2627906 () Bool)

(assert (=> b!6388777 (=> res!2627906 e!3877815)))

(assert (=> b!6388777 (= res!2627906 e!3877811)))

(declare-fun res!2627908 () Bool)

(assert (=> b!6388777 (=> (not res!2627908) (not e!3877811))))

(assert (=> b!6388777 (= res!2627908 lt!2372151)))

(assert (= (and d!2002766 c!1164534) b!6388775))

(assert (= (and d!2002766 (not c!1164534)) b!6388773))

(assert (= (and d!2002766 c!1164536) b!6388771))

(assert (= (and d!2002766 (not c!1164536)) b!6388768))

(assert (= (and b!6388768 c!1164535) b!6388764))

(assert (= (and b!6388768 (not c!1164535)) b!6388776))

(assert (= (and b!6388776 (not res!2627907)) b!6388777))

(assert (= (and b!6388777 res!2627908) b!6388766))

(assert (= (and b!6388766 res!2627905) b!6388767))

(assert (= (and b!6388767 res!2627911) b!6388765))

(assert (= (and b!6388777 (not res!2627906)) b!6388769))

(assert (= (and b!6388769 res!2627912) b!6388774))

(assert (= (and b!6388774 (not res!2627910)) b!6388772))

(assert (= (and b!6388772 (not res!2627909)) b!6388770))

(assert (= (or b!6388771 b!6388766 b!6388774) bm!546231))

(assert (=> b!6388770 m!7187678))

(assert (=> d!2002766 m!7187676))

(declare-fun m!7187968 () Bool)

(assert (=> d!2002766 m!7187968))

(assert (=> b!6388773 m!7187678))

(assert (=> b!6388773 m!7187678))

(declare-fun m!7187970 () Bool)

(assert (=> b!6388773 m!7187970))

(assert (=> b!6388773 m!7187682))

(assert (=> b!6388773 m!7187970))

(assert (=> b!6388773 m!7187682))

(declare-fun m!7187972 () Bool)

(assert (=> b!6388773 m!7187972))

(assert (=> bm!546231 m!7187676))

(declare-fun m!7187974 () Bool)

(assert (=> b!6388775 m!7187974))

(assert (=> b!6388767 m!7187682))

(assert (=> b!6388767 m!7187682))

(assert (=> b!6388767 m!7187688))

(assert (=> b!6388765 m!7187678))

(assert (=> b!6388772 m!7187682))

(assert (=> b!6388772 m!7187682))

(assert (=> b!6388772 m!7187688))

(assert (=> b!6387821 d!2002766))

(declare-fun bs!1598877 () Bool)

(declare-fun b!6388779 () Bool)

(assert (= bs!1598877 (and b!6388779 d!2002758)))

(declare-fun lambda!352685 () Int)

(assert (=> bs!1598877 (not (= lambda!352685 lambda!352682))))

(declare-fun bs!1598878 () Bool)

(assert (= bs!1598878 (and b!6388779 b!6387825)))

(assert (=> bs!1598878 (not (= lambda!352685 lambda!352582))))

(declare-fun bs!1598879 () Bool)

(assert (= bs!1598879 (and b!6388779 d!2002698)))

(assert (=> bs!1598879 (not (= lambda!352685 lambda!352671))))

(declare-fun bs!1598880 () Bool)

(assert (= bs!1598880 (and b!6388779 b!6388533)))

(assert (=> bs!1598880 (not (= lambda!352685 lambda!352648))))

(declare-fun bs!1598881 () Bool)

(assert (= bs!1598881 (and b!6388779 d!2002760)))

(assert (=> bs!1598881 (not (= lambda!352685 lambda!352684))))

(declare-fun bs!1598882 () Bool)

(assert (= bs!1598882 (and b!6388779 b!6387793)))

(assert (=> bs!1598882 (not (= lambda!352685 lambda!352584))))

(assert (=> bs!1598882 (not (= lambda!352685 lambda!352585))))

(assert (=> bs!1598879 (not (= lambda!352685 lambda!352672))))

(assert (=> bs!1598878 (not (= lambda!352685 lambda!352581))))

(declare-fun bs!1598883 () Bool)

(assert (= bs!1598883 (and b!6388779 b!6388525)))

(assert (=> bs!1598883 (= (and (= (reg!16634 lt!2371967) (reg!16634 r!7292)) (= lt!2371967 r!7292)) (= lambda!352685 lambda!352647))))

(assert (=> bs!1598881 (not (= lambda!352685 lambda!352683))))

(declare-fun bs!1598884 () Bool)

(assert (= bs!1598884 (and b!6388779 d!2002710)))

(assert (=> bs!1598884 (not (= lambda!352685 lambda!352675))))

(assert (=> b!6388779 true))

(assert (=> b!6388779 true))

(declare-fun bs!1598885 () Bool)

(declare-fun b!6388787 () Bool)

(assert (= bs!1598885 (and b!6388787 d!2002758)))

(declare-fun lambda!352686 () Int)

(assert (=> bs!1598885 (not (= lambda!352686 lambda!352682))))

(declare-fun bs!1598886 () Bool)

(assert (= bs!1598886 (and b!6388787 b!6387825)))

(assert (=> bs!1598886 (= (and (= (regOne!33122 lt!2371967) (regOne!33122 r!7292)) (= (regTwo!33122 lt!2371967) (regTwo!33122 r!7292))) (= lambda!352686 lambda!352582))))

(declare-fun bs!1598887 () Bool)

(assert (= bs!1598887 (and b!6388787 d!2002698)))

(assert (=> bs!1598887 (not (= lambda!352686 lambda!352671))))

(declare-fun bs!1598888 () Bool)

(assert (= bs!1598888 (and b!6388787 b!6388533)))

(assert (=> bs!1598888 (= (and (= (regOne!33122 lt!2371967) (regOne!33122 r!7292)) (= (regTwo!33122 lt!2371967) (regTwo!33122 r!7292))) (= lambda!352686 lambda!352648))))

(declare-fun bs!1598889 () Bool)

(assert (= bs!1598889 (and b!6388787 d!2002760)))

(assert (=> bs!1598889 (= (and (= (regOne!33122 lt!2371967) (regOne!33122 r!7292)) (= (regTwo!33122 lt!2371967) (regTwo!33122 r!7292))) (= lambda!352686 lambda!352684))))

(declare-fun bs!1598890 () Bool)

(assert (= bs!1598890 (and b!6388787 b!6387793)))

(assert (=> bs!1598890 (not (= lambda!352686 lambda!352584))))

(assert (=> bs!1598890 (= (and (= (regOne!33122 lt!2371967) lt!2371972) (= (regTwo!33122 lt!2371967) (regTwo!33122 r!7292))) (= lambda!352686 lambda!352585))))

(assert (=> bs!1598887 (= (and (= (regOne!33122 lt!2371967) lt!2371972) (= (regTwo!33122 lt!2371967) (regTwo!33122 r!7292))) (= lambda!352686 lambda!352672))))

(declare-fun bs!1598891 () Bool)

(assert (= bs!1598891 (and b!6388787 b!6388779)))

(assert (=> bs!1598891 (not (= lambda!352686 lambda!352685))))

(assert (=> bs!1598886 (not (= lambda!352686 lambda!352581))))

(declare-fun bs!1598892 () Bool)

(assert (= bs!1598892 (and b!6388787 b!6388525)))

(assert (=> bs!1598892 (not (= lambda!352686 lambda!352647))))

(assert (=> bs!1598889 (not (= lambda!352686 lambda!352683))))

(declare-fun bs!1598893 () Bool)

(assert (= bs!1598893 (and b!6388787 d!2002710)))

(assert (=> bs!1598893 (not (= lambda!352686 lambda!352675))))

(assert (=> b!6388787 true))

(assert (=> b!6388787 true))

(declare-fun b!6388778 () Bool)

(declare-fun e!3877821 () Bool)

(declare-fun e!3877818 () Bool)

(assert (=> b!6388778 (= e!3877821 e!3877818)))

(declare-fun res!2627914 () Bool)

(assert (=> b!6388778 (= res!2627914 (matchRSpec!3406 (regOne!33123 lt!2371967) s!2326))))

(assert (=> b!6388778 (=> res!2627914 e!3877818)))

(declare-fun e!3877820 () Bool)

(declare-fun call!546237 () Bool)

(assert (=> b!6388779 (= e!3877820 call!546237)))

(declare-fun b!6388780 () Bool)

(declare-fun res!2627915 () Bool)

(assert (=> b!6388780 (=> res!2627915 e!3877820)))

(declare-fun call!546238 () Bool)

(assert (=> b!6388780 (= res!2627915 call!546238)))

(declare-fun e!3877823 () Bool)

(assert (=> b!6388780 (= e!3877823 e!3877820)))

(declare-fun c!1164539 () Bool)

(declare-fun bm!546232 () Bool)

(assert (=> bm!546232 (= call!546237 (Exists!3375 (ite c!1164539 lambda!352685 lambda!352686)))))

(declare-fun b!6388781 () Bool)

(declare-fun c!1164538 () Bool)

(assert (=> b!6388781 (= c!1164538 ((_ is ElementMatch!16305) lt!2371967))))

(declare-fun e!3877819 () Bool)

(declare-fun e!3877822 () Bool)

(assert (=> b!6388781 (= e!3877819 e!3877822)))

(declare-fun b!6388782 () Bool)

(declare-fun e!3877824 () Bool)

(assert (=> b!6388782 (= e!3877824 e!3877819)))

(declare-fun res!2627913 () Bool)

(assert (=> b!6388782 (= res!2627913 (not ((_ is EmptyLang!16305) lt!2371967)))))

(assert (=> b!6388782 (=> (not res!2627913) (not e!3877819))))

(declare-fun b!6388783 () Bool)

(assert (=> b!6388783 (= e!3877818 (matchRSpec!3406 (regTwo!33123 lt!2371967) s!2326))))

(declare-fun bm!546233 () Bool)

(assert (=> bm!546233 (= call!546238 (isEmpty!37229 s!2326))))

(declare-fun b!6388784 () Bool)

(assert (=> b!6388784 (= e!3877821 e!3877823)))

(assert (=> b!6388784 (= c!1164539 ((_ is Star!16305) lt!2371967))))

(declare-fun b!6388785 () Bool)

(declare-fun c!1164537 () Bool)

(assert (=> b!6388785 (= c!1164537 ((_ is Union!16305) lt!2371967))))

(assert (=> b!6388785 (= e!3877822 e!3877821)))

(declare-fun d!2002768 () Bool)

(declare-fun c!1164540 () Bool)

(assert (=> d!2002768 (= c!1164540 ((_ is EmptyExpr!16305) lt!2371967))))

(assert (=> d!2002768 (= (matchRSpec!3406 lt!2371967 s!2326) e!3877824)))

(declare-fun b!6388786 () Bool)

(assert (=> b!6388786 (= e!3877824 call!546238)))

(assert (=> b!6388787 (= e!3877823 call!546237)))

(declare-fun b!6388788 () Bool)

(assert (=> b!6388788 (= e!3877822 (= s!2326 (Cons!65091 (c!1164242 lt!2371967) Nil!65091)))))

(assert (= (and d!2002768 c!1164540) b!6388786))

(assert (= (and d!2002768 (not c!1164540)) b!6388782))

(assert (= (and b!6388782 res!2627913) b!6388781))

(assert (= (and b!6388781 c!1164538) b!6388788))

(assert (= (and b!6388781 (not c!1164538)) b!6388785))

(assert (= (and b!6388785 c!1164537) b!6388778))

(assert (= (and b!6388785 (not c!1164537)) b!6388784))

(assert (= (and b!6388778 (not res!2627914)) b!6388783))

(assert (= (and b!6388784 c!1164539) b!6388780))

(assert (= (and b!6388784 (not c!1164539)) b!6388787))

(assert (= (and b!6388780 (not res!2627915)) b!6388779))

(assert (= (or b!6388779 b!6388787) bm!546232))

(assert (= (or b!6388786 b!6388780) bm!546233))

(declare-fun m!7187976 () Bool)

(assert (=> b!6388778 m!7187976))

(declare-fun m!7187978 () Bool)

(assert (=> bm!546232 m!7187978))

(declare-fun m!7187980 () Bool)

(assert (=> b!6388783 m!7187980))

(assert (=> bm!546233 m!7187676))

(assert (=> b!6387821 d!2002768))

(declare-fun d!2002770 () Bool)

(assert (=> d!2002770 (= (matchR!8488 lt!2371967 s!2326) (matchRSpec!3406 lt!2371967 s!2326))))

(declare-fun lt!2372152 () Unit!158551)

(assert (=> d!2002770 (= lt!2372152 (choose!47536 lt!2371967 s!2326))))

(assert (=> d!2002770 (validRegex!8041 lt!2371967)))

(assert (=> d!2002770 (= (mainMatchTheorem!3406 lt!2371967 s!2326) lt!2372152)))

(declare-fun bs!1598894 () Bool)

(assert (= bs!1598894 d!2002770))

(assert (=> bs!1598894 m!7187068))

(assert (=> bs!1598894 m!7187070))

(declare-fun m!7187982 () Bool)

(assert (=> bs!1598894 m!7187982))

(assert (=> bs!1598894 m!7187968))

(assert (=> b!6387821 d!2002770))

(declare-fun d!2002772 () Bool)

(declare-fun e!3877827 () Bool)

(assert (=> d!2002772 e!3877827))

(declare-fun res!2627918 () Bool)

(assert (=> d!2002772 (=> (not res!2627918) (not e!3877827))))

(declare-fun lt!2372155 () List!65216)

(declare-fun noDuplicate!2134 (List!65216) Bool)

(assert (=> d!2002772 (= res!2627918 (noDuplicate!2134 lt!2372155))))

(declare-fun choose!47544 ((InoxSet Context!11378)) List!65216)

(assert (=> d!2002772 (= lt!2372155 (choose!47544 z!1189))))

(assert (=> d!2002772 (= (toList!10089 z!1189) lt!2372155)))

(declare-fun b!6388791 () Bool)

(declare-fun content!12325 (List!65216) (InoxSet Context!11378))

(assert (=> b!6388791 (= e!3877827 (= (content!12325 lt!2372155) z!1189))))

(assert (= (and d!2002772 res!2627918) b!6388791))

(declare-fun m!7187984 () Bool)

(assert (=> d!2002772 m!7187984))

(declare-fun m!7187986 () Bool)

(assert (=> d!2002772 m!7187986))

(declare-fun m!7187988 () Bool)

(assert (=> b!6388791 m!7187988))

(assert (=> b!6387823 d!2002772))

(declare-fun bm!546248 () Bool)

(declare-fun call!546254 () Int)

(declare-fun c!1164557 () Bool)

(assert (=> bm!546248 (= call!546254 (regexDepth!332 (ite c!1164557 (regOne!33123 r!7292) (regTwo!33122 r!7292))))))

(declare-fun d!2002774 () Bool)

(declare-fun e!3877848 () Bool)

(assert (=> d!2002774 e!3877848))

(declare-fun res!2627925 () Bool)

(assert (=> d!2002774 (=> (not res!2627925) (not e!3877848))))

(declare-fun lt!2372158 () Int)

(assert (=> d!2002774 (= res!2627925 (> lt!2372158 0))))

(declare-fun e!3877857 () Int)

(assert (=> d!2002774 (= lt!2372158 e!3877857)))

(declare-fun c!1164559 () Bool)

(assert (=> d!2002774 (= c!1164559 ((_ is ElementMatch!16305) r!7292))))

(assert (=> d!2002774 (= (regexDepth!332 r!7292) lt!2372158)))

(declare-fun b!6388826 () Bool)

(declare-fun c!1164555 () Bool)

(assert (=> b!6388826 (= c!1164555 ((_ is Star!16305) r!7292))))

(declare-fun e!3877849 () Bool)

(declare-fun e!3877854 () Bool)

(assert (=> b!6388826 (= e!3877849 e!3877854)))

(declare-fun bm!546249 () Bool)

(declare-fun call!546258 () Int)

(declare-fun call!546256 () Int)

(assert (=> bm!546249 (= call!546258 call!546256)))

(declare-fun b!6388827 () Bool)

(declare-fun e!3877853 () Bool)

(declare-fun call!546257 () Int)

(assert (=> b!6388827 (= e!3877853 (> lt!2372158 call!546257))))

(declare-fun bm!546250 () Bool)

(declare-fun call!546253 () Int)

(declare-fun c!1164560 () Bool)

(assert (=> bm!546250 (= call!546253 (regexDepth!332 (ite c!1164560 (regOne!33123 r!7292) (regTwo!33122 r!7292))))))

(declare-fun b!6388828 () Bool)

(declare-fun e!3877850 () Int)

(declare-fun call!546255 () Int)

(assert (=> b!6388828 (= e!3877850 (+ 1 call!546255))))

(declare-fun b!6388829 () Bool)

(assert (=> b!6388829 (= c!1164557 ((_ is Union!16305) r!7292))))

(declare-fun e!3877852 () Int)

(assert (=> b!6388829 (= e!3877852 e!3877850)))

(declare-fun b!6388830 () Bool)

(declare-fun res!2627927 () Bool)

(declare-fun e!3877851 () Bool)

(assert (=> b!6388830 (=> (not res!2627927) (not e!3877851))))

(declare-fun call!546259 () Int)

(assert (=> b!6388830 (= res!2627927 (> lt!2372158 call!546259))))

(assert (=> b!6388830 (= e!3877849 e!3877851)))

(declare-fun bm!546251 () Bool)

(assert (=> bm!546251 (= call!546255 (maxBigInt!0 (ite c!1164557 call!546254 call!546258) (ite c!1164557 call!546258 call!546254)))))

(declare-fun b!6388831 () Bool)

(assert (=> b!6388831 (= e!3877857 e!3877852)))

(declare-fun c!1164558 () Bool)

(assert (=> b!6388831 (= c!1164558 ((_ is Star!16305) r!7292))))

(declare-fun b!6388832 () Bool)

(declare-fun e!3877855 () Bool)

(assert (=> b!6388832 (= e!3877848 e!3877855)))

(assert (=> b!6388832 (= c!1164560 ((_ is Union!16305) r!7292))))

(declare-fun b!6388833 () Bool)

(assert (=> b!6388833 (= e!3877852 (+ 1 call!546256))))

(declare-fun b!6388834 () Bool)

(assert (=> b!6388834 (= e!3877855 e!3877849)))

(declare-fun c!1164556 () Bool)

(assert (=> b!6388834 (= c!1164556 ((_ is Concat!25150) r!7292))))

(declare-fun bm!546252 () Bool)

(assert (=> bm!546252 (= call!546256 (regexDepth!332 (ite c!1164558 (reg!16634 r!7292) (ite c!1164557 (regTwo!33123 r!7292) (regOne!33122 r!7292)))))))

(declare-fun b!6388835 () Bool)

(assert (=> b!6388835 (= e!3877854 (= lt!2372158 1))))

(declare-fun bm!546253 () Bool)

(assert (=> bm!546253 (= call!546259 call!546257)))

(declare-fun b!6388836 () Bool)

(declare-fun e!3877856 () Int)

(assert (=> b!6388836 (= e!3877856 1)))

(declare-fun b!6388837 () Bool)

(assert (=> b!6388837 (= e!3877857 1)))

(declare-fun b!6388838 () Bool)

(assert (=> b!6388838 (= e!3877854 (> lt!2372158 call!546259))))

(declare-fun bm!546254 () Bool)

(assert (=> bm!546254 (= call!546257 (regexDepth!332 (ite c!1164560 (regTwo!33123 r!7292) (ite c!1164556 (regOne!33122 r!7292) (reg!16634 r!7292)))))))

(declare-fun b!6388839 () Bool)

(assert (=> b!6388839 (= e!3877850 e!3877856)))

(declare-fun c!1164561 () Bool)

(assert (=> b!6388839 (= c!1164561 ((_ is Concat!25150) r!7292))))

(declare-fun b!6388840 () Bool)

(assert (=> b!6388840 (= e!3877856 (+ 1 call!546255))))

(declare-fun b!6388841 () Bool)

(assert (=> b!6388841 (= e!3877851 (> lt!2372158 call!546253))))

(declare-fun b!6388842 () Bool)

(assert (=> b!6388842 (= e!3877855 e!3877853)))

(declare-fun res!2627926 () Bool)

(assert (=> b!6388842 (= res!2627926 (> lt!2372158 call!546253))))

(assert (=> b!6388842 (=> (not res!2627926) (not e!3877853))))

(assert (= (and d!2002774 c!1164559) b!6388837))

(assert (= (and d!2002774 (not c!1164559)) b!6388831))

(assert (= (and b!6388831 c!1164558) b!6388833))

(assert (= (and b!6388831 (not c!1164558)) b!6388829))

(assert (= (and b!6388829 c!1164557) b!6388828))

(assert (= (and b!6388829 (not c!1164557)) b!6388839))

(assert (= (and b!6388839 c!1164561) b!6388840))

(assert (= (and b!6388839 (not c!1164561)) b!6388836))

(assert (= (or b!6388828 b!6388840) bm!546249))

(assert (= (or b!6388828 b!6388840) bm!546248))

(assert (= (or b!6388828 b!6388840) bm!546251))

(assert (= (or b!6388833 bm!546249) bm!546252))

(assert (= (and d!2002774 res!2627925) b!6388832))

(assert (= (and b!6388832 c!1164560) b!6388842))

(assert (= (and b!6388832 (not c!1164560)) b!6388834))

(assert (= (and b!6388842 res!2627926) b!6388827))

(assert (= (and b!6388834 c!1164556) b!6388830))

(assert (= (and b!6388834 (not c!1164556)) b!6388826))

(assert (= (and b!6388830 res!2627927) b!6388841))

(assert (= (and b!6388826 c!1164555) b!6388838))

(assert (= (and b!6388826 (not c!1164555)) b!6388835))

(assert (= (or b!6388830 b!6388838) bm!546253))

(assert (= (or b!6388827 bm!546253) bm!546254))

(assert (= (or b!6388842 b!6388841) bm!546250))

(declare-fun m!7187990 () Bool)

(assert (=> bm!546251 m!7187990))

(declare-fun m!7187992 () Bool)

(assert (=> bm!546252 m!7187992))

(declare-fun m!7187994 () Bool)

(assert (=> bm!546248 m!7187994))

(declare-fun m!7187996 () Bool)

(assert (=> bm!546250 m!7187996))

(declare-fun m!7187998 () Bool)

(assert (=> bm!546254 m!7187998))

(assert (=> b!6387803 d!2002774))

(declare-fun bm!546255 () Bool)

(declare-fun call!546261 () Int)

(declare-fun c!1164564 () Bool)

(assert (=> bm!546255 (= call!546261 (regexDepth!332 (ite c!1164564 (regOne!33123 (generalisedConcat!1902 (t!378820 (exprs!6189 (h!71540 zl!343))))) (regTwo!33122 (generalisedConcat!1902 (t!378820 (exprs!6189 (h!71540 zl!343))))))))))

(declare-fun d!2002776 () Bool)

(declare-fun e!3877858 () Bool)

(assert (=> d!2002776 e!3877858))

(declare-fun res!2627928 () Bool)

(assert (=> d!2002776 (=> (not res!2627928) (not e!3877858))))

(declare-fun lt!2372159 () Int)

(assert (=> d!2002776 (= res!2627928 (> lt!2372159 0))))

(declare-fun e!3877867 () Int)

(assert (=> d!2002776 (= lt!2372159 e!3877867)))

(declare-fun c!1164566 () Bool)

(assert (=> d!2002776 (= c!1164566 ((_ is ElementMatch!16305) (generalisedConcat!1902 (t!378820 (exprs!6189 (h!71540 zl!343))))))))

(assert (=> d!2002776 (= (regexDepth!332 (generalisedConcat!1902 (t!378820 (exprs!6189 (h!71540 zl!343))))) lt!2372159)))

(declare-fun b!6388843 () Bool)

(declare-fun c!1164562 () Bool)

(assert (=> b!6388843 (= c!1164562 ((_ is Star!16305) (generalisedConcat!1902 (t!378820 (exprs!6189 (h!71540 zl!343))))))))

(declare-fun e!3877859 () Bool)

(declare-fun e!3877864 () Bool)

(assert (=> b!6388843 (= e!3877859 e!3877864)))

(declare-fun bm!546256 () Bool)

(declare-fun call!546265 () Int)

(declare-fun call!546263 () Int)

(assert (=> bm!546256 (= call!546265 call!546263)))

(declare-fun b!6388844 () Bool)

(declare-fun e!3877863 () Bool)

(declare-fun call!546264 () Int)

(assert (=> b!6388844 (= e!3877863 (> lt!2372159 call!546264))))

(declare-fun bm!546257 () Bool)

(declare-fun call!546260 () Int)

(declare-fun c!1164567 () Bool)

(assert (=> bm!546257 (= call!546260 (regexDepth!332 (ite c!1164567 (regOne!33123 (generalisedConcat!1902 (t!378820 (exprs!6189 (h!71540 zl!343))))) (regTwo!33122 (generalisedConcat!1902 (t!378820 (exprs!6189 (h!71540 zl!343))))))))))

(declare-fun b!6388845 () Bool)

(declare-fun e!3877860 () Int)

(declare-fun call!546262 () Int)

(assert (=> b!6388845 (= e!3877860 (+ 1 call!546262))))

(declare-fun b!6388846 () Bool)

(assert (=> b!6388846 (= c!1164564 ((_ is Union!16305) (generalisedConcat!1902 (t!378820 (exprs!6189 (h!71540 zl!343))))))))

(declare-fun e!3877862 () Int)

(assert (=> b!6388846 (= e!3877862 e!3877860)))

(declare-fun b!6388847 () Bool)

(declare-fun res!2627930 () Bool)

(declare-fun e!3877861 () Bool)

(assert (=> b!6388847 (=> (not res!2627930) (not e!3877861))))

(declare-fun call!546266 () Int)

(assert (=> b!6388847 (= res!2627930 (> lt!2372159 call!546266))))

(assert (=> b!6388847 (= e!3877859 e!3877861)))

(declare-fun bm!546258 () Bool)

(assert (=> bm!546258 (= call!546262 (maxBigInt!0 (ite c!1164564 call!546261 call!546265) (ite c!1164564 call!546265 call!546261)))))

(declare-fun b!6388848 () Bool)

(assert (=> b!6388848 (= e!3877867 e!3877862)))

(declare-fun c!1164565 () Bool)

(assert (=> b!6388848 (= c!1164565 ((_ is Star!16305) (generalisedConcat!1902 (t!378820 (exprs!6189 (h!71540 zl!343))))))))

(declare-fun b!6388849 () Bool)

(declare-fun e!3877865 () Bool)

(assert (=> b!6388849 (= e!3877858 e!3877865)))

(assert (=> b!6388849 (= c!1164567 ((_ is Union!16305) (generalisedConcat!1902 (t!378820 (exprs!6189 (h!71540 zl!343))))))))

(declare-fun b!6388850 () Bool)

(assert (=> b!6388850 (= e!3877862 (+ 1 call!546263))))

(declare-fun b!6388851 () Bool)

(assert (=> b!6388851 (= e!3877865 e!3877859)))

(declare-fun c!1164563 () Bool)

(assert (=> b!6388851 (= c!1164563 ((_ is Concat!25150) (generalisedConcat!1902 (t!378820 (exprs!6189 (h!71540 zl!343))))))))

(declare-fun bm!546259 () Bool)

(assert (=> bm!546259 (= call!546263 (regexDepth!332 (ite c!1164565 (reg!16634 (generalisedConcat!1902 (t!378820 (exprs!6189 (h!71540 zl!343))))) (ite c!1164564 (regTwo!33123 (generalisedConcat!1902 (t!378820 (exprs!6189 (h!71540 zl!343))))) (regOne!33122 (generalisedConcat!1902 (t!378820 (exprs!6189 (h!71540 zl!343)))))))))))

(declare-fun b!6388852 () Bool)

(assert (=> b!6388852 (= e!3877864 (= lt!2372159 1))))

(declare-fun bm!546260 () Bool)

(assert (=> bm!546260 (= call!546266 call!546264)))

(declare-fun b!6388853 () Bool)

(declare-fun e!3877866 () Int)

(assert (=> b!6388853 (= e!3877866 1)))

(declare-fun b!6388854 () Bool)

(assert (=> b!6388854 (= e!3877867 1)))

(declare-fun b!6388855 () Bool)

(assert (=> b!6388855 (= e!3877864 (> lt!2372159 call!546266))))

(declare-fun bm!546261 () Bool)

(assert (=> bm!546261 (= call!546264 (regexDepth!332 (ite c!1164567 (regTwo!33123 (generalisedConcat!1902 (t!378820 (exprs!6189 (h!71540 zl!343))))) (ite c!1164563 (regOne!33122 (generalisedConcat!1902 (t!378820 (exprs!6189 (h!71540 zl!343))))) (reg!16634 (generalisedConcat!1902 (t!378820 (exprs!6189 (h!71540 zl!343)))))))))))

(declare-fun b!6388856 () Bool)

(assert (=> b!6388856 (= e!3877860 e!3877866)))

(declare-fun c!1164568 () Bool)

(assert (=> b!6388856 (= c!1164568 ((_ is Concat!25150) (generalisedConcat!1902 (t!378820 (exprs!6189 (h!71540 zl!343))))))))

(declare-fun b!6388857 () Bool)

(assert (=> b!6388857 (= e!3877866 (+ 1 call!546262))))

(declare-fun b!6388858 () Bool)

(assert (=> b!6388858 (= e!3877861 (> lt!2372159 call!546260))))

(declare-fun b!6388859 () Bool)

(assert (=> b!6388859 (= e!3877865 e!3877863)))

(declare-fun res!2627929 () Bool)

(assert (=> b!6388859 (= res!2627929 (> lt!2372159 call!546260))))

(assert (=> b!6388859 (=> (not res!2627929) (not e!3877863))))

(assert (= (and d!2002776 c!1164566) b!6388854))

(assert (= (and d!2002776 (not c!1164566)) b!6388848))

(assert (= (and b!6388848 c!1164565) b!6388850))

(assert (= (and b!6388848 (not c!1164565)) b!6388846))

(assert (= (and b!6388846 c!1164564) b!6388845))

(assert (= (and b!6388846 (not c!1164564)) b!6388856))

(assert (= (and b!6388856 c!1164568) b!6388857))

(assert (= (and b!6388856 (not c!1164568)) b!6388853))

(assert (= (or b!6388845 b!6388857) bm!546256))

(assert (= (or b!6388845 b!6388857) bm!546255))

(assert (= (or b!6388845 b!6388857) bm!546258))

(assert (= (or b!6388850 bm!546256) bm!546259))

(assert (= (and d!2002776 res!2627928) b!6388849))

(assert (= (and b!6388849 c!1164567) b!6388859))

(assert (= (and b!6388849 (not c!1164567)) b!6388851))

(assert (= (and b!6388859 res!2627929) b!6388844))

(assert (= (and b!6388851 c!1164563) b!6388847))

(assert (= (and b!6388851 (not c!1164563)) b!6388843))

(assert (= (and b!6388847 res!2627930) b!6388858))

(assert (= (and b!6388843 c!1164562) b!6388855))

(assert (= (and b!6388843 (not c!1164562)) b!6388852))

(assert (= (or b!6388847 b!6388855) bm!546260))

(assert (= (or b!6388844 bm!546260) bm!546261))

(assert (= (or b!6388859 b!6388858) bm!546257))

(declare-fun m!7188000 () Bool)

(assert (=> bm!546258 m!7188000))

(declare-fun m!7188002 () Bool)

(assert (=> bm!546259 m!7188002))

(declare-fun m!7188004 () Bool)

(assert (=> bm!546255 m!7188004))

(declare-fun m!7188006 () Bool)

(assert (=> bm!546257 m!7188006))

(declare-fun m!7188008 () Bool)

(assert (=> bm!546261 m!7188008))

(assert (=> b!6387803 d!2002776))

(declare-fun bs!1598895 () Bool)

(declare-fun d!2002778 () Bool)

(assert (= bs!1598895 (and d!2002778 d!2002742)))

(declare-fun lambda!352687 () Int)

(assert (=> bs!1598895 (= lambda!352687 lambda!352681)))

(declare-fun bs!1598896 () Bool)

(assert (= bs!1598896 (and d!2002778 d!2002546)))

(assert (=> bs!1598896 (= lambda!352687 lambda!352612)))

(declare-fun bs!1598897 () Bool)

(assert (= bs!1598897 (and d!2002778 d!2002712)))

(assert (=> bs!1598897 (= lambda!352687 lambda!352676)))

(declare-fun bs!1598898 () Bool)

(assert (= bs!1598898 (and d!2002778 d!2002556)))

(assert (=> bs!1598898 (= lambda!352687 lambda!352615)))

(declare-fun bs!1598899 () Bool)

(assert (= bs!1598899 (and d!2002778 d!2002674)))

(assert (=> bs!1598899 (= lambda!352687 lambda!352666)))

(declare-fun bs!1598900 () Bool)

(assert (= bs!1598900 (and d!2002778 d!2002714)))

(assert (=> bs!1598900 (= lambda!352687 lambda!352677)))

(declare-fun b!6388860 () Bool)

(declare-fun e!3877871 () Bool)

(assert (=> b!6388860 (= e!3877871 (isEmpty!37228 (t!378820 (t!378820 (exprs!6189 (h!71540 zl!343))))))))

(declare-fun b!6388861 () Bool)

(declare-fun e!3877873 () Bool)

(declare-fun lt!2372160 () Regex!16305)

(assert (=> b!6388861 (= e!3877873 (isEmptyExpr!1706 lt!2372160))))

(declare-fun b!6388862 () Bool)

(declare-fun e!3877868 () Bool)

(assert (=> b!6388862 (= e!3877868 (= lt!2372160 (head!13101 (t!378820 (exprs!6189 (h!71540 zl!343))))))))

(declare-fun b!6388863 () Bool)

(declare-fun e!3877869 () Regex!16305)

(assert (=> b!6388863 (= e!3877869 (Concat!25150 (h!71538 (t!378820 (exprs!6189 (h!71540 zl!343)))) (generalisedConcat!1902 (t!378820 (t!378820 (exprs!6189 (h!71540 zl!343)))))))))

(declare-fun b!6388864 () Bool)

(assert (=> b!6388864 (= e!3877869 EmptyExpr!16305)))

(declare-fun b!6388865 () Bool)

(assert (=> b!6388865 (= e!3877868 (isConcat!1229 lt!2372160))))

(declare-fun b!6388866 () Bool)

(declare-fun e!3877870 () Bool)

(assert (=> b!6388866 (= e!3877870 e!3877873)))

(declare-fun c!1164571 () Bool)

(assert (=> b!6388866 (= c!1164571 (isEmpty!37228 (t!378820 (exprs!6189 (h!71540 zl!343)))))))

(assert (=> d!2002778 e!3877870))

(declare-fun res!2627931 () Bool)

(assert (=> d!2002778 (=> (not res!2627931) (not e!3877870))))

(assert (=> d!2002778 (= res!2627931 (validRegex!8041 lt!2372160))))

(declare-fun e!3877872 () Regex!16305)

(assert (=> d!2002778 (= lt!2372160 e!3877872)))

(declare-fun c!1164570 () Bool)

(assert (=> d!2002778 (= c!1164570 e!3877871)))

(declare-fun res!2627932 () Bool)

(assert (=> d!2002778 (=> (not res!2627932) (not e!3877871))))

(assert (=> d!2002778 (= res!2627932 ((_ is Cons!65090) (t!378820 (exprs!6189 (h!71540 zl!343)))))))

(assert (=> d!2002778 (forall!15483 (t!378820 (exprs!6189 (h!71540 zl!343))) lambda!352687)))

(assert (=> d!2002778 (= (generalisedConcat!1902 (t!378820 (exprs!6189 (h!71540 zl!343)))) lt!2372160)))

(declare-fun b!6388867 () Bool)

(assert (=> b!6388867 (= e!3877872 e!3877869)))

(declare-fun c!1164569 () Bool)

(assert (=> b!6388867 (= c!1164569 ((_ is Cons!65090) (t!378820 (exprs!6189 (h!71540 zl!343)))))))

(declare-fun b!6388868 () Bool)

(assert (=> b!6388868 (= e!3877873 e!3877868)))

(declare-fun c!1164572 () Bool)

(assert (=> b!6388868 (= c!1164572 (isEmpty!37228 (tail!12186 (t!378820 (exprs!6189 (h!71540 zl!343))))))))

(declare-fun b!6388869 () Bool)

(assert (=> b!6388869 (= e!3877872 (h!71538 (t!378820 (exprs!6189 (h!71540 zl!343)))))))

(assert (= (and d!2002778 res!2627932) b!6388860))

(assert (= (and d!2002778 c!1164570) b!6388869))

(assert (= (and d!2002778 (not c!1164570)) b!6388867))

(assert (= (and b!6388867 c!1164569) b!6388863))

(assert (= (and b!6388867 (not c!1164569)) b!6388864))

(assert (= (and d!2002778 res!2627931) b!6388866))

(assert (= (and b!6388866 c!1164571) b!6388861))

(assert (= (and b!6388866 (not c!1164571)) b!6388868))

(assert (= (and b!6388868 c!1164572) b!6388862))

(assert (= (and b!6388868 (not c!1164572)) b!6388865))

(declare-fun m!7188010 () Bool)

(assert (=> b!6388868 m!7188010))

(assert (=> b!6388868 m!7188010))

(declare-fun m!7188012 () Bool)

(assert (=> b!6388868 m!7188012))

(declare-fun m!7188014 () Bool)

(assert (=> b!6388862 m!7188014))

(assert (=> b!6388866 m!7187088))

(declare-fun m!7188016 () Bool)

(assert (=> d!2002778 m!7188016))

(declare-fun m!7188018 () Bool)

(assert (=> d!2002778 m!7188018))

(declare-fun m!7188020 () Bool)

(assert (=> b!6388861 m!7188020))

(declare-fun m!7188022 () Bool)

(assert (=> b!6388863 m!7188022))

(declare-fun m!7188024 () Bool)

(assert (=> b!6388860 m!7188024))

(declare-fun m!7188026 () Bool)

(assert (=> b!6388865 m!7188026))

(assert (=> b!6387803 d!2002778))

(declare-fun b!6388877 () Bool)

(declare-fun e!3877879 () Bool)

(declare-fun tp!1776889 () Bool)

(assert (=> b!6388877 (= e!3877879 tp!1776889)))

(declare-fun e!3877878 () Bool)

(declare-fun tp!1776890 () Bool)

(declare-fun b!6388876 () Bool)

(assert (=> b!6388876 (= e!3877878 (and (inv!84009 (h!71540 (t!378822 zl!343))) e!3877879 tp!1776890))))

(assert (=> b!6387818 (= tp!1776817 e!3877878)))

(assert (= b!6388876 b!6388877))

(assert (= (and b!6387818 ((_ is Cons!65092) (t!378822 zl!343))) b!6388876))

(declare-fun m!7188028 () Bool)

(assert (=> b!6388876 m!7188028))

(declare-fun condSetEmpty!43624 () Bool)

(assert (=> setNonEmpty!43618 (= condSetEmpty!43624 (= setRest!43618 ((as const (Array Context!11378 Bool)) false)))))

(declare-fun setRes!43624 () Bool)

(assert (=> setNonEmpty!43618 (= tp!1776823 setRes!43624)))

(declare-fun setIsEmpty!43624 () Bool)

(assert (=> setIsEmpty!43624 setRes!43624))

(declare-fun setNonEmpty!43624 () Bool)

(declare-fun e!3877882 () Bool)

(declare-fun tp!1776896 () Bool)

(declare-fun setElem!43624 () Context!11378)

(assert (=> setNonEmpty!43624 (= setRes!43624 (and tp!1776896 (inv!84009 setElem!43624) e!3877882))))

(declare-fun setRest!43624 () (InoxSet Context!11378))

(assert (=> setNonEmpty!43624 (= setRest!43618 ((_ map or) (store ((as const (Array Context!11378 Bool)) false) setElem!43624 true) setRest!43624))))

(declare-fun b!6388882 () Bool)

(declare-fun tp!1776895 () Bool)

(assert (=> b!6388882 (= e!3877882 tp!1776895)))

(assert (= (and setNonEmpty!43618 condSetEmpty!43624) setIsEmpty!43624))

(assert (= (and setNonEmpty!43618 (not condSetEmpty!43624)) setNonEmpty!43624))

(assert (= setNonEmpty!43624 b!6388882))

(declare-fun m!7188030 () Bool)

(assert (=> setNonEmpty!43624 m!7188030))

(declare-fun b!6388893 () Bool)

(declare-fun e!3877885 () Bool)

(assert (=> b!6388893 (= e!3877885 tp_is_empty!41863)))

(declare-fun b!6388895 () Bool)

(declare-fun tp!1776907 () Bool)

(assert (=> b!6388895 (= e!3877885 tp!1776907)))

(assert (=> b!6387814 (= tp!1776824 e!3877885)))

(declare-fun b!6388896 () Bool)

(declare-fun tp!1776910 () Bool)

(declare-fun tp!1776911 () Bool)

(assert (=> b!6388896 (= e!3877885 (and tp!1776910 tp!1776911))))

(declare-fun b!6388894 () Bool)

(declare-fun tp!1776908 () Bool)

(declare-fun tp!1776909 () Bool)

(assert (=> b!6388894 (= e!3877885 (and tp!1776908 tp!1776909))))

(assert (= (and b!6387814 ((_ is ElementMatch!16305) (regOne!33123 r!7292))) b!6388893))

(assert (= (and b!6387814 ((_ is Concat!25150) (regOne!33123 r!7292))) b!6388894))

(assert (= (and b!6387814 ((_ is Star!16305) (regOne!33123 r!7292))) b!6388895))

(assert (= (and b!6387814 ((_ is Union!16305) (regOne!33123 r!7292))) b!6388896))

(declare-fun b!6388897 () Bool)

(declare-fun e!3877886 () Bool)

(assert (=> b!6388897 (= e!3877886 tp_is_empty!41863)))

(declare-fun b!6388899 () Bool)

(declare-fun tp!1776912 () Bool)

(assert (=> b!6388899 (= e!3877886 tp!1776912)))

(assert (=> b!6387814 (= tp!1776822 e!3877886)))

(declare-fun b!6388900 () Bool)

(declare-fun tp!1776915 () Bool)

(declare-fun tp!1776916 () Bool)

(assert (=> b!6388900 (= e!3877886 (and tp!1776915 tp!1776916))))

(declare-fun b!6388898 () Bool)

(declare-fun tp!1776913 () Bool)

(declare-fun tp!1776914 () Bool)

(assert (=> b!6388898 (= e!3877886 (and tp!1776913 tp!1776914))))

(assert (= (and b!6387814 ((_ is ElementMatch!16305) (regTwo!33123 r!7292))) b!6388897))

(assert (= (and b!6387814 ((_ is Concat!25150) (regTwo!33123 r!7292))) b!6388898))

(assert (= (and b!6387814 ((_ is Star!16305) (regTwo!33123 r!7292))) b!6388899))

(assert (= (and b!6387814 ((_ is Union!16305) (regTwo!33123 r!7292))) b!6388900))

(declare-fun b!6388901 () Bool)

(declare-fun e!3877887 () Bool)

(assert (=> b!6388901 (= e!3877887 tp_is_empty!41863)))

(declare-fun b!6388903 () Bool)

(declare-fun tp!1776917 () Bool)

(assert (=> b!6388903 (= e!3877887 tp!1776917)))

(assert (=> b!6387800 (= tp!1776826 e!3877887)))

(declare-fun b!6388904 () Bool)

(declare-fun tp!1776920 () Bool)

(declare-fun tp!1776921 () Bool)

(assert (=> b!6388904 (= e!3877887 (and tp!1776920 tp!1776921))))

(declare-fun b!6388902 () Bool)

(declare-fun tp!1776918 () Bool)

(declare-fun tp!1776919 () Bool)

(assert (=> b!6388902 (= e!3877887 (and tp!1776918 tp!1776919))))

(assert (= (and b!6387800 ((_ is ElementMatch!16305) (reg!16634 r!7292))) b!6388901))

(assert (= (and b!6387800 ((_ is Concat!25150) (reg!16634 r!7292))) b!6388902))

(assert (= (and b!6387800 ((_ is Star!16305) (reg!16634 r!7292))) b!6388903))

(assert (= (and b!6387800 ((_ is Union!16305) (reg!16634 r!7292))) b!6388904))

(declare-fun b!6388905 () Bool)

(declare-fun e!3877888 () Bool)

(assert (=> b!6388905 (= e!3877888 tp_is_empty!41863)))

(declare-fun b!6388907 () Bool)

(declare-fun tp!1776922 () Bool)

(assert (=> b!6388907 (= e!3877888 tp!1776922)))

(assert (=> b!6387816 (= tp!1776819 e!3877888)))

(declare-fun b!6388908 () Bool)

(declare-fun tp!1776925 () Bool)

(declare-fun tp!1776926 () Bool)

(assert (=> b!6388908 (= e!3877888 (and tp!1776925 tp!1776926))))

(declare-fun b!6388906 () Bool)

(declare-fun tp!1776923 () Bool)

(declare-fun tp!1776924 () Bool)

(assert (=> b!6388906 (= e!3877888 (and tp!1776923 tp!1776924))))

(assert (= (and b!6387816 ((_ is ElementMatch!16305) (regOne!33122 r!7292))) b!6388905))

(assert (= (and b!6387816 ((_ is Concat!25150) (regOne!33122 r!7292))) b!6388906))

(assert (= (and b!6387816 ((_ is Star!16305) (regOne!33122 r!7292))) b!6388907))

(assert (= (and b!6387816 ((_ is Union!16305) (regOne!33122 r!7292))) b!6388908))

(declare-fun b!6388909 () Bool)

(declare-fun e!3877889 () Bool)

(assert (=> b!6388909 (= e!3877889 tp_is_empty!41863)))

(declare-fun b!6388911 () Bool)

(declare-fun tp!1776927 () Bool)

(assert (=> b!6388911 (= e!3877889 tp!1776927)))

(assert (=> b!6387816 (= tp!1776818 e!3877889)))

(declare-fun b!6388912 () Bool)

(declare-fun tp!1776930 () Bool)

(declare-fun tp!1776931 () Bool)

(assert (=> b!6388912 (= e!3877889 (and tp!1776930 tp!1776931))))

(declare-fun b!6388910 () Bool)

(declare-fun tp!1776928 () Bool)

(declare-fun tp!1776929 () Bool)

(assert (=> b!6388910 (= e!3877889 (and tp!1776928 tp!1776929))))

(assert (= (and b!6387816 ((_ is ElementMatch!16305) (regTwo!33122 r!7292))) b!6388909))

(assert (= (and b!6387816 ((_ is Concat!25150) (regTwo!33122 r!7292))) b!6388910))

(assert (= (and b!6387816 ((_ is Star!16305) (regTwo!33122 r!7292))) b!6388911))

(assert (= (and b!6387816 ((_ is Union!16305) (regTwo!33122 r!7292))) b!6388912))

(declare-fun b!6388917 () Bool)

(declare-fun e!3877892 () Bool)

(declare-fun tp!1776936 () Bool)

(declare-fun tp!1776937 () Bool)

(assert (=> b!6388917 (= e!3877892 (and tp!1776936 tp!1776937))))

(assert (=> b!6387807 (= tp!1776825 e!3877892)))

(assert (= (and b!6387807 ((_ is Cons!65090) (exprs!6189 setElem!43618))) b!6388917))

(declare-fun b!6388918 () Bool)

(declare-fun e!3877893 () Bool)

(declare-fun tp!1776938 () Bool)

(declare-fun tp!1776939 () Bool)

(assert (=> b!6388918 (= e!3877893 (and tp!1776938 tp!1776939))))

(assert (=> b!6387813 (= tp!1776821 e!3877893)))

(assert (= (and b!6387813 ((_ is Cons!65090) (exprs!6189 (h!71540 zl!343)))) b!6388918))

(declare-fun b!6388923 () Bool)

(declare-fun e!3877896 () Bool)

(declare-fun tp!1776942 () Bool)

(assert (=> b!6388923 (= e!3877896 (and tp_is_empty!41863 tp!1776942))))

(assert (=> b!6387798 (= tp!1776820 e!3877896)))

(assert (= (and b!6387798 ((_ is Cons!65091) (t!378821 s!2326))) b!6388923))

(declare-fun b_lambda!242731 () Bool)

(assert (= b_lambda!242729 (or b!6387795 b_lambda!242731)))

(declare-fun bs!1598901 () Bool)

(declare-fun d!2002780 () Bool)

(assert (= bs!1598901 (and d!2002780 b!6387795)))

(assert (=> bs!1598901 (= (dynLambda!25825 lambda!352583 lt!2371979) (derivationStepZipperUp!1479 lt!2371979 (h!71539 s!2326)))))

(assert (=> bs!1598901 m!7187152))

(assert (=> d!2002740 d!2002780))

(declare-fun b_lambda!242733 () Bool)

(assert (= b_lambda!242721 (or b!6387795 b_lambda!242733)))

(declare-fun bs!1598902 () Bool)

(declare-fun d!2002782 () Bool)

(assert (= bs!1598902 (and d!2002782 b!6387795)))

(assert (=> bs!1598902 (= (dynLambda!25825 lambda!352583 lt!2371961) (derivationStepZipperUp!1479 lt!2371961 (h!71539 s!2326)))))

(assert (=> bs!1598902 m!7187044))

(assert (=> d!2002672 d!2002782))

(declare-fun b_lambda!242735 () Bool)

(assert (= b_lambda!242725 (or b!6387795 b_lambda!242735)))

(declare-fun bs!1598903 () Bool)

(declare-fun d!2002784 () Bool)

(assert (= bs!1598903 (and d!2002784 b!6387795)))

(assert (=> bs!1598903 (= (dynLambda!25825 lambda!352583 lt!2371974) (derivationStepZipperUp!1479 lt!2371974 (h!71539 s!2326)))))

(assert (=> bs!1598903 m!7187102))

(assert (=> d!2002722 d!2002784))

(declare-fun b_lambda!242737 () Bool)

(assert (= b_lambda!242727 (or b!6387795 b_lambda!242737)))

(declare-fun bs!1598904 () Bool)

(declare-fun d!2002786 () Bool)

(assert (= bs!1598904 (and d!2002786 b!6387795)))

(assert (=> bs!1598904 (= (dynLambda!25825 lambda!352583 lt!2371996) (derivationStepZipperUp!1479 lt!2371996 (h!71539 s!2326)))))

(assert (=> bs!1598904 m!7187148))

(assert (=> d!2002738 d!2002786))

(declare-fun b_lambda!242739 () Bool)

(assert (= b_lambda!242723 (or b!6387795 b_lambda!242739)))

(declare-fun bs!1598905 () Bool)

(declare-fun d!2002788 () Bool)

(assert (= bs!1598905 (and d!2002788 b!6387795)))

(assert (=> bs!1598905 (= (dynLambda!25825 lambda!352583 (h!71540 zl!343)) (derivationStepZipperUp!1479 (h!71540 zl!343) (h!71539 s!2326)))))

(assert (=> bs!1598905 m!7187120))

(assert (=> d!2002684 d!2002788))

(check-sat (not d!2002546) (not d!2002698) (not d!2002764) (not d!2002714) (not d!2002766) (not bm!546255) (not b!6388778) (not b!6388911) (not b!6388572) (not d!2002680) (not b!6388767) (not b!6388167) (not bm!546258) (not b!6388865) (not b_lambda!242735) (not bm!546215) (not b!6388765) (not b!6388902) (not b!6388710) (not b!6388524) (not d!2002702) (not b!6388308) (not b!6388536) (not d!2002700) (not b!6388555) (not b!6388670) (not d!2002658) tp_is_empty!41863 (not d!2002656) (not b!6388697) (not bm!546227) (not b!6388906) (not bm!546230) (not b!6388310) (not b!6388912) (not d!2002706) (not b!6388740) (not b!6388695) (not bm!546217) (not b!6388692) (not b!6388899) (not b!6388903) (not b!6388868) (not bm!546162) (not b_lambda!242739) (not d!2002674) (not b!6388714) (not d!2002556) (not b!6388895) (not b!6388908) (not d!2002688) (not d!2002728) (not b!6388744) (not d!2002746) (not bm!546228) (not d!2002756) (not d!2002732) (not bm!546251) (not bm!546214) (not b!6388571) (not b!6388307) (not bm!546198) (not bm!546233) (not b!6388917) (not b!6388896) (not b!6388770) (not b!6388907) (not b!6388743) (not b!6388861) (not d!2002692) (not d!2002742) (not b!6388562) (not b!6388691) (not bm!546252) (not b!6388332) (not b!6388590) (not d!2002666) (not d!2002722) (not bm!546231) (not b!6388877) (not d!2002708) (not b!6388650) (not b_lambda!242737) (not b!6388591) (not b!6388876) (not d!2002738) (not b!6388863) (not b!6388705) (not b!6388696) (not b!6388898) (not d!2002754) (not bm!546226) (not bm!546261) (not bm!546221) (not bm!546254) (not d!2002704) (not b!6388757) (not b!6388543) (not d!2002730) (not b!6388862) (not b!6388738) (not d!2002744) (not setNonEmpty!43624) (not d!2002724) (not b!6388709) (not b!6388882) (not b!6388632) (not d!2002748) (not b!6388741) (not d!2002760) (not bm!546196) (not d!2002558) (not b!6388538) (not d!2002544) (not b!6388753) (not b!6388860) (not bm!546189) (not b!6388300) (not b!6388566) (not bs!1598903) (not b!6388163) (not d!2002772) (not d!2002684) (not b!6388669) (not b!6388866) (not b!6388165) (not b!6388910) (not b!6388756) (not b!6388574) (not b!6388648) (not b!6388763) (not b!6388560) (not d!2002664) (not b!6388761) (not d!2002762) (not b!6388645) (not d!2002710) (not d!2002672) (not b!6388544) (not d!2002668) (not b!6388739) (not d!2002578) (not bm!546232) (not b!6388751) (not b!6388651) (not d!2002740) (not b!6388746) (not b!6388302) (not b!6388918) (not b!6388772) (not d!2002750) (not b!6388783) (not b!6388698) (not b!6388752) (not b!6388305) (not b!6388894) (not d!2002752) (not b!6388168) (not b!6388773) (not bm!546188) (not bs!1598901) (not b!6388569) (not b!6388197) (not b!6388529) (not bm!546257) (not b!6388396) (not b!6388904) (not b!6388900) (not b!6388923) (not b!6388750) (not b!6388161) (not b!6388762) (not b!6388754) (not d!2002778) (not b!6388704) (not b_lambda!242733) (not b!6388546) (not b!6388791) (not b!6388715) (not bm!546248) (not bm!546195) (not b!6388639) (not d!2002770) (not bs!1598904) (not b!6388649) (not b!6388162) (not b!6388557) (not d!2002694) (not d!2002718) (not bm!546197) (not b!6388541) (not d!2002758) (not b!6388166) (not bm!546259) (not b_lambda!242731) (not bs!1598905) (not bs!1598902) (not b!6388775) (not b!6388760) (not d!2002712) (not bm!546220) (not b!6388640) (not bm!546250) (not bm!546229) (not bm!546223) (not d!2002576) (not bm!546201) (not b!6388333) (not b!6388644) (not b!6388621) (not b!6388564))
(check-sat)
