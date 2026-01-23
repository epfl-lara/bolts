; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530950 () Bool)

(assert start!530950)

(declare-fun res!2141483 () Bool)

(declare-fun e!3137920 () Bool)

(assert (=> start!530950 (=> (not res!2141483) (not e!3137920))))

(declare-fun n!45 () Int)

(declare-datatypes ((B!3053 0))(
  ( (B!3054 (val!23368 Int)) )
))
(declare-datatypes ((List!58181 0))(
  ( (Nil!58057) (Cons!58057 (h!64505 B!3053) (t!370573 List!58181)) )
))
(declare-fun l!3169 () List!58181)

(get-info :version)

(assert (=> start!530950 (= res!2141483 (and (>= n!45 0) (not ((_ is Cons!58057) l!3169))))))

(assert (=> start!530950 e!3137920))

(assert (=> start!530950 true))

(declare-fun e!3137921 () Bool)

(assert (=> start!530950 e!3137921))

(declare-fun b!5023159 () Bool)

(declare-fun isPrefix!5378 (List!58181 List!58181) Bool)

(declare-fun take!732 (List!58181 Int) List!58181)

(assert (=> b!5023159 (= e!3137920 (not (isPrefix!5378 (take!732 l!3169 n!45) l!3169)))))

(declare-fun b!5023160 () Bool)

(declare-fun tp_is_empty!36663 () Bool)

(declare-fun tp!1408144 () Bool)

(assert (=> b!5023160 (= e!3137921 (and tp_is_empty!36663 tp!1408144))))

(assert (= (and start!530950 res!2141483) b!5023159))

(assert (= (and start!530950 ((_ is Cons!58057) l!3169)) b!5023160))

(declare-fun m!6058282 () Bool)

(assert (=> b!5023159 m!6058282))

(assert (=> b!5023159 m!6058282))

(declare-fun m!6058284 () Bool)

(assert (=> b!5023159 m!6058284))

(check-sat (not b!5023159) (not b!5023160) tp_is_empty!36663)
(check-sat)
(get-model)

(declare-fun b!5023183 () Bool)

(declare-fun e!3137938 () Bool)

(declare-fun tail!9902 (List!58181) List!58181)

(assert (=> b!5023183 (= e!3137938 (isPrefix!5378 (tail!9902 (take!732 l!3169 n!45)) (tail!9902 l!3169)))))

(declare-fun b!5023181 () Bool)

(declare-fun e!3137939 () Bool)

(assert (=> b!5023181 (= e!3137939 e!3137938)))

(declare-fun res!2141507 () Bool)

(assert (=> b!5023181 (=> (not res!2141507) (not e!3137938))))

(assert (=> b!5023181 (= res!2141507 (not ((_ is Nil!58057) l!3169)))))

(declare-fun b!5023184 () Bool)

(declare-fun e!3137937 () Bool)

(declare-fun size!38638 (List!58181) Int)

(assert (=> b!5023184 (= e!3137937 (>= (size!38638 l!3169) (size!38638 (take!732 l!3169 n!45))))))

(declare-fun b!5023182 () Bool)

(declare-fun res!2141504 () Bool)

(assert (=> b!5023182 (=> (not res!2141504) (not e!3137938))))

(declare-fun head!10770 (List!58181) B!3053)

(assert (=> b!5023182 (= res!2141504 (= (head!10770 (take!732 l!3169 n!45)) (head!10770 l!3169)))))

(declare-fun d!1616977 () Bool)

(assert (=> d!1616977 e!3137937))

(declare-fun res!2141506 () Bool)

(assert (=> d!1616977 (=> res!2141506 e!3137937)))

(declare-fun lt!2078772 () Bool)

(assert (=> d!1616977 (= res!2141506 (not lt!2078772))))

(assert (=> d!1616977 (= lt!2078772 e!3137939)))

(declare-fun res!2141505 () Bool)

(assert (=> d!1616977 (=> res!2141505 e!3137939)))

(assert (=> d!1616977 (= res!2141505 ((_ is Nil!58057) (take!732 l!3169 n!45)))))

(assert (=> d!1616977 (= (isPrefix!5378 (take!732 l!3169 n!45) l!3169) lt!2078772)))

(assert (= (and d!1616977 (not res!2141505)) b!5023181))

(assert (= (and b!5023181 res!2141507) b!5023182))

(assert (= (and b!5023182 res!2141504) b!5023183))

(assert (= (and d!1616977 (not res!2141506)) b!5023184))

(assert (=> b!5023183 m!6058282))

(declare-fun m!6058300 () Bool)

(assert (=> b!5023183 m!6058300))

(declare-fun m!6058302 () Bool)

(assert (=> b!5023183 m!6058302))

(assert (=> b!5023183 m!6058300))

(assert (=> b!5023183 m!6058302))

(declare-fun m!6058304 () Bool)

(assert (=> b!5023183 m!6058304))

(declare-fun m!6058306 () Bool)

(assert (=> b!5023184 m!6058306))

(assert (=> b!5023184 m!6058282))

(declare-fun m!6058308 () Bool)

(assert (=> b!5023184 m!6058308))

(assert (=> b!5023182 m!6058282))

(declare-fun m!6058310 () Bool)

(assert (=> b!5023182 m!6058310))

(declare-fun m!6058312 () Bool)

(assert (=> b!5023182 m!6058312))

(assert (=> b!5023159 d!1616977))

(declare-fun b!5023225 () Bool)

(declare-fun e!3137965 () List!58181)

(assert (=> b!5023225 (= e!3137965 (Cons!58057 (h!64505 l!3169) (take!732 (t!370573 l!3169) (- n!45 1))))))

(declare-fun b!5023226 () Bool)

(declare-fun e!3137964 () Int)

(assert (=> b!5023226 (= e!3137964 n!45)))

(declare-fun b!5023227 () Bool)

(declare-fun e!3137963 () Int)

(assert (=> b!5023227 (= e!3137963 e!3137964)))

(declare-fun c!858933 () Bool)

(assert (=> b!5023227 (= c!858933 (>= n!45 (size!38638 l!3169)))))

(declare-fun b!5023228 () Bool)

(assert (=> b!5023228 (= e!3137965 Nil!58057)))

(declare-fun d!1616981 () Bool)

(declare-fun e!3137966 () Bool)

(assert (=> d!1616981 e!3137966))

(declare-fun res!2141513 () Bool)

(assert (=> d!1616981 (=> (not res!2141513) (not e!3137966))))

(declare-fun lt!2078778 () List!58181)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10297 (List!58181) (InoxSet B!3053))

(assert (=> d!1616981 (= res!2141513 (= ((_ map implies) (content!10297 lt!2078778) (content!10297 l!3169)) ((as const (InoxSet B!3053)) true)))))

(assert (=> d!1616981 (= lt!2078778 e!3137965)))

(declare-fun c!858934 () Bool)

(assert (=> d!1616981 (= c!858934 (or ((_ is Nil!58057) l!3169) (<= n!45 0)))))

(assert (=> d!1616981 (= (take!732 l!3169 n!45) lt!2078778)))

(declare-fun b!5023229 () Bool)

(assert (=> b!5023229 (= e!3137964 (size!38638 l!3169))))

(declare-fun b!5023230 () Bool)

(assert (=> b!5023230 (= e!3137966 (= (size!38638 lt!2078778) e!3137963))))

(declare-fun c!858932 () Bool)

(assert (=> b!5023230 (= c!858932 (<= n!45 0))))

(declare-fun b!5023231 () Bool)

(assert (=> b!5023231 (= e!3137963 0)))

(assert (= (and d!1616981 c!858934) b!5023228))

(assert (= (and d!1616981 (not c!858934)) b!5023225))

(assert (= (and d!1616981 res!2141513) b!5023230))

(assert (= (and b!5023230 c!858932) b!5023231))

(assert (= (and b!5023230 (not c!858932)) b!5023227))

(assert (= (and b!5023227 c!858933) b!5023229))

(assert (= (and b!5023227 (not c!858933)) b!5023226))

(declare-fun m!6058322 () Bool)

(assert (=> b!5023225 m!6058322))

(declare-fun m!6058324 () Bool)

(assert (=> d!1616981 m!6058324))

(declare-fun m!6058326 () Bool)

(assert (=> d!1616981 m!6058326))

(assert (=> b!5023229 m!6058306))

(assert (=> b!5023227 m!6058306))

(declare-fun m!6058328 () Bool)

(assert (=> b!5023230 m!6058328))

(assert (=> b!5023159 d!1616981))

(declare-fun b!5023236 () Bool)

(declare-fun e!3137969 () Bool)

(declare-fun tp!1408150 () Bool)

(assert (=> b!5023236 (= e!3137969 (and tp_is_empty!36663 tp!1408150))))

(assert (=> b!5023160 (= tp!1408144 e!3137969)))

(assert (= (and b!5023160 ((_ is Cons!58057) (t!370573 l!3169))) b!5023236))

(check-sat (not b!5023236) (not b!5023184) (not b!5023230) (not b!5023229) (not b!5023182) (not b!5023183) (not b!5023225) (not b!5023227) (not d!1616981) tp_is_empty!36663)
(check-sat)
