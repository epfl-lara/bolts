; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85486 () Bool)

(assert start!85486)

(declare-fun res!663983 () Bool)

(declare-fun e!560531 () Bool)

(assert (=> start!85486 (=> (not res!663983) (not e!560531))))

(declare-datatypes ((array!62723 0))(
  ( (array!62724 (arr!30201 (Array (_ BitVec 32) (_ BitVec 64))) (size!30698 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62723)

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun size!36 () (_ BitVec 32))

(assert (=> start!85486 (= res!663983 (and (= (size!30698 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62724 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30698 a!4424))))))

(assert (=> start!85486 e!560531))

(declare-fun array_inv!23191 (array!62723) Bool)

(assert (=> start!85486 (array_inv!23191 a!4424)))

(assert (=> start!85486 true))

(declare-fun b!993257 () Bool)

(declare-fun res!663985 () Bool)

(assert (=> b!993257 (=> (not res!663985) (not e!560531))))

(declare-datatypes ((List!21045 0))(
  ( (Nil!21042) (Cons!21041 (h!22203 (_ BitVec 64)) (t!30054 List!21045)) )
))
(declare-fun acc!919 () List!21045)

(declare-fun contains!5802 (List!21045 (_ BitVec 64)) Bool)

(assert (=> b!993257 (= res!663985 (not (contains!5802 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993258 () Bool)

(declare-fun res!663984 () Bool)

(assert (=> b!993258 (=> (not res!663984) (not e!560531))))

(assert (=> b!993258 (= res!663984 (not (contains!5802 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993259 () Bool)

(assert (=> b!993259 (= e!560531 false)))

(declare-fun lt!440472 () Bool)

(declare-fun noDuplicate!1399 (List!21045) Bool)

(assert (=> b!993259 (= lt!440472 (noDuplicate!1399 acc!919))))

(assert (= (and start!85486 res!663983) b!993257))

(assert (= (and b!993257 res!663985) b!993258))

(assert (= (and b!993258 res!663984) b!993259))

(declare-fun m!921087 () Bool)

(assert (=> start!85486 m!921087))

(declare-fun m!921089 () Bool)

(assert (=> b!993257 m!921089))

(declare-fun m!921091 () Bool)

(assert (=> b!993258 m!921091))

(declare-fun m!921093 () Bool)

(assert (=> b!993259 m!921093))

(push 1)

(assert (not start!85486))

(assert (not b!993259))

(assert (not b!993258))

(assert (not b!993257))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

