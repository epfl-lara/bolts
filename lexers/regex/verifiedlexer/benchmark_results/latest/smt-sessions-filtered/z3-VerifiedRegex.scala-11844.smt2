; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!665950 () Bool)

(assert start!665950)

(declare-fun b!6928182 () Bool)

(assert (=> b!6928182 true))

(assert (=> b!6928182 true))

(assert (=> b!6928182 true))

(declare-fun lambda!394248 () Int)

(declare-fun lambda!394247 () Int)

(assert (=> b!6928182 (not (= lambda!394248 lambda!394247))))

(assert (=> b!6928182 true))

(assert (=> b!6928182 true))

(assert (=> b!6928182 true))

(declare-fun bs!1849666 () Bool)

(declare-fun b!6928179 () Bool)

(assert (= bs!1849666 (and b!6928179 b!6928182)))

(declare-datatypes ((C!34140 0))(
  ( (C!34141 (val!26772 Int)) )
))
(declare-datatypes ((Regex!16935 0))(
  ( (ElementMatch!16935 (c!1285947 C!34140)) (Concat!25780 (regOne!34382 Regex!16935) (regTwo!34382 Regex!16935)) (EmptyExpr!16935) (Star!16935 (reg!17264 Regex!16935)) (EmptyLang!16935) (Union!16935 (regOne!34383 Regex!16935) (regTwo!34383 Regex!16935)) )
))
(declare-fun r3!135 () Regex!16935)

(declare-datatypes ((List!66688 0))(
  ( (Nil!66564) (Cons!66564 (h!73012 C!34140) (t!380431 List!66688)) )
))
(declare-fun s!14361 () List!66688)

(declare-datatypes ((tuple2!67584 0))(
  ( (tuple2!67585 (_1!37095 List!66688) (_2!37095 List!66688)) )
))
(declare-fun lt!2472632 () tuple2!67584)

(declare-fun r2!6280 () Regex!16935)

(declare-fun lt!2472630 () Regex!16935)

(declare-fun lambda!394249 () Int)

(declare-fun r1!6342 () Regex!16935)

(assert (=> bs!1849666 (= (and (= (_1!37095 lt!2472632) s!14361) (= r1!6342 lt!2472630) (= r2!6280 r3!135)) (= lambda!394249 lambda!394247))))

(assert (=> bs!1849666 (not (= lambda!394249 lambda!394248))))

(assert (=> b!6928179 true))

(assert (=> b!6928179 true))

(assert (=> b!6928179 true))

(declare-fun lambda!394250 () Int)

(assert (=> bs!1849666 (not (= lambda!394250 lambda!394247))))

(assert (=> bs!1849666 (= (and (= (_1!37095 lt!2472632) s!14361) (= r1!6342 lt!2472630) (= r2!6280 r3!135)) (= lambda!394250 lambda!394248))))

(assert (=> b!6928179 (not (= lambda!394250 lambda!394249))))

(assert (=> b!6928179 true))

(assert (=> b!6928179 true))

(assert (=> b!6928179 true))

(declare-fun bs!1849667 () Bool)

(declare-fun b!6928188 () Bool)

(assert (= bs!1849667 (and b!6928188 b!6928182)))

(declare-fun lt!2472613 () List!66688)

(declare-fun lambda!394251 () Int)

(assert (=> bs!1849667 (= (and (= lt!2472613 s!14361) (= r2!6280 lt!2472630)) (= lambda!394251 lambda!394247))))

(assert (=> bs!1849667 (not (= lambda!394251 lambda!394248))))

(declare-fun bs!1849668 () Bool)

(assert (= bs!1849668 (and b!6928188 b!6928179)))

(assert (=> bs!1849668 (= (and (= lt!2472613 (_1!37095 lt!2472632)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394251 lambda!394249))))

(assert (=> bs!1849668 (not (= lambda!394251 lambda!394250))))

(assert (=> b!6928188 true))

(assert (=> b!6928188 true))

(assert (=> b!6928188 true))

(declare-fun lambda!394252 () Int)

(assert (=> bs!1849668 (not (= lambda!394252 lambda!394249))))

(assert (=> bs!1849667 (not (= lambda!394252 lambda!394247))))

(assert (=> bs!1849667 (= (and (= lt!2472613 s!14361) (= r2!6280 lt!2472630)) (= lambda!394252 lambda!394248))))

(assert (=> b!6928188 (not (= lambda!394252 lambda!394251))))

(assert (=> bs!1849668 (= (and (= lt!2472613 (_1!37095 lt!2472632)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394252 lambda!394250))))

(assert (=> b!6928188 true))

(assert (=> b!6928188 true))

(assert (=> b!6928188 true))

(declare-fun bs!1849669 () Bool)

(declare-fun b!6928187 () Bool)

(assert (= bs!1849669 (and b!6928187 b!6928179)))

(declare-fun lt!2472617 () Regex!16935)

(declare-fun lambda!394253 () Int)

(assert (=> bs!1849669 (= (and (= s!14361 (_1!37095 lt!2472632)) (= lt!2472617 r2!6280)) (= lambda!394253 lambda!394249))))

(declare-fun bs!1849670 () Bool)

(assert (= bs!1849670 (and b!6928187 b!6928182)))

(assert (=> bs!1849670 (= (and (= r1!6342 lt!2472630) (= lt!2472617 r3!135)) (= lambda!394253 lambda!394247))))

(assert (=> bs!1849670 (not (= lambda!394253 lambda!394248))))

(declare-fun bs!1849671 () Bool)

(assert (= bs!1849671 (and b!6928187 b!6928188)))

(assert (=> bs!1849671 (= (and (= s!14361 lt!2472613) (= r1!6342 r2!6280) (= lt!2472617 r3!135)) (= lambda!394253 lambda!394251))))

(assert (=> bs!1849671 (not (= lambda!394253 lambda!394252))))

(assert (=> bs!1849669 (not (= lambda!394253 lambda!394250))))

(assert (=> b!6928187 true))

(assert (=> b!6928187 true))

(assert (=> b!6928187 true))

(declare-fun bs!1849672 () Bool)

(declare-fun b!6928191 () Bool)

(assert (= bs!1849672 (and b!6928191 b!6928179)))

(declare-fun lambda!394254 () Int)

(assert (=> bs!1849672 (not (= lambda!394254 lambda!394249))))

(declare-fun bs!1849673 () Bool)

(assert (= bs!1849673 (and b!6928191 b!6928182)))

(assert (=> bs!1849673 (not (= lambda!394254 lambda!394247))))

(assert (=> bs!1849673 (= (and (= r1!6342 lt!2472630) (= lt!2472617 r3!135)) (= lambda!394254 lambda!394248))))

(declare-fun bs!1849674 () Bool)

(assert (= bs!1849674 (and b!6928191 b!6928188)))

(assert (=> bs!1849674 (not (= lambda!394254 lambda!394251))))

(declare-fun bs!1849675 () Bool)

(assert (= bs!1849675 (and b!6928191 b!6928187)))

(assert (=> bs!1849675 (not (= lambda!394254 lambda!394253))))

(assert (=> bs!1849674 (= (and (= s!14361 lt!2472613) (= r1!6342 r2!6280) (= lt!2472617 r3!135)) (= lambda!394254 lambda!394252))))

(assert (=> bs!1849672 (= (and (= s!14361 (_1!37095 lt!2472632)) (= lt!2472617 r2!6280)) (= lambda!394254 lambda!394250))))

(assert (=> b!6928191 true))

(assert (=> b!6928191 true))

(assert (=> b!6928191 true))

(declare-fun b!6928175 () Bool)

(declare-fun e!4169118 () Bool)

(declare-fun tp_is_empty!43095 () Bool)

(declare-fun tp!1909633 () Bool)

(assert (=> b!6928175 (= e!4169118 (and tp_is_empty!43095 tp!1909633))))

(declare-fun res!2825581 () Bool)

(declare-fun e!4169115 () Bool)

(assert (=> start!665950 (=> (not res!2825581) (not e!4169115))))

(declare-fun validRegex!8641 (Regex!16935) Bool)

(assert (=> start!665950 (= res!2825581 (validRegex!8641 r1!6342))))

(assert (=> start!665950 e!4169115))

(declare-fun e!4169110 () Bool)

(assert (=> start!665950 e!4169110))

(declare-fun e!4169109 () Bool)

(assert (=> start!665950 e!4169109))

(declare-fun e!4169111 () Bool)

(assert (=> start!665950 e!4169111))

(assert (=> start!665950 e!4169118))

(declare-fun b!6928176 () Bool)

(declare-fun tp!1909634 () Bool)

(declare-fun tp!1909622 () Bool)

(assert (=> b!6928176 (= e!4169109 (and tp!1909634 tp!1909622))))

(declare-fun b!6928177 () Bool)

(declare-fun e!4169120 () Bool)

(assert (=> b!6928177 (= e!4169115 (not e!4169120))))

(declare-fun res!2825586 () Bool)

(assert (=> b!6928177 (=> res!2825586 e!4169120)))

(declare-fun lt!2472623 () Bool)

(assert (=> b!6928177 (= res!2825586 (not lt!2472623))))

(declare-fun lt!2472615 () Bool)

(declare-fun lt!2472612 () Regex!16935)

(declare-fun matchRSpec!3992 (Regex!16935 List!66688) Bool)

(assert (=> b!6928177 (= lt!2472615 (matchRSpec!3992 lt!2472612 s!14361))))

(declare-fun matchR!9074 (Regex!16935 List!66688) Bool)

(assert (=> b!6928177 (= lt!2472615 (matchR!9074 lt!2472612 s!14361))))

(declare-datatypes ((Unit!160594 0))(
  ( (Unit!160595) )
))
(declare-fun lt!2472610 () Unit!160594)

(declare-fun mainMatchTheorem!3992 (Regex!16935 List!66688) Unit!160594)

(assert (=> b!6928177 (= lt!2472610 (mainMatchTheorem!3992 lt!2472612 s!14361))))

(declare-fun lt!2472631 () Regex!16935)

(assert (=> b!6928177 (= lt!2472623 (matchRSpec!3992 lt!2472631 s!14361))))

(assert (=> b!6928177 (= lt!2472623 (matchR!9074 lt!2472631 s!14361))))

(declare-fun lt!2472609 () Unit!160594)

(assert (=> b!6928177 (= lt!2472609 (mainMatchTheorem!3992 lt!2472631 s!14361))))

(assert (=> b!6928177 (= lt!2472612 (Concat!25780 r1!6342 lt!2472617))))

(assert (=> b!6928177 (= lt!2472617 (Concat!25780 r2!6280 r3!135))))

(assert (=> b!6928177 (= lt!2472631 (Concat!25780 lt!2472630 r3!135))))

(assert (=> b!6928177 (= lt!2472630 (Concat!25780 r1!6342 r2!6280))))

(declare-fun b!6928178 () Bool)

(declare-fun tp!1909623 () Bool)

(declare-fun tp!1909632 () Bool)

(assert (=> b!6928178 (= e!4169111 (and tp!1909623 tp!1909632))))

(declare-fun e!4169116 () Bool)

(declare-fun e!4169119 () Bool)

(assert (=> b!6928179 (= e!4169116 e!4169119)))

(declare-fun res!2825587 () Bool)

(assert (=> b!6928179 (=> res!2825587 e!4169119)))

(declare-fun lt!2472636 () tuple2!67584)

(assert (=> b!6928179 (= res!2825587 (not (matchR!9074 r1!6342 (_1!37095 lt!2472636))))))

(declare-datatypes ((Option!16704 0))(
  ( (None!16703) (Some!16703 (v!52975 tuple2!67584)) )
))
(declare-fun lt!2472627 () Option!16704)

(declare-fun get!23343 (Option!16704) tuple2!67584)

(assert (=> b!6928179 (= lt!2472636 (get!23343 lt!2472627))))

(declare-fun Exists!3937 (Int) Bool)

(assert (=> b!6928179 (= (Exists!3937 lambda!394249) (Exists!3937 lambda!394250))))

(declare-fun lt!2472641 () Unit!160594)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2404 (Regex!16935 Regex!16935 List!66688) Unit!160594)

(assert (=> b!6928179 (= lt!2472641 (lemmaExistCutMatchRandMatchRSpecEquivalent!2404 r1!6342 r2!6280 (_1!37095 lt!2472632)))))

(declare-fun isDefined!13407 (Option!16704) Bool)

(assert (=> b!6928179 (= (isDefined!13407 lt!2472627) (Exists!3937 lambda!394249))))

(declare-fun findConcatSeparation!3118 (Regex!16935 Regex!16935 List!66688 List!66688 List!66688) Option!16704)

(assert (=> b!6928179 (= lt!2472627 (findConcatSeparation!3118 r1!6342 r2!6280 Nil!66564 (_1!37095 lt!2472632) (_1!37095 lt!2472632)))))

(declare-fun lt!2472620 () Unit!160594)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2880 (Regex!16935 Regex!16935 List!66688) Unit!160594)

(assert (=> b!6928179 (= lt!2472620 (lemmaFindConcatSeparationEquivalentToExists!2880 r1!6342 r2!6280 (_1!37095 lt!2472632)))))

(declare-fun b!6928180 () Bool)

(declare-fun res!2825583 () Bool)

(assert (=> b!6928180 (=> res!2825583 e!4169119)))

(assert (=> b!6928180 (= res!2825583 (not (matchR!9074 r2!6280 (_2!37095 lt!2472636))))))

(declare-fun b!6928181 () Bool)

(declare-fun tp!1909631 () Bool)

(assert (=> b!6928181 (= e!4169110 tp!1909631)))

(assert (=> b!6928182 (= e!4169120 e!4169116)))

(declare-fun res!2825588 () Bool)

(assert (=> b!6928182 (=> res!2825588 e!4169116)))

(declare-fun lt!2472619 () Bool)

(assert (=> b!6928182 (= res!2825588 (not lt!2472619))))

(assert (=> b!6928182 (= lt!2472619 (matchRSpec!3992 lt!2472630 (_1!37095 lt!2472632)))))

(assert (=> b!6928182 (= lt!2472619 (matchR!9074 lt!2472630 (_1!37095 lt!2472632)))))

(declare-fun lt!2472611 () Unit!160594)

(assert (=> b!6928182 (= lt!2472611 (mainMatchTheorem!3992 lt!2472630 (_1!37095 lt!2472632)))))

(declare-fun lt!2472628 () Option!16704)

(assert (=> b!6928182 (= lt!2472632 (get!23343 lt!2472628))))

(assert (=> b!6928182 (= (Exists!3937 lambda!394247) (Exists!3937 lambda!394248))))

(declare-fun lt!2472640 () Unit!160594)

(assert (=> b!6928182 (= lt!2472640 (lemmaExistCutMatchRandMatchRSpecEquivalent!2404 lt!2472630 r3!135 s!14361))))

(assert (=> b!6928182 (= (isDefined!13407 lt!2472628) (Exists!3937 lambda!394247))))

(assert (=> b!6928182 (= lt!2472628 (findConcatSeparation!3118 lt!2472630 r3!135 Nil!66564 s!14361 s!14361))))

(declare-fun lt!2472634 () Unit!160594)

(assert (=> b!6928182 (= lt!2472634 (lemmaFindConcatSeparationEquivalentToExists!2880 lt!2472630 r3!135 s!14361))))

(declare-fun b!6928183 () Bool)

(declare-fun tp!1909620 () Bool)

(declare-fun tp!1909628 () Bool)

(assert (=> b!6928183 (= e!4169110 (and tp!1909620 tp!1909628))))

(declare-fun b!6928184 () Bool)

(assert (=> b!6928184 (= e!4169109 tp_is_empty!43095)))

(declare-fun b!6928185 () Bool)

(declare-fun res!2825585 () Bool)

(assert (=> b!6928185 (=> (not res!2825585) (not e!4169115))))

(assert (=> b!6928185 (= res!2825585 (validRegex!8641 r3!135))))

(declare-fun b!6928186 () Bool)

(assert (=> b!6928186 (= e!4169110 tp_is_empty!43095)))

(declare-fun e!4169114 () Bool)

(declare-fun e!4169117 () Bool)

(assert (=> b!6928187 (= e!4169114 e!4169117)))

(declare-fun res!2825591 () Bool)

(assert (=> b!6928187 (=> res!2825591 e!4169117)))

(assert (=> b!6928187 (= res!2825591 (not (validRegex!8641 lt!2472617)))))

(assert (=> b!6928187 (Exists!3937 lambda!394253)))

(declare-fun lt!2472637 () Unit!160594)

(assert (=> b!6928187 (= lt!2472637 (lemmaFindConcatSeparationEquivalentToExists!2880 r1!6342 lt!2472617 s!14361))))

(assert (=> b!6928187 (isDefined!13407 (findConcatSeparation!3118 r1!6342 lt!2472617 Nil!66564 s!14361 s!14361))))

(declare-fun lt!2472626 () Unit!160594)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!96 (Regex!16935 Regex!16935 List!66688 List!66688 List!66688 List!66688 List!66688) Unit!160594)

(assert (=> b!6928187 (= lt!2472626 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!96 r1!6342 lt!2472617 (_1!37095 lt!2472636) lt!2472613 s!14361 Nil!66564 s!14361))))

(declare-fun e!4169112 () Bool)

(declare-fun e!4169113 () Bool)

(assert (=> b!6928188 (= e!4169112 e!4169113)))

(declare-fun res!2825582 () Bool)

(assert (=> b!6928188 (=> res!2825582 e!4169113)))

(declare-fun lt!2472625 () Bool)

(assert (=> b!6928188 (= res!2825582 (not lt!2472625))))

(declare-fun lt!2472638 () Bool)

(assert (=> b!6928188 lt!2472638))

(declare-fun lt!2472614 () Unit!160594)

(assert (=> b!6928188 (= lt!2472614 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!96 r2!6280 r3!135 (_2!37095 lt!2472636) (_2!37095 lt!2472632) lt!2472613 Nil!66564 lt!2472613))))

(assert (=> b!6928188 (= (Exists!3937 lambda!394251) (Exists!3937 lambda!394252))))

(declare-fun lt!2472621 () Unit!160594)

(assert (=> b!6928188 (= lt!2472621 (lemmaExistCutMatchRandMatchRSpecEquivalent!2404 r2!6280 r3!135 lt!2472613))))

(assert (=> b!6928188 (= lt!2472638 (Exists!3937 lambda!394251))))

(assert (=> b!6928188 (= lt!2472638 (isDefined!13407 (findConcatSeparation!3118 r2!6280 r3!135 Nil!66564 lt!2472613 lt!2472613)))))

(declare-fun lt!2472633 () Unit!160594)

(assert (=> b!6928188 (= lt!2472633 (lemmaFindConcatSeparationEquivalentToExists!2880 r2!6280 r3!135 lt!2472613))))

(assert (=> b!6928188 (= lt!2472625 (matchRSpec!3992 lt!2472617 lt!2472613))))

(assert (=> b!6928188 (= lt!2472625 (matchR!9074 lt!2472617 lt!2472613))))

(declare-fun lt!2472635 () Unit!160594)

(assert (=> b!6928188 (= lt!2472635 (mainMatchTheorem!3992 lt!2472617 lt!2472613))))

(declare-fun ++!14978 (List!66688 List!66688) List!66688)

(assert (=> b!6928188 (= lt!2472613 (++!14978 (_2!37095 lt!2472636) (_2!37095 lt!2472632)))))

(declare-fun b!6928189 () Bool)

(declare-fun tp!1909630 () Bool)

(assert (=> b!6928189 (= e!4169109 tp!1909630)))

(declare-fun b!6928190 () Bool)

(assert (=> b!6928190 (= e!4169119 e!4169112)))

(declare-fun res!2825590 () Bool)

(assert (=> b!6928190 (=> res!2825590 e!4169112)))

(declare-fun lt!2472629 () List!66688)

(assert (=> b!6928190 (= res!2825590 (not (= lt!2472629 s!14361)))))

(assert (=> b!6928190 (= lt!2472629 (++!14978 (++!14978 (_1!37095 lt!2472636) (_2!37095 lt!2472636)) (_2!37095 lt!2472632)))))

(assert (=> b!6928190 (matchRSpec!3992 r2!6280 (_2!37095 lt!2472636))))

(declare-fun lt!2472624 () Unit!160594)

(assert (=> b!6928190 (= lt!2472624 (mainMatchTheorem!3992 r2!6280 (_2!37095 lt!2472636)))))

(assert (=> b!6928190 (matchRSpec!3992 r1!6342 (_1!37095 lt!2472636))))

(declare-fun lt!2472622 () Unit!160594)

(assert (=> b!6928190 (= lt!2472622 (mainMatchTheorem!3992 r1!6342 (_1!37095 lt!2472636)))))

(assert (=> b!6928191 (= e!4169117 lt!2472615)))

(assert (=> b!6928191 (= (Exists!3937 lambda!394253) (Exists!3937 lambda!394254))))

(declare-fun lt!2472618 () Unit!160594)

(assert (=> b!6928191 (= lt!2472618 (lemmaExistCutMatchRandMatchRSpecEquivalent!2404 r1!6342 lt!2472617 s!14361))))

(declare-fun b!6928192 () Bool)

(declare-fun tp!1909625 () Bool)

(declare-fun tp!1909624 () Bool)

(assert (=> b!6928192 (= e!4169109 (and tp!1909625 tp!1909624))))

(declare-fun b!6928193 () Bool)

(assert (=> b!6928193 (= e!4169111 tp_is_empty!43095)))

(declare-fun b!6928194 () Bool)

(assert (=> b!6928194 (= e!4169113 e!4169114)))

(declare-fun res!2825589 () Bool)

(assert (=> b!6928194 (=> res!2825589 e!4169114)))

(declare-fun lt!2472639 () List!66688)

(assert (=> b!6928194 (= res!2825589 (not (= lt!2472639 s!14361)))))

(assert (=> b!6928194 (= lt!2472629 lt!2472639)))

(assert (=> b!6928194 (= lt!2472639 (++!14978 (_1!37095 lt!2472636) lt!2472613))))

(declare-fun lt!2472616 () Unit!160594)

(declare-fun lemmaConcatAssociativity!3026 (List!66688 List!66688 List!66688) Unit!160594)

(assert (=> b!6928194 (= lt!2472616 (lemmaConcatAssociativity!3026 (_1!37095 lt!2472636) (_2!37095 lt!2472636) (_2!37095 lt!2472632)))))

(declare-fun b!6928195 () Bool)

(declare-fun tp!1909626 () Bool)

(declare-fun tp!1909635 () Bool)

(assert (=> b!6928195 (= e!4169111 (and tp!1909626 tp!1909635))))

(declare-fun b!6928196 () Bool)

(declare-fun tp!1909629 () Bool)

(assert (=> b!6928196 (= e!4169111 tp!1909629)))

(declare-fun b!6928197 () Bool)

(declare-fun tp!1909621 () Bool)

(declare-fun tp!1909627 () Bool)

(assert (=> b!6928197 (= e!4169110 (and tp!1909621 tp!1909627))))

(declare-fun b!6928198 () Bool)

(declare-fun res!2825584 () Bool)

(assert (=> b!6928198 (=> res!2825584 e!4169116)))

(assert (=> b!6928198 (= res!2825584 (not (matchR!9074 r3!135 (_2!37095 lt!2472632))))))

(declare-fun b!6928199 () Bool)

(declare-fun res!2825592 () Bool)

(assert (=> b!6928199 (=> (not res!2825592) (not e!4169115))))

(assert (=> b!6928199 (= res!2825592 (validRegex!8641 r2!6280))))

(assert (= (and start!665950 res!2825581) b!6928199))

(assert (= (and b!6928199 res!2825592) b!6928185))

(assert (= (and b!6928185 res!2825585) b!6928177))

(assert (= (and b!6928177 (not res!2825586)) b!6928182))

(assert (= (and b!6928182 (not res!2825588)) b!6928198))

(assert (= (and b!6928198 (not res!2825584)) b!6928179))

(assert (= (and b!6928179 (not res!2825587)) b!6928180))

(assert (= (and b!6928180 (not res!2825583)) b!6928190))

(assert (= (and b!6928190 (not res!2825590)) b!6928188))

(assert (= (and b!6928188 (not res!2825582)) b!6928194))

(assert (= (and b!6928194 (not res!2825589)) b!6928187))

(assert (= (and b!6928187 (not res!2825591)) b!6928191))

(get-info :version)

(assert (= (and start!665950 ((_ is ElementMatch!16935) r1!6342)) b!6928186))

(assert (= (and start!665950 ((_ is Concat!25780) r1!6342)) b!6928197))

(assert (= (and start!665950 ((_ is Star!16935) r1!6342)) b!6928181))

(assert (= (and start!665950 ((_ is Union!16935) r1!6342)) b!6928183))

(assert (= (and start!665950 ((_ is ElementMatch!16935) r2!6280)) b!6928184))

(assert (= (and start!665950 ((_ is Concat!25780) r2!6280)) b!6928176))

(assert (= (and start!665950 ((_ is Star!16935) r2!6280)) b!6928189))

(assert (= (and start!665950 ((_ is Union!16935) r2!6280)) b!6928192))

(assert (= (and start!665950 ((_ is ElementMatch!16935) r3!135)) b!6928193))

(assert (= (and start!665950 ((_ is Concat!25780) r3!135)) b!6928195))

(assert (= (and start!665950 ((_ is Star!16935) r3!135)) b!6928196))

(assert (= (and start!665950 ((_ is Union!16935) r3!135)) b!6928178))

(assert (= (and start!665950 ((_ is Cons!66564) s!14361)) b!6928175))

(declare-fun m!7636592 () Bool)

(assert (=> b!6928177 m!7636592))

(declare-fun m!7636594 () Bool)

(assert (=> b!6928177 m!7636594))

(declare-fun m!7636596 () Bool)

(assert (=> b!6928177 m!7636596))

(declare-fun m!7636598 () Bool)

(assert (=> b!6928177 m!7636598))

(declare-fun m!7636600 () Bool)

(assert (=> b!6928177 m!7636600))

(declare-fun m!7636602 () Bool)

(assert (=> b!6928177 m!7636602))

(declare-fun m!7636604 () Bool)

(assert (=> b!6928198 m!7636604))

(declare-fun m!7636606 () Bool)

(assert (=> start!665950 m!7636606))

(declare-fun m!7636608 () Bool)

(assert (=> b!6928190 m!7636608))

(declare-fun m!7636610 () Bool)

(assert (=> b!6928190 m!7636610))

(declare-fun m!7636612 () Bool)

(assert (=> b!6928190 m!7636612))

(declare-fun m!7636614 () Bool)

(assert (=> b!6928190 m!7636614))

(declare-fun m!7636616 () Bool)

(assert (=> b!6928190 m!7636616))

(declare-fun m!7636618 () Bool)

(assert (=> b!6928190 m!7636618))

(assert (=> b!6928190 m!7636608))

(declare-fun m!7636620 () Bool)

(assert (=> b!6928179 m!7636620))

(declare-fun m!7636622 () Bool)

(assert (=> b!6928179 m!7636622))

(declare-fun m!7636624 () Bool)

(assert (=> b!6928179 m!7636624))

(declare-fun m!7636626 () Bool)

(assert (=> b!6928179 m!7636626))

(declare-fun m!7636628 () Bool)

(assert (=> b!6928179 m!7636628))

(declare-fun m!7636630 () Bool)

(assert (=> b!6928179 m!7636630))

(declare-fun m!7636632 () Bool)

(assert (=> b!6928179 m!7636632))

(declare-fun m!7636634 () Bool)

(assert (=> b!6928179 m!7636634))

(assert (=> b!6928179 m!7636626))

(declare-fun m!7636636 () Bool)

(assert (=> b!6928185 m!7636636))

(declare-fun m!7636638 () Bool)

(assert (=> b!6928188 m!7636638))

(declare-fun m!7636640 () Bool)

(assert (=> b!6928188 m!7636640))

(declare-fun m!7636642 () Bool)

(assert (=> b!6928188 m!7636642))

(declare-fun m!7636644 () Bool)

(assert (=> b!6928188 m!7636644))

(declare-fun m!7636646 () Bool)

(assert (=> b!6928188 m!7636646))

(declare-fun m!7636648 () Bool)

(assert (=> b!6928188 m!7636648))

(declare-fun m!7636650 () Bool)

(assert (=> b!6928188 m!7636650))

(declare-fun m!7636652 () Bool)

(assert (=> b!6928188 m!7636652))

(declare-fun m!7636654 () Bool)

(assert (=> b!6928188 m!7636654))

(assert (=> b!6928188 m!7636642))

(declare-fun m!7636656 () Bool)

(assert (=> b!6928188 m!7636656))

(assert (=> b!6928188 m!7636648))

(declare-fun m!7636658 () Bool)

(assert (=> b!6928188 m!7636658))

(declare-fun m!7636660 () Bool)

(assert (=> b!6928180 m!7636660))

(declare-fun m!7636662 () Bool)

(assert (=> b!6928194 m!7636662))

(declare-fun m!7636664 () Bool)

(assert (=> b!6928194 m!7636664))

(declare-fun m!7636666 () Bool)

(assert (=> b!6928182 m!7636666))

(declare-fun m!7636668 () Bool)

(assert (=> b!6928182 m!7636668))

(declare-fun m!7636670 () Bool)

(assert (=> b!6928182 m!7636670))

(declare-fun m!7636672 () Bool)

(assert (=> b!6928182 m!7636672))

(declare-fun m!7636674 () Bool)

(assert (=> b!6928182 m!7636674))

(declare-fun m!7636676 () Bool)

(assert (=> b!6928182 m!7636676))

(assert (=> b!6928182 m!7636668))

(declare-fun m!7636678 () Bool)

(assert (=> b!6928182 m!7636678))

(declare-fun m!7636680 () Bool)

(assert (=> b!6928182 m!7636680))

(declare-fun m!7636682 () Bool)

(assert (=> b!6928182 m!7636682))

(declare-fun m!7636684 () Bool)

(assert (=> b!6928182 m!7636684))

(declare-fun m!7636686 () Bool)

(assert (=> b!6928187 m!7636686))

(declare-fun m!7636688 () Bool)

(assert (=> b!6928187 m!7636688))

(declare-fun m!7636690 () Bool)

(assert (=> b!6928187 m!7636690))

(declare-fun m!7636692 () Bool)

(assert (=> b!6928187 m!7636692))

(declare-fun m!7636694 () Bool)

(assert (=> b!6928187 m!7636694))

(assert (=> b!6928187 m!7636690))

(declare-fun m!7636696 () Bool)

(assert (=> b!6928187 m!7636696))

(assert (=> b!6928191 m!7636686))

(declare-fun m!7636698 () Bool)

(assert (=> b!6928191 m!7636698))

(declare-fun m!7636700 () Bool)

(assert (=> b!6928191 m!7636700))

(declare-fun m!7636702 () Bool)

(assert (=> b!6928199 m!7636702))

(check-sat (not b!6928198) (not b!6928196) (not start!665950) (not b!6928177) (not b!6928191) (not b!6928181) (not b!6928176) (not b!6928199) (not b!6928185) (not b!6928183) (not b!6928188) (not b!6928180) tp_is_empty!43095 (not b!6928197) (not b!6928179) (not b!6928178) (not b!6928190) (not b!6928175) (not b!6928182) (not b!6928195) (not b!6928192) (not b!6928194) (not b!6928189) (not b!6928187))
(check-sat)
(get-model)

(declare-fun b!6928215 () Bool)

(declare-fun e!4169126 () List!66688)

(assert (=> b!6928215 (= e!4169126 (Cons!66564 (h!73012 (_1!37095 lt!2472636)) (++!14978 (t!380431 (_1!37095 lt!2472636)) lt!2472613)))))

(declare-fun b!6928216 () Bool)

(declare-fun res!2825597 () Bool)

(declare-fun e!4169125 () Bool)

(assert (=> b!6928216 (=> (not res!2825597) (not e!4169125))))

(declare-fun lt!2472644 () List!66688)

(declare-fun size!40784 (List!66688) Int)

(assert (=> b!6928216 (= res!2825597 (= (size!40784 lt!2472644) (+ (size!40784 (_1!37095 lt!2472636)) (size!40784 lt!2472613))))))

(declare-fun b!6928217 () Bool)

(assert (=> b!6928217 (= e!4169125 (or (not (= lt!2472613 Nil!66564)) (= lt!2472644 (_1!37095 lt!2472636))))))

(declare-fun d!2165675 () Bool)

(assert (=> d!2165675 e!4169125))

(declare-fun res!2825598 () Bool)

(assert (=> d!2165675 (=> (not res!2825598) (not e!4169125))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13087 (List!66688) (InoxSet C!34140))

(assert (=> d!2165675 (= res!2825598 (= (content!13087 lt!2472644) ((_ map or) (content!13087 (_1!37095 lt!2472636)) (content!13087 lt!2472613))))))

(assert (=> d!2165675 (= lt!2472644 e!4169126)))

(declare-fun c!1285950 () Bool)

(assert (=> d!2165675 (= c!1285950 ((_ is Nil!66564) (_1!37095 lt!2472636)))))

(assert (=> d!2165675 (= (++!14978 (_1!37095 lt!2472636) lt!2472613) lt!2472644)))

(declare-fun b!6928214 () Bool)

(assert (=> b!6928214 (= e!4169126 lt!2472613)))

(assert (= (and d!2165675 c!1285950) b!6928214))

(assert (= (and d!2165675 (not c!1285950)) b!6928215))

(assert (= (and d!2165675 res!2825598) b!6928216))

(assert (= (and b!6928216 res!2825597) b!6928217))

(declare-fun m!7636704 () Bool)

(assert (=> b!6928215 m!7636704))

(declare-fun m!7636706 () Bool)

(assert (=> b!6928216 m!7636706))

(declare-fun m!7636708 () Bool)

(assert (=> b!6928216 m!7636708))

(declare-fun m!7636710 () Bool)

(assert (=> b!6928216 m!7636710))

(declare-fun m!7636712 () Bool)

(assert (=> d!2165675 m!7636712))

(declare-fun m!7636714 () Bool)

(assert (=> d!2165675 m!7636714))

(declare-fun m!7636716 () Bool)

(assert (=> d!2165675 m!7636716))

(assert (=> b!6928194 d!2165675))

(declare-fun d!2165677 () Bool)

(assert (=> d!2165677 (= (++!14978 (++!14978 (_1!37095 lt!2472636) (_2!37095 lt!2472636)) (_2!37095 lt!2472632)) (++!14978 (_1!37095 lt!2472636) (++!14978 (_2!37095 lt!2472636) (_2!37095 lt!2472632))))))

(declare-fun lt!2472647 () Unit!160594)

(declare-fun choose!51597 (List!66688 List!66688 List!66688) Unit!160594)

(assert (=> d!2165677 (= lt!2472647 (choose!51597 (_1!37095 lt!2472636) (_2!37095 lt!2472636) (_2!37095 lt!2472632)))))

(assert (=> d!2165677 (= (lemmaConcatAssociativity!3026 (_1!37095 lt!2472636) (_2!37095 lt!2472636) (_2!37095 lt!2472632)) lt!2472647)))

(declare-fun bs!1849676 () Bool)

(assert (= bs!1849676 d!2165677))

(assert (=> bs!1849676 m!7636646))

(declare-fun m!7636718 () Bool)

(assert (=> bs!1849676 m!7636718))

(assert (=> bs!1849676 m!7636608))

(assert (=> bs!1849676 m!7636610))

(declare-fun m!7636720 () Bool)

(assert (=> bs!1849676 m!7636720))

(assert (=> bs!1849676 m!7636646))

(assert (=> bs!1849676 m!7636608))

(assert (=> b!6928194 d!2165677))

(declare-fun d!2165679 () Bool)

(declare-fun choose!51598 (Int) Bool)

(assert (=> d!2165679 (= (Exists!3937 lambda!394248) (choose!51598 lambda!394248))))

(declare-fun bs!1849677 () Bool)

(assert (= bs!1849677 d!2165679))

(declare-fun m!7636722 () Bool)

(assert (=> bs!1849677 m!7636722))

(assert (=> b!6928182 d!2165679))

(declare-fun b!6928271 () Bool)

(declare-fun lt!2472669 () Unit!160594)

(declare-fun lt!2472670 () Unit!160594)

(assert (=> b!6928271 (= lt!2472669 lt!2472670)))

(assert (=> b!6928271 (= (++!14978 (++!14978 Nil!66564 (Cons!66564 (h!73012 s!14361) Nil!66564)) (t!380431 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2839 (List!66688 C!34140 List!66688 List!66688) Unit!160594)

(assert (=> b!6928271 (= lt!2472670 (lemmaMoveElementToOtherListKeepsConcatEq!2839 Nil!66564 (h!73012 s!14361) (t!380431 s!14361) s!14361))))

(declare-fun e!4169159 () Option!16704)

(assert (=> b!6928271 (= e!4169159 (findConcatSeparation!3118 lt!2472630 r3!135 (++!14978 Nil!66564 (Cons!66564 (h!73012 s!14361) Nil!66564)) (t!380431 s!14361) s!14361))))

(declare-fun b!6928272 () Bool)

(declare-fun res!2825634 () Bool)

(declare-fun e!4169158 () Bool)

(assert (=> b!6928272 (=> (not res!2825634) (not e!4169158))))

(declare-fun lt!2472668 () Option!16704)

(assert (=> b!6928272 (= res!2825634 (matchR!9074 lt!2472630 (_1!37095 (get!23343 lt!2472668))))))

(declare-fun b!6928273 () Bool)

(assert (=> b!6928273 (= e!4169159 None!16703)))

(declare-fun b!6928274 () Bool)

(declare-fun e!4169160 () Option!16704)

(assert (=> b!6928274 (= e!4169160 (Some!16703 (tuple2!67585 Nil!66564 s!14361)))))

(declare-fun b!6928275 () Bool)

(declare-fun e!4169157 () Bool)

(assert (=> b!6928275 (= e!4169157 (not (isDefined!13407 lt!2472668)))))

(declare-fun b!6928276 () Bool)

(assert (=> b!6928276 (= e!4169160 e!4169159)))

(declare-fun c!1285961 () Bool)

(assert (=> b!6928276 (= c!1285961 ((_ is Nil!66564) s!14361))))

(declare-fun b!6928277 () Bool)

(declare-fun res!2825636 () Bool)

(assert (=> b!6928277 (=> (not res!2825636) (not e!4169158))))

(assert (=> b!6928277 (= res!2825636 (matchR!9074 r3!135 (_2!37095 (get!23343 lt!2472668))))))

(declare-fun d!2165681 () Bool)

(assert (=> d!2165681 e!4169157))

(declare-fun res!2825632 () Bool)

(assert (=> d!2165681 (=> res!2825632 e!4169157)))

(assert (=> d!2165681 (= res!2825632 e!4169158)))

(declare-fun res!2825635 () Bool)

(assert (=> d!2165681 (=> (not res!2825635) (not e!4169158))))

(assert (=> d!2165681 (= res!2825635 (isDefined!13407 lt!2472668))))

(assert (=> d!2165681 (= lt!2472668 e!4169160)))

(declare-fun c!1285962 () Bool)

(declare-fun e!4169156 () Bool)

(assert (=> d!2165681 (= c!1285962 e!4169156)))

(declare-fun res!2825633 () Bool)

(assert (=> d!2165681 (=> (not res!2825633) (not e!4169156))))

(assert (=> d!2165681 (= res!2825633 (matchR!9074 lt!2472630 Nil!66564))))

(assert (=> d!2165681 (validRegex!8641 lt!2472630)))

(assert (=> d!2165681 (= (findConcatSeparation!3118 lt!2472630 r3!135 Nil!66564 s!14361 s!14361) lt!2472668)))

(declare-fun b!6928278 () Bool)

(assert (=> b!6928278 (= e!4169158 (= (++!14978 (_1!37095 (get!23343 lt!2472668)) (_2!37095 (get!23343 lt!2472668))) s!14361))))

(declare-fun b!6928279 () Bool)

(assert (=> b!6928279 (= e!4169156 (matchR!9074 r3!135 s!14361))))

(assert (= (and d!2165681 res!2825633) b!6928279))

(assert (= (and d!2165681 c!1285962) b!6928274))

(assert (= (and d!2165681 (not c!1285962)) b!6928276))

(assert (= (and b!6928276 c!1285961) b!6928273))

(assert (= (and b!6928276 (not c!1285961)) b!6928271))

(assert (= (and d!2165681 res!2825635) b!6928272))

(assert (= (and b!6928272 res!2825634) b!6928277))

(assert (= (and b!6928277 res!2825636) b!6928278))

(assert (= (and d!2165681 (not res!2825632)) b!6928275))

(declare-fun m!7636752 () Bool)

(assert (=> b!6928279 m!7636752))

(declare-fun m!7636754 () Bool)

(assert (=> b!6928277 m!7636754))

(declare-fun m!7636756 () Bool)

(assert (=> b!6928277 m!7636756))

(assert (=> b!6928278 m!7636754))

(declare-fun m!7636758 () Bool)

(assert (=> b!6928278 m!7636758))

(assert (=> b!6928272 m!7636754))

(declare-fun m!7636760 () Bool)

(assert (=> b!6928272 m!7636760))

(declare-fun m!7636762 () Bool)

(assert (=> b!6928271 m!7636762))

(assert (=> b!6928271 m!7636762))

(declare-fun m!7636764 () Bool)

(assert (=> b!6928271 m!7636764))

(declare-fun m!7636766 () Bool)

(assert (=> b!6928271 m!7636766))

(assert (=> b!6928271 m!7636762))

(declare-fun m!7636768 () Bool)

(assert (=> b!6928271 m!7636768))

(declare-fun m!7636770 () Bool)

(assert (=> b!6928275 m!7636770))

(assert (=> d!2165681 m!7636770))

(declare-fun m!7636772 () Bool)

(assert (=> d!2165681 m!7636772))

(declare-fun m!7636774 () Bool)

(assert (=> d!2165681 m!7636774))

(assert (=> b!6928182 d!2165681))

(declare-fun d!2165689 () Bool)

(assert (=> d!2165689 (= (matchR!9074 lt!2472630 (_1!37095 lt!2472632)) (matchRSpec!3992 lt!2472630 (_1!37095 lt!2472632)))))

(declare-fun lt!2472676 () Unit!160594)

(declare-fun choose!51599 (Regex!16935 List!66688) Unit!160594)

(assert (=> d!2165689 (= lt!2472676 (choose!51599 lt!2472630 (_1!37095 lt!2472632)))))

(assert (=> d!2165689 (validRegex!8641 lt!2472630)))

(assert (=> d!2165689 (= (mainMatchTheorem!3992 lt!2472630 (_1!37095 lt!2472632)) lt!2472676)))

(declare-fun bs!1849694 () Bool)

(assert (= bs!1849694 d!2165689))

(assert (=> bs!1849694 m!7636682))

(assert (=> bs!1849694 m!7636666))

(declare-fun m!7636788 () Bool)

(assert (=> bs!1849694 m!7636788))

(assert (=> bs!1849694 m!7636774))

(assert (=> b!6928182 d!2165689))

(declare-fun d!2165701 () Bool)

(declare-fun isEmpty!38822 (Option!16704) Bool)

(assert (=> d!2165701 (= (isDefined!13407 lt!2472628) (not (isEmpty!38822 lt!2472628)))))

(declare-fun bs!1849695 () Bool)

(assert (= bs!1849695 d!2165701))

(declare-fun m!7636790 () Bool)

(assert (=> bs!1849695 m!7636790))

(assert (=> b!6928182 d!2165701))

(declare-fun bs!1849714 () Bool)

(declare-fun d!2165703 () Bool)

(assert (= bs!1849714 (and d!2165703 b!6928179)))

(declare-fun lambda!394275 () Int)

(assert (=> bs!1849714 (= (and (= s!14361 (_1!37095 lt!2472632)) (= lt!2472630 r1!6342) (= r3!135 r2!6280)) (= lambda!394275 lambda!394249))))

(declare-fun bs!1849715 () Bool)

(assert (= bs!1849715 (and d!2165703 b!6928182)))

(assert (=> bs!1849715 (= lambda!394275 lambda!394247)))

(assert (=> bs!1849715 (not (= lambda!394275 lambda!394248))))

(declare-fun bs!1849716 () Bool)

(assert (= bs!1849716 (and d!2165703 b!6928188)))

(assert (=> bs!1849716 (= (and (= s!14361 lt!2472613) (= lt!2472630 r2!6280)) (= lambda!394275 lambda!394251))))

(declare-fun bs!1849717 () Bool)

(assert (= bs!1849717 (and d!2165703 b!6928191)))

(assert (=> bs!1849717 (not (= lambda!394275 lambda!394254))))

(declare-fun bs!1849718 () Bool)

(assert (= bs!1849718 (and d!2165703 b!6928187)))

(assert (=> bs!1849718 (= (and (= lt!2472630 r1!6342) (= r3!135 lt!2472617)) (= lambda!394275 lambda!394253))))

(assert (=> bs!1849716 (not (= lambda!394275 lambda!394252))))

(assert (=> bs!1849714 (not (= lambda!394275 lambda!394250))))

(assert (=> d!2165703 true))

(assert (=> d!2165703 true))

(assert (=> d!2165703 true))

(declare-fun lambda!394276 () Int)

(assert (=> bs!1849714 (not (= lambda!394276 lambda!394249))))

(assert (=> bs!1849715 (not (= lambda!394276 lambda!394247))))

(assert (=> bs!1849715 (= lambda!394276 lambda!394248)))

(assert (=> bs!1849716 (not (= lambda!394276 lambda!394251))))

(declare-fun bs!1849719 () Bool)

(assert (= bs!1849719 d!2165703))

(assert (=> bs!1849719 (not (= lambda!394276 lambda!394275))))

(assert (=> bs!1849717 (= (and (= lt!2472630 r1!6342) (= r3!135 lt!2472617)) (= lambda!394276 lambda!394254))))

(assert (=> bs!1849718 (not (= lambda!394276 lambda!394253))))

(assert (=> bs!1849716 (= (and (= s!14361 lt!2472613) (= lt!2472630 r2!6280)) (= lambda!394276 lambda!394252))))

(assert (=> bs!1849714 (= (and (= s!14361 (_1!37095 lt!2472632)) (= lt!2472630 r1!6342) (= r3!135 r2!6280)) (= lambda!394276 lambda!394250))))

(assert (=> d!2165703 true))

(assert (=> d!2165703 true))

(assert (=> d!2165703 true))

(assert (=> d!2165703 (= (Exists!3937 lambda!394275) (Exists!3937 lambda!394276))))

(declare-fun lt!2472682 () Unit!160594)

(declare-fun choose!51600 (Regex!16935 Regex!16935 List!66688) Unit!160594)

(assert (=> d!2165703 (= lt!2472682 (choose!51600 lt!2472630 r3!135 s!14361))))

(assert (=> d!2165703 (validRegex!8641 lt!2472630)))

(assert (=> d!2165703 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2404 lt!2472630 r3!135 s!14361) lt!2472682)))

(declare-fun m!7636822 () Bool)

(assert (=> bs!1849719 m!7636822))

(declare-fun m!7636824 () Bool)

(assert (=> bs!1849719 m!7636824))

(declare-fun m!7636826 () Bool)

(assert (=> bs!1849719 m!7636826))

(assert (=> bs!1849719 m!7636774))

(assert (=> b!6928182 d!2165703))

(declare-fun d!2165713 () Bool)

(assert (=> d!2165713 (= (get!23343 lt!2472628) (v!52975 lt!2472628))))

(assert (=> b!6928182 d!2165713))

(declare-fun bs!1849744 () Bool)

(declare-fun d!2165715 () Bool)

(assert (= bs!1849744 (and d!2165715 b!6928179)))

(declare-fun lambda!394281 () Int)

(assert (=> bs!1849744 (= (and (= s!14361 (_1!37095 lt!2472632)) (= lt!2472630 r1!6342) (= r3!135 r2!6280)) (= lambda!394281 lambda!394249))))

(declare-fun bs!1849745 () Bool)

(assert (= bs!1849745 (and d!2165715 b!6928182)))

(assert (=> bs!1849745 (= lambda!394281 lambda!394247)))

(assert (=> bs!1849745 (not (= lambda!394281 lambda!394248))))

(declare-fun bs!1849746 () Bool)

(assert (= bs!1849746 (and d!2165715 b!6928188)))

(assert (=> bs!1849746 (= (and (= s!14361 lt!2472613) (= lt!2472630 r2!6280)) (= lambda!394281 lambda!394251))))

(declare-fun bs!1849747 () Bool)

(assert (= bs!1849747 (and d!2165715 d!2165703)))

(assert (=> bs!1849747 (= lambda!394281 lambda!394275)))

(declare-fun bs!1849748 () Bool)

(assert (= bs!1849748 (and d!2165715 b!6928191)))

(assert (=> bs!1849748 (not (= lambda!394281 lambda!394254))))

(assert (=> bs!1849747 (not (= lambda!394281 lambda!394276))))

(declare-fun bs!1849749 () Bool)

(assert (= bs!1849749 (and d!2165715 b!6928187)))

(assert (=> bs!1849749 (= (and (= lt!2472630 r1!6342) (= r3!135 lt!2472617)) (= lambda!394281 lambda!394253))))

(assert (=> bs!1849746 (not (= lambda!394281 lambda!394252))))

(assert (=> bs!1849744 (not (= lambda!394281 lambda!394250))))

(assert (=> d!2165715 true))

(assert (=> d!2165715 true))

(assert (=> d!2165715 true))

(assert (=> d!2165715 (= (isDefined!13407 (findConcatSeparation!3118 lt!2472630 r3!135 Nil!66564 s!14361 s!14361)) (Exists!3937 lambda!394281))))

(declare-fun lt!2472696 () Unit!160594)

(declare-fun choose!51602 (Regex!16935 Regex!16935 List!66688) Unit!160594)

(assert (=> d!2165715 (= lt!2472696 (choose!51602 lt!2472630 r3!135 s!14361))))

(assert (=> d!2165715 (validRegex!8641 lt!2472630)))

(assert (=> d!2165715 (= (lemmaFindConcatSeparationEquivalentToExists!2880 lt!2472630 r3!135 s!14361) lt!2472696)))

(declare-fun bs!1849756 () Bool)

(assert (= bs!1849756 d!2165715))

(assert (=> bs!1849756 m!7636774))

(assert (=> bs!1849756 m!7636680))

(assert (=> bs!1849756 m!7636680))

(declare-fun m!7636894 () Bool)

(assert (=> bs!1849756 m!7636894))

(declare-fun m!7636896 () Bool)

(assert (=> bs!1849756 m!7636896))

(declare-fun m!7636898 () Bool)

(assert (=> bs!1849756 m!7636898))

(assert (=> b!6928182 d!2165715))

(declare-fun bs!1849817 () Bool)

(declare-fun b!6928510 () Bool)

(assert (= bs!1849817 (and b!6928510 b!6928179)))

(declare-fun lambda!394291 () Int)

(assert (=> bs!1849817 (not (= lambda!394291 lambda!394249))))

(declare-fun bs!1849820 () Bool)

(assert (= bs!1849820 (and b!6928510 b!6928182)))

(assert (=> bs!1849820 (not (= lambda!394291 lambda!394247))))

(assert (=> bs!1849820 (not (= lambda!394291 lambda!394248))))

(declare-fun bs!1849822 () Bool)

(assert (= bs!1849822 (and b!6928510 b!6928188)))

(assert (=> bs!1849822 (not (= lambda!394291 lambda!394251))))

(declare-fun bs!1849823 () Bool)

(assert (= bs!1849823 (and b!6928510 d!2165703)))

(assert (=> bs!1849823 (not (= lambda!394291 lambda!394275))))

(declare-fun bs!1849824 () Bool)

(assert (= bs!1849824 (and b!6928510 b!6928191)))

(assert (=> bs!1849824 (not (= lambda!394291 lambda!394254))))

(declare-fun bs!1849825 () Bool)

(assert (= bs!1849825 (and b!6928510 b!6928187)))

(assert (=> bs!1849825 (not (= lambda!394291 lambda!394253))))

(assert (=> bs!1849823 (not (= lambda!394291 lambda!394276))))

(declare-fun bs!1849826 () Bool)

(assert (= bs!1849826 (and b!6928510 d!2165715)))

(assert (=> bs!1849826 (not (= lambda!394291 lambda!394281))))

(assert (=> bs!1849822 (not (= lambda!394291 lambda!394252))))

(assert (=> bs!1849817 (not (= lambda!394291 lambda!394250))))

(assert (=> b!6928510 true))

(assert (=> b!6928510 true))

(declare-fun bs!1849828 () Bool)

(declare-fun b!6928520 () Bool)

(assert (= bs!1849828 (and b!6928520 b!6928179)))

(declare-fun lambda!394292 () Int)

(assert (=> bs!1849828 (not (= lambda!394292 lambda!394249))))

(declare-fun bs!1849829 () Bool)

(assert (= bs!1849829 (and b!6928520 b!6928182)))

(assert (=> bs!1849829 (not (= lambda!394292 lambda!394247))))

(declare-fun bs!1849830 () Bool)

(assert (= bs!1849830 (and b!6928520 b!6928510)))

(assert (=> bs!1849830 (not (= lambda!394292 lambda!394291))))

(assert (=> bs!1849829 (= (and (= (_1!37095 lt!2472632) s!14361) (= (regOne!34382 lt!2472630) lt!2472630) (= (regTwo!34382 lt!2472630) r3!135)) (= lambda!394292 lambda!394248))))

(declare-fun bs!1849833 () Bool)

(assert (= bs!1849833 (and b!6928520 b!6928188)))

(assert (=> bs!1849833 (not (= lambda!394292 lambda!394251))))

(declare-fun bs!1849835 () Bool)

(assert (= bs!1849835 (and b!6928520 d!2165703)))

(assert (=> bs!1849835 (not (= lambda!394292 lambda!394275))))

(declare-fun bs!1849837 () Bool)

(assert (= bs!1849837 (and b!6928520 b!6928191)))

(assert (=> bs!1849837 (= (and (= (_1!37095 lt!2472632) s!14361) (= (regOne!34382 lt!2472630) r1!6342) (= (regTwo!34382 lt!2472630) lt!2472617)) (= lambda!394292 lambda!394254))))

(declare-fun bs!1849839 () Bool)

(assert (= bs!1849839 (and b!6928520 b!6928187)))

(assert (=> bs!1849839 (not (= lambda!394292 lambda!394253))))

(assert (=> bs!1849835 (= (and (= (_1!37095 lt!2472632) s!14361) (= (regOne!34382 lt!2472630) lt!2472630) (= (regTwo!34382 lt!2472630) r3!135)) (= lambda!394292 lambda!394276))))

(declare-fun bs!1849842 () Bool)

(assert (= bs!1849842 (and b!6928520 d!2165715)))

(assert (=> bs!1849842 (not (= lambda!394292 lambda!394281))))

(assert (=> bs!1849833 (= (and (= (_1!37095 lt!2472632) lt!2472613) (= (regOne!34382 lt!2472630) r2!6280) (= (regTwo!34382 lt!2472630) r3!135)) (= lambda!394292 lambda!394252))))

(assert (=> bs!1849828 (= (and (= (regOne!34382 lt!2472630) r1!6342) (= (regTwo!34382 lt!2472630) r2!6280)) (= lambda!394292 lambda!394250))))

(assert (=> b!6928520 true))

(assert (=> b!6928520 true))

(declare-fun e!4169298 () Bool)

(declare-fun call!629623 () Bool)

(assert (=> b!6928510 (= e!4169298 call!629623)))

(declare-fun b!6928511 () Bool)

(declare-fun e!4169296 () Bool)

(declare-fun e!4169297 () Bool)

(assert (=> b!6928511 (= e!4169296 e!4169297)))

(declare-fun res!2825761 () Bool)

(assert (=> b!6928511 (= res!2825761 (not ((_ is EmptyLang!16935) lt!2472630)))))

(assert (=> b!6928511 (=> (not res!2825761) (not e!4169297))))

(declare-fun b!6928512 () Bool)

(declare-fun e!4169294 () Bool)

(assert (=> b!6928512 (= e!4169294 (matchRSpec!3992 (regTwo!34383 lt!2472630) (_1!37095 lt!2472632)))))

(declare-fun b!6928514 () Bool)

(declare-fun call!629624 () Bool)

(assert (=> b!6928514 (= e!4169296 call!629624)))

(declare-fun b!6928515 () Bool)

(declare-fun c!1286020 () Bool)

(assert (=> b!6928515 (= c!1286020 ((_ is ElementMatch!16935) lt!2472630))))

(declare-fun e!4169299 () Bool)

(assert (=> b!6928515 (= e!4169297 e!4169299)))

(declare-fun b!6928516 () Bool)

(declare-fun e!4169293 () Bool)

(assert (=> b!6928516 (= e!4169293 e!4169294)))

(declare-fun res!2825760 () Bool)

(assert (=> b!6928516 (= res!2825760 (matchRSpec!3992 (regOne!34383 lt!2472630) (_1!37095 lt!2472632)))))

(assert (=> b!6928516 (=> res!2825760 e!4169294)))

(declare-fun b!6928517 () Bool)

(declare-fun res!2825759 () Bool)

(assert (=> b!6928517 (=> res!2825759 e!4169298)))

(assert (=> b!6928517 (= res!2825759 call!629624)))

(declare-fun e!4169295 () Bool)

(assert (=> b!6928517 (= e!4169295 e!4169298)))

(declare-fun bm!629618 () Bool)

(declare-fun isEmpty!38823 (List!66688) Bool)

(assert (=> bm!629618 (= call!629624 (isEmpty!38823 (_1!37095 lt!2472632)))))

(declare-fun b!6928513 () Bool)

(assert (=> b!6928513 (= e!4169299 (= (_1!37095 lt!2472632) (Cons!66564 (c!1285947 lt!2472630) Nil!66564)))))

(declare-fun d!2165737 () Bool)

(declare-fun c!1286018 () Bool)

(assert (=> d!2165737 (= c!1286018 ((_ is EmptyExpr!16935) lt!2472630))))

(assert (=> d!2165737 (= (matchRSpec!3992 lt!2472630 (_1!37095 lt!2472632)) e!4169296)))

(declare-fun b!6928518 () Bool)

(declare-fun c!1286019 () Bool)

(assert (=> b!6928518 (= c!1286019 ((_ is Union!16935) lt!2472630))))

(assert (=> b!6928518 (= e!4169299 e!4169293)))

(declare-fun b!6928519 () Bool)

(assert (=> b!6928519 (= e!4169293 e!4169295)))

(declare-fun c!1286017 () Bool)

(assert (=> b!6928519 (= c!1286017 ((_ is Star!16935) lt!2472630))))

(assert (=> b!6928520 (= e!4169295 call!629623)))

(declare-fun bm!629619 () Bool)

(assert (=> bm!629619 (= call!629623 (Exists!3937 (ite c!1286017 lambda!394291 lambda!394292)))))

(assert (= (and d!2165737 c!1286018) b!6928514))

(assert (= (and d!2165737 (not c!1286018)) b!6928511))

(assert (= (and b!6928511 res!2825761) b!6928515))

(assert (= (and b!6928515 c!1286020) b!6928513))

(assert (= (and b!6928515 (not c!1286020)) b!6928518))

(assert (= (and b!6928518 c!1286019) b!6928516))

(assert (= (and b!6928518 (not c!1286019)) b!6928519))

(assert (= (and b!6928516 (not res!2825760)) b!6928512))

(assert (= (and b!6928519 c!1286017) b!6928517))

(assert (= (and b!6928519 (not c!1286017)) b!6928520))

(assert (= (and b!6928517 (not res!2825759)) b!6928510))

(assert (= (or b!6928510 b!6928520) bm!629619))

(assert (= (or b!6928514 b!6928517) bm!629618))

(declare-fun m!7636972 () Bool)

(assert (=> b!6928512 m!7636972))

(declare-fun m!7636974 () Bool)

(assert (=> b!6928516 m!7636974))

(declare-fun m!7636976 () Bool)

(assert (=> bm!629618 m!7636976))

(declare-fun m!7636978 () Bool)

(assert (=> bm!629619 m!7636978))

(assert (=> b!6928182 d!2165737))

(declare-fun d!2165761 () Bool)

(assert (=> d!2165761 (= (Exists!3937 lambda!394247) (choose!51598 lambda!394247))))

(declare-fun bs!1849849 () Bool)

(assert (= bs!1849849 d!2165761))

(declare-fun m!7636980 () Bool)

(assert (=> bs!1849849 m!7636980))

(assert (=> b!6928182 d!2165761))

(declare-fun b!6928622 () Bool)

(declare-fun e!4169364 () Bool)

(declare-fun head!13888 (List!66688) C!34140)

(assert (=> b!6928622 (= e!4169364 (not (= (head!13888 (_1!37095 lt!2472632)) (c!1285947 lt!2472630))))))

(declare-fun b!6928623 () Bool)

(declare-fun e!4169363 () Bool)

(assert (=> b!6928623 (= e!4169363 (= (head!13888 (_1!37095 lt!2472632)) (c!1285947 lt!2472630)))))

(declare-fun b!6928624 () Bool)

(declare-fun res!2825824 () Bool)

(assert (=> b!6928624 (=> (not res!2825824) (not e!4169363))))

(declare-fun tail!12940 (List!66688) List!66688)

(assert (=> b!6928624 (= res!2825824 (isEmpty!38823 (tail!12940 (_1!37095 lt!2472632))))))

(declare-fun b!6928625 () Bool)

(declare-fun e!4169360 () Bool)

(declare-fun e!4169361 () Bool)

(assert (=> b!6928625 (= e!4169360 e!4169361)))

(declare-fun res!2825823 () Bool)

(assert (=> b!6928625 (=> (not res!2825823) (not e!4169361))))

(declare-fun lt!2472716 () Bool)

(assert (=> b!6928625 (= res!2825823 (not lt!2472716))))

(declare-fun b!6928626 () Bool)

(assert (=> b!6928626 (= e!4169361 e!4169364)))

(declare-fun res!2825821 () Bool)

(assert (=> b!6928626 (=> res!2825821 e!4169364)))

(declare-fun call!629639 () Bool)

(assert (=> b!6928626 (= res!2825821 call!629639)))

(declare-fun bm!629634 () Bool)

(assert (=> bm!629634 (= call!629639 (isEmpty!38823 (_1!37095 lt!2472632)))))

(declare-fun b!6928627 () Bool)

(declare-fun e!4169358 () Bool)

(assert (=> b!6928627 (= e!4169358 (not lt!2472716))))

(declare-fun b!6928628 () Bool)

(declare-fun res!2825826 () Bool)

(assert (=> b!6928628 (=> res!2825826 e!4169360)))

(assert (=> b!6928628 (= res!2825826 e!4169363)))

(declare-fun res!2825819 () Bool)

(assert (=> b!6928628 (=> (not res!2825819) (not e!4169363))))

(assert (=> b!6928628 (= res!2825819 lt!2472716)))

(declare-fun b!6928629 () Bool)

(declare-fun res!2825825 () Bool)

(assert (=> b!6928629 (=> (not res!2825825) (not e!4169363))))

(assert (=> b!6928629 (= res!2825825 (not call!629639))))

(declare-fun b!6928630 () Bool)

(declare-fun e!4169362 () Bool)

(declare-fun derivativeStep!5435 (Regex!16935 C!34140) Regex!16935)

(assert (=> b!6928630 (= e!4169362 (matchR!9074 (derivativeStep!5435 lt!2472630 (head!13888 (_1!37095 lt!2472632))) (tail!12940 (_1!37095 lt!2472632))))))

(declare-fun b!6928631 () Bool)

(declare-fun e!4169359 () Bool)

(assert (=> b!6928631 (= e!4169359 (= lt!2472716 call!629639))))

(declare-fun b!6928632 () Bool)

(assert (=> b!6928632 (= e!4169359 e!4169358)))

(declare-fun c!1286043 () Bool)

(assert (=> b!6928632 (= c!1286043 ((_ is EmptyLang!16935) lt!2472630))))

(declare-fun b!6928633 () Bool)

(declare-fun res!2825822 () Bool)

(assert (=> b!6928633 (=> res!2825822 e!4169360)))

(assert (=> b!6928633 (= res!2825822 (not ((_ is ElementMatch!16935) lt!2472630)))))

(assert (=> b!6928633 (= e!4169358 e!4169360)))

(declare-fun d!2165763 () Bool)

(assert (=> d!2165763 e!4169359))

(declare-fun c!1286045 () Bool)

(assert (=> d!2165763 (= c!1286045 ((_ is EmptyExpr!16935) lt!2472630))))

(assert (=> d!2165763 (= lt!2472716 e!4169362)))

(declare-fun c!1286044 () Bool)

(assert (=> d!2165763 (= c!1286044 (isEmpty!38823 (_1!37095 lt!2472632)))))

(assert (=> d!2165763 (validRegex!8641 lt!2472630)))

(assert (=> d!2165763 (= (matchR!9074 lt!2472630 (_1!37095 lt!2472632)) lt!2472716)))

(declare-fun b!6928634 () Bool)

(declare-fun nullable!6760 (Regex!16935) Bool)

(assert (=> b!6928634 (= e!4169362 (nullable!6760 lt!2472630))))

(declare-fun b!6928635 () Bool)

(declare-fun res!2825820 () Bool)

(assert (=> b!6928635 (=> res!2825820 e!4169364)))

(assert (=> b!6928635 (= res!2825820 (not (isEmpty!38823 (tail!12940 (_1!37095 lt!2472632)))))))

(assert (= (and d!2165763 c!1286044) b!6928634))

(assert (= (and d!2165763 (not c!1286044)) b!6928630))

(assert (= (and d!2165763 c!1286045) b!6928631))

(assert (= (and d!2165763 (not c!1286045)) b!6928632))

(assert (= (and b!6928632 c!1286043) b!6928627))

(assert (= (and b!6928632 (not c!1286043)) b!6928633))

(assert (= (and b!6928633 (not res!2825822)) b!6928628))

(assert (= (and b!6928628 res!2825819) b!6928629))

(assert (= (and b!6928629 res!2825825) b!6928624))

(assert (= (and b!6928624 res!2825824) b!6928623))

(assert (= (and b!6928628 (not res!2825826)) b!6928625))

(assert (= (and b!6928625 res!2825823) b!6928626))

(assert (= (and b!6928626 (not res!2825821)) b!6928635))

(assert (= (and b!6928635 (not res!2825820)) b!6928622))

(assert (= (or b!6928631 b!6928626 b!6928629) bm!629634))

(declare-fun m!7637050 () Bool)

(assert (=> b!6928624 m!7637050))

(assert (=> b!6928624 m!7637050))

(declare-fun m!7637052 () Bool)

(assert (=> b!6928624 m!7637052))

(assert (=> b!6928635 m!7637050))

(assert (=> b!6928635 m!7637050))

(assert (=> b!6928635 m!7637052))

(assert (=> d!2165763 m!7636976))

(assert (=> d!2165763 m!7636774))

(declare-fun m!7637054 () Bool)

(assert (=> b!6928623 m!7637054))

(assert (=> b!6928630 m!7637054))

(assert (=> b!6928630 m!7637054))

(declare-fun m!7637056 () Bool)

(assert (=> b!6928630 m!7637056))

(assert (=> b!6928630 m!7637050))

(assert (=> b!6928630 m!7637056))

(assert (=> b!6928630 m!7637050))

(declare-fun m!7637058 () Bool)

(assert (=> b!6928630 m!7637058))

(assert (=> bm!629634 m!7636976))

(declare-fun m!7637060 () Bool)

(assert (=> b!6928634 m!7637060))

(assert (=> b!6928622 m!7637054))

(assert (=> b!6928182 d!2165763))

(declare-fun b!6928665 () Bool)

(declare-fun e!4169386 () Bool)

(declare-fun e!4169387 () Bool)

(assert (=> b!6928665 (= e!4169386 e!4169387)))

(declare-fun res!2825843 () Bool)

(assert (=> b!6928665 (=> (not res!2825843) (not e!4169387))))

(declare-fun call!629650 () Bool)

(assert (=> b!6928665 (= res!2825843 call!629650)))

(declare-fun b!6928666 () Bool)

(declare-fun res!2825842 () Bool)

(assert (=> b!6928666 (=> res!2825842 e!4169386)))

(assert (=> b!6928666 (= res!2825842 (not ((_ is Concat!25780) r1!6342)))))

(declare-fun e!4169391 () Bool)

(assert (=> b!6928666 (= e!4169391 e!4169386)))

(declare-fun d!2165781 () Bool)

(declare-fun res!2825841 () Bool)

(declare-fun e!4169388 () Bool)

(assert (=> d!2165781 (=> res!2825841 e!4169388)))

(assert (=> d!2165781 (= res!2825841 ((_ is ElementMatch!16935) r1!6342))))

(assert (=> d!2165781 (= (validRegex!8641 r1!6342) e!4169388)))

(declare-fun b!6928667 () Bool)

(declare-fun e!4169392 () Bool)

(declare-fun call!629649 () Bool)

(assert (=> b!6928667 (= e!4169392 call!629649)))

(declare-fun b!6928668 () Bool)

(declare-fun call!629648 () Bool)

(assert (=> b!6928668 (= e!4169387 call!629648)))

(declare-fun c!1286055 () Bool)

(declare-fun c!1286054 () Bool)

(declare-fun bm!629643 () Bool)

(assert (=> bm!629643 (= call!629649 (validRegex!8641 (ite c!1286055 (reg!17264 r1!6342) (ite c!1286054 (regOne!34383 r1!6342) (regTwo!34382 r1!6342)))))))

(declare-fun b!6928669 () Bool)

(declare-fun e!4169389 () Bool)

(assert (=> b!6928669 (= e!4169389 e!4169392)))

(declare-fun res!2825840 () Bool)

(assert (=> b!6928669 (= res!2825840 (not (nullable!6760 (reg!17264 r1!6342))))))

(assert (=> b!6928669 (=> (not res!2825840) (not e!4169392))))

(declare-fun bm!629644 () Bool)

(assert (=> bm!629644 (= call!629650 (validRegex!8641 (ite c!1286054 (regTwo!34383 r1!6342) (regOne!34382 r1!6342))))))

(declare-fun b!6928670 () Bool)

(assert (=> b!6928670 (= e!4169389 e!4169391)))

(assert (=> b!6928670 (= c!1286054 ((_ is Union!16935) r1!6342))))

(declare-fun b!6928671 () Bool)

(declare-fun e!4169390 () Bool)

(assert (=> b!6928671 (= e!4169390 call!629650)))

(declare-fun b!6928672 () Bool)

(assert (=> b!6928672 (= e!4169388 e!4169389)))

(assert (=> b!6928672 (= c!1286055 ((_ is Star!16935) r1!6342))))

(declare-fun b!6928673 () Bool)

(declare-fun res!2825844 () Bool)

(assert (=> b!6928673 (=> (not res!2825844) (not e!4169390))))

(assert (=> b!6928673 (= res!2825844 call!629648)))

(assert (=> b!6928673 (= e!4169391 e!4169390)))

(declare-fun bm!629645 () Bool)

(assert (=> bm!629645 (= call!629648 call!629649)))

(assert (= (and d!2165781 (not res!2825841)) b!6928672))

(assert (= (and b!6928672 c!1286055) b!6928669))

(assert (= (and b!6928672 (not c!1286055)) b!6928670))

(assert (= (and b!6928669 res!2825840) b!6928667))

(assert (= (and b!6928670 c!1286054) b!6928673))

(assert (= (and b!6928670 (not c!1286054)) b!6928666))

(assert (= (and b!6928673 res!2825844) b!6928671))

(assert (= (and b!6928666 (not res!2825842)) b!6928665))

(assert (= (and b!6928665 res!2825843) b!6928668))

(assert (= (or b!6928673 b!6928668) bm!629645))

(assert (= (or b!6928671 b!6928665) bm!629644))

(assert (= (or b!6928667 bm!629645) bm!629643))

(declare-fun m!7637062 () Bool)

(assert (=> bm!629643 m!7637062))

(declare-fun m!7637064 () Bool)

(assert (=> b!6928669 m!7637064))

(declare-fun m!7637070 () Bool)

(assert (=> bm!629644 m!7637070))

(assert (=> start!665950 d!2165781))

(declare-fun b!6928674 () Bool)

(declare-fun e!4169393 () Bool)

(declare-fun e!4169394 () Bool)

(assert (=> b!6928674 (= e!4169393 e!4169394)))

(declare-fun res!2825848 () Bool)

(assert (=> b!6928674 (=> (not res!2825848) (not e!4169394))))

(declare-fun call!629653 () Bool)

(assert (=> b!6928674 (= res!2825848 call!629653)))

(declare-fun b!6928675 () Bool)

(declare-fun res!2825847 () Bool)

(assert (=> b!6928675 (=> res!2825847 e!4169393)))

(assert (=> b!6928675 (= res!2825847 (not ((_ is Concat!25780) r3!135)))))

(declare-fun e!4169398 () Bool)

(assert (=> b!6928675 (= e!4169398 e!4169393)))

(declare-fun d!2165783 () Bool)

(declare-fun res!2825846 () Bool)

(declare-fun e!4169395 () Bool)

(assert (=> d!2165783 (=> res!2825846 e!4169395)))

(assert (=> d!2165783 (= res!2825846 ((_ is ElementMatch!16935) r3!135))))

(assert (=> d!2165783 (= (validRegex!8641 r3!135) e!4169395)))

(declare-fun b!6928676 () Bool)

(declare-fun e!4169399 () Bool)

(declare-fun call!629652 () Bool)

(assert (=> b!6928676 (= e!4169399 call!629652)))

(declare-fun b!6928677 () Bool)

(declare-fun call!629651 () Bool)

(assert (=> b!6928677 (= e!4169394 call!629651)))

(declare-fun c!1286057 () Bool)

(declare-fun bm!629646 () Bool)

(declare-fun c!1286056 () Bool)

(assert (=> bm!629646 (= call!629652 (validRegex!8641 (ite c!1286057 (reg!17264 r3!135) (ite c!1286056 (regOne!34383 r3!135) (regTwo!34382 r3!135)))))))

(declare-fun b!6928678 () Bool)

(declare-fun e!4169396 () Bool)

(assert (=> b!6928678 (= e!4169396 e!4169399)))

(declare-fun res!2825845 () Bool)

(assert (=> b!6928678 (= res!2825845 (not (nullable!6760 (reg!17264 r3!135))))))

(assert (=> b!6928678 (=> (not res!2825845) (not e!4169399))))

(declare-fun bm!629647 () Bool)

(assert (=> bm!629647 (= call!629653 (validRegex!8641 (ite c!1286056 (regTwo!34383 r3!135) (regOne!34382 r3!135))))))

(declare-fun b!6928679 () Bool)

(assert (=> b!6928679 (= e!4169396 e!4169398)))

(assert (=> b!6928679 (= c!1286056 ((_ is Union!16935) r3!135))))

(declare-fun b!6928680 () Bool)

(declare-fun e!4169397 () Bool)

(assert (=> b!6928680 (= e!4169397 call!629653)))

(declare-fun b!6928681 () Bool)

(assert (=> b!6928681 (= e!4169395 e!4169396)))

(assert (=> b!6928681 (= c!1286057 ((_ is Star!16935) r3!135))))

(declare-fun b!6928682 () Bool)

(declare-fun res!2825849 () Bool)

(assert (=> b!6928682 (=> (not res!2825849) (not e!4169397))))

(assert (=> b!6928682 (= res!2825849 call!629651)))

(assert (=> b!6928682 (= e!4169398 e!4169397)))

(declare-fun bm!629648 () Bool)

(assert (=> bm!629648 (= call!629651 call!629652)))

(assert (= (and d!2165783 (not res!2825846)) b!6928681))

(assert (= (and b!6928681 c!1286057) b!6928678))

(assert (= (and b!6928681 (not c!1286057)) b!6928679))

(assert (= (and b!6928678 res!2825845) b!6928676))

(assert (= (and b!6928679 c!1286056) b!6928682))

(assert (= (and b!6928679 (not c!1286056)) b!6928675))

(assert (= (and b!6928682 res!2825849) b!6928680))

(assert (= (and b!6928675 (not res!2825847)) b!6928674))

(assert (= (and b!6928674 res!2825848) b!6928677))

(assert (= (or b!6928682 b!6928677) bm!629648))

(assert (= (or b!6928680 b!6928674) bm!629647))

(assert (= (or b!6928676 bm!629648) bm!629646))

(declare-fun m!7637076 () Bool)

(assert (=> bm!629646 m!7637076))

(declare-fun m!7637078 () Bool)

(assert (=> b!6928678 m!7637078))

(declare-fun m!7637080 () Bool)

(assert (=> bm!629647 m!7637080))

(assert (=> b!6928185 d!2165783))

(declare-fun bs!1849891 () Bool)

(declare-fun b!6928697 () Bool)

(assert (= bs!1849891 (and b!6928697 b!6928179)))

(declare-fun lambda!394297 () Int)

(assert (=> bs!1849891 (not (= lambda!394297 lambda!394249))))

(declare-fun bs!1849892 () Bool)

(assert (= bs!1849892 (and b!6928697 b!6928182)))

(assert (=> bs!1849892 (not (= lambda!394297 lambda!394247))))

(declare-fun bs!1849893 () Bool)

(assert (= bs!1849893 (and b!6928697 b!6928510)))

(assert (=> bs!1849893 (= (and (= lt!2472613 (_1!37095 lt!2472632)) (= (reg!17264 lt!2472617) (reg!17264 lt!2472630)) (= lt!2472617 lt!2472630)) (= lambda!394297 lambda!394291))))

(assert (=> bs!1849892 (not (= lambda!394297 lambda!394248))))

(declare-fun bs!1849894 () Bool)

(assert (= bs!1849894 (and b!6928697 b!6928188)))

(assert (=> bs!1849894 (not (= lambda!394297 lambda!394251))))

(declare-fun bs!1849895 () Bool)

(assert (= bs!1849895 (and b!6928697 d!2165703)))

(assert (=> bs!1849895 (not (= lambda!394297 lambda!394275))))

(declare-fun bs!1849897 () Bool)

(assert (= bs!1849897 (and b!6928697 b!6928191)))

(assert (=> bs!1849897 (not (= lambda!394297 lambda!394254))))

(declare-fun bs!1849899 () Bool)

(assert (= bs!1849899 (and b!6928697 b!6928520)))

(assert (=> bs!1849899 (not (= lambda!394297 lambda!394292))))

(declare-fun bs!1849901 () Bool)

(assert (= bs!1849901 (and b!6928697 b!6928187)))

(assert (=> bs!1849901 (not (= lambda!394297 lambda!394253))))

(assert (=> bs!1849895 (not (= lambda!394297 lambda!394276))))

(declare-fun bs!1849904 () Bool)

(assert (= bs!1849904 (and b!6928697 d!2165715)))

(assert (=> bs!1849904 (not (= lambda!394297 lambda!394281))))

(assert (=> bs!1849894 (not (= lambda!394297 lambda!394252))))

(assert (=> bs!1849891 (not (= lambda!394297 lambda!394250))))

(assert (=> b!6928697 true))

(assert (=> b!6928697 true))

(declare-fun bs!1849911 () Bool)

(declare-fun b!6928707 () Bool)

(assert (= bs!1849911 (and b!6928707 b!6928179)))

(declare-fun lambda!394299 () Int)

(assert (=> bs!1849911 (not (= lambda!394299 lambda!394249))))

(declare-fun bs!1849913 () Bool)

(assert (= bs!1849913 (and b!6928707 b!6928182)))

(assert (=> bs!1849913 (not (= lambda!394299 lambda!394247))))

(assert (=> bs!1849913 (= (and (= lt!2472613 s!14361) (= (regOne!34382 lt!2472617) lt!2472630) (= (regTwo!34382 lt!2472617) r3!135)) (= lambda!394299 lambda!394248))))

(declare-fun bs!1849916 () Bool)

(assert (= bs!1849916 (and b!6928707 b!6928188)))

(assert (=> bs!1849916 (not (= lambda!394299 lambda!394251))))

(declare-fun bs!1849917 () Bool)

(assert (= bs!1849917 (and b!6928707 d!2165703)))

(assert (=> bs!1849917 (not (= lambda!394299 lambda!394275))))

(declare-fun bs!1849918 () Bool)

(assert (= bs!1849918 (and b!6928707 b!6928191)))

(assert (=> bs!1849918 (= (and (= lt!2472613 s!14361) (= (regOne!34382 lt!2472617) r1!6342) (= (regTwo!34382 lt!2472617) lt!2472617)) (= lambda!394299 lambda!394254))))

(declare-fun bs!1849920 () Bool)

(assert (= bs!1849920 (and b!6928707 b!6928520)))

(assert (=> bs!1849920 (= (and (= lt!2472613 (_1!37095 lt!2472632)) (= (regOne!34382 lt!2472617) (regOne!34382 lt!2472630)) (= (regTwo!34382 lt!2472617) (regTwo!34382 lt!2472630))) (= lambda!394299 lambda!394292))))

(declare-fun bs!1849922 () Bool)

(assert (= bs!1849922 (and b!6928707 b!6928187)))

(assert (=> bs!1849922 (not (= lambda!394299 lambda!394253))))

(declare-fun bs!1849923 () Bool)

(assert (= bs!1849923 (and b!6928707 b!6928697)))

(assert (=> bs!1849923 (not (= lambda!394299 lambda!394297))))

(declare-fun bs!1849924 () Bool)

(assert (= bs!1849924 (and b!6928707 b!6928510)))

(assert (=> bs!1849924 (not (= lambda!394299 lambda!394291))))

(assert (=> bs!1849917 (= (and (= lt!2472613 s!14361) (= (regOne!34382 lt!2472617) lt!2472630) (= (regTwo!34382 lt!2472617) r3!135)) (= lambda!394299 lambda!394276))))

(declare-fun bs!1849927 () Bool)

(assert (= bs!1849927 (and b!6928707 d!2165715)))

(assert (=> bs!1849927 (not (= lambda!394299 lambda!394281))))

(assert (=> bs!1849916 (= (and (= (regOne!34382 lt!2472617) r2!6280) (= (regTwo!34382 lt!2472617) r3!135)) (= lambda!394299 lambda!394252))))

(assert (=> bs!1849911 (= (and (= lt!2472613 (_1!37095 lt!2472632)) (= (regOne!34382 lt!2472617) r1!6342) (= (regTwo!34382 lt!2472617) r2!6280)) (= lambda!394299 lambda!394250))))

(assert (=> b!6928707 true))

(assert (=> b!6928707 true))

(declare-fun e!4169412 () Bool)

(declare-fun call!629655 () Bool)

(assert (=> b!6928697 (= e!4169412 call!629655)))

(declare-fun b!6928698 () Bool)

(declare-fun e!4169410 () Bool)

(declare-fun e!4169411 () Bool)

(assert (=> b!6928698 (= e!4169410 e!4169411)))

(declare-fun res!2825860 () Bool)

(assert (=> b!6928698 (= res!2825860 (not ((_ is EmptyLang!16935) lt!2472617)))))

(assert (=> b!6928698 (=> (not res!2825860) (not e!4169411))))

(declare-fun b!6928699 () Bool)

(declare-fun e!4169408 () Bool)

(assert (=> b!6928699 (= e!4169408 (matchRSpec!3992 (regTwo!34383 lt!2472617) lt!2472613))))

(declare-fun b!6928701 () Bool)

(declare-fun call!629656 () Bool)

(assert (=> b!6928701 (= e!4169410 call!629656)))

(declare-fun b!6928702 () Bool)

(declare-fun c!1286064 () Bool)

(assert (=> b!6928702 (= c!1286064 ((_ is ElementMatch!16935) lt!2472617))))

(declare-fun e!4169413 () Bool)

(assert (=> b!6928702 (= e!4169411 e!4169413)))

(declare-fun b!6928703 () Bool)

(declare-fun e!4169407 () Bool)

(assert (=> b!6928703 (= e!4169407 e!4169408)))

(declare-fun res!2825859 () Bool)

(assert (=> b!6928703 (= res!2825859 (matchRSpec!3992 (regOne!34383 lt!2472617) lt!2472613))))

(assert (=> b!6928703 (=> res!2825859 e!4169408)))

(declare-fun b!6928704 () Bool)

(declare-fun res!2825858 () Bool)

(assert (=> b!6928704 (=> res!2825858 e!4169412)))

(assert (=> b!6928704 (= res!2825858 call!629656)))

(declare-fun e!4169409 () Bool)

(assert (=> b!6928704 (= e!4169409 e!4169412)))

(declare-fun bm!629650 () Bool)

(assert (=> bm!629650 (= call!629656 (isEmpty!38823 lt!2472613))))

(declare-fun b!6928700 () Bool)

(assert (=> b!6928700 (= e!4169413 (= lt!2472613 (Cons!66564 (c!1285947 lt!2472617) Nil!66564)))))

(declare-fun d!2165789 () Bool)

(declare-fun c!1286062 () Bool)

(assert (=> d!2165789 (= c!1286062 ((_ is EmptyExpr!16935) lt!2472617))))

(assert (=> d!2165789 (= (matchRSpec!3992 lt!2472617 lt!2472613) e!4169410)))

(declare-fun b!6928705 () Bool)

(declare-fun c!1286063 () Bool)

(assert (=> b!6928705 (= c!1286063 ((_ is Union!16935) lt!2472617))))

(assert (=> b!6928705 (= e!4169413 e!4169407)))

(declare-fun b!6928706 () Bool)

(assert (=> b!6928706 (= e!4169407 e!4169409)))

(declare-fun c!1286061 () Bool)

(assert (=> b!6928706 (= c!1286061 ((_ is Star!16935) lt!2472617))))

(assert (=> b!6928707 (= e!4169409 call!629655)))

(declare-fun bm!629651 () Bool)

(assert (=> bm!629651 (= call!629655 (Exists!3937 (ite c!1286061 lambda!394297 lambda!394299)))))

(assert (= (and d!2165789 c!1286062) b!6928701))

(assert (= (and d!2165789 (not c!1286062)) b!6928698))

(assert (= (and b!6928698 res!2825860) b!6928702))

(assert (= (and b!6928702 c!1286064) b!6928700))

(assert (= (and b!6928702 (not c!1286064)) b!6928705))

(assert (= (and b!6928705 c!1286063) b!6928703))

(assert (= (and b!6928705 (not c!1286063)) b!6928706))

(assert (= (and b!6928703 (not res!2825859)) b!6928699))

(assert (= (and b!6928706 c!1286061) b!6928704))

(assert (= (and b!6928706 (not c!1286061)) b!6928707))

(assert (= (and b!6928704 (not res!2825858)) b!6928697))

(assert (= (or b!6928697 b!6928707) bm!629651))

(assert (= (or b!6928701 b!6928704) bm!629650))

(declare-fun m!7637090 () Bool)

(assert (=> b!6928699 m!7637090))

(declare-fun m!7637092 () Bool)

(assert (=> b!6928703 m!7637092))

(declare-fun m!7637094 () Bool)

(assert (=> bm!629650 m!7637094))

(declare-fun m!7637096 () Bool)

(assert (=> bm!629651 m!7637096))

(assert (=> b!6928188 d!2165789))

(declare-fun bs!1849936 () Bool)

(declare-fun d!2165793 () Bool)

(assert (= bs!1849936 (and d!2165793 b!6928179)))

(declare-fun lambda!394301 () Int)

(assert (=> bs!1849936 (= (and (= lt!2472613 (_1!37095 lt!2472632)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394301 lambda!394249))))

(declare-fun bs!1849938 () Bool)

(assert (= bs!1849938 (and d!2165793 b!6928182)))

(assert (=> bs!1849938 (= (and (= lt!2472613 s!14361) (= r2!6280 lt!2472630)) (= lambda!394301 lambda!394247))))

(assert (=> bs!1849938 (not (= lambda!394301 lambda!394248))))

(declare-fun bs!1849941 () Bool)

(assert (= bs!1849941 (and d!2165793 b!6928188)))

(assert (=> bs!1849941 (= lambda!394301 lambda!394251)))

(declare-fun bs!1849942 () Bool)

(assert (= bs!1849942 (and d!2165793 d!2165703)))

(assert (=> bs!1849942 (= (and (= lt!2472613 s!14361) (= r2!6280 lt!2472630)) (= lambda!394301 lambda!394275))))

(declare-fun bs!1849944 () Bool)

(assert (= bs!1849944 (and d!2165793 b!6928707)))

(assert (=> bs!1849944 (not (= lambda!394301 lambda!394299))))

(declare-fun bs!1849946 () Bool)

(assert (= bs!1849946 (and d!2165793 b!6928191)))

(assert (=> bs!1849946 (not (= lambda!394301 lambda!394254))))

(declare-fun bs!1849948 () Bool)

(assert (= bs!1849948 (and d!2165793 b!6928520)))

(assert (=> bs!1849948 (not (= lambda!394301 lambda!394292))))

(declare-fun bs!1849950 () Bool)

(assert (= bs!1849950 (and d!2165793 b!6928187)))

(assert (=> bs!1849950 (= (and (= lt!2472613 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2472617)) (= lambda!394301 lambda!394253))))

(declare-fun bs!1849951 () Bool)

(assert (= bs!1849951 (and d!2165793 b!6928697)))

(assert (=> bs!1849951 (not (= lambda!394301 lambda!394297))))

(declare-fun bs!1849953 () Bool)

(assert (= bs!1849953 (and d!2165793 b!6928510)))

(assert (=> bs!1849953 (not (= lambda!394301 lambda!394291))))

(assert (=> bs!1849942 (not (= lambda!394301 lambda!394276))))

(declare-fun bs!1849954 () Bool)

(assert (= bs!1849954 (and d!2165793 d!2165715)))

(assert (=> bs!1849954 (= (and (= lt!2472613 s!14361) (= r2!6280 lt!2472630)) (= lambda!394301 lambda!394281))))

(assert (=> bs!1849941 (not (= lambda!394301 lambda!394252))))

(assert (=> bs!1849936 (not (= lambda!394301 lambda!394250))))

(assert (=> d!2165793 true))

(assert (=> d!2165793 true))

(assert (=> d!2165793 true))

(assert (=> d!2165793 (= (isDefined!13407 (findConcatSeparation!3118 r2!6280 r3!135 Nil!66564 lt!2472613 lt!2472613)) (Exists!3937 lambda!394301))))

(declare-fun lt!2472719 () Unit!160594)

(assert (=> d!2165793 (= lt!2472719 (choose!51602 r2!6280 r3!135 lt!2472613))))

(assert (=> d!2165793 (validRegex!8641 r2!6280)))

(assert (=> d!2165793 (= (lemmaFindConcatSeparationEquivalentToExists!2880 r2!6280 r3!135 lt!2472613) lt!2472719)))

(declare-fun bs!1849958 () Bool)

(assert (= bs!1849958 d!2165793))

(assert (=> bs!1849958 m!7636702))

(assert (=> bs!1849958 m!7636642))

(assert (=> bs!1849958 m!7636642))

(assert (=> bs!1849958 m!7636656))

(declare-fun m!7637098 () Bool)

(assert (=> bs!1849958 m!7637098))

(declare-fun m!7637100 () Bool)

(assert (=> bs!1849958 m!7637100))

(assert (=> b!6928188 d!2165793))

(declare-fun bs!1849961 () Bool)

(declare-fun d!2165795 () Bool)

(assert (= bs!1849961 (and d!2165795 b!6928179)))

(declare-fun lambda!394302 () Int)

(assert (=> bs!1849961 (= (and (= lt!2472613 (_1!37095 lt!2472632)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394302 lambda!394249))))

(declare-fun bs!1849962 () Bool)

(assert (= bs!1849962 (and d!2165795 b!6928182)))

(assert (=> bs!1849962 (not (= lambda!394302 lambda!394248))))

(declare-fun bs!1849963 () Bool)

(assert (= bs!1849963 (and d!2165795 b!6928188)))

(assert (=> bs!1849963 (= lambda!394302 lambda!394251)))

(declare-fun bs!1849965 () Bool)

(assert (= bs!1849965 (and d!2165795 d!2165703)))

(assert (=> bs!1849965 (= (and (= lt!2472613 s!14361) (= r2!6280 lt!2472630)) (= lambda!394302 lambda!394275))))

(declare-fun bs!1849966 () Bool)

(assert (= bs!1849966 (and d!2165795 b!6928707)))

(assert (=> bs!1849966 (not (= lambda!394302 lambda!394299))))

(declare-fun bs!1849967 () Bool)

(assert (= bs!1849967 (and d!2165795 b!6928191)))

(assert (=> bs!1849967 (not (= lambda!394302 lambda!394254))))

(declare-fun bs!1849968 () Bool)

(assert (= bs!1849968 (and d!2165795 b!6928520)))

(assert (=> bs!1849968 (not (= lambda!394302 lambda!394292))))

(declare-fun bs!1849969 () Bool)

(assert (= bs!1849969 (and d!2165795 b!6928187)))

(assert (=> bs!1849969 (= (and (= lt!2472613 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2472617)) (= lambda!394302 lambda!394253))))

(assert (=> bs!1849962 (= (and (= lt!2472613 s!14361) (= r2!6280 lt!2472630)) (= lambda!394302 lambda!394247))))

(declare-fun bs!1849972 () Bool)

(assert (= bs!1849972 (and d!2165795 d!2165793)))

(assert (=> bs!1849972 (= lambda!394302 lambda!394301)))

(declare-fun bs!1849974 () Bool)

(assert (= bs!1849974 (and d!2165795 b!6928697)))

(assert (=> bs!1849974 (not (= lambda!394302 lambda!394297))))

(declare-fun bs!1849976 () Bool)

(assert (= bs!1849976 (and d!2165795 b!6928510)))

(assert (=> bs!1849976 (not (= lambda!394302 lambda!394291))))

(assert (=> bs!1849965 (not (= lambda!394302 lambda!394276))))

(declare-fun bs!1849979 () Bool)

(assert (= bs!1849979 (and d!2165795 d!2165715)))

(assert (=> bs!1849979 (= (and (= lt!2472613 s!14361) (= r2!6280 lt!2472630)) (= lambda!394302 lambda!394281))))

(assert (=> bs!1849963 (not (= lambda!394302 lambda!394252))))

(assert (=> bs!1849961 (not (= lambda!394302 lambda!394250))))

(assert (=> d!2165795 true))

(assert (=> d!2165795 true))

(assert (=> d!2165795 true))

(declare-fun lambda!394304 () Int)

(assert (=> bs!1849961 (not (= lambda!394304 lambda!394249))))

(declare-fun bs!1849987 () Bool)

(assert (= bs!1849987 d!2165795))

(assert (=> bs!1849987 (not (= lambda!394304 lambda!394302))))

(assert (=> bs!1849962 (= (and (= lt!2472613 s!14361) (= r2!6280 lt!2472630)) (= lambda!394304 lambda!394248))))

(assert (=> bs!1849963 (not (= lambda!394304 lambda!394251))))

(assert (=> bs!1849965 (not (= lambda!394304 lambda!394275))))

(assert (=> bs!1849966 (= (and (= r2!6280 (regOne!34382 lt!2472617)) (= r3!135 (regTwo!34382 lt!2472617))) (= lambda!394304 lambda!394299))))

(assert (=> bs!1849967 (= (and (= lt!2472613 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2472617)) (= lambda!394304 lambda!394254))))

(assert (=> bs!1849968 (= (and (= lt!2472613 (_1!37095 lt!2472632)) (= r2!6280 (regOne!34382 lt!2472630)) (= r3!135 (regTwo!34382 lt!2472630))) (= lambda!394304 lambda!394292))))

(assert (=> bs!1849969 (not (= lambda!394304 lambda!394253))))

(assert (=> bs!1849962 (not (= lambda!394304 lambda!394247))))

(assert (=> bs!1849972 (not (= lambda!394304 lambda!394301))))

(assert (=> bs!1849974 (not (= lambda!394304 lambda!394297))))

(assert (=> bs!1849976 (not (= lambda!394304 lambda!394291))))

(assert (=> bs!1849965 (= (and (= lt!2472613 s!14361) (= r2!6280 lt!2472630)) (= lambda!394304 lambda!394276))))

(assert (=> bs!1849979 (not (= lambda!394304 lambda!394281))))

(assert (=> bs!1849963 (= lambda!394304 lambda!394252)))

(assert (=> bs!1849961 (= (and (= lt!2472613 (_1!37095 lt!2472632)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394304 lambda!394250))))

(assert (=> d!2165795 true))

(assert (=> d!2165795 true))

(assert (=> d!2165795 true))

(assert (=> d!2165795 (= (Exists!3937 lambda!394302) (Exists!3937 lambda!394304))))

(declare-fun lt!2472720 () Unit!160594)

(assert (=> d!2165795 (= lt!2472720 (choose!51600 r2!6280 r3!135 lt!2472613))))

(assert (=> d!2165795 (validRegex!8641 r2!6280)))

(assert (=> d!2165795 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2404 r2!6280 r3!135 lt!2472613) lt!2472720)))

(declare-fun m!7637114 () Bool)

(assert (=> bs!1849987 m!7637114))

(declare-fun m!7637116 () Bool)

(assert (=> bs!1849987 m!7637116))

(declare-fun m!7637118 () Bool)

(assert (=> bs!1849987 m!7637118))

(assert (=> bs!1849987 m!7636702))

(assert (=> b!6928188 d!2165795))

(declare-fun d!2165803 () Bool)

(assert (=> d!2165803 (isDefined!13407 (findConcatSeparation!3118 r2!6280 r3!135 Nil!66564 lt!2472613 lt!2472613))))

(declare-fun lt!2472730 () Unit!160594)

(declare-fun choose!51603 (Regex!16935 Regex!16935 List!66688 List!66688 List!66688 List!66688 List!66688) Unit!160594)

(assert (=> d!2165803 (= lt!2472730 (choose!51603 r2!6280 r3!135 (_2!37095 lt!2472636) (_2!37095 lt!2472632) lt!2472613 Nil!66564 lt!2472613))))

(assert (=> d!2165803 (validRegex!8641 r2!6280)))

(assert (=> d!2165803 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!96 r2!6280 r3!135 (_2!37095 lt!2472636) (_2!37095 lt!2472632) lt!2472613 Nil!66564 lt!2472613) lt!2472730)))

(declare-fun bs!1850005 () Bool)

(assert (= bs!1850005 d!2165803))

(assert (=> bs!1850005 m!7636642))

(assert (=> bs!1850005 m!7636642))

(assert (=> bs!1850005 m!7636656))

(declare-fun m!7637162 () Bool)

(assert (=> bs!1850005 m!7637162))

(assert (=> bs!1850005 m!7636702))

(assert (=> b!6928188 d!2165803))

(declare-fun b!6928742 () Bool)

(declare-fun lt!2472732 () Unit!160594)

(declare-fun lt!2472733 () Unit!160594)

(assert (=> b!6928742 (= lt!2472732 lt!2472733)))

(assert (=> b!6928742 (= (++!14978 (++!14978 Nil!66564 (Cons!66564 (h!73012 lt!2472613) Nil!66564)) (t!380431 lt!2472613)) lt!2472613)))

(assert (=> b!6928742 (= lt!2472733 (lemmaMoveElementToOtherListKeepsConcatEq!2839 Nil!66564 (h!73012 lt!2472613) (t!380431 lt!2472613) lt!2472613))))

(declare-fun e!4169436 () Option!16704)

(assert (=> b!6928742 (= e!4169436 (findConcatSeparation!3118 r2!6280 r3!135 (++!14978 Nil!66564 (Cons!66564 (h!73012 lt!2472613) Nil!66564)) (t!380431 lt!2472613) lt!2472613))))

(declare-fun b!6928743 () Bool)

(declare-fun res!2825879 () Bool)

(declare-fun e!4169435 () Bool)

(assert (=> b!6928743 (=> (not res!2825879) (not e!4169435))))

(declare-fun lt!2472731 () Option!16704)

(assert (=> b!6928743 (= res!2825879 (matchR!9074 r2!6280 (_1!37095 (get!23343 lt!2472731))))))

(declare-fun b!6928744 () Bool)

(assert (=> b!6928744 (= e!4169436 None!16703)))

(declare-fun b!6928745 () Bool)

(declare-fun e!4169437 () Option!16704)

(assert (=> b!6928745 (= e!4169437 (Some!16703 (tuple2!67585 Nil!66564 lt!2472613)))))

(declare-fun b!6928746 () Bool)

(declare-fun e!4169434 () Bool)

(assert (=> b!6928746 (= e!4169434 (not (isDefined!13407 lt!2472731)))))

(declare-fun b!6928747 () Bool)

(assert (=> b!6928747 (= e!4169437 e!4169436)))

(declare-fun c!1286074 () Bool)

(assert (=> b!6928747 (= c!1286074 ((_ is Nil!66564) lt!2472613))))

(declare-fun b!6928748 () Bool)

(declare-fun res!2825881 () Bool)

(assert (=> b!6928748 (=> (not res!2825881) (not e!4169435))))

(assert (=> b!6928748 (= res!2825881 (matchR!9074 r3!135 (_2!37095 (get!23343 lt!2472731))))))

(declare-fun d!2165815 () Bool)

(assert (=> d!2165815 e!4169434))

(declare-fun res!2825877 () Bool)

(assert (=> d!2165815 (=> res!2825877 e!4169434)))

(assert (=> d!2165815 (= res!2825877 e!4169435)))

(declare-fun res!2825880 () Bool)

(assert (=> d!2165815 (=> (not res!2825880) (not e!4169435))))

(assert (=> d!2165815 (= res!2825880 (isDefined!13407 lt!2472731))))

(assert (=> d!2165815 (= lt!2472731 e!4169437)))

(declare-fun c!1286075 () Bool)

(declare-fun e!4169433 () Bool)

(assert (=> d!2165815 (= c!1286075 e!4169433)))

(declare-fun res!2825878 () Bool)

(assert (=> d!2165815 (=> (not res!2825878) (not e!4169433))))

(assert (=> d!2165815 (= res!2825878 (matchR!9074 r2!6280 Nil!66564))))

(assert (=> d!2165815 (validRegex!8641 r2!6280)))

(assert (=> d!2165815 (= (findConcatSeparation!3118 r2!6280 r3!135 Nil!66564 lt!2472613 lt!2472613) lt!2472731)))

(declare-fun b!6928749 () Bool)

(assert (=> b!6928749 (= e!4169435 (= (++!14978 (_1!37095 (get!23343 lt!2472731)) (_2!37095 (get!23343 lt!2472731))) lt!2472613))))

(declare-fun b!6928750 () Bool)

(assert (=> b!6928750 (= e!4169433 (matchR!9074 r3!135 lt!2472613))))

(assert (= (and d!2165815 res!2825878) b!6928750))

(assert (= (and d!2165815 c!1286075) b!6928745))

(assert (= (and d!2165815 (not c!1286075)) b!6928747))

(assert (= (and b!6928747 c!1286074) b!6928744))

(assert (= (and b!6928747 (not c!1286074)) b!6928742))

(assert (= (and d!2165815 res!2825880) b!6928743))

(assert (= (and b!6928743 res!2825879) b!6928748))

(assert (= (and b!6928748 res!2825881) b!6928749))

(assert (= (and d!2165815 (not res!2825877)) b!6928746))

(declare-fun m!7637164 () Bool)

(assert (=> b!6928750 m!7637164))

(declare-fun m!7637166 () Bool)

(assert (=> b!6928748 m!7637166))

(declare-fun m!7637168 () Bool)

(assert (=> b!6928748 m!7637168))

(assert (=> b!6928749 m!7637166))

(declare-fun m!7637170 () Bool)

(assert (=> b!6928749 m!7637170))

(assert (=> b!6928743 m!7637166))

(declare-fun m!7637172 () Bool)

(assert (=> b!6928743 m!7637172))

(declare-fun m!7637174 () Bool)

(assert (=> b!6928742 m!7637174))

(assert (=> b!6928742 m!7637174))

(declare-fun m!7637176 () Bool)

(assert (=> b!6928742 m!7637176))

(declare-fun m!7637178 () Bool)

(assert (=> b!6928742 m!7637178))

(assert (=> b!6928742 m!7637174))

(declare-fun m!7637180 () Bool)

(assert (=> b!6928742 m!7637180))

(declare-fun m!7637182 () Bool)

(assert (=> b!6928746 m!7637182))

(assert (=> d!2165815 m!7637182))

(declare-fun m!7637184 () Bool)

(assert (=> d!2165815 m!7637184))

(assert (=> d!2165815 m!7636702))

(assert (=> b!6928188 d!2165815))

(declare-fun d!2165817 () Bool)

(assert (=> d!2165817 (= (Exists!3937 lambda!394252) (choose!51598 lambda!394252))))

(declare-fun bs!1850019 () Bool)

(assert (= bs!1850019 d!2165817))

(declare-fun m!7637186 () Bool)

(assert (=> bs!1850019 m!7637186))

(assert (=> b!6928188 d!2165817))

(declare-fun b!6928752 () Bool)

(declare-fun e!4169439 () List!66688)

(assert (=> b!6928752 (= e!4169439 (Cons!66564 (h!73012 (_2!37095 lt!2472636)) (++!14978 (t!380431 (_2!37095 lt!2472636)) (_2!37095 lt!2472632))))))

(declare-fun b!6928753 () Bool)

(declare-fun res!2825882 () Bool)

(declare-fun e!4169438 () Bool)

(assert (=> b!6928753 (=> (not res!2825882) (not e!4169438))))

(declare-fun lt!2472734 () List!66688)

(assert (=> b!6928753 (= res!2825882 (= (size!40784 lt!2472734) (+ (size!40784 (_2!37095 lt!2472636)) (size!40784 (_2!37095 lt!2472632)))))))

(declare-fun b!6928754 () Bool)

(assert (=> b!6928754 (= e!4169438 (or (not (= (_2!37095 lt!2472632) Nil!66564)) (= lt!2472734 (_2!37095 lt!2472636))))))

(declare-fun d!2165819 () Bool)

(assert (=> d!2165819 e!4169438))

(declare-fun res!2825883 () Bool)

(assert (=> d!2165819 (=> (not res!2825883) (not e!4169438))))

(assert (=> d!2165819 (= res!2825883 (= (content!13087 lt!2472734) ((_ map or) (content!13087 (_2!37095 lt!2472636)) (content!13087 (_2!37095 lt!2472632)))))))

(assert (=> d!2165819 (= lt!2472734 e!4169439)))

(declare-fun c!1286076 () Bool)

(assert (=> d!2165819 (= c!1286076 ((_ is Nil!66564) (_2!37095 lt!2472636)))))

(assert (=> d!2165819 (= (++!14978 (_2!37095 lt!2472636) (_2!37095 lt!2472632)) lt!2472734)))

(declare-fun b!6928751 () Bool)

(assert (=> b!6928751 (= e!4169439 (_2!37095 lt!2472632))))

(assert (= (and d!2165819 c!1286076) b!6928751))

(assert (= (and d!2165819 (not c!1286076)) b!6928752))

(assert (= (and d!2165819 res!2825883) b!6928753))

(assert (= (and b!6928753 res!2825882) b!6928754))

(declare-fun m!7637188 () Bool)

(assert (=> b!6928752 m!7637188))

(declare-fun m!7637190 () Bool)

(assert (=> b!6928753 m!7637190))

(declare-fun m!7637192 () Bool)

(assert (=> b!6928753 m!7637192))

(declare-fun m!7637194 () Bool)

(assert (=> b!6928753 m!7637194))

(declare-fun m!7637196 () Bool)

(assert (=> d!2165819 m!7637196))

(declare-fun m!7637198 () Bool)

(assert (=> d!2165819 m!7637198))

(declare-fun m!7637200 () Bool)

(assert (=> d!2165819 m!7637200))

(assert (=> b!6928188 d!2165819))

(declare-fun d!2165821 () Bool)

(assert (=> d!2165821 (= (Exists!3937 lambda!394251) (choose!51598 lambda!394251))))

(declare-fun bs!1850024 () Bool)

(assert (= bs!1850024 d!2165821))

(declare-fun m!7637202 () Bool)

(assert (=> bs!1850024 m!7637202))

(assert (=> b!6928188 d!2165821))

(declare-fun b!6928755 () Bool)

(declare-fun e!4169446 () Bool)

(assert (=> b!6928755 (= e!4169446 (not (= (head!13888 lt!2472613) (c!1285947 lt!2472617))))))

(declare-fun b!6928756 () Bool)

(declare-fun e!4169445 () Bool)

(assert (=> b!6928756 (= e!4169445 (= (head!13888 lt!2472613) (c!1285947 lt!2472617)))))

(declare-fun b!6928757 () Bool)

(declare-fun res!2825889 () Bool)

(assert (=> b!6928757 (=> (not res!2825889) (not e!4169445))))

(assert (=> b!6928757 (= res!2825889 (isEmpty!38823 (tail!12940 lt!2472613)))))

(declare-fun b!6928758 () Bool)

(declare-fun e!4169442 () Bool)

(declare-fun e!4169443 () Bool)

(assert (=> b!6928758 (= e!4169442 e!4169443)))

(declare-fun res!2825888 () Bool)

(assert (=> b!6928758 (=> (not res!2825888) (not e!4169443))))

(declare-fun lt!2472735 () Bool)

(assert (=> b!6928758 (= res!2825888 (not lt!2472735))))

(declare-fun b!6928759 () Bool)

(assert (=> b!6928759 (= e!4169443 e!4169446)))

(declare-fun res!2825886 () Bool)

(assert (=> b!6928759 (=> res!2825886 e!4169446)))

(declare-fun call!629660 () Bool)

(assert (=> b!6928759 (= res!2825886 call!629660)))

(declare-fun bm!629655 () Bool)

(assert (=> bm!629655 (= call!629660 (isEmpty!38823 lt!2472613))))

(declare-fun b!6928760 () Bool)

(declare-fun e!4169440 () Bool)

(assert (=> b!6928760 (= e!4169440 (not lt!2472735))))

(declare-fun b!6928761 () Bool)

(declare-fun res!2825891 () Bool)

(assert (=> b!6928761 (=> res!2825891 e!4169442)))

(assert (=> b!6928761 (= res!2825891 e!4169445)))

(declare-fun res!2825884 () Bool)

(assert (=> b!6928761 (=> (not res!2825884) (not e!4169445))))

(assert (=> b!6928761 (= res!2825884 lt!2472735)))

(declare-fun b!6928762 () Bool)

(declare-fun res!2825890 () Bool)

(assert (=> b!6928762 (=> (not res!2825890) (not e!4169445))))

(assert (=> b!6928762 (= res!2825890 (not call!629660))))

(declare-fun b!6928763 () Bool)

(declare-fun e!4169444 () Bool)

(assert (=> b!6928763 (= e!4169444 (matchR!9074 (derivativeStep!5435 lt!2472617 (head!13888 lt!2472613)) (tail!12940 lt!2472613)))))

(declare-fun b!6928764 () Bool)

(declare-fun e!4169441 () Bool)

(assert (=> b!6928764 (= e!4169441 (= lt!2472735 call!629660))))

(declare-fun b!6928765 () Bool)

(assert (=> b!6928765 (= e!4169441 e!4169440)))

(declare-fun c!1286077 () Bool)

(assert (=> b!6928765 (= c!1286077 ((_ is EmptyLang!16935) lt!2472617))))

(declare-fun b!6928766 () Bool)

(declare-fun res!2825887 () Bool)

(assert (=> b!6928766 (=> res!2825887 e!4169442)))

(assert (=> b!6928766 (= res!2825887 (not ((_ is ElementMatch!16935) lt!2472617)))))

(assert (=> b!6928766 (= e!4169440 e!4169442)))

(declare-fun d!2165823 () Bool)

(assert (=> d!2165823 e!4169441))

(declare-fun c!1286079 () Bool)

(assert (=> d!2165823 (= c!1286079 ((_ is EmptyExpr!16935) lt!2472617))))

(assert (=> d!2165823 (= lt!2472735 e!4169444)))

(declare-fun c!1286078 () Bool)

(assert (=> d!2165823 (= c!1286078 (isEmpty!38823 lt!2472613))))

(assert (=> d!2165823 (validRegex!8641 lt!2472617)))

(assert (=> d!2165823 (= (matchR!9074 lt!2472617 lt!2472613) lt!2472735)))

(declare-fun b!6928767 () Bool)

(assert (=> b!6928767 (= e!4169444 (nullable!6760 lt!2472617))))

(declare-fun b!6928768 () Bool)

(declare-fun res!2825885 () Bool)

(assert (=> b!6928768 (=> res!2825885 e!4169446)))

(assert (=> b!6928768 (= res!2825885 (not (isEmpty!38823 (tail!12940 lt!2472613))))))

(assert (= (and d!2165823 c!1286078) b!6928767))

(assert (= (and d!2165823 (not c!1286078)) b!6928763))

(assert (= (and d!2165823 c!1286079) b!6928764))

(assert (= (and d!2165823 (not c!1286079)) b!6928765))

(assert (= (and b!6928765 c!1286077) b!6928760))

(assert (= (and b!6928765 (not c!1286077)) b!6928766))

(assert (= (and b!6928766 (not res!2825887)) b!6928761))

(assert (= (and b!6928761 res!2825884) b!6928762))

(assert (= (and b!6928762 res!2825890) b!6928757))

(assert (= (and b!6928757 res!2825889) b!6928756))

(assert (= (and b!6928761 (not res!2825891)) b!6928758))

(assert (= (and b!6928758 res!2825888) b!6928759))

(assert (= (and b!6928759 (not res!2825886)) b!6928768))

(assert (= (and b!6928768 (not res!2825885)) b!6928755))

(assert (= (or b!6928764 b!6928759 b!6928762) bm!629655))

(declare-fun m!7637204 () Bool)

(assert (=> b!6928757 m!7637204))

(assert (=> b!6928757 m!7637204))

(declare-fun m!7637206 () Bool)

(assert (=> b!6928757 m!7637206))

(assert (=> b!6928768 m!7637204))

(assert (=> b!6928768 m!7637204))

(assert (=> b!6928768 m!7637206))

(assert (=> d!2165823 m!7637094))

(assert (=> d!2165823 m!7636688))

(declare-fun m!7637208 () Bool)

(assert (=> b!6928756 m!7637208))

(assert (=> b!6928763 m!7637208))

(assert (=> b!6928763 m!7637208))

(declare-fun m!7637210 () Bool)

(assert (=> b!6928763 m!7637210))

(assert (=> b!6928763 m!7637204))

(assert (=> b!6928763 m!7637210))

(assert (=> b!6928763 m!7637204))

(declare-fun m!7637212 () Bool)

(assert (=> b!6928763 m!7637212))

(assert (=> bm!629655 m!7637094))

(declare-fun m!7637214 () Bool)

(assert (=> b!6928767 m!7637214))

(assert (=> b!6928755 m!7637208))

(assert (=> b!6928188 d!2165823))

(declare-fun d!2165825 () Bool)

(assert (=> d!2165825 (= (isDefined!13407 (findConcatSeparation!3118 r2!6280 r3!135 Nil!66564 lt!2472613 lt!2472613)) (not (isEmpty!38822 (findConcatSeparation!3118 r2!6280 r3!135 Nil!66564 lt!2472613 lt!2472613))))))

(declare-fun bs!1850025 () Bool)

(assert (= bs!1850025 d!2165825))

(assert (=> bs!1850025 m!7636642))

(declare-fun m!7637216 () Bool)

(assert (=> bs!1850025 m!7637216))

(assert (=> b!6928188 d!2165825))

(declare-fun d!2165827 () Bool)

(assert (=> d!2165827 (= (matchR!9074 lt!2472617 lt!2472613) (matchRSpec!3992 lt!2472617 lt!2472613))))

(declare-fun lt!2472736 () Unit!160594)

(assert (=> d!2165827 (= lt!2472736 (choose!51599 lt!2472617 lt!2472613))))

(assert (=> d!2165827 (validRegex!8641 lt!2472617)))

(assert (=> d!2165827 (= (mainMatchTheorem!3992 lt!2472617 lt!2472613) lt!2472736)))

(declare-fun bs!1850026 () Bool)

(assert (= bs!1850026 d!2165827))

(assert (=> bs!1850026 m!7636644))

(assert (=> bs!1850026 m!7636652))

(declare-fun m!7637218 () Bool)

(assert (=> bs!1850026 m!7637218))

(assert (=> bs!1850026 m!7636688))

(assert (=> b!6928188 d!2165827))

(declare-fun b!6928769 () Bool)

(declare-fun e!4169447 () Bool)

(declare-fun e!4169448 () Bool)

(assert (=> b!6928769 (= e!4169447 e!4169448)))

(declare-fun res!2825895 () Bool)

(assert (=> b!6928769 (=> (not res!2825895) (not e!4169448))))

(declare-fun call!629663 () Bool)

(assert (=> b!6928769 (= res!2825895 call!629663)))

(declare-fun b!6928770 () Bool)

(declare-fun res!2825894 () Bool)

(assert (=> b!6928770 (=> res!2825894 e!4169447)))

(assert (=> b!6928770 (= res!2825894 (not ((_ is Concat!25780) r2!6280)))))

(declare-fun e!4169452 () Bool)

(assert (=> b!6928770 (= e!4169452 e!4169447)))

(declare-fun d!2165829 () Bool)

(declare-fun res!2825893 () Bool)

(declare-fun e!4169449 () Bool)

(assert (=> d!2165829 (=> res!2825893 e!4169449)))

(assert (=> d!2165829 (= res!2825893 ((_ is ElementMatch!16935) r2!6280))))

(assert (=> d!2165829 (= (validRegex!8641 r2!6280) e!4169449)))

(declare-fun b!6928771 () Bool)

(declare-fun e!4169453 () Bool)

(declare-fun call!629662 () Bool)

(assert (=> b!6928771 (= e!4169453 call!629662)))

(declare-fun b!6928772 () Bool)

(declare-fun call!629661 () Bool)

(assert (=> b!6928772 (= e!4169448 call!629661)))

(declare-fun c!1286080 () Bool)

(declare-fun c!1286081 () Bool)

(declare-fun bm!629656 () Bool)

(assert (=> bm!629656 (= call!629662 (validRegex!8641 (ite c!1286081 (reg!17264 r2!6280) (ite c!1286080 (regOne!34383 r2!6280) (regTwo!34382 r2!6280)))))))

(declare-fun b!6928773 () Bool)

(declare-fun e!4169450 () Bool)

(assert (=> b!6928773 (= e!4169450 e!4169453)))

(declare-fun res!2825892 () Bool)

(assert (=> b!6928773 (= res!2825892 (not (nullable!6760 (reg!17264 r2!6280))))))

(assert (=> b!6928773 (=> (not res!2825892) (not e!4169453))))

(declare-fun bm!629657 () Bool)

(assert (=> bm!629657 (= call!629663 (validRegex!8641 (ite c!1286080 (regTwo!34383 r2!6280) (regOne!34382 r2!6280))))))

(declare-fun b!6928774 () Bool)

(assert (=> b!6928774 (= e!4169450 e!4169452)))

(assert (=> b!6928774 (= c!1286080 ((_ is Union!16935) r2!6280))))

(declare-fun b!6928775 () Bool)

(declare-fun e!4169451 () Bool)

(assert (=> b!6928775 (= e!4169451 call!629663)))

(declare-fun b!6928776 () Bool)

(assert (=> b!6928776 (= e!4169449 e!4169450)))

(assert (=> b!6928776 (= c!1286081 ((_ is Star!16935) r2!6280))))

(declare-fun b!6928777 () Bool)

(declare-fun res!2825896 () Bool)

(assert (=> b!6928777 (=> (not res!2825896) (not e!4169451))))

(assert (=> b!6928777 (= res!2825896 call!629661)))

(assert (=> b!6928777 (= e!4169452 e!4169451)))

(declare-fun bm!629658 () Bool)

(assert (=> bm!629658 (= call!629661 call!629662)))

(assert (= (and d!2165829 (not res!2825893)) b!6928776))

(assert (= (and b!6928776 c!1286081) b!6928773))

(assert (= (and b!6928776 (not c!1286081)) b!6928774))

(assert (= (and b!6928773 res!2825892) b!6928771))

(assert (= (and b!6928774 c!1286080) b!6928777))

(assert (= (and b!6928774 (not c!1286080)) b!6928770))

(assert (= (and b!6928777 res!2825896) b!6928775))

(assert (= (and b!6928770 (not res!2825894)) b!6928769))

(assert (= (and b!6928769 res!2825895) b!6928772))

(assert (= (or b!6928777 b!6928772) bm!629658))

(assert (= (or b!6928775 b!6928769) bm!629657))

(assert (= (or b!6928771 bm!629658) bm!629656))

(declare-fun m!7637220 () Bool)

(assert (=> bm!629656 m!7637220))

(declare-fun m!7637222 () Bool)

(assert (=> b!6928773 m!7637222))

(declare-fun m!7637224 () Bool)

(assert (=> bm!629657 m!7637224))

(assert (=> b!6928199 d!2165829))

(declare-fun d!2165831 () Bool)

(assert (=> d!2165831 (= (isDefined!13407 (findConcatSeparation!3118 r1!6342 lt!2472617 Nil!66564 s!14361 s!14361)) (not (isEmpty!38822 (findConcatSeparation!3118 r1!6342 lt!2472617 Nil!66564 s!14361 s!14361))))))

(declare-fun bs!1850028 () Bool)

(assert (= bs!1850028 d!2165831))

(assert (=> bs!1850028 m!7636690))

(declare-fun m!7637226 () Bool)

(assert (=> bs!1850028 m!7637226))

(assert (=> b!6928187 d!2165831))

(declare-fun d!2165833 () Bool)

(assert (=> d!2165833 (isDefined!13407 (findConcatSeparation!3118 r1!6342 lt!2472617 Nil!66564 s!14361 s!14361))))

(declare-fun lt!2472737 () Unit!160594)

(assert (=> d!2165833 (= lt!2472737 (choose!51603 r1!6342 lt!2472617 (_1!37095 lt!2472636) lt!2472613 s!14361 Nil!66564 s!14361))))

(assert (=> d!2165833 (validRegex!8641 r1!6342)))

(assert (=> d!2165833 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!96 r1!6342 lt!2472617 (_1!37095 lt!2472636) lt!2472613 s!14361 Nil!66564 s!14361) lt!2472737)))

(declare-fun bs!1850029 () Bool)

(assert (= bs!1850029 d!2165833))

(assert (=> bs!1850029 m!7636690))

(assert (=> bs!1850029 m!7636690))

(assert (=> bs!1850029 m!7636692))

(declare-fun m!7637228 () Bool)

(assert (=> bs!1850029 m!7637228))

(assert (=> bs!1850029 m!7636606))

(assert (=> b!6928187 d!2165833))

(declare-fun d!2165835 () Bool)

(assert (=> d!2165835 (= (Exists!3937 lambda!394253) (choose!51598 lambda!394253))))

(declare-fun bs!1850030 () Bool)

(assert (= bs!1850030 d!2165835))

(declare-fun m!7637230 () Bool)

(assert (=> bs!1850030 m!7637230))

(assert (=> b!6928187 d!2165835))

(declare-fun b!6928778 () Bool)

(declare-fun lt!2472739 () Unit!160594)

(declare-fun lt!2472740 () Unit!160594)

(assert (=> b!6928778 (= lt!2472739 lt!2472740)))

(assert (=> b!6928778 (= (++!14978 (++!14978 Nil!66564 (Cons!66564 (h!73012 s!14361) Nil!66564)) (t!380431 s!14361)) s!14361)))

(assert (=> b!6928778 (= lt!2472740 (lemmaMoveElementToOtherListKeepsConcatEq!2839 Nil!66564 (h!73012 s!14361) (t!380431 s!14361) s!14361))))

(declare-fun e!4169457 () Option!16704)

(assert (=> b!6928778 (= e!4169457 (findConcatSeparation!3118 r1!6342 lt!2472617 (++!14978 Nil!66564 (Cons!66564 (h!73012 s!14361) Nil!66564)) (t!380431 s!14361) s!14361))))

(declare-fun b!6928779 () Bool)

(declare-fun res!2825899 () Bool)

(declare-fun e!4169456 () Bool)

(assert (=> b!6928779 (=> (not res!2825899) (not e!4169456))))

(declare-fun lt!2472738 () Option!16704)

(assert (=> b!6928779 (= res!2825899 (matchR!9074 r1!6342 (_1!37095 (get!23343 lt!2472738))))))

(declare-fun b!6928780 () Bool)

(assert (=> b!6928780 (= e!4169457 None!16703)))

(declare-fun b!6928781 () Bool)

(declare-fun e!4169458 () Option!16704)

(assert (=> b!6928781 (= e!4169458 (Some!16703 (tuple2!67585 Nil!66564 s!14361)))))

(declare-fun b!6928782 () Bool)

(declare-fun e!4169455 () Bool)

(assert (=> b!6928782 (= e!4169455 (not (isDefined!13407 lt!2472738)))))

(declare-fun b!6928783 () Bool)

(assert (=> b!6928783 (= e!4169458 e!4169457)))

(declare-fun c!1286082 () Bool)

(assert (=> b!6928783 (= c!1286082 ((_ is Nil!66564) s!14361))))

(declare-fun b!6928784 () Bool)

(declare-fun res!2825901 () Bool)

(assert (=> b!6928784 (=> (not res!2825901) (not e!4169456))))

(assert (=> b!6928784 (= res!2825901 (matchR!9074 lt!2472617 (_2!37095 (get!23343 lt!2472738))))))

(declare-fun d!2165837 () Bool)

(assert (=> d!2165837 e!4169455))

(declare-fun res!2825897 () Bool)

(assert (=> d!2165837 (=> res!2825897 e!4169455)))

(assert (=> d!2165837 (= res!2825897 e!4169456)))

(declare-fun res!2825900 () Bool)

(assert (=> d!2165837 (=> (not res!2825900) (not e!4169456))))

(assert (=> d!2165837 (= res!2825900 (isDefined!13407 lt!2472738))))

(assert (=> d!2165837 (= lt!2472738 e!4169458)))

(declare-fun c!1286083 () Bool)

(declare-fun e!4169454 () Bool)

(assert (=> d!2165837 (= c!1286083 e!4169454)))

(declare-fun res!2825898 () Bool)

(assert (=> d!2165837 (=> (not res!2825898) (not e!4169454))))

(assert (=> d!2165837 (= res!2825898 (matchR!9074 r1!6342 Nil!66564))))

(assert (=> d!2165837 (validRegex!8641 r1!6342)))

(assert (=> d!2165837 (= (findConcatSeparation!3118 r1!6342 lt!2472617 Nil!66564 s!14361 s!14361) lt!2472738)))

(declare-fun b!6928785 () Bool)

(assert (=> b!6928785 (= e!4169456 (= (++!14978 (_1!37095 (get!23343 lt!2472738)) (_2!37095 (get!23343 lt!2472738))) s!14361))))

(declare-fun b!6928786 () Bool)

(assert (=> b!6928786 (= e!4169454 (matchR!9074 lt!2472617 s!14361))))

(assert (= (and d!2165837 res!2825898) b!6928786))

(assert (= (and d!2165837 c!1286083) b!6928781))

(assert (= (and d!2165837 (not c!1286083)) b!6928783))

(assert (= (and b!6928783 c!1286082) b!6928780))

(assert (= (and b!6928783 (not c!1286082)) b!6928778))

(assert (= (and d!2165837 res!2825900) b!6928779))

(assert (= (and b!6928779 res!2825899) b!6928784))

(assert (= (and b!6928784 res!2825901) b!6928785))

(assert (= (and d!2165837 (not res!2825897)) b!6928782))

(declare-fun m!7637236 () Bool)

(assert (=> b!6928786 m!7637236))

(declare-fun m!7637238 () Bool)

(assert (=> b!6928784 m!7637238))

(declare-fun m!7637242 () Bool)

(assert (=> b!6928784 m!7637242))

(assert (=> b!6928785 m!7637238))

(declare-fun m!7637244 () Bool)

(assert (=> b!6928785 m!7637244))

(assert (=> b!6928779 m!7637238))

(declare-fun m!7637246 () Bool)

(assert (=> b!6928779 m!7637246))

(assert (=> b!6928778 m!7636762))

(assert (=> b!6928778 m!7636762))

(assert (=> b!6928778 m!7636764))

(assert (=> b!6928778 m!7636766))

(assert (=> b!6928778 m!7636762))

(declare-fun m!7637248 () Bool)

(assert (=> b!6928778 m!7637248))

(declare-fun m!7637250 () Bool)

(assert (=> b!6928782 m!7637250))

(assert (=> d!2165837 m!7637250))

(declare-fun m!7637252 () Bool)

(assert (=> d!2165837 m!7637252))

(assert (=> d!2165837 m!7636606))

(assert (=> b!6928187 d!2165837))

(declare-fun bs!1850032 () Bool)

(declare-fun d!2165841 () Bool)

(assert (= bs!1850032 (and d!2165841 b!6928179)))

(declare-fun lambda!394307 () Int)

(assert (=> bs!1850032 (= (and (= s!14361 (_1!37095 lt!2472632)) (= lt!2472617 r2!6280)) (= lambda!394307 lambda!394249))))

(declare-fun bs!1850033 () Bool)

(assert (= bs!1850033 (and d!2165841 d!2165795)))

(assert (=> bs!1850033 (= (and (= s!14361 lt!2472613) (= r1!6342 r2!6280) (= lt!2472617 r3!135)) (= lambda!394307 lambda!394302))))

(assert (=> bs!1850033 (not (= lambda!394307 lambda!394304))))

(declare-fun bs!1850034 () Bool)

(assert (= bs!1850034 (and d!2165841 b!6928182)))

(assert (=> bs!1850034 (not (= lambda!394307 lambda!394248))))

(declare-fun bs!1850035 () Bool)

(assert (= bs!1850035 (and d!2165841 b!6928188)))

(assert (=> bs!1850035 (= (and (= s!14361 lt!2472613) (= r1!6342 r2!6280) (= lt!2472617 r3!135)) (= lambda!394307 lambda!394251))))

(declare-fun bs!1850036 () Bool)

(assert (= bs!1850036 (and d!2165841 d!2165703)))

(assert (=> bs!1850036 (= (and (= r1!6342 lt!2472630) (= lt!2472617 r3!135)) (= lambda!394307 lambda!394275))))

(declare-fun bs!1850038 () Bool)

(assert (= bs!1850038 (and d!2165841 b!6928707)))

(assert (=> bs!1850038 (not (= lambda!394307 lambda!394299))))

(declare-fun bs!1850040 () Bool)

(assert (= bs!1850040 (and d!2165841 b!6928191)))

(assert (=> bs!1850040 (not (= lambda!394307 lambda!394254))))

(declare-fun bs!1850042 () Bool)

(assert (= bs!1850042 (and d!2165841 b!6928520)))

(assert (=> bs!1850042 (not (= lambda!394307 lambda!394292))))

(declare-fun bs!1850044 () Bool)

(assert (= bs!1850044 (and d!2165841 b!6928187)))

(assert (=> bs!1850044 (= lambda!394307 lambda!394253)))

(assert (=> bs!1850034 (= (and (= r1!6342 lt!2472630) (= lt!2472617 r3!135)) (= lambda!394307 lambda!394247))))

(declare-fun bs!1850046 () Bool)

(assert (= bs!1850046 (and d!2165841 d!2165793)))

(assert (=> bs!1850046 (= (and (= s!14361 lt!2472613) (= r1!6342 r2!6280) (= lt!2472617 r3!135)) (= lambda!394307 lambda!394301))))

(declare-fun bs!1850049 () Bool)

(assert (= bs!1850049 (and d!2165841 b!6928697)))

(assert (=> bs!1850049 (not (= lambda!394307 lambda!394297))))

(declare-fun bs!1850051 () Bool)

(assert (= bs!1850051 (and d!2165841 b!6928510)))

(assert (=> bs!1850051 (not (= lambda!394307 lambda!394291))))

(assert (=> bs!1850036 (not (= lambda!394307 lambda!394276))))

(declare-fun bs!1850053 () Bool)

(assert (= bs!1850053 (and d!2165841 d!2165715)))

(assert (=> bs!1850053 (= (and (= r1!6342 lt!2472630) (= lt!2472617 r3!135)) (= lambda!394307 lambda!394281))))

(assert (=> bs!1850035 (not (= lambda!394307 lambda!394252))))

(assert (=> bs!1850032 (not (= lambda!394307 lambda!394250))))

(assert (=> d!2165841 true))

(assert (=> d!2165841 true))

(assert (=> d!2165841 true))

(assert (=> d!2165841 (= (isDefined!13407 (findConcatSeparation!3118 r1!6342 lt!2472617 Nil!66564 s!14361 s!14361)) (Exists!3937 lambda!394307))))

(declare-fun lt!2472742 () Unit!160594)

(assert (=> d!2165841 (= lt!2472742 (choose!51602 r1!6342 lt!2472617 s!14361))))

(assert (=> d!2165841 (validRegex!8641 r1!6342)))

(assert (=> d!2165841 (= (lemmaFindConcatSeparationEquivalentToExists!2880 r1!6342 lt!2472617 s!14361) lt!2472742)))

(declare-fun bs!1850058 () Bool)

(assert (= bs!1850058 d!2165841))

(assert (=> bs!1850058 m!7636606))

(assert (=> bs!1850058 m!7636690))

(assert (=> bs!1850058 m!7636690))

(assert (=> bs!1850058 m!7636692))

(declare-fun m!7637262 () Bool)

(assert (=> bs!1850058 m!7637262))

(declare-fun m!7637264 () Bool)

(assert (=> bs!1850058 m!7637264))

(assert (=> b!6928187 d!2165841))

(declare-fun b!6928802 () Bool)

(declare-fun e!4169468 () Bool)

(declare-fun e!4169469 () Bool)

(assert (=> b!6928802 (= e!4169468 e!4169469)))

(declare-fun res!2825910 () Bool)

(assert (=> b!6928802 (=> (not res!2825910) (not e!4169469))))

(declare-fun call!629668 () Bool)

(assert (=> b!6928802 (= res!2825910 call!629668)))

(declare-fun b!6928803 () Bool)

(declare-fun res!2825909 () Bool)

(assert (=> b!6928803 (=> res!2825909 e!4169468)))

(assert (=> b!6928803 (= res!2825909 (not ((_ is Concat!25780) lt!2472617)))))

(declare-fun e!4169473 () Bool)

(assert (=> b!6928803 (= e!4169473 e!4169468)))

(declare-fun d!2165847 () Bool)

(declare-fun res!2825908 () Bool)

(declare-fun e!4169470 () Bool)

(assert (=> d!2165847 (=> res!2825908 e!4169470)))

(assert (=> d!2165847 (= res!2825908 ((_ is ElementMatch!16935) lt!2472617))))

(assert (=> d!2165847 (= (validRegex!8641 lt!2472617) e!4169470)))

(declare-fun b!6928804 () Bool)

(declare-fun e!4169474 () Bool)

(declare-fun call!629667 () Bool)

(assert (=> b!6928804 (= e!4169474 call!629667)))

(declare-fun b!6928805 () Bool)

(declare-fun call!629666 () Bool)

(assert (=> b!6928805 (= e!4169469 call!629666)))

(declare-fun c!1286089 () Bool)

(declare-fun bm!629661 () Bool)

(declare-fun c!1286090 () Bool)

(assert (=> bm!629661 (= call!629667 (validRegex!8641 (ite c!1286090 (reg!17264 lt!2472617) (ite c!1286089 (regOne!34383 lt!2472617) (regTwo!34382 lt!2472617)))))))

(declare-fun b!6928806 () Bool)

(declare-fun e!4169471 () Bool)

(assert (=> b!6928806 (= e!4169471 e!4169474)))

(declare-fun res!2825907 () Bool)

(assert (=> b!6928806 (= res!2825907 (not (nullable!6760 (reg!17264 lt!2472617))))))

(assert (=> b!6928806 (=> (not res!2825907) (not e!4169474))))

(declare-fun bm!629662 () Bool)

(assert (=> bm!629662 (= call!629668 (validRegex!8641 (ite c!1286089 (regTwo!34383 lt!2472617) (regOne!34382 lt!2472617))))))

(declare-fun b!6928807 () Bool)

(assert (=> b!6928807 (= e!4169471 e!4169473)))

(assert (=> b!6928807 (= c!1286089 ((_ is Union!16935) lt!2472617))))

(declare-fun b!6928808 () Bool)

(declare-fun e!4169472 () Bool)

(assert (=> b!6928808 (= e!4169472 call!629668)))

(declare-fun b!6928809 () Bool)

(assert (=> b!6928809 (= e!4169470 e!4169471)))

(assert (=> b!6928809 (= c!1286090 ((_ is Star!16935) lt!2472617))))

(declare-fun b!6928810 () Bool)

(declare-fun res!2825911 () Bool)

(assert (=> b!6928810 (=> (not res!2825911) (not e!4169472))))

(assert (=> b!6928810 (= res!2825911 call!629666)))

(assert (=> b!6928810 (= e!4169473 e!4169472)))

(declare-fun bm!629663 () Bool)

(assert (=> bm!629663 (= call!629666 call!629667)))

(assert (= (and d!2165847 (not res!2825908)) b!6928809))

(assert (= (and b!6928809 c!1286090) b!6928806))

(assert (= (and b!6928809 (not c!1286090)) b!6928807))

(assert (= (and b!6928806 res!2825907) b!6928804))

(assert (= (and b!6928807 c!1286089) b!6928810))

(assert (= (and b!6928807 (not c!1286089)) b!6928803))

(assert (= (and b!6928810 res!2825911) b!6928808))

(assert (= (and b!6928803 (not res!2825909)) b!6928802))

(assert (= (and b!6928802 res!2825910) b!6928805))

(assert (= (or b!6928810 b!6928805) bm!629663))

(assert (= (or b!6928808 b!6928802) bm!629662))

(assert (= (or b!6928804 bm!629663) bm!629661))

(declare-fun m!7637266 () Bool)

(assert (=> bm!629661 m!7637266))

(declare-fun m!7637268 () Bool)

(assert (=> b!6928806 m!7637268))

(declare-fun m!7637270 () Bool)

(assert (=> bm!629662 m!7637270))

(assert (=> b!6928187 d!2165847))

(declare-fun b!6928811 () Bool)

(declare-fun e!4169481 () Bool)

(assert (=> b!6928811 (= e!4169481 (not (= (head!13888 (_2!37095 lt!2472632)) (c!1285947 r3!135))))))

(declare-fun b!6928812 () Bool)

(declare-fun e!4169480 () Bool)

(assert (=> b!6928812 (= e!4169480 (= (head!13888 (_2!37095 lt!2472632)) (c!1285947 r3!135)))))

(declare-fun b!6928813 () Bool)

(declare-fun res!2825917 () Bool)

(assert (=> b!6928813 (=> (not res!2825917) (not e!4169480))))

(assert (=> b!6928813 (= res!2825917 (isEmpty!38823 (tail!12940 (_2!37095 lt!2472632))))))

(declare-fun b!6928814 () Bool)

(declare-fun e!4169477 () Bool)

(declare-fun e!4169478 () Bool)

(assert (=> b!6928814 (= e!4169477 e!4169478)))

(declare-fun res!2825916 () Bool)

(assert (=> b!6928814 (=> (not res!2825916) (not e!4169478))))

(declare-fun lt!2472744 () Bool)

(assert (=> b!6928814 (= res!2825916 (not lt!2472744))))

(declare-fun b!6928815 () Bool)

(assert (=> b!6928815 (= e!4169478 e!4169481)))

(declare-fun res!2825914 () Bool)

(assert (=> b!6928815 (=> res!2825914 e!4169481)))

(declare-fun call!629669 () Bool)

(assert (=> b!6928815 (= res!2825914 call!629669)))

(declare-fun bm!629664 () Bool)

(assert (=> bm!629664 (= call!629669 (isEmpty!38823 (_2!37095 lt!2472632)))))

(declare-fun b!6928816 () Bool)

(declare-fun e!4169475 () Bool)

(assert (=> b!6928816 (= e!4169475 (not lt!2472744))))

(declare-fun b!6928817 () Bool)

(declare-fun res!2825919 () Bool)

(assert (=> b!6928817 (=> res!2825919 e!4169477)))

(assert (=> b!6928817 (= res!2825919 e!4169480)))

(declare-fun res!2825912 () Bool)

(assert (=> b!6928817 (=> (not res!2825912) (not e!4169480))))

(assert (=> b!6928817 (= res!2825912 lt!2472744)))

(declare-fun b!6928818 () Bool)

(declare-fun res!2825918 () Bool)

(assert (=> b!6928818 (=> (not res!2825918) (not e!4169480))))

(assert (=> b!6928818 (= res!2825918 (not call!629669))))

(declare-fun b!6928819 () Bool)

(declare-fun e!4169479 () Bool)

(assert (=> b!6928819 (= e!4169479 (matchR!9074 (derivativeStep!5435 r3!135 (head!13888 (_2!37095 lt!2472632))) (tail!12940 (_2!37095 lt!2472632))))))

(declare-fun b!6928820 () Bool)

(declare-fun e!4169476 () Bool)

(assert (=> b!6928820 (= e!4169476 (= lt!2472744 call!629669))))

(declare-fun b!6928821 () Bool)

(assert (=> b!6928821 (= e!4169476 e!4169475)))

(declare-fun c!1286091 () Bool)

(assert (=> b!6928821 (= c!1286091 ((_ is EmptyLang!16935) r3!135))))

(declare-fun b!6928822 () Bool)

(declare-fun res!2825915 () Bool)

(assert (=> b!6928822 (=> res!2825915 e!4169477)))

(assert (=> b!6928822 (= res!2825915 (not ((_ is ElementMatch!16935) r3!135)))))

(assert (=> b!6928822 (= e!4169475 e!4169477)))

(declare-fun d!2165849 () Bool)

(assert (=> d!2165849 e!4169476))

(declare-fun c!1286093 () Bool)

(assert (=> d!2165849 (= c!1286093 ((_ is EmptyExpr!16935) r3!135))))

(assert (=> d!2165849 (= lt!2472744 e!4169479)))

(declare-fun c!1286092 () Bool)

(assert (=> d!2165849 (= c!1286092 (isEmpty!38823 (_2!37095 lt!2472632)))))

(assert (=> d!2165849 (validRegex!8641 r3!135)))

(assert (=> d!2165849 (= (matchR!9074 r3!135 (_2!37095 lt!2472632)) lt!2472744)))

(declare-fun b!6928823 () Bool)

(assert (=> b!6928823 (= e!4169479 (nullable!6760 r3!135))))

(declare-fun b!6928824 () Bool)

(declare-fun res!2825913 () Bool)

(assert (=> b!6928824 (=> res!2825913 e!4169481)))

(assert (=> b!6928824 (= res!2825913 (not (isEmpty!38823 (tail!12940 (_2!37095 lt!2472632)))))))

(assert (= (and d!2165849 c!1286092) b!6928823))

(assert (= (and d!2165849 (not c!1286092)) b!6928819))

(assert (= (and d!2165849 c!1286093) b!6928820))

(assert (= (and d!2165849 (not c!1286093)) b!6928821))

(assert (= (and b!6928821 c!1286091) b!6928816))

(assert (= (and b!6928821 (not c!1286091)) b!6928822))

(assert (= (and b!6928822 (not res!2825915)) b!6928817))

(assert (= (and b!6928817 res!2825912) b!6928818))

(assert (= (and b!6928818 res!2825918) b!6928813))

(assert (= (and b!6928813 res!2825917) b!6928812))

(assert (= (and b!6928817 (not res!2825919)) b!6928814))

(assert (= (and b!6928814 res!2825916) b!6928815))

(assert (= (and b!6928815 (not res!2825914)) b!6928824))

(assert (= (and b!6928824 (not res!2825913)) b!6928811))

(assert (= (or b!6928820 b!6928815 b!6928818) bm!629664))

(declare-fun m!7637272 () Bool)

(assert (=> b!6928813 m!7637272))

(assert (=> b!6928813 m!7637272))

(declare-fun m!7637274 () Bool)

(assert (=> b!6928813 m!7637274))

(assert (=> b!6928824 m!7637272))

(assert (=> b!6928824 m!7637272))

(assert (=> b!6928824 m!7637274))

(declare-fun m!7637276 () Bool)

(assert (=> d!2165849 m!7637276))

(assert (=> d!2165849 m!7636636))

(declare-fun m!7637278 () Bool)

(assert (=> b!6928812 m!7637278))

(assert (=> b!6928819 m!7637278))

(assert (=> b!6928819 m!7637278))

(declare-fun m!7637280 () Bool)

(assert (=> b!6928819 m!7637280))

(assert (=> b!6928819 m!7637272))

(assert (=> b!6928819 m!7637280))

(assert (=> b!6928819 m!7637272))

(declare-fun m!7637282 () Bool)

(assert (=> b!6928819 m!7637282))

(assert (=> bm!629664 m!7637276))

(declare-fun m!7637284 () Bool)

(assert (=> b!6928823 m!7637284))

(assert (=> b!6928811 m!7637278))

(assert (=> b!6928198 d!2165849))

(declare-fun d!2165851 () Bool)

(assert (=> d!2165851 (= (matchR!9074 lt!2472631 s!14361) (matchRSpec!3992 lt!2472631 s!14361))))

(declare-fun lt!2472745 () Unit!160594)

(assert (=> d!2165851 (= lt!2472745 (choose!51599 lt!2472631 s!14361))))

(assert (=> d!2165851 (validRegex!8641 lt!2472631)))

(assert (=> d!2165851 (= (mainMatchTheorem!3992 lt!2472631 s!14361) lt!2472745)))

(declare-fun bs!1850069 () Bool)

(assert (= bs!1850069 d!2165851))

(assert (=> bs!1850069 m!7636592))

(assert (=> bs!1850069 m!7636594))

(declare-fun m!7637286 () Bool)

(assert (=> bs!1850069 m!7637286))

(declare-fun m!7637288 () Bool)

(assert (=> bs!1850069 m!7637288))

(assert (=> b!6928177 d!2165851))

(declare-fun b!6928825 () Bool)

(declare-fun e!4169488 () Bool)

(assert (=> b!6928825 (= e!4169488 (not (= (head!13888 s!14361) (c!1285947 lt!2472612))))))

(declare-fun b!6928826 () Bool)

(declare-fun e!4169487 () Bool)

(assert (=> b!6928826 (= e!4169487 (= (head!13888 s!14361) (c!1285947 lt!2472612)))))

(declare-fun b!6928827 () Bool)

(declare-fun res!2825925 () Bool)

(assert (=> b!6928827 (=> (not res!2825925) (not e!4169487))))

(assert (=> b!6928827 (= res!2825925 (isEmpty!38823 (tail!12940 s!14361)))))

(declare-fun b!6928828 () Bool)

(declare-fun e!4169484 () Bool)

(declare-fun e!4169485 () Bool)

(assert (=> b!6928828 (= e!4169484 e!4169485)))

(declare-fun res!2825924 () Bool)

(assert (=> b!6928828 (=> (not res!2825924) (not e!4169485))))

(declare-fun lt!2472746 () Bool)

(assert (=> b!6928828 (= res!2825924 (not lt!2472746))))

(declare-fun b!6928829 () Bool)

(assert (=> b!6928829 (= e!4169485 e!4169488)))

(declare-fun res!2825922 () Bool)

(assert (=> b!6928829 (=> res!2825922 e!4169488)))

(declare-fun call!629670 () Bool)

(assert (=> b!6928829 (= res!2825922 call!629670)))

(declare-fun bm!629665 () Bool)

(assert (=> bm!629665 (= call!629670 (isEmpty!38823 s!14361))))

(declare-fun b!6928830 () Bool)

(declare-fun e!4169482 () Bool)

(assert (=> b!6928830 (= e!4169482 (not lt!2472746))))

(declare-fun b!6928831 () Bool)

(declare-fun res!2825927 () Bool)

(assert (=> b!6928831 (=> res!2825927 e!4169484)))

(assert (=> b!6928831 (= res!2825927 e!4169487)))

(declare-fun res!2825920 () Bool)

(assert (=> b!6928831 (=> (not res!2825920) (not e!4169487))))

(assert (=> b!6928831 (= res!2825920 lt!2472746)))

(declare-fun b!6928832 () Bool)

(declare-fun res!2825926 () Bool)

(assert (=> b!6928832 (=> (not res!2825926) (not e!4169487))))

(assert (=> b!6928832 (= res!2825926 (not call!629670))))

(declare-fun b!6928833 () Bool)

(declare-fun e!4169486 () Bool)

(assert (=> b!6928833 (= e!4169486 (matchR!9074 (derivativeStep!5435 lt!2472612 (head!13888 s!14361)) (tail!12940 s!14361)))))

(declare-fun b!6928834 () Bool)

(declare-fun e!4169483 () Bool)

(assert (=> b!6928834 (= e!4169483 (= lt!2472746 call!629670))))

(declare-fun b!6928835 () Bool)

(assert (=> b!6928835 (= e!4169483 e!4169482)))

(declare-fun c!1286094 () Bool)

(assert (=> b!6928835 (= c!1286094 ((_ is EmptyLang!16935) lt!2472612))))

(declare-fun b!6928836 () Bool)

(declare-fun res!2825923 () Bool)

(assert (=> b!6928836 (=> res!2825923 e!4169484)))

(assert (=> b!6928836 (= res!2825923 (not ((_ is ElementMatch!16935) lt!2472612)))))

(assert (=> b!6928836 (= e!4169482 e!4169484)))

(declare-fun d!2165853 () Bool)

(assert (=> d!2165853 e!4169483))

(declare-fun c!1286096 () Bool)

(assert (=> d!2165853 (= c!1286096 ((_ is EmptyExpr!16935) lt!2472612))))

(assert (=> d!2165853 (= lt!2472746 e!4169486)))

(declare-fun c!1286095 () Bool)

(assert (=> d!2165853 (= c!1286095 (isEmpty!38823 s!14361))))

(assert (=> d!2165853 (validRegex!8641 lt!2472612)))

(assert (=> d!2165853 (= (matchR!9074 lt!2472612 s!14361) lt!2472746)))

(declare-fun b!6928837 () Bool)

(assert (=> b!6928837 (= e!4169486 (nullable!6760 lt!2472612))))

(declare-fun b!6928838 () Bool)

(declare-fun res!2825921 () Bool)

(assert (=> b!6928838 (=> res!2825921 e!4169488)))

(assert (=> b!6928838 (= res!2825921 (not (isEmpty!38823 (tail!12940 s!14361))))))

(assert (= (and d!2165853 c!1286095) b!6928837))

(assert (= (and d!2165853 (not c!1286095)) b!6928833))

(assert (= (and d!2165853 c!1286096) b!6928834))

(assert (= (and d!2165853 (not c!1286096)) b!6928835))

(assert (= (and b!6928835 c!1286094) b!6928830))

(assert (= (and b!6928835 (not c!1286094)) b!6928836))

(assert (= (and b!6928836 (not res!2825923)) b!6928831))

(assert (= (and b!6928831 res!2825920) b!6928832))

(assert (= (and b!6928832 res!2825926) b!6928827))

(assert (= (and b!6928827 res!2825925) b!6928826))

(assert (= (and b!6928831 (not res!2825927)) b!6928828))

(assert (= (and b!6928828 res!2825924) b!6928829))

(assert (= (and b!6928829 (not res!2825922)) b!6928838))

(assert (= (and b!6928838 (not res!2825921)) b!6928825))

(assert (= (or b!6928834 b!6928829 b!6928832) bm!629665))

(declare-fun m!7637290 () Bool)

(assert (=> b!6928827 m!7637290))

(assert (=> b!6928827 m!7637290))

(declare-fun m!7637292 () Bool)

(assert (=> b!6928827 m!7637292))

(assert (=> b!6928838 m!7637290))

(assert (=> b!6928838 m!7637290))

(assert (=> b!6928838 m!7637292))

(declare-fun m!7637294 () Bool)

(assert (=> d!2165853 m!7637294))

(declare-fun m!7637296 () Bool)

(assert (=> d!2165853 m!7637296))

(declare-fun m!7637298 () Bool)

(assert (=> b!6928826 m!7637298))

(assert (=> b!6928833 m!7637298))

(assert (=> b!6928833 m!7637298))

(declare-fun m!7637300 () Bool)

(assert (=> b!6928833 m!7637300))

(assert (=> b!6928833 m!7637290))

(assert (=> b!6928833 m!7637300))

(assert (=> b!6928833 m!7637290))

(declare-fun m!7637302 () Bool)

(assert (=> b!6928833 m!7637302))

(assert (=> bm!629665 m!7637294))

(declare-fun m!7637304 () Bool)

(assert (=> b!6928837 m!7637304))

(assert (=> b!6928825 m!7637298))

(assert (=> b!6928177 d!2165853))

(declare-fun d!2165855 () Bool)

(assert (=> d!2165855 (= (matchR!9074 lt!2472612 s!14361) (matchRSpec!3992 lt!2472612 s!14361))))

(declare-fun lt!2472747 () Unit!160594)

(assert (=> d!2165855 (= lt!2472747 (choose!51599 lt!2472612 s!14361))))

(assert (=> d!2165855 (validRegex!8641 lt!2472612)))

(assert (=> d!2165855 (= (mainMatchTheorem!3992 lt!2472612 s!14361) lt!2472747)))

(declare-fun bs!1850078 () Bool)

(assert (= bs!1850078 d!2165855))

(assert (=> bs!1850078 m!7636600))

(assert (=> bs!1850078 m!7636596))

(declare-fun m!7637306 () Bool)

(assert (=> bs!1850078 m!7637306))

(assert (=> bs!1850078 m!7637296))

(assert (=> b!6928177 d!2165855))

(declare-fun b!6928839 () Bool)

(declare-fun e!4169495 () Bool)

(assert (=> b!6928839 (= e!4169495 (not (= (head!13888 s!14361) (c!1285947 lt!2472631))))))

(declare-fun b!6928840 () Bool)

(declare-fun e!4169494 () Bool)

(assert (=> b!6928840 (= e!4169494 (= (head!13888 s!14361) (c!1285947 lt!2472631)))))

(declare-fun b!6928841 () Bool)

(declare-fun res!2825933 () Bool)

(assert (=> b!6928841 (=> (not res!2825933) (not e!4169494))))

(assert (=> b!6928841 (= res!2825933 (isEmpty!38823 (tail!12940 s!14361)))))

(declare-fun b!6928842 () Bool)

(declare-fun e!4169491 () Bool)

(declare-fun e!4169492 () Bool)

(assert (=> b!6928842 (= e!4169491 e!4169492)))

(declare-fun res!2825932 () Bool)

(assert (=> b!6928842 (=> (not res!2825932) (not e!4169492))))

(declare-fun lt!2472748 () Bool)

(assert (=> b!6928842 (= res!2825932 (not lt!2472748))))

(declare-fun b!6928843 () Bool)

(assert (=> b!6928843 (= e!4169492 e!4169495)))

(declare-fun res!2825930 () Bool)

(assert (=> b!6928843 (=> res!2825930 e!4169495)))

(declare-fun call!629671 () Bool)

(assert (=> b!6928843 (= res!2825930 call!629671)))

(declare-fun bm!629666 () Bool)

(assert (=> bm!629666 (= call!629671 (isEmpty!38823 s!14361))))

(declare-fun b!6928844 () Bool)

(declare-fun e!4169489 () Bool)

(assert (=> b!6928844 (= e!4169489 (not lt!2472748))))

(declare-fun b!6928845 () Bool)

(declare-fun res!2825935 () Bool)

(assert (=> b!6928845 (=> res!2825935 e!4169491)))

(assert (=> b!6928845 (= res!2825935 e!4169494)))

(declare-fun res!2825928 () Bool)

(assert (=> b!6928845 (=> (not res!2825928) (not e!4169494))))

(assert (=> b!6928845 (= res!2825928 lt!2472748)))

(declare-fun b!6928846 () Bool)

(declare-fun res!2825934 () Bool)

(assert (=> b!6928846 (=> (not res!2825934) (not e!4169494))))

(assert (=> b!6928846 (= res!2825934 (not call!629671))))

(declare-fun b!6928847 () Bool)

(declare-fun e!4169493 () Bool)

(assert (=> b!6928847 (= e!4169493 (matchR!9074 (derivativeStep!5435 lt!2472631 (head!13888 s!14361)) (tail!12940 s!14361)))))

(declare-fun b!6928848 () Bool)

(declare-fun e!4169490 () Bool)

(assert (=> b!6928848 (= e!4169490 (= lt!2472748 call!629671))))

(declare-fun b!6928849 () Bool)

(assert (=> b!6928849 (= e!4169490 e!4169489)))

(declare-fun c!1286097 () Bool)

(assert (=> b!6928849 (= c!1286097 ((_ is EmptyLang!16935) lt!2472631))))

(declare-fun b!6928850 () Bool)

(declare-fun res!2825931 () Bool)

(assert (=> b!6928850 (=> res!2825931 e!4169491)))

(assert (=> b!6928850 (= res!2825931 (not ((_ is ElementMatch!16935) lt!2472631)))))

(assert (=> b!6928850 (= e!4169489 e!4169491)))

(declare-fun d!2165857 () Bool)

(assert (=> d!2165857 e!4169490))

(declare-fun c!1286099 () Bool)

(assert (=> d!2165857 (= c!1286099 ((_ is EmptyExpr!16935) lt!2472631))))

(assert (=> d!2165857 (= lt!2472748 e!4169493)))

(declare-fun c!1286098 () Bool)

(assert (=> d!2165857 (= c!1286098 (isEmpty!38823 s!14361))))

(assert (=> d!2165857 (validRegex!8641 lt!2472631)))

(assert (=> d!2165857 (= (matchR!9074 lt!2472631 s!14361) lt!2472748)))

(declare-fun b!6928851 () Bool)

(assert (=> b!6928851 (= e!4169493 (nullable!6760 lt!2472631))))

(declare-fun b!6928852 () Bool)

(declare-fun res!2825929 () Bool)

(assert (=> b!6928852 (=> res!2825929 e!4169495)))

(assert (=> b!6928852 (= res!2825929 (not (isEmpty!38823 (tail!12940 s!14361))))))

(assert (= (and d!2165857 c!1286098) b!6928851))

(assert (= (and d!2165857 (not c!1286098)) b!6928847))

(assert (= (and d!2165857 c!1286099) b!6928848))

(assert (= (and d!2165857 (not c!1286099)) b!6928849))

(assert (= (and b!6928849 c!1286097) b!6928844))

(assert (= (and b!6928849 (not c!1286097)) b!6928850))

(assert (= (and b!6928850 (not res!2825931)) b!6928845))

(assert (= (and b!6928845 res!2825928) b!6928846))

(assert (= (and b!6928846 res!2825934) b!6928841))

(assert (= (and b!6928841 res!2825933) b!6928840))

(assert (= (and b!6928845 (not res!2825935)) b!6928842))

(assert (= (and b!6928842 res!2825932) b!6928843))

(assert (= (and b!6928843 (not res!2825930)) b!6928852))

(assert (= (and b!6928852 (not res!2825929)) b!6928839))

(assert (= (or b!6928848 b!6928843 b!6928846) bm!629666))

(assert (=> b!6928841 m!7637290))

(assert (=> b!6928841 m!7637290))

(assert (=> b!6928841 m!7637292))

(assert (=> b!6928852 m!7637290))

(assert (=> b!6928852 m!7637290))

(assert (=> b!6928852 m!7637292))

(assert (=> d!2165857 m!7637294))

(assert (=> d!2165857 m!7637288))

(assert (=> b!6928840 m!7637298))

(assert (=> b!6928847 m!7637298))

(assert (=> b!6928847 m!7637298))

(declare-fun m!7637308 () Bool)

(assert (=> b!6928847 m!7637308))

(assert (=> b!6928847 m!7637290))

(assert (=> b!6928847 m!7637308))

(assert (=> b!6928847 m!7637290))

(declare-fun m!7637310 () Bool)

(assert (=> b!6928847 m!7637310))

(assert (=> bm!629666 m!7637294))

(declare-fun m!7637312 () Bool)

(assert (=> b!6928851 m!7637312))

(assert (=> b!6928839 m!7637298))

(assert (=> b!6928177 d!2165857))

(declare-fun bs!1850091 () Bool)

(declare-fun b!6928853 () Bool)

(assert (= bs!1850091 (and b!6928853 b!6928179)))

(declare-fun lambda!394310 () Int)

(assert (=> bs!1850091 (not (= lambda!394310 lambda!394249))))

(declare-fun bs!1850092 () Bool)

(assert (= bs!1850092 (and b!6928853 d!2165795)))

(assert (=> bs!1850092 (not (= lambda!394310 lambda!394302))))

(assert (=> bs!1850092 (not (= lambda!394310 lambda!394304))))

(declare-fun bs!1850094 () Bool)

(assert (= bs!1850094 (and b!6928853 d!2165841)))

(assert (=> bs!1850094 (not (= lambda!394310 lambda!394307))))

(declare-fun bs!1850096 () Bool)

(assert (= bs!1850096 (and b!6928853 b!6928182)))

(assert (=> bs!1850096 (not (= lambda!394310 lambda!394248))))

(declare-fun bs!1850098 () Bool)

(assert (= bs!1850098 (and b!6928853 b!6928188)))

(assert (=> bs!1850098 (not (= lambda!394310 lambda!394251))))

(declare-fun bs!1850100 () Bool)

(assert (= bs!1850100 (and b!6928853 d!2165703)))

(assert (=> bs!1850100 (not (= lambda!394310 lambda!394275))))

(declare-fun bs!1850101 () Bool)

(assert (= bs!1850101 (and b!6928853 b!6928707)))

(assert (=> bs!1850101 (not (= lambda!394310 lambda!394299))))

(declare-fun bs!1850102 () Bool)

(assert (= bs!1850102 (and b!6928853 b!6928191)))

(assert (=> bs!1850102 (not (= lambda!394310 lambda!394254))))

(declare-fun bs!1850103 () Bool)

(assert (= bs!1850103 (and b!6928853 b!6928520)))

(assert (=> bs!1850103 (not (= lambda!394310 lambda!394292))))

(declare-fun bs!1850104 () Bool)

(assert (= bs!1850104 (and b!6928853 b!6928187)))

(assert (=> bs!1850104 (not (= lambda!394310 lambda!394253))))

(assert (=> bs!1850096 (not (= lambda!394310 lambda!394247))))

(declare-fun bs!1850105 () Bool)

(assert (= bs!1850105 (and b!6928853 d!2165793)))

(assert (=> bs!1850105 (not (= lambda!394310 lambda!394301))))

(declare-fun bs!1850106 () Bool)

(assert (= bs!1850106 (and b!6928853 b!6928697)))

(assert (=> bs!1850106 (= (and (= s!14361 lt!2472613) (= (reg!17264 lt!2472631) (reg!17264 lt!2472617)) (= lt!2472631 lt!2472617)) (= lambda!394310 lambda!394297))))

(declare-fun bs!1850108 () Bool)

(assert (= bs!1850108 (and b!6928853 b!6928510)))

(assert (=> bs!1850108 (= (and (= s!14361 (_1!37095 lt!2472632)) (= (reg!17264 lt!2472631) (reg!17264 lt!2472630)) (= lt!2472631 lt!2472630)) (= lambda!394310 lambda!394291))))

(assert (=> bs!1850100 (not (= lambda!394310 lambda!394276))))

(declare-fun bs!1850109 () Bool)

(assert (= bs!1850109 (and b!6928853 d!2165715)))

(assert (=> bs!1850109 (not (= lambda!394310 lambda!394281))))

(assert (=> bs!1850098 (not (= lambda!394310 lambda!394252))))

(assert (=> bs!1850091 (not (= lambda!394310 lambda!394250))))

(assert (=> b!6928853 true))

(assert (=> b!6928853 true))

(declare-fun bs!1850110 () Bool)

(declare-fun b!6928863 () Bool)

(assert (= bs!1850110 (and b!6928863 b!6928179)))

(declare-fun lambda!394311 () Int)

(assert (=> bs!1850110 (not (= lambda!394311 lambda!394249))))

(declare-fun bs!1850111 () Bool)

(assert (= bs!1850111 (and b!6928863 d!2165795)))

(assert (=> bs!1850111 (not (= lambda!394311 lambda!394302))))

(assert (=> bs!1850111 (= (and (= s!14361 lt!2472613) (= (regOne!34382 lt!2472631) r2!6280) (= (regTwo!34382 lt!2472631) r3!135)) (= lambda!394311 lambda!394304))))

(declare-fun bs!1850112 () Bool)

(assert (= bs!1850112 (and b!6928863 d!2165841)))

(assert (=> bs!1850112 (not (= lambda!394311 lambda!394307))))

(declare-fun bs!1850113 () Bool)

(assert (= bs!1850113 (and b!6928863 b!6928182)))

(assert (=> bs!1850113 (= (and (= (regOne!34382 lt!2472631) lt!2472630) (= (regTwo!34382 lt!2472631) r3!135)) (= lambda!394311 lambda!394248))))

(declare-fun bs!1850114 () Bool)

(assert (= bs!1850114 (and b!6928863 b!6928188)))

(assert (=> bs!1850114 (not (= lambda!394311 lambda!394251))))

(declare-fun bs!1850115 () Bool)

(assert (= bs!1850115 (and b!6928863 d!2165703)))

(assert (=> bs!1850115 (not (= lambda!394311 lambda!394275))))

(declare-fun bs!1850116 () Bool)

(assert (= bs!1850116 (and b!6928863 b!6928707)))

(assert (=> bs!1850116 (= (and (= s!14361 lt!2472613) (= (regOne!34382 lt!2472631) (regOne!34382 lt!2472617)) (= (regTwo!34382 lt!2472631) (regTwo!34382 lt!2472617))) (= lambda!394311 lambda!394299))))

(declare-fun bs!1850117 () Bool)

(assert (= bs!1850117 (and b!6928863 b!6928191)))

(assert (=> bs!1850117 (= (and (= (regOne!34382 lt!2472631) r1!6342) (= (regTwo!34382 lt!2472631) lt!2472617)) (= lambda!394311 lambda!394254))))

(declare-fun bs!1850118 () Bool)

(assert (= bs!1850118 (and b!6928863 b!6928520)))

(assert (=> bs!1850118 (= (and (= s!14361 (_1!37095 lt!2472632)) (= (regOne!34382 lt!2472631) (regOne!34382 lt!2472630)) (= (regTwo!34382 lt!2472631) (regTwo!34382 lt!2472630))) (= lambda!394311 lambda!394292))))

(declare-fun bs!1850119 () Bool)

(assert (= bs!1850119 (and b!6928863 b!6928187)))

(assert (=> bs!1850119 (not (= lambda!394311 lambda!394253))))

(declare-fun bs!1850120 () Bool)

(assert (= bs!1850120 (and b!6928863 b!6928853)))

(assert (=> bs!1850120 (not (= lambda!394311 lambda!394310))))

(assert (=> bs!1850113 (not (= lambda!394311 lambda!394247))))

(declare-fun bs!1850121 () Bool)

(assert (= bs!1850121 (and b!6928863 d!2165793)))

(assert (=> bs!1850121 (not (= lambda!394311 lambda!394301))))

(declare-fun bs!1850122 () Bool)

(assert (= bs!1850122 (and b!6928863 b!6928697)))

(assert (=> bs!1850122 (not (= lambda!394311 lambda!394297))))

(declare-fun bs!1850123 () Bool)

(assert (= bs!1850123 (and b!6928863 b!6928510)))

(assert (=> bs!1850123 (not (= lambda!394311 lambda!394291))))

(assert (=> bs!1850115 (= (and (= (regOne!34382 lt!2472631) lt!2472630) (= (regTwo!34382 lt!2472631) r3!135)) (= lambda!394311 lambda!394276))))

(declare-fun bs!1850124 () Bool)

(assert (= bs!1850124 (and b!6928863 d!2165715)))

(assert (=> bs!1850124 (not (= lambda!394311 lambda!394281))))

(assert (=> bs!1850114 (= (and (= s!14361 lt!2472613) (= (regOne!34382 lt!2472631) r2!6280) (= (regTwo!34382 lt!2472631) r3!135)) (= lambda!394311 lambda!394252))))

(assert (=> bs!1850110 (= (and (= s!14361 (_1!37095 lt!2472632)) (= (regOne!34382 lt!2472631) r1!6342) (= (regTwo!34382 lt!2472631) r2!6280)) (= lambda!394311 lambda!394250))))

(assert (=> b!6928863 true))

(assert (=> b!6928863 true))

(declare-fun e!4169501 () Bool)

(declare-fun call!629672 () Bool)

(assert (=> b!6928853 (= e!4169501 call!629672)))

(declare-fun b!6928854 () Bool)

(declare-fun e!4169499 () Bool)

(declare-fun e!4169500 () Bool)

(assert (=> b!6928854 (= e!4169499 e!4169500)))

(declare-fun res!2825938 () Bool)

(assert (=> b!6928854 (= res!2825938 (not ((_ is EmptyLang!16935) lt!2472631)))))

(assert (=> b!6928854 (=> (not res!2825938) (not e!4169500))))

(declare-fun b!6928855 () Bool)

(declare-fun e!4169497 () Bool)

(assert (=> b!6928855 (= e!4169497 (matchRSpec!3992 (regTwo!34383 lt!2472631) s!14361))))

(declare-fun b!6928857 () Bool)

(declare-fun call!629673 () Bool)

(assert (=> b!6928857 (= e!4169499 call!629673)))

(declare-fun b!6928858 () Bool)

(declare-fun c!1286103 () Bool)

(assert (=> b!6928858 (= c!1286103 ((_ is ElementMatch!16935) lt!2472631))))

(declare-fun e!4169502 () Bool)

(assert (=> b!6928858 (= e!4169500 e!4169502)))

(declare-fun b!6928859 () Bool)

(declare-fun e!4169496 () Bool)

(assert (=> b!6928859 (= e!4169496 e!4169497)))

(declare-fun res!2825937 () Bool)

(assert (=> b!6928859 (= res!2825937 (matchRSpec!3992 (regOne!34383 lt!2472631) s!14361))))

(assert (=> b!6928859 (=> res!2825937 e!4169497)))

(declare-fun b!6928860 () Bool)

(declare-fun res!2825936 () Bool)

(assert (=> b!6928860 (=> res!2825936 e!4169501)))

(assert (=> b!6928860 (= res!2825936 call!629673)))

(declare-fun e!4169498 () Bool)

(assert (=> b!6928860 (= e!4169498 e!4169501)))

(declare-fun bm!629667 () Bool)

(assert (=> bm!629667 (= call!629673 (isEmpty!38823 s!14361))))

(declare-fun b!6928856 () Bool)

(assert (=> b!6928856 (= e!4169502 (= s!14361 (Cons!66564 (c!1285947 lt!2472631) Nil!66564)))))

(declare-fun d!2165859 () Bool)

(declare-fun c!1286101 () Bool)

(assert (=> d!2165859 (= c!1286101 ((_ is EmptyExpr!16935) lt!2472631))))

(assert (=> d!2165859 (= (matchRSpec!3992 lt!2472631 s!14361) e!4169499)))

(declare-fun b!6928861 () Bool)

(declare-fun c!1286102 () Bool)

(assert (=> b!6928861 (= c!1286102 ((_ is Union!16935) lt!2472631))))

(assert (=> b!6928861 (= e!4169502 e!4169496)))

(declare-fun b!6928862 () Bool)

(assert (=> b!6928862 (= e!4169496 e!4169498)))

(declare-fun c!1286100 () Bool)

(assert (=> b!6928862 (= c!1286100 ((_ is Star!16935) lt!2472631))))

(assert (=> b!6928863 (= e!4169498 call!629672)))

(declare-fun bm!629668 () Bool)

(assert (=> bm!629668 (= call!629672 (Exists!3937 (ite c!1286100 lambda!394310 lambda!394311)))))

(assert (= (and d!2165859 c!1286101) b!6928857))

(assert (= (and d!2165859 (not c!1286101)) b!6928854))

(assert (= (and b!6928854 res!2825938) b!6928858))

(assert (= (and b!6928858 c!1286103) b!6928856))

(assert (= (and b!6928858 (not c!1286103)) b!6928861))

(assert (= (and b!6928861 c!1286102) b!6928859))

(assert (= (and b!6928861 (not c!1286102)) b!6928862))

(assert (= (and b!6928859 (not res!2825937)) b!6928855))

(assert (= (and b!6928862 c!1286100) b!6928860))

(assert (= (and b!6928862 (not c!1286100)) b!6928863))

(assert (= (and b!6928860 (not res!2825936)) b!6928853))

(assert (= (or b!6928853 b!6928863) bm!629668))

(assert (= (or b!6928857 b!6928860) bm!629667))

(declare-fun m!7637322 () Bool)

(assert (=> b!6928855 m!7637322))

(declare-fun m!7637324 () Bool)

(assert (=> b!6928859 m!7637324))

(assert (=> bm!629667 m!7637294))

(declare-fun m!7637326 () Bool)

(assert (=> bm!629668 m!7637326))

(assert (=> b!6928177 d!2165859))

(declare-fun bs!1850125 () Bool)

(declare-fun b!6928931 () Bool)

(assert (= bs!1850125 (and b!6928931 b!6928179)))

(declare-fun lambda!394312 () Int)

(assert (=> bs!1850125 (not (= lambda!394312 lambda!394249))))

(declare-fun bs!1850126 () Bool)

(assert (= bs!1850126 (and b!6928931 d!2165795)))

(assert (=> bs!1850126 (not (= lambda!394312 lambda!394302))))

(assert (=> bs!1850126 (not (= lambda!394312 lambda!394304))))

(declare-fun bs!1850127 () Bool)

(assert (= bs!1850127 (and b!6928931 d!2165841)))

(assert (=> bs!1850127 (not (= lambda!394312 lambda!394307))))

(declare-fun bs!1850128 () Bool)

(assert (= bs!1850128 (and b!6928931 b!6928182)))

(assert (=> bs!1850128 (not (= lambda!394312 lambda!394248))))

(declare-fun bs!1850129 () Bool)

(assert (= bs!1850129 (and b!6928931 b!6928188)))

(assert (=> bs!1850129 (not (= lambda!394312 lambda!394251))))

(declare-fun bs!1850130 () Bool)

(assert (= bs!1850130 (and b!6928931 d!2165703)))

(assert (=> bs!1850130 (not (= lambda!394312 lambda!394275))))

(declare-fun bs!1850131 () Bool)

(assert (= bs!1850131 (and b!6928931 b!6928707)))

(assert (=> bs!1850131 (not (= lambda!394312 lambda!394299))))

(declare-fun bs!1850132 () Bool)

(assert (= bs!1850132 (and b!6928931 b!6928863)))

(assert (=> bs!1850132 (not (= lambda!394312 lambda!394311))))

(declare-fun bs!1850133 () Bool)

(assert (= bs!1850133 (and b!6928931 b!6928191)))

(assert (=> bs!1850133 (not (= lambda!394312 lambda!394254))))

(declare-fun bs!1850134 () Bool)

(assert (= bs!1850134 (and b!6928931 b!6928520)))

(assert (=> bs!1850134 (not (= lambda!394312 lambda!394292))))

(declare-fun bs!1850135 () Bool)

(assert (= bs!1850135 (and b!6928931 b!6928187)))

(assert (=> bs!1850135 (not (= lambda!394312 lambda!394253))))

(declare-fun bs!1850136 () Bool)

(assert (= bs!1850136 (and b!6928931 b!6928853)))

(assert (=> bs!1850136 (= (and (= (reg!17264 lt!2472612) (reg!17264 lt!2472631)) (= lt!2472612 lt!2472631)) (= lambda!394312 lambda!394310))))

(assert (=> bs!1850128 (not (= lambda!394312 lambda!394247))))

(declare-fun bs!1850137 () Bool)

(assert (= bs!1850137 (and b!6928931 d!2165793)))

(assert (=> bs!1850137 (not (= lambda!394312 lambda!394301))))

(declare-fun bs!1850138 () Bool)

(assert (= bs!1850138 (and b!6928931 b!6928697)))

(assert (=> bs!1850138 (= (and (= s!14361 lt!2472613) (= (reg!17264 lt!2472612) (reg!17264 lt!2472617)) (= lt!2472612 lt!2472617)) (= lambda!394312 lambda!394297))))

(declare-fun bs!1850139 () Bool)

(assert (= bs!1850139 (and b!6928931 b!6928510)))

(assert (=> bs!1850139 (= (and (= s!14361 (_1!37095 lt!2472632)) (= (reg!17264 lt!2472612) (reg!17264 lt!2472630)) (= lt!2472612 lt!2472630)) (= lambda!394312 lambda!394291))))

(assert (=> bs!1850130 (not (= lambda!394312 lambda!394276))))

(declare-fun bs!1850140 () Bool)

(assert (= bs!1850140 (and b!6928931 d!2165715)))

(assert (=> bs!1850140 (not (= lambda!394312 lambda!394281))))

(assert (=> bs!1850129 (not (= lambda!394312 lambda!394252))))

(assert (=> bs!1850125 (not (= lambda!394312 lambda!394250))))

(assert (=> b!6928931 true))

(assert (=> b!6928931 true))

(declare-fun bs!1850141 () Bool)

(declare-fun b!6928941 () Bool)

(assert (= bs!1850141 (and b!6928941 b!6928179)))

(declare-fun lambda!394313 () Int)

(assert (=> bs!1850141 (not (= lambda!394313 lambda!394249))))

(declare-fun bs!1850142 () Bool)

(assert (= bs!1850142 (and b!6928941 d!2165795)))

(assert (=> bs!1850142 (not (= lambda!394313 lambda!394302))))

(assert (=> bs!1850142 (= (and (= s!14361 lt!2472613) (= (regOne!34382 lt!2472612) r2!6280) (= (regTwo!34382 lt!2472612) r3!135)) (= lambda!394313 lambda!394304))))

(declare-fun bs!1850143 () Bool)

(assert (= bs!1850143 (and b!6928941 d!2165841)))

(assert (=> bs!1850143 (not (= lambda!394313 lambda!394307))))

(declare-fun bs!1850144 () Bool)

(assert (= bs!1850144 (and b!6928941 b!6928182)))

(assert (=> bs!1850144 (= (and (= (regOne!34382 lt!2472612) lt!2472630) (= (regTwo!34382 lt!2472612) r3!135)) (= lambda!394313 lambda!394248))))

(declare-fun bs!1850145 () Bool)

(assert (= bs!1850145 (and b!6928941 b!6928188)))

(assert (=> bs!1850145 (not (= lambda!394313 lambda!394251))))

(declare-fun bs!1850146 () Bool)

(assert (= bs!1850146 (and b!6928941 d!2165703)))

(assert (=> bs!1850146 (not (= lambda!394313 lambda!394275))))

(declare-fun bs!1850147 () Bool)

(assert (= bs!1850147 (and b!6928941 b!6928707)))

(assert (=> bs!1850147 (= (and (= s!14361 lt!2472613) (= (regOne!34382 lt!2472612) (regOne!34382 lt!2472617)) (= (regTwo!34382 lt!2472612) (regTwo!34382 lt!2472617))) (= lambda!394313 lambda!394299))))

(declare-fun bs!1850148 () Bool)

(assert (= bs!1850148 (and b!6928941 b!6928931)))

(assert (=> bs!1850148 (not (= lambda!394313 lambda!394312))))

(declare-fun bs!1850149 () Bool)

(assert (= bs!1850149 (and b!6928941 b!6928863)))

(assert (=> bs!1850149 (= (and (= (regOne!34382 lt!2472612) (regOne!34382 lt!2472631)) (= (regTwo!34382 lt!2472612) (regTwo!34382 lt!2472631))) (= lambda!394313 lambda!394311))))

(declare-fun bs!1850150 () Bool)

(assert (= bs!1850150 (and b!6928941 b!6928191)))

(assert (=> bs!1850150 (= (and (= (regOne!34382 lt!2472612) r1!6342) (= (regTwo!34382 lt!2472612) lt!2472617)) (= lambda!394313 lambda!394254))))

(declare-fun bs!1850151 () Bool)

(assert (= bs!1850151 (and b!6928941 b!6928520)))

(assert (=> bs!1850151 (= (and (= s!14361 (_1!37095 lt!2472632)) (= (regOne!34382 lt!2472612) (regOne!34382 lt!2472630)) (= (regTwo!34382 lt!2472612) (regTwo!34382 lt!2472630))) (= lambda!394313 lambda!394292))))

(declare-fun bs!1850152 () Bool)

(assert (= bs!1850152 (and b!6928941 b!6928187)))

(assert (=> bs!1850152 (not (= lambda!394313 lambda!394253))))

(declare-fun bs!1850153 () Bool)

(assert (= bs!1850153 (and b!6928941 b!6928853)))

(assert (=> bs!1850153 (not (= lambda!394313 lambda!394310))))

(assert (=> bs!1850144 (not (= lambda!394313 lambda!394247))))

(declare-fun bs!1850154 () Bool)

(assert (= bs!1850154 (and b!6928941 d!2165793)))

(assert (=> bs!1850154 (not (= lambda!394313 lambda!394301))))

(declare-fun bs!1850155 () Bool)

(assert (= bs!1850155 (and b!6928941 b!6928697)))

(assert (=> bs!1850155 (not (= lambda!394313 lambda!394297))))

(declare-fun bs!1850156 () Bool)

(assert (= bs!1850156 (and b!6928941 b!6928510)))

(assert (=> bs!1850156 (not (= lambda!394313 lambda!394291))))

(assert (=> bs!1850146 (= (and (= (regOne!34382 lt!2472612) lt!2472630) (= (regTwo!34382 lt!2472612) r3!135)) (= lambda!394313 lambda!394276))))

(declare-fun bs!1850157 () Bool)

(assert (= bs!1850157 (and b!6928941 d!2165715)))

(assert (=> bs!1850157 (not (= lambda!394313 lambda!394281))))

(assert (=> bs!1850145 (= (and (= s!14361 lt!2472613) (= (regOne!34382 lt!2472612) r2!6280) (= (regTwo!34382 lt!2472612) r3!135)) (= lambda!394313 lambda!394252))))

(assert (=> bs!1850141 (= (and (= s!14361 (_1!37095 lt!2472632)) (= (regOne!34382 lt!2472612) r1!6342) (= (regTwo!34382 lt!2472612) r2!6280)) (= lambda!394313 lambda!394250))))

(assert (=> b!6928941 true))

(assert (=> b!6928941 true))

(declare-fun e!4169526 () Bool)

(declare-fun call!629674 () Bool)

(assert (=> b!6928931 (= e!4169526 call!629674)))

(declare-fun b!6928932 () Bool)

(declare-fun e!4169524 () Bool)

(declare-fun e!4169525 () Bool)

(assert (=> b!6928932 (= e!4169524 e!4169525)))

(declare-fun res!2825941 () Bool)

(assert (=> b!6928932 (= res!2825941 (not ((_ is EmptyLang!16935) lt!2472612)))))

(assert (=> b!6928932 (=> (not res!2825941) (not e!4169525))))

(declare-fun b!6928933 () Bool)

(declare-fun e!4169522 () Bool)

(assert (=> b!6928933 (= e!4169522 (matchRSpec!3992 (regTwo!34383 lt!2472612) s!14361))))

(declare-fun b!6928935 () Bool)

(declare-fun call!629675 () Bool)

(assert (=> b!6928935 (= e!4169524 call!629675)))

(declare-fun b!6928936 () Bool)

(declare-fun c!1286107 () Bool)

(assert (=> b!6928936 (= c!1286107 ((_ is ElementMatch!16935) lt!2472612))))

(declare-fun e!4169527 () Bool)

(assert (=> b!6928936 (= e!4169525 e!4169527)))

(declare-fun b!6928937 () Bool)

(declare-fun e!4169521 () Bool)

(assert (=> b!6928937 (= e!4169521 e!4169522)))

(declare-fun res!2825940 () Bool)

(assert (=> b!6928937 (= res!2825940 (matchRSpec!3992 (regOne!34383 lt!2472612) s!14361))))

(assert (=> b!6928937 (=> res!2825940 e!4169522)))

(declare-fun b!6928938 () Bool)

(declare-fun res!2825939 () Bool)

(assert (=> b!6928938 (=> res!2825939 e!4169526)))

(assert (=> b!6928938 (= res!2825939 call!629675)))

(declare-fun e!4169523 () Bool)

(assert (=> b!6928938 (= e!4169523 e!4169526)))

(declare-fun bm!629669 () Bool)

(assert (=> bm!629669 (= call!629675 (isEmpty!38823 s!14361))))

(declare-fun b!6928934 () Bool)

(assert (=> b!6928934 (= e!4169527 (= s!14361 (Cons!66564 (c!1285947 lt!2472612) Nil!66564)))))

(declare-fun d!2165863 () Bool)

(declare-fun c!1286105 () Bool)

(assert (=> d!2165863 (= c!1286105 ((_ is EmptyExpr!16935) lt!2472612))))

(assert (=> d!2165863 (= (matchRSpec!3992 lt!2472612 s!14361) e!4169524)))

(declare-fun b!6928939 () Bool)

(declare-fun c!1286106 () Bool)

(assert (=> b!6928939 (= c!1286106 ((_ is Union!16935) lt!2472612))))

(assert (=> b!6928939 (= e!4169527 e!4169521)))

(declare-fun b!6928940 () Bool)

(assert (=> b!6928940 (= e!4169521 e!4169523)))

(declare-fun c!1286104 () Bool)

(assert (=> b!6928940 (= c!1286104 ((_ is Star!16935) lt!2472612))))

(assert (=> b!6928941 (= e!4169523 call!629674)))

(declare-fun bm!629670 () Bool)

(assert (=> bm!629670 (= call!629674 (Exists!3937 (ite c!1286104 lambda!394312 lambda!394313)))))

(assert (= (and d!2165863 c!1286105) b!6928935))

(assert (= (and d!2165863 (not c!1286105)) b!6928932))

(assert (= (and b!6928932 res!2825941) b!6928936))

(assert (= (and b!6928936 c!1286107) b!6928934))

(assert (= (and b!6928936 (not c!1286107)) b!6928939))

(assert (= (and b!6928939 c!1286106) b!6928937))

(assert (= (and b!6928939 (not c!1286106)) b!6928940))

(assert (= (and b!6928937 (not res!2825940)) b!6928933))

(assert (= (and b!6928940 c!1286104) b!6928938))

(assert (= (and b!6928940 (not c!1286104)) b!6928941))

(assert (= (and b!6928938 (not res!2825939)) b!6928931))

(assert (= (or b!6928931 b!6928941) bm!629670))

(assert (= (or b!6928935 b!6928938) bm!629669))

(declare-fun m!7637328 () Bool)

(assert (=> b!6928933 m!7637328))

(declare-fun m!7637330 () Bool)

(assert (=> b!6928937 m!7637330))

(assert (=> bm!629669 m!7637294))

(declare-fun m!7637332 () Bool)

(assert (=> bm!629670 m!7637332))

(assert (=> b!6928177 d!2165863))

(declare-fun b!6928950 () Bool)

(declare-fun e!4169536 () Bool)

(assert (=> b!6928950 (= e!4169536 (not (= (head!13888 (_2!37095 lt!2472636)) (c!1285947 r2!6280))))))

(declare-fun b!6928951 () Bool)

(declare-fun e!4169535 () Bool)

(assert (=> b!6928951 (= e!4169535 (= (head!13888 (_2!37095 lt!2472636)) (c!1285947 r2!6280)))))

(declare-fun b!6928952 () Bool)

(declare-fun res!2825947 () Bool)

(assert (=> b!6928952 (=> (not res!2825947) (not e!4169535))))

(assert (=> b!6928952 (= res!2825947 (isEmpty!38823 (tail!12940 (_2!37095 lt!2472636))))))

(declare-fun b!6928953 () Bool)

(declare-fun e!4169532 () Bool)

(declare-fun e!4169533 () Bool)

(assert (=> b!6928953 (= e!4169532 e!4169533)))

(declare-fun res!2825946 () Bool)

(assert (=> b!6928953 (=> (not res!2825946) (not e!4169533))))

(declare-fun lt!2472750 () Bool)

(assert (=> b!6928953 (= res!2825946 (not lt!2472750))))

(declare-fun b!6928954 () Bool)

(assert (=> b!6928954 (= e!4169533 e!4169536)))

(declare-fun res!2825944 () Bool)

(assert (=> b!6928954 (=> res!2825944 e!4169536)))

(declare-fun call!629676 () Bool)

(assert (=> b!6928954 (= res!2825944 call!629676)))

(declare-fun bm!629671 () Bool)

(assert (=> bm!629671 (= call!629676 (isEmpty!38823 (_2!37095 lt!2472636)))))

(declare-fun b!6928955 () Bool)

(declare-fun e!4169530 () Bool)

(assert (=> b!6928955 (= e!4169530 (not lt!2472750))))

(declare-fun b!6928956 () Bool)

(declare-fun res!2825949 () Bool)

(assert (=> b!6928956 (=> res!2825949 e!4169532)))

(assert (=> b!6928956 (= res!2825949 e!4169535)))

(declare-fun res!2825942 () Bool)

(assert (=> b!6928956 (=> (not res!2825942) (not e!4169535))))

(assert (=> b!6928956 (= res!2825942 lt!2472750)))

(declare-fun b!6928957 () Bool)

(declare-fun res!2825948 () Bool)

(assert (=> b!6928957 (=> (not res!2825948) (not e!4169535))))

(assert (=> b!6928957 (= res!2825948 (not call!629676))))

(declare-fun b!6928958 () Bool)

(declare-fun e!4169534 () Bool)

(assert (=> b!6928958 (= e!4169534 (matchR!9074 (derivativeStep!5435 r2!6280 (head!13888 (_2!37095 lt!2472636))) (tail!12940 (_2!37095 lt!2472636))))))

(declare-fun b!6928959 () Bool)

(declare-fun e!4169531 () Bool)

(assert (=> b!6928959 (= e!4169531 (= lt!2472750 call!629676))))

(declare-fun b!6928960 () Bool)

(assert (=> b!6928960 (= e!4169531 e!4169530)))

(declare-fun c!1286108 () Bool)

(assert (=> b!6928960 (= c!1286108 ((_ is EmptyLang!16935) r2!6280))))

(declare-fun b!6928961 () Bool)

(declare-fun res!2825945 () Bool)

(assert (=> b!6928961 (=> res!2825945 e!4169532)))

(assert (=> b!6928961 (= res!2825945 (not ((_ is ElementMatch!16935) r2!6280)))))

(assert (=> b!6928961 (= e!4169530 e!4169532)))

(declare-fun d!2165865 () Bool)

(assert (=> d!2165865 e!4169531))

(declare-fun c!1286110 () Bool)

(assert (=> d!2165865 (= c!1286110 ((_ is EmptyExpr!16935) r2!6280))))

(assert (=> d!2165865 (= lt!2472750 e!4169534)))

(declare-fun c!1286109 () Bool)

(assert (=> d!2165865 (= c!1286109 (isEmpty!38823 (_2!37095 lt!2472636)))))

(assert (=> d!2165865 (validRegex!8641 r2!6280)))

(assert (=> d!2165865 (= (matchR!9074 r2!6280 (_2!37095 lt!2472636)) lt!2472750)))

(declare-fun b!6928962 () Bool)

(assert (=> b!6928962 (= e!4169534 (nullable!6760 r2!6280))))

(declare-fun b!6928963 () Bool)

(declare-fun res!2825943 () Bool)

(assert (=> b!6928963 (=> res!2825943 e!4169536)))

(assert (=> b!6928963 (= res!2825943 (not (isEmpty!38823 (tail!12940 (_2!37095 lt!2472636)))))))

(assert (= (and d!2165865 c!1286109) b!6928962))

(assert (= (and d!2165865 (not c!1286109)) b!6928958))

(assert (= (and d!2165865 c!1286110) b!6928959))

(assert (= (and d!2165865 (not c!1286110)) b!6928960))

(assert (= (and b!6928960 c!1286108) b!6928955))

(assert (= (and b!6928960 (not c!1286108)) b!6928961))

(assert (= (and b!6928961 (not res!2825945)) b!6928956))

(assert (= (and b!6928956 res!2825942) b!6928957))

(assert (= (and b!6928957 res!2825948) b!6928952))

(assert (= (and b!6928952 res!2825947) b!6928951))

(assert (= (and b!6928956 (not res!2825949)) b!6928953))

(assert (= (and b!6928953 res!2825946) b!6928954))

(assert (= (and b!6928954 (not res!2825944)) b!6928963))

(assert (= (and b!6928963 (not res!2825943)) b!6928950))

(assert (= (or b!6928959 b!6928954 b!6928957) bm!629671))

(declare-fun m!7637334 () Bool)

(assert (=> b!6928952 m!7637334))

(assert (=> b!6928952 m!7637334))

(declare-fun m!7637336 () Bool)

(assert (=> b!6928952 m!7637336))

(assert (=> b!6928963 m!7637334))

(assert (=> b!6928963 m!7637334))

(assert (=> b!6928963 m!7637336))

(declare-fun m!7637338 () Bool)

(assert (=> d!2165865 m!7637338))

(assert (=> d!2165865 m!7636702))

(declare-fun m!7637340 () Bool)

(assert (=> b!6928951 m!7637340))

(assert (=> b!6928958 m!7637340))

(assert (=> b!6928958 m!7637340))

(declare-fun m!7637342 () Bool)

(assert (=> b!6928958 m!7637342))

(assert (=> b!6928958 m!7637334))

(assert (=> b!6928958 m!7637342))

(assert (=> b!6928958 m!7637334))

(declare-fun m!7637344 () Bool)

(assert (=> b!6928958 m!7637344))

(assert (=> bm!629671 m!7637338))

(declare-fun m!7637346 () Bool)

(assert (=> b!6928962 m!7637346))

(assert (=> b!6928950 m!7637340))

(assert (=> b!6928180 d!2165865))

(assert (=> b!6928191 d!2165835))

(declare-fun d!2165867 () Bool)

(assert (=> d!2165867 (= (Exists!3937 lambda!394254) (choose!51598 lambda!394254))))

(declare-fun bs!1850158 () Bool)

(assert (= bs!1850158 d!2165867))

(declare-fun m!7637348 () Bool)

(assert (=> bs!1850158 m!7637348))

(assert (=> b!6928191 d!2165867))

(declare-fun bs!1850159 () Bool)

(declare-fun d!2165869 () Bool)

(assert (= bs!1850159 (and d!2165869 b!6928179)))

(declare-fun lambda!394314 () Int)

(assert (=> bs!1850159 (= (and (= s!14361 (_1!37095 lt!2472632)) (= lt!2472617 r2!6280)) (= lambda!394314 lambda!394249))))

(declare-fun bs!1850160 () Bool)

(assert (= bs!1850160 (and d!2165869 d!2165795)))

(assert (=> bs!1850160 (= (and (= s!14361 lt!2472613) (= r1!6342 r2!6280) (= lt!2472617 r3!135)) (= lambda!394314 lambda!394302))))

(assert (=> bs!1850160 (not (= lambda!394314 lambda!394304))))

(declare-fun bs!1850161 () Bool)

(assert (= bs!1850161 (and d!2165869 b!6928941)))

(assert (=> bs!1850161 (not (= lambda!394314 lambda!394313))))

(declare-fun bs!1850162 () Bool)

(assert (= bs!1850162 (and d!2165869 d!2165841)))

(assert (=> bs!1850162 (= lambda!394314 lambda!394307)))

(declare-fun bs!1850163 () Bool)

(assert (= bs!1850163 (and d!2165869 b!6928182)))

(assert (=> bs!1850163 (not (= lambda!394314 lambda!394248))))

(declare-fun bs!1850164 () Bool)

(assert (= bs!1850164 (and d!2165869 b!6928188)))

(assert (=> bs!1850164 (= (and (= s!14361 lt!2472613) (= r1!6342 r2!6280) (= lt!2472617 r3!135)) (= lambda!394314 lambda!394251))))

(declare-fun bs!1850165 () Bool)

(assert (= bs!1850165 (and d!2165869 d!2165703)))

(assert (=> bs!1850165 (= (and (= r1!6342 lt!2472630) (= lt!2472617 r3!135)) (= lambda!394314 lambda!394275))))

(declare-fun bs!1850166 () Bool)

(assert (= bs!1850166 (and d!2165869 b!6928707)))

(assert (=> bs!1850166 (not (= lambda!394314 lambda!394299))))

(declare-fun bs!1850167 () Bool)

(assert (= bs!1850167 (and d!2165869 b!6928931)))

(assert (=> bs!1850167 (not (= lambda!394314 lambda!394312))))

(declare-fun bs!1850168 () Bool)

(assert (= bs!1850168 (and d!2165869 b!6928863)))

(assert (=> bs!1850168 (not (= lambda!394314 lambda!394311))))

(declare-fun bs!1850169 () Bool)

(assert (= bs!1850169 (and d!2165869 b!6928191)))

(assert (=> bs!1850169 (not (= lambda!394314 lambda!394254))))

(declare-fun bs!1850170 () Bool)

(assert (= bs!1850170 (and d!2165869 b!6928520)))

(assert (=> bs!1850170 (not (= lambda!394314 lambda!394292))))

(declare-fun bs!1850171 () Bool)

(assert (= bs!1850171 (and d!2165869 b!6928187)))

(assert (=> bs!1850171 (= lambda!394314 lambda!394253)))

(declare-fun bs!1850172 () Bool)

(assert (= bs!1850172 (and d!2165869 b!6928853)))

(assert (=> bs!1850172 (not (= lambda!394314 lambda!394310))))

(assert (=> bs!1850163 (= (and (= r1!6342 lt!2472630) (= lt!2472617 r3!135)) (= lambda!394314 lambda!394247))))

(declare-fun bs!1850173 () Bool)

(assert (= bs!1850173 (and d!2165869 d!2165793)))

(assert (=> bs!1850173 (= (and (= s!14361 lt!2472613) (= r1!6342 r2!6280) (= lt!2472617 r3!135)) (= lambda!394314 lambda!394301))))

(declare-fun bs!1850174 () Bool)

(assert (= bs!1850174 (and d!2165869 b!6928697)))

(assert (=> bs!1850174 (not (= lambda!394314 lambda!394297))))

(declare-fun bs!1850175 () Bool)

(assert (= bs!1850175 (and d!2165869 b!6928510)))

(assert (=> bs!1850175 (not (= lambda!394314 lambda!394291))))

(assert (=> bs!1850165 (not (= lambda!394314 lambda!394276))))

(declare-fun bs!1850176 () Bool)

(assert (= bs!1850176 (and d!2165869 d!2165715)))

(assert (=> bs!1850176 (= (and (= r1!6342 lt!2472630) (= lt!2472617 r3!135)) (= lambda!394314 lambda!394281))))

(assert (=> bs!1850164 (not (= lambda!394314 lambda!394252))))

(assert (=> bs!1850159 (not (= lambda!394314 lambda!394250))))

(assert (=> d!2165869 true))

(assert (=> d!2165869 true))

(assert (=> d!2165869 true))

(declare-fun lambda!394315 () Int)

(assert (=> bs!1850159 (not (= lambda!394315 lambda!394249))))

(assert (=> bs!1850160 (not (= lambda!394315 lambda!394302))))

(assert (=> bs!1850160 (= (and (= s!14361 lt!2472613) (= r1!6342 r2!6280) (= lt!2472617 r3!135)) (= lambda!394315 lambda!394304))))

(assert (=> bs!1850161 (= (and (= r1!6342 (regOne!34382 lt!2472612)) (= lt!2472617 (regTwo!34382 lt!2472612))) (= lambda!394315 lambda!394313))))

(assert (=> bs!1850162 (not (= lambda!394315 lambda!394307))))

(assert (=> bs!1850163 (= (and (= r1!6342 lt!2472630) (= lt!2472617 r3!135)) (= lambda!394315 lambda!394248))))

(assert (=> bs!1850164 (not (= lambda!394315 lambda!394251))))

(assert (=> bs!1850165 (not (= lambda!394315 lambda!394275))))

(assert (=> bs!1850166 (= (and (= s!14361 lt!2472613) (= r1!6342 (regOne!34382 lt!2472617)) (= lt!2472617 (regTwo!34382 lt!2472617))) (= lambda!394315 lambda!394299))))

(assert (=> bs!1850167 (not (= lambda!394315 lambda!394312))))

(assert (=> bs!1850168 (= (and (= r1!6342 (regOne!34382 lt!2472631)) (= lt!2472617 (regTwo!34382 lt!2472631))) (= lambda!394315 lambda!394311))))

(assert (=> bs!1850169 (= lambda!394315 lambda!394254)))

(assert (=> bs!1850170 (= (and (= s!14361 (_1!37095 lt!2472632)) (= r1!6342 (regOne!34382 lt!2472630)) (= lt!2472617 (regTwo!34382 lt!2472630))) (= lambda!394315 lambda!394292))))

(assert (=> bs!1850171 (not (= lambda!394315 lambda!394253))))

(assert (=> bs!1850172 (not (= lambda!394315 lambda!394310))))

(declare-fun bs!1850177 () Bool)

(assert (= bs!1850177 d!2165869))

(assert (=> bs!1850177 (not (= lambda!394315 lambda!394314))))

(assert (=> bs!1850163 (not (= lambda!394315 lambda!394247))))

(assert (=> bs!1850173 (not (= lambda!394315 lambda!394301))))

(assert (=> bs!1850174 (not (= lambda!394315 lambda!394297))))

(assert (=> bs!1850175 (not (= lambda!394315 lambda!394291))))

(assert (=> bs!1850165 (= (and (= r1!6342 lt!2472630) (= lt!2472617 r3!135)) (= lambda!394315 lambda!394276))))

(assert (=> bs!1850176 (not (= lambda!394315 lambda!394281))))

(assert (=> bs!1850164 (= (and (= s!14361 lt!2472613) (= r1!6342 r2!6280) (= lt!2472617 r3!135)) (= lambda!394315 lambda!394252))))

(assert (=> bs!1850159 (= (and (= s!14361 (_1!37095 lt!2472632)) (= lt!2472617 r2!6280)) (= lambda!394315 lambda!394250))))

(assert (=> d!2165869 true))

(assert (=> d!2165869 true))

(assert (=> d!2165869 true))

(assert (=> d!2165869 (= (Exists!3937 lambda!394314) (Exists!3937 lambda!394315))))

(declare-fun lt!2472751 () Unit!160594)

(assert (=> d!2165869 (= lt!2472751 (choose!51600 r1!6342 lt!2472617 s!14361))))

(assert (=> d!2165869 (validRegex!8641 r1!6342)))

(assert (=> d!2165869 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2404 r1!6342 lt!2472617 s!14361) lt!2472751)))

(declare-fun m!7637350 () Bool)

(assert (=> bs!1850177 m!7637350))

(declare-fun m!7637352 () Bool)

(assert (=> bs!1850177 m!7637352))

(declare-fun m!7637354 () Bool)

(assert (=> bs!1850177 m!7637354))

(assert (=> bs!1850177 m!7636606))

(assert (=> b!6928191 d!2165869))

(declare-fun d!2165871 () Bool)

(assert (=> d!2165871 (= (get!23343 lt!2472627) (v!52975 lt!2472627))))

(assert (=> b!6928179 d!2165871))

(declare-fun bs!1850178 () Bool)

(declare-fun d!2165873 () Bool)

(assert (= bs!1850178 (and d!2165873 b!6928179)))

(declare-fun lambda!394316 () Int)

(assert (=> bs!1850178 (= lambda!394316 lambda!394249)))

(declare-fun bs!1850179 () Bool)

(assert (= bs!1850179 (and d!2165873 d!2165795)))

(assert (=> bs!1850179 (= (and (= (_1!37095 lt!2472632) lt!2472613) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394316 lambda!394302))))

(assert (=> bs!1850179 (not (= lambda!394316 lambda!394304))))

(declare-fun bs!1850180 () Bool)

(assert (= bs!1850180 (and d!2165873 b!6928941)))

(assert (=> bs!1850180 (not (= lambda!394316 lambda!394313))))

(declare-fun bs!1850181 () Bool)

(assert (= bs!1850181 (and d!2165873 d!2165841)))

(assert (=> bs!1850181 (= (and (= (_1!37095 lt!2472632) s!14361) (= r2!6280 lt!2472617)) (= lambda!394316 lambda!394307))))

(declare-fun bs!1850182 () Bool)

(assert (= bs!1850182 (and d!2165873 b!6928182)))

(assert (=> bs!1850182 (not (= lambda!394316 lambda!394248))))

(declare-fun bs!1850183 () Bool)

(assert (= bs!1850183 (and d!2165873 b!6928188)))

(assert (=> bs!1850183 (= (and (= (_1!37095 lt!2472632) lt!2472613) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394316 lambda!394251))))

(declare-fun bs!1850184 () Bool)

(assert (= bs!1850184 (and d!2165873 d!2165703)))

(assert (=> bs!1850184 (= (and (= (_1!37095 lt!2472632) s!14361) (= r1!6342 lt!2472630) (= r2!6280 r3!135)) (= lambda!394316 lambda!394275))))

(declare-fun bs!1850185 () Bool)

(assert (= bs!1850185 (and d!2165873 b!6928707)))

(assert (=> bs!1850185 (not (= lambda!394316 lambda!394299))))

(declare-fun bs!1850186 () Bool)

(assert (= bs!1850186 (and d!2165873 b!6928931)))

(assert (=> bs!1850186 (not (= lambda!394316 lambda!394312))))

(declare-fun bs!1850187 () Bool)

(assert (= bs!1850187 (and d!2165873 b!6928863)))

(assert (=> bs!1850187 (not (= lambda!394316 lambda!394311))))

(declare-fun bs!1850188 () Bool)

(assert (= bs!1850188 (and d!2165873 b!6928191)))

(assert (=> bs!1850188 (not (= lambda!394316 lambda!394254))))

(declare-fun bs!1850189 () Bool)

(assert (= bs!1850189 (and d!2165873 b!6928187)))

(assert (=> bs!1850189 (= (and (= (_1!37095 lt!2472632) s!14361) (= r2!6280 lt!2472617)) (= lambda!394316 lambda!394253))))

(declare-fun bs!1850190 () Bool)

(assert (= bs!1850190 (and d!2165873 b!6928853)))

(assert (=> bs!1850190 (not (= lambda!394316 lambda!394310))))

(declare-fun bs!1850191 () Bool)

(assert (= bs!1850191 (and d!2165873 d!2165869)))

(assert (=> bs!1850191 (= (and (= (_1!37095 lt!2472632) s!14361) (= r2!6280 lt!2472617)) (= lambda!394316 lambda!394314))))

(assert (=> bs!1850182 (= (and (= (_1!37095 lt!2472632) s!14361) (= r1!6342 lt!2472630) (= r2!6280 r3!135)) (= lambda!394316 lambda!394247))))

(declare-fun bs!1850192 () Bool)

(assert (= bs!1850192 (and d!2165873 d!2165793)))

(assert (=> bs!1850192 (= (and (= (_1!37095 lt!2472632) lt!2472613) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394316 lambda!394301))))

(declare-fun bs!1850193 () Bool)

(assert (= bs!1850193 (and d!2165873 b!6928697)))

(assert (=> bs!1850193 (not (= lambda!394316 lambda!394297))))

(declare-fun bs!1850194 () Bool)

(assert (= bs!1850194 (and d!2165873 b!6928510)))

(assert (=> bs!1850194 (not (= lambda!394316 lambda!394291))))

(assert (=> bs!1850191 (not (= lambda!394316 lambda!394315))))

(declare-fun bs!1850195 () Bool)

(assert (= bs!1850195 (and d!2165873 b!6928520)))

(assert (=> bs!1850195 (not (= lambda!394316 lambda!394292))))

(assert (=> bs!1850184 (not (= lambda!394316 lambda!394276))))

(declare-fun bs!1850196 () Bool)

(assert (= bs!1850196 (and d!2165873 d!2165715)))

(assert (=> bs!1850196 (= (and (= (_1!37095 lt!2472632) s!14361) (= r1!6342 lt!2472630) (= r2!6280 r3!135)) (= lambda!394316 lambda!394281))))

(assert (=> bs!1850183 (not (= lambda!394316 lambda!394252))))

(assert (=> bs!1850178 (not (= lambda!394316 lambda!394250))))

(assert (=> d!2165873 true))

(assert (=> d!2165873 true))

(assert (=> d!2165873 true))

(assert (=> d!2165873 (= (isDefined!13407 (findConcatSeparation!3118 r1!6342 r2!6280 Nil!66564 (_1!37095 lt!2472632) (_1!37095 lt!2472632))) (Exists!3937 lambda!394316))))

(declare-fun lt!2472752 () Unit!160594)

(assert (=> d!2165873 (= lt!2472752 (choose!51602 r1!6342 r2!6280 (_1!37095 lt!2472632)))))

(assert (=> d!2165873 (validRegex!8641 r1!6342)))

(assert (=> d!2165873 (= (lemmaFindConcatSeparationEquivalentToExists!2880 r1!6342 r2!6280 (_1!37095 lt!2472632)) lt!2472752)))

(declare-fun bs!1850197 () Bool)

(assert (= bs!1850197 d!2165873))

(assert (=> bs!1850197 m!7636606))

(assert (=> bs!1850197 m!7636634))

(assert (=> bs!1850197 m!7636634))

(declare-fun m!7637356 () Bool)

(assert (=> bs!1850197 m!7637356))

(declare-fun m!7637358 () Bool)

(assert (=> bs!1850197 m!7637358))

(declare-fun m!7637360 () Bool)

(assert (=> bs!1850197 m!7637360))

(assert (=> b!6928179 d!2165873))

(declare-fun d!2165875 () Bool)

(assert (=> d!2165875 (= (isDefined!13407 lt!2472627) (not (isEmpty!38822 lt!2472627)))))

(declare-fun bs!1850198 () Bool)

(assert (= bs!1850198 d!2165875))

(declare-fun m!7637362 () Bool)

(assert (=> bs!1850198 m!7637362))

(assert (=> b!6928179 d!2165875))

(declare-fun b!6928964 () Bool)

(declare-fun e!4169543 () Bool)

(assert (=> b!6928964 (= e!4169543 (not (= (head!13888 (_1!37095 lt!2472636)) (c!1285947 r1!6342))))))

(declare-fun b!6928965 () Bool)

(declare-fun e!4169542 () Bool)

(assert (=> b!6928965 (= e!4169542 (= (head!13888 (_1!37095 lt!2472636)) (c!1285947 r1!6342)))))

(declare-fun b!6928966 () Bool)

(declare-fun res!2825955 () Bool)

(assert (=> b!6928966 (=> (not res!2825955) (not e!4169542))))

(assert (=> b!6928966 (= res!2825955 (isEmpty!38823 (tail!12940 (_1!37095 lt!2472636))))))

(declare-fun b!6928967 () Bool)

(declare-fun e!4169539 () Bool)

(declare-fun e!4169540 () Bool)

(assert (=> b!6928967 (= e!4169539 e!4169540)))

(declare-fun res!2825954 () Bool)

(assert (=> b!6928967 (=> (not res!2825954) (not e!4169540))))

(declare-fun lt!2472753 () Bool)

(assert (=> b!6928967 (= res!2825954 (not lt!2472753))))

(declare-fun b!6928968 () Bool)

(assert (=> b!6928968 (= e!4169540 e!4169543)))

(declare-fun res!2825952 () Bool)

(assert (=> b!6928968 (=> res!2825952 e!4169543)))

(declare-fun call!629677 () Bool)

(assert (=> b!6928968 (= res!2825952 call!629677)))

(declare-fun bm!629672 () Bool)

(assert (=> bm!629672 (= call!629677 (isEmpty!38823 (_1!37095 lt!2472636)))))

(declare-fun b!6928969 () Bool)

(declare-fun e!4169537 () Bool)

(assert (=> b!6928969 (= e!4169537 (not lt!2472753))))

(declare-fun b!6928970 () Bool)

(declare-fun res!2825957 () Bool)

(assert (=> b!6928970 (=> res!2825957 e!4169539)))

(assert (=> b!6928970 (= res!2825957 e!4169542)))

(declare-fun res!2825950 () Bool)

(assert (=> b!6928970 (=> (not res!2825950) (not e!4169542))))

(assert (=> b!6928970 (= res!2825950 lt!2472753)))

(declare-fun b!6928971 () Bool)

(declare-fun res!2825956 () Bool)

(assert (=> b!6928971 (=> (not res!2825956) (not e!4169542))))

(assert (=> b!6928971 (= res!2825956 (not call!629677))))

(declare-fun b!6928972 () Bool)

(declare-fun e!4169541 () Bool)

(assert (=> b!6928972 (= e!4169541 (matchR!9074 (derivativeStep!5435 r1!6342 (head!13888 (_1!37095 lt!2472636))) (tail!12940 (_1!37095 lt!2472636))))))

(declare-fun b!6928973 () Bool)

(declare-fun e!4169538 () Bool)

(assert (=> b!6928973 (= e!4169538 (= lt!2472753 call!629677))))

(declare-fun b!6928974 () Bool)

(assert (=> b!6928974 (= e!4169538 e!4169537)))

(declare-fun c!1286111 () Bool)

(assert (=> b!6928974 (= c!1286111 ((_ is EmptyLang!16935) r1!6342))))

(declare-fun b!6928975 () Bool)

(declare-fun res!2825953 () Bool)

(assert (=> b!6928975 (=> res!2825953 e!4169539)))

(assert (=> b!6928975 (= res!2825953 (not ((_ is ElementMatch!16935) r1!6342)))))

(assert (=> b!6928975 (= e!4169537 e!4169539)))

(declare-fun d!2165877 () Bool)

(assert (=> d!2165877 e!4169538))

(declare-fun c!1286113 () Bool)

(assert (=> d!2165877 (= c!1286113 ((_ is EmptyExpr!16935) r1!6342))))

(assert (=> d!2165877 (= lt!2472753 e!4169541)))

(declare-fun c!1286112 () Bool)

(assert (=> d!2165877 (= c!1286112 (isEmpty!38823 (_1!37095 lt!2472636)))))

(assert (=> d!2165877 (validRegex!8641 r1!6342)))

(assert (=> d!2165877 (= (matchR!9074 r1!6342 (_1!37095 lt!2472636)) lt!2472753)))

(declare-fun b!6928976 () Bool)

(assert (=> b!6928976 (= e!4169541 (nullable!6760 r1!6342))))

(declare-fun b!6928977 () Bool)

(declare-fun res!2825951 () Bool)

(assert (=> b!6928977 (=> res!2825951 e!4169543)))

(assert (=> b!6928977 (= res!2825951 (not (isEmpty!38823 (tail!12940 (_1!37095 lt!2472636)))))))

(assert (= (and d!2165877 c!1286112) b!6928976))

(assert (= (and d!2165877 (not c!1286112)) b!6928972))

(assert (= (and d!2165877 c!1286113) b!6928973))

(assert (= (and d!2165877 (not c!1286113)) b!6928974))

(assert (= (and b!6928974 c!1286111) b!6928969))

(assert (= (and b!6928974 (not c!1286111)) b!6928975))

(assert (= (and b!6928975 (not res!2825953)) b!6928970))

(assert (= (and b!6928970 res!2825950) b!6928971))

(assert (= (and b!6928971 res!2825956) b!6928966))

(assert (= (and b!6928966 res!2825955) b!6928965))

(assert (= (and b!6928970 (not res!2825957)) b!6928967))

(assert (= (and b!6928967 res!2825954) b!6928968))

(assert (= (and b!6928968 (not res!2825952)) b!6928977))

(assert (= (and b!6928977 (not res!2825951)) b!6928964))

(assert (= (or b!6928973 b!6928968 b!6928971) bm!629672))

(declare-fun m!7637364 () Bool)

(assert (=> b!6928966 m!7637364))

(assert (=> b!6928966 m!7637364))

(declare-fun m!7637366 () Bool)

(assert (=> b!6928966 m!7637366))

(assert (=> b!6928977 m!7637364))

(assert (=> b!6928977 m!7637364))

(assert (=> b!6928977 m!7637366))

(declare-fun m!7637368 () Bool)

(assert (=> d!2165877 m!7637368))

(assert (=> d!2165877 m!7636606))

(declare-fun m!7637370 () Bool)

(assert (=> b!6928965 m!7637370))

(assert (=> b!6928972 m!7637370))

(assert (=> b!6928972 m!7637370))

(declare-fun m!7637372 () Bool)

(assert (=> b!6928972 m!7637372))

(assert (=> b!6928972 m!7637364))

(assert (=> b!6928972 m!7637372))

(assert (=> b!6928972 m!7637364))

(declare-fun m!7637374 () Bool)

(assert (=> b!6928972 m!7637374))

(assert (=> bm!629672 m!7637368))

(declare-fun m!7637376 () Bool)

(assert (=> b!6928976 m!7637376))

(assert (=> b!6928964 m!7637370))

(assert (=> b!6928179 d!2165877))

(declare-fun d!2165879 () Bool)

(assert (=> d!2165879 (= (Exists!3937 lambda!394250) (choose!51598 lambda!394250))))

(declare-fun bs!1850199 () Bool)

(assert (= bs!1850199 d!2165879))

(declare-fun m!7637378 () Bool)

(assert (=> bs!1850199 m!7637378))

(assert (=> b!6928179 d!2165879))

(declare-fun b!6928978 () Bool)

(declare-fun lt!2472755 () Unit!160594)

(declare-fun lt!2472756 () Unit!160594)

(assert (=> b!6928978 (= lt!2472755 lt!2472756)))

(assert (=> b!6928978 (= (++!14978 (++!14978 Nil!66564 (Cons!66564 (h!73012 (_1!37095 lt!2472632)) Nil!66564)) (t!380431 (_1!37095 lt!2472632))) (_1!37095 lt!2472632))))

(assert (=> b!6928978 (= lt!2472756 (lemmaMoveElementToOtherListKeepsConcatEq!2839 Nil!66564 (h!73012 (_1!37095 lt!2472632)) (t!380431 (_1!37095 lt!2472632)) (_1!37095 lt!2472632)))))

(declare-fun e!4169547 () Option!16704)

(assert (=> b!6928978 (= e!4169547 (findConcatSeparation!3118 r1!6342 r2!6280 (++!14978 Nil!66564 (Cons!66564 (h!73012 (_1!37095 lt!2472632)) Nil!66564)) (t!380431 (_1!37095 lt!2472632)) (_1!37095 lt!2472632)))))

(declare-fun b!6928979 () Bool)

(declare-fun res!2825960 () Bool)

(declare-fun e!4169546 () Bool)

(assert (=> b!6928979 (=> (not res!2825960) (not e!4169546))))

(declare-fun lt!2472754 () Option!16704)

(assert (=> b!6928979 (= res!2825960 (matchR!9074 r1!6342 (_1!37095 (get!23343 lt!2472754))))))

(declare-fun b!6928980 () Bool)

(assert (=> b!6928980 (= e!4169547 None!16703)))

(declare-fun b!6928981 () Bool)

(declare-fun e!4169548 () Option!16704)

(assert (=> b!6928981 (= e!4169548 (Some!16703 (tuple2!67585 Nil!66564 (_1!37095 lt!2472632))))))

(declare-fun b!6928982 () Bool)

(declare-fun e!4169545 () Bool)

(assert (=> b!6928982 (= e!4169545 (not (isDefined!13407 lt!2472754)))))

(declare-fun b!6928983 () Bool)

(assert (=> b!6928983 (= e!4169548 e!4169547)))

(declare-fun c!1286114 () Bool)

(assert (=> b!6928983 (= c!1286114 ((_ is Nil!66564) (_1!37095 lt!2472632)))))

(declare-fun b!6928984 () Bool)

(declare-fun res!2825962 () Bool)

(assert (=> b!6928984 (=> (not res!2825962) (not e!4169546))))

(assert (=> b!6928984 (= res!2825962 (matchR!9074 r2!6280 (_2!37095 (get!23343 lt!2472754))))))

(declare-fun d!2165881 () Bool)

(assert (=> d!2165881 e!4169545))

(declare-fun res!2825958 () Bool)

(assert (=> d!2165881 (=> res!2825958 e!4169545)))

(assert (=> d!2165881 (= res!2825958 e!4169546)))

(declare-fun res!2825961 () Bool)

(assert (=> d!2165881 (=> (not res!2825961) (not e!4169546))))

(assert (=> d!2165881 (= res!2825961 (isDefined!13407 lt!2472754))))

(assert (=> d!2165881 (= lt!2472754 e!4169548)))

(declare-fun c!1286115 () Bool)

(declare-fun e!4169544 () Bool)

(assert (=> d!2165881 (= c!1286115 e!4169544)))

(declare-fun res!2825959 () Bool)

(assert (=> d!2165881 (=> (not res!2825959) (not e!4169544))))

(assert (=> d!2165881 (= res!2825959 (matchR!9074 r1!6342 Nil!66564))))

(assert (=> d!2165881 (validRegex!8641 r1!6342)))

(assert (=> d!2165881 (= (findConcatSeparation!3118 r1!6342 r2!6280 Nil!66564 (_1!37095 lt!2472632) (_1!37095 lt!2472632)) lt!2472754)))

(declare-fun b!6928985 () Bool)

(assert (=> b!6928985 (= e!4169546 (= (++!14978 (_1!37095 (get!23343 lt!2472754)) (_2!37095 (get!23343 lt!2472754))) (_1!37095 lt!2472632)))))

(declare-fun b!6928986 () Bool)

(assert (=> b!6928986 (= e!4169544 (matchR!9074 r2!6280 (_1!37095 lt!2472632)))))

(assert (= (and d!2165881 res!2825959) b!6928986))

(assert (= (and d!2165881 c!1286115) b!6928981))

(assert (= (and d!2165881 (not c!1286115)) b!6928983))

(assert (= (and b!6928983 c!1286114) b!6928980))

(assert (= (and b!6928983 (not c!1286114)) b!6928978))

(assert (= (and d!2165881 res!2825961) b!6928979))

(assert (= (and b!6928979 res!2825960) b!6928984))

(assert (= (and b!6928984 res!2825962) b!6928985))

(assert (= (and d!2165881 (not res!2825958)) b!6928982))

(declare-fun m!7637380 () Bool)

(assert (=> b!6928986 m!7637380))

(declare-fun m!7637382 () Bool)

(assert (=> b!6928984 m!7637382))

(declare-fun m!7637384 () Bool)

(assert (=> b!6928984 m!7637384))

(assert (=> b!6928985 m!7637382))

(declare-fun m!7637386 () Bool)

(assert (=> b!6928985 m!7637386))

(assert (=> b!6928979 m!7637382))

(declare-fun m!7637388 () Bool)

(assert (=> b!6928979 m!7637388))

(declare-fun m!7637390 () Bool)

(assert (=> b!6928978 m!7637390))

(assert (=> b!6928978 m!7637390))

(declare-fun m!7637392 () Bool)

(assert (=> b!6928978 m!7637392))

(declare-fun m!7637394 () Bool)

(assert (=> b!6928978 m!7637394))

(assert (=> b!6928978 m!7637390))

(declare-fun m!7637396 () Bool)

(assert (=> b!6928978 m!7637396))

(declare-fun m!7637398 () Bool)

(assert (=> b!6928982 m!7637398))

(assert (=> d!2165881 m!7637398))

(assert (=> d!2165881 m!7637252))

(assert (=> d!2165881 m!7636606))

(assert (=> b!6928179 d!2165881))

(declare-fun bs!1850200 () Bool)

(declare-fun d!2165883 () Bool)

(assert (= bs!1850200 (and d!2165883 b!6928179)))

(declare-fun lambda!394317 () Int)

(assert (=> bs!1850200 (= lambda!394317 lambda!394249)))

(declare-fun bs!1850201 () Bool)

(assert (= bs!1850201 (and d!2165883 d!2165795)))

(assert (=> bs!1850201 (= (and (= (_1!37095 lt!2472632) lt!2472613) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394317 lambda!394302))))

(assert (=> bs!1850201 (not (= lambda!394317 lambda!394304))))

(declare-fun bs!1850202 () Bool)

(assert (= bs!1850202 (and d!2165883 b!6928941)))

(assert (=> bs!1850202 (not (= lambda!394317 lambda!394313))))

(declare-fun bs!1850203 () Bool)

(assert (= bs!1850203 (and d!2165883 d!2165841)))

(assert (=> bs!1850203 (= (and (= (_1!37095 lt!2472632) s!14361) (= r2!6280 lt!2472617)) (= lambda!394317 lambda!394307))))

(declare-fun bs!1850204 () Bool)

(assert (= bs!1850204 (and d!2165883 b!6928182)))

(assert (=> bs!1850204 (not (= lambda!394317 lambda!394248))))

(declare-fun bs!1850205 () Bool)

(assert (= bs!1850205 (and d!2165883 b!6928188)))

(assert (=> bs!1850205 (= (and (= (_1!37095 lt!2472632) lt!2472613) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394317 lambda!394251))))

(declare-fun bs!1850206 () Bool)

(assert (= bs!1850206 (and d!2165883 b!6928707)))

(assert (=> bs!1850206 (not (= lambda!394317 lambda!394299))))

(declare-fun bs!1850207 () Bool)

(assert (= bs!1850207 (and d!2165883 b!6928931)))

(assert (=> bs!1850207 (not (= lambda!394317 lambda!394312))))

(declare-fun bs!1850208 () Bool)

(assert (= bs!1850208 (and d!2165883 b!6928863)))

(assert (=> bs!1850208 (not (= lambda!394317 lambda!394311))))

(declare-fun bs!1850209 () Bool)

(assert (= bs!1850209 (and d!2165883 b!6928191)))

(assert (=> bs!1850209 (not (= lambda!394317 lambda!394254))))

(declare-fun bs!1850210 () Bool)

(assert (= bs!1850210 (and d!2165883 b!6928187)))

(assert (=> bs!1850210 (= (and (= (_1!37095 lt!2472632) s!14361) (= r2!6280 lt!2472617)) (= lambda!394317 lambda!394253))))

(declare-fun bs!1850211 () Bool)

(assert (= bs!1850211 (and d!2165883 b!6928853)))

(assert (=> bs!1850211 (not (= lambda!394317 lambda!394310))))

(declare-fun bs!1850212 () Bool)

(assert (= bs!1850212 (and d!2165883 d!2165869)))

(assert (=> bs!1850212 (= (and (= (_1!37095 lt!2472632) s!14361) (= r2!6280 lt!2472617)) (= lambda!394317 lambda!394314))))

(assert (=> bs!1850204 (= (and (= (_1!37095 lt!2472632) s!14361) (= r1!6342 lt!2472630) (= r2!6280 r3!135)) (= lambda!394317 lambda!394247))))

(declare-fun bs!1850213 () Bool)

(assert (= bs!1850213 (and d!2165883 d!2165793)))

(assert (=> bs!1850213 (= (and (= (_1!37095 lt!2472632) lt!2472613) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394317 lambda!394301))))

(declare-fun bs!1850214 () Bool)

(assert (= bs!1850214 (and d!2165883 b!6928697)))

(assert (=> bs!1850214 (not (= lambda!394317 lambda!394297))))

(declare-fun bs!1850215 () Bool)

(assert (= bs!1850215 (and d!2165883 b!6928510)))

(assert (=> bs!1850215 (not (= lambda!394317 lambda!394291))))

(declare-fun bs!1850216 () Bool)

(assert (= bs!1850216 (and d!2165883 d!2165703)))

(assert (=> bs!1850216 (= (and (= (_1!37095 lt!2472632) s!14361) (= r1!6342 lt!2472630) (= r2!6280 r3!135)) (= lambda!394317 lambda!394275))))

(declare-fun bs!1850217 () Bool)

(assert (= bs!1850217 (and d!2165883 d!2165873)))

(assert (=> bs!1850217 (= lambda!394317 lambda!394316)))

(assert (=> bs!1850212 (not (= lambda!394317 lambda!394315))))

(declare-fun bs!1850218 () Bool)

(assert (= bs!1850218 (and d!2165883 b!6928520)))

(assert (=> bs!1850218 (not (= lambda!394317 lambda!394292))))

(assert (=> bs!1850216 (not (= lambda!394317 lambda!394276))))

(declare-fun bs!1850219 () Bool)

(assert (= bs!1850219 (and d!2165883 d!2165715)))

(assert (=> bs!1850219 (= (and (= (_1!37095 lt!2472632) s!14361) (= r1!6342 lt!2472630) (= r2!6280 r3!135)) (= lambda!394317 lambda!394281))))

(assert (=> bs!1850205 (not (= lambda!394317 lambda!394252))))

(assert (=> bs!1850200 (not (= lambda!394317 lambda!394250))))

(assert (=> d!2165883 true))

(assert (=> d!2165883 true))

(assert (=> d!2165883 true))

(declare-fun lambda!394318 () Int)

(assert (=> bs!1850200 (not (= lambda!394318 lambda!394249))))

(assert (=> bs!1850201 (not (= lambda!394318 lambda!394302))))

(assert (=> bs!1850201 (= (and (= (_1!37095 lt!2472632) lt!2472613) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394318 lambda!394304))))

(assert (=> bs!1850202 (= (and (= (_1!37095 lt!2472632) s!14361) (= r1!6342 (regOne!34382 lt!2472612)) (= r2!6280 (regTwo!34382 lt!2472612))) (= lambda!394318 lambda!394313))))

(assert (=> bs!1850203 (not (= lambda!394318 lambda!394307))))

(assert (=> bs!1850204 (= (and (= (_1!37095 lt!2472632) s!14361) (= r1!6342 lt!2472630) (= r2!6280 r3!135)) (= lambda!394318 lambda!394248))))

(assert (=> bs!1850205 (not (= lambda!394318 lambda!394251))))

(assert (=> bs!1850206 (= (and (= (_1!37095 lt!2472632) lt!2472613) (= r1!6342 (regOne!34382 lt!2472617)) (= r2!6280 (regTwo!34382 lt!2472617))) (= lambda!394318 lambda!394299))))

(assert (=> bs!1850207 (not (= lambda!394318 lambda!394312))))

(assert (=> bs!1850208 (= (and (= (_1!37095 lt!2472632) s!14361) (= r1!6342 (regOne!34382 lt!2472631)) (= r2!6280 (regTwo!34382 lt!2472631))) (= lambda!394318 lambda!394311))))

(assert (=> bs!1850209 (= (and (= (_1!37095 lt!2472632) s!14361) (= r2!6280 lt!2472617)) (= lambda!394318 lambda!394254))))

(assert (=> bs!1850210 (not (= lambda!394318 lambda!394253))))

(assert (=> bs!1850211 (not (= lambda!394318 lambda!394310))))

(assert (=> bs!1850212 (not (= lambda!394318 lambda!394314))))

(assert (=> bs!1850204 (not (= lambda!394318 lambda!394247))))

(assert (=> bs!1850213 (not (= lambda!394318 lambda!394301))))

(assert (=> bs!1850214 (not (= lambda!394318 lambda!394297))))

(assert (=> bs!1850215 (not (= lambda!394318 lambda!394291))))

(assert (=> bs!1850216 (not (= lambda!394318 lambda!394275))))

(assert (=> bs!1850217 (not (= lambda!394318 lambda!394316))))

(assert (=> bs!1850212 (= (and (= (_1!37095 lt!2472632) s!14361) (= r2!6280 lt!2472617)) (= lambda!394318 lambda!394315))))

(assert (=> bs!1850218 (= (and (= r1!6342 (regOne!34382 lt!2472630)) (= r2!6280 (regTwo!34382 lt!2472630))) (= lambda!394318 lambda!394292))))

(declare-fun bs!1850220 () Bool)

(assert (= bs!1850220 d!2165883))

(assert (=> bs!1850220 (not (= lambda!394318 lambda!394317))))

(assert (=> bs!1850216 (= (and (= (_1!37095 lt!2472632) s!14361) (= r1!6342 lt!2472630) (= r2!6280 r3!135)) (= lambda!394318 lambda!394276))))

(assert (=> bs!1850219 (not (= lambda!394318 lambda!394281))))

(assert (=> bs!1850205 (= (and (= (_1!37095 lt!2472632) lt!2472613) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394318 lambda!394252))))

(assert (=> bs!1850200 (= lambda!394318 lambda!394250)))

(assert (=> d!2165883 true))

(assert (=> d!2165883 true))

(assert (=> d!2165883 true))

(assert (=> d!2165883 (= (Exists!3937 lambda!394317) (Exists!3937 lambda!394318))))

(declare-fun lt!2472757 () Unit!160594)

(assert (=> d!2165883 (= lt!2472757 (choose!51600 r1!6342 r2!6280 (_1!37095 lt!2472632)))))

(assert (=> d!2165883 (validRegex!8641 r1!6342)))

(assert (=> d!2165883 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2404 r1!6342 r2!6280 (_1!37095 lt!2472632)) lt!2472757)))

(declare-fun m!7637400 () Bool)

(assert (=> bs!1850220 m!7637400))

(declare-fun m!7637402 () Bool)

(assert (=> bs!1850220 m!7637402))

(declare-fun m!7637404 () Bool)

(assert (=> bs!1850220 m!7637404))

(assert (=> bs!1850220 m!7636606))

(assert (=> b!6928179 d!2165883))

(declare-fun d!2165885 () Bool)

(assert (=> d!2165885 (= (Exists!3937 lambda!394249) (choose!51598 lambda!394249))))

(declare-fun bs!1850221 () Bool)

(assert (= bs!1850221 d!2165885))

(declare-fun m!7637406 () Bool)

(assert (=> bs!1850221 m!7637406))

(assert (=> b!6928179 d!2165885))

(declare-fun bs!1850222 () Bool)

(declare-fun b!6928987 () Bool)

(assert (= bs!1850222 (and b!6928987 b!6928179)))

(declare-fun lambda!394319 () Int)

(assert (=> bs!1850222 (not (= lambda!394319 lambda!394249))))

(declare-fun bs!1850223 () Bool)

(assert (= bs!1850223 (and b!6928987 d!2165795)))

(assert (=> bs!1850223 (not (= lambda!394319 lambda!394302))))

(assert (=> bs!1850223 (not (= lambda!394319 lambda!394304))))

(declare-fun bs!1850224 () Bool)

(assert (= bs!1850224 (and b!6928987 b!6928941)))

(assert (=> bs!1850224 (not (= lambda!394319 lambda!394313))))

(declare-fun bs!1850225 () Bool)

(assert (= bs!1850225 (and b!6928987 d!2165841)))

(assert (=> bs!1850225 (not (= lambda!394319 lambda!394307))))

(declare-fun bs!1850226 () Bool)

(assert (= bs!1850226 (and b!6928987 b!6928182)))

(assert (=> bs!1850226 (not (= lambda!394319 lambda!394248))))

(declare-fun bs!1850227 () Bool)

(assert (= bs!1850227 (and b!6928987 b!6928188)))

(assert (=> bs!1850227 (not (= lambda!394319 lambda!394251))))

(declare-fun bs!1850228 () Bool)

(assert (= bs!1850228 (and b!6928987 b!6928707)))

(assert (=> bs!1850228 (not (= lambda!394319 lambda!394299))))

(declare-fun bs!1850229 () Bool)

(assert (= bs!1850229 (and b!6928987 d!2165883)))

(assert (=> bs!1850229 (not (= lambda!394319 lambda!394318))))

(declare-fun bs!1850230 () Bool)

(assert (= bs!1850230 (and b!6928987 b!6928931)))

(assert (=> bs!1850230 (= (and (= (_1!37095 lt!2472636) s!14361) (= (reg!17264 r1!6342) (reg!17264 lt!2472612)) (= r1!6342 lt!2472612)) (= lambda!394319 lambda!394312))))

(declare-fun bs!1850231 () Bool)

(assert (= bs!1850231 (and b!6928987 b!6928863)))

(assert (=> bs!1850231 (not (= lambda!394319 lambda!394311))))

(declare-fun bs!1850232 () Bool)

(assert (= bs!1850232 (and b!6928987 b!6928191)))

(assert (=> bs!1850232 (not (= lambda!394319 lambda!394254))))

(declare-fun bs!1850233 () Bool)

(assert (= bs!1850233 (and b!6928987 b!6928187)))

(assert (=> bs!1850233 (not (= lambda!394319 lambda!394253))))

(declare-fun bs!1850234 () Bool)

(assert (= bs!1850234 (and b!6928987 b!6928853)))

(assert (=> bs!1850234 (= (and (= (_1!37095 lt!2472636) s!14361) (= (reg!17264 r1!6342) (reg!17264 lt!2472631)) (= r1!6342 lt!2472631)) (= lambda!394319 lambda!394310))))

(declare-fun bs!1850235 () Bool)

(assert (= bs!1850235 (and b!6928987 d!2165869)))

(assert (=> bs!1850235 (not (= lambda!394319 lambda!394314))))

(assert (=> bs!1850226 (not (= lambda!394319 lambda!394247))))

(declare-fun bs!1850236 () Bool)

(assert (= bs!1850236 (and b!6928987 d!2165793)))

(assert (=> bs!1850236 (not (= lambda!394319 lambda!394301))))

(declare-fun bs!1850237 () Bool)

(assert (= bs!1850237 (and b!6928987 b!6928697)))

(assert (=> bs!1850237 (= (and (= (_1!37095 lt!2472636) lt!2472613) (= (reg!17264 r1!6342) (reg!17264 lt!2472617)) (= r1!6342 lt!2472617)) (= lambda!394319 lambda!394297))))

(declare-fun bs!1850238 () Bool)

(assert (= bs!1850238 (and b!6928987 b!6928510)))

(assert (=> bs!1850238 (= (and (= (_1!37095 lt!2472636) (_1!37095 lt!2472632)) (= (reg!17264 r1!6342) (reg!17264 lt!2472630)) (= r1!6342 lt!2472630)) (= lambda!394319 lambda!394291))))

(declare-fun bs!1850239 () Bool)

(assert (= bs!1850239 (and b!6928987 d!2165703)))

(assert (=> bs!1850239 (not (= lambda!394319 lambda!394275))))

(declare-fun bs!1850240 () Bool)

(assert (= bs!1850240 (and b!6928987 d!2165873)))

(assert (=> bs!1850240 (not (= lambda!394319 lambda!394316))))

(assert (=> bs!1850235 (not (= lambda!394319 lambda!394315))))

(declare-fun bs!1850241 () Bool)

(assert (= bs!1850241 (and b!6928987 b!6928520)))

(assert (=> bs!1850241 (not (= lambda!394319 lambda!394292))))

(assert (=> bs!1850229 (not (= lambda!394319 lambda!394317))))

(assert (=> bs!1850239 (not (= lambda!394319 lambda!394276))))

(declare-fun bs!1850242 () Bool)

(assert (= bs!1850242 (and b!6928987 d!2165715)))

(assert (=> bs!1850242 (not (= lambda!394319 lambda!394281))))

(assert (=> bs!1850227 (not (= lambda!394319 lambda!394252))))

(assert (=> bs!1850222 (not (= lambda!394319 lambda!394250))))

(assert (=> b!6928987 true))

(assert (=> b!6928987 true))

(declare-fun bs!1850243 () Bool)

(declare-fun b!6928997 () Bool)

(assert (= bs!1850243 (and b!6928997 b!6928179)))

(declare-fun lambda!394320 () Int)

(assert (=> bs!1850243 (not (= lambda!394320 lambda!394249))))

(declare-fun bs!1850244 () Bool)

(assert (= bs!1850244 (and b!6928997 d!2165795)))

(assert (=> bs!1850244 (not (= lambda!394320 lambda!394302))))

(assert (=> bs!1850244 (= (and (= (_1!37095 lt!2472636) lt!2472613) (= (regOne!34382 r1!6342) r2!6280) (= (regTwo!34382 r1!6342) r3!135)) (= lambda!394320 lambda!394304))))

(declare-fun bs!1850245 () Bool)

(assert (= bs!1850245 (and b!6928997 b!6928941)))

(assert (=> bs!1850245 (= (and (= (_1!37095 lt!2472636) s!14361) (= (regOne!34382 r1!6342) (regOne!34382 lt!2472612)) (= (regTwo!34382 r1!6342) (regTwo!34382 lt!2472612))) (= lambda!394320 lambda!394313))))

(declare-fun bs!1850246 () Bool)

(assert (= bs!1850246 (and b!6928997 b!6928987)))

(assert (=> bs!1850246 (not (= lambda!394320 lambda!394319))))

(declare-fun bs!1850247 () Bool)

(assert (= bs!1850247 (and b!6928997 d!2165841)))

(assert (=> bs!1850247 (not (= lambda!394320 lambda!394307))))

(declare-fun bs!1850248 () Bool)

(assert (= bs!1850248 (and b!6928997 b!6928182)))

(assert (=> bs!1850248 (= (and (= (_1!37095 lt!2472636) s!14361) (= (regOne!34382 r1!6342) lt!2472630) (= (regTwo!34382 r1!6342) r3!135)) (= lambda!394320 lambda!394248))))

(declare-fun bs!1850249 () Bool)

(assert (= bs!1850249 (and b!6928997 b!6928188)))

(assert (=> bs!1850249 (not (= lambda!394320 lambda!394251))))

(declare-fun bs!1850250 () Bool)

(assert (= bs!1850250 (and b!6928997 b!6928707)))

(assert (=> bs!1850250 (= (and (= (_1!37095 lt!2472636) lt!2472613) (= (regOne!34382 r1!6342) (regOne!34382 lt!2472617)) (= (regTwo!34382 r1!6342) (regTwo!34382 lt!2472617))) (= lambda!394320 lambda!394299))))

(declare-fun bs!1850251 () Bool)

(assert (= bs!1850251 (and b!6928997 d!2165883)))

(assert (=> bs!1850251 (= (and (= (_1!37095 lt!2472636) (_1!37095 lt!2472632)) (= (regOne!34382 r1!6342) r1!6342) (= (regTwo!34382 r1!6342) r2!6280)) (= lambda!394320 lambda!394318))))

(declare-fun bs!1850252 () Bool)

(assert (= bs!1850252 (and b!6928997 b!6928931)))

(assert (=> bs!1850252 (not (= lambda!394320 lambda!394312))))

(declare-fun bs!1850253 () Bool)

(assert (= bs!1850253 (and b!6928997 b!6928863)))

(assert (=> bs!1850253 (= (and (= (_1!37095 lt!2472636) s!14361) (= (regOne!34382 r1!6342) (regOne!34382 lt!2472631)) (= (regTwo!34382 r1!6342) (regTwo!34382 lt!2472631))) (= lambda!394320 lambda!394311))))

(declare-fun bs!1850254 () Bool)

(assert (= bs!1850254 (and b!6928997 b!6928191)))

(assert (=> bs!1850254 (= (and (= (_1!37095 lt!2472636) s!14361) (= (regOne!34382 r1!6342) r1!6342) (= (regTwo!34382 r1!6342) lt!2472617)) (= lambda!394320 lambda!394254))))

(declare-fun bs!1850255 () Bool)

(assert (= bs!1850255 (and b!6928997 b!6928187)))

(assert (=> bs!1850255 (not (= lambda!394320 lambda!394253))))

(declare-fun bs!1850256 () Bool)

(assert (= bs!1850256 (and b!6928997 b!6928853)))

(assert (=> bs!1850256 (not (= lambda!394320 lambda!394310))))

(declare-fun bs!1850257 () Bool)

(assert (= bs!1850257 (and b!6928997 d!2165869)))

(assert (=> bs!1850257 (not (= lambda!394320 lambda!394314))))

(assert (=> bs!1850248 (not (= lambda!394320 lambda!394247))))

(declare-fun bs!1850258 () Bool)

(assert (= bs!1850258 (and b!6928997 d!2165793)))

(assert (=> bs!1850258 (not (= lambda!394320 lambda!394301))))

(declare-fun bs!1850259 () Bool)

(assert (= bs!1850259 (and b!6928997 b!6928697)))

(assert (=> bs!1850259 (not (= lambda!394320 lambda!394297))))

(declare-fun bs!1850260 () Bool)

(assert (= bs!1850260 (and b!6928997 b!6928510)))

(assert (=> bs!1850260 (not (= lambda!394320 lambda!394291))))

(declare-fun bs!1850261 () Bool)

(assert (= bs!1850261 (and b!6928997 d!2165703)))

(assert (=> bs!1850261 (not (= lambda!394320 lambda!394275))))

(declare-fun bs!1850262 () Bool)

(assert (= bs!1850262 (and b!6928997 d!2165873)))

(assert (=> bs!1850262 (not (= lambda!394320 lambda!394316))))

(assert (=> bs!1850257 (= (and (= (_1!37095 lt!2472636) s!14361) (= (regOne!34382 r1!6342) r1!6342) (= (regTwo!34382 r1!6342) lt!2472617)) (= lambda!394320 lambda!394315))))

(declare-fun bs!1850263 () Bool)

(assert (= bs!1850263 (and b!6928997 b!6928520)))

(assert (=> bs!1850263 (= (and (= (_1!37095 lt!2472636) (_1!37095 lt!2472632)) (= (regOne!34382 r1!6342) (regOne!34382 lt!2472630)) (= (regTwo!34382 r1!6342) (regTwo!34382 lt!2472630))) (= lambda!394320 lambda!394292))))

(assert (=> bs!1850251 (not (= lambda!394320 lambda!394317))))

(assert (=> bs!1850261 (= (and (= (_1!37095 lt!2472636) s!14361) (= (regOne!34382 r1!6342) lt!2472630) (= (regTwo!34382 r1!6342) r3!135)) (= lambda!394320 lambda!394276))))

(declare-fun bs!1850264 () Bool)

(assert (= bs!1850264 (and b!6928997 d!2165715)))

(assert (=> bs!1850264 (not (= lambda!394320 lambda!394281))))

(assert (=> bs!1850249 (= (and (= (_1!37095 lt!2472636) lt!2472613) (= (regOne!34382 r1!6342) r2!6280) (= (regTwo!34382 r1!6342) r3!135)) (= lambda!394320 lambda!394252))))

(assert (=> bs!1850243 (= (and (= (_1!37095 lt!2472636) (_1!37095 lt!2472632)) (= (regOne!34382 r1!6342) r1!6342) (= (regTwo!34382 r1!6342) r2!6280)) (= lambda!394320 lambda!394250))))

(assert (=> b!6928997 true))

(assert (=> b!6928997 true))

(declare-fun e!4169554 () Bool)

(declare-fun call!629678 () Bool)

(assert (=> b!6928987 (= e!4169554 call!629678)))

(declare-fun b!6928988 () Bool)

(declare-fun e!4169552 () Bool)

(declare-fun e!4169553 () Bool)

(assert (=> b!6928988 (= e!4169552 e!4169553)))

(declare-fun res!2825965 () Bool)

(assert (=> b!6928988 (= res!2825965 (not ((_ is EmptyLang!16935) r1!6342)))))

(assert (=> b!6928988 (=> (not res!2825965) (not e!4169553))))

(declare-fun b!6928989 () Bool)

(declare-fun e!4169550 () Bool)

(assert (=> b!6928989 (= e!4169550 (matchRSpec!3992 (regTwo!34383 r1!6342) (_1!37095 lt!2472636)))))

(declare-fun b!6928991 () Bool)

(declare-fun call!629679 () Bool)

(assert (=> b!6928991 (= e!4169552 call!629679)))

(declare-fun b!6928992 () Bool)

(declare-fun c!1286119 () Bool)

(assert (=> b!6928992 (= c!1286119 ((_ is ElementMatch!16935) r1!6342))))

(declare-fun e!4169555 () Bool)

(assert (=> b!6928992 (= e!4169553 e!4169555)))

(declare-fun b!6928993 () Bool)

(declare-fun e!4169549 () Bool)

(assert (=> b!6928993 (= e!4169549 e!4169550)))

(declare-fun res!2825964 () Bool)

(assert (=> b!6928993 (= res!2825964 (matchRSpec!3992 (regOne!34383 r1!6342) (_1!37095 lt!2472636)))))

(assert (=> b!6928993 (=> res!2825964 e!4169550)))

(declare-fun b!6928994 () Bool)

(declare-fun res!2825963 () Bool)

(assert (=> b!6928994 (=> res!2825963 e!4169554)))

(assert (=> b!6928994 (= res!2825963 call!629679)))

(declare-fun e!4169551 () Bool)

(assert (=> b!6928994 (= e!4169551 e!4169554)))

(declare-fun bm!629673 () Bool)

(assert (=> bm!629673 (= call!629679 (isEmpty!38823 (_1!37095 lt!2472636)))))

(declare-fun b!6928990 () Bool)

(assert (=> b!6928990 (= e!4169555 (= (_1!37095 lt!2472636) (Cons!66564 (c!1285947 r1!6342) Nil!66564)))))

(declare-fun d!2165887 () Bool)

(declare-fun c!1286117 () Bool)

(assert (=> d!2165887 (= c!1286117 ((_ is EmptyExpr!16935) r1!6342))))

(assert (=> d!2165887 (= (matchRSpec!3992 r1!6342 (_1!37095 lt!2472636)) e!4169552)))

(declare-fun b!6928995 () Bool)

(declare-fun c!1286118 () Bool)

(assert (=> b!6928995 (= c!1286118 ((_ is Union!16935) r1!6342))))

(assert (=> b!6928995 (= e!4169555 e!4169549)))

(declare-fun b!6928996 () Bool)

(assert (=> b!6928996 (= e!4169549 e!4169551)))

(declare-fun c!1286116 () Bool)

(assert (=> b!6928996 (= c!1286116 ((_ is Star!16935) r1!6342))))

(assert (=> b!6928997 (= e!4169551 call!629678)))

(declare-fun bm!629674 () Bool)

(assert (=> bm!629674 (= call!629678 (Exists!3937 (ite c!1286116 lambda!394319 lambda!394320)))))

(assert (= (and d!2165887 c!1286117) b!6928991))

(assert (= (and d!2165887 (not c!1286117)) b!6928988))

(assert (= (and b!6928988 res!2825965) b!6928992))

(assert (= (and b!6928992 c!1286119) b!6928990))

(assert (= (and b!6928992 (not c!1286119)) b!6928995))

(assert (= (and b!6928995 c!1286118) b!6928993))

(assert (= (and b!6928995 (not c!1286118)) b!6928996))

(assert (= (and b!6928993 (not res!2825964)) b!6928989))

(assert (= (and b!6928996 c!1286116) b!6928994))

(assert (= (and b!6928996 (not c!1286116)) b!6928997))

(assert (= (and b!6928994 (not res!2825963)) b!6928987))

(assert (= (or b!6928987 b!6928997) bm!629674))

(assert (= (or b!6928991 b!6928994) bm!629673))

(declare-fun m!7637408 () Bool)

(assert (=> b!6928989 m!7637408))

(declare-fun m!7637410 () Bool)

(assert (=> b!6928993 m!7637410))

(assert (=> bm!629673 m!7637368))

(declare-fun m!7637412 () Bool)

(assert (=> bm!629674 m!7637412))

(assert (=> b!6928190 d!2165887))

(declare-fun b!6928999 () Bool)

(declare-fun e!4169557 () List!66688)

(assert (=> b!6928999 (= e!4169557 (Cons!66564 (h!73012 (++!14978 (_1!37095 lt!2472636) (_2!37095 lt!2472636))) (++!14978 (t!380431 (++!14978 (_1!37095 lt!2472636) (_2!37095 lt!2472636))) (_2!37095 lt!2472632))))))

(declare-fun b!6929000 () Bool)

(declare-fun res!2825966 () Bool)

(declare-fun e!4169556 () Bool)

(assert (=> b!6929000 (=> (not res!2825966) (not e!4169556))))

(declare-fun lt!2472758 () List!66688)

(assert (=> b!6929000 (= res!2825966 (= (size!40784 lt!2472758) (+ (size!40784 (++!14978 (_1!37095 lt!2472636) (_2!37095 lt!2472636))) (size!40784 (_2!37095 lt!2472632)))))))

(declare-fun b!6929001 () Bool)

(assert (=> b!6929001 (= e!4169556 (or (not (= (_2!37095 lt!2472632) Nil!66564)) (= lt!2472758 (++!14978 (_1!37095 lt!2472636) (_2!37095 lt!2472636)))))))

(declare-fun d!2165889 () Bool)

(assert (=> d!2165889 e!4169556))

(declare-fun res!2825967 () Bool)

(assert (=> d!2165889 (=> (not res!2825967) (not e!4169556))))

(assert (=> d!2165889 (= res!2825967 (= (content!13087 lt!2472758) ((_ map or) (content!13087 (++!14978 (_1!37095 lt!2472636) (_2!37095 lt!2472636))) (content!13087 (_2!37095 lt!2472632)))))))

(assert (=> d!2165889 (= lt!2472758 e!4169557)))

(declare-fun c!1286120 () Bool)

(assert (=> d!2165889 (= c!1286120 ((_ is Nil!66564) (++!14978 (_1!37095 lt!2472636) (_2!37095 lt!2472636))))))

(assert (=> d!2165889 (= (++!14978 (++!14978 (_1!37095 lt!2472636) (_2!37095 lt!2472636)) (_2!37095 lt!2472632)) lt!2472758)))

(declare-fun b!6928998 () Bool)

(assert (=> b!6928998 (= e!4169557 (_2!37095 lt!2472632))))

(assert (= (and d!2165889 c!1286120) b!6928998))

(assert (= (and d!2165889 (not c!1286120)) b!6928999))

(assert (= (and d!2165889 res!2825967) b!6929000))

(assert (= (and b!6929000 res!2825966) b!6929001))

(declare-fun m!7637414 () Bool)

(assert (=> b!6928999 m!7637414))

(declare-fun m!7637416 () Bool)

(assert (=> b!6929000 m!7637416))

(assert (=> b!6929000 m!7636608))

(declare-fun m!7637418 () Bool)

(assert (=> b!6929000 m!7637418))

(assert (=> b!6929000 m!7637194))

(declare-fun m!7637420 () Bool)

(assert (=> d!2165889 m!7637420))

(assert (=> d!2165889 m!7636608))

(declare-fun m!7637422 () Bool)

(assert (=> d!2165889 m!7637422))

(assert (=> d!2165889 m!7637200))

(assert (=> b!6928190 d!2165889))

(declare-fun d!2165891 () Bool)

(assert (=> d!2165891 (= (matchR!9074 r2!6280 (_2!37095 lt!2472636)) (matchRSpec!3992 r2!6280 (_2!37095 lt!2472636)))))

(declare-fun lt!2472759 () Unit!160594)

(assert (=> d!2165891 (= lt!2472759 (choose!51599 r2!6280 (_2!37095 lt!2472636)))))

(assert (=> d!2165891 (validRegex!8641 r2!6280)))

(assert (=> d!2165891 (= (mainMatchTheorem!3992 r2!6280 (_2!37095 lt!2472636)) lt!2472759)))

(declare-fun bs!1850265 () Bool)

(assert (= bs!1850265 d!2165891))

(assert (=> bs!1850265 m!7636660))

(assert (=> bs!1850265 m!7636614))

(declare-fun m!7637424 () Bool)

(assert (=> bs!1850265 m!7637424))

(assert (=> bs!1850265 m!7636702))

(assert (=> b!6928190 d!2165891))

(declare-fun d!2165893 () Bool)

(assert (=> d!2165893 (= (matchR!9074 r1!6342 (_1!37095 lt!2472636)) (matchRSpec!3992 r1!6342 (_1!37095 lt!2472636)))))

(declare-fun lt!2472760 () Unit!160594)

(assert (=> d!2165893 (= lt!2472760 (choose!51599 r1!6342 (_1!37095 lt!2472636)))))

(assert (=> d!2165893 (validRegex!8641 r1!6342)))

(assert (=> d!2165893 (= (mainMatchTheorem!3992 r1!6342 (_1!37095 lt!2472636)) lt!2472760)))

(declare-fun bs!1850266 () Bool)

(assert (= bs!1850266 d!2165893))

(assert (=> bs!1850266 m!7636620))

(assert (=> bs!1850266 m!7636616))

(declare-fun m!7637426 () Bool)

(assert (=> bs!1850266 m!7637426))

(assert (=> bs!1850266 m!7636606))

(assert (=> b!6928190 d!2165893))

(declare-fun b!6929003 () Bool)

(declare-fun e!4169559 () List!66688)

(assert (=> b!6929003 (= e!4169559 (Cons!66564 (h!73012 (_1!37095 lt!2472636)) (++!14978 (t!380431 (_1!37095 lt!2472636)) (_2!37095 lt!2472636))))))

(declare-fun b!6929004 () Bool)

(declare-fun res!2825968 () Bool)

(declare-fun e!4169558 () Bool)

(assert (=> b!6929004 (=> (not res!2825968) (not e!4169558))))

(declare-fun lt!2472761 () List!66688)

(assert (=> b!6929004 (= res!2825968 (= (size!40784 lt!2472761) (+ (size!40784 (_1!37095 lt!2472636)) (size!40784 (_2!37095 lt!2472636)))))))

(declare-fun b!6929005 () Bool)

(assert (=> b!6929005 (= e!4169558 (or (not (= (_2!37095 lt!2472636) Nil!66564)) (= lt!2472761 (_1!37095 lt!2472636))))))

(declare-fun d!2165895 () Bool)

(assert (=> d!2165895 e!4169558))

(declare-fun res!2825969 () Bool)

(assert (=> d!2165895 (=> (not res!2825969) (not e!4169558))))

(assert (=> d!2165895 (= res!2825969 (= (content!13087 lt!2472761) ((_ map or) (content!13087 (_1!37095 lt!2472636)) (content!13087 (_2!37095 lt!2472636)))))))

(assert (=> d!2165895 (= lt!2472761 e!4169559)))

(declare-fun c!1286121 () Bool)

(assert (=> d!2165895 (= c!1286121 ((_ is Nil!66564) (_1!37095 lt!2472636)))))

(assert (=> d!2165895 (= (++!14978 (_1!37095 lt!2472636) (_2!37095 lt!2472636)) lt!2472761)))

(declare-fun b!6929002 () Bool)

(assert (=> b!6929002 (= e!4169559 (_2!37095 lt!2472636))))

(assert (= (and d!2165895 c!1286121) b!6929002))

(assert (= (and d!2165895 (not c!1286121)) b!6929003))

(assert (= (and d!2165895 res!2825969) b!6929004))

(assert (= (and b!6929004 res!2825968) b!6929005))

(declare-fun m!7637428 () Bool)

(assert (=> b!6929003 m!7637428))

(declare-fun m!7637430 () Bool)

(assert (=> b!6929004 m!7637430))

(assert (=> b!6929004 m!7636708))

(assert (=> b!6929004 m!7637192))

(declare-fun m!7637432 () Bool)

(assert (=> d!2165895 m!7637432))

(assert (=> d!2165895 m!7636714))

(assert (=> d!2165895 m!7637198))

(assert (=> b!6928190 d!2165895))

(declare-fun bs!1850267 () Bool)

(declare-fun b!6929006 () Bool)

(assert (= bs!1850267 (and b!6929006 b!6928179)))

(declare-fun lambda!394321 () Int)

(assert (=> bs!1850267 (not (= lambda!394321 lambda!394249))))

(declare-fun bs!1850268 () Bool)

(assert (= bs!1850268 (and b!6929006 d!2165795)))

(assert (=> bs!1850268 (not (= lambda!394321 lambda!394302))))

(assert (=> bs!1850268 (not (= lambda!394321 lambda!394304))))

(declare-fun bs!1850269 () Bool)

(assert (= bs!1850269 (and b!6929006 b!6928941)))

(assert (=> bs!1850269 (not (= lambda!394321 lambda!394313))))

(declare-fun bs!1850270 () Bool)

(assert (= bs!1850270 (and b!6929006 b!6928987)))

(assert (=> bs!1850270 (= (and (= (_2!37095 lt!2472636) (_1!37095 lt!2472636)) (= (reg!17264 r2!6280) (reg!17264 r1!6342)) (= r2!6280 r1!6342)) (= lambda!394321 lambda!394319))))

(declare-fun bs!1850271 () Bool)

(assert (= bs!1850271 (and b!6929006 d!2165841)))

(assert (=> bs!1850271 (not (= lambda!394321 lambda!394307))))

(declare-fun bs!1850272 () Bool)

(assert (= bs!1850272 (and b!6929006 b!6928182)))

(assert (=> bs!1850272 (not (= lambda!394321 lambda!394248))))

(declare-fun bs!1850273 () Bool)

(assert (= bs!1850273 (and b!6929006 b!6928188)))

(assert (=> bs!1850273 (not (= lambda!394321 lambda!394251))))

(declare-fun bs!1850274 () Bool)

(assert (= bs!1850274 (and b!6929006 b!6928707)))

(assert (=> bs!1850274 (not (= lambda!394321 lambda!394299))))

(declare-fun bs!1850275 () Bool)

(assert (= bs!1850275 (and b!6929006 d!2165883)))

(assert (=> bs!1850275 (not (= lambda!394321 lambda!394318))))

(declare-fun bs!1850276 () Bool)

(assert (= bs!1850276 (and b!6929006 b!6928931)))

(assert (=> bs!1850276 (= (and (= (_2!37095 lt!2472636) s!14361) (= (reg!17264 r2!6280) (reg!17264 lt!2472612)) (= r2!6280 lt!2472612)) (= lambda!394321 lambda!394312))))

(declare-fun bs!1850277 () Bool)

(assert (= bs!1850277 (and b!6929006 b!6928863)))

(assert (=> bs!1850277 (not (= lambda!394321 lambda!394311))))

(declare-fun bs!1850278 () Bool)

(assert (= bs!1850278 (and b!6929006 b!6928191)))

(assert (=> bs!1850278 (not (= lambda!394321 lambda!394254))))

(declare-fun bs!1850279 () Bool)

(assert (= bs!1850279 (and b!6929006 b!6928187)))

(assert (=> bs!1850279 (not (= lambda!394321 lambda!394253))))

(declare-fun bs!1850280 () Bool)

(assert (= bs!1850280 (and b!6929006 b!6928853)))

(assert (=> bs!1850280 (= (and (= (_2!37095 lt!2472636) s!14361) (= (reg!17264 r2!6280) (reg!17264 lt!2472631)) (= r2!6280 lt!2472631)) (= lambda!394321 lambda!394310))))

(assert (=> bs!1850272 (not (= lambda!394321 lambda!394247))))

(declare-fun bs!1850281 () Bool)

(assert (= bs!1850281 (and b!6929006 d!2165793)))

(assert (=> bs!1850281 (not (= lambda!394321 lambda!394301))))

(declare-fun bs!1850282 () Bool)

(assert (= bs!1850282 (and b!6929006 b!6928697)))

(assert (=> bs!1850282 (= (and (= (_2!37095 lt!2472636) lt!2472613) (= (reg!17264 r2!6280) (reg!17264 lt!2472617)) (= r2!6280 lt!2472617)) (= lambda!394321 lambda!394297))))

(declare-fun bs!1850283 () Bool)

(assert (= bs!1850283 (and b!6929006 b!6928510)))

(assert (=> bs!1850283 (= (and (= (_2!37095 lt!2472636) (_1!37095 lt!2472632)) (= (reg!17264 r2!6280) (reg!17264 lt!2472630)) (= r2!6280 lt!2472630)) (= lambda!394321 lambda!394291))))

(declare-fun bs!1850284 () Bool)

(assert (= bs!1850284 (and b!6929006 d!2165703)))

(assert (=> bs!1850284 (not (= lambda!394321 lambda!394275))))

(declare-fun bs!1850285 () Bool)

(assert (= bs!1850285 (and b!6929006 d!2165873)))

(assert (=> bs!1850285 (not (= lambda!394321 lambda!394316))))

(declare-fun bs!1850286 () Bool)

(assert (= bs!1850286 (and b!6929006 d!2165869)))

(assert (=> bs!1850286 (not (= lambda!394321 lambda!394315))))

(declare-fun bs!1850287 () Bool)

(assert (= bs!1850287 (and b!6929006 b!6928520)))

(assert (=> bs!1850287 (not (= lambda!394321 lambda!394292))))

(assert (=> bs!1850275 (not (= lambda!394321 lambda!394317))))

(assert (=> bs!1850284 (not (= lambda!394321 lambda!394276))))

(declare-fun bs!1850288 () Bool)

(assert (= bs!1850288 (and b!6929006 d!2165715)))

(assert (=> bs!1850288 (not (= lambda!394321 lambda!394281))))

(declare-fun bs!1850289 () Bool)

(assert (= bs!1850289 (and b!6929006 b!6928997)))

(assert (=> bs!1850289 (not (= lambda!394321 lambda!394320))))

(assert (=> bs!1850286 (not (= lambda!394321 lambda!394314))))

(assert (=> bs!1850273 (not (= lambda!394321 lambda!394252))))

(assert (=> bs!1850267 (not (= lambda!394321 lambda!394250))))

(assert (=> b!6929006 true))

(assert (=> b!6929006 true))

(declare-fun bs!1850290 () Bool)

(declare-fun b!6929016 () Bool)

(assert (= bs!1850290 (and b!6929016 b!6928179)))

(declare-fun lambda!394322 () Int)

(assert (=> bs!1850290 (not (= lambda!394322 lambda!394249))))

(declare-fun bs!1850291 () Bool)

(assert (= bs!1850291 (and b!6929016 d!2165795)))

(assert (=> bs!1850291 (not (= lambda!394322 lambda!394302))))

(assert (=> bs!1850291 (= (and (= (_2!37095 lt!2472636) lt!2472613) (= (regOne!34382 r2!6280) r2!6280) (= (regTwo!34382 r2!6280) r3!135)) (= lambda!394322 lambda!394304))))

(declare-fun bs!1850292 () Bool)

(assert (= bs!1850292 (and b!6929016 b!6928941)))

(assert (=> bs!1850292 (= (and (= (_2!37095 lt!2472636) s!14361) (= (regOne!34382 r2!6280) (regOne!34382 lt!2472612)) (= (regTwo!34382 r2!6280) (regTwo!34382 lt!2472612))) (= lambda!394322 lambda!394313))))

(declare-fun bs!1850293 () Bool)

(assert (= bs!1850293 (and b!6929016 b!6928987)))

(assert (=> bs!1850293 (not (= lambda!394322 lambda!394319))))

(declare-fun bs!1850294 () Bool)

(assert (= bs!1850294 (and b!6929016 d!2165841)))

(assert (=> bs!1850294 (not (= lambda!394322 lambda!394307))))

(declare-fun bs!1850295 () Bool)

(assert (= bs!1850295 (and b!6929016 b!6928182)))

(assert (=> bs!1850295 (= (and (= (_2!37095 lt!2472636) s!14361) (= (regOne!34382 r2!6280) lt!2472630) (= (regTwo!34382 r2!6280) r3!135)) (= lambda!394322 lambda!394248))))

(declare-fun bs!1850296 () Bool)

(assert (= bs!1850296 (and b!6929016 b!6928188)))

(assert (=> bs!1850296 (not (= lambda!394322 lambda!394251))))

(declare-fun bs!1850297 () Bool)

(assert (= bs!1850297 (and b!6929016 b!6928707)))

(assert (=> bs!1850297 (= (and (= (_2!37095 lt!2472636) lt!2472613) (= (regOne!34382 r2!6280) (regOne!34382 lt!2472617)) (= (regTwo!34382 r2!6280) (regTwo!34382 lt!2472617))) (= lambda!394322 lambda!394299))))

(declare-fun bs!1850298 () Bool)

(assert (= bs!1850298 (and b!6929016 d!2165883)))

(assert (=> bs!1850298 (= (and (= (_2!37095 lt!2472636) (_1!37095 lt!2472632)) (= (regOne!34382 r2!6280) r1!6342) (= (regTwo!34382 r2!6280) r2!6280)) (= lambda!394322 lambda!394318))))

(declare-fun bs!1850299 () Bool)

(assert (= bs!1850299 (and b!6929016 b!6928931)))

(assert (=> bs!1850299 (not (= lambda!394322 lambda!394312))))

(declare-fun bs!1850300 () Bool)

(assert (= bs!1850300 (and b!6929016 b!6928863)))

(assert (=> bs!1850300 (= (and (= (_2!37095 lt!2472636) s!14361) (= (regOne!34382 r2!6280) (regOne!34382 lt!2472631)) (= (regTwo!34382 r2!6280) (regTwo!34382 lt!2472631))) (= lambda!394322 lambda!394311))))

(declare-fun bs!1850301 () Bool)

(assert (= bs!1850301 (and b!6929016 b!6928191)))

(assert (=> bs!1850301 (= (and (= (_2!37095 lt!2472636) s!14361) (= (regOne!34382 r2!6280) r1!6342) (= (regTwo!34382 r2!6280) lt!2472617)) (= lambda!394322 lambda!394254))))

(declare-fun bs!1850302 () Bool)

(assert (= bs!1850302 (and b!6929016 b!6928853)))

(assert (=> bs!1850302 (not (= lambda!394322 lambda!394310))))

(assert (=> bs!1850295 (not (= lambda!394322 lambda!394247))))

(declare-fun bs!1850303 () Bool)

(assert (= bs!1850303 (and b!6929016 d!2165793)))

(assert (=> bs!1850303 (not (= lambda!394322 lambda!394301))))

(declare-fun bs!1850304 () Bool)

(assert (= bs!1850304 (and b!6929016 b!6928697)))

(assert (=> bs!1850304 (not (= lambda!394322 lambda!394297))))

(declare-fun bs!1850305 () Bool)

(assert (= bs!1850305 (and b!6929016 b!6928510)))

(assert (=> bs!1850305 (not (= lambda!394322 lambda!394291))))

(declare-fun bs!1850306 () Bool)

(assert (= bs!1850306 (and b!6929016 d!2165703)))

(assert (=> bs!1850306 (not (= lambda!394322 lambda!394275))))

(declare-fun bs!1850307 () Bool)

(assert (= bs!1850307 (and b!6929016 d!2165873)))

(assert (=> bs!1850307 (not (= lambda!394322 lambda!394316))))

(declare-fun bs!1850308 () Bool)

(assert (= bs!1850308 (and b!6929016 d!2165869)))

(assert (=> bs!1850308 (= (and (= (_2!37095 lt!2472636) s!14361) (= (regOne!34382 r2!6280) r1!6342) (= (regTwo!34382 r2!6280) lt!2472617)) (= lambda!394322 lambda!394315))))

(declare-fun bs!1850309 () Bool)

(assert (= bs!1850309 (and b!6929016 b!6928520)))

(assert (=> bs!1850309 (= (and (= (_2!37095 lt!2472636) (_1!37095 lt!2472632)) (= (regOne!34382 r2!6280) (regOne!34382 lt!2472630)) (= (regTwo!34382 r2!6280) (regTwo!34382 lt!2472630))) (= lambda!394322 lambda!394292))))

(assert (=> bs!1850298 (not (= lambda!394322 lambda!394317))))

(assert (=> bs!1850306 (= (and (= (_2!37095 lt!2472636) s!14361) (= (regOne!34382 r2!6280) lt!2472630) (= (regTwo!34382 r2!6280) r3!135)) (= lambda!394322 lambda!394276))))

(declare-fun bs!1850310 () Bool)

(assert (= bs!1850310 (and b!6929016 d!2165715)))

(assert (=> bs!1850310 (not (= lambda!394322 lambda!394281))))

(declare-fun bs!1850311 () Bool)

(assert (= bs!1850311 (and b!6929016 b!6929006)))

(assert (=> bs!1850311 (not (= lambda!394322 lambda!394321))))

(declare-fun bs!1850312 () Bool)

(assert (= bs!1850312 (and b!6929016 b!6928187)))

(assert (=> bs!1850312 (not (= lambda!394322 lambda!394253))))

(declare-fun bs!1850313 () Bool)

(assert (= bs!1850313 (and b!6929016 b!6928997)))

(assert (=> bs!1850313 (= (and (= (_2!37095 lt!2472636) (_1!37095 lt!2472636)) (= (regOne!34382 r2!6280) (regOne!34382 r1!6342)) (= (regTwo!34382 r2!6280) (regTwo!34382 r1!6342))) (= lambda!394322 lambda!394320))))

(assert (=> bs!1850308 (not (= lambda!394322 lambda!394314))))

(assert (=> bs!1850296 (= (and (= (_2!37095 lt!2472636) lt!2472613) (= (regOne!34382 r2!6280) r2!6280) (= (regTwo!34382 r2!6280) r3!135)) (= lambda!394322 lambda!394252))))

(assert (=> bs!1850290 (= (and (= (_2!37095 lt!2472636) (_1!37095 lt!2472632)) (= (regOne!34382 r2!6280) r1!6342) (= (regTwo!34382 r2!6280) r2!6280)) (= lambda!394322 lambda!394250))))

(assert (=> b!6929016 true))

(assert (=> b!6929016 true))

(declare-fun e!4169565 () Bool)

(declare-fun call!629680 () Bool)

(assert (=> b!6929006 (= e!4169565 call!629680)))

(declare-fun b!6929007 () Bool)

(declare-fun e!4169563 () Bool)

(declare-fun e!4169564 () Bool)

(assert (=> b!6929007 (= e!4169563 e!4169564)))

(declare-fun res!2825972 () Bool)

(assert (=> b!6929007 (= res!2825972 (not ((_ is EmptyLang!16935) r2!6280)))))

(assert (=> b!6929007 (=> (not res!2825972) (not e!4169564))))

(declare-fun b!6929008 () Bool)

(declare-fun e!4169561 () Bool)

(assert (=> b!6929008 (= e!4169561 (matchRSpec!3992 (regTwo!34383 r2!6280) (_2!37095 lt!2472636)))))

(declare-fun b!6929010 () Bool)

(declare-fun call!629681 () Bool)

(assert (=> b!6929010 (= e!4169563 call!629681)))

(declare-fun b!6929011 () Bool)

(declare-fun c!1286125 () Bool)

(assert (=> b!6929011 (= c!1286125 ((_ is ElementMatch!16935) r2!6280))))

(declare-fun e!4169566 () Bool)

(assert (=> b!6929011 (= e!4169564 e!4169566)))

(declare-fun b!6929012 () Bool)

(declare-fun e!4169560 () Bool)

(assert (=> b!6929012 (= e!4169560 e!4169561)))

(declare-fun res!2825971 () Bool)

(assert (=> b!6929012 (= res!2825971 (matchRSpec!3992 (regOne!34383 r2!6280) (_2!37095 lt!2472636)))))

(assert (=> b!6929012 (=> res!2825971 e!4169561)))

(declare-fun b!6929013 () Bool)

(declare-fun res!2825970 () Bool)

(assert (=> b!6929013 (=> res!2825970 e!4169565)))

(assert (=> b!6929013 (= res!2825970 call!629681)))

(declare-fun e!4169562 () Bool)

(assert (=> b!6929013 (= e!4169562 e!4169565)))

(declare-fun bm!629675 () Bool)

(assert (=> bm!629675 (= call!629681 (isEmpty!38823 (_2!37095 lt!2472636)))))

(declare-fun b!6929009 () Bool)

(assert (=> b!6929009 (= e!4169566 (= (_2!37095 lt!2472636) (Cons!66564 (c!1285947 r2!6280) Nil!66564)))))

(declare-fun d!2165897 () Bool)

(declare-fun c!1286123 () Bool)

(assert (=> d!2165897 (= c!1286123 ((_ is EmptyExpr!16935) r2!6280))))

(assert (=> d!2165897 (= (matchRSpec!3992 r2!6280 (_2!37095 lt!2472636)) e!4169563)))

(declare-fun b!6929014 () Bool)

(declare-fun c!1286124 () Bool)

(assert (=> b!6929014 (= c!1286124 ((_ is Union!16935) r2!6280))))

(assert (=> b!6929014 (= e!4169566 e!4169560)))

(declare-fun b!6929015 () Bool)

(assert (=> b!6929015 (= e!4169560 e!4169562)))

(declare-fun c!1286122 () Bool)

(assert (=> b!6929015 (= c!1286122 ((_ is Star!16935) r2!6280))))

(assert (=> b!6929016 (= e!4169562 call!629680)))

(declare-fun bm!629676 () Bool)

(assert (=> bm!629676 (= call!629680 (Exists!3937 (ite c!1286122 lambda!394321 lambda!394322)))))

(assert (= (and d!2165897 c!1286123) b!6929010))

(assert (= (and d!2165897 (not c!1286123)) b!6929007))

(assert (= (and b!6929007 res!2825972) b!6929011))

(assert (= (and b!6929011 c!1286125) b!6929009))

(assert (= (and b!6929011 (not c!1286125)) b!6929014))

(assert (= (and b!6929014 c!1286124) b!6929012))

(assert (= (and b!6929014 (not c!1286124)) b!6929015))

(assert (= (and b!6929012 (not res!2825971)) b!6929008))

(assert (= (and b!6929015 c!1286122) b!6929013))

(assert (= (and b!6929015 (not c!1286122)) b!6929016))

(assert (= (and b!6929013 (not res!2825970)) b!6929006))

(assert (= (or b!6929006 b!6929016) bm!629676))

(assert (= (or b!6929010 b!6929013) bm!629675))

(declare-fun m!7637434 () Bool)

(assert (=> b!6929008 m!7637434))

(declare-fun m!7637436 () Bool)

(assert (=> b!6929012 m!7637436))

(assert (=> bm!629675 m!7637338))

(declare-fun m!7637438 () Bool)

(assert (=> bm!629676 m!7637438))

(assert (=> b!6928190 d!2165897))

(declare-fun e!4169569 () Bool)

(assert (=> b!6928183 (= tp!1909620 e!4169569)))

(declare-fun b!6929030 () Bool)

(declare-fun tp!1909737 () Bool)

(declare-fun tp!1909736 () Bool)

(assert (=> b!6929030 (= e!4169569 (and tp!1909737 tp!1909736))))

(declare-fun b!6929028 () Bool)

(declare-fun tp!1909735 () Bool)

(declare-fun tp!1909738 () Bool)

(assert (=> b!6929028 (= e!4169569 (and tp!1909735 tp!1909738))))

(declare-fun b!6929029 () Bool)

(declare-fun tp!1909734 () Bool)

(assert (=> b!6929029 (= e!4169569 tp!1909734)))

(declare-fun b!6929027 () Bool)

(assert (=> b!6929027 (= e!4169569 tp_is_empty!43095)))

(assert (= (and b!6928183 ((_ is ElementMatch!16935) (regOne!34383 r1!6342))) b!6929027))

(assert (= (and b!6928183 ((_ is Concat!25780) (regOne!34383 r1!6342))) b!6929028))

(assert (= (and b!6928183 ((_ is Star!16935) (regOne!34383 r1!6342))) b!6929029))

(assert (= (and b!6928183 ((_ is Union!16935) (regOne!34383 r1!6342))) b!6929030))

(declare-fun e!4169570 () Bool)

(assert (=> b!6928183 (= tp!1909628 e!4169570)))

(declare-fun b!6929034 () Bool)

(declare-fun tp!1909742 () Bool)

(declare-fun tp!1909741 () Bool)

(assert (=> b!6929034 (= e!4169570 (and tp!1909742 tp!1909741))))

(declare-fun b!6929032 () Bool)

(declare-fun tp!1909740 () Bool)

(declare-fun tp!1909743 () Bool)

(assert (=> b!6929032 (= e!4169570 (and tp!1909740 tp!1909743))))

(declare-fun b!6929033 () Bool)

(declare-fun tp!1909739 () Bool)

(assert (=> b!6929033 (= e!4169570 tp!1909739)))

(declare-fun b!6929031 () Bool)

(assert (=> b!6929031 (= e!4169570 tp_is_empty!43095)))

(assert (= (and b!6928183 ((_ is ElementMatch!16935) (regTwo!34383 r1!6342))) b!6929031))

(assert (= (and b!6928183 ((_ is Concat!25780) (regTwo!34383 r1!6342))) b!6929032))

(assert (= (and b!6928183 ((_ is Star!16935) (regTwo!34383 r1!6342))) b!6929033))

(assert (= (and b!6928183 ((_ is Union!16935) (regTwo!34383 r1!6342))) b!6929034))

(declare-fun e!4169571 () Bool)

(assert (=> b!6928178 (= tp!1909623 e!4169571)))

(declare-fun b!6929038 () Bool)

(declare-fun tp!1909747 () Bool)

(declare-fun tp!1909746 () Bool)

(assert (=> b!6929038 (= e!4169571 (and tp!1909747 tp!1909746))))

(declare-fun b!6929036 () Bool)

(declare-fun tp!1909745 () Bool)

(declare-fun tp!1909748 () Bool)

(assert (=> b!6929036 (= e!4169571 (and tp!1909745 tp!1909748))))

(declare-fun b!6929037 () Bool)

(declare-fun tp!1909744 () Bool)

(assert (=> b!6929037 (= e!4169571 tp!1909744)))

(declare-fun b!6929035 () Bool)

(assert (=> b!6929035 (= e!4169571 tp_is_empty!43095)))

(assert (= (and b!6928178 ((_ is ElementMatch!16935) (regOne!34383 r3!135))) b!6929035))

(assert (= (and b!6928178 ((_ is Concat!25780) (regOne!34383 r3!135))) b!6929036))

(assert (= (and b!6928178 ((_ is Star!16935) (regOne!34383 r3!135))) b!6929037))

(assert (= (and b!6928178 ((_ is Union!16935) (regOne!34383 r3!135))) b!6929038))

(declare-fun e!4169572 () Bool)

(assert (=> b!6928178 (= tp!1909632 e!4169572)))

(declare-fun b!6929042 () Bool)

(declare-fun tp!1909752 () Bool)

(declare-fun tp!1909751 () Bool)

(assert (=> b!6929042 (= e!4169572 (and tp!1909752 tp!1909751))))

(declare-fun b!6929040 () Bool)

(declare-fun tp!1909750 () Bool)

(declare-fun tp!1909753 () Bool)

(assert (=> b!6929040 (= e!4169572 (and tp!1909750 tp!1909753))))

(declare-fun b!6929041 () Bool)

(declare-fun tp!1909749 () Bool)

(assert (=> b!6929041 (= e!4169572 tp!1909749)))

(declare-fun b!6929039 () Bool)

(assert (=> b!6929039 (= e!4169572 tp_is_empty!43095)))

(assert (= (and b!6928178 ((_ is ElementMatch!16935) (regTwo!34383 r3!135))) b!6929039))

(assert (= (and b!6928178 ((_ is Concat!25780) (regTwo!34383 r3!135))) b!6929040))

(assert (= (and b!6928178 ((_ is Star!16935) (regTwo!34383 r3!135))) b!6929041))

(assert (= (and b!6928178 ((_ is Union!16935) (regTwo!34383 r3!135))) b!6929042))

(declare-fun e!4169573 () Bool)

(assert (=> b!6928189 (= tp!1909630 e!4169573)))

(declare-fun b!6929046 () Bool)

(declare-fun tp!1909757 () Bool)

(declare-fun tp!1909756 () Bool)

(assert (=> b!6929046 (= e!4169573 (and tp!1909757 tp!1909756))))

(declare-fun b!6929044 () Bool)

(declare-fun tp!1909755 () Bool)

(declare-fun tp!1909758 () Bool)

(assert (=> b!6929044 (= e!4169573 (and tp!1909755 tp!1909758))))

(declare-fun b!6929045 () Bool)

(declare-fun tp!1909754 () Bool)

(assert (=> b!6929045 (= e!4169573 tp!1909754)))

(declare-fun b!6929043 () Bool)

(assert (=> b!6929043 (= e!4169573 tp_is_empty!43095)))

(assert (= (and b!6928189 ((_ is ElementMatch!16935) (reg!17264 r2!6280))) b!6929043))

(assert (= (and b!6928189 ((_ is Concat!25780) (reg!17264 r2!6280))) b!6929044))

(assert (= (and b!6928189 ((_ is Star!16935) (reg!17264 r2!6280))) b!6929045))

(assert (= (and b!6928189 ((_ is Union!16935) (reg!17264 r2!6280))) b!6929046))

(declare-fun e!4169574 () Bool)

(assert (=> b!6928176 (= tp!1909634 e!4169574)))

(declare-fun b!6929050 () Bool)

(declare-fun tp!1909762 () Bool)

(declare-fun tp!1909761 () Bool)

(assert (=> b!6929050 (= e!4169574 (and tp!1909762 tp!1909761))))

(declare-fun b!6929048 () Bool)

(declare-fun tp!1909760 () Bool)

(declare-fun tp!1909763 () Bool)

(assert (=> b!6929048 (= e!4169574 (and tp!1909760 tp!1909763))))

(declare-fun b!6929049 () Bool)

(declare-fun tp!1909759 () Bool)

(assert (=> b!6929049 (= e!4169574 tp!1909759)))

(declare-fun b!6929047 () Bool)

(assert (=> b!6929047 (= e!4169574 tp_is_empty!43095)))

(assert (= (and b!6928176 ((_ is ElementMatch!16935) (regOne!34382 r2!6280))) b!6929047))

(assert (= (and b!6928176 ((_ is Concat!25780) (regOne!34382 r2!6280))) b!6929048))

(assert (= (and b!6928176 ((_ is Star!16935) (regOne!34382 r2!6280))) b!6929049))

(assert (= (and b!6928176 ((_ is Union!16935) (regOne!34382 r2!6280))) b!6929050))

(declare-fun e!4169575 () Bool)

(assert (=> b!6928176 (= tp!1909622 e!4169575)))

(declare-fun b!6929054 () Bool)

(declare-fun tp!1909767 () Bool)

(declare-fun tp!1909766 () Bool)

(assert (=> b!6929054 (= e!4169575 (and tp!1909767 tp!1909766))))

(declare-fun b!6929052 () Bool)

(declare-fun tp!1909765 () Bool)

(declare-fun tp!1909768 () Bool)

(assert (=> b!6929052 (= e!4169575 (and tp!1909765 tp!1909768))))

(declare-fun b!6929053 () Bool)

(declare-fun tp!1909764 () Bool)

(assert (=> b!6929053 (= e!4169575 tp!1909764)))

(declare-fun b!6929051 () Bool)

(assert (=> b!6929051 (= e!4169575 tp_is_empty!43095)))

(assert (= (and b!6928176 ((_ is ElementMatch!16935) (regTwo!34382 r2!6280))) b!6929051))

(assert (= (and b!6928176 ((_ is Concat!25780) (regTwo!34382 r2!6280))) b!6929052))

(assert (= (and b!6928176 ((_ is Star!16935) (regTwo!34382 r2!6280))) b!6929053))

(assert (= (and b!6928176 ((_ is Union!16935) (regTwo!34382 r2!6280))) b!6929054))

(declare-fun e!4169576 () Bool)

(assert (=> b!6928192 (= tp!1909625 e!4169576)))

(declare-fun b!6929058 () Bool)

(declare-fun tp!1909772 () Bool)

(declare-fun tp!1909771 () Bool)

(assert (=> b!6929058 (= e!4169576 (and tp!1909772 tp!1909771))))

(declare-fun b!6929056 () Bool)

(declare-fun tp!1909770 () Bool)

(declare-fun tp!1909773 () Bool)

(assert (=> b!6929056 (= e!4169576 (and tp!1909770 tp!1909773))))

(declare-fun b!6929057 () Bool)

(declare-fun tp!1909769 () Bool)

(assert (=> b!6929057 (= e!4169576 tp!1909769)))

(declare-fun b!6929055 () Bool)

(assert (=> b!6929055 (= e!4169576 tp_is_empty!43095)))

(assert (= (and b!6928192 ((_ is ElementMatch!16935) (regOne!34383 r2!6280))) b!6929055))

(assert (= (and b!6928192 ((_ is Concat!25780) (regOne!34383 r2!6280))) b!6929056))

(assert (= (and b!6928192 ((_ is Star!16935) (regOne!34383 r2!6280))) b!6929057))

(assert (= (and b!6928192 ((_ is Union!16935) (regOne!34383 r2!6280))) b!6929058))

(declare-fun e!4169577 () Bool)

(assert (=> b!6928192 (= tp!1909624 e!4169577)))

(declare-fun b!6929062 () Bool)

(declare-fun tp!1909777 () Bool)

(declare-fun tp!1909776 () Bool)

(assert (=> b!6929062 (= e!4169577 (and tp!1909777 tp!1909776))))

(declare-fun b!6929060 () Bool)

(declare-fun tp!1909775 () Bool)

(declare-fun tp!1909778 () Bool)

(assert (=> b!6929060 (= e!4169577 (and tp!1909775 tp!1909778))))

(declare-fun b!6929061 () Bool)

(declare-fun tp!1909774 () Bool)

(assert (=> b!6929061 (= e!4169577 tp!1909774)))

(declare-fun b!6929059 () Bool)

(assert (=> b!6929059 (= e!4169577 tp_is_empty!43095)))

(assert (= (and b!6928192 ((_ is ElementMatch!16935) (regTwo!34383 r2!6280))) b!6929059))

(assert (= (and b!6928192 ((_ is Concat!25780) (regTwo!34383 r2!6280))) b!6929060))

(assert (= (and b!6928192 ((_ is Star!16935) (regTwo!34383 r2!6280))) b!6929061))

(assert (= (and b!6928192 ((_ is Union!16935) (regTwo!34383 r2!6280))) b!6929062))

(declare-fun e!4169578 () Bool)

(assert (=> b!6928196 (= tp!1909629 e!4169578)))

(declare-fun b!6929066 () Bool)

(declare-fun tp!1909782 () Bool)

(declare-fun tp!1909781 () Bool)

(assert (=> b!6929066 (= e!4169578 (and tp!1909782 tp!1909781))))

(declare-fun b!6929064 () Bool)

(declare-fun tp!1909780 () Bool)

(declare-fun tp!1909783 () Bool)

(assert (=> b!6929064 (= e!4169578 (and tp!1909780 tp!1909783))))

(declare-fun b!6929065 () Bool)

(declare-fun tp!1909779 () Bool)

(assert (=> b!6929065 (= e!4169578 tp!1909779)))

(declare-fun b!6929063 () Bool)

(assert (=> b!6929063 (= e!4169578 tp_is_empty!43095)))

(assert (= (and b!6928196 ((_ is ElementMatch!16935) (reg!17264 r3!135))) b!6929063))

(assert (= (and b!6928196 ((_ is Concat!25780) (reg!17264 r3!135))) b!6929064))

(assert (= (and b!6928196 ((_ is Star!16935) (reg!17264 r3!135))) b!6929065))

(assert (= (and b!6928196 ((_ is Union!16935) (reg!17264 r3!135))) b!6929066))

(declare-fun b!6929071 () Bool)

(declare-fun e!4169581 () Bool)

(declare-fun tp!1909786 () Bool)

(assert (=> b!6929071 (= e!4169581 (and tp_is_empty!43095 tp!1909786))))

(assert (=> b!6928175 (= tp!1909633 e!4169581)))

(assert (= (and b!6928175 ((_ is Cons!66564) (t!380431 s!14361))) b!6929071))

(declare-fun e!4169582 () Bool)

(assert (=> b!6928181 (= tp!1909631 e!4169582)))

(declare-fun b!6929075 () Bool)

(declare-fun tp!1909790 () Bool)

(declare-fun tp!1909789 () Bool)

(assert (=> b!6929075 (= e!4169582 (and tp!1909790 tp!1909789))))

(declare-fun b!6929073 () Bool)

(declare-fun tp!1909788 () Bool)

(declare-fun tp!1909791 () Bool)

(assert (=> b!6929073 (= e!4169582 (and tp!1909788 tp!1909791))))

(declare-fun b!6929074 () Bool)

(declare-fun tp!1909787 () Bool)

(assert (=> b!6929074 (= e!4169582 tp!1909787)))

(declare-fun b!6929072 () Bool)

(assert (=> b!6929072 (= e!4169582 tp_is_empty!43095)))

(assert (= (and b!6928181 ((_ is ElementMatch!16935) (reg!17264 r1!6342))) b!6929072))

(assert (= (and b!6928181 ((_ is Concat!25780) (reg!17264 r1!6342))) b!6929073))

(assert (= (and b!6928181 ((_ is Star!16935) (reg!17264 r1!6342))) b!6929074))

(assert (= (and b!6928181 ((_ is Union!16935) (reg!17264 r1!6342))) b!6929075))

(declare-fun e!4169583 () Bool)

(assert (=> b!6928197 (= tp!1909621 e!4169583)))

(declare-fun b!6929079 () Bool)

(declare-fun tp!1909795 () Bool)

(declare-fun tp!1909794 () Bool)

(assert (=> b!6929079 (= e!4169583 (and tp!1909795 tp!1909794))))

(declare-fun b!6929077 () Bool)

(declare-fun tp!1909793 () Bool)

(declare-fun tp!1909796 () Bool)

(assert (=> b!6929077 (= e!4169583 (and tp!1909793 tp!1909796))))

(declare-fun b!6929078 () Bool)

(declare-fun tp!1909792 () Bool)

(assert (=> b!6929078 (= e!4169583 tp!1909792)))

(declare-fun b!6929076 () Bool)

(assert (=> b!6929076 (= e!4169583 tp_is_empty!43095)))

(assert (= (and b!6928197 ((_ is ElementMatch!16935) (regOne!34382 r1!6342))) b!6929076))

(assert (= (and b!6928197 ((_ is Concat!25780) (regOne!34382 r1!6342))) b!6929077))

(assert (= (and b!6928197 ((_ is Star!16935) (regOne!34382 r1!6342))) b!6929078))

(assert (= (and b!6928197 ((_ is Union!16935) (regOne!34382 r1!6342))) b!6929079))

(declare-fun e!4169584 () Bool)

(assert (=> b!6928197 (= tp!1909627 e!4169584)))

(declare-fun b!6929083 () Bool)

(declare-fun tp!1909800 () Bool)

(declare-fun tp!1909799 () Bool)

(assert (=> b!6929083 (= e!4169584 (and tp!1909800 tp!1909799))))

(declare-fun b!6929081 () Bool)

(declare-fun tp!1909798 () Bool)

(declare-fun tp!1909801 () Bool)

(assert (=> b!6929081 (= e!4169584 (and tp!1909798 tp!1909801))))

(declare-fun b!6929082 () Bool)

(declare-fun tp!1909797 () Bool)

(assert (=> b!6929082 (= e!4169584 tp!1909797)))

(declare-fun b!6929080 () Bool)

(assert (=> b!6929080 (= e!4169584 tp_is_empty!43095)))

(assert (= (and b!6928197 ((_ is ElementMatch!16935) (regTwo!34382 r1!6342))) b!6929080))

(assert (= (and b!6928197 ((_ is Concat!25780) (regTwo!34382 r1!6342))) b!6929081))

(assert (= (and b!6928197 ((_ is Star!16935) (regTwo!34382 r1!6342))) b!6929082))

(assert (= (and b!6928197 ((_ is Union!16935) (regTwo!34382 r1!6342))) b!6929083))

(declare-fun e!4169585 () Bool)

(assert (=> b!6928195 (= tp!1909626 e!4169585)))

(declare-fun b!6929087 () Bool)

(declare-fun tp!1909805 () Bool)

(declare-fun tp!1909804 () Bool)

(assert (=> b!6929087 (= e!4169585 (and tp!1909805 tp!1909804))))

(declare-fun b!6929085 () Bool)

(declare-fun tp!1909803 () Bool)

(declare-fun tp!1909806 () Bool)

(assert (=> b!6929085 (= e!4169585 (and tp!1909803 tp!1909806))))

(declare-fun b!6929086 () Bool)

(declare-fun tp!1909802 () Bool)

(assert (=> b!6929086 (= e!4169585 tp!1909802)))

(declare-fun b!6929084 () Bool)

(assert (=> b!6929084 (= e!4169585 tp_is_empty!43095)))

(assert (= (and b!6928195 ((_ is ElementMatch!16935) (regOne!34382 r3!135))) b!6929084))

(assert (= (and b!6928195 ((_ is Concat!25780) (regOne!34382 r3!135))) b!6929085))

(assert (= (and b!6928195 ((_ is Star!16935) (regOne!34382 r3!135))) b!6929086))

(assert (= (and b!6928195 ((_ is Union!16935) (regOne!34382 r3!135))) b!6929087))

(declare-fun e!4169586 () Bool)

(assert (=> b!6928195 (= tp!1909635 e!4169586)))

(declare-fun b!6929091 () Bool)

(declare-fun tp!1909810 () Bool)

(declare-fun tp!1909809 () Bool)

(assert (=> b!6929091 (= e!4169586 (and tp!1909810 tp!1909809))))

(declare-fun b!6929089 () Bool)

(declare-fun tp!1909808 () Bool)

(declare-fun tp!1909811 () Bool)

(assert (=> b!6929089 (= e!4169586 (and tp!1909808 tp!1909811))))

(declare-fun b!6929090 () Bool)

(declare-fun tp!1909807 () Bool)

(assert (=> b!6929090 (= e!4169586 tp!1909807)))

(declare-fun b!6929088 () Bool)

(assert (=> b!6929088 (= e!4169586 tp_is_empty!43095)))

(assert (= (and b!6928195 ((_ is ElementMatch!16935) (regTwo!34382 r3!135))) b!6929088))

(assert (= (and b!6928195 ((_ is Concat!25780) (regTwo!34382 r3!135))) b!6929089))

(assert (= (and b!6928195 ((_ is Star!16935) (regTwo!34382 r3!135))) b!6929090))

(assert (= (and b!6928195 ((_ is Union!16935) (regTwo!34382 r3!135))) b!6929091))

(check-sat (not b!6929030) (not d!2165851) (not b!6928669) (not b!6928785) (not b!6929041) (not bm!629664) (not b!6929012) (not b!6928952) (not b!6928813) (not b!6928977) (not b!6929058) (not b!6928819) (not b!6929034) (not b!6929082) (not b!6929075) (not b!6928851) (not b!6929033) (not b!6928271) (not b!6928742) (not b!6928963) (not b!6928516) (not b!6928216) (not d!2165877) (not b!6928753) (not d!2165837) (not b!6928755) (not b!6928699) (not b!6928824) (not b!6928703) (not d!2165827) (not b!6928786) (not b!6929090) (not d!2165835) (not d!2165895) (not b!6929061) tp_is_empty!43095 (not b!6929074) (not b!6929073) (not bm!629674) (not b!6928859) (not b!6929008) (not d!2165873) (not b!6929083) (not b!6928779) (not d!2165761) (not b!6928635) (not bm!629676) (not b!6928748) (not b!6928767) (not b!6929049) (not bm!629673) (not b!6928743) (not d!2165675) (not b!6928630) (not b!6928678) (not b!6928989) (not b!6928763) (not b!6928951) (not b!6929038) (not d!2165869) (not b!6929029) (not bm!629661) (not b!6929060) (not d!2165819) (not d!2165679) (not d!2165865) (not bm!629671) (not b!6929056) (not d!2165689) (not b!6928993) (not b!6928827) (not b!6929045) (not d!2165893) (not b!6928756) (not d!2165795) (not bm!629646) (not b!6929085) (not b!6928512) (not b!6929052) (not bm!629650) (not b!6929077) (not b!6928812) (not b!6928768) (not d!2165891) (not b!6929046) (not b!6929048) (not b!6929071) (not b!6928985) (not d!2165841) (not b!6928982) (not d!2165879) (not b!6928279) (not d!2165701) (not b!6928215) (not bm!629669) (not d!2165875) (not b!6928782) (not b!6928855) (not d!2165881) (not b!6929032) (not b!6928847) (not b!6929079) (not b!6929057) (not b!6928976) (not b!6929000) (not d!2165715) (not d!2165821) (not d!2165815) (not b!6928752) (not bm!629647) (not b!6929050) (not d!2165825) (not b!6928825) (not bm!629670) (not b!6928833) (not b!6928811) (not b!6928823) (not bm!629662) (not d!2165817) (not bm!629657) (not b!6929087) (not b!6928838) (not b!6929040) (not b!6928773) (not bm!629666) (not b!6929004) (not b!6928624) (not b!6928623) (not b!6928962) (not b!6929036) (not bm!629665) (not b!6928746) (not b!6928826) (not b!6929003) (not b!6929062) (not b!6928622) (not b!6928277) (not b!6929054) (not d!2165885) (not d!2165855) (not d!2165703) (not d!2165849) (not d!2165889) (not bm!629656) (not b!6928750) (not d!2165853) (not d!2165857) (not bm!629672) (not b!6929044) (not b!6928840) (not b!6928634) (not b!6928958) (not bm!629675) (not b!6928986) (not bm!629668) (not b!6929053) (not bm!629667) (not b!6928852) (not b!6928757) (not b!6928984) (not b!6928778) (not b!6928972) (not b!6929065) (not b!6928841) (not b!6929037) (not d!2165677) (not d!2165833) (not b!6928964) (not b!6928937) (not bm!629651) (not d!2165803) (not d!2165831) (not d!2165793) (not bm!629619) (not b!6928999) (not b!6929028) (not b!6928979) (not b!6928749) (not b!6928806) (not d!2165867) (not d!2165681) (not b!6929081) (not bm!629644) (not b!6929089) (not d!2165763) (not b!6929042) (not bm!629618) (not b!6928978) (not b!6928965) (not b!6928933) (not b!6929064) (not b!6928272) (not b!6928839) (not b!6928950) (not d!2165823) (not b!6929091) (not bm!629655) (not b!6929066) (not bm!629634) (not b!6929078) (not b!6928278) (not b!6928784) (not b!6928966) (not b!6928837) (not bm!629643) (not b!6928275) (not b!6929086) (not d!2165883))
(check-sat)
