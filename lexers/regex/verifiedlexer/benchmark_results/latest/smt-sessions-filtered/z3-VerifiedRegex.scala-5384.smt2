; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274426 () Bool)

(assert start!274426)

(declare-fun b_free!81071 () Bool)

(declare-fun b_next!81775 () Bool)

(assert (=> start!274426 (= b_free!81071 (not b_next!81775))))

(declare-fun tp!902911 () Bool)

(declare-fun b_and!206641 () Bool)

(assert (=> start!274426 (= tp!902911 b_and!206641)))

(declare-fun b!2826904 () Bool)

(declare-fun e!1789196 () Bool)

(declare-fun tp_is_empty!14507 () Bool)

(declare-fun tp!902912 () Bool)

(assert (=> b!2826904 (= e!1789196 (and tp_is_empty!14507 tp!902912))))

(declare-fun b!2826905 () Bool)

(declare-fun res!1176565 () Bool)

(declare-fun e!1789193 () Bool)

(assert (=> b!2826905 (=> (not res!1176565) (not e!1789193))))

(declare-datatypes ((B!2457 0))(
  ( (B!2458 (val!10448 Int)) )
))
(declare-datatypes ((List!33337 0))(
  ( (Nil!33213) (Cons!33213 (h!38633 B!2457) (t!231064 List!33337)) )
))
(declare-fun l1!953 () List!33337)

(declare-fun l2!930 () List!33337)

(declare-fun subseq!467 (List!33337 List!33337) Bool)

(assert (=> b!2826905 (= res!1176565 (subseq!467 (t!231064 l1!953) (t!231064 l2!930)))))

(declare-fun b!2826906 () Bool)

(declare-fun e!1789195 () Bool)

(declare-fun p!1912 () Int)

(declare-fun dynLambda!13960 (Int B!2457) Bool)

(assert (=> b!2826906 (= e!1789195 (dynLambda!13960 p!1912 (h!38633 l1!953)))))

(declare-fun b!2826908 () Bool)

(assert (=> b!2826908 (= e!1789193 (not e!1789195))))

(declare-fun res!1176562 () Bool)

(assert (=> b!2826908 (=> res!1176562 e!1789195)))

(declare-fun forall!6813 (List!33337 Int) Bool)

(assert (=> b!2826908 (= res!1176562 (not (forall!6813 (t!231064 l2!930) p!1912)))))

(assert (=> b!2826908 (forall!6813 (t!231064 l1!953) p!1912)))

(declare-datatypes ((Unit!47278 0))(
  ( (Unit!47279) )
))
(declare-fun lt!1008533 () Unit!47278)

(declare-fun lemmaForallSubseq!243 (List!33337 List!33337 Int) Unit!47278)

(assert (=> b!2826908 (= lt!1008533 (lemmaForallSubseq!243 (t!231064 l1!953) (t!231064 l2!930) p!1912))))

(declare-fun b!2826909 () Bool)

(declare-fun res!1176564 () Bool)

(assert (=> b!2826909 (=> (not res!1176564) (not e!1789193))))

(assert (=> b!2826909 (= res!1176564 (subseq!467 l1!953 l2!930))))

(declare-fun b!2826910 () Bool)

(declare-fun e!1789194 () Bool)

(declare-fun tp!902910 () Bool)

(assert (=> b!2826910 (= e!1789194 (and tp_is_empty!14507 tp!902910))))

(declare-fun b!2826911 () Bool)

(declare-fun res!1176566 () Bool)

(assert (=> b!2826911 (=> res!1176566 e!1789195)))

(assert (=> b!2826911 (= res!1176566 (not (dynLambda!13960 p!1912 (h!38633 l2!930))))))

(declare-fun b!2826907 () Bool)

(declare-fun res!1176563 () Bool)

(assert (=> b!2826907 (=> (not res!1176563) (not e!1789193))))

(get-info :version)

(assert (=> b!2826907 (= res!1176563 (and (not ((_ is Nil!33213) l1!953)) ((_ is Cons!33213) l2!930) (= (h!38633 l1!953) (h!38633 l2!930))))))

(declare-fun res!1176567 () Bool)

(assert (=> start!274426 (=> (not res!1176567) (not e!1789193))))

(assert (=> start!274426 (= res!1176567 (forall!6813 l2!930 p!1912))))

(assert (=> start!274426 e!1789193))

(assert (=> start!274426 e!1789196))

(assert (=> start!274426 tp!902911))

(assert (=> start!274426 e!1789194))

(assert (= (and start!274426 res!1176567) b!2826909))

(assert (= (and b!2826909 res!1176564) b!2826907))

(assert (= (and b!2826907 res!1176563) b!2826905))

(assert (= (and b!2826905 res!1176565) b!2826908))

(assert (= (and b!2826908 (not res!1176562)) b!2826911))

(assert (= (and b!2826911 (not res!1176566)) b!2826906))

(assert (= (and start!274426 ((_ is Cons!33213) l2!930)) b!2826904))

(assert (= (and start!274426 ((_ is Cons!33213) l1!953)) b!2826910))

(declare-fun b_lambda!84815 () Bool)

(assert (=> (not b_lambda!84815) (not b!2826906)))

(declare-fun t!231061 () Bool)

(declare-fun tb!154081 () Bool)

(assert (=> (and start!274426 (= p!1912 p!1912) t!231061) tb!154081))

(declare-fun result!191986 () Bool)

(assert (=> tb!154081 (= result!191986 true)))

(assert (=> b!2826906 t!231061))

(declare-fun b_and!206643 () Bool)

(assert (= b_and!206641 (and (=> t!231061 result!191986) b_and!206643)))

(declare-fun b_lambda!84817 () Bool)

(assert (=> (not b_lambda!84817) (not b!2826911)))

(declare-fun t!231063 () Bool)

(declare-fun tb!154083 () Bool)

(assert (=> (and start!274426 (= p!1912 p!1912) t!231063) tb!154083))

(declare-fun result!191988 () Bool)

(assert (=> tb!154083 (= result!191988 true)))

(assert (=> b!2826911 t!231063))

(declare-fun b_and!206645 () Bool)

(assert (= b_and!206643 (and (=> t!231063 result!191988) b_and!206645)))

(declare-fun m!3256895 () Bool)

(assert (=> b!2826908 m!3256895))

(declare-fun m!3256897 () Bool)

(assert (=> b!2826908 m!3256897))

(declare-fun m!3256899 () Bool)

(assert (=> b!2826908 m!3256899))

(declare-fun m!3256901 () Bool)

(assert (=> b!2826911 m!3256901))

(declare-fun m!3256903 () Bool)

(assert (=> start!274426 m!3256903))

(declare-fun m!3256905 () Bool)

(assert (=> b!2826905 m!3256905))

(declare-fun m!3256907 () Bool)

(assert (=> b!2826906 m!3256907))

(declare-fun m!3256909 () Bool)

(assert (=> b!2826909 m!3256909))

(check-sat (not b!2826910) (not b_next!81775) (not b_lambda!84815) tp_is_empty!14507 (not b!2826909) (not b!2826904) (not start!274426) (not b!2826905) b_and!206645 (not b_lambda!84817) (not b!2826908))
(check-sat b_and!206645 (not b_next!81775))
