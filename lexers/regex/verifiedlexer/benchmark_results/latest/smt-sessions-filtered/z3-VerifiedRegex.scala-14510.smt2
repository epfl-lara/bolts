; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754568 () Bool)

(assert start!754568)

(declare-fun b!8017862 () Bool)

(declare-fun e!4722996 () Bool)

(declare-datatypes ((B!4057 0))(
  ( (B!4058 (val!32418 Int)) )
))
(declare-datatypes ((List!74930 0))(
  ( (Nil!74806) (Cons!74806 (h!81254 B!4057) (t!390673 List!74930)) )
))
(declare-fun p!2003 () List!74930)

(declare-fun l!3425 () List!74930)

(declare-fun size!43597 (List!74930) Int)

(assert (=> b!8017862 (= e!4722996 (> (size!43597 p!2003) (size!43597 l!3425)))))

(declare-fun b!8017863 () Bool)

(declare-fun e!4722997 () Bool)

(declare-fun tp_is_empty!53945 () Bool)

(declare-fun tp!2399949 () Bool)

(assert (=> b!8017863 (= e!4722997 (and tp_is_empty!53945 tp!2399949))))

(declare-fun b!8017864 () Bool)

(declare-fun e!4722995 () Bool)

(declare-fun tp!2399950 () Bool)

(assert (=> b!8017864 (= e!4722995 (and tp_is_empty!53945 tp!2399950))))

(declare-fun res!3170077 () Bool)

(assert (=> start!754568 (=> (not res!3170077) (not e!4722996))))

(declare-fun isPrefix!6753 (List!74930 List!74930) Bool)

(assert (=> start!754568 (= res!3170077 (isPrefix!6753 p!2003 l!3425))))

(assert (=> start!754568 e!4722996))

(assert (=> start!754568 e!4722997))

(assert (=> start!754568 e!4722995))

(declare-fun b!8017861 () Bool)

(declare-fun res!3170078 () Bool)

(assert (=> b!8017861 (=> (not res!3170078) (not e!4722996))))

(get-info :version)

(assert (=> b!8017861 (= res!3170078 (and (not ((_ is Nil!74806) p!2003)) ((_ is Nil!74806) l!3425)))))

(assert (= (and start!754568 res!3170077) b!8017861))

(assert (= (and b!8017861 res!3170078) b!8017862))

(assert (= (and start!754568 ((_ is Cons!74806) p!2003)) b!8017863))

(assert (= (and start!754568 ((_ is Cons!74806) l!3425)) b!8017864))

(declare-fun m!8380924 () Bool)

(assert (=> b!8017862 m!8380924))

(declare-fun m!8380926 () Bool)

(assert (=> b!8017862 m!8380926))

(declare-fun m!8380928 () Bool)

(assert (=> start!754568 m!8380928))

(check-sat (not b!8017862) (not b!8017863) tp_is_empty!53945 (not b!8017864) (not start!754568))
(check-sat)
(get-model)

(declare-fun d!2390623 () Bool)

(declare-fun e!4723010 () Bool)

(assert (=> d!2390623 e!4723010))

(declare-fun res!3170096 () Bool)

(assert (=> d!2390623 (=> res!3170096 e!4723010)))

(declare-fun lt!2719118 () Bool)

(assert (=> d!2390623 (= res!3170096 (not lt!2719118))))

(declare-fun e!4723011 () Bool)

(assert (=> d!2390623 (= lt!2719118 e!4723011)))

(declare-fun res!3170098 () Bool)

(assert (=> d!2390623 (=> res!3170098 e!4723011)))

(assert (=> d!2390623 (= res!3170098 ((_ is Nil!74806) p!2003))))

(assert (=> d!2390623 (= (isPrefix!6753 p!2003 l!3425) lt!2719118)))

(declare-fun b!8017884 () Bool)

(assert (=> b!8017884 (= e!4723010 (>= (size!43597 l!3425) (size!43597 p!2003)))))

(declare-fun b!8017881 () Bool)

(declare-fun e!4723012 () Bool)

(assert (=> b!8017881 (= e!4723011 e!4723012)))

(declare-fun res!3170095 () Bool)

(assert (=> b!8017881 (=> (not res!3170095) (not e!4723012))))

(assert (=> b!8017881 (= res!3170095 (not ((_ is Nil!74806) l!3425)))))

(declare-fun b!8017883 () Bool)

(declare-fun tail!15893 (List!74930) List!74930)

(assert (=> b!8017883 (= e!4723012 (isPrefix!6753 (tail!15893 p!2003) (tail!15893 l!3425)))))

(declare-fun b!8017882 () Bool)

(declare-fun res!3170097 () Bool)

(assert (=> b!8017882 (=> (not res!3170097) (not e!4723012))))

(declare-fun head!16368 (List!74930) B!4057)

(assert (=> b!8017882 (= res!3170097 (= (head!16368 p!2003) (head!16368 l!3425)))))

(assert (= (and d!2390623 (not res!3170098)) b!8017881))

(assert (= (and b!8017881 res!3170095) b!8017882))

(assert (= (and b!8017882 res!3170097) b!8017883))

(assert (= (and d!2390623 (not res!3170096)) b!8017884))

(assert (=> b!8017884 m!8380926))

(assert (=> b!8017884 m!8380924))

(declare-fun m!8380930 () Bool)

(assert (=> b!8017883 m!8380930))

(declare-fun m!8380932 () Bool)

(assert (=> b!8017883 m!8380932))

(assert (=> b!8017883 m!8380930))

(assert (=> b!8017883 m!8380932))

(declare-fun m!8380934 () Bool)

(assert (=> b!8017883 m!8380934))

(declare-fun m!8380936 () Bool)

(assert (=> b!8017882 m!8380936))

(declare-fun m!8380938 () Bool)

(assert (=> b!8017882 m!8380938))

(assert (=> start!754568 d!2390623))

(declare-fun d!2390627 () Bool)

(declare-fun lt!2719124 () Int)

(assert (=> d!2390627 (>= lt!2719124 0)))

(declare-fun e!4723020 () Int)

(assert (=> d!2390627 (= lt!2719124 e!4723020)))

(declare-fun c!1471635 () Bool)

(assert (=> d!2390627 (= c!1471635 ((_ is Nil!74806) p!2003))))

(assert (=> d!2390627 (= (size!43597 p!2003) lt!2719124)))

(declare-fun b!8017897 () Bool)

(assert (=> b!8017897 (= e!4723020 0)))

(declare-fun b!8017898 () Bool)

(assert (=> b!8017898 (= e!4723020 (+ 1 (size!43597 (t!390673 p!2003))))))

(assert (= (and d!2390627 c!1471635) b!8017897))

(assert (= (and d!2390627 (not c!1471635)) b!8017898))

(declare-fun m!8380950 () Bool)

(assert (=> b!8017898 m!8380950))

(assert (=> b!8017862 d!2390627))

(declare-fun d!2390631 () Bool)

(declare-fun lt!2719125 () Int)

(assert (=> d!2390631 (>= lt!2719125 0)))

(declare-fun e!4723021 () Int)

(assert (=> d!2390631 (= lt!2719125 e!4723021)))

(declare-fun c!1471636 () Bool)

(assert (=> d!2390631 (= c!1471636 ((_ is Nil!74806) l!3425))))

(assert (=> d!2390631 (= (size!43597 l!3425) lt!2719125)))

(declare-fun b!8017899 () Bool)

(assert (=> b!8017899 (= e!4723021 0)))

(declare-fun b!8017900 () Bool)

(assert (=> b!8017900 (= e!4723021 (+ 1 (size!43597 (t!390673 l!3425))))))

(assert (= (and d!2390631 c!1471636) b!8017899))

(assert (= (and d!2390631 (not c!1471636)) b!8017900))

(declare-fun m!8380952 () Bool)

(assert (=> b!8017900 m!8380952))

(assert (=> b!8017862 d!2390631))

(declare-fun b!8017907 () Bool)

(declare-fun e!4723025 () Bool)

(declare-fun tp!2399953 () Bool)

(assert (=> b!8017907 (= e!4723025 (and tp_is_empty!53945 tp!2399953))))

(assert (=> b!8017864 (= tp!2399950 e!4723025)))

(assert (= (and b!8017864 ((_ is Cons!74806) (t!390673 l!3425))) b!8017907))

(declare-fun b!8017910 () Bool)

(declare-fun e!4723027 () Bool)

(declare-fun tp!2399954 () Bool)

(assert (=> b!8017910 (= e!4723027 (and tp_is_empty!53945 tp!2399954))))

(assert (=> b!8017863 (= tp!2399949 e!4723027)))

(assert (= (and b!8017863 ((_ is Cons!74806) (t!390673 p!2003))) b!8017910))

(check-sat (not b!8017898) (not b!8017883) (not b!8017900) tp_is_empty!53945 (not b!8017910) (not b!8017907) (not b!8017884) (not b!8017882))
(check-sat)
