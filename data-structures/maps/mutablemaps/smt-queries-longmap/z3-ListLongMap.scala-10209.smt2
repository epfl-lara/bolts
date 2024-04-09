; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120348 () Bool)

(assert start!120348)

(declare-fun b!1400004 () Bool)

(declare-fun res!938630 () Bool)

(declare-fun e!792661 () Bool)

(assert (=> b!1400004 (=> (not res!938630) (not e!792661))))

(declare-datatypes ((array!95675 0))(
  ( (array!95676 (arr!46184 (Array (_ BitVec 32) (_ BitVec 64))) (size!46735 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95675)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400004 (= res!938630 (validKeyInArray!0 (select (arr!46184 a!2901) i!1037)))))

(declare-fun res!938625 () Bool)

(assert (=> start!120348 (=> (not res!938625) (not e!792661))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120348 (= res!938625 (validMask!0 mask!2840))))

(assert (=> start!120348 e!792661))

(assert (=> start!120348 true))

(declare-fun array_inv!35129 (array!95675) Bool)

(assert (=> start!120348 (array_inv!35129 a!2901)))

(declare-fun b!1400005 () Bool)

(declare-fun res!938629 () Bool)

(assert (=> b!1400005 (=> (not res!938629) (not e!792661))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1400005 (= res!938629 (and (= (size!46735 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46735 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46735 a!2901)) (not (= i!1037 j!112))))))

(declare-fun e!792660 () Bool)

(declare-fun b!1400006 () Bool)

(declare-datatypes ((SeekEntryResult!10523 0))(
  ( (MissingZero!10523 (index!44468 (_ BitVec 32))) (Found!10523 (index!44469 (_ BitVec 32))) (Intermediate!10523 (undefined!11335 Bool) (index!44470 (_ BitVec 32)) (x!126121 (_ BitVec 32))) (Undefined!10523) (MissingVacant!10523 (index!44471 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95675 (_ BitVec 32)) SeekEntryResult!10523)

(assert (=> b!1400006 (= e!792660 (= (seekEntryOrOpen!0 (select (arr!46184 a!2901) j!112) a!2901 mask!2840) (Found!10523 j!112)))))

(declare-fun b!1400007 () Bool)

(declare-fun e!792657 () Bool)

(declare-fun e!792658 () Bool)

(assert (=> b!1400007 (= e!792657 e!792658)))

(declare-fun res!938634 () Bool)

(assert (=> b!1400007 (=> res!938634 e!792658)))

(declare-fun lt!615889 () SeekEntryResult!10523)

(declare-fun lt!615894 () SeekEntryResult!10523)

(get-info :version)

(assert (=> b!1400007 (= res!938634 (or (= lt!615889 lt!615894) (not ((_ is Intermediate!10523) lt!615894))))))

(declare-fun lt!615895 () array!95675)

(declare-fun lt!615888 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95675 (_ BitVec 32)) SeekEntryResult!10523)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400007 (= lt!615894 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615888 mask!2840) lt!615888 lt!615895 mask!2840))))

(assert (=> b!1400007 (= lt!615888 (select (store (arr!46184 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400007 (= lt!615895 (array!95676 (store (arr!46184 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46735 a!2901)))))

(declare-fun b!1400008 () Bool)

(declare-fun res!938627 () Bool)

(assert (=> b!1400008 (=> (not res!938627) (not e!792661))))

(assert (=> b!1400008 (= res!938627 (validKeyInArray!0 (select (arr!46184 a!2901) j!112)))))

(declare-fun b!1400009 () Bool)

(declare-fun res!938633 () Bool)

(assert (=> b!1400009 (=> (not res!938633) (not e!792661))))

(declare-datatypes ((List!32883 0))(
  ( (Nil!32880) (Cons!32879 (h!34127 (_ BitVec 64)) (t!47584 List!32883)) )
))
(declare-fun arrayNoDuplicates!0 (array!95675 (_ BitVec 32) List!32883) Bool)

(assert (=> b!1400009 (= res!938633 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32880))))

(declare-fun b!1400010 () Bool)

(declare-fun e!792656 () Bool)

(assert (=> b!1400010 (= e!792658 e!792656)))

(declare-fun res!938628 () Bool)

(assert (=> b!1400010 (=> res!938628 e!792656)))

(declare-fun lt!615893 () (_ BitVec 32))

(assert (=> b!1400010 (= res!938628 (or (bvslt (x!126121 lt!615889) #b00000000000000000000000000000000) (bvsgt (x!126121 lt!615889) #b01111111111111111111111111111110) (bvslt (x!126121 lt!615894) #b00000000000000000000000000000000) (bvsgt (x!126121 lt!615894) #b01111111111111111111111111111110) (bvslt lt!615893 #b00000000000000000000000000000000) (bvsge lt!615893 (size!46735 a!2901)) (bvslt (index!44470 lt!615889) #b00000000000000000000000000000000) (bvsge (index!44470 lt!615889) (size!46735 a!2901)) (bvslt (index!44470 lt!615894) #b00000000000000000000000000000000) (bvsge (index!44470 lt!615894) (size!46735 a!2901)) (not (= lt!615889 (Intermediate!10523 false (index!44470 lt!615889) (x!126121 lt!615889)))) (not (= lt!615894 (Intermediate!10523 false (index!44470 lt!615894) (x!126121 lt!615894))))))))

(declare-fun e!792662 () Bool)

(assert (=> b!1400010 e!792662))

(declare-fun res!938631 () Bool)

(assert (=> b!1400010 (=> (not res!938631) (not e!792662))))

(assert (=> b!1400010 (= res!938631 (and (not (undefined!11335 lt!615894)) (= (index!44470 lt!615894) i!1037) (bvslt (x!126121 lt!615894) (x!126121 lt!615889)) (= (select (store (arr!46184 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44470 lt!615894)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47000 0))(
  ( (Unit!47001) )
))
(declare-fun lt!615890 () Unit!47000)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95675 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47000)

(assert (=> b!1400010 (= lt!615890 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615893 (x!126121 lt!615889) (index!44470 lt!615889) (x!126121 lt!615894) (index!44470 lt!615894) (undefined!11335 lt!615894) mask!2840))))

(declare-fun b!1400011 () Bool)

(assert (=> b!1400011 (= e!792656 true)))

(declare-fun lt!615891 () SeekEntryResult!10523)

(assert (=> b!1400011 (= lt!615891 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615893 lt!615888 lt!615895 mask!2840))))

(declare-fun b!1400012 () Bool)

(assert (=> b!1400012 (= e!792661 (not e!792657))))

(declare-fun res!938632 () Bool)

(assert (=> b!1400012 (=> res!938632 e!792657)))

(assert (=> b!1400012 (= res!938632 (or (not ((_ is Intermediate!10523) lt!615889)) (undefined!11335 lt!615889)))))

(assert (=> b!1400012 e!792660))

(declare-fun res!938626 () Bool)

(assert (=> b!1400012 (=> (not res!938626) (not e!792660))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95675 (_ BitVec 32)) Bool)

(assert (=> b!1400012 (= res!938626 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!615892 () Unit!47000)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95675 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47000)

(assert (=> b!1400012 (= lt!615892 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1400012 (= lt!615889 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615893 (select (arr!46184 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1400012 (= lt!615893 (toIndex!0 (select (arr!46184 a!2901) j!112) mask!2840))))

(declare-fun b!1400013 () Bool)

(declare-fun res!938624 () Bool)

(assert (=> b!1400013 (=> (not res!938624) (not e!792661))))

(assert (=> b!1400013 (= res!938624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1400014 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95675 (_ BitVec 32)) SeekEntryResult!10523)

(assert (=> b!1400014 (= e!792662 (= (seekEntryOrOpen!0 lt!615888 lt!615895 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126121 lt!615894) (index!44470 lt!615894) (index!44470 lt!615894) (select (arr!46184 a!2901) j!112) lt!615895 mask!2840)))))

(assert (= (and start!120348 res!938625) b!1400005))

(assert (= (and b!1400005 res!938629) b!1400004))

(assert (= (and b!1400004 res!938630) b!1400008))

(assert (= (and b!1400008 res!938627) b!1400013))

(assert (= (and b!1400013 res!938624) b!1400009))

(assert (= (and b!1400009 res!938633) b!1400012))

(assert (= (and b!1400012 res!938626) b!1400006))

(assert (= (and b!1400012 (not res!938632)) b!1400007))

(assert (= (and b!1400007 (not res!938634)) b!1400010))

(assert (= (and b!1400010 res!938631) b!1400014))

(assert (= (and b!1400010 (not res!938628)) b!1400011))

(declare-fun m!1287397 () Bool)

(assert (=> b!1400008 m!1287397))

(assert (=> b!1400008 m!1287397))

(declare-fun m!1287399 () Bool)

(assert (=> b!1400008 m!1287399))

(declare-fun m!1287401 () Bool)

(assert (=> b!1400014 m!1287401))

(assert (=> b!1400014 m!1287397))

(assert (=> b!1400014 m!1287397))

(declare-fun m!1287403 () Bool)

(assert (=> b!1400014 m!1287403))

(declare-fun m!1287405 () Bool)

(assert (=> b!1400004 m!1287405))

(assert (=> b!1400004 m!1287405))

(declare-fun m!1287407 () Bool)

(assert (=> b!1400004 m!1287407))

(assert (=> b!1400012 m!1287397))

(declare-fun m!1287409 () Bool)

(assert (=> b!1400012 m!1287409))

(assert (=> b!1400012 m!1287397))

(assert (=> b!1400012 m!1287397))

(declare-fun m!1287411 () Bool)

(assert (=> b!1400012 m!1287411))

(declare-fun m!1287413 () Bool)

(assert (=> b!1400012 m!1287413))

(declare-fun m!1287415 () Bool)

(assert (=> b!1400012 m!1287415))

(declare-fun m!1287417 () Bool)

(assert (=> b!1400007 m!1287417))

(assert (=> b!1400007 m!1287417))

(declare-fun m!1287419 () Bool)

(assert (=> b!1400007 m!1287419))

(declare-fun m!1287421 () Bool)

(assert (=> b!1400007 m!1287421))

(declare-fun m!1287423 () Bool)

(assert (=> b!1400007 m!1287423))

(declare-fun m!1287425 () Bool)

(assert (=> b!1400009 m!1287425))

(assert (=> b!1400006 m!1287397))

(assert (=> b!1400006 m!1287397))

(declare-fun m!1287427 () Bool)

(assert (=> b!1400006 m!1287427))

(assert (=> b!1400010 m!1287421))

(declare-fun m!1287429 () Bool)

(assert (=> b!1400010 m!1287429))

(declare-fun m!1287431 () Bool)

(assert (=> b!1400010 m!1287431))

(declare-fun m!1287433 () Bool)

(assert (=> b!1400013 m!1287433))

(declare-fun m!1287435 () Bool)

(assert (=> start!120348 m!1287435))

(declare-fun m!1287437 () Bool)

(assert (=> start!120348 m!1287437))

(declare-fun m!1287439 () Bool)

(assert (=> b!1400011 m!1287439))

(check-sat (not start!120348) (not b!1400004) (not b!1400006) (not b!1400013) (not b!1400014) (not b!1400009) (not b!1400011) (not b!1400012) (not b!1400007) (not b!1400010) (not b!1400008))
(check-sat)
