; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!229718 () Bool)

(assert start!229718)

(declare-fun b!2327045 () Bool)

(declare-fun res!993721 () Bool)

(declare-fun e!1490926 () Bool)

(assert (=> b!2327045 (=> (not res!993721) (not e!1490926))))

(declare-datatypes ((T!44160 0))(
  ( (T!44161 (val!8016 Int)) )
))
(declare-datatypes ((List!27802 0))(
  ( (Nil!27704) (Cons!27704 (h!33105 T!44160) (t!207504 List!27802)) )
))
(declare-fun l!2797 () List!27802)

(declare-fun i!741 () Int)

(get-info :version)

(assert (=> b!2327045 (= res!993721 (and (not ((_ is Nil!27704) l!2797)) (not (= i!741 0)) (> i!741 0) (<= 0 (- i!741 1))))))

(declare-fun b!2327046 () Bool)

(declare-fun res!993724 () Bool)

(assert (=> b!2327046 (=> (not res!993724) (not e!1490926))))

(declare-fun size!21980 (List!27802) Int)

(assert (=> b!2327046 (= res!993724 (<= (- i!741 1) (size!21980 (t!207504 l!2797))))))

(declare-fun b!2327047 () Bool)

(declare-fun e!1490927 () Bool)

(declare-fun tp_is_empty!10897 () Bool)

(declare-fun tp!737227 () Bool)

(assert (=> b!2327047 (= e!1490927 (and tp_is_empty!10897 tp!737227))))

(declare-fun b!2327048 () Bool)

(declare-fun ListPrimitiveSize!155 (List!27802) Int)

(assert (=> b!2327048 (= e!1490926 (>= (ListPrimitiveSize!155 (t!207504 l!2797)) (ListPrimitiveSize!155 l!2797)))))

(declare-fun res!993723 () Bool)

(assert (=> start!229718 (=> (not res!993723) (not e!1490926))))

(assert (=> start!229718 (= res!993723 (<= 0 i!741))))

(assert (=> start!229718 e!1490926))

(assert (=> start!229718 true))

(assert (=> start!229718 e!1490927))

(declare-fun b!2327049 () Bool)

(declare-fun res!993722 () Bool)

(assert (=> b!2327049 (=> (not res!993722) (not e!1490926))))

(assert (=> b!2327049 (= res!993722 (<= i!741 (size!21980 l!2797)))))

(assert (= (and start!229718 res!993723) b!2327049))

(assert (= (and b!2327049 res!993722) b!2327045))

(assert (= (and b!2327045 res!993721) b!2327046))

(assert (= (and b!2327046 res!993724) b!2327048))

(assert (= (and start!229718 ((_ is Cons!27704) l!2797)) b!2327047))

(declare-fun m!2757999 () Bool)

(assert (=> b!2327046 m!2757999))

(declare-fun m!2758001 () Bool)

(assert (=> b!2327048 m!2758001))

(declare-fun m!2758003 () Bool)

(assert (=> b!2327048 m!2758003))

(declare-fun m!2758005 () Bool)

(assert (=> b!2327049 m!2758005))

(check-sat (not b!2327049) (not b!2327047) (not b!2327048) (not b!2327046) tp_is_empty!10897)
(check-sat)
(get-model)

(declare-fun d!689068 () Bool)

(declare-fun lt!861798 () Int)

(assert (=> d!689068 (>= lt!861798 0)))

(declare-fun e!1490934 () Int)

(assert (=> d!689068 (= lt!861798 e!1490934)))

(declare-fun c!369662 () Bool)

(assert (=> d!689068 (= c!369662 ((_ is Nil!27704) (t!207504 l!2797)))))

(assert (=> d!689068 (= (ListPrimitiveSize!155 (t!207504 l!2797)) lt!861798)))

(declare-fun b!2327062 () Bool)

(assert (=> b!2327062 (= e!1490934 0)))

(declare-fun b!2327063 () Bool)

(assert (=> b!2327063 (= e!1490934 (+ 1 (ListPrimitiveSize!155 (t!207504 (t!207504 l!2797)))))))

(assert (= (and d!689068 c!369662) b!2327062))

(assert (= (and d!689068 (not c!369662)) b!2327063))

(declare-fun m!2758009 () Bool)

(assert (=> b!2327063 m!2758009))

(assert (=> b!2327048 d!689068))

(declare-fun d!689076 () Bool)

(declare-fun lt!861799 () Int)

(assert (=> d!689076 (>= lt!861799 0)))

(declare-fun e!1490935 () Int)

(assert (=> d!689076 (= lt!861799 e!1490935)))

(declare-fun c!369663 () Bool)

(assert (=> d!689076 (= c!369663 ((_ is Nil!27704) l!2797))))

(assert (=> d!689076 (= (ListPrimitiveSize!155 l!2797) lt!861799)))

(declare-fun b!2327064 () Bool)

(assert (=> b!2327064 (= e!1490935 0)))

(declare-fun b!2327065 () Bool)

(assert (=> b!2327065 (= e!1490935 (+ 1 (ListPrimitiveSize!155 (t!207504 l!2797))))))

(assert (= (and d!689076 c!369663) b!2327064))

(assert (= (and d!689076 (not c!369663)) b!2327065))

(assert (=> b!2327065 m!2758001))

(assert (=> b!2327048 d!689076))

(declare-fun d!689078 () Bool)

(declare-fun lt!861806 () Int)

(assert (=> d!689078 (>= lt!861806 0)))

(declare-fun e!1490942 () Int)

(assert (=> d!689078 (= lt!861806 e!1490942)))

(declare-fun c!369670 () Bool)

(assert (=> d!689078 (= c!369670 ((_ is Nil!27704) l!2797))))

(assert (=> d!689078 (= (size!21980 l!2797) lt!861806)))

(declare-fun b!2327078 () Bool)

(assert (=> b!2327078 (= e!1490942 0)))

(declare-fun b!2327079 () Bool)

(assert (=> b!2327079 (= e!1490942 (+ 1 (size!21980 (t!207504 l!2797))))))

(assert (= (and d!689078 c!369670) b!2327078))

(assert (= (and d!689078 (not c!369670)) b!2327079))

(assert (=> b!2327079 m!2757999))

(assert (=> b!2327049 d!689078))

(declare-fun d!689082 () Bool)

(declare-fun lt!861807 () Int)

(assert (=> d!689082 (>= lt!861807 0)))

(declare-fun e!1490945 () Int)

(assert (=> d!689082 (= lt!861807 e!1490945)))

(declare-fun c!369671 () Bool)

(assert (=> d!689082 (= c!369671 ((_ is Nil!27704) (t!207504 l!2797)))))

(assert (=> d!689082 (= (size!21980 (t!207504 l!2797)) lt!861807)))

(declare-fun b!2327084 () Bool)

(assert (=> b!2327084 (= e!1490945 0)))

(declare-fun b!2327085 () Bool)

(assert (=> b!2327085 (= e!1490945 (+ 1 (size!21980 (t!207504 (t!207504 l!2797)))))))

(assert (= (and d!689082 c!369671) b!2327084))

(assert (= (and d!689082 (not c!369671)) b!2327085))

(declare-fun m!2758013 () Bool)

(assert (=> b!2327085 m!2758013))

(assert (=> b!2327046 d!689082))

(declare-fun b!2327091 () Bool)

(declare-fun e!1490949 () Bool)

(declare-fun tp!737233 () Bool)

(assert (=> b!2327091 (= e!1490949 (and tp_is_empty!10897 tp!737233))))

(assert (=> b!2327047 (= tp!737227 e!1490949)))

(assert (= (and b!2327047 ((_ is Cons!27704) (t!207504 l!2797))) b!2327091))

(check-sat (not b!2327063) (not b!2327065) (not b!2327085) tp_is_empty!10897 (not b!2327091) (not b!2327079))
(check-sat)
