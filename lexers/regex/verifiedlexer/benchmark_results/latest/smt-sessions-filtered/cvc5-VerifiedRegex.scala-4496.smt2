; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!238992 () Bool)

(assert start!238992)

(declare-fun b!2445270 () Bool)

(assert (=> b!2445270 true))

(assert (=> b!2445270 true))

(declare-fun lambda!92562 () Int)

(declare-fun lambda!92561 () Int)

(assert (=> b!2445270 (not (= lambda!92562 lambda!92561))))

(assert (=> b!2445270 true))

(assert (=> b!2445270 true))

(declare-fun b!2445261 () Bool)

(declare-fun e!1552939 () Bool)

(declare-fun tp!776871 () Bool)

(declare-fun tp!776873 () Bool)

(assert (=> b!2445261 (= e!1552939 (and tp!776871 tp!776873))))

(declare-fun b!2445262 () Bool)

(declare-fun e!1552937 () Bool)

(declare-fun tp_is_empty!11781 () Bool)

(assert (=> b!2445262 (= e!1552937 tp_is_empty!11781)))

(declare-fun b!2445263 () Bool)

(declare-fun tp!776870 () Bool)

(declare-fun tp!776876 () Bool)

(assert (=> b!2445263 (= e!1552937 (and tp!776870 tp!776876))))

(declare-fun res!1037710 () Bool)

(declare-fun e!1552943 () Bool)

(assert (=> start!238992 (=> (not res!1037710) (not e!1552943))))

(declare-datatypes ((C!14526 0))(
  ( (C!14527 (val!8505 Int)) )
))
(declare-datatypes ((Regex!7184 0))(
  ( (ElementMatch!7184 (c!390196 C!14526)) (Concat!11820 (regOne!14880 Regex!7184) (regTwo!14880 Regex!7184)) (EmptyExpr!7184) (Star!7184 (reg!7513 Regex!7184)) (EmptyLang!7184) (Union!7184 (regOne!14881 Regex!7184) (regTwo!14881 Regex!7184)) )
))
(declare-datatypes ((List!28604 0))(
  ( (Nil!28506) (Cons!28506 (h!33907 Regex!7184) (t!208581 List!28604)) )
))
(declare-fun l!9164 () List!28604)

(declare-fun lambda!92560 () Int)

(declare-fun forall!5818 (List!28604 Int) Bool)

(assert (=> start!238992 (= res!1037710 (forall!5818 l!9164 lambda!92560))))

(assert (=> start!238992 e!1552943))

(assert (=> start!238992 e!1552939))

(assert (=> start!238992 e!1552937))

(declare-fun e!1552942 () Bool)

(assert (=> start!238992 e!1552942))

(declare-datatypes ((List!28605 0))(
  ( (Nil!28507) (Cons!28507 (h!33908 C!14526) (t!208582 List!28605)) )
))
(declare-fun s!9460 () List!28605)

(declare-fun lt!878889 () List!28604)

(declare-fun b!2445264 () Bool)

(declare-fun e!1552941 () Bool)

(declare-fun lt!878892 () Bool)

(declare-datatypes ((tuple2!28124 0))(
  ( (tuple2!28125 (_1!16603 List!28605) (_2!16603 List!28605)) )
))
(declare-datatypes ((Option!5673 0))(
  ( (None!5672) (Some!5672 (v!31080 tuple2!28124)) )
))
(declare-fun isDefined!4499 (Option!5673) Bool)

(declare-fun findConcatSeparation!781 (Regex!7184 Regex!7184 List!28605 List!28605 List!28605) Option!5673)

(declare-fun head!5554 (List!28604) Regex!7184)

(declare-fun generalisedConcat!285 (List!28604) Regex!7184)

(assert (=> b!2445264 (= e!1552941 (= lt!878892 (isDefined!4499 (findConcatSeparation!781 (head!5554 l!9164) (generalisedConcat!285 lt!878889) Nil!28507 s!9460 s!9460))))))

(declare-fun b!2445265 () Bool)

(declare-fun tp!776874 () Bool)

(assert (=> b!2445265 (= e!1552942 (and tp_is_empty!11781 tp!776874))))

(declare-fun b!2445266 () Bool)

(declare-fun e!1552940 () Bool)

(assert (=> b!2445266 (= e!1552940 e!1552941)))

(declare-fun res!1037709 () Bool)

(assert (=> b!2445266 (=> res!1037709 e!1552941)))

(declare-fun isEmpty!16546 (List!28604) Bool)

(assert (=> b!2445266 (= res!1037709 (isEmpty!16546 lt!878889))))

(declare-fun tail!3827 (List!28604) List!28604)

(assert (=> b!2445266 (= lt!878889 (tail!3827 l!9164))))

(declare-fun b!2445267 () Bool)

(declare-fun tp!776875 () Bool)

(assert (=> b!2445267 (= e!1552937 tp!776875)))

(declare-fun b!2445268 () Bool)

(declare-fun res!1037706 () Bool)

(assert (=> b!2445268 (=> (not res!1037706) (not e!1552943))))

(declare-fun r!13927 () Regex!7184)

(assert (=> b!2445268 (= res!1037706 (= r!13927 (generalisedConcat!285 l!9164)))))

(declare-fun b!2445269 () Bool)

(declare-fun e!1552938 () Bool)

(assert (=> b!2445269 (= e!1552943 (not e!1552938))))

(declare-fun res!1037708 () Bool)

(assert (=> b!2445269 (=> res!1037708 e!1552938)))

(assert (=> b!2445269 (= res!1037708 (not (is-Concat!11820 r!13927)))))

(declare-fun lt!878893 () Bool)

(assert (=> b!2445269 (= lt!878892 lt!878893)))

(declare-fun matchRSpec!1031 (Regex!7184 List!28605) Bool)

(assert (=> b!2445269 (= lt!878893 (matchRSpec!1031 r!13927 s!9460))))

(declare-fun matchR!3299 (Regex!7184 List!28605) Bool)

(assert (=> b!2445269 (= lt!878892 (matchR!3299 r!13927 s!9460))))

(declare-datatypes ((Unit!41767 0))(
  ( (Unit!41768) )
))
(declare-fun lt!878891 () Unit!41767)

(declare-fun mainMatchTheorem!1031 (Regex!7184 List!28605) Unit!41767)

(assert (=> b!2445269 (= lt!878891 (mainMatchTheorem!1031 r!13927 s!9460))))

(assert (=> b!2445270 (= e!1552938 e!1552940)))

(declare-fun res!1037705 () Bool)

(assert (=> b!2445270 (=> res!1037705 e!1552940)))

(declare-fun lt!878887 () Bool)

(assert (=> b!2445270 (= res!1037705 (not (= lt!878893 lt!878887)))))

(declare-fun Exists!1220 (Int) Bool)

(assert (=> b!2445270 (= (Exists!1220 lambda!92561) (Exists!1220 lambda!92562))))

(declare-fun lt!878888 () Unit!41767)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!465 (Regex!7184 Regex!7184 List!28605) Unit!41767)

(assert (=> b!2445270 (= lt!878888 (lemmaExistCutMatchRandMatchRSpecEquivalent!465 (regOne!14880 r!13927) (regTwo!14880 r!13927) s!9460))))

(assert (=> b!2445270 (= lt!878887 (Exists!1220 lambda!92561))))

(assert (=> b!2445270 (= lt!878887 (isDefined!4499 (findConcatSeparation!781 (regOne!14880 r!13927) (regTwo!14880 r!13927) Nil!28507 s!9460 s!9460)))))

(declare-fun lt!878890 () Unit!41767)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!719 (Regex!7184 Regex!7184 List!28605) Unit!41767)

(assert (=> b!2445270 (= lt!878890 (lemmaFindConcatSeparationEquivalentToExists!719 (regOne!14880 r!13927) (regTwo!14880 r!13927) s!9460))))

(declare-fun b!2445271 () Bool)

(declare-fun res!1037707 () Bool)

(assert (=> b!2445271 (=> res!1037707 e!1552940)))

(assert (=> b!2445271 (= res!1037707 (isEmpty!16546 l!9164))))

(declare-fun b!2445272 () Bool)

(declare-fun tp!776872 () Bool)

(declare-fun tp!776877 () Bool)

(assert (=> b!2445272 (= e!1552937 (and tp!776872 tp!776877))))

(assert (= (and start!238992 res!1037710) b!2445268))

(assert (= (and b!2445268 res!1037706) b!2445269))

(assert (= (and b!2445269 (not res!1037708)) b!2445270))

(assert (= (and b!2445270 (not res!1037705)) b!2445271))

(assert (= (and b!2445271 (not res!1037707)) b!2445266))

(assert (= (and b!2445266 (not res!1037709)) b!2445264))

(assert (= (and start!238992 (is-Cons!28506 l!9164)) b!2445261))

(assert (= (and start!238992 (is-ElementMatch!7184 r!13927)) b!2445262))

(assert (= (and start!238992 (is-Concat!11820 r!13927)) b!2445263))

(assert (= (and start!238992 (is-Star!7184 r!13927)) b!2445267))

(assert (= (and start!238992 (is-Union!7184 r!13927)) b!2445272))

(assert (= (and start!238992 (is-Cons!28507 s!9460)) b!2445265))

(declare-fun m!2821573 () Bool)

(assert (=> b!2445271 m!2821573))

(declare-fun m!2821575 () Bool)

(assert (=> b!2445269 m!2821575))

(declare-fun m!2821577 () Bool)

(assert (=> b!2445269 m!2821577))

(declare-fun m!2821579 () Bool)

(assert (=> b!2445269 m!2821579))

(declare-fun m!2821581 () Bool)

(assert (=> b!2445270 m!2821581))

(declare-fun m!2821583 () Bool)

(assert (=> b!2445270 m!2821583))

(declare-fun m!2821585 () Bool)

(assert (=> b!2445270 m!2821585))

(assert (=> b!2445270 m!2821581))

(declare-fun m!2821587 () Bool)

(assert (=> b!2445270 m!2821587))

(assert (=> b!2445270 m!2821587))

(declare-fun m!2821589 () Bool)

(assert (=> b!2445270 m!2821589))

(declare-fun m!2821591 () Bool)

(assert (=> b!2445270 m!2821591))

(declare-fun m!2821593 () Bool)

(assert (=> b!2445268 m!2821593))

(declare-fun m!2821595 () Bool)

(assert (=> b!2445266 m!2821595))

(declare-fun m!2821597 () Bool)

(assert (=> b!2445266 m!2821597))

(declare-fun m!2821599 () Bool)

(assert (=> b!2445264 m!2821599))

(declare-fun m!2821601 () Bool)

(assert (=> b!2445264 m!2821601))

(assert (=> b!2445264 m!2821599))

(assert (=> b!2445264 m!2821601))

(declare-fun m!2821603 () Bool)

(assert (=> b!2445264 m!2821603))

(assert (=> b!2445264 m!2821603))

(declare-fun m!2821605 () Bool)

(assert (=> b!2445264 m!2821605))

(declare-fun m!2821607 () Bool)

(assert (=> start!238992 m!2821607))

(push 1)

(assert (not b!2445271))

(assert (not b!2445264))

(assert (not b!2445269))

(assert (not b!2445261))

(assert (not b!2445270))

(assert (not b!2445263))

(assert (not b!2445266))

(assert (not b!2445268))

(assert (not b!2445265))

(assert (not b!2445272))

(assert (not b!2445267))

(assert (not start!238992))

(assert tp_is_empty!11781)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!705777 () Bool)

(declare-fun isEmpty!16548 (Option!5673) Bool)

(assert (=> d!705777 (= (isDefined!4499 (findConcatSeparation!781 (regOne!14880 r!13927) (regTwo!14880 r!13927) Nil!28507 s!9460 s!9460)) (not (isEmpty!16548 (findConcatSeparation!781 (regOne!14880 r!13927) (regTwo!14880 r!13927) Nil!28507 s!9460 s!9460))))))

(declare-fun bs!465325 () Bool)

(assert (= bs!465325 d!705777))

(assert (=> bs!465325 m!2821581))

(declare-fun m!2821645 () Bool)

(assert (=> bs!465325 m!2821645))

(assert (=> b!2445270 d!705777))

(declare-fun d!705779 () Bool)

(declare-fun choose!14499 (Int) Bool)

(assert (=> d!705779 (= (Exists!1220 lambda!92562) (choose!14499 lambda!92562))))

(declare-fun bs!465326 () Bool)

(assert (= bs!465326 d!705779))

(declare-fun m!2821647 () Bool)

(assert (=> bs!465326 m!2821647))

(assert (=> b!2445270 d!705779))

(declare-fun bs!465327 () Bool)

(declare-fun d!705781 () Bool)

(assert (= bs!465327 (and d!705781 b!2445270)))

(declare-fun lambda!92576 () Int)

(assert (=> bs!465327 (= lambda!92576 lambda!92561)))

(assert (=> bs!465327 (not (= lambda!92576 lambda!92562))))

(assert (=> d!705781 true))

(assert (=> d!705781 true))

(assert (=> d!705781 true))

(assert (=> d!705781 (= (isDefined!4499 (findConcatSeparation!781 (regOne!14880 r!13927) (regTwo!14880 r!13927) Nil!28507 s!9460 s!9460)) (Exists!1220 lambda!92576))))

(declare-fun lt!878917 () Unit!41767)

(declare-fun choose!14500 (Regex!7184 Regex!7184 List!28605) Unit!41767)

(assert (=> d!705781 (= lt!878917 (choose!14500 (regOne!14880 r!13927) (regTwo!14880 r!13927) s!9460))))

(declare-fun validRegex!2892 (Regex!7184) Bool)

(assert (=> d!705781 (validRegex!2892 (regOne!14880 r!13927))))

(assert (=> d!705781 (= (lemmaFindConcatSeparationEquivalentToExists!719 (regOne!14880 r!13927) (regTwo!14880 r!13927) s!9460) lt!878917)))

(declare-fun bs!465328 () Bool)

(assert (= bs!465328 d!705781))

(declare-fun m!2821649 () Bool)

(assert (=> bs!465328 m!2821649))

(declare-fun m!2821651 () Bool)

(assert (=> bs!465328 m!2821651))

(declare-fun m!2821653 () Bool)

(assert (=> bs!465328 m!2821653))

(assert (=> bs!465328 m!2821581))

(assert (=> bs!465328 m!2821583))

(assert (=> bs!465328 m!2821581))

(assert (=> b!2445270 d!705781))

(declare-fun bs!465330 () Bool)

(declare-fun d!705783 () Bool)

(assert (= bs!465330 (and d!705783 b!2445270)))

(declare-fun lambda!92581 () Int)

(assert (=> bs!465330 (= lambda!92581 lambda!92561)))

(assert (=> bs!465330 (not (= lambda!92581 lambda!92562))))

(declare-fun bs!465331 () Bool)

(assert (= bs!465331 (and d!705783 d!705781)))

(assert (=> bs!465331 (= lambda!92581 lambda!92576)))

(assert (=> d!705783 true))

(assert (=> d!705783 true))

(assert (=> d!705783 true))

(declare-fun lambda!92582 () Int)

(assert (=> bs!465330 (not (= lambda!92582 lambda!92561))))

(assert (=> bs!465330 (= lambda!92582 lambda!92562)))

(assert (=> bs!465331 (not (= lambda!92582 lambda!92576))))

(declare-fun bs!465332 () Bool)

(assert (= bs!465332 d!705783))

(assert (=> bs!465332 (not (= lambda!92582 lambda!92581))))

(assert (=> d!705783 true))

(assert (=> d!705783 true))

(assert (=> d!705783 true))

(assert (=> d!705783 (= (Exists!1220 lambda!92581) (Exists!1220 lambda!92582))))

(declare-fun lt!878920 () Unit!41767)

(declare-fun choose!14501 (Regex!7184 Regex!7184 List!28605) Unit!41767)

(assert (=> d!705783 (= lt!878920 (choose!14501 (regOne!14880 r!13927) (regTwo!14880 r!13927) s!9460))))

(assert (=> d!705783 (validRegex!2892 (regOne!14880 r!13927))))

(assert (=> d!705783 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!465 (regOne!14880 r!13927) (regTwo!14880 r!13927) s!9460) lt!878920)))

(declare-fun m!2821657 () Bool)

(assert (=> bs!465332 m!2821657))

(declare-fun m!2821659 () Bool)

(assert (=> bs!465332 m!2821659))

(declare-fun m!2821661 () Bool)

(assert (=> bs!465332 m!2821661))

(assert (=> bs!465332 m!2821653))

(assert (=> b!2445270 d!705783))

(declare-fun d!705789 () Bool)

(declare-fun e!1552993 () Bool)

(assert (=> d!705789 e!1552993))

(declare-fun res!1037771 () Bool)

(assert (=> d!705789 (=> res!1037771 e!1552993)))

(declare-fun e!1552989 () Bool)

(assert (=> d!705789 (= res!1037771 e!1552989)))

(declare-fun res!1037767 () Bool)

(assert (=> d!705789 (=> (not res!1037767) (not e!1552989))))

(declare-fun lt!878930 () Option!5673)

(assert (=> d!705789 (= res!1037767 (isDefined!4499 lt!878930))))

(declare-fun e!1552991 () Option!5673)

(assert (=> d!705789 (= lt!878930 e!1552991)))

(declare-fun c!390202 () Bool)

(declare-fun e!1552992 () Bool)

(assert (=> d!705789 (= c!390202 e!1552992)))

(declare-fun res!1037769 () Bool)

(assert (=> d!705789 (=> (not res!1037769) (not e!1552992))))

(assert (=> d!705789 (= res!1037769 (matchR!3299 (regOne!14880 r!13927) Nil!28507))))

(assert (=> d!705789 (validRegex!2892 (regOne!14880 r!13927))))

(assert (=> d!705789 (= (findConcatSeparation!781 (regOne!14880 r!13927) (regTwo!14880 r!13927) Nil!28507 s!9460 s!9460) lt!878930)))

(declare-fun b!2445363 () Bool)

(assert (=> b!2445363 (= e!1552991 (Some!5672 (tuple2!28125 Nil!28507 s!9460)))))

(declare-fun b!2445364 () Bool)

(declare-fun res!1037770 () Bool)

(assert (=> b!2445364 (=> (not res!1037770) (not e!1552989))))

(declare-fun get!8806 (Option!5673) tuple2!28124)

(assert (=> b!2445364 (= res!1037770 (matchR!3299 (regTwo!14880 r!13927) (_2!16603 (get!8806 lt!878930))))))

(declare-fun b!2445365 () Bool)

(declare-fun lt!878929 () Unit!41767)

(declare-fun lt!878931 () Unit!41767)

(assert (=> b!2445365 (= lt!878929 lt!878931)))

(declare-fun ++!7087 (List!28605 List!28605) List!28605)

(assert (=> b!2445365 (= (++!7087 (++!7087 Nil!28507 (Cons!28507 (h!33908 s!9460) Nil!28507)) (t!208582 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!702 (List!28605 C!14526 List!28605 List!28605) Unit!41767)

(assert (=> b!2445365 (= lt!878931 (lemmaMoveElementToOtherListKeepsConcatEq!702 Nil!28507 (h!33908 s!9460) (t!208582 s!9460) s!9460))))

(declare-fun e!1552990 () Option!5673)

(assert (=> b!2445365 (= e!1552990 (findConcatSeparation!781 (regOne!14880 r!13927) (regTwo!14880 r!13927) (++!7087 Nil!28507 (Cons!28507 (h!33908 s!9460) Nil!28507)) (t!208582 s!9460) s!9460))))

(declare-fun b!2445366 () Bool)

(assert (=> b!2445366 (= e!1552990 None!5672)))

(declare-fun b!2445367 () Bool)

(assert (=> b!2445367 (= e!1552993 (not (isDefined!4499 lt!878930)))))

(declare-fun b!2445368 () Bool)

(declare-fun res!1037768 () Bool)

(assert (=> b!2445368 (=> (not res!1037768) (not e!1552989))))

(assert (=> b!2445368 (= res!1037768 (matchR!3299 (regOne!14880 r!13927) (_1!16603 (get!8806 lt!878930))))))

(declare-fun b!2445369 () Bool)

(assert (=> b!2445369 (= e!1552989 (= (++!7087 (_1!16603 (get!8806 lt!878930)) (_2!16603 (get!8806 lt!878930))) s!9460))))

(declare-fun b!2445370 () Bool)

(assert (=> b!2445370 (= e!1552991 e!1552990)))

(declare-fun c!390203 () Bool)

(assert (=> b!2445370 (= c!390203 (is-Nil!28507 s!9460))))

(declare-fun b!2445371 () Bool)

(assert (=> b!2445371 (= e!1552992 (matchR!3299 (regTwo!14880 r!13927) s!9460))))

(assert (= (and d!705789 res!1037769) b!2445371))

(assert (= (and d!705789 c!390202) b!2445363))

(assert (= (and d!705789 (not c!390202)) b!2445370))

(assert (= (and b!2445370 c!390203) b!2445366))

(assert (= (and b!2445370 (not c!390203)) b!2445365))

(assert (= (and d!705789 res!1037767) b!2445368))

(assert (= (and b!2445368 res!1037768) b!2445364))

(assert (= (and b!2445364 res!1037770) b!2445369))

(assert (= (and d!705789 (not res!1037771)) b!2445367))

(declare-fun m!2821663 () Bool)

(assert (=> d!705789 m!2821663))

(declare-fun m!2821665 () Bool)

(assert (=> d!705789 m!2821665))

(assert (=> d!705789 m!2821653))

(assert (=> b!2445367 m!2821663))

(declare-fun m!2821667 () Bool)

(assert (=> b!2445365 m!2821667))

(assert (=> b!2445365 m!2821667))

(declare-fun m!2821669 () Bool)

(assert (=> b!2445365 m!2821669))

(declare-fun m!2821671 () Bool)

(assert (=> b!2445365 m!2821671))

(assert (=> b!2445365 m!2821667))

(declare-fun m!2821673 () Bool)

(assert (=> b!2445365 m!2821673))

(declare-fun m!2821675 () Bool)

(assert (=> b!2445369 m!2821675))

(declare-fun m!2821677 () Bool)

(assert (=> b!2445369 m!2821677))

(assert (=> b!2445368 m!2821675))

(declare-fun m!2821679 () Bool)

(assert (=> b!2445368 m!2821679))

(assert (=> b!2445364 m!2821675))

(declare-fun m!2821681 () Bool)

(assert (=> b!2445364 m!2821681))

(declare-fun m!2821683 () Bool)

(assert (=> b!2445371 m!2821683))

(assert (=> b!2445270 d!705789))

(declare-fun d!705791 () Bool)

(assert (=> d!705791 (= (Exists!1220 lambda!92561) (choose!14499 lambda!92561))))

(declare-fun bs!465333 () Bool)

(assert (= bs!465333 d!705791))

(declare-fun m!2821685 () Bool)

(assert (=> bs!465333 m!2821685))

(assert (=> b!2445270 d!705791))

(declare-fun d!705793 () Bool)

(declare-fun res!1037776 () Bool)

(declare-fun e!1552998 () Bool)

(assert (=> d!705793 (=> res!1037776 e!1552998)))

(assert (=> d!705793 (= res!1037776 (is-Nil!28506 l!9164))))

(assert (=> d!705793 (= (forall!5818 l!9164 lambda!92560) e!1552998)))

(declare-fun b!2445376 () Bool)

(declare-fun e!1552999 () Bool)

(assert (=> b!2445376 (= e!1552998 e!1552999)))

(declare-fun res!1037777 () Bool)

(assert (=> b!2445376 (=> (not res!1037777) (not e!1552999))))

(declare-fun dynLambda!12259 (Int Regex!7184) Bool)

(assert (=> b!2445376 (= res!1037777 (dynLambda!12259 lambda!92560 (h!33907 l!9164)))))

(declare-fun b!2445377 () Bool)

(assert (=> b!2445377 (= e!1552999 (forall!5818 (t!208581 l!9164) lambda!92560))))

(assert (= (and d!705793 (not res!1037776)) b!2445376))

(assert (= (and b!2445376 res!1037777) b!2445377))

(declare-fun b_lambda!74999 () Bool)

(assert (=> (not b_lambda!74999) (not b!2445376)))

(declare-fun m!2821687 () Bool)

(assert (=> b!2445376 m!2821687))

(declare-fun m!2821689 () Bool)

(assert (=> b!2445377 m!2821689))

(assert (=> start!238992 d!705793))

(declare-fun d!705795 () Bool)

(assert (=> d!705795 (= (isDefined!4499 (findConcatSeparation!781 (head!5554 l!9164) (generalisedConcat!285 lt!878889) Nil!28507 s!9460 s!9460)) (not (isEmpty!16548 (findConcatSeparation!781 (head!5554 l!9164) (generalisedConcat!285 lt!878889) Nil!28507 s!9460 s!9460))))))

(declare-fun bs!465335 () Bool)

(assert (= bs!465335 d!705795))

(assert (=> bs!465335 m!2821603))

(declare-fun m!2821691 () Bool)

(assert (=> bs!465335 m!2821691))

(assert (=> b!2445264 d!705795))

(declare-fun d!705797 () Bool)

(declare-fun e!1553004 () Bool)

(assert (=> d!705797 e!1553004))

(declare-fun res!1037782 () Bool)

(assert (=> d!705797 (=> res!1037782 e!1553004)))

(declare-fun e!1553000 () Bool)

(assert (=> d!705797 (= res!1037782 e!1553000)))

(declare-fun res!1037778 () Bool)

(assert (=> d!705797 (=> (not res!1037778) (not e!1553000))))

(declare-fun lt!878934 () Option!5673)

(assert (=> d!705797 (= res!1037778 (isDefined!4499 lt!878934))))

(declare-fun e!1553002 () Option!5673)

(assert (=> d!705797 (= lt!878934 e!1553002)))

(declare-fun c!390204 () Bool)

(declare-fun e!1553003 () Bool)

(assert (=> d!705797 (= c!390204 e!1553003)))

(declare-fun res!1037780 () Bool)

(assert (=> d!705797 (=> (not res!1037780) (not e!1553003))))

(assert (=> d!705797 (= res!1037780 (matchR!3299 (head!5554 l!9164) Nil!28507))))

(assert (=> d!705797 (validRegex!2892 (head!5554 l!9164))))

(assert (=> d!705797 (= (findConcatSeparation!781 (head!5554 l!9164) (generalisedConcat!285 lt!878889) Nil!28507 s!9460 s!9460) lt!878934)))

(declare-fun b!2445378 () Bool)

(assert (=> b!2445378 (= e!1553002 (Some!5672 (tuple2!28125 Nil!28507 s!9460)))))

(declare-fun b!2445379 () Bool)

(declare-fun res!1037781 () Bool)

(assert (=> b!2445379 (=> (not res!1037781) (not e!1553000))))

(assert (=> b!2445379 (= res!1037781 (matchR!3299 (generalisedConcat!285 lt!878889) (_2!16603 (get!8806 lt!878934))))))

(declare-fun b!2445380 () Bool)

(declare-fun lt!878933 () Unit!41767)

(declare-fun lt!878935 () Unit!41767)

(assert (=> b!2445380 (= lt!878933 lt!878935)))

(assert (=> b!2445380 (= (++!7087 (++!7087 Nil!28507 (Cons!28507 (h!33908 s!9460) Nil!28507)) (t!208582 s!9460)) s!9460)))

(assert (=> b!2445380 (= lt!878935 (lemmaMoveElementToOtherListKeepsConcatEq!702 Nil!28507 (h!33908 s!9460) (t!208582 s!9460) s!9460))))

(declare-fun e!1553001 () Option!5673)

(assert (=> b!2445380 (= e!1553001 (findConcatSeparation!781 (head!5554 l!9164) (generalisedConcat!285 lt!878889) (++!7087 Nil!28507 (Cons!28507 (h!33908 s!9460) Nil!28507)) (t!208582 s!9460) s!9460))))

(declare-fun b!2445381 () Bool)

(assert (=> b!2445381 (= e!1553001 None!5672)))

(declare-fun b!2445382 () Bool)

(assert (=> b!2445382 (= e!1553004 (not (isDefined!4499 lt!878934)))))

(declare-fun b!2445383 () Bool)

(declare-fun res!1037779 () Bool)

(assert (=> b!2445383 (=> (not res!1037779) (not e!1553000))))

(assert (=> b!2445383 (= res!1037779 (matchR!3299 (head!5554 l!9164) (_1!16603 (get!8806 lt!878934))))))

(declare-fun b!2445384 () Bool)

(assert (=> b!2445384 (= e!1553000 (= (++!7087 (_1!16603 (get!8806 lt!878934)) (_2!16603 (get!8806 lt!878934))) s!9460))))

(declare-fun b!2445385 () Bool)

(assert (=> b!2445385 (= e!1553002 e!1553001)))

(declare-fun c!390205 () Bool)

(assert (=> b!2445385 (= c!390205 (is-Nil!28507 s!9460))))

(declare-fun b!2445386 () Bool)

(assert (=> b!2445386 (= e!1553003 (matchR!3299 (generalisedConcat!285 lt!878889) s!9460))))

(assert (= (and d!705797 res!1037780) b!2445386))

(assert (= (and d!705797 c!390204) b!2445378))

(assert (= (and d!705797 (not c!390204)) b!2445385))

(assert (= (and b!2445385 c!390205) b!2445381))

(assert (= (and b!2445385 (not c!390205)) b!2445380))

(assert (= (and d!705797 res!1037778) b!2445383))

(assert (= (and b!2445383 res!1037779) b!2445379))

(assert (= (and b!2445379 res!1037781) b!2445384))

(assert (= (and d!705797 (not res!1037782)) b!2445382))

(declare-fun m!2821699 () Bool)

(assert (=> d!705797 m!2821699))

(assert (=> d!705797 m!2821599))

(declare-fun m!2821701 () Bool)

(assert (=> d!705797 m!2821701))

(assert (=> d!705797 m!2821599))

(declare-fun m!2821703 () Bool)

(assert (=> d!705797 m!2821703))

(assert (=> b!2445382 m!2821699))

(assert (=> b!2445380 m!2821667))

(assert (=> b!2445380 m!2821667))

(assert (=> b!2445380 m!2821669))

(assert (=> b!2445380 m!2821671))

(assert (=> b!2445380 m!2821599))

(assert (=> b!2445380 m!2821601))

(assert (=> b!2445380 m!2821667))

(declare-fun m!2821705 () Bool)

(assert (=> b!2445380 m!2821705))

(declare-fun m!2821707 () Bool)

(assert (=> b!2445384 m!2821707))

(declare-fun m!2821709 () Bool)

(assert (=> b!2445384 m!2821709))

(assert (=> b!2445383 m!2821707))

(assert (=> b!2445383 m!2821599))

(declare-fun m!2821711 () Bool)

(assert (=> b!2445383 m!2821711))

(assert (=> b!2445379 m!2821707))

(assert (=> b!2445379 m!2821601))

(declare-fun m!2821713 () Bool)

(assert (=> b!2445379 m!2821713))

(assert (=> b!2445386 m!2821601))

(declare-fun m!2821715 () Bool)

(assert (=> b!2445386 m!2821715))

(assert (=> b!2445264 d!705797))

(declare-fun d!705801 () Bool)

(assert (=> d!705801 (= (head!5554 l!9164) (h!33907 l!9164))))

(assert (=> b!2445264 d!705801))

(declare-fun bs!465337 () Bool)

(declare-fun d!705803 () Bool)

(assert (= bs!465337 (and d!705803 start!238992)))

(declare-fun lambda!92588 () Int)

(assert (=> bs!465337 (= lambda!92588 lambda!92560)))

(declare-fun b!2445407 () Bool)

(declare-fun e!1553022 () Bool)

(declare-fun lt!878938 () Regex!7184)

(declare-fun isConcat!219 (Regex!7184) Bool)

(assert (=> b!2445407 (= e!1553022 (isConcat!219 lt!878938))))

(declare-fun b!2445408 () Bool)

(declare-fun e!1553019 () Bool)

(declare-fun isEmptyExpr!219 (Regex!7184) Bool)

(assert (=> b!2445408 (= e!1553019 (isEmptyExpr!219 lt!878938))))

(declare-fun b!2445410 () Bool)

(declare-fun e!1553020 () Regex!7184)

(assert (=> b!2445410 (= e!1553020 EmptyExpr!7184)))

(declare-fun b!2445411 () Bool)

(declare-fun e!1553021 () Bool)

(assert (=> b!2445411 (= e!1553021 (isEmpty!16546 (t!208581 lt!878889)))))

(declare-fun b!2445412 () Bool)

(assert (=> b!2445412 (= e!1553022 (= lt!878938 (head!5554 lt!878889)))))

(declare-fun b!2445413 () Bool)

(assert (=> b!2445413 (= e!1553019 e!1553022)))

(declare-fun c!390215 () Bool)

(assert (=> b!2445413 (= c!390215 (isEmpty!16546 (tail!3827 lt!878889)))))

(declare-fun b!2445414 () Bool)

(declare-fun e!1553018 () Regex!7184)

(assert (=> b!2445414 (= e!1553018 e!1553020)))

(declare-fun c!390216 () Bool)

(assert (=> b!2445414 (= c!390216 (is-Cons!28506 lt!878889))))

(declare-fun b!2445415 () Bool)

(assert (=> b!2445415 (= e!1553020 (Concat!11820 (h!33907 lt!878889) (generalisedConcat!285 (t!208581 lt!878889))))))

(declare-fun b!2445416 () Bool)

(assert (=> b!2445416 (= e!1553018 (h!33907 lt!878889))))

(declare-fun b!2445409 () Bool)

(declare-fun e!1553017 () Bool)

(assert (=> b!2445409 (= e!1553017 e!1553019)))

(declare-fun c!390214 () Bool)

(assert (=> b!2445409 (= c!390214 (isEmpty!16546 lt!878889))))

(assert (=> d!705803 e!1553017))

(declare-fun res!1037788 () Bool)

(assert (=> d!705803 (=> (not res!1037788) (not e!1553017))))

(assert (=> d!705803 (= res!1037788 (validRegex!2892 lt!878938))))

(assert (=> d!705803 (= lt!878938 e!1553018)))

(declare-fun c!390217 () Bool)

(assert (=> d!705803 (= c!390217 e!1553021)))

(declare-fun res!1037787 () Bool)

(assert (=> d!705803 (=> (not res!1037787) (not e!1553021))))

(assert (=> d!705803 (= res!1037787 (is-Cons!28506 lt!878889))))

(assert (=> d!705803 (forall!5818 lt!878889 lambda!92588)))

(assert (=> d!705803 (= (generalisedConcat!285 lt!878889) lt!878938)))

(assert (= (and d!705803 res!1037787) b!2445411))

(assert (= (and d!705803 c!390217) b!2445416))

(assert (= (and d!705803 (not c!390217)) b!2445414))

(assert (= (and b!2445414 c!390216) b!2445415))

(assert (= (and b!2445414 (not c!390216)) b!2445410))

(assert (= (and d!705803 res!1037788) b!2445409))

(assert (= (and b!2445409 c!390214) b!2445408))

(assert (= (and b!2445409 (not c!390214)) b!2445413))

(assert (= (and b!2445413 c!390215) b!2445412))

(assert (= (and b!2445413 (not c!390215)) b!2445407))

(declare-fun m!2821717 () Bool)

(assert (=> b!2445411 m!2821717))

(declare-fun m!2821719 () Bool)

(assert (=> d!705803 m!2821719))

(declare-fun m!2821721 () Bool)

(assert (=> d!705803 m!2821721))

(declare-fun m!2821723 () Bool)

(assert (=> b!2445415 m!2821723))

(declare-fun m!2821725 () Bool)

(assert (=> b!2445412 m!2821725))

(assert (=> b!2445409 m!2821595))

(declare-fun m!2821727 () Bool)

(assert (=> b!2445413 m!2821727))

(assert (=> b!2445413 m!2821727))

(declare-fun m!2821729 () Bool)

(assert (=> b!2445413 m!2821729))

(declare-fun m!2821731 () Bool)

(assert (=> b!2445407 m!2821731))

(declare-fun m!2821733 () Bool)

(assert (=> b!2445408 m!2821733))

(assert (=> b!2445264 d!705803))

(declare-fun bs!465338 () Bool)

(declare-fun b!2445461 () Bool)

(assert (= bs!465338 (and b!2445461 b!2445270)))

(declare-fun lambda!92597 () Int)

(assert (=> bs!465338 (not (= lambda!92597 lambda!92562))))

(assert (=> bs!465338 (not (= lambda!92597 lambda!92561))))

(declare-fun bs!465339 () Bool)

(assert (= bs!465339 (and b!2445461 d!705781)))

(assert (=> bs!465339 (not (= lambda!92597 lambda!92576))))

(declare-fun bs!465340 () Bool)

(assert (= bs!465340 (and b!2445461 d!705783)))

(assert (=> bs!465340 (not (= lambda!92597 lambda!92581))))

(assert (=> bs!465340 (not (= lambda!92597 lambda!92582))))

(assert (=> b!2445461 true))

(assert (=> b!2445461 true))

(declare-fun bs!465342 () Bool)

(declare-fun b!2445462 () Bool)

(assert (= bs!465342 (and b!2445462 b!2445270)))

(declare-fun lambda!92599 () Int)

(assert (=> bs!465342 (= lambda!92599 lambda!92562)))

(assert (=> bs!465342 (not (= lambda!92599 lambda!92561))))

(declare-fun bs!465343 () Bool)

(assert (= bs!465343 (and b!2445462 d!705781)))

(assert (=> bs!465343 (not (= lambda!92599 lambda!92576))))

(declare-fun bs!465345 () Bool)

(assert (= bs!465345 (and b!2445462 b!2445461)))

(assert (=> bs!465345 (not (= lambda!92599 lambda!92597))))

(declare-fun bs!465346 () Bool)

(assert (= bs!465346 (and b!2445462 d!705783)))

(assert (=> bs!465346 (not (= lambda!92599 lambda!92581))))

(assert (=> bs!465346 (= lambda!92599 lambda!92582)))

(assert (=> b!2445462 true))

(assert (=> b!2445462 true))

(declare-fun b!2445457 () Bool)

(declare-fun e!1553047 () Bool)

(declare-fun e!1553049 () Bool)

(assert (=> b!2445457 (= e!1553047 e!1553049)))

(declare-fun res!1037814 () Bool)

(assert (=> b!2445457 (= res!1037814 (matchRSpec!1031 (regOne!14881 r!13927) s!9460))))

(assert (=> b!2445457 (=> res!1037814 e!1553049)))

(declare-fun b!2445458 () Bool)

(declare-fun e!1553045 () Bool)

(declare-fun call!149942 () Bool)

(assert (=> b!2445458 (= e!1553045 call!149942)))

(declare-fun b!2445459 () Bool)

(declare-fun res!1037815 () Bool)

(declare-fun e!1553048 () Bool)

(assert (=> b!2445459 (=> res!1037815 e!1553048)))

(assert (=> b!2445459 (= res!1037815 call!149942)))

(declare-fun e!1553046 () Bool)

(assert (=> b!2445459 (= e!1553046 e!1553048)))

(declare-fun b!2445460 () Bool)

(declare-fun e!1553050 () Bool)

(assert (=> b!2445460 (= e!1553045 e!1553050)))

(declare-fun res!1037813 () Bool)

(assert (=> b!2445460 (= res!1037813 (not (is-EmptyLang!7184 r!13927)))))

(assert (=> b!2445460 (=> (not res!1037813) (not e!1553050))))

(declare-fun call!149941 () Bool)

(assert (=> b!2445461 (= e!1553048 call!149941)))

(declare-fun bm!149936 () Bool)

(declare-fun isEmpty!16549 (List!28605) Bool)

(assert (=> bm!149936 (= call!149942 (isEmpty!16549 s!9460))))

(assert (=> b!2445462 (= e!1553046 call!149941)))

(declare-fun c!390229 () Bool)

(declare-fun bm!149937 () Bool)

(assert (=> bm!149937 (= call!149941 (Exists!1220 (ite c!390229 lambda!92597 lambda!92599)))))

(declare-fun b!2445464 () Bool)

(declare-fun e!1553051 () Bool)

(assert (=> b!2445464 (= e!1553051 (= s!9460 (Cons!28507 (c!390196 r!13927) Nil!28507)))))

(declare-fun b!2445465 () Bool)

(declare-fun c!390226 () Bool)

(assert (=> b!2445465 (= c!390226 (is-ElementMatch!7184 r!13927))))

(assert (=> b!2445465 (= e!1553050 e!1553051)))

(declare-fun b!2445466 () Bool)

(declare-fun c!390228 () Bool)

(assert (=> b!2445466 (= c!390228 (is-Union!7184 r!13927))))

(assert (=> b!2445466 (= e!1553051 e!1553047)))

(declare-fun b!2445467 () Bool)

(assert (=> b!2445467 (= e!1553047 e!1553046)))

(assert (=> b!2445467 (= c!390229 (is-Star!7184 r!13927))))

(declare-fun d!705805 () Bool)

(declare-fun c!390227 () Bool)

(assert (=> d!705805 (= c!390227 (is-EmptyExpr!7184 r!13927))))

(assert (=> d!705805 (= (matchRSpec!1031 r!13927 s!9460) e!1553045)))

(declare-fun b!2445463 () Bool)

(assert (=> b!2445463 (= e!1553049 (matchRSpec!1031 (regTwo!14881 r!13927) s!9460))))

(assert (= (and d!705805 c!390227) b!2445458))

(assert (= (and d!705805 (not c!390227)) b!2445460))

(assert (= (and b!2445460 res!1037813) b!2445465))

(assert (= (and b!2445465 c!390226) b!2445464))

(assert (= (and b!2445465 (not c!390226)) b!2445466))

(assert (= (and b!2445466 c!390228) b!2445457))

(assert (= (and b!2445466 (not c!390228)) b!2445467))

(assert (= (and b!2445457 (not res!1037814)) b!2445463))

(assert (= (and b!2445467 c!390229) b!2445459))

(assert (= (and b!2445467 (not c!390229)) b!2445462))

(assert (= (and b!2445459 (not res!1037815)) b!2445461))

(assert (= (or b!2445461 b!2445462) bm!149937))

(assert (= (or b!2445458 b!2445459) bm!149936))

(declare-fun m!2821735 () Bool)

(assert (=> b!2445457 m!2821735))

(declare-fun m!2821737 () Bool)

(assert (=> bm!149936 m!2821737))

(declare-fun m!2821739 () Bool)

(assert (=> bm!149937 m!2821739))

(declare-fun m!2821741 () Bool)

(assert (=> b!2445463 m!2821741))

(assert (=> b!2445269 d!705805))

(declare-fun b!2445496 () Bool)

(declare-fun e!1553067 () Bool)

(declare-fun lt!878944 () Bool)

(declare-fun call!149945 () Bool)

(assert (=> b!2445496 (= e!1553067 (= lt!878944 call!149945))))

(declare-fun b!2445497 () Bool)

(declare-fun res!1037833 () Bool)

(declare-fun e!1553070 () Bool)

(assert (=> b!2445497 (=> (not res!1037833) (not e!1553070))))

(declare-fun tail!3829 (List!28605) List!28605)

(assert (=> b!2445497 (= res!1037833 (isEmpty!16549 (tail!3829 s!9460)))))

(declare-fun b!2445498 () Bool)

(declare-fun res!1037834 () Bool)

(declare-fun e!1553071 () Bool)

(assert (=> b!2445498 (=> res!1037834 e!1553071)))

(assert (=> b!2445498 (= res!1037834 e!1553070)))

(declare-fun res!1037835 () Bool)

(assert (=> b!2445498 (=> (not res!1037835) (not e!1553070))))

(assert (=> b!2445498 (= res!1037835 lt!878944)))

(declare-fun bm!149940 () Bool)

(assert (=> bm!149940 (= call!149945 (isEmpty!16549 s!9460))))

(declare-fun b!2445500 () Bool)

(declare-fun e!1553069 () Bool)

(declare-fun nullable!2201 (Regex!7184) Bool)

(assert (=> b!2445500 (= e!1553069 (nullable!2201 r!13927))))

(declare-fun b!2445501 () Bool)

(declare-fun e!1553068 () Bool)

(declare-fun head!5556 (List!28605) C!14526)

(assert (=> b!2445501 (= e!1553068 (not (= (head!5556 s!9460) (c!390196 r!13927))))))

(declare-fun b!2445502 () Bool)

(declare-fun res!1037838 () Bool)

(assert (=> b!2445502 (=> res!1037838 e!1553071)))

(assert (=> b!2445502 (= res!1037838 (not (is-ElementMatch!7184 r!13927)))))

(declare-fun e!1553072 () Bool)

(assert (=> b!2445502 (= e!1553072 e!1553071)))

(declare-fun b!2445503 () Bool)

(declare-fun res!1037839 () Bool)

(assert (=> b!2445503 (=> res!1037839 e!1553068)))

(assert (=> b!2445503 (= res!1037839 (not (isEmpty!16549 (tail!3829 s!9460))))))

(declare-fun b!2445504 () Bool)

(assert (=> b!2445504 (= e!1553067 e!1553072)))

(declare-fun c!390236 () Bool)

(assert (=> b!2445504 (= c!390236 (is-EmptyLang!7184 r!13927))))

(declare-fun b!2445505 () Bool)

(assert (=> b!2445505 (= e!1553072 (not lt!878944))))

(declare-fun b!2445506 () Bool)

(declare-fun e!1553066 () Bool)

(assert (=> b!2445506 (= e!1553066 e!1553068)))

(declare-fun res!1037836 () Bool)

(assert (=> b!2445506 (=> res!1037836 e!1553068)))

(assert (=> b!2445506 (= res!1037836 call!149945)))

(declare-fun b!2445507 () Bool)

(assert (=> b!2445507 (= e!1553071 e!1553066)))

(declare-fun res!1037832 () Bool)

(assert (=> b!2445507 (=> (not res!1037832) (not e!1553066))))

(assert (=> b!2445507 (= res!1037832 (not lt!878944))))

(declare-fun b!2445508 () Bool)

(declare-fun derivativeStep!1855 (Regex!7184 C!14526) Regex!7184)

(assert (=> b!2445508 (= e!1553069 (matchR!3299 (derivativeStep!1855 r!13927 (head!5556 s!9460)) (tail!3829 s!9460)))))

(declare-fun b!2445509 () Bool)

(assert (=> b!2445509 (= e!1553070 (= (head!5556 s!9460) (c!390196 r!13927)))))

(declare-fun d!705807 () Bool)

(assert (=> d!705807 e!1553067))

(declare-fun c!390238 () Bool)

(assert (=> d!705807 (= c!390238 (is-EmptyExpr!7184 r!13927))))

(assert (=> d!705807 (= lt!878944 e!1553069)))

(declare-fun c!390237 () Bool)

(assert (=> d!705807 (= c!390237 (isEmpty!16549 s!9460))))

(assert (=> d!705807 (validRegex!2892 r!13927)))

(assert (=> d!705807 (= (matchR!3299 r!13927 s!9460) lt!878944)))

(declare-fun b!2445499 () Bool)

(declare-fun res!1037837 () Bool)

(assert (=> b!2445499 (=> (not res!1037837) (not e!1553070))))

(assert (=> b!2445499 (= res!1037837 (not call!149945))))

(assert (= (and d!705807 c!390237) b!2445500))

(assert (= (and d!705807 (not c!390237)) b!2445508))

(assert (= (and d!705807 c!390238) b!2445496))

(assert (= (and d!705807 (not c!390238)) b!2445504))

(assert (= (and b!2445504 c!390236) b!2445505))

(assert (= (and b!2445504 (not c!390236)) b!2445502))

(assert (= (and b!2445502 (not res!1037838)) b!2445498))

(assert (= (and b!2445498 res!1037835) b!2445499))

(assert (= (and b!2445499 res!1037837) b!2445497))

(assert (= (and b!2445497 res!1037833) b!2445509))

(assert (= (and b!2445498 (not res!1037834)) b!2445507))

(assert (= (and b!2445507 res!1037832) b!2445506))

(assert (= (and b!2445506 (not res!1037836)) b!2445503))

(assert (= (and b!2445503 (not res!1037839)) b!2445501))

(assert (= (or b!2445496 b!2445499 b!2445506) bm!149940))

(declare-fun m!2821749 () Bool)

(assert (=> b!2445501 m!2821749))

(declare-fun m!2821751 () Bool)

(assert (=> b!2445497 m!2821751))

(assert (=> b!2445497 m!2821751))

(declare-fun m!2821753 () Bool)

(assert (=> b!2445497 m!2821753))

(assert (=> b!2445503 m!2821751))

(assert (=> b!2445503 m!2821751))

(assert (=> b!2445503 m!2821753))

(assert (=> d!705807 m!2821737))

(declare-fun m!2821755 () Bool)

(assert (=> d!705807 m!2821755))

(assert (=> bm!149940 m!2821737))

(declare-fun m!2821757 () Bool)

(assert (=> b!2445500 m!2821757))

(assert (=> b!2445509 m!2821749))

(assert (=> b!2445508 m!2821749))

(assert (=> b!2445508 m!2821749))

(declare-fun m!2821759 () Bool)

(assert (=> b!2445508 m!2821759))

(assert (=> b!2445508 m!2821751))

(assert (=> b!2445508 m!2821759))

(assert (=> b!2445508 m!2821751))

(declare-fun m!2821761 () Bool)

(assert (=> b!2445508 m!2821761))

(assert (=> b!2445269 d!705807))

(declare-fun d!705811 () Bool)

(assert (=> d!705811 (= (matchR!3299 r!13927 s!9460) (matchRSpec!1031 r!13927 s!9460))))

(declare-fun lt!878947 () Unit!41767)

(declare-fun choose!14502 (Regex!7184 List!28605) Unit!41767)

(assert (=> d!705811 (= lt!878947 (choose!14502 r!13927 s!9460))))

(assert (=> d!705811 (validRegex!2892 r!13927)))

(assert (=> d!705811 (= (mainMatchTheorem!1031 r!13927 s!9460) lt!878947)))

(declare-fun bs!465348 () Bool)

(assert (= bs!465348 d!705811))

(assert (=> bs!465348 m!2821577))

(assert (=> bs!465348 m!2821575))

(declare-fun m!2821763 () Bool)

(assert (=> bs!465348 m!2821763))

(assert (=> bs!465348 m!2821755))

(assert (=> b!2445269 d!705811))

(declare-fun bs!465349 () Bool)

(declare-fun d!705813 () Bool)

(assert (= bs!465349 (and d!705813 start!238992)))

(declare-fun lambda!92601 () Int)

(assert (=> bs!465349 (= lambda!92601 lambda!92560)))

(declare-fun bs!465350 () Bool)

(assert (= bs!465350 (and d!705813 d!705803)))

(assert (=> bs!465350 (= lambda!92601 lambda!92588)))

(declare-fun b!2445510 () Bool)

(declare-fun e!1553078 () Bool)

(declare-fun lt!878948 () Regex!7184)

(assert (=> b!2445510 (= e!1553078 (isConcat!219 lt!878948))))

(declare-fun b!2445511 () Bool)

(declare-fun e!1553075 () Bool)

(assert (=> b!2445511 (= e!1553075 (isEmptyExpr!219 lt!878948))))

(declare-fun b!2445513 () Bool)

(declare-fun e!1553076 () Regex!7184)

(assert (=> b!2445513 (= e!1553076 EmptyExpr!7184)))

(declare-fun b!2445514 () Bool)

(declare-fun e!1553077 () Bool)

(assert (=> b!2445514 (= e!1553077 (isEmpty!16546 (t!208581 l!9164)))))

(declare-fun b!2445515 () Bool)

(assert (=> b!2445515 (= e!1553078 (= lt!878948 (head!5554 l!9164)))))

(declare-fun b!2445516 () Bool)

(assert (=> b!2445516 (= e!1553075 e!1553078)))

(declare-fun c!390240 () Bool)

(assert (=> b!2445516 (= c!390240 (isEmpty!16546 (tail!3827 l!9164)))))

(declare-fun b!2445517 () Bool)

(declare-fun e!1553074 () Regex!7184)

(assert (=> b!2445517 (= e!1553074 e!1553076)))

(declare-fun c!390241 () Bool)

(assert (=> b!2445517 (= c!390241 (is-Cons!28506 l!9164))))

(declare-fun b!2445518 () Bool)

(assert (=> b!2445518 (= e!1553076 (Concat!11820 (h!33907 l!9164) (generalisedConcat!285 (t!208581 l!9164))))))

(declare-fun b!2445519 () Bool)

(assert (=> b!2445519 (= e!1553074 (h!33907 l!9164))))

(declare-fun b!2445512 () Bool)

(declare-fun e!1553073 () Bool)

(assert (=> b!2445512 (= e!1553073 e!1553075)))

(declare-fun c!390239 () Bool)

(assert (=> b!2445512 (= c!390239 (isEmpty!16546 l!9164))))

(assert (=> d!705813 e!1553073))

(declare-fun res!1037841 () Bool)

(assert (=> d!705813 (=> (not res!1037841) (not e!1553073))))

(assert (=> d!705813 (= res!1037841 (validRegex!2892 lt!878948))))

(assert (=> d!705813 (= lt!878948 e!1553074)))

(declare-fun c!390242 () Bool)

(assert (=> d!705813 (= c!390242 e!1553077)))

(declare-fun res!1037840 () Bool)

(assert (=> d!705813 (=> (not res!1037840) (not e!1553077))))

(assert (=> d!705813 (= res!1037840 (is-Cons!28506 l!9164))))

(assert (=> d!705813 (forall!5818 l!9164 lambda!92601)))

(assert (=> d!705813 (= (generalisedConcat!285 l!9164) lt!878948)))

(assert (= (and d!705813 res!1037840) b!2445514))

(assert (= (and d!705813 c!390242) b!2445519))

(assert (= (and d!705813 (not c!390242)) b!2445517))

(assert (= (and b!2445517 c!390241) b!2445518))

(assert (= (and b!2445517 (not c!390241)) b!2445513))

(assert (= (and d!705813 res!1037841) b!2445512))

(assert (= (and b!2445512 c!390239) b!2445511))

(assert (= (and b!2445512 (not c!390239)) b!2445516))

(assert (= (and b!2445516 c!390240) b!2445515))

(assert (= (and b!2445516 (not c!390240)) b!2445510))

(declare-fun m!2821765 () Bool)

(assert (=> b!2445514 m!2821765))

(declare-fun m!2821767 () Bool)

(assert (=> d!705813 m!2821767))

(declare-fun m!2821769 () Bool)

(assert (=> d!705813 m!2821769))

(declare-fun m!2821771 () Bool)

(assert (=> b!2445518 m!2821771))

(assert (=> b!2445515 m!2821599))

(assert (=> b!2445512 m!2821573))

(assert (=> b!2445516 m!2821597))

(assert (=> b!2445516 m!2821597))

(declare-fun m!2821773 () Bool)

(assert (=> b!2445516 m!2821773))

(declare-fun m!2821775 () Bool)

(assert (=> b!2445510 m!2821775))

(declare-fun m!2821777 () Bool)

(assert (=> b!2445511 m!2821777))

(assert (=> b!2445268 d!705813))

(declare-fun d!705815 () Bool)

(assert (=> d!705815 (= (isEmpty!16546 lt!878889) (is-Nil!28506 lt!878889))))

(assert (=> b!2445266 d!705815))

(declare-fun d!705817 () Bool)

(assert (=> d!705817 (= (tail!3827 l!9164) (t!208581 l!9164))))

(assert (=> b!2445266 d!705817))

(declare-fun d!705819 () Bool)

(assert (=> d!705819 (= (isEmpty!16546 l!9164) (is-Nil!28506 l!9164))))

(assert (=> b!2445271 d!705819))

(declare-fun b!2445524 () Bool)

(declare-fun e!1553081 () Bool)

(declare-fun tp!776904 () Bool)

(assert (=> b!2445524 (= e!1553081 (and tp_is_empty!11781 tp!776904))))

(assert (=> b!2445265 (= tp!776874 e!1553081)))

(assert (= (and b!2445265 (is-Cons!28507 (t!208582 s!9460))) b!2445524))

(declare-fun b!2445537 () Bool)

(declare-fun e!1553084 () Bool)

(declare-fun tp!776915 () Bool)

(assert (=> b!2445537 (= e!1553084 tp!776915)))

(declare-fun b!2445538 () Bool)

(declare-fun tp!776916 () Bool)

(declare-fun tp!776918 () Bool)

(assert (=> b!2445538 (= e!1553084 (and tp!776916 tp!776918))))

(declare-fun b!2445536 () Bool)

(declare-fun tp!776919 () Bool)

(declare-fun tp!776917 () Bool)

(assert (=> b!2445536 (= e!1553084 (and tp!776919 tp!776917))))

(declare-fun b!2445535 () Bool)

(assert (=> b!2445535 (= e!1553084 tp_is_empty!11781)))

(assert (=> b!2445263 (= tp!776870 e!1553084)))

(assert (= (and b!2445263 (is-ElementMatch!7184 (regOne!14880 r!13927))) b!2445535))

(assert (= (and b!2445263 (is-Concat!11820 (regOne!14880 r!13927))) b!2445536))

(assert (= (and b!2445263 (is-Star!7184 (regOne!14880 r!13927))) b!2445537))

(assert (= (and b!2445263 (is-Union!7184 (regOne!14880 r!13927))) b!2445538))

(declare-fun b!2445541 () Bool)

(declare-fun e!1553085 () Bool)

(declare-fun tp!776920 () Bool)

(assert (=> b!2445541 (= e!1553085 tp!776920)))

(declare-fun b!2445542 () Bool)

(declare-fun tp!776921 () Bool)

(declare-fun tp!776923 () Bool)

(assert (=> b!2445542 (= e!1553085 (and tp!776921 tp!776923))))

(declare-fun b!2445540 () Bool)

(declare-fun tp!776924 () Bool)

(declare-fun tp!776922 () Bool)

(assert (=> b!2445540 (= e!1553085 (and tp!776924 tp!776922))))

(declare-fun b!2445539 () Bool)

(assert (=> b!2445539 (= e!1553085 tp_is_empty!11781)))

(assert (=> b!2445263 (= tp!776876 e!1553085)))

(assert (= (and b!2445263 (is-ElementMatch!7184 (regTwo!14880 r!13927))) b!2445539))

(assert (= (and b!2445263 (is-Concat!11820 (regTwo!14880 r!13927))) b!2445540))

(assert (= (and b!2445263 (is-Star!7184 (regTwo!14880 r!13927))) b!2445541))

(assert (= (and b!2445263 (is-Union!7184 (regTwo!14880 r!13927))) b!2445542))

(declare-fun b!2445545 () Bool)

(declare-fun e!1553086 () Bool)

(declare-fun tp!776925 () Bool)

(assert (=> b!2445545 (= e!1553086 tp!776925)))

(declare-fun b!2445546 () Bool)

(declare-fun tp!776926 () Bool)

(declare-fun tp!776928 () Bool)

(assert (=> b!2445546 (= e!1553086 (and tp!776926 tp!776928))))

(declare-fun b!2445544 () Bool)

(declare-fun tp!776929 () Bool)

(declare-fun tp!776927 () Bool)

(assert (=> b!2445544 (= e!1553086 (and tp!776929 tp!776927))))

(declare-fun b!2445543 () Bool)

(assert (=> b!2445543 (= e!1553086 tp_is_empty!11781)))

(assert (=> b!2445267 (= tp!776875 e!1553086)))

(assert (= (and b!2445267 (is-ElementMatch!7184 (reg!7513 r!13927))) b!2445543))

(assert (= (and b!2445267 (is-Concat!11820 (reg!7513 r!13927))) b!2445544))

(assert (= (and b!2445267 (is-Star!7184 (reg!7513 r!13927))) b!2445545))

(assert (= (and b!2445267 (is-Union!7184 (reg!7513 r!13927))) b!2445546))

(declare-fun b!2445549 () Bool)

(declare-fun e!1553087 () Bool)

(declare-fun tp!776930 () Bool)

(assert (=> b!2445549 (= e!1553087 tp!776930)))

(declare-fun b!2445550 () Bool)

(declare-fun tp!776931 () Bool)

(declare-fun tp!776933 () Bool)

(assert (=> b!2445550 (= e!1553087 (and tp!776931 tp!776933))))

(declare-fun b!2445548 () Bool)

(declare-fun tp!776934 () Bool)

(declare-fun tp!776932 () Bool)

(assert (=> b!2445548 (= e!1553087 (and tp!776934 tp!776932))))

(declare-fun b!2445547 () Bool)

(assert (=> b!2445547 (= e!1553087 tp_is_empty!11781)))

(assert (=> b!2445272 (= tp!776872 e!1553087)))

(assert (= (and b!2445272 (is-ElementMatch!7184 (regOne!14881 r!13927))) b!2445547))

(assert (= (and b!2445272 (is-Concat!11820 (regOne!14881 r!13927))) b!2445548))

(assert (= (and b!2445272 (is-Star!7184 (regOne!14881 r!13927))) b!2445549))

(assert (= (and b!2445272 (is-Union!7184 (regOne!14881 r!13927))) b!2445550))

(declare-fun b!2445553 () Bool)

(declare-fun e!1553088 () Bool)

(declare-fun tp!776935 () Bool)

(assert (=> b!2445553 (= e!1553088 tp!776935)))

(declare-fun b!2445554 () Bool)

(declare-fun tp!776936 () Bool)

(declare-fun tp!776938 () Bool)

(assert (=> b!2445554 (= e!1553088 (and tp!776936 tp!776938))))

(declare-fun b!2445552 () Bool)

(declare-fun tp!776939 () Bool)

(declare-fun tp!776937 () Bool)

(assert (=> b!2445552 (= e!1553088 (and tp!776939 tp!776937))))

(declare-fun b!2445551 () Bool)

(assert (=> b!2445551 (= e!1553088 tp_is_empty!11781)))

(assert (=> b!2445272 (= tp!776877 e!1553088)))

(assert (= (and b!2445272 (is-ElementMatch!7184 (regTwo!14881 r!13927))) b!2445551))

(assert (= (and b!2445272 (is-Concat!11820 (regTwo!14881 r!13927))) b!2445552))

(assert (= (and b!2445272 (is-Star!7184 (regTwo!14881 r!13927))) b!2445553))

(assert (= (and b!2445272 (is-Union!7184 (regTwo!14881 r!13927))) b!2445554))

(declare-fun b!2445557 () Bool)

(declare-fun e!1553089 () Bool)

(declare-fun tp!776940 () Bool)

(assert (=> b!2445557 (= e!1553089 tp!776940)))

(declare-fun b!2445558 () Bool)

(declare-fun tp!776941 () Bool)

(declare-fun tp!776943 () Bool)

(assert (=> b!2445558 (= e!1553089 (and tp!776941 tp!776943))))

(declare-fun b!2445556 () Bool)

(declare-fun tp!776944 () Bool)

(declare-fun tp!776942 () Bool)

(assert (=> b!2445556 (= e!1553089 (and tp!776944 tp!776942))))

(declare-fun b!2445555 () Bool)

(assert (=> b!2445555 (= e!1553089 tp_is_empty!11781)))

(assert (=> b!2445261 (= tp!776871 e!1553089)))

(assert (= (and b!2445261 (is-ElementMatch!7184 (h!33907 l!9164))) b!2445555))

(assert (= (and b!2445261 (is-Concat!11820 (h!33907 l!9164))) b!2445556))

(assert (= (and b!2445261 (is-Star!7184 (h!33907 l!9164))) b!2445557))

(assert (= (and b!2445261 (is-Union!7184 (h!33907 l!9164))) b!2445558))

(declare-fun b!2445563 () Bool)

(declare-fun e!1553092 () Bool)

(declare-fun tp!776949 () Bool)

(declare-fun tp!776950 () Bool)

(assert (=> b!2445563 (= e!1553092 (and tp!776949 tp!776950))))

(assert (=> b!2445261 (= tp!776873 e!1553092)))

(assert (= (and b!2445261 (is-Cons!28506 (t!208581 l!9164))) b!2445563))

(declare-fun b_lambda!75001 () Bool)

(assert (= b_lambda!74999 (or start!238992 b_lambda!75001)))

(declare-fun bs!465351 () Bool)

(declare-fun d!705821 () Bool)

(assert (= bs!465351 (and d!705821 start!238992)))

(assert (=> bs!465351 (= (dynLambda!12259 lambda!92560 (h!33907 l!9164)) (validRegex!2892 (h!33907 l!9164)))))

(declare-fun m!2821779 () Bool)

(assert (=> bs!465351 m!2821779))

(assert (=> b!2445376 d!705821))

(push 1)

(assert (not b!2445544))

(assert (not d!705779))

(assert (not b!2445548))

(assert (not b!2445553))

(assert (not b!2445500))

(assert (not b!2445516))

(assert (not b!2445545))

(assert (not b!2445379))

(assert (not b!2445542))

(assert (not b!2445384))

(assert (not d!705791))

(assert (not b!2445503))

(assert (not b!2445383))

(assert (not d!705781))

(assert (not b!2445550))

(assert (not b!2445411))

(assert (not b!2445412))

(assert (not b!2445368))

(assert (not d!705795))

(assert (not b!2445508))

(assert (not b!2445518))

(assert (not b!2445463))

(assert (not b!2445524))

(assert (not b!2445546))

(assert (not d!705789))

(assert (not b!2445408))

(assert (not b!2445537))

(assert (not d!705783))

(assert (not b!2445512))

(assert (not b!2445501))

(assert (not b!2445554))

(assert (not b!2445556))

(assert (not d!705811))

(assert (not b!2445497))

(assert (not b!2445380))

(assert (not b!2445563))

(assert (not b!2445552))

(assert (not d!705813))

(assert (not b!2445409))

(assert (not b!2445371))

(assert (not b!2445386))

(assert (not b!2445415))

(assert (not b!2445536))

(assert (not bm!149937))

(assert (not b!2445538))

(assert (not b!2445382))

(assert (not d!705807))

(assert (not b!2445364))

(assert (not b!2445367))

(assert (not bm!149936))

(assert (not b!2445413))

(assert (not b_lambda!75001))

(assert (not b!2445510))

(assert (not b!2445407))

(assert (not b!2445509))

(assert (not b!2445377))

(assert (not b!2445540))

(assert (not bm!149940))

(assert (not d!705803))

(assert (not bs!465351))

(assert (not d!705797))

(assert tp_is_empty!11781)

(assert (not b!2445541))

(assert (not b!2445558))

(assert (not b!2445457))

(assert (not b!2445549))

(assert (not d!705777))

(assert (not b!2445365))

(assert (not b!2445511))

(assert (not b!2445369))

(assert (not b!2445557))

(assert (not b!2445514))

(assert (not b!2445515))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

