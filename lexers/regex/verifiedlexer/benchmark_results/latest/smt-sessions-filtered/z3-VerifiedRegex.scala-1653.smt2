; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83686 () Bool)

(assert start!83686)

(declare-fun b!936512 () Bool)

(assert (=> b!936512 true))

(assert (=> b!936512 true))

(assert (=> b!936512 true))

(declare-fun lambda!31153 () Int)

(declare-fun lambda!31152 () Int)

(assert (=> b!936512 (not (= lambda!31153 lambda!31152))))

(assert (=> b!936512 true))

(assert (=> b!936512 true))

(assert (=> b!936512 true))

(declare-fun bs!238017 () Bool)

(declare-fun b!936510 () Bool)

(assert (= bs!238017 (and b!936510 b!936512)))

(declare-datatypes ((C!5700 0))(
  ( (C!5701 (val!3098 Int)) )
))
(declare-datatypes ((Regex!2565 0))(
  ( (ElementMatch!2565 (c!152322 C!5700)) (Concat!4398 (regOne!5642 Regex!2565) (regTwo!5642 Regex!2565)) (EmptyExpr!2565) (Star!2565 (reg!2894 Regex!2565)) (EmptyLang!2565) (Union!2565 (regOne!5643 Regex!2565) (regTwo!5643 Regex!2565)) )
))
(declare-fun lt!341402 () Regex!2565)

(declare-fun lt!341401 () Regex!2565)

(declare-fun r!15766 () Regex!2565)

(declare-fun lt!341400 () Regex!2565)

(declare-fun lambda!31154 () Int)

(assert (=> bs!238017 (= (and (= lt!341402 (reg!2894 r!15766)) (= lt!341401 lt!341400)) (= lambda!31154 lambda!31152))))

(assert (=> bs!238017 (not (= lambda!31154 lambda!31153))))

(assert (=> b!936510 true))

(assert (=> b!936510 true))

(assert (=> b!936510 true))

(declare-fun b!936506 () Bool)

(declare-fun e!608072 () Bool)

(declare-fun tp!290381 () Bool)

(declare-fun tp!290380 () Bool)

(assert (=> b!936506 (= e!608072 (and tp!290381 tp!290380))))

(declare-fun b!936507 () Bool)

(declare-fun e!608075 () Bool)

(declare-fun tp_is_empty!4773 () Bool)

(declare-fun tp!290384 () Bool)

(assert (=> b!936507 (= e!608075 (and tp_is_empty!4773 tp!290384))))

(declare-fun b!936508 () Bool)

(declare-fun tp!290382 () Bool)

(declare-fun tp!290379 () Bool)

(assert (=> b!936508 (= e!608072 (and tp!290382 tp!290379))))

(declare-fun b!936509 () Bool)

(declare-fun tp!290383 () Bool)

(assert (=> b!936509 (= e!608072 tp!290383)))

(declare-fun e!608074 () Bool)

(assert (=> b!936510 (= e!608074 true)))

(declare-datatypes ((List!9795 0))(
  ( (Nil!9779) (Cons!9779 (h!15180 C!5700) (t!100841 List!9795)) )
))
(declare-fun s!10566 () List!9795)

(declare-datatypes ((tuple2!11028 0))(
  ( (tuple2!11029 (_1!6340 List!9795) (_2!6340 List!9795)) )
))
(declare-datatypes ((Option!2156 0))(
  ( (None!2155) (Some!2155 (v!19572 tuple2!11028)) )
))
(declare-fun isDefined!1798 (Option!2156) Bool)

(declare-fun findConcatSeparation!262 (Regex!2565 Regex!2565 List!9795 List!9795 List!9795) Option!2156)

(declare-fun Exists!316 (Int) Bool)

(assert (=> b!936510 (= (isDefined!1798 (findConcatSeparation!262 lt!341402 lt!341401 Nil!9779 s!10566 s!10566)) (Exists!316 lambda!31154))))

(declare-datatypes ((Unit!14749 0))(
  ( (Unit!14750) )
))
(declare-fun lt!341403 () Unit!14749)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!262 (Regex!2565 Regex!2565 List!9795) Unit!14749)

(assert (=> b!936510 (= lt!341403 (lemmaFindConcatSeparationEquivalentToExists!262 lt!341402 lt!341401 s!10566))))

(declare-fun matchRSpec!366 (Regex!2565 List!9795) Bool)

(assert (=> b!936510 (matchRSpec!366 lt!341401 s!10566)))

(declare-fun lt!341405 () Unit!14749)

(declare-fun mainMatchTheorem!366 (Regex!2565 List!9795) Unit!14749)

(assert (=> b!936510 (= lt!341405 (mainMatchTheorem!366 lt!341401 s!10566))))

(declare-fun res!425246 () Bool)

(declare-fun e!608073 () Bool)

(assert (=> start!83686 (=> (not res!425246) (not e!608073))))

(declare-fun validRegex!1034 (Regex!2565) Bool)

(assert (=> start!83686 (= res!425246 (validRegex!1034 r!15766))))

(assert (=> start!83686 e!608073))

(assert (=> start!83686 e!608072))

(assert (=> start!83686 e!608075))

(declare-fun b!936511 () Bool)

(declare-fun e!608071 () Bool)

(assert (=> b!936511 (= e!608073 (not e!608071))))

(declare-fun res!425248 () Bool)

(assert (=> b!936511 (=> res!425248 e!608071)))

(declare-fun lt!341404 () Bool)

(get-info :version)

(assert (=> b!936511 (= res!425248 (or lt!341404 (and ((_ is Concat!4398) r!15766) ((_ is EmptyExpr!2565) (regOne!5642 r!15766))) (and ((_ is Concat!4398) r!15766) ((_ is EmptyExpr!2565) (regTwo!5642 r!15766))) ((_ is Concat!4398) r!15766) ((_ is Union!2565) r!15766) (not ((_ is Star!2565) r!15766))))))

(assert (=> b!936511 (= lt!341404 (matchRSpec!366 r!15766 s!10566))))

(declare-fun matchR!1103 (Regex!2565 List!9795) Bool)

(assert (=> b!936511 (= lt!341404 (matchR!1103 r!15766 s!10566))))

(declare-fun lt!341397 () Unit!14749)

(assert (=> b!936511 (= lt!341397 (mainMatchTheorem!366 r!15766 s!10566))))

(assert (=> b!936512 (= e!608071 e!608074)))

(declare-fun res!425247 () Bool)

(assert (=> b!936512 (=> res!425247 e!608074)))

(assert (=> b!936512 (= res!425247 (not (matchR!1103 lt!341401 s!10566)))))

(assert (=> b!936512 (= lt!341401 (Star!2565 lt!341402))))

(declare-fun removeUselessConcat!234 (Regex!2565) Regex!2565)

(assert (=> b!936512 (= lt!341402 (removeUselessConcat!234 (reg!2894 r!15766)))))

(assert (=> b!936512 (= (Exists!316 lambda!31152) (Exists!316 lambda!31153))))

(declare-fun lt!341399 () Unit!14749)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!60 (Regex!2565 List!9795) Unit!14749)

(assert (=> b!936512 (= lt!341399 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!60 (reg!2894 r!15766) s!10566))))

(assert (=> b!936512 (= (isDefined!1798 (findConcatSeparation!262 (reg!2894 r!15766) lt!341400 Nil!9779 s!10566 s!10566)) (Exists!316 lambda!31152))))

(declare-fun lt!341398 () Unit!14749)

(assert (=> b!936512 (= lt!341398 (lemmaFindConcatSeparationEquivalentToExists!262 (reg!2894 r!15766) lt!341400 s!10566))))

(assert (=> b!936512 (= lt!341400 (Star!2565 (reg!2894 r!15766)))))

(declare-fun b!936513 () Bool)

(assert (=> b!936513 (= e!608072 tp_is_empty!4773)))

(assert (= (and start!83686 res!425246) b!936511))

(assert (= (and b!936511 (not res!425248)) b!936512))

(assert (= (and b!936512 (not res!425247)) b!936510))

(assert (= (and start!83686 ((_ is ElementMatch!2565) r!15766)) b!936513))

(assert (= (and start!83686 ((_ is Concat!4398) r!15766)) b!936506))

(assert (= (and start!83686 ((_ is Star!2565) r!15766)) b!936509))

(assert (= (and start!83686 ((_ is Union!2565) r!15766)) b!936508))

(assert (= (and start!83686 ((_ is Cons!9779) s!10566)) b!936507))

(declare-fun m!1155725 () Bool)

(assert (=> b!936510 m!1155725))

(declare-fun m!1155727 () Bool)

(assert (=> b!936510 m!1155727))

(declare-fun m!1155729 () Bool)

(assert (=> b!936510 m!1155729))

(declare-fun m!1155731 () Bool)

(assert (=> b!936510 m!1155731))

(assert (=> b!936510 m!1155727))

(declare-fun m!1155733 () Bool)

(assert (=> b!936510 m!1155733))

(declare-fun m!1155735 () Bool)

(assert (=> b!936510 m!1155735))

(declare-fun m!1155737 () Bool)

(assert (=> start!83686 m!1155737))

(declare-fun m!1155739 () Bool)

(assert (=> b!936511 m!1155739))

(declare-fun m!1155741 () Bool)

(assert (=> b!936511 m!1155741))

(declare-fun m!1155743 () Bool)

(assert (=> b!936511 m!1155743))

(declare-fun m!1155745 () Bool)

(assert (=> b!936512 m!1155745))

(declare-fun m!1155747 () Bool)

(assert (=> b!936512 m!1155747))

(declare-fun m!1155749 () Bool)

(assert (=> b!936512 m!1155749))

(declare-fun m!1155751 () Bool)

(assert (=> b!936512 m!1155751))

(declare-fun m!1155753 () Bool)

(assert (=> b!936512 m!1155753))

(declare-fun m!1155755 () Bool)

(assert (=> b!936512 m!1155755))

(declare-fun m!1155757 () Bool)

(assert (=> b!936512 m!1155757))

(assert (=> b!936512 m!1155751))

(assert (=> b!936512 m!1155747))

(declare-fun m!1155759 () Bool)

(assert (=> b!936512 m!1155759))

(check-sat tp_is_empty!4773 (not b!936507) (not b!936511) (not b!936512) (not b!936510) (not start!83686) (not b!936508) (not b!936506) (not b!936509))
(check-sat)
