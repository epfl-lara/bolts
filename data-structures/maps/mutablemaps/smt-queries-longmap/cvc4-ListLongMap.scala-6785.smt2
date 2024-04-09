; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85480 () Bool)

(assert start!85480)

(declare-fun res!663956 () Bool)

(declare-fun e!560512 () Bool)

(assert (=> start!85480 (=> (not res!663956) (not e!560512))))

(declare-datatypes ((array!62717 0))(
  ( (array!62718 (arr!30198 (Array (_ BitVec 32) (_ BitVec 64))) (size!30695 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62717)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85480 (= res!663956 (and (= (size!30695 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62718 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30695 a!4424))))))

(assert (=> start!85480 e!560512))

(declare-fun array_inv!23188 (array!62717) Bool)

(assert (=> start!85480 (array_inv!23188 a!4424)))

(assert (=> start!85480 true))

(declare-fun b!993230 () Bool)

(declare-fun res!663958 () Bool)

(assert (=> b!993230 (=> (not res!663958) (not e!560512))))

(declare-datatypes ((List!21042 0))(
  ( (Nil!21039) (Cons!21038 (h!22200 (_ BitVec 64)) (t!30051 List!21042)) )
))
(declare-fun acc!919 () List!21042)

(declare-fun contains!5799 (List!21042 (_ BitVec 64)) Bool)

(assert (=> b!993230 (= res!663958 (not (contains!5799 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993231 () Bool)

(declare-fun res!663957 () Bool)

(assert (=> b!993231 (=> (not res!663957) (not e!560512))))

(assert (=> b!993231 (= res!663957 (not (contains!5799 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993232 () Bool)

(assert (=> b!993232 (= e!560512 false)))

(declare-fun lt!440463 () Bool)

(declare-fun noDuplicate!1396 (List!21042) Bool)

(assert (=> b!993232 (= lt!440463 (noDuplicate!1396 acc!919))))

(assert (= (and start!85480 res!663956) b!993230))

(assert (= (and b!993230 res!663958) b!993231))

(assert (= (and b!993231 res!663957) b!993232))

(declare-fun m!921063 () Bool)

(assert (=> start!85480 m!921063))

(declare-fun m!921065 () Bool)

(assert (=> b!993230 m!921065))

(declare-fun m!921067 () Bool)

(assert (=> b!993231 m!921067))

(declare-fun m!921069 () Bool)

(assert (=> b!993232 m!921069))

(push 1)

(assert (not b!993230))

(assert (not b!993231))

(assert (not b!993232))

(assert (not start!85480))

(check-sat)

