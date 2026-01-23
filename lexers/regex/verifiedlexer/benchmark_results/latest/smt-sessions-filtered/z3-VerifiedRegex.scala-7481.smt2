; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396262 () Bool)

(assert start!396262)

(declare-fun b!4159418 () Bool)

(assert (=> b!4159418 false))

(declare-datatypes ((Unit!64568 0))(
  ( (Unit!64569) )
))
(declare-fun e!2581431 () Unit!64568)

(declare-fun Unit!64570 () Unit!64568)

(assert (=> b!4159418 (= e!2581431 Unit!64570)))

(declare-datatypes ((B!2701 0))(
  ( (B!2702 (val!14642 Int)) )
))
(declare-datatypes ((List!45519 0))(
  ( (Nil!45395) (Cons!45395 (h!50815 B!2701) (t!343550 List!45519)) )
))
(declare-fun call!290825 () List!45519)

(declare-fun c!711846 () Bool)

(declare-fun e2!32 () B!2701)

(declare-fun lt!1482692 () List!45519)

(declare-fun e1!32 () B!2701)

(declare-fun call!290826 () Bool)

(declare-fun bm!290820 () Bool)

(declare-fun contains!9253 (List!45519 B!2701) Bool)

(assert (=> bm!290820 (= call!290826 (contains!9253 (ite c!711846 call!290825 lt!1482692) (ite c!711846 e2!32 e1!32)))))

(declare-fun b!4159419 () Bool)

(declare-fun e!2581430 () Bool)

(declare-fun e!2581432 () Bool)

(assert (=> b!4159419 (= e!2581430 e!2581432)))

(declare-fun res!1703733 () Bool)

(assert (=> b!4159419 (=> (not res!1703733) (not e!2581432))))

(declare-fun lt!1482687 () Int)

(declare-fun lt!1482693 () Int)

(assert (=> b!4159419 (= res!1703733 (< lt!1482687 lt!1482693))))

(declare-fun l!3062 () List!45519)

(declare-fun getIndex!874 (List!45519 B!2701) Int)

(assert (=> b!4159419 (= lt!1482693 (getIndex!874 l!3062 e2!32))))

(assert (=> b!4159419 (= lt!1482687 (getIndex!874 l!3062 e1!32))))

(declare-fun b!4159420 () Bool)

(declare-fun res!1703736 () Bool)

(assert (=> b!4159420 (=> (not res!1703736) (not e!2581430))))

(assert (=> b!4159420 (= res!1703736 (contains!9253 l!3062 e2!32))))

(declare-fun b!4159421 () Bool)

(declare-fun e!2581433 () Unit!64568)

(assert (=> b!4159421 (= e!2581433 e!2581431)))

(declare-fun c!711847 () Bool)

(get-info :version)

(assert (=> b!4159421 (= c!711847 (and ((_ is Cons!45395) l!3062) (not (= (h!50815 l!3062) e1!32))))))

(declare-fun b!4159422 () Bool)

(assert (=> b!4159422 (= e!2581432 false)))

(declare-fun lt!1482696 () Bool)

(declare-fun tail!6675 (List!45519) List!45519)

(assert (=> b!4159422 (= lt!1482696 (contains!9253 (tail!6675 l!3062) e2!32))))

(declare-fun lt!1482694 () Unit!64568)

(assert (=> b!4159422 (= lt!1482694 e!2581433)))

(assert (=> b!4159422 (= c!711846 (and ((_ is Cons!45395) l!3062) (= (h!50815 l!3062) e1!32)))))

(declare-fun b!4159423 () Bool)

(declare-fun e!2581434 () Bool)

(declare-fun tp_is_empty!21749 () Bool)

(declare-fun tp!1269026 () Bool)

(assert (=> b!4159423 (= e!2581434 (and tp_is_empty!21749 tp!1269026))))

(declare-fun res!1703735 () Bool)

(assert (=> start!396262 (=> (not res!1703735) (not e!2581430))))

(assert (=> start!396262 (= res!1703735 (contains!9253 l!3062 e1!32))))

(assert (=> start!396262 e!2581430))

(assert (=> start!396262 e!2581434))

(assert (=> start!396262 tp_is_empty!21749))

(declare-fun b!4159424 () Bool)

(declare-fun lt!1482689 () Unit!64568)

(assert (=> b!4159424 (= e!2581433 lt!1482689)))

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!116 (List!45519 B!2701 B!2701) Unit!64568)

(assert (=> b!4159424 (= lt!1482689 (lemmaGetIndexBiggerAndHeadEqThenTailContains!116 l!3062 e1!32 e2!32))))

(assert (=> b!4159424 call!290826))

(declare-fun bm!290821 () Bool)

(assert (=> bm!290821 (= call!290825 (tail!6675 (ite c!711846 l!3062 (t!343550 l!3062))))))

(declare-fun b!4159425 () Bool)

(assert (=> b!4159425 (contains!9253 call!290825 e2!32)))

(declare-fun lt!1482690 () Unit!64568)

(declare-fun lemmaGetIndexBiggerAndHeadNotEqThenTailContains!26 (List!45519 B!2701 B!2701) Unit!64568)

(assert (=> b!4159425 (= lt!1482690 (lemmaGetIndexBiggerAndHeadNotEqThenTailContains!26 (t!343550 l!3062) e1!32 e2!32))))

(assert (=> b!4159425 (= lt!1482693 (+ 1 (getIndex!874 lt!1482692 e2!32)))))

(declare-fun lt!1482691 () Unit!64568)

(declare-fun lemmaNotHeadSoGetIndexTailIsMinusOne!22 (List!45519 B!2701) Unit!64568)

(assert (=> b!4159425 (= lt!1482691 (lemmaNotHeadSoGetIndexTailIsMinusOne!22 l!3062 e2!32))))

(assert (=> b!4159425 (= lt!1482687 (+ 1 (getIndex!874 lt!1482692 e1!32)))))

(declare-fun lt!1482688 () Unit!64568)

(assert (=> b!4159425 (= lt!1482688 (lemmaNotHeadSoGetIndexTailIsMinusOne!22 l!3062 e1!32))))

(assert (=> b!4159425 call!290826))

(assert (=> b!4159425 (= lt!1482692 (tail!6675 l!3062))))

(declare-fun lt!1482695 () Unit!64568)

(declare-fun lemmaContainsAndNotHdThenTlContains!26 (List!45519 B!2701) Unit!64568)

(assert (=> b!4159425 (= lt!1482695 (lemmaContainsAndNotHdThenTlContains!26 l!3062 e1!32))))

(assert (=> b!4159425 (= e!2581431 lt!1482690)))

(declare-fun b!4159426 () Bool)

(declare-fun res!1703734 () Bool)

(assert (=> b!4159426 (=> (not res!1703734) (not e!2581430))))

(assert (=> b!4159426 (= res!1703734 (not (= e1!32 e2!32)))))

(assert (= (and start!396262 res!1703735) b!4159420))

(assert (= (and b!4159420 res!1703736) b!4159426))

(assert (= (and b!4159426 res!1703734) b!4159419))

(assert (= (and b!4159419 res!1703733) b!4159422))

(assert (= (and b!4159422 c!711846) b!4159424))

(assert (= (and b!4159422 (not c!711846)) b!4159421))

(assert (= (and b!4159421 c!711847) b!4159425))

(assert (= (and b!4159421 (not c!711847)) b!4159418))

(assert (= (or b!4159424 b!4159425) bm!290821))

(assert (= (or b!4159424 b!4159425) bm!290820))

(assert (= (and start!396262 ((_ is Cons!45395) l!3062)) b!4159423))

(declare-fun m!4753129 () Bool)

(assert (=> b!4159425 m!4753129))

(declare-fun m!4753131 () Bool)

(assert (=> b!4159425 m!4753131))

(declare-fun m!4753133 () Bool)

(assert (=> b!4159425 m!4753133))

(declare-fun m!4753135 () Bool)

(assert (=> b!4159425 m!4753135))

(declare-fun m!4753137 () Bool)

(assert (=> b!4159425 m!4753137))

(declare-fun m!4753139 () Bool)

(assert (=> b!4159425 m!4753139))

(declare-fun m!4753141 () Bool)

(assert (=> b!4159425 m!4753141))

(declare-fun m!4753143 () Bool)

(assert (=> b!4159425 m!4753143))

(declare-fun m!4753145 () Bool)

(assert (=> bm!290820 m!4753145))

(declare-fun m!4753147 () Bool)

(assert (=> b!4159420 m!4753147))

(declare-fun m!4753149 () Bool)

(assert (=> bm!290821 m!4753149))

(declare-fun m!4753151 () Bool)

(assert (=> start!396262 m!4753151))

(declare-fun m!4753153 () Bool)

(assert (=> b!4159424 m!4753153))

(assert (=> b!4159422 m!4753137))

(assert (=> b!4159422 m!4753137))

(declare-fun m!4753155 () Bool)

(assert (=> b!4159422 m!4753155))

(declare-fun m!4753157 () Bool)

(assert (=> b!4159419 m!4753157))

(declare-fun m!4753159 () Bool)

(assert (=> b!4159419 m!4753159))

(check-sat (not b!4159423) (not bm!290821) tp_is_empty!21749 (not b!4159425) (not b!4159419) (not start!396262) (not b!4159422) (not bm!290820) (not b!4159424) (not b!4159420))
(check-sat)
