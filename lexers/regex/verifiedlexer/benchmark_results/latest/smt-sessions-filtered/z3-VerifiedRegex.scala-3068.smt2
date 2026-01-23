; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!183030 () Bool)

(assert start!183030)

(declare-fun b!1839445 () Bool)

(declare-fun e!1175454 () Bool)

(declare-fun tp_is_empty!8273 () Bool)

(declare-fun tp!520202 () Bool)

(assert (=> b!1839445 (= e!1175454 (and tp_is_empty!8273 tp!520202))))

(declare-fun b!1839446 () Bool)

(declare-fun e!1175456 () Bool)

(assert (=> b!1839446 (= e!1175456 false)))

(declare-fun lt!713760 () Int)

(declare-datatypes ((B!1525 0))(
  ( (B!1526 (val!5710 Int)) )
))
(declare-datatypes ((List!20310 0))(
  ( (Nil!20240) (Cons!20240 (h!25641 B!1525) (t!171739 List!20310)) )
))
(declare-fun lt!713762 () List!20310)

(declare-fun size!16040 (List!20310) Int)

(assert (=> b!1839446 (= lt!713760 (size!16040 lt!713762))))

(declare-fun lt!713761 () Int)

(declare-fun p!2031 () List!20310)

(assert (=> b!1839446 (= lt!713761 (size!16040 (t!171739 p!2031)))))

(declare-fun b!1839447 () Bool)

(declare-fun res!826647 () Bool)

(declare-fun e!1175453 () Bool)

(assert (=> b!1839447 (=> (not res!826647) (not e!1175453))))

(get-info :version)

(assert (=> b!1839447 (= res!826647 ((_ is Cons!20240) p!2031))))

(declare-fun res!826648 () Bool)

(assert (=> start!183030 (=> (not res!826648) (not e!1175453))))

(declare-fun l!3477 () List!20310)

(declare-fun isPrefix!1849 (List!20310 List!20310) Bool)

(assert (=> start!183030 (= res!826648 (isPrefix!1849 p!2031 l!3477))))

(assert (=> start!183030 e!1175453))

(declare-fun e!1175455 () Bool)

(assert (=> start!183030 e!1175455))

(assert (=> start!183030 e!1175454))

(declare-fun b!1839448 () Bool)

(declare-fun res!826649 () Bool)

(assert (=> b!1839448 (=> (not res!826649) (not e!1175453))))

(assert (=> b!1839448 (= res!826649 (<= (+ 1 (size!16040 p!2031)) (size!16040 l!3477)))))

(declare-fun b!1839449 () Bool)

(declare-fun tp!520201 () Bool)

(assert (=> b!1839449 (= e!1175455 (and tp_is_empty!8273 tp!520201))))

(declare-fun b!1839450 () Bool)

(assert (=> b!1839450 (= e!1175453 e!1175456)))

(declare-fun res!826650 () Bool)

(assert (=> b!1839450 (=> (not res!826650) (not e!1175456))))

(assert (=> b!1839450 (= res!826650 (isPrefix!1849 (t!171739 p!2031) lt!713762))))

(declare-fun tail!2762 (List!20310) List!20310)

(assert (=> b!1839450 (= lt!713762 (tail!2762 l!3477))))

(assert (= (and start!183030 res!826648) b!1839448))

(assert (= (and b!1839448 res!826649) b!1839447))

(assert (= (and b!1839447 res!826647) b!1839450))

(assert (= (and b!1839450 res!826650) b!1839446))

(assert (= (and start!183030 ((_ is Cons!20240) p!2031)) b!1839449))

(assert (= (and start!183030 ((_ is Cons!20240) l!3477)) b!1839445))

(declare-fun m!2267063 () Bool)

(assert (=> b!1839446 m!2267063))

(declare-fun m!2267065 () Bool)

(assert (=> b!1839446 m!2267065))

(declare-fun m!2267067 () Bool)

(assert (=> start!183030 m!2267067))

(declare-fun m!2267069 () Bool)

(assert (=> b!1839448 m!2267069))

(declare-fun m!2267071 () Bool)

(assert (=> b!1839448 m!2267071))

(declare-fun m!2267073 () Bool)

(assert (=> b!1839450 m!2267073))

(declare-fun m!2267075 () Bool)

(assert (=> b!1839450 m!2267075))

(check-sat (not b!1839448) (not b!1839445) (not b!1839446) (not start!183030) tp_is_empty!8273 (not b!1839450) (not b!1839449))
(check-sat)
