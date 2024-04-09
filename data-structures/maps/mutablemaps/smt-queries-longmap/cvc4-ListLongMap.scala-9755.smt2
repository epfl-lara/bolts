; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115650 () Bool)

(assert start!115650)

(declare-fun b!1367116 () Bool)

(declare-fun e!774863 () Bool)

(declare-fun e!774865 () Bool)

(assert (=> b!1367116 (= e!774863 e!774865)))

(declare-fun res!910772 () Bool)

(assert (=> b!1367116 (=> (not res!910772) (not e!774865))))

(declare-datatypes ((array!92804 0))(
  ( (array!92805 (arr!44823 (Array (_ BitVec 32) (_ BitVec 64))) (size!45374 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92804)

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((List!32071 0))(
  ( (Nil!32068) (Cons!32067 (h!33276 (_ BitVec 64)) (t!46772 List!32071)) )
))
(declare-fun acc!866 () List!32071)

(declare-fun arrayNoDuplicates!0 (array!92804 (_ BitVec 32) List!32071) Bool)

(assert (=> b!1367116 (= res!910772 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45081 0))(
  ( (Unit!45082) )
))
(declare-fun lt!601778 () Unit!45081)

(declare-fun newAcc!98 () List!32071)

(declare-fun noDuplicateSubseq!187 (List!32071 List!32071) Unit!45081)

(assert (=> b!1367116 (= lt!601778 (noDuplicateSubseq!187 newAcc!98 acc!866))))

(declare-fun b!1367117 () Bool)

(declare-fun res!910773 () Bool)

(assert (=> b!1367117 (=> (not res!910773) (not e!774863))))

(declare-fun contains!9609 (List!32071 (_ BitVec 64)) Bool)

(assert (=> b!1367117 (= res!910773 (not (contains!9609 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367118 () Bool)

(declare-fun res!910767 () Bool)

(assert (=> b!1367118 (=> (not res!910767) (not e!774863))))

(assert (=> b!1367118 (= res!910767 (not (contains!9609 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367119 () Bool)

(assert (=> b!1367119 (= e!774865 (not true))))

(declare-fun lt!601781 () Bool)

(declare-fun noDuplicate!2488 (List!32071) Bool)

(assert (=> b!1367119 (= lt!601781 (noDuplicate!2488 newAcc!98))))

(declare-fun lt!601779 () Unit!45081)

(declare-fun lt!601777 () List!32071)

(declare-fun lt!601776 () List!32071)

(assert (=> b!1367119 (= lt!601779 (noDuplicateSubseq!187 lt!601777 lt!601776))))

(assert (=> b!1367119 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601777)))

(declare-fun lt!601780 () Unit!45081)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92804 List!32071 List!32071 (_ BitVec 32)) Unit!45081)

(assert (=> b!1367119 (= lt!601780 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!601776 lt!601777 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> b!1367119 (= lt!601777 (Cons!32067 (select (arr!44823 a!3861) from!3239) newAcc!98))))

(assert (=> b!1367119 (= lt!601776 (Cons!32067 (select (arr!44823 a!3861) from!3239) acc!866))))

(declare-fun b!1367120 () Bool)

(declare-fun res!910769 () Bool)

(assert (=> b!1367120 (=> (not res!910769) (not e!774865))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367120 (= res!910769 (validKeyInArray!0 (select (arr!44823 a!3861) from!3239)))))

(declare-fun b!1367121 () Bool)

(declare-fun res!910765 () Bool)

(assert (=> b!1367121 (=> (not res!910765) (not e!774863))))

(assert (=> b!1367121 (= res!910765 (noDuplicate!2488 acc!866))))

(declare-fun b!1367122 () Bool)

(declare-fun res!910770 () Bool)

(assert (=> b!1367122 (=> (not res!910770) (not e!774865))))

(assert (=> b!1367122 (= res!910770 (bvslt from!3239 (size!45374 a!3861)))))

(declare-fun b!1367123 () Bool)

(declare-fun res!910766 () Bool)

(assert (=> b!1367123 (=> (not res!910766) (not e!774865))))

(assert (=> b!1367123 (= res!910766 (not (contains!9609 acc!866 (select (arr!44823 a!3861) from!3239))))))

(declare-fun b!1367124 () Bool)

(declare-fun res!910771 () Bool)

(assert (=> b!1367124 (=> (not res!910771) (not e!774863))))

(declare-fun subseq!1000 (List!32071 List!32071) Bool)

(assert (=> b!1367124 (= res!910771 (subseq!1000 newAcc!98 acc!866))))

(declare-fun res!910768 () Bool)

(assert (=> start!115650 (=> (not res!910768) (not e!774863))))

(assert (=> start!115650 (= res!910768 (and (bvslt (size!45374 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45374 a!3861))))))

(assert (=> start!115650 e!774863))

(declare-fun array_inv!33768 (array!92804) Bool)

(assert (=> start!115650 (array_inv!33768 a!3861)))

(assert (=> start!115650 true))

(declare-fun b!1367125 () Bool)

(declare-fun res!910764 () Bool)

(assert (=> b!1367125 (=> (not res!910764) (not e!774863))))

(assert (=> b!1367125 (= res!910764 (not (contains!9609 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367126 () Bool)

(declare-fun res!910763 () Bool)

(assert (=> b!1367126 (=> (not res!910763) (not e!774863))))

(assert (=> b!1367126 (= res!910763 (not (contains!9609 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115650 res!910768) b!1367121))

(assert (= (and b!1367121 res!910765) b!1367118))

(assert (= (and b!1367118 res!910767) b!1367125))

(assert (= (and b!1367125 res!910764) b!1367126))

(assert (= (and b!1367126 res!910763) b!1367117))

(assert (= (and b!1367117 res!910773) b!1367124))

(assert (= (and b!1367124 res!910771) b!1367116))

(assert (= (and b!1367116 res!910772) b!1367122))

(assert (= (and b!1367122 res!910770) b!1367120))

(assert (= (and b!1367120 res!910769) b!1367123))

(assert (= (and b!1367123 res!910766) b!1367119))

(declare-fun m!1251419 () Bool)

(assert (=> b!1367126 m!1251419))

(declare-fun m!1251421 () Bool)

(assert (=> b!1367121 m!1251421))

(declare-fun m!1251423 () Bool)

(assert (=> b!1367124 m!1251423))

(declare-fun m!1251425 () Bool)

(assert (=> b!1367125 m!1251425))

(declare-fun m!1251427 () Bool)

(assert (=> b!1367123 m!1251427))

(assert (=> b!1367123 m!1251427))

(declare-fun m!1251429 () Bool)

(assert (=> b!1367123 m!1251429))

(declare-fun m!1251431 () Bool)

(assert (=> b!1367118 m!1251431))

(declare-fun m!1251433 () Bool)

(assert (=> b!1367116 m!1251433))

(declare-fun m!1251435 () Bool)

(assert (=> b!1367116 m!1251435))

(declare-fun m!1251437 () Bool)

(assert (=> b!1367117 m!1251437))

(declare-fun m!1251439 () Bool)

(assert (=> b!1367119 m!1251439))

(declare-fun m!1251441 () Bool)

(assert (=> b!1367119 m!1251441))

(declare-fun m!1251443 () Bool)

(assert (=> b!1367119 m!1251443))

(assert (=> b!1367119 m!1251427))

(declare-fun m!1251445 () Bool)

(assert (=> b!1367119 m!1251445))

(declare-fun m!1251447 () Bool)

(assert (=> start!115650 m!1251447))

(assert (=> b!1367120 m!1251427))

(assert (=> b!1367120 m!1251427))

(declare-fun m!1251449 () Bool)

(assert (=> b!1367120 m!1251449))

(push 1)

(assert (not b!1367126))

