; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396026 () Bool)

(assert start!396026)

(declare-fun call!290789 () Bool)

(declare-fun c!711585 () Bool)

(declare-datatypes ((B!2645 0))(
  ( (B!2646 (val!14614 Int)) )
))
(declare-fun e2!32 () B!2645)

(declare-datatypes ((List!45491 0))(
  ( (Nil!45367) (Cons!45367 (h!50787 B!2645) (t!343522 List!45491)) )
))
(declare-fun lt!1482033 () List!45491)

(declare-fun bm!290784 () Bool)

(declare-fun e1!32 () B!2645)

(declare-fun call!290790 () List!45491)

(declare-fun contains!9225 (List!45491 B!2645) Bool)

(assert (=> bm!290784 (= call!290789 (contains!9225 (ite c!711585 call!290790 lt!1482033) (ite c!711585 e2!32 e1!32)))))

(declare-fun b!4158074 () Bool)

(declare-fun e!2580592 () Bool)

(declare-fun e!2580594 () Bool)

(assert (=> b!4158074 (= e!2580592 e!2580594)))

(declare-fun res!1703100 () Bool)

(assert (=> b!4158074 (=> (not res!1703100) (not e!2580594))))

(declare-fun lt!1482026 () Int)

(declare-fun lt!1482030 () Int)

(assert (=> b!4158074 (= res!1703100 (< lt!1482026 lt!1482030))))

(declare-fun l!3062 () List!45491)

(declare-fun getIndex!846 (List!45491 B!2645) Int)

(assert (=> b!4158074 (= lt!1482030 (getIndex!846 l!3062 e2!32))))

(assert (=> b!4158074 (= lt!1482026 (getIndex!846 l!3062 e1!32))))

(declare-fun b!4158075 () Bool)

(declare-fun e!2580593 () Bool)

(declare-fun tp_is_empty!21693 () Bool)

(declare-fun tp!1268882 () Bool)

(assert (=> b!4158075 (= e!2580593 (and tp_is_empty!21693 tp!1268882))))

(declare-fun res!1703098 () Bool)

(assert (=> start!396026 (=> (not res!1703098) (not e!2580592))))

(assert (=> start!396026 (= res!1703098 (contains!9225 l!3062 e1!32))))

(assert (=> start!396026 e!2580592))

(assert (=> start!396026 e!2580593))

(assert (=> start!396026 tp_is_empty!21693))

(declare-fun b!4158076 () Bool)

(assert (=> b!4158076 (contains!9225 call!290790 e2!32)))

(declare-datatypes ((Unit!64526 0))(
  ( (Unit!64527) )
))
(declare-fun lt!1482031 () Unit!64526)

(declare-fun lemmaGetIndexBiggerAndHeadNotEqThenTailContains!20 (List!45491 B!2645 B!2645) Unit!64526)

(assert (=> b!4158076 (= lt!1482031 (lemmaGetIndexBiggerAndHeadNotEqThenTailContains!20 (t!343522 l!3062) e1!32 e2!32))))

(assert (=> b!4158076 (= lt!1482030 (+ 1 (getIndex!846 lt!1482033 e2!32)))))

(declare-fun lt!1482034 () Unit!64526)

(declare-fun lemmaNotHeadSoGetIndexTailIsMinusOne!6 (List!45491 B!2645) Unit!64526)

(assert (=> b!4158076 (= lt!1482034 (lemmaNotHeadSoGetIndexTailIsMinusOne!6 l!3062 e2!32))))

(assert (=> b!4158076 (= lt!1482026 (+ 1 (getIndex!846 lt!1482033 e1!32)))))

(declare-fun lt!1482027 () Unit!64526)

(assert (=> b!4158076 (= lt!1482027 (lemmaNotHeadSoGetIndexTailIsMinusOne!6 l!3062 e1!32))))

(assert (=> b!4158076 call!290789))

(declare-fun tail!6657 (List!45491) List!45491)

(assert (=> b!4158076 (= lt!1482033 (tail!6657 l!3062))))

(declare-fun lt!1482029 () Unit!64526)

(declare-fun lemmaContainsAndNotHdThenTlContains!8 (List!45491 B!2645) Unit!64526)

(assert (=> b!4158076 (= lt!1482029 (lemmaContainsAndNotHdThenTlContains!8 l!3062 e1!32))))

(declare-fun e!2580595 () Unit!64526)

(assert (=> b!4158076 (= e!2580595 lt!1482031)))

(declare-fun bm!290785 () Bool)

(assert (=> bm!290785 (= call!290790 (tail!6657 (ite c!711585 l!3062 (t!343522 l!3062))))))

(declare-fun b!4158077 () Bool)

(declare-fun res!1703097 () Bool)

(assert (=> b!4158077 (=> (not res!1703097) (not e!2580592))))

(assert (=> b!4158077 (= res!1703097 (contains!9225 l!3062 e2!32))))

(declare-fun b!4158078 () Bool)

(declare-fun e!2580596 () Unit!64526)

(declare-fun lt!1482028 () Unit!64526)

(assert (=> b!4158078 (= e!2580596 lt!1482028)))

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!110 (List!45491 B!2645 B!2645) Unit!64526)

(assert (=> b!4158078 (= lt!1482028 (lemmaGetIndexBiggerAndHeadEqThenTailContains!110 l!3062 e1!32 e2!32))))

(assert (=> b!4158078 call!290789))

(declare-fun b!4158079 () Bool)

(assert (=> b!4158079 (= e!2580596 e!2580595)))

(declare-fun c!711584 () Bool)

(get-info :version)

(assert (=> b!4158079 (= c!711584 (and ((_ is Cons!45367) l!3062) (not (= (h!50787 l!3062) e1!32))))))

(declare-fun b!4158080 () Bool)

(assert (=> b!4158080 (= e!2580594 (= l!3062 Nil!45367))))

(declare-fun lt!1482032 () Unit!64526)

(assert (=> b!4158080 (= lt!1482032 e!2580596)))

(assert (=> b!4158080 (= c!711585 (and ((_ is Cons!45367) l!3062) (= (h!50787 l!3062) e1!32)))))

(declare-fun b!4158081 () Bool)

(assert (=> b!4158081 false))

(declare-fun Unit!64528 () Unit!64526)

(assert (=> b!4158081 (= e!2580595 Unit!64528)))

(declare-fun b!4158082 () Bool)

(declare-fun res!1703099 () Bool)

(assert (=> b!4158082 (=> (not res!1703099) (not e!2580592))))

(assert (=> b!4158082 (= res!1703099 (not (= e1!32 e2!32)))))

(assert (= (and start!396026 res!1703098) b!4158077))

(assert (= (and b!4158077 res!1703097) b!4158082))

(assert (= (and b!4158082 res!1703099) b!4158074))

(assert (= (and b!4158074 res!1703100) b!4158080))

(assert (= (and b!4158080 c!711585) b!4158078))

(assert (= (and b!4158080 (not c!711585)) b!4158079))

(assert (= (and b!4158079 c!711584) b!4158076))

(assert (= (and b!4158079 (not c!711584)) b!4158081))

(assert (= (or b!4158078 b!4158076) bm!290785))

(assert (= (or b!4158078 b!4158076) bm!290784))

(assert (= (and start!396026 ((_ is Cons!45367) l!3062)) b!4158075))

(declare-fun m!4751935 () Bool)

(assert (=> bm!290784 m!4751935))

(declare-fun m!4751937 () Bool)

(assert (=> b!4158078 m!4751937))

(declare-fun m!4751939 () Bool)

(assert (=> b!4158077 m!4751939))

(declare-fun m!4751941 () Bool)

(assert (=> start!396026 m!4751941))

(declare-fun m!4751943 () Bool)

(assert (=> b!4158074 m!4751943))

(declare-fun m!4751945 () Bool)

(assert (=> b!4158074 m!4751945))

(declare-fun m!4751947 () Bool)

(assert (=> b!4158076 m!4751947))

(declare-fun m!4751949 () Bool)

(assert (=> b!4158076 m!4751949))

(declare-fun m!4751951 () Bool)

(assert (=> b!4158076 m!4751951))

(declare-fun m!4751953 () Bool)

(assert (=> b!4158076 m!4751953))

(declare-fun m!4751955 () Bool)

(assert (=> b!4158076 m!4751955))

(declare-fun m!4751957 () Bool)

(assert (=> b!4158076 m!4751957))

(declare-fun m!4751959 () Bool)

(assert (=> b!4158076 m!4751959))

(declare-fun m!4751961 () Bool)

(assert (=> b!4158076 m!4751961))

(declare-fun m!4751963 () Bool)

(assert (=> bm!290785 m!4751963))

(check-sat tp_is_empty!21693 (not bm!290784) (not bm!290785) (not start!396026) (not b!4158076) (not b!4158075) (not b!4158077) (not b!4158078) (not b!4158074))
(check-sat)
