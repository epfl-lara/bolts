; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!666524 () Bool)

(assert start!666524)

(declare-fun b!6939796 () Bool)

(assert (=> b!6939796 true))

(assert (=> b!6939796 true))

(assert (=> b!6939796 true))

(declare-fun lambda!395316 () Int)

(declare-fun lambda!395315 () Int)

(assert (=> b!6939796 (not (= lambda!395316 lambda!395315))))

(assert (=> b!6939796 true))

(assert (=> b!6939796 true))

(assert (=> b!6939796 true))

(declare-fun bs!1854166 () Bool)

(declare-fun b!6939805 () Bool)

(assert (= bs!1854166 (and b!6939805 b!6939796)))

(declare-datatypes ((C!34198 0))(
  ( (C!34199 (val!26801 Int)) )
))
(declare-datatypes ((Regex!16964 0))(
  ( (ElementMatch!16964 (c!1287706 C!34198)) (Concat!25809 (regOne!34440 Regex!16964) (regTwo!34440 Regex!16964)) (EmptyExpr!16964) (Star!16964 (reg!17293 Regex!16964)) (EmptyLang!16964) (Union!16964 (regOne!34441 Regex!16964) (regTwo!34441 Regex!16964)) )
))
(declare-fun r1!6342 () Regex!16964)

(declare-fun lt!2475478 () Regex!16964)

(declare-datatypes ((List!66717 0))(
  ( (Nil!66593) (Cons!66593 (h!73041 C!34198) (t!380460 List!66717)) )
))
(declare-fun s!14361 () List!66717)

(declare-datatypes ((tuple2!67642 0))(
  ( (tuple2!67643 (_1!37124 List!66717) (_2!37124 List!66717)) )
))
(declare-fun lt!2475485 () tuple2!67642)

(declare-fun r2!6280 () Regex!16964)

(declare-fun r3!135 () Regex!16964)

(declare-fun lambda!395317 () Int)

(assert (=> bs!1854166 (= (and (= (_2!37124 lt!2475485) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2475478)) (= lambda!395317 lambda!395315))))

(assert (=> bs!1854166 (not (= lambda!395317 lambda!395316))))

(assert (=> b!6939805 true))

(assert (=> b!6939805 true))

(assert (=> b!6939805 true))

(declare-fun lambda!395318 () Int)

(assert (=> bs!1854166 (not (= lambda!395318 lambda!395315))))

(assert (=> bs!1854166 (= (and (= (_2!37124 lt!2475485) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2475478)) (= lambda!395318 lambda!395316))))

(assert (=> b!6939805 (not (= lambda!395318 lambda!395317))))

(assert (=> b!6939805 true))

(assert (=> b!6939805 true))

(assert (=> b!6939805 true))

(declare-fun bs!1854167 () Bool)

(declare-fun b!6939794 () Bool)

(assert (= bs!1854167 (and b!6939794 b!6939796)))

(declare-fun lt!2475455 () List!66717)

(declare-fun lambda!395319 () Int)

(assert (=> bs!1854167 (= (and (= lt!2475455 s!14361) (= r2!6280 lt!2475478)) (= lambda!395319 lambda!395315))))

(assert (=> bs!1854167 (not (= lambda!395319 lambda!395316))))

(declare-fun bs!1854168 () Bool)

(assert (= bs!1854168 (and b!6939794 b!6939805)))

(assert (=> bs!1854168 (= (and (= lt!2475455 (_2!37124 lt!2475485)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395319 lambda!395317))))

(assert (=> bs!1854168 (not (= lambda!395319 lambda!395318))))

(assert (=> b!6939794 true))

(assert (=> b!6939794 true))

(assert (=> b!6939794 true))

(declare-fun lambda!395320 () Int)

(assert (=> bs!1854167 (= (and (= lt!2475455 s!14361) (= r2!6280 lt!2475478)) (= lambda!395320 lambda!395316))))

(assert (=> bs!1854168 (not (= lambda!395320 lambda!395317))))

(assert (=> bs!1854168 (= (and (= lt!2475455 (_2!37124 lt!2475485)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395320 lambda!395318))))

(assert (=> b!6939794 (not (= lambda!395320 lambda!395319))))

(assert (=> bs!1854167 (not (= lambda!395320 lambda!395315))))

(assert (=> b!6939794 true))

(assert (=> b!6939794 true))

(assert (=> b!6939794 true))

(declare-fun bs!1854169 () Bool)

(declare-fun b!6939802 () Bool)

(assert (= bs!1854169 (and b!6939802 b!6939796)))

(declare-fun lambda!395321 () Int)

(assert (=> bs!1854169 (not (= lambda!395321 lambda!395316))))

(declare-fun bs!1854170 () Bool)

(assert (= bs!1854170 (and b!6939802 b!6939805)))

(declare-fun lt!2475482 () Regex!16964)

(assert (=> bs!1854170 (= (and (= s!14361 (_2!37124 lt!2475485)) (= lt!2475482 r2!6280)) (= lambda!395321 lambda!395317))))

(assert (=> bs!1854170 (not (= lambda!395321 lambda!395318))))

(declare-fun bs!1854171 () Bool)

(assert (= bs!1854171 (and b!6939802 b!6939794)))

(assert (=> bs!1854171 (= (and (= s!14361 lt!2475455) (= lt!2475482 r1!6342) (= r3!135 r2!6280)) (= lambda!395321 lambda!395319))))

(assert (=> bs!1854171 (not (= lambda!395321 lambda!395320))))

(assert (=> bs!1854169 (= (and (= lt!2475482 r1!6342) (= r3!135 lt!2475478)) (= lambda!395321 lambda!395315))))

(assert (=> b!6939802 true))

(assert (=> b!6939802 true))

(assert (=> b!6939802 true))

(declare-fun b!6939782 () Bool)

(declare-fun e!4174924 () Bool)

(declare-fun tp!1912950 () Bool)

(declare-fun tp!1912959 () Bool)

(assert (=> b!6939782 (= e!4174924 (and tp!1912950 tp!1912959))))

(declare-fun b!6939783 () Bool)

(declare-fun e!4174925 () Bool)

(declare-fun tp!1912951 () Bool)

(declare-fun tp!1912948 () Bool)

(assert (=> b!6939783 (= e!4174925 (and tp!1912951 tp!1912948))))

(declare-fun b!6939784 () Bool)

(declare-fun e!4174923 () Bool)

(declare-fun tp_is_empty!43153 () Bool)

(assert (=> b!6939784 (= e!4174923 tp_is_empty!43153)))

(declare-fun b!6939785 () Bool)

(declare-fun tp!1912952 () Bool)

(assert (=> b!6939785 (= e!4174923 tp!1912952)))

(declare-fun b!6939786 () Bool)

(declare-fun tp!1912954 () Bool)

(declare-fun tp!1912960 () Bool)

(assert (=> b!6939786 (= e!4174923 (and tp!1912954 tp!1912960))))

(declare-fun b!6939787 () Bool)

(declare-fun e!4174921 () Bool)

(declare-fun e!4174919 () Bool)

(assert (=> b!6939787 (= e!4174921 e!4174919)))

(declare-fun res!2830804 () Bool)

(assert (=> b!6939787 (=> res!2830804 e!4174919)))

(declare-fun lt!2475479 () List!66717)

(assert (=> b!6939787 (= res!2830804 (not (= lt!2475479 s!14361)))))

(declare-fun lt!2475472 () tuple2!67642)

(declare-fun ++!15003 (List!66717 List!66717) List!66717)

(assert (=> b!6939787 (= lt!2475479 (++!15003 (_1!37124 lt!2475485) (++!15003 (_1!37124 lt!2475472) (_2!37124 lt!2475472))))))

(declare-fun matchRSpec!4021 (Regex!16964 List!66717) Bool)

(assert (=> b!6939787 (matchRSpec!4021 r3!135 (_2!37124 lt!2475472))))

(declare-datatypes ((Unit!160652 0))(
  ( (Unit!160653) )
))
(declare-fun lt!2475464 () Unit!160652)

(declare-fun mainMatchTheorem!4021 (Regex!16964 List!66717) Unit!160652)

(assert (=> b!6939787 (= lt!2475464 (mainMatchTheorem!4021 r3!135 (_2!37124 lt!2475472)))))

(assert (=> b!6939787 (matchRSpec!4021 r2!6280 (_1!37124 lt!2475472))))

(declare-fun lt!2475477 () Unit!160652)

(assert (=> b!6939787 (= lt!2475477 (mainMatchTheorem!4021 r2!6280 (_1!37124 lt!2475472)))))

(declare-fun b!6939788 () Bool)

(declare-fun e!4174920 () Bool)

(declare-fun e!4174917 () Bool)

(assert (=> b!6939788 (= e!4174920 (not e!4174917))))

(declare-fun res!2830807 () Bool)

(assert (=> b!6939788 (=> res!2830807 e!4174917)))

(declare-fun lt!2475469 () Bool)

(assert (=> b!6939788 (= res!2830807 lt!2475469)))

(declare-fun lt!2475461 () Regex!16964)

(declare-fun matchR!9103 (Regex!16964 List!66717) Bool)

(assert (=> b!6939788 (= (matchR!9103 lt!2475461 s!14361) (matchRSpec!4021 lt!2475461 s!14361))))

(declare-fun lt!2475457 () Unit!160652)

(assert (=> b!6939788 (= lt!2475457 (mainMatchTheorem!4021 lt!2475461 s!14361))))

(declare-fun lt!2475458 () Regex!16964)

(assert (=> b!6939788 (= lt!2475469 (matchRSpec!4021 lt!2475458 s!14361))))

(assert (=> b!6939788 (= lt!2475469 (matchR!9103 lt!2475458 s!14361))))

(declare-fun lt!2475475 () Unit!160652)

(assert (=> b!6939788 (= lt!2475475 (mainMatchTheorem!4021 lt!2475458 s!14361))))

(assert (=> b!6939788 (= lt!2475461 (Concat!25809 r1!6342 lt!2475478))))

(assert (=> b!6939788 (= lt!2475478 (Concat!25809 r2!6280 r3!135))))

(assert (=> b!6939788 (= lt!2475458 (Concat!25809 lt!2475482 r3!135))))

(assert (=> b!6939788 (= lt!2475482 (Concat!25809 r1!6342 r2!6280))))

(declare-fun b!6939789 () Bool)

(declare-fun res!2830801 () Bool)

(assert (=> b!6939789 (=> (not res!2830801) (not e!4174920))))

(declare-fun validRegex!8670 (Regex!16964) Bool)

(assert (=> b!6939789 (= res!2830801 (validRegex!8670 r2!6280))))

(declare-fun b!6939790 () Bool)

(assert (=> b!6939790 (= e!4174924 tp_is_empty!43153)))

(declare-fun b!6939791 () Bool)

(declare-fun tp!1912958 () Bool)

(declare-fun tp!1912962 () Bool)

(assert (=> b!6939791 (= e!4174925 (and tp!1912958 tp!1912962))))

(declare-fun b!6939792 () Bool)

(declare-fun res!2830806 () Bool)

(assert (=> b!6939792 (=> (not res!2830806) (not e!4174920))))

(assert (=> b!6939792 (= res!2830806 (validRegex!8670 r3!135))))

(declare-fun e!4174926 () Bool)

(assert (=> b!6939794 (= e!4174919 e!4174926)))

(declare-fun res!2830808 () Bool)

(assert (=> b!6939794 (=> res!2830808 e!4174926)))

(declare-fun lt!2475456 () Bool)

(declare-fun lt!2475460 () List!66717)

(assert (=> b!6939794 (= res!2830808 (or (not lt!2475456) (not (= lt!2475460 s!14361))))))

(declare-fun lt!2475459 () Bool)

(assert (=> b!6939794 lt!2475459))

(declare-fun lt!2475470 () Unit!160652)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!107 (Regex!16964 Regex!16964 List!66717 List!66717 List!66717 List!66717 List!66717) Unit!160652)

(assert (=> b!6939794 (= lt!2475470 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!107 r1!6342 r2!6280 (_1!37124 lt!2475485) (_1!37124 lt!2475472) lt!2475455 Nil!66593 lt!2475455))))

(declare-fun Exists!3964 (Int) Bool)

(assert (=> b!6939794 (= (Exists!3964 lambda!395319) (Exists!3964 lambda!395320))))

(declare-fun lt!2475463 () Unit!160652)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2425 (Regex!16964 Regex!16964 List!66717) Unit!160652)

(assert (=> b!6939794 (= lt!2475463 (lemmaExistCutMatchRandMatchRSpecEquivalent!2425 r1!6342 r2!6280 lt!2475455))))

(assert (=> b!6939794 (= lt!2475459 (Exists!3964 lambda!395319))))

(declare-datatypes ((Option!16733 0))(
  ( (None!16732) (Some!16732 (v!53004 tuple2!67642)) )
))
(declare-fun isDefined!13434 (Option!16733) Bool)

(declare-fun findConcatSeparation!3147 (Regex!16964 Regex!16964 List!66717 List!66717 List!66717) Option!16733)

(assert (=> b!6939794 (= lt!2475459 (isDefined!13434 (findConcatSeparation!3147 r1!6342 r2!6280 Nil!66593 lt!2475455 lt!2475455)))))

(declare-fun lt!2475466 () Unit!160652)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2905 (Regex!16964 Regex!16964 List!66717) Unit!160652)

(assert (=> b!6939794 (= lt!2475466 (lemmaFindConcatSeparationEquivalentToExists!2905 r1!6342 r2!6280 lt!2475455))))

(assert (=> b!6939794 (= lt!2475456 (matchRSpec!4021 lt!2475482 lt!2475455))))

(assert (=> b!6939794 (= lt!2475456 (matchR!9103 lt!2475482 lt!2475455))))

(declare-fun lt!2475471 () Unit!160652)

(assert (=> b!6939794 (= lt!2475471 (mainMatchTheorem!4021 lt!2475482 lt!2475455))))

(assert (=> b!6939794 (= lt!2475460 lt!2475479)))

(assert (=> b!6939794 (= lt!2475460 (++!15003 lt!2475455 (_2!37124 lt!2475472)))))

(assert (=> b!6939794 (= lt!2475455 (++!15003 (_1!37124 lt!2475485) (_1!37124 lt!2475472)))))

(declare-fun lt!2475481 () Unit!160652)

(declare-fun lemmaConcatAssociativity!3045 (List!66717 List!66717 List!66717) Unit!160652)

(assert (=> b!6939794 (= lt!2475481 (lemmaConcatAssociativity!3045 (_1!37124 lt!2475485) (_1!37124 lt!2475472) (_2!37124 lt!2475472)))))

(declare-fun b!6939793 () Bool)

(declare-fun tp!1912949 () Bool)

(assert (=> b!6939793 (= e!4174924 tp!1912949)))

(declare-fun res!2830810 () Bool)

(assert (=> start!666524 (=> (not res!2830810) (not e!4174920))))

(assert (=> start!666524 (= res!2830810 (validRegex!8670 r1!6342))))

(assert (=> start!666524 e!4174920))

(assert (=> start!666524 e!4174924))

(assert (=> start!666524 e!4174925))

(assert (=> start!666524 e!4174923))

(declare-fun e!4174927 () Bool)

(assert (=> start!666524 e!4174927))

(declare-fun b!6939795 () Bool)

(assert (=> b!6939795 (= e!4174925 tp_is_empty!43153)))

(declare-fun e!4174918 () Bool)

(declare-fun e!4174922 () Bool)

(assert (=> b!6939796 (= e!4174918 e!4174922)))

(declare-fun res!2830802 () Bool)

(assert (=> b!6939796 (=> res!2830802 e!4174922)))

(declare-fun lt!2475468 () Bool)

(assert (=> b!6939796 (= res!2830802 (not lt!2475468))))

(assert (=> b!6939796 (= lt!2475468 (matchRSpec!4021 r1!6342 (_1!37124 lt!2475485)))))

(assert (=> b!6939796 (= lt!2475468 (matchR!9103 r1!6342 (_1!37124 lt!2475485)))))

(declare-fun lt!2475473 () Unit!160652)

(assert (=> b!6939796 (= lt!2475473 (mainMatchTheorem!4021 r1!6342 (_1!37124 lt!2475485)))))

(declare-fun lt!2475476 () Option!16733)

(declare-fun get!23383 (Option!16733) tuple2!67642)

(assert (=> b!6939796 (= lt!2475485 (get!23383 lt!2475476))))

(assert (=> b!6939796 (= (Exists!3964 lambda!395315) (Exists!3964 lambda!395316))))

(declare-fun lt!2475462 () Unit!160652)

(assert (=> b!6939796 (= lt!2475462 (lemmaExistCutMatchRandMatchRSpecEquivalent!2425 r1!6342 lt!2475478 s!14361))))

(assert (=> b!6939796 (Exists!3964 lambda!395315)))

(declare-fun lt!2475484 () Unit!160652)

(assert (=> b!6939796 (= lt!2475484 (lemmaFindConcatSeparationEquivalentToExists!2905 r1!6342 lt!2475478 s!14361))))

(declare-fun b!6939797 () Bool)

(declare-fun res!2830805 () Bool)

(assert (=> b!6939797 (=> res!2830805 e!4174922)))

(assert (=> b!6939797 (= res!2830805 (not (matchR!9103 lt!2475478 (_2!37124 lt!2475485))))))

(declare-fun b!6939798 () Bool)

(declare-fun tp!1912956 () Bool)

(assert (=> b!6939798 (= e!4174925 tp!1912956)))

(declare-fun b!6939799 () Bool)

(declare-fun tp!1912963 () Bool)

(declare-fun tp!1912961 () Bool)

(assert (=> b!6939799 (= e!4174924 (and tp!1912963 tp!1912961))))

(declare-fun b!6939800 () Bool)

(declare-fun res!2830809 () Bool)

(assert (=> b!6939800 (=> res!2830809 e!4174921)))

(assert (=> b!6939800 (= res!2830809 (not (matchR!9103 r3!135 (_2!37124 lt!2475472))))))

(declare-fun b!6939801 () Bool)

(declare-fun tp!1912955 () Bool)

(assert (=> b!6939801 (= e!4174927 (and tp_is_empty!43153 tp!1912955))))

(assert (=> b!6939802 (= e!4174926 (validRegex!8670 lt!2475482))))

(assert (=> b!6939802 (Exists!3964 lambda!395321)))

(declare-fun lt!2475483 () Unit!160652)

(assert (=> b!6939802 (= lt!2475483 (lemmaFindConcatSeparationEquivalentToExists!2905 lt!2475482 r3!135 s!14361))))

(assert (=> b!6939802 (isDefined!13434 (findConcatSeparation!3147 lt!2475482 r3!135 Nil!66593 s!14361 s!14361))))

(declare-fun lt!2475474 () Unit!160652)

(assert (=> b!6939802 (= lt!2475474 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!107 lt!2475482 r3!135 lt!2475455 (_2!37124 lt!2475472) s!14361 Nil!66593 s!14361))))

(declare-fun b!6939803 () Bool)

(declare-fun tp!1912953 () Bool)

(declare-fun tp!1912957 () Bool)

(assert (=> b!6939803 (= e!4174923 (and tp!1912953 tp!1912957))))

(declare-fun b!6939804 () Bool)

(assert (=> b!6939804 (= e!4174917 e!4174918)))

(declare-fun res!2830803 () Bool)

(assert (=> b!6939804 (=> res!2830803 e!4174918)))

(assert (=> b!6939804 (= res!2830803 (not (isDefined!13434 lt!2475476)))))

(assert (=> b!6939804 (= lt!2475476 (findConcatSeparation!3147 r1!6342 lt!2475478 Nil!66593 s!14361 s!14361))))

(assert (=> b!6939805 (= e!4174922 e!4174921)))

(declare-fun res!2830811 () Bool)

(assert (=> b!6939805 (=> res!2830811 e!4174921)))

(assert (=> b!6939805 (= res!2830811 (not (matchR!9103 r2!6280 (_1!37124 lt!2475472))))))

(declare-fun lt!2475465 () Option!16733)

(assert (=> b!6939805 (= lt!2475472 (get!23383 lt!2475465))))

(assert (=> b!6939805 (= (Exists!3964 lambda!395317) (Exists!3964 lambda!395318))))

(declare-fun lt!2475454 () Unit!160652)

(assert (=> b!6939805 (= lt!2475454 (lemmaExistCutMatchRandMatchRSpecEquivalent!2425 r2!6280 r3!135 (_2!37124 lt!2475485)))))

(assert (=> b!6939805 (= (isDefined!13434 lt!2475465) (Exists!3964 lambda!395317))))

(assert (=> b!6939805 (= lt!2475465 (findConcatSeparation!3147 r2!6280 r3!135 Nil!66593 (_2!37124 lt!2475485) (_2!37124 lt!2475485)))))

(declare-fun lt!2475480 () Unit!160652)

(assert (=> b!6939805 (= lt!2475480 (lemmaFindConcatSeparationEquivalentToExists!2905 r2!6280 r3!135 (_2!37124 lt!2475485)))))

(assert (=> b!6939805 (matchRSpec!4021 lt!2475478 (_2!37124 lt!2475485))))

(declare-fun lt!2475467 () Unit!160652)

(assert (=> b!6939805 (= lt!2475467 (mainMatchTheorem!4021 lt!2475478 (_2!37124 lt!2475485)))))

(assert (= (and start!666524 res!2830810) b!6939789))

(assert (= (and b!6939789 res!2830801) b!6939792))

(assert (= (and b!6939792 res!2830806) b!6939788))

(assert (= (and b!6939788 (not res!2830807)) b!6939804))

(assert (= (and b!6939804 (not res!2830803)) b!6939796))

(assert (= (and b!6939796 (not res!2830802)) b!6939797))

(assert (= (and b!6939797 (not res!2830805)) b!6939805))

(assert (= (and b!6939805 (not res!2830811)) b!6939800))

(assert (= (and b!6939800 (not res!2830809)) b!6939787))

(assert (= (and b!6939787 (not res!2830804)) b!6939794))

(assert (= (and b!6939794 (not res!2830808)) b!6939802))

(assert (= (and start!666524 (is-ElementMatch!16964 r1!6342)) b!6939790))

(assert (= (and start!666524 (is-Concat!25809 r1!6342)) b!6939799))

(assert (= (and start!666524 (is-Star!16964 r1!6342)) b!6939793))

(assert (= (and start!666524 (is-Union!16964 r1!6342)) b!6939782))

(assert (= (and start!666524 (is-ElementMatch!16964 r2!6280)) b!6939795))

(assert (= (and start!666524 (is-Concat!25809 r2!6280)) b!6939791))

(assert (= (and start!666524 (is-Star!16964 r2!6280)) b!6939798))

(assert (= (and start!666524 (is-Union!16964 r2!6280)) b!6939783))

(assert (= (and start!666524 (is-ElementMatch!16964 r3!135)) b!6939784))

(assert (= (and start!666524 (is-Concat!25809 r3!135)) b!6939786))

(assert (= (and start!666524 (is-Star!16964 r3!135)) b!6939785))

(assert (= (and start!666524 (is-Union!16964 r3!135)) b!6939803))

(assert (= (and start!666524 (is-Cons!66593 s!14361)) b!6939801))

(declare-fun m!7644952 () Bool)

(assert (=> b!6939792 m!7644952))

(declare-fun m!7644954 () Bool)

(assert (=> b!6939797 m!7644954))

(declare-fun m!7644956 () Bool)

(assert (=> b!6939796 m!7644956))

(declare-fun m!7644958 () Bool)

(assert (=> b!6939796 m!7644958))

(declare-fun m!7644960 () Bool)

(assert (=> b!6939796 m!7644960))

(declare-fun m!7644962 () Bool)

(assert (=> b!6939796 m!7644962))

(declare-fun m!7644964 () Bool)

(assert (=> b!6939796 m!7644964))

(declare-fun m!7644966 () Bool)

(assert (=> b!6939796 m!7644966))

(declare-fun m!7644968 () Bool)

(assert (=> b!6939796 m!7644968))

(assert (=> b!6939796 m!7644968))

(declare-fun m!7644970 () Bool)

(assert (=> b!6939796 m!7644970))

(declare-fun m!7644972 () Bool)

(assert (=> b!6939805 m!7644972))

(declare-fun m!7644974 () Bool)

(assert (=> b!6939805 m!7644974))

(declare-fun m!7644976 () Bool)

(assert (=> b!6939805 m!7644976))

(declare-fun m!7644978 () Bool)

(assert (=> b!6939805 m!7644978))

(declare-fun m!7644980 () Bool)

(assert (=> b!6939805 m!7644980))

(assert (=> b!6939805 m!7644972))

(declare-fun m!7644982 () Bool)

(assert (=> b!6939805 m!7644982))

(declare-fun m!7644984 () Bool)

(assert (=> b!6939805 m!7644984))

(declare-fun m!7644986 () Bool)

(assert (=> b!6939805 m!7644986))

(declare-fun m!7644988 () Bool)

(assert (=> b!6939805 m!7644988))

(declare-fun m!7644990 () Bool)

(assert (=> b!6939805 m!7644990))

(declare-fun m!7644992 () Bool)

(assert (=> b!6939804 m!7644992))

(declare-fun m!7644994 () Bool)

(assert (=> b!6939804 m!7644994))

(declare-fun m!7644996 () Bool)

(assert (=> b!6939788 m!7644996))

(declare-fun m!7644998 () Bool)

(assert (=> b!6939788 m!7644998))

(declare-fun m!7645000 () Bool)

(assert (=> b!6939788 m!7645000))

(declare-fun m!7645002 () Bool)

(assert (=> b!6939788 m!7645002))

(declare-fun m!7645004 () Bool)

(assert (=> b!6939788 m!7645004))

(declare-fun m!7645006 () Bool)

(assert (=> b!6939788 m!7645006))

(declare-fun m!7645008 () Bool)

(assert (=> b!6939787 m!7645008))

(declare-fun m!7645010 () Bool)

(assert (=> b!6939787 m!7645010))

(declare-fun m!7645012 () Bool)

(assert (=> b!6939787 m!7645012))

(declare-fun m!7645014 () Bool)

(assert (=> b!6939787 m!7645014))

(declare-fun m!7645016 () Bool)

(assert (=> b!6939787 m!7645016))

(assert (=> b!6939787 m!7645014))

(declare-fun m!7645018 () Bool)

(assert (=> b!6939787 m!7645018))

(declare-fun m!7645020 () Bool)

(assert (=> start!666524 m!7645020))

(declare-fun m!7645022 () Bool)

(assert (=> b!6939794 m!7645022))

(declare-fun m!7645024 () Bool)

(assert (=> b!6939794 m!7645024))

(declare-fun m!7645026 () Bool)

(assert (=> b!6939794 m!7645026))

(declare-fun m!7645028 () Bool)

(assert (=> b!6939794 m!7645028))

(declare-fun m!7645030 () Bool)

(assert (=> b!6939794 m!7645030))

(assert (=> b!6939794 m!7645030))

(declare-fun m!7645032 () Bool)

(assert (=> b!6939794 m!7645032))

(declare-fun m!7645034 () Bool)

(assert (=> b!6939794 m!7645034))

(declare-fun m!7645036 () Bool)

(assert (=> b!6939794 m!7645036))

(declare-fun m!7645038 () Bool)

(assert (=> b!6939794 m!7645038))

(declare-fun m!7645040 () Bool)

(assert (=> b!6939794 m!7645040))

(declare-fun m!7645042 () Bool)

(assert (=> b!6939794 m!7645042))

(declare-fun m!7645044 () Bool)

(assert (=> b!6939794 m!7645044))

(assert (=> b!6939794 m!7645024))

(declare-fun m!7645046 () Bool)

(assert (=> b!6939794 m!7645046))

(declare-fun m!7645048 () Bool)

(assert (=> b!6939789 m!7645048))

(declare-fun m!7645050 () Bool)

(assert (=> b!6939800 m!7645050))

(declare-fun m!7645052 () Bool)

(assert (=> b!6939802 m!7645052))

(declare-fun m!7645054 () Bool)

(assert (=> b!6939802 m!7645054))

(declare-fun m!7645056 () Bool)

(assert (=> b!6939802 m!7645056))

(assert (=> b!6939802 m!7645054))

(declare-fun m!7645058 () Bool)

(assert (=> b!6939802 m!7645058))

(declare-fun m!7645060 () Bool)

(assert (=> b!6939802 m!7645060))

(declare-fun m!7645062 () Bool)

(assert (=> b!6939802 m!7645062))

(push 1)

(assert (not b!6939800))

(assert (not b!6939798))

(assert (not b!6939789))

(assert (not b!6939805))

(assert (not b!6939797))

(assert (not b!6939787))

(assert (not b!6939801))

(assert (not b!6939791))

(assert (not b!6939786))

(assert (not b!6939783))

(assert (not b!6939794))

(assert (not b!6939782))

(assert (not b!6939785))

(assert (not b!6939799))

(assert (not start!666524))

(assert (not b!6939803))

(assert (not b!6939792))

(assert (not b!6939788))

(assert tp_is_empty!43153)

(assert (not b!6939793))

(assert (not b!6939802))

(assert (not b!6939796))

(assert (not b!6939804))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1854178 () Bool)

(declare-fun d!2167510 () Bool)

(assert (= bs!1854178 (and d!2167510 b!6939796)))

(declare-fun lambda!395353 () Int)

(assert (=> bs!1854178 (not (= lambda!395353 lambda!395316))))

(declare-fun bs!1854179 () Bool)

(assert (= bs!1854179 (and d!2167510 b!6939805)))

(assert (=> bs!1854179 (= lambda!395353 lambda!395317)))

(declare-fun bs!1854180 () Bool)

(assert (= bs!1854180 (and d!2167510 b!6939802)))

(assert (=> bs!1854180 (= (and (= (_2!37124 lt!2475485) s!14361) (= r2!6280 lt!2475482)) (= lambda!395353 lambda!395321))))

(assert (=> bs!1854179 (not (= lambda!395353 lambda!395318))))

(declare-fun bs!1854181 () Bool)

(assert (= bs!1854181 (and d!2167510 b!6939794)))

(assert (=> bs!1854181 (= (and (= (_2!37124 lt!2475485) lt!2475455) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395353 lambda!395319))))

(assert (=> bs!1854181 (not (= lambda!395353 lambda!395320))))

(assert (=> bs!1854178 (= (and (= (_2!37124 lt!2475485) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2475478)) (= lambda!395353 lambda!395315))))

(assert (=> d!2167510 true))

(assert (=> d!2167510 true))

(assert (=> d!2167510 true))

(declare-fun lambda!395354 () Int)

(assert (=> bs!1854178 (= (and (= (_2!37124 lt!2475485) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2475478)) (= lambda!395354 lambda!395316))))

(assert (=> bs!1854179 (not (= lambda!395354 lambda!395317))))

(assert (=> bs!1854180 (not (= lambda!395354 lambda!395321))))

(assert (=> bs!1854179 (= lambda!395354 lambda!395318)))

(declare-fun bs!1854182 () Bool)

(assert (= bs!1854182 d!2167510))

(assert (=> bs!1854182 (not (= lambda!395354 lambda!395353))))

(assert (=> bs!1854181 (not (= lambda!395354 lambda!395319))))

(assert (=> bs!1854181 (= (and (= (_2!37124 lt!2475485) lt!2475455) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395354 lambda!395320))))

(assert (=> bs!1854178 (not (= lambda!395354 lambda!395315))))

(assert (=> d!2167510 true))

(assert (=> d!2167510 true))

(assert (=> d!2167510 true))

(assert (=> d!2167510 (= (Exists!3964 lambda!395353) (Exists!3964 lambda!395354))))

(declare-fun lt!2475584 () Unit!160652)

(declare-fun choose!51700 (Regex!16964 Regex!16964 List!66717) Unit!160652)

(assert (=> d!2167510 (= lt!2475584 (choose!51700 r2!6280 r3!135 (_2!37124 lt!2475485)))))

(assert (=> d!2167510 (validRegex!8670 r2!6280)))

(assert (=> d!2167510 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2425 r2!6280 r3!135 (_2!37124 lt!2475485)) lt!2475584)))

(declare-fun m!7645176 () Bool)

(assert (=> bs!1854182 m!7645176))

(declare-fun m!7645178 () Bool)

(assert (=> bs!1854182 m!7645178))

(declare-fun m!7645180 () Bool)

(assert (=> bs!1854182 m!7645180))

(assert (=> bs!1854182 m!7645048))

(assert (=> b!6939805 d!2167510))

(declare-fun b!6939966 () Bool)

(declare-fun res!2830909 () Bool)

(declare-fun e!4175002 () Bool)

(assert (=> b!6939966 (=> res!2830909 e!4175002)))

(declare-fun isEmpty!38864 (List!66717) Bool)

(declare-fun tail!12961 (List!66717) List!66717)

(assert (=> b!6939966 (= res!2830909 (not (isEmpty!38864 (tail!12961 (_1!37124 lt!2475472)))))))

(declare-fun b!6939967 () Bool)

(declare-fun res!2830915 () Bool)

(declare-fun e!4175005 () Bool)

(assert (=> b!6939967 (=> res!2830915 e!4175005)))

(declare-fun e!4174999 () Bool)

(assert (=> b!6939967 (= res!2830915 e!4174999)))

(declare-fun res!2830913 () Bool)

(assert (=> b!6939967 (=> (not res!2830913) (not e!4174999))))

(declare-fun lt!2475587 () Bool)

(assert (=> b!6939967 (= res!2830913 lt!2475587)))

(declare-fun b!6939968 () Bool)

(declare-fun e!4175001 () Bool)

(assert (=> b!6939968 (= e!4175001 (not lt!2475587))))

(declare-fun b!6939969 () Bool)

(declare-fun e!4175000 () Bool)

(declare-fun nullable!6781 (Regex!16964) Bool)

(assert (=> b!6939969 (= e!4175000 (nullable!6781 r2!6280))))

(declare-fun d!2167512 () Bool)

(declare-fun e!4175004 () Bool)

(assert (=> d!2167512 e!4175004))

(declare-fun c!1287716 () Bool)

(assert (=> d!2167512 (= c!1287716 (is-EmptyExpr!16964 r2!6280))))

(assert (=> d!2167512 (= lt!2475587 e!4175000)))

(declare-fun c!1287714 () Bool)

(assert (=> d!2167512 (= c!1287714 (isEmpty!38864 (_1!37124 lt!2475472)))))

(assert (=> d!2167512 (validRegex!8670 r2!6280)))

(assert (=> d!2167512 (= (matchR!9103 r2!6280 (_1!37124 lt!2475472)) lt!2475587)))

(declare-fun b!6939970 () Bool)

(declare-fun res!2830916 () Bool)

(assert (=> b!6939970 (=> (not res!2830916) (not e!4174999))))

(assert (=> b!6939970 (= res!2830916 (isEmpty!38864 (tail!12961 (_1!37124 lt!2475472))))))

(declare-fun b!6939971 () Bool)

(declare-fun res!2830912 () Bool)

(assert (=> b!6939971 (=> (not res!2830912) (not e!4174999))))

(declare-fun call!630484 () Bool)

(assert (=> b!6939971 (= res!2830912 (not call!630484))))

(declare-fun b!6939972 () Bool)

(assert (=> b!6939972 (= e!4175004 (= lt!2475587 call!630484))))

(declare-fun b!6939973 () Bool)

(declare-fun e!4175003 () Bool)

(assert (=> b!6939973 (= e!4175005 e!4175003)))

(declare-fun res!2830911 () Bool)

(assert (=> b!6939973 (=> (not res!2830911) (not e!4175003))))

(assert (=> b!6939973 (= res!2830911 (not lt!2475587))))

(declare-fun bm!630479 () Bool)

(assert (=> bm!630479 (= call!630484 (isEmpty!38864 (_1!37124 lt!2475472)))))

(declare-fun b!6939974 () Bool)

(assert (=> b!6939974 (= e!4175004 e!4175001)))

(declare-fun c!1287715 () Bool)

(assert (=> b!6939974 (= c!1287715 (is-EmptyLang!16964 r2!6280))))

(declare-fun b!6939975 () Bool)

(declare-fun head!13909 (List!66717) C!34198)

(assert (=> b!6939975 (= e!4175002 (not (= (head!13909 (_1!37124 lt!2475472)) (c!1287706 r2!6280))))))

(declare-fun b!6939976 () Bool)

(assert (=> b!6939976 (= e!4174999 (= (head!13909 (_1!37124 lt!2475472)) (c!1287706 r2!6280)))))

(declare-fun b!6939977 () Bool)

(assert (=> b!6939977 (= e!4175003 e!4175002)))

(declare-fun res!2830910 () Bool)

(assert (=> b!6939977 (=> res!2830910 e!4175002)))

(assert (=> b!6939977 (= res!2830910 call!630484)))

(declare-fun b!6939978 () Bool)

(declare-fun res!2830914 () Bool)

(assert (=> b!6939978 (=> res!2830914 e!4175005)))

(assert (=> b!6939978 (= res!2830914 (not (is-ElementMatch!16964 r2!6280)))))

(assert (=> b!6939978 (= e!4175001 e!4175005)))

(declare-fun b!6939979 () Bool)

(declare-fun derivativeStep!5456 (Regex!16964 C!34198) Regex!16964)

(assert (=> b!6939979 (= e!4175000 (matchR!9103 (derivativeStep!5456 r2!6280 (head!13909 (_1!37124 lt!2475472))) (tail!12961 (_1!37124 lt!2475472))))))

(assert (= (and d!2167512 c!1287714) b!6939969))

(assert (= (and d!2167512 (not c!1287714)) b!6939979))

(assert (= (and d!2167512 c!1287716) b!6939972))

(assert (= (and d!2167512 (not c!1287716)) b!6939974))

(assert (= (and b!6939974 c!1287715) b!6939968))

(assert (= (and b!6939974 (not c!1287715)) b!6939978))

(assert (= (and b!6939978 (not res!2830914)) b!6939967))

(assert (= (and b!6939967 res!2830913) b!6939971))

(assert (= (and b!6939971 res!2830912) b!6939970))

(assert (= (and b!6939970 res!2830916) b!6939976))

(assert (= (and b!6939967 (not res!2830915)) b!6939973))

(assert (= (and b!6939973 res!2830911) b!6939977))

(assert (= (and b!6939977 (not res!2830910)) b!6939966))

(assert (= (and b!6939966 (not res!2830909)) b!6939975))

(assert (= (or b!6939972 b!6939971 b!6939977) bm!630479))

(declare-fun m!7645182 () Bool)

(assert (=> b!6939966 m!7645182))

(assert (=> b!6939966 m!7645182))

(declare-fun m!7645184 () Bool)

(assert (=> b!6939966 m!7645184))

(declare-fun m!7645186 () Bool)

(assert (=> d!2167512 m!7645186))

(assert (=> d!2167512 m!7645048))

(assert (=> bm!630479 m!7645186))

(declare-fun m!7645188 () Bool)

(assert (=> b!6939969 m!7645188))

(declare-fun m!7645190 () Bool)

(assert (=> b!6939976 m!7645190))

(assert (=> b!6939979 m!7645190))

(assert (=> b!6939979 m!7645190))

(declare-fun m!7645192 () Bool)

(assert (=> b!6939979 m!7645192))

(assert (=> b!6939979 m!7645182))

(assert (=> b!6939979 m!7645192))

(assert (=> b!6939979 m!7645182))

(declare-fun m!7645194 () Bool)

(assert (=> b!6939979 m!7645194))

(assert (=> b!6939975 m!7645190))

(assert (=> b!6939970 m!7645182))

(assert (=> b!6939970 m!7645182))

(assert (=> b!6939970 m!7645184))

(assert (=> b!6939805 d!2167512))

(declare-fun d!2167514 () Bool)

(declare-fun isEmpty!38865 (Option!16733) Bool)

(assert (=> d!2167514 (= (isDefined!13434 lt!2475465) (not (isEmpty!38865 lt!2475465)))))

(declare-fun bs!1854183 () Bool)

(assert (= bs!1854183 d!2167514))

(declare-fun m!7645196 () Bool)

(assert (=> bs!1854183 m!7645196))

(assert (=> b!6939805 d!2167514))

(declare-fun b!6939998 () Bool)

(declare-fun e!4175016 () Option!16733)

(assert (=> b!6939998 (= e!4175016 (Some!16732 (tuple2!67643 Nil!66593 (_2!37124 lt!2475485))))))

(declare-fun b!6939999 () Bool)

(declare-fun e!4175017 () Bool)

(declare-fun lt!2475594 () Option!16733)

(assert (=> b!6939999 (= e!4175017 (not (isDefined!13434 lt!2475594)))))

(declare-fun d!2167516 () Bool)

(assert (=> d!2167516 e!4175017))

(declare-fun res!2830928 () Bool)

(assert (=> d!2167516 (=> res!2830928 e!4175017)))

(declare-fun e!4175020 () Bool)

(assert (=> d!2167516 (= res!2830928 e!4175020)))

(declare-fun res!2830929 () Bool)

(assert (=> d!2167516 (=> (not res!2830929) (not e!4175020))))

(assert (=> d!2167516 (= res!2830929 (isDefined!13434 lt!2475594))))

(assert (=> d!2167516 (= lt!2475594 e!4175016)))

(declare-fun c!1287721 () Bool)

(declare-fun e!4175018 () Bool)

(assert (=> d!2167516 (= c!1287721 e!4175018)))

(declare-fun res!2830931 () Bool)

(assert (=> d!2167516 (=> (not res!2830931) (not e!4175018))))

(assert (=> d!2167516 (= res!2830931 (matchR!9103 r2!6280 Nil!66593))))

(assert (=> d!2167516 (validRegex!8670 r2!6280)))

(assert (=> d!2167516 (= (findConcatSeparation!3147 r2!6280 r3!135 Nil!66593 (_2!37124 lt!2475485) (_2!37124 lt!2475485)) lt!2475594)))

(declare-fun b!6940000 () Bool)

(declare-fun e!4175019 () Option!16733)

(assert (=> b!6940000 (= e!4175016 e!4175019)))

(declare-fun c!1287722 () Bool)

(assert (=> b!6940000 (= c!1287722 (is-Nil!66593 (_2!37124 lt!2475485)))))

(declare-fun b!6940001 () Bool)

(assert (=> b!6940001 (= e!4175018 (matchR!9103 r3!135 (_2!37124 lt!2475485)))))

(declare-fun b!6940002 () Bool)

(declare-fun res!2830930 () Bool)

(assert (=> b!6940002 (=> (not res!2830930) (not e!4175020))))

(assert (=> b!6940002 (= res!2830930 (matchR!9103 r3!135 (_2!37124 (get!23383 lt!2475594))))))

(declare-fun b!6940003 () Bool)

(declare-fun res!2830927 () Bool)

(assert (=> b!6940003 (=> (not res!2830927) (not e!4175020))))

(assert (=> b!6940003 (= res!2830927 (matchR!9103 r2!6280 (_1!37124 (get!23383 lt!2475594))))))

(declare-fun b!6940004 () Bool)

(assert (=> b!6940004 (= e!4175020 (= (++!15003 (_1!37124 (get!23383 lt!2475594)) (_2!37124 (get!23383 lt!2475594))) (_2!37124 lt!2475485)))))

(declare-fun b!6940005 () Bool)

(assert (=> b!6940005 (= e!4175019 None!16732)))

(declare-fun b!6940006 () Bool)

(declare-fun lt!2475595 () Unit!160652)

(declare-fun lt!2475596 () Unit!160652)

(assert (=> b!6940006 (= lt!2475595 lt!2475596)))

(assert (=> b!6940006 (= (++!15003 (++!15003 Nil!66593 (Cons!66593 (h!73041 (_2!37124 lt!2475485)) Nil!66593)) (t!380460 (_2!37124 lt!2475485))) (_2!37124 lt!2475485))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2860 (List!66717 C!34198 List!66717 List!66717) Unit!160652)

(assert (=> b!6940006 (= lt!2475596 (lemmaMoveElementToOtherListKeepsConcatEq!2860 Nil!66593 (h!73041 (_2!37124 lt!2475485)) (t!380460 (_2!37124 lt!2475485)) (_2!37124 lt!2475485)))))

(assert (=> b!6940006 (= e!4175019 (findConcatSeparation!3147 r2!6280 r3!135 (++!15003 Nil!66593 (Cons!66593 (h!73041 (_2!37124 lt!2475485)) Nil!66593)) (t!380460 (_2!37124 lt!2475485)) (_2!37124 lt!2475485)))))

(assert (= (and d!2167516 res!2830931) b!6940001))

(assert (= (and d!2167516 c!1287721) b!6939998))

(assert (= (and d!2167516 (not c!1287721)) b!6940000))

(assert (= (and b!6940000 c!1287722) b!6940005))

(assert (= (and b!6940000 (not c!1287722)) b!6940006))

(assert (= (and d!2167516 res!2830929) b!6940003))

(assert (= (and b!6940003 res!2830927) b!6940002))

(assert (= (and b!6940002 res!2830930) b!6940004))

(assert (= (and d!2167516 (not res!2830928)) b!6939999))

(declare-fun m!7645198 () Bool)

(assert (=> b!6940003 m!7645198))

(declare-fun m!7645200 () Bool)

(assert (=> b!6940003 m!7645200))

(declare-fun m!7645202 () Bool)

(assert (=> d!2167516 m!7645202))

(declare-fun m!7645204 () Bool)

(assert (=> d!2167516 m!7645204))

(assert (=> d!2167516 m!7645048))

(assert (=> b!6940002 m!7645198))

(declare-fun m!7645206 () Bool)

(assert (=> b!6940002 m!7645206))

(assert (=> b!6940004 m!7645198))

(declare-fun m!7645208 () Bool)

(assert (=> b!6940004 m!7645208))

(assert (=> b!6939999 m!7645202))

(declare-fun m!7645210 () Bool)

(assert (=> b!6940001 m!7645210))

(declare-fun m!7645212 () Bool)

(assert (=> b!6940006 m!7645212))

(assert (=> b!6940006 m!7645212))

(declare-fun m!7645214 () Bool)

(assert (=> b!6940006 m!7645214))

(declare-fun m!7645216 () Bool)

(assert (=> b!6940006 m!7645216))

(assert (=> b!6940006 m!7645212))

(declare-fun m!7645218 () Bool)

(assert (=> b!6940006 m!7645218))

(assert (=> b!6939805 d!2167516))

(declare-fun bs!1854184 () Bool)

(declare-fun d!2167520 () Bool)

(assert (= bs!1854184 (and d!2167520 b!6939796)))

(declare-fun lambda!395357 () Int)

(assert (=> bs!1854184 (not (= lambda!395357 lambda!395316))))

(declare-fun bs!1854185 () Bool)

(assert (= bs!1854185 (and d!2167520 b!6939805)))

(assert (=> bs!1854185 (= lambda!395357 lambda!395317)))

(declare-fun bs!1854186 () Bool)

(assert (= bs!1854186 (and d!2167520 b!6939802)))

(assert (=> bs!1854186 (= (and (= (_2!37124 lt!2475485) s!14361) (= r2!6280 lt!2475482)) (= lambda!395357 lambda!395321))))

(assert (=> bs!1854185 (not (= lambda!395357 lambda!395318))))

(declare-fun bs!1854187 () Bool)

(assert (= bs!1854187 (and d!2167520 d!2167510)))

(assert (=> bs!1854187 (= lambda!395357 lambda!395353)))

(declare-fun bs!1854188 () Bool)

(assert (= bs!1854188 (and d!2167520 b!6939794)))

(assert (=> bs!1854188 (= (and (= (_2!37124 lt!2475485) lt!2475455) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395357 lambda!395319))))

(assert (=> bs!1854188 (not (= lambda!395357 lambda!395320))))

(assert (=> bs!1854184 (= (and (= (_2!37124 lt!2475485) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2475478)) (= lambda!395357 lambda!395315))))

(assert (=> bs!1854187 (not (= lambda!395357 lambda!395354))))

(assert (=> d!2167520 true))

(assert (=> d!2167520 true))

(assert (=> d!2167520 true))

(assert (=> d!2167520 (= (isDefined!13434 (findConcatSeparation!3147 r2!6280 r3!135 Nil!66593 (_2!37124 lt!2475485) (_2!37124 lt!2475485))) (Exists!3964 lambda!395357))))

(declare-fun lt!2475601 () Unit!160652)

(declare-fun choose!51701 (Regex!16964 Regex!16964 List!66717) Unit!160652)

(assert (=> d!2167520 (= lt!2475601 (choose!51701 r2!6280 r3!135 (_2!37124 lt!2475485)))))

(assert (=> d!2167520 (validRegex!8670 r2!6280)))

(assert (=> d!2167520 (= (lemmaFindConcatSeparationEquivalentToExists!2905 r2!6280 r3!135 (_2!37124 lt!2475485)) lt!2475601)))

(declare-fun bs!1854189 () Bool)

(assert (= bs!1854189 d!2167520))

(assert (=> bs!1854189 m!7644976))

(declare-fun m!7645220 () Bool)

(assert (=> bs!1854189 m!7645220))

(declare-fun m!7645222 () Bool)

(assert (=> bs!1854189 m!7645222))

(declare-fun m!7645224 () Bool)

(assert (=> bs!1854189 m!7645224))

(assert (=> bs!1854189 m!7645048))

(assert (=> bs!1854189 m!7644976))

(assert (=> b!6939805 d!2167520))

(declare-fun d!2167522 () Bool)

(assert (=> d!2167522 (= (get!23383 lt!2475465) (v!53004 lt!2475465))))

(assert (=> b!6939805 d!2167522))

(declare-fun d!2167524 () Bool)

(declare-fun choose!51702 (Int) Bool)

(assert (=> d!2167524 (= (Exists!3964 lambda!395318) (choose!51702 lambda!395318))))

(declare-fun bs!1854190 () Bool)

(assert (= bs!1854190 d!2167524))

(declare-fun m!7645226 () Bool)

(assert (=> bs!1854190 m!7645226))

(assert (=> b!6939805 d!2167524))

(declare-fun bs!1854191 () Bool)

(declare-fun b!6940090 () Bool)

(assert (= bs!1854191 (and b!6940090 b!6939796)))

(declare-fun lambda!395362 () Int)

(assert (=> bs!1854191 (not (= lambda!395362 lambda!395316))))

(declare-fun bs!1854192 () Bool)

(assert (= bs!1854192 (and b!6940090 b!6939805)))

(assert (=> bs!1854192 (not (= lambda!395362 lambda!395317))))

(declare-fun bs!1854193 () Bool)

(assert (= bs!1854193 (and b!6940090 b!6939802)))

(assert (=> bs!1854193 (not (= lambda!395362 lambda!395321))))

(assert (=> bs!1854192 (not (= lambda!395362 lambda!395318))))

(declare-fun bs!1854194 () Bool)

(assert (= bs!1854194 (and b!6940090 d!2167510)))

(assert (=> bs!1854194 (not (= lambda!395362 lambda!395353))))

(declare-fun bs!1854195 () Bool)

(assert (= bs!1854195 (and b!6940090 b!6939794)))

(assert (=> bs!1854195 (not (= lambda!395362 lambda!395319))))

(assert (=> bs!1854195 (not (= lambda!395362 lambda!395320))))

(assert (=> bs!1854194 (not (= lambda!395362 lambda!395354))))

(assert (=> bs!1854191 (not (= lambda!395362 lambda!395315))))

(declare-fun bs!1854196 () Bool)

(assert (= bs!1854196 (and b!6940090 d!2167520)))

(assert (=> bs!1854196 (not (= lambda!395362 lambda!395357))))

(assert (=> b!6940090 true))

(assert (=> b!6940090 true))

(declare-fun bs!1854197 () Bool)

(declare-fun b!6940095 () Bool)

(assert (= bs!1854197 (and b!6940095 b!6939796)))

(declare-fun lambda!395363 () Int)

(assert (=> bs!1854197 (= (and (= (_2!37124 lt!2475485) s!14361) (= (regOne!34440 lt!2475478) r1!6342) (= (regTwo!34440 lt!2475478) lt!2475478)) (= lambda!395363 lambda!395316))))

(declare-fun bs!1854198 () Bool)

(assert (= bs!1854198 (and b!6940095 b!6939805)))

(assert (=> bs!1854198 (not (= lambda!395363 lambda!395317))))

(declare-fun bs!1854199 () Bool)

(assert (= bs!1854199 (and b!6940095 b!6939802)))

(assert (=> bs!1854199 (not (= lambda!395363 lambda!395321))))

(declare-fun bs!1854200 () Bool)

(assert (= bs!1854200 (and b!6940095 b!6940090)))

(assert (=> bs!1854200 (not (= lambda!395363 lambda!395362))))

(assert (=> bs!1854198 (= (and (= (regOne!34440 lt!2475478) r2!6280) (= (regTwo!34440 lt!2475478) r3!135)) (= lambda!395363 lambda!395318))))

(declare-fun bs!1854201 () Bool)

(assert (= bs!1854201 (and b!6940095 d!2167510)))

(assert (=> bs!1854201 (not (= lambda!395363 lambda!395353))))

(declare-fun bs!1854202 () Bool)

(assert (= bs!1854202 (and b!6940095 b!6939794)))

(assert (=> bs!1854202 (not (= lambda!395363 lambda!395319))))

(assert (=> bs!1854202 (= (and (= (_2!37124 lt!2475485) lt!2475455) (= (regOne!34440 lt!2475478) r1!6342) (= (regTwo!34440 lt!2475478) r2!6280)) (= lambda!395363 lambda!395320))))

(assert (=> bs!1854201 (= (and (= (regOne!34440 lt!2475478) r2!6280) (= (regTwo!34440 lt!2475478) r3!135)) (= lambda!395363 lambda!395354))))

(assert (=> bs!1854197 (not (= lambda!395363 lambda!395315))))

(declare-fun bs!1854203 () Bool)

(assert (= bs!1854203 (and b!6940095 d!2167520)))

(assert (=> bs!1854203 (not (= lambda!395363 lambda!395357))))

(assert (=> b!6940095 true))

(assert (=> b!6940095 true))

(declare-fun d!2167526 () Bool)

(declare-fun c!1287742 () Bool)

(assert (=> d!2167526 (= c!1287742 (is-EmptyExpr!16964 lt!2475478))))

(declare-fun e!4175066 () Bool)

(assert (=> d!2167526 (= (matchRSpec!4021 lt!2475478 (_2!37124 lt!2475485)) e!4175066)))

(declare-fun b!6940085 () Bool)

(declare-fun e!4175062 () Bool)

(declare-fun e!4175063 () Bool)

(assert (=> b!6940085 (= e!4175062 e!4175063)))

(declare-fun res!2830977 () Bool)

(assert (=> b!6940085 (= res!2830977 (matchRSpec!4021 (regOne!34441 lt!2475478) (_2!37124 lt!2475485)))))

(assert (=> b!6940085 (=> res!2830977 e!4175063)))

(declare-fun b!6940086 () Bool)

(declare-fun c!1287741 () Bool)

(assert (=> b!6940086 (= c!1287741 (is-Union!16964 lt!2475478))))

(declare-fun e!4175067 () Bool)

(assert (=> b!6940086 (= e!4175067 e!4175062)))

(declare-fun b!6940087 () Bool)

(assert (=> b!6940087 (= e!4175063 (matchRSpec!4021 (regTwo!34441 lt!2475478) (_2!37124 lt!2475485)))))

(declare-fun b!6940088 () Bool)

(assert (=> b!6940088 (= e!4175067 (= (_2!37124 lt!2475485) (Cons!66593 (c!1287706 lt!2475478) Nil!66593)))))

(declare-fun bm!630487 () Bool)

(declare-fun call!630492 () Bool)

(declare-fun c!1287740 () Bool)

(assert (=> bm!630487 (= call!630492 (Exists!3964 (ite c!1287740 lambda!395362 lambda!395363)))))

(declare-fun b!6940089 () Bool)

(declare-fun res!2830978 () Bool)

(declare-fun e!4175064 () Bool)

(assert (=> b!6940089 (=> res!2830978 e!4175064)))

(declare-fun call!630493 () Bool)

(assert (=> b!6940089 (= res!2830978 call!630493)))

(declare-fun e!4175065 () Bool)

(assert (=> b!6940089 (= e!4175065 e!4175064)))

(assert (=> b!6940090 (= e!4175064 call!630492)))

(declare-fun bm!630488 () Bool)

(assert (=> bm!630488 (= call!630493 (isEmpty!38864 (_2!37124 lt!2475485)))))

(declare-fun b!6940091 () Bool)

(declare-fun e!4175068 () Bool)

(assert (=> b!6940091 (= e!4175066 e!4175068)))

(declare-fun res!2830976 () Bool)

(assert (=> b!6940091 (= res!2830976 (not (is-EmptyLang!16964 lt!2475478)))))

(assert (=> b!6940091 (=> (not res!2830976) (not e!4175068))))

(declare-fun b!6940092 () Bool)

(assert (=> b!6940092 (= e!4175066 call!630493)))

(declare-fun b!6940093 () Bool)

(assert (=> b!6940093 (= e!4175062 e!4175065)))

(assert (=> b!6940093 (= c!1287740 (is-Star!16964 lt!2475478))))

(declare-fun b!6940094 () Bool)

(declare-fun c!1287743 () Bool)

(assert (=> b!6940094 (= c!1287743 (is-ElementMatch!16964 lt!2475478))))

(assert (=> b!6940094 (= e!4175068 e!4175067)))

(assert (=> b!6940095 (= e!4175065 call!630492)))

(assert (= (and d!2167526 c!1287742) b!6940092))

(assert (= (and d!2167526 (not c!1287742)) b!6940091))

(assert (= (and b!6940091 res!2830976) b!6940094))

(assert (= (and b!6940094 c!1287743) b!6940088))

(assert (= (and b!6940094 (not c!1287743)) b!6940086))

(assert (= (and b!6940086 c!1287741) b!6940085))

(assert (= (and b!6940086 (not c!1287741)) b!6940093))

(assert (= (and b!6940085 (not res!2830977)) b!6940087))

(assert (= (and b!6940093 c!1287740) b!6940089))

(assert (= (and b!6940093 (not c!1287740)) b!6940095))

(assert (= (and b!6940089 (not res!2830978)) b!6940090))

(assert (= (or b!6940090 b!6940095) bm!630487))

(assert (= (or b!6940092 b!6940089) bm!630488))

(declare-fun m!7645244 () Bool)

(assert (=> b!6940085 m!7645244))

(declare-fun m!7645246 () Bool)

(assert (=> b!6940087 m!7645246))

(declare-fun m!7645248 () Bool)

(assert (=> bm!630487 m!7645248))

(declare-fun m!7645250 () Bool)

(assert (=> bm!630488 m!7645250))

(assert (=> b!6939805 d!2167526))

(declare-fun d!2167530 () Bool)

(assert (=> d!2167530 (= (matchR!9103 lt!2475478 (_2!37124 lt!2475485)) (matchRSpec!4021 lt!2475478 (_2!37124 lt!2475485)))))

(declare-fun lt!2475605 () Unit!160652)

(declare-fun choose!51703 (Regex!16964 List!66717) Unit!160652)

(assert (=> d!2167530 (= lt!2475605 (choose!51703 lt!2475478 (_2!37124 lt!2475485)))))

(assert (=> d!2167530 (validRegex!8670 lt!2475478)))

(assert (=> d!2167530 (= (mainMatchTheorem!4021 lt!2475478 (_2!37124 lt!2475485)) lt!2475605)))

(declare-fun bs!1854204 () Bool)

(assert (= bs!1854204 d!2167530))

(assert (=> bs!1854204 m!7644954))

(assert (=> bs!1854204 m!7644980))

(declare-fun m!7645252 () Bool)

(assert (=> bs!1854204 m!7645252))

(declare-fun m!7645254 () Bool)

(assert (=> bs!1854204 m!7645254))

(assert (=> b!6939805 d!2167530))

(declare-fun d!2167532 () Bool)

(assert (=> d!2167532 (= (Exists!3964 lambda!395317) (choose!51702 lambda!395317))))

(declare-fun bs!1854205 () Bool)

(assert (= bs!1854205 d!2167532))

(declare-fun m!7645256 () Bool)

(assert (=> bs!1854205 m!7645256))

(assert (=> b!6939805 d!2167532))

(declare-fun d!2167534 () Bool)

(assert (=> d!2167534 (= (Exists!3964 lambda!395319) (choose!51702 lambda!395319))))

(declare-fun bs!1854206 () Bool)

(assert (= bs!1854206 d!2167534))

(declare-fun m!7645258 () Bool)

(assert (=> bs!1854206 m!7645258))

(assert (=> b!6939794 d!2167534))

(declare-fun b!6940108 () Bool)

(declare-fun e!4175075 () List!66717)

(assert (=> b!6940108 (= e!4175075 (_1!37124 lt!2475472))))

(declare-fun b!6940110 () Bool)

(declare-fun res!2830983 () Bool)

(declare-fun e!4175076 () Bool)

(assert (=> b!6940110 (=> (not res!2830983) (not e!4175076))))

(declare-fun lt!2475608 () List!66717)

(declare-fun size!40800 (List!66717) Int)

(assert (=> b!6940110 (= res!2830983 (= (size!40800 lt!2475608) (+ (size!40800 (_1!37124 lt!2475485)) (size!40800 (_1!37124 lt!2475472)))))))

(declare-fun d!2167536 () Bool)

(assert (=> d!2167536 e!4175076))

(declare-fun res!2830984 () Bool)

(assert (=> d!2167536 (=> (not res!2830984) (not e!4175076))))

(declare-fun content!13103 (List!66717) (Set C!34198))

(assert (=> d!2167536 (= res!2830984 (= (content!13103 lt!2475608) (set.union (content!13103 (_1!37124 lt!2475485)) (content!13103 (_1!37124 lt!2475472)))))))

(assert (=> d!2167536 (= lt!2475608 e!4175075)))

(declare-fun c!1287748 () Bool)

(assert (=> d!2167536 (= c!1287748 (is-Nil!66593 (_1!37124 lt!2475485)))))

(assert (=> d!2167536 (= (++!15003 (_1!37124 lt!2475485) (_1!37124 lt!2475472)) lt!2475608)))

(declare-fun b!6940111 () Bool)

(assert (=> b!6940111 (= e!4175076 (or (not (= (_1!37124 lt!2475472) Nil!66593)) (= lt!2475608 (_1!37124 lt!2475485))))))

(declare-fun b!6940109 () Bool)

(assert (=> b!6940109 (= e!4175075 (Cons!66593 (h!73041 (_1!37124 lt!2475485)) (++!15003 (t!380460 (_1!37124 lt!2475485)) (_1!37124 lt!2475472))))))

(assert (= (and d!2167536 c!1287748) b!6940108))

(assert (= (and d!2167536 (not c!1287748)) b!6940109))

(assert (= (and d!2167536 res!2830984) b!6940110))

(assert (= (and b!6940110 res!2830983) b!6940111))

(declare-fun m!7645260 () Bool)

(assert (=> b!6940110 m!7645260))

(declare-fun m!7645262 () Bool)

(assert (=> b!6940110 m!7645262))

(declare-fun m!7645264 () Bool)

(assert (=> b!6940110 m!7645264))

(declare-fun m!7645266 () Bool)

(assert (=> d!2167536 m!7645266))

(declare-fun m!7645268 () Bool)

(assert (=> d!2167536 m!7645268))

(declare-fun m!7645270 () Bool)

(assert (=> d!2167536 m!7645270))

(declare-fun m!7645272 () Bool)

(assert (=> b!6940109 m!7645272))

(assert (=> b!6939794 d!2167536))

(declare-fun d!2167538 () Bool)

(assert (=> d!2167538 (= (Exists!3964 lambda!395320) (choose!51702 lambda!395320))))

(declare-fun bs!1854207 () Bool)

(assert (= bs!1854207 d!2167538))

(declare-fun m!7645274 () Bool)

(assert (=> bs!1854207 m!7645274))

(assert (=> b!6939794 d!2167538))

(declare-fun bs!1854208 () Bool)

(declare-fun d!2167540 () Bool)

(assert (= bs!1854208 (and d!2167540 b!6939796)))

(declare-fun lambda!395364 () Int)

(assert (=> bs!1854208 (not (= lambda!395364 lambda!395316))))

(declare-fun bs!1854209 () Bool)

(assert (= bs!1854209 (and d!2167540 b!6939805)))

(assert (=> bs!1854209 (= (and (= lt!2475455 (_2!37124 lt!2475485)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395364 lambda!395317))))

(declare-fun bs!1854210 () Bool)

(assert (= bs!1854210 (and d!2167540 b!6939802)))

(assert (=> bs!1854210 (= (and (= lt!2475455 s!14361) (= r1!6342 lt!2475482) (= r2!6280 r3!135)) (= lambda!395364 lambda!395321))))

(declare-fun bs!1854211 () Bool)

(assert (= bs!1854211 (and d!2167540 b!6940090)))

(assert (=> bs!1854211 (not (= lambda!395364 lambda!395362))))

(assert (=> bs!1854209 (not (= lambda!395364 lambda!395318))))

(declare-fun bs!1854212 () Bool)

(assert (= bs!1854212 (and d!2167540 d!2167510)))

(assert (=> bs!1854212 (= (and (= lt!2475455 (_2!37124 lt!2475485)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395364 lambda!395353))))

(declare-fun bs!1854213 () Bool)

(assert (= bs!1854213 (and d!2167540 b!6939794)))

(assert (=> bs!1854213 (= lambda!395364 lambda!395319)))

(assert (=> bs!1854213 (not (= lambda!395364 lambda!395320))))

(declare-fun bs!1854214 () Bool)

(assert (= bs!1854214 (and d!2167540 b!6940095)))

(assert (=> bs!1854214 (not (= lambda!395364 lambda!395363))))

(assert (=> bs!1854212 (not (= lambda!395364 lambda!395354))))

(assert (=> bs!1854208 (= (and (= lt!2475455 s!14361) (= r2!6280 lt!2475478)) (= lambda!395364 lambda!395315))))

(declare-fun bs!1854215 () Bool)

(assert (= bs!1854215 (and d!2167540 d!2167520)))

(assert (=> bs!1854215 (= (and (= lt!2475455 (_2!37124 lt!2475485)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395364 lambda!395357))))

(assert (=> d!2167540 true))

(assert (=> d!2167540 true))

(assert (=> d!2167540 true))

(declare-fun lambda!395365 () Int)

(assert (=> bs!1854208 (= (and (= lt!2475455 s!14361) (= r2!6280 lt!2475478)) (= lambda!395365 lambda!395316))))

(assert (=> bs!1854209 (not (= lambda!395365 lambda!395317))))

(assert (=> bs!1854210 (not (= lambda!395365 lambda!395321))))

(assert (=> bs!1854211 (not (= lambda!395365 lambda!395362))))

(assert (=> bs!1854209 (= (and (= lt!2475455 (_2!37124 lt!2475485)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395365 lambda!395318))))

(assert (=> bs!1854212 (not (= lambda!395365 lambda!395353))))

(assert (=> bs!1854213 (not (= lambda!395365 lambda!395319))))

(assert (=> bs!1854213 (= lambda!395365 lambda!395320)))

(assert (=> bs!1854214 (= (and (= lt!2475455 (_2!37124 lt!2475485)) (= r1!6342 (regOne!34440 lt!2475478)) (= r2!6280 (regTwo!34440 lt!2475478))) (= lambda!395365 lambda!395363))))

(assert (=> bs!1854212 (= (and (= lt!2475455 (_2!37124 lt!2475485)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395365 lambda!395354))))

(declare-fun bs!1854216 () Bool)

(assert (= bs!1854216 d!2167540))

(assert (=> bs!1854216 (not (= lambda!395365 lambda!395364))))

(assert (=> bs!1854208 (not (= lambda!395365 lambda!395315))))

(assert (=> bs!1854215 (not (= lambda!395365 lambda!395357))))

(assert (=> d!2167540 true))

(assert (=> d!2167540 true))

(assert (=> d!2167540 true))

(assert (=> d!2167540 (= (Exists!3964 lambda!395364) (Exists!3964 lambda!395365))))

(declare-fun lt!2475609 () Unit!160652)

(assert (=> d!2167540 (= lt!2475609 (choose!51700 r1!6342 r2!6280 lt!2475455))))

(assert (=> d!2167540 (validRegex!8670 r1!6342)))

(assert (=> d!2167540 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2425 r1!6342 r2!6280 lt!2475455) lt!2475609)))

(declare-fun m!7645276 () Bool)

(assert (=> bs!1854216 m!7645276))

(declare-fun m!7645278 () Bool)

(assert (=> bs!1854216 m!7645278))

(declare-fun m!7645280 () Bool)

(assert (=> bs!1854216 m!7645280))

(assert (=> bs!1854216 m!7645020))

(assert (=> b!6939794 d!2167540))

(declare-fun b!6940136 () Bool)

(declare-fun e!4175091 () Option!16733)

(assert (=> b!6940136 (= e!4175091 (Some!16732 (tuple2!67643 Nil!66593 lt!2475455)))))

(declare-fun b!6940137 () Bool)

(declare-fun e!4175092 () Bool)

(declare-fun lt!2475610 () Option!16733)

(assert (=> b!6940137 (= e!4175092 (not (isDefined!13434 lt!2475610)))))

(declare-fun d!2167542 () Bool)

(assert (=> d!2167542 e!4175092))

(declare-fun res!2830998 () Bool)

(assert (=> d!2167542 (=> res!2830998 e!4175092)))

(declare-fun e!4175095 () Bool)

(assert (=> d!2167542 (= res!2830998 e!4175095)))

(declare-fun res!2830999 () Bool)

(assert (=> d!2167542 (=> (not res!2830999) (not e!4175095))))

(assert (=> d!2167542 (= res!2830999 (isDefined!13434 lt!2475610))))

(assert (=> d!2167542 (= lt!2475610 e!4175091)))

(declare-fun c!1287755 () Bool)

(declare-fun e!4175093 () Bool)

(assert (=> d!2167542 (= c!1287755 e!4175093)))

(declare-fun res!2831001 () Bool)

(assert (=> d!2167542 (=> (not res!2831001) (not e!4175093))))

(assert (=> d!2167542 (= res!2831001 (matchR!9103 r1!6342 Nil!66593))))

(assert (=> d!2167542 (validRegex!8670 r1!6342)))

(assert (=> d!2167542 (= (findConcatSeparation!3147 r1!6342 r2!6280 Nil!66593 lt!2475455 lt!2475455) lt!2475610)))

(declare-fun b!6940138 () Bool)

(declare-fun e!4175094 () Option!16733)

(assert (=> b!6940138 (= e!4175091 e!4175094)))

(declare-fun c!1287756 () Bool)

(assert (=> b!6940138 (= c!1287756 (is-Nil!66593 lt!2475455))))

(declare-fun b!6940139 () Bool)

(assert (=> b!6940139 (= e!4175093 (matchR!9103 r2!6280 lt!2475455))))

(declare-fun b!6940140 () Bool)

(declare-fun res!2831000 () Bool)

(assert (=> b!6940140 (=> (not res!2831000) (not e!4175095))))

(assert (=> b!6940140 (= res!2831000 (matchR!9103 r2!6280 (_2!37124 (get!23383 lt!2475610))))))

(declare-fun b!6940141 () Bool)

(declare-fun res!2830997 () Bool)

(assert (=> b!6940141 (=> (not res!2830997) (not e!4175095))))

(assert (=> b!6940141 (= res!2830997 (matchR!9103 r1!6342 (_1!37124 (get!23383 lt!2475610))))))

(declare-fun b!6940142 () Bool)

(assert (=> b!6940142 (= e!4175095 (= (++!15003 (_1!37124 (get!23383 lt!2475610)) (_2!37124 (get!23383 lt!2475610))) lt!2475455))))

(declare-fun b!6940143 () Bool)

(assert (=> b!6940143 (= e!4175094 None!16732)))

(declare-fun b!6940144 () Bool)

(declare-fun lt!2475611 () Unit!160652)

(declare-fun lt!2475612 () Unit!160652)

(assert (=> b!6940144 (= lt!2475611 lt!2475612)))

(assert (=> b!6940144 (= (++!15003 (++!15003 Nil!66593 (Cons!66593 (h!73041 lt!2475455) Nil!66593)) (t!380460 lt!2475455)) lt!2475455)))

(assert (=> b!6940144 (= lt!2475612 (lemmaMoveElementToOtherListKeepsConcatEq!2860 Nil!66593 (h!73041 lt!2475455) (t!380460 lt!2475455) lt!2475455))))

(assert (=> b!6940144 (= e!4175094 (findConcatSeparation!3147 r1!6342 r2!6280 (++!15003 Nil!66593 (Cons!66593 (h!73041 lt!2475455) Nil!66593)) (t!380460 lt!2475455) lt!2475455))))

(assert (= (and d!2167542 res!2831001) b!6940139))

(assert (= (and d!2167542 c!1287755) b!6940136))

(assert (= (and d!2167542 (not c!1287755)) b!6940138))

(assert (= (and b!6940138 c!1287756) b!6940143))

(assert (= (and b!6940138 (not c!1287756)) b!6940144))

(assert (= (and d!2167542 res!2830999) b!6940141))

(assert (= (and b!6940141 res!2830997) b!6940140))

(assert (= (and b!6940140 res!2831000) b!6940142))

(assert (= (and d!2167542 (not res!2830998)) b!6940137))

(declare-fun m!7645282 () Bool)

(assert (=> b!6940141 m!7645282))

(declare-fun m!7645284 () Bool)

(assert (=> b!6940141 m!7645284))

(declare-fun m!7645286 () Bool)

(assert (=> d!2167542 m!7645286))

(declare-fun m!7645288 () Bool)

(assert (=> d!2167542 m!7645288))

(assert (=> d!2167542 m!7645020))

(assert (=> b!6940140 m!7645282))

(declare-fun m!7645290 () Bool)

(assert (=> b!6940140 m!7645290))

(assert (=> b!6940142 m!7645282))

(declare-fun m!7645292 () Bool)

(assert (=> b!6940142 m!7645292))

(assert (=> b!6940137 m!7645286))

(declare-fun m!7645294 () Bool)

(assert (=> b!6940139 m!7645294))

(declare-fun m!7645296 () Bool)

(assert (=> b!6940144 m!7645296))

(assert (=> b!6940144 m!7645296))

(declare-fun m!7645298 () Bool)

(assert (=> b!6940144 m!7645298))

(declare-fun m!7645300 () Bool)

(assert (=> b!6940144 m!7645300))

(assert (=> b!6940144 m!7645296))

(declare-fun m!7645302 () Bool)

(assert (=> b!6940144 m!7645302))

(assert (=> b!6939794 d!2167542))

(declare-fun d!2167544 () Bool)

(assert (=> d!2167544 (= (++!15003 (++!15003 (_1!37124 lt!2475485) (_1!37124 lt!2475472)) (_2!37124 lt!2475472)) (++!15003 (_1!37124 lt!2475485) (++!15003 (_1!37124 lt!2475472) (_2!37124 lt!2475472))))))

(declare-fun lt!2475615 () Unit!160652)

(declare-fun choose!51704 (List!66717 List!66717 List!66717) Unit!160652)

(assert (=> d!2167544 (= lt!2475615 (choose!51704 (_1!37124 lt!2475485) (_1!37124 lt!2475472) (_2!37124 lt!2475472)))))

(assert (=> d!2167544 (= (lemmaConcatAssociativity!3045 (_1!37124 lt!2475485) (_1!37124 lt!2475472) (_2!37124 lt!2475472)) lt!2475615)))

(declare-fun bs!1854217 () Bool)

(assert (= bs!1854217 d!2167544))

(declare-fun m!7645304 () Bool)

(assert (=> bs!1854217 m!7645304))

(assert (=> bs!1854217 m!7645044))

(declare-fun m!7645306 () Bool)

(assert (=> bs!1854217 m!7645306))

(assert (=> bs!1854217 m!7645014))

(assert (=> bs!1854217 m!7645014))

(assert (=> bs!1854217 m!7645018))

(assert (=> bs!1854217 m!7645044))

(assert (=> b!6939794 d!2167544))

(declare-fun b!6940145 () Bool)

(declare-fun e!4175096 () List!66717)

(assert (=> b!6940145 (= e!4175096 (_2!37124 lt!2475472))))

(declare-fun b!6940147 () Bool)

(declare-fun res!2831002 () Bool)

(declare-fun e!4175097 () Bool)

(assert (=> b!6940147 (=> (not res!2831002) (not e!4175097))))

(declare-fun lt!2475616 () List!66717)

(assert (=> b!6940147 (= res!2831002 (= (size!40800 lt!2475616) (+ (size!40800 lt!2475455) (size!40800 (_2!37124 lt!2475472)))))))

(declare-fun d!2167546 () Bool)

(assert (=> d!2167546 e!4175097))

(declare-fun res!2831003 () Bool)

(assert (=> d!2167546 (=> (not res!2831003) (not e!4175097))))

(assert (=> d!2167546 (= res!2831003 (= (content!13103 lt!2475616) (set.union (content!13103 lt!2475455) (content!13103 (_2!37124 lt!2475472)))))))

(assert (=> d!2167546 (= lt!2475616 e!4175096)))

(declare-fun c!1287757 () Bool)

(assert (=> d!2167546 (= c!1287757 (is-Nil!66593 lt!2475455))))

(assert (=> d!2167546 (= (++!15003 lt!2475455 (_2!37124 lt!2475472)) lt!2475616)))

(declare-fun b!6940148 () Bool)

(assert (=> b!6940148 (= e!4175097 (or (not (= (_2!37124 lt!2475472) Nil!66593)) (= lt!2475616 lt!2475455)))))

(declare-fun b!6940146 () Bool)

(assert (=> b!6940146 (= e!4175096 (Cons!66593 (h!73041 lt!2475455) (++!15003 (t!380460 lt!2475455) (_2!37124 lt!2475472))))))

(assert (= (and d!2167546 c!1287757) b!6940145))

(assert (= (and d!2167546 (not c!1287757)) b!6940146))

(assert (= (and d!2167546 res!2831003) b!6940147))

(assert (= (and b!6940147 res!2831002) b!6940148))

(declare-fun m!7645308 () Bool)

(assert (=> b!6940147 m!7645308))

(declare-fun m!7645310 () Bool)

(assert (=> b!6940147 m!7645310))

(declare-fun m!7645312 () Bool)

(assert (=> b!6940147 m!7645312))

(declare-fun m!7645314 () Bool)

(assert (=> d!2167546 m!7645314))

(declare-fun m!7645316 () Bool)

(assert (=> d!2167546 m!7645316))

(declare-fun m!7645318 () Bool)

(assert (=> d!2167546 m!7645318))

(declare-fun m!7645320 () Bool)

(assert (=> b!6940146 m!7645320))

(assert (=> b!6939794 d!2167546))

(declare-fun bs!1854218 () Bool)

(declare-fun d!2167548 () Bool)

(assert (= bs!1854218 (and d!2167548 b!6939796)))

(declare-fun lambda!395368 () Int)

(assert (=> bs!1854218 (not (= lambda!395368 lambda!395316))))

(declare-fun bs!1854219 () Bool)

(assert (= bs!1854219 (and d!2167548 b!6939805)))

(assert (=> bs!1854219 (= (and (= lt!2475455 (_2!37124 lt!2475485)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395368 lambda!395317))))

(declare-fun bs!1854220 () Bool)

(assert (= bs!1854220 (and d!2167548 b!6939802)))

(assert (=> bs!1854220 (= (and (= lt!2475455 s!14361) (= r1!6342 lt!2475482) (= r2!6280 r3!135)) (= lambda!395368 lambda!395321))))

(declare-fun bs!1854221 () Bool)

(assert (= bs!1854221 (and d!2167548 b!6940090)))

(assert (=> bs!1854221 (not (= lambda!395368 lambda!395362))))

(assert (=> bs!1854219 (not (= lambda!395368 lambda!395318))))

(declare-fun bs!1854222 () Bool)

(assert (= bs!1854222 (and d!2167548 d!2167510)))

(assert (=> bs!1854222 (= (and (= lt!2475455 (_2!37124 lt!2475485)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395368 lambda!395353))))

(declare-fun bs!1854223 () Bool)

(assert (= bs!1854223 (and d!2167548 b!6939794)))

(assert (=> bs!1854223 (= lambda!395368 lambda!395319)))

(assert (=> bs!1854223 (not (= lambda!395368 lambda!395320))))

(declare-fun bs!1854224 () Bool)

(assert (= bs!1854224 (and d!2167548 b!6940095)))

(assert (=> bs!1854224 (not (= lambda!395368 lambda!395363))))

(assert (=> bs!1854222 (not (= lambda!395368 lambda!395354))))

(assert (=> bs!1854218 (= (and (= lt!2475455 s!14361) (= r2!6280 lt!2475478)) (= lambda!395368 lambda!395315))))

(declare-fun bs!1854225 () Bool)

(assert (= bs!1854225 (and d!2167548 d!2167520)))

(assert (=> bs!1854225 (= (and (= lt!2475455 (_2!37124 lt!2475485)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395368 lambda!395357))))

(declare-fun bs!1854226 () Bool)

(assert (= bs!1854226 (and d!2167548 d!2167540)))

(assert (=> bs!1854226 (= lambda!395368 lambda!395364)))

(assert (=> bs!1854226 (not (= lambda!395368 lambda!395365))))

(assert (=> d!2167548 true))

(assert (=> d!2167548 true))

(assert (=> d!2167548 true))

(assert (=> d!2167548 (= (isDefined!13434 (findConcatSeparation!3147 r1!6342 r2!6280 Nil!66593 lt!2475455 lt!2475455)) (Exists!3964 lambda!395368))))

(declare-fun lt!2475617 () Unit!160652)

(assert (=> d!2167548 (= lt!2475617 (choose!51701 r1!6342 r2!6280 lt!2475455))))

(assert (=> d!2167548 (validRegex!8670 r1!6342)))

(assert (=> d!2167548 (= (lemmaFindConcatSeparationEquivalentToExists!2905 r1!6342 r2!6280 lt!2475455) lt!2475617)))

(declare-fun bs!1854227 () Bool)

(assert (= bs!1854227 d!2167548))

(assert (=> bs!1854227 m!7645024))

(assert (=> bs!1854227 m!7645046))

(declare-fun m!7645322 () Bool)

(assert (=> bs!1854227 m!7645322))

(declare-fun m!7645324 () Bool)

(assert (=> bs!1854227 m!7645324))

(assert (=> bs!1854227 m!7645020))

(assert (=> bs!1854227 m!7645024))

(assert (=> b!6939794 d!2167548))

(declare-fun bs!1854228 () Bool)

(declare-fun b!6940158 () Bool)

(assert (= bs!1854228 (and b!6940158 b!6939796)))

(declare-fun lambda!395371 () Int)

(assert (=> bs!1854228 (not (= lambda!395371 lambda!395316))))

(declare-fun bs!1854229 () Bool)

(assert (= bs!1854229 (and b!6940158 b!6939805)))

(assert (=> bs!1854229 (not (= lambda!395371 lambda!395317))))

(declare-fun bs!1854230 () Bool)

(assert (= bs!1854230 (and b!6940158 b!6939802)))

(assert (=> bs!1854230 (not (= lambda!395371 lambda!395321))))

(declare-fun bs!1854231 () Bool)

(assert (= bs!1854231 (and b!6940158 b!6940090)))

(assert (=> bs!1854231 (= (and (= lt!2475455 (_2!37124 lt!2475485)) (= (reg!17293 lt!2475482) (reg!17293 lt!2475478)) (= lt!2475482 lt!2475478)) (= lambda!395371 lambda!395362))))

(assert (=> bs!1854229 (not (= lambda!395371 lambda!395318))))

(declare-fun bs!1854232 () Bool)

(assert (= bs!1854232 (and b!6940158 d!2167510)))

(assert (=> bs!1854232 (not (= lambda!395371 lambda!395353))))

(declare-fun bs!1854233 () Bool)

(assert (= bs!1854233 (and b!6940158 b!6939794)))

(assert (=> bs!1854233 (not (= lambda!395371 lambda!395319))))

(assert (=> bs!1854233 (not (= lambda!395371 lambda!395320))))

(assert (=> bs!1854232 (not (= lambda!395371 lambda!395354))))

(assert (=> bs!1854228 (not (= lambda!395371 lambda!395315))))

(declare-fun bs!1854234 () Bool)

(assert (= bs!1854234 (and b!6940158 d!2167520)))

(assert (=> bs!1854234 (not (= lambda!395371 lambda!395357))))

(declare-fun bs!1854235 () Bool)

(assert (= bs!1854235 (and b!6940158 b!6940095)))

(assert (=> bs!1854235 (not (= lambda!395371 lambda!395363))))

(declare-fun bs!1854236 () Bool)

(assert (= bs!1854236 (and b!6940158 d!2167548)))

(assert (=> bs!1854236 (not (= lambda!395371 lambda!395368))))

(declare-fun bs!1854237 () Bool)

(assert (= bs!1854237 (and b!6940158 d!2167540)))

(assert (=> bs!1854237 (not (= lambda!395371 lambda!395364))))

(assert (=> bs!1854237 (not (= lambda!395371 lambda!395365))))

(assert (=> b!6940158 true))

(assert (=> b!6940158 true))

(declare-fun bs!1854238 () Bool)

(declare-fun b!6940163 () Bool)

(assert (= bs!1854238 (and b!6940163 b!6939796)))

(declare-fun lambda!395372 () Int)

(assert (=> bs!1854238 (= (and (= lt!2475455 s!14361) (= (regOne!34440 lt!2475482) r1!6342) (= (regTwo!34440 lt!2475482) lt!2475478)) (= lambda!395372 lambda!395316))))

(declare-fun bs!1854239 () Bool)

(assert (= bs!1854239 (and b!6940163 b!6939805)))

(assert (=> bs!1854239 (not (= lambda!395372 lambda!395317))))

(declare-fun bs!1854240 () Bool)

(assert (= bs!1854240 (and b!6940163 b!6939802)))

(assert (=> bs!1854240 (not (= lambda!395372 lambda!395321))))

(declare-fun bs!1854241 () Bool)

(assert (= bs!1854241 (and b!6940163 b!6940090)))

(assert (=> bs!1854241 (not (= lambda!395372 lambda!395362))))

(assert (=> bs!1854239 (= (and (= lt!2475455 (_2!37124 lt!2475485)) (= (regOne!34440 lt!2475482) r2!6280) (= (regTwo!34440 lt!2475482) r3!135)) (= lambda!395372 lambda!395318))))

(declare-fun bs!1854242 () Bool)

(assert (= bs!1854242 (and b!6940163 b!6939794)))

(assert (=> bs!1854242 (not (= lambda!395372 lambda!395319))))

(assert (=> bs!1854242 (= (and (= (regOne!34440 lt!2475482) r1!6342) (= (regTwo!34440 lt!2475482) r2!6280)) (= lambda!395372 lambda!395320))))

(declare-fun bs!1854243 () Bool)

(assert (= bs!1854243 (and b!6940163 d!2167510)))

(assert (=> bs!1854243 (= (and (= lt!2475455 (_2!37124 lt!2475485)) (= (regOne!34440 lt!2475482) r2!6280) (= (regTwo!34440 lt!2475482) r3!135)) (= lambda!395372 lambda!395354))))

(assert (=> bs!1854243 (not (= lambda!395372 lambda!395353))))

(declare-fun bs!1854244 () Bool)

(assert (= bs!1854244 (and b!6940163 b!6940158)))

(assert (=> bs!1854244 (not (= lambda!395372 lambda!395371))))

(assert (=> bs!1854238 (not (= lambda!395372 lambda!395315))))

(declare-fun bs!1854245 () Bool)

(assert (= bs!1854245 (and b!6940163 d!2167520)))

(assert (=> bs!1854245 (not (= lambda!395372 lambda!395357))))

(declare-fun bs!1854246 () Bool)

(assert (= bs!1854246 (and b!6940163 b!6940095)))

(assert (=> bs!1854246 (= (and (= lt!2475455 (_2!37124 lt!2475485)) (= (regOne!34440 lt!2475482) (regOne!34440 lt!2475478)) (= (regTwo!34440 lt!2475482) (regTwo!34440 lt!2475478))) (= lambda!395372 lambda!395363))))

(declare-fun bs!1854247 () Bool)

(assert (= bs!1854247 (and b!6940163 d!2167548)))

(assert (=> bs!1854247 (not (= lambda!395372 lambda!395368))))

(declare-fun bs!1854248 () Bool)

(assert (= bs!1854248 (and b!6940163 d!2167540)))

(assert (=> bs!1854248 (not (= lambda!395372 lambda!395364))))

(assert (=> bs!1854248 (= (and (= (regOne!34440 lt!2475482) r1!6342) (= (regTwo!34440 lt!2475482) r2!6280)) (= lambda!395372 lambda!395365))))

(assert (=> b!6940163 true))

(assert (=> b!6940163 true))

(declare-fun d!2167550 () Bool)

(declare-fun c!1287760 () Bool)

(assert (=> d!2167550 (= c!1287760 (is-EmptyExpr!16964 lt!2475482))))

(declare-fun e!4175104 () Bool)

(assert (=> d!2167550 (= (matchRSpec!4021 lt!2475482 lt!2475455) e!4175104)))

(declare-fun b!6940153 () Bool)

(declare-fun e!4175100 () Bool)

(declare-fun e!4175101 () Bool)

(assert (=> b!6940153 (= e!4175100 e!4175101)))

(declare-fun res!2831009 () Bool)

(assert (=> b!6940153 (= res!2831009 (matchRSpec!4021 (regOne!34441 lt!2475482) lt!2475455))))

(assert (=> b!6940153 (=> res!2831009 e!4175101)))

(declare-fun b!6940154 () Bool)

(declare-fun c!1287759 () Bool)

(assert (=> b!6940154 (= c!1287759 (is-Union!16964 lt!2475482))))

(declare-fun e!4175105 () Bool)

(assert (=> b!6940154 (= e!4175105 e!4175100)))

(declare-fun b!6940155 () Bool)

(assert (=> b!6940155 (= e!4175101 (matchRSpec!4021 (regTwo!34441 lt!2475482) lt!2475455))))

(declare-fun b!6940156 () Bool)

(assert (=> b!6940156 (= e!4175105 (= lt!2475455 (Cons!66593 (c!1287706 lt!2475482) Nil!66593)))))

(declare-fun call!630494 () Bool)

(declare-fun bm!630489 () Bool)

(declare-fun c!1287758 () Bool)

(assert (=> bm!630489 (= call!630494 (Exists!3964 (ite c!1287758 lambda!395371 lambda!395372)))))

(declare-fun b!6940157 () Bool)

(declare-fun res!2831010 () Bool)

(declare-fun e!4175102 () Bool)

(assert (=> b!6940157 (=> res!2831010 e!4175102)))

(declare-fun call!630495 () Bool)

(assert (=> b!6940157 (= res!2831010 call!630495)))

(declare-fun e!4175103 () Bool)

(assert (=> b!6940157 (= e!4175103 e!4175102)))

(assert (=> b!6940158 (= e!4175102 call!630494)))

(declare-fun bm!630490 () Bool)

(assert (=> bm!630490 (= call!630495 (isEmpty!38864 lt!2475455))))

(declare-fun b!6940159 () Bool)

(declare-fun e!4175106 () Bool)

(assert (=> b!6940159 (= e!4175104 e!4175106)))

(declare-fun res!2831008 () Bool)

(assert (=> b!6940159 (= res!2831008 (not (is-EmptyLang!16964 lt!2475482)))))

(assert (=> b!6940159 (=> (not res!2831008) (not e!4175106))))

(declare-fun b!6940160 () Bool)

(assert (=> b!6940160 (= e!4175104 call!630495)))

(declare-fun b!6940161 () Bool)

(assert (=> b!6940161 (= e!4175100 e!4175103)))

(assert (=> b!6940161 (= c!1287758 (is-Star!16964 lt!2475482))))

(declare-fun b!6940162 () Bool)

(declare-fun c!1287761 () Bool)

(assert (=> b!6940162 (= c!1287761 (is-ElementMatch!16964 lt!2475482))))

(assert (=> b!6940162 (= e!4175106 e!4175105)))

(assert (=> b!6940163 (= e!4175103 call!630494)))

(assert (= (and d!2167550 c!1287760) b!6940160))

(assert (= (and d!2167550 (not c!1287760)) b!6940159))

(assert (= (and b!6940159 res!2831008) b!6940162))

(assert (= (and b!6940162 c!1287761) b!6940156))

(assert (= (and b!6940162 (not c!1287761)) b!6940154))

(assert (= (and b!6940154 c!1287759) b!6940153))

(assert (= (and b!6940154 (not c!1287759)) b!6940161))

(assert (= (and b!6940153 (not res!2831009)) b!6940155))

(assert (= (and b!6940161 c!1287758) b!6940157))

(assert (= (and b!6940161 (not c!1287758)) b!6940163))

(assert (= (and b!6940157 (not res!2831010)) b!6940158))

(assert (= (or b!6940158 b!6940163) bm!630489))

(assert (= (or b!6940160 b!6940157) bm!630490))

(declare-fun m!7645326 () Bool)

(assert (=> b!6940153 m!7645326))

(declare-fun m!7645328 () Bool)

(assert (=> b!6940155 m!7645328))

(declare-fun m!7645330 () Bool)

(assert (=> bm!630489 m!7645330))

(declare-fun m!7645332 () Bool)

(assert (=> bm!630490 m!7645332))

(assert (=> b!6939794 d!2167550))

(declare-fun d!2167552 () Bool)

(assert (=> d!2167552 (isDefined!13434 (findConcatSeparation!3147 r1!6342 r2!6280 Nil!66593 lt!2475455 lt!2475455))))

(declare-fun lt!2475620 () Unit!160652)

(declare-fun choose!51705 (Regex!16964 Regex!16964 List!66717 List!66717 List!66717 List!66717 List!66717) Unit!160652)

(assert (=> d!2167552 (= lt!2475620 (choose!51705 r1!6342 r2!6280 (_1!37124 lt!2475485) (_1!37124 lt!2475472) lt!2475455 Nil!66593 lt!2475455))))

(assert (=> d!2167552 (validRegex!8670 r1!6342)))

(assert (=> d!2167552 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!107 r1!6342 r2!6280 (_1!37124 lt!2475485) (_1!37124 lt!2475472) lt!2475455 Nil!66593 lt!2475455) lt!2475620)))

(declare-fun bs!1854249 () Bool)

(assert (= bs!1854249 d!2167552))

(assert (=> bs!1854249 m!7645024))

(assert (=> bs!1854249 m!7645024))

(assert (=> bs!1854249 m!7645046))

(declare-fun m!7645334 () Bool)

(assert (=> bs!1854249 m!7645334))

(assert (=> bs!1854249 m!7645020))

(assert (=> b!6939794 d!2167552))

(declare-fun d!2167554 () Bool)

(assert (=> d!2167554 (= (matchR!9103 lt!2475482 lt!2475455) (matchRSpec!4021 lt!2475482 lt!2475455))))

(declare-fun lt!2475621 () Unit!160652)

(assert (=> d!2167554 (= lt!2475621 (choose!51703 lt!2475482 lt!2475455))))

(assert (=> d!2167554 (validRegex!8670 lt!2475482)))

(assert (=> d!2167554 (= (mainMatchTheorem!4021 lt!2475482 lt!2475455) lt!2475621)))

(declare-fun bs!1854250 () Bool)

(assert (= bs!1854250 d!2167554))

(assert (=> bs!1854250 m!7645022))

(assert (=> bs!1854250 m!7645032))

(declare-fun m!7645336 () Bool)

(assert (=> bs!1854250 m!7645336))

(assert (=> bs!1854250 m!7645062))

(assert (=> b!6939794 d!2167554))

(declare-fun d!2167556 () Bool)

(assert (=> d!2167556 (= (isDefined!13434 (findConcatSeparation!3147 r1!6342 r2!6280 Nil!66593 lt!2475455 lt!2475455)) (not (isEmpty!38865 (findConcatSeparation!3147 r1!6342 r2!6280 Nil!66593 lt!2475455 lt!2475455))))))

(declare-fun bs!1854251 () Bool)

(assert (= bs!1854251 d!2167556))

(assert (=> bs!1854251 m!7645024))

(declare-fun m!7645338 () Bool)

(assert (=> bs!1854251 m!7645338))

(assert (=> b!6939794 d!2167556))

(declare-fun b!6940164 () Bool)

(declare-fun res!2831011 () Bool)

(declare-fun e!4175110 () Bool)

(assert (=> b!6940164 (=> res!2831011 e!4175110)))

(assert (=> b!6940164 (= res!2831011 (not (isEmpty!38864 (tail!12961 lt!2475455))))))

(declare-fun b!6940165 () Bool)

(declare-fun res!2831017 () Bool)

(declare-fun e!4175113 () Bool)

(assert (=> b!6940165 (=> res!2831017 e!4175113)))

(declare-fun e!4175107 () Bool)

(assert (=> b!6940165 (= res!2831017 e!4175107)))

(declare-fun res!2831015 () Bool)

(assert (=> b!6940165 (=> (not res!2831015) (not e!4175107))))

(declare-fun lt!2475622 () Bool)

(assert (=> b!6940165 (= res!2831015 lt!2475622)))

(declare-fun b!6940166 () Bool)

(declare-fun e!4175109 () Bool)

(assert (=> b!6940166 (= e!4175109 (not lt!2475622))))

(declare-fun b!6940167 () Bool)

(declare-fun e!4175108 () Bool)

(assert (=> b!6940167 (= e!4175108 (nullable!6781 lt!2475482))))

(declare-fun d!2167558 () Bool)

(declare-fun e!4175112 () Bool)

(assert (=> d!2167558 e!4175112))

(declare-fun c!1287764 () Bool)

(assert (=> d!2167558 (= c!1287764 (is-EmptyExpr!16964 lt!2475482))))

(assert (=> d!2167558 (= lt!2475622 e!4175108)))

(declare-fun c!1287762 () Bool)

(assert (=> d!2167558 (= c!1287762 (isEmpty!38864 lt!2475455))))

(assert (=> d!2167558 (validRegex!8670 lt!2475482)))

(assert (=> d!2167558 (= (matchR!9103 lt!2475482 lt!2475455) lt!2475622)))

(declare-fun b!6940168 () Bool)

(declare-fun res!2831018 () Bool)

(assert (=> b!6940168 (=> (not res!2831018) (not e!4175107))))

(assert (=> b!6940168 (= res!2831018 (isEmpty!38864 (tail!12961 lt!2475455)))))

(declare-fun b!6940169 () Bool)

(declare-fun res!2831014 () Bool)

(assert (=> b!6940169 (=> (not res!2831014) (not e!4175107))))

(declare-fun call!630500 () Bool)

(assert (=> b!6940169 (= res!2831014 (not call!630500))))

(declare-fun b!6940170 () Bool)

(assert (=> b!6940170 (= e!4175112 (= lt!2475622 call!630500))))

(declare-fun b!6940171 () Bool)

(declare-fun e!4175111 () Bool)

(assert (=> b!6940171 (= e!4175113 e!4175111)))

(declare-fun res!2831013 () Bool)

(assert (=> b!6940171 (=> (not res!2831013) (not e!4175111))))

(assert (=> b!6940171 (= res!2831013 (not lt!2475622))))

(declare-fun bm!630495 () Bool)

(assert (=> bm!630495 (= call!630500 (isEmpty!38864 lt!2475455))))

(declare-fun b!6940172 () Bool)

(assert (=> b!6940172 (= e!4175112 e!4175109)))

(declare-fun c!1287763 () Bool)

(assert (=> b!6940172 (= c!1287763 (is-EmptyLang!16964 lt!2475482))))

(declare-fun b!6940173 () Bool)

(assert (=> b!6940173 (= e!4175110 (not (= (head!13909 lt!2475455) (c!1287706 lt!2475482))))))

(declare-fun b!6940174 () Bool)

(assert (=> b!6940174 (= e!4175107 (= (head!13909 lt!2475455) (c!1287706 lt!2475482)))))

(declare-fun b!6940175 () Bool)

(assert (=> b!6940175 (= e!4175111 e!4175110)))

(declare-fun res!2831012 () Bool)

(assert (=> b!6940175 (=> res!2831012 e!4175110)))

(assert (=> b!6940175 (= res!2831012 call!630500)))

(declare-fun b!6940176 () Bool)

(declare-fun res!2831016 () Bool)

(assert (=> b!6940176 (=> res!2831016 e!4175113)))

(assert (=> b!6940176 (= res!2831016 (not (is-ElementMatch!16964 lt!2475482)))))

(assert (=> b!6940176 (= e!4175109 e!4175113)))

(declare-fun b!6940177 () Bool)

(assert (=> b!6940177 (= e!4175108 (matchR!9103 (derivativeStep!5456 lt!2475482 (head!13909 lt!2475455)) (tail!12961 lt!2475455)))))

(assert (= (and d!2167558 c!1287762) b!6940167))

(assert (= (and d!2167558 (not c!1287762)) b!6940177))

(assert (= (and d!2167558 c!1287764) b!6940170))

(assert (= (and d!2167558 (not c!1287764)) b!6940172))

(assert (= (and b!6940172 c!1287763) b!6940166))

(assert (= (and b!6940172 (not c!1287763)) b!6940176))

(assert (= (and b!6940176 (not res!2831016)) b!6940165))

(assert (= (and b!6940165 res!2831015) b!6940169))

(assert (= (and b!6940169 res!2831014) b!6940168))

(assert (= (and b!6940168 res!2831018) b!6940174))

(assert (= (and b!6940165 (not res!2831017)) b!6940171))

(assert (= (and b!6940171 res!2831013) b!6940175))

(assert (= (and b!6940175 (not res!2831012)) b!6940164))

(assert (= (and b!6940164 (not res!2831011)) b!6940173))

(assert (= (or b!6940170 b!6940169 b!6940175) bm!630495))

(declare-fun m!7645340 () Bool)

(assert (=> b!6940164 m!7645340))

(assert (=> b!6940164 m!7645340))

(declare-fun m!7645342 () Bool)

(assert (=> b!6940164 m!7645342))

(assert (=> d!2167558 m!7645332))

(assert (=> d!2167558 m!7645062))

(assert (=> bm!630495 m!7645332))

(declare-fun m!7645344 () Bool)

(assert (=> b!6940167 m!7645344))

(declare-fun m!7645346 () Bool)

(assert (=> b!6940174 m!7645346))

(assert (=> b!6940177 m!7645346))

(assert (=> b!6940177 m!7645346))

(declare-fun m!7645348 () Bool)

(assert (=> b!6940177 m!7645348))

(assert (=> b!6940177 m!7645340))

(assert (=> b!6940177 m!7645348))

(assert (=> b!6940177 m!7645340))

(declare-fun m!7645350 () Bool)

(assert (=> b!6940177 m!7645350))

(assert (=> b!6940173 m!7645346))

(assert (=> b!6940168 m!7645340))

(assert (=> b!6940168 m!7645340))

(assert (=> b!6940168 m!7645342))

(assert (=> b!6939794 d!2167558))

(declare-fun b!6940207 () Bool)

(declare-fun e!4175140 () Bool)

(declare-fun e!4175137 () Bool)

(assert (=> b!6940207 (= e!4175140 e!4175137)))

(declare-fun res!2831034 () Bool)

(assert (=> b!6940207 (= res!2831034 (not (nullable!6781 (reg!17293 r1!6342))))))

(assert (=> b!6940207 (=> (not res!2831034) (not e!4175137))))

(declare-fun bm!630504 () Bool)

(declare-fun call!630511 () Bool)

(declare-fun c!1287774 () Bool)

(assert (=> bm!630504 (= call!630511 (validRegex!8670 (ite c!1287774 (regOne!34441 r1!6342) (regTwo!34440 r1!6342))))))

(declare-fun b!6940208 () Bool)

(declare-fun call!630509 () Bool)

(assert (=> b!6940208 (= e!4175137 call!630509)))

(declare-fun b!6940209 () Bool)

(declare-fun res!2831033 () Bool)

(declare-fun e!4175136 () Bool)

(assert (=> b!6940209 (=> res!2831033 e!4175136)))

(assert (=> b!6940209 (= res!2831033 (not (is-Concat!25809 r1!6342)))))

(declare-fun e!4175141 () Bool)

(assert (=> b!6940209 (= e!4175141 e!4175136)))

(declare-fun b!6940211 () Bool)

(declare-fun e!4175138 () Bool)

(assert (=> b!6940211 (= e!4175138 call!630511)))

(declare-fun b!6940212 () Bool)

(declare-fun e!4175139 () Bool)

(declare-fun call!630510 () Bool)

(assert (=> b!6940212 (= e!4175139 call!630510)))

(declare-fun b!6940213 () Bool)

(assert (=> b!6940213 (= e!4175140 e!4175141)))

(assert (=> b!6940213 (= c!1287774 (is-Union!16964 r1!6342))))

(declare-fun c!1287773 () Bool)

(declare-fun bm!630505 () Bool)

(assert (=> bm!630505 (= call!630509 (validRegex!8670 (ite c!1287773 (reg!17293 r1!6342) (ite c!1287774 (regTwo!34441 r1!6342) (regOne!34440 r1!6342)))))))

(declare-fun bm!630506 () Bool)

(assert (=> bm!630506 (= call!630510 call!630509)))

(declare-fun b!6940210 () Bool)

(declare-fun res!2831036 () Bool)

(assert (=> b!6940210 (=> (not res!2831036) (not e!4175139))))

(assert (=> b!6940210 (= res!2831036 call!630511)))

(assert (=> b!6940210 (= e!4175141 e!4175139)))

(declare-fun d!2167560 () Bool)

(declare-fun res!2831032 () Bool)

(declare-fun e!4175135 () Bool)

(assert (=> d!2167560 (=> res!2831032 e!4175135)))

(assert (=> d!2167560 (= res!2831032 (is-ElementMatch!16964 r1!6342))))

(assert (=> d!2167560 (= (validRegex!8670 r1!6342) e!4175135)))

(declare-fun b!6940214 () Bool)

(assert (=> b!6940214 (= e!4175136 e!4175138)))

(declare-fun res!2831035 () Bool)

(assert (=> b!6940214 (=> (not res!2831035) (not e!4175138))))

(assert (=> b!6940214 (= res!2831035 call!630510)))

(declare-fun b!6940215 () Bool)

(assert (=> b!6940215 (= e!4175135 e!4175140)))

(assert (=> b!6940215 (= c!1287773 (is-Star!16964 r1!6342))))

(assert (= (and d!2167560 (not res!2831032)) b!6940215))

(assert (= (and b!6940215 c!1287773) b!6940207))

(assert (= (and b!6940215 (not c!1287773)) b!6940213))

(assert (= (and b!6940207 res!2831034) b!6940208))

(assert (= (and b!6940213 c!1287774) b!6940210))

(assert (= (and b!6940213 (not c!1287774)) b!6940209))

(assert (= (and b!6940210 res!2831036) b!6940212))

(assert (= (and b!6940209 (not res!2831033)) b!6940214))

(assert (= (and b!6940214 res!2831035) b!6940211))

(assert (= (or b!6940210 b!6940211) bm!630504))

(assert (= (or b!6940212 b!6940214) bm!630506))

(assert (= (or b!6940208 bm!630506) bm!630505))

(declare-fun m!7645352 () Bool)

(assert (=> b!6940207 m!7645352))

(declare-fun m!7645354 () Bool)

(assert (=> bm!630504 m!7645354))

(declare-fun m!7645356 () Bool)

(assert (=> bm!630505 m!7645356))

(assert (=> start!666524 d!2167560))

(declare-fun b!6940216 () Bool)

(declare-fun res!2831037 () Bool)

(declare-fun e!4175145 () Bool)

(assert (=> b!6940216 (=> res!2831037 e!4175145)))

(assert (=> b!6940216 (= res!2831037 (not (isEmpty!38864 (tail!12961 (_1!37124 lt!2475485)))))))

(declare-fun b!6940217 () Bool)

(declare-fun res!2831043 () Bool)

(declare-fun e!4175148 () Bool)

(assert (=> b!6940217 (=> res!2831043 e!4175148)))

(declare-fun e!4175142 () Bool)

(assert (=> b!6940217 (= res!2831043 e!4175142)))

(declare-fun res!2831041 () Bool)

(assert (=> b!6940217 (=> (not res!2831041) (not e!4175142))))

(declare-fun lt!2475623 () Bool)

(assert (=> b!6940217 (= res!2831041 lt!2475623)))

(declare-fun b!6940218 () Bool)

(declare-fun e!4175144 () Bool)

(assert (=> b!6940218 (= e!4175144 (not lt!2475623))))

(declare-fun b!6940219 () Bool)

(declare-fun e!4175143 () Bool)

(assert (=> b!6940219 (= e!4175143 (nullable!6781 r1!6342))))

(declare-fun d!2167562 () Bool)

(declare-fun e!4175147 () Bool)

(assert (=> d!2167562 e!4175147))

(declare-fun c!1287777 () Bool)

(assert (=> d!2167562 (= c!1287777 (is-EmptyExpr!16964 r1!6342))))

(assert (=> d!2167562 (= lt!2475623 e!4175143)))

(declare-fun c!1287775 () Bool)

(assert (=> d!2167562 (= c!1287775 (isEmpty!38864 (_1!37124 lt!2475485)))))

(assert (=> d!2167562 (validRegex!8670 r1!6342)))

(assert (=> d!2167562 (= (matchR!9103 r1!6342 (_1!37124 lt!2475485)) lt!2475623)))

(declare-fun b!6940220 () Bool)

(declare-fun res!2831044 () Bool)

(assert (=> b!6940220 (=> (not res!2831044) (not e!4175142))))

(assert (=> b!6940220 (= res!2831044 (isEmpty!38864 (tail!12961 (_1!37124 lt!2475485))))))

(declare-fun b!6940221 () Bool)

(declare-fun res!2831040 () Bool)

(assert (=> b!6940221 (=> (not res!2831040) (not e!4175142))))

(declare-fun call!630512 () Bool)

(assert (=> b!6940221 (= res!2831040 (not call!630512))))

(declare-fun b!6940222 () Bool)

(assert (=> b!6940222 (= e!4175147 (= lt!2475623 call!630512))))

(declare-fun b!6940223 () Bool)

(declare-fun e!4175146 () Bool)

(assert (=> b!6940223 (= e!4175148 e!4175146)))

(declare-fun res!2831039 () Bool)

(assert (=> b!6940223 (=> (not res!2831039) (not e!4175146))))

(assert (=> b!6940223 (= res!2831039 (not lt!2475623))))

(declare-fun bm!630507 () Bool)

(assert (=> bm!630507 (= call!630512 (isEmpty!38864 (_1!37124 lt!2475485)))))

(declare-fun b!6940224 () Bool)

(assert (=> b!6940224 (= e!4175147 e!4175144)))

(declare-fun c!1287776 () Bool)

(assert (=> b!6940224 (= c!1287776 (is-EmptyLang!16964 r1!6342))))

(declare-fun b!6940225 () Bool)

(assert (=> b!6940225 (= e!4175145 (not (= (head!13909 (_1!37124 lt!2475485)) (c!1287706 r1!6342))))))

(declare-fun b!6940226 () Bool)

(assert (=> b!6940226 (= e!4175142 (= (head!13909 (_1!37124 lt!2475485)) (c!1287706 r1!6342)))))

(declare-fun b!6940227 () Bool)

(assert (=> b!6940227 (= e!4175146 e!4175145)))

(declare-fun res!2831038 () Bool)

(assert (=> b!6940227 (=> res!2831038 e!4175145)))

(assert (=> b!6940227 (= res!2831038 call!630512)))

(declare-fun b!6940228 () Bool)

(declare-fun res!2831042 () Bool)

(assert (=> b!6940228 (=> res!2831042 e!4175148)))

(assert (=> b!6940228 (= res!2831042 (not (is-ElementMatch!16964 r1!6342)))))

(assert (=> b!6940228 (= e!4175144 e!4175148)))

(declare-fun b!6940229 () Bool)

(assert (=> b!6940229 (= e!4175143 (matchR!9103 (derivativeStep!5456 r1!6342 (head!13909 (_1!37124 lt!2475485))) (tail!12961 (_1!37124 lt!2475485))))))

(assert (= (and d!2167562 c!1287775) b!6940219))

(assert (= (and d!2167562 (not c!1287775)) b!6940229))

(assert (= (and d!2167562 c!1287777) b!6940222))

(assert (= (and d!2167562 (not c!1287777)) b!6940224))

(assert (= (and b!6940224 c!1287776) b!6940218))

(assert (= (and b!6940224 (not c!1287776)) b!6940228))

(assert (= (and b!6940228 (not res!2831042)) b!6940217))

(assert (= (and b!6940217 res!2831041) b!6940221))

(assert (= (and b!6940221 res!2831040) b!6940220))

(assert (= (and b!6940220 res!2831044) b!6940226))

(assert (= (and b!6940217 (not res!2831043)) b!6940223))

(assert (= (and b!6940223 res!2831039) b!6940227))

(assert (= (and b!6940227 (not res!2831038)) b!6940216))

(assert (= (and b!6940216 (not res!2831037)) b!6940225))

(assert (= (or b!6940222 b!6940221 b!6940227) bm!630507))

(declare-fun m!7645358 () Bool)

(assert (=> b!6940216 m!7645358))

(assert (=> b!6940216 m!7645358))

(declare-fun m!7645360 () Bool)

(assert (=> b!6940216 m!7645360))

(declare-fun m!7645362 () Bool)

(assert (=> d!2167562 m!7645362))

(assert (=> d!2167562 m!7645020))

(assert (=> bm!630507 m!7645362))

(declare-fun m!7645364 () Bool)

(assert (=> b!6940219 m!7645364))

(declare-fun m!7645366 () Bool)

(assert (=> b!6940226 m!7645366))

(assert (=> b!6940229 m!7645366))

(assert (=> b!6940229 m!7645366))

(declare-fun m!7645368 () Bool)

(assert (=> b!6940229 m!7645368))

(assert (=> b!6940229 m!7645358))

(assert (=> b!6940229 m!7645368))

(assert (=> b!6940229 m!7645358))

(declare-fun m!7645370 () Bool)

(assert (=> b!6940229 m!7645370))

(assert (=> b!6940225 m!7645366))

(assert (=> b!6940220 m!7645358))

(assert (=> b!6940220 m!7645358))

(assert (=> b!6940220 m!7645360))

(assert (=> b!6939796 d!2167562))

(declare-fun d!2167564 () Bool)

(assert (=> d!2167564 (= (Exists!3964 lambda!395315) (choose!51702 lambda!395315))))

(declare-fun bs!1854261 () Bool)

(assert (= bs!1854261 d!2167564))

(declare-fun m!7645372 () Bool)

(assert (=> bs!1854261 m!7645372))

(assert (=> b!6939796 d!2167564))

(declare-fun d!2167566 () Bool)

(assert (=> d!2167566 (= (matchR!9103 r1!6342 (_1!37124 lt!2475485)) (matchRSpec!4021 r1!6342 (_1!37124 lt!2475485)))))

(declare-fun lt!2475624 () Unit!160652)

(assert (=> d!2167566 (= lt!2475624 (choose!51703 r1!6342 (_1!37124 lt!2475485)))))

(assert (=> d!2167566 (validRegex!8670 r1!6342)))

(assert (=> d!2167566 (= (mainMatchTheorem!4021 r1!6342 (_1!37124 lt!2475485)) lt!2475624)))

(declare-fun bs!1854262 () Bool)

(assert (= bs!1854262 d!2167566))

(assert (=> bs!1854262 m!7644966))

(assert (=> bs!1854262 m!7644962))

(declare-fun m!7645374 () Bool)

(assert (=> bs!1854262 m!7645374))

(assert (=> bs!1854262 m!7645020))

(assert (=> b!6939796 d!2167566))

(declare-fun d!2167568 () Bool)

(assert (=> d!2167568 (= (get!23383 lt!2475476) (v!53004 lt!2475476))))

(assert (=> b!6939796 d!2167568))

(declare-fun bs!1854263 () Bool)

(declare-fun b!6940235 () Bool)

(assert (= bs!1854263 (and b!6940235 b!6939796)))

(declare-fun lambda!395375 () Int)

(assert (=> bs!1854263 (not (= lambda!395375 lambda!395316))))

(declare-fun bs!1854264 () Bool)

(assert (= bs!1854264 (and b!6940235 b!6939805)))

(assert (=> bs!1854264 (not (= lambda!395375 lambda!395317))))

(declare-fun bs!1854265 () Bool)

(assert (= bs!1854265 (and b!6940235 b!6939802)))

(assert (=> bs!1854265 (not (= lambda!395375 lambda!395321))))

(declare-fun bs!1854266 () Bool)

(assert (= bs!1854266 (and b!6940235 b!6940090)))

(assert (=> bs!1854266 (= (and (= (_1!37124 lt!2475485) (_2!37124 lt!2475485)) (= (reg!17293 r1!6342) (reg!17293 lt!2475478)) (= r1!6342 lt!2475478)) (= lambda!395375 lambda!395362))))

(assert (=> bs!1854264 (not (= lambda!395375 lambda!395318))))

(declare-fun bs!1854267 () Bool)

(assert (= bs!1854267 (and b!6940235 b!6939794)))

(assert (=> bs!1854267 (not (= lambda!395375 lambda!395319))))

(assert (=> bs!1854267 (not (= lambda!395375 lambda!395320))))

(declare-fun bs!1854268 () Bool)

(assert (= bs!1854268 (and b!6940235 b!6940163)))

(assert (=> bs!1854268 (not (= lambda!395375 lambda!395372))))

(declare-fun bs!1854269 () Bool)

(assert (= bs!1854269 (and b!6940235 d!2167510)))

(assert (=> bs!1854269 (not (= lambda!395375 lambda!395354))))

(assert (=> bs!1854269 (not (= lambda!395375 lambda!395353))))

(declare-fun bs!1854270 () Bool)

(assert (= bs!1854270 (and b!6940235 b!6940158)))

(assert (=> bs!1854270 (= (and (= (_1!37124 lt!2475485) lt!2475455) (= (reg!17293 r1!6342) (reg!17293 lt!2475482)) (= r1!6342 lt!2475482)) (= lambda!395375 lambda!395371))))

(assert (=> bs!1854263 (not (= lambda!395375 lambda!395315))))

(declare-fun bs!1854271 () Bool)

(assert (= bs!1854271 (and b!6940235 d!2167520)))

(assert (=> bs!1854271 (not (= lambda!395375 lambda!395357))))

(declare-fun bs!1854272 () Bool)

(assert (= bs!1854272 (and b!6940235 b!6940095)))

(assert (=> bs!1854272 (not (= lambda!395375 lambda!395363))))

(declare-fun bs!1854273 () Bool)

(assert (= bs!1854273 (and b!6940235 d!2167548)))

(assert (=> bs!1854273 (not (= lambda!395375 lambda!395368))))

(declare-fun bs!1854274 () Bool)

(assert (= bs!1854274 (and b!6940235 d!2167540)))

(assert (=> bs!1854274 (not (= lambda!395375 lambda!395364))))

(assert (=> bs!1854274 (not (= lambda!395375 lambda!395365))))

(assert (=> b!6940235 true))

(assert (=> b!6940235 true))

(declare-fun bs!1854275 () Bool)

(declare-fun b!6940240 () Bool)

(assert (= bs!1854275 (and b!6940240 b!6939796)))

(declare-fun lambda!395376 () Int)

(assert (=> bs!1854275 (= (and (= (_1!37124 lt!2475485) s!14361) (= (regOne!34440 r1!6342) r1!6342) (= (regTwo!34440 r1!6342) lt!2475478)) (= lambda!395376 lambda!395316))))

(declare-fun bs!1854276 () Bool)

(assert (= bs!1854276 (and b!6940240 b!6939805)))

(assert (=> bs!1854276 (not (= lambda!395376 lambda!395317))))

(declare-fun bs!1854277 () Bool)

(assert (= bs!1854277 (and b!6940240 b!6939802)))

(assert (=> bs!1854277 (not (= lambda!395376 lambda!395321))))

(declare-fun bs!1854278 () Bool)

(assert (= bs!1854278 (and b!6940240 b!6940090)))

(assert (=> bs!1854278 (not (= lambda!395376 lambda!395362))))

(assert (=> bs!1854276 (= (and (= (_1!37124 lt!2475485) (_2!37124 lt!2475485)) (= (regOne!34440 r1!6342) r2!6280) (= (regTwo!34440 r1!6342) r3!135)) (= lambda!395376 lambda!395318))))

(declare-fun bs!1854279 () Bool)

(assert (= bs!1854279 (and b!6940240 b!6939794)))

(assert (=> bs!1854279 (not (= lambda!395376 lambda!395319))))

(assert (=> bs!1854279 (= (and (= (_1!37124 lt!2475485) lt!2475455) (= (regOne!34440 r1!6342) r1!6342) (= (regTwo!34440 r1!6342) r2!6280)) (= lambda!395376 lambda!395320))))

(declare-fun bs!1854280 () Bool)

(assert (= bs!1854280 (and b!6940240 b!6940163)))

(assert (=> bs!1854280 (= (and (= (_1!37124 lt!2475485) lt!2475455) (= (regOne!34440 r1!6342) (regOne!34440 lt!2475482)) (= (regTwo!34440 r1!6342) (regTwo!34440 lt!2475482))) (= lambda!395376 lambda!395372))))

(declare-fun bs!1854281 () Bool)

(assert (= bs!1854281 (and b!6940240 d!2167510)))

(assert (=> bs!1854281 (= (and (= (_1!37124 lt!2475485) (_2!37124 lt!2475485)) (= (regOne!34440 r1!6342) r2!6280) (= (regTwo!34440 r1!6342) r3!135)) (= lambda!395376 lambda!395354))))

(declare-fun bs!1854282 () Bool)

(assert (= bs!1854282 (and b!6940240 b!6940235)))

(assert (=> bs!1854282 (not (= lambda!395376 lambda!395375))))

(assert (=> bs!1854281 (not (= lambda!395376 lambda!395353))))

(declare-fun bs!1854283 () Bool)

(assert (= bs!1854283 (and b!6940240 b!6940158)))

(assert (=> bs!1854283 (not (= lambda!395376 lambda!395371))))

(assert (=> bs!1854275 (not (= lambda!395376 lambda!395315))))

(declare-fun bs!1854284 () Bool)

(assert (= bs!1854284 (and b!6940240 d!2167520)))

(assert (=> bs!1854284 (not (= lambda!395376 lambda!395357))))

(declare-fun bs!1854285 () Bool)

(assert (= bs!1854285 (and b!6940240 b!6940095)))

(assert (=> bs!1854285 (= (and (= (_1!37124 lt!2475485) (_2!37124 lt!2475485)) (= (regOne!34440 r1!6342) (regOne!34440 lt!2475478)) (= (regTwo!34440 r1!6342) (regTwo!34440 lt!2475478))) (= lambda!395376 lambda!395363))))

(declare-fun bs!1854286 () Bool)

(assert (= bs!1854286 (and b!6940240 d!2167548)))

(assert (=> bs!1854286 (not (= lambda!395376 lambda!395368))))

(declare-fun bs!1854287 () Bool)

(assert (= bs!1854287 (and b!6940240 d!2167540)))

(assert (=> bs!1854287 (not (= lambda!395376 lambda!395364))))

(assert (=> bs!1854287 (= (and (= (_1!37124 lt!2475485) lt!2475455) (= (regOne!34440 r1!6342) r1!6342) (= (regTwo!34440 r1!6342) r2!6280)) (= lambda!395376 lambda!395365))))

(assert (=> b!6940240 true))

(assert (=> b!6940240 true))

(declare-fun d!2167570 () Bool)

(declare-fun c!1287780 () Bool)

(assert (=> d!2167570 (= c!1287780 (is-EmptyExpr!16964 r1!6342))))

(declare-fun e!4175153 () Bool)

(assert (=> d!2167570 (= (matchRSpec!4021 r1!6342 (_1!37124 lt!2475485)) e!4175153)))

(declare-fun b!6940230 () Bool)

(declare-fun e!4175149 () Bool)

(declare-fun e!4175150 () Bool)

(assert (=> b!6940230 (= e!4175149 e!4175150)))

(declare-fun res!2831046 () Bool)

(assert (=> b!6940230 (= res!2831046 (matchRSpec!4021 (regOne!34441 r1!6342) (_1!37124 lt!2475485)))))

(assert (=> b!6940230 (=> res!2831046 e!4175150)))

(declare-fun b!6940231 () Bool)

(declare-fun c!1287779 () Bool)

(assert (=> b!6940231 (= c!1287779 (is-Union!16964 r1!6342))))

(declare-fun e!4175154 () Bool)

(assert (=> b!6940231 (= e!4175154 e!4175149)))

(declare-fun b!6940232 () Bool)

(assert (=> b!6940232 (= e!4175150 (matchRSpec!4021 (regTwo!34441 r1!6342) (_1!37124 lt!2475485)))))

(declare-fun b!6940233 () Bool)

(assert (=> b!6940233 (= e!4175154 (= (_1!37124 lt!2475485) (Cons!66593 (c!1287706 r1!6342) Nil!66593)))))

(declare-fun call!630513 () Bool)

(declare-fun c!1287778 () Bool)

(declare-fun bm!630508 () Bool)

(assert (=> bm!630508 (= call!630513 (Exists!3964 (ite c!1287778 lambda!395375 lambda!395376)))))

(declare-fun b!6940234 () Bool)

(declare-fun res!2831047 () Bool)

(declare-fun e!4175151 () Bool)

(assert (=> b!6940234 (=> res!2831047 e!4175151)))

(declare-fun call!630514 () Bool)

(assert (=> b!6940234 (= res!2831047 call!630514)))

(declare-fun e!4175152 () Bool)

(assert (=> b!6940234 (= e!4175152 e!4175151)))

(assert (=> b!6940235 (= e!4175151 call!630513)))

(declare-fun bm!630509 () Bool)

(assert (=> bm!630509 (= call!630514 (isEmpty!38864 (_1!37124 lt!2475485)))))

(declare-fun b!6940236 () Bool)

(declare-fun e!4175155 () Bool)

(assert (=> b!6940236 (= e!4175153 e!4175155)))

(declare-fun res!2831045 () Bool)

(assert (=> b!6940236 (= res!2831045 (not (is-EmptyLang!16964 r1!6342)))))

(assert (=> b!6940236 (=> (not res!2831045) (not e!4175155))))

(declare-fun b!6940237 () Bool)

(assert (=> b!6940237 (= e!4175153 call!630514)))

(declare-fun b!6940238 () Bool)

(assert (=> b!6940238 (= e!4175149 e!4175152)))

(assert (=> b!6940238 (= c!1287778 (is-Star!16964 r1!6342))))

(declare-fun b!6940239 () Bool)

(declare-fun c!1287781 () Bool)

(assert (=> b!6940239 (= c!1287781 (is-ElementMatch!16964 r1!6342))))

(assert (=> b!6940239 (= e!4175155 e!4175154)))

(assert (=> b!6940240 (= e!4175152 call!630513)))

(assert (= (and d!2167570 c!1287780) b!6940237))

(assert (= (and d!2167570 (not c!1287780)) b!6940236))

(assert (= (and b!6940236 res!2831045) b!6940239))

(assert (= (and b!6940239 c!1287781) b!6940233))

(assert (= (and b!6940239 (not c!1287781)) b!6940231))

(assert (= (and b!6940231 c!1287779) b!6940230))

(assert (= (and b!6940231 (not c!1287779)) b!6940238))

(assert (= (and b!6940230 (not res!2831046)) b!6940232))

(assert (= (and b!6940238 c!1287778) b!6940234))

(assert (= (and b!6940238 (not c!1287778)) b!6940240))

(assert (= (and b!6940234 (not res!2831047)) b!6940235))

(assert (= (or b!6940235 b!6940240) bm!630508))

(assert (= (or b!6940237 b!6940234) bm!630509))

(declare-fun m!7645382 () Bool)

(assert (=> b!6940230 m!7645382))

(declare-fun m!7645384 () Bool)

(assert (=> b!6940232 m!7645384))

(declare-fun m!7645386 () Bool)

(assert (=> bm!630508 m!7645386))

(assert (=> bm!630509 m!7645362))

(assert (=> b!6939796 d!2167570))

(declare-fun bs!1854288 () Bool)

(declare-fun d!2167574 () Bool)

(assert (= bs!1854288 (and d!2167574 b!6939796)))

(declare-fun lambda!395377 () Int)

(assert (=> bs!1854288 (not (= lambda!395377 lambda!395316))))

(declare-fun bs!1854289 () Bool)

(assert (= bs!1854289 (and d!2167574 b!6939805)))

(assert (=> bs!1854289 (= (and (= s!14361 (_2!37124 lt!2475485)) (= r1!6342 r2!6280) (= lt!2475478 r3!135)) (= lambda!395377 lambda!395317))))

(declare-fun bs!1854290 () Bool)

(assert (= bs!1854290 (and d!2167574 b!6939802)))

(assert (=> bs!1854290 (= (and (= r1!6342 lt!2475482) (= lt!2475478 r3!135)) (= lambda!395377 lambda!395321))))

(declare-fun bs!1854291 () Bool)

(assert (= bs!1854291 (and d!2167574 b!6940240)))

(assert (=> bs!1854291 (not (= lambda!395377 lambda!395376))))

(declare-fun bs!1854292 () Bool)

(assert (= bs!1854292 (and d!2167574 b!6940090)))

(assert (=> bs!1854292 (not (= lambda!395377 lambda!395362))))

(assert (=> bs!1854289 (not (= lambda!395377 lambda!395318))))

(declare-fun bs!1854293 () Bool)

(assert (= bs!1854293 (and d!2167574 b!6939794)))

(assert (=> bs!1854293 (= (and (= s!14361 lt!2475455) (= lt!2475478 r2!6280)) (= lambda!395377 lambda!395319))))

(assert (=> bs!1854293 (not (= lambda!395377 lambda!395320))))

(declare-fun bs!1854294 () Bool)

(assert (= bs!1854294 (and d!2167574 b!6940163)))

(assert (=> bs!1854294 (not (= lambda!395377 lambda!395372))))

(declare-fun bs!1854295 () Bool)

(assert (= bs!1854295 (and d!2167574 d!2167510)))

(assert (=> bs!1854295 (not (= lambda!395377 lambda!395354))))

(declare-fun bs!1854296 () Bool)

(assert (= bs!1854296 (and d!2167574 b!6940235)))

(assert (=> bs!1854296 (not (= lambda!395377 lambda!395375))))

(assert (=> bs!1854295 (= (and (= s!14361 (_2!37124 lt!2475485)) (= r1!6342 r2!6280) (= lt!2475478 r3!135)) (= lambda!395377 lambda!395353))))

(declare-fun bs!1854297 () Bool)

(assert (= bs!1854297 (and d!2167574 b!6940158)))

(assert (=> bs!1854297 (not (= lambda!395377 lambda!395371))))

(assert (=> bs!1854288 (= lambda!395377 lambda!395315)))

(declare-fun bs!1854298 () Bool)

(assert (= bs!1854298 (and d!2167574 d!2167520)))

(assert (=> bs!1854298 (= (and (= s!14361 (_2!37124 lt!2475485)) (= r1!6342 r2!6280) (= lt!2475478 r3!135)) (= lambda!395377 lambda!395357))))

(declare-fun bs!1854299 () Bool)

(assert (= bs!1854299 (and d!2167574 b!6940095)))

(assert (=> bs!1854299 (not (= lambda!395377 lambda!395363))))

(declare-fun bs!1854300 () Bool)

(assert (= bs!1854300 (and d!2167574 d!2167548)))

(assert (=> bs!1854300 (= (and (= s!14361 lt!2475455) (= lt!2475478 r2!6280)) (= lambda!395377 lambda!395368))))

(declare-fun bs!1854301 () Bool)

(assert (= bs!1854301 (and d!2167574 d!2167540)))

(assert (=> bs!1854301 (= (and (= s!14361 lt!2475455) (= lt!2475478 r2!6280)) (= lambda!395377 lambda!395364))))

(assert (=> bs!1854301 (not (= lambda!395377 lambda!395365))))

(assert (=> d!2167574 true))

(assert (=> d!2167574 true))

(assert (=> d!2167574 true))

(declare-fun lambda!395378 () Int)

(assert (=> bs!1854288 (= lambda!395378 lambda!395316)))

(assert (=> bs!1854289 (not (= lambda!395378 lambda!395317))))

(declare-fun bs!1854303 () Bool)

(assert (= bs!1854303 d!2167574))

(assert (=> bs!1854303 (not (= lambda!395378 lambda!395377))))

(assert (=> bs!1854290 (not (= lambda!395378 lambda!395321))))

(assert (=> bs!1854291 (= (and (= s!14361 (_1!37124 lt!2475485)) (= r1!6342 (regOne!34440 r1!6342)) (= lt!2475478 (regTwo!34440 r1!6342))) (= lambda!395378 lambda!395376))))

(assert (=> bs!1854292 (not (= lambda!395378 lambda!395362))))

(assert (=> bs!1854289 (= (and (= s!14361 (_2!37124 lt!2475485)) (= r1!6342 r2!6280) (= lt!2475478 r3!135)) (= lambda!395378 lambda!395318))))

(assert (=> bs!1854293 (not (= lambda!395378 lambda!395319))))

(assert (=> bs!1854293 (= (and (= s!14361 lt!2475455) (= lt!2475478 r2!6280)) (= lambda!395378 lambda!395320))))

(assert (=> bs!1854294 (= (and (= s!14361 lt!2475455) (= r1!6342 (regOne!34440 lt!2475482)) (= lt!2475478 (regTwo!34440 lt!2475482))) (= lambda!395378 lambda!395372))))

(assert (=> bs!1854295 (= (and (= s!14361 (_2!37124 lt!2475485)) (= r1!6342 r2!6280) (= lt!2475478 r3!135)) (= lambda!395378 lambda!395354))))

(assert (=> bs!1854296 (not (= lambda!395378 lambda!395375))))

(assert (=> bs!1854295 (not (= lambda!395378 lambda!395353))))

(assert (=> bs!1854297 (not (= lambda!395378 lambda!395371))))

(assert (=> bs!1854288 (not (= lambda!395378 lambda!395315))))

(assert (=> bs!1854298 (not (= lambda!395378 lambda!395357))))

(assert (=> bs!1854299 (= (and (= s!14361 (_2!37124 lt!2475485)) (= r1!6342 (regOne!34440 lt!2475478)) (= lt!2475478 (regTwo!34440 lt!2475478))) (= lambda!395378 lambda!395363))))

(assert (=> bs!1854300 (not (= lambda!395378 lambda!395368))))

(assert (=> bs!1854301 (not (= lambda!395378 lambda!395364))))

(assert (=> bs!1854301 (= (and (= s!14361 lt!2475455) (= lt!2475478 r2!6280)) (= lambda!395378 lambda!395365))))

(assert (=> d!2167574 true))

(assert (=> d!2167574 true))

(assert (=> d!2167574 true))

(assert (=> d!2167574 (= (Exists!3964 lambda!395377) (Exists!3964 lambda!395378))))

(declare-fun lt!2475625 () Unit!160652)

(assert (=> d!2167574 (= lt!2475625 (choose!51700 r1!6342 lt!2475478 s!14361))))

(assert (=> d!2167574 (validRegex!8670 r1!6342)))

(assert (=> d!2167574 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2425 r1!6342 lt!2475478 s!14361) lt!2475625)))

(declare-fun m!7645392 () Bool)

(assert (=> bs!1854303 m!7645392))

(declare-fun m!7645394 () Bool)

(assert (=> bs!1854303 m!7645394))

(declare-fun m!7645396 () Bool)

(assert (=> bs!1854303 m!7645396))

(assert (=> bs!1854303 m!7645020))

(assert (=> b!6939796 d!2167574))

(declare-fun bs!1854304 () Bool)

(declare-fun d!2167578 () Bool)

(assert (= bs!1854304 (and d!2167578 b!6939796)))

(declare-fun lambda!395379 () Int)

(assert (=> bs!1854304 (not (= lambda!395379 lambda!395316))))

(declare-fun bs!1854305 () Bool)

(assert (= bs!1854305 (and d!2167578 b!6939805)))

(assert (=> bs!1854305 (= (and (= s!14361 (_2!37124 lt!2475485)) (= r1!6342 r2!6280) (= lt!2475478 r3!135)) (= lambda!395379 lambda!395317))))

(declare-fun bs!1854306 () Bool)

(assert (= bs!1854306 (and d!2167578 d!2167574)))

(assert (=> bs!1854306 (= lambda!395379 lambda!395377)))

(declare-fun bs!1854307 () Bool)

(assert (= bs!1854307 (and d!2167578 b!6939802)))

(assert (=> bs!1854307 (= (and (= r1!6342 lt!2475482) (= lt!2475478 r3!135)) (= lambda!395379 lambda!395321))))

(declare-fun bs!1854308 () Bool)

(assert (= bs!1854308 (and d!2167578 b!6940240)))

(assert (=> bs!1854308 (not (= lambda!395379 lambda!395376))))

(declare-fun bs!1854310 () Bool)

(assert (= bs!1854310 (and d!2167578 b!6940090)))

(assert (=> bs!1854310 (not (= lambda!395379 lambda!395362))))

(assert (=> bs!1854305 (not (= lambda!395379 lambda!395318))))

(declare-fun bs!1854311 () Bool)

(assert (= bs!1854311 (and d!2167578 b!6939794)))

(assert (=> bs!1854311 (= (and (= s!14361 lt!2475455) (= lt!2475478 r2!6280)) (= lambda!395379 lambda!395319))))

(assert (=> bs!1854311 (not (= lambda!395379 lambda!395320))))

(declare-fun bs!1854312 () Bool)

(assert (= bs!1854312 (and d!2167578 b!6940163)))

(assert (=> bs!1854312 (not (= lambda!395379 lambda!395372))))

(assert (=> bs!1854306 (not (= lambda!395379 lambda!395378))))

(declare-fun bs!1854313 () Bool)

(assert (= bs!1854313 (and d!2167578 d!2167510)))

(assert (=> bs!1854313 (not (= lambda!395379 lambda!395354))))

(declare-fun bs!1854314 () Bool)

(assert (= bs!1854314 (and d!2167578 b!6940235)))

(assert (=> bs!1854314 (not (= lambda!395379 lambda!395375))))

(assert (=> bs!1854313 (= (and (= s!14361 (_2!37124 lt!2475485)) (= r1!6342 r2!6280) (= lt!2475478 r3!135)) (= lambda!395379 lambda!395353))))

(declare-fun bs!1854315 () Bool)

(assert (= bs!1854315 (and d!2167578 b!6940158)))

(assert (=> bs!1854315 (not (= lambda!395379 lambda!395371))))

(assert (=> bs!1854304 (= lambda!395379 lambda!395315)))

(declare-fun bs!1854316 () Bool)

(assert (= bs!1854316 (and d!2167578 d!2167520)))

(assert (=> bs!1854316 (= (and (= s!14361 (_2!37124 lt!2475485)) (= r1!6342 r2!6280) (= lt!2475478 r3!135)) (= lambda!395379 lambda!395357))))

(declare-fun bs!1854317 () Bool)

(assert (= bs!1854317 (and d!2167578 b!6940095)))

(assert (=> bs!1854317 (not (= lambda!395379 lambda!395363))))

(declare-fun bs!1854318 () Bool)

(assert (= bs!1854318 (and d!2167578 d!2167548)))

(assert (=> bs!1854318 (= (and (= s!14361 lt!2475455) (= lt!2475478 r2!6280)) (= lambda!395379 lambda!395368))))

(declare-fun bs!1854319 () Bool)

(assert (= bs!1854319 (and d!2167578 d!2167540)))

(assert (=> bs!1854319 (= (and (= s!14361 lt!2475455) (= lt!2475478 r2!6280)) (= lambda!395379 lambda!395364))))

(assert (=> bs!1854319 (not (= lambda!395379 lambda!395365))))

(assert (=> d!2167578 true))

(assert (=> d!2167578 true))

(assert (=> d!2167578 true))

(assert (=> d!2167578 (= (isDefined!13434 (findConcatSeparation!3147 r1!6342 lt!2475478 Nil!66593 s!14361 s!14361)) (Exists!3964 lambda!395379))))

(declare-fun lt!2475630 () Unit!160652)

(assert (=> d!2167578 (= lt!2475630 (choose!51701 r1!6342 lt!2475478 s!14361))))

(assert (=> d!2167578 (validRegex!8670 r1!6342)))

(assert (=> d!2167578 (= (lemmaFindConcatSeparationEquivalentToExists!2905 r1!6342 lt!2475478 s!14361) lt!2475630)))

(declare-fun bs!1854321 () Bool)

(assert (= bs!1854321 d!2167578))

(assert (=> bs!1854321 m!7644994))

(declare-fun m!7645406 () Bool)

(assert (=> bs!1854321 m!7645406))

(declare-fun m!7645408 () Bool)

(assert (=> bs!1854321 m!7645408))

(declare-fun m!7645410 () Bool)

(assert (=> bs!1854321 m!7645410))

(assert (=> bs!1854321 m!7645020))

(assert (=> bs!1854321 m!7644994))

(assert (=> b!6939796 d!2167578))

(declare-fun d!2167584 () Bool)

(assert (=> d!2167584 (= (Exists!3964 lambda!395316) (choose!51702 lambda!395316))))

(declare-fun bs!1854322 () Bool)

(assert (= bs!1854322 d!2167584))

(declare-fun m!7645412 () Bool)

(assert (=> bs!1854322 m!7645412))

(assert (=> b!6939796 d!2167584))

(declare-fun b!6940266 () Bool)

(declare-fun res!2831059 () Bool)

(declare-fun e!4175173 () Bool)

(assert (=> b!6940266 (=> res!2831059 e!4175173)))

(assert (=> b!6940266 (= res!2831059 (not (isEmpty!38864 (tail!12961 (_2!37124 lt!2475485)))))))

(declare-fun b!6940267 () Bool)

(declare-fun res!2831065 () Bool)

(declare-fun e!4175176 () Bool)

(assert (=> b!6940267 (=> res!2831065 e!4175176)))

(declare-fun e!4175170 () Bool)

(assert (=> b!6940267 (= res!2831065 e!4175170)))

(declare-fun res!2831063 () Bool)

(assert (=> b!6940267 (=> (not res!2831063) (not e!4175170))))

(declare-fun lt!2475632 () Bool)

(assert (=> b!6940267 (= res!2831063 lt!2475632)))

(declare-fun b!6940268 () Bool)

(declare-fun e!4175172 () Bool)

(assert (=> b!6940268 (= e!4175172 (not lt!2475632))))

(declare-fun b!6940269 () Bool)

(declare-fun e!4175171 () Bool)

(assert (=> b!6940269 (= e!4175171 (nullable!6781 lt!2475478))))

(declare-fun d!2167586 () Bool)

(declare-fun e!4175175 () Bool)

(assert (=> d!2167586 e!4175175))

(declare-fun c!1287791 () Bool)

(assert (=> d!2167586 (= c!1287791 (is-EmptyExpr!16964 lt!2475478))))

(assert (=> d!2167586 (= lt!2475632 e!4175171)))

(declare-fun c!1287789 () Bool)

(assert (=> d!2167586 (= c!1287789 (isEmpty!38864 (_2!37124 lt!2475485)))))

(assert (=> d!2167586 (validRegex!8670 lt!2475478)))

(assert (=> d!2167586 (= (matchR!9103 lt!2475478 (_2!37124 lt!2475485)) lt!2475632)))

(declare-fun b!6940270 () Bool)

(declare-fun res!2831066 () Bool)

(assert (=> b!6940270 (=> (not res!2831066) (not e!4175170))))

(assert (=> b!6940270 (= res!2831066 (isEmpty!38864 (tail!12961 (_2!37124 lt!2475485))))))

(declare-fun b!6940271 () Bool)

(declare-fun res!2831062 () Bool)

(assert (=> b!6940271 (=> (not res!2831062) (not e!4175170))))

(declare-fun call!630518 () Bool)

(assert (=> b!6940271 (= res!2831062 (not call!630518))))

(declare-fun b!6940272 () Bool)

(assert (=> b!6940272 (= e!4175175 (= lt!2475632 call!630518))))

(declare-fun b!6940273 () Bool)

(declare-fun e!4175174 () Bool)

(assert (=> b!6940273 (= e!4175176 e!4175174)))

(declare-fun res!2831061 () Bool)

(assert (=> b!6940273 (=> (not res!2831061) (not e!4175174))))

(assert (=> b!6940273 (= res!2831061 (not lt!2475632))))

(declare-fun bm!630513 () Bool)

(assert (=> bm!630513 (= call!630518 (isEmpty!38864 (_2!37124 lt!2475485)))))

(declare-fun b!6940274 () Bool)

(assert (=> b!6940274 (= e!4175175 e!4175172)))

(declare-fun c!1287790 () Bool)

(assert (=> b!6940274 (= c!1287790 (is-EmptyLang!16964 lt!2475478))))

(declare-fun b!6940275 () Bool)

(assert (=> b!6940275 (= e!4175173 (not (= (head!13909 (_2!37124 lt!2475485)) (c!1287706 lt!2475478))))))

(declare-fun b!6940276 () Bool)

(assert (=> b!6940276 (= e!4175170 (= (head!13909 (_2!37124 lt!2475485)) (c!1287706 lt!2475478)))))

(declare-fun b!6940277 () Bool)

(assert (=> b!6940277 (= e!4175174 e!4175173)))

(declare-fun res!2831060 () Bool)

(assert (=> b!6940277 (=> res!2831060 e!4175173)))

(assert (=> b!6940277 (= res!2831060 call!630518)))

(declare-fun b!6940278 () Bool)

(declare-fun res!2831064 () Bool)

(assert (=> b!6940278 (=> res!2831064 e!4175176)))

(assert (=> b!6940278 (= res!2831064 (not (is-ElementMatch!16964 lt!2475478)))))

(assert (=> b!6940278 (= e!4175172 e!4175176)))

(declare-fun b!6940279 () Bool)

(assert (=> b!6940279 (= e!4175171 (matchR!9103 (derivativeStep!5456 lt!2475478 (head!13909 (_2!37124 lt!2475485))) (tail!12961 (_2!37124 lt!2475485))))))

(assert (= (and d!2167586 c!1287789) b!6940269))

(assert (= (and d!2167586 (not c!1287789)) b!6940279))

(assert (= (and d!2167586 c!1287791) b!6940272))

(assert (= (and d!2167586 (not c!1287791)) b!6940274))

(assert (= (and b!6940274 c!1287790) b!6940268))

(assert (= (and b!6940274 (not c!1287790)) b!6940278))

(assert (= (and b!6940278 (not res!2831064)) b!6940267))

(assert (= (and b!6940267 res!2831063) b!6940271))

(assert (= (and b!6940271 res!2831062) b!6940270))

(assert (= (and b!6940270 res!2831066) b!6940276))

(assert (= (and b!6940267 (not res!2831065)) b!6940273))

(assert (= (and b!6940273 res!2831061) b!6940277))

(assert (= (and b!6940277 (not res!2831060)) b!6940266))

(assert (= (and b!6940266 (not res!2831059)) b!6940275))

(assert (= (or b!6940272 b!6940271 b!6940277) bm!630513))

(declare-fun m!7645414 () Bool)

(assert (=> b!6940266 m!7645414))

(assert (=> b!6940266 m!7645414))

(declare-fun m!7645416 () Bool)

(assert (=> b!6940266 m!7645416))

(assert (=> d!2167586 m!7645250))

(assert (=> d!2167586 m!7645254))

(assert (=> bm!630513 m!7645250))

(declare-fun m!7645418 () Bool)

(assert (=> b!6940269 m!7645418))

(declare-fun m!7645420 () Bool)

(assert (=> b!6940276 m!7645420))

(assert (=> b!6940279 m!7645420))

(assert (=> b!6940279 m!7645420))

(declare-fun m!7645422 () Bool)

(assert (=> b!6940279 m!7645422))

(assert (=> b!6940279 m!7645414))

(assert (=> b!6940279 m!7645422))

(assert (=> b!6940279 m!7645414))

(declare-fun m!7645424 () Bool)

(assert (=> b!6940279 m!7645424))

(assert (=> b!6940275 m!7645420))

(assert (=> b!6940270 m!7645414))

(assert (=> b!6940270 m!7645414))

(assert (=> b!6940270 m!7645416))

(assert (=> b!6939797 d!2167586))

(declare-fun d!2167588 () Bool)

(assert (=> d!2167588 (= (matchR!9103 r2!6280 (_1!37124 lt!2475472)) (matchRSpec!4021 r2!6280 (_1!37124 lt!2475472)))))

(declare-fun lt!2475633 () Unit!160652)

(assert (=> d!2167588 (= lt!2475633 (choose!51703 r2!6280 (_1!37124 lt!2475472)))))

(assert (=> d!2167588 (validRegex!8670 r2!6280)))

(assert (=> d!2167588 (= (mainMatchTheorem!4021 r2!6280 (_1!37124 lt!2475472)) lt!2475633)))

(declare-fun bs!1854328 () Bool)

(assert (= bs!1854328 d!2167588))

(assert (=> bs!1854328 m!7644984))

(assert (=> bs!1854328 m!7645012))

(declare-fun m!7645426 () Bool)

(assert (=> bs!1854328 m!7645426))

(assert (=> bs!1854328 m!7645048))

(assert (=> b!6939787 d!2167588))

(declare-fun b!6940280 () Bool)

(declare-fun e!4175177 () List!66717)

(assert (=> b!6940280 (= e!4175177 (++!15003 (_1!37124 lt!2475472) (_2!37124 lt!2475472)))))

(declare-fun b!6940282 () Bool)

(declare-fun res!2831067 () Bool)

(declare-fun e!4175178 () Bool)

(assert (=> b!6940282 (=> (not res!2831067) (not e!4175178))))

(declare-fun lt!2475634 () List!66717)

(assert (=> b!6940282 (= res!2831067 (= (size!40800 lt!2475634) (+ (size!40800 (_1!37124 lt!2475485)) (size!40800 (++!15003 (_1!37124 lt!2475472) (_2!37124 lt!2475472))))))))

(declare-fun d!2167590 () Bool)

(assert (=> d!2167590 e!4175178))

(declare-fun res!2831068 () Bool)

(assert (=> d!2167590 (=> (not res!2831068) (not e!4175178))))

(assert (=> d!2167590 (= res!2831068 (= (content!13103 lt!2475634) (set.union (content!13103 (_1!37124 lt!2475485)) (content!13103 (++!15003 (_1!37124 lt!2475472) (_2!37124 lt!2475472))))))))

(assert (=> d!2167590 (= lt!2475634 e!4175177)))

(declare-fun c!1287792 () Bool)

(assert (=> d!2167590 (= c!1287792 (is-Nil!66593 (_1!37124 lt!2475485)))))

(assert (=> d!2167590 (= (++!15003 (_1!37124 lt!2475485) (++!15003 (_1!37124 lt!2475472) (_2!37124 lt!2475472))) lt!2475634)))

(declare-fun b!6940283 () Bool)

(assert (=> b!6940283 (= e!4175178 (or (not (= (++!15003 (_1!37124 lt!2475472) (_2!37124 lt!2475472)) Nil!66593)) (= lt!2475634 (_1!37124 lt!2475485))))))

(declare-fun b!6940281 () Bool)

(assert (=> b!6940281 (= e!4175177 (Cons!66593 (h!73041 (_1!37124 lt!2475485)) (++!15003 (t!380460 (_1!37124 lt!2475485)) (++!15003 (_1!37124 lt!2475472) (_2!37124 lt!2475472)))))))

(assert (= (and d!2167590 c!1287792) b!6940280))

(assert (= (and d!2167590 (not c!1287792)) b!6940281))

(assert (= (and d!2167590 res!2831068) b!6940282))

(assert (= (and b!6940282 res!2831067) b!6940283))

(declare-fun m!7645428 () Bool)

(assert (=> b!6940282 m!7645428))

(assert (=> b!6940282 m!7645262))

(assert (=> b!6940282 m!7645014))

(declare-fun m!7645430 () Bool)

(assert (=> b!6940282 m!7645430))

(declare-fun m!7645432 () Bool)

(assert (=> d!2167590 m!7645432))

(assert (=> d!2167590 m!7645268))

(assert (=> d!2167590 m!7645014))

(declare-fun m!7645434 () Bool)

(assert (=> d!2167590 m!7645434))

(assert (=> b!6940281 m!7645014))

(declare-fun m!7645436 () Bool)

(assert (=> b!6940281 m!7645436))

(assert (=> b!6939787 d!2167590))

(declare-fun bs!1854331 () Bool)

(declare-fun b!6940289 () Bool)

(assert (= bs!1854331 (and b!6940289 b!6939796)))

(declare-fun lambda!395382 () Int)

(assert (=> bs!1854331 (not (= lambda!395382 lambda!395316))))

(declare-fun bs!1854333 () Bool)

(assert (= bs!1854333 (and b!6940289 b!6939805)))

(assert (=> bs!1854333 (not (= lambda!395382 lambda!395317))))

(declare-fun bs!1854334 () Bool)

(assert (= bs!1854334 (and b!6940289 d!2167574)))

(assert (=> bs!1854334 (not (= lambda!395382 lambda!395377))))

(declare-fun bs!1854336 () Bool)

(assert (= bs!1854336 (and b!6940289 b!6939802)))

(assert (=> bs!1854336 (not (= lambda!395382 lambda!395321))))

(declare-fun bs!1854338 () Bool)

(assert (= bs!1854338 (and b!6940289 b!6940240)))

(assert (=> bs!1854338 (not (= lambda!395382 lambda!395376))))

(declare-fun bs!1854339 () Bool)

(assert (= bs!1854339 (and b!6940289 b!6940090)))

(assert (=> bs!1854339 (= (and (= (_2!37124 lt!2475472) (_2!37124 lt!2475485)) (= (reg!17293 r3!135) (reg!17293 lt!2475478)) (= r3!135 lt!2475478)) (= lambda!395382 lambda!395362))))

(assert (=> bs!1854333 (not (= lambda!395382 lambda!395318))))

(declare-fun bs!1854341 () Bool)

(assert (= bs!1854341 (and b!6940289 b!6939794)))

(assert (=> bs!1854341 (not (= lambda!395382 lambda!395319))))

(assert (=> bs!1854341 (not (= lambda!395382 lambda!395320))))

(declare-fun bs!1854342 () Bool)

(assert (= bs!1854342 (and b!6940289 b!6940163)))

(assert (=> bs!1854342 (not (= lambda!395382 lambda!395372))))

(assert (=> bs!1854334 (not (= lambda!395382 lambda!395378))))

(declare-fun bs!1854343 () Bool)

(assert (= bs!1854343 (and b!6940289 d!2167578)))

(assert (=> bs!1854343 (not (= lambda!395382 lambda!395379))))

(declare-fun bs!1854344 () Bool)

(assert (= bs!1854344 (and b!6940289 d!2167510)))

(assert (=> bs!1854344 (not (= lambda!395382 lambda!395354))))

(declare-fun bs!1854346 () Bool)

(assert (= bs!1854346 (and b!6940289 b!6940235)))

(assert (=> bs!1854346 (= (and (= (_2!37124 lt!2475472) (_1!37124 lt!2475485)) (= (reg!17293 r3!135) (reg!17293 r1!6342)) (= r3!135 r1!6342)) (= lambda!395382 lambda!395375))))

(assert (=> bs!1854344 (not (= lambda!395382 lambda!395353))))

(declare-fun bs!1854347 () Bool)

(assert (= bs!1854347 (and b!6940289 b!6940158)))

(assert (=> bs!1854347 (= (and (= (_2!37124 lt!2475472) lt!2475455) (= (reg!17293 r3!135) (reg!17293 lt!2475482)) (= r3!135 lt!2475482)) (= lambda!395382 lambda!395371))))

(assert (=> bs!1854331 (not (= lambda!395382 lambda!395315))))

(declare-fun bs!1854348 () Bool)

(assert (= bs!1854348 (and b!6940289 d!2167520)))

(assert (=> bs!1854348 (not (= lambda!395382 lambda!395357))))

(declare-fun bs!1854349 () Bool)

(assert (= bs!1854349 (and b!6940289 b!6940095)))

(assert (=> bs!1854349 (not (= lambda!395382 lambda!395363))))

(declare-fun bs!1854350 () Bool)

(assert (= bs!1854350 (and b!6940289 d!2167548)))

(assert (=> bs!1854350 (not (= lambda!395382 lambda!395368))))

(declare-fun bs!1854351 () Bool)

(assert (= bs!1854351 (and b!6940289 d!2167540)))

(assert (=> bs!1854351 (not (= lambda!395382 lambda!395364))))

(assert (=> bs!1854351 (not (= lambda!395382 lambda!395365))))

(assert (=> b!6940289 true))

(assert (=> b!6940289 true))

(declare-fun bs!1854352 () Bool)

(declare-fun b!6940294 () Bool)

(assert (= bs!1854352 (and b!6940294 b!6939796)))

(declare-fun lambda!395383 () Int)

(assert (=> bs!1854352 (= (and (= (_2!37124 lt!2475472) s!14361) (= (regOne!34440 r3!135) r1!6342) (= (regTwo!34440 r3!135) lt!2475478)) (= lambda!395383 lambda!395316))))

(declare-fun bs!1854353 () Bool)

(assert (= bs!1854353 (and b!6940294 b!6939805)))

(assert (=> bs!1854353 (not (= lambda!395383 lambda!395317))))

(declare-fun bs!1854354 () Bool)

(assert (= bs!1854354 (and b!6940294 d!2167574)))

(assert (=> bs!1854354 (not (= lambda!395383 lambda!395377))))

(declare-fun bs!1854355 () Bool)

(assert (= bs!1854355 (and b!6940294 b!6939802)))

(assert (=> bs!1854355 (not (= lambda!395383 lambda!395321))))

(declare-fun bs!1854356 () Bool)

(assert (= bs!1854356 (and b!6940294 b!6940240)))

(assert (=> bs!1854356 (= (and (= (_2!37124 lt!2475472) (_1!37124 lt!2475485)) (= (regOne!34440 r3!135) (regOne!34440 r1!6342)) (= (regTwo!34440 r3!135) (regTwo!34440 r1!6342))) (= lambda!395383 lambda!395376))))

(declare-fun bs!1854357 () Bool)

(assert (= bs!1854357 (and b!6940294 b!6940090)))

(assert (=> bs!1854357 (not (= lambda!395383 lambda!395362))))

(assert (=> bs!1854353 (= (and (= (_2!37124 lt!2475472) (_2!37124 lt!2475485)) (= (regOne!34440 r3!135) r2!6280) (= (regTwo!34440 r3!135) r3!135)) (= lambda!395383 lambda!395318))))

(declare-fun bs!1854358 () Bool)

(assert (= bs!1854358 (and b!6940294 b!6939794)))

(assert (=> bs!1854358 (not (= lambda!395383 lambda!395319))))

(assert (=> bs!1854358 (= (and (= (_2!37124 lt!2475472) lt!2475455) (= (regOne!34440 r3!135) r1!6342) (= (regTwo!34440 r3!135) r2!6280)) (= lambda!395383 lambda!395320))))

(declare-fun bs!1854359 () Bool)

(assert (= bs!1854359 (and b!6940294 b!6940163)))

(assert (=> bs!1854359 (= (and (= (_2!37124 lt!2475472) lt!2475455) (= (regOne!34440 r3!135) (regOne!34440 lt!2475482)) (= (regTwo!34440 r3!135) (regTwo!34440 lt!2475482))) (= lambda!395383 lambda!395372))))

(assert (=> bs!1854354 (= (and (= (_2!37124 lt!2475472) s!14361) (= (regOne!34440 r3!135) r1!6342) (= (regTwo!34440 r3!135) lt!2475478)) (= lambda!395383 lambda!395378))))

(declare-fun bs!1854360 () Bool)

(assert (= bs!1854360 (and b!6940294 d!2167510)))

(assert (=> bs!1854360 (= (and (= (_2!37124 lt!2475472) (_2!37124 lt!2475485)) (= (regOne!34440 r3!135) r2!6280) (= (regTwo!34440 r3!135) r3!135)) (= lambda!395383 lambda!395354))))

(declare-fun bs!1854361 () Bool)

(assert (= bs!1854361 (and b!6940294 b!6940235)))

(assert (=> bs!1854361 (not (= lambda!395383 lambda!395375))))

(assert (=> bs!1854360 (not (= lambda!395383 lambda!395353))))

(declare-fun bs!1854362 () Bool)

(assert (= bs!1854362 (and b!6940294 b!6940158)))

(assert (=> bs!1854362 (not (= lambda!395383 lambda!395371))))

(declare-fun bs!1854363 () Bool)

(assert (= bs!1854363 (and b!6940294 b!6940289)))

(assert (=> bs!1854363 (not (= lambda!395383 lambda!395382))))

(declare-fun bs!1854364 () Bool)

(assert (= bs!1854364 (and b!6940294 d!2167578)))

(assert (=> bs!1854364 (not (= lambda!395383 lambda!395379))))

(assert (=> bs!1854352 (not (= lambda!395383 lambda!395315))))

(declare-fun bs!1854365 () Bool)

(assert (= bs!1854365 (and b!6940294 d!2167520)))

(assert (=> bs!1854365 (not (= lambda!395383 lambda!395357))))

(declare-fun bs!1854366 () Bool)

(assert (= bs!1854366 (and b!6940294 b!6940095)))

(assert (=> bs!1854366 (= (and (= (_2!37124 lt!2475472) (_2!37124 lt!2475485)) (= (regOne!34440 r3!135) (regOne!34440 lt!2475478)) (= (regTwo!34440 r3!135) (regTwo!34440 lt!2475478))) (= lambda!395383 lambda!395363))))

(declare-fun bs!1854367 () Bool)

(assert (= bs!1854367 (and b!6940294 d!2167548)))

(assert (=> bs!1854367 (not (= lambda!395383 lambda!395368))))

(declare-fun bs!1854368 () Bool)

(assert (= bs!1854368 (and b!6940294 d!2167540)))

(assert (=> bs!1854368 (not (= lambda!395383 lambda!395364))))

(assert (=> bs!1854368 (= (and (= (_2!37124 lt!2475472) lt!2475455) (= (regOne!34440 r3!135) r1!6342) (= (regTwo!34440 r3!135) r2!6280)) (= lambda!395383 lambda!395365))))

(assert (=> b!6940294 true))

(assert (=> b!6940294 true))

(declare-fun d!2167592 () Bool)

(declare-fun c!1287795 () Bool)

(assert (=> d!2167592 (= c!1287795 (is-EmptyExpr!16964 r3!135))))

(declare-fun e!4175183 () Bool)

(assert (=> d!2167592 (= (matchRSpec!4021 r3!135 (_2!37124 lt!2475472)) e!4175183)))

(declare-fun b!6940284 () Bool)

(declare-fun e!4175179 () Bool)

(declare-fun e!4175180 () Bool)

(assert (=> b!6940284 (= e!4175179 e!4175180)))

(declare-fun res!2831070 () Bool)

(assert (=> b!6940284 (= res!2831070 (matchRSpec!4021 (regOne!34441 r3!135) (_2!37124 lt!2475472)))))

(assert (=> b!6940284 (=> res!2831070 e!4175180)))

(declare-fun b!6940285 () Bool)

(declare-fun c!1287794 () Bool)

(assert (=> b!6940285 (= c!1287794 (is-Union!16964 r3!135))))

(declare-fun e!4175184 () Bool)

(assert (=> b!6940285 (= e!4175184 e!4175179)))

(declare-fun b!6940286 () Bool)

(assert (=> b!6940286 (= e!4175180 (matchRSpec!4021 (regTwo!34441 r3!135) (_2!37124 lt!2475472)))))

(declare-fun b!6940287 () Bool)

(assert (=> b!6940287 (= e!4175184 (= (_2!37124 lt!2475472) (Cons!66593 (c!1287706 r3!135) Nil!66593)))))

(declare-fun bm!630514 () Bool)

(declare-fun call!630519 () Bool)

(declare-fun c!1287793 () Bool)

(assert (=> bm!630514 (= call!630519 (Exists!3964 (ite c!1287793 lambda!395382 lambda!395383)))))

(declare-fun b!6940288 () Bool)

(declare-fun res!2831071 () Bool)

(declare-fun e!4175181 () Bool)

(assert (=> b!6940288 (=> res!2831071 e!4175181)))

(declare-fun call!630520 () Bool)

(assert (=> b!6940288 (= res!2831071 call!630520)))

(declare-fun e!4175182 () Bool)

(assert (=> b!6940288 (= e!4175182 e!4175181)))

(assert (=> b!6940289 (= e!4175181 call!630519)))

(declare-fun bm!630515 () Bool)

(assert (=> bm!630515 (= call!630520 (isEmpty!38864 (_2!37124 lt!2475472)))))

(declare-fun b!6940290 () Bool)

(declare-fun e!4175185 () Bool)

(assert (=> b!6940290 (= e!4175183 e!4175185)))

(declare-fun res!2831069 () Bool)

(assert (=> b!6940290 (= res!2831069 (not (is-EmptyLang!16964 r3!135)))))

(assert (=> b!6940290 (=> (not res!2831069) (not e!4175185))))

(declare-fun b!6940291 () Bool)

(assert (=> b!6940291 (= e!4175183 call!630520)))

(declare-fun b!6940292 () Bool)

(assert (=> b!6940292 (= e!4175179 e!4175182)))

(assert (=> b!6940292 (= c!1287793 (is-Star!16964 r3!135))))

(declare-fun b!6940293 () Bool)

(declare-fun c!1287796 () Bool)

(assert (=> b!6940293 (= c!1287796 (is-ElementMatch!16964 r3!135))))

(assert (=> b!6940293 (= e!4175185 e!4175184)))

(assert (=> b!6940294 (= e!4175182 call!630519)))

(assert (= (and d!2167592 c!1287795) b!6940291))

(assert (= (and d!2167592 (not c!1287795)) b!6940290))

(assert (= (and b!6940290 res!2831069) b!6940293))

(assert (= (and b!6940293 c!1287796) b!6940287))

(assert (= (and b!6940293 (not c!1287796)) b!6940285))

(assert (= (and b!6940285 c!1287794) b!6940284))

(assert (= (and b!6940285 (not c!1287794)) b!6940292))

(assert (= (and b!6940284 (not res!2831070)) b!6940286))

(assert (= (and b!6940292 c!1287793) b!6940288))

(assert (= (and b!6940292 (not c!1287793)) b!6940294))

(assert (= (and b!6940288 (not res!2831071)) b!6940289))

(assert (= (or b!6940289 b!6940294) bm!630514))

(assert (= (or b!6940291 b!6940288) bm!630515))

(declare-fun m!7645460 () Bool)

(assert (=> b!6940284 m!7645460))

(declare-fun m!7645462 () Bool)

(assert (=> b!6940286 m!7645462))

(declare-fun m!7645464 () Bool)

(assert (=> bm!630514 m!7645464))

(declare-fun m!7645466 () Bool)

(assert (=> bm!630515 m!7645466))

(assert (=> b!6939787 d!2167592))

(declare-fun d!2167600 () Bool)

(assert (=> d!2167600 (= (matchR!9103 r3!135 (_2!37124 lt!2475472)) (matchRSpec!4021 r3!135 (_2!37124 lt!2475472)))))

(declare-fun lt!2475636 () Unit!160652)

(assert (=> d!2167600 (= lt!2475636 (choose!51703 r3!135 (_2!37124 lt!2475472)))))

(assert (=> d!2167600 (validRegex!8670 r3!135)))

(assert (=> d!2167600 (= (mainMatchTheorem!4021 r3!135 (_2!37124 lt!2475472)) lt!2475636)))

(declare-fun bs!1854370 () Bool)

(assert (= bs!1854370 d!2167600))

(assert (=> bs!1854370 m!7645050))

(assert (=> bs!1854370 m!7645008))

(declare-fun m!7645468 () Bool)

(assert (=> bs!1854370 m!7645468))

(assert (=> bs!1854370 m!7644952))

(assert (=> b!6939787 d!2167600))

(declare-fun b!6940309 () Bool)

(declare-fun e!4175193 () List!66717)

(assert (=> b!6940309 (= e!4175193 (_2!37124 lt!2475472))))

(declare-fun b!6940311 () Bool)

(declare-fun res!2831080 () Bool)

(declare-fun e!4175194 () Bool)

(assert (=> b!6940311 (=> (not res!2831080) (not e!4175194))))

(declare-fun lt!2475637 () List!66717)

(assert (=> b!6940311 (= res!2831080 (= (size!40800 lt!2475637) (+ (size!40800 (_1!37124 lt!2475472)) (size!40800 (_2!37124 lt!2475472)))))))

(declare-fun d!2167602 () Bool)

(assert (=> d!2167602 e!4175194))

(declare-fun res!2831081 () Bool)

(assert (=> d!2167602 (=> (not res!2831081) (not e!4175194))))

(assert (=> d!2167602 (= res!2831081 (= (content!13103 lt!2475637) (set.union (content!13103 (_1!37124 lt!2475472)) (content!13103 (_2!37124 lt!2475472)))))))

(assert (=> d!2167602 (= lt!2475637 e!4175193)))

(declare-fun c!1287800 () Bool)

(assert (=> d!2167602 (= c!1287800 (is-Nil!66593 (_1!37124 lt!2475472)))))

(assert (=> d!2167602 (= (++!15003 (_1!37124 lt!2475472) (_2!37124 lt!2475472)) lt!2475637)))

(declare-fun b!6940312 () Bool)

(assert (=> b!6940312 (= e!4175194 (or (not (= (_2!37124 lt!2475472) Nil!66593)) (= lt!2475637 (_1!37124 lt!2475472))))))

(declare-fun b!6940310 () Bool)

(assert (=> b!6940310 (= e!4175193 (Cons!66593 (h!73041 (_1!37124 lt!2475472)) (++!15003 (t!380460 (_1!37124 lt!2475472)) (_2!37124 lt!2475472))))))

(assert (= (and d!2167602 c!1287800) b!6940309))

(assert (= (and d!2167602 (not c!1287800)) b!6940310))

(assert (= (and d!2167602 res!2831081) b!6940311))

(assert (= (and b!6940311 res!2831080) b!6940312))

(declare-fun m!7645470 () Bool)

(assert (=> b!6940311 m!7645470))

(assert (=> b!6940311 m!7645264))

(assert (=> b!6940311 m!7645312))

(declare-fun m!7645472 () Bool)

(assert (=> d!2167602 m!7645472))

(assert (=> d!2167602 m!7645270))

(assert (=> d!2167602 m!7645318))

(declare-fun m!7645474 () Bool)

(assert (=> b!6940310 m!7645474))

(assert (=> b!6939787 d!2167602))

(declare-fun bs!1854371 () Bool)

(declare-fun b!6940318 () Bool)

(assert (= bs!1854371 (and b!6940318 b!6939796)))

(declare-fun lambda!395384 () Int)

(assert (=> bs!1854371 (not (= lambda!395384 lambda!395316))))

(declare-fun bs!1854372 () Bool)

(assert (= bs!1854372 (and b!6940318 b!6939805)))

(assert (=> bs!1854372 (not (= lambda!395384 lambda!395317))))

(declare-fun bs!1854373 () Bool)

(assert (= bs!1854373 (and b!6940318 d!2167574)))

(assert (=> bs!1854373 (not (= lambda!395384 lambda!395377))))

(declare-fun bs!1854374 () Bool)

(assert (= bs!1854374 (and b!6940318 b!6939802)))

(assert (=> bs!1854374 (not (= lambda!395384 lambda!395321))))

(declare-fun bs!1854375 () Bool)

(assert (= bs!1854375 (and b!6940318 b!6940240)))

(assert (=> bs!1854375 (not (= lambda!395384 lambda!395376))))

(declare-fun bs!1854376 () Bool)

(assert (= bs!1854376 (and b!6940318 b!6940090)))

(assert (=> bs!1854376 (= (and (= (_1!37124 lt!2475472) (_2!37124 lt!2475485)) (= (reg!17293 r2!6280) (reg!17293 lt!2475478)) (= r2!6280 lt!2475478)) (= lambda!395384 lambda!395362))))

(assert (=> bs!1854372 (not (= lambda!395384 lambda!395318))))

(declare-fun bs!1854377 () Bool)

(assert (= bs!1854377 (and b!6940318 b!6939794)))

(assert (=> bs!1854377 (not (= lambda!395384 lambda!395319))))

(assert (=> bs!1854377 (not (= lambda!395384 lambda!395320))))

(declare-fun bs!1854378 () Bool)

(assert (= bs!1854378 (and b!6940318 b!6940163)))

(assert (=> bs!1854378 (not (= lambda!395384 lambda!395372))))

(assert (=> bs!1854373 (not (= lambda!395384 lambda!395378))))

(declare-fun bs!1854379 () Bool)

(assert (= bs!1854379 (and b!6940318 b!6940235)))

(assert (=> bs!1854379 (= (and (= (_1!37124 lt!2475472) (_1!37124 lt!2475485)) (= (reg!17293 r2!6280) (reg!17293 r1!6342)) (= r2!6280 r1!6342)) (= lambda!395384 lambda!395375))))

(declare-fun bs!1854380 () Bool)

(assert (= bs!1854380 (and b!6940318 d!2167510)))

(assert (=> bs!1854380 (not (= lambda!395384 lambda!395353))))

(declare-fun bs!1854381 () Bool)

(assert (= bs!1854381 (and b!6940318 b!6940158)))

(assert (=> bs!1854381 (= (and (= (_1!37124 lt!2475472) lt!2475455) (= (reg!17293 r2!6280) (reg!17293 lt!2475482)) (= r2!6280 lt!2475482)) (= lambda!395384 lambda!395371))))

(declare-fun bs!1854382 () Bool)

(assert (= bs!1854382 (and b!6940318 b!6940289)))

(assert (=> bs!1854382 (= (and (= (_1!37124 lt!2475472) (_2!37124 lt!2475472)) (= (reg!17293 r2!6280) (reg!17293 r3!135)) (= r2!6280 r3!135)) (= lambda!395384 lambda!395382))))

(declare-fun bs!1854383 () Bool)

(assert (= bs!1854383 (and b!6940318 d!2167578)))

(assert (=> bs!1854383 (not (= lambda!395384 lambda!395379))))

(assert (=> bs!1854371 (not (= lambda!395384 lambda!395315))))

(declare-fun bs!1854384 () Bool)

(assert (= bs!1854384 (and b!6940318 d!2167520)))

(assert (=> bs!1854384 (not (= lambda!395384 lambda!395357))))

(declare-fun bs!1854385 () Bool)

(assert (= bs!1854385 (and b!6940318 b!6940095)))

(assert (=> bs!1854385 (not (= lambda!395384 lambda!395363))))

(declare-fun bs!1854386 () Bool)

(assert (= bs!1854386 (and b!6940318 d!2167548)))

(assert (=> bs!1854386 (not (= lambda!395384 lambda!395368))))

(assert (=> bs!1854380 (not (= lambda!395384 lambda!395354))))

(declare-fun bs!1854387 () Bool)

(assert (= bs!1854387 (and b!6940318 b!6940294)))

(assert (=> bs!1854387 (not (= lambda!395384 lambda!395383))))

(declare-fun bs!1854388 () Bool)

(assert (= bs!1854388 (and b!6940318 d!2167540)))

(assert (=> bs!1854388 (not (= lambda!395384 lambda!395364))))

(assert (=> bs!1854388 (not (= lambda!395384 lambda!395365))))

(assert (=> b!6940318 true))

(assert (=> b!6940318 true))

(declare-fun bs!1854389 () Bool)

(declare-fun b!6940323 () Bool)

(assert (= bs!1854389 (and b!6940323 b!6939796)))

(declare-fun lambda!395385 () Int)

(assert (=> bs!1854389 (= (and (= (_1!37124 lt!2475472) s!14361) (= (regOne!34440 r2!6280) r1!6342) (= (regTwo!34440 r2!6280) lt!2475478)) (= lambda!395385 lambda!395316))))

(declare-fun bs!1854390 () Bool)

(assert (= bs!1854390 (and b!6940323 b!6939805)))

(assert (=> bs!1854390 (not (= lambda!395385 lambda!395317))))

(declare-fun bs!1854391 () Bool)

(assert (= bs!1854391 (and b!6940323 d!2167574)))

(assert (=> bs!1854391 (not (= lambda!395385 lambda!395377))))

(declare-fun bs!1854392 () Bool)

(assert (= bs!1854392 (and b!6940323 b!6939802)))

(assert (=> bs!1854392 (not (= lambda!395385 lambda!395321))))

(declare-fun bs!1854393 () Bool)

(assert (= bs!1854393 (and b!6940323 b!6940240)))

(assert (=> bs!1854393 (= (and (= (_1!37124 lt!2475472) (_1!37124 lt!2475485)) (= (regOne!34440 r2!6280) (regOne!34440 r1!6342)) (= (regTwo!34440 r2!6280) (regTwo!34440 r1!6342))) (= lambda!395385 lambda!395376))))

(declare-fun bs!1854394 () Bool)

(assert (= bs!1854394 (and b!6940323 b!6940090)))

(assert (=> bs!1854394 (not (= lambda!395385 lambda!395362))))

(assert (=> bs!1854390 (= (and (= (_1!37124 lt!2475472) (_2!37124 lt!2475485)) (= (regOne!34440 r2!6280) r2!6280) (= (regTwo!34440 r2!6280) r3!135)) (= lambda!395385 lambda!395318))))

(declare-fun bs!1854395 () Bool)

(assert (= bs!1854395 (and b!6940323 b!6939794)))

(assert (=> bs!1854395 (not (= lambda!395385 lambda!395319))))

(assert (=> bs!1854395 (= (and (= (_1!37124 lt!2475472) lt!2475455) (= (regOne!34440 r2!6280) r1!6342) (= (regTwo!34440 r2!6280) r2!6280)) (= lambda!395385 lambda!395320))))

(declare-fun bs!1854396 () Bool)

(assert (= bs!1854396 (and b!6940323 b!6940163)))

(assert (=> bs!1854396 (= (and (= (_1!37124 lt!2475472) lt!2475455) (= (regOne!34440 r2!6280) (regOne!34440 lt!2475482)) (= (regTwo!34440 r2!6280) (regTwo!34440 lt!2475482))) (= lambda!395385 lambda!395372))))

(assert (=> bs!1854391 (= (and (= (_1!37124 lt!2475472) s!14361) (= (regOne!34440 r2!6280) r1!6342) (= (regTwo!34440 r2!6280) lt!2475478)) (= lambda!395385 lambda!395378))))

(declare-fun bs!1854397 () Bool)

(assert (= bs!1854397 (and b!6940323 b!6940318)))

(assert (=> bs!1854397 (not (= lambda!395385 lambda!395384))))

(declare-fun bs!1854398 () Bool)

(assert (= bs!1854398 (and b!6940323 b!6940235)))

(assert (=> bs!1854398 (not (= lambda!395385 lambda!395375))))

(declare-fun bs!1854399 () Bool)

(assert (= bs!1854399 (and b!6940323 d!2167510)))

(assert (=> bs!1854399 (not (= lambda!395385 lambda!395353))))

(declare-fun bs!1854400 () Bool)

(assert (= bs!1854400 (and b!6940323 b!6940158)))

(assert (=> bs!1854400 (not (= lambda!395385 lambda!395371))))

(declare-fun bs!1854401 () Bool)

(assert (= bs!1854401 (and b!6940323 b!6940289)))

(assert (=> bs!1854401 (not (= lambda!395385 lambda!395382))))

(declare-fun bs!1854402 () Bool)

(assert (= bs!1854402 (and b!6940323 d!2167578)))

(assert (=> bs!1854402 (not (= lambda!395385 lambda!395379))))

(assert (=> bs!1854389 (not (= lambda!395385 lambda!395315))))

(declare-fun bs!1854403 () Bool)

(assert (= bs!1854403 (and b!6940323 d!2167520)))

(assert (=> bs!1854403 (not (= lambda!395385 lambda!395357))))

(declare-fun bs!1854404 () Bool)

(assert (= bs!1854404 (and b!6940323 b!6940095)))

(assert (=> bs!1854404 (= (and (= (_1!37124 lt!2475472) (_2!37124 lt!2475485)) (= (regOne!34440 r2!6280) (regOne!34440 lt!2475478)) (= (regTwo!34440 r2!6280) (regTwo!34440 lt!2475478))) (= lambda!395385 lambda!395363))))

(declare-fun bs!1854405 () Bool)

(assert (= bs!1854405 (and b!6940323 d!2167548)))

(assert (=> bs!1854405 (not (= lambda!395385 lambda!395368))))

(assert (=> bs!1854399 (= (and (= (_1!37124 lt!2475472) (_2!37124 lt!2475485)) (= (regOne!34440 r2!6280) r2!6280) (= (regTwo!34440 r2!6280) r3!135)) (= lambda!395385 lambda!395354))))

(declare-fun bs!1854406 () Bool)

(assert (= bs!1854406 (and b!6940323 b!6940294)))

(assert (=> bs!1854406 (= (and (= (_1!37124 lt!2475472) (_2!37124 lt!2475472)) (= (regOne!34440 r2!6280) (regOne!34440 r3!135)) (= (regTwo!34440 r2!6280) (regTwo!34440 r3!135))) (= lambda!395385 lambda!395383))))

(declare-fun bs!1854407 () Bool)

(assert (= bs!1854407 (and b!6940323 d!2167540)))

(assert (=> bs!1854407 (not (= lambda!395385 lambda!395364))))

(assert (=> bs!1854407 (= (and (= (_1!37124 lt!2475472) lt!2475455) (= (regOne!34440 r2!6280) r1!6342) (= (regTwo!34440 r2!6280) r2!6280)) (= lambda!395385 lambda!395365))))

(assert (=> b!6940323 true))

(assert (=> b!6940323 true))

(declare-fun d!2167604 () Bool)

(declare-fun c!1287803 () Bool)

(assert (=> d!2167604 (= c!1287803 (is-EmptyExpr!16964 r2!6280))))

(declare-fun e!4175199 () Bool)

(assert (=> d!2167604 (= (matchRSpec!4021 r2!6280 (_1!37124 lt!2475472)) e!4175199)))

(declare-fun b!6940313 () Bool)

(declare-fun e!4175195 () Bool)

(declare-fun e!4175196 () Bool)

(assert (=> b!6940313 (= e!4175195 e!4175196)))

(declare-fun res!2831083 () Bool)

(assert (=> b!6940313 (= res!2831083 (matchRSpec!4021 (regOne!34441 r2!6280) (_1!37124 lt!2475472)))))

(assert (=> b!6940313 (=> res!2831083 e!4175196)))

(declare-fun b!6940314 () Bool)

(declare-fun c!1287802 () Bool)

(assert (=> b!6940314 (= c!1287802 (is-Union!16964 r2!6280))))

(declare-fun e!4175200 () Bool)

(assert (=> b!6940314 (= e!4175200 e!4175195)))

(declare-fun b!6940315 () Bool)

(assert (=> b!6940315 (= e!4175196 (matchRSpec!4021 (regTwo!34441 r2!6280) (_1!37124 lt!2475472)))))

(declare-fun b!6940316 () Bool)

(assert (=> b!6940316 (= e!4175200 (= (_1!37124 lt!2475472) (Cons!66593 (c!1287706 r2!6280) Nil!66593)))))

(declare-fun bm!630517 () Bool)

(declare-fun c!1287801 () Bool)

(declare-fun call!630522 () Bool)

(assert (=> bm!630517 (= call!630522 (Exists!3964 (ite c!1287801 lambda!395384 lambda!395385)))))

(declare-fun b!6940317 () Bool)

(declare-fun res!2831084 () Bool)

(declare-fun e!4175197 () Bool)

(assert (=> b!6940317 (=> res!2831084 e!4175197)))

(declare-fun call!630523 () Bool)

(assert (=> b!6940317 (= res!2831084 call!630523)))

(declare-fun e!4175198 () Bool)

(assert (=> b!6940317 (= e!4175198 e!4175197)))

(assert (=> b!6940318 (= e!4175197 call!630522)))

(declare-fun bm!630518 () Bool)

(assert (=> bm!630518 (= call!630523 (isEmpty!38864 (_1!37124 lt!2475472)))))

(declare-fun b!6940319 () Bool)

(declare-fun e!4175201 () Bool)

(assert (=> b!6940319 (= e!4175199 e!4175201)))

(declare-fun res!2831082 () Bool)

(assert (=> b!6940319 (= res!2831082 (not (is-EmptyLang!16964 r2!6280)))))

(assert (=> b!6940319 (=> (not res!2831082) (not e!4175201))))

(declare-fun b!6940320 () Bool)

(assert (=> b!6940320 (= e!4175199 call!630523)))

(declare-fun b!6940321 () Bool)

(assert (=> b!6940321 (= e!4175195 e!4175198)))

(assert (=> b!6940321 (= c!1287801 (is-Star!16964 r2!6280))))

(declare-fun b!6940322 () Bool)

(declare-fun c!1287804 () Bool)

(assert (=> b!6940322 (= c!1287804 (is-ElementMatch!16964 r2!6280))))

(assert (=> b!6940322 (= e!4175201 e!4175200)))

(assert (=> b!6940323 (= e!4175198 call!630522)))

(assert (= (and d!2167604 c!1287803) b!6940320))

(assert (= (and d!2167604 (not c!1287803)) b!6940319))

(assert (= (and b!6940319 res!2831082) b!6940322))

(assert (= (and b!6940322 c!1287804) b!6940316))

(assert (= (and b!6940322 (not c!1287804)) b!6940314))

(assert (= (and b!6940314 c!1287802) b!6940313))

(assert (= (and b!6940314 (not c!1287802)) b!6940321))

(assert (= (and b!6940313 (not res!2831083)) b!6940315))

(assert (= (and b!6940321 c!1287801) b!6940317))

(assert (= (and b!6940321 (not c!1287801)) b!6940323))

(assert (= (and b!6940317 (not res!2831084)) b!6940318))

(assert (= (or b!6940318 b!6940323) bm!630517))

(assert (= (or b!6940320 b!6940317) bm!630518))

(declare-fun m!7645476 () Bool)

(assert (=> b!6940313 m!7645476))

(declare-fun m!7645478 () Bool)

(assert (=> b!6940315 m!7645478))

(declare-fun m!7645480 () Bool)

(assert (=> bm!630517 m!7645480))

(assert (=> bm!630518 m!7645186))

(assert (=> b!6939787 d!2167604))

(declare-fun bs!1854408 () Bool)

(declare-fun b!6940329 () Bool)

(assert (= bs!1854408 (and b!6940329 b!6939796)))

(declare-fun lambda!395386 () Int)

(assert (=> bs!1854408 (not (= lambda!395386 lambda!395316))))

(declare-fun bs!1854409 () Bool)

(assert (= bs!1854409 (and b!6940329 b!6939805)))

(assert (=> bs!1854409 (not (= lambda!395386 lambda!395317))))

(declare-fun bs!1854410 () Bool)

(assert (= bs!1854410 (and b!6940329 d!2167574)))

(assert (=> bs!1854410 (not (= lambda!395386 lambda!395377))))

(declare-fun bs!1854411 () Bool)

(assert (= bs!1854411 (and b!6940329 b!6939802)))

(assert (=> bs!1854411 (not (= lambda!395386 lambda!395321))))

(declare-fun bs!1854412 () Bool)

(assert (= bs!1854412 (and b!6940329 b!6940240)))

(assert (=> bs!1854412 (not (= lambda!395386 lambda!395376))))

(declare-fun bs!1854413 () Bool)

(assert (= bs!1854413 (and b!6940329 b!6940090)))

(assert (=> bs!1854413 (= (and (= s!14361 (_2!37124 lt!2475485)) (= (reg!17293 lt!2475458) (reg!17293 lt!2475478)) (= lt!2475458 lt!2475478)) (= lambda!395386 lambda!395362))))

(assert (=> bs!1854409 (not (= lambda!395386 lambda!395318))))

(declare-fun bs!1854414 () Bool)

(assert (= bs!1854414 (and b!6940329 b!6939794)))

(assert (=> bs!1854414 (not (= lambda!395386 lambda!395319))))

(assert (=> bs!1854414 (not (= lambda!395386 lambda!395320))))

(declare-fun bs!1854415 () Bool)

(assert (= bs!1854415 (and b!6940329 b!6940163)))

(assert (=> bs!1854415 (not (= lambda!395386 lambda!395372))))

(assert (=> bs!1854410 (not (= lambda!395386 lambda!395378))))

(declare-fun bs!1854416 () Bool)

(assert (= bs!1854416 (and b!6940329 b!6940318)))

(assert (=> bs!1854416 (= (and (= s!14361 (_1!37124 lt!2475472)) (= (reg!17293 lt!2475458) (reg!17293 r2!6280)) (= lt!2475458 r2!6280)) (= lambda!395386 lambda!395384))))

(declare-fun bs!1854417 () Bool)

(assert (= bs!1854417 (and b!6940329 b!6940235)))

(assert (=> bs!1854417 (= (and (= s!14361 (_1!37124 lt!2475485)) (= (reg!17293 lt!2475458) (reg!17293 r1!6342)) (= lt!2475458 r1!6342)) (= lambda!395386 lambda!395375))))

(declare-fun bs!1854418 () Bool)

(assert (= bs!1854418 (and b!6940329 d!2167510)))

(assert (=> bs!1854418 (not (= lambda!395386 lambda!395353))))

(declare-fun bs!1854419 () Bool)

(assert (= bs!1854419 (and b!6940329 b!6940158)))

(assert (=> bs!1854419 (= (and (= s!14361 lt!2475455) (= (reg!17293 lt!2475458) (reg!17293 lt!2475482)) (= lt!2475458 lt!2475482)) (= lambda!395386 lambda!395371))))

(declare-fun bs!1854420 () Bool)

(assert (= bs!1854420 (and b!6940329 b!6940289)))

(assert (=> bs!1854420 (= (and (= s!14361 (_2!37124 lt!2475472)) (= (reg!17293 lt!2475458) (reg!17293 r3!135)) (= lt!2475458 r3!135)) (= lambda!395386 lambda!395382))))

(declare-fun bs!1854421 () Bool)

(assert (= bs!1854421 (and b!6940329 d!2167578)))

(assert (=> bs!1854421 (not (= lambda!395386 lambda!395379))))

(assert (=> bs!1854408 (not (= lambda!395386 lambda!395315))))

(declare-fun bs!1854422 () Bool)

(assert (= bs!1854422 (and b!6940329 b!6940323)))

(assert (=> bs!1854422 (not (= lambda!395386 lambda!395385))))

(declare-fun bs!1854423 () Bool)

(assert (= bs!1854423 (and b!6940329 d!2167520)))

(assert (=> bs!1854423 (not (= lambda!395386 lambda!395357))))

(declare-fun bs!1854424 () Bool)

(assert (= bs!1854424 (and b!6940329 b!6940095)))

(assert (=> bs!1854424 (not (= lambda!395386 lambda!395363))))

(declare-fun bs!1854425 () Bool)

(assert (= bs!1854425 (and b!6940329 d!2167548)))

(assert (=> bs!1854425 (not (= lambda!395386 lambda!395368))))

(assert (=> bs!1854418 (not (= lambda!395386 lambda!395354))))

(declare-fun bs!1854426 () Bool)

(assert (= bs!1854426 (and b!6940329 b!6940294)))

(assert (=> bs!1854426 (not (= lambda!395386 lambda!395383))))

(declare-fun bs!1854427 () Bool)

(assert (= bs!1854427 (and b!6940329 d!2167540)))

(assert (=> bs!1854427 (not (= lambda!395386 lambda!395364))))

(assert (=> bs!1854427 (not (= lambda!395386 lambda!395365))))

(assert (=> b!6940329 true))

(assert (=> b!6940329 true))

(declare-fun bs!1854428 () Bool)

(declare-fun b!6940334 () Bool)

(assert (= bs!1854428 (and b!6940334 b!6939796)))

(declare-fun lambda!395387 () Int)

(assert (=> bs!1854428 (= (and (= (regOne!34440 lt!2475458) r1!6342) (= (regTwo!34440 lt!2475458) lt!2475478)) (= lambda!395387 lambda!395316))))

(declare-fun bs!1854429 () Bool)

(assert (= bs!1854429 (and b!6940334 b!6939805)))

(assert (=> bs!1854429 (not (= lambda!395387 lambda!395317))))

(declare-fun bs!1854430 () Bool)

(assert (= bs!1854430 (and b!6940334 d!2167574)))

(assert (=> bs!1854430 (not (= lambda!395387 lambda!395377))))

(declare-fun bs!1854431 () Bool)

(assert (= bs!1854431 (and b!6940334 b!6939802)))

(assert (=> bs!1854431 (not (= lambda!395387 lambda!395321))))

(declare-fun bs!1854432 () Bool)

(assert (= bs!1854432 (and b!6940334 b!6940240)))

(assert (=> bs!1854432 (= (and (= s!14361 (_1!37124 lt!2475485)) (= (regOne!34440 lt!2475458) (regOne!34440 r1!6342)) (= (regTwo!34440 lt!2475458) (regTwo!34440 r1!6342))) (= lambda!395387 lambda!395376))))

(declare-fun bs!1854433 () Bool)

(assert (= bs!1854433 (and b!6940334 b!6940090)))

(assert (=> bs!1854433 (not (= lambda!395387 lambda!395362))))

(assert (=> bs!1854429 (= (and (= s!14361 (_2!37124 lt!2475485)) (= (regOne!34440 lt!2475458) r2!6280) (= (regTwo!34440 lt!2475458) r3!135)) (= lambda!395387 lambda!395318))))

(declare-fun bs!1854434 () Bool)

(assert (= bs!1854434 (and b!6940334 b!6939794)))

(assert (=> bs!1854434 (not (= lambda!395387 lambda!395319))))

(assert (=> bs!1854434 (= (and (= s!14361 lt!2475455) (= (regOne!34440 lt!2475458) r1!6342) (= (regTwo!34440 lt!2475458) r2!6280)) (= lambda!395387 lambda!395320))))

(assert (=> bs!1854430 (= (and (= (regOne!34440 lt!2475458) r1!6342) (= (regTwo!34440 lt!2475458) lt!2475478)) (= lambda!395387 lambda!395378))))

(declare-fun bs!1854435 () Bool)

(assert (= bs!1854435 (and b!6940334 b!6940318)))

(assert (=> bs!1854435 (not (= lambda!395387 lambda!395384))))

(declare-fun bs!1854436 () Bool)

(assert (= bs!1854436 (and b!6940334 b!6940235)))

(assert (=> bs!1854436 (not (= lambda!395387 lambda!395375))))

(declare-fun bs!1854437 () Bool)

(assert (= bs!1854437 (and b!6940334 d!2167510)))

(assert (=> bs!1854437 (not (= lambda!395387 lambda!395353))))

(declare-fun bs!1854438 () Bool)

(assert (= bs!1854438 (and b!6940334 b!6940158)))

(assert (=> bs!1854438 (not (= lambda!395387 lambda!395371))))

(declare-fun bs!1854439 () Bool)

(assert (= bs!1854439 (and b!6940334 b!6940329)))

(assert (=> bs!1854439 (not (= lambda!395387 lambda!395386))))

(declare-fun bs!1854440 () Bool)

(assert (= bs!1854440 (and b!6940334 b!6940163)))

(assert (=> bs!1854440 (= (and (= s!14361 lt!2475455) (= (regOne!34440 lt!2475458) (regOne!34440 lt!2475482)) (= (regTwo!34440 lt!2475458) (regTwo!34440 lt!2475482))) (= lambda!395387 lambda!395372))))

(declare-fun bs!1854441 () Bool)

(assert (= bs!1854441 (and b!6940334 b!6940289)))

(assert (=> bs!1854441 (not (= lambda!395387 lambda!395382))))

(declare-fun bs!1854442 () Bool)

(assert (= bs!1854442 (and b!6940334 d!2167578)))

(assert (=> bs!1854442 (not (= lambda!395387 lambda!395379))))

(assert (=> bs!1854428 (not (= lambda!395387 lambda!395315))))

(declare-fun bs!1854443 () Bool)

(assert (= bs!1854443 (and b!6940334 b!6940323)))

(assert (=> bs!1854443 (= (and (= s!14361 (_1!37124 lt!2475472)) (= (regOne!34440 lt!2475458) (regOne!34440 r2!6280)) (= (regTwo!34440 lt!2475458) (regTwo!34440 r2!6280))) (= lambda!395387 lambda!395385))))

(declare-fun bs!1854444 () Bool)

(assert (= bs!1854444 (and b!6940334 d!2167520)))

(assert (=> bs!1854444 (not (= lambda!395387 lambda!395357))))

(declare-fun bs!1854445 () Bool)

(assert (= bs!1854445 (and b!6940334 b!6940095)))

(assert (=> bs!1854445 (= (and (= s!14361 (_2!37124 lt!2475485)) (= (regOne!34440 lt!2475458) (regOne!34440 lt!2475478)) (= (regTwo!34440 lt!2475458) (regTwo!34440 lt!2475478))) (= lambda!395387 lambda!395363))))

(declare-fun bs!1854446 () Bool)

(assert (= bs!1854446 (and b!6940334 d!2167548)))

(assert (=> bs!1854446 (not (= lambda!395387 lambda!395368))))

(assert (=> bs!1854437 (= (and (= s!14361 (_2!37124 lt!2475485)) (= (regOne!34440 lt!2475458) r2!6280) (= (regTwo!34440 lt!2475458) r3!135)) (= lambda!395387 lambda!395354))))

(declare-fun bs!1854447 () Bool)

(assert (= bs!1854447 (and b!6940334 b!6940294)))

(assert (=> bs!1854447 (= (and (= s!14361 (_2!37124 lt!2475472)) (= (regOne!34440 lt!2475458) (regOne!34440 r3!135)) (= (regTwo!34440 lt!2475458) (regTwo!34440 r3!135))) (= lambda!395387 lambda!395383))))

(declare-fun bs!1854448 () Bool)

(assert (= bs!1854448 (and b!6940334 d!2167540)))

(assert (=> bs!1854448 (not (= lambda!395387 lambda!395364))))

(assert (=> bs!1854448 (= (and (= s!14361 lt!2475455) (= (regOne!34440 lt!2475458) r1!6342) (= (regTwo!34440 lt!2475458) r2!6280)) (= lambda!395387 lambda!395365))))

(assert (=> b!6940334 true))

(assert (=> b!6940334 true))

(declare-fun d!2167606 () Bool)

(declare-fun c!1287807 () Bool)

(assert (=> d!2167606 (= c!1287807 (is-EmptyExpr!16964 lt!2475458))))

(declare-fun e!4175206 () Bool)

(assert (=> d!2167606 (= (matchRSpec!4021 lt!2475458 s!14361) e!4175206)))

(declare-fun b!6940324 () Bool)

(declare-fun e!4175202 () Bool)

(declare-fun e!4175203 () Bool)

(assert (=> b!6940324 (= e!4175202 e!4175203)))

(declare-fun res!2831086 () Bool)

(assert (=> b!6940324 (= res!2831086 (matchRSpec!4021 (regOne!34441 lt!2475458) s!14361))))

(assert (=> b!6940324 (=> res!2831086 e!4175203)))

(declare-fun b!6940325 () Bool)

(declare-fun c!1287806 () Bool)

(assert (=> b!6940325 (= c!1287806 (is-Union!16964 lt!2475458))))

(declare-fun e!4175207 () Bool)

(assert (=> b!6940325 (= e!4175207 e!4175202)))

(declare-fun b!6940326 () Bool)

(assert (=> b!6940326 (= e!4175203 (matchRSpec!4021 (regTwo!34441 lt!2475458) s!14361))))

(declare-fun b!6940327 () Bool)

(assert (=> b!6940327 (= e!4175207 (= s!14361 (Cons!66593 (c!1287706 lt!2475458) Nil!66593)))))

(declare-fun c!1287805 () Bool)

(declare-fun call!630524 () Bool)

(declare-fun bm!630519 () Bool)

(assert (=> bm!630519 (= call!630524 (Exists!3964 (ite c!1287805 lambda!395386 lambda!395387)))))

(declare-fun b!6940328 () Bool)

(declare-fun res!2831087 () Bool)

(declare-fun e!4175204 () Bool)

(assert (=> b!6940328 (=> res!2831087 e!4175204)))

(declare-fun call!630525 () Bool)

(assert (=> b!6940328 (= res!2831087 call!630525)))

(declare-fun e!4175205 () Bool)

(assert (=> b!6940328 (= e!4175205 e!4175204)))

(assert (=> b!6940329 (= e!4175204 call!630524)))

(declare-fun bm!630520 () Bool)

(assert (=> bm!630520 (= call!630525 (isEmpty!38864 s!14361))))

(declare-fun b!6940330 () Bool)

(declare-fun e!4175208 () Bool)

(assert (=> b!6940330 (= e!4175206 e!4175208)))

(declare-fun res!2831085 () Bool)

(assert (=> b!6940330 (= res!2831085 (not (is-EmptyLang!16964 lt!2475458)))))

(assert (=> b!6940330 (=> (not res!2831085) (not e!4175208))))

(declare-fun b!6940331 () Bool)

(assert (=> b!6940331 (= e!4175206 call!630525)))

(declare-fun b!6940332 () Bool)

(assert (=> b!6940332 (= e!4175202 e!4175205)))

(assert (=> b!6940332 (= c!1287805 (is-Star!16964 lt!2475458))))

(declare-fun b!6940333 () Bool)

(declare-fun c!1287808 () Bool)

(assert (=> b!6940333 (= c!1287808 (is-ElementMatch!16964 lt!2475458))))

(assert (=> b!6940333 (= e!4175208 e!4175207)))

(assert (=> b!6940334 (= e!4175205 call!630524)))

(assert (= (and d!2167606 c!1287807) b!6940331))

(assert (= (and d!2167606 (not c!1287807)) b!6940330))

(assert (= (and b!6940330 res!2831085) b!6940333))

(assert (= (and b!6940333 c!1287808) b!6940327))

(assert (= (and b!6940333 (not c!1287808)) b!6940325))

(assert (= (and b!6940325 c!1287806) b!6940324))

(assert (= (and b!6940325 (not c!1287806)) b!6940332))

(assert (= (and b!6940324 (not res!2831086)) b!6940326))

(assert (= (and b!6940332 c!1287805) b!6940328))

(assert (= (and b!6940332 (not c!1287805)) b!6940334))

(assert (= (and b!6940328 (not res!2831087)) b!6940329))

(assert (= (or b!6940329 b!6940334) bm!630519))

(assert (= (or b!6940331 b!6940328) bm!630520))

(declare-fun m!7645482 () Bool)

(assert (=> b!6940324 m!7645482))

(declare-fun m!7645484 () Bool)

(assert (=> b!6940326 m!7645484))

(declare-fun m!7645486 () Bool)

(assert (=> bm!630519 m!7645486))

(declare-fun m!7645488 () Bool)

(assert (=> bm!630520 m!7645488))

(assert (=> b!6939788 d!2167606))

(declare-fun d!2167608 () Bool)

(assert (=> d!2167608 (= (matchR!9103 lt!2475461 s!14361) (matchRSpec!4021 lt!2475461 s!14361))))

(declare-fun lt!2475644 () Unit!160652)

(assert (=> d!2167608 (= lt!2475644 (choose!51703 lt!2475461 s!14361))))

(assert (=> d!2167608 (validRegex!8670 lt!2475461)))

(assert (=> d!2167608 (= (mainMatchTheorem!4021 lt!2475461 s!14361) lt!2475644)))

(declare-fun bs!1854449 () Bool)

(assert (= bs!1854449 d!2167608))

(assert (=> bs!1854449 m!7645002))

(assert (=> bs!1854449 m!7645004))

(declare-fun m!7645490 () Bool)

(assert (=> bs!1854449 m!7645490))

(declare-fun m!7645492 () Bool)

(assert (=> bs!1854449 m!7645492))

(assert (=> b!6939788 d!2167608))

(declare-fun d!2167610 () Bool)

(assert (=> d!2167610 (= (matchR!9103 lt!2475458 s!14361) (matchRSpec!4021 lt!2475458 s!14361))))

(declare-fun lt!2475645 () Unit!160652)

(assert (=> d!2167610 (= lt!2475645 (choose!51703 lt!2475458 s!14361))))

(assert (=> d!2167610 (validRegex!8670 lt!2475458)))

(assert (=> d!2167610 (= (mainMatchTheorem!4021 lt!2475458 s!14361) lt!2475645)))

(declare-fun bs!1854450 () Bool)

(assert (= bs!1854450 d!2167610))

(assert (=> bs!1854450 m!7644996))

(assert (=> bs!1854450 m!7645000))

(declare-fun m!7645494 () Bool)

(assert (=> bs!1854450 m!7645494))

(declare-fun m!7645496 () Bool)

(assert (=> bs!1854450 m!7645496))

(assert (=> b!6939788 d!2167610))

(declare-fun b!6940345 () Bool)

(declare-fun res!2831090 () Bool)

(declare-fun e!4175218 () Bool)

(assert (=> b!6940345 (=> res!2831090 e!4175218)))

(assert (=> b!6940345 (= res!2831090 (not (isEmpty!38864 (tail!12961 s!14361))))))

(declare-fun b!6940346 () Bool)

(declare-fun res!2831096 () Bool)

(declare-fun e!4175221 () Bool)

(assert (=> b!6940346 (=> res!2831096 e!4175221)))

(declare-fun e!4175215 () Bool)

(assert (=> b!6940346 (= res!2831096 e!4175215)))

(declare-fun res!2831094 () Bool)

(assert (=> b!6940346 (=> (not res!2831094) (not e!4175215))))

(declare-fun lt!2475646 () Bool)

(assert (=> b!6940346 (= res!2831094 lt!2475646)))

(declare-fun b!6940347 () Bool)

(declare-fun e!4175217 () Bool)

(assert (=> b!6940347 (= e!4175217 (not lt!2475646))))

(declare-fun b!6940348 () Bool)

(declare-fun e!4175216 () Bool)

(assert (=> b!6940348 (= e!4175216 (nullable!6781 lt!2475461))))

(declare-fun d!2167612 () Bool)

(declare-fun e!4175220 () Bool)

(assert (=> d!2167612 e!4175220))

(declare-fun c!1287815 () Bool)

(assert (=> d!2167612 (= c!1287815 (is-EmptyExpr!16964 lt!2475461))))

(assert (=> d!2167612 (= lt!2475646 e!4175216)))

(declare-fun c!1287813 () Bool)

(assert (=> d!2167612 (= c!1287813 (isEmpty!38864 s!14361))))

(assert (=> d!2167612 (validRegex!8670 lt!2475461)))

(assert (=> d!2167612 (= (matchR!9103 lt!2475461 s!14361) lt!2475646)))

(declare-fun b!6940349 () Bool)

(declare-fun res!2831097 () Bool)

(assert (=> b!6940349 (=> (not res!2831097) (not e!4175215))))

(assert (=> b!6940349 (= res!2831097 (isEmpty!38864 (tail!12961 s!14361)))))

(declare-fun b!6940350 () Bool)

(declare-fun res!2831093 () Bool)

(assert (=> b!6940350 (=> (not res!2831093) (not e!4175215))))

(declare-fun call!630526 () Bool)

(assert (=> b!6940350 (= res!2831093 (not call!630526))))

(declare-fun b!6940351 () Bool)

(assert (=> b!6940351 (= e!4175220 (= lt!2475646 call!630526))))

(declare-fun b!6940352 () Bool)

(declare-fun e!4175219 () Bool)

(assert (=> b!6940352 (= e!4175221 e!4175219)))

(declare-fun res!2831092 () Bool)

(assert (=> b!6940352 (=> (not res!2831092) (not e!4175219))))

(assert (=> b!6940352 (= res!2831092 (not lt!2475646))))

(declare-fun bm!630521 () Bool)

(assert (=> bm!630521 (= call!630526 (isEmpty!38864 s!14361))))

(declare-fun b!6940353 () Bool)

(assert (=> b!6940353 (= e!4175220 e!4175217)))

(declare-fun c!1287814 () Bool)

(assert (=> b!6940353 (= c!1287814 (is-EmptyLang!16964 lt!2475461))))

(declare-fun b!6940354 () Bool)

(assert (=> b!6940354 (= e!4175218 (not (= (head!13909 s!14361) (c!1287706 lt!2475461))))))

(declare-fun b!6940355 () Bool)

(assert (=> b!6940355 (= e!4175215 (= (head!13909 s!14361) (c!1287706 lt!2475461)))))

(declare-fun b!6940356 () Bool)

(assert (=> b!6940356 (= e!4175219 e!4175218)))

(declare-fun res!2831091 () Bool)

(assert (=> b!6940356 (=> res!2831091 e!4175218)))

(assert (=> b!6940356 (= res!2831091 call!630526)))

(declare-fun b!6940357 () Bool)

(declare-fun res!2831095 () Bool)

(assert (=> b!6940357 (=> res!2831095 e!4175221)))

(assert (=> b!6940357 (= res!2831095 (not (is-ElementMatch!16964 lt!2475461)))))

(assert (=> b!6940357 (= e!4175217 e!4175221)))

(declare-fun b!6940358 () Bool)

(assert (=> b!6940358 (= e!4175216 (matchR!9103 (derivativeStep!5456 lt!2475461 (head!13909 s!14361)) (tail!12961 s!14361)))))

(assert (= (and d!2167612 c!1287813) b!6940348))

(assert (= (and d!2167612 (not c!1287813)) b!6940358))

(assert (= (and d!2167612 c!1287815) b!6940351))

(assert (= (and d!2167612 (not c!1287815)) b!6940353))

(assert (= (and b!6940353 c!1287814) b!6940347))

(assert (= (and b!6940353 (not c!1287814)) b!6940357))

(assert (= (and b!6940357 (not res!2831095)) b!6940346))

(assert (= (and b!6940346 res!2831094) b!6940350))

(assert (= (and b!6940350 res!2831093) b!6940349))

(assert (= (and b!6940349 res!2831097) b!6940355))

(assert (= (and b!6940346 (not res!2831096)) b!6940352))

(assert (= (and b!6940352 res!2831092) b!6940356))

(assert (= (and b!6940356 (not res!2831091)) b!6940345))

(assert (= (and b!6940345 (not res!2831090)) b!6940354))

(assert (= (or b!6940351 b!6940350 b!6940356) bm!630521))

(declare-fun m!7645498 () Bool)

(assert (=> b!6940345 m!7645498))

(assert (=> b!6940345 m!7645498))

(declare-fun m!7645500 () Bool)

(assert (=> b!6940345 m!7645500))

(assert (=> d!2167612 m!7645488))

(assert (=> d!2167612 m!7645492))

(assert (=> bm!630521 m!7645488))

(declare-fun m!7645502 () Bool)

(assert (=> b!6940348 m!7645502))

(declare-fun m!7645504 () Bool)

(assert (=> b!6940355 m!7645504))

(assert (=> b!6940358 m!7645504))

(assert (=> b!6940358 m!7645504))

(declare-fun m!7645506 () Bool)

(assert (=> b!6940358 m!7645506))

(assert (=> b!6940358 m!7645498))

(assert (=> b!6940358 m!7645506))

(assert (=> b!6940358 m!7645498))

(declare-fun m!7645508 () Bool)

(assert (=> b!6940358 m!7645508))

(assert (=> b!6940354 m!7645504))

(assert (=> b!6940349 m!7645498))

(assert (=> b!6940349 m!7645498))

(assert (=> b!6940349 m!7645500))

(assert (=> b!6939788 d!2167612))

(declare-fun b!6940367 () Bool)

(declare-fun res!2831106 () Bool)

(declare-fun e!4175229 () Bool)

(assert (=> b!6940367 (=> res!2831106 e!4175229)))

(assert (=> b!6940367 (= res!2831106 (not (isEmpty!38864 (tail!12961 s!14361))))))

(declare-fun b!6940368 () Bool)

(declare-fun res!2831112 () Bool)

(declare-fun e!4175232 () Bool)

(assert (=> b!6940368 (=> res!2831112 e!4175232)))

(declare-fun e!4175226 () Bool)

(assert (=> b!6940368 (= res!2831112 e!4175226)))

(declare-fun res!2831110 () Bool)

(assert (=> b!6940368 (=> (not res!2831110) (not e!4175226))))

(declare-fun lt!2475647 () Bool)

(assert (=> b!6940368 (= res!2831110 lt!2475647)))

(declare-fun b!6940369 () Bool)

(declare-fun e!4175228 () Bool)

(assert (=> b!6940369 (= e!4175228 (not lt!2475647))))

(declare-fun b!6940370 () Bool)

(declare-fun e!4175227 () Bool)

(assert (=> b!6940370 (= e!4175227 (nullable!6781 lt!2475458))))

(declare-fun d!2167614 () Bool)

(declare-fun e!4175231 () Bool)

(assert (=> d!2167614 e!4175231))

(declare-fun c!1287818 () Bool)

(assert (=> d!2167614 (= c!1287818 (is-EmptyExpr!16964 lt!2475458))))

(assert (=> d!2167614 (= lt!2475647 e!4175227)))

(declare-fun c!1287816 () Bool)

(assert (=> d!2167614 (= c!1287816 (isEmpty!38864 s!14361))))

(assert (=> d!2167614 (validRegex!8670 lt!2475458)))

(assert (=> d!2167614 (= (matchR!9103 lt!2475458 s!14361) lt!2475647)))

(declare-fun b!6940371 () Bool)

(declare-fun res!2831113 () Bool)

(assert (=> b!6940371 (=> (not res!2831113) (not e!4175226))))

(assert (=> b!6940371 (= res!2831113 (isEmpty!38864 (tail!12961 s!14361)))))

(declare-fun b!6940372 () Bool)

(declare-fun res!2831109 () Bool)

(assert (=> b!6940372 (=> (not res!2831109) (not e!4175226))))

(declare-fun call!630527 () Bool)

(assert (=> b!6940372 (= res!2831109 (not call!630527))))

(declare-fun b!6940373 () Bool)

(assert (=> b!6940373 (= e!4175231 (= lt!2475647 call!630527))))

(declare-fun b!6940374 () Bool)

(declare-fun e!4175230 () Bool)

(assert (=> b!6940374 (= e!4175232 e!4175230)))

(declare-fun res!2831108 () Bool)

(assert (=> b!6940374 (=> (not res!2831108) (not e!4175230))))

(assert (=> b!6940374 (= res!2831108 (not lt!2475647))))

(declare-fun bm!630522 () Bool)

(assert (=> bm!630522 (= call!630527 (isEmpty!38864 s!14361))))

(declare-fun b!6940375 () Bool)

(assert (=> b!6940375 (= e!4175231 e!4175228)))

(declare-fun c!1287817 () Bool)

(assert (=> b!6940375 (= c!1287817 (is-EmptyLang!16964 lt!2475458))))

(declare-fun b!6940376 () Bool)

(assert (=> b!6940376 (= e!4175229 (not (= (head!13909 s!14361) (c!1287706 lt!2475458))))))

(declare-fun b!6940377 () Bool)

(assert (=> b!6940377 (= e!4175226 (= (head!13909 s!14361) (c!1287706 lt!2475458)))))

(declare-fun b!6940378 () Bool)

(assert (=> b!6940378 (= e!4175230 e!4175229)))

(declare-fun res!2831107 () Bool)

(assert (=> b!6940378 (=> res!2831107 e!4175229)))

(assert (=> b!6940378 (= res!2831107 call!630527)))

(declare-fun b!6940379 () Bool)

(declare-fun res!2831111 () Bool)

(assert (=> b!6940379 (=> res!2831111 e!4175232)))

(assert (=> b!6940379 (= res!2831111 (not (is-ElementMatch!16964 lt!2475458)))))

(assert (=> b!6940379 (= e!4175228 e!4175232)))

(declare-fun b!6940380 () Bool)

(assert (=> b!6940380 (= e!4175227 (matchR!9103 (derivativeStep!5456 lt!2475458 (head!13909 s!14361)) (tail!12961 s!14361)))))

(assert (= (and d!2167614 c!1287816) b!6940370))

(assert (= (and d!2167614 (not c!1287816)) b!6940380))

(assert (= (and d!2167614 c!1287818) b!6940373))

(assert (= (and d!2167614 (not c!1287818)) b!6940375))

(assert (= (and b!6940375 c!1287817) b!6940369))

(assert (= (and b!6940375 (not c!1287817)) b!6940379))

(assert (= (and b!6940379 (not res!2831111)) b!6940368))

(assert (= (and b!6940368 res!2831110) b!6940372))

(assert (= (and b!6940372 res!2831109) b!6940371))

(assert (= (and b!6940371 res!2831113) b!6940377))

(assert (= (and b!6940368 (not res!2831112)) b!6940374))

(assert (= (and b!6940374 res!2831108) b!6940378))

(assert (= (and b!6940378 (not res!2831107)) b!6940367))

(assert (= (and b!6940367 (not res!2831106)) b!6940376))

(assert (= (or b!6940373 b!6940372 b!6940378) bm!630522))

(assert (=> b!6940367 m!7645498))

(assert (=> b!6940367 m!7645498))

(assert (=> b!6940367 m!7645500))

(assert (=> d!2167614 m!7645488))

(assert (=> d!2167614 m!7645496))

(assert (=> bm!630522 m!7645488))

(declare-fun m!7645510 () Bool)

(assert (=> b!6940370 m!7645510))

(assert (=> b!6940377 m!7645504))

(assert (=> b!6940380 m!7645504))

(assert (=> b!6940380 m!7645504))

(declare-fun m!7645512 () Bool)

(assert (=> b!6940380 m!7645512))

(assert (=> b!6940380 m!7645498))

(assert (=> b!6940380 m!7645512))

(assert (=> b!6940380 m!7645498))

(declare-fun m!7645514 () Bool)

(assert (=> b!6940380 m!7645514))

(assert (=> b!6940376 m!7645504))

(assert (=> b!6940371 m!7645498))

(assert (=> b!6940371 m!7645498))

(assert (=> b!6940371 m!7645500))

(assert (=> b!6939788 d!2167614))

(declare-fun bs!1854451 () Bool)

(declare-fun b!6940386 () Bool)

(assert (= bs!1854451 (and b!6940386 b!6939796)))

(declare-fun lambda!395388 () Int)

(assert (=> bs!1854451 (not (= lambda!395388 lambda!395316))))

(declare-fun bs!1854452 () Bool)

(assert (= bs!1854452 (and b!6940386 b!6939805)))

(assert (=> bs!1854452 (not (= lambda!395388 lambda!395317))))

(declare-fun bs!1854453 () Bool)

(assert (= bs!1854453 (and b!6940386 d!2167574)))

(assert (=> bs!1854453 (not (= lambda!395388 lambda!395377))))

(declare-fun bs!1854454 () Bool)

(assert (= bs!1854454 (and b!6940386 b!6939802)))

(assert (=> bs!1854454 (not (= lambda!395388 lambda!395321))))

(declare-fun bs!1854455 () Bool)

(assert (= bs!1854455 (and b!6940386 b!6940240)))

(assert (=> bs!1854455 (not (= lambda!395388 lambda!395376))))

(declare-fun bs!1854456 () Bool)

(assert (= bs!1854456 (and b!6940386 b!6940090)))

(assert (=> bs!1854456 (= (and (= s!14361 (_2!37124 lt!2475485)) (= (reg!17293 lt!2475461) (reg!17293 lt!2475478)) (= lt!2475461 lt!2475478)) (= lambda!395388 lambda!395362))))

(assert (=> bs!1854452 (not (= lambda!395388 lambda!395318))))

(declare-fun bs!1854457 () Bool)

(assert (= bs!1854457 (and b!6940386 b!6939794)))

(assert (=> bs!1854457 (not (= lambda!395388 lambda!395319))))

(assert (=> bs!1854453 (not (= lambda!395388 lambda!395378))))

(declare-fun bs!1854458 () Bool)

(assert (= bs!1854458 (and b!6940386 b!6940318)))

(assert (=> bs!1854458 (= (and (= s!14361 (_1!37124 lt!2475472)) (= (reg!17293 lt!2475461) (reg!17293 r2!6280)) (= lt!2475461 r2!6280)) (= lambda!395388 lambda!395384))))

(declare-fun bs!1854459 () Bool)

(assert (= bs!1854459 (and b!6940386 b!6940235)))

(assert (=> bs!1854459 (= (and (= s!14361 (_1!37124 lt!2475485)) (= (reg!17293 lt!2475461) (reg!17293 r1!6342)) (= lt!2475461 r1!6342)) (= lambda!395388 lambda!395375))))

(declare-fun bs!1854460 () Bool)

(assert (= bs!1854460 (and b!6940386 d!2167510)))

(assert (=> bs!1854460 (not (= lambda!395388 lambda!395353))))

(declare-fun bs!1854461 () Bool)

(assert (= bs!1854461 (and b!6940386 b!6940158)))

(assert (=> bs!1854461 (= (and (= s!14361 lt!2475455) (= (reg!17293 lt!2475461) (reg!17293 lt!2475482)) (= lt!2475461 lt!2475482)) (= lambda!395388 lambda!395371))))

(declare-fun bs!1854462 () Bool)

(assert (= bs!1854462 (and b!6940386 b!6940334)))

(assert (=> bs!1854462 (not (= lambda!395388 lambda!395387))))

(assert (=> bs!1854457 (not (= lambda!395388 lambda!395320))))

(declare-fun bs!1854463 () Bool)

(assert (= bs!1854463 (and b!6940386 b!6940329)))

(assert (=> bs!1854463 (= (and (= (reg!17293 lt!2475461) (reg!17293 lt!2475458)) (= lt!2475461 lt!2475458)) (= lambda!395388 lambda!395386))))

(declare-fun bs!1854464 () Bool)

(assert (= bs!1854464 (and b!6940386 b!6940163)))

(assert (=> bs!1854464 (not (= lambda!395388 lambda!395372))))

(declare-fun bs!1854465 () Bool)

(assert (= bs!1854465 (and b!6940386 b!6940289)))

(assert (=> bs!1854465 (= (and (= s!14361 (_2!37124 lt!2475472)) (= (reg!17293 lt!2475461) (reg!17293 r3!135)) (= lt!2475461 r3!135)) (= lambda!395388 lambda!395382))))

(declare-fun bs!1854466 () Bool)

(assert (= bs!1854466 (and b!6940386 d!2167578)))

(assert (=> bs!1854466 (not (= lambda!395388 lambda!395379))))

(assert (=> bs!1854451 (not (= lambda!395388 lambda!395315))))

(declare-fun bs!1854467 () Bool)

(assert (= bs!1854467 (and b!6940386 b!6940323)))

(assert (=> bs!1854467 (not (= lambda!395388 lambda!395385))))

(declare-fun bs!1854468 () Bool)

(assert (= bs!1854468 (and b!6940386 d!2167520)))

(assert (=> bs!1854468 (not (= lambda!395388 lambda!395357))))

(declare-fun bs!1854469 () Bool)

(assert (= bs!1854469 (and b!6940386 b!6940095)))

(assert (=> bs!1854469 (not (= lambda!395388 lambda!395363))))

(declare-fun bs!1854470 () Bool)

(assert (= bs!1854470 (and b!6940386 d!2167548)))

(assert (=> bs!1854470 (not (= lambda!395388 lambda!395368))))

(assert (=> bs!1854460 (not (= lambda!395388 lambda!395354))))

(declare-fun bs!1854471 () Bool)

(assert (= bs!1854471 (and b!6940386 b!6940294)))

(assert (=> bs!1854471 (not (= lambda!395388 lambda!395383))))

(declare-fun bs!1854472 () Bool)

(assert (= bs!1854472 (and b!6940386 d!2167540)))

(assert (=> bs!1854472 (not (= lambda!395388 lambda!395364))))

(assert (=> bs!1854472 (not (= lambda!395388 lambda!395365))))

(assert (=> b!6940386 true))

(assert (=> b!6940386 true))

(declare-fun bs!1854473 () Bool)

(declare-fun b!6940391 () Bool)

(assert (= bs!1854473 (and b!6940391 b!6939796)))

(declare-fun lambda!395389 () Int)

(assert (=> bs!1854473 (= (and (= (regOne!34440 lt!2475461) r1!6342) (= (regTwo!34440 lt!2475461) lt!2475478)) (= lambda!395389 lambda!395316))))

(declare-fun bs!1854474 () Bool)

(assert (= bs!1854474 (and b!6940391 b!6939805)))

(assert (=> bs!1854474 (not (= lambda!395389 lambda!395317))))

(declare-fun bs!1854475 () Bool)

(assert (= bs!1854475 (and b!6940391 d!2167574)))

(assert (=> bs!1854475 (not (= lambda!395389 lambda!395377))))

(declare-fun bs!1854476 () Bool)

(assert (= bs!1854476 (and b!6940391 b!6939802)))

(assert (=> bs!1854476 (not (= lambda!395389 lambda!395321))))

(declare-fun bs!1854477 () Bool)

(assert (= bs!1854477 (and b!6940391 b!6940240)))

(assert (=> bs!1854477 (= (and (= s!14361 (_1!37124 lt!2475485)) (= (regOne!34440 lt!2475461) (regOne!34440 r1!6342)) (= (regTwo!34440 lt!2475461) (regTwo!34440 r1!6342))) (= lambda!395389 lambda!395376))))

(assert (=> bs!1854474 (= (and (= s!14361 (_2!37124 lt!2475485)) (= (regOne!34440 lt!2475461) r2!6280) (= (regTwo!34440 lt!2475461) r3!135)) (= lambda!395389 lambda!395318))))

(declare-fun bs!1854478 () Bool)

(assert (= bs!1854478 (and b!6940391 b!6939794)))

(assert (=> bs!1854478 (not (= lambda!395389 lambda!395319))))

(assert (=> bs!1854475 (= (and (= (regOne!34440 lt!2475461) r1!6342) (= (regTwo!34440 lt!2475461) lt!2475478)) (= lambda!395389 lambda!395378))))

(declare-fun bs!1854479 () Bool)

(assert (= bs!1854479 (and b!6940391 b!6940318)))

(assert (=> bs!1854479 (not (= lambda!395389 lambda!395384))))

(declare-fun bs!1854480 () Bool)

(assert (= bs!1854480 (and b!6940391 b!6940235)))

(assert (=> bs!1854480 (not (= lambda!395389 lambda!395375))))

(declare-fun bs!1854481 () Bool)

(assert (= bs!1854481 (and b!6940391 b!6940386)))

(assert (=> bs!1854481 (not (= lambda!395389 lambda!395388))))

(declare-fun bs!1854482 () Bool)

(assert (= bs!1854482 (and b!6940391 b!6940090)))

(assert (=> bs!1854482 (not (= lambda!395389 lambda!395362))))

(declare-fun bs!1854483 () Bool)

(assert (= bs!1854483 (and b!6940391 d!2167510)))

(assert (=> bs!1854483 (not (= lambda!395389 lambda!395353))))

(declare-fun bs!1854484 () Bool)

(assert (= bs!1854484 (and b!6940391 b!6940158)))

(assert (=> bs!1854484 (not (= lambda!395389 lambda!395371))))

(declare-fun bs!1854485 () Bool)

(assert (= bs!1854485 (and b!6940391 b!6940334)))

(assert (=> bs!1854485 (= (and (= (regOne!34440 lt!2475461) (regOne!34440 lt!2475458)) (= (regTwo!34440 lt!2475461) (regTwo!34440 lt!2475458))) (= lambda!395389 lambda!395387))))

(assert (=> bs!1854478 (= (and (= s!14361 lt!2475455) (= (regOne!34440 lt!2475461) r1!6342) (= (regTwo!34440 lt!2475461) r2!6280)) (= lambda!395389 lambda!395320))))

(declare-fun bs!1854486 () Bool)

(assert (= bs!1854486 (and b!6940391 b!6940329)))

(assert (=> bs!1854486 (not (= lambda!395389 lambda!395386))))

(declare-fun bs!1854487 () Bool)

(assert (= bs!1854487 (and b!6940391 b!6940163)))

(assert (=> bs!1854487 (= (and (= s!14361 lt!2475455) (= (regOne!34440 lt!2475461) (regOne!34440 lt!2475482)) (= (regTwo!34440 lt!2475461) (regTwo!34440 lt!2475482))) (= lambda!395389 lambda!395372))))

(declare-fun bs!1854488 () Bool)

(assert (= bs!1854488 (and b!6940391 b!6940289)))

(assert (=> bs!1854488 (not (= lambda!395389 lambda!395382))))

(declare-fun bs!1854489 () Bool)

(assert (= bs!1854489 (and b!6940391 d!2167578)))

(assert (=> bs!1854489 (not (= lambda!395389 lambda!395379))))

(assert (=> bs!1854473 (not (= lambda!395389 lambda!395315))))

(declare-fun bs!1854490 () Bool)

(assert (= bs!1854490 (and b!6940391 b!6940323)))

(assert (=> bs!1854490 (= (and (= s!14361 (_1!37124 lt!2475472)) (= (regOne!34440 lt!2475461) (regOne!34440 r2!6280)) (= (regTwo!34440 lt!2475461) (regTwo!34440 r2!6280))) (= lambda!395389 lambda!395385))))

(declare-fun bs!1854491 () Bool)

(assert (= bs!1854491 (and b!6940391 d!2167520)))

(assert (=> bs!1854491 (not (= lambda!395389 lambda!395357))))

(declare-fun bs!1854492 () Bool)

(assert (= bs!1854492 (and b!6940391 b!6940095)))

(assert (=> bs!1854492 (= (and (= s!14361 (_2!37124 lt!2475485)) (= (regOne!34440 lt!2475461) (regOne!34440 lt!2475478)) (= (regTwo!34440 lt!2475461) (regTwo!34440 lt!2475478))) (= lambda!395389 lambda!395363))))

(declare-fun bs!1854493 () Bool)

(assert (= bs!1854493 (and b!6940391 d!2167548)))

(assert (=> bs!1854493 (not (= lambda!395389 lambda!395368))))

(assert (=> bs!1854483 (= (and (= s!14361 (_2!37124 lt!2475485)) (= (regOne!34440 lt!2475461) r2!6280) (= (regTwo!34440 lt!2475461) r3!135)) (= lambda!395389 lambda!395354))))

(declare-fun bs!1854494 () Bool)

(assert (= bs!1854494 (and b!6940391 b!6940294)))

(assert (=> bs!1854494 (= (and (= s!14361 (_2!37124 lt!2475472)) (= (regOne!34440 lt!2475461) (regOne!34440 r3!135)) (= (regTwo!34440 lt!2475461) (regTwo!34440 r3!135))) (= lambda!395389 lambda!395383))))

(declare-fun bs!1854495 () Bool)

(assert (= bs!1854495 (and b!6940391 d!2167540)))

(assert (=> bs!1854495 (not (= lambda!395389 lambda!395364))))

(assert (=> bs!1854495 (= (and (= s!14361 lt!2475455) (= (regOne!34440 lt!2475461) r1!6342) (= (regTwo!34440 lt!2475461) r2!6280)) (= lambda!395389 lambda!395365))))

(assert (=> b!6940391 true))

(assert (=> b!6940391 true))

(declare-fun d!2167616 () Bool)

(declare-fun c!1287821 () Bool)

(assert (=> d!2167616 (= c!1287821 (is-EmptyExpr!16964 lt!2475461))))

(declare-fun e!4175237 () Bool)

(assert (=> d!2167616 (= (matchRSpec!4021 lt!2475461 s!14361) e!4175237)))

(declare-fun b!6940381 () Bool)

(declare-fun e!4175233 () Bool)

(declare-fun e!4175234 () Bool)

(assert (=> b!6940381 (= e!4175233 e!4175234)))

(declare-fun res!2831115 () Bool)

(assert (=> b!6940381 (= res!2831115 (matchRSpec!4021 (regOne!34441 lt!2475461) s!14361))))

(assert (=> b!6940381 (=> res!2831115 e!4175234)))

(declare-fun b!6940382 () Bool)

(declare-fun c!1287820 () Bool)

(assert (=> b!6940382 (= c!1287820 (is-Union!16964 lt!2475461))))

(declare-fun e!4175238 () Bool)

(assert (=> b!6940382 (= e!4175238 e!4175233)))

(declare-fun b!6940383 () Bool)

(assert (=> b!6940383 (= e!4175234 (matchRSpec!4021 (regTwo!34441 lt!2475461) s!14361))))

(declare-fun b!6940384 () Bool)

(assert (=> b!6940384 (= e!4175238 (= s!14361 (Cons!66593 (c!1287706 lt!2475461) Nil!66593)))))

(declare-fun bm!630523 () Bool)

(declare-fun call!630528 () Bool)

(declare-fun c!1287819 () Bool)

(assert (=> bm!630523 (= call!630528 (Exists!3964 (ite c!1287819 lambda!395388 lambda!395389)))))

(declare-fun b!6940385 () Bool)

(declare-fun res!2831116 () Bool)

(declare-fun e!4175235 () Bool)

(assert (=> b!6940385 (=> res!2831116 e!4175235)))

(declare-fun call!630529 () Bool)

(assert (=> b!6940385 (= res!2831116 call!630529)))

(declare-fun e!4175236 () Bool)

(assert (=> b!6940385 (= e!4175236 e!4175235)))

(assert (=> b!6940386 (= e!4175235 call!630528)))

(declare-fun bm!630524 () Bool)

(assert (=> bm!630524 (= call!630529 (isEmpty!38864 s!14361))))

(declare-fun b!6940387 () Bool)

(declare-fun e!4175239 () Bool)

(assert (=> b!6940387 (= e!4175237 e!4175239)))

(declare-fun res!2831114 () Bool)

(assert (=> b!6940387 (= res!2831114 (not (is-EmptyLang!16964 lt!2475461)))))

(assert (=> b!6940387 (=> (not res!2831114) (not e!4175239))))

(declare-fun b!6940388 () Bool)

(assert (=> b!6940388 (= e!4175237 call!630529)))

(declare-fun b!6940389 () Bool)

(assert (=> b!6940389 (= e!4175233 e!4175236)))

(assert (=> b!6940389 (= c!1287819 (is-Star!16964 lt!2475461))))

(declare-fun b!6940390 () Bool)

(declare-fun c!1287822 () Bool)

(assert (=> b!6940390 (= c!1287822 (is-ElementMatch!16964 lt!2475461))))

(assert (=> b!6940390 (= e!4175239 e!4175238)))

(assert (=> b!6940391 (= e!4175236 call!630528)))

(assert (= (and d!2167616 c!1287821) b!6940388))

(assert (= (and d!2167616 (not c!1287821)) b!6940387))

(assert (= (and b!6940387 res!2831114) b!6940390))

(assert (= (and b!6940390 c!1287822) b!6940384))

(assert (= (and b!6940390 (not c!1287822)) b!6940382))

(assert (= (and b!6940382 c!1287820) b!6940381))

(assert (= (and b!6940382 (not c!1287820)) b!6940389))

(assert (= (and b!6940381 (not res!2831115)) b!6940383))

(assert (= (and b!6940389 c!1287819) b!6940385))

(assert (= (and b!6940389 (not c!1287819)) b!6940391))

(assert (= (and b!6940385 (not res!2831116)) b!6940386))

(assert (= (or b!6940386 b!6940391) bm!630523))

(assert (= (or b!6940388 b!6940385) bm!630524))

(declare-fun m!7645538 () Bool)

(assert (=> b!6940381 m!7645538))

(declare-fun m!7645540 () Bool)

(assert (=> b!6940383 m!7645540))

(declare-fun m!7645542 () Bool)

(assert (=> bm!630523 m!7645542))

(assert (=> bm!630524 m!7645488))

(assert (=> b!6939788 d!2167616))

(declare-fun b!6940401 () Bool)

(declare-fun e!4175250 () Bool)

(declare-fun e!4175247 () Bool)

(assert (=> b!6940401 (= e!4175250 e!4175247)))

(declare-fun res!2831124 () Bool)

(assert (=> b!6940401 (= res!2831124 (not (nullable!6781 (reg!17293 r2!6280))))))

(assert (=> b!6940401 (=> (not res!2831124) (not e!4175247))))

(declare-fun bm!630525 () Bool)

(declare-fun call!630532 () Bool)

(declare-fun c!1287826 () Bool)

(assert (=> bm!630525 (= call!630532 (validRegex!8670 (ite c!1287826 (regOne!34441 r2!6280) (regTwo!34440 r2!6280))))))

(declare-fun b!6940402 () Bool)

(declare-fun call!630530 () Bool)

(assert (=> b!6940402 (= e!4175247 call!630530)))

(declare-fun b!6940403 () Bool)

(declare-fun res!2831123 () Bool)

(declare-fun e!4175246 () Bool)

(assert (=> b!6940403 (=> res!2831123 e!4175246)))

(assert (=> b!6940403 (= res!2831123 (not (is-Concat!25809 r2!6280)))))

(declare-fun e!4175251 () Bool)

(assert (=> b!6940403 (= e!4175251 e!4175246)))

(declare-fun b!6940405 () Bool)

(declare-fun e!4175248 () Bool)

(assert (=> b!6940405 (= e!4175248 call!630532)))

(declare-fun b!6940406 () Bool)

(declare-fun e!4175249 () Bool)

(declare-fun call!630531 () Bool)

(assert (=> b!6940406 (= e!4175249 call!630531)))

(declare-fun b!6940407 () Bool)

(assert (=> b!6940407 (= e!4175250 e!4175251)))

(assert (=> b!6940407 (= c!1287826 (is-Union!16964 r2!6280))))

(declare-fun bm!630526 () Bool)

(declare-fun c!1287825 () Bool)

(assert (=> bm!630526 (= call!630530 (validRegex!8670 (ite c!1287825 (reg!17293 r2!6280) (ite c!1287826 (regTwo!34441 r2!6280) (regOne!34440 r2!6280)))))))

(declare-fun bm!630527 () Bool)

(assert (=> bm!630527 (= call!630531 call!630530)))

(declare-fun b!6940404 () Bool)

(declare-fun res!2831126 () Bool)

(assert (=> b!6940404 (=> (not res!2831126) (not e!4175249))))

(assert (=> b!6940404 (= res!2831126 call!630532)))

(assert (=> b!6940404 (= e!4175251 e!4175249)))

(declare-fun d!2167620 () Bool)

(declare-fun res!2831122 () Bool)

(declare-fun e!4175245 () Bool)

(assert (=> d!2167620 (=> res!2831122 e!4175245)))

(assert (=> d!2167620 (= res!2831122 (is-ElementMatch!16964 r2!6280))))

(assert (=> d!2167620 (= (validRegex!8670 r2!6280) e!4175245)))

(declare-fun b!6940408 () Bool)

(assert (=> b!6940408 (= e!4175246 e!4175248)))

(declare-fun res!2831125 () Bool)

(assert (=> b!6940408 (=> (not res!2831125) (not e!4175248))))

(assert (=> b!6940408 (= res!2831125 call!630531)))

(declare-fun b!6940409 () Bool)

(assert (=> b!6940409 (= e!4175245 e!4175250)))

(assert (=> b!6940409 (= c!1287825 (is-Star!16964 r2!6280))))

(assert (= (and d!2167620 (not res!2831122)) b!6940409))

(assert (= (and b!6940409 c!1287825) b!6940401))

(assert (= (and b!6940409 (not c!1287825)) b!6940407))

(assert (= (and b!6940401 res!2831124) b!6940402))

(assert (= (and b!6940407 c!1287826) b!6940404))

(assert (= (and b!6940407 (not c!1287826)) b!6940403))

(assert (= (and b!6940404 res!2831126) b!6940406))

(assert (= (and b!6940403 (not res!2831123)) b!6940408))

(assert (= (and b!6940408 res!2831125) b!6940405))

(assert (= (or b!6940404 b!6940405) bm!630525))

(assert (= (or b!6940406 b!6940408) bm!630527))

(assert (= (or b!6940402 bm!630527) bm!630526))

(declare-fun m!7645544 () Bool)

(assert (=> b!6940401 m!7645544))

(declare-fun m!7645546 () Bool)

(assert (=> bm!630525 m!7645546))

(declare-fun m!7645548 () Bool)

(assert (=> bm!630526 m!7645548))

(assert (=> b!6939789 d!2167620))

(declare-fun b!6940410 () Bool)

(declare-fun res!2831127 () Bool)

(declare-fun e!4175255 () Bool)

(assert (=> b!6940410 (=> res!2831127 e!4175255)))

(assert (=> b!6940410 (= res!2831127 (not (isEmpty!38864 (tail!12961 (_2!37124 lt!2475472)))))))

(declare-fun b!6940411 () Bool)

(declare-fun res!2831133 () Bool)

(declare-fun e!4175258 () Bool)

(assert (=> b!6940411 (=> res!2831133 e!4175258)))

(declare-fun e!4175252 () Bool)

(assert (=> b!6940411 (= res!2831133 e!4175252)))

(declare-fun res!2831131 () Bool)

(assert (=> b!6940411 (=> (not res!2831131) (not e!4175252))))

(declare-fun lt!2475651 () Bool)

(assert (=> b!6940411 (= res!2831131 lt!2475651)))

(declare-fun b!6940412 () Bool)

(declare-fun e!4175254 () Bool)

(assert (=> b!6940412 (= e!4175254 (not lt!2475651))))

(declare-fun b!6940413 () Bool)

(declare-fun e!4175253 () Bool)

(assert (=> b!6940413 (= e!4175253 (nullable!6781 r3!135))))

(declare-fun d!2167622 () Bool)

(declare-fun e!4175257 () Bool)

(assert (=> d!2167622 e!4175257))

(declare-fun c!1287829 () Bool)

(assert (=> d!2167622 (= c!1287829 (is-EmptyExpr!16964 r3!135))))

(assert (=> d!2167622 (= lt!2475651 e!4175253)))

(declare-fun c!1287827 () Bool)

(assert (=> d!2167622 (= c!1287827 (isEmpty!38864 (_2!37124 lt!2475472)))))

(assert (=> d!2167622 (validRegex!8670 r3!135)))

(assert (=> d!2167622 (= (matchR!9103 r3!135 (_2!37124 lt!2475472)) lt!2475651)))

(declare-fun b!6940414 () Bool)

(declare-fun res!2831134 () Bool)

(assert (=> b!6940414 (=> (not res!2831134) (not e!4175252))))

(assert (=> b!6940414 (= res!2831134 (isEmpty!38864 (tail!12961 (_2!37124 lt!2475472))))))

(declare-fun b!6940415 () Bool)

(declare-fun res!2831130 () Bool)

(assert (=> b!6940415 (=> (not res!2831130) (not e!4175252))))

(declare-fun call!630533 () Bool)

(assert (=> b!6940415 (= res!2831130 (not call!630533))))

(declare-fun b!6940416 () Bool)

(assert (=> b!6940416 (= e!4175257 (= lt!2475651 call!630533))))

(declare-fun b!6940417 () Bool)

(declare-fun e!4175256 () Bool)

(assert (=> b!6940417 (= e!4175258 e!4175256)))

(declare-fun res!2831129 () Bool)

(assert (=> b!6940417 (=> (not res!2831129) (not e!4175256))))

(assert (=> b!6940417 (= res!2831129 (not lt!2475651))))

(declare-fun bm!630528 () Bool)

(assert (=> bm!630528 (= call!630533 (isEmpty!38864 (_2!37124 lt!2475472)))))

(declare-fun b!6940418 () Bool)

(assert (=> b!6940418 (= e!4175257 e!4175254)))

(declare-fun c!1287828 () Bool)

(assert (=> b!6940418 (= c!1287828 (is-EmptyLang!16964 r3!135))))

(declare-fun b!6940419 () Bool)

(assert (=> b!6940419 (= e!4175255 (not (= (head!13909 (_2!37124 lt!2475472)) (c!1287706 r3!135))))))

(declare-fun b!6940420 () Bool)

(assert (=> b!6940420 (= e!4175252 (= (head!13909 (_2!37124 lt!2475472)) (c!1287706 r3!135)))))

(declare-fun b!6940421 () Bool)

(assert (=> b!6940421 (= e!4175256 e!4175255)))

(declare-fun res!2831128 () Bool)

(assert (=> b!6940421 (=> res!2831128 e!4175255)))

(assert (=> b!6940421 (= res!2831128 call!630533)))

(declare-fun b!6940422 () Bool)

(declare-fun res!2831132 () Bool)

(assert (=> b!6940422 (=> res!2831132 e!4175258)))

(assert (=> b!6940422 (= res!2831132 (not (is-ElementMatch!16964 r3!135)))))

(assert (=> b!6940422 (= e!4175254 e!4175258)))

(declare-fun b!6940423 () Bool)

(assert (=> b!6940423 (= e!4175253 (matchR!9103 (derivativeStep!5456 r3!135 (head!13909 (_2!37124 lt!2475472))) (tail!12961 (_2!37124 lt!2475472))))))

(assert (= (and d!2167622 c!1287827) b!6940413))

(assert (= (and d!2167622 (not c!1287827)) b!6940423))

(assert (= (and d!2167622 c!1287829) b!6940416))

(assert (= (and d!2167622 (not c!1287829)) b!6940418))

(assert (= (and b!6940418 c!1287828) b!6940412))

(assert (= (and b!6940418 (not c!1287828)) b!6940422))

(assert (= (and b!6940422 (not res!2831132)) b!6940411))

(assert (= (and b!6940411 res!2831131) b!6940415))

(assert (= (and b!6940415 res!2831130) b!6940414))

(assert (= (and b!6940414 res!2831134) b!6940420))

(assert (= (and b!6940411 (not res!2831133)) b!6940417))

(assert (= (and b!6940417 res!2831129) b!6940421))

(assert (= (and b!6940421 (not res!2831128)) b!6940410))

(assert (= (and b!6940410 (not res!2831127)) b!6940419))

(assert (= (or b!6940416 b!6940415 b!6940421) bm!630528))

(declare-fun m!7645550 () Bool)

(assert (=> b!6940410 m!7645550))

(assert (=> b!6940410 m!7645550))

(declare-fun m!7645552 () Bool)

(assert (=> b!6940410 m!7645552))

(assert (=> d!2167622 m!7645466))

(assert (=> d!2167622 m!7644952))

(assert (=> bm!630528 m!7645466))

(declare-fun m!7645554 () Bool)

(assert (=> b!6940413 m!7645554))

(declare-fun m!7645556 () Bool)

(assert (=> b!6940420 m!7645556))

(assert (=> b!6940423 m!7645556))

(assert (=> b!6940423 m!7645556))

(declare-fun m!7645558 () Bool)

(assert (=> b!6940423 m!7645558))

(assert (=> b!6940423 m!7645550))

(assert (=> b!6940423 m!7645558))

(assert (=> b!6940423 m!7645550))

(declare-fun m!7645560 () Bool)

(assert (=> b!6940423 m!7645560))

(assert (=> b!6940419 m!7645556))

(assert (=> b!6940414 m!7645550))

(assert (=> b!6940414 m!7645550))

(assert (=> b!6940414 m!7645552))

(assert (=> b!6939800 d!2167622))

(declare-fun d!2167624 () Bool)

(assert (=> d!2167624 (= (isDefined!13434 (findConcatSeparation!3147 lt!2475482 r3!135 Nil!66593 s!14361 s!14361)) (not (isEmpty!38865 (findConcatSeparation!3147 lt!2475482 r3!135 Nil!66593 s!14361 s!14361))))))

(declare-fun bs!1854496 () Bool)

(assert (= bs!1854496 d!2167624))

(assert (=> bs!1854496 m!7645054))

(declare-fun m!7645562 () Bool)

(assert (=> bs!1854496 m!7645562))

(assert (=> b!6939802 d!2167624))

(declare-fun bs!1854497 () Bool)

(declare-fun d!2167626 () Bool)

(assert (= bs!1854497 (and d!2167626 b!6939796)))

(declare-fun lambda!395390 () Int)

(assert (=> bs!1854497 (not (= lambda!395390 lambda!395316))))

(declare-fun bs!1854498 () Bool)

(assert (= bs!1854498 (and d!2167626 b!6939805)))

(assert (=> bs!1854498 (= (and (= s!14361 (_2!37124 lt!2475485)) (= lt!2475482 r2!6280)) (= lambda!395390 lambda!395317))))

(declare-fun bs!1854499 () Bool)

(assert (= bs!1854499 (and d!2167626 d!2167574)))

(assert (=> bs!1854499 (= (and (= lt!2475482 r1!6342) (= r3!135 lt!2475478)) (= lambda!395390 lambda!395377))))

(declare-fun bs!1854500 () Bool)

(assert (= bs!1854500 (and d!2167626 b!6939802)))

(assert (=> bs!1854500 (= lambda!395390 lambda!395321)))

(declare-fun bs!1854501 () Bool)

(assert (= bs!1854501 (and d!2167626 b!6940240)))

(assert (=> bs!1854501 (not (= lambda!395390 lambda!395376))))

(assert (=> bs!1854498 (not (= lambda!395390 lambda!395318))))

(declare-fun bs!1854502 () Bool)

(assert (= bs!1854502 (and d!2167626 b!6940391)))

(assert (=> bs!1854502 (not (= lambda!395390 lambda!395389))))

(declare-fun bs!1854503 () Bool)

(assert (= bs!1854503 (and d!2167626 b!6939794)))

(assert (=> bs!1854503 (= (and (= s!14361 lt!2475455) (= lt!2475482 r1!6342) (= r3!135 r2!6280)) (= lambda!395390 lambda!395319))))

(assert (=> bs!1854499 (not (= lambda!395390 lambda!395378))))

(declare-fun bs!1854504 () Bool)

(assert (= bs!1854504 (and d!2167626 b!6940318)))

(assert (=> bs!1854504 (not (= lambda!395390 lambda!395384))))

(declare-fun bs!1854505 () Bool)

(assert (= bs!1854505 (and d!2167626 b!6940235)))

(assert (=> bs!1854505 (not (= lambda!395390 lambda!395375))))

(declare-fun bs!1854506 () Bool)

(assert (= bs!1854506 (and d!2167626 b!6940386)))

(assert (=> bs!1854506 (not (= lambda!395390 lambda!395388))))

(declare-fun bs!1854507 () Bool)

(assert (= bs!1854507 (and d!2167626 b!6940090)))

(assert (=> bs!1854507 (not (= lambda!395390 lambda!395362))))

(declare-fun bs!1854508 () Bool)

(assert (= bs!1854508 (and d!2167626 d!2167510)))

(assert (=> bs!1854508 (= (and (= s!14361 (_2!37124 lt!2475485)) (= lt!2475482 r2!6280)) (= lambda!395390 lambda!395353))))

(declare-fun bs!1854509 () Bool)

(assert (= bs!1854509 (and d!2167626 b!6940158)))

(assert (=> bs!1854509 (not (= lambda!395390 lambda!395371))))

(declare-fun bs!1854510 () Bool)

(assert (= bs!1854510 (and d!2167626 b!6940334)))

(assert (=> bs!1854510 (not (= lambda!395390 lambda!395387))))

(assert (=> bs!1854503 (not (= lambda!395390 lambda!395320))))

(declare-fun bs!1854511 () Bool)

(assert (= bs!1854511 (and d!2167626 b!6940329)))

(assert (=> bs!1854511 (not (= lambda!395390 lambda!395386))))

(declare-fun bs!1854512 () Bool)

(assert (= bs!1854512 (and d!2167626 b!6940163)))

(assert (=> bs!1854512 (not (= lambda!395390 lambda!395372))))

(declare-fun bs!1854513 () Bool)

(assert (= bs!1854513 (and d!2167626 b!6940289)))

(assert (=> bs!1854513 (not (= lambda!395390 lambda!395382))))

(declare-fun bs!1854514 () Bool)

(assert (= bs!1854514 (and d!2167626 d!2167578)))

(assert (=> bs!1854514 (= (and (= lt!2475482 r1!6342) (= r3!135 lt!2475478)) (= lambda!395390 lambda!395379))))

(assert (=> bs!1854497 (= (and (= lt!2475482 r1!6342) (= r3!135 lt!2475478)) (= lambda!395390 lambda!395315))))

(declare-fun bs!1854515 () Bool)

(assert (= bs!1854515 (and d!2167626 b!6940323)))

(assert (=> bs!1854515 (not (= lambda!395390 lambda!395385))))

(declare-fun bs!1854516 () Bool)

(assert (= bs!1854516 (and d!2167626 d!2167520)))

(assert (=> bs!1854516 (= (and (= s!14361 (_2!37124 lt!2475485)) (= lt!2475482 r2!6280)) (= lambda!395390 lambda!395357))))

(declare-fun bs!1854517 () Bool)

(assert (= bs!1854517 (and d!2167626 b!6940095)))

(assert (=> bs!1854517 (not (= lambda!395390 lambda!395363))))

(declare-fun bs!1854518 () Bool)

(assert (= bs!1854518 (and d!2167626 d!2167548)))

(assert (=> bs!1854518 (= (and (= s!14361 lt!2475455) (= lt!2475482 r1!6342) (= r3!135 r2!6280)) (= lambda!395390 lambda!395368))))

(assert (=> bs!1854508 (not (= lambda!395390 lambda!395354))))

(declare-fun bs!1854519 () Bool)

(assert (= bs!1854519 (and d!2167626 b!6940294)))

(assert (=> bs!1854519 (not (= lambda!395390 lambda!395383))))

(declare-fun bs!1854520 () Bool)

(assert (= bs!1854520 (and d!2167626 d!2167540)))

(assert (=> bs!1854520 (= (and (= s!14361 lt!2475455) (= lt!2475482 r1!6342) (= r3!135 r2!6280)) (= lambda!395390 lambda!395364))))

(assert (=> bs!1854520 (not (= lambda!395390 lambda!395365))))

(assert (=> d!2167626 true))

(assert (=> d!2167626 true))

(assert (=> d!2167626 true))

(assert (=> d!2167626 (= (isDefined!13434 (findConcatSeparation!3147 lt!2475482 r3!135 Nil!66593 s!14361 s!14361)) (Exists!3964 lambda!395390))))

(declare-fun lt!2475652 () Unit!160652)

(assert (=> d!2167626 (= lt!2475652 (choose!51701 lt!2475482 r3!135 s!14361))))

(assert (=> d!2167626 (validRegex!8670 lt!2475482)))

(assert (=> d!2167626 (= (lemmaFindConcatSeparationEquivalentToExists!2905 lt!2475482 r3!135 s!14361) lt!2475652)))

(declare-fun bs!1854521 () Bool)

(assert (= bs!1854521 d!2167626))

(assert (=> bs!1854521 m!7645054))

(assert (=> bs!1854521 m!7645056))

(declare-fun m!7645564 () Bool)

(assert (=> bs!1854521 m!7645564))

(declare-fun m!7645566 () Bool)

(assert (=> bs!1854521 m!7645566))

(assert (=> bs!1854521 m!7645062))

(assert (=> bs!1854521 m!7645054))

(assert (=> b!6939802 d!2167626))

(declare-fun b!6940424 () Bool)

(declare-fun e!4175259 () Option!16733)

(assert (=> b!6940424 (= e!4175259 (Some!16732 (tuple2!67643 Nil!66593 s!14361)))))

(declare-fun b!6940425 () Bool)

(declare-fun e!4175260 () Bool)

(declare-fun lt!2475653 () Option!16733)

(assert (=> b!6940425 (= e!4175260 (not (isDefined!13434 lt!2475653)))))

(declare-fun d!2167628 () Bool)

(assert (=> d!2167628 e!4175260))

(declare-fun res!2831136 () Bool)

(assert (=> d!2167628 (=> res!2831136 e!4175260)))

(declare-fun e!4175263 () Bool)

(assert (=> d!2167628 (= res!2831136 e!4175263)))

(declare-fun res!2831137 () Bool)

(assert (=> d!2167628 (=> (not res!2831137) (not e!4175263))))

(assert (=> d!2167628 (= res!2831137 (isDefined!13434 lt!2475653))))

(assert (=> d!2167628 (= lt!2475653 e!4175259)))

(declare-fun c!1287830 () Bool)

(declare-fun e!4175261 () Bool)

(assert (=> d!2167628 (= c!1287830 e!4175261)))

(declare-fun res!2831139 () Bool)

(assert (=> d!2167628 (=> (not res!2831139) (not e!4175261))))

(assert (=> d!2167628 (= res!2831139 (matchR!9103 lt!2475482 Nil!66593))))

(assert (=> d!2167628 (validRegex!8670 lt!2475482)))

(assert (=> d!2167628 (= (findConcatSeparation!3147 lt!2475482 r3!135 Nil!66593 s!14361 s!14361) lt!2475653)))

(declare-fun b!6940426 () Bool)

(declare-fun e!4175262 () Option!16733)

(assert (=> b!6940426 (= e!4175259 e!4175262)))

(declare-fun c!1287831 () Bool)

(assert (=> b!6940426 (= c!1287831 (is-Nil!66593 s!14361))))

(declare-fun b!6940427 () Bool)

(assert (=> b!6940427 (= e!4175261 (matchR!9103 r3!135 s!14361))))

(declare-fun b!6940428 () Bool)

(declare-fun res!2831138 () Bool)

(assert (=> b!6940428 (=> (not res!2831138) (not e!4175263))))

(assert (=> b!6940428 (= res!2831138 (matchR!9103 r3!135 (_2!37124 (get!23383 lt!2475653))))))

(declare-fun b!6940429 () Bool)

(declare-fun res!2831135 () Bool)

(assert (=> b!6940429 (=> (not res!2831135) (not e!4175263))))

(assert (=> b!6940429 (= res!2831135 (matchR!9103 lt!2475482 (_1!37124 (get!23383 lt!2475653))))))

(declare-fun b!6940430 () Bool)

(assert (=> b!6940430 (= e!4175263 (= (++!15003 (_1!37124 (get!23383 lt!2475653)) (_2!37124 (get!23383 lt!2475653))) s!14361))))

(declare-fun b!6940431 () Bool)

(assert (=> b!6940431 (= e!4175262 None!16732)))

(declare-fun b!6940432 () Bool)

(declare-fun lt!2475654 () Unit!160652)

(declare-fun lt!2475655 () Unit!160652)

(assert (=> b!6940432 (= lt!2475654 lt!2475655)))

(assert (=> b!6940432 (= (++!15003 (++!15003 Nil!66593 (Cons!66593 (h!73041 s!14361) Nil!66593)) (t!380460 s!14361)) s!14361)))

(assert (=> b!6940432 (= lt!2475655 (lemmaMoveElementToOtherListKeepsConcatEq!2860 Nil!66593 (h!73041 s!14361) (t!380460 s!14361) s!14361))))

(assert (=> b!6940432 (= e!4175262 (findConcatSeparation!3147 lt!2475482 r3!135 (++!15003 Nil!66593 (Cons!66593 (h!73041 s!14361) Nil!66593)) (t!380460 s!14361) s!14361))))

(assert (= (and d!2167628 res!2831139) b!6940427))

(assert (= (and d!2167628 c!1287830) b!6940424))

(assert (= (and d!2167628 (not c!1287830)) b!6940426))

(assert (= (and b!6940426 c!1287831) b!6940431))

(assert (= (and b!6940426 (not c!1287831)) b!6940432))

(assert (= (and d!2167628 res!2831137) b!6940429))

(assert (= (and b!6940429 res!2831135) b!6940428))

(assert (= (and b!6940428 res!2831138) b!6940430))

(assert (= (and d!2167628 (not res!2831136)) b!6940425))

(declare-fun m!7645568 () Bool)

(assert (=> b!6940429 m!7645568))

(declare-fun m!7645570 () Bool)

(assert (=> b!6940429 m!7645570))

(declare-fun m!7645572 () Bool)

(assert (=> d!2167628 m!7645572))

(declare-fun m!7645574 () Bool)

(assert (=> d!2167628 m!7645574))

(assert (=> d!2167628 m!7645062))

(assert (=> b!6940428 m!7645568))

(declare-fun m!7645576 () Bool)

(assert (=> b!6940428 m!7645576))

(assert (=> b!6940430 m!7645568))

(declare-fun m!7645578 () Bool)

(assert (=> b!6940430 m!7645578))

(assert (=> b!6940425 m!7645572))

(declare-fun m!7645580 () Bool)

(assert (=> b!6940427 m!7645580))

(declare-fun m!7645582 () Bool)

(assert (=> b!6940432 m!7645582))

(assert (=> b!6940432 m!7645582))

(declare-fun m!7645584 () Bool)

(assert (=> b!6940432 m!7645584))

(declare-fun m!7645586 () Bool)

(assert (=> b!6940432 m!7645586))

(assert (=> b!6940432 m!7645582))

(declare-fun m!7645588 () Bool)

(assert (=> b!6940432 m!7645588))

(assert (=> b!6939802 d!2167628))

(declare-fun d!2167630 () Bool)

(assert (=> d!2167630 (isDefined!13434 (findConcatSeparation!3147 lt!2475482 r3!135 Nil!66593 s!14361 s!14361))))

(declare-fun lt!2475658 () Unit!160652)

(assert (=> d!2167630 (= lt!2475658 (choose!51705 lt!2475482 r3!135 lt!2475455 (_2!37124 lt!2475472) s!14361 Nil!66593 s!14361))))

(assert (=> d!2167630 (validRegex!8670 lt!2475482)))

(assert (=> d!2167630 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!107 lt!2475482 r3!135 lt!2475455 (_2!37124 lt!2475472) s!14361 Nil!66593 s!14361) lt!2475658)))

(declare-fun bs!1854522 () Bool)

(assert (= bs!1854522 d!2167630))

(assert (=> bs!1854522 m!7645054))

(assert (=> bs!1854522 m!7645054))

(assert (=> bs!1854522 m!7645056))

(declare-fun m!7645590 () Bool)

(assert (=> bs!1854522 m!7645590))

(assert (=> bs!1854522 m!7645062))

(assert (=> b!6939802 d!2167630))

(declare-fun d!2167632 () Bool)

(assert (=> d!2167632 (= (Exists!3964 lambda!395321) (choose!51702 lambda!395321))))

(declare-fun bs!1854523 () Bool)

(assert (= bs!1854523 d!2167632))

(declare-fun m!7645592 () Bool)

(assert (=> bs!1854523 m!7645592))

(assert (=> b!6939802 d!2167632))

(declare-fun b!6940433 () Bool)

(declare-fun e!4175269 () Bool)

(declare-fun e!4175266 () Bool)

(assert (=> b!6940433 (= e!4175269 e!4175266)))

(declare-fun res!2831142 () Bool)

(assert (=> b!6940433 (= res!2831142 (not (nullable!6781 (reg!17293 lt!2475482))))))

(assert (=> b!6940433 (=> (not res!2831142) (not e!4175266))))

(declare-fun bm!630529 () Bool)

(declare-fun call!630536 () Bool)

(declare-fun c!1287833 () Bool)

(assert (=> bm!630529 (= call!630536 (validRegex!8670 (ite c!1287833 (regOne!34441 lt!2475482) (regTwo!34440 lt!2475482))))))

(declare-fun b!6940434 () Bool)

(declare-fun call!630534 () Bool)

(assert (=> b!6940434 (= e!4175266 call!630534)))

(declare-fun b!6940435 () Bool)

(declare-fun res!2831141 () Bool)

(declare-fun e!4175265 () Bool)

(assert (=> b!6940435 (=> res!2831141 e!4175265)))

(assert (=> b!6940435 (= res!2831141 (not (is-Concat!25809 lt!2475482)))))

(declare-fun e!4175270 () Bool)

(assert (=> b!6940435 (= e!4175270 e!4175265)))

(declare-fun b!6940437 () Bool)

(declare-fun e!4175267 () Bool)

(assert (=> b!6940437 (= e!4175267 call!630536)))

(declare-fun b!6940438 () Bool)

(declare-fun e!4175268 () Bool)

(declare-fun call!630535 () Bool)

(assert (=> b!6940438 (= e!4175268 call!630535)))

(declare-fun b!6940439 () Bool)

(assert (=> b!6940439 (= e!4175269 e!4175270)))

(assert (=> b!6940439 (= c!1287833 (is-Union!16964 lt!2475482))))

(declare-fun c!1287832 () Bool)

(declare-fun bm!630530 () Bool)

(assert (=> bm!630530 (= call!630534 (validRegex!8670 (ite c!1287832 (reg!17293 lt!2475482) (ite c!1287833 (regTwo!34441 lt!2475482) (regOne!34440 lt!2475482)))))))

(declare-fun bm!630531 () Bool)

(assert (=> bm!630531 (= call!630535 call!630534)))

(declare-fun b!6940436 () Bool)

(declare-fun res!2831144 () Bool)

(assert (=> b!6940436 (=> (not res!2831144) (not e!4175268))))

(assert (=> b!6940436 (= res!2831144 call!630536)))

(assert (=> b!6940436 (= e!4175270 e!4175268)))

(declare-fun d!2167634 () Bool)

(declare-fun res!2831140 () Bool)

(declare-fun e!4175264 () Bool)

(assert (=> d!2167634 (=> res!2831140 e!4175264)))

(assert (=> d!2167634 (= res!2831140 (is-ElementMatch!16964 lt!2475482))))

(assert (=> d!2167634 (= (validRegex!8670 lt!2475482) e!4175264)))

(declare-fun b!6940440 () Bool)

(assert (=> b!6940440 (= e!4175265 e!4175267)))

(declare-fun res!2831143 () Bool)

(assert (=> b!6940440 (=> (not res!2831143) (not e!4175267))))

(assert (=> b!6940440 (= res!2831143 call!630535)))

(declare-fun b!6940441 () Bool)

(assert (=> b!6940441 (= e!4175264 e!4175269)))

(assert (=> b!6940441 (= c!1287832 (is-Star!16964 lt!2475482))))

(assert (= (and d!2167634 (not res!2831140)) b!6940441))

(assert (= (and b!6940441 c!1287832) b!6940433))

(assert (= (and b!6940441 (not c!1287832)) b!6940439))

(assert (= (and b!6940433 res!2831142) b!6940434))

(assert (= (and b!6940439 c!1287833) b!6940436))

(assert (= (and b!6940439 (not c!1287833)) b!6940435))

(assert (= (and b!6940436 res!2831144) b!6940438))

(assert (= (and b!6940435 (not res!2831141)) b!6940440))

(assert (= (and b!6940440 res!2831143) b!6940437))

(assert (= (or b!6940436 b!6940437) bm!630529))

(assert (= (or b!6940438 b!6940440) bm!630531))

(assert (= (or b!6940434 bm!630531) bm!630530))

(declare-fun m!7645594 () Bool)

(assert (=> b!6940433 m!7645594))

(declare-fun m!7645596 () Bool)

(assert (=> bm!630529 m!7645596))

(declare-fun m!7645598 () Bool)

(assert (=> bm!630530 m!7645598))

(assert (=> b!6939802 d!2167634))

(declare-fun b!6940446 () Bool)

(declare-fun e!4175278 () Bool)

(declare-fun e!4175275 () Bool)

(assert (=> b!6940446 (= e!4175278 e!4175275)))

(declare-fun res!2831151 () Bool)

(assert (=> b!6940446 (= res!2831151 (not (nullable!6781 (reg!17293 r3!135))))))

(assert (=> b!6940446 (=> (not res!2831151) (not e!4175275))))

(declare-fun bm!630532 () Bool)

(declare-fun call!630539 () Bool)

(declare-fun c!1287835 () Bool)

(assert (=> bm!630532 (= call!630539 (validRegex!8670 (ite c!1287835 (regOne!34441 r3!135) (regTwo!34440 r3!135))))))

(declare-fun b!6940447 () Bool)

(declare-fun call!630537 () Bool)

(assert (=> b!6940447 (= e!4175275 call!630537)))

(declare-fun b!6940448 () Bool)

(declare-fun res!2831150 () Bool)

(declare-fun e!4175274 () Bool)

(assert (=> b!6940448 (=> res!2831150 e!4175274)))

(assert (=> b!6940448 (= res!2831150 (not (is-Concat!25809 r3!135)))))

(declare-fun e!4175279 () Bool)

(assert (=> b!6940448 (= e!4175279 e!4175274)))

(declare-fun b!6940450 () Bool)

(declare-fun e!4175276 () Bool)

(assert (=> b!6940450 (= e!4175276 call!630539)))

(declare-fun b!6940451 () Bool)

(declare-fun e!4175277 () Bool)

(declare-fun call!630538 () Bool)

(assert (=> b!6940451 (= e!4175277 call!630538)))

(declare-fun b!6940452 () Bool)

(assert (=> b!6940452 (= e!4175278 e!4175279)))

(assert (=> b!6940452 (= c!1287835 (is-Union!16964 r3!135))))

(declare-fun bm!630533 () Bool)

(declare-fun c!1287834 () Bool)

(assert (=> bm!630533 (= call!630537 (validRegex!8670 (ite c!1287834 (reg!17293 r3!135) (ite c!1287835 (regTwo!34441 r3!135) (regOne!34440 r3!135)))))))

(declare-fun bm!630534 () Bool)

(assert (=> bm!630534 (= call!630538 call!630537)))

(declare-fun b!6940449 () Bool)

(declare-fun res!2831153 () Bool)

(assert (=> b!6940449 (=> (not res!2831153) (not e!4175277))))

(assert (=> b!6940449 (= res!2831153 call!630539)))

(assert (=> b!6940449 (= e!4175279 e!4175277)))

(declare-fun d!2167636 () Bool)

(declare-fun res!2831149 () Bool)

(declare-fun e!4175273 () Bool)

(assert (=> d!2167636 (=> res!2831149 e!4175273)))

(assert (=> d!2167636 (= res!2831149 (is-ElementMatch!16964 r3!135))))

(assert (=> d!2167636 (= (validRegex!8670 r3!135) e!4175273)))

(declare-fun b!6940453 () Bool)

(assert (=> b!6940453 (= e!4175274 e!4175276)))

(declare-fun res!2831152 () Bool)

(assert (=> b!6940453 (=> (not res!2831152) (not e!4175276))))

(assert (=> b!6940453 (= res!2831152 call!630538)))

(declare-fun b!6940454 () Bool)

(assert (=> b!6940454 (= e!4175273 e!4175278)))

(assert (=> b!6940454 (= c!1287834 (is-Star!16964 r3!135))))

(assert (= (and d!2167636 (not res!2831149)) b!6940454))

(assert (= (and b!6940454 c!1287834) b!6940446))

(assert (= (and b!6940454 (not c!1287834)) b!6940452))

(assert (= (and b!6940446 res!2831151) b!6940447))

(assert (= (and b!6940452 c!1287835) b!6940449))

(assert (= (and b!6940452 (not c!1287835)) b!6940448))

(assert (= (and b!6940449 res!2831153) b!6940451))

(assert (= (and b!6940448 (not res!2831150)) b!6940453))

(assert (= (and b!6940453 res!2831152) b!6940450))

(assert (= (or b!6940449 b!6940450) bm!630532))

(assert (= (or b!6940451 b!6940453) bm!630534))

(assert (= (or b!6940447 bm!630534) bm!630533))

(declare-fun m!7645600 () Bool)

(assert (=> b!6940446 m!7645600))

(declare-fun m!7645602 () Bool)

(assert (=> bm!630532 m!7645602))

(declare-fun m!7645604 () Bool)

(assert (=> bm!630533 m!7645604))

(assert (=> b!6939792 d!2167636))

(declare-fun d!2167638 () Bool)

(assert (=> d!2167638 (= (isDefined!13434 lt!2475476) (not (isEmpty!38865 lt!2475476)))))

(declare-fun bs!1854524 () Bool)

(assert (= bs!1854524 d!2167638))

(declare-fun m!7645606 () Bool)

(assert (=> bs!1854524 m!7645606))

(assert (=> b!6939804 d!2167638))

(declare-fun b!6940455 () Bool)

(declare-fun e!4175280 () Option!16733)

(assert (=> b!6940455 (= e!4175280 (Some!16732 (tuple2!67643 Nil!66593 s!14361)))))

(declare-fun b!6940456 () Bool)

(declare-fun e!4175281 () Bool)

(declare-fun lt!2475659 () Option!16733)

(assert (=> b!6940456 (= e!4175281 (not (isDefined!13434 lt!2475659)))))

(declare-fun d!2167640 () Bool)

(assert (=> d!2167640 e!4175281))

(declare-fun res!2831155 () Bool)

(assert (=> d!2167640 (=> res!2831155 e!4175281)))

(declare-fun e!4175284 () Bool)

(assert (=> d!2167640 (= res!2831155 e!4175284)))

(declare-fun res!2831156 () Bool)

(assert (=> d!2167640 (=> (not res!2831156) (not e!4175284))))

(assert (=> d!2167640 (= res!2831156 (isDefined!13434 lt!2475659))))

(assert (=> d!2167640 (= lt!2475659 e!4175280)))

(declare-fun c!1287836 () Bool)

(declare-fun e!4175282 () Bool)

(assert (=> d!2167640 (= c!1287836 e!4175282)))

(declare-fun res!2831158 () Bool)

(assert (=> d!2167640 (=> (not res!2831158) (not e!4175282))))

(assert (=> d!2167640 (= res!2831158 (matchR!9103 r1!6342 Nil!66593))))

(assert (=> d!2167640 (validRegex!8670 r1!6342)))

(assert (=> d!2167640 (= (findConcatSeparation!3147 r1!6342 lt!2475478 Nil!66593 s!14361 s!14361) lt!2475659)))

(declare-fun b!6940457 () Bool)

(declare-fun e!4175283 () Option!16733)

(assert (=> b!6940457 (= e!4175280 e!4175283)))

(declare-fun c!1287837 () Bool)

(assert (=> b!6940457 (= c!1287837 (is-Nil!66593 s!14361))))

(declare-fun b!6940458 () Bool)

(assert (=> b!6940458 (= e!4175282 (matchR!9103 lt!2475478 s!14361))))

(declare-fun b!6940459 () Bool)

(declare-fun res!2831157 () Bool)

(assert (=> b!6940459 (=> (not res!2831157) (not e!4175284))))

(assert (=> b!6940459 (= res!2831157 (matchR!9103 lt!2475478 (_2!37124 (get!23383 lt!2475659))))))

(declare-fun b!6940460 () Bool)

(declare-fun res!2831154 () Bool)

(assert (=> b!6940460 (=> (not res!2831154) (not e!4175284))))

(assert (=> b!6940460 (= res!2831154 (matchR!9103 r1!6342 (_1!37124 (get!23383 lt!2475659))))))

(declare-fun b!6940461 () Bool)

(assert (=> b!6940461 (= e!4175284 (= (++!15003 (_1!37124 (get!23383 lt!2475659)) (_2!37124 (get!23383 lt!2475659))) s!14361))))

(declare-fun b!6940462 () Bool)

(assert (=> b!6940462 (= e!4175283 None!16732)))

(declare-fun b!6940463 () Bool)

(declare-fun lt!2475660 () Unit!160652)

(declare-fun lt!2475661 () Unit!160652)

(assert (=> b!6940463 (= lt!2475660 lt!2475661)))

(assert (=> b!6940463 (= (++!15003 (++!15003 Nil!66593 (Cons!66593 (h!73041 s!14361) Nil!66593)) (t!380460 s!14361)) s!14361)))

(assert (=> b!6940463 (= lt!2475661 (lemmaMoveElementToOtherListKeepsConcatEq!2860 Nil!66593 (h!73041 s!14361) (t!380460 s!14361) s!14361))))

(assert (=> b!6940463 (= e!4175283 (findConcatSeparation!3147 r1!6342 lt!2475478 (++!15003 Nil!66593 (Cons!66593 (h!73041 s!14361) Nil!66593)) (t!380460 s!14361) s!14361))))

(assert (= (and d!2167640 res!2831158) b!6940458))

(assert (= (and d!2167640 c!1287836) b!6940455))

(assert (= (and d!2167640 (not c!1287836)) b!6940457))

(assert (= (and b!6940457 c!1287837) b!6940462))

(assert (= (and b!6940457 (not c!1287837)) b!6940463))

(assert (= (and d!2167640 res!2831156) b!6940460))

(assert (= (and b!6940460 res!2831154) b!6940459))

(assert (= (and b!6940459 res!2831157) b!6940461))

(assert (= (and d!2167640 (not res!2831155)) b!6940456))

(declare-fun m!7645608 () Bool)

(assert (=> b!6940460 m!7645608))

(declare-fun m!7645610 () Bool)

(assert (=> b!6940460 m!7645610))

(declare-fun m!7645612 () Bool)

(assert (=> d!2167640 m!7645612))

(assert (=> d!2167640 m!7645288))

(assert (=> d!2167640 m!7645020))

(assert (=> b!6940459 m!7645608))

(declare-fun m!7645614 () Bool)

(assert (=> b!6940459 m!7645614))

(assert (=> b!6940461 m!7645608))

(declare-fun m!7645616 () Bool)

(assert (=> b!6940461 m!7645616))

(assert (=> b!6940456 m!7645612))

(declare-fun m!7645618 () Bool)

(assert (=> b!6940458 m!7645618))

(assert (=> b!6940463 m!7645582))

(assert (=> b!6940463 m!7645582))

(assert (=> b!6940463 m!7645584))

(assert (=> b!6940463 m!7645586))

(assert (=> b!6940463 m!7645582))

(declare-fun m!7645620 () Bool)

(assert (=> b!6940463 m!7645620))

(assert (=> b!6939804 d!2167640))

(declare-fun b!6940475 () Bool)

(declare-fun e!4175287 () Bool)

(declare-fun tp!1913024 () Bool)

(declare-fun tp!1913023 () Bool)

(assert (=> b!6940475 (= e!4175287 (and tp!1913024 tp!1913023))))

(assert (=> b!6939785 (= tp!1912952 e!4175287)))

(declare-fun b!6940474 () Bool)

(assert (=> b!6940474 (= e!4175287 tp_is_empty!43153)))

(declare-fun b!6940477 () Bool)

(declare-fun tp!1913026 () Bool)

(declare-fun tp!1913022 () Bool)

(assert (=> b!6940477 (= e!4175287 (and tp!1913026 tp!1913022))))

(declare-fun b!6940476 () Bool)

(declare-fun tp!1913025 () Bool)

(assert (=> b!6940476 (= e!4175287 tp!1913025)))

(assert (= (and b!6939785 (is-ElementMatch!16964 (reg!17293 r3!135))) b!6940474))

(assert (= (and b!6939785 (is-Concat!25809 (reg!17293 r3!135))) b!6940475))

(assert (= (and b!6939785 (is-Star!16964 (reg!17293 r3!135))) b!6940476))

(assert (= (and b!6939785 (is-Union!16964 (reg!17293 r3!135))) b!6940477))

(declare-fun b!6940482 () Bool)

(declare-fun e!4175290 () Bool)

(declare-fun tp!1913029 () Bool)

(assert (=> b!6940482 (= e!4175290 (and tp_is_empty!43153 tp!1913029))))

(assert (=> b!6939801 (= tp!1912955 e!4175290)))

(assert (= (and b!6939801 (is-Cons!66593 (t!380460 s!14361))) b!6940482))

(declare-fun b!6940484 () Bool)

(declare-fun e!4175291 () Bool)

(declare-fun tp!1913032 () Bool)

(declare-fun tp!1913031 () Bool)

(assert (=> b!6940484 (= e!4175291 (and tp!1913032 tp!1913031))))

(assert (=> b!6939791 (= tp!1912958 e!4175291)))

(declare-fun b!6940483 () Bool)

(assert (=> b!6940483 (= e!4175291 tp_is_empty!43153)))

(declare-fun b!6940486 () Bool)

(declare-fun tp!1913034 () Bool)

(declare-fun tp!1913030 () Bool)

(assert (=> b!6940486 (= e!4175291 (and tp!1913034 tp!1913030))))

(declare-fun b!6940485 () Bool)

(declare-fun tp!1913033 () Bool)

(assert (=> b!6940485 (= e!4175291 tp!1913033)))

(assert (= (and b!6939791 (is-ElementMatch!16964 (regOne!34440 r2!6280))) b!6940483))

(assert (= (and b!6939791 (is-Concat!25809 (regOne!34440 r2!6280))) b!6940484))

(assert (= (and b!6939791 (is-Star!16964 (regOne!34440 r2!6280))) b!6940485))

(assert (= (and b!6939791 (is-Union!16964 (regOne!34440 r2!6280))) b!6940486))

(declare-fun b!6940488 () Bool)

(declare-fun e!4175292 () Bool)

(declare-fun tp!1913037 () Bool)

(declare-fun tp!1913036 () Bool)

(assert (=> b!6940488 (= e!4175292 (and tp!1913037 tp!1913036))))

(assert (=> b!6939791 (= tp!1912962 e!4175292)))

(declare-fun b!6940487 () Bool)

(assert (=> b!6940487 (= e!4175292 tp_is_empty!43153)))

(declare-fun b!6940490 () Bool)

(declare-fun tp!1913039 () Bool)

(declare-fun tp!1913035 () Bool)

(assert (=> b!6940490 (= e!4175292 (and tp!1913039 tp!1913035))))

(declare-fun b!6940489 () Bool)

(declare-fun tp!1913038 () Bool)

(assert (=> b!6940489 (= e!4175292 tp!1913038)))

(assert (= (and b!6939791 (is-ElementMatch!16964 (regTwo!34440 r2!6280))) b!6940487))

(assert (= (and b!6939791 (is-Concat!25809 (regTwo!34440 r2!6280))) b!6940488))

(assert (= (and b!6939791 (is-Star!16964 (regTwo!34440 r2!6280))) b!6940489))

(assert (= (and b!6939791 (is-Union!16964 (regTwo!34440 r2!6280))) b!6940490))

(declare-fun b!6940492 () Bool)

(declare-fun e!4175293 () Bool)

(declare-fun tp!1913042 () Bool)

(declare-fun tp!1913041 () Bool)

(assert (=> b!6940492 (= e!4175293 (and tp!1913042 tp!1913041))))

(assert (=> b!6939786 (= tp!1912954 e!4175293)))

(declare-fun b!6940491 () Bool)

(assert (=> b!6940491 (= e!4175293 tp_is_empty!43153)))

(declare-fun b!6940494 () Bool)

(declare-fun tp!1913044 () Bool)

(declare-fun tp!1913040 () Bool)

(assert (=> b!6940494 (= e!4175293 (and tp!1913044 tp!1913040))))

(declare-fun b!6940493 () Bool)

(declare-fun tp!1913043 () Bool)

(assert (=> b!6940493 (= e!4175293 tp!1913043)))

(assert (= (and b!6939786 (is-ElementMatch!16964 (regOne!34440 r3!135))) b!6940491))

(assert (= (and b!6939786 (is-Concat!25809 (regOne!34440 r3!135))) b!6940492))

(assert (= (and b!6939786 (is-Star!16964 (regOne!34440 r3!135))) b!6940493))

(assert (= (and b!6939786 (is-Union!16964 (regOne!34440 r3!135))) b!6940494))

(declare-fun b!6940496 () Bool)

(declare-fun e!4175294 () Bool)

(declare-fun tp!1913047 () Bool)

(declare-fun tp!1913046 () Bool)

(assert (=> b!6940496 (= e!4175294 (and tp!1913047 tp!1913046))))

(assert (=> b!6939786 (= tp!1912960 e!4175294)))

(declare-fun b!6940495 () Bool)

(assert (=> b!6940495 (= e!4175294 tp_is_empty!43153)))

(declare-fun b!6940498 () Bool)

(declare-fun tp!1913049 () Bool)

(declare-fun tp!1913045 () Bool)

(assert (=> b!6940498 (= e!4175294 (and tp!1913049 tp!1913045))))

(declare-fun b!6940497 () Bool)

(declare-fun tp!1913048 () Bool)

(assert (=> b!6940497 (= e!4175294 tp!1913048)))

(assert (= (and b!6939786 (is-ElementMatch!16964 (regTwo!34440 r3!135))) b!6940495))

(assert (= (and b!6939786 (is-Concat!25809 (regTwo!34440 r3!135))) b!6940496))

(assert (= (and b!6939786 (is-Star!16964 (regTwo!34440 r3!135))) b!6940497))

(assert (= (and b!6939786 (is-Union!16964 (regTwo!34440 r3!135))) b!6940498))

(declare-fun b!6940500 () Bool)

(declare-fun e!4175295 () Bool)

(declare-fun tp!1913052 () Bool)

(declare-fun tp!1913051 () Bool)

(assert (=> b!6940500 (= e!4175295 (and tp!1913052 tp!1913051))))

(assert (=> b!6939803 (= tp!1912953 e!4175295)))

(declare-fun b!6940499 () Bool)

(assert (=> b!6940499 (= e!4175295 tp_is_empty!43153)))

(declare-fun b!6940502 () Bool)

(declare-fun tp!1913054 () Bool)

(declare-fun tp!1913050 () Bool)

(assert (=> b!6940502 (= e!4175295 (and tp!1913054 tp!1913050))))

(declare-fun b!6940501 () Bool)

(declare-fun tp!1913053 () Bool)

(assert (=> b!6940501 (= e!4175295 tp!1913053)))

(assert (= (and b!6939803 (is-ElementMatch!16964 (regOne!34441 r3!135))) b!6940499))

(assert (= (and b!6939803 (is-Concat!25809 (regOne!34441 r3!135))) b!6940500))

(assert (= (and b!6939803 (is-Star!16964 (regOne!34441 r3!135))) b!6940501))

(assert (= (and b!6939803 (is-Union!16964 (regOne!34441 r3!135))) b!6940502))

(declare-fun b!6940504 () Bool)

(declare-fun e!4175296 () Bool)

(declare-fun tp!1913057 () Bool)

(declare-fun tp!1913056 () Bool)

(assert (=> b!6940504 (= e!4175296 (and tp!1913057 tp!1913056))))

(assert (=> b!6939803 (= tp!1912957 e!4175296)))

(declare-fun b!6940503 () Bool)

(assert (=> b!6940503 (= e!4175296 tp_is_empty!43153)))

(declare-fun b!6940506 () Bool)

(declare-fun tp!1913059 () Bool)

(declare-fun tp!1913055 () Bool)

(assert (=> b!6940506 (= e!4175296 (and tp!1913059 tp!1913055))))

(declare-fun b!6940505 () Bool)

(declare-fun tp!1913058 () Bool)

(assert (=> b!6940505 (= e!4175296 tp!1913058)))

(assert (= (and b!6939803 (is-ElementMatch!16964 (regTwo!34441 r3!135))) b!6940503))

(assert (= (and b!6939803 (is-Concat!25809 (regTwo!34441 r3!135))) b!6940504))

(assert (= (and b!6939803 (is-Star!16964 (regTwo!34441 r3!135))) b!6940505))

(assert (= (and b!6939803 (is-Union!16964 (regTwo!34441 r3!135))) b!6940506))

(declare-fun b!6940508 () Bool)

(declare-fun e!4175297 () Bool)

(declare-fun tp!1913062 () Bool)

(declare-fun tp!1913061 () Bool)

(assert (=> b!6940508 (= e!4175297 (and tp!1913062 tp!1913061))))

(assert (=> b!6939793 (= tp!1912949 e!4175297)))

(declare-fun b!6940507 () Bool)

(assert (=> b!6940507 (= e!4175297 tp_is_empty!43153)))

(declare-fun b!6940510 () Bool)

(declare-fun tp!1913064 () Bool)

(declare-fun tp!1913060 () Bool)

(assert (=> b!6940510 (= e!4175297 (and tp!1913064 tp!1913060))))

(declare-fun b!6940509 () Bool)

(declare-fun tp!1913063 () Bool)

(assert (=> b!6940509 (= e!4175297 tp!1913063)))

(assert (= (and b!6939793 (is-ElementMatch!16964 (reg!17293 r1!6342))) b!6940507))

(assert (= (and b!6939793 (is-Concat!25809 (reg!17293 r1!6342))) b!6940508))

(assert (= (and b!6939793 (is-Star!16964 (reg!17293 r1!6342))) b!6940509))

(assert (= (and b!6939793 (is-Union!16964 (reg!17293 r1!6342))) b!6940510))

(declare-fun b!6940512 () Bool)

(declare-fun e!4175298 () Bool)

(declare-fun tp!1913067 () Bool)

(declare-fun tp!1913066 () Bool)

(assert (=> b!6940512 (= e!4175298 (and tp!1913067 tp!1913066))))

(assert (=> b!6939798 (= tp!1912956 e!4175298)))

(declare-fun b!6940511 () Bool)

(assert (=> b!6940511 (= e!4175298 tp_is_empty!43153)))

(declare-fun b!6940514 () Bool)

(declare-fun tp!1913069 () Bool)

(declare-fun tp!1913065 () Bool)

(assert (=> b!6940514 (= e!4175298 (and tp!1913069 tp!1913065))))

(declare-fun b!6940513 () Bool)

(declare-fun tp!1913068 () Bool)

(assert (=> b!6940513 (= e!4175298 tp!1913068)))

(assert (= (and b!6939798 (is-ElementMatch!16964 (reg!17293 r2!6280))) b!6940511))

(assert (= (and b!6939798 (is-Concat!25809 (reg!17293 r2!6280))) b!6940512))

(assert (= (and b!6939798 (is-Star!16964 (reg!17293 r2!6280))) b!6940513))

(assert (= (and b!6939798 (is-Union!16964 (reg!17293 r2!6280))) b!6940514))

(declare-fun b!6940516 () Bool)

(declare-fun e!4175299 () Bool)

(declare-fun tp!1913072 () Bool)

(declare-fun tp!1913071 () Bool)

(assert (=> b!6940516 (= e!4175299 (and tp!1913072 tp!1913071))))

(assert (=> b!6939782 (= tp!1912950 e!4175299)))

(declare-fun b!6940515 () Bool)

(assert (=> b!6940515 (= e!4175299 tp_is_empty!43153)))

(declare-fun b!6940518 () Bool)

(declare-fun tp!1913074 () Bool)

(declare-fun tp!1913070 () Bool)

(assert (=> b!6940518 (= e!4175299 (and tp!1913074 tp!1913070))))

(declare-fun b!6940517 () Bool)

(declare-fun tp!1913073 () Bool)

(assert (=> b!6940517 (= e!4175299 tp!1913073)))

(assert (= (and b!6939782 (is-ElementMatch!16964 (regOne!34441 r1!6342))) b!6940515))

(assert (= (and b!6939782 (is-Concat!25809 (regOne!34441 r1!6342))) b!6940516))

(assert (= (and b!6939782 (is-Star!16964 (regOne!34441 r1!6342))) b!6940517))

(assert (= (and b!6939782 (is-Union!16964 (regOne!34441 r1!6342))) b!6940518))

(declare-fun b!6940520 () Bool)

(declare-fun e!4175300 () Bool)

(declare-fun tp!1913077 () Bool)

(declare-fun tp!1913076 () Bool)

(assert (=> b!6940520 (= e!4175300 (and tp!1913077 tp!1913076))))

(assert (=> b!6939782 (= tp!1912959 e!4175300)))

(declare-fun b!6940519 () Bool)

(assert (=> b!6940519 (= e!4175300 tp_is_empty!43153)))

(declare-fun b!6940522 () Bool)

(declare-fun tp!1913079 () Bool)

(declare-fun tp!1913075 () Bool)

(assert (=> b!6940522 (= e!4175300 (and tp!1913079 tp!1913075))))

(declare-fun b!6940521 () Bool)

(declare-fun tp!1913078 () Bool)

(assert (=> b!6940521 (= e!4175300 tp!1913078)))

(assert (= (and b!6939782 (is-ElementMatch!16964 (regTwo!34441 r1!6342))) b!6940519))

(assert (= (and b!6939782 (is-Concat!25809 (regTwo!34441 r1!6342))) b!6940520))

(assert (= (and b!6939782 (is-Star!16964 (regTwo!34441 r1!6342))) b!6940521))

(assert (= (and b!6939782 (is-Union!16964 (regTwo!34441 r1!6342))) b!6940522))

(declare-fun b!6940524 () Bool)

(declare-fun e!4175301 () Bool)

(declare-fun tp!1913082 () Bool)

(declare-fun tp!1913081 () Bool)

(assert (=> b!6940524 (= e!4175301 (and tp!1913082 tp!1913081))))

(assert (=> b!6939799 (= tp!1912963 e!4175301)))

(declare-fun b!6940523 () Bool)

(assert (=> b!6940523 (= e!4175301 tp_is_empty!43153)))

(declare-fun b!6940526 () Bool)

(declare-fun tp!1913084 () Bool)

(declare-fun tp!1913080 () Bool)

(assert (=> b!6940526 (= e!4175301 (and tp!1913084 tp!1913080))))

(declare-fun b!6940525 () Bool)

(declare-fun tp!1913083 () Bool)

(assert (=> b!6940525 (= e!4175301 tp!1913083)))

(assert (= (and b!6939799 (is-ElementMatch!16964 (regOne!34440 r1!6342))) b!6940523))

(assert (= (and b!6939799 (is-Concat!25809 (regOne!34440 r1!6342))) b!6940524))

(assert (= (and b!6939799 (is-Star!16964 (regOne!34440 r1!6342))) b!6940525))

(assert (= (and b!6939799 (is-Union!16964 (regOne!34440 r1!6342))) b!6940526))

(declare-fun b!6940528 () Bool)

(declare-fun e!4175302 () Bool)

(declare-fun tp!1913087 () Bool)

(declare-fun tp!1913086 () Bool)

(assert (=> b!6940528 (= e!4175302 (and tp!1913087 tp!1913086))))

(assert (=> b!6939799 (= tp!1912961 e!4175302)))

(declare-fun b!6940527 () Bool)

(assert (=> b!6940527 (= e!4175302 tp_is_empty!43153)))

(declare-fun b!6940530 () Bool)

(declare-fun tp!1913089 () Bool)

(declare-fun tp!1913085 () Bool)

(assert (=> b!6940530 (= e!4175302 (and tp!1913089 tp!1913085))))

(declare-fun b!6940529 () Bool)

(declare-fun tp!1913088 () Bool)

(assert (=> b!6940529 (= e!4175302 tp!1913088)))

(assert (= (and b!6939799 (is-ElementMatch!16964 (regTwo!34440 r1!6342))) b!6940527))

(assert (= (and b!6939799 (is-Concat!25809 (regTwo!34440 r1!6342))) b!6940528))

(assert (= (and b!6939799 (is-Star!16964 (regTwo!34440 r1!6342))) b!6940529))

(assert (= (and b!6939799 (is-Union!16964 (regTwo!34440 r1!6342))) b!6940530))

(declare-fun b!6940532 () Bool)

(declare-fun e!4175303 () Bool)

(declare-fun tp!1913092 () Bool)

(declare-fun tp!1913091 () Bool)

(assert (=> b!6940532 (= e!4175303 (and tp!1913092 tp!1913091))))

(assert (=> b!6939783 (= tp!1912951 e!4175303)))

(declare-fun b!6940531 () Bool)

(assert (=> b!6940531 (= e!4175303 tp_is_empty!43153)))

(declare-fun b!6940534 () Bool)

(declare-fun tp!1913094 () Bool)

(declare-fun tp!1913090 () Bool)

(assert (=> b!6940534 (= e!4175303 (and tp!1913094 tp!1913090))))

(declare-fun b!6940533 () Bool)

(declare-fun tp!1913093 () Bool)

(assert (=> b!6940533 (= e!4175303 tp!1913093)))

(assert (= (and b!6939783 (is-ElementMatch!16964 (regOne!34441 r2!6280))) b!6940531))

(assert (= (and b!6939783 (is-Concat!25809 (regOne!34441 r2!6280))) b!6940532))

(assert (= (and b!6939783 (is-Star!16964 (regOne!34441 r2!6280))) b!6940533))

(assert (= (and b!6939783 (is-Union!16964 (regOne!34441 r2!6280))) b!6940534))

(declare-fun b!6940536 () Bool)

(declare-fun e!4175304 () Bool)

(declare-fun tp!1913097 () Bool)

(declare-fun tp!1913096 () Bool)

(assert (=> b!6940536 (= e!4175304 (and tp!1913097 tp!1913096))))

(assert (=> b!6939783 (= tp!1912948 e!4175304)))

(declare-fun b!6940535 () Bool)

(assert (=> b!6940535 (= e!4175304 tp_is_empty!43153)))

(declare-fun b!6940538 () Bool)

(declare-fun tp!1913099 () Bool)

(declare-fun tp!1913095 () Bool)

(assert (=> b!6940538 (= e!4175304 (and tp!1913099 tp!1913095))))

(declare-fun b!6940537 () Bool)

(declare-fun tp!1913098 () Bool)

(assert (=> b!6940537 (= e!4175304 tp!1913098)))

(assert (= (and b!6939783 (is-ElementMatch!16964 (regTwo!34441 r2!6280))) b!6940535))

(assert (= (and b!6939783 (is-Concat!25809 (regTwo!34441 r2!6280))) b!6940536))

(assert (= (and b!6939783 (is-Star!16964 (regTwo!34441 r2!6280))) b!6940537))

(assert (= (and b!6939783 (is-Union!16964 (regTwo!34441 r2!6280))) b!6940538))

(push 1)

(assert (not bm!630532))

(assert (not b!6940458))

(assert (not b!6940493))

(assert (not d!2167608))

(assert (not b!6940533))

(assert (not bm!630521))

(assert (not b!6940477))

(assert (not b!6940345))

(assert (not d!2167542))

(assert (not b!6940410))

(assert (not d!2167556))

(assert (not b!6939976))

(assert (not b!6940423))

(assert (not bm!630504))

(assert (not b!6940522))

(assert (not b!6940225))

(assert (not b!6940506))

(assert (not b!6940517))

(assert (not b!6940536))

(assert (not b!6940429))

(assert (not b!6940526))

(assert (not b!6940427))

(assert (not b!6940110))

(assert (not b!6940485))

(assert (not d!2167610))

(assert (not b!6940326))

(assert (not bm!630489))

(assert (not b!6939999))

(assert (not b!6940521))

(assert (not b!6940508))

(assert (not b!6940475))

(assert (not b!6939975))

(assert (not b!6940167))

(assert (not b!6940484))

(assert (not bm!630522))

(assert (not b!6940420))

(assert (not b!6940207))

(assert (not d!2167532))

(assert (not b!6940498))

(assert (not b!6940513))

(assert (not d!2167600))

(assert (not d!2167534))

(assert (not b!6939966))

(assert (not b!6940269))

(assert (not b!6940500))

(assert (not b!6940371))

(assert (not b!6940370))

(assert (not bm!630525))

(assert (not b!6940486))

(assert (not b!6940275))

(assert (not d!2167544))

(assert (not d!2167512))

(assert (not b!6940002))

(assert (not b!6940456))

(assert (not d!2167552))

(assert (not b!6940524))

(assert (not b!6940537))

(assert (not d!2167586))

(assert (not b!6939969))

(assert (not b!6940313))

(assert (not bm!630479))

(assert (not d!2167578))

(assert (not d!2167516))

(assert (not b!6940502))

(assert (not b!6940230))

(assert (not d!2167612))

(assert (not b!6940414))

(assert (not b!6940354))

(assert (not d!2167630))

(assert (not b!6940229))

(assert (not bm!630487))

(assert (not b!6940004))

(assert (not d!2167564))

(assert (not b!6940142))

(assert (not b!6940139))

(assert (not b!6940140))

(assert (not b!6940003))

(assert (not b!6940279))

(assert (not d!2167562))

(assert (not b!6940489))

(assert (not bm!630514))

(assert (not bm!630523))

(assert (not bm!630488))

(assert (not b!6940510))

(assert (not b!6940413))

(assert (not b!6940433))

(assert (not b!6940476))

(assert (not d!2167574))

(assert (not b!6940177))

(assert (not d!2167524))

(assert (not bm!630529))

(assert (not b!6940534))

(assert (not b!6940226))

(assert (not b!6940492))

(assert (not d!2167510))

(assert (not b!6940401))

(assert (not b!6940512))

(assert (not d!2167626))

(assert (not b!6940006))

(assert (not bm!630507))

(assert (not b!6940376))

(assert (not bm!630528))

(assert (not d!2167584))

(assert (not b!6940216))

(assert (not b!6940284))

(assert (not b!6940380))

(assert (not bm!630518))

(assert (not b!6940381))

(assert (not b!6940109))

(assert (not b!6940276))

(assert tp_is_empty!43153)

(assert (not b!6940174))

(assert (not bm!630530))

(assert (not d!2167514))

(assert (not b!6940324))

(assert (not b!6940367))

(assert (not b!6940348))

(assert (not d!2167536))

(assert (not b!6940282))

(assert (not b!6940281))

(assert (not b!6940419))

(assert (not b!6940490))

(assert (not b!6940520))

(assert (not b!6940518))

(assert (not bm!630495))

(assert (not d!2167540))

(assert (not b!6940516))

(assert (not bm!630520))

(assert (not d!2167590))

(assert (not b!6940153))

(assert (not b!6939979))

(assert (not d!2167638))

(assert (not bm!630519))

(assert (not b!6940232))

(assert (not d!2167546))

(assert (not b!6940383))

(assert (not d!2167602))

(assert (not b!6940432))

(assert (not b!6940168))

(assert (not b!6940155))

(assert (not b!6940530))

(assert (not b!6940461))

(assert (not b!6940173))

(assert (not d!2167624))

(assert (not b!6940525))

(assert (not b!6940358))

(assert (not b!6940315))

(assert (not d!2167554))

(assert (not b!6940141))

(assert (not b!6940504))

(assert (not b!6940528))

(assert (not bm!630509))

(assert (not b!6940355))

(assert (not d!2167530))

(assert (not bm!630515))

(assert (not b!6940505))

(assert (not d!2167548))

(assert (not b!6940459))

(assert (not b!6939970))

(assert (not b!6940087))

(assert (not b!6940377))

(assert (not d!2167538))

(assert (not b!6940425))

(assert (not b!6940532))

(assert (not bm!630517))

(assert (not b!6940085))

(assert (not d!2167632))

(assert (not b!6940482))

(assert (not b!6940310))

(assert (not bm!630524))

(assert (not b!6940219))

(assert (not d!2167558))

(assert (not b!6940446))

(assert (not b!6940430))

(assert (not b!6940147))

(assert (not b!6940428))

(assert (not b!6940529))

(assert (not b!6940463))

(assert (not b!6940311))

(assert (not b!6940349))

(assert (not b!6940220))

(assert (not b!6940286))

(assert (not b!6940137))

(assert (not bm!630526))

(assert (not b!6940514))

(assert (not b!6940270))

(assert (not bm!630508))

(assert (not b!6940146))

(assert (not bm!630505))

(assert (not b!6940164))

(assert (not d!2167566))

(assert (not d!2167588))

(assert (not bm!630490))

(assert (not b!6940001))

(assert (not b!6940538))

(assert (not bm!630513))

(assert (not d!2167622))

(assert (not d!2167628))

(assert (not d!2167614))

(assert (not b!6940460))

(assert (not b!6940497))

(assert (not b!6940494))

(assert (not d!2167640))

(assert (not b!6940496))

(assert (not d!2167520))

(assert (not b!6940144))

(assert (not b!6940266))

(assert (not b!6940501))

(assert (not bm!630533))

(assert (not b!6940509))

(assert (not b!6940488))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

