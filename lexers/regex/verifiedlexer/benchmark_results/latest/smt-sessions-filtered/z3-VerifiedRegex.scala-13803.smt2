; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!735120 () Bool)

(assert start!735120)

(declare-fun b!7634771 () Bool)

(assert (=> b!7634771 true))

(assert (=> b!7634771 true))

(declare-fun bs!1944164 () Bool)

(declare-fun b!7634779 () Bool)

(assert (= bs!1944164 (and b!7634779 b!7634771)))

(declare-fun lambda!469261 () Int)

(declare-fun lambda!469260 () Int)

(assert (=> bs!1944164 (not (= lambda!469261 lambda!469260))))

(assert (=> b!7634779 true))

(assert (=> b!7634779 true))

(declare-fun b!7634769 () Bool)

(declare-fun e!4538698 () Bool)

(declare-fun tp!2228859 () Bool)

(declare-fun tp!2228861 () Bool)

(assert (=> b!7634769 (= e!4538698 (and tp!2228859 tp!2228861))))

(declare-fun b!7634770 () Bool)

(declare-fun e!4538703 () Bool)

(assert (=> b!7634770 (= e!4538703 false)))

(declare-fun e!4538699 () Bool)

(declare-fun e!4538702 () Bool)

(assert (=> b!7634771 (= e!4538699 (not e!4538702))))

(declare-fun res!3057747 () Bool)

(assert (=> b!7634771 (=> res!3057747 e!4538702)))

(declare-datatypes ((C!41128 0))(
  ( (C!41129 (val!31004 Int)) )
))
(declare-datatypes ((Regex!20401 0))(
  ( (ElementMatch!20401 (c!1406442 C!41128)) (Concat!29246 (regOne!41314 Regex!20401) (regTwo!41314 Regex!20401)) (EmptyExpr!20401) (Star!20401 (reg!20730 Regex!20401)) (EmptyLang!20401) (Union!20401 (regOne!41315 Regex!20401) (regTwo!41315 Regex!20401)) )
))
(declare-fun r!14126 () Regex!20401)

(declare-datatypes ((List!73252 0))(
  ( (Nil!73128) (Cons!73128 (h!79576 C!41128) (t!387987 List!73252)) )
))
(declare-fun s!9605 () List!73252)

(declare-fun matchR!9904 (Regex!20401 List!73252) Bool)

(assert (=> b!7634771 (= res!3057747 (matchR!9904 r!14126 s!9605))))

(declare-fun lt!2659373 () Bool)

(declare-fun Exists!4555 (Int) Bool)

(assert (=> b!7634771 (= lt!2659373 (Exists!4555 lambda!469260))))

(declare-datatypes ((tuple2!69360 0))(
  ( (tuple2!69361 (_1!37983 List!73252) (_2!37983 List!73252)) )
))
(declare-datatypes ((Option!17474 0))(
  ( (None!17473) (Some!17473 (v!54608 tuple2!69360)) )
))
(declare-fun lt!2659377 () Option!17474)

(declare-fun isDefined!14090 (Option!17474) Bool)

(assert (=> b!7634771 (= lt!2659373 (isDefined!14090 lt!2659377))))

(declare-fun findConcatSeparation!3504 (Regex!20401 Regex!20401 List!73252 List!73252 List!73252) Option!17474)

(assert (=> b!7634771 (= lt!2659377 (findConcatSeparation!3504 (regOne!41314 r!14126) (regTwo!41314 r!14126) Nil!73128 s!9605 s!9605))))

(declare-datatypes ((Unit!167756 0))(
  ( (Unit!167757) )
))
(declare-fun lt!2659376 () Unit!167756)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3262 (Regex!20401 Regex!20401 List!73252) Unit!167756)

(assert (=> b!7634771 (= lt!2659376 (lemmaFindConcatSeparationEquivalentToExists!3262 (regOne!41314 r!14126) (regTwo!41314 r!14126) s!9605))))

(declare-fun b!7634772 () Bool)

(declare-fun e!4538700 () Bool)

(assert (=> b!7634772 (= e!4538702 e!4538700)))

(declare-fun res!3057748 () Bool)

(assert (=> b!7634772 (=> res!3057748 e!4538700)))

(assert (=> b!7634772 (= res!3057748 (Exists!4555 lambda!469260))))

(declare-fun lt!2659374 () Unit!167756)

(declare-fun e!4538697 () Unit!167756)

(assert (=> b!7634772 (= lt!2659374 e!4538697)))

(declare-fun c!1406441 () Bool)

(assert (=> b!7634772 (= c!1406441 lt!2659373)))

(declare-fun b!7634773 () Bool)

(declare-fun tp!2228860 () Bool)

(declare-fun tp!2228857 () Bool)

(assert (=> b!7634773 (= e!4538698 (and tp!2228860 tp!2228857))))

(declare-fun b!7634775 () Bool)

(declare-fun Unit!167758 () Unit!167756)

(assert (=> b!7634775 (= e!4538697 Unit!167758)))

(declare-fun lt!2659378 () tuple2!69360)

(declare-fun get!25866 (Option!17474) tuple2!69360)

(assert (=> b!7634775 (= lt!2659378 (get!25866 lt!2659377))))

(declare-fun lt!2659375 () Unit!167756)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!158 (Regex!20401 Regex!20401 List!73252 List!73252 List!73252) Unit!167756)

(assert (=> b!7634775 (= lt!2659375 (lemmaFindSeparationIsDefinedThenConcatMatches!158 (regOne!41314 r!14126) (regTwo!41314 r!14126) (_1!37983 lt!2659378) (_2!37983 lt!2659378) s!9605))))

(declare-fun res!3057746 () Bool)

(declare-fun ++!17681 (List!73252 List!73252) List!73252)

(assert (=> b!7634775 (= res!3057746 (matchR!9904 r!14126 (++!17681 (_1!37983 lt!2659378) (_2!37983 lt!2659378))))))

(assert (=> b!7634775 (=> (not res!3057746) (not e!4538703))))

(assert (=> b!7634775 e!4538703))

(declare-fun b!7634776 () Bool)

(declare-fun res!3057744 () Bool)

(assert (=> b!7634776 (=> (not res!3057744) (not e!4538699))))

(get-info :version)

(assert (=> b!7634776 (= res!3057744 (and (not ((_ is EmptyExpr!20401) r!14126)) (not ((_ is EmptyLang!20401) r!14126)) (not ((_ is ElementMatch!20401) r!14126)) (not ((_ is Union!20401) r!14126)) (not ((_ is Star!20401) r!14126))))))

(declare-fun b!7634777 () Bool)

(assert (=> b!7634777 (= e!4538700 (Exists!4555 lambda!469261))))

(declare-fun b!7634778 () Bool)

(declare-fun e!4538701 () Bool)

(declare-fun tp_is_empty!51157 () Bool)

(declare-fun tp!2228856 () Bool)

(assert (=> b!7634778 (= e!4538701 (and tp_is_empty!51157 tp!2228856))))

(declare-fun res!3057743 () Bool)

(assert (=> b!7634779 (=> res!3057743 e!4538700)))

(assert (=> b!7634779 (= res!3057743 (not (Exists!4555 lambda!469261)))))

(declare-fun b!7634780 () Bool)

(assert (=> b!7634780 (= e!4538698 tp_is_empty!51157)))

(declare-fun b!7634781 () Bool)

(declare-fun tp!2228858 () Bool)

(assert (=> b!7634781 (= e!4538698 tp!2228858)))

(declare-fun b!7634774 () Bool)

(declare-fun Unit!167759 () Unit!167756)

(assert (=> b!7634774 (= e!4538697 Unit!167759)))

(declare-fun res!3057745 () Bool)

(assert (=> start!735120 (=> (not res!3057745) (not e!4538699))))

(declare-fun validRegex!10819 (Regex!20401) Bool)

(assert (=> start!735120 (= res!3057745 (validRegex!10819 r!14126))))

(assert (=> start!735120 e!4538699))

(assert (=> start!735120 e!4538698))

(assert (=> start!735120 e!4538701))

(assert (= (and start!735120 res!3057745) b!7634776))

(assert (= (and b!7634776 res!3057744) b!7634771))

(assert (= (and b!7634771 (not res!3057747)) b!7634772))

(assert (= (and b!7634772 c!1406441) b!7634775))

(assert (= (and b!7634772 (not c!1406441)) b!7634774))

(assert (= (and b!7634775 res!3057746) b!7634770))

(assert (= (and b!7634772 (not res!3057748)) b!7634779))

(assert (= (and b!7634779 (not res!3057743)) b!7634777))

(assert (= (and start!735120 ((_ is ElementMatch!20401) r!14126)) b!7634780))

(assert (= (and start!735120 ((_ is Concat!29246) r!14126)) b!7634773))

(assert (= (and start!735120 ((_ is Star!20401) r!14126)) b!7634781))

(assert (= (and start!735120 ((_ is Union!20401) r!14126)) b!7634769))

(assert (= (and start!735120 ((_ is Cons!73128) s!9605)) b!7634778))

(declare-fun m!8159928 () Bool)

(assert (=> b!7634771 m!8159928))

(declare-fun m!8159930 () Bool)

(assert (=> b!7634771 m!8159930))

(declare-fun m!8159932 () Bool)

(assert (=> b!7634771 m!8159932))

(declare-fun m!8159934 () Bool)

(assert (=> b!7634771 m!8159934))

(declare-fun m!8159936 () Bool)

(assert (=> b!7634771 m!8159936))

(assert (=> b!7634772 m!8159932))

(declare-fun m!8159938 () Bool)

(assert (=> b!7634775 m!8159938))

(declare-fun m!8159940 () Bool)

(assert (=> b!7634775 m!8159940))

(declare-fun m!8159942 () Bool)

(assert (=> b!7634775 m!8159942))

(assert (=> b!7634775 m!8159942))

(declare-fun m!8159944 () Bool)

(assert (=> b!7634775 m!8159944))

(declare-fun m!8159946 () Bool)

(assert (=> start!735120 m!8159946))

(declare-fun m!8159948 () Bool)

(assert (=> b!7634777 m!8159948))

(assert (=> b!7634779 m!8159948))

(check-sat (not b!7634777) (not b!7634772) (not b!7634781) (not b!7634778) (not b!7634773) tp_is_empty!51157 (not b!7634769) (not b!7634779) (not b!7634771) (not start!735120) (not b!7634775))
(check-sat)
