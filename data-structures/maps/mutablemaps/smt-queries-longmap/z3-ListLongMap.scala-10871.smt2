; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127470 () Bool)

(assert start!127470)

(declare-fun b!1497776 () Bool)

(declare-fun e!838738 () Bool)

(declare-datatypes ((List!34842 0))(
  ( (Nil!34839) (Cons!34838 (h!36236 (_ BitVec 64)) (t!49543 List!34842)) )
))
(declare-fun noDuplicate!2652 (List!34842) Bool)

(assert (=> b!1497776 (= e!838738 (not (noDuplicate!2652 Nil!34839)))))

(declare-fun res!1018960 () Bool)

(assert (=> start!127470 (=> (not res!1018960) (not e!838738))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127470 (= res!1018960 (validMask!0 mask!2661))))

(assert (=> start!127470 e!838738))

(assert (=> start!127470 true))

(declare-datatypes ((array!99824 0))(
  ( (array!99825 (arr!48170 (Array (_ BitVec 32) (_ BitVec 64))) (size!48721 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99824)

(declare-fun array_inv!37115 (array!99824) Bool)

(assert (=> start!127470 (array_inv!37115 a!2850)))

(declare-fun b!1497777 () Bool)

(declare-fun res!1018963 () Bool)

(assert (=> b!1497777 (=> (not res!1018963) (not e!838738))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99824 (_ BitVec 32)) Bool)

(assert (=> b!1497777 (= res!1018963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1497778 () Bool)

(declare-fun res!1018965 () Bool)

(assert (=> b!1497778 (=> (not res!1018965) (not e!838738))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497778 (= res!1018965 (validKeyInArray!0 (select (arr!48170 a!2850) j!87)))))

(declare-fun b!1497779 () Bool)

(declare-fun res!1018964 () Bool)

(assert (=> b!1497779 (=> (not res!1018964) (not e!838738))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1497779 (= res!1018964 (validKeyInArray!0 (select (arr!48170 a!2850) i!996)))))

(declare-fun b!1497780 () Bool)

(declare-fun res!1018961 () Bool)

(assert (=> b!1497780 (=> (not res!1018961) (not e!838738))))

(assert (=> b!1497780 (= res!1018961 (and (bvsle #b00000000000000000000000000000000 (size!48721 a!2850)) (bvslt (size!48721 a!2850) #b01111111111111111111111111111111)))))

(declare-fun b!1497781 () Bool)

(declare-fun res!1018962 () Bool)

(assert (=> b!1497781 (=> (not res!1018962) (not e!838738))))

(assert (=> b!1497781 (= res!1018962 (and (= (size!48721 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48721 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48721 a!2850)) (not (= i!996 j!87))))))

(assert (= (and start!127470 res!1018960) b!1497781))

(assert (= (and b!1497781 res!1018962) b!1497779))

(assert (= (and b!1497779 res!1018964) b!1497778))

(assert (= (and b!1497778 res!1018965) b!1497777))

(assert (= (and b!1497777 res!1018963) b!1497780))

(assert (= (and b!1497780 res!1018961) b!1497776))

(declare-fun m!1380913 () Bool)

(assert (=> b!1497777 m!1380913))

(declare-fun m!1380915 () Bool)

(assert (=> b!1497776 m!1380915))

(declare-fun m!1380917 () Bool)

(assert (=> b!1497778 m!1380917))

(assert (=> b!1497778 m!1380917))

(declare-fun m!1380919 () Bool)

(assert (=> b!1497778 m!1380919))

(declare-fun m!1380921 () Bool)

(assert (=> b!1497779 m!1380921))

(assert (=> b!1497779 m!1380921))

(declare-fun m!1380923 () Bool)

(assert (=> b!1497779 m!1380923))

(declare-fun m!1380925 () Bool)

(assert (=> start!127470 m!1380925))

(declare-fun m!1380927 () Bool)

(assert (=> start!127470 m!1380927))

(check-sat (not b!1497778) (not b!1497777) (not start!127470) (not b!1497779) (not b!1497776))
(check-sat)
(get-model)

(declare-fun d!157417 () Bool)

(declare-fun res!1018988 () Bool)

(declare-fun e!838750 () Bool)

(assert (=> d!157417 (=> res!1018988 e!838750)))

(get-info :version)

(assert (=> d!157417 (= res!1018988 ((_ is Nil!34839) Nil!34839))))

(assert (=> d!157417 (= (noDuplicate!2652 Nil!34839) e!838750)))

(declare-fun b!1497804 () Bool)

(declare-fun e!838751 () Bool)

(assert (=> b!1497804 (= e!838750 e!838751)))

(declare-fun res!1018989 () Bool)

(assert (=> b!1497804 (=> (not res!1018989) (not e!838751))))

(declare-fun contains!9948 (List!34842 (_ BitVec 64)) Bool)

(assert (=> b!1497804 (= res!1018989 (not (contains!9948 (t!49543 Nil!34839) (h!36236 Nil!34839))))))

(declare-fun b!1497805 () Bool)

(assert (=> b!1497805 (= e!838751 (noDuplicate!2652 (t!49543 Nil!34839)))))

(assert (= (and d!157417 (not res!1018988)) b!1497804))

(assert (= (and b!1497804 res!1018989) b!1497805))

(declare-fun m!1380945 () Bool)

(assert (=> b!1497804 m!1380945))

(declare-fun m!1380947 () Bool)

(assert (=> b!1497805 m!1380947))

(assert (=> b!1497776 d!157417))

(declare-fun d!157423 () Bool)

(assert (=> d!157423 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

(assert (=> start!127470 d!157423))

(declare-fun d!157437 () Bool)

(assert (=> d!157437 (= (array_inv!37115 a!2850) (bvsge (size!48721 a!2850) #b00000000000000000000000000000000))))

(assert (=> start!127470 d!157437))

(declare-fun d!157439 () Bool)

(declare-fun res!1019014 () Bool)

(declare-fun e!838783 () Bool)

(assert (=> d!157439 (=> res!1019014 e!838783)))

(assert (=> d!157439 (= res!1019014 (bvsge #b00000000000000000000000000000000 (size!48721 a!2850)))))

(assert (=> d!157439 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661) e!838783)))

(declare-fun b!1497842 () Bool)

(declare-fun e!838782 () Bool)

(assert (=> b!1497842 (= e!838783 e!838782)))

(declare-fun c!138951 () Bool)

(assert (=> b!1497842 (= c!138951 (validKeyInArray!0 (select (arr!48170 a!2850) #b00000000000000000000000000000000)))))

(declare-fun bm!68051 () Bool)

(declare-fun call!68054 () Bool)

(assert (=> bm!68051 (= call!68054 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(declare-fun b!1497843 () Bool)

(declare-fun e!838784 () Bool)

(assert (=> b!1497843 (= e!838784 call!68054)))

(declare-fun b!1497844 () Bool)

(assert (=> b!1497844 (= e!838782 e!838784)))

(declare-fun lt!652514 () (_ BitVec 64))

(assert (=> b!1497844 (= lt!652514 (select (arr!48170 a!2850) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50138 0))(
  ( (Unit!50139) )
))
(declare-fun lt!652515 () Unit!50138)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99824 (_ BitVec 64) (_ BitVec 32)) Unit!50138)

(assert (=> b!1497844 (= lt!652515 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2850 lt!652514 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99824 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1497844 (arrayContainsKey!0 a!2850 lt!652514 #b00000000000000000000000000000000)))

(declare-fun lt!652516 () Unit!50138)

(assert (=> b!1497844 (= lt!652516 lt!652515)))

(declare-fun res!1019015 () Bool)

(declare-datatypes ((SeekEntryResult!12424 0))(
  ( (MissingZero!12424 (index!52087 (_ BitVec 32))) (Found!12424 (index!52088 (_ BitVec 32))) (Intermediate!12424 (undefined!13236 Bool) (index!52089 (_ BitVec 32)) (x!133735 (_ BitVec 32))) (Undefined!12424) (MissingVacant!12424 (index!52090 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99824 (_ BitVec 32)) SeekEntryResult!12424)

(assert (=> b!1497844 (= res!1019015 (= (seekEntryOrOpen!0 (select (arr!48170 a!2850) #b00000000000000000000000000000000) a!2850 mask!2661) (Found!12424 #b00000000000000000000000000000000)))))

(assert (=> b!1497844 (=> (not res!1019015) (not e!838784))))

(declare-fun b!1497845 () Bool)

(assert (=> b!1497845 (= e!838782 call!68054)))

(assert (= (and d!157439 (not res!1019014)) b!1497842))

(assert (= (and b!1497842 c!138951) b!1497844))

(assert (= (and b!1497842 (not c!138951)) b!1497845))

(assert (= (and b!1497844 res!1019015) b!1497843))

(assert (= (or b!1497843 b!1497845) bm!68051))

(declare-fun m!1380957 () Bool)

(assert (=> b!1497842 m!1380957))

(assert (=> b!1497842 m!1380957))

(declare-fun m!1380959 () Bool)

(assert (=> b!1497842 m!1380959))

(declare-fun m!1380961 () Bool)

(assert (=> bm!68051 m!1380961))

(assert (=> b!1497844 m!1380957))

(declare-fun m!1380963 () Bool)

(assert (=> b!1497844 m!1380963))

(declare-fun m!1380965 () Bool)

(assert (=> b!1497844 m!1380965))

(assert (=> b!1497844 m!1380957))

(declare-fun m!1380967 () Bool)

(assert (=> b!1497844 m!1380967))

(assert (=> b!1497777 d!157439))

(declare-fun d!157449 () Bool)

(assert (=> d!157449 (= (validKeyInArray!0 (select (arr!48170 a!2850) j!87)) (and (not (= (select (arr!48170 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48170 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1497778 d!157449))

(declare-fun d!157451 () Bool)

(assert (=> d!157451 (= (validKeyInArray!0 (select (arr!48170 a!2850) i!996)) (and (not (= (select (arr!48170 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48170 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1497779 d!157451))

(check-sat (not b!1497805) (not b!1497842) (not b!1497804) (not bm!68051) (not b!1497844))
(check-sat)
