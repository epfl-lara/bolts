; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239318 () Bool)

(assert start!239318)

(declare-fun b!2451312 () Bool)

(declare-fun e!1555857 () Bool)

(declare-fun tp_is_empty!11827 () Bool)

(declare-fun tp!779703 () Bool)

(assert (=> b!2451312 (= e!1555857 (and tp_is_empty!11827 tp!779703))))

(declare-fun b!2451313 () Bool)

(declare-fun e!1555856 () Bool)

(declare-fun tp!779701 () Bool)

(assert (=> b!2451313 (= e!1555856 tp!779701)))

(declare-fun b!2451314 () Bool)

(declare-fun e!1555854 () Bool)

(declare-fun e!1555858 () Bool)

(assert (=> b!2451314 (= e!1555854 (not e!1555858))))

(declare-fun res!1039580 () Bool)

(assert (=> b!2451314 (=> res!1039580 e!1555858)))

(declare-datatypes ((C!14572 0))(
  ( (C!14573 (val!8528 Int)) )
))
(declare-datatypes ((Regex!7207 0))(
  ( (ElementMatch!7207 (c!391151 C!14572)) (Concat!11843 (regOne!14926 Regex!7207) (regTwo!14926 Regex!7207)) (EmptyExpr!7207) (Star!7207 (reg!7536 Regex!7207)) (EmptyLang!7207) (Union!7207 (regOne!14927 Regex!7207) (regTwo!14927 Regex!7207)) )
))
(declare-fun r!13927 () Regex!7207)

(get-info :version)

(assert (=> b!2451314 (= res!1039580 (or ((_ is Concat!11843) r!13927) ((_ is EmptyExpr!7207) r!13927)))))

(declare-datatypes ((List!28650 0))(
  ( (Nil!28552) (Cons!28552 (h!33953 C!14572) (t!208627 List!28650)) )
))
(declare-fun s!9460 () List!28650)

(declare-fun matchR!3322 (Regex!7207 List!28650) Bool)

(declare-fun matchRSpec!1054 (Regex!7207 List!28650) Bool)

(assert (=> b!2451314 (= (matchR!3322 r!13927 s!9460) (matchRSpec!1054 r!13927 s!9460))))

(declare-datatypes ((Unit!41869 0))(
  ( (Unit!41870) )
))
(declare-fun lt!879782 () Unit!41869)

(declare-fun mainMatchTheorem!1054 (Regex!7207 List!28650) Unit!41869)

(assert (=> b!2451314 (= lt!879782 (mainMatchTheorem!1054 r!13927 s!9460))))

(declare-fun b!2451315 () Bool)

(declare-fun res!1039574 () Bool)

(declare-fun e!1555853 () Bool)

(assert (=> b!2451315 (=> res!1039574 e!1555853)))

(assert (=> b!2451315 (= res!1039574 false)))

(declare-fun b!2451316 () Bool)

(declare-fun tp!779700 () Bool)

(declare-fun tp!779702 () Bool)

(assert (=> b!2451316 (= e!1555856 (and tp!779700 tp!779702))))

(declare-fun b!2451317 () Bool)

(declare-fun res!1039572 () Bool)

(assert (=> b!2451317 (=> (not res!1039572) (not e!1555854))))

(declare-datatypes ((List!28651 0))(
  ( (Nil!28553) (Cons!28553 (h!33954 Regex!7207) (t!208628 List!28651)) )
))
(declare-fun l!9164 () List!28651)

(declare-fun generalisedConcat!308 (List!28651) Regex!7207)

(assert (=> b!2451317 (= res!1039572 (= r!13927 (generalisedConcat!308 l!9164)))))

(declare-fun b!2451318 () Bool)

(declare-fun e!1555852 () Bool)

(declare-fun tp!779699 () Bool)

(declare-fun tp!779697 () Bool)

(assert (=> b!2451318 (= e!1555852 (and tp!779699 tp!779697))))

(declare-fun b!2451319 () Bool)

(declare-fun e!1555855 () Bool)

(assert (=> b!2451319 (= e!1555855 e!1555853)))

(declare-fun res!1039578 () Bool)

(assert (=> b!2451319 (=> res!1039578 e!1555853)))

(declare-fun lt!879780 () Regex!7207)

(assert (=> b!2451319 (= res!1039578 (not (matchR!3322 lt!879780 s!9460)))))

(declare-fun head!5577 (List!28651) Regex!7207)

(assert (=> b!2451319 (= lt!879780 (head!5577 l!9164))))

(declare-fun b!2451320 () Bool)

(assert (=> b!2451320 (= e!1555853 (matchR!3322 EmptyExpr!7207 Nil!28552))))

(declare-fun b!2451321 () Bool)

(declare-fun res!1039576 () Bool)

(assert (=> b!2451321 (=> res!1039576 e!1555853)))

(declare-fun validRegex!2901 (Regex!7207) Bool)

(assert (=> b!2451321 (= res!1039576 (not (validRegex!2901 lt!879780)))))

(declare-fun b!2451322 () Bool)

(declare-fun tp!779698 () Bool)

(declare-fun tp!779696 () Bool)

(assert (=> b!2451322 (= e!1555856 (and tp!779698 tp!779696))))

(declare-fun b!2451323 () Bool)

(declare-fun res!1039575 () Bool)

(assert (=> b!2451323 (=> res!1039575 e!1555855)))

(declare-fun lt!879781 () List!28651)

(assert (=> b!2451323 (= res!1039575 (not (= (generalisedConcat!308 lt!879781) EmptyExpr!7207)))))

(declare-fun res!1039579 () Bool)

(assert (=> start!239318 (=> (not res!1039579) (not e!1555854))))

(declare-fun lambda!92849 () Int)

(declare-fun forall!5841 (List!28651 Int) Bool)

(assert (=> start!239318 (= res!1039579 (forall!5841 l!9164 lambda!92849))))

(assert (=> start!239318 e!1555854))

(assert (=> start!239318 e!1555852))

(assert (=> start!239318 e!1555856))

(assert (=> start!239318 e!1555857))

(declare-fun b!2451324 () Bool)

(assert (=> b!2451324 (= e!1555858 e!1555855)))

(declare-fun res!1039573 () Bool)

(assert (=> b!2451324 (=> res!1039573 e!1555855)))

(declare-fun isEmpty!16584 (List!28651) Bool)

(assert (=> b!2451324 (= res!1039573 (not (isEmpty!16584 lt!879781)))))

(declare-fun tail!3850 (List!28651) List!28651)

(assert (=> b!2451324 (= lt!879781 (tail!3850 l!9164))))

(declare-fun b!2451325 () Bool)

(declare-fun res!1039577 () Bool)

(assert (=> b!2451325 (=> res!1039577 e!1555858)))

(assert (=> b!2451325 (= res!1039577 (isEmpty!16584 l!9164))))

(declare-fun b!2451326 () Bool)

(assert (=> b!2451326 (= e!1555856 tp_is_empty!11827)))

(assert (= (and start!239318 res!1039579) b!2451317))

(assert (= (and b!2451317 res!1039572) b!2451314))

(assert (= (and b!2451314 (not res!1039580)) b!2451325))

(assert (= (and b!2451325 (not res!1039577)) b!2451324))

(assert (= (and b!2451324 (not res!1039573)) b!2451323))

(assert (= (and b!2451323 (not res!1039575)) b!2451319))

(assert (= (and b!2451319 (not res!1039578)) b!2451321))

(assert (= (and b!2451321 (not res!1039576)) b!2451315))

(assert (= (and b!2451315 (not res!1039574)) b!2451320))

(assert (= (and start!239318 ((_ is Cons!28553) l!9164)) b!2451318))

(assert (= (and start!239318 ((_ is ElementMatch!7207) r!13927)) b!2451326))

(assert (= (and start!239318 ((_ is Concat!11843) r!13927)) b!2451322))

(assert (= (and start!239318 ((_ is Star!7207) r!13927)) b!2451313))

(assert (= (and start!239318 ((_ is Union!7207) r!13927)) b!2451316))

(assert (= (and start!239318 ((_ is Cons!28552) s!9460)) b!2451312))

(declare-fun m!2824817 () Bool)

(assert (=> b!2451320 m!2824817))

(declare-fun m!2824819 () Bool)

(assert (=> b!2451317 m!2824819))

(declare-fun m!2824821 () Bool)

(assert (=> b!2451325 m!2824821))

(declare-fun m!2824823 () Bool)

(assert (=> b!2451323 m!2824823))

(declare-fun m!2824825 () Bool)

(assert (=> b!2451314 m!2824825))

(declare-fun m!2824827 () Bool)

(assert (=> b!2451314 m!2824827))

(declare-fun m!2824829 () Bool)

(assert (=> b!2451314 m!2824829))

(declare-fun m!2824831 () Bool)

(assert (=> b!2451321 m!2824831))

(declare-fun m!2824833 () Bool)

(assert (=> b!2451324 m!2824833))

(declare-fun m!2824835 () Bool)

(assert (=> b!2451324 m!2824835))

(declare-fun m!2824837 () Bool)

(assert (=> start!239318 m!2824837))

(declare-fun m!2824839 () Bool)

(assert (=> b!2451319 m!2824839))

(declare-fun m!2824841 () Bool)

(assert (=> b!2451319 m!2824841))

(check-sat (not b!2451321) (not b!2451320) (not start!239318) (not b!2451316) (not b!2451324) (not b!2451317) (not b!2451312) (not b!2451319) (not b!2451322) tp_is_empty!11827 (not b!2451314) (not b!2451313) (not b!2451318) (not b!2451323) (not b!2451325))
(check-sat)
(get-model)

(declare-fun d!706704 () Bool)

(assert (=> d!706704 (= (isEmpty!16584 lt!879781) ((_ is Nil!28553) lt!879781))))

(assert (=> b!2451324 d!706704))

(declare-fun d!706706 () Bool)

(assert (=> d!706706 (= (tail!3850 l!9164) (t!208628 l!9164))))

(assert (=> b!2451324 d!706706))

(declare-fun bs!465716 () Bool)

(declare-fun d!706708 () Bool)

(assert (= bs!465716 (and d!706708 start!239318)))

(declare-fun lambda!92852 () Int)

(assert (=> bs!465716 (= lambda!92852 lambda!92849)))

(declare-fun b!2451382 () Bool)

(declare-fun e!1555891 () Regex!7207)

(assert (=> b!2451382 (= e!1555891 (h!33954 lt!879781))))

(declare-fun b!2451383 () Bool)

(declare-fun e!1555895 () Bool)

(declare-fun e!1555896 () Bool)

(assert (=> b!2451383 (= e!1555895 e!1555896)))

(declare-fun c!391166 () Bool)

(assert (=> b!2451383 (= c!391166 (isEmpty!16584 (tail!3850 lt!879781)))))

(declare-fun b!2451384 () Bool)

(declare-fun e!1555894 () Regex!7207)

(assert (=> b!2451384 (= e!1555894 EmptyExpr!7207)))

(declare-fun b!2451385 () Bool)

(declare-fun lt!879787 () Regex!7207)

(declare-fun isEmptyExpr!226 (Regex!7207) Bool)

(assert (=> b!2451385 (= e!1555895 (isEmptyExpr!226 lt!879787))))

(declare-fun b!2451386 () Bool)

(declare-fun isConcat!226 (Regex!7207) Bool)

(assert (=> b!2451386 (= e!1555896 (isConcat!226 lt!879787))))

(declare-fun e!1555892 () Bool)

(assert (=> d!706708 e!1555892))

(declare-fun res!1039608 () Bool)

(assert (=> d!706708 (=> (not res!1039608) (not e!1555892))))

(assert (=> d!706708 (= res!1039608 (validRegex!2901 lt!879787))))

(assert (=> d!706708 (= lt!879787 e!1555891)))

(declare-fun c!391167 () Bool)

(declare-fun e!1555893 () Bool)

(assert (=> d!706708 (= c!391167 e!1555893)))

(declare-fun res!1039607 () Bool)

(assert (=> d!706708 (=> (not res!1039607) (not e!1555893))))

(assert (=> d!706708 (= res!1039607 ((_ is Cons!28553) lt!879781))))

(assert (=> d!706708 (forall!5841 lt!879781 lambda!92852)))

(assert (=> d!706708 (= (generalisedConcat!308 lt!879781) lt!879787)))

(declare-fun b!2451381 () Bool)

(assert (=> b!2451381 (= e!1555896 (= lt!879787 (head!5577 lt!879781)))))

(declare-fun b!2451387 () Bool)

(assert (=> b!2451387 (= e!1555893 (isEmpty!16584 (t!208628 lt!879781)))))

(declare-fun b!2451388 () Bool)

(assert (=> b!2451388 (= e!1555894 (Concat!11843 (h!33954 lt!879781) (generalisedConcat!308 (t!208628 lt!879781))))))

(declare-fun b!2451389 () Bool)

(assert (=> b!2451389 (= e!1555891 e!1555894)))

(declare-fun c!391168 () Bool)

(assert (=> b!2451389 (= c!391168 ((_ is Cons!28553) lt!879781))))

(declare-fun b!2451390 () Bool)

(assert (=> b!2451390 (= e!1555892 e!1555895)))

(declare-fun c!391169 () Bool)

(assert (=> b!2451390 (= c!391169 (isEmpty!16584 lt!879781))))

(assert (= (and d!706708 res!1039607) b!2451387))

(assert (= (and d!706708 c!391167) b!2451382))

(assert (= (and d!706708 (not c!391167)) b!2451389))

(assert (= (and b!2451389 c!391168) b!2451388))

(assert (= (and b!2451389 (not c!391168)) b!2451384))

(assert (= (and d!706708 res!1039608) b!2451390))

(assert (= (and b!2451390 c!391169) b!2451385))

(assert (= (and b!2451390 (not c!391169)) b!2451383))

(assert (= (and b!2451383 c!391166) b!2451381))

(assert (= (and b!2451383 (not c!391166)) b!2451386))

(declare-fun m!2824847 () Bool)

(assert (=> d!706708 m!2824847))

(declare-fun m!2824849 () Bool)

(assert (=> d!706708 m!2824849))

(declare-fun m!2824851 () Bool)

(assert (=> b!2451386 m!2824851))

(declare-fun m!2824853 () Bool)

(assert (=> b!2451387 m!2824853))

(declare-fun m!2824855 () Bool)

(assert (=> b!2451383 m!2824855))

(assert (=> b!2451383 m!2824855))

(declare-fun m!2824857 () Bool)

(assert (=> b!2451383 m!2824857))

(assert (=> b!2451390 m!2824833))

(declare-fun m!2824859 () Bool)

(assert (=> b!2451381 m!2824859))

(declare-fun m!2824861 () Bool)

(assert (=> b!2451385 m!2824861))

(declare-fun m!2824863 () Bool)

(assert (=> b!2451388 m!2824863))

(assert (=> b!2451323 d!706708))

(declare-fun d!706712 () Bool)

(declare-fun res!1039621 () Bool)

(declare-fun e!1555908 () Bool)

(assert (=> d!706712 (=> res!1039621 e!1555908)))

(assert (=> d!706712 (= res!1039621 ((_ is Nil!28553) l!9164))))

(assert (=> d!706712 (= (forall!5841 l!9164 lambda!92849) e!1555908)))

(declare-fun b!2451409 () Bool)

(declare-fun e!1555909 () Bool)

(assert (=> b!2451409 (= e!1555908 e!1555909)))

(declare-fun res!1039622 () Bool)

(assert (=> b!2451409 (=> (not res!1039622) (not e!1555909))))

(declare-fun dynLambda!12266 (Int Regex!7207) Bool)

(assert (=> b!2451409 (= res!1039622 (dynLambda!12266 lambda!92849 (h!33954 l!9164)))))

(declare-fun b!2451410 () Bool)

(assert (=> b!2451410 (= e!1555909 (forall!5841 (t!208628 l!9164) lambda!92849))))

(assert (= (and d!706712 (not res!1039621)) b!2451409))

(assert (= (and b!2451409 res!1039622) b!2451410))

(declare-fun b_lambda!75089 () Bool)

(assert (=> (not b_lambda!75089) (not b!2451409)))

(declare-fun m!2824865 () Bool)

(assert (=> b!2451409 m!2824865))

(declare-fun m!2824867 () Bool)

(assert (=> b!2451410 m!2824867))

(assert (=> start!239318 d!706712))

(declare-fun bs!465717 () Bool)

(declare-fun d!706714 () Bool)

(assert (= bs!465717 (and d!706714 start!239318)))

(declare-fun lambda!92853 () Int)

(assert (=> bs!465717 (= lambda!92853 lambda!92849)))

(declare-fun bs!465718 () Bool)

(assert (= bs!465718 (and d!706714 d!706708)))

(assert (=> bs!465718 (= lambda!92853 lambda!92852)))

(declare-fun b!2451412 () Bool)

(declare-fun e!1555910 () Regex!7207)

(assert (=> b!2451412 (= e!1555910 (h!33954 l!9164))))

(declare-fun b!2451413 () Bool)

(declare-fun e!1555914 () Bool)

(declare-fun e!1555915 () Bool)

(assert (=> b!2451413 (= e!1555914 e!1555915)))

(declare-fun c!391173 () Bool)

(assert (=> b!2451413 (= c!391173 (isEmpty!16584 (tail!3850 l!9164)))))

(declare-fun b!2451414 () Bool)

(declare-fun e!1555913 () Regex!7207)

(assert (=> b!2451414 (= e!1555913 EmptyExpr!7207)))

(declare-fun b!2451415 () Bool)

(declare-fun lt!879789 () Regex!7207)

(assert (=> b!2451415 (= e!1555914 (isEmptyExpr!226 lt!879789))))

(declare-fun b!2451416 () Bool)

(assert (=> b!2451416 (= e!1555915 (isConcat!226 lt!879789))))

(declare-fun e!1555911 () Bool)

(assert (=> d!706714 e!1555911))

(declare-fun res!1039624 () Bool)

(assert (=> d!706714 (=> (not res!1039624) (not e!1555911))))

(assert (=> d!706714 (= res!1039624 (validRegex!2901 lt!879789))))

(assert (=> d!706714 (= lt!879789 e!1555910)))

(declare-fun c!391174 () Bool)

(declare-fun e!1555912 () Bool)

(assert (=> d!706714 (= c!391174 e!1555912)))

(declare-fun res!1039623 () Bool)

(assert (=> d!706714 (=> (not res!1039623) (not e!1555912))))

(assert (=> d!706714 (= res!1039623 ((_ is Cons!28553) l!9164))))

(assert (=> d!706714 (forall!5841 l!9164 lambda!92853)))

(assert (=> d!706714 (= (generalisedConcat!308 l!9164) lt!879789)))

(declare-fun b!2451411 () Bool)

(assert (=> b!2451411 (= e!1555915 (= lt!879789 (head!5577 l!9164)))))

(declare-fun b!2451417 () Bool)

(assert (=> b!2451417 (= e!1555912 (isEmpty!16584 (t!208628 l!9164)))))

(declare-fun b!2451418 () Bool)

(assert (=> b!2451418 (= e!1555913 (Concat!11843 (h!33954 l!9164) (generalisedConcat!308 (t!208628 l!9164))))))

(declare-fun b!2451419 () Bool)

(assert (=> b!2451419 (= e!1555910 e!1555913)))

(declare-fun c!391175 () Bool)

(assert (=> b!2451419 (= c!391175 ((_ is Cons!28553) l!9164))))

(declare-fun b!2451420 () Bool)

(assert (=> b!2451420 (= e!1555911 e!1555914)))

(declare-fun c!391176 () Bool)

(assert (=> b!2451420 (= c!391176 (isEmpty!16584 l!9164))))

(assert (= (and d!706714 res!1039623) b!2451417))

(assert (= (and d!706714 c!391174) b!2451412))

(assert (= (and d!706714 (not c!391174)) b!2451419))

(assert (= (and b!2451419 c!391175) b!2451418))

(assert (= (and b!2451419 (not c!391175)) b!2451414))

(assert (= (and d!706714 res!1039624) b!2451420))

(assert (= (and b!2451420 c!391176) b!2451415))

(assert (= (and b!2451420 (not c!391176)) b!2451413))

(assert (= (and b!2451413 c!391173) b!2451411))

(assert (= (and b!2451413 (not c!391173)) b!2451416))

(declare-fun m!2824883 () Bool)

(assert (=> d!706714 m!2824883))

(declare-fun m!2824885 () Bool)

(assert (=> d!706714 m!2824885))

(declare-fun m!2824887 () Bool)

(assert (=> b!2451416 m!2824887))

(declare-fun m!2824889 () Bool)

(assert (=> b!2451417 m!2824889))

(assert (=> b!2451413 m!2824835))

(assert (=> b!2451413 m!2824835))

(declare-fun m!2824891 () Bool)

(assert (=> b!2451413 m!2824891))

(assert (=> b!2451420 m!2824821))

(assert (=> b!2451411 m!2824841))

(declare-fun m!2824893 () Bool)

(assert (=> b!2451415 m!2824893))

(declare-fun m!2824895 () Bool)

(assert (=> b!2451418 m!2824895))

(assert (=> b!2451317 d!706714))

(declare-fun b!2451459 () Bool)

(declare-fun res!1039643 () Bool)

(declare-fun e!1555946 () Bool)

(assert (=> b!2451459 (=> res!1039643 e!1555946)))

(assert (=> b!2451459 (= res!1039643 (not ((_ is Concat!11843) lt!879780)))))

(declare-fun e!1555948 () Bool)

(assert (=> b!2451459 (= e!1555948 e!1555946)))

(declare-fun b!2451460 () Bool)

(declare-fun e!1555947 () Bool)

(declare-fun e!1555944 () Bool)

(assert (=> b!2451460 (= e!1555947 e!1555944)))

(declare-fun res!1039641 () Bool)

(declare-fun nullable!2208 (Regex!7207) Bool)

(assert (=> b!2451460 (= res!1039641 (not (nullable!2208 (reg!7536 lt!879780))))))

(assert (=> b!2451460 (=> (not res!1039641) (not e!1555944))))

(declare-fun b!2451461 () Bool)

(declare-fun e!1555945 () Bool)

(declare-fun call!150556 () Bool)

(assert (=> b!2451461 (= e!1555945 call!150556)))

(declare-fun b!2451462 () Bool)

(declare-fun e!1555942 () Bool)

(declare-fun call!150558 () Bool)

(assert (=> b!2451462 (= e!1555942 call!150558)))

(declare-fun b!2451463 () Bool)

(declare-fun res!1039640 () Bool)

(assert (=> b!2451463 (=> (not res!1039640) (not e!1555942))))

(assert (=> b!2451463 (= res!1039640 call!150556)))

(assert (=> b!2451463 (= e!1555948 e!1555942)))

(declare-fun d!706720 () Bool)

(declare-fun res!1039639 () Bool)

(declare-fun e!1555943 () Bool)

(assert (=> d!706720 (=> res!1039639 e!1555943)))

(assert (=> d!706720 (= res!1039639 ((_ is ElementMatch!7207) lt!879780))))

(assert (=> d!706720 (= (validRegex!2901 lt!879780) e!1555943)))

(declare-fun bm!150551 () Bool)

(declare-fun call!150557 () Bool)

(assert (=> bm!150551 (= call!150556 call!150557)))

(declare-fun b!2451464 () Bool)

(assert (=> b!2451464 (= e!1555943 e!1555947)))

(declare-fun c!391190 () Bool)

(assert (=> b!2451464 (= c!391190 ((_ is Star!7207) lt!879780))))

(declare-fun b!2451465 () Bool)

(assert (=> b!2451465 (= e!1555947 e!1555948)))

(declare-fun c!391189 () Bool)

(assert (=> b!2451465 (= c!391189 ((_ is Union!7207) lt!879780))))

(declare-fun bm!150552 () Bool)

(assert (=> bm!150552 (= call!150558 (validRegex!2901 (ite c!391189 (regTwo!14927 lt!879780) (regOne!14926 lt!879780))))))

(declare-fun b!2451466 () Bool)

(assert (=> b!2451466 (= e!1555944 call!150557)))

(declare-fun bm!150553 () Bool)

(assert (=> bm!150553 (= call!150557 (validRegex!2901 (ite c!391190 (reg!7536 lt!879780) (ite c!391189 (regOne!14927 lt!879780) (regTwo!14926 lt!879780)))))))

(declare-fun b!2451467 () Bool)

(assert (=> b!2451467 (= e!1555946 e!1555945)))

(declare-fun res!1039642 () Bool)

(assert (=> b!2451467 (=> (not res!1039642) (not e!1555945))))

(assert (=> b!2451467 (= res!1039642 call!150558)))

(assert (= (and d!706720 (not res!1039639)) b!2451464))

(assert (= (and b!2451464 c!391190) b!2451460))

(assert (= (and b!2451464 (not c!391190)) b!2451465))

(assert (= (and b!2451460 res!1039641) b!2451466))

(assert (= (and b!2451465 c!391189) b!2451463))

(assert (= (and b!2451465 (not c!391189)) b!2451459))

(assert (= (and b!2451463 res!1039640) b!2451462))

(assert (= (and b!2451459 (not res!1039643)) b!2451467))

(assert (= (and b!2451467 res!1039642) b!2451461))

(assert (= (or b!2451463 b!2451461) bm!150551))

(assert (= (or b!2451462 b!2451467) bm!150552))

(assert (= (or b!2451466 bm!150551) bm!150553))

(declare-fun m!2824897 () Bool)

(assert (=> b!2451460 m!2824897))

(declare-fun m!2824899 () Bool)

(assert (=> bm!150552 m!2824899))

(declare-fun m!2824901 () Bool)

(assert (=> bm!150553 m!2824901))

(assert (=> b!2451321 d!706720))

(declare-fun d!706722 () Bool)

(assert (=> d!706722 (= (isEmpty!16584 l!9164) ((_ is Nil!28553) l!9164))))

(assert (=> b!2451325 d!706722))

(declare-fun b!2451551 () Bool)

(declare-fun res!1039682 () Bool)

(declare-fun e!1556003 () Bool)

(assert (=> b!2451551 (=> (not res!1039682) (not e!1556003))))

(declare-fun isEmpty!16586 (List!28650) Bool)

(declare-fun tail!3852 (List!28650) List!28650)

(assert (=> b!2451551 (= res!1039682 (isEmpty!16586 (tail!3852 Nil!28552)))))

(declare-fun b!2451553 () Bool)

(declare-fun res!1039683 () Bool)

(declare-fun e!1556001 () Bool)

(assert (=> b!2451553 (=> res!1039683 e!1556001)))

(assert (=> b!2451553 (= res!1039683 (not ((_ is ElementMatch!7207) EmptyExpr!7207)))))

(declare-fun e!1556009 () Bool)

(assert (=> b!2451553 (= e!1556009 e!1556001)))

(declare-fun b!2451555 () Bool)

(declare-fun res!1039690 () Bool)

(declare-fun e!1556007 () Bool)

(assert (=> b!2451555 (=> res!1039690 e!1556007)))

(assert (=> b!2451555 (= res!1039690 (not (isEmpty!16586 (tail!3852 Nil!28552))))))

(declare-fun b!2451557 () Bool)

(declare-fun e!1556008 () Bool)

(assert (=> b!2451557 (= e!1556008 e!1556007)))

(declare-fun res!1039688 () Bool)

(assert (=> b!2451557 (=> res!1039688 e!1556007)))

(declare-fun call!150571 () Bool)

(assert (=> b!2451557 (= res!1039688 call!150571)))

(declare-fun b!2451559 () Bool)

(declare-fun res!1039691 () Bool)

(assert (=> b!2451559 (=> (not res!1039691) (not e!1556003))))

(assert (=> b!2451559 (= res!1039691 (not call!150571))))

(declare-fun b!2451561 () Bool)

(declare-fun e!1555998 () Bool)

(assert (=> b!2451561 (= e!1555998 e!1556009)))

(declare-fun c!391212 () Bool)

(assert (=> b!2451561 (= c!391212 ((_ is EmptyLang!7207) EmptyExpr!7207))))

(declare-fun bm!150565 () Bool)

(assert (=> bm!150565 (= call!150571 (isEmpty!16586 Nil!28552))))

(declare-fun b!2451563 () Bool)

(declare-fun e!1556004 () Bool)

(assert (=> b!2451563 (= e!1556004 (nullable!2208 EmptyExpr!7207))))

(declare-fun b!2451564 () Bool)

(declare-fun head!5579 (List!28650) C!14572)

(assert (=> b!2451564 (= e!1556003 (= (head!5579 Nil!28552) (c!391151 EmptyExpr!7207)))))

(declare-fun d!706724 () Bool)

(assert (=> d!706724 e!1555998))

(declare-fun c!391216 () Bool)

(assert (=> d!706724 (= c!391216 ((_ is EmptyExpr!7207) EmptyExpr!7207))))

(declare-fun lt!879797 () Bool)

(assert (=> d!706724 (= lt!879797 e!1556004)))

(declare-fun c!391214 () Bool)

(assert (=> d!706724 (= c!391214 (isEmpty!16586 Nil!28552))))

(assert (=> d!706724 (validRegex!2901 EmptyExpr!7207)))

(assert (=> d!706724 (= (matchR!3322 EmptyExpr!7207 Nil!28552) lt!879797)))

(declare-fun b!2451565 () Bool)

(declare-fun res!1039684 () Bool)

(assert (=> b!2451565 (=> res!1039684 e!1556001)))

(assert (=> b!2451565 (= res!1039684 e!1556003)))

(declare-fun res!1039694 () Bool)

(assert (=> b!2451565 (=> (not res!1039694) (not e!1556003))))

(assert (=> b!2451565 (= res!1039694 lt!879797)))

(declare-fun b!2451566 () Bool)

(assert (=> b!2451566 (= e!1556001 e!1556008)))

(declare-fun res!1039686 () Bool)

(assert (=> b!2451566 (=> (not res!1039686) (not e!1556008))))

(assert (=> b!2451566 (= res!1039686 (not lt!879797))))

(declare-fun b!2451567 () Bool)

(assert (=> b!2451567 (= e!1555998 (= lt!879797 call!150571))))

(declare-fun b!2451568 () Bool)

(assert (=> b!2451568 (= e!1556007 (not (= (head!5579 Nil!28552) (c!391151 EmptyExpr!7207))))))

(declare-fun b!2451569 () Bool)

(assert (=> b!2451569 (= e!1556009 (not lt!879797))))

(declare-fun b!2451570 () Bool)

(declare-fun derivativeStep!1862 (Regex!7207 C!14572) Regex!7207)

(assert (=> b!2451570 (= e!1556004 (matchR!3322 (derivativeStep!1862 EmptyExpr!7207 (head!5579 Nil!28552)) (tail!3852 Nil!28552)))))

(assert (= (and d!706724 c!391214) b!2451563))

(assert (= (and d!706724 (not c!391214)) b!2451570))

(assert (= (and d!706724 c!391216) b!2451567))

(assert (= (and d!706724 (not c!391216)) b!2451561))

(assert (= (and b!2451561 c!391212) b!2451569))

(assert (= (and b!2451561 (not c!391212)) b!2451553))

(assert (= (and b!2451553 (not res!1039683)) b!2451565))

(assert (= (and b!2451565 res!1039694) b!2451559))

(assert (= (and b!2451559 res!1039691) b!2451551))

(assert (= (and b!2451551 res!1039682) b!2451564))

(assert (= (and b!2451565 (not res!1039684)) b!2451566))

(assert (= (and b!2451566 res!1039686) b!2451557))

(assert (= (and b!2451557 (not res!1039688)) b!2451555))

(assert (= (and b!2451555 (not res!1039690)) b!2451568))

(assert (= (or b!2451567 b!2451557 b!2451559) bm!150565))

(declare-fun m!2824957 () Bool)

(assert (=> d!706724 m!2824957))

(declare-fun m!2824959 () Bool)

(assert (=> d!706724 m!2824959))

(declare-fun m!2824961 () Bool)

(assert (=> b!2451555 m!2824961))

(assert (=> b!2451555 m!2824961))

(declare-fun m!2824963 () Bool)

(assert (=> b!2451555 m!2824963))

(declare-fun m!2824965 () Bool)

(assert (=> b!2451568 m!2824965))

(declare-fun m!2824967 () Bool)

(assert (=> b!2451563 m!2824967))

(assert (=> b!2451570 m!2824965))

(assert (=> b!2451570 m!2824965))

(declare-fun m!2824969 () Bool)

(assert (=> b!2451570 m!2824969))

(assert (=> b!2451570 m!2824961))

(assert (=> b!2451570 m!2824969))

(assert (=> b!2451570 m!2824961))

(declare-fun m!2824971 () Bool)

(assert (=> b!2451570 m!2824971))

(assert (=> b!2451551 m!2824961))

(assert (=> b!2451551 m!2824961))

(assert (=> b!2451551 m!2824963))

(assert (=> bm!150565 m!2824957))

(assert (=> b!2451564 m!2824965))

(assert (=> b!2451320 d!706724))

(declare-fun b!2451585 () Bool)

(declare-fun res!1039703 () Bool)

(declare-fun e!1556019 () Bool)

(assert (=> b!2451585 (=> (not res!1039703) (not e!1556019))))

(assert (=> b!2451585 (= res!1039703 (isEmpty!16586 (tail!3852 s!9460)))))

(declare-fun b!2451586 () Bool)

(declare-fun res!1039704 () Bool)

(declare-fun e!1556018 () Bool)

(assert (=> b!2451586 (=> res!1039704 e!1556018)))

(assert (=> b!2451586 (= res!1039704 (not ((_ is ElementMatch!7207) lt!879780)))))

(declare-fun e!1556023 () Bool)

(assert (=> b!2451586 (= e!1556023 e!1556018)))

(declare-fun b!2451587 () Bool)

(declare-fun res!1039708 () Bool)

(declare-fun e!1556021 () Bool)

(assert (=> b!2451587 (=> res!1039708 e!1556021)))

(assert (=> b!2451587 (= res!1039708 (not (isEmpty!16586 (tail!3852 s!9460))))))

(declare-fun b!2451588 () Bool)

(declare-fun e!1556022 () Bool)

(assert (=> b!2451588 (= e!1556022 e!1556021)))

(declare-fun res!1039707 () Bool)

(assert (=> b!2451588 (=> res!1039707 e!1556021)))

(declare-fun call!150573 () Bool)

(assert (=> b!2451588 (= res!1039707 call!150573)))

(declare-fun b!2451589 () Bool)

(declare-fun res!1039709 () Bool)

(assert (=> b!2451589 (=> (not res!1039709) (not e!1556019))))

(assert (=> b!2451589 (= res!1039709 (not call!150573))))

(declare-fun b!2451590 () Bool)

(declare-fun e!1556017 () Bool)

(assert (=> b!2451590 (= e!1556017 e!1556023)))

(declare-fun c!391220 () Bool)

(assert (=> b!2451590 (= c!391220 ((_ is EmptyLang!7207) lt!879780))))

(declare-fun bm!150568 () Bool)

(assert (=> bm!150568 (= call!150573 (isEmpty!16586 s!9460))))

(declare-fun b!2451591 () Bool)

(declare-fun e!1556020 () Bool)

(assert (=> b!2451591 (= e!1556020 (nullable!2208 lt!879780))))

(declare-fun b!2451592 () Bool)

(assert (=> b!2451592 (= e!1556019 (= (head!5579 s!9460) (c!391151 lt!879780)))))

(declare-fun d!706740 () Bool)

(assert (=> d!706740 e!1556017))

(declare-fun c!391222 () Bool)

(assert (=> d!706740 (= c!391222 ((_ is EmptyExpr!7207) lt!879780))))

(declare-fun lt!879799 () Bool)

(assert (=> d!706740 (= lt!879799 e!1556020)))

(declare-fun c!391221 () Bool)

(assert (=> d!706740 (= c!391221 (isEmpty!16586 s!9460))))

(assert (=> d!706740 (validRegex!2901 lt!879780)))

(assert (=> d!706740 (= (matchR!3322 lt!879780 s!9460) lt!879799)))

(declare-fun b!2451593 () Bool)

(declare-fun res!1039705 () Bool)

(assert (=> b!2451593 (=> res!1039705 e!1556018)))

(assert (=> b!2451593 (= res!1039705 e!1556019)))

(declare-fun res!1039710 () Bool)

(assert (=> b!2451593 (=> (not res!1039710) (not e!1556019))))

(assert (=> b!2451593 (= res!1039710 lt!879799)))

(declare-fun b!2451594 () Bool)

(assert (=> b!2451594 (= e!1556018 e!1556022)))

(declare-fun res!1039706 () Bool)

(assert (=> b!2451594 (=> (not res!1039706) (not e!1556022))))

(assert (=> b!2451594 (= res!1039706 (not lt!879799))))

(declare-fun b!2451595 () Bool)

(assert (=> b!2451595 (= e!1556017 (= lt!879799 call!150573))))

(declare-fun b!2451596 () Bool)

(assert (=> b!2451596 (= e!1556021 (not (= (head!5579 s!9460) (c!391151 lt!879780))))))

(declare-fun b!2451597 () Bool)

(assert (=> b!2451597 (= e!1556023 (not lt!879799))))

(declare-fun b!2451598 () Bool)

(assert (=> b!2451598 (= e!1556020 (matchR!3322 (derivativeStep!1862 lt!879780 (head!5579 s!9460)) (tail!3852 s!9460)))))

(assert (= (and d!706740 c!391221) b!2451591))

(assert (= (and d!706740 (not c!391221)) b!2451598))

(assert (= (and d!706740 c!391222) b!2451595))

(assert (= (and d!706740 (not c!391222)) b!2451590))

(assert (= (and b!2451590 c!391220) b!2451597))

(assert (= (and b!2451590 (not c!391220)) b!2451586))

(assert (= (and b!2451586 (not res!1039704)) b!2451593))

(assert (= (and b!2451593 res!1039710) b!2451589))

(assert (= (and b!2451589 res!1039709) b!2451585))

(assert (= (and b!2451585 res!1039703) b!2451592))

(assert (= (and b!2451593 (not res!1039705)) b!2451594))

(assert (= (and b!2451594 res!1039706) b!2451588))

(assert (= (and b!2451588 (not res!1039707)) b!2451587))

(assert (= (and b!2451587 (not res!1039708)) b!2451596))

(assert (= (or b!2451595 b!2451588 b!2451589) bm!150568))

(declare-fun m!2824981 () Bool)

(assert (=> d!706740 m!2824981))

(assert (=> d!706740 m!2824831))

(declare-fun m!2824983 () Bool)

(assert (=> b!2451587 m!2824983))

(assert (=> b!2451587 m!2824983))

(declare-fun m!2824985 () Bool)

(assert (=> b!2451587 m!2824985))

(declare-fun m!2824987 () Bool)

(assert (=> b!2451596 m!2824987))

(declare-fun m!2824989 () Bool)

(assert (=> b!2451591 m!2824989))

(assert (=> b!2451598 m!2824987))

(assert (=> b!2451598 m!2824987))

(declare-fun m!2824991 () Bool)

(assert (=> b!2451598 m!2824991))

(assert (=> b!2451598 m!2824983))

(assert (=> b!2451598 m!2824991))

(assert (=> b!2451598 m!2824983))

(declare-fun m!2824993 () Bool)

(assert (=> b!2451598 m!2824993))

(assert (=> b!2451585 m!2824983))

(assert (=> b!2451585 m!2824983))

(assert (=> b!2451585 m!2824985))

(assert (=> bm!150568 m!2824981))

(assert (=> b!2451592 m!2824987))

(assert (=> b!2451319 d!706740))

(declare-fun d!706744 () Bool)

(assert (=> d!706744 (= (head!5577 l!9164) (h!33954 l!9164))))

(assert (=> b!2451319 d!706744))

(declare-fun b!2451599 () Bool)

(declare-fun res!1039711 () Bool)

(declare-fun e!1556026 () Bool)

(assert (=> b!2451599 (=> (not res!1039711) (not e!1556026))))

(assert (=> b!2451599 (= res!1039711 (isEmpty!16586 (tail!3852 s!9460)))))

(declare-fun b!2451600 () Bool)

(declare-fun res!1039712 () Bool)

(declare-fun e!1556025 () Bool)

(assert (=> b!2451600 (=> res!1039712 e!1556025)))

(assert (=> b!2451600 (= res!1039712 (not ((_ is ElementMatch!7207) r!13927)))))

(declare-fun e!1556030 () Bool)

(assert (=> b!2451600 (= e!1556030 e!1556025)))

(declare-fun b!2451601 () Bool)

(declare-fun res!1039716 () Bool)

(declare-fun e!1556028 () Bool)

(assert (=> b!2451601 (=> res!1039716 e!1556028)))

(assert (=> b!2451601 (= res!1039716 (not (isEmpty!16586 (tail!3852 s!9460))))))

(declare-fun b!2451602 () Bool)

(declare-fun e!1556029 () Bool)

(assert (=> b!2451602 (= e!1556029 e!1556028)))

(declare-fun res!1039715 () Bool)

(assert (=> b!2451602 (=> res!1039715 e!1556028)))

(declare-fun call!150574 () Bool)

(assert (=> b!2451602 (= res!1039715 call!150574)))

(declare-fun b!2451603 () Bool)

(declare-fun res!1039717 () Bool)

(assert (=> b!2451603 (=> (not res!1039717) (not e!1556026))))

(assert (=> b!2451603 (= res!1039717 (not call!150574))))

(declare-fun b!2451604 () Bool)

(declare-fun e!1556024 () Bool)

(assert (=> b!2451604 (= e!1556024 e!1556030)))

(declare-fun c!391223 () Bool)

(assert (=> b!2451604 (= c!391223 ((_ is EmptyLang!7207) r!13927))))

(declare-fun bm!150569 () Bool)

(assert (=> bm!150569 (= call!150574 (isEmpty!16586 s!9460))))

(declare-fun b!2451605 () Bool)

(declare-fun e!1556027 () Bool)

(assert (=> b!2451605 (= e!1556027 (nullable!2208 r!13927))))

(declare-fun b!2451606 () Bool)

(assert (=> b!2451606 (= e!1556026 (= (head!5579 s!9460) (c!391151 r!13927)))))

(declare-fun d!706746 () Bool)

(assert (=> d!706746 e!1556024))

(declare-fun c!391225 () Bool)

(assert (=> d!706746 (= c!391225 ((_ is EmptyExpr!7207) r!13927))))

(declare-fun lt!879800 () Bool)

(assert (=> d!706746 (= lt!879800 e!1556027)))

(declare-fun c!391224 () Bool)

(assert (=> d!706746 (= c!391224 (isEmpty!16586 s!9460))))

(assert (=> d!706746 (validRegex!2901 r!13927)))

(assert (=> d!706746 (= (matchR!3322 r!13927 s!9460) lt!879800)))

(declare-fun b!2451607 () Bool)

(declare-fun res!1039713 () Bool)

(assert (=> b!2451607 (=> res!1039713 e!1556025)))

(assert (=> b!2451607 (= res!1039713 e!1556026)))

(declare-fun res!1039718 () Bool)

(assert (=> b!2451607 (=> (not res!1039718) (not e!1556026))))

(assert (=> b!2451607 (= res!1039718 lt!879800)))

(declare-fun b!2451608 () Bool)

(assert (=> b!2451608 (= e!1556025 e!1556029)))

(declare-fun res!1039714 () Bool)

(assert (=> b!2451608 (=> (not res!1039714) (not e!1556029))))

(assert (=> b!2451608 (= res!1039714 (not lt!879800))))

(declare-fun b!2451609 () Bool)

(assert (=> b!2451609 (= e!1556024 (= lt!879800 call!150574))))

(declare-fun b!2451610 () Bool)

(assert (=> b!2451610 (= e!1556028 (not (= (head!5579 s!9460) (c!391151 r!13927))))))

(declare-fun b!2451611 () Bool)

(assert (=> b!2451611 (= e!1556030 (not lt!879800))))

(declare-fun b!2451612 () Bool)

(assert (=> b!2451612 (= e!1556027 (matchR!3322 (derivativeStep!1862 r!13927 (head!5579 s!9460)) (tail!3852 s!9460)))))

(assert (= (and d!706746 c!391224) b!2451605))

(assert (= (and d!706746 (not c!391224)) b!2451612))

(assert (= (and d!706746 c!391225) b!2451609))

(assert (= (and d!706746 (not c!391225)) b!2451604))

(assert (= (and b!2451604 c!391223) b!2451611))

(assert (= (and b!2451604 (not c!391223)) b!2451600))

(assert (= (and b!2451600 (not res!1039712)) b!2451607))

(assert (= (and b!2451607 res!1039718) b!2451603))

(assert (= (and b!2451603 res!1039717) b!2451599))

(assert (= (and b!2451599 res!1039711) b!2451606))

(assert (= (and b!2451607 (not res!1039713)) b!2451608))

(assert (= (and b!2451608 res!1039714) b!2451602))

(assert (= (and b!2451602 (not res!1039715)) b!2451601))

(assert (= (and b!2451601 (not res!1039716)) b!2451610))

(assert (= (or b!2451609 b!2451602 b!2451603) bm!150569))

(assert (=> d!706746 m!2824981))

(declare-fun m!2824995 () Bool)

(assert (=> d!706746 m!2824995))

(assert (=> b!2451601 m!2824983))

(assert (=> b!2451601 m!2824983))

(assert (=> b!2451601 m!2824985))

(assert (=> b!2451610 m!2824987))

(declare-fun m!2824997 () Bool)

(assert (=> b!2451605 m!2824997))

(assert (=> b!2451612 m!2824987))

(assert (=> b!2451612 m!2824987))

(declare-fun m!2824999 () Bool)

(assert (=> b!2451612 m!2824999))

(assert (=> b!2451612 m!2824983))

(assert (=> b!2451612 m!2824999))

(assert (=> b!2451612 m!2824983))

(declare-fun m!2825001 () Bool)

(assert (=> b!2451612 m!2825001))

(assert (=> b!2451599 m!2824983))

(assert (=> b!2451599 m!2824983))

(assert (=> b!2451599 m!2824985))

(assert (=> bm!150569 m!2824981))

(assert (=> b!2451606 m!2824987))

(assert (=> b!2451314 d!706746))

(declare-fun b!2451694 () Bool)

(assert (=> b!2451694 true))

(assert (=> b!2451694 true))

(declare-fun bs!465723 () Bool)

(declare-fun b!2451698 () Bool)

(assert (= bs!465723 (and b!2451698 b!2451694)))

(declare-fun lambda!92869 () Int)

(declare-fun lambda!92868 () Int)

(assert (=> bs!465723 (not (= lambda!92869 lambda!92868))))

(assert (=> b!2451698 true))

(assert (=> b!2451698 true))

(declare-fun b!2451692 () Bool)

(declare-fun c!391249 () Bool)

(assert (=> b!2451692 (= c!391249 ((_ is ElementMatch!7207) r!13927))))

(declare-fun e!1556079 () Bool)

(declare-fun e!1556074 () Bool)

(assert (=> b!2451692 (= e!1556079 e!1556074)))

(declare-fun b!2451693 () Bool)

(declare-fun e!1556080 () Bool)

(assert (=> b!2451693 (= e!1556080 e!1556079)))

(declare-fun res!1039754 () Bool)

(assert (=> b!2451693 (= res!1039754 (not ((_ is EmptyLang!7207) r!13927)))))

(assert (=> b!2451693 (=> (not res!1039754) (not e!1556079))))

(declare-fun e!1556075 () Bool)

(declare-fun call!150586 () Bool)

(assert (=> b!2451694 (= e!1556075 call!150586)))

(declare-fun b!2451695 () Bool)

(declare-fun res!1039756 () Bool)

(assert (=> b!2451695 (=> res!1039756 e!1556075)))

(declare-fun call!150585 () Bool)

(assert (=> b!2451695 (= res!1039756 call!150585)))

(declare-fun e!1556076 () Bool)

(assert (=> b!2451695 (= e!1556076 e!1556075)))

(declare-fun b!2451696 () Bool)

(declare-fun e!1556077 () Bool)

(assert (=> b!2451696 (= e!1556077 e!1556076)))

(declare-fun c!391248 () Bool)

(assert (=> b!2451696 (= c!391248 ((_ is Star!7207) r!13927))))

(declare-fun b!2451697 () Bool)

(declare-fun c!391246 () Bool)

(assert (=> b!2451697 (= c!391246 ((_ is Union!7207) r!13927))))

(assert (=> b!2451697 (= e!1556074 e!1556077)))

(declare-fun bm!150580 () Bool)

(assert (=> bm!150580 (= call!150585 (isEmpty!16586 s!9460))))

(declare-fun b!2451699 () Bool)

(declare-fun e!1556078 () Bool)

(assert (=> b!2451699 (= e!1556077 e!1556078)))

(declare-fun res!1039755 () Bool)

(assert (=> b!2451699 (= res!1039755 (matchRSpec!1054 (regOne!14927 r!13927) s!9460))))

(assert (=> b!2451699 (=> res!1039755 e!1556078)))

(declare-fun b!2451700 () Bool)

(assert (=> b!2451700 (= e!1556074 (= s!9460 (Cons!28552 (c!391151 r!13927) Nil!28552)))))

(assert (=> b!2451698 (= e!1556076 call!150586)))

(declare-fun d!706748 () Bool)

(declare-fun c!391247 () Bool)

(assert (=> d!706748 (= c!391247 ((_ is EmptyExpr!7207) r!13927))))

(assert (=> d!706748 (= (matchRSpec!1054 r!13927 s!9460) e!1556080)))

(declare-fun b!2451701 () Bool)

(assert (=> b!2451701 (= e!1556078 (matchRSpec!1054 (regTwo!14927 r!13927) s!9460))))

(declare-fun b!2451702 () Bool)

(assert (=> b!2451702 (= e!1556080 call!150585)))

(declare-fun bm!150581 () Bool)

(declare-fun Exists!1234 (Int) Bool)

(assert (=> bm!150581 (= call!150586 (Exists!1234 (ite c!391248 lambda!92868 lambda!92869)))))

(assert (= (and d!706748 c!391247) b!2451702))

(assert (= (and d!706748 (not c!391247)) b!2451693))

(assert (= (and b!2451693 res!1039754) b!2451692))

(assert (= (and b!2451692 c!391249) b!2451700))

(assert (= (and b!2451692 (not c!391249)) b!2451697))

(assert (= (and b!2451697 c!391246) b!2451699))

(assert (= (and b!2451697 (not c!391246)) b!2451696))

(assert (= (and b!2451699 (not res!1039755)) b!2451701))

(assert (= (and b!2451696 c!391248) b!2451695))

(assert (= (and b!2451696 (not c!391248)) b!2451698))

(assert (= (and b!2451695 (not res!1039756)) b!2451694))

(assert (= (or b!2451694 b!2451698) bm!150581))

(assert (= (or b!2451702 b!2451695) bm!150580))

(assert (=> bm!150580 m!2824981))

(declare-fun m!2825009 () Bool)

(assert (=> b!2451699 m!2825009))

(declare-fun m!2825011 () Bool)

(assert (=> b!2451701 m!2825011))

(declare-fun m!2825013 () Bool)

(assert (=> bm!150581 m!2825013))

(assert (=> b!2451314 d!706748))

(declare-fun d!706752 () Bool)

(assert (=> d!706752 (= (matchR!3322 r!13927 s!9460) (matchRSpec!1054 r!13927 s!9460))))

(declare-fun lt!879806 () Unit!41869)

(declare-fun choose!14528 (Regex!7207 List!28650) Unit!41869)

(assert (=> d!706752 (= lt!879806 (choose!14528 r!13927 s!9460))))

(assert (=> d!706752 (validRegex!2901 r!13927)))

(assert (=> d!706752 (= (mainMatchTheorem!1054 r!13927 s!9460) lt!879806)))

(declare-fun bs!465725 () Bool)

(assert (= bs!465725 d!706752))

(assert (=> bs!465725 m!2824825))

(assert (=> bs!465725 m!2824827))

(declare-fun m!2825017 () Bool)

(assert (=> bs!465725 m!2825017))

(assert (=> bs!465725 m!2824995))

(assert (=> b!2451314 d!706752))

(declare-fun b!2451743 () Bool)

(declare-fun e!1556091 () Bool)

(declare-fun tp!779739 () Bool)

(declare-fun tp!779738 () Bool)

(assert (=> b!2451743 (= e!1556091 (and tp!779739 tp!779738))))

(declare-fun b!2451742 () Bool)

(declare-fun tp!779737 () Bool)

(assert (=> b!2451742 (= e!1556091 tp!779737)))

(assert (=> b!2451313 (= tp!779701 e!1556091)))

(declare-fun b!2451740 () Bool)

(assert (=> b!2451740 (= e!1556091 tp_is_empty!11827)))

(declare-fun b!2451741 () Bool)

(declare-fun tp!779740 () Bool)

(declare-fun tp!779736 () Bool)

(assert (=> b!2451741 (= e!1556091 (and tp!779740 tp!779736))))

(assert (= (and b!2451313 ((_ is ElementMatch!7207) (reg!7536 r!13927))) b!2451740))

(assert (= (and b!2451313 ((_ is Concat!11843) (reg!7536 r!13927))) b!2451741))

(assert (= (and b!2451313 ((_ is Star!7207) (reg!7536 r!13927))) b!2451742))

(assert (= (and b!2451313 ((_ is Union!7207) (reg!7536 r!13927))) b!2451743))

(declare-fun b!2451748 () Bool)

(declare-fun e!1556093 () Bool)

(declare-fun tp!779746 () Bool)

(declare-fun tp!779745 () Bool)

(assert (=> b!2451748 (= e!1556093 (and tp!779746 tp!779745))))

(declare-fun b!2451747 () Bool)

(declare-fun tp!779744 () Bool)

(assert (=> b!2451747 (= e!1556093 tp!779744)))

(assert (=> b!2451318 (= tp!779699 e!1556093)))

(declare-fun b!2451745 () Bool)

(assert (=> b!2451745 (= e!1556093 tp_is_empty!11827)))

(declare-fun b!2451746 () Bool)

(declare-fun tp!779747 () Bool)

(declare-fun tp!779743 () Bool)

(assert (=> b!2451746 (= e!1556093 (and tp!779747 tp!779743))))

(assert (= (and b!2451318 ((_ is ElementMatch!7207) (h!33954 l!9164))) b!2451745))

(assert (= (and b!2451318 ((_ is Concat!11843) (h!33954 l!9164))) b!2451746))

(assert (= (and b!2451318 ((_ is Star!7207) (h!33954 l!9164))) b!2451747))

(assert (= (and b!2451318 ((_ is Union!7207) (h!33954 l!9164))) b!2451748))

(declare-fun b!2451765 () Bool)

(declare-fun e!1556099 () Bool)

(declare-fun tp!779767 () Bool)

(declare-fun tp!779768 () Bool)

(assert (=> b!2451765 (= e!1556099 (and tp!779767 tp!779768))))

(assert (=> b!2451318 (= tp!779697 e!1556099)))

(assert (= (and b!2451318 ((_ is Cons!28553) (t!208628 l!9164))) b!2451765))

(declare-fun b!2451778 () Bool)

(declare-fun e!1556104 () Bool)

(declare-fun tp!779781 () Bool)

(assert (=> b!2451778 (= e!1556104 (and tp_is_empty!11827 tp!779781))))

(assert (=> b!2451312 (= tp!779703 e!1556104)))

(assert (= (and b!2451312 ((_ is Cons!28552) (t!208627 s!9460))) b!2451778))

(declare-fun b!2451782 () Bool)

(declare-fun e!1556105 () Bool)

(declare-fun tp!779785 () Bool)

(declare-fun tp!779784 () Bool)

(assert (=> b!2451782 (= e!1556105 (and tp!779785 tp!779784))))

(declare-fun b!2451781 () Bool)

(declare-fun tp!779783 () Bool)

(assert (=> b!2451781 (= e!1556105 tp!779783)))

(assert (=> b!2451322 (= tp!779698 e!1556105)))

(declare-fun b!2451779 () Bool)

(assert (=> b!2451779 (= e!1556105 tp_is_empty!11827)))

(declare-fun b!2451780 () Bool)

(declare-fun tp!779786 () Bool)

(declare-fun tp!779782 () Bool)

(assert (=> b!2451780 (= e!1556105 (and tp!779786 tp!779782))))

(assert (= (and b!2451322 ((_ is ElementMatch!7207) (regOne!14926 r!13927))) b!2451779))

(assert (= (and b!2451322 ((_ is Concat!11843) (regOne!14926 r!13927))) b!2451780))

(assert (= (and b!2451322 ((_ is Star!7207) (regOne!14926 r!13927))) b!2451781))

(assert (= (and b!2451322 ((_ is Union!7207) (regOne!14926 r!13927))) b!2451782))

(declare-fun b!2451786 () Bool)

(declare-fun e!1556106 () Bool)

(declare-fun tp!779790 () Bool)

(declare-fun tp!779789 () Bool)

(assert (=> b!2451786 (= e!1556106 (and tp!779790 tp!779789))))

(declare-fun b!2451785 () Bool)

(declare-fun tp!779788 () Bool)

(assert (=> b!2451785 (= e!1556106 tp!779788)))

(assert (=> b!2451322 (= tp!779696 e!1556106)))

(declare-fun b!2451783 () Bool)

(assert (=> b!2451783 (= e!1556106 tp_is_empty!11827)))

(declare-fun b!2451784 () Bool)

(declare-fun tp!779791 () Bool)

(declare-fun tp!779787 () Bool)

(assert (=> b!2451784 (= e!1556106 (and tp!779791 tp!779787))))

(assert (= (and b!2451322 ((_ is ElementMatch!7207) (regTwo!14926 r!13927))) b!2451783))

(assert (= (and b!2451322 ((_ is Concat!11843) (regTwo!14926 r!13927))) b!2451784))

(assert (= (and b!2451322 ((_ is Star!7207) (regTwo!14926 r!13927))) b!2451785))

(assert (= (and b!2451322 ((_ is Union!7207) (regTwo!14926 r!13927))) b!2451786))

(declare-fun b!2451790 () Bool)

(declare-fun e!1556107 () Bool)

(declare-fun tp!779795 () Bool)

(declare-fun tp!779794 () Bool)

(assert (=> b!2451790 (= e!1556107 (and tp!779795 tp!779794))))

(declare-fun b!2451789 () Bool)

(declare-fun tp!779793 () Bool)

(assert (=> b!2451789 (= e!1556107 tp!779793)))

(assert (=> b!2451316 (= tp!779700 e!1556107)))

(declare-fun b!2451787 () Bool)

(assert (=> b!2451787 (= e!1556107 tp_is_empty!11827)))

(declare-fun b!2451788 () Bool)

(declare-fun tp!779796 () Bool)

(declare-fun tp!779792 () Bool)

(assert (=> b!2451788 (= e!1556107 (and tp!779796 tp!779792))))

(assert (= (and b!2451316 ((_ is ElementMatch!7207) (regOne!14927 r!13927))) b!2451787))

(assert (= (and b!2451316 ((_ is Concat!11843) (regOne!14927 r!13927))) b!2451788))

(assert (= (and b!2451316 ((_ is Star!7207) (regOne!14927 r!13927))) b!2451789))

(assert (= (and b!2451316 ((_ is Union!7207) (regOne!14927 r!13927))) b!2451790))

(declare-fun b!2451794 () Bool)

(declare-fun e!1556108 () Bool)

(declare-fun tp!779800 () Bool)

(declare-fun tp!779799 () Bool)

(assert (=> b!2451794 (= e!1556108 (and tp!779800 tp!779799))))

(declare-fun b!2451793 () Bool)

(declare-fun tp!779798 () Bool)

(assert (=> b!2451793 (= e!1556108 tp!779798)))

(assert (=> b!2451316 (= tp!779702 e!1556108)))

(declare-fun b!2451791 () Bool)

(assert (=> b!2451791 (= e!1556108 tp_is_empty!11827)))

(declare-fun b!2451792 () Bool)

(declare-fun tp!779801 () Bool)

(declare-fun tp!779797 () Bool)

(assert (=> b!2451792 (= e!1556108 (and tp!779801 tp!779797))))

(assert (= (and b!2451316 ((_ is ElementMatch!7207) (regTwo!14927 r!13927))) b!2451791))

(assert (= (and b!2451316 ((_ is Concat!11843) (regTwo!14927 r!13927))) b!2451792))

(assert (= (and b!2451316 ((_ is Star!7207) (regTwo!14927 r!13927))) b!2451793))

(assert (= (and b!2451316 ((_ is Union!7207) (regTwo!14927 r!13927))) b!2451794))

(declare-fun b_lambda!75093 () Bool)

(assert (= b_lambda!75089 (or start!239318 b_lambda!75093)))

(declare-fun bs!465727 () Bool)

(declare-fun d!706756 () Bool)

(assert (= bs!465727 (and d!706756 start!239318)))

(assert (=> bs!465727 (= (dynLambda!12266 lambda!92849 (h!33954 l!9164)) (validRegex!2901 (h!33954 l!9164)))))

(declare-fun m!2825021 () Bool)

(assert (=> bs!465727 m!2825021))

(assert (=> b!2451409 d!706756))

(check-sat (not b!2451748) (not b!2451460) (not b!2451410) (not b!2451381) (not bm!150569) (not b!2451411) (not b!2451387) (not b!2451741) (not b!2451778) (not b!2451781) tp_is_empty!11827 (not b!2451388) (not b!2451555) (not b!2451564) (not b!2451592) (not b!2451568) (not bm!150565) (not b!2451416) (not b!2451765) (not b!2451743) (not b!2451596) (not b!2451570) (not b_lambda!75093) (not d!706746) (not b!2451746) (not b!2451385) (not d!706740) (not d!706724) (not b!2451782) (not b!2451699) (not b!2451742) (not b!2451599) (not b!2451386) (not b!2451420) (not b!2451612) (not b!2451563) (not b!2451789) (not bm!150552) (not b!2451390) (not b!2451383) (not bm!150580) (not b!2451601) (not bm!150568) (not d!706708) (not b!2451606) (not b!2451785) (not b!2451610) (not b!2451793) (not b!2451591) (not b!2451788) (not b!2451418) (not b!2451780) (not b!2451784) (not b!2451598) (not b!2451786) (not bs!465727) (not b!2451587) (not b!2451792) (not bm!150581) (not b!2451413) (not b!2451747) (not b!2451605) (not b!2451417) (not b!2451551) (not b!2451701) (not b!2451794) (not d!706714) (not bm!150553) (not b!2451585) (not d!706752) (not b!2451415) (not b!2451790))
(check-sat)
(get-model)

(assert (=> d!706752 d!706746))

(assert (=> d!706752 d!706748))

(declare-fun d!706758 () Bool)

(assert (=> d!706758 (= (matchR!3322 r!13927 s!9460) (matchRSpec!1054 r!13927 s!9460))))

(assert (=> d!706758 true))

(declare-fun _$88!3295 () Unit!41869)

(assert (=> d!706758 (= (choose!14528 r!13927 s!9460) _$88!3295)))

(declare-fun bs!465728 () Bool)

(assert (= bs!465728 d!706758))

(assert (=> bs!465728 m!2824825))

(assert (=> bs!465728 m!2824827))

(assert (=> d!706752 d!706758))

(declare-fun b!2451795 () Bool)

(declare-fun res!1039761 () Bool)

(declare-fun e!1556113 () Bool)

(assert (=> b!2451795 (=> res!1039761 e!1556113)))

(assert (=> b!2451795 (= res!1039761 (not ((_ is Concat!11843) r!13927)))))

(declare-fun e!1556115 () Bool)

(assert (=> b!2451795 (= e!1556115 e!1556113)))

(declare-fun b!2451796 () Bool)

(declare-fun e!1556114 () Bool)

(declare-fun e!1556111 () Bool)

(assert (=> b!2451796 (= e!1556114 e!1556111)))

(declare-fun res!1039759 () Bool)

(assert (=> b!2451796 (= res!1039759 (not (nullable!2208 (reg!7536 r!13927))))))

(assert (=> b!2451796 (=> (not res!1039759) (not e!1556111))))

(declare-fun b!2451797 () Bool)

(declare-fun e!1556112 () Bool)

(declare-fun call!150587 () Bool)

(assert (=> b!2451797 (= e!1556112 call!150587)))

(declare-fun b!2451798 () Bool)

(declare-fun e!1556109 () Bool)

(declare-fun call!150589 () Bool)

(assert (=> b!2451798 (= e!1556109 call!150589)))

(declare-fun b!2451799 () Bool)

(declare-fun res!1039758 () Bool)

(assert (=> b!2451799 (=> (not res!1039758) (not e!1556109))))

(assert (=> b!2451799 (= res!1039758 call!150587)))

(assert (=> b!2451799 (= e!1556115 e!1556109)))

(declare-fun d!706760 () Bool)

(declare-fun res!1039757 () Bool)

(declare-fun e!1556110 () Bool)

(assert (=> d!706760 (=> res!1039757 e!1556110)))

(assert (=> d!706760 (= res!1039757 ((_ is ElementMatch!7207) r!13927))))

(assert (=> d!706760 (= (validRegex!2901 r!13927) e!1556110)))

(declare-fun bm!150582 () Bool)

(declare-fun call!150588 () Bool)

(assert (=> bm!150582 (= call!150587 call!150588)))

(declare-fun b!2451800 () Bool)

(assert (=> b!2451800 (= e!1556110 e!1556114)))

(declare-fun c!391251 () Bool)

(assert (=> b!2451800 (= c!391251 ((_ is Star!7207) r!13927))))

(declare-fun b!2451801 () Bool)

(assert (=> b!2451801 (= e!1556114 e!1556115)))

(declare-fun c!391250 () Bool)

(assert (=> b!2451801 (= c!391250 ((_ is Union!7207) r!13927))))

(declare-fun bm!150583 () Bool)

(assert (=> bm!150583 (= call!150589 (validRegex!2901 (ite c!391250 (regTwo!14927 r!13927) (regOne!14926 r!13927))))))

(declare-fun b!2451802 () Bool)

(assert (=> b!2451802 (= e!1556111 call!150588)))

(declare-fun bm!150584 () Bool)

(assert (=> bm!150584 (= call!150588 (validRegex!2901 (ite c!391251 (reg!7536 r!13927) (ite c!391250 (regOne!14927 r!13927) (regTwo!14926 r!13927)))))))

(declare-fun b!2451803 () Bool)

(assert (=> b!2451803 (= e!1556113 e!1556112)))

(declare-fun res!1039760 () Bool)

(assert (=> b!2451803 (=> (not res!1039760) (not e!1556112))))

(assert (=> b!2451803 (= res!1039760 call!150589)))

(assert (= (and d!706760 (not res!1039757)) b!2451800))

(assert (= (and b!2451800 c!391251) b!2451796))

(assert (= (and b!2451800 (not c!391251)) b!2451801))

(assert (= (and b!2451796 res!1039759) b!2451802))

(assert (= (and b!2451801 c!391250) b!2451799))

(assert (= (and b!2451801 (not c!391250)) b!2451795))

(assert (= (and b!2451799 res!1039758) b!2451798))

(assert (= (and b!2451795 (not res!1039761)) b!2451803))

(assert (= (and b!2451803 res!1039760) b!2451797))

(assert (= (or b!2451799 b!2451797) bm!150582))

(assert (= (or b!2451798 b!2451803) bm!150583))

(assert (= (or b!2451802 bm!150582) bm!150584))

(declare-fun m!2825023 () Bool)

(assert (=> b!2451796 m!2825023))

(declare-fun m!2825025 () Bool)

(assert (=> bm!150583 m!2825025))

(declare-fun m!2825027 () Bool)

(assert (=> bm!150584 m!2825027))

(assert (=> d!706752 d!706760))

(declare-fun b!2451804 () Bool)

(declare-fun res!1039766 () Bool)

(declare-fun e!1556120 () Bool)

(assert (=> b!2451804 (=> res!1039766 e!1556120)))

(assert (=> b!2451804 (= res!1039766 (not ((_ is Concat!11843) (ite c!391190 (reg!7536 lt!879780) (ite c!391189 (regOne!14927 lt!879780) (regTwo!14926 lt!879780))))))))

(declare-fun e!1556122 () Bool)

(assert (=> b!2451804 (= e!1556122 e!1556120)))

(declare-fun b!2451805 () Bool)

(declare-fun e!1556121 () Bool)

(declare-fun e!1556118 () Bool)

(assert (=> b!2451805 (= e!1556121 e!1556118)))

(declare-fun res!1039764 () Bool)

(assert (=> b!2451805 (= res!1039764 (not (nullable!2208 (reg!7536 (ite c!391190 (reg!7536 lt!879780) (ite c!391189 (regOne!14927 lt!879780) (regTwo!14926 lt!879780)))))))))

(assert (=> b!2451805 (=> (not res!1039764) (not e!1556118))))

(declare-fun b!2451806 () Bool)

(declare-fun e!1556119 () Bool)

(declare-fun call!150590 () Bool)

(assert (=> b!2451806 (= e!1556119 call!150590)))

(declare-fun b!2451807 () Bool)

(declare-fun e!1556116 () Bool)

(declare-fun call!150592 () Bool)

(assert (=> b!2451807 (= e!1556116 call!150592)))

(declare-fun b!2451808 () Bool)

(declare-fun res!1039763 () Bool)

(assert (=> b!2451808 (=> (not res!1039763) (not e!1556116))))

(assert (=> b!2451808 (= res!1039763 call!150590)))

(assert (=> b!2451808 (= e!1556122 e!1556116)))

(declare-fun d!706762 () Bool)

(declare-fun res!1039762 () Bool)

(declare-fun e!1556117 () Bool)

(assert (=> d!706762 (=> res!1039762 e!1556117)))

(assert (=> d!706762 (= res!1039762 ((_ is ElementMatch!7207) (ite c!391190 (reg!7536 lt!879780) (ite c!391189 (regOne!14927 lt!879780) (regTwo!14926 lt!879780)))))))

(assert (=> d!706762 (= (validRegex!2901 (ite c!391190 (reg!7536 lt!879780) (ite c!391189 (regOne!14927 lt!879780) (regTwo!14926 lt!879780)))) e!1556117)))

(declare-fun bm!150585 () Bool)

(declare-fun call!150591 () Bool)

(assert (=> bm!150585 (= call!150590 call!150591)))

(declare-fun b!2451809 () Bool)

(assert (=> b!2451809 (= e!1556117 e!1556121)))

(declare-fun c!391253 () Bool)

(assert (=> b!2451809 (= c!391253 ((_ is Star!7207) (ite c!391190 (reg!7536 lt!879780) (ite c!391189 (regOne!14927 lt!879780) (regTwo!14926 lt!879780)))))))

(declare-fun b!2451810 () Bool)

(assert (=> b!2451810 (= e!1556121 e!1556122)))

(declare-fun c!391252 () Bool)

(assert (=> b!2451810 (= c!391252 ((_ is Union!7207) (ite c!391190 (reg!7536 lt!879780) (ite c!391189 (regOne!14927 lt!879780) (regTwo!14926 lt!879780)))))))

(declare-fun bm!150586 () Bool)

(assert (=> bm!150586 (= call!150592 (validRegex!2901 (ite c!391252 (regTwo!14927 (ite c!391190 (reg!7536 lt!879780) (ite c!391189 (regOne!14927 lt!879780) (regTwo!14926 lt!879780)))) (regOne!14926 (ite c!391190 (reg!7536 lt!879780) (ite c!391189 (regOne!14927 lt!879780) (regTwo!14926 lt!879780)))))))))

(declare-fun b!2451811 () Bool)

(assert (=> b!2451811 (= e!1556118 call!150591)))

(declare-fun bm!150587 () Bool)

(assert (=> bm!150587 (= call!150591 (validRegex!2901 (ite c!391253 (reg!7536 (ite c!391190 (reg!7536 lt!879780) (ite c!391189 (regOne!14927 lt!879780) (regTwo!14926 lt!879780)))) (ite c!391252 (regOne!14927 (ite c!391190 (reg!7536 lt!879780) (ite c!391189 (regOne!14927 lt!879780) (regTwo!14926 lt!879780)))) (regTwo!14926 (ite c!391190 (reg!7536 lt!879780) (ite c!391189 (regOne!14927 lt!879780) (regTwo!14926 lt!879780))))))))))

(declare-fun b!2451812 () Bool)

(assert (=> b!2451812 (= e!1556120 e!1556119)))

(declare-fun res!1039765 () Bool)

(assert (=> b!2451812 (=> (not res!1039765) (not e!1556119))))

(assert (=> b!2451812 (= res!1039765 call!150592)))

(assert (= (and d!706762 (not res!1039762)) b!2451809))

(assert (= (and b!2451809 c!391253) b!2451805))

(assert (= (and b!2451809 (not c!391253)) b!2451810))

(assert (= (and b!2451805 res!1039764) b!2451811))

(assert (= (and b!2451810 c!391252) b!2451808))

(assert (= (and b!2451810 (not c!391252)) b!2451804))

(assert (= (and b!2451808 res!1039763) b!2451807))

(assert (= (and b!2451804 (not res!1039766)) b!2451812))

(assert (= (and b!2451812 res!1039765) b!2451806))

(assert (= (or b!2451808 b!2451806) bm!150585))

(assert (= (or b!2451807 b!2451812) bm!150586))

(assert (= (or b!2451811 bm!150585) bm!150587))

(declare-fun m!2825029 () Bool)

(assert (=> b!2451805 m!2825029))

(declare-fun m!2825031 () Bool)

(assert (=> bm!150586 m!2825031))

(declare-fun m!2825033 () Bool)

(assert (=> bm!150587 m!2825033))

(assert (=> bm!150553 d!706762))

(declare-fun d!706764 () Bool)

(assert (=> d!706764 (= (isEmpty!16586 (tail!3852 s!9460)) ((_ is Nil!28552) (tail!3852 s!9460)))))

(assert (=> b!2451601 d!706764))

(declare-fun d!706766 () Bool)

(assert (=> d!706766 (= (tail!3852 s!9460) (t!208627 s!9460))))

(assert (=> b!2451601 d!706766))

(declare-fun b!2451813 () Bool)

(declare-fun res!1039771 () Bool)

(declare-fun e!1556127 () Bool)

(assert (=> b!2451813 (=> res!1039771 e!1556127)))

(assert (=> b!2451813 (= res!1039771 (not ((_ is Concat!11843) (ite c!391189 (regTwo!14927 lt!879780) (regOne!14926 lt!879780)))))))

(declare-fun e!1556129 () Bool)

(assert (=> b!2451813 (= e!1556129 e!1556127)))

(declare-fun b!2451814 () Bool)

(declare-fun e!1556128 () Bool)

(declare-fun e!1556125 () Bool)

(assert (=> b!2451814 (= e!1556128 e!1556125)))

(declare-fun res!1039769 () Bool)

(assert (=> b!2451814 (= res!1039769 (not (nullable!2208 (reg!7536 (ite c!391189 (regTwo!14927 lt!879780) (regOne!14926 lt!879780))))))))

(assert (=> b!2451814 (=> (not res!1039769) (not e!1556125))))

(declare-fun b!2451815 () Bool)

(declare-fun e!1556126 () Bool)

(declare-fun call!150593 () Bool)

(assert (=> b!2451815 (= e!1556126 call!150593)))

(declare-fun b!2451816 () Bool)

(declare-fun e!1556123 () Bool)

(declare-fun call!150595 () Bool)

(assert (=> b!2451816 (= e!1556123 call!150595)))

(declare-fun b!2451817 () Bool)

(declare-fun res!1039768 () Bool)

(assert (=> b!2451817 (=> (not res!1039768) (not e!1556123))))

(assert (=> b!2451817 (= res!1039768 call!150593)))

(assert (=> b!2451817 (= e!1556129 e!1556123)))

(declare-fun d!706768 () Bool)

(declare-fun res!1039767 () Bool)

(declare-fun e!1556124 () Bool)

(assert (=> d!706768 (=> res!1039767 e!1556124)))

(assert (=> d!706768 (= res!1039767 ((_ is ElementMatch!7207) (ite c!391189 (regTwo!14927 lt!879780) (regOne!14926 lt!879780))))))

(assert (=> d!706768 (= (validRegex!2901 (ite c!391189 (regTwo!14927 lt!879780) (regOne!14926 lt!879780))) e!1556124)))

(declare-fun bm!150588 () Bool)

(declare-fun call!150594 () Bool)

(assert (=> bm!150588 (= call!150593 call!150594)))

(declare-fun b!2451818 () Bool)

(assert (=> b!2451818 (= e!1556124 e!1556128)))

(declare-fun c!391255 () Bool)

(assert (=> b!2451818 (= c!391255 ((_ is Star!7207) (ite c!391189 (regTwo!14927 lt!879780) (regOne!14926 lt!879780))))))

(declare-fun b!2451819 () Bool)

(assert (=> b!2451819 (= e!1556128 e!1556129)))

(declare-fun c!391254 () Bool)

(assert (=> b!2451819 (= c!391254 ((_ is Union!7207) (ite c!391189 (regTwo!14927 lt!879780) (regOne!14926 lt!879780))))))

(declare-fun bm!150589 () Bool)

(assert (=> bm!150589 (= call!150595 (validRegex!2901 (ite c!391254 (regTwo!14927 (ite c!391189 (regTwo!14927 lt!879780) (regOne!14926 lt!879780))) (regOne!14926 (ite c!391189 (regTwo!14927 lt!879780) (regOne!14926 lt!879780))))))))

(declare-fun b!2451820 () Bool)

(assert (=> b!2451820 (= e!1556125 call!150594)))

(declare-fun bm!150590 () Bool)

(assert (=> bm!150590 (= call!150594 (validRegex!2901 (ite c!391255 (reg!7536 (ite c!391189 (regTwo!14927 lt!879780) (regOne!14926 lt!879780))) (ite c!391254 (regOne!14927 (ite c!391189 (regTwo!14927 lt!879780) (regOne!14926 lt!879780))) (regTwo!14926 (ite c!391189 (regTwo!14927 lt!879780) (regOne!14926 lt!879780)))))))))

(declare-fun b!2451821 () Bool)

(assert (=> b!2451821 (= e!1556127 e!1556126)))

(declare-fun res!1039770 () Bool)

(assert (=> b!2451821 (=> (not res!1039770) (not e!1556126))))

(assert (=> b!2451821 (= res!1039770 call!150595)))

(assert (= (and d!706768 (not res!1039767)) b!2451818))

(assert (= (and b!2451818 c!391255) b!2451814))

(assert (= (and b!2451818 (not c!391255)) b!2451819))

(assert (= (and b!2451814 res!1039769) b!2451820))

(assert (= (and b!2451819 c!391254) b!2451817))

(assert (= (and b!2451819 (not c!391254)) b!2451813))

(assert (= (and b!2451817 res!1039768) b!2451816))

(assert (= (and b!2451813 (not res!1039771)) b!2451821))

(assert (= (and b!2451821 res!1039770) b!2451815))

(assert (= (or b!2451817 b!2451815) bm!150588))

(assert (= (or b!2451816 b!2451821) bm!150589))

(assert (= (or b!2451820 bm!150588) bm!150590))

(declare-fun m!2825035 () Bool)

(assert (=> b!2451814 m!2825035))

(declare-fun m!2825037 () Bool)

(assert (=> bm!150589 m!2825037))

(declare-fun m!2825039 () Bool)

(assert (=> bm!150590 m!2825039))

(assert (=> bm!150552 d!706768))

(assert (=> b!2451599 d!706764))

(assert (=> b!2451599 d!706766))

(declare-fun d!706770 () Bool)

(assert (=> d!706770 (= (isEmpty!16586 s!9460) ((_ is Nil!28552) s!9460))))

(assert (=> d!706746 d!706770))

(assert (=> d!706746 d!706760))

(assert (=> b!2451420 d!706722))

(declare-fun d!706772 () Bool)

(assert (=> d!706772 (= (nullable!2208 EmptyExpr!7207) true)))

(assert (=> b!2451563 d!706772))

(declare-fun d!706774 () Bool)

(assert (=> d!706774 (= (isEmpty!16584 (t!208628 l!9164)) ((_ is Nil!28553) (t!208628 l!9164)))))

(assert (=> b!2451417 d!706774))

(declare-fun b!2451822 () Bool)

(declare-fun res!1039772 () Bool)

(declare-fun e!1556132 () Bool)

(assert (=> b!2451822 (=> (not res!1039772) (not e!1556132))))

(assert (=> b!2451822 (= res!1039772 (isEmpty!16586 (tail!3852 (tail!3852 s!9460))))))

(declare-fun b!2451823 () Bool)

(declare-fun res!1039773 () Bool)

(declare-fun e!1556131 () Bool)

(assert (=> b!2451823 (=> res!1039773 e!1556131)))

(assert (=> b!2451823 (= res!1039773 (not ((_ is ElementMatch!7207) (derivativeStep!1862 r!13927 (head!5579 s!9460)))))))

(declare-fun e!1556136 () Bool)

(assert (=> b!2451823 (= e!1556136 e!1556131)))

(declare-fun b!2451824 () Bool)

(declare-fun res!1039777 () Bool)

(declare-fun e!1556134 () Bool)

(assert (=> b!2451824 (=> res!1039777 e!1556134)))

(assert (=> b!2451824 (= res!1039777 (not (isEmpty!16586 (tail!3852 (tail!3852 s!9460)))))))

(declare-fun b!2451825 () Bool)

(declare-fun e!1556135 () Bool)

(assert (=> b!2451825 (= e!1556135 e!1556134)))

(declare-fun res!1039776 () Bool)

(assert (=> b!2451825 (=> res!1039776 e!1556134)))

(declare-fun call!150596 () Bool)

(assert (=> b!2451825 (= res!1039776 call!150596)))

(declare-fun b!2451826 () Bool)

(declare-fun res!1039778 () Bool)

(assert (=> b!2451826 (=> (not res!1039778) (not e!1556132))))

(assert (=> b!2451826 (= res!1039778 (not call!150596))))

(declare-fun b!2451827 () Bool)

(declare-fun e!1556130 () Bool)

(assert (=> b!2451827 (= e!1556130 e!1556136)))

(declare-fun c!391256 () Bool)

(assert (=> b!2451827 (= c!391256 ((_ is EmptyLang!7207) (derivativeStep!1862 r!13927 (head!5579 s!9460))))))

(declare-fun bm!150591 () Bool)

(assert (=> bm!150591 (= call!150596 (isEmpty!16586 (tail!3852 s!9460)))))

(declare-fun b!2451828 () Bool)

(declare-fun e!1556133 () Bool)

(assert (=> b!2451828 (= e!1556133 (nullable!2208 (derivativeStep!1862 r!13927 (head!5579 s!9460))))))

(declare-fun b!2451829 () Bool)

(assert (=> b!2451829 (= e!1556132 (= (head!5579 (tail!3852 s!9460)) (c!391151 (derivativeStep!1862 r!13927 (head!5579 s!9460)))))))

(declare-fun d!706776 () Bool)

(assert (=> d!706776 e!1556130))

(declare-fun c!391258 () Bool)

(assert (=> d!706776 (= c!391258 ((_ is EmptyExpr!7207) (derivativeStep!1862 r!13927 (head!5579 s!9460))))))

(declare-fun lt!879807 () Bool)

(assert (=> d!706776 (= lt!879807 e!1556133)))

(declare-fun c!391257 () Bool)

(assert (=> d!706776 (= c!391257 (isEmpty!16586 (tail!3852 s!9460)))))

(assert (=> d!706776 (validRegex!2901 (derivativeStep!1862 r!13927 (head!5579 s!9460)))))

(assert (=> d!706776 (= (matchR!3322 (derivativeStep!1862 r!13927 (head!5579 s!9460)) (tail!3852 s!9460)) lt!879807)))

(declare-fun b!2451830 () Bool)

(declare-fun res!1039774 () Bool)

(assert (=> b!2451830 (=> res!1039774 e!1556131)))

(assert (=> b!2451830 (= res!1039774 e!1556132)))

(declare-fun res!1039779 () Bool)

(assert (=> b!2451830 (=> (not res!1039779) (not e!1556132))))

(assert (=> b!2451830 (= res!1039779 lt!879807)))

(declare-fun b!2451831 () Bool)

(assert (=> b!2451831 (= e!1556131 e!1556135)))

(declare-fun res!1039775 () Bool)

(assert (=> b!2451831 (=> (not res!1039775) (not e!1556135))))

(assert (=> b!2451831 (= res!1039775 (not lt!879807))))

(declare-fun b!2451832 () Bool)

(assert (=> b!2451832 (= e!1556130 (= lt!879807 call!150596))))

(declare-fun b!2451833 () Bool)

(assert (=> b!2451833 (= e!1556134 (not (= (head!5579 (tail!3852 s!9460)) (c!391151 (derivativeStep!1862 r!13927 (head!5579 s!9460))))))))

(declare-fun b!2451834 () Bool)

(assert (=> b!2451834 (= e!1556136 (not lt!879807))))

(declare-fun b!2451835 () Bool)

(assert (=> b!2451835 (= e!1556133 (matchR!3322 (derivativeStep!1862 (derivativeStep!1862 r!13927 (head!5579 s!9460)) (head!5579 (tail!3852 s!9460))) (tail!3852 (tail!3852 s!9460))))))

(assert (= (and d!706776 c!391257) b!2451828))

(assert (= (and d!706776 (not c!391257)) b!2451835))

(assert (= (and d!706776 c!391258) b!2451832))

(assert (= (and d!706776 (not c!391258)) b!2451827))

(assert (= (and b!2451827 c!391256) b!2451834))

(assert (= (and b!2451827 (not c!391256)) b!2451823))

(assert (= (and b!2451823 (not res!1039773)) b!2451830))

(assert (= (and b!2451830 res!1039779) b!2451826))

(assert (= (and b!2451826 res!1039778) b!2451822))

(assert (= (and b!2451822 res!1039772) b!2451829))

(assert (= (and b!2451830 (not res!1039774)) b!2451831))

(assert (= (and b!2451831 res!1039775) b!2451825))

(assert (= (and b!2451825 (not res!1039776)) b!2451824))

(assert (= (and b!2451824 (not res!1039777)) b!2451833))

(assert (= (or b!2451832 b!2451825 b!2451826) bm!150591))

(assert (=> d!706776 m!2824983))

(assert (=> d!706776 m!2824985))

(assert (=> d!706776 m!2824999))

(declare-fun m!2825041 () Bool)

(assert (=> d!706776 m!2825041))

(assert (=> b!2451824 m!2824983))

(declare-fun m!2825043 () Bool)

(assert (=> b!2451824 m!2825043))

(assert (=> b!2451824 m!2825043))

(declare-fun m!2825045 () Bool)

(assert (=> b!2451824 m!2825045))

(assert (=> b!2451833 m!2824983))

(declare-fun m!2825047 () Bool)

(assert (=> b!2451833 m!2825047))

(assert (=> b!2451828 m!2824999))

(declare-fun m!2825049 () Bool)

(assert (=> b!2451828 m!2825049))

(assert (=> b!2451835 m!2824983))

(assert (=> b!2451835 m!2825047))

(assert (=> b!2451835 m!2824999))

(assert (=> b!2451835 m!2825047))

(declare-fun m!2825051 () Bool)

(assert (=> b!2451835 m!2825051))

(assert (=> b!2451835 m!2824983))

(assert (=> b!2451835 m!2825043))

(assert (=> b!2451835 m!2825051))

(assert (=> b!2451835 m!2825043))

(declare-fun m!2825053 () Bool)

(assert (=> b!2451835 m!2825053))

(assert (=> b!2451822 m!2824983))

(assert (=> b!2451822 m!2825043))

(assert (=> b!2451822 m!2825043))

(assert (=> b!2451822 m!2825045))

(assert (=> bm!150591 m!2824983))

(assert (=> bm!150591 m!2824985))

(assert (=> b!2451829 m!2824983))

(assert (=> b!2451829 m!2825047))

(assert (=> b!2451612 d!706776))

(declare-fun b!2451856 () Bool)

(declare-fun e!1556147 () Regex!7207)

(declare-fun e!1556151 () Regex!7207)

(assert (=> b!2451856 (= e!1556147 e!1556151)))

(declare-fun c!391271 () Bool)

(assert (=> b!2451856 (= c!391271 ((_ is ElementMatch!7207) r!13927))))

(declare-fun bm!150600 () Bool)

(declare-fun c!391269 () Bool)

(declare-fun call!150607 () Regex!7207)

(assert (=> bm!150600 (= call!150607 (derivativeStep!1862 (ite c!391269 (regOne!14927 r!13927) (regOne!14926 r!13927)) (head!5579 s!9460)))))

(declare-fun bm!150601 () Bool)

(declare-fun call!150605 () Regex!7207)

(declare-fun call!150606 () Regex!7207)

(assert (=> bm!150601 (= call!150605 call!150606)))

(declare-fun b!2451857 () Bool)

(declare-fun e!1556148 () Regex!7207)

(assert (=> b!2451857 (= e!1556148 (Union!7207 (Concat!11843 call!150605 (regTwo!14926 r!13927)) EmptyLang!7207))))

(declare-fun b!2451858 () Bool)

(declare-fun e!1556149 () Regex!7207)

(declare-fun call!150608 () Regex!7207)

(assert (=> b!2451858 (= e!1556149 (Union!7207 call!150607 call!150608))))

(declare-fun bm!150602 () Bool)

(declare-fun c!391270 () Bool)

(declare-fun c!391273 () Bool)

(assert (=> bm!150602 (= call!150608 (derivativeStep!1862 (ite c!391269 (regTwo!14927 r!13927) (ite c!391270 (reg!7536 r!13927) (ite c!391273 (regTwo!14926 r!13927) (regOne!14926 r!13927)))) (head!5579 s!9460)))))

(declare-fun d!706778 () Bool)

(declare-fun lt!879810 () Regex!7207)

(assert (=> d!706778 (validRegex!2901 lt!879810)))

(assert (=> d!706778 (= lt!879810 e!1556147)))

(declare-fun c!391272 () Bool)

(assert (=> d!706778 (= c!391272 (or ((_ is EmptyExpr!7207) r!13927) ((_ is EmptyLang!7207) r!13927)))))

(assert (=> d!706778 (validRegex!2901 r!13927)))

(assert (=> d!706778 (= (derivativeStep!1862 r!13927 (head!5579 s!9460)) lt!879810)))

(declare-fun b!2451859 () Bool)

(declare-fun e!1556150 () Regex!7207)

(assert (=> b!2451859 (= e!1556150 (Concat!11843 call!150606 r!13927))))

(declare-fun b!2451860 () Bool)

(assert (=> b!2451860 (= c!391269 ((_ is Union!7207) r!13927))))

(assert (=> b!2451860 (= e!1556151 e!1556149)))

(declare-fun b!2451861 () Bool)

(assert (=> b!2451861 (= c!391273 (nullable!2208 (regOne!14926 r!13927)))))

(assert (=> b!2451861 (= e!1556150 e!1556148)))

(declare-fun b!2451862 () Bool)

(assert (=> b!2451862 (= e!1556151 (ite (= (head!5579 s!9460) (c!391151 r!13927)) EmptyExpr!7207 EmptyLang!7207))))

(declare-fun b!2451863 () Bool)

(assert (=> b!2451863 (= e!1556149 e!1556150)))

(assert (=> b!2451863 (= c!391270 ((_ is Star!7207) r!13927))))

(declare-fun bm!150603 () Bool)

(assert (=> bm!150603 (= call!150606 call!150608)))

(declare-fun b!2451864 () Bool)

(assert (=> b!2451864 (= e!1556147 EmptyLang!7207)))

(declare-fun b!2451865 () Bool)

(assert (=> b!2451865 (= e!1556148 (Union!7207 (Concat!11843 call!150607 (regTwo!14926 r!13927)) call!150605))))

(assert (= (and d!706778 c!391272) b!2451864))

(assert (= (and d!706778 (not c!391272)) b!2451856))

(assert (= (and b!2451856 c!391271) b!2451862))

(assert (= (and b!2451856 (not c!391271)) b!2451860))

(assert (= (and b!2451860 c!391269) b!2451858))

(assert (= (and b!2451860 (not c!391269)) b!2451863))

(assert (= (and b!2451863 c!391270) b!2451859))

(assert (= (and b!2451863 (not c!391270)) b!2451861))

(assert (= (and b!2451861 c!391273) b!2451865))

(assert (= (and b!2451861 (not c!391273)) b!2451857))

(assert (= (or b!2451865 b!2451857) bm!150601))

(assert (= (or b!2451859 bm!150601) bm!150603))

(assert (= (or b!2451858 b!2451865) bm!150600))

(assert (= (or b!2451858 bm!150603) bm!150602))

(assert (=> bm!150600 m!2824987))

(declare-fun m!2825055 () Bool)

(assert (=> bm!150600 m!2825055))

(assert (=> bm!150602 m!2824987))

(declare-fun m!2825057 () Bool)

(assert (=> bm!150602 m!2825057))

(declare-fun m!2825059 () Bool)

(assert (=> d!706778 m!2825059))

(assert (=> d!706778 m!2824995))

(declare-fun m!2825061 () Bool)

(assert (=> b!2451861 m!2825061))

(assert (=> b!2451612 d!706778))

(declare-fun d!706780 () Bool)

(assert (=> d!706780 (= (head!5579 s!9460) (h!33953 s!9460))))

(assert (=> b!2451612 d!706780))

(assert (=> b!2451612 d!706766))

(assert (=> b!2451610 d!706780))

(declare-fun d!706782 () Bool)

(assert (=> d!706782 (= (isEmptyExpr!226 lt!879789) ((_ is EmptyExpr!7207) lt!879789))))

(assert (=> b!2451415 d!706782))

(declare-fun d!706784 () Bool)

(declare-fun choose!14529 (Int) Bool)

(assert (=> d!706784 (= (Exists!1234 (ite c!391248 lambda!92868 lambda!92869)) (choose!14529 (ite c!391248 lambda!92868 lambda!92869)))))

(declare-fun bs!465729 () Bool)

(assert (= bs!465729 d!706784))

(declare-fun m!2825063 () Bool)

(assert (=> bs!465729 m!2825063))

(assert (=> bm!150581 d!706784))

(declare-fun d!706786 () Bool)

(assert (=> d!706786 (= (isEmpty!16584 (tail!3850 l!9164)) ((_ is Nil!28553) (tail!3850 l!9164)))))

(assert (=> b!2451413 d!706786))

(assert (=> b!2451413 d!706706))

(assert (=> b!2451606 d!706780))

(assert (=> b!2451390 d!706704))

(declare-fun bs!465730 () Bool)

(declare-fun b!2451868 () Bool)

(assert (= bs!465730 (and b!2451868 b!2451694)))

(declare-fun lambda!92870 () Int)

(assert (=> bs!465730 (= (and (= (reg!7536 (regTwo!14927 r!13927)) (reg!7536 r!13927)) (= (regTwo!14927 r!13927) r!13927)) (= lambda!92870 lambda!92868))))

(declare-fun bs!465731 () Bool)

(assert (= bs!465731 (and b!2451868 b!2451698)))

(assert (=> bs!465731 (not (= lambda!92870 lambda!92869))))

(assert (=> b!2451868 true))

(assert (=> b!2451868 true))

(declare-fun bs!465732 () Bool)

(declare-fun b!2451872 () Bool)

(assert (= bs!465732 (and b!2451872 b!2451694)))

(declare-fun lambda!92871 () Int)

(assert (=> bs!465732 (not (= lambda!92871 lambda!92868))))

(declare-fun bs!465733 () Bool)

(assert (= bs!465733 (and b!2451872 b!2451698)))

(assert (=> bs!465733 (= (and (= (regOne!14926 (regTwo!14927 r!13927)) (regOne!14926 r!13927)) (= (regTwo!14926 (regTwo!14927 r!13927)) (regTwo!14926 r!13927))) (= lambda!92871 lambda!92869))))

(declare-fun bs!465734 () Bool)

(assert (= bs!465734 (and b!2451872 b!2451868)))

(assert (=> bs!465734 (not (= lambda!92871 lambda!92870))))

(assert (=> b!2451872 true))

(assert (=> b!2451872 true))

(declare-fun b!2451866 () Bool)

(declare-fun c!391277 () Bool)

(assert (=> b!2451866 (= c!391277 ((_ is ElementMatch!7207) (regTwo!14927 r!13927)))))

(declare-fun e!1556157 () Bool)

(declare-fun e!1556152 () Bool)

(assert (=> b!2451866 (= e!1556157 e!1556152)))

(declare-fun b!2451867 () Bool)

(declare-fun e!1556158 () Bool)

(assert (=> b!2451867 (= e!1556158 e!1556157)))

(declare-fun res!1039780 () Bool)

(assert (=> b!2451867 (= res!1039780 (not ((_ is EmptyLang!7207) (regTwo!14927 r!13927))))))

(assert (=> b!2451867 (=> (not res!1039780) (not e!1556157))))

(declare-fun e!1556153 () Bool)

(declare-fun call!150610 () Bool)

(assert (=> b!2451868 (= e!1556153 call!150610)))

(declare-fun b!2451869 () Bool)

(declare-fun res!1039782 () Bool)

(assert (=> b!2451869 (=> res!1039782 e!1556153)))

(declare-fun call!150609 () Bool)

(assert (=> b!2451869 (= res!1039782 call!150609)))

(declare-fun e!1556154 () Bool)

(assert (=> b!2451869 (= e!1556154 e!1556153)))

(declare-fun b!2451870 () Bool)

(declare-fun e!1556155 () Bool)

(assert (=> b!2451870 (= e!1556155 e!1556154)))

(declare-fun c!391276 () Bool)

(assert (=> b!2451870 (= c!391276 ((_ is Star!7207) (regTwo!14927 r!13927)))))

(declare-fun b!2451871 () Bool)

(declare-fun c!391274 () Bool)

(assert (=> b!2451871 (= c!391274 ((_ is Union!7207) (regTwo!14927 r!13927)))))

(assert (=> b!2451871 (= e!1556152 e!1556155)))

(declare-fun bm!150604 () Bool)

(assert (=> bm!150604 (= call!150609 (isEmpty!16586 s!9460))))

(declare-fun b!2451873 () Bool)

(declare-fun e!1556156 () Bool)

(assert (=> b!2451873 (= e!1556155 e!1556156)))

(declare-fun res!1039781 () Bool)

(assert (=> b!2451873 (= res!1039781 (matchRSpec!1054 (regOne!14927 (regTwo!14927 r!13927)) s!9460))))

(assert (=> b!2451873 (=> res!1039781 e!1556156)))

(declare-fun b!2451874 () Bool)

(assert (=> b!2451874 (= e!1556152 (= s!9460 (Cons!28552 (c!391151 (regTwo!14927 r!13927)) Nil!28552)))))

(assert (=> b!2451872 (= e!1556154 call!150610)))

(declare-fun d!706788 () Bool)

(declare-fun c!391275 () Bool)

(assert (=> d!706788 (= c!391275 ((_ is EmptyExpr!7207) (regTwo!14927 r!13927)))))

(assert (=> d!706788 (= (matchRSpec!1054 (regTwo!14927 r!13927) s!9460) e!1556158)))

(declare-fun b!2451875 () Bool)

(assert (=> b!2451875 (= e!1556156 (matchRSpec!1054 (regTwo!14927 (regTwo!14927 r!13927)) s!9460))))

(declare-fun b!2451876 () Bool)

(assert (=> b!2451876 (= e!1556158 call!150609)))

(declare-fun bm!150605 () Bool)

(assert (=> bm!150605 (= call!150610 (Exists!1234 (ite c!391276 lambda!92870 lambda!92871)))))

(assert (= (and d!706788 c!391275) b!2451876))

(assert (= (and d!706788 (not c!391275)) b!2451867))

(assert (= (and b!2451867 res!1039780) b!2451866))

(assert (= (and b!2451866 c!391277) b!2451874))

(assert (= (and b!2451866 (not c!391277)) b!2451871))

(assert (= (and b!2451871 c!391274) b!2451873))

(assert (= (and b!2451871 (not c!391274)) b!2451870))

(assert (= (and b!2451873 (not res!1039781)) b!2451875))

(assert (= (and b!2451870 c!391276) b!2451869))

(assert (= (and b!2451870 (not c!391276)) b!2451872))

(assert (= (and b!2451869 (not res!1039782)) b!2451868))

(assert (= (or b!2451868 b!2451872) bm!150605))

(assert (= (or b!2451876 b!2451869) bm!150604))

(assert (=> bm!150604 m!2824981))

(declare-fun m!2825065 () Bool)

(assert (=> b!2451873 m!2825065))

(declare-fun m!2825067 () Bool)

(assert (=> b!2451875 m!2825067))

(declare-fun m!2825069 () Bool)

(assert (=> bm!150605 m!2825069))

(assert (=> b!2451701 d!706788))

(declare-fun bs!465735 () Bool)

(declare-fun d!706790 () Bool)

(assert (= bs!465735 (and d!706790 start!239318)))

(declare-fun lambda!92872 () Int)

(assert (=> bs!465735 (= lambda!92872 lambda!92849)))

(declare-fun bs!465736 () Bool)

(assert (= bs!465736 (and d!706790 d!706708)))

(assert (=> bs!465736 (= lambda!92872 lambda!92852)))

(declare-fun bs!465737 () Bool)

(assert (= bs!465737 (and d!706790 d!706714)))

(assert (=> bs!465737 (= lambda!92872 lambda!92853)))

(declare-fun b!2451878 () Bool)

(declare-fun e!1556159 () Regex!7207)

(assert (=> b!2451878 (= e!1556159 (h!33954 (t!208628 lt!879781)))))

(declare-fun b!2451879 () Bool)

(declare-fun e!1556163 () Bool)

(declare-fun e!1556164 () Bool)

(assert (=> b!2451879 (= e!1556163 e!1556164)))

(declare-fun c!391278 () Bool)

(assert (=> b!2451879 (= c!391278 (isEmpty!16584 (tail!3850 (t!208628 lt!879781))))))

(declare-fun b!2451880 () Bool)

(declare-fun e!1556162 () Regex!7207)

(assert (=> b!2451880 (= e!1556162 EmptyExpr!7207)))

(declare-fun b!2451881 () Bool)

(declare-fun lt!879811 () Regex!7207)

(assert (=> b!2451881 (= e!1556163 (isEmptyExpr!226 lt!879811))))

(declare-fun b!2451882 () Bool)

(assert (=> b!2451882 (= e!1556164 (isConcat!226 lt!879811))))

(declare-fun e!1556160 () Bool)

(assert (=> d!706790 e!1556160))

(declare-fun res!1039784 () Bool)

(assert (=> d!706790 (=> (not res!1039784) (not e!1556160))))

(assert (=> d!706790 (= res!1039784 (validRegex!2901 lt!879811))))

(assert (=> d!706790 (= lt!879811 e!1556159)))

(declare-fun c!391279 () Bool)

(declare-fun e!1556161 () Bool)

(assert (=> d!706790 (= c!391279 e!1556161)))

(declare-fun res!1039783 () Bool)

(assert (=> d!706790 (=> (not res!1039783) (not e!1556161))))

(assert (=> d!706790 (= res!1039783 ((_ is Cons!28553) (t!208628 lt!879781)))))

(assert (=> d!706790 (forall!5841 (t!208628 lt!879781) lambda!92872)))

(assert (=> d!706790 (= (generalisedConcat!308 (t!208628 lt!879781)) lt!879811)))

(declare-fun b!2451877 () Bool)

(assert (=> b!2451877 (= e!1556164 (= lt!879811 (head!5577 (t!208628 lt!879781))))))

(declare-fun b!2451883 () Bool)

(assert (=> b!2451883 (= e!1556161 (isEmpty!16584 (t!208628 (t!208628 lt!879781))))))

(declare-fun b!2451884 () Bool)

(assert (=> b!2451884 (= e!1556162 (Concat!11843 (h!33954 (t!208628 lt!879781)) (generalisedConcat!308 (t!208628 (t!208628 lt!879781)))))))

(declare-fun b!2451885 () Bool)

(assert (=> b!2451885 (= e!1556159 e!1556162)))

(declare-fun c!391280 () Bool)

(assert (=> b!2451885 (= c!391280 ((_ is Cons!28553) (t!208628 lt!879781)))))

(declare-fun b!2451886 () Bool)

(assert (=> b!2451886 (= e!1556160 e!1556163)))

(declare-fun c!391281 () Bool)

(assert (=> b!2451886 (= c!391281 (isEmpty!16584 (t!208628 lt!879781)))))

(assert (= (and d!706790 res!1039783) b!2451883))

(assert (= (and d!706790 c!391279) b!2451878))

(assert (= (and d!706790 (not c!391279)) b!2451885))

(assert (= (and b!2451885 c!391280) b!2451884))

(assert (= (and b!2451885 (not c!391280)) b!2451880))

(assert (= (and d!706790 res!1039784) b!2451886))

(assert (= (and b!2451886 c!391281) b!2451881))

(assert (= (and b!2451886 (not c!391281)) b!2451879))

(assert (= (and b!2451879 c!391278) b!2451877))

(assert (= (and b!2451879 (not c!391278)) b!2451882))

(declare-fun m!2825071 () Bool)

(assert (=> d!706790 m!2825071))

(declare-fun m!2825073 () Bool)

(assert (=> d!706790 m!2825073))

(declare-fun m!2825075 () Bool)

(assert (=> b!2451882 m!2825075))

(declare-fun m!2825077 () Bool)

(assert (=> b!2451883 m!2825077))

(declare-fun m!2825079 () Bool)

(assert (=> b!2451879 m!2825079))

(assert (=> b!2451879 m!2825079))

(declare-fun m!2825081 () Bool)

(assert (=> b!2451879 m!2825081))

(assert (=> b!2451886 m!2824853))

(declare-fun m!2825083 () Bool)

(assert (=> b!2451877 m!2825083))

(declare-fun m!2825085 () Bool)

(assert (=> b!2451881 m!2825085))

(declare-fun m!2825087 () Bool)

(assert (=> b!2451884 m!2825087))

(assert (=> b!2451388 d!706790))

(assert (=> b!2451411 d!706744))

(declare-fun bs!465738 () Bool)

(declare-fun b!2451889 () Bool)

(assert (= bs!465738 (and b!2451889 b!2451694)))

(declare-fun lambda!92873 () Int)

(assert (=> bs!465738 (= (and (= (reg!7536 (regOne!14927 r!13927)) (reg!7536 r!13927)) (= (regOne!14927 r!13927) r!13927)) (= lambda!92873 lambda!92868))))

(declare-fun bs!465739 () Bool)

(assert (= bs!465739 (and b!2451889 b!2451698)))

(assert (=> bs!465739 (not (= lambda!92873 lambda!92869))))

(declare-fun bs!465740 () Bool)

(assert (= bs!465740 (and b!2451889 b!2451868)))

(assert (=> bs!465740 (= (and (= (reg!7536 (regOne!14927 r!13927)) (reg!7536 (regTwo!14927 r!13927))) (= (regOne!14927 r!13927) (regTwo!14927 r!13927))) (= lambda!92873 lambda!92870))))

(declare-fun bs!465741 () Bool)

(assert (= bs!465741 (and b!2451889 b!2451872)))

(assert (=> bs!465741 (not (= lambda!92873 lambda!92871))))

(assert (=> b!2451889 true))

(assert (=> b!2451889 true))

(declare-fun bs!465742 () Bool)

(declare-fun b!2451893 () Bool)

(assert (= bs!465742 (and b!2451893 b!2451872)))

(declare-fun lambda!92874 () Int)

(assert (=> bs!465742 (= (and (= (regOne!14926 (regOne!14927 r!13927)) (regOne!14926 (regTwo!14927 r!13927))) (= (regTwo!14926 (regOne!14927 r!13927)) (regTwo!14926 (regTwo!14927 r!13927)))) (= lambda!92874 lambda!92871))))

(declare-fun bs!465743 () Bool)

(assert (= bs!465743 (and b!2451893 b!2451889)))

(assert (=> bs!465743 (not (= lambda!92874 lambda!92873))))

(declare-fun bs!465744 () Bool)

(assert (= bs!465744 (and b!2451893 b!2451698)))

(assert (=> bs!465744 (= (and (= (regOne!14926 (regOne!14927 r!13927)) (regOne!14926 r!13927)) (= (regTwo!14926 (regOne!14927 r!13927)) (regTwo!14926 r!13927))) (= lambda!92874 lambda!92869))))

(declare-fun bs!465745 () Bool)

(assert (= bs!465745 (and b!2451893 b!2451868)))

(assert (=> bs!465745 (not (= lambda!92874 lambda!92870))))

(declare-fun bs!465746 () Bool)

(assert (= bs!465746 (and b!2451893 b!2451694)))

(assert (=> bs!465746 (not (= lambda!92874 lambda!92868))))

(assert (=> b!2451893 true))

(assert (=> b!2451893 true))

(declare-fun b!2451887 () Bool)

(declare-fun c!391285 () Bool)

(assert (=> b!2451887 (= c!391285 ((_ is ElementMatch!7207) (regOne!14927 r!13927)))))

(declare-fun e!1556170 () Bool)

(declare-fun e!1556165 () Bool)

(assert (=> b!2451887 (= e!1556170 e!1556165)))

(declare-fun b!2451888 () Bool)

(declare-fun e!1556171 () Bool)

(assert (=> b!2451888 (= e!1556171 e!1556170)))

(declare-fun res!1039785 () Bool)

(assert (=> b!2451888 (= res!1039785 (not ((_ is EmptyLang!7207) (regOne!14927 r!13927))))))

(assert (=> b!2451888 (=> (not res!1039785) (not e!1556170))))

(declare-fun e!1556166 () Bool)

(declare-fun call!150612 () Bool)

(assert (=> b!2451889 (= e!1556166 call!150612)))

(declare-fun b!2451890 () Bool)

(declare-fun res!1039787 () Bool)

(assert (=> b!2451890 (=> res!1039787 e!1556166)))

(declare-fun call!150611 () Bool)

(assert (=> b!2451890 (= res!1039787 call!150611)))

(declare-fun e!1556167 () Bool)

(assert (=> b!2451890 (= e!1556167 e!1556166)))

(declare-fun b!2451891 () Bool)

(declare-fun e!1556168 () Bool)

(assert (=> b!2451891 (= e!1556168 e!1556167)))

(declare-fun c!391284 () Bool)

(assert (=> b!2451891 (= c!391284 ((_ is Star!7207) (regOne!14927 r!13927)))))

(declare-fun b!2451892 () Bool)

(declare-fun c!391282 () Bool)

(assert (=> b!2451892 (= c!391282 ((_ is Union!7207) (regOne!14927 r!13927)))))

(assert (=> b!2451892 (= e!1556165 e!1556168)))

(declare-fun bm!150606 () Bool)

(assert (=> bm!150606 (= call!150611 (isEmpty!16586 s!9460))))

(declare-fun b!2451894 () Bool)

(declare-fun e!1556169 () Bool)

(assert (=> b!2451894 (= e!1556168 e!1556169)))

(declare-fun res!1039786 () Bool)

(assert (=> b!2451894 (= res!1039786 (matchRSpec!1054 (regOne!14927 (regOne!14927 r!13927)) s!9460))))

(assert (=> b!2451894 (=> res!1039786 e!1556169)))

(declare-fun b!2451895 () Bool)

(assert (=> b!2451895 (= e!1556165 (= s!9460 (Cons!28552 (c!391151 (regOne!14927 r!13927)) Nil!28552)))))

(assert (=> b!2451893 (= e!1556167 call!150612)))

(declare-fun d!706792 () Bool)

(declare-fun c!391283 () Bool)

(assert (=> d!706792 (= c!391283 ((_ is EmptyExpr!7207) (regOne!14927 r!13927)))))

(assert (=> d!706792 (= (matchRSpec!1054 (regOne!14927 r!13927) s!9460) e!1556171)))

(declare-fun b!2451896 () Bool)

(assert (=> b!2451896 (= e!1556169 (matchRSpec!1054 (regTwo!14927 (regOne!14927 r!13927)) s!9460))))

(declare-fun b!2451897 () Bool)

(assert (=> b!2451897 (= e!1556171 call!150611)))

(declare-fun bm!150607 () Bool)

(assert (=> bm!150607 (= call!150612 (Exists!1234 (ite c!391284 lambda!92873 lambda!92874)))))

(assert (= (and d!706792 c!391283) b!2451897))

(assert (= (and d!706792 (not c!391283)) b!2451888))

(assert (= (and b!2451888 res!1039785) b!2451887))

(assert (= (and b!2451887 c!391285) b!2451895))

(assert (= (and b!2451887 (not c!391285)) b!2451892))

(assert (= (and b!2451892 c!391282) b!2451894))

(assert (= (and b!2451892 (not c!391282)) b!2451891))

(assert (= (and b!2451894 (not res!1039786)) b!2451896))

(assert (= (and b!2451891 c!391284) b!2451890))

(assert (= (and b!2451891 (not c!391284)) b!2451893))

(assert (= (and b!2451890 (not res!1039787)) b!2451889))

(assert (= (or b!2451889 b!2451893) bm!150607))

(assert (= (or b!2451897 b!2451890) bm!150606))

(assert (=> bm!150606 m!2824981))

(declare-fun m!2825089 () Bool)

(assert (=> b!2451894 m!2825089))

(declare-fun m!2825091 () Bool)

(assert (=> b!2451896 m!2825091))

(declare-fun m!2825093 () Bool)

(assert (=> bm!150607 m!2825093))

(assert (=> b!2451699 d!706792))

(declare-fun d!706794 () Bool)

(declare-fun nullableFct!539 (Regex!7207) Bool)

(assert (=> d!706794 (= (nullable!2208 lt!879780) (nullableFct!539 lt!879780))))

(declare-fun bs!465747 () Bool)

(assert (= bs!465747 d!706794))

(declare-fun m!2825095 () Bool)

(assert (=> bs!465747 m!2825095))

(assert (=> b!2451591 d!706794))

(assert (=> bm!150569 d!706770))

(declare-fun d!706796 () Bool)

(assert (=> d!706796 (= (isConcat!226 lt!879787) ((_ is Concat!11843) lt!879787))))

(assert (=> b!2451386 d!706796))

(declare-fun d!706798 () Bool)

(declare-fun res!1039788 () Bool)

(declare-fun e!1556172 () Bool)

(assert (=> d!706798 (=> res!1039788 e!1556172)))

(assert (=> d!706798 (= res!1039788 ((_ is Nil!28553) (t!208628 l!9164)))))

(assert (=> d!706798 (= (forall!5841 (t!208628 l!9164) lambda!92849) e!1556172)))

(declare-fun b!2451898 () Bool)

(declare-fun e!1556173 () Bool)

(assert (=> b!2451898 (= e!1556172 e!1556173)))

(declare-fun res!1039789 () Bool)

(assert (=> b!2451898 (=> (not res!1039789) (not e!1556173))))

(assert (=> b!2451898 (= res!1039789 (dynLambda!12266 lambda!92849 (h!33954 (t!208628 l!9164))))))

(declare-fun b!2451899 () Bool)

(assert (=> b!2451899 (= e!1556173 (forall!5841 (t!208628 (t!208628 l!9164)) lambda!92849))))

(assert (= (and d!706798 (not res!1039788)) b!2451898))

(assert (= (and b!2451898 res!1039789) b!2451899))

(declare-fun b_lambda!75095 () Bool)

(assert (=> (not b_lambda!75095) (not b!2451898)))

(declare-fun m!2825097 () Bool)

(assert (=> b!2451898 m!2825097))

(declare-fun m!2825099 () Bool)

(assert (=> b!2451899 m!2825099))

(assert (=> b!2451410 d!706798))

(declare-fun d!706800 () Bool)

(assert (=> d!706800 (= (isEmpty!16584 (tail!3850 lt!879781)) ((_ is Nil!28553) (tail!3850 lt!879781)))))

(assert (=> b!2451383 d!706800))

(declare-fun d!706802 () Bool)

(assert (=> d!706802 (= (tail!3850 lt!879781) (t!208628 lt!879781))))

(assert (=> b!2451383 d!706802))

(declare-fun d!706804 () Bool)

(assert (not d!706804))

(assert (=> b!2451570 d!706804))

(declare-fun d!706806 () Bool)

(assert (not d!706806))

(assert (=> b!2451570 d!706806))

(declare-fun d!706808 () Bool)

(assert (not d!706808))

(assert (=> b!2451570 d!706808))

(declare-fun d!706810 () Bool)

(assert (not d!706810))

(assert (=> b!2451570 d!706810))

(declare-fun d!706812 () Bool)

(assert (not d!706812))

(assert (=> b!2451551 d!706812))

(assert (=> b!2451551 d!706810))

(assert (=> b!2451587 d!706764))

(assert (=> b!2451587 d!706766))

(declare-fun d!706814 () Bool)

(assert (=> d!706814 (= (head!5577 lt!879781) (h!33954 lt!879781))))

(assert (=> b!2451381 d!706814))

(declare-fun b!2451900 () Bool)

(declare-fun res!1039794 () Bool)

(declare-fun e!1556178 () Bool)

(assert (=> b!2451900 (=> res!1039794 e!1556178)))

(assert (=> b!2451900 (= res!1039794 (not ((_ is Concat!11843) lt!879787)))))

(declare-fun e!1556180 () Bool)

(assert (=> b!2451900 (= e!1556180 e!1556178)))

(declare-fun b!2451901 () Bool)

(declare-fun e!1556179 () Bool)

(declare-fun e!1556176 () Bool)

(assert (=> b!2451901 (= e!1556179 e!1556176)))

(declare-fun res!1039792 () Bool)

(assert (=> b!2451901 (= res!1039792 (not (nullable!2208 (reg!7536 lt!879787))))))

(assert (=> b!2451901 (=> (not res!1039792) (not e!1556176))))

(declare-fun b!2451902 () Bool)

(declare-fun e!1556177 () Bool)

(declare-fun call!150613 () Bool)

(assert (=> b!2451902 (= e!1556177 call!150613)))

(declare-fun b!2451903 () Bool)

(declare-fun e!1556174 () Bool)

(declare-fun call!150615 () Bool)

(assert (=> b!2451903 (= e!1556174 call!150615)))

(declare-fun b!2451904 () Bool)

(declare-fun res!1039791 () Bool)

(assert (=> b!2451904 (=> (not res!1039791) (not e!1556174))))

(assert (=> b!2451904 (= res!1039791 call!150613)))

(assert (=> b!2451904 (= e!1556180 e!1556174)))

(declare-fun d!706816 () Bool)

(declare-fun res!1039790 () Bool)

(declare-fun e!1556175 () Bool)

(assert (=> d!706816 (=> res!1039790 e!1556175)))

(assert (=> d!706816 (= res!1039790 ((_ is ElementMatch!7207) lt!879787))))

(assert (=> d!706816 (= (validRegex!2901 lt!879787) e!1556175)))

(declare-fun bm!150608 () Bool)

(declare-fun call!150614 () Bool)

(assert (=> bm!150608 (= call!150613 call!150614)))

(declare-fun b!2451905 () Bool)

(assert (=> b!2451905 (= e!1556175 e!1556179)))

(declare-fun c!391287 () Bool)

(assert (=> b!2451905 (= c!391287 ((_ is Star!7207) lt!879787))))

(declare-fun b!2451906 () Bool)

(assert (=> b!2451906 (= e!1556179 e!1556180)))

(declare-fun c!391286 () Bool)

(assert (=> b!2451906 (= c!391286 ((_ is Union!7207) lt!879787))))

(declare-fun bm!150609 () Bool)

(assert (=> bm!150609 (= call!150615 (validRegex!2901 (ite c!391286 (regTwo!14927 lt!879787) (regOne!14926 lt!879787))))))

(declare-fun b!2451907 () Bool)

(assert (=> b!2451907 (= e!1556176 call!150614)))

(declare-fun bm!150610 () Bool)

(assert (=> bm!150610 (= call!150614 (validRegex!2901 (ite c!391287 (reg!7536 lt!879787) (ite c!391286 (regOne!14927 lt!879787) (regTwo!14926 lt!879787)))))))

(declare-fun b!2451908 () Bool)

(assert (=> b!2451908 (= e!1556178 e!1556177)))

(declare-fun res!1039793 () Bool)

(assert (=> b!2451908 (=> (not res!1039793) (not e!1556177))))

(assert (=> b!2451908 (= res!1039793 call!150615)))

(assert (= (and d!706816 (not res!1039790)) b!2451905))

(assert (= (and b!2451905 c!391287) b!2451901))

(assert (= (and b!2451905 (not c!391287)) b!2451906))

(assert (= (and b!2451901 res!1039792) b!2451907))

(assert (= (and b!2451906 c!391286) b!2451904))

(assert (= (and b!2451906 (not c!391286)) b!2451900))

(assert (= (and b!2451904 res!1039791) b!2451903))

(assert (= (and b!2451900 (not res!1039794)) b!2451908))

(assert (= (and b!2451908 res!1039793) b!2451902))

(assert (= (or b!2451904 b!2451902) bm!150608))

(assert (= (or b!2451903 b!2451908) bm!150609))

(assert (= (or b!2451907 bm!150608) bm!150610))

(declare-fun m!2825101 () Bool)

(assert (=> b!2451901 m!2825101))

(declare-fun m!2825103 () Bool)

(assert (=> bm!150609 m!2825103))

(declare-fun m!2825105 () Bool)

(assert (=> bm!150610 m!2825105))

(assert (=> d!706708 d!706816))

(declare-fun d!706818 () Bool)

(declare-fun res!1039795 () Bool)

(declare-fun e!1556181 () Bool)

(assert (=> d!706818 (=> res!1039795 e!1556181)))

(assert (=> d!706818 (= res!1039795 ((_ is Nil!28553) lt!879781))))

(assert (=> d!706818 (= (forall!5841 lt!879781 lambda!92852) e!1556181)))

(declare-fun b!2451909 () Bool)

(declare-fun e!1556182 () Bool)

(assert (=> b!2451909 (= e!1556181 e!1556182)))

(declare-fun res!1039796 () Bool)

(assert (=> b!2451909 (=> (not res!1039796) (not e!1556182))))

(assert (=> b!2451909 (= res!1039796 (dynLambda!12266 lambda!92852 (h!33954 lt!879781)))))

(declare-fun b!2451910 () Bool)

(assert (=> b!2451910 (= e!1556182 (forall!5841 (t!208628 lt!879781) lambda!92852))))

(assert (= (and d!706818 (not res!1039795)) b!2451909))

(assert (= (and b!2451909 res!1039796) b!2451910))

(declare-fun b_lambda!75097 () Bool)

(assert (=> (not b_lambda!75097) (not b!2451909)))

(declare-fun m!2825107 () Bool)

(assert (=> b!2451909 m!2825107))

(declare-fun m!2825109 () Bool)

(assert (=> b!2451910 m!2825109))

(assert (=> d!706708 d!706818))

(assert (=> d!706740 d!706770))

(assert (=> d!706740 d!706720))

(assert (=> b!2451568 d!706808))

(assert (=> b!2451585 d!706764))

(assert (=> b!2451585 d!706766))

(assert (=> b!2451564 d!706808))

(declare-fun b!2451911 () Bool)

(declare-fun res!1039801 () Bool)

(declare-fun e!1556187 () Bool)

(assert (=> b!2451911 (=> res!1039801 e!1556187)))

(assert (=> b!2451911 (= res!1039801 (not ((_ is Concat!11843) (h!33954 l!9164))))))

(declare-fun e!1556189 () Bool)

(assert (=> b!2451911 (= e!1556189 e!1556187)))

(declare-fun b!2451912 () Bool)

(declare-fun e!1556188 () Bool)

(declare-fun e!1556185 () Bool)

(assert (=> b!2451912 (= e!1556188 e!1556185)))

(declare-fun res!1039799 () Bool)

(assert (=> b!2451912 (= res!1039799 (not (nullable!2208 (reg!7536 (h!33954 l!9164)))))))

(assert (=> b!2451912 (=> (not res!1039799) (not e!1556185))))

(declare-fun b!2451913 () Bool)

(declare-fun e!1556186 () Bool)

(declare-fun call!150616 () Bool)

(assert (=> b!2451913 (= e!1556186 call!150616)))

(declare-fun b!2451914 () Bool)

(declare-fun e!1556183 () Bool)

(declare-fun call!150618 () Bool)

(assert (=> b!2451914 (= e!1556183 call!150618)))

(declare-fun b!2451915 () Bool)

(declare-fun res!1039798 () Bool)

(assert (=> b!2451915 (=> (not res!1039798) (not e!1556183))))

(assert (=> b!2451915 (= res!1039798 call!150616)))

(assert (=> b!2451915 (= e!1556189 e!1556183)))

(declare-fun d!706820 () Bool)

(declare-fun res!1039797 () Bool)

(declare-fun e!1556184 () Bool)

(assert (=> d!706820 (=> res!1039797 e!1556184)))

(assert (=> d!706820 (= res!1039797 ((_ is ElementMatch!7207) (h!33954 l!9164)))))

(assert (=> d!706820 (= (validRegex!2901 (h!33954 l!9164)) e!1556184)))

(declare-fun bm!150611 () Bool)

(declare-fun call!150617 () Bool)

(assert (=> bm!150611 (= call!150616 call!150617)))

(declare-fun b!2451916 () Bool)

(assert (=> b!2451916 (= e!1556184 e!1556188)))

(declare-fun c!391289 () Bool)

(assert (=> b!2451916 (= c!391289 ((_ is Star!7207) (h!33954 l!9164)))))

(declare-fun b!2451917 () Bool)

(assert (=> b!2451917 (= e!1556188 e!1556189)))

(declare-fun c!391288 () Bool)

(assert (=> b!2451917 (= c!391288 ((_ is Union!7207) (h!33954 l!9164)))))

(declare-fun bm!150612 () Bool)

(assert (=> bm!150612 (= call!150618 (validRegex!2901 (ite c!391288 (regTwo!14927 (h!33954 l!9164)) (regOne!14926 (h!33954 l!9164)))))))

(declare-fun b!2451918 () Bool)

(assert (=> b!2451918 (= e!1556185 call!150617)))

(declare-fun bm!150613 () Bool)

(assert (=> bm!150613 (= call!150617 (validRegex!2901 (ite c!391289 (reg!7536 (h!33954 l!9164)) (ite c!391288 (regOne!14927 (h!33954 l!9164)) (regTwo!14926 (h!33954 l!9164))))))))

(declare-fun b!2451919 () Bool)

(assert (=> b!2451919 (= e!1556187 e!1556186)))

(declare-fun res!1039800 () Bool)

(assert (=> b!2451919 (=> (not res!1039800) (not e!1556186))))

(assert (=> b!2451919 (= res!1039800 call!150618)))

(assert (= (and d!706820 (not res!1039797)) b!2451916))

(assert (= (and b!2451916 c!391289) b!2451912))

(assert (= (and b!2451916 (not c!391289)) b!2451917))

(assert (= (and b!2451912 res!1039799) b!2451918))

(assert (= (and b!2451917 c!391288) b!2451915))

(assert (= (and b!2451917 (not c!391288)) b!2451911))

(assert (= (and b!2451915 res!1039798) b!2451914))

(assert (= (and b!2451911 (not res!1039801)) b!2451919))

(assert (= (and b!2451919 res!1039800) b!2451913))

(assert (= (or b!2451915 b!2451913) bm!150611))

(assert (= (or b!2451914 b!2451919) bm!150612))

(assert (= (or b!2451918 bm!150611) bm!150613))

(declare-fun m!2825111 () Bool)

(assert (=> b!2451912 m!2825111))

(declare-fun m!2825113 () Bool)

(assert (=> bm!150612 m!2825113))

(declare-fun m!2825115 () Bool)

(assert (=> bm!150613 m!2825115))

(assert (=> bs!465727 d!706820))

(declare-fun d!706822 () Bool)

(assert (=> d!706822 (= (nullable!2208 (reg!7536 lt!879780)) (nullableFct!539 (reg!7536 lt!879780)))))

(declare-fun bs!465748 () Bool)

(assert (= bs!465748 d!706822))

(declare-fun m!2825117 () Bool)

(assert (=> bs!465748 m!2825117))

(assert (=> b!2451460 d!706822))

(declare-fun d!706824 () Bool)

(assert (=> d!706824 (= (isEmpty!16586 Nil!28552) true)))

(assert (=> d!706724 d!706824))

(declare-fun d!706826 () Bool)

(assert (=> d!706826 (= (validRegex!2901 EmptyExpr!7207) true)))

(assert (=> d!706724 d!706826))

(declare-fun bs!465749 () Bool)

(declare-fun d!706828 () Bool)

(assert (= bs!465749 (and d!706828 start!239318)))

(declare-fun lambda!92875 () Int)

(assert (=> bs!465749 (= lambda!92875 lambda!92849)))

(declare-fun bs!465750 () Bool)

(assert (= bs!465750 (and d!706828 d!706708)))

(assert (=> bs!465750 (= lambda!92875 lambda!92852)))

(declare-fun bs!465751 () Bool)

(assert (= bs!465751 (and d!706828 d!706714)))

(assert (=> bs!465751 (= lambda!92875 lambda!92853)))

(declare-fun bs!465752 () Bool)

(assert (= bs!465752 (and d!706828 d!706790)))

(assert (=> bs!465752 (= lambda!92875 lambda!92872)))

(declare-fun b!2451921 () Bool)

(declare-fun e!1556190 () Regex!7207)

(assert (=> b!2451921 (= e!1556190 (h!33954 (t!208628 l!9164)))))

(declare-fun b!2451922 () Bool)

(declare-fun e!1556194 () Bool)

(declare-fun e!1556195 () Bool)

(assert (=> b!2451922 (= e!1556194 e!1556195)))

(declare-fun c!391290 () Bool)

(assert (=> b!2451922 (= c!391290 (isEmpty!16584 (tail!3850 (t!208628 l!9164))))))

(declare-fun b!2451923 () Bool)

(declare-fun e!1556193 () Regex!7207)

(assert (=> b!2451923 (= e!1556193 EmptyExpr!7207)))

(declare-fun b!2451924 () Bool)

(declare-fun lt!879812 () Regex!7207)

(assert (=> b!2451924 (= e!1556194 (isEmptyExpr!226 lt!879812))))

(declare-fun b!2451925 () Bool)

(assert (=> b!2451925 (= e!1556195 (isConcat!226 lt!879812))))

(declare-fun e!1556191 () Bool)

(assert (=> d!706828 e!1556191))

(declare-fun res!1039803 () Bool)

(assert (=> d!706828 (=> (not res!1039803) (not e!1556191))))

(assert (=> d!706828 (= res!1039803 (validRegex!2901 lt!879812))))

(assert (=> d!706828 (= lt!879812 e!1556190)))

(declare-fun c!391291 () Bool)

(declare-fun e!1556192 () Bool)

(assert (=> d!706828 (= c!391291 e!1556192)))

(declare-fun res!1039802 () Bool)

(assert (=> d!706828 (=> (not res!1039802) (not e!1556192))))

(assert (=> d!706828 (= res!1039802 ((_ is Cons!28553) (t!208628 l!9164)))))

(assert (=> d!706828 (forall!5841 (t!208628 l!9164) lambda!92875)))

(assert (=> d!706828 (= (generalisedConcat!308 (t!208628 l!9164)) lt!879812)))

(declare-fun b!2451920 () Bool)

(assert (=> b!2451920 (= e!1556195 (= lt!879812 (head!5577 (t!208628 l!9164))))))

(declare-fun b!2451926 () Bool)

(assert (=> b!2451926 (= e!1556192 (isEmpty!16584 (t!208628 (t!208628 l!9164))))))

(declare-fun b!2451927 () Bool)

(assert (=> b!2451927 (= e!1556193 (Concat!11843 (h!33954 (t!208628 l!9164)) (generalisedConcat!308 (t!208628 (t!208628 l!9164)))))))

(declare-fun b!2451928 () Bool)

(assert (=> b!2451928 (= e!1556190 e!1556193)))

(declare-fun c!391292 () Bool)

(assert (=> b!2451928 (= c!391292 ((_ is Cons!28553) (t!208628 l!9164)))))

(declare-fun b!2451929 () Bool)

(assert (=> b!2451929 (= e!1556191 e!1556194)))

(declare-fun c!391293 () Bool)

(assert (=> b!2451929 (= c!391293 (isEmpty!16584 (t!208628 l!9164)))))

(assert (= (and d!706828 res!1039802) b!2451926))

(assert (= (and d!706828 c!391291) b!2451921))

(assert (= (and d!706828 (not c!391291)) b!2451928))

(assert (= (and b!2451928 c!391292) b!2451927))

(assert (= (and b!2451928 (not c!391292)) b!2451923))

(assert (= (and d!706828 res!1039803) b!2451929))

(assert (= (and b!2451929 c!391293) b!2451924))

(assert (= (and b!2451929 (not c!391293)) b!2451922))

(assert (= (and b!2451922 c!391290) b!2451920))

(assert (= (and b!2451922 (not c!391290)) b!2451925))

(declare-fun m!2825119 () Bool)

(assert (=> d!706828 m!2825119))

(declare-fun m!2825121 () Bool)

(assert (=> d!706828 m!2825121))

(declare-fun m!2825123 () Bool)

(assert (=> b!2451925 m!2825123))

(declare-fun m!2825125 () Bool)

(assert (=> b!2451926 m!2825125))

(declare-fun m!2825127 () Bool)

(assert (=> b!2451922 m!2825127))

(assert (=> b!2451922 m!2825127))

(declare-fun m!2825129 () Bool)

(assert (=> b!2451922 m!2825129))

(assert (=> b!2451929 m!2824889))

(declare-fun m!2825131 () Bool)

(assert (=> b!2451920 m!2825131))

(declare-fun m!2825133 () Bool)

(assert (=> b!2451924 m!2825133))

(declare-fun m!2825135 () Bool)

(assert (=> b!2451927 m!2825135))

(assert (=> b!2451418 d!706828))

(assert (=> bm!150565 d!706824))

(declare-fun d!706830 () Bool)

(assert (=> d!706830 (= (isConcat!226 lt!879789) ((_ is Concat!11843) lt!879789))))

(assert (=> b!2451416 d!706830))

(declare-fun b!2451930 () Bool)

(declare-fun res!1039804 () Bool)

(declare-fun e!1556198 () Bool)

(assert (=> b!2451930 (=> (not res!1039804) (not e!1556198))))

(assert (=> b!2451930 (= res!1039804 (isEmpty!16586 (tail!3852 (tail!3852 s!9460))))))

(declare-fun b!2451931 () Bool)

(declare-fun res!1039805 () Bool)

(declare-fun e!1556197 () Bool)

(assert (=> b!2451931 (=> res!1039805 e!1556197)))

(assert (=> b!2451931 (= res!1039805 (not ((_ is ElementMatch!7207) (derivativeStep!1862 lt!879780 (head!5579 s!9460)))))))

(declare-fun e!1556202 () Bool)

(assert (=> b!2451931 (= e!1556202 e!1556197)))

(declare-fun b!2451932 () Bool)

(declare-fun res!1039809 () Bool)

(declare-fun e!1556200 () Bool)

(assert (=> b!2451932 (=> res!1039809 e!1556200)))

(assert (=> b!2451932 (= res!1039809 (not (isEmpty!16586 (tail!3852 (tail!3852 s!9460)))))))

(declare-fun b!2451933 () Bool)

(declare-fun e!1556201 () Bool)

(assert (=> b!2451933 (= e!1556201 e!1556200)))

(declare-fun res!1039808 () Bool)

(assert (=> b!2451933 (=> res!1039808 e!1556200)))

(declare-fun call!150619 () Bool)

(assert (=> b!2451933 (= res!1039808 call!150619)))

(declare-fun b!2451934 () Bool)

(declare-fun res!1039810 () Bool)

(assert (=> b!2451934 (=> (not res!1039810) (not e!1556198))))

(assert (=> b!2451934 (= res!1039810 (not call!150619))))

(declare-fun b!2451935 () Bool)

(declare-fun e!1556196 () Bool)

(assert (=> b!2451935 (= e!1556196 e!1556202)))

(declare-fun c!391294 () Bool)

(assert (=> b!2451935 (= c!391294 ((_ is EmptyLang!7207) (derivativeStep!1862 lt!879780 (head!5579 s!9460))))))

(declare-fun bm!150614 () Bool)

(assert (=> bm!150614 (= call!150619 (isEmpty!16586 (tail!3852 s!9460)))))

(declare-fun b!2451936 () Bool)

(declare-fun e!1556199 () Bool)

(assert (=> b!2451936 (= e!1556199 (nullable!2208 (derivativeStep!1862 lt!879780 (head!5579 s!9460))))))

(declare-fun b!2451937 () Bool)

(assert (=> b!2451937 (= e!1556198 (= (head!5579 (tail!3852 s!9460)) (c!391151 (derivativeStep!1862 lt!879780 (head!5579 s!9460)))))))

(declare-fun d!706832 () Bool)

(assert (=> d!706832 e!1556196))

(declare-fun c!391296 () Bool)

(assert (=> d!706832 (= c!391296 ((_ is EmptyExpr!7207) (derivativeStep!1862 lt!879780 (head!5579 s!9460))))))

(declare-fun lt!879813 () Bool)

(assert (=> d!706832 (= lt!879813 e!1556199)))

(declare-fun c!391295 () Bool)

(assert (=> d!706832 (= c!391295 (isEmpty!16586 (tail!3852 s!9460)))))

(assert (=> d!706832 (validRegex!2901 (derivativeStep!1862 lt!879780 (head!5579 s!9460)))))

(assert (=> d!706832 (= (matchR!3322 (derivativeStep!1862 lt!879780 (head!5579 s!9460)) (tail!3852 s!9460)) lt!879813)))

(declare-fun b!2451938 () Bool)

(declare-fun res!1039806 () Bool)

(assert (=> b!2451938 (=> res!1039806 e!1556197)))

(assert (=> b!2451938 (= res!1039806 e!1556198)))

(declare-fun res!1039811 () Bool)

(assert (=> b!2451938 (=> (not res!1039811) (not e!1556198))))

(assert (=> b!2451938 (= res!1039811 lt!879813)))

(declare-fun b!2451939 () Bool)

(assert (=> b!2451939 (= e!1556197 e!1556201)))

(declare-fun res!1039807 () Bool)

(assert (=> b!2451939 (=> (not res!1039807) (not e!1556201))))

(assert (=> b!2451939 (= res!1039807 (not lt!879813))))

(declare-fun b!2451940 () Bool)

(assert (=> b!2451940 (= e!1556196 (= lt!879813 call!150619))))

(declare-fun b!2451941 () Bool)

(assert (=> b!2451941 (= e!1556200 (not (= (head!5579 (tail!3852 s!9460)) (c!391151 (derivativeStep!1862 lt!879780 (head!5579 s!9460))))))))

(declare-fun b!2451942 () Bool)

(assert (=> b!2451942 (= e!1556202 (not lt!879813))))

(declare-fun b!2451943 () Bool)

(assert (=> b!2451943 (= e!1556199 (matchR!3322 (derivativeStep!1862 (derivativeStep!1862 lt!879780 (head!5579 s!9460)) (head!5579 (tail!3852 s!9460))) (tail!3852 (tail!3852 s!9460))))))

(assert (= (and d!706832 c!391295) b!2451936))

(assert (= (and d!706832 (not c!391295)) b!2451943))

(assert (= (and d!706832 c!391296) b!2451940))

(assert (= (and d!706832 (not c!391296)) b!2451935))

(assert (= (and b!2451935 c!391294) b!2451942))

(assert (= (and b!2451935 (not c!391294)) b!2451931))

(assert (= (and b!2451931 (not res!1039805)) b!2451938))

(assert (= (and b!2451938 res!1039811) b!2451934))

(assert (= (and b!2451934 res!1039810) b!2451930))

(assert (= (and b!2451930 res!1039804) b!2451937))

(assert (= (and b!2451938 (not res!1039806)) b!2451939))

(assert (= (and b!2451939 res!1039807) b!2451933))

(assert (= (and b!2451933 (not res!1039808)) b!2451932))

(assert (= (and b!2451932 (not res!1039809)) b!2451941))

(assert (= (or b!2451940 b!2451933 b!2451934) bm!150614))

(assert (=> d!706832 m!2824983))

(assert (=> d!706832 m!2824985))

(assert (=> d!706832 m!2824991))

(declare-fun m!2825137 () Bool)

(assert (=> d!706832 m!2825137))

(assert (=> b!2451932 m!2824983))

(assert (=> b!2451932 m!2825043))

(assert (=> b!2451932 m!2825043))

(assert (=> b!2451932 m!2825045))

(assert (=> b!2451941 m!2824983))

(assert (=> b!2451941 m!2825047))

(assert (=> b!2451936 m!2824991))

(declare-fun m!2825139 () Bool)

(assert (=> b!2451936 m!2825139))

(assert (=> b!2451943 m!2824983))

(assert (=> b!2451943 m!2825047))

(assert (=> b!2451943 m!2824991))

(assert (=> b!2451943 m!2825047))

(declare-fun m!2825141 () Bool)

(assert (=> b!2451943 m!2825141))

(assert (=> b!2451943 m!2824983))

(assert (=> b!2451943 m!2825043))

(assert (=> b!2451943 m!2825141))

(assert (=> b!2451943 m!2825043))

(declare-fun m!2825143 () Bool)

(assert (=> b!2451943 m!2825143))

(assert (=> b!2451930 m!2824983))

(assert (=> b!2451930 m!2825043))

(assert (=> b!2451930 m!2825043))

(assert (=> b!2451930 m!2825045))

(assert (=> bm!150614 m!2824983))

(assert (=> bm!150614 m!2824985))

(assert (=> b!2451937 m!2824983))

(assert (=> b!2451937 m!2825047))

(assert (=> b!2451598 d!706832))

(declare-fun b!2451944 () Bool)

(declare-fun e!1556203 () Regex!7207)

(declare-fun e!1556207 () Regex!7207)

(assert (=> b!2451944 (= e!1556203 e!1556207)))

(declare-fun c!391299 () Bool)

(assert (=> b!2451944 (= c!391299 ((_ is ElementMatch!7207) lt!879780))))

(declare-fun bm!150615 () Bool)

(declare-fun c!391297 () Bool)

(declare-fun call!150622 () Regex!7207)

(assert (=> bm!150615 (= call!150622 (derivativeStep!1862 (ite c!391297 (regOne!14927 lt!879780) (regOne!14926 lt!879780)) (head!5579 s!9460)))))

(declare-fun bm!150616 () Bool)

(declare-fun call!150620 () Regex!7207)

(declare-fun call!150621 () Regex!7207)

(assert (=> bm!150616 (= call!150620 call!150621)))

(declare-fun b!2451945 () Bool)

(declare-fun e!1556204 () Regex!7207)

(assert (=> b!2451945 (= e!1556204 (Union!7207 (Concat!11843 call!150620 (regTwo!14926 lt!879780)) EmptyLang!7207))))

(declare-fun b!2451946 () Bool)

(declare-fun e!1556205 () Regex!7207)

(declare-fun call!150623 () Regex!7207)

(assert (=> b!2451946 (= e!1556205 (Union!7207 call!150622 call!150623))))

(declare-fun c!391298 () Bool)

(declare-fun c!391301 () Bool)

(declare-fun bm!150617 () Bool)

(assert (=> bm!150617 (= call!150623 (derivativeStep!1862 (ite c!391297 (regTwo!14927 lt!879780) (ite c!391298 (reg!7536 lt!879780) (ite c!391301 (regTwo!14926 lt!879780) (regOne!14926 lt!879780)))) (head!5579 s!9460)))))

(declare-fun d!706834 () Bool)

(declare-fun lt!879814 () Regex!7207)

(assert (=> d!706834 (validRegex!2901 lt!879814)))

(assert (=> d!706834 (= lt!879814 e!1556203)))

(declare-fun c!391300 () Bool)

(assert (=> d!706834 (= c!391300 (or ((_ is EmptyExpr!7207) lt!879780) ((_ is EmptyLang!7207) lt!879780)))))

(assert (=> d!706834 (validRegex!2901 lt!879780)))

(assert (=> d!706834 (= (derivativeStep!1862 lt!879780 (head!5579 s!9460)) lt!879814)))

(declare-fun b!2451947 () Bool)

(declare-fun e!1556206 () Regex!7207)

(assert (=> b!2451947 (= e!1556206 (Concat!11843 call!150621 lt!879780))))

(declare-fun b!2451948 () Bool)

(assert (=> b!2451948 (= c!391297 ((_ is Union!7207) lt!879780))))

(assert (=> b!2451948 (= e!1556207 e!1556205)))

(declare-fun b!2451949 () Bool)

(assert (=> b!2451949 (= c!391301 (nullable!2208 (regOne!14926 lt!879780)))))

(assert (=> b!2451949 (= e!1556206 e!1556204)))

(declare-fun b!2451950 () Bool)

(assert (=> b!2451950 (= e!1556207 (ite (= (head!5579 s!9460) (c!391151 lt!879780)) EmptyExpr!7207 EmptyLang!7207))))

(declare-fun b!2451951 () Bool)

(assert (=> b!2451951 (= e!1556205 e!1556206)))

(assert (=> b!2451951 (= c!391298 ((_ is Star!7207) lt!879780))))

(declare-fun bm!150618 () Bool)

(assert (=> bm!150618 (= call!150621 call!150623)))

(declare-fun b!2451952 () Bool)

(assert (=> b!2451952 (= e!1556203 EmptyLang!7207)))

(declare-fun b!2451953 () Bool)

(assert (=> b!2451953 (= e!1556204 (Union!7207 (Concat!11843 call!150622 (regTwo!14926 lt!879780)) call!150620))))

(assert (= (and d!706834 c!391300) b!2451952))

(assert (= (and d!706834 (not c!391300)) b!2451944))

(assert (= (and b!2451944 c!391299) b!2451950))

(assert (= (and b!2451944 (not c!391299)) b!2451948))

(assert (= (and b!2451948 c!391297) b!2451946))

(assert (= (and b!2451948 (not c!391297)) b!2451951))

(assert (= (and b!2451951 c!391298) b!2451947))

(assert (= (and b!2451951 (not c!391298)) b!2451949))

(assert (= (and b!2451949 c!391301) b!2451953))

(assert (= (and b!2451949 (not c!391301)) b!2451945))

(assert (= (or b!2451953 b!2451945) bm!150616))

(assert (= (or b!2451947 bm!150616) bm!150618))

(assert (= (or b!2451946 b!2451953) bm!150615))

(assert (= (or b!2451946 bm!150618) bm!150617))

(assert (=> bm!150615 m!2824987))

(declare-fun m!2825145 () Bool)

(assert (=> bm!150615 m!2825145))

(assert (=> bm!150617 m!2824987))

(declare-fun m!2825147 () Bool)

(assert (=> bm!150617 m!2825147))

(declare-fun m!2825149 () Bool)

(assert (=> d!706834 m!2825149))

(assert (=> d!706834 m!2824831))

(declare-fun m!2825151 () Bool)

(assert (=> b!2451949 m!2825151))

(assert (=> b!2451598 d!706834))

(assert (=> b!2451598 d!706780))

(assert (=> b!2451598 d!706766))

(declare-fun b!2451954 () Bool)

(declare-fun res!1039816 () Bool)

(declare-fun e!1556212 () Bool)

(assert (=> b!2451954 (=> res!1039816 e!1556212)))

(assert (=> b!2451954 (= res!1039816 (not ((_ is Concat!11843) lt!879789)))))

(declare-fun e!1556214 () Bool)

(assert (=> b!2451954 (= e!1556214 e!1556212)))

(declare-fun b!2451955 () Bool)

(declare-fun e!1556213 () Bool)

(declare-fun e!1556210 () Bool)

(assert (=> b!2451955 (= e!1556213 e!1556210)))

(declare-fun res!1039814 () Bool)

(assert (=> b!2451955 (= res!1039814 (not (nullable!2208 (reg!7536 lt!879789))))))

(assert (=> b!2451955 (=> (not res!1039814) (not e!1556210))))

(declare-fun b!2451956 () Bool)

(declare-fun e!1556211 () Bool)

(declare-fun call!150624 () Bool)

(assert (=> b!2451956 (= e!1556211 call!150624)))

(declare-fun b!2451957 () Bool)

(declare-fun e!1556208 () Bool)

(declare-fun call!150626 () Bool)

(assert (=> b!2451957 (= e!1556208 call!150626)))

(declare-fun b!2451958 () Bool)

(declare-fun res!1039813 () Bool)

(assert (=> b!2451958 (=> (not res!1039813) (not e!1556208))))

(assert (=> b!2451958 (= res!1039813 call!150624)))

(assert (=> b!2451958 (= e!1556214 e!1556208)))

(declare-fun d!706836 () Bool)

(declare-fun res!1039812 () Bool)

(declare-fun e!1556209 () Bool)

(assert (=> d!706836 (=> res!1039812 e!1556209)))

(assert (=> d!706836 (= res!1039812 ((_ is ElementMatch!7207) lt!879789))))

(assert (=> d!706836 (= (validRegex!2901 lt!879789) e!1556209)))

(declare-fun bm!150619 () Bool)

(declare-fun call!150625 () Bool)

(assert (=> bm!150619 (= call!150624 call!150625)))

(declare-fun b!2451959 () Bool)

(assert (=> b!2451959 (= e!1556209 e!1556213)))

(declare-fun c!391303 () Bool)

(assert (=> b!2451959 (= c!391303 ((_ is Star!7207) lt!879789))))

(declare-fun b!2451960 () Bool)

(assert (=> b!2451960 (= e!1556213 e!1556214)))

(declare-fun c!391302 () Bool)

(assert (=> b!2451960 (= c!391302 ((_ is Union!7207) lt!879789))))

(declare-fun bm!150620 () Bool)

(assert (=> bm!150620 (= call!150626 (validRegex!2901 (ite c!391302 (regTwo!14927 lt!879789) (regOne!14926 lt!879789))))))

(declare-fun b!2451961 () Bool)

(assert (=> b!2451961 (= e!1556210 call!150625)))

(declare-fun bm!150621 () Bool)

(assert (=> bm!150621 (= call!150625 (validRegex!2901 (ite c!391303 (reg!7536 lt!879789) (ite c!391302 (regOne!14927 lt!879789) (regTwo!14926 lt!879789)))))))

(declare-fun b!2451962 () Bool)

(assert (=> b!2451962 (= e!1556212 e!1556211)))

(declare-fun res!1039815 () Bool)

(assert (=> b!2451962 (=> (not res!1039815) (not e!1556211))))

(assert (=> b!2451962 (= res!1039815 call!150626)))

(assert (= (and d!706836 (not res!1039812)) b!2451959))

(assert (= (and b!2451959 c!391303) b!2451955))

(assert (= (and b!2451959 (not c!391303)) b!2451960))

(assert (= (and b!2451955 res!1039814) b!2451961))

(assert (= (and b!2451960 c!391302) b!2451958))

(assert (= (and b!2451960 (not c!391302)) b!2451954))

(assert (= (and b!2451958 res!1039813) b!2451957))

(assert (= (and b!2451954 (not res!1039816)) b!2451962))

(assert (= (and b!2451962 res!1039815) b!2451956))

(assert (= (or b!2451958 b!2451956) bm!150619))

(assert (= (or b!2451957 b!2451962) bm!150620))

(assert (= (or b!2451961 bm!150619) bm!150621))

(declare-fun m!2825153 () Bool)

(assert (=> b!2451955 m!2825153))

(declare-fun m!2825155 () Bool)

(assert (=> bm!150620 m!2825155))

(declare-fun m!2825157 () Bool)

(assert (=> bm!150621 m!2825157))

(assert (=> d!706714 d!706836))

(declare-fun d!706838 () Bool)

(declare-fun res!1039817 () Bool)

(declare-fun e!1556215 () Bool)

(assert (=> d!706838 (=> res!1039817 e!1556215)))

(assert (=> d!706838 (= res!1039817 ((_ is Nil!28553) l!9164))))

(assert (=> d!706838 (= (forall!5841 l!9164 lambda!92853) e!1556215)))

(declare-fun b!2451963 () Bool)

(declare-fun e!1556216 () Bool)

(assert (=> b!2451963 (= e!1556215 e!1556216)))

(declare-fun res!1039818 () Bool)

(assert (=> b!2451963 (=> (not res!1039818) (not e!1556216))))

(assert (=> b!2451963 (= res!1039818 (dynLambda!12266 lambda!92853 (h!33954 l!9164)))))

(declare-fun b!2451964 () Bool)

(assert (=> b!2451964 (= e!1556216 (forall!5841 (t!208628 l!9164) lambda!92853))))

(assert (= (and d!706838 (not res!1039817)) b!2451963))

(assert (= (and b!2451963 res!1039818) b!2451964))

(declare-fun b_lambda!75099 () Bool)

(assert (=> (not b_lambda!75099) (not b!2451963)))

(declare-fun m!2825159 () Bool)

(assert (=> b!2451963 m!2825159))

(declare-fun m!2825161 () Bool)

(assert (=> b!2451964 m!2825161))

(assert (=> d!706714 d!706838))

(assert (=> b!2451596 d!706780))

(declare-fun d!706840 () Bool)

(assert (=> d!706840 (= (nullable!2208 r!13927) (nullableFct!539 r!13927))))

(declare-fun bs!465753 () Bool)

(assert (= bs!465753 d!706840))

(declare-fun m!2825163 () Bool)

(assert (=> bs!465753 m!2825163))

(assert (=> b!2451605 d!706840))

(declare-fun d!706842 () Bool)

(assert (=> d!706842 (= (isEmpty!16584 (t!208628 lt!879781)) ((_ is Nil!28553) (t!208628 lt!879781)))))

(assert (=> b!2451387 d!706842))

(assert (=> b!2451592 d!706780))

(assert (=> b!2451555 d!706812))

(assert (=> b!2451555 d!706810))

(assert (=> bm!150568 d!706770))

(declare-fun d!706844 () Bool)

(assert (=> d!706844 (= (isEmptyExpr!226 lt!879787) ((_ is EmptyExpr!7207) lt!879787))))

(assert (=> b!2451385 d!706844))

(assert (=> bm!150580 d!706770))

(declare-fun b!2451968 () Bool)

(declare-fun e!1556217 () Bool)

(declare-fun tp!779805 () Bool)

(declare-fun tp!779804 () Bool)

(assert (=> b!2451968 (= e!1556217 (and tp!779805 tp!779804))))

(declare-fun b!2451967 () Bool)

(declare-fun tp!779803 () Bool)

(assert (=> b!2451967 (= e!1556217 tp!779803)))

(assert (=> b!2451786 (= tp!779790 e!1556217)))

(declare-fun b!2451965 () Bool)

(assert (=> b!2451965 (= e!1556217 tp_is_empty!11827)))

(declare-fun b!2451966 () Bool)

(declare-fun tp!779806 () Bool)

(declare-fun tp!779802 () Bool)

(assert (=> b!2451966 (= e!1556217 (and tp!779806 tp!779802))))

(assert (= (and b!2451786 ((_ is ElementMatch!7207) (regOne!14927 (regTwo!14926 r!13927)))) b!2451965))

(assert (= (and b!2451786 ((_ is Concat!11843) (regOne!14927 (regTwo!14926 r!13927)))) b!2451966))

(assert (= (and b!2451786 ((_ is Star!7207) (regOne!14927 (regTwo!14926 r!13927)))) b!2451967))

(assert (= (and b!2451786 ((_ is Union!7207) (regOne!14927 (regTwo!14926 r!13927)))) b!2451968))

(declare-fun b!2451972 () Bool)

(declare-fun e!1556218 () Bool)

(declare-fun tp!779810 () Bool)

(declare-fun tp!779809 () Bool)

(assert (=> b!2451972 (= e!1556218 (and tp!779810 tp!779809))))

(declare-fun b!2451971 () Bool)

(declare-fun tp!779808 () Bool)

(assert (=> b!2451971 (= e!1556218 tp!779808)))

(assert (=> b!2451786 (= tp!779789 e!1556218)))

(declare-fun b!2451969 () Bool)

(assert (=> b!2451969 (= e!1556218 tp_is_empty!11827)))

(declare-fun b!2451970 () Bool)

(declare-fun tp!779811 () Bool)

(declare-fun tp!779807 () Bool)

(assert (=> b!2451970 (= e!1556218 (and tp!779811 tp!779807))))

(assert (= (and b!2451786 ((_ is ElementMatch!7207) (regTwo!14927 (regTwo!14926 r!13927)))) b!2451969))

(assert (= (and b!2451786 ((_ is Concat!11843) (regTwo!14927 (regTwo!14926 r!13927)))) b!2451970))

(assert (= (and b!2451786 ((_ is Star!7207) (regTwo!14927 (regTwo!14926 r!13927)))) b!2451971))

(assert (= (and b!2451786 ((_ is Union!7207) (regTwo!14927 (regTwo!14926 r!13927)))) b!2451972))

(declare-fun b!2451976 () Bool)

(declare-fun e!1556219 () Bool)

(declare-fun tp!779815 () Bool)

(declare-fun tp!779814 () Bool)

(assert (=> b!2451976 (= e!1556219 (and tp!779815 tp!779814))))

(declare-fun b!2451975 () Bool)

(declare-fun tp!779813 () Bool)

(assert (=> b!2451975 (= e!1556219 tp!779813)))

(assert (=> b!2451794 (= tp!779800 e!1556219)))

(declare-fun b!2451973 () Bool)

(assert (=> b!2451973 (= e!1556219 tp_is_empty!11827)))

(declare-fun b!2451974 () Bool)

(declare-fun tp!779816 () Bool)

(declare-fun tp!779812 () Bool)

(assert (=> b!2451974 (= e!1556219 (and tp!779816 tp!779812))))

(assert (= (and b!2451794 ((_ is ElementMatch!7207) (regOne!14927 (regTwo!14927 r!13927)))) b!2451973))

(assert (= (and b!2451794 ((_ is Concat!11843) (regOne!14927 (regTwo!14927 r!13927)))) b!2451974))

(assert (= (and b!2451794 ((_ is Star!7207) (regOne!14927 (regTwo!14927 r!13927)))) b!2451975))

(assert (= (and b!2451794 ((_ is Union!7207) (regOne!14927 (regTwo!14927 r!13927)))) b!2451976))

(declare-fun b!2451980 () Bool)

(declare-fun e!1556220 () Bool)

(declare-fun tp!779820 () Bool)

(declare-fun tp!779819 () Bool)

(assert (=> b!2451980 (= e!1556220 (and tp!779820 tp!779819))))

(declare-fun b!2451979 () Bool)

(declare-fun tp!779818 () Bool)

(assert (=> b!2451979 (= e!1556220 tp!779818)))

(assert (=> b!2451794 (= tp!779799 e!1556220)))

(declare-fun b!2451977 () Bool)

(assert (=> b!2451977 (= e!1556220 tp_is_empty!11827)))

(declare-fun b!2451978 () Bool)

(declare-fun tp!779821 () Bool)

(declare-fun tp!779817 () Bool)

(assert (=> b!2451978 (= e!1556220 (and tp!779821 tp!779817))))

(assert (= (and b!2451794 ((_ is ElementMatch!7207) (regTwo!14927 (regTwo!14927 r!13927)))) b!2451977))

(assert (= (and b!2451794 ((_ is Concat!11843) (regTwo!14927 (regTwo!14927 r!13927)))) b!2451978))

(assert (= (and b!2451794 ((_ is Star!7207) (regTwo!14927 (regTwo!14927 r!13927)))) b!2451979))

(assert (= (and b!2451794 ((_ is Union!7207) (regTwo!14927 (regTwo!14927 r!13927)))) b!2451980))

(declare-fun b!2451984 () Bool)

(declare-fun e!1556221 () Bool)

(declare-fun tp!779825 () Bool)

(declare-fun tp!779824 () Bool)

(assert (=> b!2451984 (= e!1556221 (and tp!779825 tp!779824))))

(declare-fun b!2451983 () Bool)

(declare-fun tp!779823 () Bool)

(assert (=> b!2451983 (= e!1556221 tp!779823)))

(assert (=> b!2451785 (= tp!779788 e!1556221)))

(declare-fun b!2451981 () Bool)

(assert (=> b!2451981 (= e!1556221 tp_is_empty!11827)))

(declare-fun b!2451982 () Bool)

(declare-fun tp!779826 () Bool)

(declare-fun tp!779822 () Bool)

(assert (=> b!2451982 (= e!1556221 (and tp!779826 tp!779822))))

(assert (= (and b!2451785 ((_ is ElementMatch!7207) (reg!7536 (regTwo!14926 r!13927)))) b!2451981))

(assert (= (and b!2451785 ((_ is Concat!11843) (reg!7536 (regTwo!14926 r!13927)))) b!2451982))

(assert (= (and b!2451785 ((_ is Star!7207) (reg!7536 (regTwo!14926 r!13927)))) b!2451983))

(assert (= (and b!2451785 ((_ is Union!7207) (reg!7536 (regTwo!14926 r!13927)))) b!2451984))

(declare-fun b!2451988 () Bool)

(declare-fun e!1556222 () Bool)

(declare-fun tp!779830 () Bool)

(declare-fun tp!779829 () Bool)

(assert (=> b!2451988 (= e!1556222 (and tp!779830 tp!779829))))

(declare-fun b!2451987 () Bool)

(declare-fun tp!779828 () Bool)

(assert (=> b!2451987 (= e!1556222 tp!779828)))

(assert (=> b!2451790 (= tp!779795 e!1556222)))

(declare-fun b!2451985 () Bool)

(assert (=> b!2451985 (= e!1556222 tp_is_empty!11827)))

(declare-fun b!2451986 () Bool)

(declare-fun tp!779831 () Bool)

(declare-fun tp!779827 () Bool)

(assert (=> b!2451986 (= e!1556222 (and tp!779831 tp!779827))))

(assert (= (and b!2451790 ((_ is ElementMatch!7207) (regOne!14927 (regOne!14927 r!13927)))) b!2451985))

(assert (= (and b!2451790 ((_ is Concat!11843) (regOne!14927 (regOne!14927 r!13927)))) b!2451986))

(assert (= (and b!2451790 ((_ is Star!7207) (regOne!14927 (regOne!14927 r!13927)))) b!2451987))

(assert (= (and b!2451790 ((_ is Union!7207) (regOne!14927 (regOne!14927 r!13927)))) b!2451988))

(declare-fun b!2451992 () Bool)

(declare-fun e!1556223 () Bool)

(declare-fun tp!779835 () Bool)

(declare-fun tp!779834 () Bool)

(assert (=> b!2451992 (= e!1556223 (and tp!779835 tp!779834))))

(declare-fun b!2451991 () Bool)

(declare-fun tp!779833 () Bool)

(assert (=> b!2451991 (= e!1556223 tp!779833)))

(assert (=> b!2451790 (= tp!779794 e!1556223)))

(declare-fun b!2451989 () Bool)

(assert (=> b!2451989 (= e!1556223 tp_is_empty!11827)))

(declare-fun b!2451990 () Bool)

(declare-fun tp!779836 () Bool)

(declare-fun tp!779832 () Bool)

(assert (=> b!2451990 (= e!1556223 (and tp!779836 tp!779832))))

(assert (= (and b!2451790 ((_ is ElementMatch!7207) (regTwo!14927 (regOne!14927 r!13927)))) b!2451989))

(assert (= (and b!2451790 ((_ is Concat!11843) (regTwo!14927 (regOne!14927 r!13927)))) b!2451990))

(assert (= (and b!2451790 ((_ is Star!7207) (regTwo!14927 (regOne!14927 r!13927)))) b!2451991))

(assert (= (and b!2451790 ((_ is Union!7207) (regTwo!14927 (regOne!14927 r!13927)))) b!2451992))

(declare-fun b!2451996 () Bool)

(declare-fun e!1556224 () Bool)

(declare-fun tp!779840 () Bool)

(declare-fun tp!779839 () Bool)

(assert (=> b!2451996 (= e!1556224 (and tp!779840 tp!779839))))

(declare-fun b!2451995 () Bool)

(declare-fun tp!779838 () Bool)

(assert (=> b!2451995 (= e!1556224 tp!779838)))

(assert (=> b!2451788 (= tp!779796 e!1556224)))

(declare-fun b!2451993 () Bool)

(assert (=> b!2451993 (= e!1556224 tp_is_empty!11827)))

(declare-fun b!2451994 () Bool)

(declare-fun tp!779841 () Bool)

(declare-fun tp!779837 () Bool)

(assert (=> b!2451994 (= e!1556224 (and tp!779841 tp!779837))))

(assert (= (and b!2451788 ((_ is ElementMatch!7207) (regOne!14926 (regOne!14927 r!13927)))) b!2451993))

(assert (= (and b!2451788 ((_ is Concat!11843) (regOne!14926 (regOne!14927 r!13927)))) b!2451994))

(assert (= (and b!2451788 ((_ is Star!7207) (regOne!14926 (regOne!14927 r!13927)))) b!2451995))

(assert (= (and b!2451788 ((_ is Union!7207) (regOne!14926 (regOne!14927 r!13927)))) b!2451996))

(declare-fun b!2452000 () Bool)

(declare-fun e!1556225 () Bool)

(declare-fun tp!779845 () Bool)

(declare-fun tp!779844 () Bool)

(assert (=> b!2452000 (= e!1556225 (and tp!779845 tp!779844))))

(declare-fun b!2451999 () Bool)

(declare-fun tp!779843 () Bool)

(assert (=> b!2451999 (= e!1556225 tp!779843)))

(assert (=> b!2451788 (= tp!779792 e!1556225)))

(declare-fun b!2451997 () Bool)

(assert (=> b!2451997 (= e!1556225 tp_is_empty!11827)))

(declare-fun b!2451998 () Bool)

(declare-fun tp!779846 () Bool)

(declare-fun tp!779842 () Bool)

(assert (=> b!2451998 (= e!1556225 (and tp!779846 tp!779842))))

(assert (= (and b!2451788 ((_ is ElementMatch!7207) (regTwo!14926 (regOne!14927 r!13927)))) b!2451997))

(assert (= (and b!2451788 ((_ is Concat!11843) (regTwo!14926 (regOne!14927 r!13927)))) b!2451998))

(assert (= (and b!2451788 ((_ is Star!7207) (regTwo!14926 (regOne!14927 r!13927)))) b!2451999))

(assert (= (and b!2451788 ((_ is Union!7207) (regTwo!14926 (regOne!14927 r!13927)))) b!2452000))

(declare-fun b!2452004 () Bool)

(declare-fun e!1556226 () Bool)

(declare-fun tp!779850 () Bool)

(declare-fun tp!779849 () Bool)

(assert (=> b!2452004 (= e!1556226 (and tp!779850 tp!779849))))

(declare-fun b!2452003 () Bool)

(declare-fun tp!779848 () Bool)

(assert (=> b!2452003 (= e!1556226 tp!779848)))

(assert (=> b!2451793 (= tp!779798 e!1556226)))

(declare-fun b!2452001 () Bool)

(assert (=> b!2452001 (= e!1556226 tp_is_empty!11827)))

(declare-fun b!2452002 () Bool)

(declare-fun tp!779851 () Bool)

(declare-fun tp!779847 () Bool)

(assert (=> b!2452002 (= e!1556226 (and tp!779851 tp!779847))))

(assert (= (and b!2451793 ((_ is ElementMatch!7207) (reg!7536 (regTwo!14927 r!13927)))) b!2452001))

(assert (= (and b!2451793 ((_ is Concat!11843) (reg!7536 (regTwo!14927 r!13927)))) b!2452002))

(assert (= (and b!2451793 ((_ is Star!7207) (reg!7536 (regTwo!14927 r!13927)))) b!2452003))

(assert (= (and b!2451793 ((_ is Union!7207) (reg!7536 (regTwo!14927 r!13927)))) b!2452004))

(declare-fun b!2452008 () Bool)

(declare-fun e!1556227 () Bool)

(declare-fun tp!779855 () Bool)

(declare-fun tp!779854 () Bool)

(assert (=> b!2452008 (= e!1556227 (and tp!779855 tp!779854))))

(declare-fun b!2452007 () Bool)

(declare-fun tp!779853 () Bool)

(assert (=> b!2452007 (= e!1556227 tp!779853)))

(assert (=> b!2451784 (= tp!779791 e!1556227)))

(declare-fun b!2452005 () Bool)

(assert (=> b!2452005 (= e!1556227 tp_is_empty!11827)))

(declare-fun b!2452006 () Bool)

(declare-fun tp!779856 () Bool)

(declare-fun tp!779852 () Bool)

(assert (=> b!2452006 (= e!1556227 (and tp!779856 tp!779852))))

(assert (= (and b!2451784 ((_ is ElementMatch!7207) (regOne!14926 (regTwo!14926 r!13927)))) b!2452005))

(assert (= (and b!2451784 ((_ is Concat!11843) (regOne!14926 (regTwo!14926 r!13927)))) b!2452006))

(assert (= (and b!2451784 ((_ is Star!7207) (regOne!14926 (regTwo!14926 r!13927)))) b!2452007))

(assert (= (and b!2451784 ((_ is Union!7207) (regOne!14926 (regTwo!14926 r!13927)))) b!2452008))

(declare-fun b!2452012 () Bool)

(declare-fun e!1556228 () Bool)

(declare-fun tp!779860 () Bool)

(declare-fun tp!779859 () Bool)

(assert (=> b!2452012 (= e!1556228 (and tp!779860 tp!779859))))

(declare-fun b!2452011 () Bool)

(declare-fun tp!779858 () Bool)

(assert (=> b!2452011 (= e!1556228 tp!779858)))

(assert (=> b!2451784 (= tp!779787 e!1556228)))

(declare-fun b!2452009 () Bool)

(assert (=> b!2452009 (= e!1556228 tp_is_empty!11827)))

(declare-fun b!2452010 () Bool)

(declare-fun tp!779861 () Bool)

(declare-fun tp!779857 () Bool)

(assert (=> b!2452010 (= e!1556228 (and tp!779861 tp!779857))))

(assert (= (and b!2451784 ((_ is ElementMatch!7207) (regTwo!14926 (regTwo!14926 r!13927)))) b!2452009))

(assert (= (and b!2451784 ((_ is Concat!11843) (regTwo!14926 (regTwo!14926 r!13927)))) b!2452010))

(assert (= (and b!2451784 ((_ is Star!7207) (regTwo!14926 (regTwo!14926 r!13927)))) b!2452011))

(assert (= (and b!2451784 ((_ is Union!7207) (regTwo!14926 (regTwo!14926 r!13927)))) b!2452012))

(declare-fun b!2452016 () Bool)

(declare-fun e!1556229 () Bool)

(declare-fun tp!779865 () Bool)

(declare-fun tp!779864 () Bool)

(assert (=> b!2452016 (= e!1556229 (and tp!779865 tp!779864))))

(declare-fun b!2452015 () Bool)

(declare-fun tp!779863 () Bool)

(assert (=> b!2452015 (= e!1556229 tp!779863)))

(assert (=> b!2451789 (= tp!779793 e!1556229)))

(declare-fun b!2452013 () Bool)

(assert (=> b!2452013 (= e!1556229 tp_is_empty!11827)))

(declare-fun b!2452014 () Bool)

(declare-fun tp!779866 () Bool)

(declare-fun tp!779862 () Bool)

(assert (=> b!2452014 (= e!1556229 (and tp!779866 tp!779862))))

(assert (= (and b!2451789 ((_ is ElementMatch!7207) (reg!7536 (regOne!14927 r!13927)))) b!2452013))

(assert (= (and b!2451789 ((_ is Concat!11843) (reg!7536 (regOne!14927 r!13927)))) b!2452014))

(assert (= (and b!2451789 ((_ is Star!7207) (reg!7536 (regOne!14927 r!13927)))) b!2452015))

(assert (= (and b!2451789 ((_ is Union!7207) (reg!7536 (regOne!14927 r!13927)))) b!2452016))

(declare-fun b!2452020 () Bool)

(declare-fun e!1556230 () Bool)

(declare-fun tp!779870 () Bool)

(declare-fun tp!779869 () Bool)

(assert (=> b!2452020 (= e!1556230 (and tp!779870 tp!779869))))

(declare-fun b!2452019 () Bool)

(declare-fun tp!779868 () Bool)

(assert (=> b!2452019 (= e!1556230 tp!779868)))

(assert (=> b!2451748 (= tp!779746 e!1556230)))

(declare-fun b!2452017 () Bool)

(assert (=> b!2452017 (= e!1556230 tp_is_empty!11827)))

(declare-fun b!2452018 () Bool)

(declare-fun tp!779871 () Bool)

(declare-fun tp!779867 () Bool)

(assert (=> b!2452018 (= e!1556230 (and tp!779871 tp!779867))))

(assert (= (and b!2451748 ((_ is ElementMatch!7207) (regOne!14927 (h!33954 l!9164)))) b!2452017))

(assert (= (and b!2451748 ((_ is Concat!11843) (regOne!14927 (h!33954 l!9164)))) b!2452018))

(assert (= (and b!2451748 ((_ is Star!7207) (regOne!14927 (h!33954 l!9164)))) b!2452019))

(assert (= (and b!2451748 ((_ is Union!7207) (regOne!14927 (h!33954 l!9164)))) b!2452020))

(declare-fun b!2452024 () Bool)

(declare-fun e!1556233 () Bool)

(declare-fun tp!779875 () Bool)

(declare-fun tp!779874 () Bool)

(assert (=> b!2452024 (= e!1556233 (and tp!779875 tp!779874))))

(declare-fun b!2452023 () Bool)

(declare-fun tp!779873 () Bool)

(assert (=> b!2452023 (= e!1556233 tp!779873)))

(assert (=> b!2451748 (= tp!779745 e!1556233)))

(declare-fun b!2452021 () Bool)

(assert (=> b!2452021 (= e!1556233 tp_is_empty!11827)))

(declare-fun b!2452022 () Bool)

(declare-fun tp!779876 () Bool)

(declare-fun tp!779872 () Bool)

(assert (=> b!2452022 (= e!1556233 (and tp!779876 tp!779872))))

(assert (= (and b!2451748 ((_ is ElementMatch!7207) (regTwo!14927 (h!33954 l!9164)))) b!2452021))

(assert (= (and b!2451748 ((_ is Concat!11843) (regTwo!14927 (h!33954 l!9164)))) b!2452022))

(assert (= (and b!2451748 ((_ is Star!7207) (regTwo!14927 (h!33954 l!9164)))) b!2452023))

(assert (= (and b!2451748 ((_ is Union!7207) (regTwo!14927 (h!33954 l!9164)))) b!2452024))

(declare-fun b!2452037 () Bool)

(declare-fun e!1556239 () Bool)

(declare-fun tp!779880 () Bool)

(declare-fun tp!779879 () Bool)

(assert (=> b!2452037 (= e!1556239 (and tp!779880 tp!779879))))

(declare-fun b!2452036 () Bool)

(declare-fun tp!779878 () Bool)

(assert (=> b!2452036 (= e!1556239 tp!779878)))

(assert (=> b!2451792 (= tp!779801 e!1556239)))

(declare-fun b!2452034 () Bool)

(assert (=> b!2452034 (= e!1556239 tp_is_empty!11827)))

(declare-fun b!2452035 () Bool)

(declare-fun tp!779881 () Bool)

(declare-fun tp!779877 () Bool)

(assert (=> b!2452035 (= e!1556239 (and tp!779881 tp!779877))))

(assert (= (and b!2451792 ((_ is ElementMatch!7207) (regOne!14926 (regTwo!14927 r!13927)))) b!2452034))

(assert (= (and b!2451792 ((_ is Concat!11843) (regOne!14926 (regTwo!14927 r!13927)))) b!2452035))

(assert (= (and b!2451792 ((_ is Star!7207) (regOne!14926 (regTwo!14927 r!13927)))) b!2452036))

(assert (= (and b!2451792 ((_ is Union!7207) (regOne!14926 (regTwo!14927 r!13927)))) b!2452037))

(declare-fun b!2452041 () Bool)

(declare-fun e!1556240 () Bool)

(declare-fun tp!779885 () Bool)

(declare-fun tp!779884 () Bool)

(assert (=> b!2452041 (= e!1556240 (and tp!779885 tp!779884))))

(declare-fun b!2452040 () Bool)

(declare-fun tp!779883 () Bool)

(assert (=> b!2452040 (= e!1556240 tp!779883)))

(assert (=> b!2451792 (= tp!779797 e!1556240)))

(declare-fun b!2452038 () Bool)

(assert (=> b!2452038 (= e!1556240 tp_is_empty!11827)))

(declare-fun b!2452039 () Bool)

(declare-fun tp!779886 () Bool)

(declare-fun tp!779882 () Bool)

(assert (=> b!2452039 (= e!1556240 (and tp!779886 tp!779882))))

(assert (= (and b!2451792 ((_ is ElementMatch!7207) (regTwo!14926 (regTwo!14927 r!13927)))) b!2452038))

(assert (= (and b!2451792 ((_ is Concat!11843) (regTwo!14926 (regTwo!14927 r!13927)))) b!2452039))

(assert (= (and b!2451792 ((_ is Star!7207) (regTwo!14926 (regTwo!14927 r!13927)))) b!2452040))

(assert (= (and b!2451792 ((_ is Union!7207) (regTwo!14926 (regTwo!14927 r!13927)))) b!2452041))

(declare-fun b!2452045 () Bool)

(declare-fun e!1556241 () Bool)

(declare-fun tp!779890 () Bool)

(declare-fun tp!779889 () Bool)

(assert (=> b!2452045 (= e!1556241 (and tp!779890 tp!779889))))

(declare-fun b!2452044 () Bool)

(declare-fun tp!779888 () Bool)

(assert (=> b!2452044 (= e!1556241 tp!779888)))

(assert (=> b!2451746 (= tp!779747 e!1556241)))

(declare-fun b!2452042 () Bool)

(assert (=> b!2452042 (= e!1556241 tp_is_empty!11827)))

(declare-fun b!2452043 () Bool)

(declare-fun tp!779891 () Bool)

(declare-fun tp!779887 () Bool)

(assert (=> b!2452043 (= e!1556241 (and tp!779891 tp!779887))))

(assert (= (and b!2451746 ((_ is ElementMatch!7207) (regOne!14926 (h!33954 l!9164)))) b!2452042))

(assert (= (and b!2451746 ((_ is Concat!11843) (regOne!14926 (h!33954 l!9164)))) b!2452043))

(assert (= (and b!2451746 ((_ is Star!7207) (regOne!14926 (h!33954 l!9164)))) b!2452044))

(assert (= (and b!2451746 ((_ is Union!7207) (regOne!14926 (h!33954 l!9164)))) b!2452045))

(declare-fun b!2452049 () Bool)

(declare-fun e!1556242 () Bool)

(declare-fun tp!779895 () Bool)

(declare-fun tp!779894 () Bool)

(assert (=> b!2452049 (= e!1556242 (and tp!779895 tp!779894))))

(declare-fun b!2452048 () Bool)

(declare-fun tp!779893 () Bool)

(assert (=> b!2452048 (= e!1556242 tp!779893)))

(assert (=> b!2451746 (= tp!779743 e!1556242)))

(declare-fun b!2452046 () Bool)

(assert (=> b!2452046 (= e!1556242 tp_is_empty!11827)))

(declare-fun b!2452047 () Bool)

(declare-fun tp!779896 () Bool)

(declare-fun tp!779892 () Bool)

(assert (=> b!2452047 (= e!1556242 (and tp!779896 tp!779892))))

(assert (= (and b!2451746 ((_ is ElementMatch!7207) (regTwo!14926 (h!33954 l!9164)))) b!2452046))

(assert (= (and b!2451746 ((_ is Concat!11843) (regTwo!14926 (h!33954 l!9164)))) b!2452047))

(assert (= (and b!2451746 ((_ is Star!7207) (regTwo!14926 (h!33954 l!9164)))) b!2452048))

(assert (= (and b!2451746 ((_ is Union!7207) (regTwo!14926 (h!33954 l!9164)))) b!2452049))

(declare-fun b!2452053 () Bool)

(declare-fun e!1556243 () Bool)

(declare-fun tp!779900 () Bool)

(declare-fun tp!779899 () Bool)

(assert (=> b!2452053 (= e!1556243 (and tp!779900 tp!779899))))

(declare-fun b!2452052 () Bool)

(declare-fun tp!779898 () Bool)

(assert (=> b!2452052 (= e!1556243 tp!779898)))

(assert (=> b!2451747 (= tp!779744 e!1556243)))

(declare-fun b!2452050 () Bool)

(assert (=> b!2452050 (= e!1556243 tp_is_empty!11827)))

(declare-fun b!2452051 () Bool)

(declare-fun tp!779901 () Bool)

(declare-fun tp!779897 () Bool)

(assert (=> b!2452051 (= e!1556243 (and tp!779901 tp!779897))))

(assert (= (and b!2451747 ((_ is ElementMatch!7207) (reg!7536 (h!33954 l!9164)))) b!2452050))

(assert (= (and b!2451747 ((_ is Concat!11843) (reg!7536 (h!33954 l!9164)))) b!2452051))

(assert (= (and b!2451747 ((_ is Star!7207) (reg!7536 (h!33954 l!9164)))) b!2452052))

(assert (= (and b!2451747 ((_ is Union!7207) (reg!7536 (h!33954 l!9164)))) b!2452053))

(declare-fun b!2452057 () Bool)

(declare-fun e!1556244 () Bool)

(declare-fun tp!779905 () Bool)

(declare-fun tp!779904 () Bool)

(assert (=> b!2452057 (= e!1556244 (and tp!779905 tp!779904))))

(declare-fun b!2452056 () Bool)

(declare-fun tp!779903 () Bool)

(assert (=> b!2452056 (= e!1556244 tp!779903)))

(assert (=> b!2451743 (= tp!779739 e!1556244)))

(declare-fun b!2452054 () Bool)

(assert (=> b!2452054 (= e!1556244 tp_is_empty!11827)))

(declare-fun b!2452055 () Bool)

(declare-fun tp!779906 () Bool)

(declare-fun tp!779902 () Bool)

(assert (=> b!2452055 (= e!1556244 (and tp!779906 tp!779902))))

(assert (= (and b!2451743 ((_ is ElementMatch!7207) (regOne!14927 (reg!7536 r!13927)))) b!2452054))

(assert (= (and b!2451743 ((_ is Concat!11843) (regOne!14927 (reg!7536 r!13927)))) b!2452055))

(assert (= (and b!2451743 ((_ is Star!7207) (regOne!14927 (reg!7536 r!13927)))) b!2452056))

(assert (= (and b!2451743 ((_ is Union!7207) (regOne!14927 (reg!7536 r!13927)))) b!2452057))

(declare-fun b!2452061 () Bool)

(declare-fun e!1556245 () Bool)

(declare-fun tp!779910 () Bool)

(declare-fun tp!779909 () Bool)

(assert (=> b!2452061 (= e!1556245 (and tp!779910 tp!779909))))

(declare-fun b!2452060 () Bool)

(declare-fun tp!779908 () Bool)

(assert (=> b!2452060 (= e!1556245 tp!779908)))

(assert (=> b!2451743 (= tp!779738 e!1556245)))

(declare-fun b!2452058 () Bool)

(assert (=> b!2452058 (= e!1556245 tp_is_empty!11827)))

(declare-fun b!2452059 () Bool)

(declare-fun tp!779911 () Bool)

(declare-fun tp!779907 () Bool)

(assert (=> b!2452059 (= e!1556245 (and tp!779911 tp!779907))))

(assert (= (and b!2451743 ((_ is ElementMatch!7207) (regTwo!14927 (reg!7536 r!13927)))) b!2452058))

(assert (= (and b!2451743 ((_ is Concat!11843) (regTwo!14927 (reg!7536 r!13927)))) b!2452059))

(assert (= (and b!2451743 ((_ is Star!7207) (regTwo!14927 (reg!7536 r!13927)))) b!2452060))

(assert (= (and b!2451743 ((_ is Union!7207) (regTwo!14927 (reg!7536 r!13927)))) b!2452061))

(declare-fun b!2452065 () Bool)

(declare-fun e!1556246 () Bool)

(declare-fun tp!779915 () Bool)

(declare-fun tp!779914 () Bool)

(assert (=> b!2452065 (= e!1556246 (and tp!779915 tp!779914))))

(declare-fun b!2452064 () Bool)

(declare-fun tp!779913 () Bool)

(assert (=> b!2452064 (= e!1556246 tp!779913)))

(assert (=> b!2451782 (= tp!779785 e!1556246)))

(declare-fun b!2452062 () Bool)

(assert (=> b!2452062 (= e!1556246 tp_is_empty!11827)))

(declare-fun b!2452063 () Bool)

(declare-fun tp!779916 () Bool)

(declare-fun tp!779912 () Bool)

(assert (=> b!2452063 (= e!1556246 (and tp!779916 tp!779912))))

(assert (= (and b!2451782 ((_ is ElementMatch!7207) (regOne!14927 (regOne!14926 r!13927)))) b!2452062))

(assert (= (and b!2451782 ((_ is Concat!11843) (regOne!14927 (regOne!14926 r!13927)))) b!2452063))

(assert (= (and b!2451782 ((_ is Star!7207) (regOne!14927 (regOne!14926 r!13927)))) b!2452064))

(assert (= (and b!2451782 ((_ is Union!7207) (regOne!14927 (regOne!14926 r!13927)))) b!2452065))

(declare-fun b!2452069 () Bool)

(declare-fun e!1556247 () Bool)

(declare-fun tp!779920 () Bool)

(declare-fun tp!779919 () Bool)

(assert (=> b!2452069 (= e!1556247 (and tp!779920 tp!779919))))

(declare-fun b!2452068 () Bool)

(declare-fun tp!779918 () Bool)

(assert (=> b!2452068 (= e!1556247 tp!779918)))

(assert (=> b!2451782 (= tp!779784 e!1556247)))

(declare-fun b!2452066 () Bool)

(assert (=> b!2452066 (= e!1556247 tp_is_empty!11827)))

(declare-fun b!2452067 () Bool)

(declare-fun tp!779921 () Bool)

(declare-fun tp!779917 () Bool)

(assert (=> b!2452067 (= e!1556247 (and tp!779921 tp!779917))))

(assert (= (and b!2451782 ((_ is ElementMatch!7207) (regTwo!14927 (regOne!14926 r!13927)))) b!2452066))

(assert (= (and b!2451782 ((_ is Concat!11843) (regTwo!14927 (regOne!14926 r!13927)))) b!2452067))

(assert (= (and b!2451782 ((_ is Star!7207) (regTwo!14927 (regOne!14926 r!13927)))) b!2452068))

(assert (= (and b!2451782 ((_ is Union!7207) (regTwo!14927 (regOne!14926 r!13927)))) b!2452069))

(declare-fun b!2452070 () Bool)

(declare-fun e!1556248 () Bool)

(declare-fun tp!779922 () Bool)

(assert (=> b!2452070 (= e!1556248 (and tp_is_empty!11827 tp!779922))))

(assert (=> b!2451778 (= tp!779781 e!1556248)))

(assert (= (and b!2451778 ((_ is Cons!28552) (t!208627 (t!208627 s!9460)))) b!2452070))

(declare-fun b!2452074 () Bool)

(declare-fun e!1556249 () Bool)

(declare-fun tp!779926 () Bool)

(declare-fun tp!779925 () Bool)

(assert (=> b!2452074 (= e!1556249 (and tp!779926 tp!779925))))

(declare-fun b!2452073 () Bool)

(declare-fun tp!779924 () Bool)

(assert (=> b!2452073 (= e!1556249 tp!779924)))

(assert (=> b!2451742 (= tp!779737 e!1556249)))

(declare-fun b!2452071 () Bool)

(assert (=> b!2452071 (= e!1556249 tp_is_empty!11827)))

(declare-fun b!2452072 () Bool)

(declare-fun tp!779927 () Bool)

(declare-fun tp!779923 () Bool)

(assert (=> b!2452072 (= e!1556249 (and tp!779927 tp!779923))))

(assert (= (and b!2451742 ((_ is ElementMatch!7207) (reg!7536 (reg!7536 r!13927)))) b!2452071))

(assert (= (and b!2451742 ((_ is Concat!11843) (reg!7536 (reg!7536 r!13927)))) b!2452072))

(assert (= (and b!2451742 ((_ is Star!7207) (reg!7536 (reg!7536 r!13927)))) b!2452073))

(assert (= (and b!2451742 ((_ is Union!7207) (reg!7536 (reg!7536 r!13927)))) b!2452074))

(declare-fun b!2452078 () Bool)

(declare-fun e!1556250 () Bool)

(declare-fun tp!779931 () Bool)

(declare-fun tp!779930 () Bool)

(assert (=> b!2452078 (= e!1556250 (and tp!779931 tp!779930))))

(declare-fun b!2452077 () Bool)

(declare-fun tp!779929 () Bool)

(assert (=> b!2452077 (= e!1556250 tp!779929)))

(assert (=> b!2451781 (= tp!779783 e!1556250)))

(declare-fun b!2452075 () Bool)

(assert (=> b!2452075 (= e!1556250 tp_is_empty!11827)))

(declare-fun b!2452076 () Bool)

(declare-fun tp!779932 () Bool)

(declare-fun tp!779928 () Bool)

(assert (=> b!2452076 (= e!1556250 (and tp!779932 tp!779928))))

(assert (= (and b!2451781 ((_ is ElementMatch!7207) (reg!7536 (regOne!14926 r!13927)))) b!2452075))

(assert (= (and b!2451781 ((_ is Concat!11843) (reg!7536 (regOne!14926 r!13927)))) b!2452076))

(assert (= (and b!2451781 ((_ is Star!7207) (reg!7536 (regOne!14926 r!13927)))) b!2452077))

(assert (= (and b!2451781 ((_ is Union!7207) (reg!7536 (regOne!14926 r!13927)))) b!2452078))

(declare-fun b!2452082 () Bool)

(declare-fun e!1556251 () Bool)

(declare-fun tp!779936 () Bool)

(declare-fun tp!779935 () Bool)

(assert (=> b!2452082 (= e!1556251 (and tp!779936 tp!779935))))

(declare-fun b!2452081 () Bool)

(declare-fun tp!779934 () Bool)

(assert (=> b!2452081 (= e!1556251 tp!779934)))

(assert (=> b!2451765 (= tp!779767 e!1556251)))

(declare-fun b!2452079 () Bool)

(assert (=> b!2452079 (= e!1556251 tp_is_empty!11827)))

(declare-fun b!2452080 () Bool)

(declare-fun tp!779937 () Bool)

(declare-fun tp!779933 () Bool)

(assert (=> b!2452080 (= e!1556251 (and tp!779937 tp!779933))))

(assert (= (and b!2451765 ((_ is ElementMatch!7207) (h!33954 (t!208628 l!9164)))) b!2452079))

(assert (= (and b!2451765 ((_ is Concat!11843) (h!33954 (t!208628 l!9164)))) b!2452080))

(assert (= (and b!2451765 ((_ is Star!7207) (h!33954 (t!208628 l!9164)))) b!2452081))

(assert (= (and b!2451765 ((_ is Union!7207) (h!33954 (t!208628 l!9164)))) b!2452082))

(declare-fun b!2452083 () Bool)

(declare-fun e!1556252 () Bool)

(declare-fun tp!779938 () Bool)

(declare-fun tp!779939 () Bool)

(assert (=> b!2452083 (= e!1556252 (and tp!779938 tp!779939))))

(assert (=> b!2451765 (= tp!779768 e!1556252)))

(assert (= (and b!2451765 ((_ is Cons!28553) (t!208628 (t!208628 l!9164)))) b!2452083))

(declare-fun b!2452087 () Bool)

(declare-fun e!1556253 () Bool)

(declare-fun tp!779943 () Bool)

(declare-fun tp!779942 () Bool)

(assert (=> b!2452087 (= e!1556253 (and tp!779943 tp!779942))))

(declare-fun b!2452086 () Bool)

(declare-fun tp!779941 () Bool)

(assert (=> b!2452086 (= e!1556253 tp!779941)))

(assert (=> b!2451741 (= tp!779740 e!1556253)))

(declare-fun b!2452084 () Bool)

(assert (=> b!2452084 (= e!1556253 tp_is_empty!11827)))

(declare-fun b!2452085 () Bool)

(declare-fun tp!779944 () Bool)

(declare-fun tp!779940 () Bool)

(assert (=> b!2452085 (= e!1556253 (and tp!779944 tp!779940))))

(assert (= (and b!2451741 ((_ is ElementMatch!7207) (regOne!14926 (reg!7536 r!13927)))) b!2452084))

(assert (= (and b!2451741 ((_ is Concat!11843) (regOne!14926 (reg!7536 r!13927)))) b!2452085))

(assert (= (and b!2451741 ((_ is Star!7207) (regOne!14926 (reg!7536 r!13927)))) b!2452086))

(assert (= (and b!2451741 ((_ is Union!7207) (regOne!14926 (reg!7536 r!13927)))) b!2452087))

(declare-fun b!2452091 () Bool)

(declare-fun e!1556254 () Bool)

(declare-fun tp!779948 () Bool)

(declare-fun tp!779947 () Bool)

(assert (=> b!2452091 (= e!1556254 (and tp!779948 tp!779947))))

(declare-fun b!2452090 () Bool)

(declare-fun tp!779946 () Bool)

(assert (=> b!2452090 (= e!1556254 tp!779946)))

(assert (=> b!2451741 (= tp!779736 e!1556254)))

(declare-fun b!2452088 () Bool)

(assert (=> b!2452088 (= e!1556254 tp_is_empty!11827)))

(declare-fun b!2452089 () Bool)

(declare-fun tp!779949 () Bool)

(declare-fun tp!779945 () Bool)

(assert (=> b!2452089 (= e!1556254 (and tp!779949 tp!779945))))

(assert (= (and b!2451741 ((_ is ElementMatch!7207) (regTwo!14926 (reg!7536 r!13927)))) b!2452088))

(assert (= (and b!2451741 ((_ is Concat!11843) (regTwo!14926 (reg!7536 r!13927)))) b!2452089))

(assert (= (and b!2451741 ((_ is Star!7207) (regTwo!14926 (reg!7536 r!13927)))) b!2452090))

(assert (= (and b!2451741 ((_ is Union!7207) (regTwo!14926 (reg!7536 r!13927)))) b!2452091))

(declare-fun b!2452095 () Bool)

(declare-fun e!1556255 () Bool)

(declare-fun tp!779953 () Bool)

(declare-fun tp!779952 () Bool)

(assert (=> b!2452095 (= e!1556255 (and tp!779953 tp!779952))))

(declare-fun b!2452094 () Bool)

(declare-fun tp!779951 () Bool)

(assert (=> b!2452094 (= e!1556255 tp!779951)))

(assert (=> b!2451780 (= tp!779786 e!1556255)))

(declare-fun b!2452092 () Bool)

(assert (=> b!2452092 (= e!1556255 tp_is_empty!11827)))

(declare-fun b!2452093 () Bool)

(declare-fun tp!779954 () Bool)

(declare-fun tp!779950 () Bool)

(assert (=> b!2452093 (= e!1556255 (and tp!779954 tp!779950))))

(assert (= (and b!2451780 ((_ is ElementMatch!7207) (regOne!14926 (regOne!14926 r!13927)))) b!2452092))

(assert (= (and b!2451780 ((_ is Concat!11843) (regOne!14926 (regOne!14926 r!13927)))) b!2452093))

(assert (= (and b!2451780 ((_ is Star!7207) (regOne!14926 (regOne!14926 r!13927)))) b!2452094))

(assert (= (and b!2451780 ((_ is Union!7207) (regOne!14926 (regOne!14926 r!13927)))) b!2452095))

(declare-fun b!2452099 () Bool)

(declare-fun e!1556256 () Bool)

(declare-fun tp!779958 () Bool)

(declare-fun tp!779957 () Bool)

(assert (=> b!2452099 (= e!1556256 (and tp!779958 tp!779957))))

(declare-fun b!2452098 () Bool)

(declare-fun tp!779956 () Bool)

(assert (=> b!2452098 (= e!1556256 tp!779956)))

(assert (=> b!2451780 (= tp!779782 e!1556256)))

(declare-fun b!2452096 () Bool)

(assert (=> b!2452096 (= e!1556256 tp_is_empty!11827)))

(declare-fun b!2452097 () Bool)

(declare-fun tp!779959 () Bool)

(declare-fun tp!779955 () Bool)

(assert (=> b!2452097 (= e!1556256 (and tp!779959 tp!779955))))

(assert (= (and b!2451780 ((_ is ElementMatch!7207) (regTwo!14926 (regOne!14926 r!13927)))) b!2452096))

(assert (= (and b!2451780 ((_ is Concat!11843) (regTwo!14926 (regOne!14926 r!13927)))) b!2452097))

(assert (= (and b!2451780 ((_ is Star!7207) (regTwo!14926 (regOne!14926 r!13927)))) b!2452098))

(assert (= (and b!2451780 ((_ is Union!7207) (regTwo!14926 (regOne!14926 r!13927)))) b!2452099))

(declare-fun b_lambda!75101 () Bool)

(assert (= b_lambda!75095 (or start!239318 b_lambda!75101)))

(declare-fun bs!465755 () Bool)

(declare-fun d!706856 () Bool)

(assert (= bs!465755 (and d!706856 start!239318)))

(assert (=> bs!465755 (= (dynLambda!12266 lambda!92849 (h!33954 (t!208628 l!9164))) (validRegex!2901 (h!33954 (t!208628 l!9164))))))

(declare-fun m!2825175 () Bool)

(assert (=> bs!465755 m!2825175))

(assert (=> b!2451898 d!706856))

(declare-fun b_lambda!75103 () Bool)

(assert (= b_lambda!75097 (or d!706708 b_lambda!75103)))

(declare-fun bs!465757 () Bool)

(declare-fun d!706858 () Bool)

(assert (= bs!465757 (and d!706858 d!706708)))

(assert (=> bs!465757 (= (dynLambda!12266 lambda!92852 (h!33954 lt!879781)) (validRegex!2901 (h!33954 lt!879781)))))

(declare-fun m!2825177 () Bool)

(assert (=> bs!465757 m!2825177))

(assert (=> b!2451909 d!706858))

(declare-fun b_lambda!75105 () Bool)

(assert (= b_lambda!75099 (or d!706714 b_lambda!75105)))

(declare-fun bs!465758 () Bool)

(declare-fun d!706862 () Bool)

(assert (= bs!465758 (and d!706862 d!706714)))

(assert (=> bs!465758 (= (dynLambda!12266 lambda!92853 (h!33954 l!9164)) (validRegex!2901 (h!33954 l!9164)))))

(assert (=> bs!465758 m!2825021))

(assert (=> b!2451963 d!706862))

(check-sat (not b!2452041) (not bm!150590) (not b!2451966) (not b!2451980) (not b!2452072) (not b!2452010) (not b!2451910) (not b!2451975) (not b!2451899) (not b!2452090) (not b!2452056) (not b!2452049) (not b!2452098) (not d!706790) (not b!2451833) (not d!706758) (not b!2451861) (not b!2452089) (not b!2451978) (not b!2452015) (not b_lambda!75093) (not d!706828) (not b!2452095) (not b!2452061) (not b!2451983) (not b!2452093) (not b!2451964) (not b!2451835) (not b!2451884) (not b!2452047) (not b!2451941) (not b!2451991) (not b!2452037) (not b!2451883) (not b!2451999) (not b!2452012) (not bm!150584) (not b!2451882) (not b!2451988) (not b!2452067) (not b!2451971) (not d!706832) (not b!2452048) (not bm!150610) (not bm!150612) (not b!2452083) (not b!2451990) (not b!2452039) (not b!2452045) (not b!2452036) (not b!2451912) (not b!2451873) (not b!2452043) (not b!2452085) (not b!2452035) (not b!2451932) (not b!2452099) (not d!706784) (not bm!150621) (not bm!150591) (not b!2451982) (not b!2451979) (not b!2452018) (not b!2451998) (not b!2452052) (not bm!150606) (not b!2452016) (not b!2452060) (not bm!150607) (not b!2452091) (not b!2451829) (not bs!465755) (not bm!150600) (not b!2452019) (not b!2451814) (not b!2452008) (not b!2452065) (not b!2451970) (not b!2451929) (not b!2452082) (not b!2451881) (not b!2452069) (not b!2452064) (not bm!150605) (not b!2452000) (not b!2451924) (not b!2452051) (not b!2452023) (not b!2451949) (not bm!150589) (not b!2452070) (not bm!150583) (not d!706778) (not bm!150602) (not b!2452077) (not b!2451992) (not b!2451987) (not b!2452006) (not d!706822) (not b!2452081) (not b!2451984) (not b!2451922) (not b!2452007) (not b!2452011) (not bm!150604) (not b!2452053) (not b!2452055) (not b!2452094) (not bm!150609) (not b!2452076) (not bm!150617) (not bm!150587) (not b!2451976) (not b!2452040) (not b!2452020) (not b!2452078) (not b_lambda!75103) (not b!2451972) (not b!2452059) (not b!2452003) (not b!2451894) (not b!2451901) (not b!2451968) (not b!2452087) (not b!2452074) (not b!2451955) (not b!2451896) (not b!2452068) (not b!2452080) (not b!2452024) (not b!2452086) (not bm!150620) (not bm!150613) (not b!2452014) (not b!2451926) (not b!2451937) (not b!2451986) (not b!2451875) (not b!2452063) (not bs!465757) (not bm!150586) (not d!706776) (not b_lambda!75101) (not bs!465758) (not b!2451974) (not b!2451943) (not b!2451927) (not b!2452002) (not b!2451828) (not b!2452057) (not b!2452097) (not b!2452073) (not b!2451996) (not b!2451879) (not b!2451822) (not b!2451995) (not bm!150615) (not d!706834) (not b!2452004) (not b!2451920) (not b!2451886) (not b_lambda!75105) (not b!2452044) tp_is_empty!11827 (not b!2451930) (not d!706840) (not b!2452022) (not b!2451925) (not bm!150614) (not b!2451936) (not b!2451967) (not b!2451824) (not b!2451805) (not b!2451796) (not b!2451994) (not d!706794) (not b!2451877))
(check-sat)
