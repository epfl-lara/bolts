; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!725438 () Bool)

(assert start!725438)

(declare-fun b!7495972 () Bool)

(assert (=> b!7495972 true))

(assert (=> b!7495972 true))

(assert (=> b!7495972 true))

(declare-fun lambda!464481 () Int)

(declare-fun lambda!464480 () Int)

(assert (=> b!7495972 (not (= lambda!464481 lambda!464480))))

(assert (=> b!7495972 true))

(assert (=> b!7495972 true))

(assert (=> b!7495972 true))

(declare-fun bs!1935813 () Bool)

(declare-fun b!7495975 () Bool)

(assert (= bs!1935813 (and b!7495975 b!7495972)))

(declare-datatypes ((C!39572 0))(
  ( (C!39573 (val!30184 Int)) )
))
(declare-datatypes ((Regex!19649 0))(
  ( (ElementMatch!19649 (c!1383920 C!39572)) (Concat!28494 (regOne!39810 Regex!19649) (regTwo!39810 Regex!19649)) (EmptyExpr!19649) (Star!19649 (reg!19978 Regex!19649)) (EmptyLang!19649) (Union!19649 (regOne!39811 Regex!19649) (regTwo!39811 Regex!19649)) )
))
(declare-fun r1!5845 () Regex!19649)

(declare-fun lambda!464482 () Int)

(declare-fun lt!2630591 () Regex!19649)

(assert (=> bs!1935813 (= (= r1!5845 lt!2630591) (= lambda!464482 lambda!464480))))

(assert (=> bs!1935813 (not (= lambda!464482 lambda!464481))))

(assert (=> b!7495975 true))

(assert (=> b!7495975 true))

(assert (=> b!7495975 true))

(declare-fun lambda!464483 () Int)

(assert (=> bs!1935813 (not (= lambda!464483 lambda!464480))))

(assert (=> bs!1935813 (= (= r1!5845 lt!2630591) (= lambda!464483 lambda!464481))))

(assert (=> b!7495975 (not (= lambda!464483 lambda!464482))))

(assert (=> b!7495975 true))

(assert (=> b!7495975 true))

(assert (=> b!7495975 true))

(declare-fun b!7495954 () Bool)

(declare-fun e!4469436 () Bool)

(declare-fun e!4469438 () Bool)

(assert (=> b!7495954 (= e!4469436 e!4469438)))

(declare-fun res!3006904 () Bool)

(assert (=> b!7495954 (=> res!3006904 e!4469438)))

(declare-fun lt!2630580 () Bool)

(declare-fun lt!2630571 () Bool)

(assert (=> b!7495954 (= res!3006904 (or (and (not lt!2630580) (not lt!2630571)) (not lt!2630580)))))

(declare-fun lt!2630573 () Regex!19649)

(declare-datatypes ((List!72363 0))(
  ( (Nil!72239) (Cons!72239 (h!78687 C!39572) (t!386932 List!72363)) )
))
(declare-fun s!13591 () List!72363)

(declare-fun matchRSpec!4326 (Regex!19649 List!72363) Bool)

(assert (=> b!7495954 (= lt!2630571 (matchRSpec!4326 lt!2630573 s!13591))))

(declare-fun matchR!9411 (Regex!19649 List!72363) Bool)

(assert (=> b!7495954 (= lt!2630571 (matchR!9411 lt!2630573 s!13591))))

(declare-datatypes ((Unit!166129 0))(
  ( (Unit!166130) )
))
(declare-fun lt!2630592 () Unit!166129)

(declare-fun mainMatchTheorem!4320 (Regex!19649 List!72363) Unit!166129)

(assert (=> b!7495954 (= lt!2630592 (mainMatchTheorem!4320 lt!2630573 s!13591))))

(declare-fun lt!2630578 () Regex!19649)

(assert (=> b!7495954 (= lt!2630580 (matchRSpec!4326 lt!2630578 s!13591))))

(assert (=> b!7495954 (= lt!2630580 (matchR!9411 lt!2630578 s!13591))))

(declare-fun lt!2630582 () Unit!166129)

(assert (=> b!7495954 (= lt!2630582 (mainMatchTheorem!4320 lt!2630578 s!13591))))

(declare-fun b!7495955 () Bool)

(declare-fun res!3006898 () Bool)

(declare-fun e!4469437 () Bool)

(assert (=> b!7495955 (=> (not res!3006898) (not e!4469437))))

(declare-fun r2!5783 () Regex!19649)

(declare-fun validRegex!10163 (Regex!19649) Bool)

(assert (=> b!7495955 (= res!3006898 (validRegex!10163 r2!5783))))

(declare-fun b!7495956 () Bool)

(declare-fun e!4469439 () Bool)

(assert (=> b!7495956 (= e!4469439 (validRegex!10163 lt!2630591))))

(declare-fun b!7495957 () Bool)

(declare-fun e!4469442 () Bool)

(declare-fun tp_is_empty!49587 () Bool)

(assert (=> b!7495957 (= e!4469442 tp_is_empty!49587)))

(declare-fun b!7495958 () Bool)

(declare-fun e!4469440 () Bool)

(assert (=> b!7495958 (= e!4469440 tp_is_empty!49587)))

(declare-fun b!7495959 () Bool)

(declare-fun tp!2176047 () Bool)

(declare-fun tp!2176050 () Bool)

(assert (=> b!7495959 (= e!4469442 (and tp!2176047 tp!2176050))))

(declare-fun b!7495960 () Bool)

(declare-fun tp!2176049 () Bool)

(assert (=> b!7495960 (= e!4469440 tp!2176049)))

(declare-fun b!7495961 () Bool)

(declare-fun e!4469435 () Bool)

(declare-fun tp!2176055 () Bool)

(declare-fun tp!2176056 () Bool)

(assert (=> b!7495961 (= e!4469435 (and tp!2176055 tp!2176056))))

(declare-fun b!7495962 () Bool)

(declare-fun tp!2176052 () Bool)

(declare-fun tp!2176059 () Bool)

(assert (=> b!7495962 (= e!4469435 (and tp!2176052 tp!2176059))))

(declare-fun b!7495963 () Bool)

(declare-fun tp!2176048 () Bool)

(declare-fun tp!2176053 () Bool)

(assert (=> b!7495963 (= e!4469442 (and tp!2176048 tp!2176053))))

(declare-fun b!7495964 () Bool)

(declare-fun res!3006905 () Bool)

(declare-fun e!4469441 () Bool)

(assert (=> b!7495964 (=> res!3006905 e!4469441)))

(declare-fun rTail!78 () Regex!19649)

(declare-datatypes ((tuple2!68732 0))(
  ( (tuple2!68733 (_1!37669 List!72363) (_2!37669 List!72363)) )
))
(declare-fun lt!2630584 () tuple2!68732)

(assert (=> b!7495964 (= res!3006905 (not (matchR!9411 rTail!78 (_2!37669 lt!2630584))))))

(declare-fun b!7495965 () Bool)

(declare-fun tp!2176057 () Bool)

(assert (=> b!7495965 (= e!4469435 tp!2176057)))

(declare-fun b!7495966 () Bool)

(declare-fun tp!2176058 () Bool)

(declare-fun tp!2176046 () Bool)

(assert (=> b!7495966 (= e!4469440 (and tp!2176058 tp!2176046))))

(declare-fun b!7495967 () Bool)

(declare-fun tp!2176061 () Bool)

(assert (=> b!7495967 (= e!4469442 tp!2176061)))

(declare-fun b!7495968 () Bool)

(declare-fun e!4469444 () Bool)

(declare-fun tp!2176051 () Bool)

(assert (=> b!7495968 (= e!4469444 (and tp_is_empty!49587 tp!2176051))))

(declare-fun res!3006900 () Bool)

(assert (=> start!725438 (=> (not res!3006900) (not e!4469437))))

(assert (=> start!725438 (= res!3006900 (validRegex!10163 r1!5845))))

(assert (=> start!725438 e!4469437))

(assert (=> start!725438 e!4469435))

(assert (=> start!725438 e!4469442))

(assert (=> start!725438 e!4469440))

(assert (=> start!725438 e!4469444))

(declare-fun b!7495969 () Bool)

(declare-fun e!4469443 () Bool)

(assert (=> b!7495969 (= e!4469437 (not e!4469443))))

(declare-fun res!3006901 () Bool)

(assert (=> b!7495969 (=> res!3006901 e!4469443)))

(declare-fun lt!2630570 () Bool)

(assert (=> b!7495969 (= res!3006901 lt!2630570)))

(declare-fun lt!2630585 () Bool)

(declare-fun lt!2630581 () Regex!19649)

(assert (=> b!7495969 (= lt!2630585 (matchRSpec!4326 lt!2630581 s!13591))))

(assert (=> b!7495969 (= lt!2630585 (matchR!9411 lt!2630581 s!13591))))

(declare-fun lt!2630590 () Unit!166129)

(assert (=> b!7495969 (= lt!2630590 (mainMatchTheorem!4320 lt!2630581 s!13591))))

(declare-fun lt!2630577 () Regex!19649)

(assert (=> b!7495969 (= lt!2630570 (matchRSpec!4326 lt!2630577 s!13591))))

(assert (=> b!7495969 (= lt!2630570 (matchR!9411 lt!2630577 s!13591))))

(declare-fun lt!2630576 () Unit!166129)

(assert (=> b!7495969 (= lt!2630576 (mainMatchTheorem!4320 lt!2630577 s!13591))))

(assert (=> b!7495969 (= lt!2630581 (Union!19649 lt!2630578 lt!2630573))))

(assert (=> b!7495969 (= lt!2630573 (Concat!28494 r2!5783 rTail!78))))

(assert (=> b!7495969 (= lt!2630578 (Concat!28494 r1!5845 rTail!78))))

(assert (=> b!7495969 (= lt!2630577 (Concat!28494 lt!2630591 rTail!78))))

(assert (=> b!7495969 (= lt!2630591 (Union!19649 r1!5845 r2!5783))))

(declare-fun b!7495970 () Bool)

(assert (=> b!7495970 (= e!4469435 tp_is_empty!49587)))

(declare-fun b!7495971 () Bool)

(declare-fun tp!2176054 () Bool)

(declare-fun tp!2176060 () Bool)

(assert (=> b!7495971 (= e!4469440 (and tp!2176054 tp!2176060))))

(assert (=> b!7495972 (= e!4469443 e!4469436)))

(declare-fun res!3006906 () Bool)

(assert (=> b!7495972 (=> res!3006906 e!4469436)))

(declare-fun lt!2630572 () Bool)

(assert (=> b!7495972 (= res!3006906 (or lt!2630572 (not lt!2630585)))))

(declare-fun Exists!4266 (Int) Bool)

(assert (=> b!7495972 (= (Exists!4266 lambda!464480) (Exists!4266 lambda!464481))))

(declare-fun lt!2630575 () Unit!166129)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2590 (Regex!19649 Regex!19649 List!72363) Unit!166129)

(assert (=> b!7495972 (= lt!2630575 (lemmaExistCutMatchRandMatchRSpecEquivalent!2590 lt!2630591 rTail!78 s!13591))))

(assert (=> b!7495972 (= lt!2630572 (Exists!4266 lambda!464480))))

(declare-datatypes ((Option!17198 0))(
  ( (None!17197) (Some!17197 (v!54326 tuple2!68732)) )
))
(declare-fun isDefined!13887 (Option!17198) Bool)

(declare-fun findConcatSeparation!3320 (Regex!19649 Regex!19649 List!72363 List!72363 List!72363) Option!17198)

(assert (=> b!7495972 (= lt!2630572 (isDefined!13887 (findConcatSeparation!3320 lt!2630591 rTail!78 Nil!72239 s!13591 s!13591)))))

(declare-fun lt!2630593 () Unit!166129)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3078 (Regex!19649 Regex!19649 List!72363) Unit!166129)

(assert (=> b!7495972 (= lt!2630593 (lemmaFindConcatSeparationEquivalentToExists!3078 lt!2630591 rTail!78 s!13591))))

(declare-fun b!7495973 () Bool)

(assert (=> b!7495973 (= e!4469441 e!4469439)))

(declare-fun res!3006903 () Bool)

(assert (=> b!7495973 (=> res!3006903 e!4469439)))

(declare-fun lt!2630583 () Bool)

(assert (=> b!7495973 (= res!3006903 (not lt!2630583))))

(assert (=> b!7495973 (= (matchR!9411 r2!5783 (_1!37669 lt!2630584)) (matchRSpec!4326 r2!5783 (_1!37669 lt!2630584)))))

(declare-fun lt!2630588 () Unit!166129)

(assert (=> b!7495973 (= lt!2630588 (mainMatchTheorem!4320 r2!5783 (_1!37669 lt!2630584)))))

(assert (=> b!7495973 (matchRSpec!4326 r1!5845 (_1!37669 lt!2630584))))

(declare-fun lt!2630589 () Unit!166129)

(assert (=> b!7495973 (= lt!2630589 (mainMatchTheorem!4320 r1!5845 (_1!37669 lt!2630584)))))

(assert (=> b!7495973 (= lt!2630583 (matchRSpec!4326 lt!2630591 (_1!37669 lt!2630584)))))

(assert (=> b!7495973 (= lt!2630583 (matchR!9411 lt!2630591 (_1!37669 lt!2630584)))))

(declare-fun lt!2630587 () Unit!166129)

(assert (=> b!7495973 (= lt!2630587 (mainMatchTheorem!4320 lt!2630591 (_1!37669 lt!2630584)))))

(declare-fun b!7495974 () Bool)

(declare-fun res!3006899 () Bool)

(assert (=> b!7495974 (=> (not res!3006899) (not e!4469437))))

(assert (=> b!7495974 (= res!3006899 (validRegex!10163 rTail!78))))

(assert (=> b!7495975 (= e!4469438 e!4469441)))

(declare-fun res!3006902 () Bool)

(assert (=> b!7495975 (=> res!3006902 e!4469441)))

(assert (=> b!7495975 (= res!3006902 (not (matchR!9411 r1!5845 (_1!37669 lt!2630584))))))

(declare-fun lt!2630574 () Option!17198)

(declare-fun get!25329 (Option!17198) tuple2!68732)

(assert (=> b!7495975 (= lt!2630584 (get!25329 lt!2630574))))

(assert (=> b!7495975 (= (Exists!4266 lambda!464482) (Exists!4266 lambda!464483))))

(declare-fun lt!2630586 () Unit!166129)

(assert (=> b!7495975 (= lt!2630586 (lemmaExistCutMatchRandMatchRSpecEquivalent!2590 r1!5845 rTail!78 s!13591))))

(assert (=> b!7495975 (= (isDefined!13887 lt!2630574) (Exists!4266 lambda!464482))))

(assert (=> b!7495975 (= lt!2630574 (findConcatSeparation!3320 r1!5845 rTail!78 Nil!72239 s!13591 s!13591))))

(declare-fun lt!2630579 () Unit!166129)

(assert (=> b!7495975 (= lt!2630579 (lemmaFindConcatSeparationEquivalentToExists!3078 r1!5845 rTail!78 s!13591))))

(assert (= (and start!725438 res!3006900) b!7495955))

(assert (= (and b!7495955 res!3006898) b!7495974))

(assert (= (and b!7495974 res!3006899) b!7495969))

(assert (= (and b!7495969 (not res!3006901)) b!7495972))

(assert (= (and b!7495972 (not res!3006906)) b!7495954))

(assert (= (and b!7495954 (not res!3006904)) b!7495975))

(assert (= (and b!7495975 (not res!3006902)) b!7495964))

(assert (= (and b!7495964 (not res!3006905)) b!7495973))

(assert (= (and b!7495973 (not res!3006903)) b!7495956))

(get-info :version)

(assert (= (and start!725438 ((_ is ElementMatch!19649) r1!5845)) b!7495970))

(assert (= (and start!725438 ((_ is Concat!28494) r1!5845)) b!7495961))

(assert (= (and start!725438 ((_ is Star!19649) r1!5845)) b!7495965))

(assert (= (and start!725438 ((_ is Union!19649) r1!5845)) b!7495962))

(assert (= (and start!725438 ((_ is ElementMatch!19649) r2!5783)) b!7495957))

(assert (= (and start!725438 ((_ is Concat!28494) r2!5783)) b!7495963))

(assert (= (and start!725438 ((_ is Star!19649) r2!5783)) b!7495967))

(assert (= (and start!725438 ((_ is Union!19649) r2!5783)) b!7495959))

(assert (= (and start!725438 ((_ is ElementMatch!19649) rTail!78)) b!7495958))

(assert (= (and start!725438 ((_ is Concat!28494) rTail!78)) b!7495966))

(assert (= (and start!725438 ((_ is Star!19649) rTail!78)) b!7495960))

(assert (= (and start!725438 ((_ is Union!19649) rTail!78)) b!7495971))

(assert (= (and start!725438 ((_ is Cons!72239) s!13591)) b!7495968))

(declare-fun m!8079786 () Bool)

(assert (=> b!7495955 m!8079786))

(declare-fun m!8079788 () Bool)

(assert (=> b!7495972 m!8079788))

(declare-fun m!8079790 () Bool)

(assert (=> b!7495972 m!8079790))

(declare-fun m!8079792 () Bool)

(assert (=> b!7495972 m!8079792))

(assert (=> b!7495972 m!8079788))

(assert (=> b!7495972 m!8079792))

(declare-fun m!8079794 () Bool)

(assert (=> b!7495972 m!8079794))

(declare-fun m!8079796 () Bool)

(assert (=> b!7495972 m!8079796))

(declare-fun m!8079798 () Bool)

(assert (=> b!7495972 m!8079798))

(declare-fun m!8079800 () Bool)

(assert (=> b!7495954 m!8079800))

(declare-fun m!8079802 () Bool)

(assert (=> b!7495954 m!8079802))

(declare-fun m!8079804 () Bool)

(assert (=> b!7495954 m!8079804))

(declare-fun m!8079806 () Bool)

(assert (=> b!7495954 m!8079806))

(declare-fun m!8079808 () Bool)

(assert (=> b!7495954 m!8079808))

(declare-fun m!8079810 () Bool)

(assert (=> b!7495954 m!8079810))

(declare-fun m!8079812 () Bool)

(assert (=> b!7495974 m!8079812))

(declare-fun m!8079814 () Bool)

(assert (=> start!725438 m!8079814))

(declare-fun m!8079816 () Bool)

(assert (=> b!7495956 m!8079816))

(declare-fun m!8079818 () Bool)

(assert (=> b!7495975 m!8079818))

(declare-fun m!8079820 () Bool)

(assert (=> b!7495975 m!8079820))

(declare-fun m!8079822 () Bool)

(assert (=> b!7495975 m!8079822))

(declare-fun m!8079824 () Bool)

(assert (=> b!7495975 m!8079824))

(declare-fun m!8079826 () Bool)

(assert (=> b!7495975 m!8079826))

(assert (=> b!7495975 m!8079824))

(declare-fun m!8079828 () Bool)

(assert (=> b!7495975 m!8079828))

(declare-fun m!8079830 () Bool)

(assert (=> b!7495975 m!8079830))

(declare-fun m!8079832 () Bool)

(assert (=> b!7495975 m!8079832))

(declare-fun m!8079834 () Bool)

(assert (=> b!7495969 m!8079834))

(declare-fun m!8079836 () Bool)

(assert (=> b!7495969 m!8079836))

(declare-fun m!8079838 () Bool)

(assert (=> b!7495969 m!8079838))

(declare-fun m!8079840 () Bool)

(assert (=> b!7495969 m!8079840))

(declare-fun m!8079842 () Bool)

(assert (=> b!7495969 m!8079842))

(declare-fun m!8079844 () Bool)

(assert (=> b!7495969 m!8079844))

(declare-fun m!8079846 () Bool)

(assert (=> b!7495973 m!8079846))

(declare-fun m!8079848 () Bool)

(assert (=> b!7495973 m!8079848))

(declare-fun m!8079850 () Bool)

(assert (=> b!7495973 m!8079850))

(declare-fun m!8079852 () Bool)

(assert (=> b!7495973 m!8079852))

(declare-fun m!8079854 () Bool)

(assert (=> b!7495973 m!8079854))

(declare-fun m!8079856 () Bool)

(assert (=> b!7495973 m!8079856))

(declare-fun m!8079858 () Bool)

(assert (=> b!7495973 m!8079858))

(declare-fun m!8079860 () Bool)

(assert (=> b!7495973 m!8079860))

(declare-fun m!8079862 () Bool)

(assert (=> b!7495964 m!8079862))

(check-sat (not b!7495965) (not b!7495956) (not b!7495962) (not b!7495975) (not b!7495964) (not b!7495961) (not b!7495969) (not b!7495972) (not b!7495974) (not b!7495973) (not b!7495960) (not b!7495963) (not b!7495967) (not b!7495968) tp_is_empty!49587 (not start!725438) (not b!7495959) (not b!7495971) (not b!7495954) (not b!7495955) (not b!7495966))
(check-sat)
(get-model)

(declare-fun b!7495998 () Bool)

(declare-fun e!4469464 () Bool)

(declare-fun call!688120 () Bool)

(assert (=> b!7495998 (= e!4469464 call!688120)))

(declare-fun bm!688114 () Bool)

(declare-fun call!688119 () Bool)

(declare-fun call!688121 () Bool)

(assert (=> bm!688114 (= call!688119 call!688121)))

(declare-fun b!7495999 () Bool)

(declare-fun e!4469463 () Bool)

(assert (=> b!7495999 (= e!4469463 call!688120)))

(declare-fun b!7496000 () Bool)

(declare-fun e!4469465 () Bool)

(declare-fun e!4469460 () Bool)

(assert (=> b!7496000 (= e!4469465 e!4469460)))

(declare-fun c!1383926 () Bool)

(assert (=> b!7496000 (= c!1383926 ((_ is Star!19649) rTail!78))))

(declare-fun b!7496001 () Bool)

(declare-fun e!4469459 () Bool)

(assert (=> b!7496001 (= e!4469459 call!688121)))

(declare-fun bm!688115 () Bool)

(declare-fun c!1383925 () Bool)

(assert (=> bm!688115 (= call!688120 (validRegex!10163 (ite c!1383925 (regTwo!39811 rTail!78) (regTwo!39810 rTail!78))))))

(declare-fun b!7496002 () Bool)

(declare-fun e!4469461 () Bool)

(assert (=> b!7496002 (= e!4469460 e!4469461)))

(assert (=> b!7496002 (= c!1383925 ((_ is Union!19649) rTail!78))))

(declare-fun b!7496003 () Bool)

(declare-fun res!3006919 () Bool)

(declare-fun e!4469462 () Bool)

(assert (=> b!7496003 (=> res!3006919 e!4469462)))

(assert (=> b!7496003 (= res!3006919 (not ((_ is Concat!28494) rTail!78)))))

(assert (=> b!7496003 (= e!4469461 e!4469462)))

(declare-fun b!7496004 () Bool)

(assert (=> b!7496004 (= e!4469462 e!4469463)))

(declare-fun res!3006921 () Bool)

(assert (=> b!7496004 (=> (not res!3006921) (not e!4469463))))

(assert (=> b!7496004 (= res!3006921 call!688119)))

(declare-fun d!2301770 () Bool)

(declare-fun res!3006917 () Bool)

(assert (=> d!2301770 (=> res!3006917 e!4469465)))

(assert (=> d!2301770 (= res!3006917 ((_ is ElementMatch!19649) rTail!78))))

(assert (=> d!2301770 (= (validRegex!10163 rTail!78) e!4469465)))

(declare-fun b!7496005 () Bool)

(assert (=> b!7496005 (= e!4469460 e!4469459)))

(declare-fun res!3006918 () Bool)

(declare-fun nullable!8584 (Regex!19649) Bool)

(assert (=> b!7496005 (= res!3006918 (not (nullable!8584 (reg!19978 rTail!78))))))

(assert (=> b!7496005 (=> (not res!3006918) (not e!4469459))))

(declare-fun bm!688116 () Bool)

(assert (=> bm!688116 (= call!688121 (validRegex!10163 (ite c!1383926 (reg!19978 rTail!78) (ite c!1383925 (regOne!39811 rTail!78) (regOne!39810 rTail!78)))))))

(declare-fun b!7496006 () Bool)

(declare-fun res!3006920 () Bool)

(assert (=> b!7496006 (=> (not res!3006920) (not e!4469464))))

(assert (=> b!7496006 (= res!3006920 call!688119)))

(assert (=> b!7496006 (= e!4469461 e!4469464)))

(assert (= (and d!2301770 (not res!3006917)) b!7496000))

(assert (= (and b!7496000 c!1383926) b!7496005))

(assert (= (and b!7496000 (not c!1383926)) b!7496002))

(assert (= (and b!7496005 res!3006918) b!7496001))

(assert (= (and b!7496002 c!1383925) b!7496006))

(assert (= (and b!7496002 (not c!1383925)) b!7496003))

(assert (= (and b!7496006 res!3006920) b!7495998))

(assert (= (and b!7496003 (not res!3006919)) b!7496004))

(assert (= (and b!7496004 res!3006921) b!7495999))

(assert (= (or b!7495998 b!7495999) bm!688115))

(assert (= (or b!7496006 b!7496004) bm!688114))

(assert (= (or b!7496001 bm!688114) bm!688116))

(declare-fun m!8079864 () Bool)

(assert (=> bm!688115 m!8079864))

(declare-fun m!8079866 () Bool)

(assert (=> b!7496005 m!8079866))

(declare-fun m!8079868 () Bool)

(assert (=> bm!688116 m!8079868))

(assert (=> b!7495974 d!2301770))

(declare-fun d!2301772 () Bool)

(assert (=> d!2301772 (= (matchR!9411 lt!2630591 (_1!37669 lt!2630584)) (matchRSpec!4326 lt!2630591 (_1!37669 lt!2630584)))))

(declare-fun lt!2630596 () Unit!166129)

(declare-fun choose!57944 (Regex!19649 List!72363) Unit!166129)

(assert (=> d!2301772 (= lt!2630596 (choose!57944 lt!2630591 (_1!37669 lt!2630584)))))

(assert (=> d!2301772 (validRegex!10163 lt!2630591)))

(assert (=> d!2301772 (= (mainMatchTheorem!4320 lt!2630591 (_1!37669 lt!2630584)) lt!2630596)))

(declare-fun bs!1935814 () Bool)

(assert (= bs!1935814 d!2301772))

(assert (=> bs!1935814 m!8079858))

(assert (=> bs!1935814 m!8079850))

(declare-fun m!8079870 () Bool)

(assert (=> bs!1935814 m!8079870))

(assert (=> bs!1935814 m!8079816))

(assert (=> b!7495973 d!2301772))

(declare-fun bs!1935815 () Bool)

(declare-fun b!7496102 () Bool)

(assert (= bs!1935815 (and b!7496102 b!7495972)))

(declare-fun lambda!464492 () Int)

(assert (=> bs!1935815 (not (= lambda!464492 lambda!464480))))

(assert (=> bs!1935815 (not (= lambda!464492 lambda!464481))))

(declare-fun bs!1935816 () Bool)

(assert (= bs!1935816 (and b!7496102 b!7495975)))

(assert (=> bs!1935816 (not (= lambda!464492 lambda!464482))))

(assert (=> bs!1935816 (not (= lambda!464492 lambda!464483))))

(assert (=> b!7496102 true))

(assert (=> b!7496102 true))

(declare-fun bs!1935817 () Bool)

(declare-fun b!7496103 () Bool)

(assert (= bs!1935817 (and b!7496103 b!7496102)))

(declare-fun lambda!464493 () Int)

(assert (=> bs!1935817 (not (= lambda!464493 lambda!464492))))

(declare-fun bs!1935818 () Bool)

(assert (= bs!1935818 (and b!7496103 b!7495972)))

(assert (=> bs!1935818 (= (and (= (_1!37669 lt!2630584) s!13591) (= (regOne!39810 lt!2630591) lt!2630591) (= (regTwo!39810 lt!2630591) rTail!78)) (= lambda!464493 lambda!464481))))

(declare-fun bs!1935819 () Bool)

(assert (= bs!1935819 (and b!7496103 b!7495975)))

(assert (=> bs!1935819 (= (and (= (_1!37669 lt!2630584) s!13591) (= (regOne!39810 lt!2630591) r1!5845) (= (regTwo!39810 lt!2630591) rTail!78)) (= lambda!464493 lambda!464483))))

(assert (=> bs!1935819 (not (= lambda!464493 lambda!464482))))

(assert (=> bs!1935818 (not (= lambda!464493 lambda!464480))))

(assert (=> b!7496103 true))

(assert (=> b!7496103 true))

(declare-fun b!7496098 () Bool)

(declare-fun c!1383950 () Bool)

(assert (=> b!7496098 (= c!1383950 ((_ is ElementMatch!19649) lt!2630591))))

(declare-fun e!4469525 () Bool)

(declare-fun e!4469528 () Bool)

(assert (=> b!7496098 (= e!4469525 e!4469528)))

(declare-fun b!7496099 () Bool)

(declare-fun c!1383949 () Bool)

(assert (=> b!7496099 (= c!1383949 ((_ is Union!19649) lt!2630591))))

(declare-fun e!4469527 () Bool)

(assert (=> b!7496099 (= e!4469528 e!4469527)))

(declare-fun b!7496100 () Bool)

(assert (=> b!7496100 (= e!4469528 (= (_1!37669 lt!2630584) (Cons!72239 (c!1383920 lt!2630591) Nil!72239)))))

(declare-fun bm!688132 () Bool)

(declare-fun call!688138 () Bool)

(declare-fun isEmpty!41273 (List!72363) Bool)

(assert (=> bm!688132 (= call!688138 (isEmpty!41273 (_1!37669 lt!2630584)))))

(declare-fun b!7496101 () Bool)

(declare-fun res!3006969 () Bool)

(declare-fun e!4469523 () Bool)

(assert (=> b!7496101 (=> res!3006969 e!4469523)))

(assert (=> b!7496101 (= res!3006969 call!688138)))

(declare-fun e!4469526 () Bool)

(assert (=> b!7496101 (= e!4469526 e!4469523)))

(declare-fun call!688137 () Bool)

(assert (=> b!7496102 (= e!4469523 call!688137)))

(assert (=> b!7496103 (= e!4469526 call!688137)))

(declare-fun b!7496104 () Bool)

(declare-fun e!4469524 () Bool)

(assert (=> b!7496104 (= e!4469524 (matchRSpec!4326 (regTwo!39811 lt!2630591) (_1!37669 lt!2630584)))))

(declare-fun b!7496105 () Bool)

(declare-fun e!4469529 () Bool)

(assert (=> b!7496105 (= e!4469529 e!4469525)))

(declare-fun res!3006970 () Bool)

(assert (=> b!7496105 (= res!3006970 (not ((_ is EmptyLang!19649) lt!2630591)))))

(assert (=> b!7496105 (=> (not res!3006970) (not e!4469525))))

(declare-fun d!2301776 () Bool)

(declare-fun c!1383951 () Bool)

(assert (=> d!2301776 (= c!1383951 ((_ is EmptyExpr!19649) lt!2630591))))

(assert (=> d!2301776 (= (matchRSpec!4326 lt!2630591 (_1!37669 lt!2630584)) e!4469529)))

(declare-fun b!7496106 () Bool)

(assert (=> b!7496106 (= e!4469527 e!4469526)))

(declare-fun c!1383952 () Bool)

(assert (=> b!7496106 (= c!1383952 ((_ is Star!19649) lt!2630591))))

(declare-fun bm!688133 () Bool)

(assert (=> bm!688133 (= call!688137 (Exists!4266 (ite c!1383952 lambda!464492 lambda!464493)))))

(declare-fun b!7496107 () Bool)

(assert (=> b!7496107 (= e!4469527 e!4469524)))

(declare-fun res!3006971 () Bool)

(assert (=> b!7496107 (= res!3006971 (matchRSpec!4326 (regOne!39811 lt!2630591) (_1!37669 lt!2630584)))))

(assert (=> b!7496107 (=> res!3006971 e!4469524)))

(declare-fun b!7496108 () Bool)

(assert (=> b!7496108 (= e!4469529 call!688138)))

(assert (= (and d!2301776 c!1383951) b!7496108))

(assert (= (and d!2301776 (not c!1383951)) b!7496105))

(assert (= (and b!7496105 res!3006970) b!7496098))

(assert (= (and b!7496098 c!1383950) b!7496100))

(assert (= (and b!7496098 (not c!1383950)) b!7496099))

(assert (= (and b!7496099 c!1383949) b!7496107))

(assert (= (and b!7496099 (not c!1383949)) b!7496106))

(assert (= (and b!7496107 (not res!3006971)) b!7496104))

(assert (= (and b!7496106 c!1383952) b!7496101))

(assert (= (and b!7496106 (not c!1383952)) b!7496103))

(assert (= (and b!7496101 (not res!3006969)) b!7496102))

(assert (= (or b!7496102 b!7496103) bm!688133))

(assert (= (or b!7496108 b!7496101) bm!688132))

(declare-fun m!8079878 () Bool)

(assert (=> bm!688132 m!8079878))

(declare-fun m!8079880 () Bool)

(assert (=> b!7496104 m!8079880))

(declare-fun m!8079882 () Bool)

(assert (=> bm!688133 m!8079882))

(declare-fun m!8079884 () Bool)

(assert (=> b!7496107 m!8079884))

(assert (=> b!7495973 d!2301776))

(declare-fun b!7496159 () Bool)

(declare-fun e!4469560 () Bool)

(declare-fun head!15381 (List!72363) C!39572)

(assert (=> b!7496159 (= e!4469560 (not (= (head!15381 (_1!37669 lt!2630584)) (c!1383920 r2!5783))))))

(declare-fun b!7496160 () Bool)

(declare-fun e!4469564 () Bool)

(declare-fun derivativeStep!5641 (Regex!19649 C!39572) Regex!19649)

(declare-fun tail!14950 (List!72363) List!72363)

(assert (=> b!7496160 (= e!4469564 (matchR!9411 (derivativeStep!5641 r2!5783 (head!15381 (_1!37669 lt!2630584))) (tail!14950 (_1!37669 lt!2630584))))))

(declare-fun b!7496161 () Bool)

(declare-fun e!4469563 () Bool)

(declare-fun lt!2630602 () Bool)

(declare-fun call!688147 () Bool)

(assert (=> b!7496161 (= e!4469563 (= lt!2630602 call!688147))))

(declare-fun b!7496162 () Bool)

(declare-fun e!4469559 () Bool)

(assert (=> b!7496162 (= e!4469559 (= (head!15381 (_1!37669 lt!2630584)) (c!1383920 r2!5783)))))

(declare-fun b!7496164 () Bool)

(declare-fun e!4469561 () Bool)

(declare-fun e!4469558 () Bool)

(assert (=> b!7496164 (= e!4469561 e!4469558)))

(declare-fun res!3006996 () Bool)

(assert (=> b!7496164 (=> (not res!3006996) (not e!4469558))))

(assert (=> b!7496164 (= res!3006996 (not lt!2630602))))

(declare-fun b!7496165 () Bool)

(declare-fun res!3006998 () Bool)

(assert (=> b!7496165 (=> res!3006998 e!4469560)))

(assert (=> b!7496165 (= res!3006998 (not (isEmpty!41273 (tail!14950 (_1!37669 lt!2630584)))))))

(declare-fun b!7496166 () Bool)

(assert (=> b!7496166 (= e!4469558 e!4469560)))

(declare-fun res!3007001 () Bool)

(assert (=> b!7496166 (=> res!3007001 e!4469560)))

(assert (=> b!7496166 (= res!3007001 call!688147)))

(declare-fun b!7496167 () Bool)

(declare-fun res!3006994 () Bool)

(assert (=> b!7496167 (=> (not res!3006994) (not e!4469559))))

(assert (=> b!7496167 (= res!3006994 (not call!688147))))

(declare-fun bm!688142 () Bool)

(assert (=> bm!688142 (= call!688147 (isEmpty!41273 (_1!37669 lt!2630584)))))

(declare-fun d!2301780 () Bool)

(assert (=> d!2301780 e!4469563))

(declare-fun c!1383969 () Bool)

(assert (=> d!2301780 (= c!1383969 ((_ is EmptyExpr!19649) r2!5783))))

(assert (=> d!2301780 (= lt!2630602 e!4469564)))

(declare-fun c!1383968 () Bool)

(assert (=> d!2301780 (= c!1383968 (isEmpty!41273 (_1!37669 lt!2630584)))))

(assert (=> d!2301780 (validRegex!10163 r2!5783)))

(assert (=> d!2301780 (= (matchR!9411 r2!5783 (_1!37669 lt!2630584)) lt!2630602)))

(declare-fun b!7496163 () Bool)

(declare-fun e!4469562 () Bool)

(assert (=> b!7496163 (= e!4469562 (not lt!2630602))))

(declare-fun b!7496168 () Bool)

(assert (=> b!7496168 (= e!4469563 e!4469562)))

(declare-fun c!1383967 () Bool)

(assert (=> b!7496168 (= c!1383967 ((_ is EmptyLang!19649) r2!5783))))

(declare-fun b!7496169 () Bool)

(declare-fun res!3006995 () Bool)

(assert (=> b!7496169 (=> res!3006995 e!4469561)))

(assert (=> b!7496169 (= res!3006995 e!4469559)))

(declare-fun res!3006997 () Bool)

(assert (=> b!7496169 (=> (not res!3006997) (not e!4469559))))

(assert (=> b!7496169 (= res!3006997 lt!2630602)))

(declare-fun b!7496170 () Bool)

(declare-fun res!3007000 () Bool)

(assert (=> b!7496170 (=> res!3007000 e!4469561)))

(assert (=> b!7496170 (= res!3007000 (not ((_ is ElementMatch!19649) r2!5783)))))

(assert (=> b!7496170 (= e!4469562 e!4469561)))

(declare-fun b!7496171 () Bool)

(declare-fun res!3006999 () Bool)

(assert (=> b!7496171 (=> (not res!3006999) (not e!4469559))))

(assert (=> b!7496171 (= res!3006999 (isEmpty!41273 (tail!14950 (_1!37669 lt!2630584))))))

(declare-fun b!7496172 () Bool)

(assert (=> b!7496172 (= e!4469564 (nullable!8584 r2!5783))))

(assert (= (and d!2301780 c!1383968) b!7496172))

(assert (= (and d!2301780 (not c!1383968)) b!7496160))

(assert (= (and d!2301780 c!1383969) b!7496161))

(assert (= (and d!2301780 (not c!1383969)) b!7496168))

(assert (= (and b!7496168 c!1383967) b!7496163))

(assert (= (and b!7496168 (not c!1383967)) b!7496170))

(assert (= (and b!7496170 (not res!3007000)) b!7496169))

(assert (= (and b!7496169 res!3006997) b!7496167))

(assert (= (and b!7496167 res!3006994) b!7496171))

(assert (= (and b!7496171 res!3006999) b!7496162))

(assert (= (and b!7496169 (not res!3006995)) b!7496164))

(assert (= (and b!7496164 res!3006996) b!7496166))

(assert (= (and b!7496166 (not res!3007001)) b!7496165))

(assert (= (and b!7496165 (not res!3006998)) b!7496159))

(assert (= (or b!7496161 b!7496166 b!7496167) bm!688142))

(declare-fun m!8079902 () Bool)

(assert (=> b!7496159 m!8079902))

(assert (=> d!2301780 m!8079878))

(assert (=> d!2301780 m!8079786))

(declare-fun m!8079904 () Bool)

(assert (=> b!7496172 m!8079904))

(declare-fun m!8079906 () Bool)

(assert (=> b!7496165 m!8079906))

(assert (=> b!7496165 m!8079906))

(declare-fun m!8079908 () Bool)

(assert (=> b!7496165 m!8079908))

(assert (=> bm!688142 m!8079878))

(assert (=> b!7496171 m!8079906))

(assert (=> b!7496171 m!8079906))

(assert (=> b!7496171 m!8079908))

(assert (=> b!7496160 m!8079902))

(assert (=> b!7496160 m!8079902))

(declare-fun m!8079910 () Bool)

(assert (=> b!7496160 m!8079910))

(assert (=> b!7496160 m!8079906))

(assert (=> b!7496160 m!8079910))

(assert (=> b!7496160 m!8079906))

(declare-fun m!8079912 () Bool)

(assert (=> b!7496160 m!8079912))

(assert (=> b!7496162 m!8079902))

(assert (=> b!7495973 d!2301780))

(declare-fun b!7496173 () Bool)

(declare-fun e!4469567 () Bool)

(assert (=> b!7496173 (= e!4469567 (not (= (head!15381 (_1!37669 lt!2630584)) (c!1383920 lt!2630591))))))

(declare-fun b!7496174 () Bool)

(declare-fun e!4469571 () Bool)

(assert (=> b!7496174 (= e!4469571 (matchR!9411 (derivativeStep!5641 lt!2630591 (head!15381 (_1!37669 lt!2630584))) (tail!14950 (_1!37669 lt!2630584))))))

(declare-fun b!7496175 () Bool)

(declare-fun e!4469570 () Bool)

(declare-fun lt!2630603 () Bool)

(declare-fun call!688148 () Bool)

(assert (=> b!7496175 (= e!4469570 (= lt!2630603 call!688148))))

(declare-fun b!7496176 () Bool)

(declare-fun e!4469566 () Bool)

(assert (=> b!7496176 (= e!4469566 (= (head!15381 (_1!37669 lt!2630584)) (c!1383920 lt!2630591)))))

(declare-fun b!7496178 () Bool)

(declare-fun e!4469568 () Bool)

(declare-fun e!4469565 () Bool)

(assert (=> b!7496178 (= e!4469568 e!4469565)))

(declare-fun res!3007004 () Bool)

(assert (=> b!7496178 (=> (not res!3007004) (not e!4469565))))

(assert (=> b!7496178 (= res!3007004 (not lt!2630603))))

(declare-fun b!7496179 () Bool)

(declare-fun res!3007006 () Bool)

(assert (=> b!7496179 (=> res!3007006 e!4469567)))

(assert (=> b!7496179 (= res!3007006 (not (isEmpty!41273 (tail!14950 (_1!37669 lt!2630584)))))))

(declare-fun b!7496180 () Bool)

(assert (=> b!7496180 (= e!4469565 e!4469567)))

(declare-fun res!3007009 () Bool)

(assert (=> b!7496180 (=> res!3007009 e!4469567)))

(assert (=> b!7496180 (= res!3007009 call!688148)))

(declare-fun b!7496181 () Bool)

(declare-fun res!3007002 () Bool)

(assert (=> b!7496181 (=> (not res!3007002) (not e!4469566))))

(assert (=> b!7496181 (= res!3007002 (not call!688148))))

(declare-fun bm!688143 () Bool)

(assert (=> bm!688143 (= call!688148 (isEmpty!41273 (_1!37669 lt!2630584)))))

(declare-fun d!2301788 () Bool)

(assert (=> d!2301788 e!4469570))

(declare-fun c!1383972 () Bool)

(assert (=> d!2301788 (= c!1383972 ((_ is EmptyExpr!19649) lt!2630591))))

(assert (=> d!2301788 (= lt!2630603 e!4469571)))

(declare-fun c!1383971 () Bool)

(assert (=> d!2301788 (= c!1383971 (isEmpty!41273 (_1!37669 lt!2630584)))))

(assert (=> d!2301788 (validRegex!10163 lt!2630591)))

(assert (=> d!2301788 (= (matchR!9411 lt!2630591 (_1!37669 lt!2630584)) lt!2630603)))

(declare-fun b!7496177 () Bool)

(declare-fun e!4469569 () Bool)

(assert (=> b!7496177 (= e!4469569 (not lt!2630603))))

(declare-fun b!7496182 () Bool)

(assert (=> b!7496182 (= e!4469570 e!4469569)))

(declare-fun c!1383970 () Bool)

(assert (=> b!7496182 (= c!1383970 ((_ is EmptyLang!19649) lt!2630591))))

(declare-fun b!7496183 () Bool)

(declare-fun res!3007003 () Bool)

(assert (=> b!7496183 (=> res!3007003 e!4469568)))

(assert (=> b!7496183 (= res!3007003 e!4469566)))

(declare-fun res!3007005 () Bool)

(assert (=> b!7496183 (=> (not res!3007005) (not e!4469566))))

(assert (=> b!7496183 (= res!3007005 lt!2630603)))

(declare-fun b!7496184 () Bool)

(declare-fun res!3007008 () Bool)

(assert (=> b!7496184 (=> res!3007008 e!4469568)))

(assert (=> b!7496184 (= res!3007008 (not ((_ is ElementMatch!19649) lt!2630591)))))

(assert (=> b!7496184 (= e!4469569 e!4469568)))

(declare-fun b!7496185 () Bool)

(declare-fun res!3007007 () Bool)

(assert (=> b!7496185 (=> (not res!3007007) (not e!4469566))))

(assert (=> b!7496185 (= res!3007007 (isEmpty!41273 (tail!14950 (_1!37669 lt!2630584))))))

(declare-fun b!7496186 () Bool)

(assert (=> b!7496186 (= e!4469571 (nullable!8584 lt!2630591))))

(assert (= (and d!2301788 c!1383971) b!7496186))

(assert (= (and d!2301788 (not c!1383971)) b!7496174))

(assert (= (and d!2301788 c!1383972) b!7496175))

(assert (= (and d!2301788 (not c!1383972)) b!7496182))

(assert (= (and b!7496182 c!1383970) b!7496177))

(assert (= (and b!7496182 (not c!1383970)) b!7496184))

(assert (= (and b!7496184 (not res!3007008)) b!7496183))

(assert (= (and b!7496183 res!3007005) b!7496181))

(assert (= (and b!7496181 res!3007002) b!7496185))

(assert (= (and b!7496185 res!3007007) b!7496176))

(assert (= (and b!7496183 (not res!3007003)) b!7496178))

(assert (= (and b!7496178 res!3007004) b!7496180))

(assert (= (and b!7496180 (not res!3007009)) b!7496179))

(assert (= (and b!7496179 (not res!3007006)) b!7496173))

(assert (= (or b!7496175 b!7496180 b!7496181) bm!688143))

(assert (=> b!7496173 m!8079902))

(assert (=> d!2301788 m!8079878))

(assert (=> d!2301788 m!8079816))

(declare-fun m!8079914 () Bool)

(assert (=> b!7496186 m!8079914))

(assert (=> b!7496179 m!8079906))

(assert (=> b!7496179 m!8079906))

(assert (=> b!7496179 m!8079908))

(assert (=> bm!688143 m!8079878))

(assert (=> b!7496185 m!8079906))

(assert (=> b!7496185 m!8079906))

(assert (=> b!7496185 m!8079908))

(assert (=> b!7496174 m!8079902))

(assert (=> b!7496174 m!8079902))

(declare-fun m!8079916 () Bool)

(assert (=> b!7496174 m!8079916))

(assert (=> b!7496174 m!8079906))

(assert (=> b!7496174 m!8079916))

(assert (=> b!7496174 m!8079906))

(declare-fun m!8079918 () Bool)

(assert (=> b!7496174 m!8079918))

(assert (=> b!7496176 m!8079902))

(assert (=> b!7495973 d!2301788))

(declare-fun bs!1935835 () Bool)

(declare-fun b!7496191 () Bool)

(assert (= bs!1935835 (and b!7496191 b!7496102)))

(declare-fun lambda!464498 () Int)

(assert (=> bs!1935835 (= (and (= (reg!19978 r1!5845) (reg!19978 lt!2630591)) (= r1!5845 lt!2630591)) (= lambda!464498 lambda!464492))))

(declare-fun bs!1935836 () Bool)

(assert (= bs!1935836 (and b!7496191 b!7495972)))

(assert (=> bs!1935836 (not (= lambda!464498 lambda!464481))))

(declare-fun bs!1935837 () Bool)

(assert (= bs!1935837 (and b!7496191 b!7495975)))

(assert (=> bs!1935837 (not (= lambda!464498 lambda!464482))))

(assert (=> bs!1935836 (not (= lambda!464498 lambda!464480))))

(declare-fun bs!1935838 () Bool)

(assert (= bs!1935838 (and b!7496191 b!7496103)))

(assert (=> bs!1935838 (not (= lambda!464498 lambda!464493))))

(assert (=> bs!1935837 (not (= lambda!464498 lambda!464483))))

(assert (=> b!7496191 true))

(assert (=> b!7496191 true))

(declare-fun bs!1935839 () Bool)

(declare-fun b!7496192 () Bool)

(assert (= bs!1935839 (and b!7496192 b!7496102)))

(declare-fun lambda!464499 () Int)

(assert (=> bs!1935839 (not (= lambda!464499 lambda!464492))))

(declare-fun bs!1935840 () Bool)

(assert (= bs!1935840 (and b!7496192 b!7495972)))

(assert (=> bs!1935840 (= (and (= (_1!37669 lt!2630584) s!13591) (= (regOne!39810 r1!5845) lt!2630591) (= (regTwo!39810 r1!5845) rTail!78)) (= lambda!464499 lambda!464481))))

(assert (=> bs!1935840 (not (= lambda!464499 lambda!464480))))

(declare-fun bs!1935841 () Bool)

(assert (= bs!1935841 (and b!7496192 b!7496103)))

(assert (=> bs!1935841 (= (and (= (regOne!39810 r1!5845) (regOne!39810 lt!2630591)) (= (regTwo!39810 r1!5845) (regTwo!39810 lt!2630591))) (= lambda!464499 lambda!464493))))

(declare-fun bs!1935842 () Bool)

(assert (= bs!1935842 (and b!7496192 b!7495975)))

(assert (=> bs!1935842 (= (and (= (_1!37669 lt!2630584) s!13591) (= (regOne!39810 r1!5845) r1!5845) (= (regTwo!39810 r1!5845) rTail!78)) (= lambda!464499 lambda!464483))))

(declare-fun bs!1935843 () Bool)

(assert (= bs!1935843 (and b!7496192 b!7496191)))

(assert (=> bs!1935843 (not (= lambda!464499 lambda!464498))))

(assert (=> bs!1935842 (not (= lambda!464499 lambda!464482))))

(assert (=> b!7496192 true))

(assert (=> b!7496192 true))

(declare-fun b!7496187 () Bool)

(declare-fun c!1383974 () Bool)

(assert (=> b!7496187 (= c!1383974 ((_ is ElementMatch!19649) r1!5845))))

(declare-fun e!4469574 () Bool)

(declare-fun e!4469577 () Bool)

(assert (=> b!7496187 (= e!4469574 e!4469577)))

(declare-fun b!7496188 () Bool)

(declare-fun c!1383973 () Bool)

(assert (=> b!7496188 (= c!1383973 ((_ is Union!19649) r1!5845))))

(declare-fun e!4469576 () Bool)

(assert (=> b!7496188 (= e!4469577 e!4469576)))

(declare-fun b!7496189 () Bool)

(assert (=> b!7496189 (= e!4469577 (= (_1!37669 lt!2630584) (Cons!72239 (c!1383920 r1!5845) Nil!72239)))))

(declare-fun bm!688144 () Bool)

(declare-fun call!688150 () Bool)

(assert (=> bm!688144 (= call!688150 (isEmpty!41273 (_1!37669 lt!2630584)))))

(declare-fun b!7496190 () Bool)

(declare-fun res!3007010 () Bool)

(declare-fun e!4469572 () Bool)

(assert (=> b!7496190 (=> res!3007010 e!4469572)))

(assert (=> b!7496190 (= res!3007010 call!688150)))

(declare-fun e!4469575 () Bool)

(assert (=> b!7496190 (= e!4469575 e!4469572)))

(declare-fun call!688149 () Bool)

(assert (=> b!7496191 (= e!4469572 call!688149)))

(assert (=> b!7496192 (= e!4469575 call!688149)))

(declare-fun b!7496193 () Bool)

(declare-fun e!4469573 () Bool)

(assert (=> b!7496193 (= e!4469573 (matchRSpec!4326 (regTwo!39811 r1!5845) (_1!37669 lt!2630584)))))

(declare-fun b!7496194 () Bool)

(declare-fun e!4469578 () Bool)

(assert (=> b!7496194 (= e!4469578 e!4469574)))

(declare-fun res!3007011 () Bool)

(assert (=> b!7496194 (= res!3007011 (not ((_ is EmptyLang!19649) r1!5845)))))

(assert (=> b!7496194 (=> (not res!3007011) (not e!4469574))))

(declare-fun d!2301790 () Bool)

(declare-fun c!1383975 () Bool)

(assert (=> d!2301790 (= c!1383975 ((_ is EmptyExpr!19649) r1!5845))))

(assert (=> d!2301790 (= (matchRSpec!4326 r1!5845 (_1!37669 lt!2630584)) e!4469578)))

(declare-fun b!7496195 () Bool)

(assert (=> b!7496195 (= e!4469576 e!4469575)))

(declare-fun c!1383976 () Bool)

(assert (=> b!7496195 (= c!1383976 ((_ is Star!19649) r1!5845))))

(declare-fun bm!688145 () Bool)

(assert (=> bm!688145 (= call!688149 (Exists!4266 (ite c!1383976 lambda!464498 lambda!464499)))))

(declare-fun b!7496196 () Bool)

(assert (=> b!7496196 (= e!4469576 e!4469573)))

(declare-fun res!3007012 () Bool)

(assert (=> b!7496196 (= res!3007012 (matchRSpec!4326 (regOne!39811 r1!5845) (_1!37669 lt!2630584)))))

(assert (=> b!7496196 (=> res!3007012 e!4469573)))

(declare-fun b!7496197 () Bool)

(assert (=> b!7496197 (= e!4469578 call!688150)))

(assert (= (and d!2301790 c!1383975) b!7496197))

(assert (= (and d!2301790 (not c!1383975)) b!7496194))

(assert (= (and b!7496194 res!3007011) b!7496187))

(assert (= (and b!7496187 c!1383974) b!7496189))

(assert (= (and b!7496187 (not c!1383974)) b!7496188))

(assert (= (and b!7496188 c!1383973) b!7496196))

(assert (= (and b!7496188 (not c!1383973)) b!7496195))

(assert (= (and b!7496196 (not res!3007012)) b!7496193))

(assert (= (and b!7496195 c!1383976) b!7496190))

(assert (= (and b!7496195 (not c!1383976)) b!7496192))

(assert (= (and b!7496190 (not res!3007010)) b!7496191))

(assert (= (or b!7496191 b!7496192) bm!688145))

(assert (= (or b!7496197 b!7496190) bm!688144))

(assert (=> bm!688144 m!8079878))

(declare-fun m!8079920 () Bool)

(assert (=> b!7496193 m!8079920))

(declare-fun m!8079922 () Bool)

(assert (=> bm!688145 m!8079922))

(declare-fun m!8079924 () Bool)

(assert (=> b!7496196 m!8079924))

(assert (=> b!7495973 d!2301790))

(declare-fun d!2301792 () Bool)

(assert (=> d!2301792 (= (matchR!9411 r1!5845 (_1!37669 lt!2630584)) (matchRSpec!4326 r1!5845 (_1!37669 lt!2630584)))))

(declare-fun lt!2630606 () Unit!166129)

(assert (=> d!2301792 (= lt!2630606 (choose!57944 r1!5845 (_1!37669 lt!2630584)))))

(assert (=> d!2301792 (validRegex!10163 r1!5845)))

(assert (=> d!2301792 (= (mainMatchTheorem!4320 r1!5845 (_1!37669 lt!2630584)) lt!2630606)))

(declare-fun bs!1935844 () Bool)

(assert (= bs!1935844 d!2301792))

(assert (=> bs!1935844 m!8079832))

(assert (=> bs!1935844 m!8079848))

(declare-fun m!8079926 () Bool)

(assert (=> bs!1935844 m!8079926))

(assert (=> bs!1935844 m!8079814))

(assert (=> b!7495973 d!2301792))

(declare-fun d!2301794 () Bool)

(assert (=> d!2301794 (= (matchR!9411 r2!5783 (_1!37669 lt!2630584)) (matchRSpec!4326 r2!5783 (_1!37669 lt!2630584)))))

(declare-fun lt!2630607 () Unit!166129)

(assert (=> d!2301794 (= lt!2630607 (choose!57944 r2!5783 (_1!37669 lt!2630584)))))

(assert (=> d!2301794 (validRegex!10163 r2!5783)))

(assert (=> d!2301794 (= (mainMatchTheorem!4320 r2!5783 (_1!37669 lt!2630584)) lt!2630607)))

(declare-fun bs!1935845 () Bool)

(assert (= bs!1935845 d!2301794))

(assert (=> bs!1935845 m!8079852))

(assert (=> bs!1935845 m!8079860))

(declare-fun m!8079928 () Bool)

(assert (=> bs!1935845 m!8079928))

(assert (=> bs!1935845 m!8079786))

(assert (=> b!7495973 d!2301794))

(declare-fun bs!1935846 () Bool)

(declare-fun b!7496230 () Bool)

(assert (= bs!1935846 (and b!7496230 b!7496102)))

(declare-fun lambda!464500 () Int)

(assert (=> bs!1935846 (= (and (= (reg!19978 r2!5783) (reg!19978 lt!2630591)) (= r2!5783 lt!2630591)) (= lambda!464500 lambda!464492))))

(declare-fun bs!1935847 () Bool)

(assert (= bs!1935847 (and b!7496230 b!7495972)))

(assert (=> bs!1935847 (not (= lambda!464500 lambda!464481))))

(declare-fun bs!1935848 () Bool)

(assert (= bs!1935848 (and b!7496230 b!7496192)))

(assert (=> bs!1935848 (not (= lambda!464500 lambda!464499))))

(assert (=> bs!1935847 (not (= lambda!464500 lambda!464480))))

(declare-fun bs!1935849 () Bool)

(assert (= bs!1935849 (and b!7496230 b!7496103)))

(assert (=> bs!1935849 (not (= lambda!464500 lambda!464493))))

(declare-fun bs!1935850 () Bool)

(assert (= bs!1935850 (and b!7496230 b!7495975)))

(assert (=> bs!1935850 (not (= lambda!464500 lambda!464483))))

(declare-fun bs!1935851 () Bool)

(assert (= bs!1935851 (and b!7496230 b!7496191)))

(assert (=> bs!1935851 (= (and (= (reg!19978 r2!5783) (reg!19978 r1!5845)) (= r2!5783 r1!5845)) (= lambda!464500 lambda!464498))))

(assert (=> bs!1935850 (not (= lambda!464500 lambda!464482))))

(assert (=> b!7496230 true))

(assert (=> b!7496230 true))

(declare-fun bs!1935852 () Bool)

(declare-fun b!7496231 () Bool)

(assert (= bs!1935852 (and b!7496231 b!7496102)))

(declare-fun lambda!464501 () Int)

(assert (=> bs!1935852 (not (= lambda!464501 lambda!464492))))

(declare-fun bs!1935853 () Bool)

(assert (= bs!1935853 (and b!7496231 b!7495972)))

(assert (=> bs!1935853 (= (and (= (_1!37669 lt!2630584) s!13591) (= (regOne!39810 r2!5783) lt!2630591) (= (regTwo!39810 r2!5783) rTail!78)) (= lambda!464501 lambda!464481))))

(declare-fun bs!1935854 () Bool)

(assert (= bs!1935854 (and b!7496231 b!7496192)))

(assert (=> bs!1935854 (= (and (= (regOne!39810 r2!5783) (regOne!39810 r1!5845)) (= (regTwo!39810 r2!5783) (regTwo!39810 r1!5845))) (= lambda!464501 lambda!464499))))

(declare-fun bs!1935855 () Bool)

(assert (= bs!1935855 (and b!7496231 b!7496230)))

(assert (=> bs!1935855 (not (= lambda!464501 lambda!464500))))

(assert (=> bs!1935853 (not (= lambda!464501 lambda!464480))))

(declare-fun bs!1935856 () Bool)

(assert (= bs!1935856 (and b!7496231 b!7496103)))

(assert (=> bs!1935856 (= (and (= (regOne!39810 r2!5783) (regOne!39810 lt!2630591)) (= (regTwo!39810 r2!5783) (regTwo!39810 lt!2630591))) (= lambda!464501 lambda!464493))))

(declare-fun bs!1935857 () Bool)

(assert (= bs!1935857 (and b!7496231 b!7495975)))

(assert (=> bs!1935857 (= (and (= (_1!37669 lt!2630584) s!13591) (= (regOne!39810 r2!5783) r1!5845) (= (regTwo!39810 r2!5783) rTail!78)) (= lambda!464501 lambda!464483))))

(declare-fun bs!1935858 () Bool)

(assert (= bs!1935858 (and b!7496231 b!7496191)))

(assert (=> bs!1935858 (not (= lambda!464501 lambda!464498))))

(assert (=> bs!1935857 (not (= lambda!464501 lambda!464482))))

(assert (=> b!7496231 true))

(assert (=> b!7496231 true))

(declare-fun b!7496226 () Bool)

(declare-fun c!1383984 () Bool)

(assert (=> b!7496226 (= c!1383984 ((_ is ElementMatch!19649) r2!5783))))

(declare-fun e!4469595 () Bool)

(declare-fun e!4469598 () Bool)

(assert (=> b!7496226 (= e!4469595 e!4469598)))

(declare-fun b!7496227 () Bool)

(declare-fun c!1383983 () Bool)

(assert (=> b!7496227 (= c!1383983 ((_ is Union!19649) r2!5783))))

(declare-fun e!4469597 () Bool)

(assert (=> b!7496227 (= e!4469598 e!4469597)))

(declare-fun b!7496228 () Bool)

(assert (=> b!7496228 (= e!4469598 (= (_1!37669 lt!2630584) (Cons!72239 (c!1383920 r2!5783) Nil!72239)))))

(declare-fun bm!688148 () Bool)

(declare-fun call!688154 () Bool)

(assert (=> bm!688148 (= call!688154 (isEmpty!41273 (_1!37669 lt!2630584)))))

(declare-fun b!7496229 () Bool)

(declare-fun res!3007029 () Bool)

(declare-fun e!4469593 () Bool)

(assert (=> b!7496229 (=> res!3007029 e!4469593)))

(assert (=> b!7496229 (= res!3007029 call!688154)))

(declare-fun e!4469596 () Bool)

(assert (=> b!7496229 (= e!4469596 e!4469593)))

(declare-fun call!688153 () Bool)

(assert (=> b!7496230 (= e!4469593 call!688153)))

(assert (=> b!7496231 (= e!4469596 call!688153)))

(declare-fun b!7496232 () Bool)

(declare-fun e!4469594 () Bool)

(assert (=> b!7496232 (= e!4469594 (matchRSpec!4326 (regTwo!39811 r2!5783) (_1!37669 lt!2630584)))))

(declare-fun b!7496233 () Bool)

(declare-fun e!4469599 () Bool)

(assert (=> b!7496233 (= e!4469599 e!4469595)))

(declare-fun res!3007030 () Bool)

(assert (=> b!7496233 (= res!3007030 (not ((_ is EmptyLang!19649) r2!5783)))))

(assert (=> b!7496233 (=> (not res!3007030) (not e!4469595))))

(declare-fun d!2301796 () Bool)

(declare-fun c!1383985 () Bool)

(assert (=> d!2301796 (= c!1383985 ((_ is EmptyExpr!19649) r2!5783))))

(assert (=> d!2301796 (= (matchRSpec!4326 r2!5783 (_1!37669 lt!2630584)) e!4469599)))

(declare-fun b!7496234 () Bool)

(assert (=> b!7496234 (= e!4469597 e!4469596)))

(declare-fun c!1383986 () Bool)

(assert (=> b!7496234 (= c!1383986 ((_ is Star!19649) r2!5783))))

(declare-fun bm!688149 () Bool)

(assert (=> bm!688149 (= call!688153 (Exists!4266 (ite c!1383986 lambda!464500 lambda!464501)))))

(declare-fun b!7496235 () Bool)

(assert (=> b!7496235 (= e!4469597 e!4469594)))

(declare-fun res!3007031 () Bool)

(assert (=> b!7496235 (= res!3007031 (matchRSpec!4326 (regOne!39811 r2!5783) (_1!37669 lt!2630584)))))

(assert (=> b!7496235 (=> res!3007031 e!4469594)))

(declare-fun b!7496236 () Bool)

(assert (=> b!7496236 (= e!4469599 call!688154)))

(assert (= (and d!2301796 c!1383985) b!7496236))

(assert (= (and d!2301796 (not c!1383985)) b!7496233))

(assert (= (and b!7496233 res!3007030) b!7496226))

(assert (= (and b!7496226 c!1383984) b!7496228))

(assert (= (and b!7496226 (not c!1383984)) b!7496227))

(assert (= (and b!7496227 c!1383983) b!7496235))

(assert (= (and b!7496227 (not c!1383983)) b!7496234))

(assert (= (and b!7496235 (not res!3007031)) b!7496232))

(assert (= (and b!7496234 c!1383986) b!7496229))

(assert (= (and b!7496234 (not c!1383986)) b!7496231))

(assert (= (and b!7496229 (not res!3007029)) b!7496230))

(assert (= (or b!7496230 b!7496231) bm!688149))

(assert (= (or b!7496236 b!7496229) bm!688148))

(assert (=> bm!688148 m!8079878))

(declare-fun m!8079944 () Bool)

(assert (=> b!7496232 m!8079944))

(declare-fun m!8079946 () Bool)

(assert (=> bm!688149 m!8079946))

(declare-fun m!8079948 () Bool)

(assert (=> b!7496235 m!8079948))

(assert (=> b!7495973 d!2301796))

(declare-fun b!7496262 () Bool)

(declare-fun e!4469619 () Bool)

(declare-fun call!688159 () Bool)

(assert (=> b!7496262 (= e!4469619 call!688159)))

(declare-fun bm!688153 () Bool)

(declare-fun call!688158 () Bool)

(declare-fun call!688160 () Bool)

(assert (=> bm!688153 (= call!688158 call!688160)))

(declare-fun b!7496263 () Bool)

(declare-fun e!4469618 () Bool)

(assert (=> b!7496263 (= e!4469618 call!688159)))

(declare-fun b!7496264 () Bool)

(declare-fun e!4469620 () Bool)

(declare-fun e!4469615 () Bool)

(assert (=> b!7496264 (= e!4469620 e!4469615)))

(declare-fun c!1383995 () Bool)

(assert (=> b!7496264 (= c!1383995 ((_ is Star!19649) lt!2630591))))

(declare-fun b!7496265 () Bool)

(declare-fun e!4469614 () Bool)

(assert (=> b!7496265 (= e!4469614 call!688160)))

(declare-fun bm!688154 () Bool)

(declare-fun c!1383994 () Bool)

(assert (=> bm!688154 (= call!688159 (validRegex!10163 (ite c!1383994 (regTwo!39811 lt!2630591) (regTwo!39810 lt!2630591))))))

(declare-fun b!7496266 () Bool)

(declare-fun e!4469616 () Bool)

(assert (=> b!7496266 (= e!4469615 e!4469616)))

(assert (=> b!7496266 (= c!1383994 ((_ is Union!19649) lt!2630591))))

(declare-fun b!7496267 () Bool)

(declare-fun res!3007045 () Bool)

(declare-fun e!4469617 () Bool)

(assert (=> b!7496267 (=> res!3007045 e!4469617)))

(assert (=> b!7496267 (= res!3007045 (not ((_ is Concat!28494) lt!2630591)))))

(assert (=> b!7496267 (= e!4469616 e!4469617)))

(declare-fun b!7496268 () Bool)

(assert (=> b!7496268 (= e!4469617 e!4469618)))

(declare-fun res!3007047 () Bool)

(assert (=> b!7496268 (=> (not res!3007047) (not e!4469618))))

(assert (=> b!7496268 (= res!3007047 call!688158)))

(declare-fun d!2301802 () Bool)

(declare-fun res!3007043 () Bool)

(assert (=> d!2301802 (=> res!3007043 e!4469620)))

(assert (=> d!2301802 (= res!3007043 ((_ is ElementMatch!19649) lt!2630591))))

(assert (=> d!2301802 (= (validRegex!10163 lt!2630591) e!4469620)))

(declare-fun b!7496269 () Bool)

(assert (=> b!7496269 (= e!4469615 e!4469614)))

(declare-fun res!3007044 () Bool)

(assert (=> b!7496269 (= res!3007044 (not (nullable!8584 (reg!19978 lt!2630591))))))

(assert (=> b!7496269 (=> (not res!3007044) (not e!4469614))))

(declare-fun bm!688155 () Bool)

(assert (=> bm!688155 (= call!688160 (validRegex!10163 (ite c!1383995 (reg!19978 lt!2630591) (ite c!1383994 (regOne!39811 lt!2630591) (regOne!39810 lt!2630591)))))))

(declare-fun b!7496270 () Bool)

(declare-fun res!3007046 () Bool)

(assert (=> b!7496270 (=> (not res!3007046) (not e!4469619))))

(assert (=> b!7496270 (= res!3007046 call!688158)))

(assert (=> b!7496270 (= e!4469616 e!4469619)))

(assert (= (and d!2301802 (not res!3007043)) b!7496264))

(assert (= (and b!7496264 c!1383995) b!7496269))

(assert (= (and b!7496264 (not c!1383995)) b!7496266))

(assert (= (and b!7496269 res!3007044) b!7496265))

(assert (= (and b!7496266 c!1383994) b!7496270))

(assert (= (and b!7496266 (not c!1383994)) b!7496267))

(assert (= (and b!7496270 res!3007046) b!7496262))

(assert (= (and b!7496267 (not res!3007045)) b!7496268))

(assert (= (and b!7496268 res!3007047) b!7496263))

(assert (= (or b!7496262 b!7496263) bm!688154))

(assert (= (or b!7496270 b!7496268) bm!688153))

(assert (= (or b!7496265 bm!688153) bm!688155))

(declare-fun m!8079950 () Bool)

(assert (=> bm!688154 m!8079950))

(declare-fun m!8079952 () Bool)

(assert (=> b!7496269 m!8079952))

(declare-fun m!8079954 () Bool)

(assert (=> bm!688155 m!8079954))

(assert (=> b!7495956 d!2301802))

(declare-fun d!2301804 () Bool)

(declare-fun isEmpty!41275 (Option!17198) Bool)

(assert (=> d!2301804 (= (isDefined!13887 (findConcatSeparation!3320 lt!2630591 rTail!78 Nil!72239 s!13591 s!13591)) (not (isEmpty!41275 (findConcatSeparation!3320 lt!2630591 rTail!78 Nil!72239 s!13591 s!13591))))))

(declare-fun bs!1935865 () Bool)

(assert (= bs!1935865 d!2301804))

(assert (=> bs!1935865 m!8079792))

(declare-fun m!8079956 () Bool)

(assert (=> bs!1935865 m!8079956))

(assert (=> b!7495972 d!2301804))

(declare-fun b!7496325 () Bool)

(declare-fun e!4469656 () Option!17198)

(declare-fun e!4469658 () Option!17198)

(assert (=> b!7496325 (= e!4469656 e!4469658)))

(declare-fun c!1384010 () Bool)

(assert (=> b!7496325 (= c!1384010 ((_ is Nil!72239) s!13591))))

(declare-fun b!7496327 () Bool)

(declare-fun e!4469655 () Bool)

(assert (=> b!7496327 (= e!4469655 (matchR!9411 rTail!78 s!13591))))

(declare-fun b!7496328 () Bool)

(assert (=> b!7496328 (= e!4469656 (Some!17197 (tuple2!68733 Nil!72239 s!13591)))))

(declare-fun b!7496329 () Bool)

(declare-fun res!3007083 () Bool)

(declare-fun e!4469659 () Bool)

(assert (=> b!7496329 (=> (not res!3007083) (not e!4469659))))

(declare-fun lt!2630624 () Option!17198)

(assert (=> b!7496329 (= res!3007083 (matchR!9411 rTail!78 (_2!37669 (get!25329 lt!2630624))))))

(declare-fun b!7496330 () Bool)

(declare-fun lt!2630626 () Unit!166129)

(declare-fun lt!2630625 () Unit!166129)

(assert (=> b!7496330 (= lt!2630626 lt!2630625)))

(declare-fun ++!17254 (List!72363 List!72363) List!72363)

(assert (=> b!7496330 (= (++!17254 (++!17254 Nil!72239 (Cons!72239 (h!78687 s!13591) Nil!72239)) (t!386932 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3128 (List!72363 C!39572 List!72363 List!72363) Unit!166129)

(assert (=> b!7496330 (= lt!2630625 (lemmaMoveElementToOtherListKeepsConcatEq!3128 Nil!72239 (h!78687 s!13591) (t!386932 s!13591) s!13591))))

(assert (=> b!7496330 (= e!4469658 (findConcatSeparation!3320 lt!2630591 rTail!78 (++!17254 Nil!72239 (Cons!72239 (h!78687 s!13591) Nil!72239)) (t!386932 s!13591) s!13591))))

(declare-fun b!7496331 () Bool)

(assert (=> b!7496331 (= e!4469659 (= (++!17254 (_1!37669 (get!25329 lt!2630624)) (_2!37669 (get!25329 lt!2630624))) s!13591))))

(declare-fun b!7496332 () Bool)

(declare-fun res!3007079 () Bool)

(assert (=> b!7496332 (=> (not res!3007079) (not e!4469659))))

(assert (=> b!7496332 (= res!3007079 (matchR!9411 lt!2630591 (_1!37669 (get!25329 lt!2630624))))))

(declare-fun d!2301806 () Bool)

(declare-fun e!4469657 () Bool)

(assert (=> d!2301806 e!4469657))

(declare-fun res!3007080 () Bool)

(assert (=> d!2301806 (=> res!3007080 e!4469657)))

(assert (=> d!2301806 (= res!3007080 e!4469659)))

(declare-fun res!3007077 () Bool)

(assert (=> d!2301806 (=> (not res!3007077) (not e!4469659))))

(assert (=> d!2301806 (= res!3007077 (isDefined!13887 lt!2630624))))

(assert (=> d!2301806 (= lt!2630624 e!4469656)))

(declare-fun c!1384009 () Bool)

(assert (=> d!2301806 (= c!1384009 e!4469655)))

(declare-fun res!3007078 () Bool)

(assert (=> d!2301806 (=> (not res!3007078) (not e!4469655))))

(assert (=> d!2301806 (= res!3007078 (matchR!9411 lt!2630591 Nil!72239))))

(assert (=> d!2301806 (validRegex!10163 lt!2630591)))

(assert (=> d!2301806 (= (findConcatSeparation!3320 lt!2630591 rTail!78 Nil!72239 s!13591 s!13591) lt!2630624)))

(declare-fun b!7496333 () Bool)

(assert (=> b!7496333 (= e!4469657 (not (isDefined!13887 lt!2630624)))))

(declare-fun b!7496334 () Bool)

(assert (=> b!7496334 (= e!4469658 None!17197)))

(assert (= (and d!2301806 res!3007078) b!7496327))

(assert (= (and d!2301806 c!1384009) b!7496328))

(assert (= (and d!2301806 (not c!1384009)) b!7496325))

(assert (= (and b!7496325 c!1384010) b!7496334))

(assert (= (and b!7496325 (not c!1384010)) b!7496330))

(assert (= (and d!2301806 res!3007077) b!7496332))

(assert (= (and b!7496332 res!3007079) b!7496329))

(assert (= (and b!7496329 res!3007083) b!7496331))

(assert (= (and d!2301806 (not res!3007080)) b!7496333))

(declare-fun m!8079978 () Bool)

(assert (=> b!7496333 m!8079978))

(declare-fun m!8079980 () Bool)

(assert (=> b!7496331 m!8079980))

(declare-fun m!8079982 () Bool)

(assert (=> b!7496331 m!8079982))

(declare-fun m!8079984 () Bool)

(assert (=> b!7496330 m!8079984))

(assert (=> b!7496330 m!8079984))

(declare-fun m!8079986 () Bool)

(assert (=> b!7496330 m!8079986))

(declare-fun m!8079988 () Bool)

(assert (=> b!7496330 m!8079988))

(assert (=> b!7496330 m!8079984))

(declare-fun m!8079990 () Bool)

(assert (=> b!7496330 m!8079990))

(declare-fun m!8079992 () Bool)

(assert (=> b!7496327 m!8079992))

(assert (=> b!7496329 m!8079980))

(declare-fun m!8079994 () Bool)

(assert (=> b!7496329 m!8079994))

(assert (=> d!2301806 m!8079978))

(declare-fun m!8079996 () Bool)

(assert (=> d!2301806 m!8079996))

(assert (=> d!2301806 m!8079816))

(assert (=> b!7496332 m!8079980))

(declare-fun m!8079998 () Bool)

(assert (=> b!7496332 m!8079998))

(assert (=> b!7495972 d!2301806))

(declare-fun bs!1935875 () Bool)

(declare-fun d!2301816 () Bool)

(assert (= bs!1935875 (and d!2301816 b!7496102)))

(declare-fun lambda!464506 () Int)

(assert (=> bs!1935875 (not (= lambda!464506 lambda!464492))))

(declare-fun bs!1935876 () Bool)

(assert (= bs!1935876 (and d!2301816 b!7495972)))

(assert (=> bs!1935876 (not (= lambda!464506 lambda!464481))))

(declare-fun bs!1935877 () Bool)

(assert (= bs!1935877 (and d!2301816 b!7496192)))

(assert (=> bs!1935877 (not (= lambda!464506 lambda!464499))))

(declare-fun bs!1935878 () Bool)

(assert (= bs!1935878 (and d!2301816 b!7496230)))

(assert (=> bs!1935878 (not (= lambda!464506 lambda!464500))))

(declare-fun bs!1935879 () Bool)

(assert (= bs!1935879 (and d!2301816 b!7496103)))

(assert (=> bs!1935879 (not (= lambda!464506 lambda!464493))))

(declare-fun bs!1935880 () Bool)

(assert (= bs!1935880 (and d!2301816 b!7495975)))

(assert (=> bs!1935880 (not (= lambda!464506 lambda!464483))))

(declare-fun bs!1935881 () Bool)

(assert (= bs!1935881 (and d!2301816 b!7496191)))

(assert (=> bs!1935881 (not (= lambda!464506 lambda!464498))))

(assert (=> bs!1935880 (= (= lt!2630591 r1!5845) (= lambda!464506 lambda!464482))))

(assert (=> bs!1935876 (= lambda!464506 lambda!464480)))

(declare-fun bs!1935882 () Bool)

(assert (= bs!1935882 (and d!2301816 b!7496231)))

(assert (=> bs!1935882 (not (= lambda!464506 lambda!464501))))

(assert (=> d!2301816 true))

(assert (=> d!2301816 true))

(assert (=> d!2301816 true))

(assert (=> d!2301816 (= (isDefined!13887 (findConcatSeparation!3320 lt!2630591 rTail!78 Nil!72239 s!13591 s!13591)) (Exists!4266 lambda!464506))))

(declare-fun lt!2630632 () Unit!166129)

(declare-fun choose!57946 (Regex!19649 Regex!19649 List!72363) Unit!166129)

(assert (=> d!2301816 (= lt!2630632 (choose!57946 lt!2630591 rTail!78 s!13591))))

(assert (=> d!2301816 (validRegex!10163 lt!2630591)))

(assert (=> d!2301816 (= (lemmaFindConcatSeparationEquivalentToExists!3078 lt!2630591 rTail!78 s!13591) lt!2630632)))

(declare-fun bs!1935883 () Bool)

(assert (= bs!1935883 d!2301816))

(assert (=> bs!1935883 m!8079792))

(assert (=> bs!1935883 m!8079794))

(assert (=> bs!1935883 m!8079792))

(declare-fun m!8080022 () Bool)

(assert (=> bs!1935883 m!8080022))

(assert (=> bs!1935883 m!8079816))

(declare-fun m!8080024 () Bool)

(assert (=> bs!1935883 m!8080024))

(assert (=> b!7495972 d!2301816))

(declare-fun d!2301820 () Bool)

(declare-fun choose!57947 (Int) Bool)

(assert (=> d!2301820 (= (Exists!4266 lambda!464481) (choose!57947 lambda!464481))))

(declare-fun bs!1935884 () Bool)

(assert (= bs!1935884 d!2301820))

(declare-fun m!8080026 () Bool)

(assert (=> bs!1935884 m!8080026))

(assert (=> b!7495972 d!2301820))

(declare-fun d!2301822 () Bool)

(assert (=> d!2301822 (= (Exists!4266 lambda!464480) (choose!57947 lambda!464480))))

(declare-fun bs!1935885 () Bool)

(assert (= bs!1935885 d!2301822))

(declare-fun m!8080028 () Bool)

(assert (=> bs!1935885 m!8080028))

(assert (=> b!7495972 d!2301822))

(declare-fun bs!1935898 () Bool)

(declare-fun d!2301824 () Bool)

(assert (= bs!1935898 (and d!2301824 b!7496102)))

(declare-fun lambda!464514 () Int)

(assert (=> bs!1935898 (not (= lambda!464514 lambda!464492))))

(declare-fun bs!1935899 () Bool)

(assert (= bs!1935899 (and d!2301824 b!7495972)))

(assert (=> bs!1935899 (not (= lambda!464514 lambda!464481))))

(declare-fun bs!1935900 () Bool)

(assert (= bs!1935900 (and d!2301824 b!7496192)))

(assert (=> bs!1935900 (not (= lambda!464514 lambda!464499))))

(declare-fun bs!1935901 () Bool)

(assert (= bs!1935901 (and d!2301824 d!2301816)))

(assert (=> bs!1935901 (= lambda!464514 lambda!464506)))

(declare-fun bs!1935902 () Bool)

(assert (= bs!1935902 (and d!2301824 b!7496230)))

(assert (=> bs!1935902 (not (= lambda!464514 lambda!464500))))

(declare-fun bs!1935903 () Bool)

(assert (= bs!1935903 (and d!2301824 b!7496103)))

(assert (=> bs!1935903 (not (= lambda!464514 lambda!464493))))

(declare-fun bs!1935904 () Bool)

(assert (= bs!1935904 (and d!2301824 b!7495975)))

(assert (=> bs!1935904 (not (= lambda!464514 lambda!464483))))

(declare-fun bs!1935905 () Bool)

(assert (= bs!1935905 (and d!2301824 b!7496191)))

(assert (=> bs!1935905 (not (= lambda!464514 lambda!464498))))

(assert (=> bs!1935904 (= (= lt!2630591 r1!5845) (= lambda!464514 lambda!464482))))

(assert (=> bs!1935899 (= lambda!464514 lambda!464480)))

(declare-fun bs!1935906 () Bool)

(assert (= bs!1935906 (and d!2301824 b!7496231)))

(assert (=> bs!1935906 (not (= lambda!464514 lambda!464501))))

(assert (=> d!2301824 true))

(assert (=> d!2301824 true))

(assert (=> d!2301824 true))

(declare-fun lambda!464516 () Int)

(assert (=> bs!1935898 (not (= lambda!464516 lambda!464492))))

(assert (=> bs!1935899 (= lambda!464516 lambda!464481)))

(assert (=> bs!1935900 (= (and (= s!13591 (_1!37669 lt!2630584)) (= lt!2630591 (regOne!39810 r1!5845)) (= rTail!78 (regTwo!39810 r1!5845))) (= lambda!464516 lambda!464499))))

(assert (=> bs!1935901 (not (= lambda!464516 lambda!464506))))

(assert (=> bs!1935902 (not (= lambda!464516 lambda!464500))))

(declare-fun bs!1935907 () Bool)

(assert (= bs!1935907 d!2301824))

(assert (=> bs!1935907 (not (= lambda!464516 lambda!464514))))

(assert (=> bs!1935903 (= (and (= s!13591 (_1!37669 lt!2630584)) (= lt!2630591 (regOne!39810 lt!2630591)) (= rTail!78 (regTwo!39810 lt!2630591))) (= lambda!464516 lambda!464493))))

(assert (=> bs!1935904 (= (= lt!2630591 r1!5845) (= lambda!464516 lambda!464483))))

(assert (=> bs!1935905 (not (= lambda!464516 lambda!464498))))

(assert (=> bs!1935904 (not (= lambda!464516 lambda!464482))))

(assert (=> bs!1935899 (not (= lambda!464516 lambda!464480))))

(assert (=> bs!1935906 (= (and (= s!13591 (_1!37669 lt!2630584)) (= lt!2630591 (regOne!39810 r2!5783)) (= rTail!78 (regTwo!39810 r2!5783))) (= lambda!464516 lambda!464501))))

(assert (=> d!2301824 true))

(assert (=> d!2301824 true))

(assert (=> d!2301824 true))

(assert (=> d!2301824 (= (Exists!4266 lambda!464514) (Exists!4266 lambda!464516))))

(declare-fun lt!2630639 () Unit!166129)

(declare-fun choose!57949 (Regex!19649 Regex!19649 List!72363) Unit!166129)

(assert (=> d!2301824 (= lt!2630639 (choose!57949 lt!2630591 rTail!78 s!13591))))

(assert (=> d!2301824 (validRegex!10163 lt!2630591)))

(assert (=> d!2301824 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2590 lt!2630591 rTail!78 s!13591) lt!2630639)))

(declare-fun m!8080048 () Bool)

(assert (=> bs!1935907 m!8080048))

(declare-fun m!8080050 () Bool)

(assert (=> bs!1935907 m!8080050))

(declare-fun m!8080052 () Bool)

(assert (=> bs!1935907 m!8080052))

(assert (=> bs!1935907 m!8079816))

(assert (=> b!7495972 d!2301824))

(declare-fun b!7496382 () Bool)

(declare-fun e!4469687 () Bool)

(declare-fun call!688167 () Bool)

(assert (=> b!7496382 (= e!4469687 call!688167)))

(declare-fun bm!688161 () Bool)

(declare-fun call!688166 () Bool)

(declare-fun call!688168 () Bool)

(assert (=> bm!688161 (= call!688166 call!688168)))

(declare-fun b!7496383 () Bool)

(declare-fun e!4469686 () Bool)

(assert (=> b!7496383 (= e!4469686 call!688167)))

(declare-fun b!7496384 () Bool)

(declare-fun e!4469688 () Bool)

(declare-fun e!4469683 () Bool)

(assert (=> b!7496384 (= e!4469688 e!4469683)))

(declare-fun c!1384017 () Bool)

(assert (=> b!7496384 (= c!1384017 ((_ is Star!19649) r2!5783))))

(declare-fun b!7496385 () Bool)

(declare-fun e!4469682 () Bool)

(assert (=> b!7496385 (= e!4469682 call!688168)))

(declare-fun bm!688162 () Bool)

(declare-fun c!1384016 () Bool)

(assert (=> bm!688162 (= call!688167 (validRegex!10163 (ite c!1384016 (regTwo!39811 r2!5783) (regTwo!39810 r2!5783))))))

(declare-fun b!7496386 () Bool)

(declare-fun e!4469684 () Bool)

(assert (=> b!7496386 (= e!4469683 e!4469684)))

(assert (=> b!7496386 (= c!1384016 ((_ is Union!19649) r2!5783))))

(declare-fun b!7496387 () Bool)

(declare-fun res!3007121 () Bool)

(declare-fun e!4469685 () Bool)

(assert (=> b!7496387 (=> res!3007121 e!4469685)))

(assert (=> b!7496387 (= res!3007121 (not ((_ is Concat!28494) r2!5783)))))

(assert (=> b!7496387 (= e!4469684 e!4469685)))

(declare-fun b!7496388 () Bool)

(assert (=> b!7496388 (= e!4469685 e!4469686)))

(declare-fun res!3007123 () Bool)

(assert (=> b!7496388 (=> (not res!3007123) (not e!4469686))))

(assert (=> b!7496388 (= res!3007123 call!688166)))

(declare-fun d!2301838 () Bool)

(declare-fun res!3007119 () Bool)

(assert (=> d!2301838 (=> res!3007119 e!4469688)))

(assert (=> d!2301838 (= res!3007119 ((_ is ElementMatch!19649) r2!5783))))

(assert (=> d!2301838 (= (validRegex!10163 r2!5783) e!4469688)))

(declare-fun b!7496389 () Bool)

(assert (=> b!7496389 (= e!4469683 e!4469682)))

(declare-fun res!3007120 () Bool)

(assert (=> b!7496389 (= res!3007120 (not (nullable!8584 (reg!19978 r2!5783))))))

(assert (=> b!7496389 (=> (not res!3007120) (not e!4469682))))

(declare-fun bm!688163 () Bool)

(assert (=> bm!688163 (= call!688168 (validRegex!10163 (ite c!1384017 (reg!19978 r2!5783) (ite c!1384016 (regOne!39811 r2!5783) (regOne!39810 r2!5783)))))))

(declare-fun b!7496390 () Bool)

(declare-fun res!3007122 () Bool)

(assert (=> b!7496390 (=> (not res!3007122) (not e!4469687))))

(assert (=> b!7496390 (= res!3007122 call!688166)))

(assert (=> b!7496390 (= e!4469684 e!4469687)))

(assert (= (and d!2301838 (not res!3007119)) b!7496384))

(assert (= (and b!7496384 c!1384017) b!7496389))

(assert (= (and b!7496384 (not c!1384017)) b!7496386))

(assert (= (and b!7496389 res!3007120) b!7496385))

(assert (= (and b!7496386 c!1384016) b!7496390))

(assert (= (and b!7496386 (not c!1384016)) b!7496387))

(assert (= (and b!7496390 res!3007122) b!7496382))

(assert (= (and b!7496387 (not res!3007121)) b!7496388))

(assert (= (and b!7496388 res!3007123) b!7496383))

(assert (= (or b!7496382 b!7496383) bm!688162))

(assert (= (or b!7496390 b!7496388) bm!688161))

(assert (= (or b!7496385 bm!688161) bm!688163))

(declare-fun m!8080054 () Bool)

(assert (=> bm!688162 m!8080054))

(declare-fun m!8080056 () Bool)

(assert (=> b!7496389 m!8080056))

(declare-fun m!8080058 () Bool)

(assert (=> bm!688163 m!8080058))

(assert (=> b!7495955 d!2301838))

(declare-fun b!7496395 () Bool)

(declare-fun e!4469696 () Bool)

(declare-fun call!688170 () Bool)

(assert (=> b!7496395 (= e!4469696 call!688170)))

(declare-fun bm!688164 () Bool)

(declare-fun call!688169 () Bool)

(declare-fun call!688171 () Bool)

(assert (=> bm!688164 (= call!688169 call!688171)))

(declare-fun b!7496396 () Bool)

(declare-fun e!4469695 () Bool)

(assert (=> b!7496396 (= e!4469695 call!688170)))

(declare-fun b!7496397 () Bool)

(declare-fun e!4469697 () Bool)

(declare-fun e!4469692 () Bool)

(assert (=> b!7496397 (= e!4469697 e!4469692)))

(declare-fun c!1384019 () Bool)

(assert (=> b!7496397 (= c!1384019 ((_ is Star!19649) r1!5845))))

(declare-fun b!7496398 () Bool)

(declare-fun e!4469691 () Bool)

(assert (=> b!7496398 (= e!4469691 call!688171)))

(declare-fun bm!688165 () Bool)

(declare-fun c!1384018 () Bool)

(assert (=> bm!688165 (= call!688170 (validRegex!10163 (ite c!1384018 (regTwo!39811 r1!5845) (regTwo!39810 r1!5845))))))

(declare-fun b!7496399 () Bool)

(declare-fun e!4469693 () Bool)

(assert (=> b!7496399 (= e!4469692 e!4469693)))

(assert (=> b!7496399 (= c!1384018 ((_ is Union!19649) r1!5845))))

(declare-fun b!7496400 () Bool)

(declare-fun res!3007130 () Bool)

(declare-fun e!4469694 () Bool)

(assert (=> b!7496400 (=> res!3007130 e!4469694)))

(assert (=> b!7496400 (= res!3007130 (not ((_ is Concat!28494) r1!5845)))))

(assert (=> b!7496400 (= e!4469693 e!4469694)))

(declare-fun b!7496401 () Bool)

(assert (=> b!7496401 (= e!4469694 e!4469695)))

(declare-fun res!3007132 () Bool)

(assert (=> b!7496401 (=> (not res!3007132) (not e!4469695))))

(assert (=> b!7496401 (= res!3007132 call!688169)))

(declare-fun d!2301840 () Bool)

(declare-fun res!3007128 () Bool)

(assert (=> d!2301840 (=> res!3007128 e!4469697)))

(assert (=> d!2301840 (= res!3007128 ((_ is ElementMatch!19649) r1!5845))))

(assert (=> d!2301840 (= (validRegex!10163 r1!5845) e!4469697)))

(declare-fun b!7496402 () Bool)

(assert (=> b!7496402 (= e!4469692 e!4469691)))

(declare-fun res!3007129 () Bool)

(assert (=> b!7496402 (= res!3007129 (not (nullable!8584 (reg!19978 r1!5845))))))

(assert (=> b!7496402 (=> (not res!3007129) (not e!4469691))))

(declare-fun bm!688166 () Bool)

(assert (=> bm!688166 (= call!688171 (validRegex!10163 (ite c!1384019 (reg!19978 r1!5845) (ite c!1384018 (regOne!39811 r1!5845) (regOne!39810 r1!5845)))))))

(declare-fun b!7496403 () Bool)

(declare-fun res!3007131 () Bool)

(assert (=> b!7496403 (=> (not res!3007131) (not e!4469696))))

(assert (=> b!7496403 (= res!3007131 call!688169)))

(assert (=> b!7496403 (= e!4469693 e!4469696)))

(assert (= (and d!2301840 (not res!3007128)) b!7496397))

(assert (= (and b!7496397 c!1384019) b!7496402))

(assert (= (and b!7496397 (not c!1384019)) b!7496399))

(assert (= (and b!7496402 res!3007129) b!7496398))

(assert (= (and b!7496399 c!1384018) b!7496403))

(assert (= (and b!7496399 (not c!1384018)) b!7496400))

(assert (= (and b!7496403 res!3007131) b!7496395))

(assert (= (and b!7496400 (not res!3007130)) b!7496401))

(assert (= (and b!7496401 res!3007132) b!7496396))

(assert (= (or b!7496395 b!7496396) bm!688165))

(assert (= (or b!7496403 b!7496401) bm!688164))

(assert (= (or b!7496398 bm!688164) bm!688166))

(declare-fun m!8080060 () Bool)

(assert (=> bm!688165 m!8080060))

(declare-fun m!8080062 () Bool)

(assert (=> b!7496402 m!8080062))

(declare-fun m!8080064 () Bool)

(assert (=> bm!688166 m!8080064))

(assert (=> start!725438 d!2301840))

(declare-fun d!2301842 () Bool)

(assert (=> d!2301842 (= (matchR!9411 lt!2630578 s!13591) (matchRSpec!4326 lt!2630578 s!13591))))

(declare-fun lt!2630642 () Unit!166129)

(assert (=> d!2301842 (= lt!2630642 (choose!57944 lt!2630578 s!13591))))

(assert (=> d!2301842 (validRegex!10163 lt!2630578)))

(assert (=> d!2301842 (= (mainMatchTheorem!4320 lt!2630578 s!13591) lt!2630642)))

(declare-fun bs!1935908 () Bool)

(assert (= bs!1935908 d!2301842))

(assert (=> bs!1935908 m!8079810))

(assert (=> bs!1935908 m!8079802))

(declare-fun m!8080066 () Bool)

(assert (=> bs!1935908 m!8080066))

(declare-fun m!8080068 () Bool)

(assert (=> bs!1935908 m!8080068))

(assert (=> b!7495954 d!2301842))

(declare-fun b!7496404 () Bool)

(declare-fun e!4469700 () Bool)

(assert (=> b!7496404 (= e!4469700 (not (= (head!15381 s!13591) (c!1383920 lt!2630573))))))

(declare-fun b!7496405 () Bool)

(declare-fun e!4469704 () Bool)

(assert (=> b!7496405 (= e!4469704 (matchR!9411 (derivativeStep!5641 lt!2630573 (head!15381 s!13591)) (tail!14950 s!13591)))))

(declare-fun b!7496406 () Bool)

(declare-fun e!4469703 () Bool)

(declare-fun lt!2630644 () Bool)

(declare-fun call!688172 () Bool)

(assert (=> b!7496406 (= e!4469703 (= lt!2630644 call!688172))))

(declare-fun b!7496407 () Bool)

(declare-fun e!4469699 () Bool)

(assert (=> b!7496407 (= e!4469699 (= (head!15381 s!13591) (c!1383920 lt!2630573)))))

(declare-fun b!7496409 () Bool)

(declare-fun e!4469701 () Bool)

(declare-fun e!4469698 () Bool)

(assert (=> b!7496409 (= e!4469701 e!4469698)))

(declare-fun res!3007135 () Bool)

(assert (=> b!7496409 (=> (not res!3007135) (not e!4469698))))

(assert (=> b!7496409 (= res!3007135 (not lt!2630644))))

(declare-fun b!7496410 () Bool)

(declare-fun res!3007137 () Bool)

(assert (=> b!7496410 (=> res!3007137 e!4469700)))

(assert (=> b!7496410 (= res!3007137 (not (isEmpty!41273 (tail!14950 s!13591))))))

(declare-fun b!7496411 () Bool)

(assert (=> b!7496411 (= e!4469698 e!4469700)))

(declare-fun res!3007140 () Bool)

(assert (=> b!7496411 (=> res!3007140 e!4469700)))

(assert (=> b!7496411 (= res!3007140 call!688172)))

(declare-fun b!7496412 () Bool)

(declare-fun res!3007133 () Bool)

(assert (=> b!7496412 (=> (not res!3007133) (not e!4469699))))

(assert (=> b!7496412 (= res!3007133 (not call!688172))))

(declare-fun bm!688167 () Bool)

(assert (=> bm!688167 (= call!688172 (isEmpty!41273 s!13591))))

(declare-fun d!2301844 () Bool)

(assert (=> d!2301844 e!4469703))

(declare-fun c!1384022 () Bool)

(assert (=> d!2301844 (= c!1384022 ((_ is EmptyExpr!19649) lt!2630573))))

(assert (=> d!2301844 (= lt!2630644 e!4469704)))

(declare-fun c!1384021 () Bool)

(assert (=> d!2301844 (= c!1384021 (isEmpty!41273 s!13591))))

(assert (=> d!2301844 (validRegex!10163 lt!2630573)))

(assert (=> d!2301844 (= (matchR!9411 lt!2630573 s!13591) lt!2630644)))

(declare-fun b!7496408 () Bool)

(declare-fun e!4469702 () Bool)

(assert (=> b!7496408 (= e!4469702 (not lt!2630644))))

(declare-fun b!7496413 () Bool)

(assert (=> b!7496413 (= e!4469703 e!4469702)))

(declare-fun c!1384020 () Bool)

(assert (=> b!7496413 (= c!1384020 ((_ is EmptyLang!19649) lt!2630573))))

(declare-fun b!7496414 () Bool)

(declare-fun res!3007134 () Bool)

(assert (=> b!7496414 (=> res!3007134 e!4469701)))

(assert (=> b!7496414 (= res!3007134 e!4469699)))

(declare-fun res!3007136 () Bool)

(assert (=> b!7496414 (=> (not res!3007136) (not e!4469699))))

(assert (=> b!7496414 (= res!3007136 lt!2630644)))

(declare-fun b!7496415 () Bool)

(declare-fun res!3007139 () Bool)

(assert (=> b!7496415 (=> res!3007139 e!4469701)))

(assert (=> b!7496415 (= res!3007139 (not ((_ is ElementMatch!19649) lt!2630573)))))

(assert (=> b!7496415 (= e!4469702 e!4469701)))

(declare-fun b!7496416 () Bool)

(declare-fun res!3007138 () Bool)

(assert (=> b!7496416 (=> (not res!3007138) (not e!4469699))))

(assert (=> b!7496416 (= res!3007138 (isEmpty!41273 (tail!14950 s!13591)))))

(declare-fun b!7496417 () Bool)

(assert (=> b!7496417 (= e!4469704 (nullable!8584 lt!2630573))))

(assert (= (and d!2301844 c!1384021) b!7496417))

(assert (= (and d!2301844 (not c!1384021)) b!7496405))

(assert (= (and d!2301844 c!1384022) b!7496406))

(assert (= (and d!2301844 (not c!1384022)) b!7496413))

(assert (= (and b!7496413 c!1384020) b!7496408))

(assert (= (and b!7496413 (not c!1384020)) b!7496415))

(assert (= (and b!7496415 (not res!3007139)) b!7496414))

(assert (= (and b!7496414 res!3007136) b!7496412))

(assert (= (and b!7496412 res!3007133) b!7496416))

(assert (= (and b!7496416 res!3007138) b!7496407))

(assert (= (and b!7496414 (not res!3007134)) b!7496409))

(assert (= (and b!7496409 res!3007135) b!7496411))

(assert (= (and b!7496411 (not res!3007140)) b!7496410))

(assert (= (and b!7496410 (not res!3007137)) b!7496404))

(assert (= (or b!7496406 b!7496411 b!7496412) bm!688167))

(declare-fun m!8080070 () Bool)

(assert (=> b!7496404 m!8080070))

(declare-fun m!8080072 () Bool)

(assert (=> d!2301844 m!8080072))

(declare-fun m!8080074 () Bool)

(assert (=> d!2301844 m!8080074))

(declare-fun m!8080076 () Bool)

(assert (=> b!7496417 m!8080076))

(declare-fun m!8080078 () Bool)

(assert (=> b!7496410 m!8080078))

(assert (=> b!7496410 m!8080078))

(declare-fun m!8080080 () Bool)

(assert (=> b!7496410 m!8080080))

(assert (=> bm!688167 m!8080072))

(assert (=> b!7496416 m!8080078))

(assert (=> b!7496416 m!8080078))

(assert (=> b!7496416 m!8080080))

(assert (=> b!7496405 m!8080070))

(assert (=> b!7496405 m!8080070))

(declare-fun m!8080082 () Bool)

(assert (=> b!7496405 m!8080082))

(assert (=> b!7496405 m!8080078))

(assert (=> b!7496405 m!8080082))

(assert (=> b!7496405 m!8080078))

(declare-fun m!8080084 () Bool)

(assert (=> b!7496405 m!8080084))

(assert (=> b!7496407 m!8080070))

(assert (=> b!7495954 d!2301844))

(declare-fun bs!1935918 () Bool)

(declare-fun b!7496422 () Bool)

(assert (= bs!1935918 (and b!7496422 b!7496102)))

(declare-fun lambda!464521 () Int)

(assert (=> bs!1935918 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (reg!19978 lt!2630573) (reg!19978 lt!2630591)) (= lt!2630573 lt!2630591)) (= lambda!464521 lambda!464492))))

(declare-fun bs!1935919 () Bool)

(assert (= bs!1935919 (and b!7496422 b!7495972)))

(assert (=> bs!1935919 (not (= lambda!464521 lambda!464481))))

(declare-fun bs!1935920 () Bool)

(assert (= bs!1935920 (and b!7496422 b!7496192)))

(assert (=> bs!1935920 (not (= lambda!464521 lambda!464499))))

(declare-fun bs!1935921 () Bool)

(assert (= bs!1935921 (and b!7496422 d!2301816)))

(assert (=> bs!1935921 (not (= lambda!464521 lambda!464506))))

(declare-fun bs!1935922 () Bool)

(assert (= bs!1935922 (and b!7496422 b!7496230)))

(assert (=> bs!1935922 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (reg!19978 lt!2630573) (reg!19978 r2!5783)) (= lt!2630573 r2!5783)) (= lambda!464521 lambda!464500))))

(declare-fun bs!1935923 () Bool)

(assert (= bs!1935923 (and b!7496422 d!2301824)))

(assert (=> bs!1935923 (not (= lambda!464521 lambda!464516))))

(assert (=> bs!1935923 (not (= lambda!464521 lambda!464514))))

(declare-fun bs!1935925 () Bool)

(assert (= bs!1935925 (and b!7496422 b!7496103)))

(assert (=> bs!1935925 (not (= lambda!464521 lambda!464493))))

(declare-fun bs!1935926 () Bool)

(assert (= bs!1935926 (and b!7496422 b!7495975)))

(assert (=> bs!1935926 (not (= lambda!464521 lambda!464483))))

(declare-fun bs!1935927 () Bool)

(assert (= bs!1935927 (and b!7496422 b!7496191)))

(assert (=> bs!1935927 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (reg!19978 lt!2630573) (reg!19978 r1!5845)) (= lt!2630573 r1!5845)) (= lambda!464521 lambda!464498))))

(assert (=> bs!1935926 (not (= lambda!464521 lambda!464482))))

(assert (=> bs!1935919 (not (= lambda!464521 lambda!464480))))

(declare-fun bs!1935928 () Bool)

(assert (= bs!1935928 (and b!7496422 b!7496231)))

(assert (=> bs!1935928 (not (= lambda!464521 lambda!464501))))

(assert (=> b!7496422 true))

(assert (=> b!7496422 true))

(declare-fun bs!1935930 () Bool)

(declare-fun b!7496423 () Bool)

(assert (= bs!1935930 (and b!7496423 b!7496102)))

(declare-fun lambda!464523 () Int)

(assert (=> bs!1935930 (not (= lambda!464523 lambda!464492))))

(declare-fun bs!1935931 () Bool)

(assert (= bs!1935931 (and b!7496423 b!7495972)))

(assert (=> bs!1935931 (= (and (= (regOne!39810 lt!2630573) lt!2630591) (= (regTwo!39810 lt!2630573) rTail!78)) (= lambda!464523 lambda!464481))))

(declare-fun bs!1935932 () Bool)

(assert (= bs!1935932 (and b!7496423 b!7496192)))

(assert (=> bs!1935932 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (regOne!39810 lt!2630573) (regOne!39810 r1!5845)) (= (regTwo!39810 lt!2630573) (regTwo!39810 r1!5845))) (= lambda!464523 lambda!464499))))

(declare-fun bs!1935933 () Bool)

(assert (= bs!1935933 (and b!7496423 d!2301816)))

(assert (=> bs!1935933 (not (= lambda!464523 lambda!464506))))

(declare-fun bs!1935934 () Bool)

(assert (= bs!1935934 (and b!7496423 b!7496230)))

(assert (=> bs!1935934 (not (= lambda!464523 lambda!464500))))

(declare-fun bs!1935935 () Bool)

(assert (= bs!1935935 (and b!7496423 d!2301824)))

(assert (=> bs!1935935 (= (and (= (regOne!39810 lt!2630573) lt!2630591) (= (regTwo!39810 lt!2630573) rTail!78)) (= lambda!464523 lambda!464516))))

(assert (=> bs!1935935 (not (= lambda!464523 lambda!464514))))

(declare-fun bs!1935937 () Bool)

(assert (= bs!1935937 (and b!7496423 b!7496103)))

(assert (=> bs!1935937 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (regOne!39810 lt!2630573) (regOne!39810 lt!2630591)) (= (regTwo!39810 lt!2630573) (regTwo!39810 lt!2630591))) (= lambda!464523 lambda!464493))))

(declare-fun bs!1935939 () Bool)

(assert (= bs!1935939 (and b!7496423 b!7495975)))

(assert (=> bs!1935939 (= (and (= (regOne!39810 lt!2630573) r1!5845) (= (regTwo!39810 lt!2630573) rTail!78)) (= lambda!464523 lambda!464483))))

(declare-fun bs!1935940 () Bool)

(assert (= bs!1935940 (and b!7496423 b!7496191)))

(assert (=> bs!1935940 (not (= lambda!464523 lambda!464498))))

(assert (=> bs!1935939 (not (= lambda!464523 lambda!464482))))

(declare-fun bs!1935943 () Bool)

(assert (= bs!1935943 (and b!7496423 b!7496422)))

(assert (=> bs!1935943 (not (= lambda!464523 lambda!464521))))

(assert (=> bs!1935931 (not (= lambda!464523 lambda!464480))))

(declare-fun bs!1935945 () Bool)

(assert (= bs!1935945 (and b!7496423 b!7496231)))

(assert (=> bs!1935945 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (regOne!39810 lt!2630573) (regOne!39810 r2!5783)) (= (regTwo!39810 lt!2630573) (regTwo!39810 r2!5783))) (= lambda!464523 lambda!464501))))

(assert (=> b!7496423 true))

(assert (=> b!7496423 true))

(declare-fun b!7496418 () Bool)

(declare-fun c!1384024 () Bool)

(assert (=> b!7496418 (= c!1384024 ((_ is ElementMatch!19649) lt!2630573))))

(declare-fun e!4469707 () Bool)

(declare-fun e!4469710 () Bool)

(assert (=> b!7496418 (= e!4469707 e!4469710)))

(declare-fun b!7496419 () Bool)

(declare-fun c!1384023 () Bool)

(assert (=> b!7496419 (= c!1384023 ((_ is Union!19649) lt!2630573))))

(declare-fun e!4469709 () Bool)

(assert (=> b!7496419 (= e!4469710 e!4469709)))

(declare-fun b!7496420 () Bool)

(assert (=> b!7496420 (= e!4469710 (= s!13591 (Cons!72239 (c!1383920 lt!2630573) Nil!72239)))))

(declare-fun bm!688168 () Bool)

(declare-fun call!688174 () Bool)

(assert (=> bm!688168 (= call!688174 (isEmpty!41273 s!13591))))

(declare-fun b!7496421 () Bool)

(declare-fun res!3007141 () Bool)

(declare-fun e!4469705 () Bool)

(assert (=> b!7496421 (=> res!3007141 e!4469705)))

(assert (=> b!7496421 (= res!3007141 call!688174)))

(declare-fun e!4469708 () Bool)

(assert (=> b!7496421 (= e!4469708 e!4469705)))

(declare-fun call!688173 () Bool)

(assert (=> b!7496422 (= e!4469705 call!688173)))

(assert (=> b!7496423 (= e!4469708 call!688173)))

(declare-fun b!7496424 () Bool)

(declare-fun e!4469706 () Bool)

(assert (=> b!7496424 (= e!4469706 (matchRSpec!4326 (regTwo!39811 lt!2630573) s!13591))))

(declare-fun b!7496425 () Bool)

(declare-fun e!4469711 () Bool)

(assert (=> b!7496425 (= e!4469711 e!4469707)))

(declare-fun res!3007142 () Bool)

(assert (=> b!7496425 (= res!3007142 (not ((_ is EmptyLang!19649) lt!2630573)))))

(assert (=> b!7496425 (=> (not res!3007142) (not e!4469707))))

(declare-fun d!2301846 () Bool)

(declare-fun c!1384025 () Bool)

(assert (=> d!2301846 (= c!1384025 ((_ is EmptyExpr!19649) lt!2630573))))

(assert (=> d!2301846 (= (matchRSpec!4326 lt!2630573 s!13591) e!4469711)))

(declare-fun b!7496426 () Bool)

(assert (=> b!7496426 (= e!4469709 e!4469708)))

(declare-fun c!1384026 () Bool)

(assert (=> b!7496426 (= c!1384026 ((_ is Star!19649) lt!2630573))))

(declare-fun bm!688169 () Bool)

(assert (=> bm!688169 (= call!688173 (Exists!4266 (ite c!1384026 lambda!464521 lambda!464523)))))

(declare-fun b!7496427 () Bool)

(assert (=> b!7496427 (= e!4469709 e!4469706)))

(declare-fun res!3007143 () Bool)

(assert (=> b!7496427 (= res!3007143 (matchRSpec!4326 (regOne!39811 lt!2630573) s!13591))))

(assert (=> b!7496427 (=> res!3007143 e!4469706)))

(declare-fun b!7496428 () Bool)

(assert (=> b!7496428 (= e!4469711 call!688174)))

(assert (= (and d!2301846 c!1384025) b!7496428))

(assert (= (and d!2301846 (not c!1384025)) b!7496425))

(assert (= (and b!7496425 res!3007142) b!7496418))

(assert (= (and b!7496418 c!1384024) b!7496420))

(assert (= (and b!7496418 (not c!1384024)) b!7496419))

(assert (= (and b!7496419 c!1384023) b!7496427))

(assert (= (and b!7496419 (not c!1384023)) b!7496426))

(assert (= (and b!7496427 (not res!3007143)) b!7496424))

(assert (= (and b!7496426 c!1384026) b!7496421))

(assert (= (and b!7496426 (not c!1384026)) b!7496423))

(assert (= (and b!7496421 (not res!3007141)) b!7496422))

(assert (= (or b!7496422 b!7496423) bm!688169))

(assert (= (or b!7496428 b!7496421) bm!688168))

(assert (=> bm!688168 m!8080072))

(declare-fun m!8080096 () Bool)

(assert (=> b!7496424 m!8080096))

(declare-fun m!8080098 () Bool)

(assert (=> bm!688169 m!8080098))

(declare-fun m!8080100 () Bool)

(assert (=> b!7496427 m!8080100))

(assert (=> b!7495954 d!2301846))

(declare-fun d!2301852 () Bool)

(assert (=> d!2301852 (= (matchR!9411 lt!2630573 s!13591) (matchRSpec!4326 lt!2630573 s!13591))))

(declare-fun lt!2630646 () Unit!166129)

(assert (=> d!2301852 (= lt!2630646 (choose!57944 lt!2630573 s!13591))))

(assert (=> d!2301852 (validRegex!10163 lt!2630573)))

(assert (=> d!2301852 (= (mainMatchTheorem!4320 lt!2630573 s!13591) lt!2630646)))

(declare-fun bs!1935951 () Bool)

(assert (= bs!1935951 d!2301852))

(assert (=> bs!1935951 m!8079800))

(assert (=> bs!1935951 m!8079804))

(declare-fun m!8080102 () Bool)

(assert (=> bs!1935951 m!8080102))

(assert (=> bs!1935951 m!8080074))

(assert (=> b!7495954 d!2301852))

(declare-fun bs!1935955 () Bool)

(declare-fun b!7496444 () Bool)

(assert (= bs!1935955 (and b!7496444 b!7496102)))

(declare-fun lambda!464526 () Int)

(assert (=> bs!1935955 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (reg!19978 lt!2630578) (reg!19978 lt!2630591)) (= lt!2630578 lt!2630591)) (= lambda!464526 lambda!464492))))

(declare-fun bs!1935958 () Bool)

(assert (= bs!1935958 (and b!7496444 b!7495972)))

(assert (=> bs!1935958 (not (= lambda!464526 lambda!464481))))

(declare-fun bs!1935960 () Bool)

(assert (= bs!1935960 (and b!7496444 b!7496192)))

(assert (=> bs!1935960 (not (= lambda!464526 lambda!464499))))

(declare-fun bs!1935961 () Bool)

(assert (= bs!1935961 (and b!7496444 d!2301816)))

(assert (=> bs!1935961 (not (= lambda!464526 lambda!464506))))

(declare-fun bs!1935963 () Bool)

(assert (= bs!1935963 (and b!7496444 b!7496230)))

(assert (=> bs!1935963 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (reg!19978 lt!2630578) (reg!19978 r2!5783)) (= lt!2630578 r2!5783)) (= lambda!464526 lambda!464500))))

(declare-fun bs!1935965 () Bool)

(assert (= bs!1935965 (and b!7496444 d!2301824)))

(assert (=> bs!1935965 (not (= lambda!464526 lambda!464516))))

(declare-fun bs!1935967 () Bool)

(assert (= bs!1935967 (and b!7496444 b!7496423)))

(assert (=> bs!1935967 (not (= lambda!464526 lambda!464523))))

(assert (=> bs!1935965 (not (= lambda!464526 lambda!464514))))

(declare-fun bs!1935969 () Bool)

(assert (= bs!1935969 (and b!7496444 b!7496103)))

(assert (=> bs!1935969 (not (= lambda!464526 lambda!464493))))

(declare-fun bs!1935971 () Bool)

(assert (= bs!1935971 (and b!7496444 b!7495975)))

(assert (=> bs!1935971 (not (= lambda!464526 lambda!464483))))

(declare-fun bs!1935972 () Bool)

(assert (= bs!1935972 (and b!7496444 b!7496191)))

(assert (=> bs!1935972 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (reg!19978 lt!2630578) (reg!19978 r1!5845)) (= lt!2630578 r1!5845)) (= lambda!464526 lambda!464498))))

(assert (=> bs!1935971 (not (= lambda!464526 lambda!464482))))

(declare-fun bs!1935973 () Bool)

(assert (= bs!1935973 (and b!7496444 b!7496422)))

(assert (=> bs!1935973 (= (and (= (reg!19978 lt!2630578) (reg!19978 lt!2630573)) (= lt!2630578 lt!2630573)) (= lambda!464526 lambda!464521))))

(assert (=> bs!1935958 (not (= lambda!464526 lambda!464480))))

(declare-fun bs!1935974 () Bool)

(assert (= bs!1935974 (and b!7496444 b!7496231)))

(assert (=> bs!1935974 (not (= lambda!464526 lambda!464501))))

(assert (=> b!7496444 true))

(assert (=> b!7496444 true))

(declare-fun bs!1935976 () Bool)

(declare-fun b!7496445 () Bool)

(assert (= bs!1935976 (and b!7496445 b!7496102)))

(declare-fun lambda!464527 () Int)

(assert (=> bs!1935976 (not (= lambda!464527 lambda!464492))))

(declare-fun bs!1935977 () Bool)

(assert (= bs!1935977 (and b!7496445 b!7495972)))

(assert (=> bs!1935977 (= (and (= (regOne!39810 lt!2630578) lt!2630591) (= (regTwo!39810 lt!2630578) rTail!78)) (= lambda!464527 lambda!464481))))

(declare-fun bs!1935978 () Bool)

(assert (= bs!1935978 (and b!7496445 b!7496192)))

(assert (=> bs!1935978 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (regOne!39810 lt!2630578) (regOne!39810 r1!5845)) (= (regTwo!39810 lt!2630578) (regTwo!39810 r1!5845))) (= lambda!464527 lambda!464499))))

(declare-fun bs!1935979 () Bool)

(assert (= bs!1935979 (and b!7496445 d!2301816)))

(assert (=> bs!1935979 (not (= lambda!464527 lambda!464506))))

(declare-fun bs!1935980 () Bool)

(assert (= bs!1935980 (and b!7496445 b!7496444)))

(assert (=> bs!1935980 (not (= lambda!464527 lambda!464526))))

(declare-fun bs!1935981 () Bool)

(assert (= bs!1935981 (and b!7496445 b!7496230)))

(assert (=> bs!1935981 (not (= lambda!464527 lambda!464500))))

(declare-fun bs!1935982 () Bool)

(assert (= bs!1935982 (and b!7496445 d!2301824)))

(assert (=> bs!1935982 (= (and (= (regOne!39810 lt!2630578) lt!2630591) (= (regTwo!39810 lt!2630578) rTail!78)) (= lambda!464527 lambda!464516))))

(declare-fun bs!1935983 () Bool)

(assert (= bs!1935983 (and b!7496445 b!7496423)))

(assert (=> bs!1935983 (= (and (= (regOne!39810 lt!2630578) (regOne!39810 lt!2630573)) (= (regTwo!39810 lt!2630578) (regTwo!39810 lt!2630573))) (= lambda!464527 lambda!464523))))

(assert (=> bs!1935982 (not (= lambda!464527 lambda!464514))))

(declare-fun bs!1935984 () Bool)

(assert (= bs!1935984 (and b!7496445 b!7496103)))

(assert (=> bs!1935984 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (regOne!39810 lt!2630578) (regOne!39810 lt!2630591)) (= (regTwo!39810 lt!2630578) (regTwo!39810 lt!2630591))) (= lambda!464527 lambda!464493))))

(declare-fun bs!1935985 () Bool)

(assert (= bs!1935985 (and b!7496445 b!7495975)))

(assert (=> bs!1935985 (= (and (= (regOne!39810 lt!2630578) r1!5845) (= (regTwo!39810 lt!2630578) rTail!78)) (= lambda!464527 lambda!464483))))

(declare-fun bs!1935986 () Bool)

(assert (= bs!1935986 (and b!7496445 b!7496191)))

(assert (=> bs!1935986 (not (= lambda!464527 lambda!464498))))

(assert (=> bs!1935985 (not (= lambda!464527 lambda!464482))))

(declare-fun bs!1935987 () Bool)

(assert (= bs!1935987 (and b!7496445 b!7496422)))

(assert (=> bs!1935987 (not (= lambda!464527 lambda!464521))))

(assert (=> bs!1935977 (not (= lambda!464527 lambda!464480))))

(declare-fun bs!1935990 () Bool)

(assert (= bs!1935990 (and b!7496445 b!7496231)))

(assert (=> bs!1935990 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (regOne!39810 lt!2630578) (regOne!39810 r2!5783)) (= (regTwo!39810 lt!2630578) (regTwo!39810 r2!5783))) (= lambda!464527 lambda!464501))))

(assert (=> b!7496445 true))

(assert (=> b!7496445 true))

(declare-fun b!7496440 () Bool)

(declare-fun c!1384032 () Bool)

(assert (=> b!7496440 (= c!1384032 ((_ is ElementMatch!19649) lt!2630578))))

(declare-fun e!4469721 () Bool)

(declare-fun e!4469724 () Bool)

(assert (=> b!7496440 (= e!4469721 e!4469724)))

(declare-fun b!7496441 () Bool)

(declare-fun c!1384031 () Bool)

(assert (=> b!7496441 (= c!1384031 ((_ is Union!19649) lt!2630578))))

(declare-fun e!4469723 () Bool)

(assert (=> b!7496441 (= e!4469724 e!4469723)))

(declare-fun b!7496442 () Bool)

(assert (=> b!7496442 (= e!4469724 (= s!13591 (Cons!72239 (c!1383920 lt!2630578) Nil!72239)))))

(declare-fun bm!688172 () Bool)

(declare-fun call!688178 () Bool)

(assert (=> bm!688172 (= call!688178 (isEmpty!41273 s!13591))))

(declare-fun b!7496443 () Bool)

(declare-fun res!3007147 () Bool)

(declare-fun e!4469719 () Bool)

(assert (=> b!7496443 (=> res!3007147 e!4469719)))

(assert (=> b!7496443 (= res!3007147 call!688178)))

(declare-fun e!4469722 () Bool)

(assert (=> b!7496443 (= e!4469722 e!4469719)))

(declare-fun call!688177 () Bool)

(assert (=> b!7496444 (= e!4469719 call!688177)))

(assert (=> b!7496445 (= e!4469722 call!688177)))

(declare-fun b!7496446 () Bool)

(declare-fun e!4469720 () Bool)

(assert (=> b!7496446 (= e!4469720 (matchRSpec!4326 (regTwo!39811 lt!2630578) s!13591))))

(declare-fun b!7496447 () Bool)

(declare-fun e!4469725 () Bool)

(assert (=> b!7496447 (= e!4469725 e!4469721)))

(declare-fun res!3007148 () Bool)

(assert (=> b!7496447 (= res!3007148 (not ((_ is EmptyLang!19649) lt!2630578)))))

(assert (=> b!7496447 (=> (not res!3007148) (not e!4469721))))

(declare-fun d!2301854 () Bool)

(declare-fun c!1384033 () Bool)

(assert (=> d!2301854 (= c!1384033 ((_ is EmptyExpr!19649) lt!2630578))))

(assert (=> d!2301854 (= (matchRSpec!4326 lt!2630578 s!13591) e!4469725)))

(declare-fun b!7496448 () Bool)

(assert (=> b!7496448 (= e!4469723 e!4469722)))

(declare-fun c!1384034 () Bool)

(assert (=> b!7496448 (= c!1384034 ((_ is Star!19649) lt!2630578))))

(declare-fun bm!688173 () Bool)

(assert (=> bm!688173 (= call!688177 (Exists!4266 (ite c!1384034 lambda!464526 lambda!464527)))))

(declare-fun b!7496449 () Bool)

(assert (=> b!7496449 (= e!4469723 e!4469720)))

(declare-fun res!3007149 () Bool)

(assert (=> b!7496449 (= res!3007149 (matchRSpec!4326 (regOne!39811 lt!2630578) s!13591))))

(assert (=> b!7496449 (=> res!3007149 e!4469720)))

(declare-fun b!7496450 () Bool)

(assert (=> b!7496450 (= e!4469725 call!688178)))

(assert (= (and d!2301854 c!1384033) b!7496450))

(assert (= (and d!2301854 (not c!1384033)) b!7496447))

(assert (= (and b!7496447 res!3007148) b!7496440))

(assert (= (and b!7496440 c!1384032) b!7496442))

(assert (= (and b!7496440 (not c!1384032)) b!7496441))

(assert (= (and b!7496441 c!1384031) b!7496449))

(assert (= (and b!7496441 (not c!1384031)) b!7496448))

(assert (= (and b!7496449 (not res!3007149)) b!7496446))

(assert (= (and b!7496448 c!1384034) b!7496443))

(assert (= (and b!7496448 (not c!1384034)) b!7496445))

(assert (= (and b!7496443 (not res!3007147)) b!7496444))

(assert (= (or b!7496444 b!7496445) bm!688173))

(assert (= (or b!7496450 b!7496443) bm!688172))

(assert (=> bm!688172 m!8080072))

(declare-fun m!8080128 () Bool)

(assert (=> b!7496446 m!8080128))

(declare-fun m!8080130 () Bool)

(assert (=> bm!688173 m!8080130))

(declare-fun m!8080132 () Bool)

(assert (=> b!7496449 m!8080132))

(assert (=> b!7495954 d!2301854))

(declare-fun b!7496476 () Bool)

(declare-fun e!4469742 () Bool)

(assert (=> b!7496476 (= e!4469742 (not (= (head!15381 s!13591) (c!1383920 lt!2630578))))))

(declare-fun b!7496477 () Bool)

(declare-fun e!4469746 () Bool)

(assert (=> b!7496477 (= e!4469746 (matchR!9411 (derivativeStep!5641 lt!2630578 (head!15381 s!13591)) (tail!14950 s!13591)))))

(declare-fun b!7496478 () Bool)

(declare-fun e!4469745 () Bool)

(declare-fun lt!2630649 () Bool)

(declare-fun call!688182 () Bool)

(assert (=> b!7496478 (= e!4469745 (= lt!2630649 call!688182))))

(declare-fun b!7496479 () Bool)

(declare-fun e!4469741 () Bool)

(assert (=> b!7496479 (= e!4469741 (= (head!15381 s!13591) (c!1383920 lt!2630578)))))

(declare-fun b!7496481 () Bool)

(declare-fun e!4469743 () Bool)

(declare-fun e!4469740 () Bool)

(assert (=> b!7496481 (= e!4469743 e!4469740)))

(declare-fun res!3007163 () Bool)

(assert (=> b!7496481 (=> (not res!3007163) (not e!4469740))))

(assert (=> b!7496481 (= res!3007163 (not lt!2630649))))

(declare-fun b!7496482 () Bool)

(declare-fun res!3007165 () Bool)

(assert (=> b!7496482 (=> res!3007165 e!4469742)))

(assert (=> b!7496482 (= res!3007165 (not (isEmpty!41273 (tail!14950 s!13591))))))

(declare-fun b!7496483 () Bool)

(assert (=> b!7496483 (= e!4469740 e!4469742)))

(declare-fun res!3007168 () Bool)

(assert (=> b!7496483 (=> res!3007168 e!4469742)))

(assert (=> b!7496483 (= res!3007168 call!688182)))

(declare-fun b!7496484 () Bool)

(declare-fun res!3007161 () Bool)

(assert (=> b!7496484 (=> (not res!3007161) (not e!4469741))))

(assert (=> b!7496484 (= res!3007161 (not call!688182))))

(declare-fun bm!688177 () Bool)

(assert (=> bm!688177 (= call!688182 (isEmpty!41273 s!13591))))

(declare-fun d!2301862 () Bool)

(assert (=> d!2301862 e!4469745))

(declare-fun c!1384044 () Bool)

(assert (=> d!2301862 (= c!1384044 ((_ is EmptyExpr!19649) lt!2630578))))

(assert (=> d!2301862 (= lt!2630649 e!4469746)))

(declare-fun c!1384043 () Bool)

(assert (=> d!2301862 (= c!1384043 (isEmpty!41273 s!13591))))

(assert (=> d!2301862 (validRegex!10163 lt!2630578)))

(assert (=> d!2301862 (= (matchR!9411 lt!2630578 s!13591) lt!2630649)))

(declare-fun b!7496480 () Bool)

(declare-fun e!4469744 () Bool)

(assert (=> b!7496480 (= e!4469744 (not lt!2630649))))

(declare-fun b!7496485 () Bool)

(assert (=> b!7496485 (= e!4469745 e!4469744)))

(declare-fun c!1384042 () Bool)

(assert (=> b!7496485 (= c!1384042 ((_ is EmptyLang!19649) lt!2630578))))

(declare-fun b!7496486 () Bool)

(declare-fun res!3007162 () Bool)

(assert (=> b!7496486 (=> res!3007162 e!4469743)))

(assert (=> b!7496486 (= res!3007162 e!4469741)))

(declare-fun res!3007164 () Bool)

(assert (=> b!7496486 (=> (not res!3007164) (not e!4469741))))

(assert (=> b!7496486 (= res!3007164 lt!2630649)))

(declare-fun b!7496487 () Bool)

(declare-fun res!3007167 () Bool)

(assert (=> b!7496487 (=> res!3007167 e!4469743)))

(assert (=> b!7496487 (= res!3007167 (not ((_ is ElementMatch!19649) lt!2630578)))))

(assert (=> b!7496487 (= e!4469744 e!4469743)))

(declare-fun b!7496488 () Bool)

(declare-fun res!3007166 () Bool)

(assert (=> b!7496488 (=> (not res!3007166) (not e!4469741))))

(assert (=> b!7496488 (= res!3007166 (isEmpty!41273 (tail!14950 s!13591)))))

(declare-fun b!7496489 () Bool)

(assert (=> b!7496489 (= e!4469746 (nullable!8584 lt!2630578))))

(assert (= (and d!2301862 c!1384043) b!7496489))

(assert (= (and d!2301862 (not c!1384043)) b!7496477))

(assert (= (and d!2301862 c!1384044) b!7496478))

(assert (= (and d!2301862 (not c!1384044)) b!7496485))

(assert (= (and b!7496485 c!1384042) b!7496480))

(assert (= (and b!7496485 (not c!1384042)) b!7496487))

(assert (= (and b!7496487 (not res!3007167)) b!7496486))

(assert (= (and b!7496486 res!3007164) b!7496484))

(assert (= (and b!7496484 res!3007161) b!7496488))

(assert (= (and b!7496488 res!3007166) b!7496479))

(assert (= (and b!7496486 (not res!3007162)) b!7496481))

(assert (= (and b!7496481 res!3007163) b!7496483))

(assert (= (and b!7496483 (not res!3007168)) b!7496482))

(assert (= (and b!7496482 (not res!3007165)) b!7496476))

(assert (= (or b!7496478 b!7496483 b!7496484) bm!688177))

(assert (=> b!7496476 m!8080070))

(assert (=> d!2301862 m!8080072))

(assert (=> d!2301862 m!8080068))

(declare-fun m!8080134 () Bool)

(assert (=> b!7496489 m!8080134))

(assert (=> b!7496482 m!8080078))

(assert (=> b!7496482 m!8080078))

(assert (=> b!7496482 m!8080080))

(assert (=> bm!688177 m!8080072))

(assert (=> b!7496488 m!8080078))

(assert (=> b!7496488 m!8080078))

(assert (=> b!7496488 m!8080080))

(assert (=> b!7496477 m!8080070))

(assert (=> b!7496477 m!8080070))

(declare-fun m!8080136 () Bool)

(assert (=> b!7496477 m!8080136))

(assert (=> b!7496477 m!8080078))

(assert (=> b!7496477 m!8080136))

(assert (=> b!7496477 m!8080078))

(declare-fun m!8080138 () Bool)

(assert (=> b!7496477 m!8080138))

(assert (=> b!7496479 m!8080070))

(assert (=> b!7495954 d!2301862))

(declare-fun b!7496490 () Bool)

(declare-fun e!4469748 () Option!17198)

(declare-fun e!4469750 () Option!17198)

(assert (=> b!7496490 (= e!4469748 e!4469750)))

(declare-fun c!1384046 () Bool)

(assert (=> b!7496490 (= c!1384046 ((_ is Nil!72239) s!13591))))

(declare-fun b!7496491 () Bool)

(declare-fun e!4469747 () Bool)

(assert (=> b!7496491 (= e!4469747 (matchR!9411 rTail!78 s!13591))))

(declare-fun b!7496492 () Bool)

(assert (=> b!7496492 (= e!4469748 (Some!17197 (tuple2!68733 Nil!72239 s!13591)))))

(declare-fun b!7496493 () Bool)

(declare-fun res!3007173 () Bool)

(declare-fun e!4469751 () Bool)

(assert (=> b!7496493 (=> (not res!3007173) (not e!4469751))))

(declare-fun lt!2630650 () Option!17198)

(assert (=> b!7496493 (= res!3007173 (matchR!9411 rTail!78 (_2!37669 (get!25329 lt!2630650))))))

(declare-fun b!7496494 () Bool)

(declare-fun lt!2630652 () Unit!166129)

(declare-fun lt!2630651 () Unit!166129)

(assert (=> b!7496494 (= lt!2630652 lt!2630651)))

(assert (=> b!7496494 (= (++!17254 (++!17254 Nil!72239 (Cons!72239 (h!78687 s!13591) Nil!72239)) (t!386932 s!13591)) s!13591)))

(assert (=> b!7496494 (= lt!2630651 (lemmaMoveElementToOtherListKeepsConcatEq!3128 Nil!72239 (h!78687 s!13591) (t!386932 s!13591) s!13591))))

(assert (=> b!7496494 (= e!4469750 (findConcatSeparation!3320 r1!5845 rTail!78 (++!17254 Nil!72239 (Cons!72239 (h!78687 s!13591) Nil!72239)) (t!386932 s!13591) s!13591))))

(declare-fun b!7496495 () Bool)

(assert (=> b!7496495 (= e!4469751 (= (++!17254 (_1!37669 (get!25329 lt!2630650)) (_2!37669 (get!25329 lt!2630650))) s!13591))))

(declare-fun b!7496496 () Bool)

(declare-fun res!3007171 () Bool)

(assert (=> b!7496496 (=> (not res!3007171) (not e!4469751))))

(assert (=> b!7496496 (= res!3007171 (matchR!9411 r1!5845 (_1!37669 (get!25329 lt!2630650))))))

(declare-fun d!2301864 () Bool)

(declare-fun e!4469749 () Bool)

(assert (=> d!2301864 e!4469749))

(declare-fun res!3007172 () Bool)

(assert (=> d!2301864 (=> res!3007172 e!4469749)))

(assert (=> d!2301864 (= res!3007172 e!4469751)))

(declare-fun res!3007169 () Bool)

(assert (=> d!2301864 (=> (not res!3007169) (not e!4469751))))

(assert (=> d!2301864 (= res!3007169 (isDefined!13887 lt!2630650))))

(assert (=> d!2301864 (= lt!2630650 e!4469748)))

(declare-fun c!1384045 () Bool)

(assert (=> d!2301864 (= c!1384045 e!4469747)))

(declare-fun res!3007170 () Bool)

(assert (=> d!2301864 (=> (not res!3007170) (not e!4469747))))

(assert (=> d!2301864 (= res!3007170 (matchR!9411 r1!5845 Nil!72239))))

(assert (=> d!2301864 (validRegex!10163 r1!5845)))

(assert (=> d!2301864 (= (findConcatSeparation!3320 r1!5845 rTail!78 Nil!72239 s!13591 s!13591) lt!2630650)))

(declare-fun b!7496497 () Bool)

(assert (=> b!7496497 (= e!4469749 (not (isDefined!13887 lt!2630650)))))

(declare-fun b!7496498 () Bool)

(assert (=> b!7496498 (= e!4469750 None!17197)))

(assert (= (and d!2301864 res!3007170) b!7496491))

(assert (= (and d!2301864 c!1384045) b!7496492))

(assert (= (and d!2301864 (not c!1384045)) b!7496490))

(assert (= (and b!7496490 c!1384046) b!7496498))

(assert (= (and b!7496490 (not c!1384046)) b!7496494))

(assert (= (and d!2301864 res!3007169) b!7496496))

(assert (= (and b!7496496 res!3007171) b!7496493))

(assert (= (and b!7496493 res!3007173) b!7496495))

(assert (= (and d!2301864 (not res!3007172)) b!7496497))

(declare-fun m!8080140 () Bool)

(assert (=> b!7496497 m!8080140))

(declare-fun m!8080142 () Bool)

(assert (=> b!7496495 m!8080142))

(declare-fun m!8080144 () Bool)

(assert (=> b!7496495 m!8080144))

(assert (=> b!7496494 m!8079984))

(assert (=> b!7496494 m!8079984))

(assert (=> b!7496494 m!8079986))

(assert (=> b!7496494 m!8079988))

(assert (=> b!7496494 m!8079984))

(declare-fun m!8080146 () Bool)

(assert (=> b!7496494 m!8080146))

(assert (=> b!7496491 m!8079992))

(assert (=> b!7496493 m!8080142))

(declare-fun m!8080148 () Bool)

(assert (=> b!7496493 m!8080148))

(assert (=> d!2301864 m!8080140))

(declare-fun m!8080150 () Bool)

(assert (=> d!2301864 m!8080150))

(assert (=> d!2301864 m!8079814))

(assert (=> b!7496496 m!8080142))

(declare-fun m!8080152 () Bool)

(assert (=> b!7496496 m!8080152))

(assert (=> b!7495975 d!2301864))

(declare-fun d!2301866 () Bool)

(assert (=> d!2301866 (= (Exists!4266 lambda!464482) (choose!57947 lambda!464482))))

(declare-fun bs!1936013 () Bool)

(assert (= bs!1936013 d!2301866))

(declare-fun m!8080154 () Bool)

(assert (=> bs!1936013 m!8080154))

(assert (=> b!7495975 d!2301866))

(declare-fun b!7496499 () Bool)

(declare-fun e!4469754 () Bool)

(assert (=> b!7496499 (= e!4469754 (not (= (head!15381 (_1!37669 lt!2630584)) (c!1383920 r1!5845))))))

(declare-fun b!7496500 () Bool)

(declare-fun e!4469758 () Bool)

(assert (=> b!7496500 (= e!4469758 (matchR!9411 (derivativeStep!5641 r1!5845 (head!15381 (_1!37669 lt!2630584))) (tail!14950 (_1!37669 lt!2630584))))))

(declare-fun b!7496501 () Bool)

(declare-fun e!4469757 () Bool)

(declare-fun lt!2630653 () Bool)

(declare-fun call!688183 () Bool)

(assert (=> b!7496501 (= e!4469757 (= lt!2630653 call!688183))))

(declare-fun b!7496502 () Bool)

(declare-fun e!4469753 () Bool)

(assert (=> b!7496502 (= e!4469753 (= (head!15381 (_1!37669 lt!2630584)) (c!1383920 r1!5845)))))

(declare-fun b!7496504 () Bool)

(declare-fun e!4469755 () Bool)

(declare-fun e!4469752 () Bool)

(assert (=> b!7496504 (= e!4469755 e!4469752)))

(declare-fun res!3007176 () Bool)

(assert (=> b!7496504 (=> (not res!3007176) (not e!4469752))))

(assert (=> b!7496504 (= res!3007176 (not lt!2630653))))

(declare-fun b!7496505 () Bool)

(declare-fun res!3007178 () Bool)

(assert (=> b!7496505 (=> res!3007178 e!4469754)))

(assert (=> b!7496505 (= res!3007178 (not (isEmpty!41273 (tail!14950 (_1!37669 lt!2630584)))))))

(declare-fun b!7496506 () Bool)

(assert (=> b!7496506 (= e!4469752 e!4469754)))

(declare-fun res!3007181 () Bool)

(assert (=> b!7496506 (=> res!3007181 e!4469754)))

(assert (=> b!7496506 (= res!3007181 call!688183)))

(declare-fun b!7496507 () Bool)

(declare-fun res!3007174 () Bool)

(assert (=> b!7496507 (=> (not res!3007174) (not e!4469753))))

(assert (=> b!7496507 (= res!3007174 (not call!688183))))

(declare-fun bm!688178 () Bool)

(assert (=> bm!688178 (= call!688183 (isEmpty!41273 (_1!37669 lt!2630584)))))

(declare-fun d!2301868 () Bool)

(assert (=> d!2301868 e!4469757))

(declare-fun c!1384049 () Bool)

(assert (=> d!2301868 (= c!1384049 ((_ is EmptyExpr!19649) r1!5845))))

(assert (=> d!2301868 (= lt!2630653 e!4469758)))

(declare-fun c!1384048 () Bool)

(assert (=> d!2301868 (= c!1384048 (isEmpty!41273 (_1!37669 lt!2630584)))))

(assert (=> d!2301868 (validRegex!10163 r1!5845)))

(assert (=> d!2301868 (= (matchR!9411 r1!5845 (_1!37669 lt!2630584)) lt!2630653)))

(declare-fun b!7496503 () Bool)

(declare-fun e!4469756 () Bool)

(assert (=> b!7496503 (= e!4469756 (not lt!2630653))))

(declare-fun b!7496508 () Bool)

(assert (=> b!7496508 (= e!4469757 e!4469756)))

(declare-fun c!1384047 () Bool)

(assert (=> b!7496508 (= c!1384047 ((_ is EmptyLang!19649) r1!5845))))

(declare-fun b!7496509 () Bool)

(declare-fun res!3007175 () Bool)

(assert (=> b!7496509 (=> res!3007175 e!4469755)))

(assert (=> b!7496509 (= res!3007175 e!4469753)))

(declare-fun res!3007177 () Bool)

(assert (=> b!7496509 (=> (not res!3007177) (not e!4469753))))

(assert (=> b!7496509 (= res!3007177 lt!2630653)))

(declare-fun b!7496510 () Bool)

(declare-fun res!3007180 () Bool)

(assert (=> b!7496510 (=> res!3007180 e!4469755)))

(assert (=> b!7496510 (= res!3007180 (not ((_ is ElementMatch!19649) r1!5845)))))

(assert (=> b!7496510 (= e!4469756 e!4469755)))

(declare-fun b!7496511 () Bool)

(declare-fun res!3007179 () Bool)

(assert (=> b!7496511 (=> (not res!3007179) (not e!4469753))))

(assert (=> b!7496511 (= res!3007179 (isEmpty!41273 (tail!14950 (_1!37669 lt!2630584))))))

(declare-fun b!7496512 () Bool)

(assert (=> b!7496512 (= e!4469758 (nullable!8584 r1!5845))))

(assert (= (and d!2301868 c!1384048) b!7496512))

(assert (= (and d!2301868 (not c!1384048)) b!7496500))

(assert (= (and d!2301868 c!1384049) b!7496501))

(assert (= (and d!2301868 (not c!1384049)) b!7496508))

(assert (= (and b!7496508 c!1384047) b!7496503))

(assert (= (and b!7496508 (not c!1384047)) b!7496510))

(assert (= (and b!7496510 (not res!3007180)) b!7496509))

(assert (= (and b!7496509 res!3007177) b!7496507))

(assert (= (and b!7496507 res!3007174) b!7496511))

(assert (= (and b!7496511 res!3007179) b!7496502))

(assert (= (and b!7496509 (not res!3007175)) b!7496504))

(assert (= (and b!7496504 res!3007176) b!7496506))

(assert (= (and b!7496506 (not res!3007181)) b!7496505))

(assert (= (and b!7496505 (not res!3007178)) b!7496499))

(assert (= (or b!7496501 b!7496506 b!7496507) bm!688178))

(assert (=> b!7496499 m!8079902))

(assert (=> d!2301868 m!8079878))

(assert (=> d!2301868 m!8079814))

(declare-fun m!8080162 () Bool)

(assert (=> b!7496512 m!8080162))

(assert (=> b!7496505 m!8079906))

(assert (=> b!7496505 m!8079906))

(assert (=> b!7496505 m!8079908))

(assert (=> bm!688178 m!8079878))

(assert (=> b!7496511 m!8079906))

(assert (=> b!7496511 m!8079906))

(assert (=> b!7496511 m!8079908))

(assert (=> b!7496500 m!8079902))

(assert (=> b!7496500 m!8079902))

(declare-fun m!8080164 () Bool)

(assert (=> b!7496500 m!8080164))

(assert (=> b!7496500 m!8079906))

(assert (=> b!7496500 m!8080164))

(assert (=> b!7496500 m!8079906))

(declare-fun m!8080166 () Bool)

(assert (=> b!7496500 m!8080166))

(assert (=> b!7496502 m!8079902))

(assert (=> b!7495975 d!2301868))

(declare-fun d!2301872 () Bool)

(assert (=> d!2301872 (= (get!25329 lt!2630574) (v!54326 lt!2630574))))

(assert (=> b!7495975 d!2301872))

(declare-fun d!2301874 () Bool)

(assert (=> d!2301874 (= (isDefined!13887 lt!2630574) (not (isEmpty!41275 lt!2630574)))))

(declare-fun bs!1936015 () Bool)

(assert (= bs!1936015 d!2301874))

(declare-fun m!8080174 () Bool)

(assert (=> bs!1936015 m!8080174))

(assert (=> b!7495975 d!2301874))

(declare-fun bs!1936016 () Bool)

(declare-fun d!2301876 () Bool)

(assert (= bs!1936016 (and d!2301876 b!7496102)))

(declare-fun lambda!464530 () Int)

(assert (=> bs!1936016 (not (= lambda!464530 lambda!464492))))

(declare-fun bs!1936017 () Bool)

(assert (= bs!1936017 (and d!2301876 b!7495972)))

(assert (=> bs!1936017 (not (= lambda!464530 lambda!464481))))

(declare-fun bs!1936018 () Bool)

(assert (= bs!1936018 (and d!2301876 b!7496192)))

(assert (=> bs!1936018 (not (= lambda!464530 lambda!464499))))

(declare-fun bs!1936019 () Bool)

(assert (= bs!1936019 (and d!2301876 d!2301816)))

(assert (=> bs!1936019 (= (= r1!5845 lt!2630591) (= lambda!464530 lambda!464506))))

(declare-fun bs!1936020 () Bool)

(assert (= bs!1936020 (and d!2301876 b!7496444)))

(assert (=> bs!1936020 (not (= lambda!464530 lambda!464526))))

(declare-fun bs!1936021 () Bool)

(assert (= bs!1936021 (and d!2301876 b!7496230)))

(assert (=> bs!1936021 (not (= lambda!464530 lambda!464500))))

(declare-fun bs!1936023 () Bool)

(assert (= bs!1936023 (and d!2301876 b!7496445)))

(assert (=> bs!1936023 (not (= lambda!464530 lambda!464527))))

(declare-fun bs!1936024 () Bool)

(assert (= bs!1936024 (and d!2301876 d!2301824)))

(assert (=> bs!1936024 (not (= lambda!464530 lambda!464516))))

(declare-fun bs!1936025 () Bool)

(assert (= bs!1936025 (and d!2301876 b!7496423)))

(assert (=> bs!1936025 (not (= lambda!464530 lambda!464523))))

(assert (=> bs!1936024 (= (= r1!5845 lt!2630591) (= lambda!464530 lambda!464514))))

(declare-fun bs!1936026 () Bool)

(assert (= bs!1936026 (and d!2301876 b!7496103)))

(assert (=> bs!1936026 (not (= lambda!464530 lambda!464493))))

(declare-fun bs!1936028 () Bool)

(assert (= bs!1936028 (and d!2301876 b!7495975)))

(assert (=> bs!1936028 (not (= lambda!464530 lambda!464483))))

(declare-fun bs!1936030 () Bool)

(assert (= bs!1936030 (and d!2301876 b!7496191)))

(assert (=> bs!1936030 (not (= lambda!464530 lambda!464498))))

(assert (=> bs!1936028 (= lambda!464530 lambda!464482)))

(declare-fun bs!1936033 () Bool)

(assert (= bs!1936033 (and d!2301876 b!7496422)))

(assert (=> bs!1936033 (not (= lambda!464530 lambda!464521))))

(assert (=> bs!1936017 (= (= r1!5845 lt!2630591) (= lambda!464530 lambda!464480))))

(declare-fun bs!1936036 () Bool)

(assert (= bs!1936036 (and d!2301876 b!7496231)))

(assert (=> bs!1936036 (not (= lambda!464530 lambda!464501))))

(assert (=> d!2301876 true))

(assert (=> d!2301876 true))

(assert (=> d!2301876 true))

(declare-fun lambda!464532 () Int)

(assert (=> bs!1936016 (not (= lambda!464532 lambda!464492))))

(assert (=> bs!1936017 (= (= r1!5845 lt!2630591) (= lambda!464532 lambda!464481))))

(assert (=> bs!1936018 (= (and (= s!13591 (_1!37669 lt!2630584)) (= r1!5845 (regOne!39810 r1!5845)) (= rTail!78 (regTwo!39810 r1!5845))) (= lambda!464532 lambda!464499))))

(assert (=> bs!1936019 (not (= lambda!464532 lambda!464506))))

(assert (=> bs!1936020 (not (= lambda!464532 lambda!464526))))

(declare-fun bs!1936045 () Bool)

(assert (= bs!1936045 d!2301876))

(assert (=> bs!1936045 (not (= lambda!464532 lambda!464530))))

(assert (=> bs!1936021 (not (= lambda!464532 lambda!464500))))

(assert (=> bs!1936023 (= (and (= r1!5845 (regOne!39810 lt!2630578)) (= rTail!78 (regTwo!39810 lt!2630578))) (= lambda!464532 lambda!464527))))

(assert (=> bs!1936024 (= (= r1!5845 lt!2630591) (= lambda!464532 lambda!464516))))

(assert (=> bs!1936025 (= (and (= r1!5845 (regOne!39810 lt!2630573)) (= rTail!78 (regTwo!39810 lt!2630573))) (= lambda!464532 lambda!464523))))

(assert (=> bs!1936024 (not (= lambda!464532 lambda!464514))))

(assert (=> bs!1936026 (= (and (= s!13591 (_1!37669 lt!2630584)) (= r1!5845 (regOne!39810 lt!2630591)) (= rTail!78 (regTwo!39810 lt!2630591))) (= lambda!464532 lambda!464493))))

(assert (=> bs!1936028 (= lambda!464532 lambda!464483)))

(assert (=> bs!1936030 (not (= lambda!464532 lambda!464498))))

(assert (=> bs!1936028 (not (= lambda!464532 lambda!464482))))

(assert (=> bs!1936033 (not (= lambda!464532 lambda!464521))))

(assert (=> bs!1936017 (not (= lambda!464532 lambda!464480))))

(assert (=> bs!1936036 (= (and (= s!13591 (_1!37669 lt!2630584)) (= r1!5845 (regOne!39810 r2!5783)) (= rTail!78 (regTwo!39810 r2!5783))) (= lambda!464532 lambda!464501))))

(assert (=> d!2301876 true))

(assert (=> d!2301876 true))

(assert (=> d!2301876 true))

(assert (=> d!2301876 (= (Exists!4266 lambda!464530) (Exists!4266 lambda!464532))))

(declare-fun lt!2630655 () Unit!166129)

(assert (=> d!2301876 (= lt!2630655 (choose!57949 r1!5845 rTail!78 s!13591))))

(assert (=> d!2301876 (validRegex!10163 r1!5845)))

(assert (=> d!2301876 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2590 r1!5845 rTail!78 s!13591) lt!2630655)))

(declare-fun m!8080200 () Bool)

(assert (=> bs!1936045 m!8080200))

(declare-fun m!8080202 () Bool)

(assert (=> bs!1936045 m!8080202))

(declare-fun m!8080204 () Bool)

(assert (=> bs!1936045 m!8080204))

(assert (=> bs!1936045 m!8079814))

(assert (=> b!7495975 d!2301876))

(declare-fun d!2301890 () Bool)

(assert (=> d!2301890 (= (Exists!4266 lambda!464483) (choose!57947 lambda!464483))))

(declare-fun bs!1936054 () Bool)

(assert (= bs!1936054 d!2301890))

(declare-fun m!8080206 () Bool)

(assert (=> bs!1936054 m!8080206))

(assert (=> b!7495975 d!2301890))

(declare-fun bs!1936059 () Bool)

(declare-fun d!2301892 () Bool)

(assert (= bs!1936059 (and d!2301892 b!7496102)))

(declare-fun lambda!464534 () Int)

(assert (=> bs!1936059 (not (= lambda!464534 lambda!464492))))

(declare-fun bs!1936062 () Bool)

(assert (= bs!1936062 (and d!2301892 b!7495972)))

(assert (=> bs!1936062 (not (= lambda!464534 lambda!464481))))

(declare-fun bs!1936064 () Bool)

(assert (= bs!1936064 (and d!2301892 b!7496192)))

(assert (=> bs!1936064 (not (= lambda!464534 lambda!464499))))

(declare-fun bs!1936065 () Bool)

(assert (= bs!1936065 (and d!2301892 d!2301816)))

(assert (=> bs!1936065 (= (= r1!5845 lt!2630591) (= lambda!464534 lambda!464506))))

(declare-fun bs!1936067 () Bool)

(assert (= bs!1936067 (and d!2301892 b!7496444)))

(assert (=> bs!1936067 (not (= lambda!464534 lambda!464526))))

(declare-fun bs!1936069 () Bool)

(assert (= bs!1936069 (and d!2301892 d!2301876)))

(assert (=> bs!1936069 (= lambda!464534 lambda!464530)))

(declare-fun bs!1936071 () Bool)

(assert (= bs!1936071 (and d!2301892 b!7496230)))

(assert (=> bs!1936071 (not (= lambda!464534 lambda!464500))))

(declare-fun bs!1936072 () Bool)

(assert (= bs!1936072 (and d!2301892 b!7496445)))

(assert (=> bs!1936072 (not (= lambda!464534 lambda!464527))))

(assert (=> bs!1936069 (not (= lambda!464534 lambda!464532))))

(declare-fun bs!1936073 () Bool)

(assert (= bs!1936073 (and d!2301892 d!2301824)))

(assert (=> bs!1936073 (not (= lambda!464534 lambda!464516))))

(declare-fun bs!1936074 () Bool)

(assert (= bs!1936074 (and d!2301892 b!7496423)))

(assert (=> bs!1936074 (not (= lambda!464534 lambda!464523))))

(assert (=> bs!1936073 (= (= r1!5845 lt!2630591) (= lambda!464534 lambda!464514))))

(declare-fun bs!1936075 () Bool)

(assert (= bs!1936075 (and d!2301892 b!7496103)))

(assert (=> bs!1936075 (not (= lambda!464534 lambda!464493))))

(declare-fun bs!1936076 () Bool)

(assert (= bs!1936076 (and d!2301892 b!7495975)))

(assert (=> bs!1936076 (not (= lambda!464534 lambda!464483))))

(declare-fun bs!1936077 () Bool)

(assert (= bs!1936077 (and d!2301892 b!7496191)))

(assert (=> bs!1936077 (not (= lambda!464534 lambda!464498))))

(assert (=> bs!1936076 (= lambda!464534 lambda!464482)))

(declare-fun bs!1936078 () Bool)

(assert (= bs!1936078 (and d!2301892 b!7496422)))

(assert (=> bs!1936078 (not (= lambda!464534 lambda!464521))))

(assert (=> bs!1936062 (= (= r1!5845 lt!2630591) (= lambda!464534 lambda!464480))))

(declare-fun bs!1936080 () Bool)

(assert (= bs!1936080 (and d!2301892 b!7496231)))

(assert (=> bs!1936080 (not (= lambda!464534 lambda!464501))))

(assert (=> d!2301892 true))

(assert (=> d!2301892 true))

(assert (=> d!2301892 true))

(assert (=> d!2301892 (= (isDefined!13887 (findConcatSeparation!3320 r1!5845 rTail!78 Nil!72239 s!13591 s!13591)) (Exists!4266 lambda!464534))))

(declare-fun lt!2630659 () Unit!166129)

(assert (=> d!2301892 (= lt!2630659 (choose!57946 r1!5845 rTail!78 s!13591))))

(assert (=> d!2301892 (validRegex!10163 r1!5845)))

(assert (=> d!2301892 (= (lemmaFindConcatSeparationEquivalentToExists!3078 r1!5845 rTail!78 s!13591) lt!2630659)))

(declare-fun bs!1936081 () Bool)

(assert (= bs!1936081 d!2301892))

(assert (=> bs!1936081 m!8079828))

(declare-fun m!8080208 () Bool)

(assert (=> bs!1936081 m!8080208))

(assert (=> bs!1936081 m!8079828))

(declare-fun m!8080210 () Bool)

(assert (=> bs!1936081 m!8080210))

(assert (=> bs!1936081 m!8079814))

(declare-fun m!8080212 () Bool)

(assert (=> bs!1936081 m!8080212))

(assert (=> b!7495975 d!2301892))

(declare-fun b!7496541 () Bool)

(declare-fun e!4469775 () Bool)

(assert (=> b!7496541 (= e!4469775 (not (= (head!15381 (_2!37669 lt!2630584)) (c!1383920 rTail!78))))))

(declare-fun b!7496542 () Bool)

(declare-fun e!4469779 () Bool)

(assert (=> b!7496542 (= e!4469779 (matchR!9411 (derivativeStep!5641 rTail!78 (head!15381 (_2!37669 lt!2630584))) (tail!14950 (_2!37669 lt!2630584))))))

(declare-fun b!7496543 () Bool)

(declare-fun e!4469778 () Bool)

(declare-fun lt!2630660 () Bool)

(declare-fun call!688186 () Bool)

(assert (=> b!7496543 (= e!4469778 (= lt!2630660 call!688186))))

(declare-fun b!7496544 () Bool)

(declare-fun e!4469774 () Bool)

(assert (=> b!7496544 (= e!4469774 (= (head!15381 (_2!37669 lt!2630584)) (c!1383920 rTail!78)))))

(declare-fun b!7496546 () Bool)

(declare-fun e!4469776 () Bool)

(declare-fun e!4469773 () Bool)

(assert (=> b!7496546 (= e!4469776 e!4469773)))

(declare-fun res!3007200 () Bool)

(assert (=> b!7496546 (=> (not res!3007200) (not e!4469773))))

(assert (=> b!7496546 (= res!3007200 (not lt!2630660))))

(declare-fun b!7496547 () Bool)

(declare-fun res!3007202 () Bool)

(assert (=> b!7496547 (=> res!3007202 e!4469775)))

(assert (=> b!7496547 (= res!3007202 (not (isEmpty!41273 (tail!14950 (_2!37669 lt!2630584)))))))

(declare-fun b!7496548 () Bool)

(assert (=> b!7496548 (= e!4469773 e!4469775)))

(declare-fun res!3007205 () Bool)

(assert (=> b!7496548 (=> res!3007205 e!4469775)))

(assert (=> b!7496548 (= res!3007205 call!688186)))

(declare-fun b!7496549 () Bool)

(declare-fun res!3007198 () Bool)

(assert (=> b!7496549 (=> (not res!3007198) (not e!4469774))))

(assert (=> b!7496549 (= res!3007198 (not call!688186))))

(declare-fun bm!688181 () Bool)

(assert (=> bm!688181 (= call!688186 (isEmpty!41273 (_2!37669 lt!2630584)))))

(declare-fun d!2301894 () Bool)

(assert (=> d!2301894 e!4469778))

(declare-fun c!1384058 () Bool)

(assert (=> d!2301894 (= c!1384058 ((_ is EmptyExpr!19649) rTail!78))))

(assert (=> d!2301894 (= lt!2630660 e!4469779)))

(declare-fun c!1384057 () Bool)

(assert (=> d!2301894 (= c!1384057 (isEmpty!41273 (_2!37669 lt!2630584)))))

(assert (=> d!2301894 (validRegex!10163 rTail!78)))

(assert (=> d!2301894 (= (matchR!9411 rTail!78 (_2!37669 lt!2630584)) lt!2630660)))

(declare-fun b!7496545 () Bool)

(declare-fun e!4469777 () Bool)

(assert (=> b!7496545 (= e!4469777 (not lt!2630660))))

(declare-fun b!7496550 () Bool)

(assert (=> b!7496550 (= e!4469778 e!4469777)))

(declare-fun c!1384056 () Bool)

(assert (=> b!7496550 (= c!1384056 ((_ is EmptyLang!19649) rTail!78))))

(declare-fun b!7496551 () Bool)

(declare-fun res!3007199 () Bool)

(assert (=> b!7496551 (=> res!3007199 e!4469776)))

(assert (=> b!7496551 (= res!3007199 e!4469774)))

(declare-fun res!3007201 () Bool)

(assert (=> b!7496551 (=> (not res!3007201) (not e!4469774))))

(assert (=> b!7496551 (= res!3007201 lt!2630660)))

(declare-fun b!7496552 () Bool)

(declare-fun res!3007204 () Bool)

(assert (=> b!7496552 (=> res!3007204 e!4469776)))

(assert (=> b!7496552 (= res!3007204 (not ((_ is ElementMatch!19649) rTail!78)))))

(assert (=> b!7496552 (= e!4469777 e!4469776)))

(declare-fun b!7496553 () Bool)

(declare-fun res!3007203 () Bool)

(assert (=> b!7496553 (=> (not res!3007203) (not e!4469774))))

(assert (=> b!7496553 (= res!3007203 (isEmpty!41273 (tail!14950 (_2!37669 lt!2630584))))))

(declare-fun b!7496554 () Bool)

(assert (=> b!7496554 (= e!4469779 (nullable!8584 rTail!78))))

(assert (= (and d!2301894 c!1384057) b!7496554))

(assert (= (and d!2301894 (not c!1384057)) b!7496542))

(assert (= (and d!2301894 c!1384058) b!7496543))

(assert (= (and d!2301894 (not c!1384058)) b!7496550))

(assert (= (and b!7496550 c!1384056) b!7496545))

(assert (= (and b!7496550 (not c!1384056)) b!7496552))

(assert (= (and b!7496552 (not res!3007204)) b!7496551))

(assert (= (and b!7496551 res!3007201) b!7496549))

(assert (= (and b!7496549 res!3007198) b!7496553))

(assert (= (and b!7496553 res!3007203) b!7496544))

(assert (= (and b!7496551 (not res!3007199)) b!7496546))

(assert (= (and b!7496546 res!3007200) b!7496548))

(assert (= (and b!7496548 (not res!3007205)) b!7496547))

(assert (= (and b!7496547 (not res!3007202)) b!7496541))

(assert (= (or b!7496543 b!7496548 b!7496549) bm!688181))

(declare-fun m!8080214 () Bool)

(assert (=> b!7496541 m!8080214))

(declare-fun m!8080216 () Bool)

(assert (=> d!2301894 m!8080216))

(assert (=> d!2301894 m!8079812))

(declare-fun m!8080220 () Bool)

(assert (=> b!7496554 m!8080220))

(declare-fun m!8080222 () Bool)

(assert (=> b!7496547 m!8080222))

(assert (=> b!7496547 m!8080222))

(declare-fun m!8080226 () Bool)

(assert (=> b!7496547 m!8080226))

(assert (=> bm!688181 m!8080216))

(assert (=> b!7496553 m!8080222))

(assert (=> b!7496553 m!8080222))

(assert (=> b!7496553 m!8080226))

(assert (=> b!7496542 m!8080214))

(assert (=> b!7496542 m!8080214))

(declare-fun m!8080230 () Bool)

(assert (=> b!7496542 m!8080230))

(assert (=> b!7496542 m!8080222))

(assert (=> b!7496542 m!8080230))

(assert (=> b!7496542 m!8080222))

(declare-fun m!8080232 () Bool)

(assert (=> b!7496542 m!8080232))

(assert (=> b!7496544 m!8080214))

(assert (=> b!7495964 d!2301894))

(declare-fun b!7496564 () Bool)

(declare-fun e!4469787 () Bool)

(assert (=> b!7496564 (= e!4469787 (not (= (head!15381 s!13591) (c!1383920 lt!2630581))))))

(declare-fun b!7496565 () Bool)

(declare-fun e!4469791 () Bool)

(assert (=> b!7496565 (= e!4469791 (matchR!9411 (derivativeStep!5641 lt!2630581 (head!15381 s!13591)) (tail!14950 s!13591)))))

(declare-fun b!7496566 () Bool)

(declare-fun e!4469790 () Bool)

(declare-fun lt!2630664 () Bool)

(declare-fun call!688187 () Bool)

(assert (=> b!7496566 (= e!4469790 (= lt!2630664 call!688187))))

(declare-fun b!7496567 () Bool)

(declare-fun e!4469786 () Bool)

(assert (=> b!7496567 (= e!4469786 (= (head!15381 s!13591) (c!1383920 lt!2630581)))))

(declare-fun b!7496569 () Bool)

(declare-fun e!4469788 () Bool)

(declare-fun e!4469785 () Bool)

(assert (=> b!7496569 (= e!4469788 e!4469785)))

(declare-fun res!3007213 () Bool)

(assert (=> b!7496569 (=> (not res!3007213) (not e!4469785))))

(assert (=> b!7496569 (= res!3007213 (not lt!2630664))))

(declare-fun b!7496570 () Bool)

(declare-fun res!3007215 () Bool)

(assert (=> b!7496570 (=> res!3007215 e!4469787)))

(assert (=> b!7496570 (= res!3007215 (not (isEmpty!41273 (tail!14950 s!13591))))))

(declare-fun b!7496571 () Bool)

(assert (=> b!7496571 (= e!4469785 e!4469787)))

(declare-fun res!3007218 () Bool)

(assert (=> b!7496571 (=> res!3007218 e!4469787)))

(assert (=> b!7496571 (= res!3007218 call!688187)))

(declare-fun b!7496572 () Bool)

(declare-fun res!3007211 () Bool)

(assert (=> b!7496572 (=> (not res!3007211) (not e!4469786))))

(assert (=> b!7496572 (= res!3007211 (not call!688187))))

(declare-fun bm!688182 () Bool)

(assert (=> bm!688182 (= call!688187 (isEmpty!41273 s!13591))))

(declare-fun d!2301898 () Bool)

(assert (=> d!2301898 e!4469790))

(declare-fun c!1384063 () Bool)

(assert (=> d!2301898 (= c!1384063 ((_ is EmptyExpr!19649) lt!2630581))))

(assert (=> d!2301898 (= lt!2630664 e!4469791)))

(declare-fun c!1384062 () Bool)

(assert (=> d!2301898 (= c!1384062 (isEmpty!41273 s!13591))))

(assert (=> d!2301898 (validRegex!10163 lt!2630581)))

(assert (=> d!2301898 (= (matchR!9411 lt!2630581 s!13591) lt!2630664)))

(declare-fun b!7496568 () Bool)

(declare-fun e!4469789 () Bool)

(assert (=> b!7496568 (= e!4469789 (not lt!2630664))))

(declare-fun b!7496573 () Bool)

(assert (=> b!7496573 (= e!4469790 e!4469789)))

(declare-fun c!1384061 () Bool)

(assert (=> b!7496573 (= c!1384061 ((_ is EmptyLang!19649) lt!2630581))))

(declare-fun b!7496574 () Bool)

(declare-fun res!3007212 () Bool)

(assert (=> b!7496574 (=> res!3007212 e!4469788)))

(assert (=> b!7496574 (= res!3007212 e!4469786)))

(declare-fun res!3007214 () Bool)

(assert (=> b!7496574 (=> (not res!3007214) (not e!4469786))))

(assert (=> b!7496574 (= res!3007214 lt!2630664)))

(declare-fun b!7496575 () Bool)

(declare-fun res!3007217 () Bool)

(assert (=> b!7496575 (=> res!3007217 e!4469788)))

(assert (=> b!7496575 (= res!3007217 (not ((_ is ElementMatch!19649) lt!2630581)))))

(assert (=> b!7496575 (= e!4469789 e!4469788)))

(declare-fun b!7496576 () Bool)

(declare-fun res!3007216 () Bool)

(assert (=> b!7496576 (=> (not res!3007216) (not e!4469786))))

(assert (=> b!7496576 (= res!3007216 (isEmpty!41273 (tail!14950 s!13591)))))

(declare-fun b!7496577 () Bool)

(assert (=> b!7496577 (= e!4469791 (nullable!8584 lt!2630581))))

(assert (= (and d!2301898 c!1384062) b!7496577))

(assert (= (and d!2301898 (not c!1384062)) b!7496565))

(assert (= (and d!2301898 c!1384063) b!7496566))

(assert (= (and d!2301898 (not c!1384063)) b!7496573))

(assert (= (and b!7496573 c!1384061) b!7496568))

(assert (= (and b!7496573 (not c!1384061)) b!7496575))

(assert (= (and b!7496575 (not res!3007217)) b!7496574))

(assert (= (and b!7496574 res!3007214) b!7496572))

(assert (= (and b!7496572 res!3007211) b!7496576))

(assert (= (and b!7496576 res!3007216) b!7496567))

(assert (= (and b!7496574 (not res!3007212)) b!7496569))

(assert (= (and b!7496569 res!3007213) b!7496571))

(assert (= (and b!7496571 (not res!3007218)) b!7496570))

(assert (= (and b!7496570 (not res!3007215)) b!7496564))

(assert (= (or b!7496566 b!7496571 b!7496572) bm!688182))

(assert (=> b!7496564 m!8080070))

(assert (=> d!2301898 m!8080072))

(declare-fun m!8080234 () Bool)

(assert (=> d!2301898 m!8080234))

(declare-fun m!8080236 () Bool)

(assert (=> b!7496577 m!8080236))

(assert (=> b!7496570 m!8080078))

(assert (=> b!7496570 m!8080078))

(assert (=> b!7496570 m!8080080))

(assert (=> bm!688182 m!8080072))

(assert (=> b!7496576 m!8080078))

(assert (=> b!7496576 m!8080078))

(assert (=> b!7496576 m!8080080))

(assert (=> b!7496565 m!8080070))

(assert (=> b!7496565 m!8080070))

(declare-fun m!8080238 () Bool)

(assert (=> b!7496565 m!8080238))

(assert (=> b!7496565 m!8080078))

(assert (=> b!7496565 m!8080238))

(assert (=> b!7496565 m!8080078))

(declare-fun m!8080242 () Bool)

(assert (=> b!7496565 m!8080242))

(assert (=> b!7496567 m!8080070))

(assert (=> b!7495969 d!2301898))

(declare-fun d!2301900 () Bool)

(assert (=> d!2301900 (= (matchR!9411 lt!2630577 s!13591) (matchRSpec!4326 lt!2630577 s!13591))))

(declare-fun lt!2630665 () Unit!166129)

(assert (=> d!2301900 (= lt!2630665 (choose!57944 lt!2630577 s!13591))))

(assert (=> d!2301900 (validRegex!10163 lt!2630577)))

(assert (=> d!2301900 (= (mainMatchTheorem!4320 lt!2630577 s!13591) lt!2630665)))

(declare-fun bs!1936082 () Bool)

(assert (= bs!1936082 d!2301900))

(assert (=> bs!1936082 m!8079840))

(assert (=> bs!1936082 m!8079842))

(declare-fun m!8080246 () Bool)

(assert (=> bs!1936082 m!8080246))

(declare-fun m!8080250 () Bool)

(assert (=> bs!1936082 m!8080250))

(assert (=> b!7495969 d!2301900))

(declare-fun d!2301902 () Bool)

(assert (=> d!2301902 (= (matchR!9411 lt!2630581 s!13591) (matchRSpec!4326 lt!2630581 s!13591))))

(declare-fun lt!2630666 () Unit!166129)

(assert (=> d!2301902 (= lt!2630666 (choose!57944 lt!2630581 s!13591))))

(assert (=> d!2301902 (validRegex!10163 lt!2630581)))

(assert (=> d!2301902 (= (mainMatchTheorem!4320 lt!2630581 s!13591) lt!2630666)))

(declare-fun bs!1936083 () Bool)

(assert (= bs!1936083 d!2301902))

(assert (=> bs!1936083 m!8079836))

(assert (=> bs!1936083 m!8079834))

(declare-fun m!8080256 () Bool)

(assert (=> bs!1936083 m!8080256))

(assert (=> bs!1936083 m!8080234))

(assert (=> b!7495969 d!2301902))

(declare-fun bs!1936084 () Bool)

(declare-fun b!7496582 () Bool)

(assert (= bs!1936084 (and b!7496582 b!7496102)))

(declare-fun lambda!464536 () Int)

(assert (=> bs!1936084 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (reg!19978 lt!2630581) (reg!19978 lt!2630591)) (= lt!2630581 lt!2630591)) (= lambda!464536 lambda!464492))))

(declare-fun bs!1936086 () Bool)

(assert (= bs!1936086 (and b!7496582 b!7495972)))

(assert (=> bs!1936086 (not (= lambda!464536 lambda!464481))))

(declare-fun bs!1936087 () Bool)

(assert (= bs!1936087 (and b!7496582 b!7496192)))

(assert (=> bs!1936087 (not (= lambda!464536 lambda!464499))))

(declare-fun bs!1936089 () Bool)

(assert (= bs!1936089 (and b!7496582 d!2301816)))

(assert (=> bs!1936089 (not (= lambda!464536 lambda!464506))))

(declare-fun bs!1936090 () Bool)

(assert (= bs!1936090 (and b!7496582 b!7496444)))

(assert (=> bs!1936090 (= (and (= (reg!19978 lt!2630581) (reg!19978 lt!2630578)) (= lt!2630581 lt!2630578)) (= lambda!464536 lambda!464526))))

(declare-fun bs!1936091 () Bool)

(assert (= bs!1936091 (and b!7496582 d!2301876)))

(assert (=> bs!1936091 (not (= lambda!464536 lambda!464530))))

(declare-fun bs!1936092 () Bool)

(assert (= bs!1936092 (and b!7496582 b!7496230)))

(assert (=> bs!1936092 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (reg!19978 lt!2630581) (reg!19978 r2!5783)) (= lt!2630581 r2!5783)) (= lambda!464536 lambda!464500))))

(declare-fun bs!1936093 () Bool)

(assert (= bs!1936093 (and b!7496582 b!7496445)))

(assert (=> bs!1936093 (not (= lambda!464536 lambda!464527))))

(declare-fun bs!1936094 () Bool)

(assert (= bs!1936094 (and b!7496582 d!2301892)))

(assert (=> bs!1936094 (not (= lambda!464536 lambda!464534))))

(assert (=> bs!1936091 (not (= lambda!464536 lambda!464532))))

(declare-fun bs!1936096 () Bool)

(assert (= bs!1936096 (and b!7496582 d!2301824)))

(assert (=> bs!1936096 (not (= lambda!464536 lambda!464516))))

(declare-fun bs!1936098 () Bool)

(assert (= bs!1936098 (and b!7496582 b!7496423)))

(assert (=> bs!1936098 (not (= lambda!464536 lambda!464523))))

(assert (=> bs!1936096 (not (= lambda!464536 lambda!464514))))

(declare-fun bs!1936101 () Bool)

(assert (= bs!1936101 (and b!7496582 b!7496103)))

(assert (=> bs!1936101 (not (= lambda!464536 lambda!464493))))

(declare-fun bs!1936103 () Bool)

(assert (= bs!1936103 (and b!7496582 b!7495975)))

(assert (=> bs!1936103 (not (= lambda!464536 lambda!464483))))

(declare-fun bs!1936105 () Bool)

(assert (= bs!1936105 (and b!7496582 b!7496191)))

(assert (=> bs!1936105 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (reg!19978 lt!2630581) (reg!19978 r1!5845)) (= lt!2630581 r1!5845)) (= lambda!464536 lambda!464498))))

(assert (=> bs!1936103 (not (= lambda!464536 lambda!464482))))

(declare-fun bs!1936107 () Bool)

(assert (= bs!1936107 (and b!7496582 b!7496422)))

(assert (=> bs!1936107 (= (and (= (reg!19978 lt!2630581) (reg!19978 lt!2630573)) (= lt!2630581 lt!2630573)) (= lambda!464536 lambda!464521))))

(assert (=> bs!1936086 (not (= lambda!464536 lambda!464480))))

(declare-fun bs!1936110 () Bool)

(assert (= bs!1936110 (and b!7496582 b!7496231)))

(assert (=> bs!1936110 (not (= lambda!464536 lambda!464501))))

(assert (=> b!7496582 true))

(assert (=> b!7496582 true))

(declare-fun bs!1936115 () Bool)

(declare-fun b!7496583 () Bool)

(assert (= bs!1936115 (and b!7496583 b!7496102)))

(declare-fun lambda!464538 () Int)

(assert (=> bs!1936115 (not (= lambda!464538 lambda!464492))))

(declare-fun bs!1936117 () Bool)

(assert (= bs!1936117 (and b!7496583 b!7496582)))

(assert (=> bs!1936117 (not (= lambda!464538 lambda!464536))))

(declare-fun bs!1936119 () Bool)

(assert (= bs!1936119 (and b!7496583 b!7495972)))

(assert (=> bs!1936119 (= (and (= (regOne!39810 lt!2630581) lt!2630591) (= (regTwo!39810 lt!2630581) rTail!78)) (= lambda!464538 lambda!464481))))

(declare-fun bs!1936121 () Bool)

(assert (= bs!1936121 (and b!7496583 b!7496192)))

(assert (=> bs!1936121 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (regOne!39810 lt!2630581) (regOne!39810 r1!5845)) (= (regTwo!39810 lt!2630581) (regTwo!39810 r1!5845))) (= lambda!464538 lambda!464499))))

(declare-fun bs!1936122 () Bool)

(assert (= bs!1936122 (and b!7496583 d!2301816)))

(assert (=> bs!1936122 (not (= lambda!464538 lambda!464506))))

(declare-fun bs!1936123 () Bool)

(assert (= bs!1936123 (and b!7496583 b!7496444)))

(assert (=> bs!1936123 (not (= lambda!464538 lambda!464526))))

(declare-fun bs!1936124 () Bool)

(assert (= bs!1936124 (and b!7496583 d!2301876)))

(assert (=> bs!1936124 (not (= lambda!464538 lambda!464530))))

(declare-fun bs!1936125 () Bool)

(assert (= bs!1936125 (and b!7496583 b!7496230)))

(assert (=> bs!1936125 (not (= lambda!464538 lambda!464500))))

(declare-fun bs!1936126 () Bool)

(assert (= bs!1936126 (and b!7496583 b!7496445)))

(assert (=> bs!1936126 (= (and (= (regOne!39810 lt!2630581) (regOne!39810 lt!2630578)) (= (regTwo!39810 lt!2630581) (regTwo!39810 lt!2630578))) (= lambda!464538 lambda!464527))))

(declare-fun bs!1936127 () Bool)

(assert (= bs!1936127 (and b!7496583 d!2301892)))

(assert (=> bs!1936127 (not (= lambda!464538 lambda!464534))))

(assert (=> bs!1936124 (= (and (= (regOne!39810 lt!2630581) r1!5845) (= (regTwo!39810 lt!2630581) rTail!78)) (= lambda!464538 lambda!464532))))

(declare-fun bs!1936130 () Bool)

(assert (= bs!1936130 (and b!7496583 d!2301824)))

(assert (=> bs!1936130 (= (and (= (regOne!39810 lt!2630581) lt!2630591) (= (regTwo!39810 lt!2630581) rTail!78)) (= lambda!464538 lambda!464516))))

(declare-fun bs!1936132 () Bool)

(assert (= bs!1936132 (and b!7496583 b!7496423)))

(assert (=> bs!1936132 (= (and (= (regOne!39810 lt!2630581) (regOne!39810 lt!2630573)) (= (regTwo!39810 lt!2630581) (regTwo!39810 lt!2630573))) (= lambda!464538 lambda!464523))))

(assert (=> bs!1936130 (not (= lambda!464538 lambda!464514))))

(declare-fun bs!1936135 () Bool)

(assert (= bs!1936135 (and b!7496583 b!7496103)))

(assert (=> bs!1936135 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (regOne!39810 lt!2630581) (regOne!39810 lt!2630591)) (= (regTwo!39810 lt!2630581) (regTwo!39810 lt!2630591))) (= lambda!464538 lambda!464493))))

(declare-fun bs!1936137 () Bool)

(assert (= bs!1936137 (and b!7496583 b!7495975)))

(assert (=> bs!1936137 (= (and (= (regOne!39810 lt!2630581) r1!5845) (= (regTwo!39810 lt!2630581) rTail!78)) (= lambda!464538 lambda!464483))))

(declare-fun bs!1936138 () Bool)

(assert (= bs!1936138 (and b!7496583 b!7496191)))

(assert (=> bs!1936138 (not (= lambda!464538 lambda!464498))))

(assert (=> bs!1936137 (not (= lambda!464538 lambda!464482))))

(declare-fun bs!1936141 () Bool)

(assert (= bs!1936141 (and b!7496583 b!7496422)))

(assert (=> bs!1936141 (not (= lambda!464538 lambda!464521))))

(assert (=> bs!1936119 (not (= lambda!464538 lambda!464480))))

(declare-fun bs!1936143 () Bool)

(assert (= bs!1936143 (and b!7496583 b!7496231)))

(assert (=> bs!1936143 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (regOne!39810 lt!2630581) (regOne!39810 r2!5783)) (= (regTwo!39810 lt!2630581) (regTwo!39810 r2!5783))) (= lambda!464538 lambda!464501))))

(assert (=> b!7496583 true))

(assert (=> b!7496583 true))

(declare-fun b!7496578 () Bool)

(declare-fun c!1384065 () Bool)

(assert (=> b!7496578 (= c!1384065 ((_ is ElementMatch!19649) lt!2630581))))

(declare-fun e!4469794 () Bool)

(declare-fun e!4469797 () Bool)

(assert (=> b!7496578 (= e!4469794 e!4469797)))

(declare-fun b!7496579 () Bool)

(declare-fun c!1384064 () Bool)

(assert (=> b!7496579 (= c!1384064 ((_ is Union!19649) lt!2630581))))

(declare-fun e!4469796 () Bool)

(assert (=> b!7496579 (= e!4469797 e!4469796)))

(declare-fun b!7496580 () Bool)

(assert (=> b!7496580 (= e!4469797 (= s!13591 (Cons!72239 (c!1383920 lt!2630581) Nil!72239)))))

(declare-fun bm!688183 () Bool)

(declare-fun call!688189 () Bool)

(assert (=> bm!688183 (= call!688189 (isEmpty!41273 s!13591))))

(declare-fun b!7496581 () Bool)

(declare-fun res!3007219 () Bool)

(declare-fun e!4469792 () Bool)

(assert (=> b!7496581 (=> res!3007219 e!4469792)))

(assert (=> b!7496581 (= res!3007219 call!688189)))

(declare-fun e!4469795 () Bool)

(assert (=> b!7496581 (= e!4469795 e!4469792)))

(declare-fun call!688188 () Bool)

(assert (=> b!7496582 (= e!4469792 call!688188)))

(assert (=> b!7496583 (= e!4469795 call!688188)))

(declare-fun b!7496584 () Bool)

(declare-fun e!4469793 () Bool)

(assert (=> b!7496584 (= e!4469793 (matchRSpec!4326 (regTwo!39811 lt!2630581) s!13591))))

(declare-fun b!7496585 () Bool)

(declare-fun e!4469798 () Bool)

(assert (=> b!7496585 (= e!4469798 e!4469794)))

(declare-fun res!3007220 () Bool)

(assert (=> b!7496585 (= res!3007220 (not ((_ is EmptyLang!19649) lt!2630581)))))

(assert (=> b!7496585 (=> (not res!3007220) (not e!4469794))))

(declare-fun d!2301904 () Bool)

(declare-fun c!1384066 () Bool)

(assert (=> d!2301904 (= c!1384066 ((_ is EmptyExpr!19649) lt!2630581))))

(assert (=> d!2301904 (= (matchRSpec!4326 lt!2630581 s!13591) e!4469798)))

(declare-fun b!7496586 () Bool)

(assert (=> b!7496586 (= e!4469796 e!4469795)))

(declare-fun c!1384067 () Bool)

(assert (=> b!7496586 (= c!1384067 ((_ is Star!19649) lt!2630581))))

(declare-fun bm!688184 () Bool)

(assert (=> bm!688184 (= call!688188 (Exists!4266 (ite c!1384067 lambda!464536 lambda!464538)))))

(declare-fun b!7496587 () Bool)

(assert (=> b!7496587 (= e!4469796 e!4469793)))

(declare-fun res!3007221 () Bool)

(assert (=> b!7496587 (= res!3007221 (matchRSpec!4326 (regOne!39811 lt!2630581) s!13591))))

(assert (=> b!7496587 (=> res!3007221 e!4469793)))

(declare-fun b!7496588 () Bool)

(assert (=> b!7496588 (= e!4469798 call!688189)))

(assert (= (and d!2301904 c!1384066) b!7496588))

(assert (= (and d!2301904 (not c!1384066)) b!7496585))

(assert (= (and b!7496585 res!3007220) b!7496578))

(assert (= (and b!7496578 c!1384065) b!7496580))

(assert (= (and b!7496578 (not c!1384065)) b!7496579))

(assert (= (and b!7496579 c!1384064) b!7496587))

(assert (= (and b!7496579 (not c!1384064)) b!7496586))

(assert (= (and b!7496587 (not res!3007221)) b!7496584))

(assert (= (and b!7496586 c!1384067) b!7496581))

(assert (= (and b!7496586 (not c!1384067)) b!7496583))

(assert (= (and b!7496581 (not res!3007219)) b!7496582))

(assert (= (or b!7496582 b!7496583) bm!688184))

(assert (= (or b!7496588 b!7496581) bm!688183))

(assert (=> bm!688183 m!8080072))

(declare-fun m!8080276 () Bool)

(assert (=> b!7496584 m!8080276))

(declare-fun m!8080278 () Bool)

(assert (=> bm!688184 m!8080278))

(declare-fun m!8080280 () Bool)

(assert (=> b!7496587 m!8080280))

(assert (=> b!7495969 d!2301904))

(declare-fun bs!1936152 () Bool)

(declare-fun b!7496613 () Bool)

(assert (= bs!1936152 (and b!7496613 b!7496583)))

(declare-fun lambda!464540 () Int)

(assert (=> bs!1936152 (not (= lambda!464540 lambda!464538))))

(declare-fun bs!1936153 () Bool)

(assert (= bs!1936153 (and b!7496613 b!7496102)))

(assert (=> bs!1936153 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (reg!19978 lt!2630577) (reg!19978 lt!2630591)) (= lt!2630577 lt!2630591)) (= lambda!464540 lambda!464492))))

(declare-fun bs!1936154 () Bool)

(assert (= bs!1936154 (and b!7496613 b!7496582)))

(assert (=> bs!1936154 (= (and (= (reg!19978 lt!2630577) (reg!19978 lt!2630581)) (= lt!2630577 lt!2630581)) (= lambda!464540 lambda!464536))))

(declare-fun bs!1936155 () Bool)

(assert (= bs!1936155 (and b!7496613 b!7495972)))

(assert (=> bs!1936155 (not (= lambda!464540 lambda!464481))))

(declare-fun bs!1936156 () Bool)

(assert (= bs!1936156 (and b!7496613 b!7496192)))

(assert (=> bs!1936156 (not (= lambda!464540 lambda!464499))))

(declare-fun bs!1936157 () Bool)

(assert (= bs!1936157 (and b!7496613 d!2301816)))

(assert (=> bs!1936157 (not (= lambda!464540 lambda!464506))))

(declare-fun bs!1936158 () Bool)

(assert (= bs!1936158 (and b!7496613 b!7496444)))

(assert (=> bs!1936158 (= (and (= (reg!19978 lt!2630577) (reg!19978 lt!2630578)) (= lt!2630577 lt!2630578)) (= lambda!464540 lambda!464526))))

(declare-fun bs!1936159 () Bool)

(assert (= bs!1936159 (and b!7496613 d!2301876)))

(assert (=> bs!1936159 (not (= lambda!464540 lambda!464530))))

(declare-fun bs!1936160 () Bool)

(assert (= bs!1936160 (and b!7496613 b!7496230)))

(assert (=> bs!1936160 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (reg!19978 lt!2630577) (reg!19978 r2!5783)) (= lt!2630577 r2!5783)) (= lambda!464540 lambda!464500))))

(declare-fun bs!1936161 () Bool)

(assert (= bs!1936161 (and b!7496613 b!7496445)))

(assert (=> bs!1936161 (not (= lambda!464540 lambda!464527))))

(declare-fun bs!1936162 () Bool)

(assert (= bs!1936162 (and b!7496613 d!2301892)))

(assert (=> bs!1936162 (not (= lambda!464540 lambda!464534))))

(assert (=> bs!1936159 (not (= lambda!464540 lambda!464532))))

(declare-fun bs!1936163 () Bool)

(assert (= bs!1936163 (and b!7496613 d!2301824)))

(assert (=> bs!1936163 (not (= lambda!464540 lambda!464516))))

(declare-fun bs!1936164 () Bool)

(assert (= bs!1936164 (and b!7496613 b!7496423)))

(assert (=> bs!1936164 (not (= lambda!464540 lambda!464523))))

(assert (=> bs!1936163 (not (= lambda!464540 lambda!464514))))

(declare-fun bs!1936165 () Bool)

(assert (= bs!1936165 (and b!7496613 b!7496103)))

(assert (=> bs!1936165 (not (= lambda!464540 lambda!464493))))

(declare-fun bs!1936166 () Bool)

(assert (= bs!1936166 (and b!7496613 b!7495975)))

(assert (=> bs!1936166 (not (= lambda!464540 lambda!464483))))

(declare-fun bs!1936167 () Bool)

(assert (= bs!1936167 (and b!7496613 b!7496191)))

(assert (=> bs!1936167 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (reg!19978 lt!2630577) (reg!19978 r1!5845)) (= lt!2630577 r1!5845)) (= lambda!464540 lambda!464498))))

(assert (=> bs!1936166 (not (= lambda!464540 lambda!464482))))

(declare-fun bs!1936170 () Bool)

(assert (= bs!1936170 (and b!7496613 b!7496422)))

(assert (=> bs!1936170 (= (and (= (reg!19978 lt!2630577) (reg!19978 lt!2630573)) (= lt!2630577 lt!2630573)) (= lambda!464540 lambda!464521))))

(assert (=> bs!1936155 (not (= lambda!464540 lambda!464480))))

(declare-fun bs!1936173 () Bool)

(assert (= bs!1936173 (and b!7496613 b!7496231)))

(assert (=> bs!1936173 (not (= lambda!464540 lambda!464501))))

(assert (=> b!7496613 true))

(assert (=> b!7496613 true))

(declare-fun bs!1936179 () Bool)

(declare-fun b!7496614 () Bool)

(assert (= bs!1936179 (and b!7496614 b!7496583)))

(declare-fun lambda!464542 () Int)

(assert (=> bs!1936179 (= (and (= (regOne!39810 lt!2630577) (regOne!39810 lt!2630581)) (= (regTwo!39810 lt!2630577) (regTwo!39810 lt!2630581))) (= lambda!464542 lambda!464538))))

(declare-fun bs!1936181 () Bool)

(assert (= bs!1936181 (and b!7496614 b!7496102)))

(assert (=> bs!1936181 (not (= lambda!464542 lambda!464492))))

(declare-fun bs!1936182 () Bool)

(assert (= bs!1936182 (and b!7496614 b!7496582)))

(assert (=> bs!1936182 (not (= lambda!464542 lambda!464536))))

(declare-fun bs!1936184 () Bool)

(assert (= bs!1936184 (and b!7496614 b!7495972)))

(assert (=> bs!1936184 (= (and (= (regOne!39810 lt!2630577) lt!2630591) (= (regTwo!39810 lt!2630577) rTail!78)) (= lambda!464542 lambda!464481))))

(declare-fun bs!1936187 () Bool)

(assert (= bs!1936187 (and b!7496614 b!7496192)))

(assert (=> bs!1936187 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (regOne!39810 lt!2630577) (regOne!39810 r1!5845)) (= (regTwo!39810 lt!2630577) (regTwo!39810 r1!5845))) (= lambda!464542 lambda!464499))))

(declare-fun bs!1936188 () Bool)

(assert (= bs!1936188 (and b!7496614 d!2301816)))

(assert (=> bs!1936188 (not (= lambda!464542 lambda!464506))))

(declare-fun bs!1936190 () Bool)

(assert (= bs!1936190 (and b!7496614 b!7496444)))

(assert (=> bs!1936190 (not (= lambda!464542 lambda!464526))))

(declare-fun bs!1936192 () Bool)

(assert (= bs!1936192 (and b!7496614 d!2301876)))

(assert (=> bs!1936192 (not (= lambda!464542 lambda!464530))))

(declare-fun bs!1936194 () Bool)

(assert (= bs!1936194 (and b!7496614 b!7496445)))

(assert (=> bs!1936194 (= (and (= (regOne!39810 lt!2630577) (regOne!39810 lt!2630578)) (= (regTwo!39810 lt!2630577) (regTwo!39810 lt!2630578))) (= lambda!464542 lambda!464527))))

(declare-fun bs!1936196 () Bool)

(assert (= bs!1936196 (and b!7496614 d!2301892)))

(assert (=> bs!1936196 (not (= lambda!464542 lambda!464534))))

(assert (=> bs!1936192 (= (and (= (regOne!39810 lt!2630577) r1!5845) (= (regTwo!39810 lt!2630577) rTail!78)) (= lambda!464542 lambda!464532))))

(declare-fun bs!1936198 () Bool)

(assert (= bs!1936198 (and b!7496614 d!2301824)))

(assert (=> bs!1936198 (= (and (= (regOne!39810 lt!2630577) lt!2630591) (= (regTwo!39810 lt!2630577) rTail!78)) (= lambda!464542 lambda!464516))))

(declare-fun bs!1936199 () Bool)

(assert (= bs!1936199 (and b!7496614 b!7496423)))

(assert (=> bs!1936199 (= (and (= (regOne!39810 lt!2630577) (regOne!39810 lt!2630573)) (= (regTwo!39810 lt!2630577) (regTwo!39810 lt!2630573))) (= lambda!464542 lambda!464523))))

(assert (=> bs!1936198 (not (= lambda!464542 lambda!464514))))

(declare-fun bs!1936200 () Bool)

(assert (= bs!1936200 (and b!7496614 b!7496103)))

(assert (=> bs!1936200 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (regOne!39810 lt!2630577) (regOne!39810 lt!2630591)) (= (regTwo!39810 lt!2630577) (regTwo!39810 lt!2630591))) (= lambda!464542 lambda!464493))))

(declare-fun bs!1936201 () Bool)

(assert (= bs!1936201 (and b!7496614 b!7495975)))

(assert (=> bs!1936201 (= (and (= (regOne!39810 lt!2630577) r1!5845) (= (regTwo!39810 lt!2630577) rTail!78)) (= lambda!464542 lambda!464483))))

(declare-fun bs!1936202 () Bool)

(assert (= bs!1936202 (and b!7496614 b!7496191)))

(assert (=> bs!1936202 (not (= lambda!464542 lambda!464498))))

(assert (=> bs!1936201 (not (= lambda!464542 lambda!464482))))

(declare-fun bs!1936205 () Bool)

(assert (= bs!1936205 (and b!7496614 b!7496613)))

(assert (=> bs!1936205 (not (= lambda!464542 lambda!464540))))

(declare-fun bs!1936207 () Bool)

(assert (= bs!1936207 (and b!7496614 b!7496230)))

(assert (=> bs!1936207 (not (= lambda!464542 lambda!464500))))

(declare-fun bs!1936209 () Bool)

(assert (= bs!1936209 (and b!7496614 b!7496422)))

(assert (=> bs!1936209 (not (= lambda!464542 lambda!464521))))

(assert (=> bs!1936184 (not (= lambda!464542 lambda!464480))))

(declare-fun bs!1936211 () Bool)

(assert (= bs!1936211 (and b!7496614 b!7496231)))

(assert (=> bs!1936211 (= (and (= s!13591 (_1!37669 lt!2630584)) (= (regOne!39810 lt!2630577) (regOne!39810 r2!5783)) (= (regTwo!39810 lt!2630577) (regTwo!39810 r2!5783))) (= lambda!464542 lambda!464501))))

(assert (=> b!7496614 true))

(assert (=> b!7496614 true))

(declare-fun b!7496609 () Bool)

(declare-fun c!1384075 () Bool)

(assert (=> b!7496609 (= c!1384075 ((_ is ElementMatch!19649) lt!2630577))))

(declare-fun e!4469815 () Bool)

(declare-fun e!4469818 () Bool)

(assert (=> b!7496609 (= e!4469815 e!4469818)))

(declare-fun b!7496610 () Bool)

(declare-fun c!1384074 () Bool)

(assert (=> b!7496610 (= c!1384074 ((_ is Union!19649) lt!2630577))))

(declare-fun e!4469817 () Bool)

(assert (=> b!7496610 (= e!4469818 e!4469817)))

(declare-fun b!7496611 () Bool)

(assert (=> b!7496611 (= e!4469818 (= s!13591 (Cons!72239 (c!1383920 lt!2630577) Nil!72239)))))

(declare-fun bm!688190 () Bool)

(declare-fun call!688196 () Bool)

(assert (=> bm!688190 (= call!688196 (isEmpty!41273 s!13591))))

(declare-fun b!7496612 () Bool)

(declare-fun res!3007230 () Bool)

(declare-fun e!4469813 () Bool)

(assert (=> b!7496612 (=> res!3007230 e!4469813)))

(assert (=> b!7496612 (= res!3007230 call!688196)))

(declare-fun e!4469816 () Bool)

(assert (=> b!7496612 (= e!4469816 e!4469813)))

(declare-fun call!688195 () Bool)

(assert (=> b!7496613 (= e!4469813 call!688195)))

(assert (=> b!7496614 (= e!4469816 call!688195)))

(declare-fun b!7496615 () Bool)

(declare-fun e!4469814 () Bool)

(assert (=> b!7496615 (= e!4469814 (matchRSpec!4326 (regTwo!39811 lt!2630577) s!13591))))

(declare-fun b!7496616 () Bool)

(declare-fun e!4469819 () Bool)

(assert (=> b!7496616 (= e!4469819 e!4469815)))

(declare-fun res!3007231 () Bool)

(assert (=> b!7496616 (= res!3007231 (not ((_ is EmptyLang!19649) lt!2630577)))))

(assert (=> b!7496616 (=> (not res!3007231) (not e!4469815))))

(declare-fun d!2301914 () Bool)

(declare-fun c!1384076 () Bool)

(assert (=> d!2301914 (= c!1384076 ((_ is EmptyExpr!19649) lt!2630577))))

(assert (=> d!2301914 (= (matchRSpec!4326 lt!2630577 s!13591) e!4469819)))

(declare-fun b!7496617 () Bool)

(assert (=> b!7496617 (= e!4469817 e!4469816)))

(declare-fun c!1384077 () Bool)

(assert (=> b!7496617 (= c!1384077 ((_ is Star!19649) lt!2630577))))

(declare-fun bm!688191 () Bool)

(assert (=> bm!688191 (= call!688195 (Exists!4266 (ite c!1384077 lambda!464540 lambda!464542)))))

(declare-fun b!7496618 () Bool)

(assert (=> b!7496618 (= e!4469817 e!4469814)))

(declare-fun res!3007232 () Bool)

(assert (=> b!7496618 (= res!3007232 (matchRSpec!4326 (regOne!39811 lt!2630577) s!13591))))

(assert (=> b!7496618 (=> res!3007232 e!4469814)))

(declare-fun b!7496619 () Bool)

(assert (=> b!7496619 (= e!4469819 call!688196)))

(assert (= (and d!2301914 c!1384076) b!7496619))

(assert (= (and d!2301914 (not c!1384076)) b!7496616))

(assert (= (and b!7496616 res!3007231) b!7496609))

(assert (= (and b!7496609 c!1384075) b!7496611))

(assert (= (and b!7496609 (not c!1384075)) b!7496610))

(assert (= (and b!7496610 c!1384074) b!7496618))

(assert (= (and b!7496610 (not c!1384074)) b!7496617))

(assert (= (and b!7496618 (not res!3007232)) b!7496615))

(assert (= (and b!7496617 c!1384077) b!7496612))

(assert (= (and b!7496617 (not c!1384077)) b!7496614))

(assert (= (and b!7496612 (not res!3007230)) b!7496613))

(assert (= (or b!7496613 b!7496614) bm!688191))

(assert (= (or b!7496619 b!7496612) bm!688190))

(assert (=> bm!688190 m!8080072))

(declare-fun m!8080294 () Bool)

(assert (=> b!7496615 m!8080294))

(declare-fun m!8080296 () Bool)

(assert (=> bm!688191 m!8080296))

(declare-fun m!8080298 () Bool)

(assert (=> b!7496618 m!8080298))

(assert (=> b!7495969 d!2301914))

(declare-fun b!7496645 () Bool)

(declare-fun e!4469836 () Bool)

(assert (=> b!7496645 (= e!4469836 (not (= (head!15381 s!13591) (c!1383920 lt!2630577))))))

(declare-fun b!7496646 () Bool)

(declare-fun e!4469840 () Bool)

(assert (=> b!7496646 (= e!4469840 (matchR!9411 (derivativeStep!5641 lt!2630577 (head!15381 s!13591)) (tail!14950 s!13591)))))

(declare-fun b!7496647 () Bool)

(declare-fun e!4469839 () Bool)

(declare-fun lt!2630670 () Bool)

(declare-fun call!688200 () Bool)

(assert (=> b!7496647 (= e!4469839 (= lt!2630670 call!688200))))

(declare-fun b!7496648 () Bool)

(declare-fun e!4469835 () Bool)

(assert (=> b!7496648 (= e!4469835 (= (head!15381 s!13591) (c!1383920 lt!2630577)))))

(declare-fun b!7496650 () Bool)

(declare-fun e!4469837 () Bool)

(declare-fun e!4469834 () Bool)

(assert (=> b!7496650 (= e!4469837 e!4469834)))

(declare-fun res!3007246 () Bool)

(assert (=> b!7496650 (=> (not res!3007246) (not e!4469834))))

(assert (=> b!7496650 (= res!3007246 (not lt!2630670))))

(declare-fun b!7496651 () Bool)

(declare-fun res!3007248 () Bool)

(assert (=> b!7496651 (=> res!3007248 e!4469836)))

(assert (=> b!7496651 (= res!3007248 (not (isEmpty!41273 (tail!14950 s!13591))))))

(declare-fun b!7496652 () Bool)

(assert (=> b!7496652 (= e!4469834 e!4469836)))

(declare-fun res!3007251 () Bool)

(assert (=> b!7496652 (=> res!3007251 e!4469836)))

(assert (=> b!7496652 (= res!3007251 call!688200)))

(declare-fun b!7496653 () Bool)

(declare-fun res!3007244 () Bool)

(assert (=> b!7496653 (=> (not res!3007244) (not e!4469835))))

(assert (=> b!7496653 (= res!3007244 (not call!688200))))

(declare-fun bm!688195 () Bool)

(assert (=> bm!688195 (= call!688200 (isEmpty!41273 s!13591))))

(declare-fun d!2301920 () Bool)

(assert (=> d!2301920 e!4469839))

(declare-fun c!1384087 () Bool)

(assert (=> d!2301920 (= c!1384087 ((_ is EmptyExpr!19649) lt!2630577))))

(assert (=> d!2301920 (= lt!2630670 e!4469840)))

(declare-fun c!1384086 () Bool)

(assert (=> d!2301920 (= c!1384086 (isEmpty!41273 s!13591))))

(assert (=> d!2301920 (validRegex!10163 lt!2630577)))

(assert (=> d!2301920 (= (matchR!9411 lt!2630577 s!13591) lt!2630670)))

(declare-fun b!7496649 () Bool)

(declare-fun e!4469838 () Bool)

(assert (=> b!7496649 (= e!4469838 (not lt!2630670))))

(declare-fun b!7496654 () Bool)

(assert (=> b!7496654 (= e!4469839 e!4469838)))

(declare-fun c!1384085 () Bool)

(assert (=> b!7496654 (= c!1384085 ((_ is EmptyLang!19649) lt!2630577))))

(declare-fun b!7496655 () Bool)

(declare-fun res!3007245 () Bool)

(assert (=> b!7496655 (=> res!3007245 e!4469837)))

(assert (=> b!7496655 (= res!3007245 e!4469835)))

(declare-fun res!3007247 () Bool)

(assert (=> b!7496655 (=> (not res!3007247) (not e!4469835))))

(assert (=> b!7496655 (= res!3007247 lt!2630670)))

(declare-fun b!7496656 () Bool)

(declare-fun res!3007250 () Bool)

(assert (=> b!7496656 (=> res!3007250 e!4469837)))

(assert (=> b!7496656 (= res!3007250 (not ((_ is ElementMatch!19649) lt!2630577)))))

(assert (=> b!7496656 (= e!4469838 e!4469837)))

(declare-fun b!7496657 () Bool)

(declare-fun res!3007249 () Bool)

(assert (=> b!7496657 (=> (not res!3007249) (not e!4469835))))

(assert (=> b!7496657 (= res!3007249 (isEmpty!41273 (tail!14950 s!13591)))))

(declare-fun b!7496658 () Bool)

(assert (=> b!7496658 (= e!4469840 (nullable!8584 lt!2630577))))

(assert (= (and d!2301920 c!1384086) b!7496658))

(assert (= (and d!2301920 (not c!1384086)) b!7496646))

(assert (= (and d!2301920 c!1384087) b!7496647))

(assert (= (and d!2301920 (not c!1384087)) b!7496654))

(assert (= (and b!7496654 c!1384085) b!7496649))

(assert (= (and b!7496654 (not c!1384085)) b!7496656))

(assert (= (and b!7496656 (not res!3007250)) b!7496655))

(assert (= (and b!7496655 res!3007247) b!7496653))

(assert (= (and b!7496653 res!3007244) b!7496657))

(assert (= (and b!7496657 res!3007249) b!7496648))

(assert (= (and b!7496655 (not res!3007245)) b!7496650))

(assert (= (and b!7496650 res!3007246) b!7496652))

(assert (= (and b!7496652 (not res!3007251)) b!7496651))

(assert (= (and b!7496651 (not res!3007248)) b!7496645))

(assert (= (or b!7496647 b!7496652 b!7496653) bm!688195))

(assert (=> b!7496645 m!8080070))

(assert (=> d!2301920 m!8080072))

(assert (=> d!2301920 m!8080250))

(declare-fun m!8080300 () Bool)

(assert (=> b!7496658 m!8080300))

(assert (=> b!7496651 m!8080078))

(assert (=> b!7496651 m!8080078))

(assert (=> b!7496651 m!8080080))

(assert (=> bm!688195 m!8080072))

(assert (=> b!7496657 m!8080078))

(assert (=> b!7496657 m!8080078))

(assert (=> b!7496657 m!8080080))

(assert (=> b!7496646 m!8080070))

(assert (=> b!7496646 m!8080070))

(declare-fun m!8080302 () Bool)

(assert (=> b!7496646 m!8080302))

(assert (=> b!7496646 m!8080078))

(assert (=> b!7496646 m!8080302))

(assert (=> b!7496646 m!8080078))

(declare-fun m!8080304 () Bool)

(assert (=> b!7496646 m!8080304))

(assert (=> b!7496648 m!8080070))

(assert (=> b!7495969 d!2301920))

(declare-fun b!7496684 () Bool)

(declare-fun e!4469850 () Bool)

(declare-fun tp!2176075 () Bool)

(declare-fun tp!2176074 () Bool)

(assert (=> b!7496684 (= e!4469850 (and tp!2176075 tp!2176074))))

(assert (=> b!7495963 (= tp!2176048 e!4469850)))

(declare-fun b!7496683 () Bool)

(assert (=> b!7496683 (= e!4469850 tp_is_empty!49587)))

(declare-fun b!7496686 () Bool)

(declare-fun tp!2176076 () Bool)

(declare-fun tp!2176073 () Bool)

(assert (=> b!7496686 (= e!4469850 (and tp!2176076 tp!2176073))))

(declare-fun b!7496685 () Bool)

(declare-fun tp!2176072 () Bool)

(assert (=> b!7496685 (= e!4469850 tp!2176072)))

(assert (= (and b!7495963 ((_ is ElementMatch!19649) (regOne!39810 r2!5783))) b!7496683))

(assert (= (and b!7495963 ((_ is Concat!28494) (regOne!39810 r2!5783))) b!7496684))

(assert (= (and b!7495963 ((_ is Star!19649) (regOne!39810 r2!5783))) b!7496685))

(assert (= (and b!7495963 ((_ is Union!19649) (regOne!39810 r2!5783))) b!7496686))

(declare-fun b!7496688 () Bool)

(declare-fun e!4469851 () Bool)

(declare-fun tp!2176080 () Bool)

(declare-fun tp!2176079 () Bool)

(assert (=> b!7496688 (= e!4469851 (and tp!2176080 tp!2176079))))

(assert (=> b!7495963 (= tp!2176053 e!4469851)))

(declare-fun b!7496687 () Bool)

(assert (=> b!7496687 (= e!4469851 tp_is_empty!49587)))

(declare-fun b!7496690 () Bool)

(declare-fun tp!2176081 () Bool)

(declare-fun tp!2176078 () Bool)

(assert (=> b!7496690 (= e!4469851 (and tp!2176081 tp!2176078))))

(declare-fun b!7496689 () Bool)

(declare-fun tp!2176077 () Bool)

(assert (=> b!7496689 (= e!4469851 tp!2176077)))

(assert (= (and b!7495963 ((_ is ElementMatch!19649) (regTwo!39810 r2!5783))) b!7496687))

(assert (= (and b!7495963 ((_ is Concat!28494) (regTwo!39810 r2!5783))) b!7496688))

(assert (= (and b!7495963 ((_ is Star!19649) (regTwo!39810 r2!5783))) b!7496689))

(assert (= (and b!7495963 ((_ is Union!19649) (regTwo!39810 r2!5783))) b!7496690))

(declare-fun b!7496704 () Bool)

(declare-fun e!4469861 () Bool)

(declare-fun tp!2176084 () Bool)

(assert (=> b!7496704 (= e!4469861 (and tp_is_empty!49587 tp!2176084))))

(assert (=> b!7495968 (= tp!2176051 e!4469861)))

(assert (= (and b!7495968 ((_ is Cons!72239) (t!386932 s!13591))) b!7496704))

(declare-fun b!7496706 () Bool)

(declare-fun e!4469862 () Bool)

(declare-fun tp!2176088 () Bool)

(declare-fun tp!2176087 () Bool)

(assert (=> b!7496706 (= e!4469862 (and tp!2176088 tp!2176087))))

(assert (=> b!7495962 (= tp!2176052 e!4469862)))

(declare-fun b!7496705 () Bool)

(assert (=> b!7496705 (= e!4469862 tp_is_empty!49587)))

(declare-fun b!7496708 () Bool)

(declare-fun tp!2176089 () Bool)

(declare-fun tp!2176086 () Bool)

(assert (=> b!7496708 (= e!4469862 (and tp!2176089 tp!2176086))))

(declare-fun b!7496707 () Bool)

(declare-fun tp!2176085 () Bool)

(assert (=> b!7496707 (= e!4469862 tp!2176085)))

(assert (= (and b!7495962 ((_ is ElementMatch!19649) (regOne!39811 r1!5845))) b!7496705))

(assert (= (and b!7495962 ((_ is Concat!28494) (regOne!39811 r1!5845))) b!7496706))

(assert (= (and b!7495962 ((_ is Star!19649) (regOne!39811 r1!5845))) b!7496707))

(assert (= (and b!7495962 ((_ is Union!19649) (regOne!39811 r1!5845))) b!7496708))

(declare-fun b!7496710 () Bool)

(declare-fun e!4469863 () Bool)

(declare-fun tp!2176093 () Bool)

(declare-fun tp!2176092 () Bool)

(assert (=> b!7496710 (= e!4469863 (and tp!2176093 tp!2176092))))

(assert (=> b!7495962 (= tp!2176059 e!4469863)))

(declare-fun b!7496709 () Bool)

(assert (=> b!7496709 (= e!4469863 tp_is_empty!49587)))

(declare-fun b!7496712 () Bool)

(declare-fun tp!2176094 () Bool)

(declare-fun tp!2176091 () Bool)

(assert (=> b!7496712 (= e!4469863 (and tp!2176094 tp!2176091))))

(declare-fun b!7496711 () Bool)

(declare-fun tp!2176090 () Bool)

(assert (=> b!7496711 (= e!4469863 tp!2176090)))

(assert (= (and b!7495962 ((_ is ElementMatch!19649) (regTwo!39811 r1!5845))) b!7496709))

(assert (= (and b!7495962 ((_ is Concat!28494) (regTwo!39811 r1!5845))) b!7496710))

(assert (= (and b!7495962 ((_ is Star!19649) (regTwo!39811 r1!5845))) b!7496711))

(assert (= (and b!7495962 ((_ is Union!19649) (regTwo!39811 r1!5845))) b!7496712))

(declare-fun b!7496714 () Bool)

(declare-fun e!4469864 () Bool)

(declare-fun tp!2176098 () Bool)

(declare-fun tp!2176097 () Bool)

(assert (=> b!7496714 (= e!4469864 (and tp!2176098 tp!2176097))))

(assert (=> b!7495967 (= tp!2176061 e!4469864)))

(declare-fun b!7496713 () Bool)

(assert (=> b!7496713 (= e!4469864 tp_is_empty!49587)))

(declare-fun b!7496716 () Bool)

(declare-fun tp!2176099 () Bool)

(declare-fun tp!2176096 () Bool)

(assert (=> b!7496716 (= e!4469864 (and tp!2176099 tp!2176096))))

(declare-fun b!7496715 () Bool)

(declare-fun tp!2176095 () Bool)

(assert (=> b!7496715 (= e!4469864 tp!2176095)))

(assert (= (and b!7495967 ((_ is ElementMatch!19649) (reg!19978 r2!5783))) b!7496713))

(assert (= (and b!7495967 ((_ is Concat!28494) (reg!19978 r2!5783))) b!7496714))

(assert (= (and b!7495967 ((_ is Star!19649) (reg!19978 r2!5783))) b!7496715))

(assert (= (and b!7495967 ((_ is Union!19649) (reg!19978 r2!5783))) b!7496716))

(declare-fun b!7496718 () Bool)

(declare-fun e!4469865 () Bool)

(declare-fun tp!2176103 () Bool)

(declare-fun tp!2176102 () Bool)

(assert (=> b!7496718 (= e!4469865 (and tp!2176103 tp!2176102))))

(assert (=> b!7495961 (= tp!2176055 e!4469865)))

(declare-fun b!7496717 () Bool)

(assert (=> b!7496717 (= e!4469865 tp_is_empty!49587)))

(declare-fun b!7496720 () Bool)

(declare-fun tp!2176104 () Bool)

(declare-fun tp!2176101 () Bool)

(assert (=> b!7496720 (= e!4469865 (and tp!2176104 tp!2176101))))

(declare-fun b!7496719 () Bool)

(declare-fun tp!2176100 () Bool)

(assert (=> b!7496719 (= e!4469865 tp!2176100)))

(assert (= (and b!7495961 ((_ is ElementMatch!19649) (regOne!39810 r1!5845))) b!7496717))

(assert (= (and b!7495961 ((_ is Concat!28494) (regOne!39810 r1!5845))) b!7496718))

(assert (= (and b!7495961 ((_ is Star!19649) (regOne!39810 r1!5845))) b!7496719))

(assert (= (and b!7495961 ((_ is Union!19649) (regOne!39810 r1!5845))) b!7496720))

(declare-fun b!7496726 () Bool)

(declare-fun e!4469866 () Bool)

(declare-fun tp!2176108 () Bool)

(declare-fun tp!2176107 () Bool)

(assert (=> b!7496726 (= e!4469866 (and tp!2176108 tp!2176107))))

(assert (=> b!7495961 (= tp!2176056 e!4469866)))

(declare-fun b!7496725 () Bool)

(assert (=> b!7496725 (= e!4469866 tp_is_empty!49587)))

(declare-fun b!7496728 () Bool)

(declare-fun tp!2176109 () Bool)

(declare-fun tp!2176106 () Bool)

(assert (=> b!7496728 (= e!4469866 (and tp!2176109 tp!2176106))))

(declare-fun b!7496727 () Bool)

(declare-fun tp!2176105 () Bool)

(assert (=> b!7496727 (= e!4469866 tp!2176105)))

(assert (= (and b!7495961 ((_ is ElementMatch!19649) (regTwo!39810 r1!5845))) b!7496725))

(assert (= (and b!7495961 ((_ is Concat!28494) (regTwo!39810 r1!5845))) b!7496726))

(assert (= (and b!7495961 ((_ is Star!19649) (regTwo!39810 r1!5845))) b!7496727))

(assert (= (and b!7495961 ((_ is Union!19649) (regTwo!39810 r1!5845))) b!7496728))

(declare-fun b!7496732 () Bool)

(declare-fun e!4469869 () Bool)

(declare-fun tp!2176117 () Bool)

(declare-fun tp!2176116 () Bool)

(assert (=> b!7496732 (= e!4469869 (and tp!2176117 tp!2176116))))

(assert (=> b!7495966 (= tp!2176058 e!4469869)))

(declare-fun b!7496731 () Bool)

(assert (=> b!7496731 (= e!4469869 tp_is_empty!49587)))

(declare-fun b!7496734 () Bool)

(declare-fun tp!2176118 () Bool)

(declare-fun tp!2176115 () Bool)

(assert (=> b!7496734 (= e!4469869 (and tp!2176118 tp!2176115))))

(declare-fun b!7496733 () Bool)

(declare-fun tp!2176114 () Bool)

(assert (=> b!7496733 (= e!4469869 tp!2176114)))

(assert (= (and b!7495966 ((_ is ElementMatch!19649) (regOne!39810 rTail!78))) b!7496731))

(assert (= (and b!7495966 ((_ is Concat!28494) (regOne!39810 rTail!78))) b!7496732))

(assert (= (and b!7495966 ((_ is Star!19649) (regOne!39810 rTail!78))) b!7496733))

(assert (= (and b!7495966 ((_ is Union!19649) (regOne!39810 rTail!78))) b!7496734))

(declare-fun b!7496740 () Bool)

(declare-fun e!4469870 () Bool)

(declare-fun tp!2176128 () Bool)

(declare-fun tp!2176127 () Bool)

(assert (=> b!7496740 (= e!4469870 (and tp!2176128 tp!2176127))))

(assert (=> b!7495966 (= tp!2176046 e!4469870)))

(declare-fun b!7496739 () Bool)

(assert (=> b!7496739 (= e!4469870 tp_is_empty!49587)))

(declare-fun b!7496742 () Bool)

(declare-fun tp!2176129 () Bool)

(declare-fun tp!2176126 () Bool)

(assert (=> b!7496742 (= e!4469870 (and tp!2176129 tp!2176126))))

(declare-fun b!7496741 () Bool)

(declare-fun tp!2176125 () Bool)

(assert (=> b!7496741 (= e!4469870 tp!2176125)))

(assert (= (and b!7495966 ((_ is ElementMatch!19649) (regTwo!39810 rTail!78))) b!7496739))

(assert (= (and b!7495966 ((_ is Concat!28494) (regTwo!39810 rTail!78))) b!7496740))

(assert (= (and b!7495966 ((_ is Star!19649) (regTwo!39810 rTail!78))) b!7496741))

(assert (= (and b!7495966 ((_ is Union!19649) (regTwo!39810 rTail!78))) b!7496742))

(declare-fun b!7496744 () Bool)

(declare-fun e!4469871 () Bool)

(declare-fun tp!2176133 () Bool)

(declare-fun tp!2176132 () Bool)

(assert (=> b!7496744 (= e!4469871 (and tp!2176133 tp!2176132))))

(assert (=> b!7495971 (= tp!2176054 e!4469871)))

(declare-fun b!7496743 () Bool)

(assert (=> b!7496743 (= e!4469871 tp_is_empty!49587)))

(declare-fun b!7496746 () Bool)

(declare-fun tp!2176134 () Bool)

(declare-fun tp!2176131 () Bool)

(assert (=> b!7496746 (= e!4469871 (and tp!2176134 tp!2176131))))

(declare-fun b!7496745 () Bool)

(declare-fun tp!2176130 () Bool)

(assert (=> b!7496745 (= e!4469871 tp!2176130)))

(assert (= (and b!7495971 ((_ is ElementMatch!19649) (regOne!39811 rTail!78))) b!7496743))

(assert (= (and b!7495971 ((_ is Concat!28494) (regOne!39811 rTail!78))) b!7496744))

(assert (= (and b!7495971 ((_ is Star!19649) (regOne!39811 rTail!78))) b!7496745))

(assert (= (and b!7495971 ((_ is Union!19649) (regOne!39811 rTail!78))) b!7496746))

(declare-fun b!7496748 () Bool)

(declare-fun e!4469872 () Bool)

(declare-fun tp!2176138 () Bool)

(declare-fun tp!2176137 () Bool)

(assert (=> b!7496748 (= e!4469872 (and tp!2176138 tp!2176137))))

(assert (=> b!7495971 (= tp!2176060 e!4469872)))

(declare-fun b!7496747 () Bool)

(assert (=> b!7496747 (= e!4469872 tp_is_empty!49587)))

(declare-fun b!7496750 () Bool)

(declare-fun tp!2176139 () Bool)

(declare-fun tp!2176136 () Bool)

(assert (=> b!7496750 (= e!4469872 (and tp!2176139 tp!2176136))))

(declare-fun b!7496749 () Bool)

(declare-fun tp!2176135 () Bool)

(assert (=> b!7496749 (= e!4469872 tp!2176135)))

(assert (= (and b!7495971 ((_ is ElementMatch!19649) (regTwo!39811 rTail!78))) b!7496747))

(assert (= (and b!7495971 ((_ is Concat!28494) (regTwo!39811 rTail!78))) b!7496748))

(assert (= (and b!7495971 ((_ is Star!19649) (regTwo!39811 rTail!78))) b!7496749))

(assert (= (and b!7495971 ((_ is Union!19649) (regTwo!39811 rTail!78))) b!7496750))

(declare-fun b!7496752 () Bool)

(declare-fun e!4469873 () Bool)

(declare-fun tp!2176143 () Bool)

(declare-fun tp!2176142 () Bool)

(assert (=> b!7496752 (= e!4469873 (and tp!2176143 tp!2176142))))

(assert (=> b!7495960 (= tp!2176049 e!4469873)))

(declare-fun b!7496751 () Bool)

(assert (=> b!7496751 (= e!4469873 tp_is_empty!49587)))

(declare-fun b!7496754 () Bool)

(declare-fun tp!2176144 () Bool)

(declare-fun tp!2176141 () Bool)

(assert (=> b!7496754 (= e!4469873 (and tp!2176144 tp!2176141))))

(declare-fun b!7496753 () Bool)

(declare-fun tp!2176140 () Bool)

(assert (=> b!7496753 (= e!4469873 tp!2176140)))

(assert (= (and b!7495960 ((_ is ElementMatch!19649) (reg!19978 rTail!78))) b!7496751))

(assert (= (and b!7495960 ((_ is Concat!28494) (reg!19978 rTail!78))) b!7496752))

(assert (= (and b!7495960 ((_ is Star!19649) (reg!19978 rTail!78))) b!7496753))

(assert (= (and b!7495960 ((_ is Union!19649) (reg!19978 rTail!78))) b!7496754))

(declare-fun b!7496760 () Bool)

(declare-fun e!4469875 () Bool)

(declare-fun tp!2176153 () Bool)

(declare-fun tp!2176152 () Bool)

(assert (=> b!7496760 (= e!4469875 (and tp!2176153 tp!2176152))))

(assert (=> b!7495965 (= tp!2176057 e!4469875)))

(declare-fun b!7496759 () Bool)

(assert (=> b!7496759 (= e!4469875 tp_is_empty!49587)))

(declare-fun b!7496762 () Bool)

(declare-fun tp!2176154 () Bool)

(declare-fun tp!2176151 () Bool)

(assert (=> b!7496762 (= e!4469875 (and tp!2176154 tp!2176151))))

(declare-fun b!7496761 () Bool)

(declare-fun tp!2176150 () Bool)

(assert (=> b!7496761 (= e!4469875 tp!2176150)))

(assert (= (and b!7495965 ((_ is ElementMatch!19649) (reg!19978 r1!5845))) b!7496759))

(assert (= (and b!7495965 ((_ is Concat!28494) (reg!19978 r1!5845))) b!7496760))

(assert (= (and b!7495965 ((_ is Star!19649) (reg!19978 r1!5845))) b!7496761))

(assert (= (and b!7495965 ((_ is Union!19649) (reg!19978 r1!5845))) b!7496762))

(declare-fun b!7496768 () Bool)

(declare-fun e!4469877 () Bool)

(declare-fun tp!2176163 () Bool)

(declare-fun tp!2176162 () Bool)

(assert (=> b!7496768 (= e!4469877 (and tp!2176163 tp!2176162))))

(assert (=> b!7495959 (= tp!2176047 e!4469877)))

(declare-fun b!7496767 () Bool)

(assert (=> b!7496767 (= e!4469877 tp_is_empty!49587)))

(declare-fun b!7496770 () Bool)

(declare-fun tp!2176164 () Bool)

(declare-fun tp!2176161 () Bool)

(assert (=> b!7496770 (= e!4469877 (and tp!2176164 tp!2176161))))

(declare-fun b!7496769 () Bool)

(declare-fun tp!2176160 () Bool)

(assert (=> b!7496769 (= e!4469877 tp!2176160)))

(assert (= (and b!7495959 ((_ is ElementMatch!19649) (regOne!39811 r2!5783))) b!7496767))

(assert (= (and b!7495959 ((_ is Concat!28494) (regOne!39811 r2!5783))) b!7496768))

(assert (= (and b!7495959 ((_ is Star!19649) (regOne!39811 r2!5783))) b!7496769))

(assert (= (and b!7495959 ((_ is Union!19649) (regOne!39811 r2!5783))) b!7496770))

(declare-fun b!7496776 () Bool)

(declare-fun e!4469879 () Bool)

(declare-fun tp!2176173 () Bool)

(declare-fun tp!2176172 () Bool)

(assert (=> b!7496776 (= e!4469879 (and tp!2176173 tp!2176172))))

(assert (=> b!7495959 (= tp!2176050 e!4469879)))

(declare-fun b!7496775 () Bool)

(assert (=> b!7496775 (= e!4469879 tp_is_empty!49587)))

(declare-fun b!7496778 () Bool)

(declare-fun tp!2176174 () Bool)

(declare-fun tp!2176171 () Bool)

(assert (=> b!7496778 (= e!4469879 (and tp!2176174 tp!2176171))))

(declare-fun b!7496777 () Bool)

(declare-fun tp!2176170 () Bool)

(assert (=> b!7496777 (= e!4469879 tp!2176170)))

(assert (= (and b!7495959 ((_ is ElementMatch!19649) (regTwo!39811 r2!5783))) b!7496775))

(assert (= (and b!7495959 ((_ is Concat!28494) (regTwo!39811 r2!5783))) b!7496776))

(assert (= (and b!7495959 ((_ is Star!19649) (regTwo!39811 r2!5783))) b!7496777))

(assert (= (and b!7495959 ((_ is Union!19649) (regTwo!39811 r2!5783))) b!7496778))

(check-sat (not b!7496714) (not b!7496476) (not b!7496658) (not bm!688155) (not b!7496761) (not b!7496107) (not b!7496417) (not bm!688115) (not d!2301900) (not b!7496505) (not b!7496410) (not b!7496752) (not b!7496544) (not d!2301806) (not b!7496496) (not b!7496495) (not b!7496446) (not b!7496502) (not b!7496748) (not b!7496427) (not b!7496770) (not d!2301788) (not b!7496778) (not d!2301890) (not b!7496171) (not b!7496500) (not b!7496711) (not bm!688145) (not d!2301804) (not b!7496404) (not b!7496499) (not b!7496160) (not d!2301844) (not d!2301842) (not b!7496162) (not b!7496762) (not b!7496718) (not b!7496645) (not b!7496493) (not b!7496769) (not d!2301892) (not d!2301898) (not b!7496657) (not d!2301868) (not b!7496512) (not b!7496269) (not b!7496542) (not d!2301920) (not b!7496159) (not b!7496742) (not b!7496196) (not b!7496728) (not b!7496727) (not bm!688178) (not bm!688149) (not b!7496329) (not b!7496173) (not b!7496570) (not b!7496710) (not b!7496553) (not b!7496686) (not bm!688190) (not b!7496235) (not b!7496174) (not bm!688169) (not bm!688133) (not b!7496584) (not b!7496491) (not b!7496618) (not b!7496554) (not bm!688142) (not bm!688166) (not b!7496172) (not b!7496726) (not b!7496541) (not b!7496684) (not b!7496576) (not b!7496708) tp_is_empty!49587 (not b!7496497) (not b!7496193) (not b!7496690) (not b!7496753) (not bm!688191) (not b!7496733) (not b!7496449) (not b!7496741) (not b!7496646) (not bm!688154) (not bm!688132) (not b!7496689) (not b!7496716) (not b!7496488) (not b!7496651) (not d!2301792) (not b!7496732) (not b!7496734) (not b!7496165) (not b!7496567) (not b!7496688) (not bm!688173) (not b!7496477) (not d!2301780) (not bm!688182) (not b!7496330) (not b!7496332) (not d!2301864) (not b!7496749) (not b!7496479) (not bm!688143) (not b!7496776) (not b!7496587) (not b!7496564) (not b!7496511) (not b!7496402) (not b!7496407) (not b!7496232) (not b!7496185) (not b!7496416) (not b!7496489) (not b!7496754) (not d!2301852) (not b!7496565) (not b!7496712) (not bm!688168) (not b!7496176) (not b!7496179) (not d!2301862) (not b!7496577) (not bm!688183) (not bm!688165) (not bm!688181) (not b!7496648) (not b!7496615) (not bm!688116) (not d!2301874) (not b!7496104) (not b!7496719) (not b!7496750) (not bm!688177) (not d!2301866) (not bm!688163) (not b!7496707) (not bm!688162) (not b!7496333) (not b!7496706) (not bm!688148) (not bm!688144) (not b!7496745) (not d!2301824) (not b!7496768) (not bm!688195) (not b!7496715) (not b!7496389) (not b!7496331) (not b!7496327) (not b!7496494) (not b!7496424) (not b!7496685) (not d!2301794) (not b!7496744) (not b!7496777) (not b!7496760) (not d!2301894) (not bm!688184) (not b!7496547) (not b!7496720) (not b!7496186) (not bm!688172) (not b!7496005) (not d!2301822) (not d!2301876) (not d!2301816) (not b!7496704) (not bm!688167) (not b!7496405) (not b!7496482) (not d!2301902) (not b!7496746) (not b!7496740) (not d!2301820) (not d!2301772))
(check-sat)
