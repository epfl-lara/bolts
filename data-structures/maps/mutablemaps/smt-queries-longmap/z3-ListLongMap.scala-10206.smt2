; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120330 () Bool)

(assert start!120330)

(declare-fun b!1399707 () Bool)

(declare-fun e!792473 () Bool)

(assert (=> b!1399707 (= e!792473 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95657 0))(
  ( (array!95658 (arr!46175 (Array (_ BitVec 32) (_ BitVec 64))) (size!46726 (_ BitVec 32))) )
))
(declare-fun lt!615678 () array!95657)

(declare-fun lt!615674 () (_ BitVec 64))

(declare-fun lt!615672 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10514 0))(
  ( (MissingZero!10514 (index!44432 (_ BitVec 32))) (Found!10514 (index!44433 (_ BitVec 32))) (Intermediate!10514 (undefined!11326 Bool) (index!44434 (_ BitVec 32)) (x!126088 (_ BitVec 32))) (Undefined!10514) (MissingVacant!10514 (index!44435 (_ BitVec 32))) )
))
(declare-fun lt!615673 () SeekEntryResult!10514)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95657 (_ BitVec 32)) SeekEntryResult!10514)

(assert (=> b!1399707 (= lt!615673 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615672 lt!615674 lt!615678 mask!2840))))

(declare-fun b!1399708 () Bool)

(declare-fun res!938328 () Bool)

(declare-fun e!792472 () Bool)

(assert (=> b!1399708 (=> (not res!938328) (not e!792472))))

(declare-fun a!2901 () array!95657)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399708 (= res!938328 (validKeyInArray!0 (select (arr!46175 a!2901) i!1037)))))

(declare-fun b!1399709 () Bool)

(declare-fun e!792471 () Bool)

(declare-fun e!792469 () Bool)

(assert (=> b!1399709 (= e!792471 e!792469)))

(declare-fun res!938330 () Bool)

(assert (=> b!1399709 (=> res!938330 e!792469)))

(declare-fun lt!615676 () SeekEntryResult!10514)

(declare-fun lt!615677 () SeekEntryResult!10514)

(get-info :version)

(assert (=> b!1399709 (= res!938330 (or (= lt!615676 lt!615677) (not ((_ is Intermediate!10514) lt!615677))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399709 (= lt!615677 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615674 mask!2840) lt!615674 lt!615678 mask!2840))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1399709 (= lt!615674 (select (store (arr!46175 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1399709 (= lt!615678 (array!95658 (store (arr!46175 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46726 a!2901)))))

(declare-fun b!1399710 () Bool)

(assert (=> b!1399710 (= e!792472 (not e!792471))))

(declare-fun res!938329 () Bool)

(assert (=> b!1399710 (=> res!938329 e!792471)))

(assert (=> b!1399710 (= res!938329 (or (not ((_ is Intermediate!10514) lt!615676)) (undefined!11326 lt!615676)))))

(declare-fun e!792467 () Bool)

(assert (=> b!1399710 e!792467))

(declare-fun res!938334 () Bool)

(assert (=> b!1399710 (=> (not res!938334) (not e!792467))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95657 (_ BitVec 32)) Bool)

(assert (=> b!1399710 (= res!938334 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46982 0))(
  ( (Unit!46983) )
))
(declare-fun lt!615675 () Unit!46982)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95657 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46982)

(assert (=> b!1399710 (= lt!615675 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1399710 (= lt!615676 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615672 (select (arr!46175 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1399710 (= lt!615672 (toIndex!0 (select (arr!46175 a!2901) j!112) mask!2840))))

(declare-fun b!1399711 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95657 (_ BitVec 32)) SeekEntryResult!10514)

(assert (=> b!1399711 (= e!792467 (= (seekEntryOrOpen!0 (select (arr!46175 a!2901) j!112) a!2901 mask!2840) (Found!10514 j!112)))))

(declare-fun b!1399712 () Bool)

(declare-fun res!938336 () Bool)

(assert (=> b!1399712 (=> (not res!938336) (not e!792472))))

(assert (=> b!1399712 (= res!938336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1399713 () Bool)

(declare-fun res!938333 () Bool)

(assert (=> b!1399713 (=> (not res!938333) (not e!792472))))

(assert (=> b!1399713 (= res!938333 (validKeyInArray!0 (select (arr!46175 a!2901) j!112)))))

(declare-fun e!792470 () Bool)

(declare-fun b!1399714 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95657 (_ BitVec 32)) SeekEntryResult!10514)

(assert (=> b!1399714 (= e!792470 (= (seekEntryOrOpen!0 lt!615674 lt!615678 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126088 lt!615677) (index!44434 lt!615677) (index!44434 lt!615677) (select (arr!46175 a!2901) j!112) lt!615678 mask!2840)))))

(declare-fun b!1399715 () Bool)

(declare-fun res!938331 () Bool)

(assert (=> b!1399715 (=> (not res!938331) (not e!792472))))

(declare-datatypes ((List!32874 0))(
  ( (Nil!32871) (Cons!32870 (h!34118 (_ BitVec 64)) (t!47575 List!32874)) )
))
(declare-fun arrayNoDuplicates!0 (array!95657 (_ BitVec 32) List!32874) Bool)

(assert (=> b!1399715 (= res!938331 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32871))))

(declare-fun res!938337 () Bool)

(assert (=> start!120330 (=> (not res!938337) (not e!792472))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120330 (= res!938337 (validMask!0 mask!2840))))

(assert (=> start!120330 e!792472))

(assert (=> start!120330 true))

(declare-fun array_inv!35120 (array!95657) Bool)

(assert (=> start!120330 (array_inv!35120 a!2901)))

(declare-fun b!1399716 () Bool)

(assert (=> b!1399716 (= e!792469 e!792473)))

(declare-fun res!938332 () Bool)

(assert (=> b!1399716 (=> res!938332 e!792473)))

(assert (=> b!1399716 (= res!938332 (or (bvslt (x!126088 lt!615676) #b00000000000000000000000000000000) (bvsgt (x!126088 lt!615676) #b01111111111111111111111111111110) (bvslt (x!126088 lt!615677) #b00000000000000000000000000000000) (bvsgt (x!126088 lt!615677) #b01111111111111111111111111111110) (bvslt lt!615672 #b00000000000000000000000000000000) (bvsge lt!615672 (size!46726 a!2901)) (bvslt (index!44434 lt!615676) #b00000000000000000000000000000000) (bvsge (index!44434 lt!615676) (size!46726 a!2901)) (bvslt (index!44434 lt!615677) #b00000000000000000000000000000000) (bvsge (index!44434 lt!615677) (size!46726 a!2901)) (not (= lt!615676 (Intermediate!10514 false (index!44434 lt!615676) (x!126088 lt!615676)))) (not (= lt!615677 (Intermediate!10514 false (index!44434 lt!615677) (x!126088 lt!615677))))))))

(assert (=> b!1399716 e!792470))

(declare-fun res!938327 () Bool)

(assert (=> b!1399716 (=> (not res!938327) (not e!792470))))

(assert (=> b!1399716 (= res!938327 (and (not (undefined!11326 lt!615677)) (= (index!44434 lt!615677) i!1037) (bvslt (x!126088 lt!615677) (x!126088 lt!615676)) (= (select (store (arr!46175 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44434 lt!615677)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!615679 () Unit!46982)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95657 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46982)

(assert (=> b!1399716 (= lt!615679 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615672 (x!126088 lt!615676) (index!44434 lt!615676) (x!126088 lt!615677) (index!44434 lt!615677) (undefined!11326 lt!615677) mask!2840))))

(declare-fun b!1399717 () Bool)

(declare-fun res!938335 () Bool)

(assert (=> b!1399717 (=> (not res!938335) (not e!792472))))

(assert (=> b!1399717 (= res!938335 (and (= (size!46726 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46726 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46726 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120330 res!938337) b!1399717))

(assert (= (and b!1399717 res!938335) b!1399708))

(assert (= (and b!1399708 res!938328) b!1399713))

(assert (= (and b!1399713 res!938333) b!1399712))

(assert (= (and b!1399712 res!938336) b!1399715))

(assert (= (and b!1399715 res!938331) b!1399710))

(assert (= (and b!1399710 res!938334) b!1399711))

(assert (= (and b!1399710 (not res!938329)) b!1399709))

(assert (= (and b!1399709 (not res!938330)) b!1399716))

(assert (= (and b!1399716 res!938327) b!1399714))

(assert (= (and b!1399716 (not res!938332)) b!1399707))

(declare-fun m!1287001 () Bool)

(assert (=> b!1399711 m!1287001))

(assert (=> b!1399711 m!1287001))

(declare-fun m!1287003 () Bool)

(assert (=> b!1399711 m!1287003))

(assert (=> b!1399713 m!1287001))

(assert (=> b!1399713 m!1287001))

(declare-fun m!1287005 () Bool)

(assert (=> b!1399713 m!1287005))

(declare-fun m!1287007 () Bool)

(assert (=> b!1399707 m!1287007))

(declare-fun m!1287009 () Bool)

(assert (=> b!1399709 m!1287009))

(assert (=> b!1399709 m!1287009))

(declare-fun m!1287011 () Bool)

(assert (=> b!1399709 m!1287011))

(declare-fun m!1287013 () Bool)

(assert (=> b!1399709 m!1287013))

(declare-fun m!1287015 () Bool)

(assert (=> b!1399709 m!1287015))

(declare-fun m!1287017 () Bool)

(assert (=> b!1399715 m!1287017))

(assert (=> b!1399710 m!1287001))

(declare-fun m!1287019 () Bool)

(assert (=> b!1399710 m!1287019))

(assert (=> b!1399710 m!1287001))

(declare-fun m!1287021 () Bool)

(assert (=> b!1399710 m!1287021))

(declare-fun m!1287023 () Bool)

(assert (=> b!1399710 m!1287023))

(assert (=> b!1399710 m!1287001))

(declare-fun m!1287025 () Bool)

(assert (=> b!1399710 m!1287025))

(declare-fun m!1287027 () Bool)

(assert (=> b!1399714 m!1287027))

(assert (=> b!1399714 m!1287001))

(assert (=> b!1399714 m!1287001))

(declare-fun m!1287029 () Bool)

(assert (=> b!1399714 m!1287029))

(declare-fun m!1287031 () Bool)

(assert (=> start!120330 m!1287031))

(declare-fun m!1287033 () Bool)

(assert (=> start!120330 m!1287033))

(assert (=> b!1399716 m!1287013))

(declare-fun m!1287035 () Bool)

(assert (=> b!1399716 m!1287035))

(declare-fun m!1287037 () Bool)

(assert (=> b!1399716 m!1287037))

(declare-fun m!1287039 () Bool)

(assert (=> b!1399712 m!1287039))

(declare-fun m!1287041 () Bool)

(assert (=> b!1399708 m!1287041))

(assert (=> b!1399708 m!1287041))

(declare-fun m!1287043 () Bool)

(assert (=> b!1399708 m!1287043))

(check-sat (not b!1399709) (not b!1399715) (not b!1399716) (not b!1399713) (not b!1399710) (not b!1399708) (not b!1399711) (not b!1399714) (not b!1399712) (not start!120330) (not b!1399707))
(check-sat)
