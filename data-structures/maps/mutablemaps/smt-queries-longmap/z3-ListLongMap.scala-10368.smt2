; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122064 () Bool)

(assert start!122064)

(declare-fun b!1416265 () Bool)

(declare-fun res!952416 () Bool)

(declare-fun e!801598 () Bool)

(assert (=> b!1416265 (=> (not res!952416) (not e!801598))))

(declare-datatypes ((array!96668 0))(
  ( (array!96669 (arr!46661 (Array (_ BitVec 32) (_ BitVec 64))) (size!47212 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96668)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416265 (= res!952416 (validKeyInArray!0 (select (arr!46661 a!2901) j!112)))))

(declare-fun b!1416266 () Bool)

(declare-fun e!801595 () Bool)

(declare-fun e!801597 () Bool)

(assert (=> b!1416266 (= e!801595 e!801597)))

(declare-fun res!952422 () Bool)

(assert (=> b!1416266 (=> res!952422 e!801597)))

(declare-fun lt!624843 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10994 0))(
  ( (MissingZero!10994 (index!46367 (_ BitVec 32))) (Found!10994 (index!46368 (_ BitVec 32))) (Intermediate!10994 (undefined!11806 Bool) (index!46369 (_ BitVec 32)) (x!127972 (_ BitVec 32))) (Undefined!10994) (MissingVacant!10994 (index!46370 (_ BitVec 32))) )
))
(declare-fun lt!624848 () SeekEntryResult!10994)

(declare-fun lt!624845 () SeekEntryResult!10994)

(assert (=> b!1416266 (= res!952422 (or (bvslt (x!127972 lt!624845) #b00000000000000000000000000000000) (bvsgt (x!127972 lt!624845) #b01111111111111111111111111111110) (bvslt (x!127972 lt!624848) #b00000000000000000000000000000000) (bvsgt (x!127972 lt!624848) #b01111111111111111111111111111110) (bvslt lt!624843 #b00000000000000000000000000000000) (bvsge lt!624843 (size!47212 a!2901)) (bvslt (index!46369 lt!624845) #b00000000000000000000000000000000) (bvsge (index!46369 lt!624845) (size!47212 a!2901)) (bvslt (index!46369 lt!624848) #b00000000000000000000000000000000) (bvsge (index!46369 lt!624848) (size!47212 a!2901)) (not (= lt!624845 (Intermediate!10994 false (index!46369 lt!624845) (x!127972 lt!624845)))) (not (= lt!624848 (Intermediate!10994 false (index!46369 lt!624848) (x!127972 lt!624848))))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!624844 () array!96668)

(declare-fun lt!624842 () SeekEntryResult!10994)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96668 (_ BitVec 32)) SeekEntryResult!10994)

(assert (=> b!1416266 (= lt!624842 (seekKeyOrZeroReturnVacant!0 (x!127972 lt!624848) (index!46369 lt!624848) (index!46369 lt!624848) (select (arr!46661 a!2901) j!112) lt!624844 mask!2840))))

(declare-fun lt!624846 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96668 (_ BitVec 32)) SeekEntryResult!10994)

(assert (=> b!1416266 (= lt!624842 (seekEntryOrOpen!0 lt!624846 lt!624844 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1416266 (and (not (undefined!11806 lt!624848)) (= (index!46369 lt!624848) i!1037) (bvslt (x!127972 lt!624848) (x!127972 lt!624845)) (= (select (store (arr!46661 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46369 lt!624848)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!47912 0))(
  ( (Unit!47913) )
))
(declare-fun lt!624849 () Unit!47912)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96668 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47912)

(assert (=> b!1416266 (= lt!624849 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624843 (x!127972 lt!624845) (index!46369 lt!624845) (x!127972 lt!624848) (index!46369 lt!624848) (undefined!11806 lt!624848) mask!2840))))

(declare-fun b!1416267 () Bool)

(declare-fun res!952424 () Bool)

(assert (=> b!1416267 (=> (not res!952424) (not e!801598))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96668 (_ BitVec 32)) Bool)

(assert (=> b!1416267 (= res!952424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416268 () Bool)

(declare-fun e!801596 () Bool)

(assert (=> b!1416268 (= e!801596 e!801595)))

(declare-fun res!952425 () Bool)

(assert (=> b!1416268 (=> res!952425 e!801595)))

(get-info :version)

(assert (=> b!1416268 (= res!952425 (or (= lt!624845 lt!624848) (not ((_ is Intermediate!10994) lt!624848))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96668 (_ BitVec 32)) SeekEntryResult!10994)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416268 (= lt!624848 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624846 mask!2840) lt!624846 lt!624844 mask!2840))))

(assert (=> b!1416268 (= lt!624846 (select (store (arr!46661 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1416268 (= lt!624844 (array!96669 (store (arr!46661 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47212 a!2901)))))

(declare-fun b!1416269 () Bool)

(assert (=> b!1416269 (= e!801597 true)))

(declare-fun lt!624841 () SeekEntryResult!10994)

(assert (=> b!1416269 (= lt!624841 lt!624842)))

(declare-fun lt!624850 () Unit!47912)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!96668 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47912)

(assert (=> b!1416269 (= lt!624850 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624843 (x!127972 lt!624845) (index!46369 lt!624845) (x!127972 lt!624848) (index!46369 lt!624848) mask!2840))))

(declare-fun b!1416270 () Bool)

(declare-fun res!952420 () Bool)

(assert (=> b!1416270 (=> (not res!952420) (not e!801598))))

(assert (=> b!1416270 (= res!952420 (validKeyInArray!0 (select (arr!46661 a!2901) i!1037)))))

(declare-fun b!1416272 () Bool)

(declare-fun res!952418 () Bool)

(assert (=> b!1416272 (=> (not res!952418) (not e!801598))))

(declare-datatypes ((List!33360 0))(
  ( (Nil!33357) (Cons!33356 (h!34643 (_ BitVec 64)) (t!48061 List!33360)) )
))
(declare-fun arrayNoDuplicates!0 (array!96668 (_ BitVec 32) List!33360) Bool)

(assert (=> b!1416272 (= res!952418 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33357))))

(declare-fun b!1416273 () Bool)

(declare-fun res!952419 () Bool)

(assert (=> b!1416273 (=> res!952419 e!801597)))

(assert (=> b!1416273 (= res!952419 (not (= lt!624848 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624843 lt!624846 lt!624844 mask!2840))))))

(declare-fun b!1416274 () Bool)

(assert (=> b!1416274 (= e!801598 (not e!801596))))

(declare-fun res!952417 () Bool)

(assert (=> b!1416274 (=> res!952417 e!801596)))

(assert (=> b!1416274 (= res!952417 (or (not ((_ is Intermediate!10994) lt!624845)) (undefined!11806 lt!624845)))))

(assert (=> b!1416274 (= lt!624841 (Found!10994 j!112))))

(assert (=> b!1416274 (= lt!624841 (seekEntryOrOpen!0 (select (arr!46661 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1416274 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!624847 () Unit!47912)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96668 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47912)

(assert (=> b!1416274 (= lt!624847 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1416274 (= lt!624845 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624843 (select (arr!46661 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1416274 (= lt!624843 (toIndex!0 (select (arr!46661 a!2901) j!112) mask!2840))))

(declare-fun b!1416271 () Bool)

(declare-fun res!952423 () Bool)

(assert (=> b!1416271 (=> (not res!952423) (not e!801598))))

(assert (=> b!1416271 (= res!952423 (and (= (size!47212 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47212 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47212 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!952421 () Bool)

(assert (=> start!122064 (=> (not res!952421) (not e!801598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122064 (= res!952421 (validMask!0 mask!2840))))

(assert (=> start!122064 e!801598))

(assert (=> start!122064 true))

(declare-fun array_inv!35606 (array!96668) Bool)

(assert (=> start!122064 (array_inv!35606 a!2901)))

(assert (= (and start!122064 res!952421) b!1416271))

(assert (= (and b!1416271 res!952423) b!1416270))

(assert (= (and b!1416270 res!952420) b!1416265))

(assert (= (and b!1416265 res!952416) b!1416267))

(assert (= (and b!1416267 res!952424) b!1416272))

(assert (= (and b!1416272 res!952418) b!1416274))

(assert (= (and b!1416274 (not res!952417)) b!1416268))

(assert (= (and b!1416268 (not res!952425)) b!1416266))

(assert (= (and b!1416266 (not res!952422)) b!1416273))

(assert (= (and b!1416273 (not res!952419)) b!1416269))

(declare-fun m!1307001 () Bool)

(assert (=> start!122064 m!1307001))

(declare-fun m!1307003 () Bool)

(assert (=> start!122064 m!1307003))

(declare-fun m!1307005 () Bool)

(assert (=> b!1416268 m!1307005))

(assert (=> b!1416268 m!1307005))

(declare-fun m!1307007 () Bool)

(assert (=> b!1416268 m!1307007))

(declare-fun m!1307009 () Bool)

(assert (=> b!1416268 m!1307009))

(declare-fun m!1307011 () Bool)

(assert (=> b!1416268 m!1307011))

(declare-fun m!1307013 () Bool)

(assert (=> b!1416269 m!1307013))

(declare-fun m!1307015 () Bool)

(assert (=> b!1416265 m!1307015))

(assert (=> b!1416265 m!1307015))

(declare-fun m!1307017 () Bool)

(assert (=> b!1416265 m!1307017))

(declare-fun m!1307019 () Bool)

(assert (=> b!1416273 m!1307019))

(declare-fun m!1307021 () Bool)

(assert (=> b!1416270 m!1307021))

(assert (=> b!1416270 m!1307021))

(declare-fun m!1307023 () Bool)

(assert (=> b!1416270 m!1307023))

(assert (=> b!1416274 m!1307015))

(declare-fun m!1307025 () Bool)

(assert (=> b!1416274 m!1307025))

(assert (=> b!1416274 m!1307015))

(declare-fun m!1307027 () Bool)

(assert (=> b!1416274 m!1307027))

(assert (=> b!1416274 m!1307015))

(declare-fun m!1307029 () Bool)

(assert (=> b!1416274 m!1307029))

(assert (=> b!1416274 m!1307015))

(declare-fun m!1307031 () Bool)

(assert (=> b!1416274 m!1307031))

(declare-fun m!1307033 () Bool)

(assert (=> b!1416274 m!1307033))

(assert (=> b!1416266 m!1307015))

(declare-fun m!1307035 () Bool)

(assert (=> b!1416266 m!1307035))

(declare-fun m!1307037 () Bool)

(assert (=> b!1416266 m!1307037))

(assert (=> b!1416266 m!1307015))

(declare-fun m!1307039 () Bool)

(assert (=> b!1416266 m!1307039))

(declare-fun m!1307041 () Bool)

(assert (=> b!1416266 m!1307041))

(assert (=> b!1416266 m!1307009))

(declare-fun m!1307043 () Bool)

(assert (=> b!1416272 m!1307043))

(declare-fun m!1307045 () Bool)

(assert (=> b!1416267 m!1307045))

(check-sat (not b!1416274) (not start!122064) (not b!1416273) (not b!1416270) (not b!1416266) (not b!1416272) (not b!1416268) (not b!1416269) (not b!1416265) (not b!1416267))
(check-sat)
