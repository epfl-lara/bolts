; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755832 () Bool)

(assert start!755832)

(declare-fun res!3174145 () Bool)

(declare-fun e!4728511 () Bool)

(assert (=> start!755832 (=> (not res!3174145) (not e!4728511))))

(declare-datatypes ((B!4357 0))(
  ( (B!4358 (val!32578 Int)) )
))
(declare-datatypes ((List!75094 0))(
  ( (Nil!74968) (Cons!74968 (h!81416 B!4357) (t!390850 List!75094)) )
))
(declare-fun l!2938 () List!75094)

(declare-fun e!9235 () B!4357)

(declare-fun contains!20932 (List!75094 B!4357) Bool)

(assert (=> start!755832 (= res!3174145 (contains!20932 l!2938 e!9235))))

(assert (=> start!755832 e!4728511))

(declare-fun e!4728510 () Bool)

(assert (=> start!755832 e!4728510))

(declare-fun tp_is_empty!54261 () Bool)

(assert (=> start!755832 tp_is_empty!54261))

(declare-fun b!8026527 () Bool)

(declare-fun res!3174144 () Bool)

(assert (=> b!8026527 (=> (not res!3174144) (not e!4728511))))

(get-info :version)

(assert (=> b!8026527 (= res!3174144 (and (or (not ((_ is Cons!74968) l!2938)) (not (= (h!81416 l!2938) e!9235))) ((_ is Cons!74968) l!2938) (not (= (h!81416 l!2938) e!9235))))))

(declare-fun b!8026528 () Bool)

(assert (=> b!8026528 (= e!4728511 (not (contains!20932 (t!390850 l!2938) e!9235)))))

(declare-fun b!8026529 () Bool)

(declare-fun tp!2402057 () Bool)

(assert (=> b!8026529 (= e!4728510 (and tp_is_empty!54261 tp!2402057))))

(assert (= (and start!755832 res!3174145) b!8026527))

(assert (= (and b!8026527 res!3174144) b!8026528))

(assert (= (and start!755832 ((_ is Cons!74968) l!2938)) b!8026529))

(declare-fun m!8388910 () Bool)

(assert (=> start!755832 m!8388910))

(declare-fun m!8388912 () Bool)

(assert (=> b!8026528 m!8388912))

(check-sat (not start!755832) (not b!8026528) (not b!8026529) tp_is_empty!54261)
(check-sat)
(get-model)

(declare-fun d!2393551 () Bool)

(declare-fun lt!2720985 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15987 (List!75094) (InoxSet B!4357))

(assert (=> d!2393551 (= lt!2720985 (select (content!15987 l!2938) e!9235))))

(declare-fun e!4728528 () Bool)

(assert (=> d!2393551 (= lt!2720985 e!4728528)))

(declare-fun res!3174159 () Bool)

(assert (=> d!2393551 (=> (not res!3174159) (not e!4728528))))

(assert (=> d!2393551 (= res!3174159 ((_ is Cons!74968) l!2938))))

(assert (=> d!2393551 (= (contains!20932 l!2938 e!9235) lt!2720985)))

(declare-fun b!8026547 () Bool)

(declare-fun e!4728527 () Bool)

(assert (=> b!8026547 (= e!4728528 e!4728527)))

(declare-fun res!3174158 () Bool)

(assert (=> b!8026547 (=> res!3174158 e!4728527)))

(assert (=> b!8026547 (= res!3174158 (= (h!81416 l!2938) e!9235))))

(declare-fun b!8026548 () Bool)

(assert (=> b!8026548 (= e!4728527 (contains!20932 (t!390850 l!2938) e!9235))))

(assert (= (and d!2393551 res!3174159) b!8026547))

(assert (= (and b!8026547 (not res!3174158)) b!8026548))

(declare-fun m!8388924 () Bool)

(assert (=> d!2393551 m!8388924))

(declare-fun m!8388926 () Bool)

(assert (=> d!2393551 m!8388926))

(assert (=> b!8026548 m!8388912))

(assert (=> start!755832 d!2393551))

(declare-fun d!2393555 () Bool)

(declare-fun lt!2720986 () Bool)

(assert (=> d!2393555 (= lt!2720986 (select (content!15987 (t!390850 l!2938)) e!9235))))

(declare-fun e!4728530 () Bool)

(assert (=> d!2393555 (= lt!2720986 e!4728530)))

(declare-fun res!3174161 () Bool)

(assert (=> d!2393555 (=> (not res!3174161) (not e!4728530))))

(assert (=> d!2393555 (= res!3174161 ((_ is Cons!74968) (t!390850 l!2938)))))

(assert (=> d!2393555 (= (contains!20932 (t!390850 l!2938) e!9235) lt!2720986)))

(declare-fun b!8026549 () Bool)

(declare-fun e!4728529 () Bool)

(assert (=> b!8026549 (= e!4728530 e!4728529)))

(declare-fun res!3174160 () Bool)

(assert (=> b!8026549 (=> res!3174160 e!4728529)))

(assert (=> b!8026549 (= res!3174160 (= (h!81416 (t!390850 l!2938)) e!9235))))

(declare-fun b!8026550 () Bool)

(assert (=> b!8026550 (= e!4728529 (contains!20932 (t!390850 (t!390850 l!2938)) e!9235))))

(assert (= (and d!2393555 res!3174161) b!8026549))

(assert (= (and b!8026549 (not res!3174160)) b!8026550))

(declare-fun m!8388928 () Bool)

(assert (=> d!2393555 m!8388928))

(declare-fun m!8388930 () Bool)

(assert (=> d!2393555 m!8388930))

(declare-fun m!8388932 () Bool)

(assert (=> b!8026550 m!8388932))

(assert (=> b!8026528 d!2393555))

(declare-fun b!8026555 () Bool)

(declare-fun e!4728533 () Bool)

(declare-fun tp!2402063 () Bool)

(assert (=> b!8026555 (= e!4728533 (and tp_is_empty!54261 tp!2402063))))

(assert (=> b!8026529 (= tp!2402057 e!4728533)))

(assert (= (and b!8026529 ((_ is Cons!74968) (t!390850 l!2938))) b!8026555))

(check-sat (not d!2393551) (not b!8026548) (not b!8026550) (not d!2393555) (not b!8026555) tp_is_empty!54261)
(check-sat)
