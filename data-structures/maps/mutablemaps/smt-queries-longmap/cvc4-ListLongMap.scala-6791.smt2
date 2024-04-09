; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85516 () Bool)

(assert start!85516)

(declare-fun b!993426 () Bool)

(declare-fun res!664152 () Bool)

(declare-fun e!560621 () Bool)

(assert (=> b!993426 (=> (not res!664152) (not e!560621))))

(declare-datatypes ((List!21060 0))(
  ( (Nil!21057) (Cons!21056 (h!22218 (_ BitVec 64)) (t!30069 List!21060)) )
))
(declare-fun acc!919 () List!21060)

(declare-fun contains!5817 (List!21060 (_ BitVec 64)) Bool)

(assert (=> b!993426 (= res!664152 (not (contains!5817 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993427 () Bool)

(declare-fun res!664156 () Bool)

(assert (=> b!993427 (=> (not res!664156) (not e!560621))))

(declare-datatypes ((array!62753 0))(
  ( (array!62754 (arr!30216 (Array (_ BitVec 32) (_ BitVec 64))) (size!30713 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62753)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> b!993427 (= res!664156 (and (bvslt from!3778 size!36) (bvsge (bvadd #b00000000000000000000000000000001 from!3778) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3778) (size!30713 a!4424))))))

(declare-fun res!664154 () Bool)

(assert (=> start!85516 (=> (not res!664154) (not e!560621))))

(assert (=> start!85516 (= res!664154 (and (= (size!30713 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62754 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30713 a!4424))))))

(assert (=> start!85516 e!560621))

(declare-fun array_inv!23206 (array!62753) Bool)

(assert (=> start!85516 (array_inv!23206 a!4424)))

(assert (=> start!85516 true))

(declare-fun b!993428 () Bool)

(declare-fun res!664155 () Bool)

(assert (=> b!993428 (=> (not res!664155) (not e!560621))))

(assert (=> b!993428 (= res!664155 (not (contains!5817 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993429 () Bool)

(assert (=> b!993429 (= e!560621 (not (bvslt (size!30713 a!4424) #b01111111111111111111111111111111)))))

(declare-fun arrayNoDuplicates!0 (array!62753 (_ BitVec 32) List!21060) Bool)

(assert (=> b!993429 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919)))

(declare-datatypes ((Unit!32882 0))(
  ( (Unit!32883) )
))
(declare-fun lt!440517 () Unit!32882)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!62753 (_ BitVec 32) (_ BitVec 32) List!21060) Unit!32882)

(assert (=> b!993429 (= lt!440517 (lemmaArrayNoDuplicatesInAll0Array!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919))))

(declare-fun b!993430 () Bool)

(declare-fun res!664153 () Bool)

(assert (=> b!993430 (=> (not res!664153) (not e!560621))))

(declare-fun noDuplicate!1414 (List!21060) Bool)

(assert (=> b!993430 (= res!664153 (noDuplicate!1414 acc!919))))

(assert (= (and start!85516 res!664154) b!993428))

(assert (= (and b!993428 res!664155) b!993426))

(assert (= (and b!993426 res!664152) b!993430))

(assert (= (and b!993430 res!664153) b!993427))

(assert (= (and b!993427 res!664156) b!993429))

(declare-fun m!921227 () Bool)

(assert (=> b!993429 m!921227))

(declare-fun m!921229 () Bool)

(assert (=> b!993429 m!921229))

(declare-fun m!921231 () Bool)

(assert (=> b!993426 m!921231))

(declare-fun m!921233 () Bool)

(assert (=> b!993428 m!921233))

(declare-fun m!921235 () Bool)

(assert (=> b!993430 m!921235))

(declare-fun m!921237 () Bool)

(assert (=> start!85516 m!921237))

(push 1)

(assert (not b!993429))

(assert (not b!993428))

(assert (not start!85516))

(assert (not b!993430))

(assert (not b!993426))

(check-sat)

(pop 1)

