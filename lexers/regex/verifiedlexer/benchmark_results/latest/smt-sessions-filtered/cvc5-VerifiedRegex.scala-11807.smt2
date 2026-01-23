; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!664672 () Bool)

(assert start!664672)

(declare-fun b!6900272 () Bool)

(assert (=> b!6900272 true))

(assert (=> b!6900272 true))

(assert (=> b!6900272 true))

(declare-fun lambda!391622 () Int)

(declare-fun lambda!391621 () Int)

(assert (=> b!6900272 (not (= lambda!391622 lambda!391621))))

(assert (=> b!6900272 true))

(assert (=> b!6900272 true))

(assert (=> b!6900272 true))

(declare-datatypes ((C!33990 0))(
  ( (C!33991 (val!26697 Int)) )
))
(declare-datatypes ((List!66617 0))(
  ( (Nil!66493) (Cons!66493 (h!72941 C!33990) (t!380360 List!66617)) )
))
(declare-datatypes ((tuple2!67454 0))(
  ( (tuple2!67455 (_1!37030 List!66617) (_2!37030 List!66617)) )
))
(declare-fun lt!2465946 () tuple2!67454)

(declare-datatypes ((Regex!16860 0))(
  ( (ElementMatch!16860 (c!1282121 C!33990)) (Concat!25705 (regOne!34232 Regex!16860) (regTwo!34232 Regex!16860)) (EmptyExpr!16860) (Star!16860 (reg!17189 Regex!16860)) (EmptyLang!16860) (Union!16860 (regOne!34233 Regex!16860) (regTwo!34233 Regex!16860)) )
))
(declare-fun r1!6342 () Regex!16860)

(declare-fun r3!135 () Regex!16860)

(declare-fun s!14361 () List!66617)

(declare-fun r2!6280 () Regex!16860)

(declare-fun lt!2465955 () Regex!16860)

(declare-fun lambda!391623 () Int)

(assert (=> b!6900272 (= (and (= (_2!37030 lt!2465946) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2465955)) (= lambda!391623 lambda!391621))))

(assert (=> b!6900272 (not (= lambda!391623 lambda!391622))))

(assert (=> b!6900272 true))

(assert (=> b!6900272 true))

(assert (=> b!6900272 true))

(declare-fun lambda!391624 () Int)

(assert (=> b!6900272 (not (= lambda!391624 lambda!391621))))

(assert (=> b!6900272 (= (and (= (_2!37030 lt!2465946) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2465955)) (= lambda!391624 lambda!391622))))

(assert (=> b!6900272 (not (= lambda!391624 lambda!391623))))

(assert (=> b!6900272 true))

(assert (=> b!6900272 true))

(assert (=> b!6900272 true))

(declare-fun lt!2465928 () List!66617)

(declare-fun lambda!391625 () Int)

(assert (=> b!6900272 (= (and (= lt!2465928 s!14361) (= r2!6280 lt!2465955)) (= lambda!391625 lambda!391621))))

(assert (=> b!6900272 (not (= lambda!391625 lambda!391622))))

(assert (=> b!6900272 (= (and (= lt!2465928 (_2!37030 lt!2465946)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391625 lambda!391623))))

(assert (=> b!6900272 (not (= lambda!391625 lambda!391624))))

(assert (=> b!6900272 true))

(assert (=> b!6900272 true))

(assert (=> b!6900272 true))

(declare-fun lambda!391626 () Int)

(assert (=> b!6900272 (not (= lambda!391626 lambda!391621))))

(assert (=> b!6900272 (not (= lambda!391626 lambda!391625))))

(assert (=> b!6900272 (not (= lambda!391626 lambda!391623))))

(assert (=> b!6900272 (= (and (= lt!2465928 (_2!37030 lt!2465946)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391626 lambda!391624))))

(assert (=> b!6900272 (= (and (= lt!2465928 s!14361) (= r2!6280 lt!2465955)) (= lambda!391626 lambda!391622))))

(assert (=> b!6900272 true))

(assert (=> b!6900272 true))

(assert (=> b!6900272 true))

(declare-fun lambda!391627 () Int)

(assert (=> b!6900272 (not (= lambda!391627 lambda!391626))))

(declare-fun lt!2465953 () Regex!16860)

(assert (=> b!6900272 (= (and (= lt!2465953 r1!6342) (= r3!135 lt!2465955)) (= lambda!391627 lambda!391621))))

(assert (=> b!6900272 (= (and (= s!14361 lt!2465928) (= lt!2465953 r1!6342) (= r3!135 r2!6280)) (= lambda!391627 lambda!391625))))

(assert (=> b!6900272 (= (and (= s!14361 (_2!37030 lt!2465946)) (= lt!2465953 r2!6280)) (= lambda!391627 lambda!391623))))

(assert (=> b!6900272 (not (= lambda!391627 lambda!391624))))

(assert (=> b!6900272 (not (= lambda!391627 lambda!391622))))

(assert (=> b!6900272 true))

(assert (=> b!6900272 true))

(assert (=> b!6900272 true))

(declare-fun b!6900258 () Bool)

(declare-fun res!2813709 () Bool)

(declare-fun e!4155612 () Bool)

(assert (=> b!6900258 (=> (not res!2813709) (not e!4155612))))

(declare-fun validRegex!8568 (Regex!16860) Bool)

(assert (=> b!6900258 (= res!2813709 (validRegex!8568 r3!135))))

(declare-fun b!6900259 () Bool)

(declare-fun e!4155616 () Bool)

(declare-fun tp!1899784 () Bool)

(declare-fun tp!1899788 () Bool)

(assert (=> b!6900259 (= e!4155616 (and tp!1899784 tp!1899788))))

(declare-fun b!6900260 () Bool)

(declare-fun e!4155614 () Bool)

(declare-fun tp_is_empty!42945 () Bool)

(assert (=> b!6900260 (= e!4155614 tp_is_empty!42945)))

(declare-fun b!6900261 () Bool)

(declare-fun e!4155617 () Bool)

(declare-fun tp!1899791 () Bool)

(assert (=> b!6900261 (= e!4155617 (and tp_is_empty!42945 tp!1899791))))

(declare-fun res!2813710 () Bool)

(assert (=> start!664672 (=> (not res!2813710) (not e!4155612))))

(assert (=> start!664672 (= res!2813710 (validRegex!8568 r1!6342))))

(assert (=> start!664672 e!4155612))

(assert (=> start!664672 e!4155616))

(assert (=> start!664672 e!4155614))

(declare-fun e!4155611 () Bool)

(assert (=> start!664672 e!4155611))

(assert (=> start!664672 e!4155617))

(declare-fun b!6900262 () Bool)

(declare-fun tp!1899795 () Bool)

(declare-fun tp!1899785 () Bool)

(assert (=> b!6900262 (= e!4155614 (and tp!1899795 tp!1899785))))

(declare-fun b!6900263 () Bool)

(declare-fun tp!1899796 () Bool)

(declare-fun tp!1899787 () Bool)

(assert (=> b!6900263 (= e!4155614 (and tp!1899796 tp!1899787))))

(declare-fun b!6900264 () Bool)

(declare-fun e!4155613 () Bool)

(assert (=> b!6900264 (= e!4155613 true)))

(declare-datatypes ((Unit!160440 0))(
  ( (Unit!160441) )
))
(declare-fun lt!2465929 () Unit!160440)

(declare-fun e!4155615 () Unit!160440)

(assert (=> b!6900264 (= lt!2465929 e!4155615)))

(declare-fun c!1282120 () Bool)

(declare-datatypes ((Option!16639 0))(
  ( (None!16638) (Some!16638 (v!52910 tuple2!67454)) )
))
(declare-fun lt!2465932 () Option!16639)

(declare-fun isDefined!13342 (Option!16639) Bool)

(assert (=> b!6900264 (= c!1282120 (isDefined!13342 lt!2465932))))

(declare-fun findConcatSeparation!3053 (Regex!16860 Regex!16860 List!66617 List!66617 List!66617) Option!16639)

(assert (=> b!6900264 (= lt!2465932 (findConcatSeparation!3053 r1!6342 lt!2465955 Nil!66493 s!14361 s!14361))))

(declare-fun b!6900265 () Bool)

(declare-fun res!2813712 () Bool)

(assert (=> b!6900265 (=> (not res!2813712) (not e!4155612))))

(assert (=> b!6900265 (= res!2813712 (validRegex!8568 r2!6280))))

(declare-fun b!6900266 () Bool)

(declare-fun tp!1899799 () Bool)

(declare-fun tp!1899789 () Bool)

(assert (=> b!6900266 (= e!4155616 (and tp!1899799 tp!1899789))))

(declare-fun b!6900267 () Bool)

(assert (=> b!6900267 (= e!4155616 tp_is_empty!42945)))

(declare-fun b!6900268 () Bool)

(declare-fun tp!1899786 () Bool)

(declare-fun tp!1899797 () Bool)

(assert (=> b!6900268 (= e!4155611 (and tp!1899786 tp!1899797))))

(declare-fun b!6900269 () Bool)

(declare-fun Unit!160442 () Unit!160440)

(assert (=> b!6900269 (= e!4155615 Unit!160442)))

(declare-fun b!6900270 () Bool)

(assert (=> b!6900270 (= e!4155611 tp_is_empty!42945)))

(declare-fun b!6900271 () Bool)

(declare-fun tp!1899794 () Bool)

(declare-fun tp!1899790 () Bool)

(assert (=> b!6900271 (= e!4155611 (and tp!1899794 tp!1899790))))

(declare-fun Unit!160443 () Unit!160440)

(assert (=> b!6900272 (= e!4155615 Unit!160443)))

(declare-fun lt!2465952 () Unit!160440)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2815 (Regex!16860 Regex!16860 List!66617) Unit!160440)

(assert (=> b!6900272 (= lt!2465952 (lemmaFindConcatSeparationEquivalentToExists!2815 r1!6342 lt!2465955 s!14361))))

(declare-fun Exists!3868 (Int) Bool)

(assert (=> b!6900272 (Exists!3868 lambda!391621)))

(declare-fun lt!2465931 () Unit!160440)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2341 (Regex!16860 Regex!16860 List!66617) Unit!160440)

(assert (=> b!6900272 (= lt!2465931 (lemmaExistCutMatchRandMatchRSpecEquivalent!2341 r1!6342 lt!2465955 s!14361))))

(assert (=> b!6900272 (= (Exists!3868 lambda!391621) (Exists!3868 lambda!391622))))

(declare-fun get!23241 (Option!16639) tuple2!67454)

(assert (=> b!6900272 (= lt!2465946 (get!23241 lt!2465932))))

(declare-fun lt!2465950 () Unit!160440)

(declare-fun mainMatchTheorem!3923 (Regex!16860 List!66617) Unit!160440)

(assert (=> b!6900272 (= lt!2465950 (mainMatchTheorem!3923 r1!6342 (_1!37030 lt!2465946)))))

(declare-fun matchR!9005 (Regex!16860 List!66617) Bool)

(declare-fun matchRSpec!3923 (Regex!16860 List!66617) Bool)

(assert (=> b!6900272 (= (matchR!9005 r1!6342 (_1!37030 lt!2465946)) (matchRSpec!3923 r1!6342 (_1!37030 lt!2465946)))))

(declare-fun lt!2465945 () Unit!160440)

(assert (=> b!6900272 (= lt!2465945 (mainMatchTheorem!3923 lt!2465955 (_2!37030 lt!2465946)))))

(assert (=> b!6900272 (= (matchR!9005 lt!2465955 (_2!37030 lt!2465946)) (matchRSpec!3923 lt!2465955 (_2!37030 lt!2465946)))))

(declare-fun lt!2465930 () Unit!160440)

(assert (=> b!6900272 (= lt!2465930 (lemmaFindConcatSeparationEquivalentToExists!2815 r2!6280 r3!135 (_2!37030 lt!2465946)))))

(declare-fun lt!2465939 () Option!16639)

(assert (=> b!6900272 (= lt!2465939 (findConcatSeparation!3053 r2!6280 r3!135 Nil!66493 (_2!37030 lt!2465946) (_2!37030 lt!2465946)))))

(assert (=> b!6900272 (= (isDefined!13342 lt!2465939) (Exists!3868 lambda!391623))))

(declare-fun lt!2465949 () Unit!160440)

(assert (=> b!6900272 (= lt!2465949 (lemmaExistCutMatchRandMatchRSpecEquivalent!2341 r2!6280 r3!135 (_2!37030 lt!2465946)))))

(assert (=> b!6900272 (= (Exists!3868 lambda!391623) (Exists!3868 lambda!391624))))

(declare-fun lt!2465947 () tuple2!67454)

(assert (=> b!6900272 (= lt!2465947 (get!23241 lt!2465939))))

(declare-fun lt!2465941 () Unit!160440)

(assert (=> b!6900272 (= lt!2465941 (mainMatchTheorem!3923 r2!6280 (_1!37030 lt!2465947)))))

(assert (=> b!6900272 (= (matchR!9005 r2!6280 (_1!37030 lt!2465947)) (matchRSpec!3923 r2!6280 (_1!37030 lt!2465947)))))

(declare-fun lt!2465944 () Unit!160440)

(assert (=> b!6900272 (= lt!2465944 (mainMatchTheorem!3923 r3!135 (_2!37030 lt!2465947)))))

(assert (=> b!6900272 (= (matchR!9005 r3!135 (_2!37030 lt!2465947)) (matchRSpec!3923 r3!135 (_2!37030 lt!2465947)))))

(declare-fun lt!2465954 () Unit!160440)

(declare-fun lemmaConcatAssociativity!2993 (List!66617 List!66617 List!66617) Unit!160440)

(assert (=> b!6900272 (= lt!2465954 (lemmaConcatAssociativity!2993 (_1!37030 lt!2465946) (_1!37030 lt!2465947) (_2!37030 lt!2465947)))))

(declare-fun ++!14913 (List!66617 List!66617) List!66617)

(assert (=> b!6900272 (= lt!2465928 (++!14913 (_1!37030 lt!2465946) (_1!37030 lt!2465947)))))

(assert (=> b!6900272 (= (++!14913 lt!2465928 (_2!37030 lt!2465947)) (++!14913 (_1!37030 lt!2465946) (++!14913 (_1!37030 lt!2465947) (_2!37030 lt!2465947))))))

(declare-fun lt!2465940 () Unit!160440)

(assert (=> b!6900272 (= lt!2465940 (mainMatchTheorem!3923 lt!2465953 lt!2465928))))

(assert (=> b!6900272 (= (matchR!9005 lt!2465953 lt!2465928) (matchRSpec!3923 lt!2465953 lt!2465928))))

(declare-fun lt!2465951 () Unit!160440)

(assert (=> b!6900272 (= lt!2465951 (lemmaFindConcatSeparationEquivalentToExists!2815 r1!6342 r2!6280 lt!2465928))))

(declare-fun lt!2465942 () Bool)

(assert (=> b!6900272 (= lt!2465942 (isDefined!13342 (findConcatSeparation!3053 r1!6342 r2!6280 Nil!66493 lt!2465928 lt!2465928)))))

(assert (=> b!6900272 (= lt!2465942 (Exists!3868 lambda!391625))))

(declare-fun lt!2465956 () Unit!160440)

(assert (=> b!6900272 (= lt!2465956 (lemmaExistCutMatchRandMatchRSpecEquivalent!2341 r1!6342 r2!6280 lt!2465928))))

(assert (=> b!6900272 (= (Exists!3868 lambda!391625) (Exists!3868 lambda!391626))))

(declare-fun lt!2465943 () Unit!160440)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!61 (Regex!16860 Regex!16860 List!66617 List!66617 List!66617 List!66617 List!66617) Unit!160440)

(assert (=> b!6900272 (= lt!2465943 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!61 r1!6342 r2!6280 (_1!37030 lt!2465946) (_1!37030 lt!2465947) lt!2465928 Nil!66493 lt!2465928))))

(assert (=> b!6900272 lt!2465942))

(declare-fun lt!2465938 () Unit!160440)

(assert (=> b!6900272 (= lt!2465938 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!61 lt!2465953 r3!135 lt!2465928 (_2!37030 lt!2465947) s!14361 Nil!66493 s!14361))))

(assert (=> b!6900272 (isDefined!13342 (findConcatSeparation!3053 lt!2465953 r3!135 Nil!66493 s!14361 s!14361))))

(declare-fun lt!2465957 () Unit!160440)

(assert (=> b!6900272 (= lt!2465957 (lemmaFindConcatSeparationEquivalentToExists!2815 lt!2465953 r3!135 s!14361))))

(assert (=> b!6900272 (Exists!3868 lambda!391627)))

(declare-fun lt!2465935 () Unit!160440)

(assert (=> b!6900272 (= lt!2465935 (lemmaExistCutMatchRandMatchRSpecEquivalent!2341 lt!2465953 r3!135 s!14361))))

(assert (=> b!6900272 false))

(declare-fun b!6900273 () Bool)

(assert (=> b!6900273 (= e!4155612 (not e!4155613))))

(declare-fun res!2813711 () Bool)

(assert (=> b!6900273 (=> res!2813711 e!4155613)))

(declare-fun lt!2465937 () Bool)

(assert (=> b!6900273 (= res!2813711 lt!2465937)))

(declare-fun lt!2465948 () Regex!16860)

(assert (=> b!6900273 (= (matchR!9005 lt!2465948 s!14361) (matchRSpec!3923 lt!2465948 s!14361))))

(declare-fun lt!2465934 () Unit!160440)

(assert (=> b!6900273 (= lt!2465934 (mainMatchTheorem!3923 lt!2465948 s!14361))))

(declare-fun lt!2465936 () Regex!16860)

(assert (=> b!6900273 (= lt!2465937 (matchRSpec!3923 lt!2465936 s!14361))))

(assert (=> b!6900273 (= lt!2465937 (matchR!9005 lt!2465936 s!14361))))

(declare-fun lt!2465933 () Unit!160440)

(assert (=> b!6900273 (= lt!2465933 (mainMatchTheorem!3923 lt!2465936 s!14361))))

(assert (=> b!6900273 (= lt!2465948 (Concat!25705 r1!6342 lt!2465955))))

(assert (=> b!6900273 (= lt!2465955 (Concat!25705 r2!6280 r3!135))))

(assert (=> b!6900273 (= lt!2465936 (Concat!25705 lt!2465953 r3!135))))

(assert (=> b!6900273 (= lt!2465953 (Concat!25705 r1!6342 r2!6280))))

(declare-fun b!6900274 () Bool)

(declare-fun tp!1899792 () Bool)

(assert (=> b!6900274 (= e!4155614 tp!1899792)))

(declare-fun b!6900275 () Bool)

(declare-fun tp!1899793 () Bool)

(assert (=> b!6900275 (= e!4155616 tp!1899793)))

(declare-fun b!6900276 () Bool)

(declare-fun tp!1899798 () Bool)

(assert (=> b!6900276 (= e!4155611 tp!1899798)))

(assert (= (and start!664672 res!2813710) b!6900265))

(assert (= (and b!6900265 res!2813712) b!6900258))

(assert (= (and b!6900258 res!2813709) b!6900273))

(assert (= (and b!6900273 (not res!2813711)) b!6900264))

(assert (= (and b!6900264 c!1282120) b!6900272))

(assert (= (and b!6900264 (not c!1282120)) b!6900269))

(assert (= (and start!664672 (is-ElementMatch!16860 r1!6342)) b!6900267))

(assert (= (and start!664672 (is-Concat!25705 r1!6342)) b!6900266))

(assert (= (and start!664672 (is-Star!16860 r1!6342)) b!6900275))

(assert (= (and start!664672 (is-Union!16860 r1!6342)) b!6900259))

(assert (= (and start!664672 (is-ElementMatch!16860 r2!6280)) b!6900260))

(assert (= (and start!664672 (is-Concat!25705 r2!6280)) b!6900263))

(assert (= (and start!664672 (is-Star!16860 r2!6280)) b!6900274))

(assert (= (and start!664672 (is-Union!16860 r2!6280)) b!6900262))

(assert (= (and start!664672 (is-ElementMatch!16860 r3!135)) b!6900270))

(assert (= (and start!664672 (is-Concat!25705 r3!135)) b!6900268))

(assert (= (and start!664672 (is-Star!16860 r3!135)) b!6900276))

(assert (= (and start!664672 (is-Union!16860 r3!135)) b!6900271))

(assert (= (and start!664672 (is-Cons!66493 s!14361)) b!6900261))

(declare-fun m!7618384 () Bool)

(assert (=> b!6900265 m!7618384))

(declare-fun m!7618386 () Bool)

(assert (=> start!664672 m!7618386))

(declare-fun m!7618388 () Bool)

(assert (=> b!6900272 m!7618388))

(declare-fun m!7618390 () Bool)

(assert (=> b!6900272 m!7618390))

(declare-fun m!7618392 () Bool)

(assert (=> b!6900272 m!7618392))

(declare-fun m!7618394 () Bool)

(assert (=> b!6900272 m!7618394))

(declare-fun m!7618396 () Bool)

(assert (=> b!6900272 m!7618396))

(declare-fun m!7618398 () Bool)

(assert (=> b!6900272 m!7618398))

(declare-fun m!7618400 () Bool)

(assert (=> b!6900272 m!7618400))

(declare-fun m!7618402 () Bool)

(assert (=> b!6900272 m!7618402))

(declare-fun m!7618404 () Bool)

(assert (=> b!6900272 m!7618404))

(declare-fun m!7618406 () Bool)

(assert (=> b!6900272 m!7618406))

(declare-fun m!7618408 () Bool)

(assert (=> b!6900272 m!7618408))

(declare-fun m!7618410 () Bool)

(assert (=> b!6900272 m!7618410))

(declare-fun m!7618412 () Bool)

(assert (=> b!6900272 m!7618412))

(declare-fun m!7618414 () Bool)

(assert (=> b!6900272 m!7618414))

(declare-fun m!7618416 () Bool)

(assert (=> b!6900272 m!7618416))

(declare-fun m!7618418 () Bool)

(assert (=> b!6900272 m!7618418))

(declare-fun m!7618420 () Bool)

(assert (=> b!6900272 m!7618420))

(declare-fun m!7618422 () Bool)

(assert (=> b!6900272 m!7618422))

(declare-fun m!7618424 () Bool)

(assert (=> b!6900272 m!7618424))

(declare-fun m!7618426 () Bool)

(assert (=> b!6900272 m!7618426))

(assert (=> b!6900272 m!7618390))

(declare-fun m!7618428 () Bool)

(assert (=> b!6900272 m!7618428))

(declare-fun m!7618430 () Bool)

(assert (=> b!6900272 m!7618430))

(declare-fun m!7618432 () Bool)

(assert (=> b!6900272 m!7618432))

(assert (=> b!6900272 m!7618394))

(declare-fun m!7618434 () Bool)

(assert (=> b!6900272 m!7618434))

(declare-fun m!7618436 () Bool)

(assert (=> b!6900272 m!7618436))

(declare-fun m!7618438 () Bool)

(assert (=> b!6900272 m!7618438))

(assert (=> b!6900272 m!7618420))

(declare-fun m!7618440 () Bool)

(assert (=> b!6900272 m!7618440))

(declare-fun m!7618442 () Bool)

(assert (=> b!6900272 m!7618442))

(declare-fun m!7618444 () Bool)

(assert (=> b!6900272 m!7618444))

(declare-fun m!7618446 () Bool)

(assert (=> b!6900272 m!7618446))

(assert (=> b!6900272 m!7618426))

(declare-fun m!7618448 () Bool)

(assert (=> b!6900272 m!7618448))

(declare-fun m!7618450 () Bool)

(assert (=> b!6900272 m!7618450))

(declare-fun m!7618452 () Bool)

(assert (=> b!6900272 m!7618452))

(assert (=> b!6900272 m!7618452))

(declare-fun m!7618454 () Bool)

(assert (=> b!6900272 m!7618454))

(declare-fun m!7618456 () Bool)

(assert (=> b!6900272 m!7618456))

(declare-fun m!7618458 () Bool)

(assert (=> b!6900272 m!7618458))

(declare-fun m!7618460 () Bool)

(assert (=> b!6900272 m!7618460))

(declare-fun m!7618462 () Bool)

(assert (=> b!6900272 m!7618462))

(declare-fun m!7618464 () Bool)

(assert (=> b!6900272 m!7618464))

(assert (=> b!6900272 m!7618440))

(declare-fun m!7618466 () Bool)

(assert (=> b!6900272 m!7618466))

(declare-fun m!7618468 () Bool)

(assert (=> b!6900272 m!7618468))

(declare-fun m!7618470 () Bool)

(assert (=> b!6900272 m!7618470))

(declare-fun m!7618472 () Bool)

(assert (=> b!6900272 m!7618472))

(declare-fun m!7618474 () Bool)

(assert (=> b!6900272 m!7618474))

(declare-fun m!7618476 () Bool)

(assert (=> b!6900272 m!7618476))

(declare-fun m!7618478 () Bool)

(assert (=> b!6900258 m!7618478))

(declare-fun m!7618480 () Bool)

(assert (=> b!6900273 m!7618480))

(declare-fun m!7618482 () Bool)

(assert (=> b!6900273 m!7618482))

(declare-fun m!7618484 () Bool)

(assert (=> b!6900273 m!7618484))

(declare-fun m!7618486 () Bool)

(assert (=> b!6900273 m!7618486))

(declare-fun m!7618488 () Bool)

(assert (=> b!6900273 m!7618488))

(declare-fun m!7618490 () Bool)

(assert (=> b!6900273 m!7618490))

(declare-fun m!7618492 () Bool)

(assert (=> b!6900264 m!7618492))

(declare-fun m!7618494 () Bool)

(assert (=> b!6900264 m!7618494))

(push 1)

(assert (not start!664672))

(assert (not b!6900265))

(assert (not b!6900264))

(assert (not b!6900273))

(assert (not b!6900263))

(assert (not b!6900275))

(assert (not b!6900276))

(assert (not b!6900266))

(assert (not b!6900268))

(assert tp_is_empty!42945)

(assert (not b!6900274))

(assert (not b!6900271))

(assert (not b!6900258))

(assert (not b!6900272))

(assert (not b!6900261))

(assert (not b!6900262))

(assert (not b!6900259))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

