; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274482 () Bool)

(assert start!274482)

(declare-fun b_free!81091 () Bool)

(declare-fun b_next!81795 () Bool)

(assert (=> start!274482 (= b_free!81091 (not b_next!81795))))

(declare-fun tp!903034 () Bool)

(declare-fun b_and!206689 () Bool)

(assert (=> start!274482 (= tp!903034 b_and!206689)))

(declare-fun b!2827315 () Bool)

(declare-fun e!1789512 () Bool)

(declare-fun lt!1008545 () Bool)

(assert (=> b!2827315 (= e!1789512 (not lt!1008545))))

(declare-fun b!2827316 () Bool)

(declare-fun res!1176857 () Bool)

(declare-fun e!1789510 () Bool)

(assert (=> b!2827316 (=> (not res!1176857) (not e!1789510))))

(declare-datatypes ((B!2477 0))(
  ( (B!2478 (val!10458 Int)) )
))
(declare-datatypes ((List!33347 0))(
  ( (Nil!33223) (Cons!33223 (h!38643 B!2477) (t!231098 List!33347)) )
))
(declare-fun l1!953 () List!33347)

(declare-fun l2!930 () List!33347)

(declare-fun subseq!477 (List!33347 List!33347) Bool)

(assert (=> b!2827316 (= res!1176857 (subseq!477 l1!953 l2!930))))

(declare-fun b!2827317 () Bool)

(declare-fun e!1789509 () Bool)

(declare-fun tp_is_empty!14527 () Bool)

(declare-fun tp!903032 () Bool)

(assert (=> b!2827317 (= e!1789509 (and tp_is_empty!14527 tp!903032))))

(declare-fun b!2827318 () Bool)

(declare-fun res!1176853 () Bool)

(assert (=> b!2827318 (=> (not res!1176853) (not e!1789510))))

(get-info :version)

(assert (=> b!2827318 (= res!1176853 (and (not ((_ is Nil!33223) l1!953)) ((_ is Cons!33223) l2!930) (= (h!38643 l1!953) (h!38643 l2!930))))))

(declare-fun res!1176856 () Bool)

(assert (=> start!274482 (=> (not res!1176856) (not e!1789510))))

(declare-fun p!1912 () Int)

(declare-fun forall!6823 (List!33347 Int) Bool)

(assert (=> start!274482 (= res!1176856 (forall!6823 l2!930 p!1912))))

(assert (=> start!274482 e!1789510))

(declare-fun e!1789511 () Bool)

(assert (=> start!274482 e!1789511))

(assert (=> start!274482 tp!903034))

(assert (=> start!274482 e!1789509))

(declare-fun b!2827319 () Bool)

(declare-fun tp!903033 () Bool)

(assert (=> b!2827319 (= e!1789511 (and tp_is_empty!14527 tp!903033))))

(declare-fun b!2827320 () Bool)

(declare-fun res!1176855 () Bool)

(assert (=> b!2827320 (=> (not res!1176855) (not e!1789512))))

(assert (=> b!2827320 (= res!1176855 (forall!6823 (t!231098 l2!930) p!1912))))

(declare-fun b!2827321 () Bool)

(assert (=> b!2827321 (= e!1789510 e!1789512)))

(declare-fun res!1176854 () Bool)

(assert (=> b!2827321 (=> (not res!1176854) (not e!1789512))))

(assert (=> b!2827321 (= res!1176854 lt!1008545)))

(assert (=> b!2827321 (= lt!1008545 (subseq!477 (t!231098 l1!953) (t!231098 l2!930)))))

(assert (= (and start!274482 res!1176856) b!2827316))

(assert (= (and b!2827316 res!1176857) b!2827318))

(assert (= (and b!2827318 res!1176853) b!2827321))

(assert (= (and b!2827321 res!1176854) b!2827320))

(assert (= (and b!2827320 res!1176855) b!2827315))

(assert (= (and start!274482 ((_ is Cons!33223) l2!930)) b!2827319))

(assert (= (and start!274482 ((_ is Cons!33223) l1!953)) b!2827317))

(declare-fun m!3257063 () Bool)

(assert (=> b!2827316 m!3257063))

(declare-fun m!3257065 () Bool)

(assert (=> start!274482 m!3257065))

(declare-fun m!3257067 () Bool)

(assert (=> b!2827320 m!3257067))

(declare-fun m!3257069 () Bool)

(assert (=> b!2827321 m!3257069))

(check-sat (not b_next!81795) b_and!206689 (not start!274482) (not b!2827321) (not b!2827319) (not b!2827320) tp_is_empty!14527 (not b!2827317) (not b!2827316))
(check-sat b_and!206689 (not b_next!81795))
