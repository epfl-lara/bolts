; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14074 () Bool)

(assert start!14074)

(declare-fun b!134847 () Bool)

(declare-fun e!78195 () Bool)

(declare-datatypes ((B!841 0))(
  ( (B!842 (val!906 Int)) )
))
(declare-datatypes ((List!2224 0))(
  ( (Nil!2218) (Cons!2218 (h!7615 B!841) (t!22810 List!2224)) )
))
(declare-fun l1!1230 () List!2224)

(declare-fun isEmpty!864 (List!2224) Bool)

(assert (=> b!134847 (= e!78195 (not (isEmpty!864 l1!1230)))))

(declare-fun b!134848 () Bool)

(declare-fun e!78198 () Bool)

(assert (=> b!134848 (= e!78198 false)))

(declare-fun sub!16 () List!2224)

(declare-fun lt!40629 () Bool)

(declare-fun l2!1199 () List!2224)

(declare-fun subseq!65 (List!2224 List!2224) Bool)

(declare-fun ++!492 (List!2224 List!2224) List!2224)

(declare-fun tail!294 (List!2224) List!2224)

(assert (=> b!134848 (= lt!40629 (subseq!65 sub!16 (++!492 (tail!294 l1!1230) l2!1199)))))

(declare-fun b!134849 () Bool)

(declare-fun e!78200 () Bool)

(declare-fun lt!40630 () List!2224)

(assert (=> b!134849 (= e!78200 (not (subseq!65 (t!22810 sub!16) (t!22810 lt!40630))))))

(declare-fun b!134850 () Bool)

(declare-fun e!78201 () Bool)

(assert (=> b!134850 (= e!78201 e!78198)))

(declare-fun res!63100 () Bool)

(assert (=> b!134850 (=> (not res!63100) (not e!78198))))

(assert (=> b!134850 (= res!63100 e!78195)))

(declare-fun res!63104 () Bool)

(assert (=> b!134850 (=> res!63104 e!78195)))

(declare-fun lt!40628 () Bool)

(assert (=> b!134850 (= res!63104 lt!40628)))

(get-info :version)

(assert (=> b!134850 (= lt!40628 (not ((_ is Cons!2218) lt!40630)))))

(declare-fun b!134851 () Bool)

(declare-fun e!78197 () Bool)

(declare-fun tp_is_empty!1485 () Bool)

(declare-fun tp!70813 () Bool)

(assert (=> b!134851 (= e!78197 (and tp_is_empty!1485 tp!70813))))

(declare-fun res!63098 () Bool)

(assert (=> start!14074 (=> (not res!63098) (not e!78201))))

(assert (=> start!14074 (= res!63098 (subseq!65 sub!16 lt!40630))))

(assert (=> start!14074 (= lt!40630 (++!492 l1!1230 l2!1199))))

(assert (=> start!14074 e!78201))

(assert (=> start!14074 e!78197))

(declare-fun e!78196 () Bool)

(assert (=> start!14074 e!78196))

(declare-fun e!78199 () Bool)

(assert (=> start!14074 e!78199))

(declare-fun b!134852 () Bool)

(declare-fun res!63103 () Bool)

(assert (=> b!134852 (=> (not res!63103) (not e!78198))))

(assert (=> b!134852 (= res!63103 e!78200)))

(declare-fun res!63099 () Bool)

(assert (=> b!134852 (=> res!63099 e!78200)))

(assert (=> b!134852 (= res!63099 (or lt!40628 (not (= (h!7615 sub!16) (h!7615 lt!40630)))))))

(declare-fun b!134853 () Bool)

(declare-fun res!63101 () Bool)

(assert (=> b!134853 (=> (not res!63101) (not e!78198))))

(assert (=> b!134853 (= res!63101 (not lt!40628))))

(declare-fun b!134854 () Bool)

(declare-fun tp!70814 () Bool)

(assert (=> b!134854 (= e!78199 (and tp_is_empty!1485 tp!70814))))

(declare-fun b!134855 () Bool)

(declare-fun res!63102 () Bool)

(assert (=> b!134855 (=> (not res!63102) (not e!78201))))

(assert (=> b!134855 (= res!63102 (not ((_ is Nil!2218) sub!16)))))

(declare-fun b!134856 () Bool)

(declare-fun tp!70812 () Bool)

(assert (=> b!134856 (= e!78196 (and tp_is_empty!1485 tp!70812))))

(assert (= (and start!14074 res!63098) b!134855))

(assert (= (and b!134855 res!63102) b!134850))

(assert (= (and b!134850 (not res!63104)) b!134847))

(assert (= (and b!134850 res!63100) b!134852))

(assert (= (and b!134852 (not res!63099)) b!134849))

(assert (= (and b!134852 res!63103) b!134853))

(assert (= (and b!134853 res!63101) b!134848))

(assert (= (and start!14074 ((_ is Cons!2218) l1!1230)) b!134851))

(assert (= (and start!14074 ((_ is Cons!2218) l2!1199)) b!134856))

(assert (= (and start!14074 ((_ is Cons!2218) sub!16)) b!134854))

(declare-fun m!119759 () Bool)

(assert (=> b!134847 m!119759))

(declare-fun m!119761 () Bool)

(assert (=> b!134848 m!119761))

(assert (=> b!134848 m!119761))

(declare-fun m!119763 () Bool)

(assert (=> b!134848 m!119763))

(assert (=> b!134848 m!119763))

(declare-fun m!119765 () Bool)

(assert (=> b!134848 m!119765))

(declare-fun m!119767 () Bool)

(assert (=> b!134849 m!119767))

(declare-fun m!119769 () Bool)

(assert (=> start!14074 m!119769))

(declare-fun m!119771 () Bool)

(assert (=> start!14074 m!119771))

(check-sat (not b!134848) (not b!134851) (not start!14074) (not b!134854) (not b!134856) (not b!134849) (not b!134847) tp_is_empty!1485)
(check-sat)
