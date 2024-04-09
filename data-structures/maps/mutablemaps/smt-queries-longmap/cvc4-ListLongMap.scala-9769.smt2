; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115776 () Bool)

(assert start!115776)

(declare-fun b!1368657 () Bool)

(declare-fun res!912293 () Bool)

(declare-fun e!775390 () Bool)

(assert (=> b!1368657 (=> (not res!912293) (not e!775390))))

(declare-datatypes ((List!32113 0))(
  ( (Nil!32110) (Cons!32109 (h!33318 (_ BitVec 64)) (t!46814 List!32113)) )
))
(declare-fun newAcc!98 () List!32113)

(declare-fun acc!866 () List!32113)

(declare-fun subseq!1042 (List!32113 List!32113) Bool)

(assert (=> b!1368657 (= res!912293 (subseq!1042 newAcc!98 acc!866))))

(declare-fun b!1368658 () Bool)

(declare-fun e!775388 () Bool)

(assert (=> b!1368658 (= e!775388 (not true))))

(declare-datatypes ((array!92891 0))(
  ( (array!92892 (arr!44865 (Array (_ BitVec 32) (_ BitVec 64))) (size!45416 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92891)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92891 (_ BitVec 32) List!32113) Bool)

(assert (=> b!1368658 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98)))

(declare-datatypes ((Unit!45165 0))(
  ( (Unit!45166) )
))
(declare-fun lt!602053 () Unit!45165)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92891 List!32113 List!32113 (_ BitVec 32)) Unit!45165)

(assert (=> b!1368658 (= lt!602053 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)))))

(declare-fun b!1368659 () Bool)

(declare-fun res!912292 () Bool)

(assert (=> b!1368659 (=> (not res!912292) (not e!775388))))

(assert (=> b!1368659 (= res!912292 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1368660 () Bool)

(declare-fun res!912297 () Bool)

(assert (=> b!1368660 (=> (not res!912297) (not e!775390))))

(declare-fun contains!9651 (List!32113 (_ BitVec 64)) Bool)

(assert (=> b!1368660 (= res!912297 (not (contains!9651 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!912287 () Bool)

(assert (=> start!115776 (=> (not res!912287) (not e!775390))))

(assert (=> start!115776 (= res!912287 (and (bvslt (size!45416 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45416 a!3861))))))

(assert (=> start!115776 e!775390))

(declare-fun array_inv!33810 (array!92891) Bool)

(assert (=> start!115776 (array_inv!33810 a!3861)))

(assert (=> start!115776 true))

(declare-fun b!1368661 () Bool)

(declare-fun res!912289 () Bool)

(assert (=> b!1368661 (=> (not res!912289) (not e!775388))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368661 (= res!912289 (not (validKeyInArray!0 (select (arr!44865 a!3861) from!3239))))))

(declare-fun b!1368662 () Bool)

(assert (=> b!1368662 (= e!775390 e!775388)))

(declare-fun res!912288 () Bool)

(assert (=> b!1368662 (=> (not res!912288) (not e!775388))))

(assert (=> b!1368662 (= res!912288 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!602054 () Unit!45165)

(declare-fun noDuplicateSubseq!229 (List!32113 List!32113) Unit!45165)

(assert (=> b!1368662 (= lt!602054 (noDuplicateSubseq!229 newAcc!98 acc!866))))

(declare-fun b!1368663 () Bool)

(declare-fun res!912294 () Bool)

(assert (=> b!1368663 (=> (not res!912294) (not e!775388))))

(assert (=> b!1368663 (= res!912294 (bvslt from!3239 (size!45416 a!3861)))))

(declare-fun b!1368664 () Bool)

(declare-fun res!912295 () Bool)

(assert (=> b!1368664 (=> (not res!912295) (not e!775390))))

(declare-fun noDuplicate!2530 (List!32113) Bool)

(assert (=> b!1368664 (= res!912295 (noDuplicate!2530 acc!866))))

(declare-fun b!1368665 () Bool)

(declare-fun res!912286 () Bool)

(assert (=> b!1368665 (=> (not res!912286) (not e!775390))))

(assert (=> b!1368665 (= res!912286 (not (contains!9651 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368666 () Bool)

(declare-fun res!912291 () Bool)

(assert (=> b!1368666 (=> (not res!912291) (not e!775388))))

(assert (=> b!1368666 (= res!912291 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1368667 () Bool)

(declare-fun res!912290 () Bool)

(assert (=> b!1368667 (=> (not res!912290) (not e!775390))))

(assert (=> b!1368667 (= res!912290 (not (contains!9651 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368668 () Bool)

(declare-fun res!912296 () Bool)

(assert (=> b!1368668 (=> (not res!912296) (not e!775390))))

(assert (=> b!1368668 (= res!912296 (not (contains!9651 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115776 res!912287) b!1368664))

(assert (= (and b!1368664 res!912295) b!1368665))

(assert (= (and b!1368665 res!912286) b!1368668))

(assert (= (and b!1368668 res!912296) b!1368660))

(assert (= (and b!1368660 res!912297) b!1368667))

(assert (= (and b!1368667 res!912290) b!1368657))

(assert (= (and b!1368657 res!912293) b!1368662))

(assert (= (and b!1368662 res!912288) b!1368663))

(assert (= (and b!1368663 res!912294) b!1368661))

(assert (= (and b!1368661 res!912289) b!1368666))

(assert (= (and b!1368666 res!912291) b!1368659))

(assert (= (and b!1368659 res!912292) b!1368658))

(declare-fun m!1252587 () Bool)

(assert (=> b!1368657 m!1252587))

(declare-fun m!1252589 () Bool)

(assert (=> b!1368660 m!1252589))

(declare-fun m!1252591 () Bool)

(assert (=> b!1368664 m!1252591))

(declare-fun m!1252593 () Bool)

(assert (=> b!1368667 m!1252593))

(declare-fun m!1252595 () Bool)

(assert (=> b!1368659 m!1252595))

(declare-fun m!1252597 () Bool)

(assert (=> b!1368668 m!1252597))

(declare-fun m!1252599 () Bool)

(assert (=> start!115776 m!1252599))

(declare-fun m!1252601 () Bool)

(assert (=> b!1368662 m!1252601))

(declare-fun m!1252603 () Bool)

(assert (=> b!1368662 m!1252603))

(declare-fun m!1252605 () Bool)

(assert (=> b!1368658 m!1252605))

(declare-fun m!1252607 () Bool)

(assert (=> b!1368658 m!1252607))

(declare-fun m!1252609 () Bool)

(assert (=> b!1368661 m!1252609))

(assert (=> b!1368661 m!1252609))

(declare-fun m!1252611 () Bool)

(assert (=> b!1368661 m!1252611))

(declare-fun m!1252613 () Bool)

(assert (=> b!1368665 m!1252613))

(push 1)

(assert (not b!1368658))

