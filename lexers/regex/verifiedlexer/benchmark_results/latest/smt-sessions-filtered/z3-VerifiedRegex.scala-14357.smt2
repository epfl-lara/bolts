; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749466 () Bool)

(assert start!749466)

(declare-fun b!7940398 () Bool)

(declare-fun e!4685216 () Bool)

(declare-fun tp_is_empty!53333 () Bool)

(assert (=> b!7940398 (= e!4685216 tp_is_empty!53333)))

(declare-fun res!3149956 () Bool)

(declare-fun e!4685214 () Bool)

(assert (=> start!749466 (=> (not res!3149956) (not e!4685214))))

(declare-datatypes ((C!43128 0))(
  ( (C!43129 (val!32112 Int)) )
))
(declare-datatypes ((Regex!21395 0))(
  ( (ElementMatch!21395 (c!1458830 C!43128)) (Concat!30394 (regOne!43302 Regex!21395) (regTwo!43302 Regex!21395)) (EmptyExpr!21395) (Star!21395 (reg!21724 Regex!21395)) (EmptyLang!21395) (Union!21395 (regOne!43303 Regex!21395) (regTwo!43303 Regex!21395)) )
))
(declare-fun r!15654 () Regex!21395)

(declare-fun validRegex!11699 (Regex!21395) Bool)

(assert (=> start!749466 (= res!3149956 (validRegex!11699 r!15654))))

(assert (=> start!749466 e!4685214))

(assert (=> start!749466 e!4685216))

(declare-fun e!4685215 () Bool)

(assert (=> start!749466 e!4685215))

(declare-fun b!7940399 () Bool)

(declare-fun tp!2360928 () Bool)

(assert (=> b!7940399 (= e!4685215 (and tp_is_empty!53333 tp!2360928))))

(declare-fun b!7940400 () Bool)

(declare-fun e!4685213 () Bool)

(declare-datatypes ((List!74624 0))(
  ( (Nil!74500) (Cons!74500 (h!80948 C!43128) (t!390367 List!74624)) )
))
(declare-datatypes ((tuple2!70480 0))(
  ( (tuple2!70481 (_1!38543 List!74624) (_2!38543 List!74624)) )
))
(declare-fun lt!2696108 () tuple2!70480)

(declare-fun matchR!10702 (Regex!21395 List!74624) Bool)

(assert (=> b!7940400 (= e!4685213 (matchR!10702 r!15654 (_1!38543 lt!2696108)))))

(declare-fun b!7940401 () Bool)

(declare-fun tp!2360927 () Bool)

(declare-fun tp!2360930 () Bool)

(assert (=> b!7940401 (= e!4685216 (and tp!2360927 tp!2360930))))

(declare-fun b!7940402 () Bool)

(declare-fun res!3149953 () Bool)

(assert (=> b!7940402 (=> (not res!3149953) (not e!4685214))))

(declare-fun derivative!583 (Regex!21395 List!74624) Regex!21395)

(assert (=> b!7940402 (= res!3149953 (= (derivative!583 r!15654 Nil!74500) r!15654))))

(declare-fun b!7940403 () Bool)

(assert (=> b!7940403 (= e!4685214 (not true))))

(assert (=> b!7940403 e!4685213))

(declare-fun res!3149954 () Bool)

(assert (=> b!7940403 (=> res!3149954 e!4685213)))

(declare-fun isEmpty!42815 (List!74624) Bool)

(assert (=> b!7940403 (= res!3149954 (isEmpty!42815 (_1!38543 lt!2696108)))))

(declare-fun input!6711 () List!74624)

(declare-fun findLongestMatchInner!2190 (Regex!21395 List!74624 Int List!74624 List!74624 Int) tuple2!70480)

(declare-fun size!43332 (List!74624) Int)

(declare-fun getSuffix!3706 (List!74624 List!74624) List!74624)

(assert (=> b!7940403 (= lt!2696108 (findLongestMatchInner!2190 r!15654 Nil!74500 (size!43332 Nil!74500) (getSuffix!3706 input!6711 Nil!74500) input!6711 (size!43332 input!6711)))))

(declare-datatypes ((Unit!169615 0))(
  ( (Unit!169616) )
))
(declare-fun lt!2696107 () Unit!169615)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!33 (Regex!21395 Regex!21395 List!74624 List!74624) Unit!169615)

(assert (=> b!7940403 (= lt!2696107 (longestMatchIsAcceptedByMatchOrIsEmptyRec!33 r!15654 r!15654 Nil!74500 input!6711))))

(declare-fun b!7940404 () Bool)

(declare-fun tp!2360926 () Bool)

(assert (=> b!7940404 (= e!4685216 tp!2360926)))

(declare-fun b!7940405 () Bool)

(declare-fun tp!2360925 () Bool)

(declare-fun tp!2360929 () Bool)

(assert (=> b!7940405 (= e!4685216 (and tp!2360925 tp!2360929))))

(declare-fun b!7940406 () Bool)

(declare-fun res!3149955 () Bool)

(assert (=> b!7940406 (=> (not res!3149955) (not e!4685214))))

(declare-fun isPrefix!6495 (List!74624 List!74624) Bool)

(assert (=> b!7940406 (= res!3149955 (isPrefix!6495 Nil!74500 input!6711))))

(assert (= (and start!749466 res!3149956) b!7940406))

(assert (= (and b!7940406 res!3149955) b!7940402))

(assert (= (and b!7940402 res!3149953) b!7940403))

(assert (= (and b!7940403 (not res!3149954)) b!7940400))

(get-info :version)

(assert (= (and start!749466 ((_ is ElementMatch!21395) r!15654)) b!7940398))

(assert (= (and start!749466 ((_ is Concat!30394) r!15654)) b!7940405))

(assert (= (and start!749466 ((_ is Star!21395) r!15654)) b!7940404))

(assert (= (and start!749466 ((_ is Union!21395) r!15654)) b!7940401))

(assert (= (and start!749466 ((_ is Cons!74500) input!6711)) b!7940399))

(declare-fun m!8329604 () Bool)

(assert (=> b!7940402 m!8329604))

(declare-fun m!8329606 () Bool)

(assert (=> b!7940403 m!8329606))

(declare-fun m!8329608 () Bool)

(assert (=> b!7940403 m!8329608))

(assert (=> b!7940403 m!8329606))

(declare-fun m!8329610 () Bool)

(assert (=> b!7940403 m!8329610))

(declare-fun m!8329612 () Bool)

(assert (=> b!7940403 m!8329612))

(assert (=> b!7940403 m!8329608))

(declare-fun m!8329614 () Bool)

(assert (=> b!7940403 m!8329614))

(assert (=> b!7940403 m!8329610))

(declare-fun m!8329616 () Bool)

(assert (=> b!7940403 m!8329616))

(declare-fun m!8329618 () Bool)

(assert (=> start!749466 m!8329618))

(declare-fun m!8329620 () Bool)

(assert (=> b!7940406 m!8329620))

(declare-fun m!8329622 () Bool)

(assert (=> b!7940400 m!8329622))

(check-sat (not b!7940406) (not start!749466) (not b!7940399) (not b!7940401) (not b!7940405) tp_is_empty!53333 (not b!7940402) (not b!7940400) (not b!7940403) (not b!7940404))
(check-sat)
