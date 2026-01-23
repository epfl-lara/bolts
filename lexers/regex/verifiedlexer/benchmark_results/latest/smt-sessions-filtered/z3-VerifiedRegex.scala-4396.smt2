; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!233768 () Bool)

(assert start!233768)

(declare-fun b!2382362 () Bool)

(assert (=> b!2382362 true))

(assert (=> b!2382362 true))

(declare-fun lambda!88811 () Int)

(declare-fun lambda!88810 () Int)

(assert (=> b!2382362 (not (= lambda!88811 lambda!88810))))

(assert (=> b!2382362 true))

(assert (=> b!2382362 true))

(declare-fun b!2382358 () Bool)

(declare-fun e!1519414 () Bool)

(declare-fun tp!760339 () Bool)

(declare-fun tp!760341 () Bool)

(assert (=> b!2382358 (= e!1519414 (and tp!760339 tp!760341))))

(declare-fun b!2382359 () Bool)

(declare-datatypes ((Unit!41045 0))(
  ( (Unit!41046) )
))
(declare-fun e!1519404 () Unit!41045)

(declare-fun Unit!41047 () Unit!41045)

(assert (=> b!2382359 (= e!1519404 Unit!41047)))

(declare-fun lt!868599 () Unit!41045)

(declare-datatypes ((C!14128 0))(
  ( (C!14129 (val!8306 Int)) )
))
(declare-datatypes ((Regex!6985 0))(
  ( (ElementMatch!6985 (c!378765 C!14128)) (Concat!11621 (regOne!14482 Regex!6985) (regTwo!14482 Regex!6985)) (EmptyExpr!6985) (Star!6985 (reg!7314 Regex!6985)) (EmptyLang!6985) (Union!6985 (regOne!14483 Regex!6985) (regTwo!14483 Regex!6985)) )
))
(declare-fun lt!868594 () Regex!6985)

(declare-datatypes ((List!28208 0))(
  ( (Nil!28110) (Cons!28110 (h!33511 C!14128) (t!208185 List!28208)) )
))
(declare-fun s!9460 () List!28208)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!34 (Regex!6985 Regex!6985 List!28208 List!28208) Unit!41045)

(assert (=> b!2382359 (= lt!868599 (lemmaTwoRegexMatchThenConcatMatchesConcatString!34 lt!868594 EmptyExpr!6985 s!9460 Nil!28110))))

(declare-fun lt!868600 () Regex!6985)

(assert (=> b!2382359 (= lt!868600 (Concat!11621 lt!868594 EmptyExpr!6985))))

(declare-fun res!1011819 () Bool)

(declare-fun call!144788 () List!28208)

(declare-fun matchR!3102 (Regex!6985 List!28208) Bool)

(assert (=> b!2382359 (= res!1011819 (matchR!3102 lt!868600 call!144788))))

(declare-fun e!1519411 () Bool)

(assert (=> b!2382359 (=> (not res!1011819) (not e!1519411))))

(assert (=> b!2382359 e!1519411))

(declare-fun lt!868606 () Unit!41045)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!16 (Regex!6985 Regex!6985 List!28208) Unit!41045)

(assert (=> b!2382359 (= lt!868606 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!16 lt!868594 EmptyExpr!6985 s!9460))))

(declare-fun res!1011813 () Bool)

(declare-fun call!144785 () Bool)

(assert (=> b!2382359 (= res!1011813 call!144785)))

(declare-fun e!1519407 () Bool)

(assert (=> b!2382359 (=> (not res!1011813) (not e!1519407))))

(assert (=> b!2382359 e!1519407))

(declare-fun b!2382360 () Bool)

(declare-fun tp_is_empty!11383 () Bool)

(assert (=> b!2382360 (= e!1519414 tp_is_empty!11383)))

(declare-fun b!2382361 () Bool)

(declare-fun e!1519401 () Bool)

(declare-fun e!1519408 () Bool)

(assert (=> b!2382361 (= e!1519401 e!1519408)))

(declare-fun res!1011812 () Bool)

(assert (=> b!2382361 (=> res!1011812 e!1519408)))

(declare-datatypes ((List!28209 0))(
  ( (Nil!28111) (Cons!28111 (h!33512 Regex!6985) (t!208186 List!28209)) )
))
(declare-fun lt!868593 () List!28209)

(declare-fun isEmpty!16063 (List!28209) Bool)

(assert (=> b!2382361 (= res!1011812 (not (isEmpty!16063 lt!868593)))))

(declare-fun l!9164 () List!28209)

(declare-fun tail!3472 (List!28209) List!28209)

(assert (=> b!2382361 (= lt!868593 (tail!3472 l!9164))))

(declare-fun bm!144778 () Bool)

(declare-datatypes ((tuple2!27834 0))(
  ( (tuple2!27835 (_1!16458 List!28208) (_2!16458 List!28208)) )
))
(declare-datatypes ((Option!5528 0))(
  ( (None!5527) (Some!5527 (v!30935 tuple2!27834)) )
))
(declare-fun call!144783 () Option!5528)

(declare-fun c!378764 () Bool)

(declare-fun call!144787 () Bool)

(declare-fun lt!868610 () Option!5528)

(declare-fun isDefined!4356 (Option!5528) Bool)

(assert (=> bm!144778 (= call!144787 (isDefined!4356 (ite c!378764 call!144783 lt!868610)))))

(declare-fun bm!144779 () Bool)

(declare-fun lt!868607 () Regex!6985)

(declare-fun findConcatSeparation!636 (Regex!6985 Regex!6985 List!28208 List!28208 List!28208) Option!5528)

(assert (=> bm!144779 (= call!144783 (findConcatSeparation!636 lt!868594 (ite c!378764 lt!868607 EmptyExpr!6985) Nil!28110 s!9460 s!9460))))

(declare-fun e!1519413 () Bool)

(assert (=> b!2382362 (= e!1519413 e!1519401)))

(declare-fun res!1011815 () Bool)

(assert (=> b!2382362 (=> res!1011815 e!1519401)))

(declare-fun lt!868608 () Bool)

(declare-fun lt!868604 () Bool)

(assert (=> b!2382362 (= res!1011815 (not (= lt!868608 lt!868604)))))

(declare-fun Exists!1047 (Int) Bool)

(assert (=> b!2382362 (= (Exists!1047 lambda!88810) (Exists!1047 lambda!88811))))

(declare-fun lt!868605 () Unit!41045)

(declare-fun r!13927 () Regex!6985)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!386 (Regex!6985 Regex!6985 List!28208) Unit!41045)

(assert (=> b!2382362 (= lt!868605 (lemmaExistCutMatchRandMatchRSpecEquivalent!386 (regOne!14482 r!13927) (regTwo!14482 r!13927) s!9460))))

(assert (=> b!2382362 (= lt!868604 (Exists!1047 lambda!88810))))

(assert (=> b!2382362 (= lt!868604 (isDefined!4356 (findConcatSeparation!636 (regOne!14482 r!13927) (regTwo!14482 r!13927) Nil!28110 s!9460 s!9460)))))

(declare-fun lt!868603 () Unit!41045)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!636 (Regex!6985 Regex!6985 List!28208) Unit!41045)

(assert (=> b!2382362 (= lt!868603 (lemmaFindConcatSeparationEquivalentToExists!636 (regOne!14482 r!13927) (regTwo!14482 r!13927) s!9460))))

(declare-fun b!2382363 () Bool)

(declare-fun e!1519402 () Bool)

(declare-fun lambda!88809 () Int)

(declare-fun forall!5619 (List!28209 Int) Bool)

(assert (=> b!2382363 (= e!1519402 (forall!5619 lt!868593 lambda!88809))))

(declare-fun lt!868609 () Unit!41045)

(assert (=> b!2382363 (= lt!868609 e!1519404)))

(assert (=> b!2382363 (= c!378764 (matchR!3102 lt!868594 s!9460))))

(declare-fun head!5202 (List!28209) Regex!6985)

(assert (=> b!2382363 (= lt!868594 (head!5202 l!9164))))

(declare-fun b!2382364 () Bool)

(assert (=> b!2382364 (= e!1519408 e!1519402)))

(declare-fun res!1011816 () Bool)

(assert (=> b!2382364 (=> res!1011816 e!1519402)))

(assert (=> b!2382364 (= res!1011816 (not (= lt!868607 EmptyExpr!6985)))))

(declare-fun generalisedConcat!86 (List!28209) Regex!6985)

(assert (=> b!2382364 (= lt!868607 (generalisedConcat!86 lt!868593))))

(declare-fun lt!868598 () tuple2!27834)

(declare-fun bm!144780 () Bool)

(declare-fun ++!6940 (List!28208 List!28208) List!28208)

(assert (=> bm!144780 (= call!144788 (++!6940 (ite c!378764 s!9460 (_1!16458 lt!868598)) (ite c!378764 Nil!28110 (_2!16458 lt!868598))))))

(declare-fun bm!144781 () Bool)

(declare-fun call!144784 () Option!5528)

(assert (=> bm!144781 (= call!144785 (isDefined!4356 call!144784))))

(declare-fun b!2382365 () Bool)

(declare-fun res!1011818 () Bool)

(declare-fun e!1519410 () Bool)

(assert (=> b!2382365 (=> (not res!1011818) (not e!1519410))))

(assert (=> b!2382365 (= res!1011818 (= r!13927 (generalisedConcat!86 l!9164)))))

(declare-fun bm!144782 () Bool)

(assert (=> bm!144782 (= call!144784 (findConcatSeparation!636 lt!868594 (ite c!378764 EmptyExpr!6985 lt!868607) Nil!28110 s!9460 s!9460))))

(declare-fun b!2382366 () Bool)

(declare-fun e!1519406 () Bool)

(declare-fun tp!760338 () Bool)

(assert (=> b!2382366 (= e!1519406 (and tp_is_empty!11383 tp!760338))))

(declare-fun b!2382368 () Bool)

(declare-fun Unit!41048 () Unit!41045)

(assert (=> b!2382368 (= e!1519404 Unit!41048)))

(assert (=> b!2382368 (= lt!868610 call!144783)))

(declare-fun lt!868595 () Bool)

(assert (=> b!2382368 (= lt!868595 call!144787)))

(declare-fun c!378763 () Bool)

(assert (=> b!2382368 (= c!378763 lt!868595)))

(declare-fun lt!868597 () Unit!41045)

(declare-fun e!1519405 () Unit!41045)

(assert (=> b!2382368 (= lt!868597 e!1519405)))

(declare-fun res!1011810 () Bool)

(assert (=> b!2382368 (= res!1011810 (not lt!868595))))

(declare-fun e!1519409 () Bool)

(assert (=> b!2382368 (=> (not res!1011810) (not e!1519409))))

(assert (=> b!2382368 e!1519409))

(declare-fun b!2382369 () Bool)

(assert (=> b!2382369 (= e!1519410 (not e!1519413))))

(declare-fun res!1011820 () Bool)

(assert (=> b!2382369 (=> res!1011820 e!1519413)))

(get-info :version)

(assert (=> b!2382369 (= res!1011820 (not ((_ is Concat!11621) r!13927)))))

(declare-fun lt!868602 () Bool)

(assert (=> b!2382369 (= lt!868602 lt!868608)))

(declare-fun matchRSpec!834 (Regex!6985 List!28208) Bool)

(assert (=> b!2382369 (= lt!868608 (matchRSpec!834 r!13927 s!9460))))

(assert (=> b!2382369 (= lt!868602 (matchR!3102 r!13927 s!9460))))

(declare-fun lt!868601 () Unit!41045)

(declare-fun mainMatchTheorem!834 (Regex!6985 List!28208) Unit!41045)

(assert (=> b!2382369 (= lt!868601 (mainMatchTheorem!834 r!13927 s!9460))))

(declare-fun b!2382370 () Bool)

(declare-fun tp!760343 () Bool)

(assert (=> b!2382370 (= e!1519414 tp!760343)))

(declare-fun b!2382371 () Bool)

(declare-fun tp!760342 () Bool)

(declare-fun tp!760340 () Bool)

(assert (=> b!2382371 (= e!1519414 (and tp!760342 tp!760340))))

(declare-fun b!2382372 () Bool)

(declare-fun e!1519412 () Bool)

(assert (=> b!2382372 e!1519412))

(declare-fun res!1011814 () Bool)

(assert (=> b!2382372 (=> (not res!1011814) (not e!1519412))))

(declare-fun call!144786 () Bool)

(assert (=> b!2382372 (= res!1011814 call!144786)))

(declare-fun lt!868596 () Unit!41045)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!16 (Regex!6985 Regex!6985 List!28208 List!28208 List!28208) Unit!41045)

(assert (=> b!2382372 (= lt!868596 (lemmaFindSeparationIsDefinedThenConcatMatches!16 lt!868594 EmptyExpr!6985 (_1!16458 lt!868598) (_2!16458 lt!868598) s!9460))))

(declare-fun get!8576 (Option!5528) tuple2!27834)

(assert (=> b!2382372 (= lt!868598 (get!8576 lt!868610))))

(declare-fun Unit!41049 () Unit!41045)

(assert (=> b!2382372 (= e!1519405 Unit!41049)))

(declare-fun b!2382373 () Bool)

(assert (=> b!2382373 (= e!1519409 (not call!144785))))

(declare-fun b!2382374 () Bool)

(declare-fun e!1519403 () Bool)

(declare-fun tp!760336 () Bool)

(declare-fun tp!760337 () Bool)

(assert (=> b!2382374 (= e!1519403 (and tp!760336 tp!760337))))

(declare-fun b!2382375 () Bool)

(declare-fun res!1011817 () Bool)

(assert (=> b!2382375 (=> res!1011817 e!1519401)))

(assert (=> b!2382375 (= res!1011817 (isEmpty!16063 l!9164))))

(declare-fun b!2382367 () Bool)

(assert (=> b!2382367 (= e!1519407 call!144787)))

(declare-fun res!1011811 () Bool)

(assert (=> start!233768 (=> (not res!1011811) (not e!1519410))))

(assert (=> start!233768 (= res!1011811 (forall!5619 l!9164 lambda!88809))))

(assert (=> start!233768 e!1519410))

(assert (=> start!233768 e!1519403))

(assert (=> start!233768 e!1519414))

(assert (=> start!233768 e!1519406))

(declare-fun b!2382376 () Bool)

(declare-fun Unit!41050 () Unit!41045)

(assert (=> b!2382376 (= e!1519405 Unit!41050)))

(declare-fun b!2382377 () Bool)

(assert (=> b!2382377 (= e!1519411 call!144786)))

(declare-fun b!2382378 () Bool)

(assert (=> b!2382378 (= e!1519412 false)))

(declare-fun bm!144783 () Bool)

(assert (=> bm!144783 (= call!144786 (matchR!3102 (ite c!378764 lt!868600 (Concat!11621 lt!868594 EmptyExpr!6985)) (ite c!378764 s!9460 call!144788)))))

(assert (= (and start!233768 res!1011811) b!2382365))

(assert (= (and b!2382365 res!1011818) b!2382369))

(assert (= (and b!2382369 (not res!1011820)) b!2382362))

(assert (= (and b!2382362 (not res!1011815)) b!2382375))

(assert (= (and b!2382375 (not res!1011817)) b!2382361))

(assert (= (and b!2382361 (not res!1011812)) b!2382364))

(assert (= (and b!2382364 (not res!1011816)) b!2382363))

(assert (= (and b!2382363 c!378764) b!2382359))

(assert (= (and b!2382363 (not c!378764)) b!2382368))

(assert (= (and b!2382359 res!1011819) b!2382377))

(assert (= (and b!2382359 res!1011813) b!2382367))

(assert (= (and b!2382368 c!378763) b!2382372))

(assert (= (and b!2382368 (not c!378763)) b!2382376))

(assert (= (and b!2382372 res!1011814) b!2382378))

(assert (= (and b!2382368 res!1011810) b!2382373))

(assert (= (or b!2382367 b!2382368) bm!144779))

(assert (= (or b!2382359 b!2382373) bm!144782))

(assert (= (or b!2382359 b!2382372) bm!144780))

(assert (= (or b!2382377 b!2382372) bm!144783))

(assert (= (or b!2382367 b!2382368) bm!144778))

(assert (= (or b!2382359 b!2382373) bm!144781))

(assert (= (and start!233768 ((_ is Cons!28111) l!9164)) b!2382374))

(assert (= (and start!233768 ((_ is ElementMatch!6985) r!13927)) b!2382360))

(assert (= (and start!233768 ((_ is Concat!11621) r!13927)) b!2382371))

(assert (= (and start!233768 ((_ is Star!6985) r!13927)) b!2382370))

(assert (= (and start!233768 ((_ is Union!6985) r!13927)) b!2382358))

(assert (= (and start!233768 ((_ is Cons!28110) s!9460)) b!2382366))

(declare-fun m!2785677 () Bool)

(assert (=> b!2382365 m!2785677))

(declare-fun m!2785679 () Bool)

(assert (=> b!2382375 m!2785679))

(declare-fun m!2785681 () Bool)

(assert (=> bm!144783 m!2785681))

(declare-fun m!2785683 () Bool)

(assert (=> start!233768 m!2785683))

(declare-fun m!2785685 () Bool)

(assert (=> b!2382359 m!2785685))

(declare-fun m!2785687 () Bool)

(assert (=> b!2382359 m!2785687))

(declare-fun m!2785689 () Bool)

(assert (=> b!2382359 m!2785689))

(declare-fun m!2785691 () Bool)

(assert (=> bm!144780 m!2785691))

(declare-fun m!2785693 () Bool)

(assert (=> b!2382364 m!2785693))

(declare-fun m!2785695 () Bool)

(assert (=> bm!144781 m!2785695))

(declare-fun m!2785697 () Bool)

(assert (=> bm!144782 m!2785697))

(declare-fun m!2785699 () Bool)

(assert (=> b!2382361 m!2785699))

(declare-fun m!2785701 () Bool)

(assert (=> b!2382361 m!2785701))

(declare-fun m!2785703 () Bool)

(assert (=> bm!144779 m!2785703))

(declare-fun m!2785705 () Bool)

(assert (=> b!2382363 m!2785705))

(declare-fun m!2785707 () Bool)

(assert (=> b!2382363 m!2785707))

(declare-fun m!2785709 () Bool)

(assert (=> b!2382363 m!2785709))

(declare-fun m!2785711 () Bool)

(assert (=> b!2382369 m!2785711))

(declare-fun m!2785713 () Bool)

(assert (=> b!2382369 m!2785713))

(declare-fun m!2785715 () Bool)

(assert (=> b!2382369 m!2785715))

(declare-fun m!2785717 () Bool)

(assert (=> bm!144778 m!2785717))

(declare-fun m!2785719 () Bool)

(assert (=> b!2382372 m!2785719))

(declare-fun m!2785721 () Bool)

(assert (=> b!2382372 m!2785721))

(declare-fun m!2785723 () Bool)

(assert (=> b!2382362 m!2785723))

(declare-fun m!2785725 () Bool)

(assert (=> b!2382362 m!2785725))

(declare-fun m!2785727 () Bool)

(assert (=> b!2382362 m!2785727))

(assert (=> b!2382362 m!2785723))

(declare-fun m!2785729 () Bool)

(assert (=> b!2382362 m!2785729))

(declare-fun m!2785731 () Bool)

(assert (=> b!2382362 m!2785731))

(declare-fun m!2785733 () Bool)

(assert (=> b!2382362 m!2785733))

(assert (=> b!2382362 m!2785729))

(check-sat (not bm!144779) (not b!2382366) (not bm!144780) tp_is_empty!11383 (not b!2382371) (not bm!144778) (not b!2382369) (not b!2382363) (not b!2382359) (not b!2382362) (not b!2382374) (not b!2382375) (not bm!144781) (not bm!144782) (not b!2382364) (not b!2382361) (not b!2382365) (not b!2382372) (not bm!144783) (not b!2382358) (not b!2382370) (not start!233768))
(check-sat)
(get-model)

(declare-fun d!696909 () Bool)

(declare-fun res!1011825 () Bool)

(declare-fun e!1519419 () Bool)

(assert (=> d!696909 (=> res!1011825 e!1519419)))

(assert (=> d!696909 (= res!1011825 ((_ is Nil!28111) l!9164))))

(assert (=> d!696909 (= (forall!5619 l!9164 lambda!88809) e!1519419)))

(declare-fun b!2382387 () Bool)

(declare-fun e!1519420 () Bool)

(assert (=> b!2382387 (= e!1519419 e!1519420)))

(declare-fun res!1011826 () Bool)

(assert (=> b!2382387 (=> (not res!1011826) (not e!1519420))))

(declare-fun dynLambda!12102 (Int Regex!6985) Bool)

(assert (=> b!2382387 (= res!1011826 (dynLambda!12102 lambda!88809 (h!33512 l!9164)))))

(declare-fun b!2382388 () Bool)

(assert (=> b!2382388 (= e!1519420 (forall!5619 (t!208186 l!9164) lambda!88809))))

(assert (= (and d!696909 (not res!1011825)) b!2382387))

(assert (= (and b!2382387 res!1011826) b!2382388))

(declare-fun b_lambda!74075 () Bool)

(assert (=> (not b_lambda!74075) (not b!2382387)))

(declare-fun m!2785739 () Bool)

(assert (=> b!2382387 m!2785739))

(declare-fun m!2785741 () Bool)

(assert (=> b!2382388 m!2785741))

(assert (=> start!233768 d!696909))

(declare-fun d!696917 () Bool)

(assert (=> d!696917 (matchR!3102 (Concat!11621 lt!868594 EmptyExpr!6985) (++!6940 (_1!16458 lt!868598) (_2!16458 lt!868598)))))

(declare-fun lt!868619 () Unit!41045)

(declare-fun choose!13952 (Regex!6985 Regex!6985 List!28208 List!28208 List!28208) Unit!41045)

(assert (=> d!696917 (= lt!868619 (choose!13952 lt!868594 EmptyExpr!6985 (_1!16458 lt!868598) (_2!16458 lt!868598) s!9460))))

(declare-fun validRegex!2710 (Regex!6985) Bool)

(assert (=> d!696917 (validRegex!2710 lt!868594)))

(assert (=> d!696917 (= (lemmaFindSeparationIsDefinedThenConcatMatches!16 lt!868594 EmptyExpr!6985 (_1!16458 lt!868598) (_2!16458 lt!868598) s!9460) lt!868619)))

(declare-fun bs!461966 () Bool)

(assert (= bs!461966 d!696917))

(declare-fun m!2785769 () Bool)

(assert (=> bs!461966 m!2785769))

(assert (=> bs!461966 m!2785769))

(declare-fun m!2785771 () Bool)

(assert (=> bs!461966 m!2785771))

(declare-fun m!2785773 () Bool)

(assert (=> bs!461966 m!2785773))

(declare-fun m!2785775 () Bool)

(assert (=> bs!461966 m!2785775))

(assert (=> b!2382372 d!696917))

(declare-fun d!696927 () Bool)

(assert (=> d!696927 (= (get!8576 lt!868610) (v!30935 lt!868610))))

(assert (=> b!2382372 d!696927))

(declare-fun bs!461970 () Bool)

(declare-fun d!696929 () Bool)

(assert (= bs!461970 (and d!696929 start!233768)))

(declare-fun lambda!88817 () Int)

(assert (=> bs!461970 (= lambda!88817 lambda!88809)))

(declare-fun b!2382487 () Bool)

(declare-fun e!1519480 () Bool)

(declare-fun lt!868629 () Regex!6985)

(declare-fun isEmptyExpr!55 (Regex!6985) Bool)

(assert (=> b!2382487 (= e!1519480 (isEmptyExpr!55 lt!868629))))

(declare-fun b!2382488 () Bool)

(declare-fun e!1519479 () Bool)

(assert (=> b!2382488 (= e!1519479 e!1519480)))

(declare-fun c!378790 () Bool)

(assert (=> b!2382488 (= c!378790 (isEmpty!16063 lt!868593))))

(assert (=> d!696929 e!1519479))

(declare-fun res!1011880 () Bool)

(assert (=> d!696929 (=> (not res!1011880) (not e!1519479))))

(assert (=> d!696929 (= res!1011880 (validRegex!2710 lt!868629))))

(declare-fun e!1519478 () Regex!6985)

(assert (=> d!696929 (= lt!868629 e!1519478)))

(declare-fun c!378789 () Bool)

(declare-fun e!1519476 () Bool)

(assert (=> d!696929 (= c!378789 e!1519476)))

(declare-fun res!1011879 () Bool)

(assert (=> d!696929 (=> (not res!1011879) (not e!1519476))))

(assert (=> d!696929 (= res!1011879 ((_ is Cons!28111) lt!868593))))

(assert (=> d!696929 (forall!5619 lt!868593 lambda!88817)))

(assert (=> d!696929 (= (generalisedConcat!86 lt!868593) lt!868629)))

(declare-fun b!2382489 () Bool)

(declare-fun e!1519477 () Regex!6985)

(assert (=> b!2382489 (= e!1519478 e!1519477)))

(declare-fun c!378791 () Bool)

(assert (=> b!2382489 (= c!378791 ((_ is Cons!28111) lt!868593))))

(declare-fun b!2382490 () Bool)

(assert (=> b!2382490 (= e!1519477 EmptyExpr!6985)))

(declare-fun b!2382491 () Bool)

(declare-fun e!1519475 () Bool)

(assert (=> b!2382491 (= e!1519475 (= lt!868629 (head!5202 lt!868593)))))

(declare-fun b!2382492 () Bool)

(assert (=> b!2382492 (= e!1519480 e!1519475)))

(declare-fun c!378792 () Bool)

(assert (=> b!2382492 (= c!378792 (isEmpty!16063 (tail!3472 lt!868593)))))

(declare-fun b!2382493 () Bool)

(assert (=> b!2382493 (= e!1519476 (isEmpty!16063 (t!208186 lt!868593)))))

(declare-fun b!2382494 () Bool)

(assert (=> b!2382494 (= e!1519478 (h!33512 lt!868593))))

(declare-fun b!2382495 () Bool)

(declare-fun isConcat!55 (Regex!6985) Bool)

(assert (=> b!2382495 (= e!1519475 (isConcat!55 lt!868629))))

(declare-fun b!2382496 () Bool)

(assert (=> b!2382496 (= e!1519477 (Concat!11621 (h!33512 lt!868593) (generalisedConcat!86 (t!208186 lt!868593))))))

(assert (= (and d!696929 res!1011879) b!2382493))

(assert (= (and d!696929 c!378789) b!2382494))

(assert (= (and d!696929 (not c!378789)) b!2382489))

(assert (= (and b!2382489 c!378791) b!2382496))

(assert (= (and b!2382489 (not c!378791)) b!2382490))

(assert (= (and d!696929 res!1011880) b!2382488))

(assert (= (and b!2382488 c!378790) b!2382487))

(assert (= (and b!2382488 (not c!378790)) b!2382492))

(assert (= (and b!2382492 c!378792) b!2382491))

(assert (= (and b!2382492 (not c!378792)) b!2382495))

(assert (=> b!2382488 m!2785699))

(declare-fun m!2785815 () Bool)

(assert (=> b!2382487 m!2785815))

(declare-fun m!2785817 () Bool)

(assert (=> d!696929 m!2785817))

(declare-fun m!2785819 () Bool)

(assert (=> d!696929 m!2785819))

(declare-fun m!2785821 () Bool)

(assert (=> b!2382493 m!2785821))

(declare-fun m!2785823 () Bool)

(assert (=> b!2382492 m!2785823))

(assert (=> b!2382492 m!2785823))

(declare-fun m!2785825 () Bool)

(assert (=> b!2382492 m!2785825))

(declare-fun m!2785827 () Bool)

(assert (=> b!2382491 m!2785827))

(declare-fun m!2785829 () Bool)

(assert (=> b!2382495 m!2785829))

(declare-fun m!2785831 () Bool)

(assert (=> b!2382496 m!2785831))

(assert (=> b!2382364 d!696929))

(declare-fun d!696941 () Bool)

(declare-fun res!1011881 () Bool)

(declare-fun e!1519481 () Bool)

(assert (=> d!696941 (=> res!1011881 e!1519481)))

(assert (=> d!696941 (= res!1011881 ((_ is Nil!28111) lt!868593))))

(assert (=> d!696941 (= (forall!5619 lt!868593 lambda!88809) e!1519481)))

(declare-fun b!2382497 () Bool)

(declare-fun e!1519482 () Bool)

(assert (=> b!2382497 (= e!1519481 e!1519482)))

(declare-fun res!1011882 () Bool)

(assert (=> b!2382497 (=> (not res!1011882) (not e!1519482))))

(assert (=> b!2382497 (= res!1011882 (dynLambda!12102 lambda!88809 (h!33512 lt!868593)))))

(declare-fun b!2382498 () Bool)

(assert (=> b!2382498 (= e!1519482 (forall!5619 (t!208186 lt!868593) lambda!88809))))

(assert (= (and d!696941 (not res!1011881)) b!2382497))

(assert (= (and b!2382497 res!1011882) b!2382498))

(declare-fun b_lambda!74079 () Bool)

(assert (=> (not b_lambda!74079) (not b!2382497)))

(declare-fun m!2785833 () Bool)

(assert (=> b!2382497 m!2785833))

(declare-fun m!2785835 () Bool)

(assert (=> b!2382498 m!2785835))

(assert (=> b!2382363 d!696941))

(declare-fun b!2382562 () Bool)

(declare-fun e!1519522 () Bool)

(declare-fun lt!868644 () Bool)

(assert (=> b!2382562 (= e!1519522 (not lt!868644))))

(declare-fun d!696943 () Bool)

(declare-fun e!1519521 () Bool)

(assert (=> d!696943 e!1519521))

(declare-fun c!378806 () Bool)

(assert (=> d!696943 (= c!378806 ((_ is EmptyExpr!6985) lt!868594))))

(declare-fun e!1519519 () Bool)

(assert (=> d!696943 (= lt!868644 e!1519519)))

(declare-fun c!378807 () Bool)

(declare-fun isEmpty!16066 (List!28208) Bool)

(assert (=> d!696943 (= c!378807 (isEmpty!16066 s!9460))))

(assert (=> d!696943 (validRegex!2710 lt!868594)))

(assert (=> d!696943 (= (matchR!3102 lt!868594 s!9460) lt!868644)))

(declare-fun bm!144790 () Bool)

(declare-fun call!144795 () Bool)

(assert (=> bm!144790 (= call!144795 (isEmpty!16066 s!9460))))

(declare-fun b!2382563 () Bool)

(declare-fun e!1519518 () Bool)

(declare-fun head!5204 (List!28208) C!14128)

(assert (=> b!2382563 (= e!1519518 (not (= (head!5204 s!9460) (c!378765 lt!868594))))))

(declare-fun b!2382564 () Bool)

(declare-fun res!1011926 () Bool)

(declare-fun e!1519520 () Bool)

(assert (=> b!2382564 (=> res!1011926 e!1519520)))

(declare-fun e!1519516 () Bool)

(assert (=> b!2382564 (= res!1011926 e!1519516)))

(declare-fun res!1011922 () Bool)

(assert (=> b!2382564 (=> (not res!1011922) (not e!1519516))))

(assert (=> b!2382564 (= res!1011922 lt!868644)))

(declare-fun b!2382565 () Bool)

(declare-fun res!1011928 () Bool)

(assert (=> b!2382565 (=> (not res!1011928) (not e!1519516))))

(assert (=> b!2382565 (= res!1011928 (not call!144795))))

(declare-fun b!2382566 () Bool)

(declare-fun e!1519517 () Bool)

(assert (=> b!2382566 (= e!1519520 e!1519517)))

(declare-fun res!1011923 () Bool)

(assert (=> b!2382566 (=> (not res!1011923) (not e!1519517))))

(assert (=> b!2382566 (= res!1011923 (not lt!868644))))

(declare-fun b!2382567 () Bool)

(assert (=> b!2382567 (= e!1519517 e!1519518)))

(declare-fun res!1011929 () Bool)

(assert (=> b!2382567 (=> res!1011929 e!1519518)))

(assert (=> b!2382567 (= res!1011929 call!144795)))

(declare-fun b!2382568 () Bool)

(declare-fun derivativeStep!1693 (Regex!6985 C!14128) Regex!6985)

(declare-fun tail!3474 (List!28208) List!28208)

(assert (=> b!2382568 (= e!1519519 (matchR!3102 (derivativeStep!1693 lt!868594 (head!5204 s!9460)) (tail!3474 s!9460)))))

(declare-fun b!2382569 () Bool)

(assert (=> b!2382569 (= e!1519521 (= lt!868644 call!144795))))

(declare-fun b!2382570 () Bool)

(declare-fun res!1011924 () Bool)

(assert (=> b!2382570 (=> res!1011924 e!1519520)))

(assert (=> b!2382570 (= res!1011924 (not ((_ is ElementMatch!6985) lt!868594)))))

(assert (=> b!2382570 (= e!1519522 e!1519520)))

(declare-fun b!2382571 () Bool)

(assert (=> b!2382571 (= e!1519521 e!1519522)))

(declare-fun c!378805 () Bool)

(assert (=> b!2382571 (= c!378805 ((_ is EmptyLang!6985) lt!868594))))

(declare-fun b!2382572 () Bool)

(declare-fun nullable!2035 (Regex!6985) Bool)

(assert (=> b!2382572 (= e!1519519 (nullable!2035 lt!868594))))

(declare-fun b!2382573 () Bool)

(declare-fun res!1011927 () Bool)

(assert (=> b!2382573 (=> (not res!1011927) (not e!1519516))))

(assert (=> b!2382573 (= res!1011927 (isEmpty!16066 (tail!3474 s!9460)))))

(declare-fun b!2382574 () Bool)

(declare-fun res!1011925 () Bool)

(assert (=> b!2382574 (=> res!1011925 e!1519518)))

(assert (=> b!2382574 (= res!1011925 (not (isEmpty!16066 (tail!3474 s!9460))))))

(declare-fun b!2382575 () Bool)

(assert (=> b!2382575 (= e!1519516 (= (head!5204 s!9460) (c!378765 lt!868594)))))

(assert (= (and d!696943 c!378807) b!2382572))

(assert (= (and d!696943 (not c!378807)) b!2382568))

(assert (= (and d!696943 c!378806) b!2382569))

(assert (= (and d!696943 (not c!378806)) b!2382571))

(assert (= (and b!2382571 c!378805) b!2382562))

(assert (= (and b!2382571 (not c!378805)) b!2382570))

(assert (= (and b!2382570 (not res!1011924)) b!2382564))

(assert (= (and b!2382564 res!1011922) b!2382565))

(assert (= (and b!2382565 res!1011928) b!2382573))

(assert (= (and b!2382573 res!1011927) b!2382575))

(assert (= (and b!2382564 (not res!1011926)) b!2382566))

(assert (= (and b!2382566 res!1011923) b!2382567))

(assert (= (and b!2382567 (not res!1011929)) b!2382574))

(assert (= (and b!2382574 (not res!1011925)) b!2382563))

(assert (= (or b!2382569 b!2382565 b!2382567) bm!144790))

(declare-fun m!2785869 () Bool)

(assert (=> bm!144790 m!2785869))

(assert (=> d!696943 m!2785869))

(assert (=> d!696943 m!2785775))

(declare-fun m!2785871 () Bool)

(assert (=> b!2382563 m!2785871))

(assert (=> b!2382575 m!2785871))

(declare-fun m!2785873 () Bool)

(assert (=> b!2382573 m!2785873))

(assert (=> b!2382573 m!2785873))

(declare-fun m!2785875 () Bool)

(assert (=> b!2382573 m!2785875))

(assert (=> b!2382568 m!2785871))

(assert (=> b!2382568 m!2785871))

(declare-fun m!2785877 () Bool)

(assert (=> b!2382568 m!2785877))

(assert (=> b!2382568 m!2785873))

(assert (=> b!2382568 m!2785877))

(assert (=> b!2382568 m!2785873))

(declare-fun m!2785879 () Bool)

(assert (=> b!2382568 m!2785879))

(declare-fun m!2785881 () Bool)

(assert (=> b!2382572 m!2785881))

(assert (=> b!2382574 m!2785873))

(assert (=> b!2382574 m!2785873))

(assert (=> b!2382574 m!2785875))

(assert (=> b!2382363 d!696943))

(declare-fun d!696953 () Bool)

(assert (=> d!696953 (= (head!5202 l!9164) (h!33512 l!9164))))

(assert (=> b!2382363 d!696953))

(declare-fun d!696955 () Bool)

(declare-fun choose!13954 (Int) Bool)

(assert (=> d!696955 (= (Exists!1047 lambda!88811) (choose!13954 lambda!88811))))

(declare-fun bs!461977 () Bool)

(assert (= bs!461977 d!696955))

(declare-fun m!2785885 () Bool)

(assert (=> bs!461977 m!2785885))

(assert (=> b!2382362 d!696955))

(declare-fun d!696957 () Bool)

(declare-fun isEmpty!16067 (Option!5528) Bool)

(assert (=> d!696957 (= (isDefined!4356 (findConcatSeparation!636 (regOne!14482 r!13927) (regTwo!14482 r!13927) Nil!28110 s!9460 s!9460)) (not (isEmpty!16067 (findConcatSeparation!636 (regOne!14482 r!13927) (regTwo!14482 r!13927) Nil!28110 s!9460 s!9460))))))

(declare-fun bs!461978 () Bool)

(assert (= bs!461978 d!696957))

(assert (=> bs!461978 m!2785723))

(declare-fun m!2785899 () Bool)

(assert (=> bs!461978 m!2785899))

(assert (=> b!2382362 d!696957))

(declare-fun bs!461980 () Bool)

(declare-fun d!696961 () Bool)

(assert (= bs!461980 (and d!696961 b!2382362)))

(declare-fun lambda!88833 () Int)

(assert (=> bs!461980 (= lambda!88833 lambda!88810)))

(assert (=> bs!461980 (not (= lambda!88833 lambda!88811))))

(assert (=> d!696961 true))

(assert (=> d!696961 true))

(assert (=> d!696961 true))

(assert (=> d!696961 (= (isDefined!4356 (findConcatSeparation!636 (regOne!14482 r!13927) (regTwo!14482 r!13927) Nil!28110 s!9460 s!9460)) (Exists!1047 lambda!88833))))

(declare-fun lt!868657 () Unit!41045)

(declare-fun choose!13955 (Regex!6985 Regex!6985 List!28208) Unit!41045)

(assert (=> d!696961 (= lt!868657 (choose!13955 (regOne!14482 r!13927) (regTwo!14482 r!13927) s!9460))))

(assert (=> d!696961 (validRegex!2710 (regOne!14482 r!13927))))

(assert (=> d!696961 (= (lemmaFindConcatSeparationEquivalentToExists!636 (regOne!14482 r!13927) (regTwo!14482 r!13927) s!9460) lt!868657)))

(declare-fun bs!461981 () Bool)

(assert (= bs!461981 d!696961))

(assert (=> bs!461981 m!2785723))

(assert (=> bs!461981 m!2785725))

(declare-fun m!2785929 () Bool)

(assert (=> bs!461981 m!2785929))

(assert (=> bs!461981 m!2785723))

(declare-fun m!2785931 () Bool)

(assert (=> bs!461981 m!2785931))

(declare-fun m!2785933 () Bool)

(assert (=> bs!461981 m!2785933))

(assert (=> b!2382362 d!696961))

(declare-fun bs!461994 () Bool)

(declare-fun d!696969 () Bool)

(assert (= bs!461994 (and d!696969 b!2382362)))

(declare-fun lambda!88841 () Int)

(assert (=> bs!461994 (= lambda!88841 lambda!88810)))

(assert (=> bs!461994 (not (= lambda!88841 lambda!88811))))

(declare-fun bs!461995 () Bool)

(assert (= bs!461995 (and d!696969 d!696961)))

(assert (=> bs!461995 (= lambda!88841 lambda!88833)))

(assert (=> d!696969 true))

(assert (=> d!696969 true))

(assert (=> d!696969 true))

(declare-fun lambda!88842 () Int)

(assert (=> bs!461994 (not (= lambda!88842 lambda!88810))))

(assert (=> bs!461994 (= lambda!88842 lambda!88811)))

(assert (=> bs!461995 (not (= lambda!88842 lambda!88833))))

(declare-fun bs!461996 () Bool)

(assert (= bs!461996 d!696969))

(assert (=> bs!461996 (not (= lambda!88842 lambda!88841))))

(assert (=> d!696969 true))

(assert (=> d!696969 true))

(assert (=> d!696969 true))

(assert (=> d!696969 (= (Exists!1047 lambda!88841) (Exists!1047 lambda!88842))))

(declare-fun lt!868671 () Unit!41045)

(declare-fun choose!13956 (Regex!6985 Regex!6985 List!28208) Unit!41045)

(assert (=> d!696969 (= lt!868671 (choose!13956 (regOne!14482 r!13927) (regTwo!14482 r!13927) s!9460))))

(assert (=> d!696969 (validRegex!2710 (regOne!14482 r!13927))))

(assert (=> d!696969 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!386 (regOne!14482 r!13927) (regTwo!14482 r!13927) s!9460) lt!868671)))

(declare-fun m!2786007 () Bool)

(assert (=> bs!461996 m!2786007))

(declare-fun m!2786009 () Bool)

(assert (=> bs!461996 m!2786009))

(declare-fun m!2786011 () Bool)

(assert (=> bs!461996 m!2786011))

(assert (=> bs!461996 m!2785929))

(assert (=> b!2382362 d!696969))

(declare-fun b!2382784 () Bool)

(declare-fun res!1012013 () Bool)

(declare-fun e!1519631 () Bool)

(assert (=> b!2382784 (=> (not res!1012013) (not e!1519631))))

(declare-fun lt!868679 () Option!5528)

(assert (=> b!2382784 (= res!1012013 (matchR!3102 (regTwo!14482 r!13927) (_2!16458 (get!8576 lt!868679))))))

(declare-fun b!2382785 () Bool)

(declare-fun res!1012011 () Bool)

(assert (=> b!2382785 (=> (not res!1012011) (not e!1519631))))

(assert (=> b!2382785 (= res!1012011 (matchR!3102 (regOne!14482 r!13927) (_1!16458 (get!8576 lt!868679))))))

(declare-fun d!696993 () Bool)

(declare-fun e!1519632 () Bool)

(assert (=> d!696993 e!1519632))

(declare-fun res!1012012 () Bool)

(assert (=> d!696993 (=> res!1012012 e!1519632)))

(assert (=> d!696993 (= res!1012012 e!1519631)))

(declare-fun res!1012014 () Bool)

(assert (=> d!696993 (=> (not res!1012014) (not e!1519631))))

(assert (=> d!696993 (= res!1012014 (isDefined!4356 lt!868679))))

(declare-fun e!1519634 () Option!5528)

(assert (=> d!696993 (= lt!868679 e!1519634)))

(declare-fun c!378850 () Bool)

(declare-fun e!1519633 () Bool)

(assert (=> d!696993 (= c!378850 e!1519633)))

(declare-fun res!1012010 () Bool)

(assert (=> d!696993 (=> (not res!1012010) (not e!1519633))))

(assert (=> d!696993 (= res!1012010 (matchR!3102 (regOne!14482 r!13927) Nil!28110))))

(assert (=> d!696993 (validRegex!2710 (regOne!14482 r!13927))))

(assert (=> d!696993 (= (findConcatSeparation!636 (regOne!14482 r!13927) (regTwo!14482 r!13927) Nil!28110 s!9460 s!9460) lt!868679)))

(declare-fun b!2382786 () Bool)

(assert (=> b!2382786 (= e!1519633 (matchR!3102 (regTwo!14482 r!13927) s!9460))))

(declare-fun b!2382787 () Bool)

(assert (=> b!2382787 (= e!1519631 (= (++!6940 (_1!16458 (get!8576 lt!868679)) (_2!16458 (get!8576 lt!868679))) s!9460))))

(declare-fun b!2382788 () Bool)

(assert (=> b!2382788 (= e!1519632 (not (isDefined!4356 lt!868679)))))

(declare-fun b!2382789 () Bool)

(declare-fun lt!868680 () Unit!41045)

(declare-fun lt!868678 () Unit!41045)

(assert (=> b!2382789 (= lt!868680 lt!868678)))

(assert (=> b!2382789 (= (++!6940 (++!6940 Nil!28110 (Cons!28110 (h!33511 s!9460) Nil!28110)) (t!208185 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!582 (List!28208 C!14128 List!28208 List!28208) Unit!41045)

(assert (=> b!2382789 (= lt!868678 (lemmaMoveElementToOtherListKeepsConcatEq!582 Nil!28110 (h!33511 s!9460) (t!208185 s!9460) s!9460))))

(declare-fun e!1519635 () Option!5528)

(assert (=> b!2382789 (= e!1519635 (findConcatSeparation!636 (regOne!14482 r!13927) (regTwo!14482 r!13927) (++!6940 Nil!28110 (Cons!28110 (h!33511 s!9460) Nil!28110)) (t!208185 s!9460) s!9460))))

(declare-fun b!2382790 () Bool)

(assert (=> b!2382790 (= e!1519635 None!5527)))

(declare-fun b!2382791 () Bool)

(assert (=> b!2382791 (= e!1519634 e!1519635)))

(declare-fun c!378851 () Bool)

(assert (=> b!2382791 (= c!378851 ((_ is Nil!28110) s!9460))))

(declare-fun b!2382792 () Bool)

(assert (=> b!2382792 (= e!1519634 (Some!5527 (tuple2!27835 Nil!28110 s!9460)))))

(assert (= (and d!696993 res!1012010) b!2382786))

(assert (= (and d!696993 c!378850) b!2382792))

(assert (= (and d!696993 (not c!378850)) b!2382791))

(assert (= (and b!2382791 c!378851) b!2382790))

(assert (= (and b!2382791 (not c!378851)) b!2382789))

(assert (= (and d!696993 res!1012014) b!2382785))

(assert (= (and b!2382785 res!1012011) b!2382784))

(assert (= (and b!2382784 res!1012013) b!2382787))

(assert (= (and d!696993 (not res!1012012)) b!2382788))

(declare-fun m!2786013 () Bool)

(assert (=> b!2382786 m!2786013))

(declare-fun m!2786015 () Bool)

(assert (=> b!2382784 m!2786015))

(declare-fun m!2786017 () Bool)

(assert (=> b!2382784 m!2786017))

(assert (=> b!2382785 m!2786015))

(declare-fun m!2786019 () Bool)

(assert (=> b!2382785 m!2786019))

(declare-fun m!2786021 () Bool)

(assert (=> d!696993 m!2786021))

(declare-fun m!2786023 () Bool)

(assert (=> d!696993 m!2786023))

(assert (=> d!696993 m!2785929))

(assert (=> b!2382788 m!2786021))

(declare-fun m!2786025 () Bool)

(assert (=> b!2382789 m!2786025))

(assert (=> b!2382789 m!2786025))

(declare-fun m!2786027 () Bool)

(assert (=> b!2382789 m!2786027))

(declare-fun m!2786029 () Bool)

(assert (=> b!2382789 m!2786029))

(assert (=> b!2382789 m!2786025))

(declare-fun m!2786031 () Bool)

(assert (=> b!2382789 m!2786031))

(assert (=> b!2382787 m!2786015))

(declare-fun m!2786033 () Bool)

(assert (=> b!2382787 m!2786033))

(assert (=> b!2382362 d!696993))

(declare-fun d!696995 () Bool)

(assert (=> d!696995 (= (Exists!1047 lambda!88810) (choose!13954 lambda!88810))))

(declare-fun bs!461997 () Bool)

(assert (= bs!461997 d!696995))

(declare-fun m!2786035 () Bool)

(assert (=> bs!461997 m!2786035))

(assert (=> b!2382362 d!696995))

(declare-fun b!2382793 () Bool)

(declare-fun res!1012018 () Bool)

(declare-fun e!1519636 () Bool)

(assert (=> b!2382793 (=> (not res!1012018) (not e!1519636))))

(declare-fun lt!868682 () Option!5528)

(assert (=> b!2382793 (= res!1012018 (matchR!3102 (ite c!378764 lt!868607 EmptyExpr!6985) (_2!16458 (get!8576 lt!868682))))))

(declare-fun b!2382794 () Bool)

(declare-fun res!1012016 () Bool)

(assert (=> b!2382794 (=> (not res!1012016) (not e!1519636))))

(assert (=> b!2382794 (= res!1012016 (matchR!3102 lt!868594 (_1!16458 (get!8576 lt!868682))))))

(declare-fun d!696997 () Bool)

(declare-fun e!1519637 () Bool)

(assert (=> d!696997 e!1519637))

(declare-fun res!1012017 () Bool)

(assert (=> d!696997 (=> res!1012017 e!1519637)))

(assert (=> d!696997 (= res!1012017 e!1519636)))

(declare-fun res!1012019 () Bool)

(assert (=> d!696997 (=> (not res!1012019) (not e!1519636))))

(assert (=> d!696997 (= res!1012019 (isDefined!4356 lt!868682))))

(declare-fun e!1519639 () Option!5528)

(assert (=> d!696997 (= lt!868682 e!1519639)))

(declare-fun c!378852 () Bool)

(declare-fun e!1519638 () Bool)

(assert (=> d!696997 (= c!378852 e!1519638)))

(declare-fun res!1012015 () Bool)

(assert (=> d!696997 (=> (not res!1012015) (not e!1519638))))

(assert (=> d!696997 (= res!1012015 (matchR!3102 lt!868594 Nil!28110))))

(assert (=> d!696997 (validRegex!2710 lt!868594)))

(assert (=> d!696997 (= (findConcatSeparation!636 lt!868594 (ite c!378764 lt!868607 EmptyExpr!6985) Nil!28110 s!9460 s!9460) lt!868682)))

(declare-fun b!2382795 () Bool)

(assert (=> b!2382795 (= e!1519638 (matchR!3102 (ite c!378764 lt!868607 EmptyExpr!6985) s!9460))))

(declare-fun b!2382796 () Bool)

(assert (=> b!2382796 (= e!1519636 (= (++!6940 (_1!16458 (get!8576 lt!868682)) (_2!16458 (get!8576 lt!868682))) s!9460))))

(declare-fun b!2382797 () Bool)

(assert (=> b!2382797 (= e!1519637 (not (isDefined!4356 lt!868682)))))

(declare-fun b!2382798 () Bool)

(declare-fun lt!868683 () Unit!41045)

(declare-fun lt!868681 () Unit!41045)

(assert (=> b!2382798 (= lt!868683 lt!868681)))

(assert (=> b!2382798 (= (++!6940 (++!6940 Nil!28110 (Cons!28110 (h!33511 s!9460) Nil!28110)) (t!208185 s!9460)) s!9460)))

(assert (=> b!2382798 (= lt!868681 (lemmaMoveElementToOtherListKeepsConcatEq!582 Nil!28110 (h!33511 s!9460) (t!208185 s!9460) s!9460))))

(declare-fun e!1519640 () Option!5528)

(assert (=> b!2382798 (= e!1519640 (findConcatSeparation!636 lt!868594 (ite c!378764 lt!868607 EmptyExpr!6985) (++!6940 Nil!28110 (Cons!28110 (h!33511 s!9460) Nil!28110)) (t!208185 s!9460) s!9460))))

(declare-fun b!2382799 () Bool)

(assert (=> b!2382799 (= e!1519640 None!5527)))

(declare-fun b!2382800 () Bool)

(assert (=> b!2382800 (= e!1519639 e!1519640)))

(declare-fun c!378853 () Bool)

(assert (=> b!2382800 (= c!378853 ((_ is Nil!28110) s!9460))))

(declare-fun b!2382801 () Bool)

(assert (=> b!2382801 (= e!1519639 (Some!5527 (tuple2!27835 Nil!28110 s!9460)))))

(assert (= (and d!696997 res!1012015) b!2382795))

(assert (= (and d!696997 c!378852) b!2382801))

(assert (= (and d!696997 (not c!378852)) b!2382800))

(assert (= (and b!2382800 c!378853) b!2382799))

(assert (= (and b!2382800 (not c!378853)) b!2382798))

(assert (= (and d!696997 res!1012019) b!2382794))

(assert (= (and b!2382794 res!1012016) b!2382793))

(assert (= (and b!2382793 res!1012018) b!2382796))

(assert (= (and d!696997 (not res!1012017)) b!2382797))

(declare-fun m!2786037 () Bool)

(assert (=> b!2382795 m!2786037))

(declare-fun m!2786039 () Bool)

(assert (=> b!2382793 m!2786039))

(declare-fun m!2786041 () Bool)

(assert (=> b!2382793 m!2786041))

(assert (=> b!2382794 m!2786039))

(declare-fun m!2786043 () Bool)

(assert (=> b!2382794 m!2786043))

(declare-fun m!2786045 () Bool)

(assert (=> d!696997 m!2786045))

(declare-fun m!2786047 () Bool)

(assert (=> d!696997 m!2786047))

(assert (=> d!696997 m!2785775))

(assert (=> b!2382797 m!2786045))

(assert (=> b!2382798 m!2786025))

(assert (=> b!2382798 m!2786025))

(assert (=> b!2382798 m!2786027))

(assert (=> b!2382798 m!2786029))

(assert (=> b!2382798 m!2786025))

(declare-fun m!2786049 () Bool)

(assert (=> b!2382798 m!2786049))

(assert (=> b!2382796 m!2786039))

(declare-fun m!2786051 () Bool)

(assert (=> b!2382796 m!2786051))

(assert (=> bm!144779 d!696997))

(declare-fun bs!461998 () Bool)

(declare-fun b!2382834 () Bool)

(assert (= bs!461998 (and b!2382834 d!696961)))

(declare-fun lambda!88847 () Int)

(assert (=> bs!461998 (not (= lambda!88847 lambda!88833))))

(declare-fun bs!461999 () Bool)

(assert (= bs!461999 (and b!2382834 d!696969)))

(assert (=> bs!461999 (not (= lambda!88847 lambda!88842))))

(declare-fun bs!462000 () Bool)

(assert (= bs!462000 (and b!2382834 b!2382362)))

(assert (=> bs!462000 (not (= lambda!88847 lambda!88810))))

(assert (=> bs!461999 (not (= lambda!88847 lambda!88841))))

(assert (=> bs!462000 (not (= lambda!88847 lambda!88811))))

(assert (=> b!2382834 true))

(assert (=> b!2382834 true))

(declare-fun bs!462001 () Bool)

(declare-fun b!2382838 () Bool)

(assert (= bs!462001 (and b!2382838 d!696961)))

(declare-fun lambda!88848 () Int)

(assert (=> bs!462001 (not (= lambda!88848 lambda!88833))))

(declare-fun bs!462002 () Bool)

(assert (= bs!462002 (and b!2382838 d!696969)))

(assert (=> bs!462002 (= lambda!88848 lambda!88842)))

(declare-fun bs!462003 () Bool)

(assert (= bs!462003 (and b!2382838 b!2382362)))

(assert (=> bs!462003 (not (= lambda!88848 lambda!88810))))

(assert (=> bs!462002 (not (= lambda!88848 lambda!88841))))

(declare-fun bs!462004 () Bool)

(assert (= bs!462004 (and b!2382838 b!2382834)))

(assert (=> bs!462004 (not (= lambda!88848 lambda!88847))))

(assert (=> bs!462003 (= lambda!88848 lambda!88811)))

(assert (=> b!2382838 true))

(assert (=> b!2382838 true))

(declare-fun e!1519665 () Bool)

(declare-fun call!144808 () Bool)

(assert (=> b!2382834 (= e!1519665 call!144808)))

(declare-fun b!2382835 () Bool)

(declare-fun e!1519660 () Bool)

(declare-fun e!1519661 () Bool)

(assert (=> b!2382835 (= e!1519660 e!1519661)))

(declare-fun res!1012037 () Bool)

(assert (=> b!2382835 (= res!1012037 (matchRSpec!834 (regOne!14483 r!13927) s!9460))))

(assert (=> b!2382835 (=> res!1012037 e!1519661)))

(declare-fun b!2382836 () Bool)

(declare-fun e!1519663 () Bool)

(declare-fun call!144809 () Bool)

(assert (=> b!2382836 (= e!1519663 call!144809)))

(declare-fun bm!144803 () Bool)

(assert (=> bm!144803 (= call!144809 (isEmpty!16066 s!9460))))

(declare-fun b!2382837 () Bool)

(declare-fun res!1012038 () Bool)

(assert (=> b!2382837 (=> res!1012038 e!1519665)))

(assert (=> b!2382837 (= res!1012038 call!144809)))

(declare-fun e!1519664 () Bool)

(assert (=> b!2382837 (= e!1519664 e!1519665)))

(assert (=> b!2382838 (= e!1519664 call!144808)))

(declare-fun d!696999 () Bool)

(declare-fun c!378864 () Bool)

(assert (=> d!696999 (= c!378864 ((_ is EmptyExpr!6985) r!13927))))

(assert (=> d!696999 (= (matchRSpec!834 r!13927 s!9460) e!1519663)))

(declare-fun b!2382839 () Bool)

(declare-fun c!378865 () Bool)

(assert (=> b!2382839 (= c!378865 ((_ is Union!6985) r!13927))))

(declare-fun e!1519659 () Bool)

(assert (=> b!2382839 (= e!1519659 e!1519660)))

(declare-fun bm!144804 () Bool)

(declare-fun c!378862 () Bool)

(assert (=> bm!144804 (= call!144808 (Exists!1047 (ite c!378862 lambda!88847 lambda!88848)))))

(declare-fun b!2382840 () Bool)

(declare-fun c!378863 () Bool)

(assert (=> b!2382840 (= c!378863 ((_ is ElementMatch!6985) r!13927))))

(declare-fun e!1519662 () Bool)

(assert (=> b!2382840 (= e!1519662 e!1519659)))

(declare-fun b!2382841 () Bool)

(assert (=> b!2382841 (= e!1519661 (matchRSpec!834 (regTwo!14483 r!13927) s!9460))))

(declare-fun b!2382842 () Bool)

(assert (=> b!2382842 (= e!1519660 e!1519664)))

(assert (=> b!2382842 (= c!378862 ((_ is Star!6985) r!13927))))

(declare-fun b!2382843 () Bool)

(assert (=> b!2382843 (= e!1519659 (= s!9460 (Cons!28110 (c!378765 r!13927) Nil!28110)))))

(declare-fun b!2382844 () Bool)

(assert (=> b!2382844 (= e!1519663 e!1519662)))

(declare-fun res!1012036 () Bool)

(assert (=> b!2382844 (= res!1012036 (not ((_ is EmptyLang!6985) r!13927)))))

(assert (=> b!2382844 (=> (not res!1012036) (not e!1519662))))

(assert (= (and d!696999 c!378864) b!2382836))

(assert (= (and d!696999 (not c!378864)) b!2382844))

(assert (= (and b!2382844 res!1012036) b!2382840))

(assert (= (and b!2382840 c!378863) b!2382843))

(assert (= (and b!2382840 (not c!378863)) b!2382839))

(assert (= (and b!2382839 c!378865) b!2382835))

(assert (= (and b!2382839 (not c!378865)) b!2382842))

(assert (= (and b!2382835 (not res!1012037)) b!2382841))

(assert (= (and b!2382842 c!378862) b!2382837))

(assert (= (and b!2382842 (not c!378862)) b!2382838))

(assert (= (and b!2382837 (not res!1012038)) b!2382834))

(assert (= (or b!2382834 b!2382838) bm!144804))

(assert (= (or b!2382836 b!2382837) bm!144803))

(declare-fun m!2786053 () Bool)

(assert (=> b!2382835 m!2786053))

(assert (=> bm!144803 m!2785869))

(declare-fun m!2786055 () Bool)

(assert (=> bm!144804 m!2786055))

(declare-fun m!2786057 () Bool)

(assert (=> b!2382841 m!2786057))

(assert (=> b!2382369 d!696999))

(declare-fun b!2382845 () Bool)

(declare-fun e!1519672 () Bool)

(declare-fun lt!868684 () Bool)

(assert (=> b!2382845 (= e!1519672 (not lt!868684))))

(declare-fun d!697001 () Bool)

(declare-fun e!1519671 () Bool)

(assert (=> d!697001 e!1519671))

(declare-fun c!378867 () Bool)

(assert (=> d!697001 (= c!378867 ((_ is EmptyExpr!6985) r!13927))))

(declare-fun e!1519669 () Bool)

(assert (=> d!697001 (= lt!868684 e!1519669)))

(declare-fun c!378868 () Bool)

(assert (=> d!697001 (= c!378868 (isEmpty!16066 s!9460))))

(assert (=> d!697001 (validRegex!2710 r!13927)))

(assert (=> d!697001 (= (matchR!3102 r!13927 s!9460) lt!868684)))

(declare-fun bm!144805 () Bool)

(declare-fun call!144810 () Bool)

(assert (=> bm!144805 (= call!144810 (isEmpty!16066 s!9460))))

(declare-fun b!2382846 () Bool)

(declare-fun e!1519668 () Bool)

(assert (=> b!2382846 (= e!1519668 (not (= (head!5204 s!9460) (c!378765 r!13927))))))

(declare-fun b!2382847 () Bool)

(declare-fun res!1012043 () Bool)

(declare-fun e!1519670 () Bool)

(assert (=> b!2382847 (=> res!1012043 e!1519670)))

(declare-fun e!1519666 () Bool)

(assert (=> b!2382847 (= res!1012043 e!1519666)))

(declare-fun res!1012039 () Bool)

(assert (=> b!2382847 (=> (not res!1012039) (not e!1519666))))

(assert (=> b!2382847 (= res!1012039 lt!868684)))

(declare-fun b!2382848 () Bool)

(declare-fun res!1012045 () Bool)

(assert (=> b!2382848 (=> (not res!1012045) (not e!1519666))))

(assert (=> b!2382848 (= res!1012045 (not call!144810))))

(declare-fun b!2382849 () Bool)

(declare-fun e!1519667 () Bool)

(assert (=> b!2382849 (= e!1519670 e!1519667)))

(declare-fun res!1012040 () Bool)

(assert (=> b!2382849 (=> (not res!1012040) (not e!1519667))))

(assert (=> b!2382849 (= res!1012040 (not lt!868684))))

(declare-fun b!2382850 () Bool)

(assert (=> b!2382850 (= e!1519667 e!1519668)))

(declare-fun res!1012046 () Bool)

(assert (=> b!2382850 (=> res!1012046 e!1519668)))

(assert (=> b!2382850 (= res!1012046 call!144810)))

(declare-fun b!2382851 () Bool)

(assert (=> b!2382851 (= e!1519669 (matchR!3102 (derivativeStep!1693 r!13927 (head!5204 s!9460)) (tail!3474 s!9460)))))

(declare-fun b!2382852 () Bool)

(assert (=> b!2382852 (= e!1519671 (= lt!868684 call!144810))))

(declare-fun b!2382853 () Bool)

(declare-fun res!1012041 () Bool)

(assert (=> b!2382853 (=> res!1012041 e!1519670)))

(assert (=> b!2382853 (= res!1012041 (not ((_ is ElementMatch!6985) r!13927)))))

(assert (=> b!2382853 (= e!1519672 e!1519670)))

(declare-fun b!2382854 () Bool)

(assert (=> b!2382854 (= e!1519671 e!1519672)))

(declare-fun c!378866 () Bool)

(assert (=> b!2382854 (= c!378866 ((_ is EmptyLang!6985) r!13927))))

(declare-fun b!2382855 () Bool)

(assert (=> b!2382855 (= e!1519669 (nullable!2035 r!13927))))

(declare-fun b!2382856 () Bool)

(declare-fun res!1012044 () Bool)

(assert (=> b!2382856 (=> (not res!1012044) (not e!1519666))))

(assert (=> b!2382856 (= res!1012044 (isEmpty!16066 (tail!3474 s!9460)))))

(declare-fun b!2382857 () Bool)

(declare-fun res!1012042 () Bool)

(assert (=> b!2382857 (=> res!1012042 e!1519668)))

(assert (=> b!2382857 (= res!1012042 (not (isEmpty!16066 (tail!3474 s!9460))))))

(declare-fun b!2382858 () Bool)

(assert (=> b!2382858 (= e!1519666 (= (head!5204 s!9460) (c!378765 r!13927)))))

(assert (= (and d!697001 c!378868) b!2382855))

(assert (= (and d!697001 (not c!378868)) b!2382851))

(assert (= (and d!697001 c!378867) b!2382852))

(assert (= (and d!697001 (not c!378867)) b!2382854))

(assert (= (and b!2382854 c!378866) b!2382845))

(assert (= (and b!2382854 (not c!378866)) b!2382853))

(assert (= (and b!2382853 (not res!1012041)) b!2382847))

(assert (= (and b!2382847 res!1012039) b!2382848))

(assert (= (and b!2382848 res!1012045) b!2382856))

(assert (= (and b!2382856 res!1012044) b!2382858))

(assert (= (and b!2382847 (not res!1012043)) b!2382849))

(assert (= (and b!2382849 res!1012040) b!2382850))

(assert (= (and b!2382850 (not res!1012046)) b!2382857))

(assert (= (and b!2382857 (not res!1012042)) b!2382846))

(assert (= (or b!2382852 b!2382848 b!2382850) bm!144805))

(assert (=> bm!144805 m!2785869))

(assert (=> d!697001 m!2785869))

(declare-fun m!2786059 () Bool)

(assert (=> d!697001 m!2786059))

(assert (=> b!2382846 m!2785871))

(assert (=> b!2382858 m!2785871))

(assert (=> b!2382856 m!2785873))

(assert (=> b!2382856 m!2785873))

(assert (=> b!2382856 m!2785875))

(assert (=> b!2382851 m!2785871))

(assert (=> b!2382851 m!2785871))

(declare-fun m!2786061 () Bool)

(assert (=> b!2382851 m!2786061))

(assert (=> b!2382851 m!2785873))

(assert (=> b!2382851 m!2786061))

(assert (=> b!2382851 m!2785873))

(declare-fun m!2786063 () Bool)

(assert (=> b!2382851 m!2786063))

(declare-fun m!2786065 () Bool)

(assert (=> b!2382855 m!2786065))

(assert (=> b!2382857 m!2785873))

(assert (=> b!2382857 m!2785873))

(assert (=> b!2382857 m!2785875))

(assert (=> b!2382369 d!697001))

(declare-fun d!697003 () Bool)

(assert (=> d!697003 (= (matchR!3102 r!13927 s!9460) (matchRSpec!834 r!13927 s!9460))))

(declare-fun lt!868687 () Unit!41045)

(declare-fun choose!13957 (Regex!6985 List!28208) Unit!41045)

(assert (=> d!697003 (= lt!868687 (choose!13957 r!13927 s!9460))))

(assert (=> d!697003 (validRegex!2710 r!13927)))

(assert (=> d!697003 (= (mainMatchTheorem!834 r!13927 s!9460) lt!868687)))

(declare-fun bs!462005 () Bool)

(assert (= bs!462005 d!697003))

(assert (=> bs!462005 m!2785713))

(assert (=> bs!462005 m!2785711))

(declare-fun m!2786067 () Bool)

(assert (=> bs!462005 m!2786067))

(assert (=> bs!462005 m!2786059))

(assert (=> b!2382369 d!697003))

(declare-fun b!2382859 () Bool)

(declare-fun e!1519679 () Bool)

(declare-fun lt!868688 () Bool)

(assert (=> b!2382859 (= e!1519679 (not lt!868688))))

(declare-fun d!697005 () Bool)

(declare-fun e!1519678 () Bool)

(assert (=> d!697005 e!1519678))

(declare-fun c!378870 () Bool)

(assert (=> d!697005 (= c!378870 ((_ is EmptyExpr!6985) (ite c!378764 lt!868600 (Concat!11621 lt!868594 EmptyExpr!6985))))))

(declare-fun e!1519676 () Bool)

(assert (=> d!697005 (= lt!868688 e!1519676)))

(declare-fun c!378871 () Bool)

(assert (=> d!697005 (= c!378871 (isEmpty!16066 (ite c!378764 s!9460 call!144788)))))

(assert (=> d!697005 (validRegex!2710 (ite c!378764 lt!868600 (Concat!11621 lt!868594 EmptyExpr!6985)))))

(assert (=> d!697005 (= (matchR!3102 (ite c!378764 lt!868600 (Concat!11621 lt!868594 EmptyExpr!6985)) (ite c!378764 s!9460 call!144788)) lt!868688)))

(declare-fun call!144811 () Bool)

(declare-fun bm!144806 () Bool)

(assert (=> bm!144806 (= call!144811 (isEmpty!16066 (ite c!378764 s!9460 call!144788)))))

(declare-fun b!2382860 () Bool)

(declare-fun e!1519675 () Bool)

(assert (=> b!2382860 (= e!1519675 (not (= (head!5204 (ite c!378764 s!9460 call!144788)) (c!378765 (ite c!378764 lt!868600 (Concat!11621 lt!868594 EmptyExpr!6985))))))))

(declare-fun b!2382861 () Bool)

(declare-fun res!1012051 () Bool)

(declare-fun e!1519677 () Bool)

(assert (=> b!2382861 (=> res!1012051 e!1519677)))

(declare-fun e!1519673 () Bool)

(assert (=> b!2382861 (= res!1012051 e!1519673)))

(declare-fun res!1012047 () Bool)

(assert (=> b!2382861 (=> (not res!1012047) (not e!1519673))))

(assert (=> b!2382861 (= res!1012047 lt!868688)))

(declare-fun b!2382862 () Bool)

(declare-fun res!1012053 () Bool)

(assert (=> b!2382862 (=> (not res!1012053) (not e!1519673))))

(assert (=> b!2382862 (= res!1012053 (not call!144811))))

(declare-fun b!2382863 () Bool)

(declare-fun e!1519674 () Bool)

(assert (=> b!2382863 (= e!1519677 e!1519674)))

(declare-fun res!1012048 () Bool)

(assert (=> b!2382863 (=> (not res!1012048) (not e!1519674))))

(assert (=> b!2382863 (= res!1012048 (not lt!868688))))

(declare-fun b!2382864 () Bool)

(assert (=> b!2382864 (= e!1519674 e!1519675)))

(declare-fun res!1012054 () Bool)

(assert (=> b!2382864 (=> res!1012054 e!1519675)))

(assert (=> b!2382864 (= res!1012054 call!144811)))

(declare-fun b!2382865 () Bool)

(assert (=> b!2382865 (= e!1519676 (matchR!3102 (derivativeStep!1693 (ite c!378764 lt!868600 (Concat!11621 lt!868594 EmptyExpr!6985)) (head!5204 (ite c!378764 s!9460 call!144788))) (tail!3474 (ite c!378764 s!9460 call!144788))))))

(declare-fun b!2382866 () Bool)

(assert (=> b!2382866 (= e!1519678 (= lt!868688 call!144811))))

(declare-fun b!2382867 () Bool)

(declare-fun res!1012049 () Bool)

(assert (=> b!2382867 (=> res!1012049 e!1519677)))

(assert (=> b!2382867 (= res!1012049 (not ((_ is ElementMatch!6985) (ite c!378764 lt!868600 (Concat!11621 lt!868594 EmptyExpr!6985)))))))

(assert (=> b!2382867 (= e!1519679 e!1519677)))

(declare-fun b!2382868 () Bool)

(assert (=> b!2382868 (= e!1519678 e!1519679)))

(declare-fun c!378869 () Bool)

(assert (=> b!2382868 (= c!378869 ((_ is EmptyLang!6985) (ite c!378764 lt!868600 (Concat!11621 lt!868594 EmptyExpr!6985))))))

(declare-fun b!2382869 () Bool)

(assert (=> b!2382869 (= e!1519676 (nullable!2035 (ite c!378764 lt!868600 (Concat!11621 lt!868594 EmptyExpr!6985))))))

(declare-fun b!2382870 () Bool)

(declare-fun res!1012052 () Bool)

(assert (=> b!2382870 (=> (not res!1012052) (not e!1519673))))

(assert (=> b!2382870 (= res!1012052 (isEmpty!16066 (tail!3474 (ite c!378764 s!9460 call!144788))))))

(declare-fun b!2382871 () Bool)

(declare-fun res!1012050 () Bool)

(assert (=> b!2382871 (=> res!1012050 e!1519675)))

(assert (=> b!2382871 (= res!1012050 (not (isEmpty!16066 (tail!3474 (ite c!378764 s!9460 call!144788)))))))

(declare-fun b!2382872 () Bool)

(assert (=> b!2382872 (= e!1519673 (= (head!5204 (ite c!378764 s!9460 call!144788)) (c!378765 (ite c!378764 lt!868600 (Concat!11621 lt!868594 EmptyExpr!6985)))))))

(assert (= (and d!697005 c!378871) b!2382869))

(assert (= (and d!697005 (not c!378871)) b!2382865))

(assert (= (and d!697005 c!378870) b!2382866))

(assert (= (and d!697005 (not c!378870)) b!2382868))

(assert (= (and b!2382868 c!378869) b!2382859))

(assert (= (and b!2382868 (not c!378869)) b!2382867))

(assert (= (and b!2382867 (not res!1012049)) b!2382861))

(assert (= (and b!2382861 res!1012047) b!2382862))

(assert (= (and b!2382862 res!1012053) b!2382870))

(assert (= (and b!2382870 res!1012052) b!2382872))

(assert (= (and b!2382861 (not res!1012051)) b!2382863))

(assert (= (and b!2382863 res!1012048) b!2382864))

(assert (= (and b!2382864 (not res!1012054)) b!2382871))

(assert (= (and b!2382871 (not res!1012050)) b!2382860))

(assert (= (or b!2382866 b!2382862 b!2382864) bm!144806))

(declare-fun m!2786069 () Bool)

(assert (=> bm!144806 m!2786069))

(assert (=> d!697005 m!2786069))

(declare-fun m!2786071 () Bool)

(assert (=> d!697005 m!2786071))

(declare-fun m!2786073 () Bool)

(assert (=> b!2382860 m!2786073))

(assert (=> b!2382872 m!2786073))

(declare-fun m!2786075 () Bool)

(assert (=> b!2382870 m!2786075))

(assert (=> b!2382870 m!2786075))

(declare-fun m!2786077 () Bool)

(assert (=> b!2382870 m!2786077))

(assert (=> b!2382865 m!2786073))

(assert (=> b!2382865 m!2786073))

(declare-fun m!2786079 () Bool)

(assert (=> b!2382865 m!2786079))

(assert (=> b!2382865 m!2786075))

(assert (=> b!2382865 m!2786079))

(assert (=> b!2382865 m!2786075))

(declare-fun m!2786081 () Bool)

(assert (=> b!2382865 m!2786081))

(declare-fun m!2786083 () Bool)

(assert (=> b!2382869 m!2786083))

(assert (=> b!2382871 m!2786075))

(assert (=> b!2382871 m!2786075))

(assert (=> b!2382871 m!2786077))

(assert (=> bm!144783 d!697005))

(declare-fun d!697007 () Bool)

(assert (=> d!697007 (= (isDefined!4356 (ite c!378764 call!144783 lt!868610)) (not (isEmpty!16067 (ite c!378764 call!144783 lt!868610))))))

(declare-fun bs!462006 () Bool)

(assert (= bs!462006 d!697007))

(declare-fun m!2786085 () Bool)

(assert (=> bs!462006 m!2786085))

(assert (=> bm!144778 d!697007))

(declare-fun d!697009 () Bool)

(assert (=> d!697009 (= (isEmpty!16063 lt!868593) ((_ is Nil!28111) lt!868593))))

(assert (=> b!2382361 d!697009))

(declare-fun d!697011 () Bool)

(assert (=> d!697011 (= (tail!3472 l!9164) (t!208186 l!9164))))

(assert (=> b!2382361 d!697011))

(declare-fun d!697013 () Bool)

(assert (=> d!697013 (matchR!3102 (Concat!11621 lt!868594 EmptyExpr!6985) (++!6940 s!9460 Nil!28110))))

(declare-fun lt!868691 () Unit!41045)

(declare-fun choose!13958 (Regex!6985 Regex!6985 List!28208 List!28208) Unit!41045)

(assert (=> d!697013 (= lt!868691 (choose!13958 lt!868594 EmptyExpr!6985 s!9460 Nil!28110))))

(declare-fun e!1519682 () Bool)

(assert (=> d!697013 e!1519682))

(declare-fun res!1012057 () Bool)

(assert (=> d!697013 (=> (not res!1012057) (not e!1519682))))

(assert (=> d!697013 (= res!1012057 (validRegex!2710 lt!868594))))

(assert (=> d!697013 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!34 lt!868594 EmptyExpr!6985 s!9460 Nil!28110) lt!868691)))

(declare-fun b!2382875 () Bool)

(assert (=> b!2382875 (= e!1519682 (validRegex!2710 EmptyExpr!6985))))

(assert (= (and d!697013 res!1012057) b!2382875))

(declare-fun m!2786087 () Bool)

(assert (=> d!697013 m!2786087))

(assert (=> d!697013 m!2786087))

(declare-fun m!2786089 () Bool)

(assert (=> d!697013 m!2786089))

(declare-fun m!2786091 () Bool)

(assert (=> d!697013 m!2786091))

(assert (=> d!697013 m!2785775))

(declare-fun m!2786093 () Bool)

(assert (=> b!2382875 m!2786093))

(assert (=> b!2382359 d!697013))

(declare-fun b!2382876 () Bool)

(declare-fun e!1519689 () Bool)

(declare-fun lt!868692 () Bool)

(assert (=> b!2382876 (= e!1519689 (not lt!868692))))

(declare-fun d!697015 () Bool)

(declare-fun e!1519688 () Bool)

(assert (=> d!697015 e!1519688))

(declare-fun c!378873 () Bool)

(assert (=> d!697015 (= c!378873 ((_ is EmptyExpr!6985) lt!868600))))

(declare-fun e!1519686 () Bool)

(assert (=> d!697015 (= lt!868692 e!1519686)))

(declare-fun c!378874 () Bool)

(assert (=> d!697015 (= c!378874 (isEmpty!16066 call!144788))))

(assert (=> d!697015 (validRegex!2710 lt!868600)))

(assert (=> d!697015 (= (matchR!3102 lt!868600 call!144788) lt!868692)))

(declare-fun bm!144807 () Bool)

(declare-fun call!144812 () Bool)

(assert (=> bm!144807 (= call!144812 (isEmpty!16066 call!144788))))

(declare-fun b!2382877 () Bool)

(declare-fun e!1519685 () Bool)

(assert (=> b!2382877 (= e!1519685 (not (= (head!5204 call!144788) (c!378765 lt!868600))))))

(declare-fun b!2382878 () Bool)

(declare-fun res!1012062 () Bool)

(declare-fun e!1519687 () Bool)

(assert (=> b!2382878 (=> res!1012062 e!1519687)))

(declare-fun e!1519683 () Bool)

(assert (=> b!2382878 (= res!1012062 e!1519683)))

(declare-fun res!1012058 () Bool)

(assert (=> b!2382878 (=> (not res!1012058) (not e!1519683))))

(assert (=> b!2382878 (= res!1012058 lt!868692)))

(declare-fun b!2382879 () Bool)

(declare-fun res!1012064 () Bool)

(assert (=> b!2382879 (=> (not res!1012064) (not e!1519683))))

(assert (=> b!2382879 (= res!1012064 (not call!144812))))

(declare-fun b!2382880 () Bool)

(declare-fun e!1519684 () Bool)

(assert (=> b!2382880 (= e!1519687 e!1519684)))

(declare-fun res!1012059 () Bool)

(assert (=> b!2382880 (=> (not res!1012059) (not e!1519684))))

(assert (=> b!2382880 (= res!1012059 (not lt!868692))))

(declare-fun b!2382881 () Bool)

(assert (=> b!2382881 (= e!1519684 e!1519685)))

(declare-fun res!1012065 () Bool)

(assert (=> b!2382881 (=> res!1012065 e!1519685)))

(assert (=> b!2382881 (= res!1012065 call!144812)))

(declare-fun b!2382882 () Bool)

(assert (=> b!2382882 (= e!1519686 (matchR!3102 (derivativeStep!1693 lt!868600 (head!5204 call!144788)) (tail!3474 call!144788)))))

(declare-fun b!2382883 () Bool)

(assert (=> b!2382883 (= e!1519688 (= lt!868692 call!144812))))

(declare-fun b!2382884 () Bool)

(declare-fun res!1012060 () Bool)

(assert (=> b!2382884 (=> res!1012060 e!1519687)))

(assert (=> b!2382884 (= res!1012060 (not ((_ is ElementMatch!6985) lt!868600)))))

(assert (=> b!2382884 (= e!1519689 e!1519687)))

(declare-fun b!2382885 () Bool)

(assert (=> b!2382885 (= e!1519688 e!1519689)))

(declare-fun c!378872 () Bool)

(assert (=> b!2382885 (= c!378872 ((_ is EmptyLang!6985) lt!868600))))

(declare-fun b!2382886 () Bool)

(assert (=> b!2382886 (= e!1519686 (nullable!2035 lt!868600))))

(declare-fun b!2382887 () Bool)

(declare-fun res!1012063 () Bool)

(assert (=> b!2382887 (=> (not res!1012063) (not e!1519683))))

(assert (=> b!2382887 (= res!1012063 (isEmpty!16066 (tail!3474 call!144788)))))

(declare-fun b!2382888 () Bool)

(declare-fun res!1012061 () Bool)

(assert (=> b!2382888 (=> res!1012061 e!1519685)))

(assert (=> b!2382888 (= res!1012061 (not (isEmpty!16066 (tail!3474 call!144788))))))

(declare-fun b!2382889 () Bool)

(assert (=> b!2382889 (= e!1519683 (= (head!5204 call!144788) (c!378765 lt!868600)))))

(assert (= (and d!697015 c!378874) b!2382886))

(assert (= (and d!697015 (not c!378874)) b!2382882))

(assert (= (and d!697015 c!378873) b!2382883))

(assert (= (and d!697015 (not c!378873)) b!2382885))

(assert (= (and b!2382885 c!378872) b!2382876))

(assert (= (and b!2382885 (not c!378872)) b!2382884))

(assert (= (and b!2382884 (not res!1012060)) b!2382878))

(assert (= (and b!2382878 res!1012058) b!2382879))

(assert (= (and b!2382879 res!1012064) b!2382887))

(assert (= (and b!2382887 res!1012063) b!2382889))

(assert (= (and b!2382878 (not res!1012062)) b!2382880))

(assert (= (and b!2382880 res!1012059) b!2382881))

(assert (= (and b!2382881 (not res!1012065)) b!2382888))

(assert (= (and b!2382888 (not res!1012061)) b!2382877))

(assert (= (or b!2382883 b!2382879 b!2382881) bm!144807))

(declare-fun m!2786095 () Bool)

(assert (=> bm!144807 m!2786095))

(assert (=> d!697015 m!2786095))

(declare-fun m!2786097 () Bool)

(assert (=> d!697015 m!2786097))

(declare-fun m!2786099 () Bool)

(assert (=> b!2382877 m!2786099))

(assert (=> b!2382889 m!2786099))

(declare-fun m!2786101 () Bool)

(assert (=> b!2382887 m!2786101))

(assert (=> b!2382887 m!2786101))

(declare-fun m!2786103 () Bool)

(assert (=> b!2382887 m!2786103))

(assert (=> b!2382882 m!2786099))

(assert (=> b!2382882 m!2786099))

(declare-fun m!2786105 () Bool)

(assert (=> b!2382882 m!2786105))

(assert (=> b!2382882 m!2786101))

(assert (=> b!2382882 m!2786105))

(assert (=> b!2382882 m!2786101))

(declare-fun m!2786107 () Bool)

(assert (=> b!2382882 m!2786107))

(declare-fun m!2786109 () Bool)

(assert (=> b!2382886 m!2786109))

(assert (=> b!2382888 m!2786101))

(assert (=> b!2382888 m!2786101))

(assert (=> b!2382888 m!2786103))

(assert (=> b!2382359 d!697015))

(declare-fun d!697017 () Bool)

(assert (=> d!697017 (isDefined!4356 (findConcatSeparation!636 lt!868594 EmptyExpr!6985 Nil!28110 s!9460 s!9460))))

(declare-fun lt!868695 () Unit!41045)

(declare-fun choose!13959 (Regex!6985 Regex!6985 List!28208) Unit!41045)

(assert (=> d!697017 (= lt!868695 (choose!13959 lt!868594 EmptyExpr!6985 s!9460))))

(assert (=> d!697017 (validRegex!2710 lt!868594)))

(assert (=> d!697017 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!16 lt!868594 EmptyExpr!6985 s!9460) lt!868695)))

(declare-fun bs!462007 () Bool)

(assert (= bs!462007 d!697017))

(declare-fun m!2786111 () Bool)

(assert (=> bs!462007 m!2786111))

(assert (=> bs!462007 m!2786111))

(declare-fun m!2786113 () Bool)

(assert (=> bs!462007 m!2786113))

(declare-fun m!2786115 () Bool)

(assert (=> bs!462007 m!2786115))

(assert (=> bs!462007 m!2785775))

(assert (=> b!2382359 d!697017))

(declare-fun b!2382890 () Bool)

(declare-fun res!1012069 () Bool)

(declare-fun e!1519690 () Bool)

(assert (=> b!2382890 (=> (not res!1012069) (not e!1519690))))

(declare-fun lt!868697 () Option!5528)

(assert (=> b!2382890 (= res!1012069 (matchR!3102 (ite c!378764 EmptyExpr!6985 lt!868607) (_2!16458 (get!8576 lt!868697))))))

(declare-fun b!2382891 () Bool)

(declare-fun res!1012067 () Bool)

(assert (=> b!2382891 (=> (not res!1012067) (not e!1519690))))

(assert (=> b!2382891 (= res!1012067 (matchR!3102 lt!868594 (_1!16458 (get!8576 lt!868697))))))

(declare-fun d!697019 () Bool)

(declare-fun e!1519691 () Bool)

(assert (=> d!697019 e!1519691))

(declare-fun res!1012068 () Bool)

(assert (=> d!697019 (=> res!1012068 e!1519691)))

(assert (=> d!697019 (= res!1012068 e!1519690)))

(declare-fun res!1012070 () Bool)

(assert (=> d!697019 (=> (not res!1012070) (not e!1519690))))

(assert (=> d!697019 (= res!1012070 (isDefined!4356 lt!868697))))

(declare-fun e!1519693 () Option!5528)

(assert (=> d!697019 (= lt!868697 e!1519693)))

(declare-fun c!378875 () Bool)

(declare-fun e!1519692 () Bool)

(assert (=> d!697019 (= c!378875 e!1519692)))

(declare-fun res!1012066 () Bool)

(assert (=> d!697019 (=> (not res!1012066) (not e!1519692))))

(assert (=> d!697019 (= res!1012066 (matchR!3102 lt!868594 Nil!28110))))

(assert (=> d!697019 (validRegex!2710 lt!868594)))

(assert (=> d!697019 (= (findConcatSeparation!636 lt!868594 (ite c!378764 EmptyExpr!6985 lt!868607) Nil!28110 s!9460 s!9460) lt!868697)))

(declare-fun b!2382892 () Bool)

(assert (=> b!2382892 (= e!1519692 (matchR!3102 (ite c!378764 EmptyExpr!6985 lt!868607) s!9460))))

(declare-fun b!2382893 () Bool)

(assert (=> b!2382893 (= e!1519690 (= (++!6940 (_1!16458 (get!8576 lt!868697)) (_2!16458 (get!8576 lt!868697))) s!9460))))

(declare-fun b!2382894 () Bool)

(assert (=> b!2382894 (= e!1519691 (not (isDefined!4356 lt!868697)))))

(declare-fun b!2382895 () Bool)

(declare-fun lt!868698 () Unit!41045)

(declare-fun lt!868696 () Unit!41045)

(assert (=> b!2382895 (= lt!868698 lt!868696)))

(assert (=> b!2382895 (= (++!6940 (++!6940 Nil!28110 (Cons!28110 (h!33511 s!9460) Nil!28110)) (t!208185 s!9460)) s!9460)))

(assert (=> b!2382895 (= lt!868696 (lemmaMoveElementToOtherListKeepsConcatEq!582 Nil!28110 (h!33511 s!9460) (t!208185 s!9460) s!9460))))

(declare-fun e!1519694 () Option!5528)

(assert (=> b!2382895 (= e!1519694 (findConcatSeparation!636 lt!868594 (ite c!378764 EmptyExpr!6985 lt!868607) (++!6940 Nil!28110 (Cons!28110 (h!33511 s!9460) Nil!28110)) (t!208185 s!9460) s!9460))))

(declare-fun b!2382896 () Bool)

(assert (=> b!2382896 (= e!1519694 None!5527)))

(declare-fun b!2382897 () Bool)

(assert (=> b!2382897 (= e!1519693 e!1519694)))

(declare-fun c!378876 () Bool)

(assert (=> b!2382897 (= c!378876 ((_ is Nil!28110) s!9460))))

(declare-fun b!2382898 () Bool)

(assert (=> b!2382898 (= e!1519693 (Some!5527 (tuple2!27835 Nil!28110 s!9460)))))

(assert (= (and d!697019 res!1012066) b!2382892))

(assert (= (and d!697019 c!378875) b!2382898))

(assert (= (and d!697019 (not c!378875)) b!2382897))

(assert (= (and b!2382897 c!378876) b!2382896))

(assert (= (and b!2382897 (not c!378876)) b!2382895))

(assert (= (and d!697019 res!1012070) b!2382891))

(assert (= (and b!2382891 res!1012067) b!2382890))

(assert (= (and b!2382890 res!1012069) b!2382893))

(assert (= (and d!697019 (not res!1012068)) b!2382894))

(declare-fun m!2786117 () Bool)

(assert (=> b!2382892 m!2786117))

(declare-fun m!2786119 () Bool)

(assert (=> b!2382890 m!2786119))

(declare-fun m!2786121 () Bool)

(assert (=> b!2382890 m!2786121))

(assert (=> b!2382891 m!2786119))

(declare-fun m!2786123 () Bool)

(assert (=> b!2382891 m!2786123))

(declare-fun m!2786125 () Bool)

(assert (=> d!697019 m!2786125))

(assert (=> d!697019 m!2786047))

(assert (=> d!697019 m!2785775))

(assert (=> b!2382894 m!2786125))

(assert (=> b!2382895 m!2786025))

(assert (=> b!2382895 m!2786025))

(assert (=> b!2382895 m!2786027))

(assert (=> b!2382895 m!2786029))

(assert (=> b!2382895 m!2786025))

(declare-fun m!2786127 () Bool)

(assert (=> b!2382895 m!2786127))

(assert (=> b!2382893 m!2786119))

(declare-fun m!2786129 () Bool)

(assert (=> b!2382893 m!2786129))

(assert (=> bm!144782 d!697019))

(declare-fun bs!462008 () Bool)

(declare-fun d!697021 () Bool)

(assert (= bs!462008 (and d!697021 start!233768)))

(declare-fun lambda!88849 () Int)

(assert (=> bs!462008 (= lambda!88849 lambda!88809)))

(declare-fun bs!462009 () Bool)

(assert (= bs!462009 (and d!697021 d!696929)))

(assert (=> bs!462009 (= lambda!88849 lambda!88817)))

(declare-fun b!2382899 () Bool)

(declare-fun e!1519700 () Bool)

(declare-fun lt!868699 () Regex!6985)

(assert (=> b!2382899 (= e!1519700 (isEmptyExpr!55 lt!868699))))

(declare-fun b!2382900 () Bool)

(declare-fun e!1519699 () Bool)

(assert (=> b!2382900 (= e!1519699 e!1519700)))

(declare-fun c!378878 () Bool)

(assert (=> b!2382900 (= c!378878 (isEmpty!16063 l!9164))))

(assert (=> d!697021 e!1519699))

(declare-fun res!1012072 () Bool)

(assert (=> d!697021 (=> (not res!1012072) (not e!1519699))))

(assert (=> d!697021 (= res!1012072 (validRegex!2710 lt!868699))))

(declare-fun e!1519698 () Regex!6985)

(assert (=> d!697021 (= lt!868699 e!1519698)))

(declare-fun c!378877 () Bool)

(declare-fun e!1519696 () Bool)

(assert (=> d!697021 (= c!378877 e!1519696)))

(declare-fun res!1012071 () Bool)

(assert (=> d!697021 (=> (not res!1012071) (not e!1519696))))

(assert (=> d!697021 (= res!1012071 ((_ is Cons!28111) l!9164))))

(assert (=> d!697021 (forall!5619 l!9164 lambda!88849)))

(assert (=> d!697021 (= (generalisedConcat!86 l!9164) lt!868699)))

(declare-fun b!2382901 () Bool)

(declare-fun e!1519697 () Regex!6985)

(assert (=> b!2382901 (= e!1519698 e!1519697)))

(declare-fun c!378879 () Bool)

(assert (=> b!2382901 (= c!378879 ((_ is Cons!28111) l!9164))))

(declare-fun b!2382902 () Bool)

(assert (=> b!2382902 (= e!1519697 EmptyExpr!6985)))

(declare-fun b!2382903 () Bool)

(declare-fun e!1519695 () Bool)

(assert (=> b!2382903 (= e!1519695 (= lt!868699 (head!5202 l!9164)))))

(declare-fun b!2382904 () Bool)

(assert (=> b!2382904 (= e!1519700 e!1519695)))

(declare-fun c!378880 () Bool)

(assert (=> b!2382904 (= c!378880 (isEmpty!16063 (tail!3472 l!9164)))))

(declare-fun b!2382905 () Bool)

(assert (=> b!2382905 (= e!1519696 (isEmpty!16063 (t!208186 l!9164)))))

(declare-fun b!2382906 () Bool)

(assert (=> b!2382906 (= e!1519698 (h!33512 l!9164))))

(declare-fun b!2382907 () Bool)

(assert (=> b!2382907 (= e!1519695 (isConcat!55 lt!868699))))

(declare-fun b!2382908 () Bool)

(assert (=> b!2382908 (= e!1519697 (Concat!11621 (h!33512 l!9164) (generalisedConcat!86 (t!208186 l!9164))))))

(assert (= (and d!697021 res!1012071) b!2382905))

(assert (= (and d!697021 c!378877) b!2382906))

(assert (= (and d!697021 (not c!378877)) b!2382901))

(assert (= (and b!2382901 c!378879) b!2382908))

(assert (= (and b!2382901 (not c!378879)) b!2382902))

(assert (= (and d!697021 res!1012072) b!2382900))

(assert (= (and b!2382900 c!378878) b!2382899))

(assert (= (and b!2382900 (not c!378878)) b!2382904))

(assert (= (and b!2382904 c!378880) b!2382903))

(assert (= (and b!2382904 (not c!378880)) b!2382907))

(assert (=> b!2382900 m!2785679))

(declare-fun m!2786131 () Bool)

(assert (=> b!2382899 m!2786131))

(declare-fun m!2786133 () Bool)

(assert (=> d!697021 m!2786133))

(declare-fun m!2786135 () Bool)

(assert (=> d!697021 m!2786135))

(declare-fun m!2786137 () Bool)

(assert (=> b!2382905 m!2786137))

(assert (=> b!2382904 m!2785701))

(assert (=> b!2382904 m!2785701))

(declare-fun m!2786139 () Bool)

(assert (=> b!2382904 m!2786139))

(assert (=> b!2382903 m!2785709))

(declare-fun m!2786141 () Bool)

(assert (=> b!2382907 m!2786141))

(declare-fun m!2786143 () Bool)

(assert (=> b!2382908 m!2786143))

(assert (=> b!2382365 d!697021))

(declare-fun d!697023 () Bool)

(assert (=> d!697023 (= (isEmpty!16063 l!9164) ((_ is Nil!28111) l!9164))))

(assert (=> b!2382375 d!697023))

(declare-fun d!697025 () Bool)

(assert (=> d!697025 (= (isDefined!4356 call!144784) (not (isEmpty!16067 call!144784)))))

(declare-fun bs!462010 () Bool)

(assert (= bs!462010 d!697025))

(declare-fun m!2786145 () Bool)

(assert (=> bs!462010 m!2786145))

(assert (=> bm!144781 d!697025))

(declare-fun e!1519706 () Bool)

(declare-fun b!2382920 () Bool)

(declare-fun lt!868702 () List!28208)

(assert (=> b!2382920 (= e!1519706 (or (not (= (ite c!378764 Nil!28110 (_2!16458 lt!868598)) Nil!28110)) (= lt!868702 (ite c!378764 s!9460 (_1!16458 lt!868598)))))))

(declare-fun b!2382917 () Bool)

(declare-fun e!1519705 () List!28208)

(assert (=> b!2382917 (= e!1519705 (ite c!378764 Nil!28110 (_2!16458 lt!868598)))))

(declare-fun d!697027 () Bool)

(assert (=> d!697027 e!1519706))

(declare-fun res!1012078 () Bool)

(assert (=> d!697027 (=> (not res!1012078) (not e!1519706))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3834 (List!28208) (InoxSet C!14128))

(assert (=> d!697027 (= res!1012078 (= (content!3834 lt!868702) ((_ map or) (content!3834 (ite c!378764 s!9460 (_1!16458 lt!868598))) (content!3834 (ite c!378764 Nil!28110 (_2!16458 lt!868598))))))))

(assert (=> d!697027 (= lt!868702 e!1519705)))

(declare-fun c!378883 () Bool)

(assert (=> d!697027 (= c!378883 ((_ is Nil!28110) (ite c!378764 s!9460 (_1!16458 lt!868598))))))

(assert (=> d!697027 (= (++!6940 (ite c!378764 s!9460 (_1!16458 lt!868598)) (ite c!378764 Nil!28110 (_2!16458 lt!868598))) lt!868702)))

(declare-fun b!2382918 () Bool)

(assert (=> b!2382918 (= e!1519705 (Cons!28110 (h!33511 (ite c!378764 s!9460 (_1!16458 lt!868598))) (++!6940 (t!208185 (ite c!378764 s!9460 (_1!16458 lt!868598))) (ite c!378764 Nil!28110 (_2!16458 lt!868598)))))))

(declare-fun b!2382919 () Bool)

(declare-fun res!1012077 () Bool)

(assert (=> b!2382919 (=> (not res!1012077) (not e!1519706))))

(declare-fun size!22172 (List!28208) Int)

(assert (=> b!2382919 (= res!1012077 (= (size!22172 lt!868702) (+ (size!22172 (ite c!378764 s!9460 (_1!16458 lt!868598))) (size!22172 (ite c!378764 Nil!28110 (_2!16458 lt!868598))))))))

(assert (= (and d!697027 c!378883) b!2382917))

(assert (= (and d!697027 (not c!378883)) b!2382918))

(assert (= (and d!697027 res!1012078) b!2382919))

(assert (= (and b!2382919 res!1012077) b!2382920))

(declare-fun m!2786147 () Bool)

(assert (=> d!697027 m!2786147))

(declare-fun m!2786149 () Bool)

(assert (=> d!697027 m!2786149))

(declare-fun m!2786151 () Bool)

(assert (=> d!697027 m!2786151))

(declare-fun m!2786153 () Bool)

(assert (=> b!2382918 m!2786153))

(declare-fun m!2786155 () Bool)

(assert (=> b!2382919 m!2786155))

(declare-fun m!2786157 () Bool)

(assert (=> b!2382919 m!2786157))

(declare-fun m!2786159 () Bool)

(assert (=> b!2382919 m!2786159))

(assert (=> bm!144780 d!697027))

(declare-fun b!2382925 () Bool)

(declare-fun e!1519709 () Bool)

(declare-fun tp!760395 () Bool)

(assert (=> b!2382925 (= e!1519709 (and tp_is_empty!11383 tp!760395))))

(assert (=> b!2382366 (= tp!760338 e!1519709)))

(assert (= (and b!2382366 ((_ is Cons!28110) (t!208185 s!9460))) b!2382925))

(declare-fun b!2382937 () Bool)

(declare-fun e!1519712 () Bool)

(declare-fun tp!760407 () Bool)

(declare-fun tp!760410 () Bool)

(assert (=> b!2382937 (= e!1519712 (and tp!760407 tp!760410))))

(declare-fun b!2382939 () Bool)

(declare-fun tp!760406 () Bool)

(declare-fun tp!760409 () Bool)

(assert (=> b!2382939 (= e!1519712 (and tp!760406 tp!760409))))

(assert (=> b!2382371 (= tp!760342 e!1519712)))

(declare-fun b!2382936 () Bool)

(assert (=> b!2382936 (= e!1519712 tp_is_empty!11383)))

(declare-fun b!2382938 () Bool)

(declare-fun tp!760408 () Bool)

(assert (=> b!2382938 (= e!1519712 tp!760408)))

(assert (= (and b!2382371 ((_ is ElementMatch!6985) (regOne!14482 r!13927))) b!2382936))

(assert (= (and b!2382371 ((_ is Concat!11621) (regOne!14482 r!13927))) b!2382937))

(assert (= (and b!2382371 ((_ is Star!6985) (regOne!14482 r!13927))) b!2382938))

(assert (= (and b!2382371 ((_ is Union!6985) (regOne!14482 r!13927))) b!2382939))

(declare-fun b!2382941 () Bool)

(declare-fun e!1519713 () Bool)

(declare-fun tp!760412 () Bool)

(declare-fun tp!760415 () Bool)

(assert (=> b!2382941 (= e!1519713 (and tp!760412 tp!760415))))

(declare-fun b!2382943 () Bool)

(declare-fun tp!760411 () Bool)

(declare-fun tp!760414 () Bool)

(assert (=> b!2382943 (= e!1519713 (and tp!760411 tp!760414))))

(assert (=> b!2382371 (= tp!760340 e!1519713)))

(declare-fun b!2382940 () Bool)

(assert (=> b!2382940 (= e!1519713 tp_is_empty!11383)))

(declare-fun b!2382942 () Bool)

(declare-fun tp!760413 () Bool)

(assert (=> b!2382942 (= e!1519713 tp!760413)))

(assert (= (and b!2382371 ((_ is ElementMatch!6985) (regTwo!14482 r!13927))) b!2382940))

(assert (= (and b!2382371 ((_ is Concat!11621) (regTwo!14482 r!13927))) b!2382941))

(assert (= (and b!2382371 ((_ is Star!6985) (regTwo!14482 r!13927))) b!2382942))

(assert (= (and b!2382371 ((_ is Union!6985) (regTwo!14482 r!13927))) b!2382943))

(declare-fun b!2382945 () Bool)

(declare-fun e!1519714 () Bool)

(declare-fun tp!760417 () Bool)

(declare-fun tp!760420 () Bool)

(assert (=> b!2382945 (= e!1519714 (and tp!760417 tp!760420))))

(declare-fun b!2382947 () Bool)

(declare-fun tp!760416 () Bool)

(declare-fun tp!760419 () Bool)

(assert (=> b!2382947 (= e!1519714 (and tp!760416 tp!760419))))

(assert (=> b!2382370 (= tp!760343 e!1519714)))

(declare-fun b!2382944 () Bool)

(assert (=> b!2382944 (= e!1519714 tp_is_empty!11383)))

(declare-fun b!2382946 () Bool)

(declare-fun tp!760418 () Bool)

(assert (=> b!2382946 (= e!1519714 tp!760418)))

(assert (= (and b!2382370 ((_ is ElementMatch!6985) (reg!7314 r!13927))) b!2382944))

(assert (= (and b!2382370 ((_ is Concat!11621) (reg!7314 r!13927))) b!2382945))

(assert (= (and b!2382370 ((_ is Star!6985) (reg!7314 r!13927))) b!2382946))

(assert (= (and b!2382370 ((_ is Union!6985) (reg!7314 r!13927))) b!2382947))

(declare-fun b!2382949 () Bool)

(declare-fun e!1519715 () Bool)

(declare-fun tp!760422 () Bool)

(declare-fun tp!760425 () Bool)

(assert (=> b!2382949 (= e!1519715 (and tp!760422 tp!760425))))

(declare-fun b!2382951 () Bool)

(declare-fun tp!760421 () Bool)

(declare-fun tp!760424 () Bool)

(assert (=> b!2382951 (= e!1519715 (and tp!760421 tp!760424))))

(assert (=> b!2382374 (= tp!760336 e!1519715)))

(declare-fun b!2382948 () Bool)

(assert (=> b!2382948 (= e!1519715 tp_is_empty!11383)))

(declare-fun b!2382950 () Bool)

(declare-fun tp!760423 () Bool)

(assert (=> b!2382950 (= e!1519715 tp!760423)))

(assert (= (and b!2382374 ((_ is ElementMatch!6985) (h!33512 l!9164))) b!2382948))

(assert (= (and b!2382374 ((_ is Concat!11621) (h!33512 l!9164))) b!2382949))

(assert (= (and b!2382374 ((_ is Star!6985) (h!33512 l!9164))) b!2382950))

(assert (= (and b!2382374 ((_ is Union!6985) (h!33512 l!9164))) b!2382951))

(declare-fun b!2382956 () Bool)

(declare-fun e!1519718 () Bool)

(declare-fun tp!760430 () Bool)

(declare-fun tp!760431 () Bool)

(assert (=> b!2382956 (= e!1519718 (and tp!760430 tp!760431))))

(assert (=> b!2382374 (= tp!760337 e!1519718)))

(assert (= (and b!2382374 ((_ is Cons!28111) (t!208186 l!9164))) b!2382956))

(declare-fun b!2382958 () Bool)

(declare-fun e!1519719 () Bool)

(declare-fun tp!760433 () Bool)

(declare-fun tp!760436 () Bool)

(assert (=> b!2382958 (= e!1519719 (and tp!760433 tp!760436))))

(declare-fun b!2382960 () Bool)

(declare-fun tp!760432 () Bool)

(declare-fun tp!760435 () Bool)

(assert (=> b!2382960 (= e!1519719 (and tp!760432 tp!760435))))

(assert (=> b!2382358 (= tp!760339 e!1519719)))

(declare-fun b!2382957 () Bool)

(assert (=> b!2382957 (= e!1519719 tp_is_empty!11383)))

(declare-fun b!2382959 () Bool)

(declare-fun tp!760434 () Bool)

(assert (=> b!2382959 (= e!1519719 tp!760434)))

(assert (= (and b!2382358 ((_ is ElementMatch!6985) (regOne!14483 r!13927))) b!2382957))

(assert (= (and b!2382358 ((_ is Concat!11621) (regOne!14483 r!13927))) b!2382958))

(assert (= (and b!2382358 ((_ is Star!6985) (regOne!14483 r!13927))) b!2382959))

(assert (= (and b!2382358 ((_ is Union!6985) (regOne!14483 r!13927))) b!2382960))

(declare-fun b!2382962 () Bool)

(declare-fun e!1519720 () Bool)

(declare-fun tp!760438 () Bool)

(declare-fun tp!760441 () Bool)

(assert (=> b!2382962 (= e!1519720 (and tp!760438 tp!760441))))

(declare-fun b!2382964 () Bool)

(declare-fun tp!760437 () Bool)

(declare-fun tp!760440 () Bool)

(assert (=> b!2382964 (= e!1519720 (and tp!760437 tp!760440))))

(assert (=> b!2382358 (= tp!760341 e!1519720)))

(declare-fun b!2382961 () Bool)

(assert (=> b!2382961 (= e!1519720 tp_is_empty!11383)))

(declare-fun b!2382963 () Bool)

(declare-fun tp!760439 () Bool)

(assert (=> b!2382963 (= e!1519720 tp!760439)))

(assert (= (and b!2382358 ((_ is ElementMatch!6985) (regTwo!14483 r!13927))) b!2382961))

(assert (= (and b!2382358 ((_ is Concat!11621) (regTwo!14483 r!13927))) b!2382962))

(assert (= (and b!2382358 ((_ is Star!6985) (regTwo!14483 r!13927))) b!2382963))

(assert (= (and b!2382358 ((_ is Union!6985) (regTwo!14483 r!13927))) b!2382964))

(declare-fun b_lambda!74087 () Bool)

(assert (= b_lambda!74075 (or start!233768 b_lambda!74087)))

(declare-fun bs!462011 () Bool)

(declare-fun d!697029 () Bool)

(assert (= bs!462011 (and d!697029 start!233768)))

(assert (=> bs!462011 (= (dynLambda!12102 lambda!88809 (h!33512 l!9164)) (validRegex!2710 (h!33512 l!9164)))))

(declare-fun m!2786161 () Bool)

(assert (=> bs!462011 m!2786161))

(assert (=> b!2382387 d!697029))

(declare-fun b_lambda!74089 () Bool)

(assert (= b_lambda!74079 (or start!233768 b_lambda!74089)))

(declare-fun bs!462012 () Bool)

(declare-fun d!697031 () Bool)

(assert (= bs!462012 (and d!697031 start!233768)))

(assert (=> bs!462012 (= (dynLambda!12102 lambda!88809 (h!33512 lt!868593)) (validRegex!2710 (h!33512 lt!868593)))))

(declare-fun m!2786163 () Bool)

(assert (=> bs!462012 m!2786163))

(assert (=> b!2382497 d!697031))

(check-sat (not b!2382786) (not b!2382563) (not d!696961) (not b!2382875) (not b!2382488) (not bm!144790) (not b!2382572) (not b!2382964) (not b!2382498) (not b!2382888) (not b!2382871) (not b!2382895) (not b!2382568) (not b!2382788) (not b!2382495) (not b!2382492) (not b!2382496) (not b!2382794) (not b!2382947) (not b!2382943) (not d!697007) (not b!2382890) (not d!697027) (not b!2382870) (not d!697025) (not b!2382963) (not b!2382789) (not b!2382925) (not b!2382889) (not b!2382962) (not d!696917) (not b!2382960) (not b!2382869) (not bs!462011) (not b!2382877) (not b!2382856) (not b!2382860) (not b!2382573) (not b!2382785) (not b!2382899) (not b!2382919) tp_is_empty!11383 (not b!2382886) (not d!697019) (not b!2382900) (not b!2382846) (not b!2382487) (not b!2382904) (not b!2382793) (not b!2382894) (not bm!144807) (not b!2382574) (not b!2382918) (not bm!144804) (not d!696997) (not b!2382388) (not b!2382950) (not b!2382893) (not b!2382903) (not b!2382942) (not d!697017) (not d!696969) (not bm!144806) (not b!2382493) (not b!2382841) (not b!2382951) (not b!2382796) (not b!2382941) (not b!2382798) (not b!2382491) (not b!2382855) (not b!2382795) (not b!2382858) (not b!2382891) (not b!2382797) (not bs!462012) (not d!697021) (not b!2382882) (not b!2382905) (not b_lambda!74087) (not b!2382937) (not b!2382949) (not bm!144805) (not d!697001) (not d!697015) (not b!2382956) (not b!2382946) (not d!696957) (not d!696929) (not b!2382958) (not b!2382945) (not d!697003) (not d!696995) (not b!2382784) (not b!2382959) (not b!2382887) (not b!2382865) (not d!696993) (not b!2382851) (not b!2382938) (not d!696955) (not b!2382907) (not b!2382575) (not d!696943) (not d!697005) (not b!2382892) (not b!2382908) (not bm!144803) (not b!2382857) (not b!2382939) (not d!697013) (not b_lambda!74089) (not b!2382835) (not b!2382872) (not b!2382787))
(check-sat)
