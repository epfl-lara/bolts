; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!691108 () Bool)

(assert start!691108)

(declare-fun b!7099670 () Bool)

(declare-fun e!4267440 () Bool)

(declare-fun tp!1951506 () Bool)

(declare-fun tp!1951508 () Bool)

(assert (=> b!7099670 (= e!4267440 (and tp!1951506 tp!1951508))))

(declare-fun b!7099672 () Bool)

(declare-fun tp!1951504 () Bool)

(declare-fun tp!1951507 () Bool)

(assert (=> b!7099672 (= e!4267440 (and tp!1951504 tp!1951507))))

(declare-fun b!7099669 () Bool)

(declare-fun tp_is_empty!44963 () Bool)

(assert (=> b!7099669 (= e!4267440 tp_is_empty!44963)))

(assert (=> start!691108 false))

(assert (=> start!691108 e!4267440))

(assert (=> start!691108 tp_is_empty!44963))

(declare-fun b!7099671 () Bool)

(declare-fun tp!1951505 () Bool)

(assert (=> b!7099671 (= e!4267440 tp!1951505)))

(declare-datatypes ((C!36000 0))(
  ( (C!36001 (val!27706 Int)) )
))
(declare-datatypes ((Regex!17865 0))(
  ( (ElementMatch!17865 (c!1324798 C!36000)) (Concat!26710 (regOne!36242 Regex!17865) (regTwo!36242 Regex!17865)) (EmptyExpr!17865) (Star!17865 (reg!18194 Regex!17865)) (EmptyLang!17865) (Union!17865 (regOne!36243 Regex!17865) (regTwo!36243 Regex!17865)) )
))
(declare-fun r!11554 () Regex!17865)

(get-info :version)

(assert (= (and start!691108 ((_ is ElementMatch!17865) r!11554)) b!7099669))

(assert (= (and start!691108 ((_ is Concat!26710) r!11554)) b!7099670))

(assert (= (and start!691108 ((_ is Star!17865) r!11554)) b!7099671))

(assert (= (and start!691108 ((_ is Union!17865) r!11554)) b!7099672))

(check-sat (not b!7099671) (not b!7099670) (not b!7099672) tp_is_empty!44963)
(check-sat)
