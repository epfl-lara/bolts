; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664154 () Bool)

(assert start!664154)

(declare-fun b!6887835 () Bool)

(assert (=> b!6887835 true))

(assert (=> b!6887835 true))

(assert (=> b!6887835 true))

(declare-fun lambda!390250 () Int)

(declare-fun lambda!390249 () Int)

(assert (=> b!6887835 (not (= lambda!390250 lambda!390249))))

(assert (=> b!6887835 true))

(assert (=> b!6887835 true))

(assert (=> b!6887835 true))

(declare-fun bs!1839105 () Bool)

(declare-fun b!6887825 () Bool)

(assert (= bs!1839105 (and b!6887825 b!6887835)))

(declare-datatypes ((C!33864 0))(
  ( (C!33865 (val!26634 Int)) )
))
(declare-datatypes ((Regex!16797 0))(
  ( (ElementMatch!16797 (c!1280801 C!33864)) (Concat!25642 (regOne!34106 Regex!16797) (regTwo!34106 Regex!16797)) (EmptyExpr!16797) (Star!16797 (reg!17126 Regex!16797)) (EmptyLang!16797) (Union!16797 (regOne!34107 Regex!16797) (regTwo!34107 Regex!16797)) )
))
(declare-fun r3!135 () Regex!16797)

(declare-datatypes ((List!66554 0))(
  ( (Nil!66430) (Cons!66430 (h!72878 C!33864) (t!380297 List!66554)) )
))
(declare-fun s!14361 () List!66554)

(declare-fun r2!6280 () Regex!16797)

(declare-fun lt!2461842 () Regex!16797)

(declare-fun r1!6342 () Regex!16797)

(declare-fun lambda!390251 () Int)

(declare-datatypes ((tuple2!67340 0))(
  ( (tuple2!67341 (_1!36973 List!66554) (_2!36973 List!66554)) )
))
(declare-fun lt!2461825 () tuple2!67340)

(assert (=> bs!1839105 (= (and (= (_1!36973 lt!2461825) s!14361) (= r1!6342 lt!2461842) (= r2!6280 r3!135)) (= lambda!390251 lambda!390249))))

(assert (=> bs!1839105 (not (= lambda!390251 lambda!390250))))

(assert (=> b!6887825 true))

(assert (=> b!6887825 true))

(assert (=> b!6887825 true))

(declare-fun lambda!390252 () Int)

(assert (=> bs!1839105 (not (= lambda!390252 lambda!390249))))

(assert (=> bs!1839105 (= (and (= (_1!36973 lt!2461825) s!14361) (= r1!6342 lt!2461842) (= r2!6280 r3!135)) (= lambda!390252 lambda!390250))))

(assert (=> b!6887825 (not (= lambda!390252 lambda!390251))))

(assert (=> b!6887825 true))

(assert (=> b!6887825 true))

(assert (=> b!6887825 true))

(declare-fun bs!1839106 () Bool)

(declare-fun b!6887846 () Bool)

(assert (= bs!1839106 (and b!6887846 b!6887835)))

(declare-fun lt!2461833 () List!66554)

(declare-fun lambda!390253 () Int)

(assert (=> bs!1839106 (= (and (= lt!2461833 s!14361) (= r2!6280 lt!2461842)) (= lambda!390253 lambda!390249))))

(assert (=> bs!1839106 (not (= lambda!390253 lambda!390250))))

(declare-fun bs!1839107 () Bool)

(assert (= bs!1839107 (and b!6887846 b!6887825)))

(assert (=> bs!1839107 (= (and (= lt!2461833 (_1!36973 lt!2461825)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390253 lambda!390251))))

(assert (=> bs!1839107 (not (= lambda!390253 lambda!390252))))

(assert (=> b!6887846 true))

(assert (=> b!6887846 true))

(assert (=> b!6887846 true))

(declare-fun lambda!390254 () Int)

(assert (=> bs!1839106 (= (and (= lt!2461833 s!14361) (= r2!6280 lt!2461842)) (= lambda!390254 lambda!390250))))

(assert (=> bs!1839106 (not (= lambda!390254 lambda!390249))))

(assert (=> bs!1839107 (not (= lambda!390254 lambda!390251))))

(assert (=> bs!1839107 (= (and (= lt!2461833 (_1!36973 lt!2461825)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390254 lambda!390252))))

(assert (=> b!6887846 (not (= lambda!390254 lambda!390253))))

(assert (=> b!6887846 true))

(assert (=> b!6887846 true))

(assert (=> b!6887846 true))

(declare-fun b!6887824 () Bool)

(declare-fun res!2808060 () Bool)

(declare-fun e!4149771 () Bool)

(assert (=> b!6887824 (=> res!2808060 e!4149771)))

(declare-fun matchR!8942 (Regex!16797 List!66554) Bool)

(assert (=> b!6887824 (= res!2808060 (not (matchR!8942 r3!135 (_2!36973 lt!2461825))))))

(declare-fun e!4149777 () Bool)

(assert (=> b!6887825 (= e!4149771 e!4149777)))

(declare-fun res!2808061 () Bool)

(assert (=> b!6887825 (=> res!2808061 e!4149777)))

(declare-fun lt!2461826 () tuple2!67340)

(assert (=> b!6887825 (= res!2808061 (not (matchR!8942 r1!6342 (_1!36973 lt!2461826))))))

(declare-datatypes ((Option!16582 0))(
  ( (None!16581) (Some!16581 (v!52853 tuple2!67340)) )
))
(declare-fun lt!2461844 () Option!16582)

(declare-fun get!23158 (Option!16582) tuple2!67340)

(assert (=> b!6887825 (= lt!2461826 (get!23158 lt!2461844))))

(declare-fun Exists!3809 (Int) Bool)

(assert (=> b!6887825 (= (Exists!3809 lambda!390251) (Exists!3809 lambda!390252))))

(declare-datatypes ((Unit!160314 0))(
  ( (Unit!160315) )
))
(declare-fun lt!2461834 () Unit!160314)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2288 (Regex!16797 Regex!16797 List!66554) Unit!160314)

(assert (=> b!6887825 (= lt!2461834 (lemmaExistCutMatchRandMatchRSpecEquivalent!2288 r1!6342 r2!6280 (_1!36973 lt!2461825)))))

(declare-fun isDefined!13285 (Option!16582) Bool)

(assert (=> b!6887825 (= (isDefined!13285 lt!2461844) (Exists!3809 lambda!390251))))

(declare-fun findConcatSeparation!2996 (Regex!16797 Regex!16797 List!66554 List!66554 List!66554) Option!16582)

(assert (=> b!6887825 (= lt!2461844 (findConcatSeparation!2996 r1!6342 r2!6280 Nil!66430 (_1!36973 lt!2461825) (_1!36973 lt!2461825)))))

(declare-fun lt!2461822 () Unit!160314)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2760 (Regex!16797 Regex!16797 List!66554) Unit!160314)

(assert (=> b!6887825 (= lt!2461822 (lemmaFindConcatSeparationEquivalentToExists!2760 r1!6342 r2!6280 (_1!36973 lt!2461825)))))

(declare-fun b!6887826 () Bool)

(declare-fun e!4149769 () Bool)

(declare-fun tp!1895002 () Bool)

(assert (=> b!6887826 (= e!4149769 tp!1895002)))

(declare-fun b!6887827 () Bool)

(declare-fun res!2808069 () Bool)

(declare-fun e!4149778 () Bool)

(assert (=> b!6887827 (=> res!2808069 e!4149778)))

(declare-fun isPrefix!5798 (List!66554 List!66554) Bool)

(assert (=> b!6887827 (= res!2808069 (not (isPrefix!5798 Nil!66430 (_1!36973 lt!2461826))))))

(declare-fun b!6887828 () Bool)

(declare-fun e!4149770 () Bool)

(declare-fun tp!1895011 () Bool)

(assert (=> b!6887828 (= e!4149770 tp!1895011)))

(declare-fun b!6887829 () Bool)

(declare-fun e!4149774 () Bool)

(declare-fun tp_is_empty!42819 () Bool)

(declare-fun tp!1895001 () Bool)

(assert (=> b!6887829 (= e!4149774 (and tp_is_empty!42819 tp!1895001))))

(declare-fun b!6887830 () Bool)

(assert (=> b!6887830 (= e!4149778 true)))

(declare-fun lt!2461843 () List!66554)

(declare-fun ++!14876 (List!66554 List!66554) List!66554)

(assert (=> b!6887830 (= lt!2461843 (++!14876 Nil!66430 s!14361))))

(declare-fun b!6887831 () Bool)

(declare-fun e!4149775 () Bool)

(assert (=> b!6887831 (= e!4149775 tp_is_empty!42819)))

(declare-fun b!6887833 () Bool)

(assert (=> b!6887833 (= e!4149769 tp_is_empty!42819)))

(declare-fun b!6887834 () Bool)

(declare-fun res!2808062 () Bool)

(declare-fun e!4149768 () Bool)

(assert (=> b!6887834 (=> (not res!2808062) (not e!4149768))))

(declare-fun validRegex!8505 (Regex!16797) Bool)

(assert (=> b!6887834 (= res!2808062 (validRegex!8505 r3!135))))

(declare-fun e!4149773 () Bool)

(assert (=> b!6887835 (= e!4149773 e!4149771)))

(declare-fun res!2808064 () Bool)

(assert (=> b!6887835 (=> res!2808064 e!4149771)))

(declare-fun lt!2461827 () Bool)

(assert (=> b!6887835 (= res!2808064 (not lt!2461827))))

(declare-fun matchRSpec!3860 (Regex!16797 List!66554) Bool)

(assert (=> b!6887835 (= lt!2461827 (matchRSpec!3860 lt!2461842 (_1!36973 lt!2461825)))))

(assert (=> b!6887835 (= lt!2461827 (matchR!8942 lt!2461842 (_1!36973 lt!2461825)))))

(declare-fun lt!2461829 () Unit!160314)

(declare-fun mainMatchTheorem!3860 (Regex!16797 List!66554) Unit!160314)

(assert (=> b!6887835 (= lt!2461829 (mainMatchTheorem!3860 lt!2461842 (_1!36973 lt!2461825)))))

(declare-fun lt!2461848 () Option!16582)

(assert (=> b!6887835 (= lt!2461825 (get!23158 lt!2461848))))

(assert (=> b!6887835 (= (Exists!3809 lambda!390249) (Exists!3809 lambda!390250))))

(declare-fun lt!2461830 () Unit!160314)

(assert (=> b!6887835 (= lt!2461830 (lemmaExistCutMatchRandMatchRSpecEquivalent!2288 lt!2461842 r3!135 s!14361))))

(assert (=> b!6887835 (= (isDefined!13285 lt!2461848) (Exists!3809 lambda!390249))))

(assert (=> b!6887835 (= lt!2461848 (findConcatSeparation!2996 lt!2461842 r3!135 Nil!66430 s!14361 s!14361))))

(declare-fun lt!2461849 () Unit!160314)

(assert (=> b!6887835 (= lt!2461849 (lemmaFindConcatSeparationEquivalentToExists!2760 lt!2461842 r3!135 s!14361))))

(declare-fun b!6887836 () Bool)

(declare-fun tp!1895007 () Bool)

(declare-fun tp!1895006 () Bool)

(assert (=> b!6887836 (= e!4149769 (and tp!1895007 tp!1895006))))

(declare-fun b!6887837 () Bool)

(assert (=> b!6887837 (= e!4149770 tp_is_empty!42819)))

(declare-fun b!6887838 () Bool)

(declare-fun tp!1895008 () Bool)

(declare-fun tp!1895010 () Bool)

(assert (=> b!6887838 (= e!4149775 (and tp!1895008 tp!1895010))))

(declare-fun b!6887839 () Bool)

(declare-fun res!2808067 () Bool)

(assert (=> b!6887839 (=> res!2808067 e!4149778)))

(declare-fun lt!2461845 () Regex!16797)

(assert (=> b!6887839 (= res!2808067 (not (validRegex!8505 lt!2461845)))))

(declare-fun b!6887840 () Bool)

(declare-fun tp!1895004 () Bool)

(declare-fun tp!1895015 () Bool)

(assert (=> b!6887840 (= e!4149769 (and tp!1895004 tp!1895015))))

(declare-fun b!6887841 () Bool)

(declare-fun res!2808058 () Bool)

(assert (=> b!6887841 (=> res!2808058 e!4149777)))

(assert (=> b!6887841 (= res!2808058 (not (matchR!8942 r2!6280 (_2!36973 lt!2461826))))))

(declare-fun b!6887842 () Bool)

(declare-fun e!4149772 () Bool)

(assert (=> b!6887842 (= e!4149772 e!4149778)))

(declare-fun res!2808070 () Bool)

(assert (=> b!6887842 (=> res!2808070 e!4149778)))

(declare-fun lt!2461823 () List!66554)

(assert (=> b!6887842 (= res!2808070 (not (= lt!2461823 s!14361)))))

(declare-fun lt!2461838 () List!66554)

(assert (=> b!6887842 (= lt!2461838 lt!2461823)))

(assert (=> b!6887842 (= lt!2461823 (++!14876 (_1!36973 lt!2461826) lt!2461833))))

(declare-fun lt!2461846 () Unit!160314)

(declare-fun lemmaConcatAssociativity!2968 (List!66554 List!66554 List!66554) Unit!160314)

(assert (=> b!6887842 (= lt!2461846 (lemmaConcatAssociativity!2968 (_1!36973 lt!2461826) (_2!36973 lt!2461826) (_2!36973 lt!2461825)))))

(declare-fun b!6887843 () Bool)

(declare-fun e!4149776 () Bool)

(assert (=> b!6887843 (= e!4149777 e!4149776)))

(declare-fun res!2808059 () Bool)

(assert (=> b!6887843 (=> res!2808059 e!4149776)))

(assert (=> b!6887843 (= res!2808059 (not (= lt!2461838 s!14361)))))

(assert (=> b!6887843 (= lt!2461838 (++!14876 (++!14876 (_1!36973 lt!2461826) (_2!36973 lt!2461826)) (_2!36973 lt!2461825)))))

(assert (=> b!6887843 (matchRSpec!3860 r2!6280 (_2!36973 lt!2461826))))

(declare-fun lt!2461841 () Unit!160314)

(assert (=> b!6887843 (= lt!2461841 (mainMatchTheorem!3860 r2!6280 (_2!36973 lt!2461826)))))

(assert (=> b!6887843 (matchRSpec!3860 r1!6342 (_1!36973 lt!2461826))))

(declare-fun lt!2461847 () Unit!160314)

(assert (=> b!6887843 (= lt!2461847 (mainMatchTheorem!3860 r1!6342 (_1!36973 lt!2461826)))))

(declare-fun b!6887844 () Bool)

(declare-fun tp!1895005 () Bool)

(declare-fun tp!1895003 () Bool)

(assert (=> b!6887844 (= e!4149775 (and tp!1895005 tp!1895003))))

(declare-fun b!6887845 () Bool)

(assert (=> b!6887845 (= e!4149768 (not e!4149773))))

(declare-fun res!2808063 () Bool)

(assert (=> b!6887845 (=> res!2808063 e!4149773)))

(declare-fun lt!2461820 () Bool)

(assert (=> b!6887845 (= res!2808063 (not lt!2461820))))

(declare-fun lt!2461835 () Regex!16797)

(assert (=> b!6887845 (= (matchR!8942 lt!2461835 s!14361) (matchRSpec!3860 lt!2461835 s!14361))))

(declare-fun lt!2461837 () Unit!160314)

(assert (=> b!6887845 (= lt!2461837 (mainMatchTheorem!3860 lt!2461835 s!14361))))

(declare-fun lt!2461828 () Regex!16797)

(assert (=> b!6887845 (= lt!2461820 (matchRSpec!3860 lt!2461828 s!14361))))

(assert (=> b!6887845 (= lt!2461820 (matchR!8942 lt!2461828 s!14361))))

(declare-fun lt!2461831 () Unit!160314)

(assert (=> b!6887845 (= lt!2461831 (mainMatchTheorem!3860 lt!2461828 s!14361))))

(assert (=> b!6887845 (= lt!2461835 (Concat!25642 r1!6342 lt!2461845))))

(assert (=> b!6887845 (= lt!2461845 (Concat!25642 r2!6280 r3!135))))

(assert (=> b!6887845 (= lt!2461828 (Concat!25642 lt!2461842 r3!135))))

(assert (=> b!6887845 (= lt!2461842 (Concat!25642 r1!6342 r2!6280))))

(assert (=> b!6887846 (= e!4149776 e!4149772)))

(declare-fun res!2808065 () Bool)

(assert (=> b!6887846 (=> res!2808065 e!4149772)))

(declare-fun lt!2461840 () Bool)

(assert (=> b!6887846 (= res!2808065 (not lt!2461840))))

(declare-fun lt!2461821 () Bool)

(assert (=> b!6887846 lt!2461821))

(declare-fun lt!2461836 () Unit!160314)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!44 (Regex!16797 Regex!16797 List!66554 List!66554 List!66554 List!66554 List!66554) Unit!160314)

(assert (=> b!6887846 (= lt!2461836 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!44 r2!6280 r3!135 (_2!36973 lt!2461826) (_2!36973 lt!2461825) lt!2461833 Nil!66430 lt!2461833))))

(assert (=> b!6887846 (= (Exists!3809 lambda!390253) (Exists!3809 lambda!390254))))

(declare-fun lt!2461824 () Unit!160314)

(assert (=> b!6887846 (= lt!2461824 (lemmaExistCutMatchRandMatchRSpecEquivalent!2288 r2!6280 r3!135 lt!2461833))))

(assert (=> b!6887846 (= lt!2461821 (Exists!3809 lambda!390253))))

(assert (=> b!6887846 (= lt!2461821 (isDefined!13285 (findConcatSeparation!2996 r2!6280 r3!135 Nil!66430 lt!2461833 lt!2461833)))))

(declare-fun lt!2461832 () Unit!160314)

(assert (=> b!6887846 (= lt!2461832 (lemmaFindConcatSeparationEquivalentToExists!2760 r2!6280 r3!135 lt!2461833))))

(assert (=> b!6887846 (= lt!2461840 (matchRSpec!3860 lt!2461845 lt!2461833))))

(assert (=> b!6887846 (= lt!2461840 (matchR!8942 lt!2461845 lt!2461833))))

(declare-fun lt!2461839 () Unit!160314)

(assert (=> b!6887846 (= lt!2461839 (mainMatchTheorem!3860 lt!2461845 lt!2461833))))

(assert (=> b!6887846 (= lt!2461833 (++!14876 (_2!36973 lt!2461826) (_2!36973 lt!2461825)))))

(declare-fun b!6887847 () Bool)

(declare-fun res!2808068 () Bool)

(assert (=> b!6887847 (=> (not res!2808068) (not e!4149768))))

(assert (=> b!6887847 (= res!2808068 (validRegex!8505 r2!6280))))

(declare-fun b!6887848 () Bool)

(declare-fun tp!1895009 () Bool)

(assert (=> b!6887848 (= e!4149775 tp!1895009)))

(declare-fun b!6887849 () Bool)

(declare-fun tp!1895000 () Bool)

(declare-fun tp!1895014 () Bool)

(assert (=> b!6887849 (= e!4149770 (and tp!1895000 tp!1895014))))

(declare-fun b!6887832 () Bool)

(declare-fun tp!1895013 () Bool)

(declare-fun tp!1895012 () Bool)

(assert (=> b!6887832 (= e!4149770 (and tp!1895013 tp!1895012))))

(declare-fun res!2808066 () Bool)

(assert (=> start!664154 (=> (not res!2808066) (not e!4149768))))

(assert (=> start!664154 (= res!2808066 (validRegex!8505 r1!6342))))

(assert (=> start!664154 e!4149768))

(assert (=> start!664154 e!4149775))

(assert (=> start!664154 e!4149769))

(assert (=> start!664154 e!4149770))

(assert (=> start!664154 e!4149774))

(assert (= (and start!664154 res!2808066) b!6887847))

(assert (= (and b!6887847 res!2808068) b!6887834))

(assert (= (and b!6887834 res!2808062) b!6887845))

(assert (= (and b!6887845 (not res!2808063)) b!6887835))

(assert (= (and b!6887835 (not res!2808064)) b!6887824))

(assert (= (and b!6887824 (not res!2808060)) b!6887825))

(assert (= (and b!6887825 (not res!2808061)) b!6887841))

(assert (= (and b!6887841 (not res!2808058)) b!6887843))

(assert (= (and b!6887843 (not res!2808059)) b!6887846))

(assert (= (and b!6887846 (not res!2808065)) b!6887842))

(assert (= (and b!6887842 (not res!2808070)) b!6887839))

(assert (= (and b!6887839 (not res!2808067)) b!6887827))

(assert (= (and b!6887827 (not res!2808069)) b!6887830))

(get-info :version)

(assert (= (and start!664154 ((_ is ElementMatch!16797) r1!6342)) b!6887831))

(assert (= (and start!664154 ((_ is Concat!25642) r1!6342)) b!6887838))

(assert (= (and start!664154 ((_ is Star!16797) r1!6342)) b!6887848))

(assert (= (and start!664154 ((_ is Union!16797) r1!6342)) b!6887844))

(assert (= (and start!664154 ((_ is ElementMatch!16797) r2!6280)) b!6887833))

(assert (= (and start!664154 ((_ is Concat!25642) r2!6280)) b!6887836))

(assert (= (and start!664154 ((_ is Star!16797) r2!6280)) b!6887826))

(assert (= (and start!664154 ((_ is Union!16797) r2!6280)) b!6887840))

(assert (= (and start!664154 ((_ is ElementMatch!16797) r3!135)) b!6887837))

(assert (= (and start!664154 ((_ is Concat!25642) r3!135)) b!6887849))

(assert (= (and start!664154 ((_ is Star!16797) r3!135)) b!6887828))

(assert (= (and start!664154 ((_ is Union!16797) r3!135)) b!6887832))

(assert (= (and start!664154 ((_ is Cons!66430) s!14361)) b!6887829))

(declare-fun m!7610386 () Bool)

(assert (=> start!664154 m!7610386))

(declare-fun m!7610388 () Bool)

(assert (=> b!6887846 m!7610388))

(declare-fun m!7610390 () Bool)

(assert (=> b!6887846 m!7610390))

(declare-fun m!7610392 () Bool)

(assert (=> b!6887846 m!7610392))

(declare-fun m!7610394 () Bool)

(assert (=> b!6887846 m!7610394))

(declare-fun m!7610396 () Bool)

(assert (=> b!6887846 m!7610396))

(assert (=> b!6887846 m!7610388))

(declare-fun m!7610398 () Bool)

(assert (=> b!6887846 m!7610398))

(declare-fun m!7610400 () Bool)

(assert (=> b!6887846 m!7610400))

(declare-fun m!7610402 () Bool)

(assert (=> b!6887846 m!7610402))

(declare-fun m!7610404 () Bool)

(assert (=> b!6887846 m!7610404))

(declare-fun m!7610406 () Bool)

(assert (=> b!6887846 m!7610406))

(assert (=> b!6887846 m!7610406))

(declare-fun m!7610408 () Bool)

(assert (=> b!6887846 m!7610408))

(declare-fun m!7610410 () Bool)

(assert (=> b!6887834 m!7610410))

(declare-fun m!7610412 () Bool)

(assert (=> b!6887830 m!7610412))

(declare-fun m!7610414 () Bool)

(assert (=> b!6887835 m!7610414))

(declare-fun m!7610416 () Bool)

(assert (=> b!6887835 m!7610416))

(declare-fun m!7610418 () Bool)

(assert (=> b!6887835 m!7610418))

(declare-fun m!7610420 () Bool)

(assert (=> b!6887835 m!7610420))

(declare-fun m!7610422 () Bool)

(assert (=> b!6887835 m!7610422))

(declare-fun m!7610424 () Bool)

(assert (=> b!6887835 m!7610424))

(declare-fun m!7610426 () Bool)

(assert (=> b!6887835 m!7610426))

(declare-fun m!7610428 () Bool)

(assert (=> b!6887835 m!7610428))

(declare-fun m!7610430 () Bool)

(assert (=> b!6887835 m!7610430))

(assert (=> b!6887835 m!7610414))

(declare-fun m!7610432 () Bool)

(assert (=> b!6887835 m!7610432))

(declare-fun m!7610434 () Bool)

(assert (=> b!6887845 m!7610434))

(declare-fun m!7610436 () Bool)

(assert (=> b!6887845 m!7610436))

(declare-fun m!7610438 () Bool)

(assert (=> b!6887845 m!7610438))

(declare-fun m!7610440 () Bool)

(assert (=> b!6887845 m!7610440))

(declare-fun m!7610442 () Bool)

(assert (=> b!6887845 m!7610442))

(declare-fun m!7610444 () Bool)

(assert (=> b!6887845 m!7610444))

(declare-fun m!7610446 () Bool)

(assert (=> b!6887842 m!7610446))

(declare-fun m!7610448 () Bool)

(assert (=> b!6887842 m!7610448))

(declare-fun m!7610450 () Bool)

(assert (=> b!6887824 m!7610450))

(declare-fun m!7610452 () Bool)

(assert (=> b!6887841 m!7610452))

(declare-fun m!7610454 () Bool)

(assert (=> b!6887825 m!7610454))

(declare-fun m!7610456 () Bool)

(assert (=> b!6887825 m!7610456))

(declare-fun m!7610458 () Bool)

(assert (=> b!6887825 m!7610458))

(declare-fun m!7610460 () Bool)

(assert (=> b!6887825 m!7610460))

(declare-fun m!7610462 () Bool)

(assert (=> b!6887825 m!7610462))

(declare-fun m!7610464 () Bool)

(assert (=> b!6887825 m!7610464))

(declare-fun m!7610466 () Bool)

(assert (=> b!6887825 m!7610466))

(assert (=> b!6887825 m!7610458))

(declare-fun m!7610468 () Bool)

(assert (=> b!6887825 m!7610468))

(declare-fun m!7610470 () Bool)

(assert (=> b!6887843 m!7610470))

(declare-fun m!7610472 () Bool)

(assert (=> b!6887843 m!7610472))

(declare-fun m!7610474 () Bool)

(assert (=> b!6887843 m!7610474))

(declare-fun m!7610476 () Bool)

(assert (=> b!6887843 m!7610476))

(declare-fun m!7610478 () Bool)

(assert (=> b!6887843 m!7610478))

(assert (=> b!6887843 m!7610472))

(declare-fun m!7610480 () Bool)

(assert (=> b!6887843 m!7610480))

(declare-fun m!7610482 () Bool)

(assert (=> b!6887847 m!7610482))

(declare-fun m!7610484 () Bool)

(assert (=> b!6887839 m!7610484))

(declare-fun m!7610486 () Bool)

(assert (=> b!6887827 m!7610486))

(check-sat (not b!6887829) (not b!6887824) (not b!6887836) (not b!6887848) (not b!6887845) (not b!6887826) (not b!6887846) (not b!6887832) (not b!6887834) (not b!6887840) (not b!6887827) (not b!6887839) (not b!6887847) (not b!6887828) (not b!6887842) (not b!6887830) (not b!6887844) (not b!6887849) (not b!6887843) (not b!6887825) tp_is_empty!42819 (not b!6887838) (not b!6887841) (not start!664154) (not b!6887835))
(check-sat)
