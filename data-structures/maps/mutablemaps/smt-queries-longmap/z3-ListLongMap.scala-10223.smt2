; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120432 () Bool)

(assert start!120432)

(declare-fun b!1401390 () Bool)

(declare-fun res!940012 () Bool)

(declare-fun e!793542 () Bool)

(assert (=> b!1401390 (=> (not res!940012) (not e!793542))))

(declare-datatypes ((array!95759 0))(
  ( (array!95760 (arr!46226 (Array (_ BitVec 32) (_ BitVec 64))) (size!46777 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95759)

(declare-datatypes ((List!32925 0))(
  ( (Nil!32922) (Cons!32921 (h!34169 (_ BitVec 64)) (t!47626 List!32925)) )
))
(declare-fun arrayNoDuplicates!0 (array!95759 (_ BitVec 32) List!32925) Bool)

(assert (=> b!1401390 (= res!940012 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32922))))

(declare-fun res!940019 () Bool)

(assert (=> start!120432 (=> (not res!940019) (not e!793542))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120432 (= res!940019 (validMask!0 mask!2840))))

(assert (=> start!120432 e!793542))

(assert (=> start!120432 true))

(declare-fun array_inv!35171 (array!95759) Bool)

(assert (=> start!120432 (array_inv!35171 a!2901)))

(declare-fun b!1401391 () Bool)

(declare-fun e!793544 () Bool)

(assert (=> b!1401391 (= e!793542 (not e!793544))))

(declare-fun res!940018 () Bool)

(assert (=> b!1401391 (=> res!940018 e!793544)))

(declare-datatypes ((SeekEntryResult!10565 0))(
  ( (MissingZero!10565 (index!44636 (_ BitVec 32))) (Found!10565 (index!44637 (_ BitVec 32))) (Intermediate!10565 (undefined!11377 Bool) (index!44638 (_ BitVec 32)) (x!126275 (_ BitVec 32))) (Undefined!10565) (MissingVacant!10565 (index!44639 (_ BitVec 32))) )
))
(declare-fun lt!616900 () SeekEntryResult!10565)

(get-info :version)

(assert (=> b!1401391 (= res!940018 (or (not ((_ is Intermediate!10565) lt!616900)) (undefined!11377 lt!616900)))))

(declare-fun e!793538 () Bool)

(assert (=> b!1401391 e!793538))

(declare-fun res!940011 () Bool)

(assert (=> b!1401391 (=> (not res!940011) (not e!793538))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95759 (_ BitVec 32)) Bool)

(assert (=> b!1401391 (= res!940011 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47084 0))(
  ( (Unit!47085) )
))
(declare-fun lt!616897 () Unit!47084)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95759 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47084)

(assert (=> b!1401391 (= lt!616897 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!616899 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95759 (_ BitVec 32)) SeekEntryResult!10565)

(assert (=> b!1401391 (= lt!616900 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616899 (select (arr!46226 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401391 (= lt!616899 (toIndex!0 (select (arr!46226 a!2901) j!112) mask!2840))))

(declare-fun b!1401392 () Bool)

(declare-fun res!940020 () Bool)

(assert (=> b!1401392 (=> (not res!940020) (not e!793542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401392 (= res!940020 (validKeyInArray!0 (select (arr!46226 a!2901) j!112)))))

(declare-fun b!1401393 () Bool)

(declare-fun res!940016 () Bool)

(assert (=> b!1401393 (=> (not res!940016) (not e!793542))))

(assert (=> b!1401393 (= res!940016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401394 () Bool)

(declare-fun e!793540 () Bool)

(declare-fun e!793541 () Bool)

(assert (=> b!1401394 (= e!793540 e!793541)))

(declare-fun res!940013 () Bool)

(assert (=> b!1401394 (=> res!940013 e!793541)))

(declare-fun lt!616896 () SeekEntryResult!10565)

(assert (=> b!1401394 (= res!940013 (or (bvslt (x!126275 lt!616900) #b00000000000000000000000000000000) (bvsgt (x!126275 lt!616900) #b01111111111111111111111111111110) (bvslt (x!126275 lt!616896) #b00000000000000000000000000000000) (bvsgt (x!126275 lt!616896) #b01111111111111111111111111111110) (bvslt lt!616899 #b00000000000000000000000000000000) (bvsge lt!616899 (size!46777 a!2901)) (bvslt (index!44638 lt!616900) #b00000000000000000000000000000000) (bvsge (index!44638 lt!616900) (size!46777 a!2901)) (bvslt (index!44638 lt!616896) #b00000000000000000000000000000000) (bvsge (index!44638 lt!616896) (size!46777 a!2901)) (not (= lt!616900 (Intermediate!10565 false (index!44638 lt!616900) (x!126275 lt!616900)))) (not (= lt!616896 (Intermediate!10565 false (index!44638 lt!616896) (x!126275 lt!616896))))))))

(declare-fun e!793539 () Bool)

(assert (=> b!1401394 e!793539))

(declare-fun res!940014 () Bool)

(assert (=> b!1401394 (=> (not res!940014) (not e!793539))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1401394 (= res!940014 (and (not (undefined!11377 lt!616896)) (= (index!44638 lt!616896) i!1037) (bvslt (x!126275 lt!616896) (x!126275 lt!616900)) (= (select (store (arr!46226 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44638 lt!616896)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616898 () Unit!47084)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95759 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47084)

(assert (=> b!1401394 (= lt!616898 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616899 (x!126275 lt!616900) (index!44638 lt!616900) (x!126275 lt!616896) (index!44638 lt!616896) (undefined!11377 lt!616896) mask!2840))))

(declare-fun b!1401395 () Bool)

(declare-fun res!940010 () Bool)

(assert (=> b!1401395 (=> (not res!940010) (not e!793542))))

(assert (=> b!1401395 (= res!940010 (and (= (size!46777 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46777 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46777 a!2901)) (not (= i!1037 j!112))))))

(declare-fun lt!616901 () (_ BitVec 64))

(declare-fun lt!616903 () array!95759)

(declare-fun b!1401396 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95759 (_ BitVec 32)) SeekEntryResult!10565)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95759 (_ BitVec 32)) SeekEntryResult!10565)

(assert (=> b!1401396 (= e!793539 (= (seekEntryOrOpen!0 lt!616901 lt!616903 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126275 lt!616896) (index!44638 lt!616896) (index!44638 lt!616896) (select (arr!46226 a!2901) j!112) lt!616903 mask!2840)))))

(declare-fun b!1401397 () Bool)

(declare-fun res!940017 () Bool)

(assert (=> b!1401397 (=> (not res!940017) (not e!793542))))

(assert (=> b!1401397 (= res!940017 (validKeyInArray!0 (select (arr!46226 a!2901) i!1037)))))

(declare-fun b!1401398 () Bool)

(assert (=> b!1401398 (= e!793538 (= (seekEntryOrOpen!0 (select (arr!46226 a!2901) j!112) a!2901 mask!2840) (Found!10565 j!112)))))

(declare-fun b!1401399 () Bool)

(assert (=> b!1401399 (= e!793541 true)))

(declare-fun lt!616902 () SeekEntryResult!10565)

(assert (=> b!1401399 (= lt!616902 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616899 lt!616901 lt!616903 mask!2840))))

(declare-fun b!1401400 () Bool)

(assert (=> b!1401400 (= e!793544 e!793540)))

(declare-fun res!940015 () Bool)

(assert (=> b!1401400 (=> res!940015 e!793540)))

(assert (=> b!1401400 (= res!940015 (or (= lt!616900 lt!616896) (not ((_ is Intermediate!10565) lt!616896))))))

(assert (=> b!1401400 (= lt!616896 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616901 mask!2840) lt!616901 lt!616903 mask!2840))))

(assert (=> b!1401400 (= lt!616901 (select (store (arr!46226 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401400 (= lt!616903 (array!95760 (store (arr!46226 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46777 a!2901)))))

(assert (= (and start!120432 res!940019) b!1401395))

(assert (= (and b!1401395 res!940010) b!1401397))

(assert (= (and b!1401397 res!940017) b!1401392))

(assert (= (and b!1401392 res!940020) b!1401393))

(assert (= (and b!1401393 res!940016) b!1401390))

(assert (= (and b!1401390 res!940012) b!1401391))

(assert (= (and b!1401391 res!940011) b!1401398))

(assert (= (and b!1401391 (not res!940018)) b!1401400))

(assert (= (and b!1401400 (not res!940015)) b!1401394))

(assert (= (and b!1401394 res!940014) b!1401396))

(assert (= (and b!1401394 (not res!940013)) b!1401399))

(declare-fun m!1289245 () Bool)

(assert (=> b!1401398 m!1289245))

(assert (=> b!1401398 m!1289245))

(declare-fun m!1289247 () Bool)

(assert (=> b!1401398 m!1289247))

(declare-fun m!1289249 () Bool)

(assert (=> b!1401396 m!1289249))

(assert (=> b!1401396 m!1289245))

(assert (=> b!1401396 m!1289245))

(declare-fun m!1289251 () Bool)

(assert (=> b!1401396 m!1289251))

(declare-fun m!1289253 () Bool)

(assert (=> start!120432 m!1289253))

(declare-fun m!1289255 () Bool)

(assert (=> start!120432 m!1289255))

(assert (=> b!1401392 m!1289245))

(assert (=> b!1401392 m!1289245))

(declare-fun m!1289257 () Bool)

(assert (=> b!1401392 m!1289257))

(declare-fun m!1289259 () Bool)

(assert (=> b!1401400 m!1289259))

(assert (=> b!1401400 m!1289259))

(declare-fun m!1289261 () Bool)

(assert (=> b!1401400 m!1289261))

(declare-fun m!1289263 () Bool)

(assert (=> b!1401400 m!1289263))

(declare-fun m!1289265 () Bool)

(assert (=> b!1401400 m!1289265))

(assert (=> b!1401394 m!1289263))

(declare-fun m!1289267 () Bool)

(assert (=> b!1401394 m!1289267))

(declare-fun m!1289269 () Bool)

(assert (=> b!1401394 m!1289269))

(declare-fun m!1289271 () Bool)

(assert (=> b!1401390 m!1289271))

(assert (=> b!1401391 m!1289245))

(declare-fun m!1289273 () Bool)

(assert (=> b!1401391 m!1289273))

(assert (=> b!1401391 m!1289245))

(assert (=> b!1401391 m!1289245))

(declare-fun m!1289275 () Bool)

(assert (=> b!1401391 m!1289275))

(declare-fun m!1289277 () Bool)

(assert (=> b!1401391 m!1289277))

(declare-fun m!1289279 () Bool)

(assert (=> b!1401391 m!1289279))

(declare-fun m!1289281 () Bool)

(assert (=> b!1401393 m!1289281))

(declare-fun m!1289283 () Bool)

(assert (=> b!1401397 m!1289283))

(assert (=> b!1401397 m!1289283))

(declare-fun m!1289285 () Bool)

(assert (=> b!1401397 m!1289285))

(declare-fun m!1289287 () Bool)

(assert (=> b!1401399 m!1289287))

(check-sat (not start!120432) (not b!1401394) (not b!1401397) (not b!1401399) (not b!1401390) (not b!1401393) (not b!1401398) (not b!1401391) (not b!1401396) (not b!1401400) (not b!1401392))
(check-sat)
