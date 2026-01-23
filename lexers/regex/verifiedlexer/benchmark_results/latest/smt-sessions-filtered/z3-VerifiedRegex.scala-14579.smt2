; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755656 () Bool)

(assert start!755656)

(declare-fun res!3173805 () Bool)

(declare-fun e!4728072 () Bool)

(assert (=> start!755656 (=> (not res!3173805) (not e!4728072))))

(declare-datatypes ((B!4313 0))(
  ( (B!4314 (val!32556 Int)) )
))
(declare-datatypes ((List!75072 0))(
  ( (Nil!74946) (Cons!74946 (h!81394 B!4313) (t!390828 List!75072)) )
))
(declare-fun l!3127 () List!75072)

(declare-fun e!9294 () B!4313)

(declare-fun contains!20910 (List!75072 B!4313) Bool)

(assert (=> start!755656 (= res!3173805 (contains!20910 l!3127 e!9294))))

(assert (=> start!755656 e!4728072))

(declare-fun e!4728073 () Bool)

(assert (=> start!755656 e!4728073))

(declare-fun tp_is_empty!54217 () Bool)

(assert (=> start!755656 tp_is_empty!54217))

(declare-fun b!8025902 () Bool)

(assert (=> b!8025902 (= e!4728072 (= l!3127 Nil!74946))))

(declare-fun b!8025900 () Bool)

(declare-fun res!3173807 () Bool)

(assert (=> b!8025900 (=> (not res!3173807) (not e!4728072))))

(declare-fun head!16452 (List!75072) B!4313)

(assert (=> b!8025900 (= res!3173807 (not (= (head!16452 l!3127) e!9294)))))

(declare-fun b!8025901 () Bool)

(declare-fun res!3173806 () Bool)

(assert (=> b!8025901 (=> (not res!3173806) (not e!4728072))))

(declare-fun tail!15995 (List!75072) List!75072)

(assert (=> b!8025901 (= res!3173806 (not (= (head!16452 (tail!15995 l!3127)) e!9294)))))

(declare-fun b!8025903 () Bool)

(declare-fun tp!2401937 () Bool)

(assert (=> b!8025903 (= e!4728073 (and tp_is_empty!54217 tp!2401937))))

(assert (= (and start!755656 res!3173805) b!8025900))

(assert (= (and b!8025900 res!3173807) b!8025901))

(assert (= (and b!8025901 res!3173806) b!8025902))

(get-info :version)

(assert (= (and start!755656 ((_ is Cons!74946) l!3127)) b!8025903))

(declare-fun m!8388418 () Bool)

(assert (=> start!755656 m!8388418))

(declare-fun m!8388420 () Bool)

(assert (=> b!8025900 m!8388420))

(declare-fun m!8388422 () Bool)

(assert (=> b!8025901 m!8388422))

(assert (=> b!8025901 m!8388422))

(declare-fun m!8388424 () Bool)

(assert (=> b!8025901 m!8388424))

(check-sat (not b!8025901) (not start!755656) tp_is_empty!54217 (not b!8025900) (not b!8025903))
(check-sat)
(get-model)

(declare-fun d!2393332 () Bool)

(declare-fun lt!2720784 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15969 (List!75072) (InoxSet B!4313))

(assert (=> d!2393332 (= lt!2720784 (select (content!15969 l!3127) e!9294))))

(declare-fun e!4728087 () Bool)

(assert (=> d!2393332 (= lt!2720784 e!4728087)))

(declare-fun res!3173819 () Bool)

(assert (=> d!2393332 (=> (not res!3173819) (not e!4728087))))

(assert (=> d!2393332 (= res!3173819 ((_ is Cons!74946) l!3127))))

(assert (=> d!2393332 (= (contains!20910 l!3127 e!9294) lt!2720784)))

(declare-fun b!8025918 () Bool)

(declare-fun e!4728086 () Bool)

(assert (=> b!8025918 (= e!4728087 e!4728086)))

(declare-fun res!3173818 () Bool)

(assert (=> b!8025918 (=> res!3173818 e!4728086)))

(assert (=> b!8025918 (= res!3173818 (= (h!81394 l!3127) e!9294))))

(declare-fun b!8025919 () Bool)

(assert (=> b!8025919 (= e!4728086 (contains!20910 (t!390828 l!3127) e!9294))))

(assert (= (and d!2393332 res!3173819) b!8025918))

(assert (= (and b!8025918 (not res!3173818)) b!8025919))

(declare-fun m!8388432 () Bool)

(assert (=> d!2393332 m!8388432))

(declare-fun m!8388434 () Bool)

(assert (=> d!2393332 m!8388434))

(declare-fun m!8388436 () Bool)

(assert (=> b!8025919 m!8388436))

(assert (=> start!755656 d!2393332))

(declare-fun d!2393336 () Bool)

(assert (=> d!2393336 (= (head!16452 l!3127) (h!81394 l!3127))))

(assert (=> b!8025900 d!2393336))

(declare-fun d!2393338 () Bool)

(assert (=> d!2393338 (= (head!16452 (tail!15995 l!3127)) (h!81394 (tail!15995 l!3127)))))

(assert (=> b!8025901 d!2393338))

(declare-fun d!2393340 () Bool)

(assert (=> d!2393340 (= (tail!15995 l!3127) (t!390828 l!3127))))

(assert (=> b!8025901 d!2393340))

(declare-fun b!8025925 () Bool)

(declare-fun e!4728091 () Bool)

(declare-fun tp!2401943 () Bool)

(assert (=> b!8025925 (= e!4728091 (and tp_is_empty!54217 tp!2401943))))

(assert (=> b!8025903 (= tp!2401937 e!4728091)))

(assert (= (and b!8025903 ((_ is Cons!74946) (t!390828 l!3127))) b!8025925))

(check-sat (not b!8025919) (not d!2393332) (not b!8025925) tp_is_empty!54217)
(check-sat)
