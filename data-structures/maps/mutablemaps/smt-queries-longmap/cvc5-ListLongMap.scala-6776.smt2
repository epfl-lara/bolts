; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85254 () Bool)

(assert start!85254)

(declare-fun res!663565 () Bool)

(declare-fun e!560089 () Bool)

(assert (=> start!85254 (=> (not res!663565) (not e!560089))))

(declare-datatypes ((List!21013 0))(
  ( (Nil!21010) (Cons!21009 (h!22171 (_ BitVec 64)) (t!30022 List!21013)) )
))
(declare-fun l!3519 () List!21013)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5770 (List!21013 (_ BitVec 64)) Bool)

(assert (=> start!85254 (= res!663565 (not (contains!5770 l!3519 e!29)))))

(assert (=> start!85254 e!560089))

(assert (=> start!85254 true))

(declare-fun b!992676 () Bool)

(declare-fun e!560090 () Bool)

(assert (=> b!992676 (= e!560089 e!560090)))

(declare-fun res!663564 () Bool)

(assert (=> b!992676 (=> (not res!663564) (not e!560090))))

(declare-datatypes ((tuple2!15072 0))(
  ( (tuple2!15073 (_1!7546 (_ BitVec 64)) (_2!7546 List!21013)) )
))
(declare-datatypes ((Option!549 0))(
  ( (Some!548 (v!14364 tuple2!15072)) (None!547) )
))
(declare-fun lt!440247 () Option!549)

(declare-fun isEmpty!758 (Option!549) Bool)

(assert (=> b!992676 (= res!663564 (not (isEmpty!758 lt!440247)))))

(declare-fun unapply!25 (List!21013) Option!549)

(assert (=> b!992676 (= lt!440247 (unapply!25 l!3519))))

(declare-fun b!992677 () Bool)

(assert (=> b!992677 (= e!560090 false)))

(declare-fun lt!440246 () Bool)

(declare-fun get!15717 (Option!549) tuple2!15072)

(assert (=> b!992677 (= lt!440246 (contains!5770 (_2!7546 (get!15717 lt!440247)) e!29))))

(assert (= (and start!85254 res!663565) b!992676))

(assert (= (and b!992676 res!663564) b!992677))

(declare-fun m!920477 () Bool)

(assert (=> start!85254 m!920477))

(declare-fun m!920479 () Bool)

(assert (=> b!992676 m!920479))

(declare-fun m!920481 () Bool)

(assert (=> b!992676 m!920481))

(declare-fun m!920483 () Bool)

(assert (=> b!992677 m!920483))

(declare-fun m!920485 () Bool)

(assert (=> b!992677 m!920485))

(push 1)

(assert (not start!85254))

(assert (not b!992676))

