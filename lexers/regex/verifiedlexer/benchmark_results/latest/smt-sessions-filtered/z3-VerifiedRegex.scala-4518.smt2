; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239738 () Bool)

(assert start!239738)

(declare-fun b!2459295 () Bool)

(declare-fun res!1042188 () Bool)

(declare-fun e!1559822 () Bool)

(assert (=> b!2459295 (=> (not res!1042188) (not e!1559822))))

(declare-datatypes ((C!14616 0))(
  ( (C!14617 (val!8550 Int)) )
))
(declare-datatypes ((Regex!7229 0))(
  ( (ElementMatch!7229 (c!392499 C!14616)) (Concat!11865 (regOne!14970 Regex!7229) (regTwo!14970 Regex!7229)) (EmptyExpr!7229) (Star!7229 (reg!7558 Regex!7229)) (EmptyLang!7229) (Union!7229 (regOne!14971 Regex!7229) (regTwo!14971 Regex!7229)) )
))
(declare-fun r!13927 () Regex!7229)

(declare-datatypes ((List!28694 0))(
  ( (Nil!28596) (Cons!28596 (h!33997 Regex!7229) (t!208671 List!28694)) )
))
(declare-fun l!9164 () List!28694)

(declare-fun generalisedConcat!330 (List!28694) Regex!7229)

(assert (=> b!2459295 (= res!1042188 (= r!13927 (generalisedConcat!330 l!9164)))))

(declare-fun b!2459296 () Bool)

(declare-fun e!1559817 () Bool)

(declare-fun e!1559821 () Bool)

(assert (=> b!2459296 (= e!1559817 e!1559821)))

(declare-fun res!1042185 () Bool)

(assert (=> b!2459296 (=> res!1042185 e!1559821)))

(declare-fun lt!880550 () Regex!7229)

(assert (=> b!2459296 (= res!1042185 (not (= lt!880550 EmptyExpr!7229)))))

(declare-fun lt!880555 () List!28694)

(assert (=> b!2459296 (= lt!880550 (generalisedConcat!330 lt!880555))))

(declare-fun b!2459297 () Bool)

(declare-fun e!1559825 () Bool)

(declare-fun tp!783010 () Bool)

(declare-fun tp!783014 () Bool)

(assert (=> b!2459297 (= e!1559825 (and tp!783010 tp!783014))))

(declare-fun b!2459298 () Bool)

(declare-fun e!1559819 () Bool)

(declare-fun tp_is_empty!11871 () Bool)

(declare-fun tp!783012 () Bool)

(assert (=> b!2459298 (= e!1559819 (and tp_is_empty!11871 tp!783012))))

(declare-fun b!2459299 () Bool)

(declare-fun tp!783016 () Bool)

(declare-fun tp!783015 () Bool)

(assert (=> b!2459299 (= e!1559825 (and tp!783016 tp!783015))))

(declare-fun b!2459300 () Bool)

(declare-fun e!1559820 () Bool)

(declare-fun lt!880552 () Regex!7229)

(declare-datatypes ((List!28695 0))(
  ( (Nil!28597) (Cons!28597 (h!33998 C!14616) (t!208672 List!28695)) )
))
(declare-fun s!9460 () List!28695)

(declare-datatypes ((tuple2!28186 0))(
  ( (tuple2!28187 (_1!16634 List!28695) (_2!16634 List!28695)) )
))
(declare-datatypes ((Option!5704 0))(
  ( (None!5703) (Some!5703 (v!31111 tuple2!28186)) )
))
(declare-fun isDefined!4530 (Option!5704) Bool)

(declare-fun findConcatSeparation!812 (Regex!7229 Regex!7229 List!28695 List!28695 List!28695) Option!5704)

(assert (=> b!2459300 (= e!1559820 (not (isDefined!4530 (findConcatSeparation!812 lt!880552 lt!880550 Nil!28597 s!9460 s!9460))))))

(declare-fun lt!880551 () Bool)

(assert (=> b!2459300 (not lt!880551)))

(declare-datatypes ((Unit!41919 0))(
  ( (Unit!41920) )
))
(declare-fun lt!880553 () Unit!41919)

(declare-fun e!1559826 () Unit!41919)

(assert (=> b!2459300 (= lt!880553 e!1559826)))

(declare-fun c!392498 () Bool)

(assert (=> b!2459300 (= c!392498 lt!880551)))

(declare-fun lt!880557 () Option!5704)

(assert (=> b!2459300 (= lt!880551 (isDefined!4530 lt!880557))))

(assert (=> b!2459300 (= lt!880557 (findConcatSeparation!812 lt!880552 EmptyExpr!7229 Nil!28597 s!9460 s!9460))))

(declare-fun b!2459301 () Bool)

(declare-fun Unit!41921 () Unit!41919)

(assert (=> b!2459301 (= e!1559826 Unit!41921)))

(declare-fun lt!880554 () tuple2!28186)

(declare-fun get!8850 (Option!5704) tuple2!28186)

(assert (=> b!2459301 (= lt!880554 (get!8850 lt!880557))))

(declare-fun lt!880556 () Unit!41919)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!102 (Regex!7229 Regex!7229 List!28695 List!28695 List!28695) Unit!41919)

(assert (=> b!2459301 (= lt!880556 (lemmaFindSeparationIsDefinedThenConcatMatches!102 lt!880552 EmptyExpr!7229 (_1!16634 lt!880554) (_2!16634 lt!880554) s!9460))))

(declare-fun res!1042184 () Bool)

(declare-fun matchR!3344 (Regex!7229 List!28695) Bool)

(declare-fun ++!7117 (List!28695 List!28695) List!28695)

(assert (=> b!2459301 (= res!1042184 (matchR!3344 (Concat!11865 lt!880552 EmptyExpr!7229) (++!7117 (_1!16634 lt!880554) (_2!16634 lt!880554))))))

(declare-fun e!1559824 () Bool)

(assert (=> b!2459301 (=> (not res!1042184) (not e!1559824))))

(assert (=> b!2459301 e!1559824))

(declare-fun b!2459302 () Bool)

(declare-fun res!1042187 () Bool)

(declare-fun e!1559823 () Bool)

(assert (=> b!2459302 (=> res!1042187 e!1559823)))

(declare-fun isEmpty!16623 (List!28694) Bool)

(assert (=> b!2459302 (= res!1042187 (isEmpty!16623 l!9164))))

(declare-fun b!2459303 () Bool)

(assert (=> b!2459303 (= e!1559824 false)))

(declare-fun b!2459304 () Bool)

(declare-fun tp!783017 () Bool)

(assert (=> b!2459304 (= e!1559825 tp!783017)))

(declare-fun b!2459305 () Bool)

(assert (=> b!2459305 (= e!1559821 e!1559820)))

(declare-fun res!1042183 () Bool)

(assert (=> b!2459305 (=> res!1042183 e!1559820)))

(assert (=> b!2459305 (= res!1042183 (matchR!3344 lt!880552 s!9460))))

(declare-fun head!5611 (List!28694) Regex!7229)

(assert (=> b!2459305 (= lt!880552 (head!5611 l!9164))))

(declare-fun b!2459306 () Bool)

(assert (=> b!2459306 (= e!1559825 tp_is_empty!11871)))

(declare-fun b!2459307 () Bool)

(declare-fun Unit!41922 () Unit!41919)

(assert (=> b!2459307 (= e!1559826 Unit!41922)))

(declare-fun b!2459308 () Bool)

(assert (=> b!2459308 (= e!1559823 e!1559817)))

(declare-fun res!1042189 () Bool)

(assert (=> b!2459308 (=> res!1042189 e!1559817)))

(assert (=> b!2459308 (= res!1042189 (not (isEmpty!16623 lt!880555)))))

(declare-fun tail!3884 (List!28694) List!28694)

(assert (=> b!2459308 (= lt!880555 (tail!3884 l!9164))))

(declare-fun b!2459309 () Bool)

(declare-fun e!1559818 () Bool)

(declare-fun tp!783013 () Bool)

(declare-fun tp!783011 () Bool)

(assert (=> b!2459309 (= e!1559818 (and tp!783013 tp!783011))))

(declare-fun b!2459310 () Bool)

(assert (=> b!2459310 (= e!1559822 (not e!1559823))))

(declare-fun res!1042190 () Bool)

(assert (=> b!2459310 (=> res!1042190 e!1559823)))

(get-info :version)

(assert (=> b!2459310 (= res!1042190 (or ((_ is Concat!11865) r!13927) ((_ is EmptyExpr!7229) r!13927)))))

(declare-fun matchRSpec!1076 (Regex!7229 List!28695) Bool)

(assert (=> b!2459310 (= (matchR!3344 r!13927 s!9460) (matchRSpec!1076 r!13927 s!9460))))

(declare-fun lt!880558 () Unit!41919)

(declare-fun mainMatchTheorem!1076 (Regex!7229 List!28695) Unit!41919)

(assert (=> b!2459310 (= lt!880558 (mainMatchTheorem!1076 r!13927 s!9460))))

(declare-fun res!1042186 () Bool)

(assert (=> start!239738 (=> (not res!1042186) (not e!1559822))))

(declare-fun lambda!93079 () Int)

(declare-fun forall!5863 (List!28694 Int) Bool)

(assert (=> start!239738 (= res!1042186 (forall!5863 l!9164 lambda!93079))))

(assert (=> start!239738 e!1559822))

(assert (=> start!239738 e!1559818))

(assert (=> start!239738 e!1559825))

(assert (=> start!239738 e!1559819))

(assert (= (and start!239738 res!1042186) b!2459295))

(assert (= (and b!2459295 res!1042188) b!2459310))

(assert (= (and b!2459310 (not res!1042190)) b!2459302))

(assert (= (and b!2459302 (not res!1042187)) b!2459308))

(assert (= (and b!2459308 (not res!1042189)) b!2459296))

(assert (= (and b!2459296 (not res!1042185)) b!2459305))

(assert (= (and b!2459305 (not res!1042183)) b!2459300))

(assert (= (and b!2459300 c!392498) b!2459301))

(assert (= (and b!2459300 (not c!392498)) b!2459307))

(assert (= (and b!2459301 res!1042184) b!2459303))

(assert (= (and start!239738 ((_ is Cons!28596) l!9164)) b!2459309))

(assert (= (and start!239738 ((_ is ElementMatch!7229) r!13927)) b!2459306))

(assert (= (and start!239738 ((_ is Concat!11865) r!13927)) b!2459297))

(assert (= (and start!239738 ((_ is Star!7229) r!13927)) b!2459304))

(assert (= (and start!239738 ((_ is Union!7229) r!13927)) b!2459299))

(assert (= (and start!239738 ((_ is Cons!28597) s!9460)) b!2459298))

(declare-fun m!2829017 () Bool)

(assert (=> b!2459296 m!2829017))

(declare-fun m!2829019 () Bool)

(assert (=> b!2459305 m!2829019))

(declare-fun m!2829021 () Bool)

(assert (=> b!2459305 m!2829021))

(declare-fun m!2829023 () Bool)

(assert (=> b!2459308 m!2829023))

(declare-fun m!2829025 () Bool)

(assert (=> b!2459308 m!2829025))

(declare-fun m!2829027 () Bool)

(assert (=> b!2459295 m!2829027))

(declare-fun m!2829029 () Bool)

(assert (=> b!2459310 m!2829029))

(declare-fun m!2829031 () Bool)

(assert (=> b!2459310 m!2829031))

(declare-fun m!2829033 () Bool)

(assert (=> b!2459310 m!2829033))

(declare-fun m!2829035 () Bool)

(assert (=> b!2459300 m!2829035))

(assert (=> b!2459300 m!2829035))

(declare-fun m!2829037 () Bool)

(assert (=> b!2459300 m!2829037))

(declare-fun m!2829039 () Bool)

(assert (=> b!2459300 m!2829039))

(declare-fun m!2829041 () Bool)

(assert (=> b!2459300 m!2829041))

(declare-fun m!2829043 () Bool)

(assert (=> start!239738 m!2829043))

(declare-fun m!2829045 () Bool)

(assert (=> b!2459302 m!2829045))

(declare-fun m!2829047 () Bool)

(assert (=> b!2459301 m!2829047))

(declare-fun m!2829049 () Bool)

(assert (=> b!2459301 m!2829049))

(declare-fun m!2829051 () Bool)

(assert (=> b!2459301 m!2829051))

(assert (=> b!2459301 m!2829051))

(declare-fun m!2829053 () Bool)

(assert (=> b!2459301 m!2829053))

(check-sat (not b!2459301) (not b!2459305) (not b!2459302) (not start!239738) (not b!2459300) (not b!2459298) (not b!2459308) (not b!2459295) tp_is_empty!11871 (not b!2459297) (not b!2459296) (not b!2459310) (not b!2459304) (not b!2459309) (not b!2459299))
(check-sat)
