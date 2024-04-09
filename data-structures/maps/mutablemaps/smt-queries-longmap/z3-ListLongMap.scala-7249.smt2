; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92594 () Bool)

(assert start!92594)

(declare-fun e!597816 () Bool)

(declare-fun b!1052766 () Bool)

(declare-datatypes ((array!66343 0))(
  ( (array!66344 (arr!31907 (Array (_ BitVec 32) (_ BitVec 64))) (size!32444 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66343)

(declare-fun lt!464952 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052766 (= e!597816 (not (or (bvsgt lt!464952 i!1381) (bvsgt i!1381 lt!464952) (bvslt #b00000000000000000000000000000000 (size!32444 a!3488)))))))

(declare-fun k0!2747 () (_ BitVec 64))

(assert (=> b!1052766 (= (select (store (arr!31907 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464952) k0!2747)))

(declare-fun res!702003 () Bool)

(declare-fun e!597818 () Bool)

(assert (=> start!92594 (=> (not res!702003) (not e!597818))))

(assert (=> start!92594 (= res!702003 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32444 a!3488)) (bvslt (size!32444 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92594 e!597818))

(assert (=> start!92594 true))

(declare-fun array_inv!24529 (array!66343) Bool)

(assert (=> start!92594 (array_inv!24529 a!3488)))

(declare-fun b!1052767 () Bool)

(declare-fun res!702004 () Bool)

(assert (=> b!1052767 (=> (not res!702004) (not e!597818))))

(declare-datatypes ((List!22350 0))(
  ( (Nil!22347) (Cons!22346 (h!23555 (_ BitVec 64)) (t!31664 List!22350)) )
))
(declare-fun arrayNoDuplicates!0 (array!66343 (_ BitVec 32) List!22350) Bool)

(assert (=> b!1052767 (= res!702004 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22347))))

(declare-fun b!1052768 () Bool)

(declare-fun res!702006 () Bool)

(assert (=> b!1052768 (=> (not res!702006) (not e!597818))))

(assert (=> b!1052768 (= res!702006 (= (select (arr!31907 a!3488) i!1381) k0!2747))))

(declare-fun b!1052769 () Bool)

(declare-fun e!597817 () Bool)

(assert (=> b!1052769 (= e!597817 e!597816)))

(declare-fun res!702005 () Bool)

(assert (=> b!1052769 (=> (not res!702005) (not e!597816))))

(assert (=> b!1052769 (= res!702005 (not (= lt!464952 i!1381)))))

(declare-fun lt!464953 () array!66343)

(declare-fun arrayScanForKey!0 (array!66343 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052769 (= lt!464952 (arrayScanForKey!0 lt!464953 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1052770 () Bool)

(declare-fun res!702001 () Bool)

(assert (=> b!1052770 (=> (not res!702001) (not e!597818))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052770 (= res!702001 (validKeyInArray!0 k0!2747))))

(declare-fun b!1052771 () Bool)

(assert (=> b!1052771 (= e!597818 e!597817)))

(declare-fun res!702002 () Bool)

(assert (=> b!1052771 (=> (not res!702002) (not e!597817))))

(declare-fun arrayContainsKey!0 (array!66343 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052771 (= res!702002 (arrayContainsKey!0 lt!464953 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052771 (= lt!464953 (array!66344 (store (arr!31907 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32444 a!3488)))))

(assert (= (and start!92594 res!702003) b!1052767))

(assert (= (and b!1052767 res!702004) b!1052770))

(assert (= (and b!1052770 res!702001) b!1052768))

(assert (= (and b!1052768 res!702006) b!1052771))

(assert (= (and b!1052771 res!702002) b!1052769))

(assert (= (and b!1052769 res!702005) b!1052766))

(declare-fun m!973309 () Bool)

(assert (=> b!1052770 m!973309))

(declare-fun m!973311 () Bool)

(assert (=> b!1052766 m!973311))

(declare-fun m!973313 () Bool)

(assert (=> b!1052766 m!973313))

(declare-fun m!973315 () Bool)

(assert (=> start!92594 m!973315))

(declare-fun m!973317 () Bool)

(assert (=> b!1052769 m!973317))

(declare-fun m!973319 () Bool)

(assert (=> b!1052771 m!973319))

(assert (=> b!1052771 m!973311))

(declare-fun m!973321 () Bool)

(assert (=> b!1052767 m!973321))

(declare-fun m!973323 () Bool)

(assert (=> b!1052768 m!973323))

(check-sat (not b!1052771) (not b!1052769) (not b!1052770) (not start!92594) (not b!1052767))
(check-sat)
