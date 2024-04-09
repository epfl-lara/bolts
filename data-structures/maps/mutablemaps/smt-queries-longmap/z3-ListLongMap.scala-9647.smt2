; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114058 () Bool)

(assert start!114058)

(declare-fun b!1352993 () Bool)

(declare-datatypes ((Unit!44339 0))(
  ( (Unit!44340) )
))
(declare-fun e!768991 () Unit!44339)

(declare-fun Unit!44341 () Unit!44339)

(assert (=> b!1352993 (= e!768991 Unit!44341)))

(declare-fun b!1352994 () Bool)

(declare-fun res!898355 () Bool)

(declare-fun e!768990 () Bool)

(assert (=> b!1352994 (=> (not res!898355) (not e!768990))))

(declare-datatypes ((List!31746 0))(
  ( (Nil!31743) (Cons!31742 (h!32951 (_ BitVec 64)) (t!46411 List!31746)) )
))
(declare-fun acc!759 () List!31746)

(declare-datatypes ((array!92163 0))(
  ( (array!92164 (arr!44525 (Array (_ BitVec 32) (_ BitVec 64))) (size!45076 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92163)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92163 (_ BitVec 32) List!31746) Bool)

(assert (=> b!1352994 (= res!898355 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352995 () Bool)

(declare-fun res!898351 () Bool)

(assert (=> b!1352995 (=> (not res!898351) (not e!768990))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352995 (= res!898351 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45076 a!3742))))))

(declare-fun b!1352996 () Bool)

(declare-fun res!898346 () Bool)

(assert (=> b!1352996 (=> (not res!898346) (not e!768990))))

(declare-fun contains!9311 (List!31746 (_ BitVec 64)) Bool)

(assert (=> b!1352996 (= res!898346 (not (contains!9311 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352997 () Bool)

(declare-fun res!898354 () Bool)

(assert (=> b!1352997 (=> (not res!898354) (not e!768990))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352997 (= res!898354 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352998 () Bool)

(declare-fun res!898350 () Bool)

(declare-fun e!768989 () Bool)

(assert (=> b!1352998 (=> (not res!898350) (not e!768989))))

(assert (=> b!1352998 (= res!898350 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352999 () Bool)

(declare-fun lt!597684 () Unit!44339)

(assert (=> b!1352999 (= e!768991 lt!597684)))

(declare-fun lt!597683 () Unit!44339)

(declare-fun lemmaListSubSeqRefl!0 (List!31746) Unit!44339)

(assert (=> b!1352999 (= lt!597683 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!720 (List!31746 List!31746) Bool)

(assert (=> b!1352999 (subseq!720 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92163 List!31746 List!31746 (_ BitVec 32)) Unit!44339)

(declare-fun $colon$colon!737 (List!31746 (_ BitVec 64)) List!31746)

(assert (=> b!1352999 (= lt!597684 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!737 acc!759 (select (arr!44525 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1352999 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun res!898347 () Bool)

(assert (=> start!114058 (=> (not res!898347) (not e!768990))))

(assert (=> start!114058 (= res!898347 (and (bvslt (size!45076 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45076 a!3742))))))

(assert (=> start!114058 e!768990))

(assert (=> start!114058 true))

(declare-fun array_inv!33470 (array!92163) Bool)

(assert (=> start!114058 (array_inv!33470 a!3742)))

(declare-fun b!1353000 () Bool)

(declare-fun res!898356 () Bool)

(assert (=> b!1353000 (=> (not res!898356) (not e!768990))))

(assert (=> b!1353000 (= res!898356 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31743))))

(declare-fun b!1353001 () Bool)

(assert (=> b!1353001 (= e!768989 (not true))))

(assert (=> b!1353001 (arrayNoDuplicates!0 (array!92164 (store (arr!44525 a!3742) i!1404 l!3587) (size!45076 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!597686 () Unit!44339)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92163 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31746) Unit!44339)

(assert (=> b!1353001 (= lt!597686 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1353002 () Bool)

(declare-fun res!898352 () Bool)

(assert (=> b!1353002 (=> (not res!898352) (not e!768990))))

(assert (=> b!1353002 (= res!898352 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45076 a!3742)))))

(declare-fun b!1353003 () Bool)

(declare-fun res!898348 () Bool)

(assert (=> b!1353003 (=> (not res!898348) (not e!768990))))

(declare-fun noDuplicate!2190 (List!31746) Bool)

(assert (=> b!1353003 (= res!898348 (noDuplicate!2190 acc!759))))

(declare-fun b!1353004 () Bool)

(declare-fun res!898349 () Bool)

(assert (=> b!1353004 (=> (not res!898349) (not e!768990))))

(assert (=> b!1353004 (= res!898349 (not (contains!9311 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353005 () Bool)

(assert (=> b!1353005 (= e!768990 e!768989)))

(declare-fun res!898353 () Bool)

(assert (=> b!1353005 (=> (not res!898353) (not e!768989))))

(assert (=> b!1353005 (= res!898353 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597685 () Unit!44339)

(assert (=> b!1353005 (= lt!597685 e!768991)))

(declare-fun c!126766 () Bool)

(assert (=> b!1353005 (= c!126766 (validKeyInArray!0 (select (arr!44525 a!3742) from!3120)))))

(assert (= (and start!114058 res!898347) b!1353003))

(assert (= (and b!1353003 res!898348) b!1352996))

(assert (= (and b!1352996 res!898346) b!1353004))

(assert (= (and b!1353004 res!898349) b!1353000))

(assert (= (and b!1353000 res!898356) b!1352994))

(assert (= (and b!1352994 res!898355) b!1352995))

(assert (= (and b!1352995 res!898351) b!1352997))

(assert (= (and b!1352997 res!898354) b!1353002))

(assert (= (and b!1353002 res!898352) b!1353005))

(assert (= (and b!1353005 c!126766) b!1352999))

(assert (= (and b!1353005 (not c!126766)) b!1352993))

(assert (= (and b!1353005 res!898353) b!1352998))

(assert (= (and b!1352998 res!898350) b!1353001))

(declare-fun m!1239737 () Bool)

(assert (=> b!1353005 m!1239737))

(assert (=> b!1353005 m!1239737))

(declare-fun m!1239739 () Bool)

(assert (=> b!1353005 m!1239739))

(declare-fun m!1239741 () Bool)

(assert (=> b!1352998 m!1239741))

(declare-fun m!1239743 () Bool)

(assert (=> b!1352996 m!1239743))

(declare-fun m!1239745 () Bool)

(assert (=> b!1353000 m!1239745))

(declare-fun m!1239747 () Bool)

(assert (=> b!1352999 m!1239747))

(assert (=> b!1352999 m!1239737))

(declare-fun m!1239749 () Bool)

(assert (=> b!1352999 m!1239749))

(declare-fun m!1239751 () Bool)

(assert (=> b!1352999 m!1239751))

(assert (=> b!1352999 m!1239741))

(assert (=> b!1352999 m!1239737))

(assert (=> b!1352999 m!1239749))

(declare-fun m!1239753 () Bool)

(assert (=> b!1352999 m!1239753))

(declare-fun m!1239755 () Bool)

(assert (=> b!1352997 m!1239755))

(declare-fun m!1239757 () Bool)

(assert (=> b!1353003 m!1239757))

(declare-fun m!1239759 () Bool)

(assert (=> start!114058 m!1239759))

(declare-fun m!1239761 () Bool)

(assert (=> b!1353001 m!1239761))

(declare-fun m!1239763 () Bool)

(assert (=> b!1353001 m!1239763))

(declare-fun m!1239765 () Bool)

(assert (=> b!1353001 m!1239765))

(declare-fun m!1239767 () Bool)

(assert (=> b!1352994 m!1239767))

(declare-fun m!1239769 () Bool)

(assert (=> b!1353004 m!1239769))

(check-sat (not b!1352994) (not b!1353000) (not b!1352999) (not start!114058) (not b!1353001) (not b!1352997) (not b!1353004) (not b!1353003) (not b!1352996) (not b!1353005) (not b!1352998))
(check-sat)
