; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85256 () Bool)

(assert start!85256)

(declare-fun res!663571 () Bool)

(declare-fun e!560095 () Bool)

(assert (=> start!85256 (=> (not res!663571) (not e!560095))))

(declare-datatypes ((List!21014 0))(
  ( (Nil!21011) (Cons!21010 (h!22172 (_ BitVec 64)) (t!30023 List!21014)) )
))
(declare-fun l!3519 () List!21014)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5771 (List!21014 (_ BitVec 64)) Bool)

(assert (=> start!85256 (= res!663571 (not (contains!5771 l!3519 e!29)))))

(assert (=> start!85256 e!560095))

(assert (=> start!85256 true))

(declare-fun b!992682 () Bool)

(declare-fun e!560096 () Bool)

(assert (=> b!992682 (= e!560095 e!560096)))

(declare-fun res!663570 () Bool)

(assert (=> b!992682 (=> (not res!663570) (not e!560096))))

(declare-datatypes ((tuple2!15074 0))(
  ( (tuple2!15075 (_1!7547 (_ BitVec 64)) (_2!7547 List!21014)) )
))
(declare-datatypes ((Option!550 0))(
  ( (Some!549 (v!14365 tuple2!15074)) (None!548) )
))
(declare-fun lt!440253 () Option!550)

(declare-fun isEmpty!759 (Option!550) Bool)

(assert (=> b!992682 (= res!663570 (not (isEmpty!759 lt!440253)))))

(declare-fun unapply!26 (List!21014) Option!550)

(assert (=> b!992682 (= lt!440253 (unapply!26 l!3519))))

(declare-fun b!992683 () Bool)

(assert (=> b!992683 (= e!560096 false)))

(declare-fun lt!440252 () Bool)

(declare-fun get!15718 (Option!550) tuple2!15074)

(assert (=> b!992683 (= lt!440252 (contains!5771 (_2!7547 (get!15718 lt!440253)) e!29))))

(assert (= (and start!85256 res!663571) b!992682))

(assert (= (and b!992682 res!663570) b!992683))

(declare-fun m!920487 () Bool)

(assert (=> start!85256 m!920487))

(declare-fun m!920489 () Bool)

(assert (=> b!992682 m!920489))

(declare-fun m!920491 () Bool)

(assert (=> b!992682 m!920491))

(declare-fun m!920493 () Bool)

(assert (=> b!992683 m!920493))

(declare-fun m!920495 () Bool)

(assert (=> b!992683 m!920495))

(check-sat (not start!85256) (not b!992682) (not b!992683))
(check-sat)
