; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85546 () Bool)

(assert start!85546)

(declare-fun res!664334 () Bool)

(declare-fun e!560710 () Bool)

(assert (=> start!85546 (=> (not res!664334) (not e!560710))))

(declare-datatypes ((array!62783 0))(
  ( (array!62784 (arr!30231 (Array (_ BitVec 32) (_ BitVec 64))) (size!30728 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62783)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85546 (= res!664334 (and (= (size!30728 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62784 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30728 a!4424))))))

(assert (=> start!85546 e!560710))

(declare-fun array_inv!23221 (array!62783) Bool)

(assert (=> start!85546 (array_inv!23221 a!4424)))

(assert (=> start!85546 true))

(declare-fun b!993608 () Bool)

(declare-fun res!664336 () Bool)

(assert (=> b!993608 (=> (not res!664336) (not e!560710))))

(declare-datatypes ((List!21075 0))(
  ( (Nil!21072) (Cons!21071 (h!22233 (_ BitVec 64)) (t!30084 List!21075)) )
))
(declare-fun acc!919 () List!21075)

(declare-fun contains!5832 (List!21075 (_ BitVec 64)) Bool)

(assert (=> b!993608 (= res!664336 (not (contains!5832 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993609 () Bool)

(declare-fun res!664335 () Bool)

(assert (=> b!993609 (=> (not res!664335) (not e!560710))))

(assert (=> b!993609 (= res!664335 (not (contains!5832 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993610 () Bool)

(assert (=> b!993610 (= e!560710 false)))

(declare-fun lt!440553 () Bool)

(declare-fun noDuplicate!1429 (List!21075) Bool)

(assert (=> b!993610 (= lt!440553 (noDuplicate!1429 acc!919))))

(assert (= (and start!85546 res!664334) b!993608))

(assert (= (and b!993608 res!664336) b!993609))

(assert (= (and b!993609 res!664335) b!993610))

(declare-fun m!921375 () Bool)

(assert (=> start!85546 m!921375))

(declare-fun m!921377 () Bool)

(assert (=> b!993608 m!921377))

(declare-fun m!921379 () Bool)

(assert (=> b!993609 m!921379))

(declare-fun m!921381 () Bool)

(assert (=> b!993610 m!921381))

(push 1)

(assert (not b!993608))

(assert (not b!993609))

(assert (not b!993610))

(assert (not start!85546))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

