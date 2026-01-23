; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532112 () Bool)

(assert start!532112)

(declare-fun res!2144111 () Bool)

(declare-fun e!3142837 () Bool)

(assert (=> start!532112 (=> (not res!2144111) (not e!3142837))))

(declare-fun i!879 () Int)

(assert (=> start!532112 (= res!2144111 (>= i!879 0))))

(assert (=> start!532112 e!3142837))

(assert (=> start!532112 true))

(declare-fun e!3142838 () Bool)

(assert (=> start!532112 e!3142838))

(declare-fun b!5030980 () Bool)

(declare-fun e!3142839 () Bool)

(assert (=> b!5030980 (= e!3142837 e!3142839)))

(declare-fun res!2144110 () Bool)

(assert (=> b!5030980 (=> (not res!2144110) (not e!3142839))))

(declare-fun lt!2082015 () Int)

(declare-fun j!102 () Int)

(assert (=> b!5030980 (= res!2144110 (and (< i!879 lt!2082015) (>= j!102 0) (<= j!102 (- (- lt!2082015 i!879) 1)) (not (= i!879 0)) (>= (- i!879 1) 0)))))

(declare-datatypes ((B!3085 0))(
  ( (B!3086 (val!23454 Int)) )
))
(declare-datatypes ((List!58357 0))(
  ( (Nil!58233) (Cons!58233 (h!64681 B!3085) (t!370773 List!58357)) )
))
(declare-fun l!2999 () List!58357)

(declare-fun size!38772 (List!58357) Int)

(assert (=> b!5030980 (= lt!2082015 (size!38772 l!2999))))

(declare-fun lt!2082014 () Int)

(declare-fun b!5030981 () Bool)

(assert (=> b!5030981 (= e!3142839 (and (< (- i!879 1) lt!2082014) (> j!102 (- (- lt!2082014 (- i!879 1)) 1))))))

(declare-fun tail!9934 (List!58357) List!58357)

(assert (=> b!5030981 (= lt!2082014 (size!38772 (tail!9934 l!2999)))))

(declare-fun b!5030982 () Bool)

(declare-fun tp_is_empty!36707 () Bool)

(declare-fun tp!1409496 () Bool)

(assert (=> b!5030982 (= e!3142838 (and tp_is_empty!36707 tp!1409496))))

(assert (= (and start!532112 res!2144111) b!5030980))

(assert (= (and b!5030980 res!2144110) b!5030981))

(get-info :version)

(assert (= (and start!532112 ((_ is Cons!58233) l!2999)) b!5030982))

(declare-fun m!6066160 () Bool)

(assert (=> b!5030980 m!6066160))

(declare-fun m!6066162 () Bool)

(assert (=> b!5030981 m!6066162))

(assert (=> b!5030981 m!6066162))

(declare-fun m!6066164 () Bool)

(assert (=> b!5030981 m!6066164))

(check-sat (not b!5030981) (not b!5030980) (not b!5030982) tp_is_empty!36707)
(check-sat)
(get-model)

(declare-fun d!1619040 () Bool)

(declare-fun lt!2082018 () Int)

(assert (=> d!1619040 (>= lt!2082018 0)))

(declare-fun e!3142842 () Int)

(assert (=> d!1619040 (= lt!2082018 e!3142842)))

(declare-fun c!861331 () Bool)

(assert (=> d!1619040 (= c!861331 ((_ is Nil!58233) (tail!9934 l!2999)))))

(assert (=> d!1619040 (= (size!38772 (tail!9934 l!2999)) lt!2082018)))

(declare-fun b!5030987 () Bool)

(assert (=> b!5030987 (= e!3142842 0)))

(declare-fun b!5030988 () Bool)

(assert (=> b!5030988 (= e!3142842 (+ 1 (size!38772 (t!370773 (tail!9934 l!2999)))))))

(assert (= (and d!1619040 c!861331) b!5030987))

(assert (= (and d!1619040 (not c!861331)) b!5030988))

(declare-fun m!6066166 () Bool)

(assert (=> b!5030988 m!6066166))

(assert (=> b!5030981 d!1619040))

(declare-fun d!1619042 () Bool)

(assert (=> d!1619042 (= (tail!9934 l!2999) (t!370773 l!2999))))

(assert (=> b!5030981 d!1619042))

(declare-fun d!1619044 () Bool)

(declare-fun lt!2082019 () Int)

(assert (=> d!1619044 (>= lt!2082019 0)))

(declare-fun e!3142843 () Int)

(assert (=> d!1619044 (= lt!2082019 e!3142843)))

(declare-fun c!861332 () Bool)

(assert (=> d!1619044 (= c!861332 ((_ is Nil!58233) l!2999))))

(assert (=> d!1619044 (= (size!38772 l!2999) lt!2082019)))

(declare-fun b!5030989 () Bool)

(assert (=> b!5030989 (= e!3142843 0)))

(declare-fun b!5030990 () Bool)

(assert (=> b!5030990 (= e!3142843 (+ 1 (size!38772 (t!370773 l!2999))))))

(assert (= (and d!1619044 c!861332) b!5030989))

(assert (= (and d!1619044 (not c!861332)) b!5030990))

(declare-fun m!6066168 () Bool)

(assert (=> b!5030990 m!6066168))

(assert (=> b!5030980 d!1619044))

(declare-fun b!5030995 () Bool)

(declare-fun e!3142846 () Bool)

(declare-fun tp!1409499 () Bool)

(assert (=> b!5030995 (= e!3142846 (and tp_is_empty!36707 tp!1409499))))

(assert (=> b!5030982 (= tp!1409496 e!3142846)))

(assert (= (and b!5030982 ((_ is Cons!58233) (t!370773 l!2999))) b!5030995))

(check-sat (not b!5030988) (not b!5030990) (not b!5030995) tp_is_empty!36707)
(check-sat)
