; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85484 () Bool)

(assert start!85484)

(declare-fun res!663974 () Bool)

(declare-fun e!560524 () Bool)

(assert (=> start!85484 (=> (not res!663974) (not e!560524))))

(declare-datatypes ((array!62721 0))(
  ( (array!62722 (arr!30200 (Array (_ BitVec 32) (_ BitVec 64))) (size!30697 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62721)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85484 (= res!663974 (and (= (size!30697 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62722 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30697 a!4424))))))

(assert (=> start!85484 e!560524))

(declare-fun array_inv!23190 (array!62721) Bool)

(assert (=> start!85484 (array_inv!23190 a!4424)))

(assert (=> start!85484 true))

(declare-fun b!993248 () Bool)

(declare-fun res!663975 () Bool)

(assert (=> b!993248 (=> (not res!663975) (not e!560524))))

(declare-datatypes ((List!21044 0))(
  ( (Nil!21041) (Cons!21040 (h!22202 (_ BitVec 64)) (t!30053 List!21044)) )
))
(declare-fun acc!919 () List!21044)

(declare-fun contains!5801 (List!21044 (_ BitVec 64)) Bool)

(assert (=> b!993248 (= res!663975 (not (contains!5801 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993249 () Bool)

(declare-fun res!663976 () Bool)

(assert (=> b!993249 (=> (not res!663976) (not e!560524))))

(assert (=> b!993249 (= res!663976 (not (contains!5801 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993250 () Bool)

(assert (=> b!993250 (= e!560524 false)))

(declare-fun lt!440469 () Bool)

(declare-fun noDuplicate!1398 (List!21044) Bool)

(assert (=> b!993250 (= lt!440469 (noDuplicate!1398 acc!919))))

(assert (= (and start!85484 res!663974) b!993248))

(assert (= (and b!993248 res!663975) b!993249))

(assert (= (and b!993249 res!663976) b!993250))

(declare-fun m!921079 () Bool)

(assert (=> start!85484 m!921079))

(declare-fun m!921081 () Bool)

(assert (=> b!993248 m!921081))

(declare-fun m!921083 () Bool)

(assert (=> b!993249 m!921083))

(declare-fun m!921085 () Bool)

(assert (=> b!993250 m!921085))

(check-sat (not start!85484) (not b!993250) (not b!993248) (not b!993249))
(check-sat)
