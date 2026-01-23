; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89326 () Bool)

(assert start!89326)

(declare-fun b!1026198 () Bool)

(assert (=> b!1026198 true))

(assert (=> b!1026198 true))

(declare-fun b!1026194 () Bool)

(declare-fun e!654724 () Bool)

(declare-fun tp_is_empty!5325 () Bool)

(assert (=> b!1026194 (= e!654724 tp_is_empty!5325)))

(declare-fun b!1026195 () Bool)

(declare-fun tp!311387 () Bool)

(assert (=> b!1026195 (= e!654724 tp!311387)))

(declare-fun b!1026196 () Bool)

(declare-fun e!654722 () Bool)

(declare-fun tp!311388 () Bool)

(assert (=> b!1026196 (= e!654722 (and tp_is_empty!5325 tp!311388))))

(declare-fun b!1026197 () Bool)

(declare-fun tp!311383 () Bool)

(declare-fun tp!311386 () Bool)

(assert (=> b!1026197 (= e!654724 (and tp!311383 tp!311386))))

(declare-fun e!654725 () Bool)

(declare-fun e!654723 () Bool)

(assert (=> b!1026198 (= e!654725 e!654723)))

(declare-fun res!461014 () Bool)

(assert (=> b!1026198 (=> res!461014 e!654723)))

(declare-datatypes ((C!6252 0))(
  ( (C!6253 (val!3374 Int)) )
))
(declare-datatypes ((Regex!2841 0))(
  ( (ElementMatch!2841 (c!170158 C!6252)) (Concat!4674 (regOne!6194 Regex!2841) (regTwo!6194 Regex!2841)) (EmptyExpr!2841) (Star!2841 (reg!3170 Regex!2841)) (EmptyLang!2841) (Union!2841 (regOne!6195 Regex!2841) (regTwo!6195 Regex!2841)) )
))
(declare-fun r!15766 () Regex!2841)

(declare-fun validRegex!1310 (Regex!2841) Bool)

(assert (=> b!1026198 (= res!461014 (not (validRegex!1310 (regOne!6194 r!15766))))))

(declare-datatypes ((List!10071 0))(
  ( (Nil!10055) (Cons!10055 (h!15456 C!6252) (t!101117 List!10071)) )
))
(declare-fun s!10566 () List!10071)

(declare-fun lambda!36616 () Int)

(declare-datatypes ((tuple2!11456 0))(
  ( (tuple2!11457 (_1!6554 List!10071) (_2!6554 List!10071)) )
))
(declare-datatypes ((Option!2370 0))(
  ( (None!2369) (Some!2369 (v!19786 tuple2!11456)) )
))
(declare-fun isDefined!2012 (Option!2370) Bool)

(declare-fun findConcatSeparation!476 (Regex!2841 Regex!2841 List!10071 List!10071 List!10071) Option!2370)

(declare-fun Exists!568 (Int) Bool)

(assert (=> b!1026198 (= (isDefined!2012 (findConcatSeparation!476 (regOne!6194 r!15766) EmptyExpr!2841 Nil!10055 s!10566 s!10566)) (Exists!568 lambda!36616))))

(declare-datatypes ((Unit!15357 0))(
  ( (Unit!15358) )
))
(declare-fun lt!355195 () Unit!15357)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!476 (Regex!2841 Regex!2841 List!10071) Unit!15357)

(assert (=> b!1026198 (= lt!355195 (lemmaFindConcatSeparationEquivalentToExists!476 (regOne!6194 r!15766) EmptyExpr!2841 s!10566))))

(declare-fun b!1026200 () Bool)

(declare-fun e!654721 () Bool)

(assert (=> b!1026200 (= e!654721 (not e!654725))))

(declare-fun res!461013 () Bool)

(assert (=> b!1026200 (=> res!461013 e!654725)))

(declare-fun lt!355194 () Bool)

(get-info :version)

(assert (=> b!1026200 (= res!461013 (or lt!355194 (and ((_ is Concat!4674) r!15766) ((_ is EmptyExpr!2841) (regOne!6194 r!15766))) (not ((_ is Concat!4674) r!15766)) (not ((_ is EmptyExpr!2841) (regTwo!6194 r!15766)))))))

(declare-fun matchRSpec!640 (Regex!2841 List!10071) Bool)

(assert (=> b!1026200 (= lt!355194 (matchRSpec!640 r!15766 s!10566))))

(declare-fun matchR!1377 (Regex!2841 List!10071) Bool)

(assert (=> b!1026200 (= lt!355194 (matchR!1377 r!15766 s!10566))))

(declare-fun lt!355193 () Unit!15357)

(declare-fun mainMatchTheorem!640 (Regex!2841 List!10071) Unit!15357)

(assert (=> b!1026200 (= lt!355193 (mainMatchTheorem!640 r!15766 s!10566))))

(declare-fun b!1026201 () Bool)

(assert (=> b!1026201 (= e!654723 true)))

(declare-fun res!461012 () Bool)

(assert (=> start!89326 (=> (not res!461012) (not e!654721))))

(assert (=> start!89326 (= res!461012 (validRegex!1310 r!15766))))

(assert (=> start!89326 e!654721))

(assert (=> start!89326 e!654724))

(assert (=> start!89326 e!654722))

(declare-fun b!1026199 () Bool)

(declare-fun tp!311385 () Bool)

(declare-fun tp!311384 () Bool)

(assert (=> b!1026199 (= e!654724 (and tp!311385 tp!311384))))

(assert (= (and start!89326 res!461012) b!1026200))

(assert (= (and b!1026200 (not res!461013)) b!1026198))

(assert (= (and b!1026198 (not res!461014)) b!1026201))

(assert (= (and start!89326 ((_ is ElementMatch!2841) r!15766)) b!1026194))

(assert (= (and start!89326 ((_ is Concat!4674) r!15766)) b!1026199))

(assert (= (and start!89326 ((_ is Star!2841) r!15766)) b!1026195))

(assert (= (and start!89326 ((_ is Union!2841) r!15766)) b!1026197))

(assert (= (and start!89326 ((_ is Cons!10055) s!10566)) b!1026196))

(declare-fun m!1202459 () Bool)

(assert (=> b!1026198 m!1202459))

(declare-fun m!1202461 () Bool)

(assert (=> b!1026198 m!1202461))

(declare-fun m!1202463 () Bool)

(assert (=> b!1026198 m!1202463))

(declare-fun m!1202465 () Bool)

(assert (=> b!1026198 m!1202465))

(assert (=> b!1026198 m!1202461))

(declare-fun m!1202467 () Bool)

(assert (=> b!1026198 m!1202467))

(declare-fun m!1202469 () Bool)

(assert (=> b!1026200 m!1202469))

(declare-fun m!1202471 () Bool)

(assert (=> b!1026200 m!1202471))

(declare-fun m!1202473 () Bool)

(assert (=> b!1026200 m!1202473))

(declare-fun m!1202475 () Bool)

(assert (=> start!89326 m!1202475))

(check-sat (not b!1026198) (not b!1026195) (not b!1026199) (not b!1026196) (not start!89326) tp_is_empty!5325 (not b!1026200) (not b!1026197))
(check-sat)
