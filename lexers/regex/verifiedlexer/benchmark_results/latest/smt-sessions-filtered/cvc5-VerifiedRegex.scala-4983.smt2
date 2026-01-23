; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252562 () Bool)

(assert start!252562)

(declare-fun b!2599729 () Bool)

(declare-fun res!1094934 () Bool)

(declare-fun e!1640953 () Bool)

(assert (=> b!2599729 (=> (not res!1094934) (not e!1640953))))

(declare-datatypes ((B!2351 0))(
  ( (B!2352 (val!9643 Int)) )
))
(declare-datatypes ((List!30076 0))(
  ( (Nil!29976) (Cons!29976 (h!35396 B!2351) (t!213089 List!30076)) )
))
(declare-fun l!3274 () List!30076)

(assert (=> b!2599729 (= res!1094934 (not (is-Cons!29976 l!3274)))))

(declare-fun b!2599731 () Bool)

(declare-fun e!1640952 () Bool)

(declare-fun tp_is_empty!13631 () Bool)

(declare-fun tp!823699 () Bool)

(assert (=> b!2599731 (= e!1640952 (and tp_is_empty!13631 tp!823699))))

(declare-fun b!2599730 () Bool)

(declare-fun e!9367 () B!2351)

(declare-fun -!211 (List!30076 B!2351) List!30076)

(assert (=> b!2599730 (= e!1640953 (not (= l!3274 (-!211 l!3274 e!9367))))))

(declare-fun b!2599728 () Bool)

(declare-fun res!1094932 () Bool)

(assert (=> b!2599728 (=> (not res!1094932) (not e!1640953))))

(declare-fun contains!5524 (List!30076 B!2351) Bool)

(assert (=> b!2599728 (= res!1094932 (not (contains!5524 l!3274 e!9367)))))

(declare-fun res!1094933 () Bool)

(assert (=> start!252562 (=> (not res!1094933) (not e!1640953))))

(declare-fun noDuplicate!524 (List!30076) Bool)

(assert (=> start!252562 (= res!1094933 (noDuplicate!524 l!3274))))

(assert (=> start!252562 e!1640953))

(assert (=> start!252562 e!1640952))

(assert (=> start!252562 tp_is_empty!13631))

(assert (= (and start!252562 res!1094933) b!2599728))

(assert (= (and b!2599728 res!1094932) b!2599729))

(assert (= (and b!2599729 res!1094934) b!2599730))

(assert (= (and start!252562 (is-Cons!29976 l!3274)) b!2599731))

(declare-fun m!2935393 () Bool)

(assert (=> b!2599730 m!2935393))

(declare-fun m!2935395 () Bool)

(assert (=> b!2599728 m!2935395))

(declare-fun m!2935397 () Bool)

(assert (=> start!252562 m!2935397))

(push 1)

(assert (not b!2599728))

(assert (not start!252562))

(assert tp_is_empty!13631)

(assert (not b!2599730))

(assert (not b!2599731))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2599754 () Bool)

(declare-fun e!1640969 () List!30076)

(declare-fun call!167411 () List!30076)

(assert (=> b!2599754 (= e!1640969 call!167411)))

(declare-fun b!2599755 () Bool)

(declare-fun e!1640968 () List!30076)

(assert (=> b!2599755 (= e!1640968 e!1640969)))

(declare-fun c!418609 () Bool)

(assert (=> b!2599755 (= c!418609 (= e!9367 (h!35396 l!3274)))))

(declare-fun b!2599756 () Bool)

(assert (=> b!2599756 (= e!1640969 (Cons!29976 (h!35396 l!3274) call!167411))))

(declare-fun lt!915222 () List!30076)

(declare-fun b!2599757 () Bool)

(declare-fun e!1640967 () Bool)

(declare-fun content!4247 (List!30076) (Set B!2351))

(assert (=> b!2599757 (= e!1640967 (= (content!4247 lt!915222) (set.minus (content!4247 l!3274) (set.insert e!9367 (as set.empty (Set B!2351))))))))

(declare-fun b!2599758 () Bool)

(assert (=> b!2599758 (= e!1640968 Nil!29976)))

(declare-fun d!736568 () Bool)

(assert (=> d!736568 e!1640967))

(declare-fun res!1094946 () Bool)

(assert (=> d!736568 (=> (not res!1094946) (not e!1640967))))

(declare-fun size!23243 (List!30076) Int)

(assert (=> d!736568 (= res!1094946 (<= (size!23243 lt!915222) (size!23243 l!3274)))))

(assert (=> d!736568 (= lt!915222 e!1640968)))

(declare-fun c!418610 () Bool)

(assert (=> d!736568 (= c!418610 (is-Cons!29976 l!3274))))

(assert (=> d!736568 (= (-!211 l!3274 e!9367) lt!915222)))

(declare-fun bm!167406 () Bool)

(assert (=> bm!167406 (= call!167411 (-!211 (t!213089 l!3274) e!9367))))

(assert (= (and d!736568 c!418610) b!2599755))

(assert (= (and d!736568 (not c!418610)) b!2599758))

(assert (= (and b!2599755 c!418609) b!2599754))

(assert (= (and b!2599755 (not c!418609)) b!2599756))

(assert (= (or b!2599754 b!2599756) bm!167406))

(assert (= (and d!736568 res!1094946) b!2599757))

(declare-fun m!2935405 () Bool)

(assert (=> b!2599757 m!2935405))

(declare-fun m!2935407 () Bool)

(assert (=> b!2599757 m!2935407))

(declare-fun m!2935409 () Bool)

(assert (=> b!2599757 m!2935409))

(declare-fun m!2935411 () Bool)

(assert (=> d!736568 m!2935411))

(declare-fun m!2935413 () Bool)

(assert (=> d!736568 m!2935413))

(declare-fun m!2935415 () Bool)

(assert (=> bm!167406 m!2935415))

(assert (=> b!2599730 d!736568))

(declare-fun d!736572 () Bool)

(declare-fun res!1094951 () Bool)

(declare-fun e!1640974 () Bool)

(assert (=> d!736572 (=> res!1094951 e!1640974)))

(assert (=> d!736572 (= res!1094951 (is-Nil!29976 l!3274))))

(assert (=> d!736572 (= (noDuplicate!524 l!3274) e!1640974)))

(declare-fun b!2599763 () Bool)

(declare-fun e!1640975 () Bool)

(assert (=> b!2599763 (= e!1640974 e!1640975)))

(declare-fun res!1094952 () Bool)

(assert (=> b!2599763 (=> (not res!1094952) (not e!1640975))))

(assert (=> b!2599763 (= res!1094952 (not (contains!5524 (t!213089 l!3274) (h!35396 l!3274))))))

(declare-fun b!2599764 () Bool)

(assert (=> b!2599764 (= e!1640975 (noDuplicate!524 (t!213089 l!3274)))))

(assert (= (and d!736572 (not res!1094951)) b!2599763))

(assert (= (and b!2599763 res!1094952) b!2599764))

(declare-fun m!2935417 () Bool)

(assert (=> b!2599763 m!2935417))

(declare-fun m!2935419 () Bool)

(assert (=> b!2599764 m!2935419))

(assert (=> start!252562 d!736572))

(declare-fun d!736574 () Bool)

(declare-fun lt!915227 () Bool)

(assert (=> d!736574 (= lt!915227 (set.member e!9367 (content!4247 l!3274)))))

(declare-fun e!1640984 () Bool)

(assert (=> d!736574 (= lt!915227 e!1640984)))

(declare-fun res!1094962 () Bool)

(assert (=> d!736574 (=> (not res!1094962) (not e!1640984))))

(assert (=> d!736574 (= res!1094962 (is-Cons!29976 l!3274))))

(assert (=> d!736574 (= (contains!5524 l!3274 e!9367) lt!915227)))

(declare-fun b!2599773 () Bool)

(declare-fun e!1640985 () Bool)

(assert (=> b!2599773 (= e!1640984 e!1640985)))

(declare-fun res!1094961 () Bool)

(assert (=> b!2599773 (=> res!1094961 e!1640985)))

(assert (=> b!2599773 (= res!1094961 (= (h!35396 l!3274) e!9367))))

(declare-fun b!2599774 () Bool)

(assert (=> b!2599774 (= e!1640985 (contains!5524 (t!213089 l!3274) e!9367))))

(assert (= (and d!736574 res!1094962) b!2599773))

(assert (= (and b!2599773 (not res!1094961)) b!2599774))

(assert (=> d!736574 m!2935407))

(declare-fun m!2935421 () Bool)

(assert (=> d!736574 m!2935421))

(declare-fun m!2935423 () Bool)

(assert (=> b!2599774 m!2935423))

(assert (=> b!2599728 d!736574))

(declare-fun b!2599779 () Bool)

(declare-fun e!1640988 () Bool)

(declare-fun tp!823705 () Bool)

(assert (=> b!2599779 (= e!1640988 (and tp_is_empty!13631 tp!823705))))

(assert (=> b!2599731 (= tp!823699 e!1640988)))

(assert (= (and b!2599731 (is-Cons!29976 (t!213089 l!3274))) b!2599779))

(push 1)

(assert (not b!2599779))

(assert (not b!2599757))

(assert (not b!2599774))

(assert (not b!2599763))

(assert (not d!736574))

(assert (not d!736568))

(assert tp_is_empty!13631)

(assert (not bm!167406))

(assert (not b!2599764))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

