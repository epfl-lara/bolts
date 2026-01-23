; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!748998 () Bool)

(assert start!748998)

(declare-fun tp!2359600 () Bool)

(declare-fun tp!2359602 () Bool)

(declare-datatypes ((T!145902 0))(
  ( (T!145903 (val!32074 Int)) )
))
(declare-datatypes ((List!74586 0))(
  ( (Nil!74462) (Cons!74462 (h!80910 T!145902) (t!390287 List!74586)) )
))
(declare-datatypes ((IArray!31893 0))(
  ( (IArray!31894 (innerList!16004 List!74586)) )
))
(declare-datatypes ((Conc!15916 0))(
  ( (Node!15916 (left!56894 Conc!15916) (right!57224 Conc!15916) (csize!32062 Int) (cheight!16127 Int)) (Leaf!30255 (xs!19312 IArray!31893) (csize!32063 Int)) (Empty!15916) )
))
(declare-fun t!4440 () Conc!15916)

(declare-fun b!7936022 () Bool)

(declare-fun e!4682795 () Bool)

(declare-fun inv!95796 (Conc!15916) Bool)

(assert (=> b!7936022 (= e!4682795 (and (inv!95796 (left!56894 t!4440)) tp!2359602 (inv!95796 (right!57224 t!4440)) tp!2359600))))

(declare-fun b!7936023 () Bool)

(declare-fun res!3148646 () Bool)

(declare-fun e!4682794 () Bool)

(assert (=> b!7936023 (=> (not res!3148646) (not e!4682794))))

(get-info :version)

(assert (=> b!7936023 (= res!3148646 (and (not ((_ is Empty!15916) t!4440)) (not ((_ is Node!15916) t!4440)) (>= (csize!32063 t!4440) 512)))))

(declare-fun b!7936024 () Bool)

(declare-fun e!4682796 () Bool)

(declare-fun inv!95797 (IArray!31893) Bool)

(assert (=> b!7936024 (= e!4682795 (and (inv!95797 (xs!19312 t!4440)) e!4682796))))

(declare-fun res!3148645 () Bool)

(assert (=> start!748998 (=> (not res!3148645) (not e!4682794))))

(declare-fun isBalanced!4542 (Conc!15916) Bool)

(assert (=> start!748998 (= res!3148645 (isBalanced!4542 t!4440))))

(assert (=> start!748998 e!4682794))

(assert (=> start!748998 (and (inv!95796 t!4440) e!4682795)))

(declare-fun tp_is_empty!53257 () Bool)

(assert (=> start!748998 tp_is_empty!53257))

(declare-fun b!7936025 () Bool)

(declare-fun tp!2359601 () Bool)

(assert (=> b!7936025 (= e!4682796 tp!2359601)))

(declare-fun b!7936026 () Bool)

(assert (=> b!7936026 (= e!4682794 false)))

(declare-fun lt!2695312 () IArray!31893)

(declare-fun v!5484 () T!145902)

(declare-fun fill!299 (Int T!145902) IArray!31893)

(assert (=> b!7936026 (= lt!2695312 (fill!299 1 v!5484))))

(assert (= (and start!748998 res!3148645) b!7936023))

(assert (= (and b!7936023 res!3148646) b!7936026))

(assert (= (and start!748998 ((_ is Node!15916) t!4440)) b!7936022))

(assert (= b!7936024 b!7936025))

(assert (= (and start!748998 ((_ is Leaf!30255) t!4440)) b!7936024))

(declare-fun m!8324136 () Bool)

(assert (=> b!7936022 m!8324136))

(declare-fun m!8324138 () Bool)

(assert (=> b!7936022 m!8324138))

(declare-fun m!8324140 () Bool)

(assert (=> b!7936024 m!8324140))

(declare-fun m!8324142 () Bool)

(assert (=> start!748998 m!8324142))

(declare-fun m!8324144 () Bool)

(assert (=> start!748998 m!8324144))

(declare-fun m!8324146 () Bool)

(assert (=> b!7936026 m!8324146))

(check-sat (not start!748998) tp_is_empty!53257 (not b!7936026) (not b!7936022) (not b!7936024) (not b!7936025))
(check-sat)
