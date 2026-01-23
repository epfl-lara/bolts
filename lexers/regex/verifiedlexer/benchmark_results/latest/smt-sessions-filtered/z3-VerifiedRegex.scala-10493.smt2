; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!541542 () Bool)

(assert start!541542)

(declare-fun b!5127698 () Bool)

(declare-fun e!3197903 () Bool)

(declare-fun tp!1430542 () Bool)

(assert (=> b!5127698 (= e!3197903 tp!1430542)))

(declare-fun b!5127699 () Bool)

(declare-fun e!3197901 () Bool)

(declare-fun tp_is_empty!37823 () Bool)

(declare-fun tp!1430543 () Bool)

(assert (=> b!5127699 (= e!3197901 (and tp_is_empty!37823 tp!1430543))))

(declare-fun b!5127700 () Bool)

(declare-fun e!3197902 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28820 0))(
  ( (C!28821 (val!24062 Int)) )
))
(declare-datatypes ((Regex!14277 0))(
  ( (ElementMatch!14277 (c!881687 C!28820)) (Concat!23122 (regOne!29066 Regex!14277) (regTwo!29066 Regex!14277)) (EmptyExpr!14277) (Star!14277 (reg!14606 Regex!14277)) (EmptyLang!14277) (Union!14277 (regOne!29067 Regex!14277) (regTwo!29067 Regex!14277)) )
))
(declare-datatypes ((List!59495 0))(
  ( (Nil!59371) (Cons!59371 (h!65819 Regex!14277) (t!372522 List!59495)) )
))
(declare-datatypes ((Context!7322 0))(
  ( (Context!7323 (exprs!4161 List!59495)) )
))
(declare-fun z!1006 () (InoxSet Context!7322))

(declare-datatypes ((List!59496 0))(
  ( (Nil!59372) (Cons!59372 (h!65820 C!28820) (t!372523 List!59496)) )
))
(declare-fun s!2272 () List!59496)

(declare-fun matchZipper!937 ((InoxSet Context!7322) List!59496) Bool)

(assert (=> b!5127700 (= e!3197902 (not (not (matchZipper!937 z!1006 s!2272))))))

(declare-fun lt!2114810 () (InoxSet Context!7322))

(assert (=> b!5127700 (not (matchZipper!937 lt!2114810 (t!372523 s!2272)))))

(declare-datatypes ((Unit!150557 0))(
  ( (Unit!150558) )
))
(declare-fun lt!2114808 () Unit!150557)

(declare-fun lemmaLostCauseCannotMatch!55 ((InoxSet Context!7322) List!59496) Unit!150557)

(assert (=> b!5127700 (= lt!2114808 (lemmaLostCauseCannotMatch!55 lt!2114810 (t!372523 s!2272)))))

(declare-fun lostCauseZipper!1155 ((InoxSet Context!7322)) Bool)

(assert (=> b!5127700 (lostCauseZipper!1155 lt!2114810)))

(declare-fun derivationStepZipper!880 ((InoxSet Context!7322) C!28820) (InoxSet Context!7322))

(assert (=> b!5127700 (= lt!2114810 (derivationStepZipper!880 z!1006 (h!65820 s!2272)))))

(declare-fun lt!2114809 () Unit!150557)

(declare-fun lemmaLostCauseFixPoint!6 ((InoxSet Context!7322) C!28820) Unit!150557)

(assert (=> b!5127700 (= lt!2114809 (lemmaLostCauseFixPoint!6 z!1006 (h!65820 s!2272)))))

(declare-fun res!2183167 () Bool)

(assert (=> start!541542 (=> (not res!2183167) (not e!3197902))))

(assert (=> start!541542 (= res!2183167 (lostCauseZipper!1155 z!1006))))

(assert (=> start!541542 e!3197902))

(declare-fun condSetEmpty!30780 () Bool)

(assert (=> start!541542 (= condSetEmpty!30780 (= z!1006 ((as const (Array Context!7322 Bool)) false)))))

(declare-fun setRes!30780 () Bool)

(assert (=> start!541542 setRes!30780))

(assert (=> start!541542 e!3197901))

(declare-fun setIsEmpty!30780 () Bool)

(assert (=> setIsEmpty!30780 setRes!30780))

(declare-fun b!5127701 () Bool)

(declare-fun res!2183168 () Bool)

(assert (=> b!5127701 (=> (not res!2183168) (not e!3197902))))

(get-info :version)

(assert (=> b!5127701 (= res!2183168 (not ((_ is Nil!59372) s!2272)))))

(declare-fun tp!1430541 () Bool)

(declare-fun setElem!30780 () Context!7322)

(declare-fun setNonEmpty!30780 () Bool)

(declare-fun inv!78873 (Context!7322) Bool)

(assert (=> setNonEmpty!30780 (= setRes!30780 (and tp!1430541 (inv!78873 setElem!30780) e!3197903))))

(declare-fun setRest!30780 () (InoxSet Context!7322))

(assert (=> setNonEmpty!30780 (= z!1006 ((_ map or) (store ((as const (Array Context!7322 Bool)) false) setElem!30780 true) setRest!30780))))

(assert (= (and start!541542 res!2183167) b!5127701))

(assert (= (and b!5127701 res!2183168) b!5127700))

(assert (= (and start!541542 condSetEmpty!30780) setIsEmpty!30780))

(assert (= (and start!541542 (not condSetEmpty!30780)) setNonEmpty!30780))

(assert (= setNonEmpty!30780 b!5127698))

(assert (= (and start!541542 ((_ is Cons!59372) s!2272)) b!5127699))

(declare-fun m!6191682 () Bool)

(assert (=> b!5127700 m!6191682))

(declare-fun m!6191684 () Bool)

(assert (=> b!5127700 m!6191684))

(declare-fun m!6191686 () Bool)

(assert (=> b!5127700 m!6191686))

(declare-fun m!6191688 () Bool)

(assert (=> b!5127700 m!6191688))

(declare-fun m!6191690 () Bool)

(assert (=> b!5127700 m!6191690))

(declare-fun m!6191692 () Bool)

(assert (=> b!5127700 m!6191692))

(declare-fun m!6191694 () Bool)

(assert (=> start!541542 m!6191694))

(declare-fun m!6191696 () Bool)

(assert (=> setNonEmpty!30780 m!6191696))

(check-sat (not b!5127699) tp_is_empty!37823 (not b!5127700) (not b!5127698) (not start!541542) (not setNonEmpty!30780))
(check-sat)
(get-model)

(declare-fun d!1658662 () Bool)

(declare-fun lambda!252148 () Int)

(declare-fun forall!13669 (List!59495 Int) Bool)

(assert (=> d!1658662 (= (inv!78873 setElem!30780) (forall!13669 (exprs!4161 setElem!30780) lambda!252148))))

(declare-fun bs!1194260 () Bool)

(assert (= bs!1194260 d!1658662))

(declare-fun m!6191762 () Bool)

(assert (=> bs!1194260 m!6191762))

(assert (=> setNonEmpty!30780 d!1658662))

(declare-fun bs!1194261 () Bool)

(declare-fun b!5127739 () Bool)

(declare-fun d!1658678 () Bool)

(assert (= bs!1194261 (and b!5127739 d!1658678)))

(declare-fun lambda!252162 () Int)

(declare-fun lambda!252161 () Int)

(assert (=> bs!1194261 (not (= lambda!252162 lambda!252161))))

(declare-fun bs!1194262 () Bool)

(declare-fun b!5127740 () Bool)

(assert (= bs!1194262 (and b!5127740 d!1658678)))

(declare-fun lambda!252163 () Int)

(assert (=> bs!1194262 (not (= lambda!252163 lambda!252161))))

(declare-fun bs!1194263 () Bool)

(assert (= bs!1194263 (and b!5127740 b!5127739)))

(assert (=> bs!1194263 (= lambda!252163 lambda!252162)))

(declare-fun bm!356959 () Bool)

(declare-datatypes ((List!59498 0))(
  ( (Nil!59374) (Cons!59374 (h!65822 Context!7322) (t!372525 List!59498)) )
))
(declare-fun call!356964 () List!59498)

(declare-fun toList!8288 ((InoxSet Context!7322)) List!59498)

(assert (=> bm!356959 (= call!356964 (toList!8288 z!1006))))

(declare-fun c!881716 () Bool)

(declare-fun call!356965 () Bool)

(declare-fun bm!356960 () Bool)

(declare-fun lt!2114865 () List!59498)

(declare-fun lt!2114867 () List!59498)

(declare-fun exists!1521 (List!59498 Int) Bool)

(assert (=> bm!356960 (= call!356965 (exists!1521 (ite c!881716 lt!2114867 lt!2114865) (ite c!881716 lambda!252162 lambda!252163)))))

(declare-fun lt!2114870 () Bool)

(declare-datatypes ((Option!14720 0))(
  ( (None!14719) (Some!14719 (v!50732 List!59496)) )
))
(declare-fun isEmpty!31980 (Option!14720) Bool)

(declare-fun getLanguageWitness!851 ((InoxSet Context!7322)) Option!14720)

(assert (=> d!1658678 (= lt!2114870 (isEmpty!31980 (getLanguageWitness!851 z!1006)))))

(declare-fun forall!13670 ((InoxSet Context!7322) Int) Bool)

(assert (=> d!1658678 (= lt!2114870 (forall!13670 z!1006 lambda!252161))))

(declare-fun lt!2114872 () Unit!150557)

(declare-fun e!3197931 () Unit!150557)

(assert (=> d!1658678 (= lt!2114872 e!3197931)))

(assert (=> d!1658678 (= c!881716 (not (forall!13670 z!1006 lambda!252161)))))

(assert (=> d!1658678 (= (lostCauseZipper!1155 z!1006) lt!2114870)))

(declare-fun Unit!150563 () Unit!150557)

(assert (=> b!5127740 (= e!3197931 Unit!150563)))

(assert (=> b!5127740 (= lt!2114865 call!356964)))

(declare-fun lt!2114869 () Unit!150557)

(declare-fun lemmaForallThenNotExists!343 (List!59498 Int) Unit!150557)

(assert (=> b!5127740 (= lt!2114869 (lemmaForallThenNotExists!343 lt!2114865 lambda!252161))))

(assert (=> b!5127740 (not call!356965)))

(declare-fun lt!2114868 () Unit!150557)

(assert (=> b!5127740 (= lt!2114868 lt!2114869)))

(declare-fun Unit!150564 () Unit!150557)

(assert (=> b!5127739 (= e!3197931 Unit!150564)))

(assert (=> b!5127739 (= lt!2114867 call!356964)))

(declare-fun lt!2114866 () Unit!150557)

(declare-fun lemmaNotForallThenExists!360 (List!59498 Int) Unit!150557)

(assert (=> b!5127739 (= lt!2114866 (lemmaNotForallThenExists!360 lt!2114867 lambda!252161))))

(assert (=> b!5127739 call!356965))

(declare-fun lt!2114871 () Unit!150557)

(assert (=> b!5127739 (= lt!2114871 lt!2114866)))

(assert (= (and d!1658678 c!881716) b!5127739))

(assert (= (and d!1658678 (not c!881716)) b!5127740))

(assert (= (or b!5127739 b!5127740) bm!356959))

(assert (= (or b!5127739 b!5127740) bm!356960))

(declare-fun m!6191764 () Bool)

(assert (=> bm!356960 m!6191764))

(declare-fun m!6191766 () Bool)

(assert (=> d!1658678 m!6191766))

(assert (=> d!1658678 m!6191766))

(declare-fun m!6191768 () Bool)

(assert (=> d!1658678 m!6191768))

(declare-fun m!6191770 () Bool)

(assert (=> d!1658678 m!6191770))

(assert (=> d!1658678 m!6191770))

(declare-fun m!6191772 () Bool)

(assert (=> bm!356959 m!6191772))

(declare-fun m!6191774 () Bool)

(assert (=> b!5127739 m!6191774))

(declare-fun m!6191776 () Bool)

(assert (=> b!5127740 m!6191776))

(assert (=> start!541542 d!1658678))

(declare-fun d!1658680 () Bool)

(assert (=> d!1658680 true))

(declare-fun lambda!252166 () Int)

(declare-fun flatMap!376 ((InoxSet Context!7322) Int) (InoxSet Context!7322))

(assert (=> d!1658680 (= (derivationStepZipper!880 z!1006 (h!65820 s!2272)) (flatMap!376 z!1006 lambda!252166))))

(declare-fun bs!1194264 () Bool)

(assert (= bs!1194264 d!1658680))

(declare-fun m!6191778 () Bool)

(assert (=> bs!1194264 m!6191778))

(assert (=> b!5127700 d!1658680))

(declare-fun d!1658682 () Bool)

(assert (=> d!1658682 (not (matchZipper!937 lt!2114810 (t!372523 s!2272)))))

(declare-fun lt!2114875 () Unit!150557)

(declare-fun choose!37770 ((InoxSet Context!7322) List!59496) Unit!150557)

(assert (=> d!1658682 (= lt!2114875 (choose!37770 lt!2114810 (t!372523 s!2272)))))

(assert (=> d!1658682 (lostCauseZipper!1155 lt!2114810)))

(assert (=> d!1658682 (= (lemmaLostCauseCannotMatch!55 lt!2114810 (t!372523 s!2272)) lt!2114875)))

(declare-fun bs!1194265 () Bool)

(assert (= bs!1194265 d!1658682))

(assert (=> bs!1194265 m!6191690))

(declare-fun m!6191780 () Bool)

(assert (=> bs!1194265 m!6191780))

(assert (=> bs!1194265 m!6191684))

(assert (=> b!5127700 d!1658682))

(declare-fun bs!1194266 () Bool)

(declare-fun d!1658684 () Bool)

(assert (= bs!1194266 (and d!1658684 d!1658678)))

(declare-fun lambda!252167 () Int)

(assert (=> bs!1194266 (= lambda!252167 lambda!252161)))

(declare-fun bs!1194267 () Bool)

(assert (= bs!1194267 (and d!1658684 b!5127739)))

(assert (=> bs!1194267 (not (= lambda!252167 lambda!252162))))

(declare-fun bs!1194268 () Bool)

(assert (= bs!1194268 (and d!1658684 b!5127740)))

(assert (=> bs!1194268 (not (= lambda!252167 lambda!252163))))

(declare-fun bs!1194269 () Bool)

(declare-fun b!5127743 () Bool)

(assert (= bs!1194269 (and b!5127743 d!1658678)))

(declare-fun lambda!252168 () Int)

(assert (=> bs!1194269 (not (= lambda!252168 lambda!252161))))

(declare-fun bs!1194270 () Bool)

(assert (= bs!1194270 (and b!5127743 b!5127739)))

(assert (=> bs!1194270 (= lambda!252168 lambda!252162)))

(declare-fun bs!1194271 () Bool)

(assert (= bs!1194271 (and b!5127743 b!5127740)))

(assert (=> bs!1194271 (= lambda!252168 lambda!252163)))

(declare-fun bs!1194272 () Bool)

(assert (= bs!1194272 (and b!5127743 d!1658684)))

(assert (=> bs!1194272 (not (= lambda!252168 lambda!252167))))

(declare-fun bs!1194273 () Bool)

(declare-fun b!5127744 () Bool)

(assert (= bs!1194273 (and b!5127744 b!5127743)))

(declare-fun lambda!252169 () Int)

(assert (=> bs!1194273 (= lambda!252169 lambda!252168)))

(declare-fun bs!1194274 () Bool)

(assert (= bs!1194274 (and b!5127744 b!5127740)))

(assert (=> bs!1194274 (= lambda!252169 lambda!252163)))

(declare-fun bs!1194275 () Bool)

(assert (= bs!1194275 (and b!5127744 d!1658678)))

(assert (=> bs!1194275 (not (= lambda!252169 lambda!252161))))

(declare-fun bs!1194276 () Bool)

(assert (= bs!1194276 (and b!5127744 d!1658684)))

(assert (=> bs!1194276 (not (= lambda!252169 lambda!252167))))

(declare-fun bs!1194277 () Bool)

(assert (= bs!1194277 (and b!5127744 b!5127739)))

(assert (=> bs!1194277 (= lambda!252169 lambda!252162)))

(declare-fun bm!356961 () Bool)

(declare-fun call!356966 () List!59498)

(assert (=> bm!356961 (= call!356966 (toList!8288 lt!2114810))))

(declare-fun c!881719 () Bool)

(declare-fun lt!2114878 () List!59498)

(declare-fun call!356967 () Bool)

(declare-fun bm!356962 () Bool)

(declare-fun lt!2114876 () List!59498)

(assert (=> bm!356962 (= call!356967 (exists!1521 (ite c!881719 lt!2114878 lt!2114876) (ite c!881719 lambda!252168 lambda!252169)))))

(declare-fun lt!2114881 () Bool)

(assert (=> d!1658684 (= lt!2114881 (isEmpty!31980 (getLanguageWitness!851 lt!2114810)))))

(assert (=> d!1658684 (= lt!2114881 (forall!13670 lt!2114810 lambda!252167))))

(declare-fun lt!2114883 () Unit!150557)

(declare-fun e!3197932 () Unit!150557)

(assert (=> d!1658684 (= lt!2114883 e!3197932)))

(assert (=> d!1658684 (= c!881719 (not (forall!13670 lt!2114810 lambda!252167)))))

(assert (=> d!1658684 (= (lostCauseZipper!1155 lt!2114810) lt!2114881)))

(declare-fun Unit!150565 () Unit!150557)

(assert (=> b!5127744 (= e!3197932 Unit!150565)))

(assert (=> b!5127744 (= lt!2114876 call!356966)))

(declare-fun lt!2114880 () Unit!150557)

(assert (=> b!5127744 (= lt!2114880 (lemmaForallThenNotExists!343 lt!2114876 lambda!252167))))

(assert (=> b!5127744 (not call!356967)))

(declare-fun lt!2114879 () Unit!150557)

(assert (=> b!5127744 (= lt!2114879 lt!2114880)))

(declare-fun Unit!150566 () Unit!150557)

(assert (=> b!5127743 (= e!3197932 Unit!150566)))

(assert (=> b!5127743 (= lt!2114878 call!356966)))

(declare-fun lt!2114877 () Unit!150557)

(assert (=> b!5127743 (= lt!2114877 (lemmaNotForallThenExists!360 lt!2114878 lambda!252167))))

(assert (=> b!5127743 call!356967))

(declare-fun lt!2114882 () Unit!150557)

(assert (=> b!5127743 (= lt!2114882 lt!2114877)))

(assert (= (and d!1658684 c!881719) b!5127743))

(assert (= (and d!1658684 (not c!881719)) b!5127744))

(assert (= (or b!5127743 b!5127744) bm!356961))

(assert (= (or b!5127743 b!5127744) bm!356962))

(declare-fun m!6191782 () Bool)

(assert (=> bm!356962 m!6191782))

(declare-fun m!6191784 () Bool)

(assert (=> d!1658684 m!6191784))

(assert (=> d!1658684 m!6191784))

(declare-fun m!6191786 () Bool)

(assert (=> d!1658684 m!6191786))

(declare-fun m!6191788 () Bool)

(assert (=> d!1658684 m!6191788))

(assert (=> d!1658684 m!6191788))

(declare-fun m!6191790 () Bool)

(assert (=> bm!356961 m!6191790))

(declare-fun m!6191792 () Bool)

(assert (=> b!5127743 m!6191792))

(declare-fun m!6191794 () Bool)

(assert (=> b!5127744 m!6191794))

(assert (=> b!5127700 d!1658684))

(declare-fun d!1658686 () Bool)

(assert (=> d!1658686 (lostCauseZipper!1155 (derivationStepZipper!880 z!1006 (h!65820 s!2272)))))

(declare-fun lt!2114886 () Unit!150557)

(declare-fun choose!37771 ((InoxSet Context!7322) C!28820) Unit!150557)

(assert (=> d!1658686 (= lt!2114886 (choose!37771 z!1006 (h!65820 s!2272)))))

(assert (=> d!1658686 (lostCauseZipper!1155 z!1006)))

(assert (=> d!1658686 (= (lemmaLostCauseFixPoint!6 z!1006 (h!65820 s!2272)) lt!2114886)))

(declare-fun bs!1194278 () Bool)

(assert (= bs!1194278 d!1658686))

(assert (=> bs!1194278 m!6191692))

(assert (=> bs!1194278 m!6191692))

(declare-fun m!6191796 () Bool)

(assert (=> bs!1194278 m!6191796))

(declare-fun m!6191798 () Bool)

(assert (=> bs!1194278 m!6191798))

(assert (=> bs!1194278 m!6191694))

(assert (=> b!5127700 d!1658686))

(declare-fun d!1658688 () Bool)

(declare-fun c!881722 () Bool)

(declare-fun isEmpty!31981 (List!59496) Bool)

(assert (=> d!1658688 (= c!881722 (isEmpty!31981 (t!372523 s!2272)))))

(declare-fun e!3197935 () Bool)

(assert (=> d!1658688 (= (matchZipper!937 lt!2114810 (t!372523 s!2272)) e!3197935)))

(declare-fun b!5127749 () Bool)

(declare-fun nullableZipper!1062 ((InoxSet Context!7322)) Bool)

(assert (=> b!5127749 (= e!3197935 (nullableZipper!1062 lt!2114810))))

(declare-fun b!5127750 () Bool)

(declare-fun head!10969 (List!59496) C!28820)

(declare-fun tail!10104 (List!59496) List!59496)

(assert (=> b!5127750 (= e!3197935 (matchZipper!937 (derivationStepZipper!880 lt!2114810 (head!10969 (t!372523 s!2272))) (tail!10104 (t!372523 s!2272))))))

(assert (= (and d!1658688 c!881722) b!5127749))

(assert (= (and d!1658688 (not c!881722)) b!5127750))

(declare-fun m!6191800 () Bool)

(assert (=> d!1658688 m!6191800))

(declare-fun m!6191802 () Bool)

(assert (=> b!5127749 m!6191802))

(declare-fun m!6191804 () Bool)

(assert (=> b!5127750 m!6191804))

(assert (=> b!5127750 m!6191804))

(declare-fun m!6191806 () Bool)

(assert (=> b!5127750 m!6191806))

(declare-fun m!6191808 () Bool)

(assert (=> b!5127750 m!6191808))

(assert (=> b!5127750 m!6191806))

(assert (=> b!5127750 m!6191808))

(declare-fun m!6191810 () Bool)

(assert (=> b!5127750 m!6191810))

(assert (=> b!5127700 d!1658688))

(declare-fun d!1658690 () Bool)

(declare-fun c!881723 () Bool)

(assert (=> d!1658690 (= c!881723 (isEmpty!31981 s!2272))))

(declare-fun e!3197936 () Bool)

(assert (=> d!1658690 (= (matchZipper!937 z!1006 s!2272) e!3197936)))

(declare-fun b!5127751 () Bool)

(assert (=> b!5127751 (= e!3197936 (nullableZipper!1062 z!1006))))

(declare-fun b!5127752 () Bool)

(assert (=> b!5127752 (= e!3197936 (matchZipper!937 (derivationStepZipper!880 z!1006 (head!10969 s!2272)) (tail!10104 s!2272)))))

(assert (= (and d!1658690 c!881723) b!5127751))

(assert (= (and d!1658690 (not c!881723)) b!5127752))

(declare-fun m!6191812 () Bool)

(assert (=> d!1658690 m!6191812))

(declare-fun m!6191814 () Bool)

(assert (=> b!5127751 m!6191814))

(declare-fun m!6191816 () Bool)

(assert (=> b!5127752 m!6191816))

(assert (=> b!5127752 m!6191816))

(declare-fun m!6191818 () Bool)

(assert (=> b!5127752 m!6191818))

(declare-fun m!6191820 () Bool)

(assert (=> b!5127752 m!6191820))

(assert (=> b!5127752 m!6191818))

(assert (=> b!5127752 m!6191820))

(declare-fun m!6191822 () Bool)

(assert (=> b!5127752 m!6191822))

(assert (=> b!5127700 d!1658690))

(declare-fun b!5127757 () Bool)

(declare-fun e!3197939 () Bool)

(declare-fun tp!1430561 () Bool)

(assert (=> b!5127757 (= e!3197939 (and tp_is_empty!37823 tp!1430561))))

(assert (=> b!5127699 (= tp!1430543 e!3197939)))

(assert (= (and b!5127699 ((_ is Cons!59372) (t!372523 s!2272))) b!5127757))

(declare-fun b!5127762 () Bool)

(declare-fun e!3197942 () Bool)

(declare-fun tp!1430566 () Bool)

(declare-fun tp!1430567 () Bool)

(assert (=> b!5127762 (= e!3197942 (and tp!1430566 tp!1430567))))

(assert (=> b!5127698 (= tp!1430542 e!3197942)))

(assert (= (and b!5127698 ((_ is Cons!59371) (exprs!4161 setElem!30780))) b!5127762))

(declare-fun condSetEmpty!30786 () Bool)

(assert (=> setNonEmpty!30780 (= condSetEmpty!30786 (= setRest!30780 ((as const (Array Context!7322 Bool)) false)))))

(declare-fun setRes!30786 () Bool)

(assert (=> setNonEmpty!30780 (= tp!1430541 setRes!30786)))

(declare-fun setIsEmpty!30786 () Bool)

(assert (=> setIsEmpty!30786 setRes!30786))

(declare-fun setElem!30786 () Context!7322)

(declare-fun setNonEmpty!30786 () Bool)

(declare-fun tp!1430573 () Bool)

(declare-fun e!3197945 () Bool)

(assert (=> setNonEmpty!30786 (= setRes!30786 (and tp!1430573 (inv!78873 setElem!30786) e!3197945))))

(declare-fun setRest!30786 () (InoxSet Context!7322))

(assert (=> setNonEmpty!30786 (= setRest!30780 ((_ map or) (store ((as const (Array Context!7322 Bool)) false) setElem!30786 true) setRest!30786))))

(declare-fun b!5127767 () Bool)

(declare-fun tp!1430572 () Bool)

(assert (=> b!5127767 (= e!3197945 tp!1430572)))

(assert (= (and setNonEmpty!30780 condSetEmpty!30786) setIsEmpty!30786))

(assert (= (and setNonEmpty!30780 (not condSetEmpty!30786)) setNonEmpty!30786))

(assert (= setNonEmpty!30786 b!5127767))

(declare-fun m!6191824 () Bool)

(assert (=> setNonEmpty!30786 m!6191824))

(check-sat (not b!5127757) (not b!5127751) (not d!1658680) (not b!5127767) (not b!5127743) (not b!5127739) tp_is_empty!37823 (not b!5127762) (not bm!356960) (not d!1658688) (not d!1658678) (not b!5127740) (not d!1658686) (not bm!356961) (not b!5127749) (not bm!356959) (not b!5127744) (not setNonEmpty!30786) (not d!1658682) (not d!1658662) (not bm!356962) (not d!1658690) (not d!1658684) (not b!5127750) (not b!5127752))
(check-sat)
(get-model)

(declare-fun bs!1194350 () Bool)

(declare-fun d!1658716 () Bool)

(assert (= bs!1194350 (and d!1658716 b!5127740)))

(declare-fun lambda!252192 () Int)

(assert (=> bs!1194350 (not (= lambda!252192 lambda!252163))))

(declare-fun bs!1194351 () Bool)

(assert (= bs!1194351 (and d!1658716 d!1658678)))

(assert (=> bs!1194351 (not (= lambda!252192 lambda!252161))))

(declare-fun bs!1194352 () Bool)

(assert (= bs!1194352 (and d!1658716 d!1658684)))

(assert (=> bs!1194352 (not (= lambda!252192 lambda!252167))))

(declare-fun bs!1194353 () Bool)

(assert (= bs!1194353 (and d!1658716 b!5127739)))

(assert (=> bs!1194353 (not (= lambda!252192 lambda!252162))))

(declare-fun bs!1194354 () Bool)

(assert (= bs!1194354 (and d!1658716 b!5127744)))

(assert (=> bs!1194354 (not (= lambda!252192 lambda!252169))))

(declare-fun bs!1194355 () Bool)

(assert (= bs!1194355 (and d!1658716 b!5127743)))

(assert (=> bs!1194355 (not (= lambda!252192 lambda!252168))))

(assert (=> d!1658716 true))

(declare-fun order!26813 () Int)

(declare-fun dynLambda!23625 (Int Int) Int)

(assert (=> d!1658716 (< (dynLambda!23625 order!26813 (ite c!881719 lambda!252168 lambda!252169)) (dynLambda!23625 order!26813 lambda!252192))))

(declare-fun forall!13672 (List!59498 Int) Bool)

(assert (=> d!1658716 (= (exists!1521 (ite c!881719 lt!2114878 lt!2114876) (ite c!881719 lambda!252168 lambda!252169)) (not (forall!13672 (ite c!881719 lt!2114878 lt!2114876) lambda!252192)))))

(declare-fun bs!1194356 () Bool)

(assert (= bs!1194356 d!1658716))

(declare-fun m!6191872 () Bool)

(assert (=> bs!1194356 m!6191872))

(assert (=> bm!356962 d!1658716))

(declare-fun d!1658720 () Bool)

(assert (=> d!1658720 (= (isEmpty!31981 s!2272) ((_ is Nil!59372) s!2272))))

(assert (=> d!1658690 d!1658720))

(declare-fun bs!1194357 () Bool)

(declare-fun d!1658722 () Bool)

(assert (= bs!1194357 (and d!1658722 d!1658662)))

(declare-fun lambda!252193 () Int)

(assert (=> bs!1194357 (= lambda!252193 lambda!252148)))

(assert (=> d!1658722 (= (inv!78873 setElem!30786) (forall!13669 (exprs!4161 setElem!30786) lambda!252193))))

(declare-fun bs!1194358 () Bool)

(assert (= bs!1194358 d!1658722))

(declare-fun m!6191874 () Bool)

(assert (=> bs!1194358 m!6191874))

(assert (=> setNonEmpty!30786 d!1658722))

(declare-fun d!1658724 () Bool)

(declare-fun e!3197961 () Bool)

(assert (=> d!1658724 e!3197961))

(declare-fun res!2183175 () Bool)

(assert (=> d!1658724 (=> (not res!2183175) (not e!3197961))))

(declare-fun lt!2114913 () List!59498)

(declare-fun noDuplicate!1086 (List!59498) Bool)

(assert (=> d!1658724 (= res!2183175 (noDuplicate!1086 lt!2114913))))

(declare-fun choose!37776 ((InoxSet Context!7322)) List!59498)

(assert (=> d!1658724 (= lt!2114913 (choose!37776 lt!2114810))))

(assert (=> d!1658724 (= (toList!8288 lt!2114810) lt!2114913)))

(declare-fun b!5127788 () Bool)

(declare-fun content!10557 (List!59498) (InoxSet Context!7322))

(assert (=> b!5127788 (= e!3197961 (= (content!10557 lt!2114913) lt!2114810))))

(assert (= (and d!1658724 res!2183175) b!5127788))

(declare-fun m!6191900 () Bool)

(assert (=> d!1658724 m!6191900))

(declare-fun m!6191902 () Bool)

(assert (=> d!1658724 m!6191902))

(declare-fun m!6191904 () Bool)

(assert (=> b!5127788 m!6191904))

(assert (=> bm!356961 d!1658724))

(declare-fun bs!1194362 () Bool)

(declare-fun d!1658734 () Bool)

(assert (= bs!1194362 (and d!1658734 b!5127740)))

(declare-fun lambda!252195 () Int)

(assert (=> bs!1194362 (not (= lambda!252195 lambda!252163))))

(declare-fun bs!1194363 () Bool)

(assert (= bs!1194363 (and d!1658734 d!1658678)))

(assert (=> bs!1194363 (= lambda!252195 lambda!252161)))

(declare-fun bs!1194364 () Bool)

(assert (= bs!1194364 (and d!1658734 d!1658716)))

(assert (=> bs!1194364 (not (= lambda!252195 lambda!252192))))

(declare-fun bs!1194365 () Bool)

(assert (= bs!1194365 (and d!1658734 d!1658684)))

(assert (=> bs!1194365 (= lambda!252195 lambda!252167)))

(declare-fun bs!1194366 () Bool)

(assert (= bs!1194366 (and d!1658734 b!5127739)))

(assert (=> bs!1194366 (not (= lambda!252195 lambda!252162))))

(declare-fun bs!1194367 () Bool)

(assert (= bs!1194367 (and d!1658734 b!5127744)))

(assert (=> bs!1194367 (not (= lambda!252195 lambda!252169))))

(declare-fun bs!1194368 () Bool)

(assert (= bs!1194368 (and d!1658734 b!5127743)))

(assert (=> bs!1194368 (not (= lambda!252195 lambda!252168))))

(declare-fun bs!1194369 () Bool)

(declare-fun b!5127789 () Bool)

(assert (= bs!1194369 (and b!5127789 d!1658734)))

(declare-fun lambda!252196 () Int)

(assert (=> bs!1194369 (not (= lambda!252196 lambda!252195))))

(declare-fun bs!1194370 () Bool)

(assert (= bs!1194370 (and b!5127789 b!5127740)))

(assert (=> bs!1194370 (= lambda!252196 lambda!252163)))

(declare-fun bs!1194371 () Bool)

(assert (= bs!1194371 (and b!5127789 d!1658678)))

(assert (=> bs!1194371 (not (= lambda!252196 lambda!252161))))

(declare-fun bs!1194372 () Bool)

(assert (= bs!1194372 (and b!5127789 d!1658716)))

(assert (=> bs!1194372 (not (= lambda!252196 lambda!252192))))

(declare-fun bs!1194374 () Bool)

(assert (= bs!1194374 (and b!5127789 d!1658684)))

(assert (=> bs!1194374 (not (= lambda!252196 lambda!252167))))

(declare-fun bs!1194376 () Bool)

(assert (= bs!1194376 (and b!5127789 b!5127739)))

(assert (=> bs!1194376 (= lambda!252196 lambda!252162)))

(declare-fun bs!1194377 () Bool)

(assert (= bs!1194377 (and b!5127789 b!5127744)))

(assert (=> bs!1194377 (= lambda!252196 lambda!252169)))

(declare-fun bs!1194378 () Bool)

(assert (= bs!1194378 (and b!5127789 b!5127743)))

(assert (=> bs!1194378 (= lambda!252196 lambda!252168)))

(declare-fun bs!1194380 () Bool)

(declare-fun b!5127790 () Bool)

(assert (= bs!1194380 (and b!5127790 d!1658734)))

(declare-fun lambda!252198 () Int)

(assert (=> bs!1194380 (not (= lambda!252198 lambda!252195))))

(declare-fun bs!1194381 () Bool)

(assert (= bs!1194381 (and b!5127790 b!5127789)))

(assert (=> bs!1194381 (= lambda!252198 lambda!252196)))

(declare-fun bs!1194383 () Bool)

(assert (= bs!1194383 (and b!5127790 b!5127740)))

(assert (=> bs!1194383 (= lambda!252198 lambda!252163)))

(declare-fun bs!1194384 () Bool)

(assert (= bs!1194384 (and b!5127790 d!1658678)))

(assert (=> bs!1194384 (not (= lambda!252198 lambda!252161))))

(declare-fun bs!1194386 () Bool)

(assert (= bs!1194386 (and b!5127790 d!1658716)))

(assert (=> bs!1194386 (not (= lambda!252198 lambda!252192))))

(declare-fun bs!1194389 () Bool)

(assert (= bs!1194389 (and b!5127790 d!1658684)))

(assert (=> bs!1194389 (not (= lambda!252198 lambda!252167))))

(declare-fun bs!1194391 () Bool)

(assert (= bs!1194391 (and b!5127790 b!5127739)))

(assert (=> bs!1194391 (= lambda!252198 lambda!252162)))

(declare-fun bs!1194393 () Bool)

(assert (= bs!1194393 (and b!5127790 b!5127744)))

(assert (=> bs!1194393 (= lambda!252198 lambda!252169)))

(declare-fun bs!1194395 () Bool)

(assert (= bs!1194395 (and b!5127790 b!5127743)))

(assert (=> bs!1194395 (= lambda!252198 lambda!252168)))

(declare-fun bm!356965 () Bool)

(declare-fun call!356970 () List!59498)

(assert (=> bm!356965 (= call!356970 (toList!8288 (derivationStepZipper!880 z!1006 (h!65820 s!2272))))))

(declare-fun c!881735 () Bool)

(declare-fun lt!2114914 () List!59498)

(declare-fun lt!2114916 () List!59498)

(declare-fun call!356971 () Bool)

(declare-fun bm!356966 () Bool)

(assert (=> bm!356966 (= call!356971 (exists!1521 (ite c!881735 lt!2114916 lt!2114914) (ite c!881735 lambda!252196 lambda!252198)))))

(declare-fun lt!2114919 () Bool)

(assert (=> d!1658734 (= lt!2114919 (isEmpty!31980 (getLanguageWitness!851 (derivationStepZipper!880 z!1006 (h!65820 s!2272)))))))

(assert (=> d!1658734 (= lt!2114919 (forall!13670 (derivationStepZipper!880 z!1006 (h!65820 s!2272)) lambda!252195))))

(declare-fun lt!2114921 () Unit!150557)

(declare-fun e!3197962 () Unit!150557)

(assert (=> d!1658734 (= lt!2114921 e!3197962)))

(assert (=> d!1658734 (= c!881735 (not (forall!13670 (derivationStepZipper!880 z!1006 (h!65820 s!2272)) lambda!252195)))))

(assert (=> d!1658734 (= (lostCauseZipper!1155 (derivationStepZipper!880 z!1006 (h!65820 s!2272))) lt!2114919)))

(declare-fun Unit!150569 () Unit!150557)

(assert (=> b!5127790 (= e!3197962 Unit!150569)))

(assert (=> b!5127790 (= lt!2114914 call!356970)))

(declare-fun lt!2114918 () Unit!150557)

(assert (=> b!5127790 (= lt!2114918 (lemmaForallThenNotExists!343 lt!2114914 lambda!252195))))

(assert (=> b!5127790 (not call!356971)))

(declare-fun lt!2114917 () Unit!150557)

(assert (=> b!5127790 (= lt!2114917 lt!2114918)))

(declare-fun Unit!150570 () Unit!150557)

(assert (=> b!5127789 (= e!3197962 Unit!150570)))

(assert (=> b!5127789 (= lt!2114916 call!356970)))

(declare-fun lt!2114915 () Unit!150557)

(assert (=> b!5127789 (= lt!2114915 (lemmaNotForallThenExists!360 lt!2114916 lambda!252195))))

(assert (=> b!5127789 call!356971))

(declare-fun lt!2114920 () Unit!150557)

(assert (=> b!5127789 (= lt!2114920 lt!2114915)))

(assert (= (and d!1658734 c!881735) b!5127789))

(assert (= (and d!1658734 (not c!881735)) b!5127790))

(assert (= (or b!5127789 b!5127790) bm!356965))

(assert (= (or b!5127789 b!5127790) bm!356966))

(declare-fun m!6191926 () Bool)

(assert (=> bm!356966 m!6191926))

(assert (=> d!1658734 m!6191692))

(declare-fun m!6191928 () Bool)

(assert (=> d!1658734 m!6191928))

(assert (=> d!1658734 m!6191928))

(declare-fun m!6191930 () Bool)

(assert (=> d!1658734 m!6191930))

(assert (=> d!1658734 m!6191692))

(declare-fun m!6191932 () Bool)

(assert (=> d!1658734 m!6191932))

(assert (=> d!1658734 m!6191692))

(assert (=> d!1658734 m!6191932))

(assert (=> bm!356965 m!6191692))

(declare-fun m!6191934 () Bool)

(assert (=> bm!356965 m!6191934))

(declare-fun m!6191936 () Bool)

(assert (=> b!5127789 m!6191936))

(declare-fun m!6191938 () Bool)

(assert (=> b!5127790 m!6191938))

(assert (=> d!1658686 d!1658734))

(assert (=> d!1658686 d!1658680))

(declare-fun d!1658750 () Bool)

(assert (=> d!1658750 (lostCauseZipper!1155 (derivationStepZipper!880 z!1006 (h!65820 s!2272)))))

(assert (=> d!1658750 true))

(declare-fun _$37!404 () Unit!150557)

(assert (=> d!1658750 (= (choose!37771 z!1006 (h!65820 s!2272)) _$37!404)))

(declare-fun bs!1194440 () Bool)

(assert (= bs!1194440 d!1658750))

(assert (=> bs!1194440 m!6191692))

(assert (=> bs!1194440 m!6191692))

(assert (=> bs!1194440 m!6191796))

(assert (=> d!1658686 d!1658750))

(assert (=> d!1658686 d!1658678))

(declare-fun bs!1194469 () Bool)

(declare-fun d!1658756 () Bool)

(assert (= bs!1194469 (and d!1658756 d!1658734)))

(declare-fun lambda!252208 () Int)

(assert (=> bs!1194469 (not (= lambda!252208 lambda!252195))))

(declare-fun bs!1194471 () Bool)

(assert (= bs!1194471 (and d!1658756 b!5127789)))

(assert (=> bs!1194471 (not (= lambda!252208 lambda!252196))))

(declare-fun bs!1194472 () Bool)

(assert (= bs!1194472 (and d!1658756 b!5127740)))

(assert (=> bs!1194472 (not (= lambda!252208 lambda!252163))))

(declare-fun bs!1194473 () Bool)

(assert (= bs!1194473 (and d!1658756 d!1658678)))

(assert (=> bs!1194473 (not (= lambda!252208 lambda!252161))))

(declare-fun bs!1194474 () Bool)

(assert (= bs!1194474 (and d!1658756 d!1658716)))

(assert (=> bs!1194474 (= (= lambda!252167 (ite c!881719 lambda!252168 lambda!252169)) (= lambda!252208 lambda!252192))))

(declare-fun bs!1194475 () Bool)

(assert (= bs!1194475 (and d!1658756 d!1658684)))

(assert (=> bs!1194475 (not (= lambda!252208 lambda!252167))))

(declare-fun bs!1194476 () Bool)

(assert (= bs!1194476 (and d!1658756 b!5127790)))

(assert (=> bs!1194476 (not (= lambda!252208 lambda!252198))))

(declare-fun bs!1194478 () Bool)

(assert (= bs!1194478 (and d!1658756 b!5127739)))

(assert (=> bs!1194478 (not (= lambda!252208 lambda!252162))))

(declare-fun bs!1194480 () Bool)

(assert (= bs!1194480 (and d!1658756 b!5127744)))

(assert (=> bs!1194480 (not (= lambda!252208 lambda!252169))))

(declare-fun bs!1194482 () Bool)

(assert (= bs!1194482 (and d!1658756 b!5127743)))

(assert (=> bs!1194482 (not (= lambda!252208 lambda!252168))))

(assert (=> d!1658756 true))

(assert (=> d!1658756 (< (dynLambda!23625 order!26813 lambda!252167) (dynLambda!23625 order!26813 lambda!252208))))

(assert (=> d!1658756 (not (exists!1521 lt!2114876 lambda!252208))))

(declare-fun lt!2114927 () Unit!150557)

(declare-fun choose!37778 (List!59498 Int) Unit!150557)

(assert (=> d!1658756 (= lt!2114927 (choose!37778 lt!2114876 lambda!252167))))

(assert (=> d!1658756 (forall!13672 lt!2114876 lambda!252167)))

(assert (=> d!1658756 (= (lemmaForallThenNotExists!343 lt!2114876 lambda!252167) lt!2114927)))

(declare-fun bs!1194487 () Bool)

(assert (= bs!1194487 d!1658756))

(declare-fun m!6191962 () Bool)

(assert (=> bs!1194487 m!6191962))

(declare-fun m!6191964 () Bool)

(assert (=> bs!1194487 m!6191964))

(declare-fun m!6191966 () Bool)

(assert (=> bs!1194487 m!6191966))

(assert (=> b!5127744 d!1658756))

(declare-fun bs!1194500 () Bool)

(declare-fun d!1658768 () Bool)

(assert (= bs!1194500 (and d!1658768 d!1658734)))

(declare-fun lambda!252212 () Int)

(assert (=> bs!1194500 (not (= lambda!252212 lambda!252195))))

(declare-fun bs!1194501 () Bool)

(assert (= bs!1194501 (and d!1658768 b!5127789)))

(assert (=> bs!1194501 (not (= lambda!252212 lambda!252196))))

(declare-fun bs!1194502 () Bool)

(assert (= bs!1194502 (and d!1658768 b!5127740)))

(assert (=> bs!1194502 (not (= lambda!252212 lambda!252163))))

(declare-fun bs!1194503 () Bool)

(assert (= bs!1194503 (and d!1658768 d!1658678)))

(assert (=> bs!1194503 (not (= lambda!252212 lambda!252161))))

(declare-fun bs!1194504 () Bool)

(assert (= bs!1194504 (and d!1658768 d!1658716)))

(assert (=> bs!1194504 (= (= lambda!252167 (ite c!881719 lambda!252168 lambda!252169)) (= lambda!252212 lambda!252192))))

(declare-fun bs!1194505 () Bool)

(assert (= bs!1194505 (and d!1658768 d!1658756)))

(assert (=> bs!1194505 (= lambda!252212 lambda!252208)))

(declare-fun bs!1194506 () Bool)

(assert (= bs!1194506 (and d!1658768 d!1658684)))

(assert (=> bs!1194506 (not (= lambda!252212 lambda!252167))))

(declare-fun bs!1194507 () Bool)

(assert (= bs!1194507 (and d!1658768 b!5127790)))

(assert (=> bs!1194507 (not (= lambda!252212 lambda!252198))))

(declare-fun bs!1194508 () Bool)

(assert (= bs!1194508 (and d!1658768 b!5127739)))

(assert (=> bs!1194508 (not (= lambda!252212 lambda!252162))))

(declare-fun bs!1194509 () Bool)

(assert (= bs!1194509 (and d!1658768 b!5127744)))

(assert (=> bs!1194509 (not (= lambda!252212 lambda!252169))))

(declare-fun bs!1194510 () Bool)

(assert (= bs!1194510 (and d!1658768 b!5127743)))

(assert (=> bs!1194510 (not (= lambda!252212 lambda!252168))))

(assert (=> d!1658768 true))

(assert (=> d!1658768 (< (dynLambda!23625 order!26813 lambda!252167) (dynLambda!23625 order!26813 lambda!252212))))

(assert (=> d!1658768 (exists!1521 lt!2114878 lambda!252212)))

(declare-fun lt!2114931 () Unit!150557)

(declare-fun choose!37779 (List!59498 Int) Unit!150557)

(assert (=> d!1658768 (= lt!2114931 (choose!37779 lt!2114878 lambda!252167))))

(assert (=> d!1658768 (not (forall!13672 lt!2114878 lambda!252167))))

(assert (=> d!1658768 (= (lemmaNotForallThenExists!360 lt!2114878 lambda!252167) lt!2114931)))

(declare-fun bs!1194511 () Bool)

(assert (= bs!1194511 d!1658768))

(declare-fun m!6191976 () Bool)

(assert (=> bs!1194511 m!6191976))

(declare-fun m!6191978 () Bool)

(assert (=> bs!1194511 m!6191978))

(declare-fun m!6191980 () Bool)

(assert (=> bs!1194511 m!6191980))

(assert (=> b!5127743 d!1658768))

(declare-fun d!1658772 () Bool)

(declare-fun c!881740 () Bool)

(assert (=> d!1658772 (= c!881740 (isEmpty!31981 (tail!10104 (t!372523 s!2272))))))

(declare-fun e!3197978 () Bool)

(assert (=> d!1658772 (= (matchZipper!937 (derivationStepZipper!880 lt!2114810 (head!10969 (t!372523 s!2272))) (tail!10104 (t!372523 s!2272))) e!3197978)))

(declare-fun b!5127812 () Bool)

(assert (=> b!5127812 (= e!3197978 (nullableZipper!1062 (derivationStepZipper!880 lt!2114810 (head!10969 (t!372523 s!2272)))))))

(declare-fun b!5127813 () Bool)

(assert (=> b!5127813 (= e!3197978 (matchZipper!937 (derivationStepZipper!880 (derivationStepZipper!880 lt!2114810 (head!10969 (t!372523 s!2272))) (head!10969 (tail!10104 (t!372523 s!2272)))) (tail!10104 (tail!10104 (t!372523 s!2272)))))))

(assert (= (and d!1658772 c!881740) b!5127812))

(assert (= (and d!1658772 (not c!881740)) b!5127813))

(assert (=> d!1658772 m!6191808))

(declare-fun m!6191982 () Bool)

(assert (=> d!1658772 m!6191982))

(assert (=> b!5127812 m!6191806))

(declare-fun m!6191984 () Bool)

(assert (=> b!5127812 m!6191984))

(assert (=> b!5127813 m!6191808))

(declare-fun m!6191986 () Bool)

(assert (=> b!5127813 m!6191986))

(assert (=> b!5127813 m!6191806))

(assert (=> b!5127813 m!6191986))

(declare-fun m!6191988 () Bool)

(assert (=> b!5127813 m!6191988))

(assert (=> b!5127813 m!6191808))

(declare-fun m!6191990 () Bool)

(assert (=> b!5127813 m!6191990))

(assert (=> b!5127813 m!6191988))

(assert (=> b!5127813 m!6191990))

(declare-fun m!6191992 () Bool)

(assert (=> b!5127813 m!6191992))

(assert (=> b!5127750 d!1658772))

(declare-fun bs!1194512 () Bool)

(declare-fun d!1658774 () Bool)

(assert (= bs!1194512 (and d!1658774 d!1658680)))

(declare-fun lambda!252213 () Int)

(assert (=> bs!1194512 (= (= (head!10969 (t!372523 s!2272)) (h!65820 s!2272)) (= lambda!252213 lambda!252166))))

(assert (=> d!1658774 true))

(assert (=> d!1658774 (= (derivationStepZipper!880 lt!2114810 (head!10969 (t!372523 s!2272))) (flatMap!376 lt!2114810 lambda!252213))))

(declare-fun bs!1194513 () Bool)

(assert (= bs!1194513 d!1658774))

(declare-fun m!6191994 () Bool)

(assert (=> bs!1194513 m!6191994))

(assert (=> b!5127750 d!1658774))

(declare-fun d!1658776 () Bool)

(assert (=> d!1658776 (= (head!10969 (t!372523 s!2272)) (h!65820 (t!372523 s!2272)))))

(assert (=> b!5127750 d!1658776))

(declare-fun d!1658780 () Bool)

(assert (=> d!1658780 (= (tail!10104 (t!372523 s!2272)) (t!372523 (t!372523 s!2272)))))

(assert (=> b!5127750 d!1658780))

(declare-fun d!1658782 () Bool)

(declare-fun choose!37780 ((InoxSet Context!7322) Int) (InoxSet Context!7322))

(assert (=> d!1658782 (= (flatMap!376 z!1006 lambda!252166) (choose!37780 z!1006 lambda!252166))))

(declare-fun bs!1194515 () Bool)

(assert (= bs!1194515 d!1658782))

(declare-fun m!6191998 () Bool)

(assert (=> bs!1194515 m!6191998))

(assert (=> d!1658680 d!1658782))

(declare-fun bs!1194516 () Bool)

(declare-fun d!1658784 () Bool)

(assert (= bs!1194516 (and d!1658784 d!1658734)))

(declare-fun lambda!252216 () Int)

(assert (=> bs!1194516 (not (= lambda!252216 lambda!252195))))

(declare-fun bs!1194517 () Bool)

(assert (= bs!1194517 (and d!1658784 b!5127789)))

(assert (=> bs!1194517 (not (= lambda!252216 lambda!252196))))

(declare-fun bs!1194518 () Bool)

(assert (= bs!1194518 (and d!1658784 d!1658768)))

(assert (=> bs!1194518 (not (= lambda!252216 lambda!252212))))

(declare-fun bs!1194519 () Bool)

(assert (= bs!1194519 (and d!1658784 b!5127740)))

(assert (=> bs!1194519 (not (= lambda!252216 lambda!252163))))

(declare-fun bs!1194520 () Bool)

(assert (= bs!1194520 (and d!1658784 d!1658678)))

(assert (=> bs!1194520 (not (= lambda!252216 lambda!252161))))

(declare-fun bs!1194521 () Bool)

(assert (= bs!1194521 (and d!1658784 d!1658716)))

(assert (=> bs!1194521 (not (= lambda!252216 lambda!252192))))

(declare-fun bs!1194522 () Bool)

(assert (= bs!1194522 (and d!1658784 d!1658756)))

(assert (=> bs!1194522 (not (= lambda!252216 lambda!252208))))

(declare-fun bs!1194523 () Bool)

(assert (= bs!1194523 (and d!1658784 d!1658684)))

(assert (=> bs!1194523 (not (= lambda!252216 lambda!252167))))

(declare-fun bs!1194524 () Bool)

(assert (= bs!1194524 (and d!1658784 b!5127790)))

(assert (=> bs!1194524 (not (= lambda!252216 lambda!252198))))

(declare-fun bs!1194525 () Bool)

(assert (= bs!1194525 (and d!1658784 b!5127739)))

(assert (=> bs!1194525 (not (= lambda!252216 lambda!252162))))

(declare-fun bs!1194526 () Bool)

(assert (= bs!1194526 (and d!1658784 b!5127744)))

(assert (=> bs!1194526 (not (= lambda!252216 lambda!252169))))

(declare-fun bs!1194527 () Bool)

(assert (= bs!1194527 (and d!1658784 b!5127743)))

(assert (=> bs!1194527 (not (= lambda!252216 lambda!252168))))

(declare-fun exists!1523 ((InoxSet Context!7322) Int) Bool)

(assert (=> d!1658784 (= (nullableZipper!1062 lt!2114810) (exists!1523 lt!2114810 lambda!252216))))

(declare-fun bs!1194528 () Bool)

(assert (= bs!1194528 d!1658784))

(declare-fun m!6192000 () Bool)

(assert (=> bs!1194528 m!6192000))

(assert (=> b!5127749 d!1658784))

(declare-fun bs!1194529 () Bool)

(declare-fun d!1658786 () Bool)

(assert (= bs!1194529 (and d!1658786 d!1658734)))

(declare-fun lambda!252217 () Int)

(assert (=> bs!1194529 (not (= lambda!252217 lambda!252195))))

(declare-fun bs!1194530 () Bool)

(assert (= bs!1194530 (and d!1658786 b!5127789)))

(assert (=> bs!1194530 (not (= lambda!252217 lambda!252196))))

(declare-fun bs!1194531 () Bool)

(assert (= bs!1194531 (and d!1658786 d!1658768)))

(assert (=> bs!1194531 (= (= (ite c!881716 lambda!252162 lambda!252163) lambda!252167) (= lambda!252217 lambda!252212))))

(declare-fun bs!1194532 () Bool)

(assert (= bs!1194532 (and d!1658786 b!5127740)))

(assert (=> bs!1194532 (not (= lambda!252217 lambda!252163))))

(declare-fun bs!1194533 () Bool)

(assert (= bs!1194533 (and d!1658786 d!1658678)))

(assert (=> bs!1194533 (not (= lambda!252217 lambda!252161))))

(declare-fun bs!1194534 () Bool)

(assert (= bs!1194534 (and d!1658786 d!1658716)))

(assert (=> bs!1194534 (= (= (ite c!881716 lambda!252162 lambda!252163) (ite c!881719 lambda!252168 lambda!252169)) (= lambda!252217 lambda!252192))))

(declare-fun bs!1194535 () Bool)

(assert (= bs!1194535 (and d!1658786 d!1658684)))

(assert (=> bs!1194535 (not (= lambda!252217 lambda!252167))))

(declare-fun bs!1194536 () Bool)

(assert (= bs!1194536 (and d!1658786 b!5127790)))

(assert (=> bs!1194536 (not (= lambda!252217 lambda!252198))))

(declare-fun bs!1194537 () Bool)

(assert (= bs!1194537 (and d!1658786 b!5127739)))

(assert (=> bs!1194537 (not (= lambda!252217 lambda!252162))))

(declare-fun bs!1194538 () Bool)

(assert (= bs!1194538 (and d!1658786 b!5127744)))

(assert (=> bs!1194538 (not (= lambda!252217 lambda!252169))))

(declare-fun bs!1194539 () Bool)

(assert (= bs!1194539 (and d!1658786 b!5127743)))

(assert (=> bs!1194539 (not (= lambda!252217 lambda!252168))))

(declare-fun bs!1194540 () Bool)

(assert (= bs!1194540 (and d!1658786 d!1658784)))

(assert (=> bs!1194540 (not (= lambda!252217 lambda!252216))))

(declare-fun bs!1194541 () Bool)

(assert (= bs!1194541 (and d!1658786 d!1658756)))

(assert (=> bs!1194541 (= (= (ite c!881716 lambda!252162 lambda!252163) lambda!252167) (= lambda!252217 lambda!252208))))

(assert (=> d!1658786 true))

(assert (=> d!1658786 (< (dynLambda!23625 order!26813 (ite c!881716 lambda!252162 lambda!252163)) (dynLambda!23625 order!26813 lambda!252217))))

(assert (=> d!1658786 (= (exists!1521 (ite c!881716 lt!2114867 lt!2114865) (ite c!881716 lambda!252162 lambda!252163)) (not (forall!13672 (ite c!881716 lt!2114867 lt!2114865) lambda!252217)))))

(declare-fun bs!1194542 () Bool)

(assert (= bs!1194542 d!1658786))

(declare-fun m!6192002 () Bool)

(assert (=> bs!1194542 m!6192002))

(assert (=> bm!356960 d!1658786))

(declare-fun d!1658788 () Bool)

(assert (=> d!1658788 (= (isEmpty!31980 (getLanguageWitness!851 lt!2114810)) (not ((_ is Some!14719) (getLanguageWitness!851 lt!2114810))))))

(assert (=> d!1658684 d!1658788))

(declare-fun bs!1194543 () Bool)

(declare-fun d!1658790 () Bool)

(assert (= bs!1194543 (and d!1658790 d!1658734)))

(declare-fun lambda!252224 () Int)

(assert (=> bs!1194543 (not (= lambda!252224 lambda!252195))))

(declare-fun bs!1194544 () Bool)

(assert (= bs!1194544 (and d!1658790 b!5127789)))

(assert (=> bs!1194544 (= lambda!252224 lambda!252196)))

(declare-fun bs!1194545 () Bool)

(assert (= bs!1194545 (and d!1658790 d!1658768)))

(assert (=> bs!1194545 (not (= lambda!252224 lambda!252212))))

(declare-fun bs!1194546 () Bool)

(assert (= bs!1194546 (and d!1658790 b!5127740)))

(assert (=> bs!1194546 (= lambda!252224 lambda!252163)))

(declare-fun bs!1194547 () Bool)

(assert (= bs!1194547 (and d!1658790 d!1658678)))

(assert (=> bs!1194547 (not (= lambda!252224 lambda!252161))))

(declare-fun bs!1194548 () Bool)

(assert (= bs!1194548 (and d!1658790 d!1658716)))

(assert (=> bs!1194548 (not (= lambda!252224 lambda!252192))))

(declare-fun bs!1194549 () Bool)

(assert (= bs!1194549 (and d!1658790 d!1658786)))

(assert (=> bs!1194549 (not (= lambda!252224 lambda!252217))))

(declare-fun bs!1194550 () Bool)

(assert (= bs!1194550 (and d!1658790 d!1658684)))

(assert (=> bs!1194550 (not (= lambda!252224 lambda!252167))))

(declare-fun bs!1194551 () Bool)

(assert (= bs!1194551 (and d!1658790 b!5127790)))

(assert (=> bs!1194551 (= lambda!252224 lambda!252198)))

(declare-fun bs!1194552 () Bool)

(assert (= bs!1194552 (and d!1658790 b!5127739)))

(assert (=> bs!1194552 (= lambda!252224 lambda!252162)))

(declare-fun bs!1194553 () Bool)

(assert (= bs!1194553 (and d!1658790 b!5127744)))

(assert (=> bs!1194553 (= lambda!252224 lambda!252169)))

(declare-fun bs!1194554 () Bool)

(assert (= bs!1194554 (and d!1658790 b!5127743)))

(assert (=> bs!1194554 (= lambda!252224 lambda!252168)))

(declare-fun bs!1194555 () Bool)

(assert (= bs!1194555 (and d!1658790 d!1658784)))

(assert (=> bs!1194555 (not (= lambda!252224 lambda!252216))))

(declare-fun bs!1194556 () Bool)

(assert (= bs!1194556 (and d!1658790 d!1658756)))

(assert (=> bs!1194556 (not (= lambda!252224 lambda!252208))))

(declare-fun lt!2114934 () Option!14720)

(declare-fun isDefined!11522 (Option!14720) Bool)

(assert (=> d!1658790 (= (isDefined!11522 lt!2114934) (exists!1523 lt!2114810 lambda!252224))))

(declare-fun e!3197985 () Option!14720)

(assert (=> d!1658790 (= lt!2114934 e!3197985)))

(declare-fun c!881751 () Bool)

(assert (=> d!1658790 (= c!881751 (exists!1523 lt!2114810 lambda!252224))))

(assert (=> d!1658790 (= (getLanguageWitness!851 lt!2114810) lt!2114934)))

(declare-fun b!5127825 () Bool)

(declare-fun getLanguageWitness!853 (Context!7322) Option!14720)

(declare-fun getWitness!685 ((InoxSet Context!7322) Int) Context!7322)

(assert (=> b!5127825 (= e!3197985 (getLanguageWitness!853 (getWitness!685 lt!2114810 lambda!252224)))))

(declare-fun b!5127826 () Bool)

(assert (=> b!5127826 (= e!3197985 None!14719)))

(assert (= (and d!1658790 c!881751) b!5127825))

(assert (= (and d!1658790 (not c!881751)) b!5127826))

(declare-fun m!6192004 () Bool)

(assert (=> d!1658790 m!6192004))

(declare-fun m!6192006 () Bool)

(assert (=> d!1658790 m!6192006))

(assert (=> d!1658790 m!6192006))

(declare-fun m!6192008 () Bool)

(assert (=> b!5127825 m!6192008))

(assert (=> b!5127825 m!6192008))

(declare-fun m!6192010 () Bool)

(assert (=> b!5127825 m!6192010))

(assert (=> d!1658684 d!1658790))

(declare-fun d!1658792 () Bool)

(declare-fun lt!2114937 () Bool)

(assert (=> d!1658792 (= lt!2114937 (forall!13672 (toList!8288 lt!2114810) lambda!252167))))

(declare-fun choose!37781 ((InoxSet Context!7322) Int) Bool)

(assert (=> d!1658792 (= lt!2114937 (choose!37781 lt!2114810 lambda!252167))))

(assert (=> d!1658792 (= (forall!13670 lt!2114810 lambda!252167) lt!2114937)))

(declare-fun bs!1194557 () Bool)

(assert (= bs!1194557 d!1658792))

(assert (=> bs!1194557 m!6191790))

(assert (=> bs!1194557 m!6191790))

(declare-fun m!6192012 () Bool)

(assert (=> bs!1194557 m!6192012))

(declare-fun m!6192014 () Bool)

(assert (=> bs!1194557 m!6192014))

(assert (=> d!1658684 d!1658792))

(declare-fun d!1658794 () Bool)

(declare-fun e!3197986 () Bool)

(assert (=> d!1658794 e!3197986))

(declare-fun res!2183182 () Bool)

(assert (=> d!1658794 (=> (not res!2183182) (not e!3197986))))

(declare-fun lt!2114938 () List!59498)

(assert (=> d!1658794 (= res!2183182 (noDuplicate!1086 lt!2114938))))

(assert (=> d!1658794 (= lt!2114938 (choose!37776 z!1006))))

(assert (=> d!1658794 (= (toList!8288 z!1006) lt!2114938)))

(declare-fun b!5127827 () Bool)

(assert (=> b!5127827 (= e!3197986 (= (content!10557 lt!2114938) z!1006))))

(assert (= (and d!1658794 res!2183182) b!5127827))

(declare-fun m!6192016 () Bool)

(assert (=> d!1658794 m!6192016))

(declare-fun m!6192018 () Bool)

(assert (=> d!1658794 m!6192018))

(declare-fun m!6192020 () Bool)

(assert (=> b!5127827 m!6192020))

(assert (=> bm!356959 d!1658794))

(declare-fun bs!1194558 () Bool)

(declare-fun d!1658796 () Bool)

(assert (= bs!1194558 (and d!1658796 d!1658734)))

(declare-fun lambda!252225 () Int)

(assert (=> bs!1194558 (not (= lambda!252225 lambda!252195))))

(declare-fun bs!1194559 () Bool)

(assert (= bs!1194559 (and d!1658796 b!5127789)))

(assert (=> bs!1194559 (not (= lambda!252225 lambda!252196))))

(declare-fun bs!1194560 () Bool)

(assert (= bs!1194560 (and d!1658796 d!1658768)))

(assert (=> bs!1194560 (= (= lambda!252161 lambda!252167) (= lambda!252225 lambda!252212))))

(declare-fun bs!1194561 () Bool)

(assert (= bs!1194561 (and d!1658796 b!5127740)))

(assert (=> bs!1194561 (not (= lambda!252225 lambda!252163))))

(declare-fun bs!1194562 () Bool)

(assert (= bs!1194562 (and d!1658796 d!1658678)))

(assert (=> bs!1194562 (not (= lambda!252225 lambda!252161))))

(declare-fun bs!1194563 () Bool)

(assert (= bs!1194563 (and d!1658796 d!1658716)))

(assert (=> bs!1194563 (= (= lambda!252161 (ite c!881719 lambda!252168 lambda!252169)) (= lambda!252225 lambda!252192))))

(declare-fun bs!1194564 () Bool)

(assert (= bs!1194564 (and d!1658796 d!1658786)))

(assert (=> bs!1194564 (= (= lambda!252161 (ite c!881716 lambda!252162 lambda!252163)) (= lambda!252225 lambda!252217))))

(declare-fun bs!1194565 () Bool)

(assert (= bs!1194565 (and d!1658796 d!1658790)))

(assert (=> bs!1194565 (not (= lambda!252225 lambda!252224))))

(declare-fun bs!1194566 () Bool)

(assert (= bs!1194566 (and d!1658796 d!1658684)))

(assert (=> bs!1194566 (not (= lambda!252225 lambda!252167))))

(declare-fun bs!1194567 () Bool)

(assert (= bs!1194567 (and d!1658796 b!5127790)))

(assert (=> bs!1194567 (not (= lambda!252225 lambda!252198))))

(declare-fun bs!1194568 () Bool)

(assert (= bs!1194568 (and d!1658796 b!5127739)))

(assert (=> bs!1194568 (not (= lambda!252225 lambda!252162))))

(declare-fun bs!1194569 () Bool)

(assert (= bs!1194569 (and d!1658796 b!5127744)))

(assert (=> bs!1194569 (not (= lambda!252225 lambda!252169))))

(declare-fun bs!1194570 () Bool)

(assert (= bs!1194570 (and d!1658796 b!5127743)))

(assert (=> bs!1194570 (not (= lambda!252225 lambda!252168))))

(declare-fun bs!1194571 () Bool)

(assert (= bs!1194571 (and d!1658796 d!1658784)))

(assert (=> bs!1194571 (not (= lambda!252225 lambda!252216))))

(declare-fun bs!1194572 () Bool)

(assert (= bs!1194572 (and d!1658796 d!1658756)))

(assert (=> bs!1194572 (= (= lambda!252161 lambda!252167) (= lambda!252225 lambda!252208))))

(assert (=> d!1658796 true))

(assert (=> d!1658796 (< (dynLambda!23625 order!26813 lambda!252161) (dynLambda!23625 order!26813 lambda!252225))))

(assert (=> d!1658796 (not (exists!1521 lt!2114865 lambda!252225))))

(declare-fun lt!2114939 () Unit!150557)

(assert (=> d!1658796 (= lt!2114939 (choose!37778 lt!2114865 lambda!252161))))

(assert (=> d!1658796 (forall!13672 lt!2114865 lambda!252161)))

(assert (=> d!1658796 (= (lemmaForallThenNotExists!343 lt!2114865 lambda!252161) lt!2114939)))

(declare-fun bs!1194573 () Bool)

(assert (= bs!1194573 d!1658796))

(declare-fun m!6192022 () Bool)

(assert (=> bs!1194573 m!6192022))

(declare-fun m!6192024 () Bool)

(assert (=> bs!1194573 m!6192024))

(declare-fun m!6192026 () Bool)

(assert (=> bs!1194573 m!6192026))

(assert (=> b!5127740 d!1658796))

(assert (=> d!1658682 d!1658688))

(declare-fun d!1658798 () Bool)

(assert (=> d!1658798 (not (matchZipper!937 lt!2114810 (t!372523 s!2272)))))

(assert (=> d!1658798 true))

(declare-fun _$36!522 () Unit!150557)

(assert (=> d!1658798 (= (choose!37770 lt!2114810 (t!372523 s!2272)) _$36!522)))

(declare-fun bs!1194574 () Bool)

(assert (= bs!1194574 d!1658798))

(assert (=> bs!1194574 m!6191690))

(assert (=> d!1658682 d!1658798))

(assert (=> d!1658682 d!1658684))

(declare-fun d!1658800 () Bool)

(declare-fun res!2183187 () Bool)

(declare-fun e!3197991 () Bool)

(assert (=> d!1658800 (=> res!2183187 e!3197991)))

(assert (=> d!1658800 (= res!2183187 ((_ is Nil!59371) (exprs!4161 setElem!30780)))))

(assert (=> d!1658800 (= (forall!13669 (exprs!4161 setElem!30780) lambda!252148) e!3197991)))

(declare-fun b!5127832 () Bool)

(declare-fun e!3197992 () Bool)

(assert (=> b!5127832 (= e!3197991 e!3197992)))

(declare-fun res!2183188 () Bool)

(assert (=> b!5127832 (=> (not res!2183188) (not e!3197992))))

(declare-fun dynLambda!23626 (Int Regex!14277) Bool)

(assert (=> b!5127832 (= res!2183188 (dynLambda!23626 lambda!252148 (h!65819 (exprs!4161 setElem!30780))))))

(declare-fun b!5127833 () Bool)

(assert (=> b!5127833 (= e!3197992 (forall!13669 (t!372522 (exprs!4161 setElem!30780)) lambda!252148))))

(assert (= (and d!1658800 (not res!2183187)) b!5127832))

(assert (= (and b!5127832 res!2183188) b!5127833))

(declare-fun b_lambda!199093 () Bool)

(assert (=> (not b_lambda!199093) (not b!5127832)))

(declare-fun m!6192028 () Bool)

(assert (=> b!5127832 m!6192028))

(declare-fun m!6192030 () Bool)

(assert (=> b!5127833 m!6192030))

(assert (=> d!1658662 d!1658800))

(declare-fun d!1658802 () Bool)

(declare-fun c!881752 () Bool)

(assert (=> d!1658802 (= c!881752 (isEmpty!31981 (tail!10104 s!2272)))))

(declare-fun e!3197993 () Bool)

(assert (=> d!1658802 (= (matchZipper!937 (derivationStepZipper!880 z!1006 (head!10969 s!2272)) (tail!10104 s!2272)) e!3197993)))

(declare-fun b!5127834 () Bool)

(assert (=> b!5127834 (= e!3197993 (nullableZipper!1062 (derivationStepZipper!880 z!1006 (head!10969 s!2272))))))

(declare-fun b!5127835 () Bool)

(assert (=> b!5127835 (= e!3197993 (matchZipper!937 (derivationStepZipper!880 (derivationStepZipper!880 z!1006 (head!10969 s!2272)) (head!10969 (tail!10104 s!2272))) (tail!10104 (tail!10104 s!2272))))))

(assert (= (and d!1658802 c!881752) b!5127834))

(assert (= (and d!1658802 (not c!881752)) b!5127835))

(assert (=> d!1658802 m!6191820))

(declare-fun m!6192032 () Bool)

(assert (=> d!1658802 m!6192032))

(assert (=> b!5127834 m!6191818))

(declare-fun m!6192034 () Bool)

(assert (=> b!5127834 m!6192034))

(assert (=> b!5127835 m!6191820))

(declare-fun m!6192036 () Bool)

(assert (=> b!5127835 m!6192036))

(assert (=> b!5127835 m!6191818))

(assert (=> b!5127835 m!6192036))

(declare-fun m!6192038 () Bool)

(assert (=> b!5127835 m!6192038))

(assert (=> b!5127835 m!6191820))

(declare-fun m!6192040 () Bool)

(assert (=> b!5127835 m!6192040))

(assert (=> b!5127835 m!6192038))

(assert (=> b!5127835 m!6192040))

(declare-fun m!6192042 () Bool)

(assert (=> b!5127835 m!6192042))

(assert (=> b!5127752 d!1658802))

(declare-fun bs!1194575 () Bool)

(declare-fun d!1658804 () Bool)

(assert (= bs!1194575 (and d!1658804 d!1658680)))

(declare-fun lambda!252226 () Int)

(assert (=> bs!1194575 (= (= (head!10969 s!2272) (h!65820 s!2272)) (= lambda!252226 lambda!252166))))

(declare-fun bs!1194576 () Bool)

(assert (= bs!1194576 (and d!1658804 d!1658774)))

(assert (=> bs!1194576 (= (= (head!10969 s!2272) (head!10969 (t!372523 s!2272))) (= lambda!252226 lambda!252213))))

(assert (=> d!1658804 true))

(assert (=> d!1658804 (= (derivationStepZipper!880 z!1006 (head!10969 s!2272)) (flatMap!376 z!1006 lambda!252226))))

(declare-fun bs!1194577 () Bool)

(assert (= bs!1194577 d!1658804))

(declare-fun m!6192044 () Bool)

(assert (=> bs!1194577 m!6192044))

(assert (=> b!5127752 d!1658804))

(declare-fun d!1658806 () Bool)

(assert (=> d!1658806 (= (head!10969 s!2272) (h!65820 s!2272))))

(assert (=> b!5127752 d!1658806))

(declare-fun d!1658808 () Bool)

(assert (=> d!1658808 (= (tail!10104 s!2272) (t!372523 s!2272))))

(assert (=> b!5127752 d!1658808))

(declare-fun bs!1194578 () Bool)

(declare-fun d!1658810 () Bool)

(assert (= bs!1194578 (and d!1658810 d!1658734)))

(declare-fun lambda!252227 () Int)

(assert (=> bs!1194578 (not (= lambda!252227 lambda!252195))))

(declare-fun bs!1194579 () Bool)

(assert (= bs!1194579 (and d!1658810 b!5127789)))

(assert (=> bs!1194579 (not (= lambda!252227 lambda!252196))))

(declare-fun bs!1194580 () Bool)

(assert (= bs!1194580 (and d!1658810 d!1658768)))

(assert (=> bs!1194580 (not (= lambda!252227 lambda!252212))))

(declare-fun bs!1194581 () Bool)

(assert (= bs!1194581 (and d!1658810 b!5127740)))

(assert (=> bs!1194581 (not (= lambda!252227 lambda!252163))))

(declare-fun bs!1194582 () Bool)

(assert (= bs!1194582 (and d!1658810 d!1658716)))

(assert (=> bs!1194582 (not (= lambda!252227 lambda!252192))))

(declare-fun bs!1194583 () Bool)

(assert (= bs!1194583 (and d!1658810 d!1658786)))

(assert (=> bs!1194583 (not (= lambda!252227 lambda!252217))))

(declare-fun bs!1194584 () Bool)

(assert (= bs!1194584 (and d!1658810 d!1658790)))

(assert (=> bs!1194584 (not (= lambda!252227 lambda!252224))))

(declare-fun bs!1194585 () Bool)

(assert (= bs!1194585 (and d!1658810 d!1658684)))

(assert (=> bs!1194585 (not (= lambda!252227 lambda!252167))))

(declare-fun bs!1194586 () Bool)

(assert (= bs!1194586 (and d!1658810 b!5127790)))

(assert (=> bs!1194586 (not (= lambda!252227 lambda!252198))))

(declare-fun bs!1194587 () Bool)

(assert (= bs!1194587 (and d!1658810 b!5127739)))

(assert (=> bs!1194587 (not (= lambda!252227 lambda!252162))))

(declare-fun bs!1194588 () Bool)

(assert (= bs!1194588 (and d!1658810 b!5127744)))

(assert (=> bs!1194588 (not (= lambda!252227 lambda!252169))))

(declare-fun bs!1194589 () Bool)

(assert (= bs!1194589 (and d!1658810 b!5127743)))

(assert (=> bs!1194589 (not (= lambda!252227 lambda!252168))))

(declare-fun bs!1194590 () Bool)

(assert (= bs!1194590 (and d!1658810 d!1658678)))

(assert (=> bs!1194590 (not (= lambda!252227 lambda!252161))))

(declare-fun bs!1194591 () Bool)

(assert (= bs!1194591 (and d!1658810 d!1658796)))

(assert (=> bs!1194591 (not (= lambda!252227 lambda!252225))))

(declare-fun bs!1194592 () Bool)

(assert (= bs!1194592 (and d!1658810 d!1658784)))

(assert (=> bs!1194592 (= lambda!252227 lambda!252216)))

(declare-fun bs!1194593 () Bool)

(assert (= bs!1194593 (and d!1658810 d!1658756)))

(assert (=> bs!1194593 (not (= lambda!252227 lambda!252208))))

(assert (=> d!1658810 (= (nullableZipper!1062 z!1006) (exists!1523 z!1006 lambda!252227))))

(declare-fun bs!1194594 () Bool)

(assert (= bs!1194594 d!1658810))

(declare-fun m!6192046 () Bool)

(assert (=> bs!1194594 m!6192046))

(assert (=> b!5127751 d!1658810))

(declare-fun bs!1194595 () Bool)

(declare-fun d!1658812 () Bool)

(assert (= bs!1194595 (and d!1658812 d!1658734)))

(declare-fun lambda!252228 () Int)

(assert (=> bs!1194595 (not (= lambda!252228 lambda!252195))))

(declare-fun bs!1194596 () Bool)

(assert (= bs!1194596 (and d!1658812 b!5127789)))

(assert (=> bs!1194596 (not (= lambda!252228 lambda!252196))))

(declare-fun bs!1194597 () Bool)

(assert (= bs!1194597 (and d!1658812 d!1658768)))

(assert (=> bs!1194597 (= (= lambda!252161 lambda!252167) (= lambda!252228 lambda!252212))))

(declare-fun bs!1194598 () Bool)

(assert (= bs!1194598 (and d!1658812 b!5127740)))

(assert (=> bs!1194598 (not (= lambda!252228 lambda!252163))))

(declare-fun bs!1194599 () Bool)

(assert (= bs!1194599 (and d!1658812 d!1658810)))

(assert (=> bs!1194599 (not (= lambda!252228 lambda!252227))))

(declare-fun bs!1194600 () Bool)

(assert (= bs!1194600 (and d!1658812 d!1658716)))

(assert (=> bs!1194600 (= (= lambda!252161 (ite c!881719 lambda!252168 lambda!252169)) (= lambda!252228 lambda!252192))))

(declare-fun bs!1194601 () Bool)

(assert (= bs!1194601 (and d!1658812 d!1658786)))

(assert (=> bs!1194601 (= (= lambda!252161 (ite c!881716 lambda!252162 lambda!252163)) (= lambda!252228 lambda!252217))))

(declare-fun bs!1194602 () Bool)

(assert (= bs!1194602 (and d!1658812 d!1658790)))

(assert (=> bs!1194602 (not (= lambda!252228 lambda!252224))))

(declare-fun bs!1194603 () Bool)

(assert (= bs!1194603 (and d!1658812 d!1658684)))

(assert (=> bs!1194603 (not (= lambda!252228 lambda!252167))))

(declare-fun bs!1194604 () Bool)

(assert (= bs!1194604 (and d!1658812 b!5127790)))

(assert (=> bs!1194604 (not (= lambda!252228 lambda!252198))))

(declare-fun bs!1194605 () Bool)

(assert (= bs!1194605 (and d!1658812 b!5127739)))

(assert (=> bs!1194605 (not (= lambda!252228 lambda!252162))))

(declare-fun bs!1194606 () Bool)

(assert (= bs!1194606 (and d!1658812 b!5127744)))

(assert (=> bs!1194606 (not (= lambda!252228 lambda!252169))))

(declare-fun bs!1194607 () Bool)

(assert (= bs!1194607 (and d!1658812 b!5127743)))

(assert (=> bs!1194607 (not (= lambda!252228 lambda!252168))))

(declare-fun bs!1194608 () Bool)

(assert (= bs!1194608 (and d!1658812 d!1658678)))

(assert (=> bs!1194608 (not (= lambda!252228 lambda!252161))))

(declare-fun bs!1194609 () Bool)

(assert (= bs!1194609 (and d!1658812 d!1658796)))

(assert (=> bs!1194609 (= lambda!252228 lambda!252225)))

(declare-fun bs!1194610 () Bool)

(assert (= bs!1194610 (and d!1658812 d!1658784)))

(assert (=> bs!1194610 (not (= lambda!252228 lambda!252216))))

(declare-fun bs!1194611 () Bool)

(assert (= bs!1194611 (and d!1658812 d!1658756)))

(assert (=> bs!1194611 (= (= lambda!252161 lambda!252167) (= lambda!252228 lambda!252208))))

(assert (=> d!1658812 true))

(assert (=> d!1658812 (< (dynLambda!23625 order!26813 lambda!252161) (dynLambda!23625 order!26813 lambda!252228))))

(assert (=> d!1658812 (exists!1521 lt!2114867 lambda!252228)))

(declare-fun lt!2114940 () Unit!150557)

(assert (=> d!1658812 (= lt!2114940 (choose!37779 lt!2114867 lambda!252161))))

(assert (=> d!1658812 (not (forall!13672 lt!2114867 lambda!252161))))

(assert (=> d!1658812 (= (lemmaNotForallThenExists!360 lt!2114867 lambda!252161) lt!2114940)))

(declare-fun bs!1194612 () Bool)

(assert (= bs!1194612 d!1658812))

(declare-fun m!6192048 () Bool)

(assert (=> bs!1194612 m!6192048))

(declare-fun m!6192050 () Bool)

(assert (=> bs!1194612 m!6192050))

(declare-fun m!6192052 () Bool)

(assert (=> bs!1194612 m!6192052))

(assert (=> b!5127739 d!1658812))

(declare-fun d!1658814 () Bool)

(assert (=> d!1658814 (= (isEmpty!31980 (getLanguageWitness!851 z!1006)) (not ((_ is Some!14719) (getLanguageWitness!851 z!1006))))))

(assert (=> d!1658678 d!1658814))

(declare-fun bs!1194613 () Bool)

(declare-fun d!1658816 () Bool)

(assert (= bs!1194613 (and d!1658816 b!5127789)))

(declare-fun lambda!252229 () Int)

(assert (=> bs!1194613 (= lambda!252229 lambda!252196)))

(declare-fun bs!1194614 () Bool)

(assert (= bs!1194614 (and d!1658816 d!1658768)))

(assert (=> bs!1194614 (not (= lambda!252229 lambda!252212))))

(declare-fun bs!1194615 () Bool)

(assert (= bs!1194615 (and d!1658816 b!5127740)))

(assert (=> bs!1194615 (= lambda!252229 lambda!252163)))

(declare-fun bs!1194616 () Bool)

(assert (= bs!1194616 (and d!1658816 d!1658810)))

(assert (=> bs!1194616 (not (= lambda!252229 lambda!252227))))

(declare-fun bs!1194617 () Bool)

(assert (= bs!1194617 (and d!1658816 d!1658716)))

(assert (=> bs!1194617 (not (= lambda!252229 lambda!252192))))

(declare-fun bs!1194618 () Bool)

(assert (= bs!1194618 (and d!1658816 d!1658786)))

(assert (=> bs!1194618 (not (= lambda!252229 lambda!252217))))

(declare-fun bs!1194619 () Bool)

(assert (= bs!1194619 (and d!1658816 d!1658790)))

(assert (=> bs!1194619 (= lambda!252229 lambda!252224)))

(declare-fun bs!1194620 () Bool)

(assert (= bs!1194620 (and d!1658816 d!1658684)))

(assert (=> bs!1194620 (not (= lambda!252229 lambda!252167))))

(declare-fun bs!1194621 () Bool)

(assert (= bs!1194621 (and d!1658816 b!5127790)))

(assert (=> bs!1194621 (= lambda!252229 lambda!252198)))

(declare-fun bs!1194622 () Bool)

(assert (= bs!1194622 (and d!1658816 b!5127739)))

(assert (=> bs!1194622 (= lambda!252229 lambda!252162)))

(declare-fun bs!1194623 () Bool)

(assert (= bs!1194623 (and d!1658816 d!1658812)))

(assert (=> bs!1194623 (not (= lambda!252229 lambda!252228))))

(declare-fun bs!1194624 () Bool)

(assert (= bs!1194624 (and d!1658816 d!1658734)))

(assert (=> bs!1194624 (not (= lambda!252229 lambda!252195))))

(declare-fun bs!1194625 () Bool)

(assert (= bs!1194625 (and d!1658816 b!5127744)))

(assert (=> bs!1194625 (= lambda!252229 lambda!252169)))

(declare-fun bs!1194626 () Bool)

(assert (= bs!1194626 (and d!1658816 b!5127743)))

(assert (=> bs!1194626 (= lambda!252229 lambda!252168)))

(declare-fun bs!1194627 () Bool)

(assert (= bs!1194627 (and d!1658816 d!1658678)))

(assert (=> bs!1194627 (not (= lambda!252229 lambda!252161))))

(declare-fun bs!1194628 () Bool)

(assert (= bs!1194628 (and d!1658816 d!1658796)))

(assert (=> bs!1194628 (not (= lambda!252229 lambda!252225))))

(declare-fun bs!1194629 () Bool)

(assert (= bs!1194629 (and d!1658816 d!1658784)))

(assert (=> bs!1194629 (not (= lambda!252229 lambda!252216))))

(declare-fun bs!1194630 () Bool)

(assert (= bs!1194630 (and d!1658816 d!1658756)))

(assert (=> bs!1194630 (not (= lambda!252229 lambda!252208))))

(declare-fun lt!2114941 () Option!14720)

(assert (=> d!1658816 (= (isDefined!11522 lt!2114941) (exists!1523 z!1006 lambda!252229))))

(declare-fun e!3197994 () Option!14720)

(assert (=> d!1658816 (= lt!2114941 e!3197994)))

(declare-fun c!881753 () Bool)

(assert (=> d!1658816 (= c!881753 (exists!1523 z!1006 lambda!252229))))

(assert (=> d!1658816 (= (getLanguageWitness!851 z!1006) lt!2114941)))

(declare-fun b!5127836 () Bool)

(assert (=> b!5127836 (= e!3197994 (getLanguageWitness!853 (getWitness!685 z!1006 lambda!252229)))))

(declare-fun b!5127837 () Bool)

(assert (=> b!5127837 (= e!3197994 None!14719)))

(assert (= (and d!1658816 c!881753) b!5127836))

(assert (= (and d!1658816 (not c!881753)) b!5127837))

(declare-fun m!6192054 () Bool)

(assert (=> d!1658816 m!6192054))

(declare-fun m!6192056 () Bool)

(assert (=> d!1658816 m!6192056))

(assert (=> d!1658816 m!6192056))

(declare-fun m!6192058 () Bool)

(assert (=> b!5127836 m!6192058))

(assert (=> b!5127836 m!6192058))

(declare-fun m!6192060 () Bool)

(assert (=> b!5127836 m!6192060))

(assert (=> d!1658678 d!1658816))

(declare-fun d!1658818 () Bool)

(declare-fun lt!2114942 () Bool)

(assert (=> d!1658818 (= lt!2114942 (forall!13672 (toList!8288 z!1006) lambda!252161))))

(assert (=> d!1658818 (= lt!2114942 (choose!37781 z!1006 lambda!252161))))

(assert (=> d!1658818 (= (forall!13670 z!1006 lambda!252161) lt!2114942)))

(declare-fun bs!1194631 () Bool)

(assert (= bs!1194631 d!1658818))

(assert (=> bs!1194631 m!6191772))

(assert (=> bs!1194631 m!6191772))

(declare-fun m!6192062 () Bool)

(assert (=> bs!1194631 m!6192062))

(declare-fun m!6192064 () Bool)

(assert (=> bs!1194631 m!6192064))

(assert (=> d!1658678 d!1658818))

(declare-fun d!1658820 () Bool)

(assert (=> d!1658820 (= (isEmpty!31981 (t!372523 s!2272)) ((_ is Nil!59372) (t!372523 s!2272)))))

(assert (=> d!1658688 d!1658820))

(declare-fun b!5127848 () Bool)

(declare-fun e!3197997 () Bool)

(assert (=> b!5127848 (= e!3197997 tp_is_empty!37823)))

(declare-fun b!5127850 () Bool)

(declare-fun tp!1430607 () Bool)

(assert (=> b!5127850 (= e!3197997 tp!1430607)))

(declare-fun b!5127851 () Bool)

(declare-fun tp!1430610 () Bool)

(declare-fun tp!1430609 () Bool)

(assert (=> b!5127851 (= e!3197997 (and tp!1430610 tp!1430609))))

(declare-fun b!5127849 () Bool)

(declare-fun tp!1430606 () Bool)

(declare-fun tp!1430608 () Bool)

(assert (=> b!5127849 (= e!3197997 (and tp!1430606 tp!1430608))))

(assert (=> b!5127762 (= tp!1430566 e!3197997)))

(assert (= (and b!5127762 ((_ is ElementMatch!14277) (h!65819 (exprs!4161 setElem!30780)))) b!5127848))

(assert (= (and b!5127762 ((_ is Concat!23122) (h!65819 (exprs!4161 setElem!30780)))) b!5127849))

(assert (= (and b!5127762 ((_ is Star!14277) (h!65819 (exprs!4161 setElem!30780)))) b!5127850))

(assert (= (and b!5127762 ((_ is Union!14277) (h!65819 (exprs!4161 setElem!30780)))) b!5127851))

(declare-fun b!5127852 () Bool)

(declare-fun e!3197998 () Bool)

(declare-fun tp!1430611 () Bool)

(declare-fun tp!1430612 () Bool)

(assert (=> b!5127852 (= e!3197998 (and tp!1430611 tp!1430612))))

(assert (=> b!5127762 (= tp!1430567 e!3197998)))

(assert (= (and b!5127762 ((_ is Cons!59371) (t!372522 (exprs!4161 setElem!30780)))) b!5127852))

(declare-fun b!5127853 () Bool)

(declare-fun e!3197999 () Bool)

(declare-fun tp!1430613 () Bool)

(declare-fun tp!1430614 () Bool)

(assert (=> b!5127853 (= e!3197999 (and tp!1430613 tp!1430614))))

(assert (=> b!5127767 (= tp!1430572 e!3197999)))

(assert (= (and b!5127767 ((_ is Cons!59371) (exprs!4161 setElem!30786))) b!5127853))

(declare-fun b!5127854 () Bool)

(declare-fun e!3198000 () Bool)

(declare-fun tp!1430615 () Bool)

(assert (=> b!5127854 (= e!3198000 (and tp_is_empty!37823 tp!1430615))))

(assert (=> b!5127757 (= tp!1430561 e!3198000)))

(assert (= (and b!5127757 ((_ is Cons!59372) (t!372523 (t!372523 s!2272)))) b!5127854))

(declare-fun condSetEmpty!30788 () Bool)

(assert (=> setNonEmpty!30786 (= condSetEmpty!30788 (= setRest!30786 ((as const (Array Context!7322 Bool)) false)))))

(declare-fun setRes!30788 () Bool)

(assert (=> setNonEmpty!30786 (= tp!1430573 setRes!30788)))

(declare-fun setIsEmpty!30788 () Bool)

(assert (=> setIsEmpty!30788 setRes!30788))

(declare-fun e!3198001 () Bool)

(declare-fun tp!1430617 () Bool)

(declare-fun setNonEmpty!30788 () Bool)

(declare-fun setElem!30788 () Context!7322)

(assert (=> setNonEmpty!30788 (= setRes!30788 (and tp!1430617 (inv!78873 setElem!30788) e!3198001))))

(declare-fun setRest!30788 () (InoxSet Context!7322))

(assert (=> setNonEmpty!30788 (= setRest!30786 ((_ map or) (store ((as const (Array Context!7322 Bool)) false) setElem!30788 true) setRest!30788))))

(declare-fun b!5127855 () Bool)

(declare-fun tp!1430616 () Bool)

(assert (=> b!5127855 (= e!3198001 tp!1430616)))

(assert (= (and setNonEmpty!30786 condSetEmpty!30788) setIsEmpty!30788))

(assert (= (and setNonEmpty!30786 (not condSetEmpty!30788)) setNonEmpty!30788))

(assert (= setNonEmpty!30788 b!5127855))

(declare-fun m!6192066 () Bool)

(assert (=> setNonEmpty!30788 m!6192066))

(declare-fun b_lambda!199095 () Bool)

(assert (= b_lambda!199093 (or d!1658662 b_lambda!199095)))

(declare-fun bs!1194632 () Bool)

(declare-fun d!1658822 () Bool)

(assert (= bs!1194632 (and d!1658822 d!1658662)))

(declare-fun validRegex!6222 (Regex!14277) Bool)

(assert (=> bs!1194632 (= (dynLambda!23626 lambda!252148 (h!65819 (exprs!4161 setElem!30780))) (validRegex!6222 (h!65819 (exprs!4161 setElem!30780))))))

(declare-fun m!6192068 () Bool)

(assert (=> bs!1194632 m!6192068))

(assert (=> b!5127832 d!1658822))

(check-sat (not b!5127851) (not b!5127788) (not d!1658774) (not d!1658798) (not d!1658796) (not d!1658790) (not b!5127852) (not bm!356965) (not d!1658768) (not d!1658794) (not b!5127855) (not b!5127827) (not d!1658734) (not d!1658816) (not d!1658772) (not d!1658802) (not b!5127849) (not b!5127836) (not d!1658782) (not d!1658792) (not b!5127853) (not d!1658724) (not d!1658756) (not b!5127789) (not b!5127834) (not b!5127835) tp_is_empty!37823 (not b!5127813) (not d!1658818) (not bm!356966) (not d!1658750) (not d!1658786) (not d!1658716) (not b_lambda!199095) (not d!1658812) (not d!1658810) (not b!5127833) (not b!5127850) (not b!5127790) (not d!1658784) (not b!5127854) (not d!1658722) (not d!1658804) (not b!5127812) (not bs!1194632) (not b!5127825) (not setNonEmpty!30788))
(check-sat)
