; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!182982 () Bool)

(assert start!182982)

(declare-fun res!826470 () Bool)

(declare-fun e!1175211 () Bool)

(assert (=> start!182982 (=> (not res!826470) (not e!1175211))))

(declare-datatypes ((B!1509 0))(
  ( (B!1510 (val!5702 Int)) )
))
(declare-datatypes ((List!20302 0))(
  ( (Nil!20232) (Cons!20232 (h!25633 B!1509) (t!171731 List!20302)) )
))
(declare-fun l!3679 () List!20302)

(get-info :version)

(assert (=> start!182982 (= res!826470 ((_ is Nil!20232) l!3679))))

(assert (=> start!182982 e!1175211))

(declare-fun e!1175212 () Bool)

(assert (=> start!182982 e!1175212))

(declare-fun tp_is_empty!8257 () Bool)

(assert (=> start!182982 tp_is_empty!8257))

(declare-fun b!1839139 () Bool)

(declare-fun elmt!176 () B!1509)

(declare-fun subseq!383 (List!20302 List!20302) Bool)

(assert (=> b!1839139 (= e!1175211 (not (subseq!383 l!3679 (Cons!20232 elmt!176 l!3679))))))

(declare-fun b!1839140 () Bool)

(declare-fun tp!520140 () Bool)

(assert (=> b!1839140 (= e!1175212 (and tp_is_empty!8257 tp!520140))))

(assert (= (and start!182982 res!826470) b!1839139))

(assert (= (and start!182982 ((_ is Cons!20232) l!3679)) b!1839140))

(declare-fun m!2266903 () Bool)

(assert (=> b!1839139 m!2266903))

(check-sat (not b!1839139) (not b!1839140) tp_is_empty!8257)
(check-sat)
(get-model)

(declare-fun d!562407 () Bool)

(declare-fun res!826488 () Bool)

(declare-fun e!1175231 () Bool)

(assert (=> d!562407 (=> res!826488 e!1175231)))

(assert (=> d!562407 (= res!826488 ((_ is Nil!20232) l!3679))))

(assert (=> d!562407 (= (subseq!383 l!3679 (Cons!20232 elmt!176 l!3679)) e!1175231)))

(declare-fun b!1839159 () Bool)

(declare-fun e!1175232 () Bool)

(assert (=> b!1839159 (= e!1175232 (subseq!383 (t!171731 l!3679) (t!171731 (Cons!20232 elmt!176 l!3679))))))

(declare-fun b!1839160 () Bool)

(declare-fun e!1175230 () Bool)

(assert (=> b!1839160 (= e!1175230 (subseq!383 l!3679 (t!171731 (Cons!20232 elmt!176 l!3679))))))

(declare-fun b!1839157 () Bool)

(declare-fun e!1175229 () Bool)

(assert (=> b!1839157 (= e!1175231 e!1175229)))

(declare-fun res!826489 () Bool)

(assert (=> b!1839157 (=> (not res!826489) (not e!1175229))))

(assert (=> b!1839157 (= res!826489 ((_ is Cons!20232) (Cons!20232 elmt!176 l!3679)))))

(declare-fun b!1839158 () Bool)

(assert (=> b!1839158 (= e!1175229 e!1175230)))

(declare-fun res!826490 () Bool)

(assert (=> b!1839158 (=> res!826490 e!1175230)))

(assert (=> b!1839158 (= res!826490 e!1175232)))

(declare-fun res!826487 () Bool)

(assert (=> b!1839158 (=> (not res!826487) (not e!1175232))))

(assert (=> b!1839158 (= res!826487 (= (h!25633 l!3679) (h!25633 (Cons!20232 elmt!176 l!3679))))))

(assert (= (and d!562407 (not res!826488)) b!1839157))

(assert (= (and b!1839157 res!826489) b!1839158))

(assert (= (and b!1839158 res!826487) b!1839159))

(assert (= (and b!1839158 (not res!826490)) b!1839160))

(declare-fun m!2266905 () Bool)

(assert (=> b!1839159 m!2266905))

(declare-fun m!2266909 () Bool)

(assert (=> b!1839160 m!2266909))

(assert (=> b!1839139 d!562407))

(declare-fun b!1839173 () Bool)

(declare-fun e!1175241 () Bool)

(declare-fun tp!520145 () Bool)

(assert (=> b!1839173 (= e!1175241 (and tp_is_empty!8257 tp!520145))))

(assert (=> b!1839140 (= tp!520140 e!1175241)))

(assert (= (and b!1839140 ((_ is Cons!20232) (t!171731 l!3679))) b!1839173))

(check-sat (not b!1839159) (not b!1839160) (not b!1839173) tp_is_empty!8257)
(check-sat)
