; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536262 () Bool)

(assert start!536262)

(declare-fun b!5089625 () Bool)

(declare-fun e!3174192 () Bool)

(declare-datatypes ((T!105482 0))(
  ( (T!105483 (val!23704 Int)) )
))
(declare-datatypes ((List!58629 0))(
  ( (Nil!58505) (Cons!58505 (h!64953 T!105482) (t!371512 List!58629)) )
))
(declare-datatypes ((IArray!31301 0))(
  ( (IArray!31302 (innerList!15708 List!58629)) )
))
(declare-datatypes ((Conc!15620 0))(
  ( (Node!15620 (left!42902 Conc!15620) (right!43232 Conc!15620) (csize!31470 Int) (cheight!15831 Int)) (Leaf!25935 (xs!19002 IArray!31301) (csize!31471 Int)) (Empty!15620) )
))
(declare-fun t!3643 () Conc!15620)

(declare-fun e!3174190 () Bool)

(declare-fun inv!77855 (IArray!31301) Bool)

(assert (=> b!5089625 (= e!3174192 (and (inv!77855 (xs!19002 t!3643)) e!3174190))))

(declare-fun b!5089626 () Bool)

(declare-fun res!2166487 () Bool)

(declare-fun e!3174191 () Bool)

(assert (=> b!5089626 (=> (not res!2166487) (not e!3174191))))

(get-info :version)

(assert (=> b!5089626 (= res!2166487 (and (not ((_ is Leaf!25935) t!3643)) ((_ is Node!15620) t!3643)))))

(declare-fun tp!1418868 () Bool)

(declare-fun b!5089628 () Bool)

(declare-fun tp!1418869 () Bool)

(declare-fun inv!77856 (Conc!15620) Bool)

(assert (=> b!5089628 (= e!3174192 (and (inv!77856 (left!42902 t!3643)) tp!1418869 (inv!77856 (right!43232 t!3643)) tp!1418868))))

(declare-fun b!5089629 () Bool)

(declare-fun tp!1418867 () Bool)

(assert (=> b!5089629 (= e!3174190 tp!1418867)))

(declare-fun b!5089630 () Bool)

(declare-fun res!2166486 () Bool)

(assert (=> b!5089630 (=> (not res!2166486) (not e!3174191))))

(declare-fun i!607 () Int)

(declare-fun size!39183 (Conc!15620) Int)

(assert (=> b!5089630 (= res!2166486 (< i!607 (size!39183 t!3643)))))

(declare-fun res!2166488 () Bool)

(assert (=> start!536262 (=> (not res!2166488) (not e!3174191))))

(assert (=> start!536262 (= res!2166488 (<= 0 i!607))))

(assert (=> start!536262 e!3174191))

(assert (=> start!536262 true))

(assert (=> start!536262 (and (inv!77856 t!3643) e!3174192)))

(declare-fun b!5089627 () Bool)

(assert (=> b!5089627 (= e!3174191 false)))

(declare-fun lt!2092244 () Int)

(assert (=> b!5089627 (= lt!2092244 (size!39183 (left!42902 t!3643)))))

(declare-fun lt!2092243 () Bool)

(declare-fun appendIndex!411 (List!58629 List!58629 Int) Bool)

(declare-fun list!19074 (Conc!15620) List!58629)

(assert (=> b!5089627 (= lt!2092243 (appendIndex!411 (list!19074 (left!42902 t!3643)) (list!19074 (right!43232 t!3643)) i!607))))

(assert (= (and start!536262 res!2166488) b!5089630))

(assert (= (and b!5089630 res!2166486) b!5089626))

(assert (= (and b!5089626 res!2166487) b!5089627))

(assert (= (and start!536262 ((_ is Node!15620) t!3643)) b!5089628))

(assert (= b!5089625 b!5089629))

(assert (= (and start!536262 ((_ is Leaf!25935) t!3643)) b!5089625))

(declare-fun m!6147900 () Bool)

(assert (=> b!5089630 m!6147900))

(declare-fun m!6147902 () Bool)

(assert (=> b!5089625 m!6147902))

(declare-fun m!6147904 () Bool)

(assert (=> start!536262 m!6147904))

(declare-fun m!6147906 () Bool)

(assert (=> b!5089627 m!6147906))

(declare-fun m!6147908 () Bool)

(assert (=> b!5089627 m!6147908))

(declare-fun m!6147910 () Bool)

(assert (=> b!5089627 m!6147910))

(assert (=> b!5089627 m!6147908))

(assert (=> b!5089627 m!6147910))

(declare-fun m!6147912 () Bool)

(assert (=> b!5089627 m!6147912))

(declare-fun m!6147914 () Bool)

(assert (=> b!5089628 m!6147914))

(declare-fun m!6147916 () Bool)

(assert (=> b!5089628 m!6147916))

(check-sat (not b!5089627) (not start!536262) (not b!5089629) (not b!5089628) (not b!5089630) (not b!5089625))
(check-sat)
