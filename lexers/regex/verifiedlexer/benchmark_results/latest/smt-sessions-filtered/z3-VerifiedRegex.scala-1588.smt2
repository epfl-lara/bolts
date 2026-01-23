; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81990 () Bool)

(assert start!81990)

(declare-fun b!911891 () Bool)

(assert (=> b!911891 true))

(assert (=> b!911891 true))

(declare-fun lambda!29124 () Int)

(declare-fun lambda!29123 () Int)

(assert (=> b!911891 (not (= lambda!29124 lambda!29123))))

(assert (=> b!911891 true))

(assert (=> b!911891 true))

(declare-fun res!414705 () Bool)

(declare-fun e!594748 () Bool)

(assert (=> start!81990 (=> (not res!414705) (not e!594748))))

(declare-datatypes ((C!5440 0))(
  ( (C!5441 (val!2968 Int)) )
))
(declare-datatypes ((Regex!2435 0))(
  ( (ElementMatch!2435 (c!147708 C!5440)) (Concat!4268 (regOne!5382 Regex!2435) (regTwo!5382 Regex!2435)) (EmptyExpr!2435) (Star!2435 (reg!2764 Regex!2435)) (EmptyLang!2435) (Union!2435 (regOne!5383 Regex!2435) (regTwo!5383 Regex!2435)) )
))
(declare-fun r!15766 () Regex!2435)

(declare-fun validRegex!904 (Regex!2435) Bool)

(assert (=> start!81990 (= res!414705 (validRegex!904 r!15766))))

(assert (=> start!81990 e!594748))

(declare-fun e!594749 () Bool)

(assert (=> start!81990 e!594749))

(declare-fun e!594750 () Bool)

(assert (=> start!81990 e!594750))

(declare-fun b!911883 () Bool)

(declare-fun tp!285079 () Bool)

(declare-fun tp!285078 () Bool)

(assert (=> b!911883 (= e!594749 (and tp!285079 tp!285078))))

(declare-fun b!911884 () Bool)

(declare-fun tp!285077 () Bool)

(assert (=> b!911884 (= e!594749 tp!285077)))

(declare-fun b!911885 () Bool)

(declare-fun tp_is_empty!4513 () Bool)

(assert (=> b!911885 (= e!594749 tp_is_empty!4513)))

(declare-fun b!911886 () Bool)

(declare-fun tp!285080 () Bool)

(declare-fun tp!285076 () Bool)

(assert (=> b!911886 (= e!594749 (and tp!285080 tp!285076))))

(declare-fun b!911887 () Bool)

(declare-fun e!594751 () Bool)

(assert (=> b!911887 (= e!594751 true)))

(declare-datatypes ((List!9665 0))(
  ( (Nil!9649) (Cons!9649 (h!15050 C!5440) (t!100711 List!9665)) )
))
(declare-fun s!10566 () List!9665)

(declare-fun matchR!973 (Regex!2435 List!9665) Bool)

(declare-fun removeUselessConcat!120 (Regex!2435) Regex!2435)

(assert (=> b!911887 (= (matchR!973 (regOne!5382 r!15766) s!10566) (matchR!973 (removeUselessConcat!120 (regOne!5382 r!15766)) s!10566))))

(declare-datatypes ((Unit!14489 0))(
  ( (Unit!14490) )
))
(declare-fun lt!336867 () Unit!14489)

(declare-fun lemmaRemoveUselessConcatSound!106 (Regex!2435 List!9665) Unit!14489)

(assert (=> b!911887 (= lt!336867 (lemmaRemoveUselessConcatSound!106 (regOne!5382 r!15766) s!10566))))

(declare-fun b!911888 () Bool)

(declare-fun e!594747 () Bool)

(assert (=> b!911888 (= e!594748 (not e!594747))))

(declare-fun res!414704 () Bool)

(assert (=> b!911888 (=> res!414704 e!594747)))

(declare-fun lt!336866 () Bool)

(get-info :version)

(assert (=> b!911888 (= res!414704 (or lt!336866 (and ((_ is Concat!4268) r!15766) ((_ is EmptyExpr!2435) (regOne!5382 r!15766))) (not ((_ is Concat!4268) r!15766)) (not ((_ is EmptyExpr!2435) (regTwo!5382 r!15766)))))))

(declare-fun matchRSpec!236 (Regex!2435 List!9665) Bool)

(assert (=> b!911888 (= lt!336866 (matchRSpec!236 r!15766 s!10566))))

(assert (=> b!911888 (= lt!336866 (matchR!973 r!15766 s!10566))))

(declare-fun lt!336868 () Unit!14489)

(declare-fun mainMatchTheorem!236 (Regex!2435 List!9665) Unit!14489)

(assert (=> b!911888 (= lt!336868 (mainMatchTheorem!236 r!15766 s!10566))))

(declare-fun b!911889 () Bool)

(declare-fun res!414703 () Bool)

(assert (=> b!911889 (=> res!414703 e!594751)))

(declare-datatypes ((tuple2!10860 0))(
  ( (tuple2!10861 (_1!6256 List!9665) (_2!6256 List!9665)) )
))
(declare-datatypes ((Option!2072 0))(
  ( (None!2071) (Some!2071 (v!19488 tuple2!10860)) )
))
(declare-fun lt!336869 () Option!2072)

(declare-fun isEmpty!5873 (Option!2072) Bool)

(assert (=> b!911889 (= res!414703 (not (isEmpty!5873 lt!336869)))))

(declare-fun b!911890 () Bool)

(declare-fun tp!285075 () Bool)

(assert (=> b!911890 (= e!594750 (and tp_is_empty!4513 tp!285075))))

(assert (=> b!911891 (= e!594747 e!594751)))

(declare-fun res!414706 () Bool)

(assert (=> b!911891 (=> res!414706 e!594751)))

(declare-fun isEmpty!5874 (List!9665) Bool)

(assert (=> b!911891 (= res!414706 (isEmpty!5874 s!10566))))

(declare-fun Exists!208 (Int) Bool)

(assert (=> b!911891 (= (Exists!208 lambda!29123) (Exists!208 lambda!29124))))

(declare-fun lt!336865 () Unit!14489)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!122 (Regex!2435 Regex!2435 List!9665) Unit!14489)

(assert (=> b!911891 (= lt!336865 (lemmaExistCutMatchRandMatchRSpecEquivalent!122 (regOne!5382 r!15766) EmptyExpr!2435 s!10566))))

(declare-fun isDefined!1714 (Option!2072) Bool)

(assert (=> b!911891 (= (isDefined!1714 lt!336869) (Exists!208 lambda!29123))))

(declare-fun findConcatSeparation!178 (Regex!2435 Regex!2435 List!9665 List!9665 List!9665) Option!2072)

(assert (=> b!911891 (= lt!336869 (findConcatSeparation!178 (regOne!5382 r!15766) EmptyExpr!2435 Nil!9649 s!10566 s!10566))))

(declare-fun lt!336864 () Unit!14489)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!178 (Regex!2435 Regex!2435 List!9665) Unit!14489)

(assert (=> b!911891 (= lt!336864 (lemmaFindConcatSeparationEquivalentToExists!178 (regOne!5382 r!15766) EmptyExpr!2435 s!10566))))

(assert (= (and start!81990 res!414705) b!911888))

(assert (= (and b!911888 (not res!414704)) b!911891))

(assert (= (and b!911891 (not res!414706)) b!911889))

(assert (= (and b!911889 (not res!414703)) b!911887))

(assert (= (and start!81990 ((_ is ElementMatch!2435) r!15766)) b!911885))

(assert (= (and start!81990 ((_ is Concat!4268) r!15766)) b!911883))

(assert (= (and start!81990 ((_ is Star!2435) r!15766)) b!911884))

(assert (= (and start!81990 ((_ is Union!2435) r!15766)) b!911886))

(assert (= (and start!81990 ((_ is Cons!9649) s!10566)) b!911890))

(declare-fun m!1143697 () Bool)

(assert (=> start!81990 m!1143697))

(declare-fun m!1143699 () Bool)

(assert (=> b!911889 m!1143699))

(declare-fun m!1143701 () Bool)

(assert (=> b!911887 m!1143701))

(declare-fun m!1143703 () Bool)

(assert (=> b!911887 m!1143703))

(assert (=> b!911887 m!1143703))

(declare-fun m!1143705 () Bool)

(assert (=> b!911887 m!1143705))

(declare-fun m!1143707 () Bool)

(assert (=> b!911887 m!1143707))

(declare-fun m!1143709 () Bool)

(assert (=> b!911891 m!1143709))

(declare-fun m!1143711 () Bool)

(assert (=> b!911891 m!1143711))

(declare-fun m!1143713 () Bool)

(assert (=> b!911891 m!1143713))

(declare-fun m!1143715 () Bool)

(assert (=> b!911891 m!1143715))

(declare-fun m!1143717 () Bool)

(assert (=> b!911891 m!1143717))

(assert (=> b!911891 m!1143713))

(declare-fun m!1143719 () Bool)

(assert (=> b!911891 m!1143719))

(declare-fun m!1143721 () Bool)

(assert (=> b!911891 m!1143721))

(declare-fun m!1143723 () Bool)

(assert (=> b!911888 m!1143723))

(declare-fun m!1143725 () Bool)

(assert (=> b!911888 m!1143725))

(declare-fun m!1143727 () Bool)

(assert (=> b!911888 m!1143727))

(check-sat (not b!911890) (not b!911886) (not start!81990) (not b!911884) tp_is_empty!4513 (not b!911889) (not b!911891) (not b!911888) (not b!911883) (not b!911887))
(check-sat)
