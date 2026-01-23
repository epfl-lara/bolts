; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532446 () Bool)

(assert start!532446)

(declare-fun b!5033440 () Bool)

(declare-fun e!3144196 () Bool)

(declare-datatypes ((T!103914 0))(
  ( (T!103915 (val!23476 Int)) )
))
(declare-datatypes ((List!58386 0))(
  ( (Nil!58262) (Cons!58262 (h!64710 T!103914) (t!370829 List!58386)) )
))
(declare-datatypes ((IArray!31009 0))(
  ( (IArray!31010 (innerList!15562 List!58386)) )
))
(declare-datatypes ((Conc!15474 0))(
  ( (Node!15474 (left!42640 Conc!15474) (right!42970 Conc!15474) (csize!31178 Int) (cheight!15685 Int)) (Leaf!25675 (xs!18800 IArray!31009) (csize!31179 Int)) (Empty!15474) )
))
(declare-fun t!4198 () Conc!15474)

(declare-fun e!3144198 () Bool)

(declare-fun inv!76955 (IArray!31009) Bool)

(assert (=> b!5033440 (= e!3144196 (and (inv!76955 (xs!18800 t!4198)) e!3144198))))

(declare-fun b!5033441 () Bool)

(declare-fun res!2144915 () Bool)

(declare-fun e!3144195 () Bool)

(assert (=> b!5033441 (=> (not res!2144915) (not e!3144195))))

(declare-datatypes ((tuple2!63166 0))(
  ( (tuple2!63167 (_1!34886 List!58386) (_2!34886 List!58386)) )
))
(declare-fun lt!2082764 () tuple2!63166)

(declare-fun lt!2082763 () List!58386)

(declare-fun i!618 () Int)

(declare-fun drop!2602 (List!58386 Int) List!58386)

(assert (=> b!5033441 (= res!2144915 (= (_2!34886 lt!2082764) (drop!2602 lt!2082763 i!618)))))

(declare-fun b!5033442 () Bool)

(declare-fun res!2144914 () Bool)

(declare-fun e!3144197 () Bool)

(assert (=> b!5033442 (=> (not res!2144914) (not e!3144197))))

(assert (=> b!5033442 (= res!2144914 (<= 0 i!618))))

(declare-fun b!5033443 () Bool)

(assert (=> b!5033443 (= e!3144197 e!3144195)))

(declare-fun res!2144916 () Bool)

(assert (=> b!5033443 (=> (not res!2144916) (not e!3144195))))

(declare-fun take!795 (List!58386 Int) List!58386)

(assert (=> b!5033443 (= res!2144916 (= (_1!34886 lt!2082764) (take!795 lt!2082763 i!618)))))

(declare-fun splitAtIndex!177 (List!58386 Int) tuple2!63166)

(assert (=> b!5033443 (= lt!2082764 (splitAtIndex!177 lt!2082763 i!618))))

(declare-fun list!18846 (IArray!31009) List!58386)

(assert (=> b!5033443 (= lt!2082763 (list!18846 (xs!18800 t!4198)))))

(declare-fun tp!1409935 () Bool)

(declare-fun b!5033444 () Bool)

(declare-fun tp!1409936 () Bool)

(declare-fun inv!76956 (Conc!15474) Bool)

(assert (=> b!5033444 (= e!3144196 (and (inv!76956 (left!42640 t!4198)) tp!1409935 (inv!76956 (right!42970 t!4198)) tp!1409936))))

(declare-fun res!2144912 () Bool)

(assert (=> start!532446 (=> (not res!2144912) (not e!3144197))))

(declare-fun isBalanced!4336 (Conc!15474) Bool)

(assert (=> start!532446 (= res!2144912 (isBalanced!4336 t!4198))))

(assert (=> start!532446 e!3144197))

(assert (=> start!532446 (and (inv!76956 t!4198) e!3144196)))

(assert (=> start!532446 true))

(declare-fun b!5033445 () Bool)

(declare-fun res!2144917 () Bool)

(assert (=> b!5033445 (=> (not res!2144917) (not e!3144197))))

(get-info :version)

(assert (=> b!5033445 (= res!2144917 (and (not ((_ is Empty!15474) t!4198)) ((_ is Leaf!25675) t!4198) (> i!618 0) (not (= i!618 (csize!31179 t!4198)))))))

(declare-fun b!5033446 () Bool)

(declare-fun res!2144913 () Bool)

(assert (=> b!5033446 (=> (not res!2144913) (not e!3144197))))

(declare-fun size!38818 (Conc!15474) Int)

(assert (=> b!5033446 (= res!2144913 (<= i!618 (size!38818 t!4198)))))

(declare-fun b!5033447 () Bool)

(declare-fun tp!1409934 () Bool)

(assert (=> b!5033447 (= e!3144198 tp!1409934)))

(declare-fun b!5033448 () Bool)

(assert (=> b!5033448 (= e!3144195 false)))

(declare-fun lt!2082762 () Int)

(declare-fun size!38819 (List!58386) Int)

(assert (=> b!5033448 (= lt!2082762 (size!38819 lt!2082763))))

(assert (= (and start!532446 res!2144912) b!5033442))

(assert (= (and b!5033442 res!2144914) b!5033446))

(assert (= (and b!5033446 res!2144913) b!5033445))

(assert (= (and b!5033445 res!2144917) b!5033443))

(assert (= (and b!5033443 res!2144916) b!5033441))

(assert (= (and b!5033441 res!2144915) b!5033448))

(assert (= (and start!532446 ((_ is Node!15474) t!4198)) b!5033444))

(assert (= b!5033440 b!5033447))

(assert (= (and start!532446 ((_ is Leaf!25675) t!4198)) b!5033440))

(declare-fun m!6068234 () Bool)

(assert (=> b!5033441 m!6068234))

(declare-fun m!6068236 () Bool)

(assert (=> b!5033446 m!6068236))

(declare-fun m!6068238 () Bool)

(assert (=> start!532446 m!6068238))

(declare-fun m!6068240 () Bool)

(assert (=> start!532446 m!6068240))

(declare-fun m!6068242 () Bool)

(assert (=> b!5033448 m!6068242))

(declare-fun m!6068244 () Bool)

(assert (=> b!5033444 m!6068244))

(declare-fun m!6068246 () Bool)

(assert (=> b!5033444 m!6068246))

(declare-fun m!6068248 () Bool)

(assert (=> b!5033440 m!6068248))

(declare-fun m!6068250 () Bool)

(assert (=> b!5033443 m!6068250))

(declare-fun m!6068252 () Bool)

(assert (=> b!5033443 m!6068252))

(declare-fun m!6068254 () Bool)

(assert (=> b!5033443 m!6068254))

(check-sat (not b!5033441) (not start!532446) (not b!5033447) (not b!5033444) (not b!5033443) (not b!5033448) (not b!5033440) (not b!5033446))
(check-sat)
