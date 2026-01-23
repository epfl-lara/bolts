; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532682 () Bool)

(assert start!532682)

(declare-fun b!5035148 () Bool)

(declare-fun e!3145108 () Bool)

(declare-fun tp!1410193 () Bool)

(assert (=> b!5035148 (= e!3145108 tp!1410193)))

(declare-fun b!5035149 () Bool)

(declare-datatypes ((T!103998 0))(
  ( (T!103999 (val!23488 Int)) )
))
(declare-datatypes ((List!58398 0))(
  ( (Nil!58274) (Cons!58274 (h!64722 T!103998) (t!370865 List!58398)) )
))
(declare-datatypes ((tuple2!63186 0))(
  ( (tuple2!63187 (_1!34896 List!58398) (_2!34896 List!58398)) )
))
(declare-fun lt!2083191 () tuple2!63186)

(declare-fun call!351199 () tuple2!63186)

(assert (=> b!5035149 (= lt!2083191 call!351199)))

(declare-fun e!3145103 () tuple2!63186)

(declare-fun call!351200 () List!58398)

(assert (=> b!5035149 (= e!3145103 (tuple2!63187 (_1!34896 lt!2083191) call!351200))))

(declare-fun b!5035150 () Bool)

(declare-fun res!2145559 () Bool)

(declare-fun e!3145107 () Bool)

(assert (=> b!5035150 (=> res!2145559 e!3145107)))

(declare-datatypes ((IArray!31033 0))(
  ( (IArray!31034 (innerList!15574 List!58398)) )
))
(declare-datatypes ((Conc!15486 0))(
  ( (Node!15486 (left!42658 Conc!15486) (right!42988 Conc!15486) (csize!31202 Int) (cheight!15697 Int)) (Leaf!25693 (xs!18812 IArray!31033) (csize!31203 Int)) (Empty!15486) )
))
(declare-fun t!4198 () Conc!15486)

(declare-fun isBalanced!4348 (Conc!15486) Bool)

(assert (=> b!5035150 (= res!2145559 (not (isBalanced!4348 (left!42658 t!4198))))))

(declare-fun res!2145558 () Bool)

(declare-fun e!3145106 () Bool)

(assert (=> start!532682 (=> (not res!2145558) (not e!3145106))))

(assert (=> start!532682 (= res!2145558 (isBalanced!4348 t!4198))))

(assert (=> start!532682 e!3145106))

(declare-fun e!3145104 () Bool)

(declare-fun inv!77013 (Conc!15486) Bool)

(assert (=> start!532682 (and (inv!77013 t!4198) e!3145104)))

(assert (=> start!532682 true))

(declare-fun b!5035151 () Bool)

(declare-fun e!3145105 () Bool)

(declare-fun lt!2083189 () tuple2!63186)

(assert (=> b!5035151 (= e!3145105 (= lt!2083189 e!3145103))))

(declare-fun c!862366 () Bool)

(declare-fun i!618 () Int)

(declare-fun lt!2083188 () Int)

(assert (=> b!5035151 (= c!862366 (< i!618 lt!2083188))))

(declare-fun b!5035152 () Bool)

(declare-fun inv!77014 (IArray!31033) Bool)

(assert (=> b!5035152 (= e!3145104 (and (inv!77014 (xs!18812 t!4198)) e!3145108))))

(declare-fun lt!2083192 () List!58398)

(declare-fun bm!351194 () Bool)

(declare-fun lt!2083190 () List!58398)

(declare-fun splitAtIndex!187 (List!58398 Int) tuple2!63186)

(assert (=> bm!351194 (= call!351199 (splitAtIndex!187 (ite c!862366 lt!2083192 lt!2083190) (ite c!862366 i!618 (- i!618 lt!2083188))))))

(declare-fun b!5035153 () Bool)

(declare-fun lt!2083194 () tuple2!63186)

(assert (=> b!5035153 (= lt!2083194 call!351199)))

(assert (=> b!5035153 (= e!3145103 (tuple2!63187 call!351200 (_2!34896 lt!2083194)))))

(declare-fun b!5035154 () Bool)

(declare-fun lt!2083187 () Int)

(assert (=> b!5035154 (= e!3145107 (<= i!618 lt!2083187))))

(declare-fun b!5035155 () Bool)

(declare-fun res!2145562 () Bool)

(assert (=> b!5035155 (=> (not res!2145562) (not e!3145106))))

(declare-fun size!38846 (Conc!15486) Int)

(assert (=> b!5035155 (= res!2145562 (<= i!618 (size!38846 t!4198)))))

(declare-fun tp!1410194 () Bool)

(declare-fun tp!1410192 () Bool)

(declare-fun b!5035156 () Bool)

(assert (=> b!5035156 (= e!3145104 (and (inv!77013 (left!42658 t!4198)) tp!1410194 (inv!77013 (right!42988 t!4198)) tp!1410192))))

(declare-fun b!5035157 () Bool)

(assert (=> b!5035157 (= e!3145106 (not e!3145107))))

(declare-fun res!2145560 () Bool)

(assert (=> b!5035157 (=> res!2145560 e!3145107)))

(assert (=> b!5035157 (= res!2145560 (or (= lt!2083187 i!618) (>= i!618 lt!2083187)))))

(assert (=> b!5035157 (= lt!2083187 (size!38846 (left!42658 t!4198)))))

(assert (=> b!5035157 e!3145105))

(declare-fun c!862367 () Bool)

(assert (=> b!5035157 (= c!862367 (= lt!2083188 i!618))))

(declare-fun ++!12701 (List!58398 List!58398) List!58398)

(assert (=> b!5035157 (= lt!2083189 (splitAtIndex!187 (++!12701 lt!2083192 lt!2083190) i!618))))

(declare-fun size!38847 (List!58398) Int)

(assert (=> b!5035157 (= lt!2083188 (size!38847 lt!2083192))))

(declare-datatypes ((Unit!149467 0))(
  ( (Unit!149468) )
))
(declare-fun lt!2083193 () Unit!149467)

(declare-fun splitAtLemma!62 (List!58398 List!58398 Int) Unit!149467)

(assert (=> b!5035157 (= lt!2083193 (splitAtLemma!62 lt!2083192 lt!2083190 i!618))))

(declare-fun list!18865 (Conc!15486) List!58398)

(assert (=> b!5035157 (= lt!2083190 (list!18865 (right!42988 t!4198)))))

(assert (=> b!5035157 (= lt!2083192 (list!18865 (left!42658 t!4198)))))

(declare-fun b!5035158 () Bool)

(declare-fun res!2145563 () Bool)

(assert (=> b!5035158 (=> (not res!2145563) (not e!3145106))))

(get-info :version)

(assert (=> b!5035158 (= res!2145563 (and (not ((_ is Empty!15486) t!4198)) (not ((_ is Leaf!25693) t!4198))))))

(declare-fun bm!351195 () Bool)

(assert (=> bm!351195 (= call!351200 (++!12701 (ite c!862366 (_2!34896 lt!2083191) lt!2083192) (ite c!862366 lt!2083190 (_1!34896 lt!2083194))))))

(declare-fun b!5035159 () Bool)

(assert (=> b!5035159 (= e!3145105 (= lt!2083189 (tuple2!63187 lt!2083192 lt!2083190)))))

(declare-fun b!5035160 () Bool)

(declare-fun res!2145561 () Bool)

(assert (=> b!5035160 (=> (not res!2145561) (not e!3145106))))

(assert (=> b!5035160 (= res!2145561 (<= 0 i!618))))

(assert (= (and start!532682 res!2145558) b!5035160))

(assert (= (and b!5035160 res!2145561) b!5035155))

(assert (= (and b!5035155 res!2145562) b!5035158))

(assert (= (and b!5035158 res!2145563) b!5035157))

(assert (= (and b!5035157 c!862367) b!5035159))

(assert (= (and b!5035157 (not c!862367)) b!5035151))

(assert (= (and b!5035151 c!862366) b!5035149))

(assert (= (and b!5035151 (not c!862366)) b!5035153))

(assert (= (or b!5035149 b!5035153) bm!351195))

(assert (= (or b!5035149 b!5035153) bm!351194))

(assert (= (and b!5035157 (not res!2145560)) b!5035150))

(assert (= (and b!5035150 (not res!2145559)) b!5035154))

(assert (= (and start!532682 ((_ is Node!15486) t!4198)) b!5035156))

(assert (= b!5035152 b!5035148))

(assert (= (and start!532682 ((_ is Leaf!25693) t!4198)) b!5035152))

(declare-fun m!6069548 () Bool)

(assert (=> start!532682 m!6069548))

(declare-fun m!6069550 () Bool)

(assert (=> start!532682 m!6069550))

(declare-fun m!6069552 () Bool)

(assert (=> b!5035150 m!6069552))

(declare-fun m!6069554 () Bool)

(assert (=> b!5035155 m!6069554))

(declare-fun m!6069556 () Bool)

(assert (=> bm!351195 m!6069556))

(declare-fun m!6069558 () Bool)

(assert (=> b!5035157 m!6069558))

(declare-fun m!6069560 () Bool)

(assert (=> b!5035157 m!6069560))

(declare-fun m!6069562 () Bool)

(assert (=> b!5035157 m!6069562))

(declare-fun m!6069564 () Bool)

(assert (=> b!5035157 m!6069564))

(declare-fun m!6069566 () Bool)

(assert (=> b!5035157 m!6069566))

(declare-fun m!6069568 () Bool)

(assert (=> b!5035157 m!6069568))

(declare-fun m!6069570 () Bool)

(assert (=> b!5035157 m!6069570))

(assert (=> b!5035157 m!6069568))

(declare-fun m!6069572 () Bool)

(assert (=> b!5035152 m!6069572))

(declare-fun m!6069574 () Bool)

(assert (=> bm!351194 m!6069574))

(declare-fun m!6069576 () Bool)

(assert (=> b!5035156 m!6069576))

(declare-fun m!6069578 () Bool)

(assert (=> b!5035156 m!6069578))

(check-sat (not b!5035156) (not bm!351194) (not b!5035150) (not start!532682) (not b!5035157) (not b!5035155) (not b!5035152) (not b!5035148) (not bm!351195))
(check-sat)
