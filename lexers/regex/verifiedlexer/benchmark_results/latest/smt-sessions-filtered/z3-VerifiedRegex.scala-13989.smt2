; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740202 () Bool)

(assert start!740202)

(declare-fun b!7774118 () Bool)

(declare-fun e!4605873 () Bool)

(declare-fun tp!2284242 () Bool)

(assert (=> b!7774118 (= e!4605873 tp!2284242)))

(declare-fun b!7774119 () Bool)

(declare-fun res!3098793 () Bool)

(declare-fun e!4605871 () Bool)

(assert (=> b!7774119 (=> (not res!3098793) (not e!4605871))))

(declare-datatypes ((C!41872 0))(
  ( (C!41873 (val!31376 Int)) )
))
(declare-datatypes ((Regex!20773 0))(
  ( (ElementMatch!20773 (c!1432782 C!41872)) (Concat!29618 (regOne!42058 Regex!20773) (regTwo!42058 Regex!20773)) (EmptyExpr!20773) (Star!20773 (reg!21102 Regex!20773)) (EmptyLang!20773) (Union!20773 (regOne!42059 Regex!20773) (regTwo!42059 Regex!20773)) )
))
(declare-fun r2!6217 () Regex!20773)

(declare-fun validRegex!11187 (Regex!20773) Bool)

(assert (=> b!7774119 (= res!3098793 (validRegex!11187 r2!6217))))

(declare-fun b!7774120 () Bool)

(declare-fun tp!2284237 () Bool)

(declare-fun tp!2284238 () Bool)

(assert (=> b!7774120 (= e!4605873 (and tp!2284237 tp!2284238))))

(declare-fun b!7774121 () Bool)

(declare-fun e!4605874 () Bool)

(declare-fun tp_is_empty!51901 () Bool)

(declare-fun tp!2284247 () Bool)

(assert (=> b!7774121 (= e!4605874 (and tp_is_empty!51901 tp!2284247))))

(declare-fun b!7774122 () Bool)

(declare-fun e!4605875 () Bool)

(assert (=> b!7774122 (= e!4605875 tp_is_empty!51901)))

(declare-fun b!7774123 () Bool)

(declare-fun res!3098790 () Bool)

(declare-fun e!4605872 () Bool)

(assert (=> b!7774123 (=> (not res!3098790) (not e!4605872))))

(declare-datatypes ((List!73612 0))(
  ( (Nil!73488) (Cons!73488 (h!79936 C!41872) (t!388347 List!73612)) )
))
(declare-fun s!14292 () List!73612)

(get-info :version)

(assert (=> b!7774123 (= res!3098790 ((_ is Cons!73488) s!14292))))

(declare-fun res!3098794 () Bool)

(assert (=> start!740202 (=> (not res!3098794) (not e!4605871))))

(declare-fun r1!6279 () Regex!20773)

(assert (=> start!740202 (= res!3098794 (validRegex!11187 r1!6279))))

(assert (=> start!740202 e!4605871))

(assert (=> start!740202 e!4605873))

(assert (=> start!740202 e!4605875))

(assert (=> start!740202 e!4605874))

(declare-fun b!7774124 () Bool)

(assert (=> b!7774124 (= e!4605871 e!4605872)))

(declare-fun res!3098791 () Bool)

(assert (=> b!7774124 (=> (not res!3098791) (not e!4605872))))

(declare-fun lt!2671704 () Regex!20773)

(declare-fun matchR!10233 (Regex!20773 List!73612) Bool)

(assert (=> b!7774124 (= res!3098791 (matchR!10233 lt!2671704 s!14292))))

(assert (=> b!7774124 (= lt!2671704 (Concat!29618 r1!6279 r2!6217))))

(declare-fun b!7774125 () Bool)

(assert (=> b!7774125 (= e!4605873 tp_is_empty!51901)))

(declare-fun b!7774126 () Bool)

(declare-fun tp!2284244 () Bool)

(declare-fun tp!2284245 () Bool)

(assert (=> b!7774126 (= e!4605875 (and tp!2284244 tp!2284245))))

(declare-fun b!7774127 () Bool)

(assert (=> b!7774127 (= e!4605872 false)))

(declare-fun b!7774128 () Bool)

(declare-fun res!3098792 () Bool)

(assert (=> b!7774128 (=> (not res!3098792) (not e!4605872))))

(declare-fun derivativeStep!6116 (Regex!20773 C!41872) Regex!20773)

(assert (=> b!7774128 (= res!3098792 (matchR!10233 (derivativeStep!6116 lt!2671704 (h!79936 s!14292)) (t!388347 s!14292)))))

(declare-fun b!7774129 () Bool)

(declare-fun tp!2284239 () Bool)

(declare-fun tp!2284243 () Bool)

(assert (=> b!7774129 (= e!4605873 (and tp!2284239 tp!2284243))))

(declare-fun b!7774130 () Bool)

(declare-fun tp!2284246 () Bool)

(assert (=> b!7774130 (= e!4605875 tp!2284246)))

(declare-fun b!7774131 () Bool)

(declare-fun tp!2284240 () Bool)

(declare-fun tp!2284241 () Bool)

(assert (=> b!7774131 (= e!4605875 (and tp!2284240 tp!2284241))))

(assert (= (and start!740202 res!3098794) b!7774119))

(assert (= (and b!7774119 res!3098793) b!7774124))

(assert (= (and b!7774124 res!3098791) b!7774123))

(assert (= (and b!7774123 res!3098790) b!7774128))

(assert (= (and b!7774128 res!3098792) b!7774127))

(assert (= (and start!740202 ((_ is ElementMatch!20773) r1!6279)) b!7774125))

(assert (= (and start!740202 ((_ is Concat!29618) r1!6279)) b!7774120))

(assert (= (and start!740202 ((_ is Star!20773) r1!6279)) b!7774118))

(assert (= (and start!740202 ((_ is Union!20773) r1!6279)) b!7774129))

(assert (= (and start!740202 ((_ is ElementMatch!20773) r2!6217)) b!7774122))

(assert (= (and start!740202 ((_ is Concat!29618) r2!6217)) b!7774131))

(assert (= (and start!740202 ((_ is Star!20773) r2!6217)) b!7774130))

(assert (= (and start!740202 ((_ is Union!20773) r2!6217)) b!7774126))

(assert (= (and start!740202 ((_ is Cons!73488) s!14292)) b!7774121))

(declare-fun m!8226072 () Bool)

(assert (=> b!7774119 m!8226072))

(declare-fun m!8226074 () Bool)

(assert (=> start!740202 m!8226074))

(declare-fun m!8226076 () Bool)

(assert (=> b!7774124 m!8226076))

(declare-fun m!8226078 () Bool)

(assert (=> b!7774128 m!8226078))

(assert (=> b!7774128 m!8226078))

(declare-fun m!8226080 () Bool)

(assert (=> b!7774128 m!8226080))

(check-sat (not start!740202) (not b!7774120) (not b!7774128) (not b!7774121) (not b!7774119) (not b!7774126) (not b!7774124) tp_is_empty!51901 (not b!7774130) (not b!7774129) (not b!7774118) (not b!7774131))
(check-sat)
