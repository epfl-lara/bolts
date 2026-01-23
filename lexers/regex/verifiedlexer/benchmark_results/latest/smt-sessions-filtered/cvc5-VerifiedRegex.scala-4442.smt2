; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!236210 () Bool)

(assert start!236210)

(declare-fun b!2410197 () Bool)

(declare-fun res!1023604 () Bool)

(declare-fun e!1534440 () Bool)

(assert (=> b!2410197 (=> res!1023604 e!1534440)))

(declare-datatypes ((C!14310 0))(
  ( (C!14311 (val!8397 Int)) )
))
(declare-datatypes ((Regex!7076 0))(
  ( (ElementMatch!7076 (c!383950 C!14310)) (Concat!11712 (regOne!14664 Regex!7076) (regTwo!14664 Regex!7076)) (EmptyExpr!7076) (Star!7076 (reg!7405 Regex!7076)) (EmptyLang!7076) (Union!7076 (regOne!14665 Regex!7076) (regTwo!14665 Regex!7076)) )
))
(declare-datatypes ((List!28390 0))(
  ( (Nil!28292) (Cons!28292 (h!33693 Regex!7076) (t!208367 List!28390)) )
))
(declare-fun lt!873464 () List!28390)

(declare-fun generalisedConcat!177 (List!28390) Regex!7076)

(assert (=> b!2410197 (= res!1023604 (not (= (generalisedConcat!177 lt!873464) EmptyExpr!7076)))))

(declare-fun b!2410198 () Bool)

(declare-fun e!1534436 () Bool)

(declare-fun tp!766839 () Bool)

(assert (=> b!2410198 (= e!1534436 tp!766839)))

(declare-fun b!2410199 () Bool)

(declare-fun e!1534438 () Bool)

(declare-fun tp!766836 () Bool)

(declare-fun tp!766833 () Bool)

(assert (=> b!2410199 (= e!1534438 (and tp!766836 tp!766833))))

(declare-fun b!2410201 () Bool)

(declare-fun res!1023599 () Bool)

(declare-fun e!1534441 () Bool)

(assert (=> b!2410201 (=> res!1023599 e!1534441)))

(declare-fun l!9164 () List!28390)

(declare-fun isEmpty!16295 (List!28390) Bool)

(assert (=> b!2410201 (= res!1023599 (isEmpty!16295 l!9164))))

(declare-fun b!2410202 () Bool)

(declare-fun tp!766838 () Bool)

(declare-fun tp!766832 () Bool)

(assert (=> b!2410202 (= e!1534436 (and tp!766838 tp!766832))))

(declare-fun b!2410203 () Bool)

(declare-fun e!1534437 () Bool)

(assert (=> b!2410203 (= e!1534437 (not e!1534441))))

(declare-fun res!1023601 () Bool)

(assert (=> b!2410203 (=> res!1023601 e!1534441)))

(declare-fun r!13927 () Regex!7076)

(assert (=> b!2410203 (= res!1023601 (or (is-Concat!11712 r!13927) (is-EmptyExpr!7076 r!13927)))))

(declare-datatypes ((List!28391 0))(
  ( (Nil!28293) (Cons!28293 (h!33694 C!14310) (t!208368 List!28391)) )
))
(declare-fun s!9460 () List!28391)

(declare-fun matchR!3193 (Regex!7076 List!28391) Bool)

(declare-fun matchRSpec!925 (Regex!7076 List!28391) Bool)

(assert (=> b!2410203 (= (matchR!3193 r!13927 s!9460) (matchRSpec!925 r!13927 s!9460))))

(declare-datatypes ((Unit!41423 0))(
  ( (Unit!41424) )
))
(declare-fun lt!873461 () Unit!41423)

(declare-fun mainMatchTheorem!925 (Regex!7076 List!28391) Unit!41423)

(assert (=> b!2410203 (= lt!873461 (mainMatchTheorem!925 r!13927 s!9460))))

(declare-fun b!2410204 () Bool)

(declare-fun e!1534439 () Bool)

(declare-fun lambda!90722 () Int)

(declare-fun forall!5710 (List!28390 Int) Bool)

(assert (=> b!2410204 (= e!1534439 (forall!5710 lt!873464 lambda!90722))))

(declare-fun lt!873463 () Regex!7076)

(declare-datatypes ((tuple2!27948 0))(
  ( (tuple2!27949 (_1!16515 List!28391) (_2!16515 List!28391)) )
))
(declare-datatypes ((Option!5585 0))(
  ( (None!5584) (Some!5584 (v!30992 tuple2!27948)) )
))
(declare-fun isDefined!4413 (Option!5585) Bool)

(declare-fun findConcatSeparation!693 (Regex!7076 Regex!7076 List!28391 List!28391 List!28391) Option!5585)

(assert (=> b!2410204 (isDefined!4413 (findConcatSeparation!693 lt!873463 EmptyExpr!7076 Nil!28293 s!9460 s!9460))))

(declare-fun lt!873465 () Unit!41423)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!49 (Regex!7076 Regex!7076 List!28391) Unit!41423)

(assert (=> b!2410204 (= lt!873465 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!49 lt!873463 EmptyExpr!7076 s!9460))))

(declare-fun e!1534442 () Bool)

(assert (=> b!2410204 e!1534442))

(declare-fun res!1023605 () Bool)

(assert (=> b!2410204 (=> (not res!1023605) (not e!1534442))))

(declare-fun lt!873462 () Regex!7076)

(declare-fun ++!7005 (List!28391 List!28391) List!28391)

(assert (=> b!2410204 (= res!1023605 (matchR!3193 lt!873462 (++!7005 s!9460 Nil!28293)))))

(assert (=> b!2410204 (= lt!873462 (Concat!11712 lt!873463 EmptyExpr!7076))))

(declare-fun lt!873466 () Unit!41423)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!75 (Regex!7076 Regex!7076 List!28391 List!28391) Unit!41423)

(assert (=> b!2410204 (= lt!873466 (lemmaTwoRegexMatchThenConcatMatchesConcatString!75 lt!873463 EmptyExpr!7076 s!9460 Nil!28293))))

(declare-fun b!2410205 () Bool)

(declare-fun res!1023602 () Bool)

(assert (=> b!2410205 (=> (not res!1023602) (not e!1534437))))

(assert (=> b!2410205 (= res!1023602 (= r!13927 (generalisedConcat!177 l!9164)))))

(declare-fun b!2410206 () Bool)

(declare-fun tp!766837 () Bool)

(declare-fun tp!766835 () Bool)

(assert (=> b!2410206 (= e!1534436 (and tp!766837 tp!766835))))

(declare-fun res!1023606 () Bool)

(assert (=> start!236210 (=> (not res!1023606) (not e!1534437))))

(assert (=> start!236210 (= res!1023606 (forall!5710 l!9164 lambda!90722))))

(assert (=> start!236210 e!1534437))

(assert (=> start!236210 e!1534438))

(assert (=> start!236210 e!1534436))

(declare-fun e!1534435 () Bool)

(assert (=> start!236210 e!1534435))

(declare-fun b!2410200 () Bool)

(declare-fun tp_is_empty!11565 () Bool)

(declare-fun tp!766834 () Bool)

(assert (=> b!2410200 (= e!1534435 (and tp_is_empty!11565 tp!766834))))

(declare-fun b!2410207 () Bool)

(assert (=> b!2410207 (= e!1534442 (matchR!3193 lt!873462 s!9460))))

(declare-fun b!2410208 () Bool)

(assert (=> b!2410208 (= e!1534440 e!1534439)))

(declare-fun res!1023600 () Bool)

(assert (=> b!2410208 (=> res!1023600 e!1534439)))

(assert (=> b!2410208 (= res!1023600 (not (matchR!3193 lt!873463 s!9460)))))

(declare-fun head!5371 (List!28390) Regex!7076)

(assert (=> b!2410208 (= lt!873463 (head!5371 l!9164))))

(declare-fun b!2410209 () Bool)

(assert (=> b!2410209 (= e!1534436 tp_is_empty!11565)))

(declare-fun b!2410210 () Bool)

(assert (=> b!2410210 (= e!1534441 e!1534440)))

(declare-fun res!1023603 () Bool)

(assert (=> b!2410210 (=> res!1023603 e!1534440)))

(assert (=> b!2410210 (= res!1023603 (not (isEmpty!16295 lt!873464)))))

(declare-fun tail!3643 (List!28390) List!28390)

(assert (=> b!2410210 (= lt!873464 (tail!3643 l!9164))))

(assert (= (and start!236210 res!1023606) b!2410205))

(assert (= (and b!2410205 res!1023602) b!2410203))

(assert (= (and b!2410203 (not res!1023601)) b!2410201))

(assert (= (and b!2410201 (not res!1023599)) b!2410210))

(assert (= (and b!2410210 (not res!1023603)) b!2410197))

(assert (= (and b!2410197 (not res!1023604)) b!2410208))

(assert (= (and b!2410208 (not res!1023600)) b!2410204))

(assert (= (and b!2410204 res!1023605) b!2410207))

(assert (= (and start!236210 (is-Cons!28292 l!9164)) b!2410199))

(assert (= (and start!236210 (is-ElementMatch!7076 r!13927)) b!2410209))

(assert (= (and start!236210 (is-Concat!11712 r!13927)) b!2410202))

(assert (= (and start!236210 (is-Star!7076 r!13927)) b!2410198))

(assert (= (and start!236210 (is-Union!7076 r!13927)) b!2410206))

(assert (= (and start!236210 (is-Cons!28293 s!9460)) b!2410200))

(declare-fun m!2801831 () Bool)

(assert (=> b!2410203 m!2801831))

(declare-fun m!2801833 () Bool)

(assert (=> b!2410203 m!2801833))

(declare-fun m!2801835 () Bool)

(assert (=> b!2410203 m!2801835))

(declare-fun m!2801837 () Bool)

(assert (=> b!2410201 m!2801837))

(declare-fun m!2801839 () Bool)

(assert (=> b!2410210 m!2801839))

(declare-fun m!2801841 () Bool)

(assert (=> b!2410210 m!2801841))

(declare-fun m!2801843 () Bool)

(assert (=> b!2410208 m!2801843))

(declare-fun m!2801845 () Bool)

(assert (=> b!2410208 m!2801845))

(declare-fun m!2801847 () Bool)

(assert (=> b!2410207 m!2801847))

(declare-fun m!2801849 () Bool)

(assert (=> b!2410205 m!2801849))

(declare-fun m!2801851 () Bool)

(assert (=> b!2410204 m!2801851))

(declare-fun m!2801853 () Bool)

(assert (=> b!2410204 m!2801853))

(declare-fun m!2801855 () Bool)

(assert (=> b!2410204 m!2801855))

(declare-fun m!2801857 () Bool)

(assert (=> b!2410204 m!2801857))

(declare-fun m!2801859 () Bool)

(assert (=> b!2410204 m!2801859))

(assert (=> b!2410204 m!2801855))

(declare-fun m!2801861 () Bool)

(assert (=> b!2410204 m!2801861))

(assert (=> b!2410204 m!2801851))

(declare-fun m!2801863 () Bool)

(assert (=> b!2410204 m!2801863))

(declare-fun m!2801865 () Bool)

(assert (=> start!236210 m!2801865))

(declare-fun m!2801867 () Bool)

(assert (=> b!2410197 m!2801867))

(push 1)

(assert (not b!2410206))

(assert (not b!2410204))

(assert (not b!2410198))

(assert (not b!2410197))

(assert (not b!2410205))

(assert tp_is_empty!11565)

(assert (not b!2410200))

(assert (not b!2410203))

(assert (not b!2410208))

(assert (not b!2410207))

(assert (not b!2410201))

(assert (not b!2410199))

(assert (not b!2410210))

(assert (not start!236210))

(assert (not b!2410202))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!700527 () Bool)

(declare-fun isEmpty!16297 (Option!5585) Bool)

(assert (=> d!700527 (= (isDefined!4413 (findConcatSeparation!693 lt!873463 EmptyExpr!7076 Nil!28293 s!9460 s!9460)) (not (isEmpty!16297 (findConcatSeparation!693 lt!873463 EmptyExpr!7076 Nil!28293 s!9460 s!9460))))))

(declare-fun bs!463409 () Bool)

(assert (= bs!463409 d!700527))

(assert (=> bs!463409 m!2801855))

(declare-fun m!2801907 () Bool)

(assert (=> bs!463409 m!2801907))

(assert (=> b!2410204 d!700527))

(declare-fun b!2410277 () Bool)

(declare-fun e!1534486 () Option!5585)

(assert (=> b!2410277 (= e!1534486 (Some!5584 (tuple2!27949 Nil!28293 s!9460)))))

(declare-fun b!2410278 () Bool)

(declare-fun e!1534483 () Bool)

(declare-fun lt!873492 () Option!5585)

(assert (=> b!2410278 (= e!1534483 (not (isDefined!4413 lt!873492)))))

(declare-fun b!2410280 () Bool)

(declare-fun lt!873493 () Unit!41423)

(declare-fun lt!873491 () Unit!41423)

(assert (=> b!2410280 (= lt!873493 lt!873491)))

(assert (=> b!2410280 (= (++!7005 (++!7005 Nil!28293 (Cons!28293 (h!33694 s!9460) Nil!28293)) (t!208368 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!637 (List!28391 C!14310 List!28391 List!28391) Unit!41423)

(assert (=> b!2410280 (= lt!873491 (lemmaMoveElementToOtherListKeepsConcatEq!637 Nil!28293 (h!33694 s!9460) (t!208368 s!9460) s!9460))))

(declare-fun e!1534487 () Option!5585)

(assert (=> b!2410280 (= e!1534487 (findConcatSeparation!693 lt!873463 EmptyExpr!7076 (++!7005 Nil!28293 (Cons!28293 (h!33694 s!9460) Nil!28293)) (t!208368 s!9460) s!9460))))

(declare-fun b!2410281 () Bool)

(declare-fun e!1534484 () Bool)

(declare-fun get!8677 (Option!5585) tuple2!27948)

(assert (=> b!2410281 (= e!1534484 (= (++!7005 (_1!16515 (get!8677 lt!873492)) (_2!16515 (get!8677 lt!873492))) s!9460))))

(declare-fun b!2410282 () Bool)

(assert (=> b!2410282 (= e!1534487 None!5584)))

(declare-fun b!2410283 () Bool)

(declare-fun res!1023650 () Bool)

(assert (=> b!2410283 (=> (not res!1023650) (not e!1534484))))

(assert (=> b!2410283 (= res!1023650 (matchR!3193 lt!873463 (_1!16515 (get!8677 lt!873492))))))

(declare-fun d!700529 () Bool)

(assert (=> d!700529 e!1534483))

(declare-fun res!1023649 () Bool)

(assert (=> d!700529 (=> res!1023649 e!1534483)))

(assert (=> d!700529 (= res!1023649 e!1534484)))

(declare-fun res!1023651 () Bool)

(assert (=> d!700529 (=> (not res!1023651) (not e!1534484))))

(assert (=> d!700529 (= res!1023651 (isDefined!4413 lt!873492))))

(assert (=> d!700529 (= lt!873492 e!1534486)))

(declare-fun c!383956 () Bool)

(declare-fun e!1534485 () Bool)

(assert (=> d!700529 (= c!383956 e!1534485)))

(declare-fun res!1023647 () Bool)

(assert (=> d!700529 (=> (not res!1023647) (not e!1534485))))

(assert (=> d!700529 (= res!1023647 (matchR!3193 lt!873463 Nil!28293))))

(declare-fun validRegex!2798 (Regex!7076) Bool)

(assert (=> d!700529 (validRegex!2798 lt!873463)))

(assert (=> d!700529 (= (findConcatSeparation!693 lt!873463 EmptyExpr!7076 Nil!28293 s!9460 s!9460) lt!873492)))

(declare-fun b!2410279 () Bool)

(declare-fun res!1023648 () Bool)

(assert (=> b!2410279 (=> (not res!1023648) (not e!1534484))))

(assert (=> b!2410279 (= res!1023648 (matchR!3193 EmptyExpr!7076 (_2!16515 (get!8677 lt!873492))))))

(declare-fun b!2410284 () Bool)

(assert (=> b!2410284 (= e!1534486 e!1534487)))

(declare-fun c!383957 () Bool)

(assert (=> b!2410284 (= c!383957 (is-Nil!28293 s!9460))))

(declare-fun b!2410285 () Bool)

(assert (=> b!2410285 (= e!1534485 (matchR!3193 EmptyExpr!7076 s!9460))))

(assert (= (and d!700529 res!1023647) b!2410285))

(assert (= (and d!700529 c!383956) b!2410277))

(assert (= (and d!700529 (not c!383956)) b!2410284))

(assert (= (and b!2410284 c!383957) b!2410282))

(assert (= (and b!2410284 (not c!383957)) b!2410280))

(assert (= (and d!700529 res!1023651) b!2410283))

(assert (= (and b!2410283 res!1023650) b!2410279))

(assert (= (and b!2410279 res!1023648) b!2410281))

(assert (= (and d!700529 (not res!1023649)) b!2410278))

(declare-fun m!2801913 () Bool)

(assert (=> b!2410285 m!2801913))

(declare-fun m!2801915 () Bool)

(assert (=> b!2410281 m!2801915))

(declare-fun m!2801917 () Bool)

(assert (=> b!2410281 m!2801917))

(declare-fun m!2801919 () Bool)

(assert (=> b!2410278 m!2801919))

(assert (=> b!2410279 m!2801915))

(declare-fun m!2801921 () Bool)

(assert (=> b!2410279 m!2801921))

(declare-fun m!2801923 () Bool)

(assert (=> b!2410280 m!2801923))

(assert (=> b!2410280 m!2801923))

(declare-fun m!2801925 () Bool)

(assert (=> b!2410280 m!2801925))

(declare-fun m!2801927 () Bool)

(assert (=> b!2410280 m!2801927))

(assert (=> b!2410280 m!2801923))

(declare-fun m!2801929 () Bool)

(assert (=> b!2410280 m!2801929))

(assert (=> b!2410283 m!2801915))

(declare-fun m!2801931 () Bool)

(assert (=> b!2410283 m!2801931))

(assert (=> d!700529 m!2801919))

(declare-fun m!2801933 () Bool)

(assert (=> d!700529 m!2801933))

(declare-fun m!2801935 () Bool)

(assert (=> d!700529 m!2801935))

(assert (=> b!2410204 d!700529))

(declare-fun b!2410301 () Bool)

(declare-fun e!1534494 () Bool)

(declare-fun lt!873498 () List!28391)

(assert (=> b!2410301 (= e!1534494 (or (not (= Nil!28293 Nil!28293)) (= lt!873498 s!9460)))))

(declare-fun d!700535 () Bool)

(assert (=> d!700535 e!1534494))

(declare-fun res!1023657 () Bool)

(assert (=> d!700535 (=> (not res!1023657) (not e!1534494))))

(declare-fun content!3876 (List!28391) (Set C!14310))

(assert (=> d!700535 (= res!1023657 (= (content!3876 lt!873498) (set.union (content!3876 s!9460) (content!3876 Nil!28293))))))

(declare-fun e!1534495 () List!28391)

(assert (=> d!700535 (= lt!873498 e!1534495)))

(declare-fun c!383962 () Bool)

(assert (=> d!700535 (= c!383962 (is-Nil!28293 s!9460))))

(assert (=> d!700535 (= (++!7005 s!9460 Nil!28293) lt!873498)))

(declare-fun b!2410298 () Bool)

(assert (=> b!2410298 (= e!1534495 Nil!28293)))

(declare-fun b!2410300 () Bool)

(declare-fun res!1023656 () Bool)

(assert (=> b!2410300 (=> (not res!1023656) (not e!1534494))))

(declare-fun size!22214 (List!28391) Int)

(assert (=> b!2410300 (= res!1023656 (= (size!22214 lt!873498) (+ (size!22214 s!9460) (size!22214 Nil!28293))))))

(declare-fun b!2410299 () Bool)

(assert (=> b!2410299 (= e!1534495 (Cons!28293 (h!33694 s!9460) (++!7005 (t!208368 s!9460) Nil!28293)))))

(assert (= (and d!700535 c!383962) b!2410298))

(assert (= (and d!700535 (not c!383962)) b!2410299))

(assert (= (and d!700535 res!1023657) b!2410300))

(assert (= (and b!2410300 res!1023656) b!2410301))

(declare-fun m!2801937 () Bool)

(assert (=> d!700535 m!2801937))

(declare-fun m!2801939 () Bool)

(assert (=> d!700535 m!2801939))

(declare-fun m!2801941 () Bool)

(assert (=> d!700535 m!2801941))

(declare-fun m!2801943 () Bool)

(assert (=> b!2410300 m!2801943))

(declare-fun m!2801945 () Bool)

(assert (=> b!2410300 m!2801945))

(declare-fun m!2801947 () Bool)

(assert (=> b!2410300 m!2801947))

(declare-fun m!2801949 () Bool)

(assert (=> b!2410299 m!2801949))

(assert (=> b!2410204 d!700535))

(declare-fun d!700537 () Bool)

(assert (=> d!700537 (matchR!3193 (Concat!11712 lt!873463 EmptyExpr!7076) (++!7005 s!9460 Nil!28293))))

(declare-fun lt!873501 () Unit!41423)

(declare-fun choose!14253 (Regex!7076 Regex!7076 List!28391 List!28391) Unit!41423)

(assert (=> d!700537 (= lt!873501 (choose!14253 lt!873463 EmptyExpr!7076 s!9460 Nil!28293))))

(declare-fun e!1534510 () Bool)

(assert (=> d!700537 e!1534510))

(declare-fun res!1023676 () Bool)

(assert (=> d!700537 (=> (not res!1023676) (not e!1534510))))

(assert (=> d!700537 (= res!1023676 (validRegex!2798 lt!873463))))

(assert (=> d!700537 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!75 lt!873463 EmptyExpr!7076 s!9460 Nil!28293) lt!873501)))

(declare-fun b!2410328 () Bool)

(assert (=> b!2410328 (= e!1534510 (validRegex!2798 EmptyExpr!7076))))

(assert (= (and d!700537 res!1023676) b!2410328))

(assert (=> d!700537 m!2801851))

(assert (=> d!700537 m!2801851))

(declare-fun m!2801951 () Bool)

(assert (=> d!700537 m!2801951))

(declare-fun m!2801953 () Bool)

(assert (=> d!700537 m!2801953))

(assert (=> d!700537 m!2801935))

(declare-fun m!2801955 () Bool)

(assert (=> b!2410328 m!2801955))

(assert (=> b!2410204 d!700537))

(declare-fun d!700539 () Bool)

(declare-fun res!1023681 () Bool)

(declare-fun e!1534515 () Bool)

(assert (=> d!700539 (=> res!1023681 e!1534515)))

(assert (=> d!700539 (= res!1023681 (is-Nil!28292 lt!873464))))

(assert (=> d!700539 (= (forall!5710 lt!873464 lambda!90722) e!1534515)))

(declare-fun b!2410333 () Bool)

(declare-fun e!1534516 () Bool)

(assert (=> b!2410333 (= e!1534515 e!1534516)))

(declare-fun res!1023682 () Bool)

(assert (=> b!2410333 (=> (not res!1023682) (not e!1534516))))

(declare-fun dynLambda!12181 (Int Regex!7076) Bool)

(assert (=> b!2410333 (= res!1023682 (dynLambda!12181 lambda!90722 (h!33693 lt!873464)))))

(declare-fun b!2410334 () Bool)

(assert (=> b!2410334 (= e!1534516 (forall!5710 (t!208367 lt!873464) lambda!90722))))

(assert (= (and d!700539 (not res!1023681)) b!2410333))

(assert (= (and b!2410333 res!1023682) b!2410334))

(declare-fun b_lambda!74485 () Bool)

(assert (=> (not b_lambda!74485) (not b!2410333)))

(declare-fun m!2801957 () Bool)

(assert (=> b!2410333 m!2801957))

(declare-fun m!2801959 () Bool)

(assert (=> b!2410334 m!2801959))

(assert (=> b!2410204 d!700539))

(declare-fun b!2410377 () Bool)

(declare-fun res!1023714 () Bool)

(declare-fun e!1534540 () Bool)

(assert (=> b!2410377 (=> res!1023714 e!1534540)))

(declare-fun e!1534541 () Bool)

(assert (=> b!2410377 (= res!1023714 e!1534541)))

(declare-fun res!1023712 () Bool)

(assert (=> b!2410377 (=> (not res!1023712) (not e!1534541))))

(declare-fun lt!873505 () Bool)

(assert (=> b!2410377 (= res!1023712 lt!873505)))

(declare-fun b!2410378 () Bool)

(declare-fun e!1534538 () Bool)

(declare-fun e!1534543 () Bool)

(assert (=> b!2410378 (= e!1534538 e!1534543)))

(declare-fun res!1023710 () Bool)

(assert (=> b!2410378 (=> res!1023710 e!1534543)))

(declare-fun call!147198 () Bool)

(assert (=> b!2410378 (= res!1023710 call!147198)))

(declare-fun b!2410379 () Bool)

(declare-fun res!1023711 () Bool)

(assert (=> b!2410379 (=> res!1023711 e!1534543)))

(declare-fun isEmpty!16298 (List!28391) Bool)

(declare-fun tail!3645 (List!28391) List!28391)

(assert (=> b!2410379 (= res!1023711 (not (isEmpty!16298 (tail!3645 (++!7005 s!9460 Nil!28293)))))))

(declare-fun b!2410380 () Bool)

(declare-fun head!5373 (List!28391) C!14310)

(assert (=> b!2410380 (= e!1534541 (= (head!5373 (++!7005 s!9460 Nil!28293)) (c!383950 lt!873462)))))

(declare-fun b!2410381 () Bool)

(declare-fun res!1023713 () Bool)

(assert (=> b!2410381 (=> (not res!1023713) (not e!1534541))))

(assert (=> b!2410381 (= res!1023713 (not call!147198))))

(declare-fun d!700541 () Bool)

(declare-fun e!1534542 () Bool)

(assert (=> d!700541 e!1534542))

(declare-fun c!383976 () Bool)

(assert (=> d!700541 (= c!383976 (is-EmptyExpr!7076 lt!873462))))

(declare-fun e!1534539 () Bool)

(assert (=> d!700541 (= lt!873505 e!1534539)))

(declare-fun c!383978 () Bool)

(assert (=> d!700541 (= c!383978 (isEmpty!16298 (++!7005 s!9460 Nil!28293)))))

(assert (=> d!700541 (validRegex!2798 lt!873462)))

(assert (=> d!700541 (= (matchR!3193 lt!873462 (++!7005 s!9460 Nil!28293)) lt!873505)))

(declare-fun b!2410382 () Bool)

(declare-fun e!1534544 () Bool)

(assert (=> b!2410382 (= e!1534542 e!1534544)))

(declare-fun c!383977 () Bool)

(assert (=> b!2410382 (= c!383977 (is-EmptyLang!7076 lt!873462))))

(declare-fun b!2410383 () Bool)

(declare-fun nullable!2118 (Regex!7076) Bool)

(assert (=> b!2410383 (= e!1534539 (nullable!2118 lt!873462))))

(declare-fun bm!147193 () Bool)

(assert (=> bm!147193 (= call!147198 (isEmpty!16298 (++!7005 s!9460 Nil!28293)))))

(declare-fun b!2410384 () Bool)

(declare-fun res!1023709 () Bool)

(assert (=> b!2410384 (=> (not res!1023709) (not e!1534541))))

(assert (=> b!2410384 (= res!1023709 (isEmpty!16298 (tail!3645 (++!7005 s!9460 Nil!28293))))))

(declare-fun b!2410385 () Bool)

(assert (=> b!2410385 (= e!1534542 (= lt!873505 call!147198))))

(declare-fun b!2410386 () Bool)

(assert (=> b!2410386 (= e!1534544 (not lt!873505))))

(declare-fun b!2410387 () Bool)

(declare-fun derivativeStep!1775 (Regex!7076 C!14310) Regex!7076)

(assert (=> b!2410387 (= e!1534539 (matchR!3193 (derivativeStep!1775 lt!873462 (head!5373 (++!7005 s!9460 Nil!28293))) (tail!3645 (++!7005 s!9460 Nil!28293))))))

(declare-fun b!2410388 () Bool)

(declare-fun res!1023708 () Bool)

(assert (=> b!2410388 (=> res!1023708 e!1534540)))

(assert (=> b!2410388 (= res!1023708 (not (is-ElementMatch!7076 lt!873462)))))

(assert (=> b!2410388 (= e!1534544 e!1534540)))

(declare-fun b!2410389 () Bool)

(assert (=> b!2410389 (= e!1534540 e!1534538)))

(declare-fun res!1023707 () Bool)

(assert (=> b!2410389 (=> (not res!1023707) (not e!1534538))))

(assert (=> b!2410389 (= res!1023707 (not lt!873505))))

(declare-fun b!2410390 () Bool)

(assert (=> b!2410390 (= e!1534543 (not (= (head!5373 (++!7005 s!9460 Nil!28293)) (c!383950 lt!873462))))))

(assert (= (and d!700541 c!383978) b!2410383))

(assert (= (and d!700541 (not c!383978)) b!2410387))

(assert (= (and d!700541 c!383976) b!2410385))

(assert (= (and d!700541 (not c!383976)) b!2410382))

(assert (= (and b!2410382 c!383977) b!2410386))

(assert (= (and b!2410382 (not c!383977)) b!2410388))

(assert (= (and b!2410388 (not res!1023708)) b!2410377))

(assert (= (and b!2410377 res!1023712) b!2410381))

(assert (= (and b!2410381 res!1023713) b!2410384))

(assert (= (and b!2410384 res!1023709) b!2410380))

(assert (= (and b!2410377 (not res!1023714)) b!2410389))

(assert (= (and b!2410389 res!1023707) b!2410378))

(assert (= (and b!2410378 (not res!1023710)) b!2410379))

(assert (= (and b!2410379 (not res!1023711)) b!2410390))

(assert (= (or b!2410385 b!2410378 b!2410381) bm!147193))

(assert (=> b!2410380 m!2801851))

(declare-fun m!2801977 () Bool)

(assert (=> b!2410380 m!2801977))

(assert (=> b!2410379 m!2801851))

(declare-fun m!2801979 () Bool)

(assert (=> b!2410379 m!2801979))

(assert (=> b!2410379 m!2801979))

(declare-fun m!2801981 () Bool)

(assert (=> b!2410379 m!2801981))

(assert (=> b!2410390 m!2801851))

(assert (=> b!2410390 m!2801977))

(declare-fun m!2801983 () Bool)

(assert (=> b!2410383 m!2801983))

(assert (=> d!700541 m!2801851))

(declare-fun m!2801985 () Bool)

(assert (=> d!700541 m!2801985))

(declare-fun m!2801987 () Bool)

(assert (=> d!700541 m!2801987))

(assert (=> bm!147193 m!2801851))

(assert (=> bm!147193 m!2801985))

(assert (=> b!2410387 m!2801851))

(assert (=> b!2410387 m!2801977))

(assert (=> b!2410387 m!2801977))

(declare-fun m!2801989 () Bool)

(assert (=> b!2410387 m!2801989))

(assert (=> b!2410387 m!2801851))

(assert (=> b!2410387 m!2801979))

(assert (=> b!2410387 m!2801989))

(assert (=> b!2410387 m!2801979))

(declare-fun m!2801991 () Bool)

(assert (=> b!2410387 m!2801991))

(assert (=> b!2410384 m!2801851))

(assert (=> b!2410384 m!2801979))

(assert (=> b!2410384 m!2801979))

(assert (=> b!2410384 m!2801981))

(assert (=> b!2410204 d!700541))

(declare-fun d!700545 () Bool)

(assert (=> d!700545 (isDefined!4413 (findConcatSeparation!693 lt!873463 EmptyExpr!7076 Nil!28293 s!9460 s!9460))))

(declare-fun lt!873511 () Unit!41423)

(declare-fun choose!14254 (Regex!7076 Regex!7076 List!28391) Unit!41423)

(assert (=> d!700545 (= lt!873511 (choose!14254 lt!873463 EmptyExpr!7076 s!9460))))

(assert (=> d!700545 (validRegex!2798 lt!873463)))

(assert (=> d!700545 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!49 lt!873463 EmptyExpr!7076 s!9460) lt!873511)))

(declare-fun bs!463410 () Bool)

(assert (= bs!463410 d!700545))

(assert (=> bs!463410 m!2801855))

(assert (=> bs!463410 m!2801855))

(assert (=> bs!463410 m!2801857))

(declare-fun m!2801993 () Bool)

(assert (=> bs!463410 m!2801993))

(assert (=> bs!463410 m!2801935))

(assert (=> b!2410204 d!700545))

(declare-fun b!2410403 () Bool)

(declare-fun res!1023728 () Bool)

(declare-fun e!1534553 () Bool)

(assert (=> b!2410403 (=> res!1023728 e!1534553)))

(declare-fun e!1534554 () Bool)

(assert (=> b!2410403 (= res!1023728 e!1534554)))

(declare-fun res!1023726 () Bool)

(assert (=> b!2410403 (=> (not res!1023726) (not e!1534554))))

(declare-fun lt!873512 () Bool)

(assert (=> b!2410403 (= res!1023726 lt!873512)))

(declare-fun b!2410404 () Bool)

(declare-fun e!1534551 () Bool)

(declare-fun e!1534556 () Bool)

(assert (=> b!2410404 (= e!1534551 e!1534556)))

(declare-fun res!1023724 () Bool)

(assert (=> b!2410404 (=> res!1023724 e!1534556)))

(declare-fun call!147199 () Bool)

(assert (=> b!2410404 (= res!1023724 call!147199)))

(declare-fun b!2410405 () Bool)

(declare-fun res!1023725 () Bool)

(assert (=> b!2410405 (=> res!1023725 e!1534556)))

(assert (=> b!2410405 (= res!1023725 (not (isEmpty!16298 (tail!3645 s!9460))))))

(declare-fun b!2410406 () Bool)

(assert (=> b!2410406 (= e!1534554 (= (head!5373 s!9460) (c!383950 r!13927)))))

(declare-fun b!2410407 () Bool)

(declare-fun res!1023727 () Bool)

(assert (=> b!2410407 (=> (not res!1023727) (not e!1534554))))

(assert (=> b!2410407 (= res!1023727 (not call!147199))))

(declare-fun d!700547 () Bool)

(declare-fun e!1534555 () Bool)

(assert (=> d!700547 e!1534555))

(declare-fun c!383982 () Bool)

(assert (=> d!700547 (= c!383982 (is-EmptyExpr!7076 r!13927))))

(declare-fun e!1534552 () Bool)

(assert (=> d!700547 (= lt!873512 e!1534552)))

(declare-fun c!383984 () Bool)

(assert (=> d!700547 (= c!383984 (isEmpty!16298 s!9460))))

(assert (=> d!700547 (validRegex!2798 r!13927)))

(assert (=> d!700547 (= (matchR!3193 r!13927 s!9460) lt!873512)))

(declare-fun b!2410408 () Bool)

(declare-fun e!1534557 () Bool)

(assert (=> b!2410408 (= e!1534555 e!1534557)))

(declare-fun c!383983 () Bool)

(assert (=> b!2410408 (= c!383983 (is-EmptyLang!7076 r!13927))))

(declare-fun b!2410409 () Bool)

(assert (=> b!2410409 (= e!1534552 (nullable!2118 r!13927))))

(declare-fun bm!147194 () Bool)

(assert (=> bm!147194 (= call!147199 (isEmpty!16298 s!9460))))

(declare-fun b!2410410 () Bool)

(declare-fun res!1023723 () Bool)

(assert (=> b!2410410 (=> (not res!1023723) (not e!1534554))))

(assert (=> b!2410410 (= res!1023723 (isEmpty!16298 (tail!3645 s!9460)))))

(declare-fun b!2410411 () Bool)

(assert (=> b!2410411 (= e!1534555 (= lt!873512 call!147199))))

(declare-fun b!2410412 () Bool)

(assert (=> b!2410412 (= e!1534557 (not lt!873512))))

(declare-fun b!2410413 () Bool)

(assert (=> b!2410413 (= e!1534552 (matchR!3193 (derivativeStep!1775 r!13927 (head!5373 s!9460)) (tail!3645 s!9460)))))

(declare-fun b!2410414 () Bool)

(declare-fun res!1023722 () Bool)

(assert (=> b!2410414 (=> res!1023722 e!1534553)))

(assert (=> b!2410414 (= res!1023722 (not (is-ElementMatch!7076 r!13927)))))

(assert (=> b!2410414 (= e!1534557 e!1534553)))

(declare-fun b!2410415 () Bool)

(assert (=> b!2410415 (= e!1534553 e!1534551)))

(declare-fun res!1023721 () Bool)

(assert (=> b!2410415 (=> (not res!1023721) (not e!1534551))))

(assert (=> b!2410415 (= res!1023721 (not lt!873512))))

(declare-fun b!2410416 () Bool)

(assert (=> b!2410416 (= e!1534556 (not (= (head!5373 s!9460) (c!383950 r!13927))))))

(assert (= (and d!700547 c!383984) b!2410409))

(assert (= (and d!700547 (not c!383984)) b!2410413))

(assert (= (and d!700547 c!383982) b!2410411))

(assert (= (and d!700547 (not c!383982)) b!2410408))

(assert (= (and b!2410408 c!383983) b!2410412))

(assert (= (and b!2410408 (not c!383983)) b!2410414))

(assert (= (and b!2410414 (not res!1023722)) b!2410403))

(assert (= (and b!2410403 res!1023726) b!2410407))

(assert (= (and b!2410407 res!1023727) b!2410410))

(assert (= (and b!2410410 res!1023723) b!2410406))

(assert (= (and b!2410403 (not res!1023728)) b!2410415))

(assert (= (and b!2410415 res!1023721) b!2410404))

(assert (= (and b!2410404 (not res!1023724)) b!2410405))

(assert (= (and b!2410405 (not res!1023725)) b!2410416))

(assert (= (or b!2410411 b!2410404 b!2410407) bm!147194))

(declare-fun m!2802009 () Bool)

(assert (=> b!2410406 m!2802009))

(declare-fun m!2802011 () Bool)

(assert (=> b!2410405 m!2802011))

(assert (=> b!2410405 m!2802011))

(declare-fun m!2802013 () Bool)

(assert (=> b!2410405 m!2802013))

(assert (=> b!2410416 m!2802009))

(declare-fun m!2802015 () Bool)

(assert (=> b!2410409 m!2802015))

(declare-fun m!2802017 () Bool)

(assert (=> d!700547 m!2802017))

(declare-fun m!2802019 () Bool)

(assert (=> d!700547 m!2802019))

(assert (=> bm!147194 m!2802017))

(assert (=> b!2410413 m!2802009))

(assert (=> b!2410413 m!2802009))

(declare-fun m!2802021 () Bool)

(assert (=> b!2410413 m!2802021))

(assert (=> b!2410413 m!2802011))

(assert (=> b!2410413 m!2802021))

(assert (=> b!2410413 m!2802011))

(declare-fun m!2802023 () Bool)

(assert (=> b!2410413 m!2802023))

(assert (=> b!2410410 m!2802011))

(assert (=> b!2410410 m!2802011))

(assert (=> b!2410410 m!2802013))

(assert (=> b!2410203 d!700547))

(declare-fun b!2410461 () Bool)

(assert (=> b!2410461 true))

(assert (=> b!2410461 true))

(declare-fun bs!463412 () Bool)

(declare-fun b!2410462 () Bool)

(assert (= bs!463412 (and b!2410462 b!2410461)))

(declare-fun lambda!90733 () Int)

(declare-fun lambda!90732 () Int)

(assert (=> bs!463412 (not (= lambda!90733 lambda!90732))))

(assert (=> b!2410462 true))

(assert (=> b!2410462 true))

(declare-fun bm!147199 () Bool)

(declare-fun call!147204 () Bool)

(assert (=> bm!147199 (= call!147204 (isEmpty!16298 s!9460))))

(declare-fun b!2410452 () Bool)

(declare-fun e!1534581 () Bool)

(assert (=> b!2410452 (= e!1534581 (matchRSpec!925 (regTwo!14665 r!13927) s!9460))))

(declare-fun b!2410454 () Bool)

(declare-fun res!1023750 () Bool)

(declare-fun e!1534584 () Bool)

(assert (=> b!2410454 (=> res!1023750 e!1534584)))

(assert (=> b!2410454 (= res!1023750 call!147204)))

(declare-fun e!1534578 () Bool)

(assert (=> b!2410454 (= e!1534578 e!1534584)))

(declare-fun b!2410455 () Bool)

(declare-fun e!1534582 () Bool)

(declare-fun e!1534585 () Bool)

(assert (=> b!2410455 (= e!1534582 e!1534585)))

(declare-fun res!1023749 () Bool)

(assert (=> b!2410455 (= res!1023749 (not (is-EmptyLang!7076 r!13927)))))

(assert (=> b!2410455 (=> (not res!1023749) (not e!1534585))))

(declare-fun b!2410456 () Bool)

(declare-fun c!383996 () Bool)

(assert (=> b!2410456 (= c!383996 (is-ElementMatch!7076 r!13927))))

(declare-fun e!1534579 () Bool)

(assert (=> b!2410456 (= e!1534585 e!1534579)))

(declare-fun b!2410457 () Bool)

(assert (=> b!2410457 (= e!1534579 (= s!9460 (Cons!28293 (c!383950 r!13927) Nil!28293)))))

(declare-fun b!2410458 () Bool)

(declare-fun e!1534583 () Bool)

(assert (=> b!2410458 (= e!1534583 e!1534581)))

(declare-fun res!1023747 () Bool)

(assert (=> b!2410458 (= res!1023747 (matchRSpec!925 (regOne!14665 r!13927) s!9460))))

(assert (=> b!2410458 (=> res!1023747 e!1534581)))

(declare-fun c!383995 () Bool)

(declare-fun call!147205 () Bool)

(declare-fun bm!147200 () Bool)

(declare-fun Exists!1127 (Int) Bool)

(assert (=> bm!147200 (= call!147205 (Exists!1127 (ite c!383995 lambda!90732 lambda!90733)))))

(declare-fun b!2410459 () Bool)

(assert (=> b!2410459 (= e!1534583 e!1534578)))

(assert (=> b!2410459 (= c!383995 (is-Star!7076 r!13927))))

(declare-fun d!700551 () Bool)

(declare-fun c!383994 () Bool)

(assert (=> d!700551 (= c!383994 (is-EmptyExpr!7076 r!13927))))

(assert (=> d!700551 (= (matchRSpec!925 r!13927 s!9460) e!1534582)))

(declare-fun b!2410453 () Bool)

(assert (=> b!2410453 (= e!1534582 call!147204)))

(declare-fun b!2410460 () Bool)

(declare-fun c!383993 () Bool)

(assert (=> b!2410460 (= c!383993 (is-Union!7076 r!13927))))

(assert (=> b!2410460 (= e!1534579 e!1534583)))

(assert (=> b!2410461 (= e!1534584 call!147205)))

(assert (=> b!2410462 (= e!1534578 call!147205)))

(assert (= (and d!700551 c!383994) b!2410453))

(assert (= (and d!700551 (not c!383994)) b!2410455))

(assert (= (and b!2410455 res!1023749) b!2410456))

(assert (= (and b!2410456 c!383996) b!2410457))

(assert (= (and b!2410456 (not c!383996)) b!2410460))

(assert (= (and b!2410460 c!383993) b!2410458))

(assert (= (and b!2410460 (not c!383993)) b!2410459))

(assert (= (and b!2410458 (not res!1023747)) b!2410452))

(assert (= (and b!2410459 c!383995) b!2410454))

(assert (= (and b!2410459 (not c!383995)) b!2410462))

(assert (= (and b!2410454 (not res!1023750)) b!2410461))

(assert (= (or b!2410461 b!2410462) bm!147200))

(assert (= (or b!2410453 b!2410454) bm!147199))

(assert (=> bm!147199 m!2802017))

(declare-fun m!2802037 () Bool)

(assert (=> b!2410452 m!2802037))

(declare-fun m!2802039 () Bool)

(assert (=> b!2410458 m!2802039))

(declare-fun m!2802041 () Bool)

(assert (=> bm!147200 m!2802041))

(assert (=> b!2410203 d!700551))

(declare-fun d!700559 () Bool)

(assert (=> d!700559 (= (matchR!3193 r!13927 s!9460) (matchRSpec!925 r!13927 s!9460))))

(declare-fun lt!873521 () Unit!41423)

(declare-fun choose!14255 (Regex!7076 List!28391) Unit!41423)

(assert (=> d!700559 (= lt!873521 (choose!14255 r!13927 s!9460))))

(assert (=> d!700559 (validRegex!2798 r!13927)))

(assert (=> d!700559 (= (mainMatchTheorem!925 r!13927 s!9460) lt!873521)))

(declare-fun bs!463414 () Bool)

(assert (= bs!463414 d!700559))

(assert (=> bs!463414 m!2801831))

(assert (=> bs!463414 m!2801833))

(declare-fun m!2802043 () Bool)

(assert (=> bs!463414 m!2802043))

(assert (=> bs!463414 m!2802019))

(assert (=> b!2410203 d!700559))

(declare-fun bs!463415 () Bool)

(declare-fun d!700561 () Bool)

(assert (= bs!463415 (and d!700561 start!236210)))

(declare-fun lambda!90736 () Int)

(assert (=> bs!463415 (= lambda!90736 lambda!90722)))

(declare-fun b!2410487 () Bool)

(declare-fun e!1534598 () Regex!7076)

(assert (=> b!2410487 (= e!1534598 (Concat!11712 (h!33693 lt!873464) (generalisedConcat!177 (t!208367 lt!873464))))))

(declare-fun b!2410488 () Bool)

(declare-fun e!1534599 () Bool)

(declare-fun e!1534600 () Bool)

(assert (=> b!2410488 (= e!1534599 e!1534600)))

(declare-fun c!384005 () Bool)

(assert (=> b!2410488 (= c!384005 (isEmpty!16295 (tail!3643 lt!873464)))))

(declare-fun b!2410489 () Bool)

(assert (=> b!2410489 (= e!1534598 EmptyExpr!7076)))

(declare-fun e!1534602 () Bool)

(assert (=> d!700561 e!1534602))

(declare-fun res!1023756 () Bool)

(assert (=> d!700561 (=> (not res!1023756) (not e!1534602))))

(declare-fun lt!873524 () Regex!7076)

(assert (=> d!700561 (= res!1023756 (validRegex!2798 lt!873524))))

(declare-fun e!1534601 () Regex!7076)

(assert (=> d!700561 (= lt!873524 e!1534601)))

(declare-fun c!384006 () Bool)

(declare-fun e!1534603 () Bool)

(assert (=> d!700561 (= c!384006 e!1534603)))

(declare-fun res!1023755 () Bool)

(assert (=> d!700561 (=> (not res!1023755) (not e!1534603))))

(assert (=> d!700561 (= res!1023755 (is-Cons!28292 lt!873464))))

(assert (=> d!700561 (forall!5710 lt!873464 lambda!90736)))

(assert (=> d!700561 (= (generalisedConcat!177 lt!873464) lt!873524)))

(declare-fun b!2410490 () Bool)

(assert (=> b!2410490 (= e!1534602 e!1534599)))

(declare-fun c!384007 () Bool)

(assert (=> b!2410490 (= c!384007 (isEmpty!16295 lt!873464))))

(declare-fun b!2410491 () Bool)

(assert (=> b!2410491 (= e!1534603 (isEmpty!16295 (t!208367 lt!873464)))))

(declare-fun b!2410492 () Bool)

(assert (=> b!2410492 (= e!1534601 (h!33693 lt!873464))))

(declare-fun b!2410493 () Bool)

(declare-fun isConcat!137 (Regex!7076) Bool)

(assert (=> b!2410493 (= e!1534600 (isConcat!137 lt!873524))))

(declare-fun b!2410494 () Bool)

(assert (=> b!2410494 (= e!1534601 e!1534598)))

(declare-fun c!384008 () Bool)

(assert (=> b!2410494 (= c!384008 (is-Cons!28292 lt!873464))))

(declare-fun b!2410495 () Bool)

(declare-fun isEmptyExpr!137 (Regex!7076) Bool)

(assert (=> b!2410495 (= e!1534599 (isEmptyExpr!137 lt!873524))))

(declare-fun b!2410496 () Bool)

(assert (=> b!2410496 (= e!1534600 (= lt!873524 (head!5371 lt!873464)))))

(assert (= (and d!700561 res!1023755) b!2410491))

(assert (= (and d!700561 c!384006) b!2410492))

(assert (= (and d!700561 (not c!384006)) b!2410494))

(assert (= (and b!2410494 c!384008) b!2410487))

(assert (= (and b!2410494 (not c!384008)) b!2410489))

(assert (= (and d!700561 res!1023756) b!2410490))

(assert (= (and b!2410490 c!384007) b!2410495))

(assert (= (and b!2410490 (not c!384007)) b!2410488))

(assert (= (and b!2410488 c!384005) b!2410496))

(assert (= (and b!2410488 (not c!384005)) b!2410493))

(declare-fun m!2802045 () Bool)

(assert (=> b!2410495 m!2802045))

(declare-fun m!2802047 () Bool)

(assert (=> b!2410488 m!2802047))

(assert (=> b!2410488 m!2802047))

(declare-fun m!2802049 () Bool)

(assert (=> b!2410488 m!2802049))

(declare-fun m!2802051 () Bool)

(assert (=> b!2410496 m!2802051))

(declare-fun m!2802053 () Bool)

(assert (=> b!2410491 m!2802053))

(declare-fun m!2802055 () Bool)

(assert (=> b!2410487 m!2802055))

(assert (=> b!2410490 m!2801839))

(declare-fun m!2802057 () Bool)

(assert (=> d!700561 m!2802057))

(declare-fun m!2802059 () Bool)

(assert (=> d!700561 m!2802059))

(declare-fun m!2802061 () Bool)

(assert (=> b!2410493 m!2802061))

(assert (=> b!2410197 d!700561))

(declare-fun b!2410497 () Bool)

(declare-fun res!1023764 () Bool)

(declare-fun e!1534606 () Bool)

(assert (=> b!2410497 (=> res!1023764 e!1534606)))

(declare-fun e!1534607 () Bool)

(assert (=> b!2410497 (= res!1023764 e!1534607)))

(declare-fun res!1023762 () Bool)

(assert (=> b!2410497 (=> (not res!1023762) (not e!1534607))))

(declare-fun lt!873525 () Bool)

(assert (=> b!2410497 (= res!1023762 lt!873525)))

(declare-fun b!2410498 () Bool)

(declare-fun e!1534604 () Bool)

(declare-fun e!1534609 () Bool)

(assert (=> b!2410498 (= e!1534604 e!1534609)))

(declare-fun res!1023760 () Bool)

(assert (=> b!2410498 (=> res!1023760 e!1534609)))

(declare-fun call!147206 () Bool)

(assert (=> b!2410498 (= res!1023760 call!147206)))

(declare-fun b!2410499 () Bool)

(declare-fun res!1023761 () Bool)

(assert (=> b!2410499 (=> res!1023761 e!1534609)))

(assert (=> b!2410499 (= res!1023761 (not (isEmpty!16298 (tail!3645 s!9460))))))

(declare-fun b!2410500 () Bool)

(assert (=> b!2410500 (= e!1534607 (= (head!5373 s!9460) (c!383950 lt!873463)))))

(declare-fun b!2410501 () Bool)

(declare-fun res!1023763 () Bool)

(assert (=> b!2410501 (=> (not res!1023763) (not e!1534607))))

(assert (=> b!2410501 (= res!1023763 (not call!147206))))

(declare-fun d!700563 () Bool)

(declare-fun e!1534608 () Bool)

(assert (=> d!700563 e!1534608))

(declare-fun c!384009 () Bool)

(assert (=> d!700563 (= c!384009 (is-EmptyExpr!7076 lt!873463))))

(declare-fun e!1534605 () Bool)

(assert (=> d!700563 (= lt!873525 e!1534605)))

(declare-fun c!384011 () Bool)

(assert (=> d!700563 (= c!384011 (isEmpty!16298 s!9460))))

(assert (=> d!700563 (validRegex!2798 lt!873463)))

(assert (=> d!700563 (= (matchR!3193 lt!873463 s!9460) lt!873525)))

(declare-fun b!2410502 () Bool)

(declare-fun e!1534610 () Bool)

(assert (=> b!2410502 (= e!1534608 e!1534610)))

(declare-fun c!384010 () Bool)

(assert (=> b!2410502 (= c!384010 (is-EmptyLang!7076 lt!873463))))

(declare-fun b!2410503 () Bool)

(assert (=> b!2410503 (= e!1534605 (nullable!2118 lt!873463))))

(declare-fun bm!147201 () Bool)

(assert (=> bm!147201 (= call!147206 (isEmpty!16298 s!9460))))

(declare-fun b!2410504 () Bool)

(declare-fun res!1023759 () Bool)

(assert (=> b!2410504 (=> (not res!1023759) (not e!1534607))))

(assert (=> b!2410504 (= res!1023759 (isEmpty!16298 (tail!3645 s!9460)))))

(declare-fun b!2410505 () Bool)

(assert (=> b!2410505 (= e!1534608 (= lt!873525 call!147206))))

(declare-fun b!2410506 () Bool)

(assert (=> b!2410506 (= e!1534610 (not lt!873525))))

(declare-fun b!2410507 () Bool)

(assert (=> b!2410507 (= e!1534605 (matchR!3193 (derivativeStep!1775 lt!873463 (head!5373 s!9460)) (tail!3645 s!9460)))))

(declare-fun b!2410508 () Bool)

(declare-fun res!1023758 () Bool)

(assert (=> b!2410508 (=> res!1023758 e!1534606)))

(assert (=> b!2410508 (= res!1023758 (not (is-ElementMatch!7076 lt!873463)))))

(assert (=> b!2410508 (= e!1534610 e!1534606)))

(declare-fun b!2410509 () Bool)

(assert (=> b!2410509 (= e!1534606 e!1534604)))

(declare-fun res!1023757 () Bool)

(assert (=> b!2410509 (=> (not res!1023757) (not e!1534604))))

(assert (=> b!2410509 (= res!1023757 (not lt!873525))))

(declare-fun b!2410510 () Bool)

(assert (=> b!2410510 (= e!1534609 (not (= (head!5373 s!9460) (c!383950 lt!873463))))))

(assert (= (and d!700563 c!384011) b!2410503))

(assert (= (and d!700563 (not c!384011)) b!2410507))

(assert (= (and d!700563 c!384009) b!2410505))

(assert (= (and d!700563 (not c!384009)) b!2410502))

(assert (= (and b!2410502 c!384010) b!2410506))

(assert (= (and b!2410502 (not c!384010)) b!2410508))

(assert (= (and b!2410508 (not res!1023758)) b!2410497))

(assert (= (and b!2410497 res!1023762) b!2410501))

(assert (= (and b!2410501 res!1023763) b!2410504))

(assert (= (and b!2410504 res!1023759) b!2410500))

(assert (= (and b!2410497 (not res!1023764)) b!2410509))

(assert (= (and b!2410509 res!1023757) b!2410498))

(assert (= (and b!2410498 (not res!1023760)) b!2410499))

(assert (= (and b!2410499 (not res!1023761)) b!2410510))

(assert (= (or b!2410505 b!2410498 b!2410501) bm!147201))

(assert (=> b!2410500 m!2802009))

(assert (=> b!2410499 m!2802011))

(assert (=> b!2410499 m!2802011))

(assert (=> b!2410499 m!2802013))

(assert (=> b!2410510 m!2802009))

(declare-fun m!2802063 () Bool)

(assert (=> b!2410503 m!2802063))

(assert (=> d!700563 m!2802017))

(assert (=> d!700563 m!2801935))

(assert (=> bm!147201 m!2802017))

(assert (=> b!2410507 m!2802009))

(assert (=> b!2410507 m!2802009))

(declare-fun m!2802065 () Bool)

(assert (=> b!2410507 m!2802065))

(assert (=> b!2410507 m!2802011))

(assert (=> b!2410507 m!2802065))

(assert (=> b!2410507 m!2802011))

(declare-fun m!2802067 () Bool)

(assert (=> b!2410507 m!2802067))

(assert (=> b!2410504 m!2802011))

(assert (=> b!2410504 m!2802011))

(assert (=> b!2410504 m!2802013))

(assert (=> b!2410208 d!700563))

(declare-fun d!700565 () Bool)

(assert (=> d!700565 (= (head!5371 l!9164) (h!33693 l!9164))))

(assert (=> b!2410208 d!700565))

(declare-fun d!700567 () Bool)

(declare-fun res!1023765 () Bool)

(declare-fun e!1534611 () Bool)

(assert (=> d!700567 (=> res!1023765 e!1534611)))

(assert (=> d!700567 (= res!1023765 (is-Nil!28292 l!9164))))

(assert (=> d!700567 (= (forall!5710 l!9164 lambda!90722) e!1534611)))

(declare-fun b!2410511 () Bool)

(declare-fun e!1534612 () Bool)

(assert (=> b!2410511 (= e!1534611 e!1534612)))

(declare-fun res!1023766 () Bool)

(assert (=> b!2410511 (=> (not res!1023766) (not e!1534612))))

(assert (=> b!2410511 (= res!1023766 (dynLambda!12181 lambda!90722 (h!33693 l!9164)))))

(declare-fun b!2410512 () Bool)

(assert (=> b!2410512 (= e!1534612 (forall!5710 (t!208367 l!9164) lambda!90722))))

(assert (= (and d!700567 (not res!1023765)) b!2410511))

(assert (= (and b!2410511 res!1023766) b!2410512))

(declare-fun b_lambda!74487 () Bool)

(assert (=> (not b_lambda!74487) (not b!2410511)))

(declare-fun m!2802069 () Bool)

(assert (=> b!2410511 m!2802069))

(declare-fun m!2802071 () Bool)

(assert (=> b!2410512 m!2802071))

(assert (=> start!236210 d!700567))

(declare-fun b!2410513 () Bool)

(declare-fun res!1023774 () Bool)

(declare-fun e!1534615 () Bool)

(assert (=> b!2410513 (=> res!1023774 e!1534615)))

(declare-fun e!1534616 () Bool)

(assert (=> b!2410513 (= res!1023774 e!1534616)))

(declare-fun res!1023772 () Bool)

(assert (=> b!2410513 (=> (not res!1023772) (not e!1534616))))

(declare-fun lt!873526 () Bool)

(assert (=> b!2410513 (= res!1023772 lt!873526)))

(declare-fun b!2410514 () Bool)

(declare-fun e!1534613 () Bool)

(declare-fun e!1534618 () Bool)

(assert (=> b!2410514 (= e!1534613 e!1534618)))

(declare-fun res!1023770 () Bool)

(assert (=> b!2410514 (=> res!1023770 e!1534618)))

(declare-fun call!147207 () Bool)

(assert (=> b!2410514 (= res!1023770 call!147207)))

(declare-fun b!2410515 () Bool)

(declare-fun res!1023771 () Bool)

(assert (=> b!2410515 (=> res!1023771 e!1534618)))

(assert (=> b!2410515 (= res!1023771 (not (isEmpty!16298 (tail!3645 s!9460))))))

(declare-fun b!2410516 () Bool)

(assert (=> b!2410516 (= e!1534616 (= (head!5373 s!9460) (c!383950 lt!873462)))))

(declare-fun b!2410517 () Bool)

(declare-fun res!1023773 () Bool)

(assert (=> b!2410517 (=> (not res!1023773) (not e!1534616))))

(assert (=> b!2410517 (= res!1023773 (not call!147207))))

(declare-fun d!700569 () Bool)

(declare-fun e!1534617 () Bool)

(assert (=> d!700569 e!1534617))

(declare-fun c!384012 () Bool)

(assert (=> d!700569 (= c!384012 (is-EmptyExpr!7076 lt!873462))))

(declare-fun e!1534614 () Bool)

(assert (=> d!700569 (= lt!873526 e!1534614)))

(declare-fun c!384014 () Bool)

(assert (=> d!700569 (= c!384014 (isEmpty!16298 s!9460))))

(assert (=> d!700569 (validRegex!2798 lt!873462)))

(assert (=> d!700569 (= (matchR!3193 lt!873462 s!9460) lt!873526)))

(declare-fun b!2410518 () Bool)

(declare-fun e!1534619 () Bool)

(assert (=> b!2410518 (= e!1534617 e!1534619)))

(declare-fun c!384013 () Bool)

(assert (=> b!2410518 (= c!384013 (is-EmptyLang!7076 lt!873462))))

(declare-fun b!2410519 () Bool)

(assert (=> b!2410519 (= e!1534614 (nullable!2118 lt!873462))))

(declare-fun bm!147202 () Bool)

(assert (=> bm!147202 (= call!147207 (isEmpty!16298 s!9460))))

(declare-fun b!2410520 () Bool)

(declare-fun res!1023769 () Bool)

(assert (=> b!2410520 (=> (not res!1023769) (not e!1534616))))

(assert (=> b!2410520 (= res!1023769 (isEmpty!16298 (tail!3645 s!9460)))))

(declare-fun b!2410521 () Bool)

(assert (=> b!2410521 (= e!1534617 (= lt!873526 call!147207))))

(declare-fun b!2410522 () Bool)

(assert (=> b!2410522 (= e!1534619 (not lt!873526))))

(declare-fun b!2410523 () Bool)

(assert (=> b!2410523 (= e!1534614 (matchR!3193 (derivativeStep!1775 lt!873462 (head!5373 s!9460)) (tail!3645 s!9460)))))

(declare-fun b!2410524 () Bool)

(declare-fun res!1023768 () Bool)

(assert (=> b!2410524 (=> res!1023768 e!1534615)))

(assert (=> b!2410524 (= res!1023768 (not (is-ElementMatch!7076 lt!873462)))))

(assert (=> b!2410524 (= e!1534619 e!1534615)))

(declare-fun b!2410525 () Bool)

(assert (=> b!2410525 (= e!1534615 e!1534613)))

(declare-fun res!1023767 () Bool)

(assert (=> b!2410525 (=> (not res!1023767) (not e!1534613))))

(assert (=> b!2410525 (= res!1023767 (not lt!873526))))

(declare-fun b!2410526 () Bool)

(assert (=> b!2410526 (= e!1534618 (not (= (head!5373 s!9460) (c!383950 lt!873462))))))

(assert (= (and d!700569 c!384014) b!2410519))

(assert (= (and d!700569 (not c!384014)) b!2410523))

(assert (= (and d!700569 c!384012) b!2410521))

(assert (= (and d!700569 (not c!384012)) b!2410518))

(assert (= (and b!2410518 c!384013) b!2410522))

(assert (= (and b!2410518 (not c!384013)) b!2410524))

(assert (= (and b!2410524 (not res!1023768)) b!2410513))

(assert (= (and b!2410513 res!1023772) b!2410517))

(assert (= (and b!2410517 res!1023773) b!2410520))

(assert (= (and b!2410520 res!1023769) b!2410516))

(assert (= (and b!2410513 (not res!1023774)) b!2410525))

(assert (= (and b!2410525 res!1023767) b!2410514))

(assert (= (and b!2410514 (not res!1023770)) b!2410515))

(assert (= (and b!2410515 (not res!1023771)) b!2410526))

(assert (= (or b!2410521 b!2410514 b!2410517) bm!147202))

(assert (=> b!2410516 m!2802009))

(assert (=> b!2410515 m!2802011))

(assert (=> b!2410515 m!2802011))

(assert (=> b!2410515 m!2802013))

(assert (=> b!2410526 m!2802009))

(assert (=> b!2410519 m!2801983))

(assert (=> d!700569 m!2802017))

(assert (=> d!700569 m!2801987))

(assert (=> bm!147202 m!2802017))

(assert (=> b!2410523 m!2802009))

(assert (=> b!2410523 m!2802009))

(declare-fun m!2802073 () Bool)

(assert (=> b!2410523 m!2802073))

(assert (=> b!2410523 m!2802011))

(assert (=> b!2410523 m!2802073))

(assert (=> b!2410523 m!2802011))

(declare-fun m!2802075 () Bool)

(assert (=> b!2410523 m!2802075))

(assert (=> b!2410520 m!2802011))

(assert (=> b!2410520 m!2802011))

(assert (=> b!2410520 m!2802013))

(assert (=> b!2410207 d!700569))

(declare-fun d!700571 () Bool)

(assert (=> d!700571 (= (isEmpty!16295 l!9164) (is-Nil!28292 l!9164))))

(assert (=> b!2410201 d!700571))

(declare-fun bs!463416 () Bool)

(declare-fun d!700573 () Bool)

(assert (= bs!463416 (and d!700573 start!236210)))

(declare-fun lambda!90737 () Int)

(assert (=> bs!463416 (= lambda!90737 lambda!90722)))

(declare-fun bs!463417 () Bool)

(assert (= bs!463417 (and d!700573 d!700561)))

(assert (=> bs!463417 (= lambda!90737 lambda!90736)))

(declare-fun b!2410527 () Bool)

(declare-fun e!1534620 () Regex!7076)

(assert (=> b!2410527 (= e!1534620 (Concat!11712 (h!33693 l!9164) (generalisedConcat!177 (t!208367 l!9164))))))

(declare-fun b!2410528 () Bool)

(declare-fun e!1534621 () Bool)

(declare-fun e!1534622 () Bool)

(assert (=> b!2410528 (= e!1534621 e!1534622)))

(declare-fun c!384015 () Bool)

(assert (=> b!2410528 (= c!384015 (isEmpty!16295 (tail!3643 l!9164)))))

(declare-fun b!2410529 () Bool)

(assert (=> b!2410529 (= e!1534620 EmptyExpr!7076)))

(declare-fun e!1534624 () Bool)

(assert (=> d!700573 e!1534624))

(declare-fun res!1023776 () Bool)

(assert (=> d!700573 (=> (not res!1023776) (not e!1534624))))

(declare-fun lt!873527 () Regex!7076)

(assert (=> d!700573 (= res!1023776 (validRegex!2798 lt!873527))))

(declare-fun e!1534623 () Regex!7076)

(assert (=> d!700573 (= lt!873527 e!1534623)))

(declare-fun c!384016 () Bool)

(declare-fun e!1534625 () Bool)

(assert (=> d!700573 (= c!384016 e!1534625)))

(declare-fun res!1023775 () Bool)

(assert (=> d!700573 (=> (not res!1023775) (not e!1534625))))

(assert (=> d!700573 (= res!1023775 (is-Cons!28292 l!9164))))

(assert (=> d!700573 (forall!5710 l!9164 lambda!90737)))

(assert (=> d!700573 (= (generalisedConcat!177 l!9164) lt!873527)))

(declare-fun b!2410530 () Bool)

(assert (=> b!2410530 (= e!1534624 e!1534621)))

(declare-fun c!384017 () Bool)

(assert (=> b!2410530 (= c!384017 (isEmpty!16295 l!9164))))

(declare-fun b!2410531 () Bool)

(assert (=> b!2410531 (= e!1534625 (isEmpty!16295 (t!208367 l!9164)))))

(declare-fun b!2410532 () Bool)

(assert (=> b!2410532 (= e!1534623 (h!33693 l!9164))))

(declare-fun b!2410533 () Bool)

(assert (=> b!2410533 (= e!1534622 (isConcat!137 lt!873527))))

(declare-fun b!2410534 () Bool)

(assert (=> b!2410534 (= e!1534623 e!1534620)))

(declare-fun c!384018 () Bool)

(assert (=> b!2410534 (= c!384018 (is-Cons!28292 l!9164))))

(declare-fun b!2410535 () Bool)

(assert (=> b!2410535 (= e!1534621 (isEmptyExpr!137 lt!873527))))

(declare-fun b!2410536 () Bool)

(assert (=> b!2410536 (= e!1534622 (= lt!873527 (head!5371 l!9164)))))

(assert (= (and d!700573 res!1023775) b!2410531))

(assert (= (and d!700573 c!384016) b!2410532))

(assert (= (and d!700573 (not c!384016)) b!2410534))

(assert (= (and b!2410534 c!384018) b!2410527))

(assert (= (and b!2410534 (not c!384018)) b!2410529))

(assert (= (and d!700573 res!1023776) b!2410530))

(assert (= (and b!2410530 c!384017) b!2410535))

(assert (= (and b!2410530 (not c!384017)) b!2410528))

(assert (= (and b!2410528 c!384015) b!2410536))

(assert (= (and b!2410528 (not c!384015)) b!2410533))

(declare-fun m!2802077 () Bool)

(assert (=> b!2410535 m!2802077))

(assert (=> b!2410528 m!2801841))

(assert (=> b!2410528 m!2801841))

(declare-fun m!2802079 () Bool)

(assert (=> b!2410528 m!2802079))

(assert (=> b!2410536 m!2801845))

(declare-fun m!2802081 () Bool)

(assert (=> b!2410531 m!2802081))

(declare-fun m!2802083 () Bool)

(assert (=> b!2410527 m!2802083))

(assert (=> b!2410530 m!2801837))

(declare-fun m!2802085 () Bool)

(assert (=> d!700573 m!2802085))

(declare-fun m!2802087 () Bool)

(assert (=> d!700573 m!2802087))

(declare-fun m!2802089 () Bool)

(assert (=> b!2410533 m!2802089))

(assert (=> b!2410205 d!700573))

(declare-fun d!700575 () Bool)

(assert (=> d!700575 (= (isEmpty!16295 lt!873464) (is-Nil!28292 lt!873464))))

(assert (=> b!2410210 d!700575))

(declare-fun d!700577 () Bool)

(assert (=> d!700577 (= (tail!3643 l!9164) (t!208367 l!9164))))

(assert (=> b!2410210 d!700577))

(declare-fun b!2410558 () Bool)

(declare-fun e!1534634 () Bool)

(declare-fun tp!766878 () Bool)

(declare-fun tp!766877 () Bool)

(assert (=> b!2410558 (= e!1534634 (and tp!766878 tp!766877))))

(assert (=> b!2410198 (= tp!766839 e!1534634)))

(declare-fun b!2410560 () Bool)

(declare-fun tp!766875 () Bool)

(declare-fun tp!766876 () Bool)

(assert (=> b!2410560 (= e!1534634 (and tp!766875 tp!766876))))

(declare-fun b!2410557 () Bool)

(assert (=> b!2410557 (= e!1534634 tp_is_empty!11565)))

(declare-fun b!2410559 () Bool)

(declare-fun tp!766874 () Bool)

(assert (=> b!2410559 (= e!1534634 tp!766874)))

(assert (= (and b!2410198 (is-ElementMatch!7076 (reg!7405 r!13927))) b!2410557))

(assert (= (and b!2410198 (is-Concat!11712 (reg!7405 r!13927))) b!2410558))

(assert (= (and b!2410198 (is-Star!7076 (reg!7405 r!13927))) b!2410559))

(assert (= (and b!2410198 (is-Union!7076 (reg!7405 r!13927))) b!2410560))

(declare-fun b!2410562 () Bool)

(declare-fun e!1534635 () Bool)

(declare-fun tp!766883 () Bool)

(declare-fun tp!766882 () Bool)

(assert (=> b!2410562 (= e!1534635 (and tp!766883 tp!766882))))

(assert (=> b!2410202 (= tp!766838 e!1534635)))

(declare-fun b!2410564 () Bool)

(declare-fun tp!766880 () Bool)

(declare-fun tp!766881 () Bool)

(assert (=> b!2410564 (= e!1534635 (and tp!766880 tp!766881))))

(declare-fun b!2410561 () Bool)

(assert (=> b!2410561 (= e!1534635 tp_is_empty!11565)))

(declare-fun b!2410563 () Bool)

(declare-fun tp!766879 () Bool)

(assert (=> b!2410563 (= e!1534635 tp!766879)))

(assert (= (and b!2410202 (is-ElementMatch!7076 (regOne!14664 r!13927))) b!2410561))

(assert (= (and b!2410202 (is-Concat!11712 (regOne!14664 r!13927))) b!2410562))

(assert (= (and b!2410202 (is-Star!7076 (regOne!14664 r!13927))) b!2410563))

(assert (= (and b!2410202 (is-Union!7076 (regOne!14664 r!13927))) b!2410564))

(declare-fun b!2410566 () Bool)

(declare-fun e!1534636 () Bool)

(declare-fun tp!766888 () Bool)

(declare-fun tp!766887 () Bool)

(assert (=> b!2410566 (= e!1534636 (and tp!766888 tp!766887))))

(assert (=> b!2410202 (= tp!766832 e!1534636)))

(declare-fun b!2410568 () Bool)

(declare-fun tp!766885 () Bool)

(declare-fun tp!766886 () Bool)

(assert (=> b!2410568 (= e!1534636 (and tp!766885 tp!766886))))

(declare-fun b!2410565 () Bool)

(assert (=> b!2410565 (= e!1534636 tp_is_empty!11565)))

(declare-fun b!2410567 () Bool)

(declare-fun tp!766884 () Bool)

(assert (=> b!2410567 (= e!1534636 tp!766884)))

(assert (= (and b!2410202 (is-ElementMatch!7076 (regTwo!14664 r!13927))) b!2410565))

(assert (= (and b!2410202 (is-Concat!11712 (regTwo!14664 r!13927))) b!2410566))

(assert (= (and b!2410202 (is-Star!7076 (regTwo!14664 r!13927))) b!2410567))

(assert (= (and b!2410202 (is-Union!7076 (regTwo!14664 r!13927))) b!2410568))

(declare-fun b!2410570 () Bool)

(declare-fun e!1534639 () Bool)

(declare-fun tp!766893 () Bool)

(declare-fun tp!766892 () Bool)

(assert (=> b!2410570 (= e!1534639 (and tp!766893 tp!766892))))

(assert (=> b!2410206 (= tp!766837 e!1534639)))

(declare-fun b!2410572 () Bool)

(declare-fun tp!766890 () Bool)

(declare-fun tp!766891 () Bool)

(assert (=> b!2410572 (= e!1534639 (and tp!766890 tp!766891))))

(declare-fun b!2410569 () Bool)

(assert (=> b!2410569 (= e!1534639 tp_is_empty!11565)))

(declare-fun b!2410571 () Bool)

(declare-fun tp!766889 () Bool)

(assert (=> b!2410571 (= e!1534639 tp!766889)))

(assert (= (and b!2410206 (is-ElementMatch!7076 (regOne!14665 r!13927))) b!2410569))

(assert (= (and b!2410206 (is-Concat!11712 (regOne!14665 r!13927))) b!2410570))

(assert (= (and b!2410206 (is-Star!7076 (regOne!14665 r!13927))) b!2410571))

(assert (= (and b!2410206 (is-Union!7076 (regOne!14665 r!13927))) b!2410572))

(declare-fun b!2410578 () Bool)

(declare-fun e!1534642 () Bool)

(declare-fun tp!766898 () Bool)

(declare-fun tp!766897 () Bool)

(assert (=> b!2410578 (= e!1534642 (and tp!766898 tp!766897))))

(assert (=> b!2410206 (= tp!766835 e!1534642)))

(declare-fun b!2410580 () Bool)

(declare-fun tp!766895 () Bool)

(declare-fun tp!766896 () Bool)

(assert (=> b!2410580 (= e!1534642 (and tp!766895 tp!766896))))

(declare-fun b!2410577 () Bool)

(assert (=> b!2410577 (= e!1534642 tp_is_empty!11565)))

(declare-fun b!2410579 () Bool)

(declare-fun tp!766894 () Bool)

(assert (=> b!2410579 (= e!1534642 tp!766894)))

(assert (= (and b!2410206 (is-ElementMatch!7076 (regTwo!14665 r!13927))) b!2410577))

(assert (= (and b!2410206 (is-Concat!11712 (regTwo!14665 r!13927))) b!2410578))

(assert (= (and b!2410206 (is-Star!7076 (regTwo!14665 r!13927))) b!2410579))

(assert (= (and b!2410206 (is-Union!7076 (regTwo!14665 r!13927))) b!2410580))

(declare-fun b!2410589 () Bool)

(declare-fun e!1534645 () Bool)

(declare-fun tp!766901 () Bool)

(assert (=> b!2410589 (= e!1534645 (and tp_is_empty!11565 tp!766901))))

(assert (=> b!2410200 (= tp!766834 e!1534645)))

(assert (= (and b!2410200 (is-Cons!28293 (t!208368 s!9460))) b!2410589))

(declare-fun b!2410591 () Bool)

(declare-fun e!1534646 () Bool)

(declare-fun tp!766906 () Bool)

(declare-fun tp!766905 () Bool)

(assert (=> b!2410591 (= e!1534646 (and tp!766906 tp!766905))))

(assert (=> b!2410199 (= tp!766836 e!1534646)))

(declare-fun b!2410593 () Bool)

(declare-fun tp!766903 () Bool)

(declare-fun tp!766904 () Bool)

(assert (=> b!2410593 (= e!1534646 (and tp!766903 tp!766904))))

(declare-fun b!2410590 () Bool)

(assert (=> b!2410590 (= e!1534646 tp_is_empty!11565)))

(declare-fun b!2410592 () Bool)

(declare-fun tp!766902 () Bool)

(assert (=> b!2410592 (= e!1534646 tp!766902)))

(assert (= (and b!2410199 (is-ElementMatch!7076 (h!33693 l!9164))) b!2410590))

(assert (= (and b!2410199 (is-Concat!11712 (h!33693 l!9164))) b!2410591))

(assert (= (and b!2410199 (is-Star!7076 (h!33693 l!9164))) b!2410592))

(assert (= (and b!2410199 (is-Union!7076 (h!33693 l!9164))) b!2410593))

(declare-fun b!2410598 () Bool)

(declare-fun e!1534649 () Bool)

(declare-fun tp!766911 () Bool)

(declare-fun tp!766912 () Bool)

(assert (=> b!2410598 (= e!1534649 (and tp!766911 tp!766912))))

(assert (=> b!2410199 (= tp!766833 e!1534649)))

(assert (= (and b!2410199 (is-Cons!28292 (t!208367 l!9164))) b!2410598))

(declare-fun b_lambda!74489 () Bool)

(assert (= b_lambda!74485 (or start!236210 b_lambda!74489)))

(declare-fun bs!463418 () Bool)

(declare-fun d!700579 () Bool)

(assert (= bs!463418 (and d!700579 start!236210)))

(assert (=> bs!463418 (= (dynLambda!12181 lambda!90722 (h!33693 lt!873464)) (validRegex!2798 (h!33693 lt!873464)))))

(declare-fun m!2802091 () Bool)

(assert (=> bs!463418 m!2802091))

(assert (=> b!2410333 d!700579))

(declare-fun b_lambda!74491 () Bool)

(assert (= b_lambda!74487 (or start!236210 b_lambda!74491)))

(declare-fun bs!463419 () Bool)

(declare-fun d!700581 () Bool)

(assert (= bs!463419 (and d!700581 start!236210)))

(assert (=> bs!463419 (= (dynLambda!12181 lambda!90722 (h!33693 l!9164)) (validRegex!2798 (h!33693 l!9164)))))

(declare-fun m!2802093 () Bool)

(assert (=> bs!463419 m!2802093))

(assert (=> b!2410511 d!700581))

(push 1)

(assert (not b!2410406))

(assert (not b!2410487))

(assert (not b!2410495))

(assert (not b!2410379))

(assert (not b!2410598))

(assert (not b!2410328))

(assert (not d!700547))

(assert (not d!700573))

(assert (not b!2410523))

(assert (not b!2410510))

(assert (not b!2410279))

(assert (not b!2410278))

(assert (not b!2410280))

(assert (not d!700537))

(assert (not b!2410593))

(assert (not b!2410507))

(assert (not b!2410283))

(assert (not b!2410380))

(assert (not b!2410519))

(assert (not b!2410285))

(assert (not d!700529))

(assert (not b!2410410))

(assert (not b!2410580))

(assert (not b!2410512))

(assert (not b!2410409))

(assert (not b!2410560))

(assert (not b!2410515))

(assert (not b!2410493))

(assert (not b!2410559))

(assert (not b!2410504))

(assert (not b!2410503))

(assert (not b!2410500))

(assert (not bm!147194))

(assert (not d!700535))

(assert (not b!2410591))

(assert (not d!700527))

(assert (not b!2410558))

(assert (not b!2410589))

(assert (not d!700559))

(assert (not b!2410592))

(assert (not b!2410491))

(assert (not b!2410526))

(assert (not b!2410516))

(assert (not b!2410299))

(assert (not bm!147193))

(assert (not d!700563))

(assert (not b!2410334))

(assert (not b!2410387))

(assert (not b!2410520))

(assert (not bm!147199))

(assert (not d!700545))

(assert (not bs!463419))

(assert (not b!2410568))

(assert (not b!2410533))

(assert (not b!2410562))

(assert (not b!2410571))

(assert (not b!2410572))

(assert (not b_lambda!74491))

(assert (not b!2410405))

(assert (not b!2410567))

(assert (not d!700561))

(assert (not b!2410281))

(assert (not b!2410384))

(assert (not b!2410536))

(assert (not b!2410527))

(assert (not b!2410390))

(assert (not b!2410563))

(assert (not b!2410383))

(assert (not bs!463418))

(assert (not b!2410528))

(assert tp_is_empty!11565)

(assert (not bm!147201))

(assert (not b_lambda!74489))

(assert (not b!2410531))

(assert (not b!2410458))

(assert (not d!700569))

(assert (not b!2410499))

(assert (not b!2410488))

(assert (not b!2410413))

(assert (not d!700541))

(assert (not b!2410578))

(assert (not b!2410530))

(assert (not b!2410579))

(assert (not b!2410490))

(assert (not b!2410300))

(assert (not bm!147200))

(assert (not bm!147202))

(assert (not b!2410416))

(assert (not b!2410570))

(assert (not b!2410566))

(assert (not b!2410535))

(assert (not b!2410452))

(assert (not b!2410564))

(assert (not b!2410496))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

