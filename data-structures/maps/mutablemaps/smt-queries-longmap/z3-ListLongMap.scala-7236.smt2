; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92516 () Bool)

(assert start!92516)

(declare-fun b!1051527 () Bool)

(declare-fun e!596966 () Bool)

(declare-fun e!596963 () Bool)

(assert (=> b!1051527 (= e!596966 e!596963)))

(declare-fun res!700772 () Bool)

(assert (=> b!1051527 (=> (not res!700772) (not e!596963))))

(declare-datatypes ((array!66265 0))(
  ( (array!66266 (arr!31868 (Array (_ BitVec 32) (_ BitVec 64))) (size!32405 (_ BitVec 32))) )
))
(declare-fun lt!464307 () array!66265)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66265 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051527 (= res!700772 (arrayContainsKey!0 lt!464307 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66265)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051527 (= lt!464307 (array!66266 (store (arr!31868 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32405 a!3488)))))

(declare-fun b!1051528 () Bool)

(declare-fun e!596964 () Bool)

(assert (=> b!1051528 (= e!596963 e!596964)))

(declare-fun res!700766 () Bool)

(assert (=> b!1051528 (=> (not res!700766) (not e!596964))))

(declare-fun lt!464308 () (_ BitVec 32))

(assert (=> b!1051528 (= res!700766 (not (= lt!464308 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66265 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051528 (= lt!464308 (arrayScanForKey!0 lt!464307 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051529 () Bool)

(declare-fun res!700762 () Bool)

(assert (=> b!1051529 (=> (not res!700762) (not e!596966))))

(assert (=> b!1051529 (= res!700762 (= (select (arr!31868 a!3488) i!1381) k0!2747))))

(declare-fun b!1051530 () Bool)

(declare-fun e!596965 () Bool)

(assert (=> b!1051530 (= e!596965 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1051531 () Bool)

(declare-fun res!700770 () Bool)

(assert (=> b!1051531 (=> (not res!700770) (not e!596966))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051531 (= res!700770 (validKeyInArray!0 k0!2747))))

(declare-fun res!700773 () Bool)

(assert (=> start!92516 (=> (not res!700773) (not e!596966))))

(assert (=> start!92516 (= res!700773 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32405 a!3488)) (bvslt (size!32405 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92516 e!596966))

(assert (=> start!92516 true))

(declare-fun array_inv!24490 (array!66265) Bool)

(assert (=> start!92516 (array_inv!24490 a!3488)))

(declare-fun b!1051532 () Bool)

(declare-fun res!700763 () Bool)

(assert (=> b!1051532 (=> (not res!700763) (not e!596966))))

(declare-datatypes ((List!22311 0))(
  ( (Nil!22308) (Cons!22307 (h!23516 (_ BitVec 64)) (t!31625 List!22311)) )
))
(declare-fun arrayNoDuplicates!0 (array!66265 (_ BitVec 32) List!22311) Bool)

(assert (=> b!1051532 (= res!700763 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22308))))

(declare-fun b!1051533 () Bool)

(declare-fun e!596967 () Bool)

(assert (=> b!1051533 (= e!596964 (not e!596967))))

(declare-fun res!700764 () Bool)

(assert (=> b!1051533 (=> res!700764 e!596967)))

(assert (=> b!1051533 (= res!700764 (or (bvsgt lt!464308 i!1381) (bvsle i!1381 lt!464308)))))

(declare-fun e!596962 () Bool)

(assert (=> b!1051533 e!596962))

(declare-fun res!700768 () Bool)

(assert (=> b!1051533 (=> (not res!700768) (not e!596962))))

(assert (=> b!1051533 (= res!700768 (= (select (store (arr!31868 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464308) k0!2747))))

(declare-fun b!1051534 () Bool)

(declare-fun res!700765 () Bool)

(declare-fun e!596968 () Bool)

(assert (=> b!1051534 (=> res!700765 e!596968)))

(declare-fun contains!6152 (List!22311 (_ BitVec 64)) Bool)

(assert (=> b!1051534 (= res!700765 (contains!6152 Nil!22308 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051535 () Bool)

(declare-fun res!700771 () Bool)

(assert (=> b!1051535 (=> res!700771 e!596968)))

(declare-fun noDuplicate!1537 (List!22311) Bool)

(assert (=> b!1051535 (= res!700771 (not (noDuplicate!1537 Nil!22308)))))

(declare-fun b!1051536 () Bool)

(assert (=> b!1051536 (= e!596962 e!596965)))

(declare-fun res!700769 () Bool)

(assert (=> b!1051536 (=> res!700769 e!596965)))

(assert (=> b!1051536 (= res!700769 (or (bvsgt lt!464308 i!1381) (bvsle i!1381 lt!464308)))))

(declare-fun b!1051537 () Bool)

(assert (=> b!1051537 (= e!596967 e!596968)))

(declare-fun res!700767 () Bool)

(assert (=> b!1051537 (=> res!700767 e!596968)))

(declare-fun lt!464310 () (_ BitVec 32))

(assert (=> b!1051537 (= res!700767 (or (bvslt lt!464308 #b00000000000000000000000000000000) (bvsge lt!464310 (size!32405 a!3488)) (bvsge lt!464308 (size!32405 a!3488))))))

(assert (=> b!1051537 (arrayContainsKey!0 a!3488 k0!2747 lt!464310)))

(declare-datatypes ((Unit!34417 0))(
  ( (Unit!34418) )
))
(declare-fun lt!464309 () Unit!34417)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66265 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34417)

(assert (=> b!1051537 (= lt!464309 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!464310))))

(assert (=> b!1051537 (= lt!464310 (bvadd #b00000000000000000000000000000001 lt!464308))))

(assert (=> b!1051537 (arrayNoDuplicates!0 a!3488 lt!464308 Nil!22308)))

(declare-fun lt!464306 () Unit!34417)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66265 (_ BitVec 32) (_ BitVec 32)) Unit!34417)

(assert (=> b!1051537 (= lt!464306 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464308))))

(declare-fun b!1051538 () Bool)

(assert (=> b!1051538 (= e!596968 true)))

(declare-fun lt!464311 () Bool)

(assert (=> b!1051538 (= lt!464311 (contains!6152 Nil!22308 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!92516 res!700773) b!1051532))

(assert (= (and b!1051532 res!700763) b!1051531))

(assert (= (and b!1051531 res!700770) b!1051529))

(assert (= (and b!1051529 res!700762) b!1051527))

(assert (= (and b!1051527 res!700772) b!1051528))

(assert (= (and b!1051528 res!700766) b!1051533))

(assert (= (and b!1051533 res!700768) b!1051536))

(assert (= (and b!1051536 (not res!700769)) b!1051530))

(assert (= (and b!1051533 (not res!700764)) b!1051537))

(assert (= (and b!1051537 (not res!700767)) b!1051535))

(assert (= (and b!1051535 (not res!700771)) b!1051534))

(assert (= (and b!1051534 (not res!700765)) b!1051538))

(declare-fun m!972143 () Bool)

(assert (=> b!1051527 m!972143))

(declare-fun m!972145 () Bool)

(assert (=> b!1051527 m!972145))

(declare-fun m!972147 () Bool)

(assert (=> b!1051531 m!972147))

(assert (=> b!1051533 m!972145))

(declare-fun m!972149 () Bool)

(assert (=> b!1051533 m!972149))

(declare-fun m!972151 () Bool)

(assert (=> start!92516 m!972151))

(declare-fun m!972153 () Bool)

(assert (=> b!1051528 m!972153))

(declare-fun m!972155 () Bool)

(assert (=> b!1051530 m!972155))

(declare-fun m!972157 () Bool)

(assert (=> b!1051535 m!972157))

(declare-fun m!972159 () Bool)

(assert (=> b!1051537 m!972159))

(declare-fun m!972161 () Bool)

(assert (=> b!1051537 m!972161))

(declare-fun m!972163 () Bool)

(assert (=> b!1051537 m!972163))

(declare-fun m!972165 () Bool)

(assert (=> b!1051537 m!972165))

(declare-fun m!972167 () Bool)

(assert (=> b!1051534 m!972167))

(declare-fun m!972169 () Bool)

(assert (=> b!1051538 m!972169))

(declare-fun m!972171 () Bool)

(assert (=> b!1051532 m!972171))

(declare-fun m!972173 () Bool)

(assert (=> b!1051529 m!972173))

(check-sat (not start!92516) (not b!1051530) (not b!1051532) (not b!1051537) (not b!1051531) (not b!1051527) (not b!1051538) (not b!1051528) (not b!1051535) (not b!1051534))
(check-sat)
