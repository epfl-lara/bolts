; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!541524 () Bool)

(assert start!541524)

(declare-fun b!5127620 () Bool)

(declare-fun e!3197847 () Bool)

(declare-fun tp!1430495 () Bool)

(assert (=> b!5127620 (= e!3197847 tp!1430495)))

(declare-fun res!2183155 () Bool)

(declare-fun e!3197848 () Bool)

(assert (=> start!541524 (=> (not res!2183155) (not e!3197848))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28816 0))(
  ( (C!28817 (val!24060 Int)) )
))
(declare-datatypes ((Regex!14275 0))(
  ( (ElementMatch!14275 (c!881656 C!28816)) (Concat!23120 (regOne!29062 Regex!14275) (regTwo!29062 Regex!14275)) (EmptyExpr!14275) (Star!14275 (reg!14604 Regex!14275)) (EmptyLang!14275) (Union!14275 (regOne!29063 Regex!14275) (regTwo!29063 Regex!14275)) )
))
(declare-datatypes ((List!59490 0))(
  ( (Nil!59366) (Cons!59366 (h!65814 Regex!14275) (t!372517 List!59490)) )
))
(declare-datatypes ((Context!7318 0))(
  ( (Context!7319 (exprs!4159 List!59490)) )
))
(declare-fun z!1006 () (InoxSet Context!7318))

(declare-fun lostCauseZipper!1153 ((InoxSet Context!7318)) Bool)

(assert (=> start!541524 (= res!2183155 (lostCauseZipper!1153 z!1006))))

(assert (=> start!541524 e!3197848))

(declare-fun condSetEmpty!30768 () Bool)

(assert (=> start!541524 (= condSetEmpty!30768 (= z!1006 ((as const (Array Context!7318 Bool)) false)))))

(declare-fun setRes!30768 () Bool)

(assert (=> start!541524 setRes!30768))

(declare-fun e!3197846 () Bool)

(assert (=> start!541524 e!3197846))

(declare-fun b!5127621 () Bool)

(declare-datatypes ((List!59491 0))(
  ( (Nil!59367) (Cons!59367 (h!65815 C!28816) (t!372518 List!59491)) )
))
(declare-fun s!2272 () List!59491)

(declare-fun size!39563 (List!59491) Int)

(assert (=> b!5127621 (= e!3197848 (not (< (size!39563 (t!372518 s!2272)) (size!39563 s!2272))))))

(declare-fun derivationStepZipper!878 ((InoxSet Context!7318) C!28816) (InoxSet Context!7318))

(assert (=> b!5127621 (lostCauseZipper!1153 (derivationStepZipper!878 z!1006 (h!65815 s!2272)))))

(declare-datatypes ((Unit!150549 0))(
  ( (Unit!150550) )
))
(declare-fun lt!2114729 () Unit!150549)

(declare-fun lemmaLostCauseFixPoint!4 ((InoxSet Context!7318) C!28816) Unit!150549)

(assert (=> b!5127621 (= lt!2114729 (lemmaLostCauseFixPoint!4 z!1006 (h!65815 s!2272)))))

(declare-fun setElem!30768 () Context!7318)

(declare-fun tp!1430494 () Bool)

(declare-fun setNonEmpty!30768 () Bool)

(declare-fun inv!78868 (Context!7318) Bool)

(assert (=> setNonEmpty!30768 (= setRes!30768 (and tp!1430494 (inv!78868 setElem!30768) e!3197847))))

(declare-fun setRest!30768 () (InoxSet Context!7318))

(assert (=> setNonEmpty!30768 (= z!1006 ((_ map or) (store ((as const (Array Context!7318 Bool)) false) setElem!30768 true) setRest!30768))))

(declare-fun setIsEmpty!30768 () Bool)

(assert (=> setIsEmpty!30768 setRes!30768))

(declare-fun b!5127622 () Bool)

(declare-fun tp_is_empty!37819 () Bool)

(declare-fun tp!1430493 () Bool)

(assert (=> b!5127622 (= e!3197846 (and tp_is_empty!37819 tp!1430493))))

(declare-fun b!5127623 () Bool)

(declare-fun res!2183156 () Bool)

(assert (=> b!5127623 (=> (not res!2183156) (not e!3197848))))

(get-info :version)

(assert (=> b!5127623 (= res!2183156 (not ((_ is Nil!59367) s!2272)))))

(assert (= (and start!541524 res!2183155) b!5127623))

(assert (= (and b!5127623 res!2183156) b!5127621))

(assert (= (and start!541524 condSetEmpty!30768) setIsEmpty!30768))

(assert (= (and start!541524 (not condSetEmpty!30768)) setNonEmpty!30768))

(assert (= setNonEmpty!30768 b!5127620))

(assert (= (and start!541524 ((_ is Cons!59367) s!2272)) b!5127622))

(declare-fun m!6191612 () Bool)

(assert (=> start!541524 m!6191612))

(declare-fun m!6191614 () Bool)

(assert (=> b!5127621 m!6191614))

(declare-fun m!6191616 () Bool)

(assert (=> b!5127621 m!6191616))

(declare-fun m!6191618 () Bool)

(assert (=> b!5127621 m!6191618))

(declare-fun m!6191620 () Bool)

(assert (=> b!5127621 m!6191620))

(declare-fun m!6191622 () Bool)

(assert (=> b!5127621 m!6191622))

(assert (=> b!5127621 m!6191614))

(declare-fun m!6191624 () Bool)

(assert (=> setNonEmpty!30768 m!6191624))

(check-sat (not start!541524) (not b!5127621) (not b!5127622) tp_is_empty!37819 (not setNonEmpty!30768) (not b!5127620))
(check-sat)
(get-model)

(declare-fun bs!1194217 () Bool)

(declare-fun b!5127628 () Bool)

(declare-fun d!1658643 () Bool)

(assert (= bs!1194217 (and b!5127628 d!1658643)))

(declare-fun lambda!252093 () Int)

(declare-fun lambda!252092 () Int)

(assert (=> bs!1194217 (not (= lambda!252093 lambda!252092))))

(declare-fun bs!1194218 () Bool)

(declare-fun b!5127629 () Bool)

(assert (= bs!1194218 (and b!5127629 d!1658643)))

(declare-fun lambda!252094 () Int)

(assert (=> bs!1194218 (not (= lambda!252094 lambda!252092))))

(declare-fun bs!1194219 () Bool)

(assert (= bs!1194219 (and b!5127629 b!5127628)))

(assert (=> bs!1194219 (= lambda!252094 lambda!252093)))

(declare-fun e!3197855 () Unit!150549)

(declare-fun Unit!150551 () Unit!150549)

(assert (=> b!5127629 (= e!3197855 Unit!150551)))

(declare-datatypes ((List!59492 0))(
  ( (Nil!59368) (Cons!59368 (h!65816 Context!7318) (t!372519 List!59492)) )
))
(declare-fun lt!2114750 () List!59492)

(declare-fun call!356942 () List!59492)

(assert (=> b!5127629 (= lt!2114750 call!356942)))

(declare-fun lt!2114746 () Unit!150549)

(declare-fun lemmaForallThenNotExists!341 (List!59492 Int) Unit!150549)

(assert (=> b!5127629 (= lt!2114746 (lemmaForallThenNotExists!341 lt!2114750 lambda!252092))))

(declare-fun call!356943 () Bool)

(assert (=> b!5127629 (not call!356943)))

(declare-fun lt!2114748 () Unit!150549)

(assert (=> b!5127629 (= lt!2114748 lt!2114746)))

(declare-fun lt!2114751 () List!59492)

(declare-fun c!881667 () Bool)

(declare-fun bm!356938 () Bool)

(declare-fun exists!1519 (List!59492 Int) Bool)

(assert (=> bm!356938 (= call!356943 (exists!1519 (ite c!881667 lt!2114751 lt!2114750) (ite c!881667 lambda!252093 lambda!252094)))))

(declare-fun Unit!150552 () Unit!150549)

(assert (=> b!5127628 (= e!3197855 Unit!150552)))

(assert (=> b!5127628 (= lt!2114751 call!356942)))

(declare-fun lt!2114753 () Unit!150549)

(declare-fun lemmaNotForallThenExists!358 (List!59492 Int) Unit!150549)

(assert (=> b!5127628 (= lt!2114753 (lemmaNotForallThenExists!358 lt!2114751 lambda!252092))))

(assert (=> b!5127628 call!356943))

(declare-fun lt!2114747 () Unit!150549)

(assert (=> b!5127628 (= lt!2114747 lt!2114753)))

(declare-fun bm!356937 () Bool)

(declare-fun toList!8286 ((InoxSet Context!7318)) List!59492)

(assert (=> bm!356937 (= call!356942 (toList!8286 z!1006))))

(declare-fun lt!2114749 () Bool)

(declare-datatypes ((Option!14718 0))(
  ( (None!14717) (Some!14717 (v!50730 List!59491)) )
))
(declare-fun isEmpty!31977 (Option!14718) Bool)

(declare-fun getLanguageWitness!849 ((InoxSet Context!7318)) Option!14718)

(assert (=> d!1658643 (= lt!2114749 (isEmpty!31977 (getLanguageWitness!849 z!1006)))))

(declare-fun forall!13665 ((InoxSet Context!7318) Int) Bool)

(assert (=> d!1658643 (= lt!2114749 (forall!13665 z!1006 lambda!252092))))

(declare-fun lt!2114752 () Unit!150549)

(assert (=> d!1658643 (= lt!2114752 e!3197855)))

(assert (=> d!1658643 (= c!881667 (not (forall!13665 z!1006 lambda!252092)))))

(assert (=> d!1658643 (= (lostCauseZipper!1153 z!1006) lt!2114749)))

(assert (= (and d!1658643 c!881667) b!5127628))

(assert (= (and d!1658643 (not c!881667)) b!5127629))

(assert (= (or b!5127628 b!5127629) bm!356937))

(assert (= (or b!5127628 b!5127629) bm!356938))

(declare-fun m!6191626 () Bool)

(assert (=> b!5127628 m!6191626))

(declare-fun m!6191628 () Bool)

(assert (=> bm!356937 m!6191628))

(declare-fun m!6191630 () Bool)

(assert (=> d!1658643 m!6191630))

(assert (=> d!1658643 m!6191630))

(declare-fun m!6191632 () Bool)

(assert (=> d!1658643 m!6191632))

(declare-fun m!6191634 () Bool)

(assert (=> d!1658643 m!6191634))

(assert (=> d!1658643 m!6191634))

(declare-fun m!6191636 () Bool)

(assert (=> bm!356938 m!6191636))

(declare-fun m!6191638 () Bool)

(assert (=> b!5127629 m!6191638))

(assert (=> start!541524 d!1658643))

(declare-fun d!1658645 () Bool)

(assert (=> d!1658645 true))

(declare-fun lambda!252097 () Int)

(declare-fun flatMap!374 ((InoxSet Context!7318) Int) (InoxSet Context!7318))

(assert (=> d!1658645 (= (derivationStepZipper!878 z!1006 (h!65815 s!2272)) (flatMap!374 z!1006 lambda!252097))))

(declare-fun bs!1194220 () Bool)

(assert (= bs!1194220 d!1658645))

(declare-fun m!6191640 () Bool)

(assert (=> bs!1194220 m!6191640))

(assert (=> b!5127621 d!1658645))

(declare-fun d!1658647 () Bool)

(declare-fun lt!2114756 () Int)

(assert (=> d!1658647 (>= lt!2114756 0)))

(declare-fun e!3197858 () Int)

(assert (=> d!1658647 (= lt!2114756 e!3197858)))

(declare-fun c!881672 () Bool)

(assert (=> d!1658647 (= c!881672 ((_ is Nil!59367) s!2272))))

(assert (=> d!1658647 (= (size!39563 s!2272) lt!2114756)))

(declare-fun b!5127636 () Bool)

(assert (=> b!5127636 (= e!3197858 0)))

(declare-fun b!5127637 () Bool)

(assert (=> b!5127637 (= e!3197858 (+ 1 (size!39563 (t!372518 s!2272))))))

(assert (= (and d!1658647 c!881672) b!5127636))

(assert (= (and d!1658647 (not c!881672)) b!5127637))

(assert (=> b!5127637 m!6191618))

(assert (=> b!5127621 d!1658647))

(declare-fun d!1658649 () Bool)

(assert (=> d!1658649 (lostCauseZipper!1153 (derivationStepZipper!878 z!1006 (h!65815 s!2272)))))

(declare-fun lt!2114759 () Unit!150549)

(declare-fun choose!37767 ((InoxSet Context!7318) C!28816) Unit!150549)

(assert (=> d!1658649 (= lt!2114759 (choose!37767 z!1006 (h!65815 s!2272)))))

(assert (=> d!1658649 (lostCauseZipper!1153 z!1006)))

(assert (=> d!1658649 (= (lemmaLostCauseFixPoint!4 z!1006 (h!65815 s!2272)) lt!2114759)))

(declare-fun bs!1194221 () Bool)

(assert (= bs!1194221 d!1658649))

(assert (=> bs!1194221 m!6191614))

(assert (=> bs!1194221 m!6191614))

(assert (=> bs!1194221 m!6191616))

(declare-fun m!6191642 () Bool)

(assert (=> bs!1194221 m!6191642))

(assert (=> bs!1194221 m!6191612))

(assert (=> b!5127621 d!1658649))

(declare-fun d!1658651 () Bool)

(declare-fun lt!2114760 () Int)

(assert (=> d!1658651 (>= lt!2114760 0)))

(declare-fun e!3197859 () Int)

(assert (=> d!1658651 (= lt!2114760 e!3197859)))

(declare-fun c!881673 () Bool)

(assert (=> d!1658651 (= c!881673 ((_ is Nil!59367) (t!372518 s!2272)))))

(assert (=> d!1658651 (= (size!39563 (t!372518 s!2272)) lt!2114760)))

(declare-fun b!5127638 () Bool)

(assert (=> b!5127638 (= e!3197859 0)))

(declare-fun b!5127639 () Bool)

(assert (=> b!5127639 (= e!3197859 (+ 1 (size!39563 (t!372518 (t!372518 s!2272)))))))

(assert (= (and d!1658651 c!881673) b!5127638))

(assert (= (and d!1658651 (not c!881673)) b!5127639))

(declare-fun m!6191644 () Bool)

(assert (=> b!5127639 m!6191644))

(assert (=> b!5127621 d!1658651))

(declare-fun bs!1194222 () Bool)

(declare-fun d!1658653 () Bool)

(assert (= bs!1194222 (and d!1658653 d!1658643)))

(declare-fun lambda!252098 () Int)

(assert (=> bs!1194222 (= lambda!252098 lambda!252092)))

(declare-fun bs!1194223 () Bool)

(assert (= bs!1194223 (and d!1658653 b!5127628)))

(assert (=> bs!1194223 (not (= lambda!252098 lambda!252093))))

(declare-fun bs!1194224 () Bool)

(assert (= bs!1194224 (and d!1658653 b!5127629)))

(assert (=> bs!1194224 (not (= lambda!252098 lambda!252094))))

(declare-fun bs!1194225 () Bool)

(declare-fun b!5127640 () Bool)

(assert (= bs!1194225 (and b!5127640 d!1658643)))

(declare-fun lambda!252099 () Int)

(assert (=> bs!1194225 (not (= lambda!252099 lambda!252092))))

(declare-fun bs!1194226 () Bool)

(assert (= bs!1194226 (and b!5127640 b!5127628)))

(assert (=> bs!1194226 (= lambda!252099 lambda!252093)))

(declare-fun bs!1194227 () Bool)

(assert (= bs!1194227 (and b!5127640 b!5127629)))

(assert (=> bs!1194227 (= lambda!252099 lambda!252094)))

(declare-fun bs!1194228 () Bool)

(assert (= bs!1194228 (and b!5127640 d!1658653)))

(assert (=> bs!1194228 (not (= lambda!252099 lambda!252098))))

(declare-fun bs!1194229 () Bool)

(declare-fun b!5127641 () Bool)

(assert (= bs!1194229 (and b!5127641 b!5127640)))

(declare-fun lambda!252100 () Int)

(assert (=> bs!1194229 (= lambda!252100 lambda!252099)))

(declare-fun bs!1194230 () Bool)

(assert (= bs!1194230 (and b!5127641 b!5127628)))

(assert (=> bs!1194230 (= lambda!252100 lambda!252093)))

(declare-fun bs!1194231 () Bool)

(assert (= bs!1194231 (and b!5127641 b!5127629)))

(assert (=> bs!1194231 (= lambda!252100 lambda!252094)))

(declare-fun bs!1194232 () Bool)

(assert (= bs!1194232 (and b!5127641 d!1658643)))

(assert (=> bs!1194232 (not (= lambda!252100 lambda!252092))))

(declare-fun bs!1194233 () Bool)

(assert (= bs!1194233 (and b!5127641 d!1658653)))

(assert (=> bs!1194233 (not (= lambda!252100 lambda!252098))))

(declare-fun e!3197860 () Unit!150549)

(declare-fun Unit!150553 () Unit!150549)

(assert (=> b!5127641 (= e!3197860 Unit!150553)))

(declare-fun lt!2114765 () List!59492)

(declare-fun call!356944 () List!59492)

(assert (=> b!5127641 (= lt!2114765 call!356944)))

(declare-fun lt!2114761 () Unit!150549)

(assert (=> b!5127641 (= lt!2114761 (lemmaForallThenNotExists!341 lt!2114765 lambda!252098))))

(declare-fun call!356945 () Bool)

(assert (=> b!5127641 (not call!356945)))

(declare-fun lt!2114763 () Unit!150549)

(assert (=> b!5127641 (= lt!2114763 lt!2114761)))

(declare-fun c!881674 () Bool)

(declare-fun lt!2114766 () List!59492)

(declare-fun bm!356940 () Bool)

(assert (=> bm!356940 (= call!356945 (exists!1519 (ite c!881674 lt!2114766 lt!2114765) (ite c!881674 lambda!252099 lambda!252100)))))

(declare-fun Unit!150554 () Unit!150549)

(assert (=> b!5127640 (= e!3197860 Unit!150554)))

(assert (=> b!5127640 (= lt!2114766 call!356944)))

(declare-fun lt!2114768 () Unit!150549)

(assert (=> b!5127640 (= lt!2114768 (lemmaNotForallThenExists!358 lt!2114766 lambda!252098))))

(assert (=> b!5127640 call!356945))

(declare-fun lt!2114762 () Unit!150549)

(assert (=> b!5127640 (= lt!2114762 lt!2114768)))

(declare-fun bm!356939 () Bool)

(assert (=> bm!356939 (= call!356944 (toList!8286 (derivationStepZipper!878 z!1006 (h!65815 s!2272))))))

(declare-fun lt!2114764 () Bool)

(assert (=> d!1658653 (= lt!2114764 (isEmpty!31977 (getLanguageWitness!849 (derivationStepZipper!878 z!1006 (h!65815 s!2272)))))))

(assert (=> d!1658653 (= lt!2114764 (forall!13665 (derivationStepZipper!878 z!1006 (h!65815 s!2272)) lambda!252098))))

(declare-fun lt!2114767 () Unit!150549)

(assert (=> d!1658653 (= lt!2114767 e!3197860)))

(assert (=> d!1658653 (= c!881674 (not (forall!13665 (derivationStepZipper!878 z!1006 (h!65815 s!2272)) lambda!252098)))))

(assert (=> d!1658653 (= (lostCauseZipper!1153 (derivationStepZipper!878 z!1006 (h!65815 s!2272))) lt!2114764)))

(assert (= (and d!1658653 c!881674) b!5127640))

(assert (= (and d!1658653 (not c!881674)) b!5127641))

(assert (= (or b!5127640 b!5127641) bm!356939))

(assert (= (or b!5127640 b!5127641) bm!356940))

(declare-fun m!6191646 () Bool)

(assert (=> b!5127640 m!6191646))

(assert (=> bm!356939 m!6191614))

(declare-fun m!6191648 () Bool)

(assert (=> bm!356939 m!6191648))

(assert (=> d!1658653 m!6191614))

(declare-fun m!6191650 () Bool)

(assert (=> d!1658653 m!6191650))

(assert (=> d!1658653 m!6191650))

(declare-fun m!6191652 () Bool)

(assert (=> d!1658653 m!6191652))

(assert (=> d!1658653 m!6191614))

(declare-fun m!6191654 () Bool)

(assert (=> d!1658653 m!6191654))

(assert (=> d!1658653 m!6191614))

(assert (=> d!1658653 m!6191654))

(declare-fun m!6191656 () Bool)

(assert (=> bm!356940 m!6191656))

(declare-fun m!6191658 () Bool)

(assert (=> b!5127641 m!6191658))

(assert (=> b!5127621 d!1658653))

(declare-fun d!1658655 () Bool)

(declare-fun lambda!252103 () Int)

(declare-fun forall!13666 (List!59490 Int) Bool)

(assert (=> d!1658655 (= (inv!78868 setElem!30768) (forall!13666 (exprs!4159 setElem!30768) lambda!252103))))

(declare-fun bs!1194234 () Bool)

(assert (= bs!1194234 d!1658655))

(declare-fun m!6191660 () Bool)

(assert (=> bs!1194234 m!6191660))

(assert (=> setNonEmpty!30768 d!1658655))

(declare-fun b!5127646 () Bool)

(declare-fun e!3197863 () Bool)

(declare-fun tp!1430500 () Bool)

(declare-fun tp!1430501 () Bool)

(assert (=> b!5127646 (= e!3197863 (and tp!1430500 tp!1430501))))

(assert (=> b!5127620 (= tp!1430495 e!3197863)))

(assert (= (and b!5127620 ((_ is Cons!59366) (exprs!4159 setElem!30768))) b!5127646))

(declare-fun condSetEmpty!30771 () Bool)

(assert (=> setNonEmpty!30768 (= condSetEmpty!30771 (= setRest!30768 ((as const (Array Context!7318 Bool)) false)))))

(declare-fun setRes!30771 () Bool)

(assert (=> setNonEmpty!30768 (= tp!1430494 setRes!30771)))

(declare-fun setIsEmpty!30771 () Bool)

(assert (=> setIsEmpty!30771 setRes!30771))

(declare-fun tp!1430507 () Bool)

(declare-fun e!3197866 () Bool)

(declare-fun setElem!30771 () Context!7318)

(declare-fun setNonEmpty!30771 () Bool)

(assert (=> setNonEmpty!30771 (= setRes!30771 (and tp!1430507 (inv!78868 setElem!30771) e!3197866))))

(declare-fun setRest!30771 () (InoxSet Context!7318))

(assert (=> setNonEmpty!30771 (= setRest!30768 ((_ map or) (store ((as const (Array Context!7318 Bool)) false) setElem!30771 true) setRest!30771))))

(declare-fun b!5127651 () Bool)

(declare-fun tp!1430506 () Bool)

(assert (=> b!5127651 (= e!3197866 tp!1430506)))

(assert (= (and setNonEmpty!30768 condSetEmpty!30771) setIsEmpty!30771))

(assert (= (and setNonEmpty!30768 (not condSetEmpty!30771)) setNonEmpty!30771))

(assert (= setNonEmpty!30771 b!5127651))

(declare-fun m!6191662 () Bool)

(assert (=> setNonEmpty!30771 m!6191662))

(declare-fun b!5127656 () Bool)

(declare-fun e!3197869 () Bool)

(declare-fun tp!1430510 () Bool)

(assert (=> b!5127656 (= e!3197869 (and tp_is_empty!37819 tp!1430510))))

(assert (=> b!5127622 (= tp!1430493 e!3197869)))

(assert (= (and b!5127622 ((_ is Cons!59367) (t!372518 s!2272))) b!5127656))

(check-sat (not b!5127639) (not setNonEmpty!30771) (not d!1658643) (not bm!356938) (not b!5127637) tp_is_empty!37819 (not b!5127656) (not b!5127629) (not bm!356937) (not b!5127651) (not d!1658649) (not d!1658645) (not bm!356939) (not b!5127646) (not d!1658655) (not b!5127628) (not d!1658653) (not b!5127641) (not b!5127640) (not bm!356940))
(check-sat)
