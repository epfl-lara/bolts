; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115460 () Bool)

(assert start!115460)

(declare-fun b!1364795 () Bool)

(declare-fun res!908493 () Bool)

(declare-fun e!774052 () Bool)

(assert (=> b!1364795 (=> (not res!908493) (not e!774052))))

(declare-datatypes ((List!32024 0))(
  ( (Nil!32021) (Cons!32020 (h!33229 (_ BitVec 64)) (t!46725 List!32024)) )
))
(declare-fun acc!866 () List!32024)

(declare-fun contains!9562 (List!32024 (_ BitVec 64)) Bool)

(assert (=> b!1364795 (= res!908493 (not (contains!9562 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!908494 () Bool)

(assert (=> start!115460 (=> (not res!908494) (not e!774052))))

(declare-datatypes ((array!92704 0))(
  ( (array!92705 (arr!44776 (Array (_ BitVec 32) (_ BitVec 64))) (size!45327 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92704)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115460 (= res!908494 (and (bvslt (size!45327 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45327 a!3861))))))

(assert (=> start!115460 e!774052))

(declare-fun array_inv!33721 (array!92704) Bool)

(assert (=> start!115460 (array_inv!33721 a!3861)))

(assert (=> start!115460 true))

(declare-fun b!1364796 () Bool)

(declare-fun res!908491 () Bool)

(assert (=> b!1364796 (=> (not res!908491) (not e!774052))))

(assert (=> b!1364796 (= res!908491 (not (contains!9562 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364797 () Bool)

(declare-fun res!908490 () Bool)

(assert (=> b!1364797 (=> (not res!908490) (not e!774052))))

(declare-fun newAcc!98 () List!32024)

(declare-fun subseq!953 (List!32024 List!32024) Bool)

(assert (=> b!1364797 (= res!908490 (subseq!953 newAcc!98 acc!866))))

(declare-fun b!1364798 () Bool)

(declare-fun res!908495 () Bool)

(assert (=> b!1364798 (=> (not res!908495) (not e!774052))))

(assert (=> b!1364798 (= res!908495 (not (contains!9562 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364799 () Bool)

(declare-fun res!908492 () Bool)

(assert (=> b!1364799 (=> (not res!908492) (not e!774052))))

(assert (=> b!1364799 (= res!908492 (not (contains!9562 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364800 () Bool)

(declare-fun res!908496 () Bool)

(assert (=> b!1364800 (=> (not res!908496) (not e!774052))))

(declare-fun noDuplicate!2441 (List!32024) Bool)

(assert (=> b!1364800 (= res!908496 (noDuplicate!2441 acc!866))))

(declare-fun b!1364801 () Bool)

(assert (=> b!1364801 (= e!774052 false)))

(declare-datatypes ((Unit!44987 0))(
  ( (Unit!44988) )
))
(declare-fun lt!601091 () Unit!44987)

(declare-fun noDuplicateSubseq!140 (List!32024 List!32024) Unit!44987)

(assert (=> b!1364801 (= lt!601091 (noDuplicateSubseq!140 newAcc!98 acc!866))))

(assert (= (and start!115460 res!908494) b!1364800))

(assert (= (and b!1364800 res!908496) b!1364795))

(assert (= (and b!1364795 res!908493) b!1364796))

(assert (= (and b!1364796 res!908491) b!1364798))

(assert (= (and b!1364798 res!908495) b!1364799))

(assert (= (and b!1364799 res!908492) b!1364797))

(assert (= (and b!1364797 res!908490) b!1364801))

(declare-fun m!1249537 () Bool)

(assert (=> b!1364801 m!1249537))

(declare-fun m!1249539 () Bool)

(assert (=> start!115460 m!1249539))

(declare-fun m!1249541 () Bool)

(assert (=> b!1364796 m!1249541))

(declare-fun m!1249543 () Bool)

(assert (=> b!1364795 m!1249543))

(declare-fun m!1249545 () Bool)

(assert (=> b!1364797 m!1249545))

(declare-fun m!1249547 () Bool)

(assert (=> b!1364800 m!1249547))

(declare-fun m!1249549 () Bool)

(assert (=> b!1364798 m!1249549))

(declare-fun m!1249551 () Bool)

(assert (=> b!1364799 m!1249551))

(push 1)

(assert (not b!1364797))

(assert (not start!115460))

(assert (not b!1364798))

(assert (not b!1364796))

(assert (not b!1364795))

(assert (not b!1364801))

(assert (not b!1364800))

(assert (not b!1364799))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

