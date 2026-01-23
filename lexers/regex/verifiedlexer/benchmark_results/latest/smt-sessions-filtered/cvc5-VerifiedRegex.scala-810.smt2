; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!45434 () Bool)

(assert start!45434)

(declare-fun b!472919 () Bool)

(declare-fun res!209928 () Bool)

(declare-fun e!289229 () Bool)

(assert (=> b!472919 (=> (not res!209928) (not e!289229))))

(declare-datatypes ((C!3154 0))(
  ( (C!3155 (val!1563 Int)) )
))
(declare-datatypes ((Regex!1116 0))(
  ( (ElementMatch!1116 (c!94917 C!3154)) (Concat!2016 (regOne!2744 Regex!1116) (regTwo!2744 Regex!1116)) (EmptyExpr!1116) (Star!1116 (reg!1445 Regex!1116)) (EmptyLang!1116) (Union!1116 (regOne!2745 Regex!1116) (regTwo!2745 Regex!1116)) )
))
(declare-fun r!20230 () Regex!1116)

(declare-fun lostCause!110 (Regex!1116) Bool)

(assert (=> b!472919 (= res!209928 (lostCause!110 r!20230))))

(declare-fun b!472920 () Bool)

(declare-fun e!289228 () Bool)

(declare-fun tp!131076 () Bool)

(declare-fun tp!131074 () Bool)

(assert (=> b!472920 (= e!289228 (and tp!131076 tp!131074))))

(declare-fun b!472921 () Bool)

(declare-fun res!209931 () Bool)

(assert (=> b!472921 (=> (not res!209931) (not e!289229))))

(assert (=> b!472921 (= res!209931 (and (not (is-EmptyLang!1116 r!20230)) (not (is-EmptyExpr!1116 r!20230)) (not (is-ElementMatch!1116 r!20230)) (is-Union!1116 r!20230)))))

(declare-fun b!472922 () Bool)

(assert (=> b!472922 (= e!289229 false)))

(declare-fun lt!210559 () Bool)

(assert (=> b!472922 (= lt!210559 (lostCause!110 (regOne!2745 r!20230)))))

(declare-fun b!472923 () Bool)

(declare-fun res!209929 () Bool)

(assert (=> b!472923 (=> (not res!209929) (not e!289229))))

(declare-fun validRegex!344 (Regex!1116) Bool)

(assert (=> b!472923 (= res!209929 (validRegex!344 (regOne!2745 r!20230)))))

(declare-fun b!472924 () Bool)

(declare-fun tp!131072 () Bool)

(declare-fun tp!131075 () Bool)

(assert (=> b!472924 (= e!289228 (and tp!131072 tp!131075))))

(declare-fun res!209930 () Bool)

(assert (=> start!45434 (=> (not res!209930) (not e!289229))))

(assert (=> start!45434 (= res!209930 (validRegex!344 r!20230))))

(assert (=> start!45434 e!289229))

(assert (=> start!45434 e!289228))

(declare-fun b!472925 () Bool)

(declare-fun tp_is_empty!2229 () Bool)

(assert (=> b!472925 (= e!289228 tp_is_empty!2229)))

(declare-fun b!472926 () Bool)

(declare-fun tp!131073 () Bool)

(assert (=> b!472926 (= e!289228 tp!131073)))

(assert (= (and start!45434 res!209930) b!472919))

(assert (= (and b!472919 res!209928) b!472921))

(assert (= (and b!472921 res!209931) b!472923))

(assert (= (and b!472923 res!209929) b!472922))

(assert (= (and start!45434 (is-ElementMatch!1116 r!20230)) b!472925))

(assert (= (and start!45434 (is-Concat!2016 r!20230)) b!472920))

(assert (= (and start!45434 (is-Star!1116 r!20230)) b!472926))

(assert (= (and start!45434 (is-Union!1116 r!20230)) b!472924))

(declare-fun m!746403 () Bool)

(assert (=> b!472919 m!746403))

(declare-fun m!746405 () Bool)

(assert (=> b!472922 m!746405))

(declare-fun m!746407 () Bool)

(assert (=> b!472923 m!746407))

(declare-fun m!746409 () Bool)

(assert (=> start!45434 m!746409))

(push 1)

(assert (not b!472926))

(assert (not b!472920))

(assert tp_is_empty!2229)

(assert (not start!45434))

(assert (not b!472924))

(assert (not b!472923))

(assert (not b!472922))

(assert (not b!472919))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

