; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274546 () Bool)

(assert start!274546)

(declare-fun b_free!81111 () Bool)

(declare-fun b_next!81815 () Bool)

(assert (=> start!274546 (= b_free!81111 (not b_next!81815))))

(declare-fun tp!903156 () Bool)

(declare-fun b_and!206757 () Bool)

(assert (=> start!274546 (= tp!903156 b_and!206757)))

(declare-fun b!2827861 () Bool)

(declare-fun e!1789888 () Bool)

(declare-fun tp_is_empty!14547 () Bool)

(declare-fun tp!903154 () Bool)

(assert (=> b!2827861 (= e!1789888 (and tp_is_empty!14547 tp!903154))))

(declare-fun b!2827862 () Bool)

(declare-fun e!1789887 () Bool)

(assert (=> b!2827862 (= e!1789887 (not true))))

(declare-datatypes ((B!2497 0))(
  ( (B!2498 (val!10468 Int)) )
))
(declare-datatypes ((List!33357 0))(
  ( (Nil!33233) (Cons!33233 (h!38653 B!2497) (t!231148 List!33357)) )
))
(declare-fun l1!953 () List!33357)

(declare-fun p!1912 () Int)

(declare-fun forall!6833 (List!33357 Int) Bool)

(assert (=> b!2827862 (forall!6833 l1!953 p!1912)))

(declare-datatypes ((Unit!47286 0))(
  ( (Unit!47287) )
))
(declare-fun lt!1008579 () Unit!47286)

(declare-fun l2!930 () List!33357)

(declare-fun lemmaForallSubseq!247 (List!33357 List!33357 Int) Unit!47286)

(assert (=> b!2827862 (= lt!1008579 (lemmaForallSubseq!247 l1!953 (t!231148 l2!930) p!1912))))

(declare-fun b!2827863 () Bool)

(declare-fun res!1177261 () Bool)

(assert (=> b!2827863 (=> (not res!1177261) (not e!1789887))))

(assert (=> b!2827863 (= res!1177261 (forall!6833 (t!231148 l2!930) p!1912))))

(declare-fun b!2827864 () Bool)

(declare-fun res!1177265 () Bool)

(assert (=> b!2827864 (=> (not res!1177265) (not e!1789887))))

(declare-fun subseq!487 (List!33357 List!33357) Bool)

(assert (=> b!2827864 (= res!1177265 (subseq!487 l1!953 l2!930))))

(declare-fun b!2827865 () Bool)

(declare-fun res!1177260 () Bool)

(assert (=> b!2827865 (=> (not res!1177260) (not e!1789887))))

(get-info :version)

(assert (=> b!2827865 (= res!1177260 (and (not ((_ is Nil!33233) l1!953)) ((_ is Cons!33233) l2!930)))))

(declare-fun b!2827866 () Bool)

(declare-fun res!1177264 () Bool)

(assert (=> b!2827866 (=> (not res!1177264) (not e!1789887))))

(assert (=> b!2827866 (= res!1177264 (subseq!487 l1!953 (t!231148 l2!930)))))

(declare-fun b!2827867 () Bool)

(declare-fun e!1789890 () Bool)

(assert (=> b!2827867 (= e!1789890 (not (subseq!487 (t!231148 l1!953) (t!231148 l2!930))))))

(declare-fun b!2827868 () Bool)

(declare-fun e!1789889 () Bool)

(declare-fun tp!903155 () Bool)

(assert (=> b!2827868 (= e!1789889 (and tp_is_empty!14547 tp!903155))))

(declare-fun res!1177263 () Bool)

(assert (=> start!274546 (=> (not res!1177263) (not e!1789887))))

(assert (=> start!274546 (= res!1177263 (forall!6833 l2!930 p!1912))))

(assert (=> start!274546 e!1789887))

(assert (=> start!274546 e!1789888))

(assert (=> start!274546 tp!903156))

(assert (=> start!274546 e!1789889))

(declare-fun b!2827869 () Bool)

(declare-fun res!1177262 () Bool)

(assert (=> b!2827869 (=> (not res!1177262) (not e!1789887))))

(assert (=> b!2827869 (= res!1177262 e!1789890)))

(declare-fun res!1177259 () Bool)

(assert (=> b!2827869 (=> res!1177259 e!1789890)))

(assert (=> b!2827869 (= res!1177259 (not (= (h!38653 l1!953) (h!38653 l2!930))))))

(assert (= (and start!274546 res!1177263) b!2827864))

(assert (= (and b!2827864 res!1177265) b!2827865))

(assert (= (and b!2827865 res!1177260) b!2827869))

(assert (= (and b!2827869 (not res!1177259)) b!2827867))

(assert (= (and b!2827869 res!1177262) b!2827866))

(assert (= (and b!2827866 res!1177264) b!2827863))

(assert (= (and b!2827863 res!1177261) b!2827862))

(assert (= (and start!274546 ((_ is Cons!33233) l2!930)) b!2827861))

(assert (= (and start!274546 ((_ is Cons!33233) l1!953)) b!2827868))

(declare-fun m!3257305 () Bool)

(assert (=> b!2827864 m!3257305))

(declare-fun m!3257307 () Bool)

(assert (=> b!2827863 m!3257307))

(declare-fun m!3257309 () Bool)

(assert (=> start!274546 m!3257309))

(declare-fun m!3257311 () Bool)

(assert (=> b!2827862 m!3257311))

(declare-fun m!3257313 () Bool)

(assert (=> b!2827862 m!3257313))

(declare-fun m!3257315 () Bool)

(assert (=> b!2827866 m!3257315))

(declare-fun m!3257317 () Bool)

(assert (=> b!2827867 m!3257317))

(check-sat (not b!2827862) (not start!274546) (not b_next!81815) (not b!2827861) tp_is_empty!14547 (not b!2827864) (not b!2827866) b_and!206757 (not b!2827868) (not b!2827863) (not b!2827867))
(check-sat b_and!206757 (not b_next!81815))
