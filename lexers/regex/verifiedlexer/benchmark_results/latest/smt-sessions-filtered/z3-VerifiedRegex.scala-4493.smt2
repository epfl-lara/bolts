; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!238910 () Bool)

(assert start!238910)

(declare-fun b!2444346 () Bool)

(assert (=> b!2444346 true))

(assert (=> b!2444346 true))

(declare-fun lambda!92469 () Int)

(declare-fun lambda!92468 () Int)

(assert (=> b!2444346 (not (= lambda!92469 lambda!92468))))

(assert (=> b!2444346 true))

(assert (=> b!2444346 true))

(declare-fun b!2444334 () Bool)

(declare-fun e!1552437 () Bool)

(declare-fun tp!776657 () Bool)

(assert (=> b!2444334 (= e!1552437 tp!776657)))

(declare-fun b!2444335 () Bool)

(declare-fun e!1552434 () Bool)

(declare-fun tp!776659 () Bool)

(declare-fun tp!776653 () Bool)

(assert (=> b!2444335 (= e!1552434 (and tp!776659 tp!776653))))

(declare-fun b!2444336 () Bool)

(declare-fun tp!776652 () Bool)

(declare-fun tp!776658 () Bool)

(assert (=> b!2444336 (= e!1552437 (and tp!776652 tp!776658))))

(declare-fun b!2444337 () Bool)

(declare-fun e!1552432 () Bool)

(declare-fun tp_is_empty!11771 () Bool)

(declare-fun tp!776656 () Bool)

(assert (=> b!2444337 (= e!1552432 (and tp_is_empty!11771 tp!776656))))

(declare-fun b!2444338 () Bool)

(declare-fun e!1552440 () Bool)

(declare-fun lt!878586 () Bool)

(assert (=> b!2444338 (= e!1552440 (not lt!878586))))

(declare-datatypes ((Unit!41743 0))(
  ( (Unit!41744) )
))
(declare-fun lt!878582 () Unit!41743)

(declare-fun e!1552436 () Unit!41743)

(assert (=> b!2444338 (= lt!878582 e!1552436)))

(declare-fun c!390054 () Bool)

(assert (=> b!2444338 (= c!390054 lt!878586)))

(declare-datatypes ((C!14516 0))(
  ( (C!14517 (val!8500 Int)) )
))
(declare-datatypes ((List!28594 0))(
  ( (Nil!28496) (Cons!28496 (h!33897 C!14516) (t!208571 List!28594)) )
))
(declare-datatypes ((tuple2!28114 0))(
  ( (tuple2!28115 (_1!16598 List!28594) (_2!16598 List!28594)) )
))
(declare-datatypes ((Option!5668 0))(
  ( (None!5667) (Some!5667 (v!31075 tuple2!28114)) )
))
(declare-fun lt!878577 () Option!5668)

(declare-fun isDefined!4494 (Option!5668) Bool)

(assert (=> b!2444338 (= lt!878586 (isDefined!4494 lt!878577))))

(declare-datatypes ((Regex!7179 0))(
  ( (ElementMatch!7179 (c!390055 C!14516)) (Concat!11815 (regOne!14870 Regex!7179) (regTwo!14870 Regex!7179)) (EmptyExpr!7179) (Star!7179 (reg!7508 Regex!7179)) (EmptyLang!7179) (Union!7179 (regOne!14871 Regex!7179) (regTwo!14871 Regex!7179)) )
))
(declare-fun lt!878588 () Regex!7179)

(declare-fun s!9460 () List!28594)

(declare-fun findConcatSeparation!776 (Regex!7179 Regex!7179 List!28594 List!28594 List!28594) Option!5668)

(assert (=> b!2444338 (= lt!878577 (findConcatSeparation!776 lt!878588 EmptyExpr!7179 Nil!28496 s!9460 s!9460))))

(declare-fun b!2444339 () Bool)

(declare-fun e!1552433 () Bool)

(assert (=> b!2444339 (= e!1552433 false)))

(declare-fun b!2444340 () Bool)

(declare-fun res!1037255 () Bool)

(declare-fun e!1552435 () Bool)

(assert (=> b!2444340 (=> (not res!1037255) (not e!1552435))))

(declare-fun r!13927 () Regex!7179)

(declare-datatypes ((List!28595 0))(
  ( (Nil!28497) (Cons!28497 (h!33898 Regex!7179) (t!208572 List!28595)) )
))
(declare-fun l!9164 () List!28595)

(declare-fun generalisedConcat!280 (List!28595) Regex!7179)

(assert (=> b!2444340 (= res!1037255 (= r!13927 (generalisedConcat!280 l!9164)))))

(declare-fun b!2444341 () Bool)

(declare-fun res!1037254 () Bool)

(declare-fun e!1552438 () Bool)

(assert (=> b!2444341 (=> res!1037254 e!1552438)))

(declare-fun isEmpty!16537 (List!28595) Bool)

(assert (=> b!2444341 (= res!1037254 (isEmpty!16537 l!9164))))

(declare-fun b!2444343 () Bool)

(declare-fun tp!776654 () Bool)

(declare-fun tp!776655 () Bool)

(assert (=> b!2444343 (= e!1552437 (and tp!776654 tp!776655))))

(declare-fun b!2444344 () Bool)

(declare-fun e!1552439 () Bool)

(assert (=> b!2444344 (= e!1552439 e!1552440)))

(declare-fun res!1037256 () Bool)

(assert (=> b!2444344 (=> res!1037256 e!1552440)))

(declare-fun matchR!3294 (Regex!7179 List!28594) Bool)

(assert (=> b!2444344 (= res!1037256 (matchR!3294 lt!878588 s!9460))))

(declare-fun head!5547 (List!28595) Regex!7179)

(assert (=> b!2444344 (= lt!878588 (head!5547 l!9164))))

(declare-fun b!2444345 () Bool)

(assert (=> b!2444345 (= e!1552437 tp_is_empty!11771)))

(declare-fun e!1552431 () Bool)

(assert (=> b!2444346 (= e!1552431 e!1552438)))

(declare-fun res!1037253 () Bool)

(assert (=> b!2444346 (=> res!1037253 e!1552438)))

(declare-fun lt!878581 () Bool)

(declare-fun lt!878580 () Bool)

(assert (=> b!2444346 (= res!1037253 (not (= lt!878581 lt!878580)))))

(declare-fun Exists!1215 (Int) Bool)

(assert (=> b!2444346 (= (Exists!1215 lambda!92468) (Exists!1215 lambda!92469))))

(declare-fun lt!878578 () Unit!41743)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!460 (Regex!7179 Regex!7179 List!28594) Unit!41743)

(assert (=> b!2444346 (= lt!878578 (lemmaExistCutMatchRandMatchRSpecEquivalent!460 (regOne!14870 r!13927) (regTwo!14870 r!13927) s!9460))))

(assert (=> b!2444346 (= lt!878580 (Exists!1215 lambda!92468))))

(assert (=> b!2444346 (= lt!878580 (isDefined!4494 (findConcatSeparation!776 (regOne!14870 r!13927) (regTwo!14870 r!13927) Nil!28496 s!9460 s!9460)))))

(declare-fun lt!878587 () Unit!41743)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!714 (Regex!7179 Regex!7179 List!28594) Unit!41743)

(assert (=> b!2444346 (= lt!878587 (lemmaFindConcatSeparationEquivalentToExists!714 (regOne!14870 r!13927) (regTwo!14870 r!13927) s!9460))))

(declare-fun b!2444347 () Bool)

(assert (=> b!2444347 (= e!1552435 (not e!1552431))))

(declare-fun res!1037250 () Bool)

(assert (=> b!2444347 (=> res!1037250 e!1552431)))

(get-info :version)

(assert (=> b!2444347 (= res!1037250 (not ((_ is Concat!11815) r!13927)))))

(declare-fun lt!878585 () Bool)

(assert (=> b!2444347 (= lt!878585 lt!878581)))

(declare-fun matchRSpec!1026 (Regex!7179 List!28594) Bool)

(assert (=> b!2444347 (= lt!878581 (matchRSpec!1026 r!13927 s!9460))))

(assert (=> b!2444347 (= lt!878585 (matchR!3294 r!13927 s!9460))))

(declare-fun lt!878584 () Unit!41743)

(declare-fun mainMatchTheorem!1026 (Regex!7179 List!28594) Unit!41743)

(assert (=> b!2444347 (= lt!878584 (mainMatchTheorem!1026 r!13927 s!9460))))

(declare-fun b!2444348 () Bool)

(declare-fun Unit!41745 () Unit!41743)

(assert (=> b!2444348 (= e!1552436 Unit!41745)))

(declare-fun b!2444349 () Bool)

(declare-fun res!1037258 () Bool)

(assert (=> b!2444349 (=> res!1037258 e!1552439)))

(declare-fun lt!878579 () List!28595)

(assert (=> b!2444349 (= res!1037258 (not (= (generalisedConcat!280 lt!878579) EmptyExpr!7179)))))

(declare-fun b!2444350 () Bool)

(assert (=> b!2444350 (= e!1552438 e!1552439)))

(declare-fun res!1037252 () Bool)

(assert (=> b!2444350 (=> res!1037252 e!1552439)))

(assert (=> b!2444350 (= res!1037252 (not (isEmpty!16537 lt!878579)))))

(declare-fun tail!3820 (List!28595) List!28595)

(assert (=> b!2444350 (= lt!878579 (tail!3820 l!9164))))

(declare-fun res!1037257 () Bool)

(assert (=> start!238910 (=> (not res!1037257) (not e!1552435))))

(declare-fun lambda!92467 () Int)

(declare-fun forall!5813 (List!28595 Int) Bool)

(assert (=> start!238910 (= res!1037257 (forall!5813 l!9164 lambda!92467))))

(assert (=> start!238910 e!1552435))

(assert (=> start!238910 e!1552434))

(assert (=> start!238910 e!1552437))

(assert (=> start!238910 e!1552432))

(declare-fun b!2444342 () Bool)

(declare-fun Unit!41746 () Unit!41743)

(assert (=> b!2444342 (= e!1552436 Unit!41746)))

(declare-fun lt!878576 () tuple2!28114)

(declare-fun get!8798 (Option!5668) tuple2!28114)

(assert (=> b!2444342 (= lt!878576 (get!8798 lt!878577))))

(declare-fun lt!878583 () Unit!41743)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!84 (Regex!7179 Regex!7179 List!28594 List!28594 List!28594) Unit!41743)

(assert (=> b!2444342 (= lt!878583 (lemmaFindSeparationIsDefinedThenConcatMatches!84 lt!878588 EmptyExpr!7179 (_1!16598 lt!878576) (_2!16598 lt!878576) s!9460))))

(declare-fun res!1037251 () Bool)

(declare-fun ++!7082 (List!28594 List!28594) List!28594)

(assert (=> b!2444342 (= res!1037251 (matchR!3294 (Concat!11815 lt!878588 EmptyExpr!7179) (++!7082 (_1!16598 lt!878576) (_2!16598 lt!878576))))))

(assert (=> b!2444342 (=> (not res!1037251) (not e!1552433))))

(assert (=> b!2444342 e!1552433))

(assert (= (and start!238910 res!1037257) b!2444340))

(assert (= (and b!2444340 res!1037255) b!2444347))

(assert (= (and b!2444347 (not res!1037250)) b!2444346))

(assert (= (and b!2444346 (not res!1037253)) b!2444341))

(assert (= (and b!2444341 (not res!1037254)) b!2444350))

(assert (= (and b!2444350 (not res!1037252)) b!2444349))

(assert (= (and b!2444349 (not res!1037258)) b!2444344))

(assert (= (and b!2444344 (not res!1037256)) b!2444338))

(assert (= (and b!2444338 c!390054) b!2444342))

(assert (= (and b!2444338 (not c!390054)) b!2444348))

(assert (= (and b!2444342 res!1037251) b!2444339))

(assert (= (and start!238910 ((_ is Cons!28497) l!9164)) b!2444335))

(assert (= (and start!238910 ((_ is ElementMatch!7179) r!13927)) b!2444345))

(assert (= (and start!238910 ((_ is Concat!11815) r!13927)) b!2444336))

(assert (= (and start!238910 ((_ is Star!7179) r!13927)) b!2444334))

(assert (= (and start!238910 ((_ is Union!7179) r!13927)) b!2444343))

(assert (= (and start!238910 ((_ is Cons!28496) s!9460)) b!2444337))

(declare-fun m!2820891 () Bool)

(assert (=> b!2444341 m!2820891))

(declare-fun m!2820893 () Bool)

(assert (=> b!2444342 m!2820893))

(declare-fun m!2820895 () Bool)

(assert (=> b!2444342 m!2820895))

(declare-fun m!2820897 () Bool)

(assert (=> b!2444342 m!2820897))

(assert (=> b!2444342 m!2820897))

(declare-fun m!2820899 () Bool)

(assert (=> b!2444342 m!2820899))

(declare-fun m!2820901 () Bool)

(assert (=> start!238910 m!2820901))

(declare-fun m!2820903 () Bool)

(assert (=> b!2444349 m!2820903))

(declare-fun m!2820905 () Bool)

(assert (=> b!2444340 m!2820905))

(declare-fun m!2820907 () Bool)

(assert (=> b!2444338 m!2820907))

(declare-fun m!2820909 () Bool)

(assert (=> b!2444338 m!2820909))

(declare-fun m!2820911 () Bool)

(assert (=> b!2444350 m!2820911))

(declare-fun m!2820913 () Bool)

(assert (=> b!2444350 m!2820913))

(declare-fun m!2820915 () Bool)

(assert (=> b!2444346 m!2820915))

(declare-fun m!2820917 () Bool)

(assert (=> b!2444346 m!2820917))

(declare-fun m!2820919 () Bool)

(assert (=> b!2444346 m!2820919))

(assert (=> b!2444346 m!2820915))

(declare-fun m!2820921 () Bool)

(assert (=> b!2444346 m!2820921))

(declare-fun m!2820923 () Bool)

(assert (=> b!2444346 m!2820923))

(declare-fun m!2820925 () Bool)

(assert (=> b!2444346 m!2820925))

(assert (=> b!2444346 m!2820923))

(declare-fun m!2820927 () Bool)

(assert (=> b!2444347 m!2820927))

(declare-fun m!2820929 () Bool)

(assert (=> b!2444347 m!2820929))

(declare-fun m!2820931 () Bool)

(assert (=> b!2444347 m!2820931))

(declare-fun m!2820933 () Bool)

(assert (=> b!2444344 m!2820933))

(declare-fun m!2820935 () Bool)

(assert (=> b!2444344 m!2820935))

(check-sat (not b!2444334) (not b!2444344) (not b!2444336) (not b!2444350) (not b!2444346) tp_is_empty!11771 (not b!2444337) (not b!2444340) (not b!2444338) (not start!238910) (not b!2444347) (not b!2444341) (not b!2444349) (not b!2444335) (not b!2444342) (not b!2444343))
(check-sat)
