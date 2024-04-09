; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85500 () Bool)

(assert start!85500)

(declare-fun res!664048 () Bool)

(declare-fun e!560573 () Bool)

(assert (=> start!85500 (=> (not res!664048) (not e!560573))))

(declare-datatypes ((array!62737 0))(
  ( (array!62738 (arr!30208 (Array (_ BitVec 32) (_ BitVec 64))) (size!30705 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62737)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85500 (= res!664048 (and (= (size!30705 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62738 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30705 a!4424))))))

(assert (=> start!85500 e!560573))

(declare-fun array_inv!23198 (array!62737) Bool)

(assert (=> start!85500 (array_inv!23198 a!4424)))

(assert (=> start!85500 true))

(declare-fun b!993320 () Bool)

(declare-fun res!664047 () Bool)

(assert (=> b!993320 (=> (not res!664047) (not e!560573))))

(declare-datatypes ((List!21052 0))(
  ( (Nil!21049) (Cons!21048 (h!22210 (_ BitVec 64)) (t!30061 List!21052)) )
))
(declare-fun acc!919 () List!21052)

(declare-fun contains!5809 (List!21052 (_ BitVec 64)) Bool)

(assert (=> b!993320 (= res!664047 (not (contains!5809 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993321 () Bool)

(declare-fun res!664046 () Bool)

(assert (=> b!993321 (=> (not res!664046) (not e!560573))))

(assert (=> b!993321 (= res!664046 (not (contains!5809 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993322 () Bool)

(assert (=> b!993322 (= e!560573 false)))

(declare-fun lt!440493 () Bool)

(declare-fun noDuplicate!1406 (List!21052) Bool)

(assert (=> b!993322 (= lt!440493 (noDuplicate!1406 acc!919))))

(assert (= (and start!85500 res!664048) b!993320))

(assert (= (and b!993320 res!664047) b!993321))

(assert (= (and b!993321 res!664046) b!993322))

(declare-fun m!921143 () Bool)

(assert (=> start!85500 m!921143))

(declare-fun m!921145 () Bool)

(assert (=> b!993320 m!921145))

(declare-fun m!921147 () Bool)

(assert (=> b!993321 m!921147))

(declare-fun m!921149 () Bool)

(assert (=> b!993322 m!921149))

(push 1)

(assert (not b!993320))

(assert (not start!85500))

(assert (not b!993322))

(assert (not b!993321))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

