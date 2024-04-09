; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85572 () Bool)

(assert start!85572)

(declare-fun res!664408 () Bool)

(declare-fun e!560762 () Bool)

(assert (=> start!85572 (=> (not res!664408) (not e!560762))))

(declare-datatypes ((array!62806 0))(
  ( (array!62807 (arr!30241 (Array (_ BitVec 32) (_ BitVec 64))) (size!30738 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62806)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85572 (= res!664408 (and (= (size!30738 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62807 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30738 a!4424))))))

(assert (=> start!85572 e!560762))

(declare-fun array_inv!23231 (array!62806) Bool)

(assert (=> start!85572 (array_inv!23231 a!4424)))

(assert (=> start!85572 true))

(declare-fun b!993680 () Bool)

(declare-fun res!664407 () Bool)

(assert (=> b!993680 (=> (not res!664407) (not e!560762))))

(declare-datatypes ((List!21082 0))(
  ( (Nil!21079) (Cons!21078 (h!22240 (_ BitVec 64)) (t!30091 List!21082)) )
))
(declare-fun acc!919 () List!21082)

(declare-fun contains!5839 (List!21082 (_ BitVec 64)) Bool)

(assert (=> b!993680 (= res!664407 (not (contains!5839 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993681 () Bool)

(declare-fun res!664406 () Bool)

(assert (=> b!993681 (=> (not res!664406) (not e!560762))))

(assert (=> b!993681 (= res!664406 (not (contains!5839 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993682 () Bool)

(assert (=> b!993682 (= e!560762 false)))

(declare-fun lt!440565 () Bool)

(declare-fun noDuplicate!1436 (List!21082) Bool)

(assert (=> b!993682 (= lt!440565 (noDuplicate!1436 acc!919))))

(assert (= (and start!85572 res!664408) b!993680))

(assert (= (and b!993680 res!664407) b!993681))

(assert (= (and b!993681 res!664406) b!993682))

(declare-fun m!921437 () Bool)

(assert (=> start!85572 m!921437))

(declare-fun m!921439 () Bool)

(assert (=> b!993680 m!921439))

(declare-fun m!921441 () Bool)

(assert (=> b!993681 m!921441))

(declare-fun m!921443 () Bool)

(assert (=> b!993682 m!921443))

(push 1)

(assert (not b!993680))

(assert (not b!993681))

(assert (not b!993682))

(assert (not start!85572))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

