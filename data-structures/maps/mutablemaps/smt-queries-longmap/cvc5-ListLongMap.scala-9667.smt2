; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114176 () Bool)

(assert start!114176)

(declare-fun b!1355625 () Bool)

(declare-fun res!900626 () Bool)

(declare-fun e!769813 () Bool)

(assert (=> b!1355625 (=> (not res!900626) (not e!769813))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355625 (= res!900626 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355626 () Bool)

(declare-fun res!900628 () Bool)

(assert (=> b!1355626 (=> (not res!900628) (not e!769813))))

(declare-datatypes ((List!31805 0))(
  ( (Nil!31802) (Cons!31801 (h!33010 (_ BitVec 64)) (t!46470 List!31805)) )
))
(declare-fun acc!759 () List!31805)

(declare-fun contains!9370 (List!31805 (_ BitVec 64)) Bool)

(assert (=> b!1355626 (= res!900628 (not (contains!9370 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355627 () Bool)

(declare-fun res!900633 () Bool)

(assert (=> b!1355627 (=> (not res!900633) (not e!769813))))

(declare-datatypes ((array!92281 0))(
  ( (array!92282 (arr!44584 (Array (_ BitVec 32) (_ BitVec 64))) (size!45135 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92281)

(declare-fun arrayNoDuplicates!0 (array!92281 (_ BitVec 32) List!31805) Bool)

(assert (=> b!1355627 (= res!900633 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31802))))

(declare-fun b!1355628 () Bool)

(declare-fun e!769815 () Bool)

(assert (=> b!1355628 (= e!769813 e!769815)))

(declare-fun res!900627 () Bool)

(assert (=> b!1355628 (=> (not res!900627) (not e!769815))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lt!598685 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355628 (= res!900627 (and (not (= from!3120 i!1404)) (not lt!598685) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44516 0))(
  ( (Unit!44517) )
))
(declare-fun lt!598684 () Unit!44516)

(declare-fun e!769814 () Unit!44516)

(assert (=> b!1355628 (= lt!598684 e!769814)))

(declare-fun c!126943 () Bool)

(assert (=> b!1355628 (= c!126943 lt!598685)))

(assert (=> b!1355628 (= lt!598685 (validKeyInArray!0 (select (arr!44584 a!3742) from!3120)))))

(declare-fun res!900630 () Bool)

(assert (=> start!114176 (=> (not res!900630) (not e!769813))))

(assert (=> start!114176 (= res!900630 (and (bvslt (size!45135 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45135 a!3742))))))

(assert (=> start!114176 e!769813))

(assert (=> start!114176 true))

(declare-fun array_inv!33529 (array!92281) Bool)

(assert (=> start!114176 (array_inv!33529 a!3742)))

(declare-fun b!1355629 () Bool)

(declare-fun res!900631 () Bool)

(assert (=> b!1355629 (=> (not res!900631) (not e!769813))))

(assert (=> b!1355629 (= res!900631 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45135 a!3742))))))

(declare-fun b!1355630 () Bool)

(declare-fun res!900625 () Bool)

(assert (=> b!1355630 (=> (not res!900625) (not e!769813))))

(assert (=> b!1355630 (= res!900625 (not (contains!9370 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355631 () Bool)

(declare-fun res!900624 () Bool)

(assert (=> b!1355631 (=> (not res!900624) (not e!769813))))

(assert (=> b!1355631 (= res!900624 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355632 () Bool)

(assert (=> b!1355632 (= e!769815 false)))

(declare-fun lt!598681 () Bool)

(assert (=> b!1355632 (= lt!598681 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355633 () Bool)

(declare-fun Unit!44518 () Unit!44516)

(assert (=> b!1355633 (= e!769814 Unit!44518)))

(declare-fun b!1355634 () Bool)

(declare-fun res!900632 () Bool)

(assert (=> b!1355634 (=> (not res!900632) (not e!769813))))

(declare-fun noDuplicate!2249 (List!31805) Bool)

(assert (=> b!1355634 (= res!900632 (noDuplicate!2249 acc!759))))

(declare-fun b!1355635 () Bool)

(declare-fun res!900629 () Bool)

(assert (=> b!1355635 (=> (not res!900629) (not e!769813))))

(assert (=> b!1355635 (= res!900629 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45135 a!3742)))))

(declare-fun b!1355636 () Bool)

(declare-fun lt!598683 () Unit!44516)

(assert (=> b!1355636 (= e!769814 lt!598683)))

(declare-fun lt!598682 () Unit!44516)

(declare-fun lemmaListSubSeqRefl!0 (List!31805) Unit!44516)

(assert (=> b!1355636 (= lt!598682 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!779 (List!31805 List!31805) Bool)

(assert (=> b!1355636 (subseq!779 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92281 List!31805 List!31805 (_ BitVec 32)) Unit!44516)

(declare-fun $colon$colon!796 (List!31805 (_ BitVec 64)) List!31805)

(assert (=> b!1355636 (= lt!598683 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!796 acc!759 (select (arr!44584 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1355636 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(assert (= (and start!114176 res!900630) b!1355634))

(assert (= (and b!1355634 res!900632) b!1355626))

(assert (= (and b!1355626 res!900628) b!1355630))

(assert (= (and b!1355630 res!900625) b!1355627))

(assert (= (and b!1355627 res!900633) b!1355631))

(assert (= (and b!1355631 res!900624) b!1355629))

(assert (= (and b!1355629 res!900631) b!1355625))

(assert (= (and b!1355625 res!900626) b!1355635))

(assert (= (and b!1355635 res!900629) b!1355628))

(assert (= (and b!1355628 c!126943) b!1355636))

(assert (= (and b!1355628 (not c!126943)) b!1355633))

(assert (= (and b!1355628 res!900627) b!1355632))

(declare-fun m!1241785 () Bool)

(assert (=> start!114176 m!1241785))

(declare-fun m!1241787 () Bool)

(assert (=> b!1355632 m!1241787))

(declare-fun m!1241789 () Bool)

(assert (=> b!1355634 m!1241789))

(declare-fun m!1241791 () Bool)

(assert (=> b!1355630 m!1241791))

(declare-fun m!1241793 () Bool)

(assert (=> b!1355626 m!1241793))

(declare-fun m!1241795 () Bool)

(assert (=> b!1355631 m!1241795))

(declare-fun m!1241797 () Bool)

(assert (=> b!1355628 m!1241797))

(assert (=> b!1355628 m!1241797))

(declare-fun m!1241799 () Bool)

(assert (=> b!1355628 m!1241799))

(declare-fun m!1241801 () Bool)

(assert (=> b!1355636 m!1241801))

(assert (=> b!1355636 m!1241797))

(declare-fun m!1241803 () Bool)

(assert (=> b!1355636 m!1241803))

(declare-fun m!1241805 () Bool)

(assert (=> b!1355636 m!1241805))

(assert (=> b!1355636 m!1241787))

(assert (=> b!1355636 m!1241797))

(assert (=> b!1355636 m!1241803))

(declare-fun m!1241807 () Bool)

(assert (=> b!1355636 m!1241807))

(declare-fun m!1241809 () Bool)

(assert (=> b!1355625 m!1241809))

(declare-fun m!1241811 () Bool)

(assert (=> b!1355627 m!1241811))

(push 1)

