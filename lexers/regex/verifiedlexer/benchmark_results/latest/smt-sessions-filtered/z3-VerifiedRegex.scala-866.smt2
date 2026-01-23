; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46342 () Bool)

(assert start!46342)

(declare-fun res!217327 () Bool)

(declare-fun e!305917 () Bool)

(assert (=> start!46342 (=> (not res!217327) (not e!305917))))

(declare-datatypes ((B!1069 0))(
  ( (B!1070 (val!1676 Int)) )
))
(declare-datatypes ((List!4649 0))(
  ( (Nil!4639) (Cons!4639 (h!10036 B!1069) (t!73167 List!4649)) )
))
(declare-fun l!2928 () List!4649)

(get-info :version)

(assert (=> start!46342 (= res!217327 ((_ is Cons!4639) l!2928))))

(assert (=> start!46342 e!305917))

(declare-fun e!305918 () Bool)

(assert (=> start!46342 e!305918))

(declare-fun b!512083 () Bool)

(declare-fun ListPrimitiveSize!52 (List!4649) Int)

(assert (=> b!512083 (= e!305917 (>= (ListPrimitiveSize!52 (t!73167 l!2928)) (ListPrimitiveSize!52 l!2928)))))

(declare-fun b!512084 () Bool)

(declare-fun tp_is_empty!2455 () Bool)

(declare-fun tp!159175 () Bool)

(assert (=> b!512084 (= e!305918 (and tp_is_empty!2455 tp!159175))))

(assert (= (and start!46342 res!217327) b!512083))

(assert (= (and start!46342 ((_ is Cons!4639) l!2928)) b!512084))

(declare-fun m!758939 () Bool)

(assert (=> b!512083 m!758939))

(declare-fun m!758941 () Bool)

(assert (=> b!512083 m!758941))

(check-sat (not b!512083) (not b!512084) tp_is_empty!2455)
(check-sat)
(get-model)

(declare-fun d!184033 () Bool)

(declare-fun lt!212164 () Int)

(assert (=> d!184033 (>= lt!212164 0)))

(declare-fun e!305927 () Int)

(assert (=> d!184033 (= lt!212164 e!305927)))

(declare-fun c!99542 () Bool)

(assert (=> d!184033 (= c!99542 ((_ is Nil!4639) (t!73167 l!2928)))))

(assert (=> d!184033 (= (ListPrimitiveSize!52 (t!73167 l!2928)) lt!212164)))

(declare-fun b!512101 () Bool)

(assert (=> b!512101 (= e!305927 0)))

(declare-fun b!512102 () Bool)

(assert (=> b!512102 (= e!305927 (+ 1 (ListPrimitiveSize!52 (t!73167 (t!73167 l!2928)))))))

(assert (= (and d!184033 c!99542) b!512101))

(assert (= (and d!184033 (not c!99542)) b!512102))

(declare-fun m!758945 () Bool)

(assert (=> b!512102 m!758945))

(assert (=> b!512083 d!184033))

(declare-fun d!184037 () Bool)

(declare-fun lt!212165 () Int)

(assert (=> d!184037 (>= lt!212165 0)))

(declare-fun e!305929 () Int)

(assert (=> d!184037 (= lt!212165 e!305929)))

(declare-fun c!99543 () Bool)

(assert (=> d!184037 (= c!99543 ((_ is Nil!4639) l!2928))))

(assert (=> d!184037 (= (ListPrimitiveSize!52 l!2928) lt!212165)))

(declare-fun b!512104 () Bool)

(assert (=> b!512104 (= e!305929 0)))

(declare-fun b!512105 () Bool)

(assert (=> b!512105 (= e!305929 (+ 1 (ListPrimitiveSize!52 (t!73167 l!2928))))))

(assert (= (and d!184037 c!99543) b!512104))

(assert (= (and d!184037 (not c!99543)) b!512105))

(assert (=> b!512105 m!758939))

(assert (=> b!512083 d!184037))

(declare-fun b!512110 () Bool)

(declare-fun e!305932 () Bool)

(declare-fun tp!159181 () Bool)

(assert (=> b!512110 (= e!305932 (and tp_is_empty!2455 tp!159181))))

(assert (=> b!512084 (= tp!159175 e!305932)))

(assert (= (and b!512084 ((_ is Cons!4639) (t!73167 l!2928))) b!512110))

(check-sat (not b!512105) (not b!512102) (not b!512110) tp_is_empty!2455)
(check-sat)
