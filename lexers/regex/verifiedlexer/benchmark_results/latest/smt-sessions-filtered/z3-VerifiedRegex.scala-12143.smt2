; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!682888 () Bool)

(assert start!682888)

(declare-fun b!7050208 () Bool)

(declare-fun res!2878170 () Bool)

(declare-fun e!4238303 () Bool)

(assert (=> b!7050208 (=> (not res!2878170) (not e!4238303))))

(declare-datatypes ((C!35336 0))(
  ( (C!35337 (val!27370 Int)) )
))
(declare-datatypes ((List!68124 0))(
  ( (Nil!68000) (Cons!68000 (h!74448 C!35336) (t!381903 List!68124)) )
))
(declare-fun s!7408 () List!68124)

(get-info :version)

(assert (=> b!7050208 (= res!2878170 (not ((_ is Cons!68000) s!7408)))))

(declare-fun res!2878173 () Bool)

(assert (=> start!682888 (=> (not res!2878173) (not e!4238303))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!17533 0))(
  ( (ElementMatch!17533 (c!1313154 C!35336)) (Concat!26378 (regOne!35578 Regex!17533) (regTwo!35578 Regex!17533)) (EmptyExpr!17533) (Star!17533 (reg!17862 Regex!17533)) (EmptyLang!17533) (Union!17533 (regOne!35579 Regex!17533) (regTwo!35579 Regex!17533)) )
))
(declare-datatypes ((List!68125 0))(
  ( (Nil!68001) (Cons!68001 (h!74449 Regex!17533) (t!381904 List!68125)) )
))
(declare-datatypes ((Context!13058 0))(
  ( (Context!13059 (exprs!7029 List!68125)) )
))
(declare-fun lt!2529175 () (InoxSet Context!13058))

(declare-fun matchZipper!3073 ((InoxSet Context!13058) List!68124) Bool)

(assert (=> start!682888 (= res!2878173 (matchZipper!3073 lt!2529175 s!7408))))

(declare-fun z1!570 () (InoxSet Context!13058))

(declare-fun ct2!306 () Context!13058)

(declare-fun appendTo!654 ((InoxSet Context!13058) Context!13058) (InoxSet Context!13058))

(assert (=> start!682888 (= lt!2529175 (appendTo!654 z1!570 ct2!306))))

(assert (=> start!682888 e!4238303))

(declare-fun condSetEmpty!49603 () Bool)

(assert (=> start!682888 (= condSetEmpty!49603 (= z1!570 ((as const (Array Context!13058 Bool)) false)))))

(declare-fun setRes!49603 () Bool)

(assert (=> start!682888 setRes!49603))

(declare-fun e!4238304 () Bool)

(declare-fun inv!86691 (Context!13058) Bool)

(assert (=> start!682888 (and (inv!86691 ct2!306) e!4238304)))

(declare-fun e!4238302 () Bool)

(assert (=> start!682888 e!4238302))

(declare-fun b!7050209 () Bool)

(declare-fun e!4238301 () Bool)

(declare-fun tp!1938807 () Bool)

(assert (=> b!7050209 (= e!4238301 tp!1938807)))

(declare-fun b!7050210 () Bool)

(declare-fun lambda!418733 () Int)

(declare-fun nullableContext!89 (Context!13058) Bool)

(declare-fun getWitness!1573 ((InoxSet Context!13058) Int) Context!13058)

(assert (=> b!7050210 (= e!4238303 (not (nullableContext!89 (getWitness!1573 lt!2529175 lambda!418733))))))

(declare-fun b!7050211 () Bool)

(declare-fun tp!1938808 () Bool)

(assert (=> b!7050211 (= e!4238304 tp!1938808)))

(declare-fun b!7050212 () Bool)

(declare-fun res!2878171 () Bool)

(assert (=> b!7050212 (=> (not res!2878171) (not e!4238303))))

(declare-fun exists!3499 ((InoxSet Context!13058) Int) Bool)

(assert (=> b!7050212 (= res!2878171 (exists!3499 lt!2529175 lambda!418733))))

(declare-fun b!7050213 () Bool)

(declare-fun tp_is_empty!44291 () Bool)

(declare-fun tp!1938806 () Bool)

(assert (=> b!7050213 (= e!4238302 (and tp_is_empty!44291 tp!1938806))))

(declare-fun b!7050214 () Bool)

(declare-fun res!2878172 () Bool)

(assert (=> b!7050214 (=> (not res!2878172) (not e!4238303))))

(declare-fun nullableZipper!2626 ((InoxSet Context!13058)) Bool)

(assert (=> b!7050214 (= res!2878172 (nullableZipper!2626 lt!2529175))))

(declare-fun setNonEmpty!49603 () Bool)

(declare-fun tp!1938805 () Bool)

(declare-fun setElem!49603 () Context!13058)

(assert (=> setNonEmpty!49603 (= setRes!49603 (and tp!1938805 (inv!86691 setElem!49603) e!4238301))))

(declare-fun setRest!49603 () (InoxSet Context!13058))

(assert (=> setNonEmpty!49603 (= z1!570 ((_ map or) (store ((as const (Array Context!13058 Bool)) false) setElem!49603 true) setRest!49603))))

(declare-fun setIsEmpty!49603 () Bool)

(assert (=> setIsEmpty!49603 setRes!49603))

(assert (= (and start!682888 res!2878173) b!7050208))

(assert (= (and b!7050208 res!2878170) b!7050214))

(assert (= (and b!7050214 res!2878172) b!7050212))

(assert (= (and b!7050212 res!2878171) b!7050210))

(assert (= (and start!682888 condSetEmpty!49603) setIsEmpty!49603))

(assert (= (and start!682888 (not condSetEmpty!49603)) setNonEmpty!49603))

(assert (= setNonEmpty!49603 b!7050209))

(assert (= start!682888 b!7050211))

(assert (= (and start!682888 ((_ is Cons!68000) s!7408)) b!7050213))

(declare-fun m!7765822 () Bool)

(assert (=> setNonEmpty!49603 m!7765822))

(declare-fun m!7765824 () Bool)

(assert (=> start!682888 m!7765824))

(declare-fun m!7765826 () Bool)

(assert (=> start!682888 m!7765826))

(declare-fun m!7765828 () Bool)

(assert (=> start!682888 m!7765828))

(declare-fun m!7765830 () Bool)

(assert (=> b!7050212 m!7765830))

(declare-fun m!7765832 () Bool)

(assert (=> b!7050214 m!7765832))

(declare-fun m!7765834 () Bool)

(assert (=> b!7050210 m!7765834))

(assert (=> b!7050210 m!7765834))

(declare-fun m!7765836 () Bool)

(assert (=> b!7050210 m!7765836))

(check-sat (not b!7050214) (not start!682888) (not b!7050212) tp_is_empty!44291 (not b!7050209) (not setNonEmpty!49603) (not b!7050213) (not b!7050210) (not b!7050211))
(check-sat)
(get-model)

(declare-fun d!2202402 () Bool)

(declare-fun lt!2529178 () Bool)

(declare-datatypes ((List!68126 0))(
  ( (Nil!68002) (Cons!68002 (h!74450 Context!13058) (t!381905 List!68126)) )
))
(declare-fun exists!3500 (List!68126 Int) Bool)

(declare-fun toList!10873 ((InoxSet Context!13058)) List!68126)

(assert (=> d!2202402 (= lt!2529178 (exists!3500 (toList!10873 lt!2529175) lambda!418733))))

(declare-fun choose!53645 ((InoxSet Context!13058) Int) Bool)

(assert (=> d!2202402 (= lt!2529178 (choose!53645 lt!2529175 lambda!418733))))

(assert (=> d!2202402 (= (exists!3499 lt!2529175 lambda!418733) lt!2529178)))

(declare-fun bs!1875683 () Bool)

(assert (= bs!1875683 d!2202402))

(declare-fun m!7765838 () Bool)

(assert (=> bs!1875683 m!7765838))

(assert (=> bs!1875683 m!7765838))

(declare-fun m!7765840 () Bool)

(assert (=> bs!1875683 m!7765840))

(declare-fun m!7765842 () Bool)

(assert (=> bs!1875683 m!7765842))

(assert (=> b!7050212 d!2202402))

(declare-fun bs!1875684 () Bool)

(declare-fun d!2202404 () Bool)

(assert (= bs!1875684 (and d!2202404 b!7050212)))

(declare-fun lambda!418736 () Int)

(assert (=> bs!1875684 (= lambda!418736 lambda!418733)))

(assert (=> d!2202404 (= (nullableZipper!2626 lt!2529175) (exists!3499 lt!2529175 lambda!418736))))

(declare-fun bs!1875685 () Bool)

(assert (= bs!1875685 d!2202404))

(declare-fun m!7765854 () Bool)

(assert (=> bs!1875685 m!7765854))

(assert (=> b!7050214 d!2202404))

(declare-fun d!2202408 () Bool)

(declare-fun c!1313162 () Bool)

(declare-fun isEmpty!39682 (List!68124) Bool)

(assert (=> d!2202408 (= c!1313162 (isEmpty!39682 s!7408))))

(declare-fun e!4238310 () Bool)

(assert (=> d!2202408 (= (matchZipper!3073 lt!2529175 s!7408) e!4238310)))

(declare-fun b!7050225 () Bool)

(assert (=> b!7050225 (= e!4238310 (nullableZipper!2626 lt!2529175))))

(declare-fun b!7050226 () Bool)

(declare-fun derivationStepZipper!2987 ((InoxSet Context!13058) C!35336) (InoxSet Context!13058))

(declare-fun head!14323 (List!68124) C!35336)

(declare-fun tail!13656 (List!68124) List!68124)

(assert (=> b!7050226 (= e!4238310 (matchZipper!3073 (derivationStepZipper!2987 lt!2529175 (head!14323 s!7408)) (tail!13656 s!7408)))))

(assert (= (and d!2202408 c!1313162) b!7050225))

(assert (= (and d!2202408 (not c!1313162)) b!7050226))

(declare-fun m!7765856 () Bool)

(assert (=> d!2202408 m!7765856))

(assert (=> b!7050225 m!7765832))

(declare-fun m!7765858 () Bool)

(assert (=> b!7050226 m!7765858))

(assert (=> b!7050226 m!7765858))

(declare-fun m!7765860 () Bool)

(assert (=> b!7050226 m!7765860))

(declare-fun m!7765862 () Bool)

(assert (=> b!7050226 m!7765862))

(assert (=> b!7050226 m!7765860))

(assert (=> b!7050226 m!7765862))

(declare-fun m!7765864 () Bool)

(assert (=> b!7050226 m!7765864))

(assert (=> start!682888 d!2202408))

(declare-fun d!2202410 () Bool)

(assert (=> d!2202410 true))

(declare-fun lambda!418754 () Int)

(declare-fun map!15845 ((InoxSet Context!13058) Int) (InoxSet Context!13058))

(assert (=> d!2202410 (= (appendTo!654 z1!570 ct2!306) (map!15845 z1!570 lambda!418754))))

(declare-fun bs!1875690 () Bool)

(assert (= bs!1875690 d!2202410))

(declare-fun m!7765872 () Bool)

(assert (=> bs!1875690 m!7765872))

(assert (=> start!682888 d!2202410))

(declare-fun d!2202418 () Bool)

(declare-fun lambda!418758 () Int)

(declare-fun forall!16462 (List!68125 Int) Bool)

(assert (=> d!2202418 (= (inv!86691 ct2!306) (forall!16462 (exprs!7029 ct2!306) lambda!418758))))

(declare-fun bs!1875693 () Bool)

(assert (= bs!1875693 d!2202418))

(declare-fun m!7765876 () Bool)

(assert (=> bs!1875693 m!7765876))

(assert (=> start!682888 d!2202418))

(declare-fun bs!1875694 () Bool)

(declare-fun d!2202422 () Bool)

(assert (= bs!1875694 (and d!2202422 d!2202418)))

(declare-fun lambda!418759 () Int)

(assert (=> bs!1875694 (= lambda!418759 lambda!418758)))

(assert (=> d!2202422 (= (inv!86691 setElem!49603) (forall!16462 (exprs!7029 setElem!49603) lambda!418759))))

(declare-fun bs!1875695 () Bool)

(assert (= bs!1875695 d!2202422))

(declare-fun m!7765878 () Bool)

(assert (=> bs!1875695 m!7765878))

(assert (=> setNonEmpty!49603 d!2202422))

(declare-fun bs!1875696 () Bool)

(declare-fun d!2202424 () Bool)

(assert (= bs!1875696 (and d!2202424 d!2202418)))

(declare-fun lambda!418762 () Int)

(assert (=> bs!1875696 (not (= lambda!418762 lambda!418758))))

(declare-fun bs!1875697 () Bool)

(assert (= bs!1875697 (and d!2202424 d!2202422)))

(assert (=> bs!1875697 (not (= lambda!418762 lambda!418759))))

(assert (=> d!2202424 (= (nullableContext!89 (getWitness!1573 lt!2529175 lambda!418733)) (forall!16462 (exprs!7029 (getWitness!1573 lt!2529175 lambda!418733)) lambda!418762))))

(declare-fun bs!1875698 () Bool)

(assert (= bs!1875698 d!2202424))

(declare-fun m!7765880 () Bool)

(assert (=> bs!1875698 m!7765880))

(assert (=> b!7050210 d!2202424))

(declare-fun d!2202426 () Bool)

(declare-fun e!4238319 () Bool)

(assert (=> d!2202426 e!4238319))

(declare-fun res!2878179 () Bool)

(assert (=> d!2202426 (=> (not res!2878179) (not e!4238319))))

(declare-fun lt!2529191 () Context!13058)

(declare-fun dynLambda!27548 (Int Context!13058) Bool)

(assert (=> d!2202426 (= res!2878179 (dynLambda!27548 lambda!418733 lt!2529191))))

(declare-fun getWitness!1575 (List!68126 Int) Context!13058)

(assert (=> d!2202426 (= lt!2529191 (getWitness!1575 (toList!10873 lt!2529175) lambda!418733))))

(assert (=> d!2202426 (exists!3499 lt!2529175 lambda!418733)))

(assert (=> d!2202426 (= (getWitness!1573 lt!2529175 lambda!418733) lt!2529191)))

(declare-fun b!7050241 () Bool)

(assert (=> b!7050241 (= e!4238319 (select lt!2529175 lt!2529191))))

(assert (= (and d!2202426 res!2878179) b!7050241))

(declare-fun b_lambda!268057 () Bool)

(assert (=> (not b_lambda!268057) (not d!2202426)))

(declare-fun m!7765896 () Bool)

(assert (=> d!2202426 m!7765896))

(assert (=> d!2202426 m!7765838))

(assert (=> d!2202426 m!7765838))

(declare-fun m!7765898 () Bool)

(assert (=> d!2202426 m!7765898))

(assert (=> d!2202426 m!7765830))

(declare-fun m!7765900 () Bool)

(assert (=> b!7050241 m!7765900))

(assert (=> b!7050210 d!2202426))

(declare-fun b!7050251 () Bool)

(declare-fun e!4238325 () Bool)

(declare-fun tp!1938823 () Bool)

(assert (=> b!7050251 (= e!4238325 (and tp_is_empty!44291 tp!1938823))))

(assert (=> b!7050213 (= tp!1938806 e!4238325)))

(assert (= (and b!7050213 ((_ is Cons!68000) (t!381903 s!7408))) b!7050251))

(declare-fun b!7050257 () Bool)

(declare-fun e!4238329 () Bool)

(declare-fun tp!1938830 () Bool)

(declare-fun tp!1938831 () Bool)

(assert (=> b!7050257 (= e!4238329 (and tp!1938830 tp!1938831))))

(assert (=> b!7050209 (= tp!1938807 e!4238329)))

(assert (= (and b!7050209 ((_ is Cons!68001) (exprs!7029 setElem!49603))) b!7050257))

(declare-fun condSetEmpty!49609 () Bool)

(assert (=> setNonEmpty!49603 (= condSetEmpty!49609 (= setRest!49603 ((as const (Array Context!13058 Bool)) false)))))

(declare-fun setRes!49609 () Bool)

(assert (=> setNonEmpty!49603 (= tp!1938805 setRes!49609)))

(declare-fun setIsEmpty!49609 () Bool)

(assert (=> setIsEmpty!49609 setRes!49609))

(declare-fun e!4238335 () Bool)

(declare-fun setElem!49609 () Context!13058)

(declare-fun tp!1938840 () Bool)

(declare-fun setNonEmpty!49609 () Bool)

(assert (=> setNonEmpty!49609 (= setRes!49609 (and tp!1938840 (inv!86691 setElem!49609) e!4238335))))

(declare-fun setRest!49609 () (InoxSet Context!13058))

(assert (=> setNonEmpty!49609 (= setRest!49603 ((_ map or) (store ((as const (Array Context!13058 Bool)) false) setElem!49609 true) setRest!49609))))

(declare-fun b!7050267 () Bool)

(declare-fun tp!1938839 () Bool)

(assert (=> b!7050267 (= e!4238335 tp!1938839)))

(assert (= (and setNonEmpty!49603 condSetEmpty!49609) setIsEmpty!49609))

(assert (= (and setNonEmpty!49603 (not condSetEmpty!49609)) setNonEmpty!49609))

(assert (= setNonEmpty!49609 b!7050267))

(declare-fun m!7765906 () Bool)

(assert (=> setNonEmpty!49609 m!7765906))

(declare-fun b!7050268 () Bool)

(declare-fun e!4238336 () Bool)

(declare-fun tp!1938841 () Bool)

(declare-fun tp!1938842 () Bool)

(assert (=> b!7050268 (= e!4238336 (and tp!1938841 tp!1938842))))

(assert (=> b!7050211 (= tp!1938808 e!4238336)))

(assert (= (and b!7050211 ((_ is Cons!68001) (exprs!7029 ct2!306))) b!7050268))

(declare-fun b_lambda!268061 () Bool)

(assert (= b_lambda!268057 (or b!7050212 b_lambda!268061)))

(declare-fun bs!1875704 () Bool)

(declare-fun d!2202434 () Bool)

(assert (= bs!1875704 (and d!2202434 b!7050212)))

(assert (=> bs!1875704 (= (dynLambda!27548 lambda!418733 lt!2529191) (nullableContext!89 lt!2529191))))

(declare-fun m!7765908 () Bool)

(assert (=> bs!1875704 m!7765908))

(assert (=> d!2202426 d!2202434))

(check-sat (not d!2202426) (not b!7050257) (not d!2202408) (not d!2202418) (not b!7050225) tp_is_empty!44291 (not d!2202424) (not d!2202422) (not d!2202402) (not b!7050251) (not b!7050267) (not setNonEmpty!49609) (not b!7050268) (not d!2202410) (not d!2202404) (not bs!1875704) (not b!7050226) (not b_lambda!268061))
(check-sat)
