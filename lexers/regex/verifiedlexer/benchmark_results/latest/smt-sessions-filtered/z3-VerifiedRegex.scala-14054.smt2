; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741766 () Bool)

(assert start!741766)

(declare-fun b!7810735 () Bool)

(declare-fun res!3110433 () Bool)

(declare-fun e!4622927 () Bool)

(assert (=> b!7810735 (=> (not res!3110433) (not e!4622927))))

(declare-datatypes ((C!42132 0))(
  ( (C!42133 (val!31506 Int)) )
))
(declare-datatypes ((Regex!20903 0))(
  ( (ElementMatch!20903 (c!1438210 C!42132)) (Concat!29748 (regOne!42318 Regex!20903) (regTwo!42318 Regex!20903)) (EmptyExpr!20903) (Star!20903 (reg!21232 Regex!20903)) (EmptyLang!20903) (Union!20903 (regOne!42319 Regex!20903) (regTwo!42319 Regex!20903)) )
))
(declare-fun r2!6144 () Regex!20903)

(declare-fun r1!6206 () Regex!20903)

(declare-datatypes ((List!73740 0))(
  ( (Nil!73616) (Cons!73616 (h!80064 C!42132) (t!388475 List!73740)) )
))
(declare-fun s!14225 () List!73740)

(declare-fun matchR!10361 (Regex!20903 List!73740) Bool)

(assert (=> b!7810735 (= res!3110433 (matchR!10361 (Union!20903 r1!6206 r2!6144) s!14225))))

(declare-fun b!7810736 () Bool)

(declare-fun e!4622925 () Bool)

(declare-fun tp!2301695 () Bool)

(declare-fun tp!2301696 () Bool)

(assert (=> b!7810736 (= e!4622925 (and tp!2301695 tp!2301696))))

(declare-fun b!7810737 () Bool)

(declare-fun res!3110432 () Bool)

(assert (=> b!7810737 (=> (not res!3110432) (not e!4622927))))

(declare-fun validRegex!11317 (Regex!20903) Bool)

(assert (=> b!7810737 (= res!3110432 (validRegex!11317 r2!6144))))

(declare-fun b!7810738 () Bool)

(declare-fun e!4622926 () Bool)

(declare-fun tp!2301705 () Bool)

(assert (=> b!7810738 (= e!4622926 tp!2301705)))

(declare-fun b!7810739 () Bool)

(declare-fun res!3110435 () Bool)

(assert (=> b!7810739 (=> (not res!3110435) (not e!4622927))))

(get-info :version)

(assert (=> b!7810739 (= res!3110435 ((_ is Cons!73616) s!14225))))

(declare-fun b!7810740 () Bool)

(declare-fun tp!2301704 () Bool)

(declare-fun tp!2301700 () Bool)

(assert (=> b!7810740 (= e!4622926 (and tp!2301704 tp!2301700))))

(declare-fun b!7810741 () Bool)

(declare-fun tp!2301703 () Bool)

(assert (=> b!7810741 (= e!4622925 tp!2301703)))

(declare-fun b!7810743 () Bool)

(declare-fun e!4622924 () Bool)

(assert (=> b!7810743 (= e!4622927 e!4622924)))

(declare-fun res!3110430 () Bool)

(assert (=> b!7810743 (=> (not res!3110430) (not e!4622924))))

(declare-fun lt!2675816 () Regex!20903)

(assert (=> b!7810743 (= res!3110430 (validRegex!11317 lt!2675816))))

(declare-fun lt!2675818 () Regex!20903)

(declare-fun derivativeStep!6236 (Regex!20903 C!42132) Regex!20903)

(assert (=> b!7810743 (= lt!2675818 (derivativeStep!6236 r2!6144 (h!80064 s!14225)))))

(assert (=> b!7810743 (= lt!2675816 (derivativeStep!6236 r1!6206 (h!80064 s!14225)))))

(declare-fun b!7810744 () Bool)

(declare-fun tp!2301699 () Bool)

(declare-fun tp!2301698 () Bool)

(assert (=> b!7810744 (= e!4622925 (and tp!2301699 tp!2301698))))

(declare-fun b!7810745 () Bool)

(declare-fun tp!2301702 () Bool)

(declare-fun tp!2301701 () Bool)

(assert (=> b!7810745 (= e!4622926 (and tp!2301702 tp!2301701))))

(declare-fun b!7810746 () Bool)

(declare-fun e!4622928 () Bool)

(declare-fun tp_is_empty!52161 () Bool)

(declare-fun tp!2301697 () Bool)

(assert (=> b!7810746 (= e!4622928 (and tp_is_empty!52161 tp!2301697))))

(declare-fun b!7810747 () Bool)

(declare-fun res!3110434 () Bool)

(assert (=> b!7810747 (=> (not res!3110434) (not e!4622924))))

(assert (=> b!7810747 (= res!3110434 (validRegex!11317 lt!2675818))))

(declare-fun b!7810742 () Bool)

(assert (=> b!7810742 (= e!4622924 (not true))))

(declare-fun e!4622929 () Bool)

(assert (=> b!7810742 e!4622929))

(declare-fun res!3110429 () Bool)

(assert (=> b!7810742 (=> res!3110429 e!4622929)))

(assert (=> b!7810742 (= res!3110429 (matchR!10361 lt!2675816 (t!388475 s!14225)))))

(declare-datatypes ((Unit!168628 0))(
  ( (Unit!168629) )
))
(declare-fun lt!2675817 () Unit!168628)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!432 (Regex!20903 Regex!20903 List!73740) Unit!168628)

(assert (=> b!7810742 (= lt!2675817 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!432 lt!2675816 lt!2675818 (t!388475 s!14225)))))

(declare-fun res!3110431 () Bool)

(assert (=> start!741766 (=> (not res!3110431) (not e!4622927))))

(assert (=> start!741766 (= res!3110431 (validRegex!11317 r1!6206))))

(assert (=> start!741766 e!4622927))

(assert (=> start!741766 e!4622926))

(assert (=> start!741766 e!4622925))

(assert (=> start!741766 e!4622928))

(declare-fun b!7810748 () Bool)

(assert (=> b!7810748 (= e!4622929 (matchR!10361 lt!2675818 (t!388475 s!14225)))))

(declare-fun b!7810749 () Bool)

(declare-fun res!3110436 () Bool)

(assert (=> b!7810749 (=> (not res!3110436) (not e!4622924))))

(assert (=> b!7810749 (= res!3110436 (matchR!10361 (Union!20903 lt!2675816 lt!2675818) (t!388475 s!14225)))))

(declare-fun b!7810750 () Bool)

(assert (=> b!7810750 (= e!4622926 tp_is_empty!52161)))

(declare-fun b!7810751 () Bool)

(assert (=> b!7810751 (= e!4622925 tp_is_empty!52161)))

(assert (= (and start!741766 res!3110431) b!7810737))

(assert (= (and b!7810737 res!3110432) b!7810735))

(assert (= (and b!7810735 res!3110433) b!7810739))

(assert (= (and b!7810739 res!3110435) b!7810743))

(assert (= (and b!7810743 res!3110430) b!7810747))

(assert (= (and b!7810747 res!3110434) b!7810749))

(assert (= (and b!7810749 res!3110436) b!7810742))

(assert (= (and b!7810742 (not res!3110429)) b!7810748))

(assert (= (and start!741766 ((_ is ElementMatch!20903) r1!6206)) b!7810750))

(assert (= (and start!741766 ((_ is Concat!29748) r1!6206)) b!7810740))

(assert (= (and start!741766 ((_ is Star!20903) r1!6206)) b!7810738))

(assert (= (and start!741766 ((_ is Union!20903) r1!6206)) b!7810745))

(assert (= (and start!741766 ((_ is ElementMatch!20903) r2!6144)) b!7810751))

(assert (= (and start!741766 ((_ is Concat!29748) r2!6144)) b!7810744))

(assert (= (and start!741766 ((_ is Star!20903) r2!6144)) b!7810741))

(assert (= (and start!741766 ((_ is Union!20903) r2!6144)) b!7810736))

(assert (= (and start!741766 ((_ is Cons!73616) s!14225)) b!7810746))

(declare-fun m!8241852 () Bool)

(assert (=> b!7810748 m!8241852))

(declare-fun m!8241854 () Bool)

(assert (=> start!741766 m!8241854))

(declare-fun m!8241856 () Bool)

(assert (=> b!7810735 m!8241856))

(declare-fun m!8241858 () Bool)

(assert (=> b!7810742 m!8241858))

(declare-fun m!8241860 () Bool)

(assert (=> b!7810742 m!8241860))

(declare-fun m!8241862 () Bool)

(assert (=> b!7810749 m!8241862))

(declare-fun m!8241864 () Bool)

(assert (=> b!7810743 m!8241864))

(declare-fun m!8241866 () Bool)

(assert (=> b!7810743 m!8241866))

(declare-fun m!8241868 () Bool)

(assert (=> b!7810743 m!8241868))

(declare-fun m!8241870 () Bool)

(assert (=> b!7810737 m!8241870))

(declare-fun m!8241872 () Bool)

(assert (=> b!7810747 m!8241872))

(check-sat (not b!7810749) (not b!7810740) (not b!7810743) (not b!7810741) (not b!7810742) (not b!7810735) (not b!7810737) (not b!7810747) (not b!7810744) (not b!7810736) (not b!7810745) tp_is_empty!52161 (not b!7810746) (not b!7810748) (not start!741766) (not b!7810738))
(check-sat)
