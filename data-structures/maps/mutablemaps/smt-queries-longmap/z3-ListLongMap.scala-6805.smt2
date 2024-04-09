; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85604 () Bool)

(assert start!85604)

(declare-fun res!664560 () Bool)

(declare-fun e!560858 () Bool)

(assert (=> start!85604 (=> (not res!664560) (not e!560858))))

(declare-datatypes ((array!62838 0))(
  ( (array!62839 (arr!30257 (Array (_ BitVec 32) (_ BitVec 64))) (size!30754 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62838)

(declare-fun size!36 () (_ BitVec 32))

(declare-fun from!3778 () (_ BitVec 32))

(assert (=> start!85604 (= res!664560 (and (= (size!30754 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62839 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30754 a!4424))))))

(assert (=> start!85604 e!560858))

(declare-fun array_inv!23247 (array!62838) Bool)

(assert (=> start!85604 (array_inv!23247 a!4424)))

(assert (=> start!85604 true))

(declare-fun b!993833 () Bool)

(declare-fun res!664559 () Bool)

(assert (=> b!993833 (=> (not res!664559) (not e!560858))))

(declare-datatypes ((List!21098 0))(
  ( (Nil!21095) (Cons!21094 (h!22256 (_ BitVec 64)) (t!30107 List!21098)) )
))
(declare-fun acc!919 () List!21098)

(declare-fun contains!5855 (List!21098 (_ BitVec 64)) Bool)

(assert (=> b!993833 (= res!664559 (not (contains!5855 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993834 () Bool)

(declare-fun res!664561 () Bool)

(assert (=> b!993834 (=> (not res!664561) (not e!560858))))

(assert (=> b!993834 (= res!664561 (not (contains!5855 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993835 () Bool)

(assert (=> b!993835 (= e!560858 false)))

(declare-fun lt!440604 () Bool)

(declare-fun noDuplicate!1452 (List!21098) Bool)

(assert (=> b!993835 (= lt!440604 (noDuplicate!1452 acc!919))))

(assert (= (and start!85604 res!664560) b!993833))

(assert (= (and b!993833 res!664559) b!993834))

(assert (= (and b!993834 res!664561) b!993835))

(declare-fun m!921565 () Bool)

(assert (=> start!85604 m!921565))

(declare-fun m!921567 () Bool)

(assert (=> b!993833 m!921567))

(declare-fun m!921569 () Bool)

(assert (=> b!993834 m!921569))

(declare-fun m!921571 () Bool)

(assert (=> b!993835 m!921571))

(check-sat (not b!993835) (not start!85604) (not b!993834) (not b!993833))
