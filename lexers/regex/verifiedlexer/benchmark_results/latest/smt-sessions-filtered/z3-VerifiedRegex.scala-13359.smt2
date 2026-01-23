; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724290 () Bool)

(assert start!724290)

(declare-fun b!7471134 () Bool)

(assert (=> b!7471134 true))

(assert (=> b!7471134 true))

(assert (=> b!7471134 true))

(declare-fun lambda!462709 () Int)

(declare-fun lambda!462708 () Int)

(assert (=> b!7471134 (not (= lambda!462709 lambda!462708))))

(assert (=> b!7471134 true))

(assert (=> b!7471134 true))

(assert (=> b!7471134 true))

(declare-fun bs!1931173 () Bool)

(declare-fun b!7471131 () Bool)

(assert (= bs!1931173 (and b!7471131 b!7471134)))

(declare-datatypes ((C!39436 0))(
  ( (C!39437 (val!30116 Int)) )
))
(declare-datatypes ((Regex!19581 0))(
  ( (ElementMatch!19581 (c!1380432 C!39436)) (Concat!28426 (regOne!39674 Regex!19581) (regTwo!39674 Regex!19581)) (EmptyExpr!19581) (Star!19581 (reg!19910 Regex!19581)) (EmptyLang!19581) (Union!19581 (regOne!39675 Regex!19581) (regTwo!39675 Regex!19581)) )
))
(declare-fun r2!5783 () Regex!19581)

(declare-fun lambda!462710 () Int)

(declare-fun lt!2625857 () Regex!19581)

(assert (=> bs!1931173 (= (= r2!5783 lt!2625857) (= lambda!462710 lambda!462708))))

(assert (=> bs!1931173 (not (= lambda!462710 lambda!462709))))

(assert (=> b!7471131 true))

(assert (=> b!7471131 true))

(assert (=> b!7471131 true))

(declare-fun lambda!462711 () Int)

(assert (=> bs!1931173 (not (= lambda!462711 lambda!462708))))

(assert (=> bs!1931173 (= (= r2!5783 lt!2625857) (= lambda!462711 lambda!462709))))

(assert (=> b!7471131 (not (= lambda!462711 lambda!462710))))

(assert (=> b!7471131 true))

(assert (=> b!7471131 true))

(assert (=> b!7471131 true))

(declare-fun b!7471117 () Bool)

(declare-fun e!4457447 () Bool)

(declare-fun tp_is_empty!49451 () Bool)

(assert (=> b!7471117 (= e!4457447 tp_is_empty!49451)))

(declare-fun b!7471118 () Bool)

(declare-fun res!2997208 () Bool)

(declare-fun e!4457451 () Bool)

(assert (=> b!7471118 (=> (not res!2997208) (not e!4457451))))

(declare-fun validRegex!10095 (Regex!19581) Bool)

(assert (=> b!7471118 (= res!2997208 (validRegex!10095 r2!5783))))

(declare-fun b!7471119 () Bool)

(declare-fun e!4457446 () Bool)

(declare-fun tp!2166365 () Bool)

(declare-fun tp!2166368 () Bool)

(assert (=> b!7471119 (= e!4457446 (and tp!2166365 tp!2166368))))

(declare-fun b!7471120 () Bool)

(declare-fun e!4457448 () Bool)

(declare-fun tp!2166370 () Bool)

(declare-fun tp!2166374 () Bool)

(assert (=> b!7471120 (= e!4457448 (and tp!2166370 tp!2166374))))

(declare-fun b!7471121 () Bool)

(declare-fun res!2997206 () Bool)

(assert (=> b!7471121 (=> (not res!2997206) (not e!4457451))))

(declare-fun rTail!78 () Regex!19581)

(assert (=> b!7471121 (= res!2997206 (validRegex!10095 rTail!78))))

(declare-fun b!7471122 () Bool)

(declare-fun tp!2166379 () Bool)

(declare-fun tp!2166366 () Bool)

(assert (=> b!7471122 (= e!4457447 (and tp!2166379 tp!2166366))))

(declare-fun b!7471123 () Bool)

(declare-fun res!2997210 () Bool)

(declare-fun e!4457444 () Bool)

(assert (=> b!7471123 (=> res!2997210 e!4457444)))

(declare-datatypes ((List!72297 0))(
  ( (Nil!72173) (Cons!72173 (h!78621 C!39436) (t!386866 List!72297)) )
))
(declare-datatypes ((tuple2!68612 0))(
  ( (tuple2!68613 (_1!37609 List!72297) (_2!37609 List!72297)) )
))
(declare-fun lt!2625872 () tuple2!68612)

(declare-fun matchR!9345 (Regex!19581 List!72297) Bool)

(assert (=> b!7471123 (= res!2997210 (not (matchR!9345 rTail!78 (_2!37609 lt!2625872))))))

(declare-fun b!7471124 () Bool)

(declare-fun tp!2166367 () Bool)

(assert (=> b!7471124 (= e!4457448 tp!2166367)))

(declare-fun res!2997203 () Bool)

(assert (=> start!724290 (=> (not res!2997203) (not e!4457451))))

(declare-fun r1!5845 () Regex!19581)

(assert (=> start!724290 (= res!2997203 (validRegex!10095 r1!5845))))

(assert (=> start!724290 e!4457451))

(assert (=> start!724290 e!4457447))

(assert (=> start!724290 e!4457446))

(assert (=> start!724290 e!4457448))

(declare-fun e!4457445 () Bool)

(assert (=> start!724290 e!4457445))

(declare-fun b!7471125 () Bool)

(declare-fun e!4457449 () Bool)

(declare-fun e!4457450 () Bool)

(assert (=> b!7471125 (= e!4457449 e!4457450)))

(declare-fun res!2997204 () Bool)

(assert (=> b!7471125 (=> res!2997204 e!4457450)))

(declare-fun lt!2625859 () Bool)

(declare-fun lt!2625877 () Bool)

(assert (=> b!7471125 (= res!2997204 (or (and (not lt!2625859) (not lt!2625877)) lt!2625859))))

(declare-fun lt!2625861 () Regex!19581)

(declare-fun s!13591 () List!72297)

(declare-fun matchRSpec!4260 (Regex!19581 List!72297) Bool)

(assert (=> b!7471125 (= lt!2625877 (matchRSpec!4260 lt!2625861 s!13591))))

(assert (=> b!7471125 (= lt!2625877 (matchR!9345 lt!2625861 s!13591))))

(declare-datatypes ((Unit!165997 0))(
  ( (Unit!165998) )
))
(declare-fun lt!2625871 () Unit!165997)

(declare-fun mainMatchTheorem!4254 (Regex!19581 List!72297) Unit!165997)

(assert (=> b!7471125 (= lt!2625871 (mainMatchTheorem!4254 lt!2625861 s!13591))))

(declare-fun lt!2625867 () Regex!19581)

(assert (=> b!7471125 (= lt!2625859 (matchRSpec!4260 lt!2625867 s!13591))))

(assert (=> b!7471125 (= lt!2625859 (matchR!9345 lt!2625867 s!13591))))

(declare-fun lt!2625866 () Unit!165997)

(assert (=> b!7471125 (= lt!2625866 (mainMatchTheorem!4254 lt!2625867 s!13591))))

(declare-fun b!7471126 () Bool)

(declare-fun tp!2166376 () Bool)

(declare-fun tp!2166373 () Bool)

(assert (=> b!7471126 (= e!4457447 (and tp!2166376 tp!2166373))))

(declare-fun b!7471127 () Bool)

(declare-fun tp!2166369 () Bool)

(declare-fun tp!2166378 () Bool)

(assert (=> b!7471127 (= e!4457446 (and tp!2166369 tp!2166378))))

(declare-fun b!7471128 () Bool)

(declare-fun tp!2166377 () Bool)

(assert (=> b!7471128 (= e!4457445 (and tp_is_empty!49451 tp!2166377))))

(declare-fun b!7471129 () Bool)

(declare-fun tp!2166372 () Bool)

(assert (=> b!7471129 (= e!4457446 tp!2166372)))

(declare-fun b!7471130 () Bool)

(assert (=> b!7471130 (= e!4457444 true)))

(assert (=> b!7471130 (= (matchR!9345 lt!2625857 (_1!37609 lt!2625872)) (matchRSpec!4260 lt!2625857 (_1!37609 lt!2625872)))))

(declare-fun lt!2625863 () Unit!165997)

(assert (=> b!7471130 (= lt!2625863 (mainMatchTheorem!4254 lt!2625857 (_1!37609 lt!2625872)))))

(assert (=> b!7471131 (= e!4457450 e!4457444)))

(declare-fun res!2997205 () Bool)

(assert (=> b!7471131 (=> res!2997205 e!4457444)))

(assert (=> b!7471131 (= res!2997205 (not (matchR!9345 r2!5783 (_1!37609 lt!2625872))))))

(declare-datatypes ((Option!17138 0))(
  ( (None!17137) (Some!17137 (v!54266 tuple2!68612)) )
))
(declare-fun lt!2625874 () Option!17138)

(declare-fun get!25235 (Option!17138) tuple2!68612)

(assert (=> b!7471131 (= lt!2625872 (get!25235 lt!2625874))))

(declare-fun Exists!4200 (Int) Bool)

(assert (=> b!7471131 (= (Exists!4200 lambda!462710) (Exists!4200 lambda!462711))))

(declare-fun lt!2625868 () Unit!165997)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2534 (Regex!19581 Regex!19581 List!72297) Unit!165997)

(assert (=> b!7471131 (= lt!2625868 (lemmaExistCutMatchRandMatchRSpecEquivalent!2534 r2!5783 rTail!78 s!13591))))

(declare-fun isDefined!13827 (Option!17138) Bool)

(assert (=> b!7471131 (= (isDefined!13827 lt!2625874) (Exists!4200 lambda!462710))))

(declare-fun findConcatSeparation!3260 (Regex!19581 Regex!19581 List!72297 List!72297 List!72297) Option!17138)

(assert (=> b!7471131 (= lt!2625874 (findConcatSeparation!3260 r2!5783 rTail!78 Nil!72173 s!13591 s!13591))))

(declare-fun lt!2625875 () Unit!165997)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3018 (Regex!19581 Regex!19581 List!72297) Unit!165997)

(assert (=> b!7471131 (= lt!2625875 (lemmaFindConcatSeparationEquivalentToExists!3018 r2!5783 rTail!78 s!13591))))

(declare-fun b!7471132 () Bool)

(assert (=> b!7471132 (= e!4457446 tp_is_empty!49451)))

(declare-fun b!7471133 () Bool)

(declare-fun tp!2166364 () Bool)

(declare-fun tp!2166371 () Bool)

(assert (=> b!7471133 (= e!4457448 (and tp!2166364 tp!2166371))))

(declare-fun e!4457452 () Bool)

(assert (=> b!7471134 (= e!4457452 e!4457449)))

(declare-fun res!2997209 () Bool)

(assert (=> b!7471134 (=> res!2997209 e!4457449)))

(declare-fun lt!2625870 () Bool)

(declare-fun lt!2625864 () Bool)

(assert (=> b!7471134 (= res!2997209 (or lt!2625870 (not lt!2625864)))))

(assert (=> b!7471134 (= (Exists!4200 lambda!462708) (Exists!4200 lambda!462709))))

(declare-fun lt!2625873 () Unit!165997)

(assert (=> b!7471134 (= lt!2625873 (lemmaExistCutMatchRandMatchRSpecEquivalent!2534 lt!2625857 rTail!78 s!13591))))

(assert (=> b!7471134 (= lt!2625870 (Exists!4200 lambda!462708))))

(assert (=> b!7471134 (= lt!2625870 (isDefined!13827 (findConcatSeparation!3260 lt!2625857 rTail!78 Nil!72173 s!13591 s!13591)))))

(declare-fun lt!2625869 () Unit!165997)

(assert (=> b!7471134 (= lt!2625869 (lemmaFindConcatSeparationEquivalentToExists!3018 lt!2625857 rTail!78 s!13591))))

(declare-fun b!7471135 () Bool)

(assert (=> b!7471135 (= e!4457451 (not e!4457452))))

(declare-fun res!2997207 () Bool)

(assert (=> b!7471135 (=> res!2997207 e!4457452)))

(declare-fun lt!2625876 () Bool)

(assert (=> b!7471135 (= res!2997207 lt!2625876)))

(declare-fun lt!2625860 () Regex!19581)

(assert (=> b!7471135 (= lt!2625864 (matchRSpec!4260 lt!2625860 s!13591))))

(assert (=> b!7471135 (= lt!2625864 (matchR!9345 lt!2625860 s!13591))))

(declare-fun lt!2625865 () Unit!165997)

(assert (=> b!7471135 (= lt!2625865 (mainMatchTheorem!4254 lt!2625860 s!13591))))

(declare-fun lt!2625862 () Regex!19581)

(assert (=> b!7471135 (= lt!2625876 (matchRSpec!4260 lt!2625862 s!13591))))

(assert (=> b!7471135 (= lt!2625876 (matchR!9345 lt!2625862 s!13591))))

(declare-fun lt!2625858 () Unit!165997)

(assert (=> b!7471135 (= lt!2625858 (mainMatchTheorem!4254 lt!2625862 s!13591))))

(assert (=> b!7471135 (= lt!2625860 (Union!19581 lt!2625867 lt!2625861))))

(assert (=> b!7471135 (= lt!2625861 (Concat!28426 r2!5783 rTail!78))))

(assert (=> b!7471135 (= lt!2625867 (Concat!28426 r1!5845 rTail!78))))

(assert (=> b!7471135 (= lt!2625862 (Concat!28426 lt!2625857 rTail!78))))

(assert (=> b!7471135 (= lt!2625857 (Union!19581 r1!5845 r2!5783))))

(declare-fun b!7471136 () Bool)

(declare-fun tp!2166375 () Bool)

(assert (=> b!7471136 (= e!4457447 tp!2166375)))

(declare-fun b!7471137 () Bool)

(assert (=> b!7471137 (= e!4457448 tp_is_empty!49451)))

(assert (= (and start!724290 res!2997203) b!7471118))

(assert (= (and b!7471118 res!2997208) b!7471121))

(assert (= (and b!7471121 res!2997206) b!7471135))

(assert (= (and b!7471135 (not res!2997207)) b!7471134))

(assert (= (and b!7471134 (not res!2997209)) b!7471125))

(assert (= (and b!7471125 (not res!2997204)) b!7471131))

(assert (= (and b!7471131 (not res!2997205)) b!7471123))

(assert (= (and b!7471123 (not res!2997210)) b!7471130))

(get-info :version)

(assert (= (and start!724290 ((_ is ElementMatch!19581) r1!5845)) b!7471117))

(assert (= (and start!724290 ((_ is Concat!28426) r1!5845)) b!7471122))

(assert (= (and start!724290 ((_ is Star!19581) r1!5845)) b!7471136))

(assert (= (and start!724290 ((_ is Union!19581) r1!5845)) b!7471126))

(assert (= (and start!724290 ((_ is ElementMatch!19581) r2!5783)) b!7471132))

(assert (= (and start!724290 ((_ is Concat!28426) r2!5783)) b!7471127))

(assert (= (and start!724290 ((_ is Star!19581) r2!5783)) b!7471129))

(assert (= (and start!724290 ((_ is Union!19581) r2!5783)) b!7471119))

(assert (= (and start!724290 ((_ is ElementMatch!19581) rTail!78)) b!7471137))

(assert (= (and start!724290 ((_ is Concat!28426) rTail!78)) b!7471120))

(assert (= (and start!724290 ((_ is Star!19581) rTail!78)) b!7471124))

(assert (= (and start!724290 ((_ is Union!19581) rTail!78)) b!7471133))

(assert (= (and start!724290 ((_ is Cons!72173) s!13591)) b!7471128))

(declare-fun m!8067982 () Bool)

(assert (=> b!7471118 m!8067982))

(declare-fun m!8067984 () Bool)

(assert (=> b!7471130 m!8067984))

(declare-fun m!8067986 () Bool)

(assert (=> b!7471130 m!8067986))

(declare-fun m!8067988 () Bool)

(assert (=> b!7471130 m!8067988))

(declare-fun m!8067990 () Bool)

(assert (=> b!7471125 m!8067990))

(declare-fun m!8067992 () Bool)

(assert (=> b!7471125 m!8067992))

(declare-fun m!8067994 () Bool)

(assert (=> b!7471125 m!8067994))

(declare-fun m!8067996 () Bool)

(assert (=> b!7471125 m!8067996))

(declare-fun m!8067998 () Bool)

(assert (=> b!7471125 m!8067998))

(declare-fun m!8068000 () Bool)

(assert (=> b!7471125 m!8068000))

(declare-fun m!8068002 () Bool)

(assert (=> b!7471121 m!8068002))

(declare-fun m!8068004 () Bool)

(assert (=> b!7471123 m!8068004))

(declare-fun m!8068006 () Bool)

(assert (=> b!7471135 m!8068006))

(declare-fun m!8068008 () Bool)

(assert (=> b!7471135 m!8068008))

(declare-fun m!8068010 () Bool)

(assert (=> b!7471135 m!8068010))

(declare-fun m!8068012 () Bool)

(assert (=> b!7471135 m!8068012))

(declare-fun m!8068014 () Bool)

(assert (=> b!7471135 m!8068014))

(declare-fun m!8068016 () Bool)

(assert (=> b!7471135 m!8068016))

(declare-fun m!8068018 () Bool)

(assert (=> start!724290 m!8068018))

(declare-fun m!8068020 () Bool)

(assert (=> b!7471131 m!8068020))

(declare-fun m!8068022 () Bool)

(assert (=> b!7471131 m!8068022))

(declare-fun m!8068024 () Bool)

(assert (=> b!7471131 m!8068024))

(declare-fun m!8068026 () Bool)

(assert (=> b!7471131 m!8068026))

(declare-fun m!8068028 () Bool)

(assert (=> b!7471131 m!8068028))

(declare-fun m!8068030 () Bool)

(assert (=> b!7471131 m!8068030))

(assert (=> b!7471131 m!8068022))

(declare-fun m!8068032 () Bool)

(assert (=> b!7471131 m!8068032))

(declare-fun m!8068034 () Bool)

(assert (=> b!7471131 m!8068034))

(declare-fun m!8068036 () Bool)

(assert (=> b!7471134 m!8068036))

(declare-fun m!8068038 () Bool)

(assert (=> b!7471134 m!8068038))

(declare-fun m!8068040 () Bool)

(assert (=> b!7471134 m!8068040))

(declare-fun m!8068042 () Bool)

(assert (=> b!7471134 m!8068042))

(declare-fun m!8068044 () Bool)

(assert (=> b!7471134 m!8068044))

(assert (=> b!7471134 m!8068040))

(declare-fun m!8068046 () Bool)

(assert (=> b!7471134 m!8068046))

(assert (=> b!7471134 m!8068036))

(check-sat (not b!7471133) (not b!7471136) (not b!7471130) (not b!7471126) (not start!724290) (not b!7471135) (not b!7471131) tp_is_empty!49451 (not b!7471121) (not b!7471124) (not b!7471125) (not b!7471122) (not b!7471120) (not b!7471127) (not b!7471123) (not b!7471129) (not b!7471128) (not b!7471134) (not b!7471119) (not b!7471118))
(check-sat)
