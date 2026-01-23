; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!183122 () Bool)

(assert start!183122)

(declare-fun res!826894 () Bool)

(declare-fun e!1175811 () Bool)

(assert (=> start!183122 (=> (not res!826894) (not e!1175811))))

(declare-datatypes ((B!1549 0))(
  ( (B!1550 (val!5722 Int)) )
))
(declare-datatypes ((List!20322 0))(
  ( (Nil!20252) (Cons!20252 (h!25653 B!1549) (t!171751 List!20322)) )
))
(declare-fun p!2031 () List!20322)

(declare-fun l!3477 () List!20322)

(declare-fun isPrefix!1861 (List!20322 List!20322) Bool)

(assert (=> start!183122 (= res!826894 (isPrefix!1861 p!2031 l!3477))))

(assert (=> start!183122 e!1175811))

(declare-fun e!1175810 () Bool)

(assert (=> start!183122 e!1175810))

(declare-fun e!1175812 () Bool)

(assert (=> start!183122 e!1175812))

(declare-fun b!1839936 () Bool)

(assert (=> b!1839936 (= e!1175811 false)))

(declare-fun lt!713992 () Int)

(declare-fun size!16052 (List!20322) Int)

(assert (=> b!1839936 (= lt!713992 (size!16052 l!3477))))

(declare-fun lt!713991 () Int)

(assert (=> b!1839936 (= lt!713991 (size!16052 p!2031))))

(declare-fun b!1839937 () Bool)

(declare-fun tp_is_empty!8297 () Bool)

(declare-fun tp!520294 () Bool)

(assert (=> b!1839937 (= e!1175810 (and tp_is_empty!8297 tp!520294))))

(declare-fun b!1839938 () Bool)

(declare-fun tp!520293 () Bool)

(assert (=> b!1839938 (= e!1175812 (and tp_is_empty!8297 tp!520293))))

(assert (= (and start!183122 res!826894) b!1839936))

(get-info :version)

(assert (= (and start!183122 ((_ is Cons!20252) p!2031)) b!1839937))

(assert (= (and start!183122 ((_ is Cons!20252) l!3477)) b!1839938))

(declare-fun m!2267587 () Bool)

(assert (=> start!183122 m!2267587))

(declare-fun m!2267589 () Bool)

(assert (=> b!1839936 m!2267589))

(declare-fun m!2267591 () Bool)

(assert (=> b!1839936 m!2267591))

(check-sat (not start!183122) (not b!1839938) (not b!1839937) tp_is_empty!8297 (not b!1839936))
(check-sat)
