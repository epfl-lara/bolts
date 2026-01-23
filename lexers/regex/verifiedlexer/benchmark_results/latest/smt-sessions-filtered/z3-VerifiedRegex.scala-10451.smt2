; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539936 () Bool)

(assert start!539936)

(declare-fun setIsEmpty!30153 () Bool)

(declare-fun setRes!30154 () Bool)

(assert (=> setIsEmpty!30153 setRes!30154))

(declare-fun b!5117077 () Bool)

(declare-fun res!2178637 () Bool)

(declare-fun e!3191444 () Bool)

(assert (=> b!5117077 (=> (not res!2178637) (not e!3191444))))

(declare-datatypes ((C!28652 0))(
  ( (C!28653 (val!23978 Int)) )
))
(declare-datatypes ((List!59295 0))(
  ( (Nil!59171) (Cons!59171 (h!65619 C!28652) (t!372306 List!59295)) )
))
(declare-fun knownP!20 () List!59295)

(declare-fun input!5745 () List!59295)

(declare-fun isPrefix!5598 (List!59295 List!59295) Bool)

(assert (=> b!5117077 (= res!2178637 (isPrefix!5598 knownP!20 input!5745))))

(declare-fun b!5117078 () Bool)

(declare-fun res!2178638 () Bool)

(declare-fun e!3191445 () Bool)

(assert (=> b!5117078 (=> res!2178638 e!3191445)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14193 0))(
  ( (ElementMatch!14193 (c!879213 C!28652)) (Concat!23038 (regOne!28898 Regex!14193) (regTwo!28898 Regex!14193)) (EmptyExpr!14193) (Star!14193 (reg!14522 Regex!14193)) (EmptyLang!14193) (Union!14193 (regOne!28899 Regex!14193) (regTwo!28899 Regex!14193)) )
))
(declare-datatypes ((List!59296 0))(
  ( (Nil!59172) (Cons!59172 (h!65620 Regex!14193) (t!372307 List!59296)) )
))
(declare-datatypes ((Context!7154 0))(
  ( (Context!7155 (exprs!4077 List!59296)) )
))
(declare-fun z!4463 () (InoxSet Context!7154))

(declare-fun testedP!265 () List!59295)

(declare-fun baseZ!46 () (InoxSet Context!7154))

(declare-fun derivationZipper!92 ((InoxSet Context!7154) List!59295) (InoxSet Context!7154))

(assert (=> b!5117078 (= res!2178638 (not (= (derivationZipper!92 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5117079 () Bool)

(declare-fun res!2178646 () Bool)

(assert (=> b!5117079 (=> res!2178646 e!3191445)))

(declare-fun lostCauseZipper!1079 ((InoxSet Context!7154)) Bool)

(assert (=> b!5117079 (= res!2178646 (lostCauseZipper!1079 z!4463))))

(declare-fun e!3191443 () Bool)

(declare-fun b!5117080 () Bool)

(declare-fun lt!2108982 () List!59295)

(declare-fun lt!2108989 () List!59295)

(declare-fun ++!13018 (List!59295 List!59295) List!59295)

(assert (=> b!5117080 (= e!3191443 (= (++!13018 (++!13018 testedP!265 lt!2108989) lt!2108982) input!5745))))

(declare-fun setElem!30153 () Context!7154)

(declare-fun e!3191449 () Bool)

(declare-fun setNonEmpty!30153 () Bool)

(declare-fun tp!1427648 () Bool)

(declare-fun inv!78663 (Context!7154) Bool)

(assert (=> setNonEmpty!30153 (= setRes!30154 (and tp!1427648 (inv!78663 setElem!30153) e!3191449))))

(declare-fun setRest!30154 () (InoxSet Context!7154))

(assert (=> setNonEmpty!30153 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7154 Bool)) false) setElem!30153 true) setRest!30154))))

(declare-fun setIsEmpty!30154 () Bool)

(declare-fun setRes!30153 () Bool)

(assert (=> setIsEmpty!30154 setRes!30153))

(declare-fun b!5117081 () Bool)

(declare-fun e!3191448 () Bool)

(declare-fun tp_is_empty!37659 () Bool)

(declare-fun tp!1427647 () Bool)

(assert (=> b!5117081 (= e!3191448 (and tp_is_empty!37659 tp!1427647))))

(declare-fun b!5117082 () Bool)

(declare-fun res!2178642 () Bool)

(assert (=> b!5117082 (=> res!2178642 e!3191445)))

(declare-fun lt!2108984 () Int)

(declare-fun size!39499 (List!59295) Int)

(assert (=> b!5117082 (= res!2178642 (>= lt!2108984 (size!39499 input!5745)))))

(declare-fun res!2178644 () Bool)

(assert (=> start!539936 (=> (not res!2178644) (not e!3191444))))

(assert (=> start!539936 (= res!2178644 (isPrefix!5598 testedP!265 input!5745))))

(assert (=> start!539936 e!3191444))

(assert (=> start!539936 e!3191448))

(declare-fun condSetEmpty!30154 () Bool)

(assert (=> start!539936 (= condSetEmpty!30154 (= z!4463 ((as const (Array Context!7154 Bool)) false)))))

(assert (=> start!539936 setRes!30153))

(declare-fun e!3191447 () Bool)

(assert (=> start!539936 e!3191447))

(declare-fun condSetEmpty!30153 () Bool)

(assert (=> start!539936 (= condSetEmpty!30153 (= baseZ!46 ((as const (Array Context!7154 Bool)) false)))))

(assert (=> start!539936 setRes!30154))

(declare-fun e!3191446 () Bool)

(assert (=> start!539936 e!3191446))

(declare-fun b!5117083 () Bool)

(declare-fun res!2178640 () Bool)

(declare-fun e!3191442 () Bool)

(assert (=> b!5117083 (=> (not res!2178640) (not e!3191442))))

(declare-fun matchZipper!861 ((InoxSet Context!7154) List!59295) Bool)

(assert (=> b!5117083 (= res!2178640 (matchZipper!861 baseZ!46 knownP!20))))

(declare-fun b!5117084 () Bool)

(assert (=> b!5117084 (= e!3191444 e!3191442)))

(declare-fun res!2178645 () Bool)

(assert (=> b!5117084 (=> (not res!2178645) (not e!3191442))))

(declare-fun lt!2108991 () Int)

(assert (=> b!5117084 (= res!2178645 (>= lt!2108991 lt!2108984))))

(assert (=> b!5117084 (= lt!2108984 (size!39499 testedP!265))))

(assert (=> b!5117084 (= lt!2108991 (size!39499 knownP!20))))

(declare-fun b!5117085 () Bool)

(declare-fun tp!1427645 () Bool)

(assert (=> b!5117085 (= e!3191449 tp!1427645)))

(declare-fun tp!1427646 () Bool)

(declare-fun e!3191441 () Bool)

(declare-fun setNonEmpty!30154 () Bool)

(declare-fun setElem!30154 () Context!7154)

(assert (=> setNonEmpty!30154 (= setRes!30153 (and tp!1427646 (inv!78663 setElem!30154) e!3191441))))

(declare-fun setRest!30153 () (InoxSet Context!7154))

(assert (=> setNonEmpty!30154 (= z!4463 ((_ map or) (store ((as const (Array Context!7154 Bool)) false) setElem!30154 true) setRest!30153))))

(declare-fun b!5117086 () Bool)

(declare-fun tp!1427649 () Bool)

(assert (=> b!5117086 (= e!3191447 (and tp_is_empty!37659 tp!1427649))))

(declare-fun b!5117087 () Bool)

(declare-fun res!2178641 () Bool)

(assert (=> b!5117087 (=> res!2178641 e!3191445)))

(assert (=> b!5117087 (= res!2178641 (= lt!2108984 lt!2108991))))

(declare-fun b!5117088 () Bool)

(assert (=> b!5117088 (= e!3191445 e!3191443)))

(declare-fun res!2178643 () Bool)

(assert (=> b!5117088 (=> res!2178643 e!3191443)))

(assert (=> b!5117088 (= res!2178643 (not (= (++!13018 knownP!20 lt!2108982) input!5745)))))

(declare-fun getSuffix!3272 (List!59295 List!59295) List!59295)

(assert (=> b!5117088 (= lt!2108982 (getSuffix!3272 input!5745 knownP!20))))

(declare-fun lt!2108987 () List!59295)

(declare-fun lt!2108983 () List!59295)

(assert (=> b!5117088 (= lt!2108987 (getSuffix!3272 knownP!20 lt!2108983))))

(assert (=> b!5117088 (isPrefix!5598 lt!2108983 knownP!20)))

(declare-datatypes ((Unit!150301 0))(
  ( (Unit!150302) )
))
(declare-fun lt!2108986 () Unit!150301)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!735 (List!59295 List!59295 List!59295) Unit!150301)

(assert (=> b!5117088 (= lt!2108986 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!735 knownP!20 lt!2108983 input!5745))))

(declare-fun lt!2108988 () C!28652)

(declare-fun derivationStepZipper!828 ((InoxSet Context!7154) C!28652) (InoxSet Context!7154))

(assert (=> b!5117088 (= (derivationZipper!92 baseZ!46 lt!2108983) (derivationStepZipper!828 z!4463 lt!2108988))))

(declare-fun lt!2108992 () Unit!150301)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!49 ((InoxSet Context!7154) (InoxSet Context!7154) List!59295 C!28652) Unit!150301)

(assert (=> b!5117088 (= lt!2108992 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!49 baseZ!46 z!4463 testedP!265 lt!2108988))))

(assert (=> b!5117088 (isPrefix!5598 lt!2108983 input!5745)))

(declare-fun lt!2108990 () Unit!150301)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!984 (List!59295 List!59295) Unit!150301)

(assert (=> b!5117088 (= lt!2108990 (lemmaAddHeadSuffixToPrefixStillPrefix!984 testedP!265 input!5745))))

(assert (=> b!5117088 (= lt!2108983 (++!13018 testedP!265 (Cons!59171 lt!2108988 Nil!59171)))))

(declare-fun head!10921 (List!59295) C!28652)

(assert (=> b!5117088 (= lt!2108988 (head!10921 (getSuffix!3272 input!5745 testedP!265)))))

(declare-fun b!5117089 () Bool)

(declare-fun tp!1427643 () Bool)

(assert (=> b!5117089 (= e!3191446 (and tp_is_empty!37659 tp!1427643))))

(declare-fun b!5117090 () Bool)

(declare-fun tp!1427644 () Bool)

(assert (=> b!5117090 (= e!3191441 tp!1427644)))

(declare-fun b!5117091 () Bool)

(assert (=> b!5117091 (= e!3191442 (not e!3191445))))

(declare-fun res!2178639 () Bool)

(assert (=> b!5117091 (=> res!2178639 e!3191445)))

(assert (=> b!5117091 (= res!2178639 (not (matchZipper!861 z!4463 lt!2108989)))))

(assert (=> b!5117091 (= lt!2108989 (getSuffix!3272 knownP!20 testedP!265))))

(assert (=> b!5117091 (isPrefix!5598 testedP!265 knownP!20)))

(declare-fun lt!2108985 () Unit!150301)

(assert (=> b!5117091 (= lt!2108985 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!735 knownP!20 testedP!265 input!5745))))

(assert (= (and start!539936 res!2178644) b!5117077))

(assert (= (and b!5117077 res!2178637) b!5117084))

(assert (= (and b!5117084 res!2178645) b!5117083))

(assert (= (and b!5117083 res!2178640) b!5117091))

(assert (= (and b!5117091 (not res!2178639)) b!5117078))

(assert (= (and b!5117078 (not res!2178638)) b!5117079))

(assert (= (and b!5117079 (not res!2178646)) b!5117087))

(assert (= (and b!5117087 (not res!2178641)) b!5117082))

(assert (= (and b!5117082 (not res!2178642)) b!5117088))

(assert (= (and b!5117088 (not res!2178643)) b!5117080))

(get-info :version)

(assert (= (and start!539936 ((_ is Cons!59171) input!5745)) b!5117081))

(assert (= (and start!539936 condSetEmpty!30154) setIsEmpty!30154))

(assert (= (and start!539936 (not condSetEmpty!30154)) setNonEmpty!30154))

(assert (= setNonEmpty!30154 b!5117090))

(assert (= (and start!539936 ((_ is Cons!59171) testedP!265)) b!5117086))

(assert (= (and start!539936 condSetEmpty!30153) setIsEmpty!30153))

(assert (= (and start!539936 (not condSetEmpty!30153)) setNonEmpty!30153))

(assert (= setNonEmpty!30153 b!5117085))

(assert (= (and start!539936 ((_ is Cons!59171) knownP!20)) b!5117089))

(declare-fun m!6176624 () Bool)

(assert (=> setNonEmpty!30153 m!6176624))

(declare-fun m!6176626 () Bool)

(assert (=> b!5117080 m!6176626))

(assert (=> b!5117080 m!6176626))

(declare-fun m!6176628 () Bool)

(assert (=> b!5117080 m!6176628))

(declare-fun m!6176630 () Bool)

(assert (=> b!5117082 m!6176630))

(declare-fun m!6176632 () Bool)

(assert (=> b!5117084 m!6176632))

(declare-fun m!6176634 () Bool)

(assert (=> b!5117084 m!6176634))

(declare-fun m!6176636 () Bool)

(assert (=> b!5117079 m!6176636))

(declare-fun m!6176638 () Bool)

(assert (=> b!5117083 m!6176638))

(declare-fun m!6176640 () Bool)

(assert (=> b!5117077 m!6176640))

(declare-fun m!6176642 () Bool)

(assert (=> setNonEmpty!30154 m!6176642))

(declare-fun m!6176644 () Bool)

(assert (=> b!5117088 m!6176644))

(assert (=> b!5117088 m!6176644))

(declare-fun m!6176646 () Bool)

(assert (=> b!5117088 m!6176646))

(declare-fun m!6176648 () Bool)

(assert (=> b!5117088 m!6176648))

(declare-fun m!6176650 () Bool)

(assert (=> b!5117088 m!6176650))

(declare-fun m!6176652 () Bool)

(assert (=> b!5117088 m!6176652))

(declare-fun m!6176654 () Bool)

(assert (=> b!5117088 m!6176654))

(declare-fun m!6176656 () Bool)

(assert (=> b!5117088 m!6176656))

(declare-fun m!6176658 () Bool)

(assert (=> b!5117088 m!6176658))

(declare-fun m!6176660 () Bool)

(assert (=> b!5117088 m!6176660))

(declare-fun m!6176662 () Bool)

(assert (=> b!5117088 m!6176662))

(declare-fun m!6176664 () Bool)

(assert (=> b!5117088 m!6176664))

(declare-fun m!6176666 () Bool)

(assert (=> b!5117088 m!6176666))

(declare-fun m!6176668 () Bool)

(assert (=> b!5117088 m!6176668))

(declare-fun m!6176670 () Bool)

(assert (=> b!5117078 m!6176670))

(declare-fun m!6176672 () Bool)

(assert (=> b!5117091 m!6176672))

(declare-fun m!6176674 () Bool)

(assert (=> b!5117091 m!6176674))

(declare-fun m!6176676 () Bool)

(assert (=> b!5117091 m!6176676))

(declare-fun m!6176678 () Bool)

(assert (=> b!5117091 m!6176678))

(declare-fun m!6176680 () Bool)

(assert (=> start!539936 m!6176680))

(check-sat (not b!5117081) (not b!5117082) (not b!5117079) (not b!5117080) (not b!5117077) (not b!5117085) (not b!5117086) (not b!5117090) (not b!5117091) (not b!5117088) (not setNonEmpty!30153) (not b!5117083) (not b!5117089) (not b!5117084) tp_is_empty!37659 (not setNonEmpty!30154) (not start!539936) (not b!5117078))
(check-sat)
(get-model)

(declare-fun d!1653612 () Bool)

(declare-fun e!3191457 () Bool)

(assert (=> d!1653612 e!3191457))

(declare-fun res!2178656 () Bool)

(assert (=> d!1653612 (=> res!2178656 e!3191457)))

(declare-fun lt!2108995 () Bool)

(assert (=> d!1653612 (= res!2178656 (not lt!2108995))))

(declare-fun e!3191456 () Bool)

(assert (=> d!1653612 (= lt!2108995 e!3191456)))

(declare-fun res!2178655 () Bool)

(assert (=> d!1653612 (=> res!2178655 e!3191456)))

(assert (=> d!1653612 (= res!2178655 ((_ is Nil!59171) knownP!20))))

(assert (=> d!1653612 (= (isPrefix!5598 knownP!20 input!5745) lt!2108995)))

(declare-fun b!5117102 () Bool)

(declare-fun e!3191458 () Bool)

(declare-fun tail!10061 (List!59295) List!59295)

(assert (=> b!5117102 (= e!3191458 (isPrefix!5598 (tail!10061 knownP!20) (tail!10061 input!5745)))))

(declare-fun b!5117103 () Bool)

(assert (=> b!5117103 (= e!3191457 (>= (size!39499 input!5745) (size!39499 knownP!20)))))

(declare-fun b!5117100 () Bool)

(assert (=> b!5117100 (= e!3191456 e!3191458)))

(declare-fun res!2178658 () Bool)

(assert (=> b!5117100 (=> (not res!2178658) (not e!3191458))))

(assert (=> b!5117100 (= res!2178658 (not ((_ is Nil!59171) input!5745)))))

(declare-fun b!5117101 () Bool)

(declare-fun res!2178657 () Bool)

(assert (=> b!5117101 (=> (not res!2178657) (not e!3191458))))

(assert (=> b!5117101 (= res!2178657 (= (head!10921 knownP!20) (head!10921 input!5745)))))

(assert (= (and d!1653612 (not res!2178655)) b!5117100))

(assert (= (and b!5117100 res!2178658) b!5117101))

(assert (= (and b!5117101 res!2178657) b!5117102))

(assert (= (and d!1653612 (not res!2178656)) b!5117103))

(declare-fun m!6176682 () Bool)

(assert (=> b!5117102 m!6176682))

(declare-fun m!6176684 () Bool)

(assert (=> b!5117102 m!6176684))

(assert (=> b!5117102 m!6176682))

(assert (=> b!5117102 m!6176684))

(declare-fun m!6176686 () Bool)

(assert (=> b!5117102 m!6176686))

(assert (=> b!5117103 m!6176630))

(assert (=> b!5117103 m!6176634))

(declare-fun m!6176688 () Bool)

(assert (=> b!5117101 m!6176688))

(declare-fun m!6176690 () Bool)

(assert (=> b!5117101 m!6176690))

(assert (=> b!5117077 d!1653612))

(declare-fun d!1653616 () Bool)

(declare-fun lambda!250957 () Int)

(declare-fun forall!13589 (List!59296 Int) Bool)

(assert (=> d!1653616 (= (inv!78663 setElem!30154) (forall!13589 (exprs!4077 setElem!30154) lambda!250957))))

(declare-fun bs!1192430 () Bool)

(assert (= bs!1192430 d!1653616))

(declare-fun m!6176692 () Bool)

(assert (=> bs!1192430 m!6176692))

(assert (=> setNonEmpty!30154 d!1653616))

(declare-fun d!1653618 () Bool)

(declare-fun lt!2108998 () Int)

(assert (=> d!1653618 (>= lt!2108998 0)))

(declare-fun e!3191461 () Int)

(assert (=> d!1653618 (= lt!2108998 e!3191461)))

(declare-fun c!879216 () Bool)

(assert (=> d!1653618 (= c!879216 ((_ is Nil!59171) testedP!265))))

(assert (=> d!1653618 (= (size!39499 testedP!265) lt!2108998)))

(declare-fun b!5117108 () Bool)

(assert (=> b!5117108 (= e!3191461 0)))

(declare-fun b!5117109 () Bool)

(assert (=> b!5117109 (= e!3191461 (+ 1 (size!39499 (t!372306 testedP!265))))))

(assert (= (and d!1653618 c!879216) b!5117108))

(assert (= (and d!1653618 (not c!879216)) b!5117109))

(declare-fun m!6176694 () Bool)

(assert (=> b!5117109 m!6176694))

(assert (=> b!5117084 d!1653618))

(declare-fun d!1653620 () Bool)

(declare-fun lt!2108999 () Int)

(assert (=> d!1653620 (>= lt!2108999 0)))

(declare-fun e!3191462 () Int)

(assert (=> d!1653620 (= lt!2108999 e!3191462)))

(declare-fun c!879217 () Bool)

(assert (=> d!1653620 (= c!879217 ((_ is Nil!59171) knownP!20))))

(assert (=> d!1653620 (= (size!39499 knownP!20) lt!2108999)))

(declare-fun b!5117110 () Bool)

(assert (=> b!5117110 (= e!3191462 0)))

(declare-fun b!5117111 () Bool)

(assert (=> b!5117111 (= e!3191462 (+ 1 (size!39499 (t!372306 knownP!20))))))

(assert (= (and d!1653620 c!879217) b!5117110))

(assert (= (and d!1653620 (not c!879217)) b!5117111))

(declare-fun m!6176696 () Bool)

(assert (=> b!5117111 m!6176696))

(assert (=> b!5117084 d!1653620))

(declare-fun b!5117122 () Bool)

(declare-fun res!2178664 () Bool)

(declare-fun e!3191468 () Bool)

(assert (=> b!5117122 (=> (not res!2178664) (not e!3191468))))

(declare-fun lt!2109002 () List!59295)

(assert (=> b!5117122 (= res!2178664 (= (size!39499 lt!2109002) (+ (size!39499 (++!13018 testedP!265 lt!2108989)) (size!39499 lt!2108982))))))

(declare-fun b!5117123 () Bool)

(assert (=> b!5117123 (= e!3191468 (or (not (= lt!2108982 Nil!59171)) (= lt!2109002 (++!13018 testedP!265 lt!2108989))))))

(declare-fun b!5117121 () Bool)

(declare-fun e!3191467 () List!59295)

(assert (=> b!5117121 (= e!3191467 (Cons!59171 (h!65619 (++!13018 testedP!265 lt!2108989)) (++!13018 (t!372306 (++!13018 testedP!265 lt!2108989)) lt!2108982)))))

(declare-fun b!5117120 () Bool)

(assert (=> b!5117120 (= e!3191467 lt!2108982)))

(declare-fun d!1653622 () Bool)

(assert (=> d!1653622 e!3191468))

(declare-fun res!2178663 () Bool)

(assert (=> d!1653622 (=> (not res!2178663) (not e!3191468))))

(declare-fun content!10518 (List!59295) (InoxSet C!28652))

(assert (=> d!1653622 (= res!2178663 (= (content!10518 lt!2109002) ((_ map or) (content!10518 (++!13018 testedP!265 lt!2108989)) (content!10518 lt!2108982))))))

(assert (=> d!1653622 (= lt!2109002 e!3191467)))

(declare-fun c!879220 () Bool)

(assert (=> d!1653622 (= c!879220 ((_ is Nil!59171) (++!13018 testedP!265 lt!2108989)))))

(assert (=> d!1653622 (= (++!13018 (++!13018 testedP!265 lt!2108989) lt!2108982) lt!2109002)))

(assert (= (and d!1653622 c!879220) b!5117120))

(assert (= (and d!1653622 (not c!879220)) b!5117121))

(assert (= (and d!1653622 res!2178663) b!5117122))

(assert (= (and b!5117122 res!2178664) b!5117123))

(declare-fun m!6176698 () Bool)

(assert (=> b!5117122 m!6176698))

(assert (=> b!5117122 m!6176626))

(declare-fun m!6176700 () Bool)

(assert (=> b!5117122 m!6176700))

(declare-fun m!6176702 () Bool)

(assert (=> b!5117122 m!6176702))

(declare-fun m!6176704 () Bool)

(assert (=> b!5117121 m!6176704))

(declare-fun m!6176706 () Bool)

(assert (=> d!1653622 m!6176706))

(assert (=> d!1653622 m!6176626))

(declare-fun m!6176708 () Bool)

(assert (=> d!1653622 m!6176708))

(declare-fun m!6176710 () Bool)

(assert (=> d!1653622 m!6176710))

(assert (=> b!5117080 d!1653622))

(declare-fun b!5117126 () Bool)

(declare-fun res!2178666 () Bool)

(declare-fun e!3191470 () Bool)

(assert (=> b!5117126 (=> (not res!2178666) (not e!3191470))))

(declare-fun lt!2109003 () List!59295)

(assert (=> b!5117126 (= res!2178666 (= (size!39499 lt!2109003) (+ (size!39499 testedP!265) (size!39499 lt!2108989))))))

(declare-fun b!5117127 () Bool)

(assert (=> b!5117127 (= e!3191470 (or (not (= lt!2108989 Nil!59171)) (= lt!2109003 testedP!265)))))

(declare-fun b!5117125 () Bool)

(declare-fun e!3191469 () List!59295)

(assert (=> b!5117125 (= e!3191469 (Cons!59171 (h!65619 testedP!265) (++!13018 (t!372306 testedP!265) lt!2108989)))))

(declare-fun b!5117124 () Bool)

(assert (=> b!5117124 (= e!3191469 lt!2108989)))

(declare-fun d!1653624 () Bool)

(assert (=> d!1653624 e!3191470))

(declare-fun res!2178665 () Bool)

(assert (=> d!1653624 (=> (not res!2178665) (not e!3191470))))

(assert (=> d!1653624 (= res!2178665 (= (content!10518 lt!2109003) ((_ map or) (content!10518 testedP!265) (content!10518 lt!2108989))))))

(assert (=> d!1653624 (= lt!2109003 e!3191469)))

(declare-fun c!879221 () Bool)

(assert (=> d!1653624 (= c!879221 ((_ is Nil!59171) testedP!265))))

(assert (=> d!1653624 (= (++!13018 testedP!265 lt!2108989) lt!2109003)))

(assert (= (and d!1653624 c!879221) b!5117124))

(assert (= (and d!1653624 (not c!879221)) b!5117125))

(assert (= (and d!1653624 res!2178665) b!5117126))

(assert (= (and b!5117126 res!2178666) b!5117127))

(declare-fun m!6176712 () Bool)

(assert (=> b!5117126 m!6176712))

(assert (=> b!5117126 m!6176632))

(declare-fun m!6176714 () Bool)

(assert (=> b!5117126 m!6176714))

(declare-fun m!6176716 () Bool)

(assert (=> b!5117125 m!6176716))

(declare-fun m!6176718 () Bool)

(assert (=> d!1653624 m!6176718))

(declare-fun m!6176720 () Bool)

(assert (=> d!1653624 m!6176720))

(declare-fun m!6176722 () Bool)

(assert (=> d!1653624 m!6176722))

(assert (=> b!5117080 d!1653624))

(declare-fun d!1653626 () Bool)

(declare-fun e!3191472 () Bool)

(assert (=> d!1653626 e!3191472))

(declare-fun res!2178668 () Bool)

(assert (=> d!1653626 (=> res!2178668 e!3191472)))

(declare-fun lt!2109004 () Bool)

(assert (=> d!1653626 (= res!2178668 (not lt!2109004))))

(declare-fun e!3191471 () Bool)

(assert (=> d!1653626 (= lt!2109004 e!3191471)))

(declare-fun res!2178667 () Bool)

(assert (=> d!1653626 (=> res!2178667 e!3191471)))

(assert (=> d!1653626 (= res!2178667 ((_ is Nil!59171) lt!2108983))))

(assert (=> d!1653626 (= (isPrefix!5598 lt!2108983 input!5745) lt!2109004)))

(declare-fun b!5117130 () Bool)

(declare-fun e!3191473 () Bool)

(assert (=> b!5117130 (= e!3191473 (isPrefix!5598 (tail!10061 lt!2108983) (tail!10061 input!5745)))))

(declare-fun b!5117131 () Bool)

(assert (=> b!5117131 (= e!3191472 (>= (size!39499 input!5745) (size!39499 lt!2108983)))))

(declare-fun b!5117128 () Bool)

(assert (=> b!5117128 (= e!3191471 e!3191473)))

(declare-fun res!2178670 () Bool)

(assert (=> b!5117128 (=> (not res!2178670) (not e!3191473))))

(assert (=> b!5117128 (= res!2178670 (not ((_ is Nil!59171) input!5745)))))

(declare-fun b!5117129 () Bool)

(declare-fun res!2178669 () Bool)

(assert (=> b!5117129 (=> (not res!2178669) (not e!3191473))))

(assert (=> b!5117129 (= res!2178669 (= (head!10921 lt!2108983) (head!10921 input!5745)))))

(assert (= (and d!1653626 (not res!2178667)) b!5117128))

(assert (= (and b!5117128 res!2178670) b!5117129))

(assert (= (and b!5117129 res!2178669) b!5117130))

(assert (= (and d!1653626 (not res!2178668)) b!5117131))

(declare-fun m!6176724 () Bool)

(assert (=> b!5117130 m!6176724))

(assert (=> b!5117130 m!6176684))

(assert (=> b!5117130 m!6176724))

(assert (=> b!5117130 m!6176684))

(declare-fun m!6176726 () Bool)

(assert (=> b!5117130 m!6176726))

(assert (=> b!5117131 m!6176630))

(declare-fun m!6176728 () Bool)

(assert (=> b!5117131 m!6176728))

(declare-fun m!6176730 () Bool)

(assert (=> b!5117129 m!6176730))

(assert (=> b!5117129 m!6176690))

(assert (=> b!5117088 d!1653626))

(declare-fun d!1653628 () Bool)

(declare-fun e!3191475 () Bool)

(assert (=> d!1653628 e!3191475))

(declare-fun res!2178672 () Bool)

(assert (=> d!1653628 (=> res!2178672 e!3191475)))

(declare-fun lt!2109005 () Bool)

(assert (=> d!1653628 (= res!2178672 (not lt!2109005))))

(declare-fun e!3191474 () Bool)

(assert (=> d!1653628 (= lt!2109005 e!3191474)))

(declare-fun res!2178671 () Bool)

(assert (=> d!1653628 (=> res!2178671 e!3191474)))

(assert (=> d!1653628 (= res!2178671 ((_ is Nil!59171) lt!2108983))))

(assert (=> d!1653628 (= (isPrefix!5598 lt!2108983 knownP!20) lt!2109005)))

(declare-fun b!5117134 () Bool)

(declare-fun e!3191476 () Bool)

(assert (=> b!5117134 (= e!3191476 (isPrefix!5598 (tail!10061 lt!2108983) (tail!10061 knownP!20)))))

(declare-fun b!5117135 () Bool)

(assert (=> b!5117135 (= e!3191475 (>= (size!39499 knownP!20) (size!39499 lt!2108983)))))

(declare-fun b!5117132 () Bool)

(assert (=> b!5117132 (= e!3191474 e!3191476)))

(declare-fun res!2178674 () Bool)

(assert (=> b!5117132 (=> (not res!2178674) (not e!3191476))))

(assert (=> b!5117132 (= res!2178674 (not ((_ is Nil!59171) knownP!20)))))

(declare-fun b!5117133 () Bool)

(declare-fun res!2178673 () Bool)

(assert (=> b!5117133 (=> (not res!2178673) (not e!3191476))))

(assert (=> b!5117133 (= res!2178673 (= (head!10921 lt!2108983) (head!10921 knownP!20)))))

(assert (= (and d!1653628 (not res!2178671)) b!5117132))

(assert (= (and b!5117132 res!2178674) b!5117133))

(assert (= (and b!5117133 res!2178673) b!5117134))

(assert (= (and d!1653628 (not res!2178672)) b!5117135))

(assert (=> b!5117134 m!6176724))

(assert (=> b!5117134 m!6176682))

(assert (=> b!5117134 m!6176724))

(assert (=> b!5117134 m!6176682))

(declare-fun m!6176732 () Bool)

(assert (=> b!5117134 m!6176732))

(assert (=> b!5117135 m!6176634))

(assert (=> b!5117135 m!6176728))

(assert (=> b!5117133 m!6176730))

(assert (=> b!5117133 m!6176688))

(assert (=> b!5117088 d!1653628))

(declare-fun d!1653630 () Bool)

(declare-fun lt!2109008 () List!59295)

(assert (=> d!1653630 (= (++!13018 lt!2108983 lt!2109008) knownP!20)))

(declare-fun e!3191479 () List!59295)

(assert (=> d!1653630 (= lt!2109008 e!3191479)))

(declare-fun c!879224 () Bool)

(assert (=> d!1653630 (= c!879224 ((_ is Cons!59171) lt!2108983))))

(assert (=> d!1653630 (>= (size!39499 knownP!20) (size!39499 lt!2108983))))

(assert (=> d!1653630 (= (getSuffix!3272 knownP!20 lt!2108983) lt!2109008)))

(declare-fun b!5117140 () Bool)

(assert (=> b!5117140 (= e!3191479 (getSuffix!3272 (tail!10061 knownP!20) (t!372306 lt!2108983)))))

(declare-fun b!5117141 () Bool)

(assert (=> b!5117141 (= e!3191479 knownP!20)))

(assert (= (and d!1653630 c!879224) b!5117140))

(assert (= (and d!1653630 (not c!879224)) b!5117141))

(declare-fun m!6176734 () Bool)

(assert (=> d!1653630 m!6176734))

(assert (=> d!1653630 m!6176634))

(assert (=> d!1653630 m!6176728))

(assert (=> b!5117140 m!6176682))

(assert (=> b!5117140 m!6176682))

(declare-fun m!6176736 () Bool)

(assert (=> b!5117140 m!6176736))

(assert (=> b!5117088 d!1653630))

(declare-fun d!1653632 () Bool)

(assert (=> d!1653632 true))

(declare-fun lambda!250960 () Int)

(declare-fun flatMap!347 ((InoxSet Context!7154) Int) (InoxSet Context!7154))

(assert (=> d!1653632 (= (derivationStepZipper!828 z!4463 lt!2108988) (flatMap!347 z!4463 lambda!250960))))

(declare-fun bs!1192431 () Bool)

(assert (= bs!1192431 d!1653632))

(declare-fun m!6176738 () Bool)

(assert (=> bs!1192431 m!6176738))

(assert (=> b!5117088 d!1653632))

(declare-fun d!1653634 () Bool)

(assert (=> d!1653634 (= (derivationZipper!92 baseZ!46 (++!13018 testedP!265 (Cons!59171 lt!2108988 Nil!59171))) (derivationStepZipper!828 z!4463 lt!2108988))))

(declare-fun lt!2109011 () Unit!150301)

(declare-fun choose!37579 ((InoxSet Context!7154) (InoxSet Context!7154) List!59295 C!28652) Unit!150301)

(assert (=> d!1653634 (= lt!2109011 (choose!37579 baseZ!46 z!4463 testedP!265 lt!2108988))))

(assert (=> d!1653634 (= (derivationZipper!92 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1653634 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!49 baseZ!46 z!4463 testedP!265 lt!2108988) lt!2109011)))

(declare-fun bs!1192432 () Bool)

(assert (= bs!1192432 d!1653634))

(assert (=> bs!1192432 m!6176666))

(assert (=> bs!1192432 m!6176664))

(assert (=> bs!1192432 m!6176666))

(declare-fun m!6176740 () Bool)

(assert (=> bs!1192432 m!6176740))

(assert (=> bs!1192432 m!6176670))

(declare-fun m!6176742 () Bool)

(assert (=> bs!1192432 m!6176742))

(assert (=> b!5117088 d!1653634))

(declare-fun d!1653636 () Bool)

(assert (=> d!1653636 (isPrefix!5598 (++!13018 testedP!265 (Cons!59171 (head!10921 (getSuffix!3272 input!5745 testedP!265)) Nil!59171)) input!5745)))

(declare-fun lt!2109014 () Unit!150301)

(declare-fun choose!37580 (List!59295 List!59295) Unit!150301)

(assert (=> d!1653636 (= lt!2109014 (choose!37580 testedP!265 input!5745))))

(assert (=> d!1653636 (isPrefix!5598 testedP!265 input!5745)))

(assert (=> d!1653636 (= (lemmaAddHeadSuffixToPrefixStillPrefix!984 testedP!265 input!5745) lt!2109014)))

(declare-fun bs!1192433 () Bool)

(assert (= bs!1192433 d!1653636))

(declare-fun m!6176744 () Bool)

(assert (=> bs!1192433 m!6176744))

(declare-fun m!6176746 () Bool)

(assert (=> bs!1192433 m!6176746))

(declare-fun m!6176748 () Bool)

(assert (=> bs!1192433 m!6176748))

(assert (=> bs!1192433 m!6176644))

(assert (=> bs!1192433 m!6176646))

(assert (=> bs!1192433 m!6176644))

(assert (=> bs!1192433 m!6176746))

(assert (=> bs!1192433 m!6176680))

(assert (=> b!5117088 d!1653636))

(declare-fun d!1653638 () Bool)

(declare-fun c!879230 () Bool)

(assert (=> d!1653638 (= c!879230 ((_ is Cons!59171) lt!2108983))))

(declare-fun e!3191482 () (InoxSet Context!7154))

(assert (=> d!1653638 (= (derivationZipper!92 baseZ!46 lt!2108983) e!3191482)))

(declare-fun b!5117148 () Bool)

(assert (=> b!5117148 (= e!3191482 (derivationZipper!92 (derivationStepZipper!828 baseZ!46 (h!65619 lt!2108983)) (t!372306 lt!2108983)))))

(declare-fun b!5117149 () Bool)

(assert (=> b!5117149 (= e!3191482 baseZ!46)))

(assert (= (and d!1653638 c!879230) b!5117148))

(assert (= (and d!1653638 (not c!879230)) b!5117149))

(declare-fun m!6176750 () Bool)

(assert (=> b!5117148 m!6176750))

(assert (=> b!5117148 m!6176750))

(declare-fun m!6176752 () Bool)

(assert (=> b!5117148 m!6176752))

(assert (=> b!5117088 d!1653638))

(declare-fun b!5117152 () Bool)

(declare-fun res!2178676 () Bool)

(declare-fun e!3191484 () Bool)

(assert (=> b!5117152 (=> (not res!2178676) (not e!3191484))))

(declare-fun lt!2109015 () List!59295)

(assert (=> b!5117152 (= res!2178676 (= (size!39499 lt!2109015) (+ (size!39499 knownP!20) (size!39499 lt!2108982))))))

(declare-fun b!5117153 () Bool)

(assert (=> b!5117153 (= e!3191484 (or (not (= lt!2108982 Nil!59171)) (= lt!2109015 knownP!20)))))

(declare-fun b!5117151 () Bool)

(declare-fun e!3191483 () List!59295)

(assert (=> b!5117151 (= e!3191483 (Cons!59171 (h!65619 knownP!20) (++!13018 (t!372306 knownP!20) lt!2108982)))))

(declare-fun b!5117150 () Bool)

(assert (=> b!5117150 (= e!3191483 lt!2108982)))

(declare-fun d!1653640 () Bool)

(assert (=> d!1653640 e!3191484))

(declare-fun res!2178675 () Bool)

(assert (=> d!1653640 (=> (not res!2178675) (not e!3191484))))

(assert (=> d!1653640 (= res!2178675 (= (content!10518 lt!2109015) ((_ map or) (content!10518 knownP!20) (content!10518 lt!2108982))))))

(assert (=> d!1653640 (= lt!2109015 e!3191483)))

(declare-fun c!879231 () Bool)

(assert (=> d!1653640 (= c!879231 ((_ is Nil!59171) knownP!20))))

(assert (=> d!1653640 (= (++!13018 knownP!20 lt!2108982) lt!2109015)))

(assert (= (and d!1653640 c!879231) b!5117150))

(assert (= (and d!1653640 (not c!879231)) b!5117151))

(assert (= (and d!1653640 res!2178675) b!5117152))

(assert (= (and b!5117152 res!2178676) b!5117153))

(declare-fun m!6176754 () Bool)

(assert (=> b!5117152 m!6176754))

(assert (=> b!5117152 m!6176634))

(assert (=> b!5117152 m!6176702))

(declare-fun m!6176756 () Bool)

(assert (=> b!5117151 m!6176756))

(declare-fun m!6176758 () Bool)

(assert (=> d!1653640 m!6176758))

(declare-fun m!6176760 () Bool)

(assert (=> d!1653640 m!6176760))

(assert (=> d!1653640 m!6176710))

(assert (=> b!5117088 d!1653640))

(declare-fun d!1653642 () Bool)

(assert (=> d!1653642 (isPrefix!5598 lt!2108983 knownP!20)))

(declare-fun lt!2109018 () Unit!150301)

(declare-fun choose!37581 (List!59295 List!59295 List!59295) Unit!150301)

(assert (=> d!1653642 (= lt!2109018 (choose!37581 knownP!20 lt!2108983 input!5745))))

(assert (=> d!1653642 (isPrefix!5598 knownP!20 input!5745)))

(assert (=> d!1653642 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!735 knownP!20 lt!2108983 input!5745) lt!2109018)))

(declare-fun bs!1192434 () Bool)

(assert (= bs!1192434 d!1653642))

(assert (=> bs!1192434 m!6176658))

(declare-fun m!6176762 () Bool)

(assert (=> bs!1192434 m!6176762))

(assert (=> bs!1192434 m!6176640))

(assert (=> b!5117088 d!1653642))

(declare-fun d!1653644 () Bool)

(declare-fun lt!2109019 () List!59295)

(assert (=> d!1653644 (= (++!13018 testedP!265 lt!2109019) input!5745)))

(declare-fun e!3191485 () List!59295)

(assert (=> d!1653644 (= lt!2109019 e!3191485)))

(declare-fun c!879232 () Bool)

(assert (=> d!1653644 (= c!879232 ((_ is Cons!59171) testedP!265))))

(assert (=> d!1653644 (>= (size!39499 input!5745) (size!39499 testedP!265))))

(assert (=> d!1653644 (= (getSuffix!3272 input!5745 testedP!265) lt!2109019)))

(declare-fun b!5117154 () Bool)

(assert (=> b!5117154 (= e!3191485 (getSuffix!3272 (tail!10061 input!5745) (t!372306 testedP!265)))))

(declare-fun b!5117155 () Bool)

(assert (=> b!5117155 (= e!3191485 input!5745)))

(assert (= (and d!1653644 c!879232) b!5117154))

(assert (= (and d!1653644 (not c!879232)) b!5117155))

(declare-fun m!6176764 () Bool)

(assert (=> d!1653644 m!6176764))

(assert (=> d!1653644 m!6176630))

(assert (=> d!1653644 m!6176632))

(assert (=> b!5117154 m!6176684))

(assert (=> b!5117154 m!6176684))

(declare-fun m!6176766 () Bool)

(assert (=> b!5117154 m!6176766))

(assert (=> b!5117088 d!1653644))

(declare-fun b!5117158 () Bool)

(declare-fun res!2178678 () Bool)

(declare-fun e!3191487 () Bool)

(assert (=> b!5117158 (=> (not res!2178678) (not e!3191487))))

(declare-fun lt!2109020 () List!59295)

(assert (=> b!5117158 (= res!2178678 (= (size!39499 lt!2109020) (+ (size!39499 testedP!265) (size!39499 (Cons!59171 lt!2108988 Nil!59171)))))))

(declare-fun b!5117159 () Bool)

(assert (=> b!5117159 (= e!3191487 (or (not (= (Cons!59171 lt!2108988 Nil!59171) Nil!59171)) (= lt!2109020 testedP!265)))))

(declare-fun b!5117157 () Bool)

(declare-fun e!3191486 () List!59295)

(assert (=> b!5117157 (= e!3191486 (Cons!59171 (h!65619 testedP!265) (++!13018 (t!372306 testedP!265) (Cons!59171 lt!2108988 Nil!59171))))))

(declare-fun b!5117156 () Bool)

(assert (=> b!5117156 (= e!3191486 (Cons!59171 lt!2108988 Nil!59171))))

(declare-fun d!1653646 () Bool)

(assert (=> d!1653646 e!3191487))

(declare-fun res!2178677 () Bool)

(assert (=> d!1653646 (=> (not res!2178677) (not e!3191487))))

(assert (=> d!1653646 (= res!2178677 (= (content!10518 lt!2109020) ((_ map or) (content!10518 testedP!265) (content!10518 (Cons!59171 lt!2108988 Nil!59171)))))))

(assert (=> d!1653646 (= lt!2109020 e!3191486)))

(declare-fun c!879233 () Bool)

(assert (=> d!1653646 (= c!879233 ((_ is Nil!59171) testedP!265))))

(assert (=> d!1653646 (= (++!13018 testedP!265 (Cons!59171 lt!2108988 Nil!59171)) lt!2109020)))

(assert (= (and d!1653646 c!879233) b!5117156))

(assert (= (and d!1653646 (not c!879233)) b!5117157))

(assert (= (and d!1653646 res!2178677) b!5117158))

(assert (= (and b!5117158 res!2178678) b!5117159))

(declare-fun m!6176768 () Bool)

(assert (=> b!5117158 m!6176768))

(assert (=> b!5117158 m!6176632))

(declare-fun m!6176770 () Bool)

(assert (=> b!5117158 m!6176770))

(declare-fun m!6176772 () Bool)

(assert (=> b!5117157 m!6176772))

(declare-fun m!6176774 () Bool)

(assert (=> d!1653646 m!6176774))

(assert (=> d!1653646 m!6176720))

(declare-fun m!6176776 () Bool)

(assert (=> d!1653646 m!6176776))

(assert (=> b!5117088 d!1653646))

(declare-fun d!1653648 () Bool)

(assert (=> d!1653648 (= (head!10921 (getSuffix!3272 input!5745 testedP!265)) (h!65619 (getSuffix!3272 input!5745 testedP!265)))))

(assert (=> b!5117088 d!1653648))

(declare-fun d!1653650 () Bool)

(declare-fun lt!2109021 () List!59295)

(assert (=> d!1653650 (= (++!13018 knownP!20 lt!2109021) input!5745)))

(declare-fun e!3191488 () List!59295)

(assert (=> d!1653650 (= lt!2109021 e!3191488)))

(declare-fun c!879234 () Bool)

(assert (=> d!1653650 (= c!879234 ((_ is Cons!59171) knownP!20))))

(assert (=> d!1653650 (>= (size!39499 input!5745) (size!39499 knownP!20))))

(assert (=> d!1653650 (= (getSuffix!3272 input!5745 knownP!20) lt!2109021)))

(declare-fun b!5117160 () Bool)

(assert (=> b!5117160 (= e!3191488 (getSuffix!3272 (tail!10061 input!5745) (t!372306 knownP!20)))))

(declare-fun b!5117161 () Bool)

(assert (=> b!5117161 (= e!3191488 input!5745)))

(assert (= (and d!1653650 c!879234) b!5117160))

(assert (= (and d!1653650 (not c!879234)) b!5117161))

(declare-fun m!6176778 () Bool)

(assert (=> d!1653650 m!6176778))

(assert (=> d!1653650 m!6176630))

(assert (=> d!1653650 m!6176634))

(assert (=> b!5117160 m!6176684))

(assert (=> b!5117160 m!6176684))

(declare-fun m!6176780 () Bool)

(assert (=> b!5117160 m!6176780))

(assert (=> b!5117088 d!1653650))

(declare-fun d!1653652 () Bool)

(declare-fun c!879235 () Bool)

(assert (=> d!1653652 (= c!879235 ((_ is Cons!59171) testedP!265))))

(declare-fun e!3191489 () (InoxSet Context!7154))

(assert (=> d!1653652 (= (derivationZipper!92 baseZ!46 testedP!265) e!3191489)))

(declare-fun b!5117162 () Bool)

(assert (=> b!5117162 (= e!3191489 (derivationZipper!92 (derivationStepZipper!828 baseZ!46 (h!65619 testedP!265)) (t!372306 testedP!265)))))

(declare-fun b!5117163 () Bool)

(assert (=> b!5117163 (= e!3191489 baseZ!46)))

(assert (= (and d!1653652 c!879235) b!5117162))

(assert (= (and d!1653652 (not c!879235)) b!5117163))

(declare-fun m!6176782 () Bool)

(assert (=> b!5117162 m!6176782))

(assert (=> b!5117162 m!6176782))

(declare-fun m!6176784 () Bool)

(assert (=> b!5117162 m!6176784))

(assert (=> b!5117078 d!1653652))

(declare-fun bs!1192435 () Bool)

(declare-fun b!5117168 () Bool)

(declare-fun d!1653654 () Bool)

(assert (= bs!1192435 (and b!5117168 d!1653654)))

(declare-fun lambda!250974 () Int)

(declare-fun lambda!250973 () Int)

(assert (=> bs!1192435 (not (= lambda!250974 lambda!250973))))

(declare-fun bs!1192436 () Bool)

(declare-fun b!5117169 () Bool)

(assert (= bs!1192436 (and b!5117169 d!1653654)))

(declare-fun lambda!250975 () Int)

(assert (=> bs!1192436 (not (= lambda!250975 lambda!250973))))

(declare-fun bs!1192437 () Bool)

(assert (= bs!1192437 (and b!5117169 b!5117168)))

(assert (=> bs!1192437 (= lambda!250975 lambda!250974)))

(declare-fun call!356550 () Bool)

(declare-datatypes ((List!59297 0))(
  ( (Nil!59173) (Cons!59173 (h!65621 Context!7154) (t!372308 List!59297)) )
))
(declare-fun lt!2109042 () List!59297)

(declare-fun lt!2109040 () List!59297)

(declare-fun c!879246 () Bool)

(declare-fun bm!356546 () Bool)

(declare-fun exists!1464 (List!59297 Int) Bool)

(assert (=> bm!356546 (= call!356550 (exists!1464 (ite c!879246 lt!2109040 lt!2109042) (ite c!879246 lambda!250974 lambda!250975)))))

(declare-fun bm!356545 () Bool)

(declare-fun call!356551 () List!59297)

(declare-fun toList!8253 ((InoxSet Context!7154)) List!59297)

(assert (=> bm!356545 (= call!356551 (toList!8253 z!4463))))

(declare-fun lt!2109039 () Bool)

(declare-datatypes ((Option!14687 0))(
  ( (None!14686) (Some!14686 (v!50699 List!59295)) )
))
(declare-fun isEmpty!31914 (Option!14687) Bool)

(declare-fun getLanguageWitness!804 ((InoxSet Context!7154)) Option!14687)

(assert (=> d!1653654 (= lt!2109039 (isEmpty!31914 (getLanguageWitness!804 z!4463)))))

(declare-fun forall!13591 ((InoxSet Context!7154) Int) Bool)

(assert (=> d!1653654 (= lt!2109039 (forall!13591 z!4463 lambda!250973))))

(declare-fun lt!2109043 () Unit!150301)

(declare-fun e!3191496 () Unit!150301)

(assert (=> d!1653654 (= lt!2109043 e!3191496)))

(assert (=> d!1653654 (= c!879246 (not (forall!13591 z!4463 lambda!250973)))))

(assert (=> d!1653654 (= (lostCauseZipper!1079 z!4463) lt!2109039)))

(declare-fun Unit!150303 () Unit!150301)

(assert (=> b!5117169 (= e!3191496 Unit!150303)))

(assert (=> b!5117169 (= lt!2109042 call!356551)))

(declare-fun lt!2109045 () Unit!150301)

(declare-fun lemmaForallThenNotExists!310 (List!59297 Int) Unit!150301)

(assert (=> b!5117169 (= lt!2109045 (lemmaForallThenNotExists!310 lt!2109042 lambda!250973))))

(assert (=> b!5117169 (not call!356550)))

(declare-fun lt!2109044 () Unit!150301)

(assert (=> b!5117169 (= lt!2109044 lt!2109045)))

(declare-fun Unit!150304 () Unit!150301)

(assert (=> b!5117168 (= e!3191496 Unit!150304)))

(assert (=> b!5117168 (= lt!2109040 call!356551)))

(declare-fun lt!2109038 () Unit!150301)

(declare-fun lemmaNotForallThenExists!327 (List!59297 Int) Unit!150301)

(assert (=> b!5117168 (= lt!2109038 (lemmaNotForallThenExists!327 lt!2109040 lambda!250973))))

(assert (=> b!5117168 call!356550))

(declare-fun lt!2109041 () Unit!150301)

(assert (=> b!5117168 (= lt!2109041 lt!2109038)))

(assert (= (and d!1653654 c!879246) b!5117168))

(assert (= (and d!1653654 (not c!879246)) b!5117169))

(assert (= (or b!5117168 b!5117169) bm!356545))

(assert (= (or b!5117168 b!5117169) bm!356546))

(declare-fun m!6176786 () Bool)

(assert (=> bm!356546 m!6176786))

(declare-fun m!6176788 () Bool)

(assert (=> b!5117168 m!6176788))

(declare-fun m!6176790 () Bool)

(assert (=> b!5117169 m!6176790))

(declare-fun m!6176792 () Bool)

(assert (=> bm!356545 m!6176792))

(declare-fun m!6176794 () Bool)

(assert (=> d!1653654 m!6176794))

(assert (=> d!1653654 m!6176794))

(declare-fun m!6176796 () Bool)

(assert (=> d!1653654 m!6176796))

(declare-fun m!6176798 () Bool)

(assert (=> d!1653654 m!6176798))

(assert (=> d!1653654 m!6176798))

(assert (=> b!5117079 d!1653654))

(declare-fun bs!1192438 () Bool)

(declare-fun d!1653656 () Bool)

(assert (= bs!1192438 (and d!1653656 d!1653616)))

(declare-fun lambda!250976 () Int)

(assert (=> bs!1192438 (= lambda!250976 lambda!250957)))

(assert (=> d!1653656 (= (inv!78663 setElem!30153) (forall!13589 (exprs!4077 setElem!30153) lambda!250976))))

(declare-fun bs!1192439 () Bool)

(assert (= bs!1192439 d!1653656))

(declare-fun m!6176800 () Bool)

(assert (=> bs!1192439 m!6176800))

(assert (=> setNonEmpty!30153 d!1653656))

(declare-fun d!1653658 () Bool)

(declare-fun e!3191498 () Bool)

(assert (=> d!1653658 e!3191498))

(declare-fun res!2178680 () Bool)

(assert (=> d!1653658 (=> res!2178680 e!3191498)))

(declare-fun lt!2109046 () Bool)

(assert (=> d!1653658 (= res!2178680 (not lt!2109046))))

(declare-fun e!3191497 () Bool)

(assert (=> d!1653658 (= lt!2109046 e!3191497)))

(declare-fun res!2178679 () Bool)

(assert (=> d!1653658 (=> res!2178679 e!3191497)))

(assert (=> d!1653658 (= res!2178679 ((_ is Nil!59171) testedP!265))))

(assert (=> d!1653658 (= (isPrefix!5598 testedP!265 input!5745) lt!2109046)))

(declare-fun b!5117172 () Bool)

(declare-fun e!3191499 () Bool)

(assert (=> b!5117172 (= e!3191499 (isPrefix!5598 (tail!10061 testedP!265) (tail!10061 input!5745)))))

(declare-fun b!5117173 () Bool)

(assert (=> b!5117173 (= e!3191498 (>= (size!39499 input!5745) (size!39499 testedP!265)))))

(declare-fun b!5117170 () Bool)

(assert (=> b!5117170 (= e!3191497 e!3191499)))

(declare-fun res!2178682 () Bool)

(assert (=> b!5117170 (=> (not res!2178682) (not e!3191499))))

(assert (=> b!5117170 (= res!2178682 (not ((_ is Nil!59171) input!5745)))))

(declare-fun b!5117171 () Bool)

(declare-fun res!2178681 () Bool)

(assert (=> b!5117171 (=> (not res!2178681) (not e!3191499))))

(assert (=> b!5117171 (= res!2178681 (= (head!10921 testedP!265) (head!10921 input!5745)))))

(assert (= (and d!1653658 (not res!2178679)) b!5117170))

(assert (= (and b!5117170 res!2178682) b!5117171))

(assert (= (and b!5117171 res!2178681) b!5117172))

(assert (= (and d!1653658 (not res!2178680)) b!5117173))

(declare-fun m!6176802 () Bool)

(assert (=> b!5117172 m!6176802))

(assert (=> b!5117172 m!6176684))

(assert (=> b!5117172 m!6176802))

(assert (=> b!5117172 m!6176684))

(declare-fun m!6176804 () Bool)

(assert (=> b!5117172 m!6176804))

(assert (=> b!5117173 m!6176630))

(assert (=> b!5117173 m!6176632))

(declare-fun m!6176806 () Bool)

(assert (=> b!5117171 m!6176806))

(assert (=> b!5117171 m!6176690))

(assert (=> start!539936 d!1653658))

(declare-fun d!1653660 () Bool)

(declare-fun c!879252 () Bool)

(declare-fun isEmpty!31915 (List!59295) Bool)

(assert (=> d!1653660 (= c!879252 (isEmpty!31915 knownP!20))))

(declare-fun e!3191505 () Bool)

(assert (=> d!1653660 (= (matchZipper!861 baseZ!46 knownP!20) e!3191505)))

(declare-fun b!5117184 () Bool)

(declare-fun nullableZipper!1017 ((InoxSet Context!7154)) Bool)

(assert (=> b!5117184 (= e!3191505 (nullableZipper!1017 baseZ!46))))

(declare-fun b!5117185 () Bool)

(assert (=> b!5117185 (= e!3191505 (matchZipper!861 (derivationStepZipper!828 baseZ!46 (head!10921 knownP!20)) (tail!10061 knownP!20)))))

(assert (= (and d!1653660 c!879252) b!5117184))

(assert (= (and d!1653660 (not c!879252)) b!5117185))

(declare-fun m!6176816 () Bool)

(assert (=> d!1653660 m!6176816))

(declare-fun m!6176818 () Bool)

(assert (=> b!5117184 m!6176818))

(assert (=> b!5117185 m!6176688))

(assert (=> b!5117185 m!6176688))

(declare-fun m!6176820 () Bool)

(assert (=> b!5117185 m!6176820))

(assert (=> b!5117185 m!6176682))

(assert (=> b!5117185 m!6176820))

(assert (=> b!5117185 m!6176682))

(declare-fun m!6176822 () Bool)

(assert (=> b!5117185 m!6176822))

(assert (=> b!5117083 d!1653660))

(declare-fun d!1653670 () Bool)

(declare-fun c!879254 () Bool)

(assert (=> d!1653670 (= c!879254 (isEmpty!31915 lt!2108989))))

(declare-fun e!3191507 () Bool)

(assert (=> d!1653670 (= (matchZipper!861 z!4463 lt!2108989) e!3191507)))

(declare-fun b!5117188 () Bool)

(assert (=> b!5117188 (= e!3191507 (nullableZipper!1017 z!4463))))

(declare-fun b!5117189 () Bool)

(assert (=> b!5117189 (= e!3191507 (matchZipper!861 (derivationStepZipper!828 z!4463 (head!10921 lt!2108989)) (tail!10061 lt!2108989)))))

(assert (= (and d!1653670 c!879254) b!5117188))

(assert (= (and d!1653670 (not c!879254)) b!5117189))

(declare-fun m!6176824 () Bool)

(assert (=> d!1653670 m!6176824))

(declare-fun m!6176826 () Bool)

(assert (=> b!5117188 m!6176826))

(declare-fun m!6176828 () Bool)

(assert (=> b!5117189 m!6176828))

(assert (=> b!5117189 m!6176828))

(declare-fun m!6176830 () Bool)

(assert (=> b!5117189 m!6176830))

(declare-fun m!6176832 () Bool)

(assert (=> b!5117189 m!6176832))

(assert (=> b!5117189 m!6176830))

(assert (=> b!5117189 m!6176832))

(declare-fun m!6176834 () Bool)

(assert (=> b!5117189 m!6176834))

(assert (=> b!5117091 d!1653670))

(declare-fun d!1653672 () Bool)

(declare-fun lt!2109051 () List!59295)

(assert (=> d!1653672 (= (++!13018 testedP!265 lt!2109051) knownP!20)))

(declare-fun e!3191508 () List!59295)

(assert (=> d!1653672 (= lt!2109051 e!3191508)))

(declare-fun c!879255 () Bool)

(assert (=> d!1653672 (= c!879255 ((_ is Cons!59171) testedP!265))))

(assert (=> d!1653672 (>= (size!39499 knownP!20) (size!39499 testedP!265))))

(assert (=> d!1653672 (= (getSuffix!3272 knownP!20 testedP!265) lt!2109051)))

(declare-fun b!5117190 () Bool)

(assert (=> b!5117190 (= e!3191508 (getSuffix!3272 (tail!10061 knownP!20) (t!372306 testedP!265)))))

(declare-fun b!5117191 () Bool)

(assert (=> b!5117191 (= e!3191508 knownP!20)))

(assert (= (and d!1653672 c!879255) b!5117190))

(assert (= (and d!1653672 (not c!879255)) b!5117191))

(declare-fun m!6176836 () Bool)

(assert (=> d!1653672 m!6176836))

(assert (=> d!1653672 m!6176634))

(assert (=> d!1653672 m!6176632))

(assert (=> b!5117190 m!6176682))

(assert (=> b!5117190 m!6176682))

(declare-fun m!6176838 () Bool)

(assert (=> b!5117190 m!6176838))

(assert (=> b!5117091 d!1653672))

(declare-fun d!1653674 () Bool)

(declare-fun e!3191510 () Bool)

(assert (=> d!1653674 e!3191510))

(declare-fun res!2178684 () Bool)

(assert (=> d!1653674 (=> res!2178684 e!3191510)))

(declare-fun lt!2109052 () Bool)

(assert (=> d!1653674 (= res!2178684 (not lt!2109052))))

(declare-fun e!3191509 () Bool)

(assert (=> d!1653674 (= lt!2109052 e!3191509)))

(declare-fun res!2178683 () Bool)

(assert (=> d!1653674 (=> res!2178683 e!3191509)))

(assert (=> d!1653674 (= res!2178683 ((_ is Nil!59171) testedP!265))))

(assert (=> d!1653674 (= (isPrefix!5598 testedP!265 knownP!20) lt!2109052)))

(declare-fun b!5117194 () Bool)

(declare-fun e!3191511 () Bool)

(assert (=> b!5117194 (= e!3191511 (isPrefix!5598 (tail!10061 testedP!265) (tail!10061 knownP!20)))))

(declare-fun b!5117195 () Bool)

(assert (=> b!5117195 (= e!3191510 (>= (size!39499 knownP!20) (size!39499 testedP!265)))))

(declare-fun b!5117192 () Bool)

(assert (=> b!5117192 (= e!3191509 e!3191511)))

(declare-fun res!2178686 () Bool)

(assert (=> b!5117192 (=> (not res!2178686) (not e!3191511))))

(assert (=> b!5117192 (= res!2178686 (not ((_ is Nil!59171) knownP!20)))))

(declare-fun b!5117193 () Bool)

(declare-fun res!2178685 () Bool)

(assert (=> b!5117193 (=> (not res!2178685) (not e!3191511))))

(assert (=> b!5117193 (= res!2178685 (= (head!10921 testedP!265) (head!10921 knownP!20)))))

(assert (= (and d!1653674 (not res!2178683)) b!5117192))

(assert (= (and b!5117192 res!2178686) b!5117193))

(assert (= (and b!5117193 res!2178685) b!5117194))

(assert (= (and d!1653674 (not res!2178684)) b!5117195))

(assert (=> b!5117194 m!6176802))

(assert (=> b!5117194 m!6176682))

(assert (=> b!5117194 m!6176802))

(assert (=> b!5117194 m!6176682))

(declare-fun m!6176840 () Bool)

(assert (=> b!5117194 m!6176840))

(assert (=> b!5117195 m!6176634))

(assert (=> b!5117195 m!6176632))

(assert (=> b!5117193 m!6176806))

(assert (=> b!5117193 m!6176688))

(assert (=> b!5117091 d!1653674))

(declare-fun d!1653676 () Bool)

(assert (=> d!1653676 (isPrefix!5598 testedP!265 knownP!20)))

(declare-fun lt!2109053 () Unit!150301)

(assert (=> d!1653676 (= lt!2109053 (choose!37581 knownP!20 testedP!265 input!5745))))

(assert (=> d!1653676 (isPrefix!5598 knownP!20 input!5745)))

(assert (=> d!1653676 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!735 knownP!20 testedP!265 input!5745) lt!2109053)))

(declare-fun bs!1192443 () Bool)

(assert (= bs!1192443 d!1653676))

(assert (=> bs!1192443 m!6176676))

(declare-fun m!6176842 () Bool)

(assert (=> bs!1192443 m!6176842))

(assert (=> bs!1192443 m!6176640))

(assert (=> b!5117091 d!1653676))

(declare-fun d!1653678 () Bool)

(declare-fun lt!2109054 () Int)

(assert (=> d!1653678 (>= lt!2109054 0)))

(declare-fun e!3191514 () Int)

(assert (=> d!1653678 (= lt!2109054 e!3191514)))

(declare-fun c!879258 () Bool)

(assert (=> d!1653678 (= c!879258 ((_ is Nil!59171) input!5745))))

(assert (=> d!1653678 (= (size!39499 input!5745) lt!2109054)))

(declare-fun b!5117200 () Bool)

(assert (=> b!5117200 (= e!3191514 0)))

(declare-fun b!5117201 () Bool)

(assert (=> b!5117201 (= e!3191514 (+ 1 (size!39499 (t!372306 input!5745))))))

(assert (= (and d!1653678 c!879258) b!5117200))

(assert (= (and d!1653678 (not c!879258)) b!5117201))

(declare-fun m!6176844 () Bool)

(assert (=> b!5117201 m!6176844))

(assert (=> b!5117082 d!1653678))

(declare-fun b!5117208 () Bool)

(declare-fun e!3191518 () Bool)

(declare-fun tp!1427654 () Bool)

(declare-fun tp!1427655 () Bool)

(assert (=> b!5117208 (= e!3191518 (and tp!1427654 tp!1427655))))

(assert (=> b!5117090 (= tp!1427644 e!3191518)))

(assert (= (and b!5117090 ((_ is Cons!59172) (exprs!4077 setElem!30154))) b!5117208))

(declare-fun condSetEmpty!30157 () Bool)

(assert (=> setNonEmpty!30154 (= condSetEmpty!30157 (= setRest!30153 ((as const (Array Context!7154 Bool)) false)))))

(declare-fun setRes!30157 () Bool)

(assert (=> setNonEmpty!30154 (= tp!1427646 setRes!30157)))

(declare-fun setIsEmpty!30157 () Bool)

(assert (=> setIsEmpty!30157 setRes!30157))

(declare-fun setNonEmpty!30157 () Bool)

(declare-fun setElem!30157 () Context!7154)

(declare-fun tp!1427661 () Bool)

(declare-fun e!3191521 () Bool)

(assert (=> setNonEmpty!30157 (= setRes!30157 (and tp!1427661 (inv!78663 setElem!30157) e!3191521))))

(declare-fun setRest!30157 () (InoxSet Context!7154))

(assert (=> setNonEmpty!30157 (= setRest!30153 ((_ map or) (store ((as const (Array Context!7154 Bool)) false) setElem!30157 true) setRest!30157))))

(declare-fun b!5117213 () Bool)

(declare-fun tp!1427660 () Bool)

(assert (=> b!5117213 (= e!3191521 tp!1427660)))

(assert (= (and setNonEmpty!30154 condSetEmpty!30157) setIsEmpty!30157))

(assert (= (and setNonEmpty!30154 (not condSetEmpty!30157)) setNonEmpty!30157))

(assert (= setNonEmpty!30157 b!5117213))

(declare-fun m!6176850 () Bool)

(assert (=> setNonEmpty!30157 m!6176850))

(declare-fun b!5117218 () Bool)

(declare-fun e!3191524 () Bool)

(declare-fun tp!1427664 () Bool)

(assert (=> b!5117218 (= e!3191524 (and tp_is_empty!37659 tp!1427664))))

(assert (=> b!5117081 (= tp!1427647 e!3191524)))

(assert (= (and b!5117081 ((_ is Cons!59171) (t!372306 input!5745))) b!5117218))

(declare-fun condSetEmpty!30158 () Bool)

(assert (=> setNonEmpty!30153 (= condSetEmpty!30158 (= setRest!30154 ((as const (Array Context!7154 Bool)) false)))))

(declare-fun setRes!30158 () Bool)

(assert (=> setNonEmpty!30153 (= tp!1427648 setRes!30158)))

(declare-fun setIsEmpty!30158 () Bool)

(assert (=> setIsEmpty!30158 setRes!30158))

(declare-fun setElem!30158 () Context!7154)

(declare-fun e!3191525 () Bool)

(declare-fun setNonEmpty!30158 () Bool)

(declare-fun tp!1427666 () Bool)

(assert (=> setNonEmpty!30158 (= setRes!30158 (and tp!1427666 (inv!78663 setElem!30158) e!3191525))))

(declare-fun setRest!30158 () (InoxSet Context!7154))

(assert (=> setNonEmpty!30158 (= setRest!30154 ((_ map or) (store ((as const (Array Context!7154 Bool)) false) setElem!30158 true) setRest!30158))))

(declare-fun b!5117219 () Bool)

(declare-fun tp!1427665 () Bool)

(assert (=> b!5117219 (= e!3191525 tp!1427665)))

(assert (= (and setNonEmpty!30153 condSetEmpty!30158) setIsEmpty!30158))

(assert (= (and setNonEmpty!30153 (not condSetEmpty!30158)) setNonEmpty!30158))

(assert (= setNonEmpty!30158 b!5117219))

(declare-fun m!6176852 () Bool)

(assert (=> setNonEmpty!30158 m!6176852))

(declare-fun b!5117220 () Bool)

(declare-fun e!3191526 () Bool)

(declare-fun tp!1427667 () Bool)

(assert (=> b!5117220 (= e!3191526 (and tp_is_empty!37659 tp!1427667))))

(assert (=> b!5117089 (= tp!1427643 e!3191526)))

(assert (= (and b!5117089 ((_ is Cons!59171) (t!372306 knownP!20))) b!5117220))

(declare-fun b!5117221 () Bool)

(declare-fun e!3191527 () Bool)

(declare-fun tp!1427668 () Bool)

(declare-fun tp!1427669 () Bool)

(assert (=> b!5117221 (= e!3191527 (and tp!1427668 tp!1427669))))

(assert (=> b!5117085 (= tp!1427645 e!3191527)))

(assert (= (and b!5117085 ((_ is Cons!59172) (exprs!4077 setElem!30153))) b!5117221))

(declare-fun b!5117222 () Bool)

(declare-fun e!3191528 () Bool)

(declare-fun tp!1427670 () Bool)

(assert (=> b!5117222 (= e!3191528 (and tp_is_empty!37659 tp!1427670))))

(assert (=> b!5117086 (= tp!1427649 e!3191528)))

(assert (= (and b!5117086 ((_ is Cons!59171) (t!372306 testedP!265))) b!5117222))

(check-sat (not b!5117121) (not d!1653644) (not b!5117125) (not b!5117122) (not b!5117195) (not b!5117158) (not b!5117131) (not d!1653636) (not b!5117154) (not b!5117148) (not d!1653634) (not d!1653654) (not b!5117185) (not d!1653646) (not b!5117189) (not d!1653622) (not setNonEmpty!30157) (not b!5117109) (not setNonEmpty!30158) (not b!5117184) (not b!5117133) (not b!5117218) (not b!5117140) (not b!5117111) (not b!5117219) (not b!5117222) (not b!5117173) (not b!5117126) (not d!1653642) (not b!5117194) (not d!1653672) (not b!5117169) (not b!5117168) (not bm!356545) (not d!1653616) (not b!5117152) (not b!5117171) (not d!1653624) (not bm!356546) (not d!1653630) (not b!5117201) (not b!5117162) (not b!5117220) (not d!1653632) (not b!5117134) (not b!5117213) (not b!5117101) (not b!5117160) (not b!5117135) (not b!5117157) (not b!5117172) (not b!5117129) (not b!5117151) (not d!1653660) (not d!1653640) tp_is_empty!37659 (not b!5117188) (not b!5117102) (not b!5117208) (not d!1653670) (not d!1653650) (not b!5117103) (not b!5117221) (not d!1653676) (not b!5117190) (not d!1653656) (not b!5117130) (not b!5117193))
(check-sat)
