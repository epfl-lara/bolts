; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!532098 () Bool)

(assert start!532098)

(declare-fun b!5030925 () Bool)

(declare-fun e!3142794 () Bool)

(declare-fun i!879 () Int)

(declare-datatypes ((B!3079 0))(
  ( (B!3080 (val!23451 Int)) )
))
(declare-datatypes ((List!58354 0))(
  ( (Nil!58230) (Cons!58230 (h!64678 B!3079) (t!370770 List!58354)) )
))
(declare-fun l!2999 () List!58354)

(declare-fun size!38769 (List!58354) Int)

(declare-fun tail!9931 (List!58354) List!58354)

(assert (=> b!5030925 (= e!3142794 (>= (- i!879 1) (size!38769 (tail!9931 l!2999))))))

(declare-fun b!5030924 () Bool)

(declare-fun e!3142793 () Bool)

(assert (=> b!5030924 (= e!3142793 e!3142794)))

(declare-fun res!2144090 () Bool)

(assert (=> b!5030924 (=> res!2144090 e!3142794)))

(assert (=> b!5030924 (= res!2144090 (< (- i!879 1) 0))))

(declare-fun res!2144089 () Bool)

(declare-fun e!3142795 () Bool)

(assert (=> start!532098 (=> (not res!2144089) (not e!3142795))))

(assert (=> start!532098 (= res!2144089 (>= i!879 0))))

(assert (=> start!532098 e!3142795))

(assert (=> start!532098 true))

(declare-fun e!3142792 () Bool)

(assert (=> start!532098 e!3142792))

(declare-fun b!5030923 () Bool)

(assert (=> b!5030923 (= e!3142795 e!3142793)))

(declare-fun res!2144088 () Bool)

(assert (=> b!5030923 (=> (not res!2144088) (not e!3142793))))

(declare-fun lt!2081992 () Int)

(declare-fun j!102 () Int)

(assert (=> b!5030923 (= res!2144088 (and (< i!879 lt!2081992) (>= j!102 0) (<= j!102 (- (- lt!2081992 i!879) 1)) (not (= i!879 0))))))

(assert (=> b!5030923 (= lt!2081992 (size!38769 l!2999))))

(declare-fun b!5030926 () Bool)

(declare-fun tp_is_empty!36701 () Bool)

(declare-fun tp!1409481 () Bool)

(assert (=> b!5030926 (= e!3142792 (and tp_is_empty!36701 tp!1409481))))

(assert (= (and start!532098 res!2144089) b!5030923))

(assert (= (and b!5030923 res!2144088) b!5030924))

(assert (= (and b!5030924 (not res!2144090)) b!5030925))

(assert (= (and start!532098 (is-Cons!58230 l!2999)) b!5030926))

(declare-fun m!6066134 () Bool)

(assert (=> b!5030925 m!6066134))

(assert (=> b!5030925 m!6066134))

(declare-fun m!6066136 () Bool)

(assert (=> b!5030925 m!6066136))

(declare-fun m!6066138 () Bool)

(assert (=> b!5030923 m!6066138))

(push 1)

(assert (not b!5030925))

(assert (not b!5030923))

(assert (not b!5030926))

(assert tp_is_empty!36701)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1619027 () Bool)

(declare-fun lt!2081998 () Int)

(assert (=> d!1619027 (>= lt!2081998 0)))

(declare-fun e!3142810 () Int)

(assert (=> d!1619027 (= lt!2081998 e!3142810)))

(declare-fun c!861323 () Bool)

(assert (=> d!1619027 (= c!861323 (is-Nil!58230 (tail!9931 l!2999)))))

(assert (=> d!1619027 (= (size!38769 (tail!9931 l!2999)) lt!2081998)))

(declare-fun b!5030943 () Bool)

(assert (=> b!5030943 (= e!3142810 0)))

(declare-fun b!5030944 () Bool)

(assert (=> b!5030944 (= e!3142810 (+ 1 (size!38769 (t!370770 (tail!9931 l!2999)))))))

(assert (= (and d!1619027 c!861323) b!5030943))

(assert (= (and d!1619027 (not c!861323)) b!5030944))

(declare-fun m!6066146 () Bool)

(assert (=> b!5030944 m!6066146))

(assert (=> b!5030925 d!1619027))

(declare-fun d!1619031 () Bool)

(assert (=> d!1619031 (= (tail!9931 l!2999) (t!370770 l!2999))))

(assert (=> b!5030925 d!1619031))

(declare-fun d!1619033 () Bool)

(declare-fun lt!2081999 () Int)

(assert (=> d!1619033 (>= lt!2081999 0)))

(declare-fun e!3142811 () Int)

(assert (=> d!1619033 (= lt!2081999 e!3142811)))

(declare-fun c!861324 () Bool)

(assert (=> d!1619033 (= c!861324 (is-Nil!58230 l!2999))))

(assert (=> d!1619033 (= (size!38769 l!2999) lt!2081999)))

(declare-fun b!5030945 () Bool)

(assert (=> b!5030945 (= e!3142811 0)))

(declare-fun b!5030946 () Bool)

(assert (=> b!5030946 (= e!3142811 (+ 1 (size!38769 (t!370770 l!2999))))))

(assert (= (and d!1619033 c!861324) b!5030945))

(assert (= (and d!1619033 (not c!861324)) b!5030946))

(declare-fun m!6066148 () Bool)

(assert (=> b!5030946 m!6066148))

(assert (=> b!5030923 d!1619033))

(declare-fun b!5030951 () Bool)

(declare-fun e!3142814 () Bool)

(declare-fun tp!1409487 () Bool)

(assert (=> b!5030951 (= e!3142814 (and tp_is_empty!36701 tp!1409487))))

(assert (=> b!5030926 (= tp!1409481 e!3142814)))

(assert (= (and b!5030926 (is-Cons!58230 (t!370770 l!2999))) b!5030951))

(push 1)

(assert (not b!5030944))

(assert (not b!5030946))

(assert (not b!5030951))

(assert tp_is_empty!36701)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

