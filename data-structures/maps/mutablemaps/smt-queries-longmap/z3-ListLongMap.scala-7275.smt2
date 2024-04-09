; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92906 () Bool)

(assert start!92906)

(declare-fun b!1054662 () Bool)

(declare-fun e!599279 () Bool)

(declare-datatypes ((array!66514 0))(
  ( (array!66515 (arr!31985 (Array (_ BitVec 32) (_ BitVec 64))) (size!32522 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66514)

(declare-fun lt!465504 () (_ BitVec 32))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66514 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054662 (= e!599279 (arrayContainsKey!0 a!3488 k0!2747 lt!465504))))

(declare-fun b!1054663 () Bool)

(declare-fun res!703717 () Bool)

(declare-fun e!599280 () Bool)

(assert (=> b!1054663 (=> (not res!703717) (not e!599280))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054663 (= res!703717 (validKeyInArray!0 k0!2747))))

(declare-fun b!1054664 () Bool)

(declare-fun e!599282 () Bool)

(declare-fun e!599281 () Bool)

(assert (=> b!1054664 (= e!599282 (not e!599281))))

(declare-fun res!703713 () Bool)

(assert (=> b!1054664 (=> res!703713 e!599281)))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054664 (= res!703713 (bvsle lt!465504 i!1381))))

(declare-fun e!599277 () Bool)

(assert (=> b!1054664 e!599277))

(declare-fun res!703711 () Bool)

(assert (=> b!1054664 (=> (not res!703711) (not e!599277))))

(assert (=> b!1054664 (= res!703711 (= (select (store (arr!31985 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465504) k0!2747))))

(declare-fun b!1054665 () Bool)

(declare-fun res!703712 () Bool)

(assert (=> b!1054665 (=> (not res!703712) (not e!599280))))

(assert (=> b!1054665 (= res!703712 (= (select (arr!31985 a!3488) i!1381) k0!2747))))

(declare-fun b!1054666 () Bool)

(declare-fun e!599278 () Bool)

(assert (=> b!1054666 (= e!599278 e!599282)))

(declare-fun res!703719 () Bool)

(assert (=> b!1054666 (=> (not res!703719) (not e!599282))))

(assert (=> b!1054666 (= res!703719 (not (= lt!465504 i!1381)))))

(declare-fun lt!465505 () array!66514)

(declare-fun arrayScanForKey!0 (array!66514 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054666 (= lt!465504 (arrayScanForKey!0 lt!465505 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054667 () Bool)

(declare-fun res!703714 () Bool)

(assert (=> b!1054667 (=> (not res!703714) (not e!599280))))

(declare-datatypes ((List!22428 0))(
  ( (Nil!22425) (Cons!22424 (h!23633 (_ BitVec 64)) (t!31742 List!22428)) )
))
(declare-fun arrayNoDuplicates!0 (array!66514 (_ BitVec 32) List!22428) Bool)

(assert (=> b!1054667 (= res!703714 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22425))))

(declare-fun res!703715 () Bool)

(assert (=> start!92906 (=> (not res!703715) (not e!599280))))

(assert (=> start!92906 (= res!703715 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32522 a!3488)) (bvslt (size!32522 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92906 e!599280))

(assert (=> start!92906 true))

(declare-fun array_inv!24607 (array!66514) Bool)

(assert (=> start!92906 (array_inv!24607 a!3488)))

(declare-fun b!1054668 () Bool)

(assert (=> b!1054668 (= e!599280 e!599278)))

(declare-fun res!703716 () Bool)

(assert (=> b!1054668 (=> (not res!703716) (not e!599278))))

(assert (=> b!1054668 (= res!703716 (arrayContainsKey!0 lt!465505 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054668 (= lt!465505 (array!66515 (store (arr!31985 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32522 a!3488)))))

(declare-fun b!1054669 () Bool)

(assert (=> b!1054669 (= e!599281 true)))

(assert (=> b!1054669 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34537 0))(
  ( (Unit!34538) )
))
(declare-fun lt!465503 () Unit!34537)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66514 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34537)

(assert (=> b!1054669 (= lt!465503 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!465504 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1054669 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22425)))

(declare-fun lt!465502 () Unit!34537)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66514 (_ BitVec 32) (_ BitVec 32)) Unit!34537)

(assert (=> b!1054669 (= lt!465502 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1054670 () Bool)

(assert (=> b!1054670 (= e!599277 e!599279)))

(declare-fun res!703718 () Bool)

(assert (=> b!1054670 (=> res!703718 e!599279)))

(assert (=> b!1054670 (= res!703718 (bvsle lt!465504 i!1381))))

(assert (= (and start!92906 res!703715) b!1054667))

(assert (= (and b!1054667 res!703714) b!1054663))

(assert (= (and b!1054663 res!703717) b!1054665))

(assert (= (and b!1054665 res!703712) b!1054668))

(assert (= (and b!1054668 res!703716) b!1054666))

(assert (= (and b!1054666 res!703719) b!1054664))

(assert (= (and b!1054664 res!703711) b!1054670))

(assert (= (and b!1054670 (not res!703718)) b!1054662))

(assert (= (and b!1054664 (not res!703713)) b!1054669))

(declare-fun m!974849 () Bool)

(assert (=> b!1054668 m!974849))

(declare-fun m!974851 () Bool)

(assert (=> b!1054668 m!974851))

(declare-fun m!974853 () Bool)

(assert (=> b!1054663 m!974853))

(declare-fun m!974855 () Bool)

(assert (=> b!1054666 m!974855))

(declare-fun m!974857 () Bool)

(assert (=> b!1054669 m!974857))

(declare-fun m!974859 () Bool)

(assert (=> b!1054669 m!974859))

(declare-fun m!974861 () Bool)

(assert (=> b!1054669 m!974861))

(declare-fun m!974863 () Bool)

(assert (=> b!1054669 m!974863))

(assert (=> b!1054664 m!974851))

(declare-fun m!974865 () Bool)

(assert (=> b!1054664 m!974865))

(declare-fun m!974867 () Bool)

(assert (=> b!1054662 m!974867))

(declare-fun m!974869 () Bool)

(assert (=> b!1054667 m!974869))

(declare-fun m!974871 () Bool)

(assert (=> b!1054665 m!974871))

(declare-fun m!974873 () Bool)

(assert (=> start!92906 m!974873))

(check-sat (not b!1054667) (not b!1054662) (not b!1054668) (not b!1054666) (not start!92906) (not b!1054669) (not b!1054663))
(check-sat)
