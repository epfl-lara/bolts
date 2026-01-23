; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!252404 () Bool)

(assert start!252404)

(declare-fun res!1094398 () Bool)

(declare-fun e!1640455 () Bool)

(assert (=> start!252404 (=> (not res!1094398) (not e!1640455))))

(declare-datatypes ((B!2305 0))(
  ( (B!2306 (val!9620 Int)) )
))
(declare-datatypes ((List!30053 0))(
  ( (Nil!29953) (Cons!29953 (h!35373 B!2305) (t!213066 List!30053)) )
))
(declare-fun l!3217 () List!30053)

(declare-fun noDuplicate!501 (List!30053) Bool)

(assert (=> start!252404 (= res!1094398 (noDuplicate!501 l!3217))))

(assert (=> start!252404 e!1640455))

(declare-fun e!1640454 () Bool)

(assert (=> start!252404 e!1640454))

(declare-fun tp_is_empty!13585 () Bool)

(assert (=> start!252404 tp_is_empty!13585))

(declare-fun b!2598957 () Bool)

(declare-fun res!1094399 () Bool)

(assert (=> b!2598957 (=> (not res!1094399) (not e!1640455))))

(declare-fun e!9312 () B!2305)

(declare-fun contains!5501 (List!30053 B!2305) Bool)

(assert (=> b!2598957 (= res!1094399 (contains!5501 l!3217 e!9312))))

(declare-fun b!2598958 () Bool)

(assert (=> b!2598958 (= e!1640455 (= l!3217 Nil!29953))))

(declare-fun b!2598959 () Bool)

(declare-fun tp!823582 () Bool)

(assert (=> b!2598959 (= e!1640454 (and tp_is_empty!13585 tp!823582))))

(assert (= (and start!252404 res!1094398) b!2598957))

(assert (= (and b!2598957 res!1094399) b!2598958))

(get-info :version)

(assert (= (and start!252404 ((_ is Cons!29953) l!3217)) b!2598959))

(declare-fun m!2934865 () Bool)

(assert (=> start!252404 m!2934865))

(declare-fun m!2934867 () Bool)

(assert (=> b!2598957 m!2934867))

(check-sat (not start!252404) (not b!2598957) (not b!2598959) tp_is_empty!13585)
(check-sat)
(get-model)

(declare-fun d!736414 () Bool)

(declare-fun res!1094410 () Bool)

(declare-fun e!1640466 () Bool)

(assert (=> d!736414 (=> res!1094410 e!1640466)))

(assert (=> d!736414 (= res!1094410 ((_ is Nil!29953) l!3217))))

(assert (=> d!736414 (= (noDuplicate!501 l!3217) e!1640466)))

(declare-fun b!2598970 () Bool)

(declare-fun e!1640467 () Bool)

(assert (=> b!2598970 (= e!1640466 e!1640467)))

(declare-fun res!1094411 () Bool)

(assert (=> b!2598970 (=> (not res!1094411) (not e!1640467))))

(assert (=> b!2598970 (= res!1094411 (not (contains!5501 (t!213066 l!3217) (h!35373 l!3217))))))

(declare-fun b!2598971 () Bool)

(assert (=> b!2598971 (= e!1640467 (noDuplicate!501 (t!213066 l!3217)))))

(assert (= (and d!736414 (not res!1094410)) b!2598970))

(assert (= (and b!2598970 res!1094411) b!2598971))

(declare-fun m!2934873 () Bool)

(assert (=> b!2598970 m!2934873))

(declare-fun m!2934875 () Bool)

(assert (=> b!2598971 m!2934875))

(assert (=> start!252404 d!736414))

(declare-fun d!736418 () Bool)

(declare-fun lt!915055 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4232 (List!30053) (InoxSet B!2305))

(assert (=> d!736418 (= lt!915055 (select (content!4232 l!3217) e!9312))))

(declare-fun e!1640482 () Bool)

(assert (=> d!736418 (= lt!915055 e!1640482)))

(declare-fun res!1094423 () Bool)

(assert (=> d!736418 (=> (not res!1094423) (not e!1640482))))

(assert (=> d!736418 (= res!1094423 ((_ is Cons!29953) l!3217))))

(assert (=> d!736418 (= (contains!5501 l!3217 e!9312) lt!915055)))

(declare-fun b!2598987 () Bool)

(declare-fun e!1640481 () Bool)

(assert (=> b!2598987 (= e!1640482 e!1640481)))

(declare-fun res!1094422 () Bool)

(assert (=> b!2598987 (=> res!1094422 e!1640481)))

(assert (=> b!2598987 (= res!1094422 (= (h!35373 l!3217) e!9312))))

(declare-fun b!2598988 () Bool)

(assert (=> b!2598988 (= e!1640481 (contains!5501 (t!213066 l!3217) e!9312))))

(assert (= (and d!736418 res!1094423) b!2598987))

(assert (= (and b!2598987 (not res!1094422)) b!2598988))

(declare-fun m!2934883 () Bool)

(assert (=> d!736418 m!2934883))

(declare-fun m!2934885 () Bool)

(assert (=> d!736418 m!2934885))

(declare-fun m!2934887 () Bool)

(assert (=> b!2598988 m!2934887))

(assert (=> b!2598957 d!736418))

(declare-fun b!2598993 () Bool)

(declare-fun e!1640485 () Bool)

(declare-fun tp!823588 () Bool)

(assert (=> b!2598993 (= e!1640485 (and tp_is_empty!13585 tp!823588))))

(assert (=> b!2598959 (= tp!823582 e!1640485)))

(assert (= (and b!2598959 ((_ is Cons!29953) (t!213066 l!3217))) b!2598993))

(check-sat (not b!2598970) (not b!2598971) tp_is_empty!13585 (not b!2598993) (not b!2598988) (not d!736418))
(check-sat)
