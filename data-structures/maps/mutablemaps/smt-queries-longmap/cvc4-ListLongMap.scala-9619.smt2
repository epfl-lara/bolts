; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113856 () Bool)

(assert start!113856)

(declare-fun b!1350125 () Bool)

(declare-fun res!895705 () Bool)

(declare-fun e!768076 () Bool)

(assert (=> b!1350125 (=> (not res!895705) (not e!768076))))

(declare-datatypes ((List!31663 0))(
  ( (Nil!31660) (Cons!31659 (h!32868 (_ BitVec 64)) (t!46328 List!31663)) )
))
(declare-fun acc!759 () List!31663)

(declare-fun noDuplicate!2107 (List!31663) Bool)

(assert (=> b!1350125 (= res!895705 (noDuplicate!2107 acc!759))))

(declare-fun b!1350127 () Bool)

(declare-fun res!895707 () Bool)

(assert (=> b!1350127 (=> (not res!895707) (not e!768076))))

(declare-fun contains!9228 (List!31663 (_ BitVec 64)) Bool)

(assert (=> b!1350127 (= res!895707 (not (contains!9228 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350128 () Bool)

(declare-datatypes ((array!91991 0))(
  ( (array!91992 (arr!44442 (Array (_ BitVec 32) (_ BitVec 64))) (size!44993 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!91991)

(assert (=> b!1350128 (= e!768076 (bvsgt #b00000000000000000000000000000000 (size!44993 a!3742)))))

(declare-fun b!1350126 () Bool)

(declare-fun res!895706 () Bool)

(assert (=> b!1350126 (=> (not res!895706) (not e!768076))))

(assert (=> b!1350126 (= res!895706 (not (contains!9228 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!895704 () Bool)

(assert (=> start!113856 (=> (not res!895704) (not e!768076))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113856 (= res!895704 (and (bvslt (size!44993 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!44993 a!3742))))))

(assert (=> start!113856 e!768076))

(declare-fun array_inv!33387 (array!91991) Bool)

(assert (=> start!113856 (array_inv!33387 a!3742)))

(assert (=> start!113856 true))

(assert (= (and start!113856 res!895704) b!1350125))

(assert (= (and b!1350125 res!895705) b!1350126))

(assert (= (and b!1350126 res!895706) b!1350127))

(assert (= (and b!1350127 res!895707) b!1350128))

(declare-fun m!1237415 () Bool)

(assert (=> b!1350125 m!1237415))

(declare-fun m!1237417 () Bool)

(assert (=> b!1350127 m!1237417))

(declare-fun m!1237419 () Bool)

(assert (=> b!1350126 m!1237419))

(declare-fun m!1237421 () Bool)

(assert (=> start!113856 m!1237421))

(push 1)

(assert (not start!113856))

(assert (not b!1350125))

(assert (not b!1350126))

(assert (not b!1350127))

(check-sat)

