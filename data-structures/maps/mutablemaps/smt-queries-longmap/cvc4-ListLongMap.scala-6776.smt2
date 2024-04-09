; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85258 () Bool)

(assert start!85258)

(declare-fun res!663577 () Bool)

(declare-fun e!560102 () Bool)

(assert (=> start!85258 (=> (not res!663577) (not e!560102))))

(declare-datatypes ((List!21015 0))(
  ( (Nil!21012) (Cons!21011 (h!22173 (_ BitVec 64)) (t!30024 List!21015)) )
))
(declare-fun l!3519 () List!21015)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5772 (List!21015 (_ BitVec 64)) Bool)

(assert (=> start!85258 (= res!663577 (not (contains!5772 l!3519 e!29)))))

(assert (=> start!85258 e!560102))

(assert (=> start!85258 true))

(declare-fun b!992688 () Bool)

(declare-fun e!560101 () Bool)

(assert (=> b!992688 (= e!560102 e!560101)))

(declare-fun res!663576 () Bool)

(assert (=> b!992688 (=> (not res!663576) (not e!560101))))

(declare-datatypes ((tuple2!15076 0))(
  ( (tuple2!15077 (_1!7548 (_ BitVec 64)) (_2!7548 List!21015)) )
))
(declare-datatypes ((Option!551 0))(
  ( (Some!550 (v!14366 tuple2!15076)) (None!549) )
))
(declare-fun lt!440258 () Option!551)

(declare-fun isEmpty!760 (Option!551) Bool)

(assert (=> b!992688 (= res!663576 (not (isEmpty!760 lt!440258)))))

(declare-fun unapply!27 (List!21015) Option!551)

(assert (=> b!992688 (= lt!440258 (unapply!27 l!3519))))

(declare-fun b!992689 () Bool)

(assert (=> b!992689 (= e!560101 false)))

(declare-fun lt!440259 () Bool)

(declare-fun get!15719 (Option!551) tuple2!15076)

(assert (=> b!992689 (= lt!440259 (contains!5772 (_2!7548 (get!15719 lt!440258)) e!29))))

(assert (= (and start!85258 res!663577) b!992688))

(assert (= (and b!992688 res!663576) b!992689))

(declare-fun m!920497 () Bool)

(assert (=> start!85258 m!920497))

(declare-fun m!920499 () Bool)

(assert (=> b!992688 m!920499))

(declare-fun m!920501 () Bool)

(assert (=> b!992688 m!920501))

(declare-fun m!920503 () Bool)

(assert (=> b!992689 m!920503))

(declare-fun m!920505 () Bool)

(assert (=> b!992689 m!920505))

(push 1)

(assert (not start!85258))

(assert (not b!992688))

(assert (not b!992689))

