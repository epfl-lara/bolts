; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396030 () Bool)

(assert start!396030)

(declare-fun bm!290796 () Bool)

(declare-datatypes ((B!2649 0))(
  ( (B!2650 (val!14616 Int)) )
))
(declare-datatypes ((List!45493 0))(
  ( (Nil!45369) (Cons!45369 (h!50789 B!2649) (t!343524 List!45493)) )
))
(declare-fun call!290802 () List!45493)

(declare-fun c!711597 () Bool)

(declare-fun l!3062 () List!45493)

(declare-fun tail!6659 (List!45493) List!45493)

(assert (=> bm!290796 (= call!290802 (tail!6659 (ite c!711597 l!3062 (t!343524 l!3062))))))

(declare-fun b!4158133 () Bool)

(declare-fun e!2580629 () Bool)

(assert (=> b!4158133 (= e!2580629 (= l!3062 Nil!45369))))

(declare-fun res!1703128 () Bool)

(declare-fun e!2580631 () Bool)

(assert (=> start!396030 (=> (not res!1703128) (not e!2580631))))

(declare-fun e1!32 () B!2649)

(declare-fun contains!9227 (List!45493 B!2649) Bool)

(assert (=> start!396030 (= res!1703128 (contains!9227 l!3062 e1!32))))

(assert (=> start!396030 e!2580631))

(declare-fun e!2580630 () Bool)

(assert (=> start!396030 e!2580630))

(declare-fun tp_is_empty!21697 () Bool)

(assert (=> start!396030 tp_is_empty!21697))

(declare-fun b!4158134 () Bool)

(declare-fun tp!1268888 () Bool)

(assert (=> b!4158134 (= e!2580630 (and tp_is_empty!21697 tp!1268888))))

(declare-fun lt!1482085 () List!45493)

(declare-fun call!290801 () Bool)

(declare-fun bm!290797 () Bool)

(declare-fun e2!32 () B!2649)

(assert (=> bm!290797 (= call!290801 (contains!9227 (ite c!711597 call!290802 lt!1482085) (ite c!711597 e2!32 e1!32)))))

(declare-fun b!4158135 () Bool)

(assert (=> b!4158135 false))

(declare-datatypes ((Unit!64532 0))(
  ( (Unit!64533) )
))
(declare-fun e!2580628 () Unit!64532)

(declare-fun Unit!64534 () Unit!64532)

(assert (=> b!4158135 (= e!2580628 Unit!64534)))

(declare-fun b!4158136 () Bool)

(declare-fun e!2580627 () Unit!64532)

(declare-fun lt!1482082 () Unit!64532)

(assert (=> b!4158136 (= e!2580627 lt!1482082)))

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!112 (List!45493 B!2649 B!2649) Unit!64532)

(assert (=> b!4158136 (= lt!1482082 (lemmaGetIndexBiggerAndHeadEqThenTailContains!112 l!3062 e1!32 e2!32))))

(assert (=> b!4158136 call!290801))

(declare-fun b!4158137 () Bool)

(declare-fun e!2580632 () Bool)

(assert (=> b!4158137 (= e!2580632 e!2580629)))

(declare-fun res!1703126 () Bool)

(assert (=> b!4158137 (=> (not res!1703126) (not e!2580629))))

(assert (=> b!4158137 (= res!1703126 (contains!9227 (tail!6659 l!3062) e2!32))))

(declare-fun lt!1482083 () Unit!64532)

(assert (=> b!4158137 (= lt!1482083 e!2580627)))

(get-info :version)

(assert (=> b!4158137 (= c!711597 (and ((_ is Cons!45369) l!3062) (= (h!50789 l!3062) e1!32)))))

(declare-fun b!4158138 () Bool)

(declare-fun res!1703130 () Bool)

(assert (=> b!4158138 (=> (not res!1703130) (not e!2580631))))

(assert (=> b!4158138 (= res!1703130 (not (= e1!32 e2!32)))))

(declare-fun b!4158139 () Bool)

(assert (=> b!4158139 (= e!2580631 e!2580632)))

(declare-fun res!1703127 () Bool)

(assert (=> b!4158139 (=> (not res!1703127) (not e!2580632))))

(declare-fun lt!1482081 () Int)

(declare-fun lt!1482080 () Int)

(assert (=> b!4158139 (= res!1703127 (< lt!1482081 lt!1482080))))

(declare-fun getIndex!848 (List!45493 B!2649) Int)

(assert (=> b!4158139 (= lt!1482080 (getIndex!848 l!3062 e2!32))))

(assert (=> b!4158139 (= lt!1482081 (getIndex!848 l!3062 e1!32))))

(declare-fun b!4158140 () Bool)

(assert (=> b!4158140 (= e!2580627 e!2580628)))

(declare-fun c!711596 () Bool)

(assert (=> b!4158140 (= c!711596 (and ((_ is Cons!45369) l!3062) (not (= (h!50789 l!3062) e1!32))))))

(declare-fun b!4158141 () Bool)

(declare-fun res!1703129 () Bool)

(assert (=> b!4158141 (=> (not res!1703129) (not e!2580631))))

(assert (=> b!4158141 (= res!1703129 (contains!9227 l!3062 e2!32))))

(declare-fun b!4158142 () Bool)

(assert (=> b!4158142 (contains!9227 call!290802 e2!32)))

(declare-fun lt!1482084 () Unit!64532)

(declare-fun lemmaGetIndexBiggerAndHeadNotEqThenTailContains!22 (List!45493 B!2649 B!2649) Unit!64532)

(assert (=> b!4158142 (= lt!1482084 (lemmaGetIndexBiggerAndHeadNotEqThenTailContains!22 (t!343524 l!3062) e1!32 e2!32))))

(assert (=> b!4158142 (= lt!1482080 (+ 1 (getIndex!848 lt!1482085 e2!32)))))

(declare-fun lt!1482087 () Unit!64532)

(declare-fun lemmaNotHeadSoGetIndexTailIsMinusOne!8 (List!45493 B!2649) Unit!64532)

(assert (=> b!4158142 (= lt!1482087 (lemmaNotHeadSoGetIndexTailIsMinusOne!8 l!3062 e2!32))))

(assert (=> b!4158142 (= lt!1482081 (+ 1 (getIndex!848 lt!1482085 e1!32)))))

(declare-fun lt!1482088 () Unit!64532)

(assert (=> b!4158142 (= lt!1482088 (lemmaNotHeadSoGetIndexTailIsMinusOne!8 l!3062 e1!32))))

(assert (=> b!4158142 call!290801))

(assert (=> b!4158142 (= lt!1482085 (tail!6659 l!3062))))

(declare-fun lt!1482086 () Unit!64532)

(declare-fun lemmaContainsAndNotHdThenTlContains!10 (List!45493 B!2649) Unit!64532)

(assert (=> b!4158142 (= lt!1482086 (lemmaContainsAndNotHdThenTlContains!10 l!3062 e1!32))))

(assert (=> b!4158142 (= e!2580628 lt!1482084)))

(assert (= (and start!396030 res!1703128) b!4158141))

(assert (= (and b!4158141 res!1703129) b!4158138))

(assert (= (and b!4158138 res!1703130) b!4158139))

(assert (= (and b!4158139 res!1703127) b!4158137))

(assert (= (and b!4158137 c!711597) b!4158136))

(assert (= (and b!4158137 (not c!711597)) b!4158140))

(assert (= (and b!4158140 c!711596) b!4158142))

(assert (= (and b!4158140 (not c!711596)) b!4158135))

(assert (= (or b!4158136 b!4158142) bm!290796))

(assert (= (or b!4158136 b!4158142) bm!290797))

(assert (= (and b!4158137 res!1703126) b!4158133))

(assert (= (and start!396030 ((_ is Cons!45369) l!3062)) b!4158134))

(declare-fun m!4751997 () Bool)

(assert (=> bm!290797 m!4751997))

(declare-fun m!4751999 () Bool)

(assert (=> b!4158142 m!4751999))

(declare-fun m!4752001 () Bool)

(assert (=> b!4158142 m!4752001))

(declare-fun m!4752003 () Bool)

(assert (=> b!4158142 m!4752003))

(declare-fun m!4752005 () Bool)

(assert (=> b!4158142 m!4752005))

(declare-fun m!4752007 () Bool)

(assert (=> b!4158142 m!4752007))

(declare-fun m!4752009 () Bool)

(assert (=> b!4158142 m!4752009))

(declare-fun m!4752011 () Bool)

(assert (=> b!4158142 m!4752011))

(declare-fun m!4752013 () Bool)

(assert (=> b!4158142 m!4752013))

(declare-fun m!4752015 () Bool)

(assert (=> bm!290796 m!4752015))

(declare-fun m!4752017 () Bool)

(assert (=> b!4158136 m!4752017))

(declare-fun m!4752019 () Bool)

(assert (=> b!4158141 m!4752019))

(declare-fun m!4752021 () Bool)

(assert (=> b!4158139 m!4752021))

(declare-fun m!4752023 () Bool)

(assert (=> b!4158139 m!4752023))

(declare-fun m!4752025 () Bool)

(assert (=> start!396030 m!4752025))

(assert (=> b!4158137 m!4752007))

(assert (=> b!4158137 m!4752007))

(declare-fun m!4752027 () Bool)

(assert (=> b!4158137 m!4752027))

(check-sat tp_is_empty!21697 (not b!4158139) (not bm!290796) (not b!4158134) (not start!396030) (not bm!290797) (not b!4158142) (not b!4158141) (not b!4158136) (not b!4158137))
(check-sat)
