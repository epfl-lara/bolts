; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!183034 () Bool)

(assert start!183034)

(declare-fun b!1839481 () Bool)

(declare-fun e!1175488 () Bool)

(declare-fun e!1175491 () Bool)

(assert (=> b!1839481 (= e!1175488 e!1175491)))

(declare-fun res!826671 () Bool)

(assert (=> b!1839481 (=> (not res!826671) (not e!1175491))))

(declare-fun lt!713789 () Int)

(declare-datatypes ((B!1529 0))(
  ( (B!1530 (val!5712 Int)) )
))
(declare-datatypes ((List!20312 0))(
  ( (Nil!20242) (Cons!20242 (h!25643 B!1529) (t!171741 List!20312)) )
))
(declare-fun lt!713788 () List!20312)

(declare-fun size!16042 (List!20312) Int)

(assert (=> b!1839481 (= res!826671 (<= (+ 1 lt!713789) (size!16042 lt!713788)))))

(declare-fun p!2031 () List!20312)

(assert (=> b!1839481 (= lt!713789 (size!16042 (t!171741 p!2031)))))

(declare-fun b!1839482 () Bool)

(declare-fun e!1175487 () Bool)

(declare-fun tp_is_empty!8277 () Bool)

(declare-fun tp!520213 () Bool)

(assert (=> b!1839482 (= e!1175487 (and tp_is_empty!8277 tp!520213))))

(declare-fun b!1839483 () Bool)

(declare-fun e!1175492 () Bool)

(declare-fun tp!520214 () Bool)

(assert (=> b!1839483 (= e!1175492 (and tp_is_empty!8277 tp!520214))))

(declare-fun res!826673 () Bool)

(declare-fun e!1175490 () Bool)

(assert (=> start!183034 (=> (not res!826673) (not e!1175490))))

(declare-fun l!3477 () List!20312)

(declare-fun isPrefix!1851 (List!20312 List!20312) Bool)

(assert (=> start!183034 (= res!826673 (isPrefix!1851 p!2031 l!3477))))

(assert (=> start!183034 e!1175490))

(assert (=> start!183034 e!1175487))

(assert (=> start!183034 e!1175492))

(declare-fun b!1839484 () Bool)

(declare-fun e!1175489 () Bool)

(assert (=> b!1839484 (= e!1175489 e!1175488)))

(declare-fun res!826674 () Bool)

(assert (=> b!1839484 (=> (not res!826674) (not e!1175488))))

(assert (=> b!1839484 (= res!826674 (isPrefix!1851 (t!171741 p!2031) lt!713788))))

(declare-fun tail!2764 (List!20312) List!20312)

(assert (=> b!1839484 (= lt!713788 (tail!2764 l!3477))))

(declare-fun b!1839485 () Bool)

(assert (=> b!1839485 (= e!1175490 e!1175489)))

(declare-fun res!826672 () Bool)

(assert (=> b!1839485 (=> (not res!826672) (not e!1175489))))

(declare-fun lt!713790 () Int)

(declare-fun lt!713791 () Int)

(get-info :version)

(assert (=> b!1839485 (= res!826672 (and (<= (+ 1 lt!713791) lt!713790) ((_ is Cons!20242) p!2031)))))

(assert (=> b!1839485 (= lt!713790 (size!16042 l!3477))))

(assert (=> b!1839485 (= lt!713791 (size!16042 p!2031))))

(declare-fun b!1839486 () Bool)

(assert (=> b!1839486 (= e!1175491 (not (>= lt!713790 lt!713791)))))

(declare-fun head!4300 (List!20312) B!1529)

(declare-fun getSuffix!976 (List!20312 List!20312) List!20312)

(declare-fun apply!5439 (List!20312 Int) B!1529)

(assert (=> b!1839486 (= (head!4300 (getSuffix!976 lt!713788 (t!171741 p!2031))) (apply!5439 lt!713788 lt!713789))))

(declare-datatypes ((Unit!34959 0))(
  ( (Unit!34960) )
))
(declare-fun lt!713792 () Unit!34959)

(declare-fun lemmaGetSuffixHeadApplyNPlusOne!2 (List!20312 List!20312) Unit!34959)

(assert (=> b!1839486 (= lt!713792 (lemmaGetSuffixHeadApplyNPlusOne!2 lt!713788 (t!171741 p!2031)))))

(assert (= (and start!183034 res!826673) b!1839485))

(assert (= (and b!1839485 res!826672) b!1839484))

(assert (= (and b!1839484 res!826674) b!1839481))

(assert (= (and b!1839481 res!826671) b!1839486))

(assert (= (and start!183034 ((_ is Cons!20242) p!2031)) b!1839482))

(assert (= (and start!183034 ((_ is Cons!20242) l!3477)) b!1839483))

(declare-fun m!2267099 () Bool)

(assert (=> b!1839485 m!2267099))

(declare-fun m!2267101 () Bool)

(assert (=> b!1839485 m!2267101))

(declare-fun m!2267103 () Bool)

(assert (=> b!1839486 m!2267103))

(assert (=> b!1839486 m!2267103))

(declare-fun m!2267105 () Bool)

(assert (=> b!1839486 m!2267105))

(declare-fun m!2267107 () Bool)

(assert (=> b!1839486 m!2267107))

(declare-fun m!2267109 () Bool)

(assert (=> b!1839486 m!2267109))

(declare-fun m!2267111 () Bool)

(assert (=> b!1839481 m!2267111))

(declare-fun m!2267113 () Bool)

(assert (=> b!1839481 m!2267113))

(declare-fun m!2267115 () Bool)

(assert (=> b!1839484 m!2267115))

(declare-fun m!2267117 () Bool)

(assert (=> b!1839484 m!2267117))

(declare-fun m!2267119 () Bool)

(assert (=> start!183034 m!2267119))

(check-sat (not b!1839481) (not b!1839482) (not b!1839486) (not b!1839484) (not b!1839485) tp_is_empty!8277 (not b!1839483) (not start!183034))
(check-sat)
