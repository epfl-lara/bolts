; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!229710 () Bool)

(assert start!229710)

(declare-fun res!993700 () Bool)

(declare-fun e!1490900 () Bool)

(assert (=> start!229710 (=> (not res!993700) (not e!1490900))))

(declare-fun i!741 () Int)

(assert (=> start!229710 (= res!993700 (<= 0 i!741))))

(assert (=> start!229710 e!1490900))

(assert (=> start!229710 true))

(declare-fun e!1490899 () Bool)

(assert (=> start!229710 e!1490899))

(declare-fun b!2326989 () Bool)

(declare-fun e!1490901 () Bool)

(declare-datatypes ((T!44146 0))(
  ( (T!44147 (val!8014 Int)) )
))
(declare-datatypes ((List!27800 0))(
  ( (Nil!27702) (Cons!27702 (h!33103 T!44146) (t!207502 List!27800)) )
))
(declare-fun l!2797 () List!27800)

(declare-fun size!21978 (List!27800) Int)

(assert (=> b!2326989 (= e!1490901 (> (- i!741 1) (size!21978 (t!207502 l!2797))))))

(declare-fun b!2326990 () Bool)

(declare-fun res!993698 () Bool)

(assert (=> b!2326990 (=> (not res!993698) (not e!1490900))))

(assert (=> b!2326990 (= res!993698 (<= i!741 (size!21978 l!2797)))))

(declare-fun b!2326991 () Bool)

(assert (=> b!2326991 (= e!1490900 e!1490901)))

(declare-fun res!993697 () Bool)

(assert (=> b!2326991 (=> res!993697 e!1490901)))

(assert (=> b!2326991 (= res!993697 (> 0 (- i!741 1)))))

(declare-fun b!2326992 () Bool)

(declare-fun res!993699 () Bool)

(assert (=> b!2326992 (=> (not res!993699) (not e!1490900))))

(get-info :version)

(assert (=> b!2326992 (= res!993699 (and (not ((_ is Nil!27702) l!2797)) (not (= i!741 0)) (> i!741 0)))))

(declare-fun b!2326993 () Bool)

(declare-fun tp_is_empty!10893 () Bool)

(declare-fun tp!737215 () Bool)

(assert (=> b!2326993 (= e!1490899 (and tp_is_empty!10893 tp!737215))))

(assert (= (and start!229710 res!993700) b!2326990))

(assert (= (and b!2326990 res!993698) b!2326992))

(assert (= (and b!2326992 res!993699) b!2326991))

(assert (= (and b!2326991 (not res!993697)) b!2326989))

(assert (= (and start!229710 ((_ is Cons!27702) l!2797)) b!2326993))

(declare-fun m!2757983 () Bool)

(assert (=> b!2326989 m!2757983))

(declare-fun m!2757985 () Bool)

(assert (=> b!2326990 m!2757985))

(check-sat (not b!2326989) (not b!2326990) (not b!2326993) tp_is_empty!10893)
(check-sat)
(get-model)

(declare-fun d!689059 () Bool)

(declare-fun lt!861786 () Int)

(assert (=> d!689059 (>= lt!861786 0)))

(declare-fun e!1490904 () Int)

(assert (=> d!689059 (= lt!861786 e!1490904)))

(declare-fun c!369650 () Bool)

(assert (=> d!689059 (= c!369650 ((_ is Nil!27702) (t!207502 l!2797)))))

(assert (=> d!689059 (= (size!21978 (t!207502 l!2797)) lt!861786)))

(declare-fun b!2326998 () Bool)

(assert (=> b!2326998 (= e!1490904 0)))

(declare-fun b!2326999 () Bool)

(assert (=> b!2326999 (= e!1490904 (+ 1 (size!21978 (t!207502 (t!207502 l!2797)))))))

(assert (= (and d!689059 c!369650) b!2326998))

(assert (= (and d!689059 (not c!369650)) b!2326999))

(declare-fun m!2757987 () Bool)

(assert (=> b!2326999 m!2757987))

(assert (=> b!2326989 d!689059))

(declare-fun d!689063 () Bool)

(declare-fun lt!861789 () Int)

(assert (=> d!689063 (>= lt!861789 0)))

(declare-fun e!1490907 () Int)

(assert (=> d!689063 (= lt!861789 e!1490907)))

(declare-fun c!369653 () Bool)

(assert (=> d!689063 (= c!369653 ((_ is Nil!27702) l!2797))))

(assert (=> d!689063 (= (size!21978 l!2797) lt!861789)))

(declare-fun b!2327004 () Bool)

(assert (=> b!2327004 (= e!1490907 0)))

(declare-fun b!2327005 () Bool)

(assert (=> b!2327005 (= e!1490907 (+ 1 (size!21978 (t!207502 l!2797))))))

(assert (= (and d!689063 c!369653) b!2327004))

(assert (= (and d!689063 (not c!369653)) b!2327005))

(assert (=> b!2327005 m!2757983))

(assert (=> b!2326990 d!689063))

(declare-fun b!2327010 () Bool)

(declare-fun e!1490910 () Bool)

(declare-fun tp!737218 () Bool)

(assert (=> b!2327010 (= e!1490910 (and tp_is_empty!10893 tp!737218))))

(assert (=> b!2326993 (= tp!737215 e!1490910)))

(assert (= (and b!2326993 ((_ is Cons!27702) (t!207502 l!2797))) b!2327010))

(check-sat (not b!2327005) (not b!2326999) (not b!2327010) tp_is_empty!10893)
(check-sat)
