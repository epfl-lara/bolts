; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532052 () Bool)

(assert start!532052)

(declare-fun res!2144025 () Bool)

(declare-fun e!3142563 () Bool)

(assert (=> start!532052 (=> (not res!2144025) (not e!3142563))))

(declare-fun i!879 () Int)

(assert (=> start!532052 (= res!2144025 (>= i!879 0))))

(assert (=> start!532052 e!3142563))

(assert (=> start!532052 true))

(declare-fun e!3142565 () Bool)

(assert (=> start!532052 e!3142565))

(declare-fun b!5030544 () Bool)

(declare-fun e!3142564 () Bool)

(assert (=> b!5030544 (= e!3142563 e!3142564)))

(declare-fun res!2144024 () Bool)

(assert (=> b!5030544 (=> (not res!2144024) (not e!3142564))))

(declare-fun lt!2081913 () Int)

(declare-fun j!102 () Int)

(assert (=> b!5030544 (= res!2144024 (and (< i!879 lt!2081913) (>= j!102 0) (<= j!102 (- (- lt!2081913 i!879) 1))))))

(declare-datatypes ((B!3073 0))(
  ( (B!3074 (val!23448 Int)) )
))
(declare-datatypes ((List!58351 0))(
  ( (Nil!58227) (Cons!58227 (h!64675 B!3073) (t!370767 List!58351)) )
))
(declare-fun l!2999 () List!58351)

(declare-fun size!38766 (List!58351) Int)

(assert (=> b!5030544 (= lt!2081913 (size!38766 l!2999))))

(declare-fun b!5030545 () Bool)

(declare-fun ListPrimitiveSize!379 (List!58351) Int)

(assert (=> b!5030545 (= e!3142564 (< (ListPrimitiveSize!379 l!2999) 0))))

(declare-fun b!5030546 () Bool)

(declare-fun tp_is_empty!36695 () Bool)

(declare-fun tp!1409458 () Bool)

(assert (=> b!5030546 (= e!3142565 (and tp_is_empty!36695 tp!1409458))))

(assert (= (and start!532052 res!2144025) b!5030544))

(assert (= (and b!5030544 res!2144024) b!5030545))

(get-info :version)

(assert (= (and start!532052 ((_ is Cons!58227) l!2999)) b!5030546))

(declare-fun m!6065850 () Bool)

(assert (=> b!5030544 m!6065850))

(declare-fun m!6065852 () Bool)

(assert (=> b!5030545 m!6065852))

(check-sat (not b!5030545) (not b!5030544) (not b!5030546) tp_is_empty!36695)
(check-sat)
(get-model)

(declare-fun d!1618907 () Bool)

(declare-fun lt!2081919 () Int)

(assert (=> d!1618907 (>= lt!2081919 0)))

(declare-fun e!3142571 () Int)

(assert (=> d!1618907 (= lt!2081919 e!3142571)))

(declare-fun c!861184 () Bool)

(assert (=> d!1618907 (= c!861184 ((_ is Nil!58227) l!2999))))

(assert (=> d!1618907 (= (ListPrimitiveSize!379 l!2999) lt!2081919)))

(declare-fun b!5030557 () Bool)

(assert (=> b!5030557 (= e!3142571 0)))

(declare-fun b!5030558 () Bool)

(assert (=> b!5030558 (= e!3142571 (+ 1 (ListPrimitiveSize!379 (t!370767 l!2999))))))

(assert (= (and d!1618907 c!861184) b!5030557))

(assert (= (and d!1618907 (not c!861184)) b!5030558))

(declare-fun m!6065856 () Bool)

(assert (=> b!5030558 m!6065856))

(assert (=> b!5030545 d!1618907))

(declare-fun d!1618911 () Bool)

(declare-fun lt!2081925 () Int)

(assert (=> d!1618911 (>= lt!2081925 0)))

(declare-fun e!3142580 () Int)

(assert (=> d!1618911 (= lt!2081925 e!3142580)))

(declare-fun c!861190 () Bool)

(assert (=> d!1618911 (= c!861190 ((_ is Nil!58227) l!2999))))

(assert (=> d!1618911 (= (size!38766 l!2999) lt!2081925)))

(declare-fun b!5030574 () Bool)

(assert (=> b!5030574 (= e!3142580 0)))

(declare-fun b!5030575 () Bool)

(assert (=> b!5030575 (= e!3142580 (+ 1 (size!38766 (t!370767 l!2999))))))

(assert (= (and d!1618911 c!861190) b!5030574))

(assert (= (and d!1618911 (not c!861190)) b!5030575))

(declare-fun m!6065860 () Bool)

(assert (=> b!5030575 m!6065860))

(assert (=> b!5030544 d!1618911))

(declare-fun b!5030580 () Bool)

(declare-fun e!3142583 () Bool)

(declare-fun tp!1409464 () Bool)

(assert (=> b!5030580 (= e!3142583 (and tp_is_empty!36695 tp!1409464))))

(assert (=> b!5030546 (= tp!1409458 e!3142583)))

(assert (= (and b!5030546 ((_ is Cons!58227) (t!370767 l!2999))) b!5030580))

(check-sat (not b!5030558) (not b!5030575) (not b!5030580) tp_is_empty!36695)
(check-sat)
