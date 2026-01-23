; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!182938 () Bool)

(assert start!182938)

(declare-fun res!826362 () Bool)

(declare-fun e!1175053 () Bool)

(assert (=> start!182938 (=> (not res!826362) (not e!1175053))))

(declare-datatypes ((B!1501 0))(
  ( (B!1502 (val!5698 Int)) )
))
(declare-datatypes ((List!20298 0))(
  ( (Nil!20228) (Cons!20228 (h!25629 B!1501) (t!171727 List!20298)) )
))
(declare-fun l!3679 () List!20298)

(declare-fun elmt!176 () B!1501)

(get-info :version)

(assert (=> start!182938 (= res!826362 (and (not ((_ is Nil!20228) l!3679)) (= (h!25629 l!3679) elmt!176)))))

(assert (=> start!182938 e!1175053))

(declare-fun e!1175054 () Bool)

(assert (=> start!182938 e!1175054))

(declare-fun tp_is_empty!8249 () Bool)

(assert (=> start!182938 tp_is_empty!8249))

(declare-fun b!1838949 () Bool)

(declare-fun isEmpty!12757 (List!20298) Bool)

(assert (=> b!1838949 (= e!1175053 (not (not (isEmpty!12757 l!3679))))))

(declare-fun subseq!379 (List!20298 List!20298) Bool)

(assert (=> b!1838949 (subseq!379 l!3679 l!3679)))

(declare-datatypes ((Unit!34935 0))(
  ( (Unit!34936) )
))
(declare-fun lt!713662 () Unit!34935)

(declare-fun lemmaSubseqRefl!43 (List!20298) Unit!34935)

(assert (=> b!1838949 (= lt!713662 (lemmaSubseqRefl!43 l!3679))))

(declare-fun b!1838950 () Bool)

(declare-fun tp!520114 () Bool)

(assert (=> b!1838950 (= e!1175054 (and tp_is_empty!8249 tp!520114))))

(assert (= (and start!182938 res!826362) b!1838949))

(assert (= (and start!182938 ((_ is Cons!20228) l!3679)) b!1838950))

(declare-fun m!2266779 () Bool)

(assert (=> b!1838949 m!2266779))

(declare-fun m!2266781 () Bool)

(assert (=> b!1838949 m!2266781))

(declare-fun m!2266783 () Bool)

(assert (=> b!1838949 m!2266783))

(check-sat (not b!1838949) (not b!1838950) tp_is_empty!8249)
(check-sat)
(get-model)

(declare-fun d!562345 () Bool)

(assert (=> d!562345 (= (isEmpty!12757 l!3679) ((_ is Nil!20228) l!3679))))

(assert (=> b!1838949 d!562345))

(declare-fun b!1838973 () Bool)

(declare-fun e!1175078 () Bool)

(assert (=> b!1838973 (= e!1175078 (subseq!379 (t!171727 l!3679) (t!171727 l!3679)))))

(declare-fun b!1838971 () Bool)

(declare-fun e!1175077 () Bool)

(declare-fun e!1175075 () Bool)

(assert (=> b!1838971 (= e!1175077 e!1175075)))

(declare-fun res!826386 () Bool)

(assert (=> b!1838971 (=> (not res!826386) (not e!1175075))))

(assert (=> b!1838971 (= res!826386 ((_ is Cons!20228) l!3679))))

(declare-fun b!1838974 () Bool)

(declare-fun e!1175076 () Bool)

(assert (=> b!1838974 (= e!1175076 (subseq!379 l!3679 (t!171727 l!3679)))))

(declare-fun b!1838972 () Bool)

(assert (=> b!1838972 (= e!1175075 e!1175076)))

(declare-fun res!826385 () Bool)

(assert (=> b!1838972 (=> res!826385 e!1175076)))

(assert (=> b!1838972 (= res!826385 e!1175078)))

(declare-fun res!826384 () Bool)

(assert (=> b!1838972 (=> (not res!826384) (not e!1175078))))

(assert (=> b!1838972 (= res!826384 (= (h!25629 l!3679) (h!25629 l!3679)))))

(declare-fun d!562347 () Bool)

(declare-fun res!826383 () Bool)

(assert (=> d!562347 (=> res!826383 e!1175077)))

(assert (=> d!562347 (= res!826383 ((_ is Nil!20228) l!3679))))

(assert (=> d!562347 (= (subseq!379 l!3679 l!3679) e!1175077)))

(assert (= (and d!562347 (not res!826383)) b!1838971))

(assert (= (and b!1838971 res!826386) b!1838972))

(assert (= (and b!1838972 res!826384) b!1838973))

(assert (= (and b!1838972 (not res!826385)) b!1838974))

(declare-fun m!2266789 () Bool)

(assert (=> b!1838973 m!2266789))

(declare-fun m!2266791 () Bool)

(assert (=> b!1838974 m!2266791))

(assert (=> b!1838949 d!562347))

(declare-fun d!562351 () Bool)

(assert (=> d!562351 (subseq!379 l!3679 l!3679)))

(declare-fun lt!713668 () Unit!34935)

(declare-fun choose!11566 (List!20298) Unit!34935)

(assert (=> d!562351 (= lt!713668 (choose!11566 l!3679))))

(assert (=> d!562351 (= (lemmaSubseqRefl!43 l!3679) lt!713668)))

(declare-fun bs!408525 () Bool)

(assert (= bs!408525 d!562351))

(assert (=> bs!408525 m!2266781))

(declare-fun m!2266795 () Bool)

(assert (=> bs!408525 m!2266795))

(assert (=> b!1838949 d!562351))

(declare-fun b!1838984 () Bool)

(declare-fun e!1175084 () Bool)

(declare-fun tp!520120 () Bool)

(assert (=> b!1838984 (= e!1175084 (and tp_is_empty!8249 tp!520120))))

(assert (=> b!1838950 (= tp!520114 e!1175084)))

(assert (= (and b!1838950 ((_ is Cons!20228) (t!171727 l!3679))) b!1838984))

(check-sat (not b!1838984) (not b!1838974) tp_is_empty!8249 (not b!1838973) (not d!562351))
(check-sat)
