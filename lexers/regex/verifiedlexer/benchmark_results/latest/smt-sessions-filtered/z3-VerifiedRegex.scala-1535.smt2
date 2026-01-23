; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80586 () Bool)

(assert start!80586)

(declare-fun b!894754 () Bool)

(declare-fun e!585867 () Bool)

(assert (=> b!894754 (= e!585867 (not true))))

(declare-datatypes ((C!5228 0))(
  ( (C!5229 (val!2862 Int)) )
))
(declare-datatypes ((Regex!2329 0))(
  ( (ElementMatch!2329 (c!144918 C!5228)) (Concat!4162 (regOne!5170 Regex!2329) (regTwo!5170 Regex!2329)) (EmptyExpr!2329) (Star!2329 (reg!2658 Regex!2329)) (EmptyLang!2329) (Union!2329 (regOne!5171 Regex!2329) (regTwo!5171 Regex!2329)) )
))
(declare-fun r!15766 () Regex!2329)

(declare-datatypes ((List!9559 0))(
  ( (Nil!9543) (Cons!9543 (h!14944 C!5228) (t!100605 List!9559)) )
))
(declare-fun s!10566 () List!9559)

(declare-fun matchR!867 (Regex!2329 List!9559) Bool)

(declare-fun matchRSpec!130 (Regex!2329 List!9559) Bool)

(assert (=> b!894754 (= (matchR!867 r!15766 s!10566) (matchRSpec!130 r!15766 s!10566))))

(declare-datatypes ((Unit!14237 0))(
  ( (Unit!14238) )
))
(declare-fun lt!333153 () Unit!14237)

(declare-fun mainMatchTheorem!130 (Regex!2329 List!9559) Unit!14237)

(assert (=> b!894754 (= lt!333153 (mainMatchTheorem!130 r!15766 s!10566))))

(declare-fun b!894755 () Bool)

(declare-fun e!585866 () Bool)

(declare-fun tp_is_empty!4301 () Bool)

(declare-fun tp!281271 () Bool)

(assert (=> b!894755 (= e!585866 (and tp_is_empty!4301 tp!281271))))

(declare-fun b!894756 () Bool)

(declare-fun e!585865 () Bool)

(declare-fun tp!281272 () Bool)

(declare-fun tp!281270 () Bool)

(assert (=> b!894756 (= e!585865 (and tp!281272 tp!281270))))

(declare-fun b!894757 () Bool)

(declare-fun tp!281269 () Bool)

(assert (=> b!894757 (= e!585865 tp!281269)))

(declare-fun b!894758 () Bool)

(declare-fun tp!281268 () Bool)

(declare-fun tp!281267 () Bool)

(assert (=> b!894758 (= e!585865 (and tp!281268 tp!281267))))

(declare-fun b!894759 () Bool)

(assert (=> b!894759 (= e!585865 tp_is_empty!4301)))

(declare-fun res!406686 () Bool)

(assert (=> start!80586 (=> (not res!406686) (not e!585867))))

(declare-fun validRegex!798 (Regex!2329) Bool)

(assert (=> start!80586 (= res!406686 (validRegex!798 r!15766))))

(assert (=> start!80586 e!585867))

(assert (=> start!80586 e!585865))

(assert (=> start!80586 e!585866))

(assert (= (and start!80586 res!406686) b!894754))

(get-info :version)

(assert (= (and start!80586 ((_ is ElementMatch!2329) r!15766)) b!894759))

(assert (= (and start!80586 ((_ is Concat!4162) r!15766)) b!894758))

(assert (= (and start!80586 ((_ is Star!2329) r!15766)) b!894757))

(assert (= (and start!80586 ((_ is Union!2329) r!15766)) b!894756))

(assert (= (and start!80586 ((_ is Cons!9543) s!10566)) b!894755))

(declare-fun m!1135501 () Bool)

(assert (=> b!894754 m!1135501))

(declare-fun m!1135503 () Bool)

(assert (=> b!894754 m!1135503))

(declare-fun m!1135505 () Bool)

(assert (=> b!894754 m!1135505))

(declare-fun m!1135507 () Bool)

(assert (=> start!80586 m!1135507))

(check-sat (not b!894757) (not b!894758) (not b!894754) tp_is_empty!4301 (not b!894755) (not start!80586) (not b!894756))
(check-sat)
