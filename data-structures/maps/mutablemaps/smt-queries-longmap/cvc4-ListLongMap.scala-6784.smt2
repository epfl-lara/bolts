; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85474 () Bool)

(assert start!85474)

(declare-fun res!663929 () Bool)

(declare-fun e!560494 () Bool)

(assert (=> start!85474 (=> (not res!663929) (not e!560494))))

(declare-datatypes ((array!62711 0))(
  ( (array!62712 (arr!30195 (Array (_ BitVec 32) (_ BitVec 64))) (size!30692 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62711)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85474 (= res!663929 (and (= (size!30692 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62712 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30692 a!4424))))))

(assert (=> start!85474 e!560494))

(declare-fun array_inv!23185 (array!62711) Bool)

(assert (=> start!85474 (array_inv!23185 a!4424)))

(assert (=> start!85474 true))

(declare-fun b!993203 () Bool)

(declare-fun res!663930 () Bool)

(assert (=> b!993203 (=> (not res!663930) (not e!560494))))

(declare-datatypes ((List!21039 0))(
  ( (Nil!21036) (Cons!21035 (h!22197 (_ BitVec 64)) (t!30048 List!21039)) )
))
(declare-fun acc!919 () List!21039)

(declare-fun contains!5796 (List!21039 (_ BitVec 64)) Bool)

(assert (=> b!993203 (= res!663930 (not (contains!5796 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993204 () Bool)

(declare-fun res!663931 () Bool)

(assert (=> b!993204 (=> (not res!663931) (not e!560494))))

(assert (=> b!993204 (= res!663931 (not (contains!5796 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993205 () Bool)

(assert (=> b!993205 (= e!560494 false)))

(declare-fun lt!440454 () Bool)

(declare-fun noDuplicate!1393 (List!21039) Bool)

(assert (=> b!993205 (= lt!440454 (noDuplicate!1393 acc!919))))

(assert (= (and start!85474 res!663929) b!993203))

(assert (= (and b!993203 res!663930) b!993204))

(assert (= (and b!993204 res!663931) b!993205))

(declare-fun m!921039 () Bool)

(assert (=> start!85474 m!921039))

(declare-fun m!921041 () Bool)

(assert (=> b!993203 m!921041))

(declare-fun m!921043 () Bool)

(assert (=> b!993204 m!921043))

(declare-fun m!921045 () Bool)

(assert (=> b!993205 m!921045))

(push 1)

(assert (not b!993205))

(assert (not start!85474))

(assert (not b!993204))

(assert (not b!993203))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

