; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749512 () Bool)

(assert start!749512)

(declare-fun b!7940880 () Bool)

(declare-fun e!4685460 () Bool)

(declare-fun tp!2361077 () Bool)

(declare-fun tp!2361078 () Bool)

(assert (=> b!7940880 (= e!4685460 (and tp!2361077 tp!2361078))))

(declare-fun b!7940881 () Bool)

(declare-fun tp!2361073 () Bool)

(declare-fun tp!2361075 () Bool)

(assert (=> b!7940881 (= e!4685460 (and tp!2361073 tp!2361075))))

(declare-fun b!7940882 () Bool)

(declare-fun e!4685461 () Bool)

(declare-fun tp_is_empty!53341 () Bool)

(declare-fun tp!2361074 () Bool)

(assert (=> b!7940882 (= e!4685461 (and tp_is_empty!53341 tp!2361074))))

(declare-fun b!7940883 () Bool)

(declare-fun e!4685463 () Bool)

(assert (=> b!7940883 (= e!4685463 (not true))))

(declare-datatypes ((C!43136 0))(
  ( (C!43137 (val!32116 Int)) )
))
(declare-datatypes ((List!74628 0))(
  ( (Nil!74504) (Cons!74504 (h!80952 C!43136) (t!390371 List!74628)) )
))
(declare-fun lt!2696346 () List!74628)

(declare-fun input!6711 () List!74628)

(declare-fun ++!18297 (List!74628 List!74628) List!74628)

(assert (=> b!7940883 (= lt!2696346 (++!18297 Nil!74504 input!6711))))

(declare-fun e!4685462 () Bool)

(assert (=> b!7940883 e!4685462))

(declare-fun res!3150122 () Bool)

(assert (=> b!7940883 (=> res!3150122 e!4685462)))

(declare-datatypes ((tuple2!70488 0))(
  ( (tuple2!70489 (_1!38547 List!74628) (_2!38547 List!74628)) )
))
(declare-fun lt!2696347 () tuple2!70488)

(declare-fun isEmpty!42819 (List!74628) Bool)

(assert (=> b!7940883 (= res!3150122 (isEmpty!42819 (_1!38547 lt!2696347)))))

(declare-datatypes ((Regex!21399 0))(
  ( (ElementMatch!21399 (c!1458926 C!43136)) (Concat!30398 (regOne!43310 Regex!21399) (regTwo!43310 Regex!21399)) (EmptyExpr!21399) (Star!21399 (reg!21728 Regex!21399)) (EmptyLang!21399) (Union!21399 (regOne!43311 Regex!21399) (regTwo!43311 Regex!21399)) )
))
(declare-fun r!15654 () Regex!21399)

(declare-fun findLongestMatchInner!2194 (Regex!21399 List!74628 Int List!74628 List!74628 Int) tuple2!70488)

(declare-fun size!43336 (List!74628) Int)

(declare-fun getSuffix!3710 (List!74628 List!74628) List!74628)

(assert (=> b!7940883 (= lt!2696347 (findLongestMatchInner!2194 r!15654 Nil!74504 (size!43336 Nil!74504) (getSuffix!3710 input!6711 Nil!74504) input!6711 (size!43336 input!6711)))))

(declare-datatypes ((Unit!169626 0))(
  ( (Unit!169627) )
))
(declare-fun lt!2696345 () Unit!169626)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!37 (Regex!21399 Regex!21399 List!74628 List!74628) Unit!169626)

(assert (=> b!7940883 (= lt!2696345 (longestMatchIsAcceptedByMatchOrIsEmptyRec!37 r!15654 r!15654 Nil!74504 input!6711))))

(declare-fun b!7940884 () Bool)

(declare-fun matchR!10706 (Regex!21399 List!74628) Bool)

(assert (=> b!7940884 (= e!4685462 (matchR!10706 r!15654 (_1!38547 lt!2696347)))))

(declare-fun res!3150121 () Bool)

(assert (=> start!749512 (=> (not res!3150121) (not e!4685463))))

(declare-fun validRegex!11703 (Regex!21399) Bool)

(assert (=> start!749512 (= res!3150121 (validRegex!11703 r!15654))))

(assert (=> start!749512 e!4685463))

(assert (=> start!749512 e!4685460))

(assert (=> start!749512 e!4685461))

(declare-fun b!7940885 () Bool)

(assert (=> b!7940885 (= e!4685460 tp_is_empty!53341)))

(declare-fun b!7940886 () Bool)

(declare-fun tp!2361076 () Bool)

(assert (=> b!7940886 (= e!4685460 tp!2361076)))

(declare-fun b!7940887 () Bool)

(declare-fun res!3150123 () Bool)

(assert (=> b!7940887 (=> (not res!3150123) (not e!4685463))))

(declare-fun isPrefix!6499 (List!74628 List!74628) Bool)

(assert (=> b!7940887 (= res!3150123 (isPrefix!6499 Nil!74504 input!6711))))

(declare-fun b!7940888 () Bool)

(declare-fun res!3150124 () Bool)

(assert (=> b!7940888 (=> (not res!3150124) (not e!4685463))))

(declare-fun derivative!587 (Regex!21399 List!74628) Regex!21399)

(assert (=> b!7940888 (= res!3150124 (= (derivative!587 r!15654 Nil!74504) r!15654))))

(assert (= (and start!749512 res!3150121) b!7940887))

(assert (= (and b!7940887 res!3150123) b!7940888))

(assert (= (and b!7940888 res!3150124) b!7940883))

(assert (= (and b!7940883 (not res!3150122)) b!7940884))

(get-info :version)

(assert (= (and start!749512 ((_ is ElementMatch!21399) r!15654)) b!7940885))

(assert (= (and start!749512 ((_ is Concat!30398) r!15654)) b!7940880))

(assert (= (and start!749512 ((_ is Star!21399) r!15654)) b!7940886))

(assert (= (and start!749512 ((_ is Union!21399) r!15654)) b!7940881))

(assert (= (and start!749512 ((_ is Cons!74504) input!6711)) b!7940882))

(declare-fun m!8329880 () Bool)

(assert (=> start!749512 m!8329880))

(declare-fun m!8329882 () Bool)

(assert (=> b!7940883 m!8329882))

(declare-fun m!8329884 () Bool)

(assert (=> b!7940883 m!8329884))

(assert (=> b!7940883 m!8329882))

(declare-fun m!8329886 () Bool)

(assert (=> b!7940883 m!8329886))

(declare-fun m!8329888 () Bool)

(assert (=> b!7940883 m!8329888))

(declare-fun m!8329890 () Bool)

(assert (=> b!7940883 m!8329890))

(declare-fun m!8329892 () Bool)

(assert (=> b!7940883 m!8329892))

(assert (=> b!7940883 m!8329884))

(declare-fun m!8329894 () Bool)

(assert (=> b!7940883 m!8329894))

(assert (=> b!7940883 m!8329886))

(declare-fun m!8329896 () Bool)

(assert (=> b!7940888 m!8329896))

(declare-fun m!8329898 () Bool)

(assert (=> b!7940887 m!8329898))

(declare-fun m!8329900 () Bool)

(assert (=> b!7940884 m!8329900))

(check-sat (not start!749512) (not b!7940880) tp_is_empty!53341 (not b!7940884) (not b!7940886) (not b!7940888) (not b!7940881) (not b!7940883) (not b!7940887) (not b!7940882))
(check-sat)
