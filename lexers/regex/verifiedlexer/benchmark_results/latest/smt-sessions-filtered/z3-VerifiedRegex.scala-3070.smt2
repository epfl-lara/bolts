; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!183038 () Bool)

(assert start!183038)

(declare-fun b!1839522 () Bool)

(declare-fun e!1175521 () Bool)

(assert (=> b!1839522 (= e!1175521 (not true))))

(declare-datatypes ((B!1533 0))(
  ( (B!1534 (val!5714 Int)) )
))
(declare-datatypes ((List!20314 0))(
  ( (Nil!20244) (Cons!20244 (h!25645 B!1533) (t!171743 List!20314)) )
))
(declare-fun lt!713810 () List!20314)

(declare-fun p!2031 () List!20314)

(declare-fun lt!713808 () Int)

(declare-fun head!4302 (List!20314) B!1533)

(declare-fun getSuffix!978 (List!20314 List!20314) List!20314)

(declare-fun apply!5441 (List!20314 Int) B!1533)

(assert (=> b!1839522 (= (head!4302 (getSuffix!978 lt!713810 (t!171743 p!2031))) (apply!5441 lt!713810 lt!713808))))

(declare-datatypes ((Unit!34963 0))(
  ( (Unit!34964) )
))
(declare-fun lt!713809 () Unit!34963)

(declare-fun lemmaGetSuffixHeadApplyNPlusOne!4 (List!20314 List!20314) Unit!34963)

(assert (=> b!1839522 (= lt!713809 (lemmaGetSuffixHeadApplyNPlusOne!4 lt!713810 (t!171743 p!2031)))))

(declare-fun b!1839523 () Bool)

(declare-fun e!1175518 () Bool)

(declare-fun tp_is_empty!8281 () Bool)

(declare-fun tp!520225 () Bool)

(assert (=> b!1839523 (= e!1175518 (and tp_is_empty!8281 tp!520225))))

(declare-fun b!1839524 () Bool)

(declare-fun res!826702 () Bool)

(declare-fun e!1175520 () Bool)

(assert (=> b!1839524 (=> (not res!826702) (not e!1175520))))

(get-info :version)

(assert (=> b!1839524 (= res!826702 ((_ is Cons!20244) p!2031))))

(declare-fun b!1839525 () Bool)

(declare-fun e!1175519 () Bool)

(assert (=> b!1839525 (= e!1175520 e!1175519)))

(declare-fun res!826700 () Bool)

(assert (=> b!1839525 (=> (not res!826700) (not e!1175519))))

(declare-fun isPrefix!1853 (List!20314 List!20314) Bool)

(assert (=> b!1839525 (= res!826700 (isPrefix!1853 (t!171743 p!2031) lt!713810))))

(declare-fun l!3477 () List!20314)

(declare-fun tail!2766 (List!20314) List!20314)

(assert (=> b!1839525 (= lt!713810 (tail!2766 l!3477))))

(declare-fun b!1839526 () Bool)

(assert (=> b!1839526 (= e!1175519 e!1175521)))

(declare-fun res!826704 () Bool)

(assert (=> b!1839526 (=> (not res!826704) (not e!1175521))))

(declare-fun size!16044 (List!20314) Int)

(assert (=> b!1839526 (= res!826704 (<= (+ 1 lt!713808) (size!16044 lt!713810)))))

(assert (=> b!1839526 (= lt!713808 (size!16044 (t!171743 p!2031)))))

(declare-fun res!826703 () Bool)

(assert (=> start!183038 (=> (not res!826703) (not e!1175520))))

(assert (=> start!183038 (= res!826703 (isPrefix!1853 p!2031 l!3477))))

(assert (=> start!183038 e!1175520))

(declare-fun e!1175522 () Bool)

(assert (=> start!183038 e!1175522))

(assert (=> start!183038 e!1175518))

(declare-fun b!1839527 () Bool)

(declare-fun tp!520226 () Bool)

(assert (=> b!1839527 (= e!1175522 (and tp_is_empty!8281 tp!520226))))

(declare-fun b!1839528 () Bool)

(declare-fun res!826701 () Bool)

(assert (=> b!1839528 (=> (not res!826701) (not e!1175520))))

(assert (=> b!1839528 (= res!826701 (<= (+ 1 (size!16044 p!2031)) (size!16044 l!3477)))))

(assert (= (and start!183038 res!826703) b!1839528))

(assert (= (and b!1839528 res!826701) b!1839524))

(assert (= (and b!1839524 res!826702) b!1839525))

(assert (= (and b!1839525 res!826700) b!1839526))

(assert (= (and b!1839526 res!826704) b!1839522))

(assert (= (and start!183038 ((_ is Cons!20244) p!2031)) b!1839527))

(assert (= (and start!183038 ((_ is Cons!20244) l!3477)) b!1839523))

(declare-fun m!2267143 () Bool)

(assert (=> b!1839525 m!2267143))

(declare-fun m!2267145 () Bool)

(assert (=> b!1839525 m!2267145))

(declare-fun m!2267147 () Bool)

(assert (=> b!1839526 m!2267147))

(declare-fun m!2267149 () Bool)

(assert (=> b!1839526 m!2267149))

(declare-fun m!2267151 () Bool)

(assert (=> b!1839528 m!2267151))

(declare-fun m!2267153 () Bool)

(assert (=> b!1839528 m!2267153))

(declare-fun m!2267155 () Bool)

(assert (=> b!1839522 m!2267155))

(assert (=> b!1839522 m!2267155))

(declare-fun m!2267157 () Bool)

(assert (=> b!1839522 m!2267157))

(declare-fun m!2267159 () Bool)

(assert (=> b!1839522 m!2267159))

(declare-fun m!2267161 () Bool)

(assert (=> b!1839522 m!2267161))

(declare-fun m!2267163 () Bool)

(assert (=> start!183038 m!2267163))

(check-sat (not start!183038) (not b!1839527) (not b!1839526) (not b!1839523) tp_is_empty!8281 (not b!1839528) (not b!1839522) (not b!1839525))
(check-sat)
