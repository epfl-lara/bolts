; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81982 () Bool)

(assert start!81982)

(declare-fun b!911706 () Bool)

(assert (=> b!911706 true))

(assert (=> b!911706 true))

(declare-fun lambda!29092 () Int)

(declare-fun lambda!29091 () Int)

(assert (=> b!911706 (not (= lambda!29092 lambda!29091))))

(assert (=> b!911706 true))

(assert (=> b!911706 true))

(declare-fun b!911699 () Bool)

(declare-fun e!594660 () Bool)

(declare-fun e!594659 () Bool)

(assert (=> b!911699 (= e!594660 e!594659)))

(declare-fun res!414599 () Bool)

(assert (=> b!911699 (=> res!414599 e!594659)))

(declare-fun lt!336758 () Bool)

(declare-fun lt!336765 () Bool)

(assert (=> b!911699 (= res!414599 (or (not lt!336758) (not lt!336765)))))

(assert (=> b!911699 (= lt!336765 lt!336758)))

(declare-datatypes ((C!5432 0))(
  ( (C!5433 (val!2964 Int)) )
))
(declare-datatypes ((Regex!2431 0))(
  ( (ElementMatch!2431 (c!147704 C!5432)) (Concat!4264 (regOne!5374 Regex!2431) (regTwo!5374 Regex!2431)) (EmptyExpr!2431) (Star!2431 (reg!2760 Regex!2431)) (EmptyLang!2431) (Union!2431 (regOne!5375 Regex!2431) (regTwo!5375 Regex!2431)) )
))
(declare-fun lt!336767 () Regex!2431)

(declare-datatypes ((List!9661 0))(
  ( (Nil!9645) (Cons!9645 (h!15046 C!5432) (t!100707 List!9661)) )
))
(declare-fun s!10566 () List!9661)

(declare-fun matchR!969 (Regex!2431 List!9661) Bool)

(assert (=> b!911699 (= lt!336758 (matchR!969 lt!336767 s!10566))))

(declare-fun r!15766 () Regex!2431)

(assert (=> b!911699 (= lt!336765 (matchR!969 (regOne!5374 r!15766) s!10566))))

(declare-fun removeUselessConcat!116 (Regex!2431) Regex!2431)

(assert (=> b!911699 (= lt!336767 (removeUselessConcat!116 (regOne!5374 r!15766)))))

(declare-datatypes ((Unit!14481 0))(
  ( (Unit!14482) )
))
(declare-fun lt!336759 () Unit!14481)

(declare-fun lemmaRemoveUselessConcatSound!102 (Regex!2431 List!9661) Unit!14481)

(assert (=> b!911699 (= lt!336759 (lemmaRemoveUselessConcatSound!102 (regOne!5374 r!15766) s!10566))))

(declare-fun b!911700 () Bool)

(declare-fun res!414596 () Bool)

(assert (=> b!911700 (=> res!414596 e!594659)))

(declare-fun validRegex!900 (Regex!2431) Bool)

(assert (=> b!911700 (= res!414596 (not (validRegex!900 (regOne!5374 r!15766))))))

(declare-fun b!911701 () Bool)

(declare-fun res!414601 () Bool)

(assert (=> b!911701 (=> res!414601 e!594659)))

(assert (=> b!911701 (= res!414601 false)))

(declare-fun b!911702 () Bool)

(assert (=> b!911702 (= e!594659 true)))

(declare-fun lt!336764 () Bool)

(assert (=> b!911702 (= lt!336764 (matchR!969 EmptyExpr!2431 Nil!9645))))

(declare-fun b!911703 () Bool)

(declare-fun res!414604 () Bool)

(assert (=> b!911703 (=> res!414604 e!594659)))

(declare-fun ++!2539 (List!9661 List!9661) List!9661)

(assert (=> b!911703 (= res!414604 (not (= (++!2539 Nil!9645 s!10566) s!10566)))))

(declare-fun b!911705 () Bool)

(declare-fun res!414600 () Bool)

(assert (=> b!911705 (=> res!414600 e!594659)))

(declare-fun isPrefix!1005 (List!9661 List!9661) Bool)

(assert (=> b!911705 (= res!414600 (not (isPrefix!1005 Nil!9645 s!10566)))))

(declare-fun e!594658 () Bool)

(assert (=> b!911706 (= e!594658 e!594660)))

(declare-fun res!414595 () Bool)

(assert (=> b!911706 (=> res!414595 e!594660)))

(declare-fun isEmpty!5865 (List!9661) Bool)

(assert (=> b!911706 (= res!414595 (isEmpty!5865 s!10566))))

(declare-fun Exists!204 (Int) Bool)

(assert (=> b!911706 (= (Exists!204 lambda!29091) (Exists!204 lambda!29092))))

(declare-fun lt!336761 () Unit!14481)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!118 (Regex!2431 Regex!2431 List!9661) Unit!14481)

(assert (=> b!911706 (= lt!336761 (lemmaExistCutMatchRandMatchRSpecEquivalent!118 (regOne!5374 r!15766) EmptyExpr!2431 s!10566))))

(declare-datatypes ((tuple2!10852 0))(
  ( (tuple2!10853 (_1!6252 List!9661) (_2!6252 List!9661)) )
))
(declare-datatypes ((Option!2068 0))(
  ( (None!2067) (Some!2067 (v!19484 tuple2!10852)) )
))
(declare-fun lt!336766 () Option!2068)

(declare-fun isDefined!1710 (Option!2068) Bool)

(assert (=> b!911706 (= (isDefined!1710 lt!336766) (Exists!204 lambda!29091))))

(declare-fun findConcatSeparation!174 (Regex!2431 Regex!2431 List!9661 List!9661 List!9661) Option!2068)

(assert (=> b!911706 (= lt!336766 (findConcatSeparation!174 (regOne!5374 r!15766) EmptyExpr!2431 Nil!9645 s!10566 s!10566))))

(declare-fun lt!336763 () Unit!14481)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!174 (Regex!2431 Regex!2431 List!9661) Unit!14481)

(assert (=> b!911706 (= lt!336763 (lemmaFindConcatSeparationEquivalentToExists!174 (regOne!5374 r!15766) EmptyExpr!2431 s!10566))))

(declare-fun b!911707 () Bool)

(declare-fun res!414602 () Bool)

(assert (=> b!911707 (=> res!414602 e!594659)))

(assert (=> b!911707 (= res!414602 (not (= (++!2539 s!10566 Nil!9645) s!10566)))))

(declare-fun b!911708 () Bool)

(declare-fun e!594657 () Bool)

(declare-fun tp!285008 () Bool)

(declare-fun tp!285006 () Bool)

(assert (=> b!911708 (= e!594657 (and tp!285008 tp!285006))))

(declare-fun b!911709 () Bool)

(declare-fun res!414598 () Bool)

(assert (=> b!911709 (=> res!414598 e!594660)))

(declare-fun isEmpty!5866 (Option!2068) Bool)

(assert (=> b!911709 (= res!414598 (not (isEmpty!5866 lt!336766)))))

(declare-fun b!911710 () Bool)

(declare-fun tp_is_empty!4505 () Bool)

(assert (=> b!911710 (= e!594657 tp_is_empty!4505)))

(declare-fun b!911711 () Bool)

(declare-fun tp!285007 () Bool)

(assert (=> b!911711 (= e!594657 tp!285007)))

(declare-fun b!911712 () Bool)

(declare-fun e!594661 () Bool)

(declare-fun tp!285004 () Bool)

(assert (=> b!911712 (= e!594661 (and tp_is_empty!4505 tp!285004))))

(declare-fun b!911713 () Bool)

(declare-fun tp!285005 () Bool)

(declare-fun tp!285003 () Bool)

(assert (=> b!911713 (= e!594657 (and tp!285005 tp!285003))))

(declare-fun b!911704 () Bool)

(declare-fun e!594656 () Bool)

(assert (=> b!911704 (= e!594656 (not e!594658))))

(declare-fun res!414597 () Bool)

(assert (=> b!911704 (=> res!414597 e!594658)))

(declare-fun lt!336762 () Bool)

(get-info :version)

(assert (=> b!911704 (= res!414597 (or lt!336762 (and ((_ is Concat!4264) r!15766) ((_ is EmptyExpr!2431) (regOne!5374 r!15766))) (not ((_ is Concat!4264) r!15766)) (not ((_ is EmptyExpr!2431) (regTwo!5374 r!15766)))))))

(declare-fun matchRSpec!232 (Regex!2431 List!9661) Bool)

(assert (=> b!911704 (= lt!336762 (matchRSpec!232 r!15766 s!10566))))

(assert (=> b!911704 (= lt!336762 (matchR!969 r!15766 s!10566))))

(declare-fun lt!336760 () Unit!14481)

(declare-fun mainMatchTheorem!232 (Regex!2431 List!9661) Unit!14481)

(assert (=> b!911704 (= lt!336760 (mainMatchTheorem!232 r!15766 s!10566))))

(declare-fun res!414603 () Bool)

(assert (=> start!81982 (=> (not res!414603) (not e!594656))))

(assert (=> start!81982 (= res!414603 (validRegex!900 r!15766))))

(assert (=> start!81982 e!594656))

(assert (=> start!81982 e!594657))

(assert (=> start!81982 e!594661))

(assert (= (and start!81982 res!414603) b!911704))

(assert (= (and b!911704 (not res!414597)) b!911706))

(assert (= (and b!911706 (not res!414595)) b!911709))

(assert (= (and b!911709 (not res!414598)) b!911699))

(assert (= (and b!911699 (not res!414599)) b!911700))

(assert (= (and b!911700 (not res!414596)) b!911701))

(assert (= (and b!911701 (not res!414601)) b!911707))

(assert (= (and b!911707 (not res!414602)) b!911705))

(assert (= (and b!911705 (not res!414600)) b!911703))

(assert (= (and b!911703 (not res!414604)) b!911702))

(assert (= (and start!81982 ((_ is ElementMatch!2431) r!15766)) b!911710))

(assert (= (and start!81982 ((_ is Concat!4264) r!15766)) b!911713))

(assert (= (and start!81982 ((_ is Star!2431) r!15766)) b!911711))

(assert (= (and start!81982 ((_ is Union!2431) r!15766)) b!911708))

(assert (= (and start!81982 ((_ is Cons!9645) s!10566)) b!911712))

(declare-fun m!1143555 () Bool)

(assert (=> b!911706 m!1143555))

(declare-fun m!1143557 () Bool)

(assert (=> b!911706 m!1143557))

(declare-fun m!1143559 () Bool)

(assert (=> b!911706 m!1143559))

(declare-fun m!1143561 () Bool)

(assert (=> b!911706 m!1143561))

(declare-fun m!1143563 () Bool)

(assert (=> b!911706 m!1143563))

(assert (=> b!911706 m!1143563))

(declare-fun m!1143565 () Bool)

(assert (=> b!911706 m!1143565))

(declare-fun m!1143567 () Bool)

(assert (=> b!911706 m!1143567))

(declare-fun m!1143569 () Bool)

(assert (=> b!911709 m!1143569))

(declare-fun m!1143571 () Bool)

(assert (=> start!81982 m!1143571))

(declare-fun m!1143573 () Bool)

(assert (=> b!911705 m!1143573))

(declare-fun m!1143575 () Bool)

(assert (=> b!911702 m!1143575))

(declare-fun m!1143577 () Bool)

(assert (=> b!911700 m!1143577))

(declare-fun m!1143579 () Bool)

(assert (=> b!911707 m!1143579))

(declare-fun m!1143581 () Bool)

(assert (=> b!911703 m!1143581))

(declare-fun m!1143583 () Bool)

(assert (=> b!911699 m!1143583))

(declare-fun m!1143585 () Bool)

(assert (=> b!911699 m!1143585))

(declare-fun m!1143587 () Bool)

(assert (=> b!911699 m!1143587))

(declare-fun m!1143589 () Bool)

(assert (=> b!911699 m!1143589))

(declare-fun m!1143591 () Bool)

(assert (=> b!911704 m!1143591))

(declare-fun m!1143593 () Bool)

(assert (=> b!911704 m!1143593))

(declare-fun m!1143595 () Bool)

(assert (=> b!911704 m!1143595))

(check-sat (not b!911713) tp_is_empty!4505 (not b!911699) (not b!911709) (not b!911706) (not b!911700) (not b!911702) (not b!911711) (not b!911703) (not b!911708) (not b!911707) (not b!911704) (not b!911712) (not b!911705) (not start!81982))
(check-sat)
