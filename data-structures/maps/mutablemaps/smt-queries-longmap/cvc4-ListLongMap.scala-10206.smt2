; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120332 () Bool)

(assert start!120332)

(declare-fun b!1399740 () Bool)

(declare-fun res!938366 () Bool)

(declare-fun e!792493 () Bool)

(assert (=> b!1399740 (=> (not res!938366) (not e!792493))))

(declare-datatypes ((array!95659 0))(
  ( (array!95660 (arr!46176 (Array (_ BitVec 32) (_ BitVec 64))) (size!46727 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95659)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399740 (= res!938366 (validKeyInArray!0 (select (arr!46176 a!2901) j!112)))))

(declare-fun b!1399741 () Bool)

(declare-fun e!792488 () Bool)

(assert (=> b!1399741 (= e!792493 (not e!792488))))

(declare-fun res!938361 () Bool)

(assert (=> b!1399741 (=> res!938361 e!792488)))

(declare-datatypes ((SeekEntryResult!10515 0))(
  ( (MissingZero!10515 (index!44436 (_ BitVec 32))) (Found!10515 (index!44437 (_ BitVec 32))) (Intermediate!10515 (undefined!11327 Bool) (index!44438 (_ BitVec 32)) (x!126089 (_ BitVec 32))) (Undefined!10515) (MissingVacant!10515 (index!44439 (_ BitVec 32))) )
))
(declare-fun lt!615697 () SeekEntryResult!10515)

(assert (=> b!1399741 (= res!938361 (or (not (is-Intermediate!10515 lt!615697)) (undefined!11327 lt!615697)))))

(declare-fun e!792490 () Bool)

(assert (=> b!1399741 e!792490))

(declare-fun res!938364 () Bool)

(assert (=> b!1399741 (=> (not res!938364) (not e!792490))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95659 (_ BitVec 32)) Bool)

(assert (=> b!1399741 (= res!938364 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46984 0))(
  ( (Unit!46985) )
))
(declare-fun lt!615701 () Unit!46984)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95659 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46984)

(assert (=> b!1399741 (= lt!615701 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!615702 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95659 (_ BitVec 32)) SeekEntryResult!10515)

(assert (=> b!1399741 (= lt!615697 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615702 (select (arr!46176 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399741 (= lt!615702 (toIndex!0 (select (arr!46176 a!2901) j!112) mask!2840))))

(declare-fun b!1399742 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95659 (_ BitVec 32)) SeekEntryResult!10515)

(assert (=> b!1399742 (= e!792490 (= (seekEntryOrOpen!0 (select (arr!46176 a!2901) j!112) a!2901 mask!2840) (Found!10515 j!112)))))

(declare-fun res!938360 () Bool)

(assert (=> start!120332 (=> (not res!938360) (not e!792493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120332 (= res!938360 (validMask!0 mask!2840))))

(assert (=> start!120332 e!792493))

(assert (=> start!120332 true))

(declare-fun array_inv!35121 (array!95659) Bool)

(assert (=> start!120332 (array_inv!35121 a!2901)))

(declare-fun b!1399743 () Bool)

(declare-fun res!938365 () Bool)

(assert (=> b!1399743 (=> (not res!938365) (not e!792493))))

(assert (=> b!1399743 (= res!938365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1399744 () Bool)

(declare-fun e!792494 () Bool)

(declare-fun e!792491 () Bool)

(assert (=> b!1399744 (= e!792494 e!792491)))

(declare-fun res!938368 () Bool)

(assert (=> b!1399744 (=> res!938368 e!792491)))

(declare-fun lt!615698 () SeekEntryResult!10515)

(assert (=> b!1399744 (= res!938368 (or (bvslt (x!126089 lt!615697) #b00000000000000000000000000000000) (bvsgt (x!126089 lt!615697) #b01111111111111111111111111111110) (bvslt (x!126089 lt!615698) #b00000000000000000000000000000000) (bvsgt (x!126089 lt!615698) #b01111111111111111111111111111110) (bvslt lt!615702 #b00000000000000000000000000000000) (bvsge lt!615702 (size!46727 a!2901)) (bvslt (index!44438 lt!615697) #b00000000000000000000000000000000) (bvsge (index!44438 lt!615697) (size!46727 a!2901)) (bvslt (index!44438 lt!615698) #b00000000000000000000000000000000) (bvsge (index!44438 lt!615698) (size!46727 a!2901)) (not (= lt!615697 (Intermediate!10515 false (index!44438 lt!615697) (x!126089 lt!615697)))) (not (= lt!615698 (Intermediate!10515 false (index!44438 lt!615698) (x!126089 lt!615698))))))))

(declare-fun e!792492 () Bool)

(assert (=> b!1399744 e!792492))

(declare-fun res!938369 () Bool)

(assert (=> b!1399744 (=> (not res!938369) (not e!792492))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1399744 (= res!938369 (and (not (undefined!11327 lt!615698)) (= (index!44438 lt!615698) i!1037) (bvslt (x!126089 lt!615698) (x!126089 lt!615697)) (= (select (store (arr!46176 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44438 lt!615698)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!615703 () Unit!46984)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95659 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46984)

(assert (=> b!1399744 (= lt!615703 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615702 (x!126089 lt!615697) (index!44438 lt!615697) (x!126089 lt!615698) (index!44438 lt!615698) (undefined!11327 lt!615698) mask!2840))))

(declare-fun b!1399745 () Bool)

(assert (=> b!1399745 (= e!792491 true)))

(declare-fun lt!615700 () (_ BitVec 64))

(declare-fun lt!615696 () SeekEntryResult!10515)

(declare-fun lt!615699 () array!95659)

(assert (=> b!1399745 (= lt!615696 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615702 lt!615700 lt!615699 mask!2840))))

(declare-fun b!1399746 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95659 (_ BitVec 32)) SeekEntryResult!10515)

(assert (=> b!1399746 (= e!792492 (= (seekEntryOrOpen!0 lt!615700 lt!615699 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126089 lt!615698) (index!44438 lt!615698) (index!44438 lt!615698) (select (arr!46176 a!2901) j!112) lt!615699 mask!2840)))))

(declare-fun b!1399747 () Bool)

(assert (=> b!1399747 (= e!792488 e!792494)))

(declare-fun res!938370 () Bool)

(assert (=> b!1399747 (=> res!938370 e!792494)))

(assert (=> b!1399747 (= res!938370 (or (= lt!615697 lt!615698) (not (is-Intermediate!10515 lt!615698))))))

(assert (=> b!1399747 (= lt!615698 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615700 mask!2840) lt!615700 lt!615699 mask!2840))))

(assert (=> b!1399747 (= lt!615700 (select (store (arr!46176 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1399747 (= lt!615699 (array!95660 (store (arr!46176 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46727 a!2901)))))

(declare-fun b!1399748 () Bool)

(declare-fun res!938367 () Bool)

(assert (=> b!1399748 (=> (not res!938367) (not e!792493))))

(assert (=> b!1399748 (= res!938367 (and (= (size!46727 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46727 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46727 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1399749 () Bool)

(declare-fun res!938363 () Bool)

(assert (=> b!1399749 (=> (not res!938363) (not e!792493))))

(assert (=> b!1399749 (= res!938363 (validKeyInArray!0 (select (arr!46176 a!2901) i!1037)))))

(declare-fun b!1399750 () Bool)

(declare-fun res!938362 () Bool)

(assert (=> b!1399750 (=> (not res!938362) (not e!792493))))

(declare-datatypes ((List!32875 0))(
  ( (Nil!32872) (Cons!32871 (h!34119 (_ BitVec 64)) (t!47576 List!32875)) )
))
(declare-fun arrayNoDuplicates!0 (array!95659 (_ BitVec 32) List!32875) Bool)

(assert (=> b!1399750 (= res!938362 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32872))))

(assert (= (and start!120332 res!938360) b!1399748))

(assert (= (and b!1399748 res!938367) b!1399749))

(assert (= (and b!1399749 res!938363) b!1399740))

(assert (= (and b!1399740 res!938366) b!1399743))

(assert (= (and b!1399743 res!938365) b!1399750))

(assert (= (and b!1399750 res!938362) b!1399741))

(assert (= (and b!1399741 res!938364) b!1399742))

(assert (= (and b!1399741 (not res!938361)) b!1399747))

(assert (= (and b!1399747 (not res!938370)) b!1399744))

(assert (= (and b!1399744 res!938369) b!1399746))

(assert (= (and b!1399744 (not res!938368)) b!1399745))

(declare-fun m!1287045 () Bool)

(assert (=> b!1399746 m!1287045))

(declare-fun m!1287047 () Bool)

(assert (=> b!1399746 m!1287047))

(assert (=> b!1399746 m!1287047))

(declare-fun m!1287049 () Bool)

(assert (=> b!1399746 m!1287049))

(declare-fun m!1287051 () Bool)

(assert (=> b!1399747 m!1287051))

(assert (=> b!1399747 m!1287051))

(declare-fun m!1287053 () Bool)

(assert (=> b!1399747 m!1287053))

(declare-fun m!1287055 () Bool)

(assert (=> b!1399747 m!1287055))

(declare-fun m!1287057 () Bool)

(assert (=> b!1399747 m!1287057))

(assert (=> b!1399742 m!1287047))

(assert (=> b!1399742 m!1287047))

(declare-fun m!1287059 () Bool)

(assert (=> b!1399742 m!1287059))

(assert (=> b!1399740 m!1287047))

(assert (=> b!1399740 m!1287047))

(declare-fun m!1287061 () Bool)

(assert (=> b!1399740 m!1287061))

(assert (=> b!1399744 m!1287055))

(declare-fun m!1287063 () Bool)

(assert (=> b!1399744 m!1287063))

(declare-fun m!1287065 () Bool)

(assert (=> b!1399744 m!1287065))

(declare-fun m!1287067 () Bool)

(assert (=> b!1399745 m!1287067))

(declare-fun m!1287069 () Bool)

(assert (=> b!1399749 m!1287069))

(assert (=> b!1399749 m!1287069))

(declare-fun m!1287071 () Bool)

(assert (=> b!1399749 m!1287071))

(assert (=> b!1399741 m!1287047))

(declare-fun m!1287073 () Bool)

(assert (=> b!1399741 m!1287073))

(assert (=> b!1399741 m!1287047))

(assert (=> b!1399741 m!1287047))

(declare-fun m!1287075 () Bool)

(assert (=> b!1399741 m!1287075))

(declare-fun m!1287077 () Bool)

(assert (=> b!1399741 m!1287077))

(declare-fun m!1287079 () Bool)

(assert (=> b!1399741 m!1287079))

(declare-fun m!1287081 () Bool)

(assert (=> b!1399750 m!1287081))

(declare-fun m!1287083 () Bool)

(assert (=> b!1399743 m!1287083))

(declare-fun m!1287085 () Bool)

(assert (=> start!120332 m!1287085))

(declare-fun m!1287087 () Bool)

(assert (=> start!120332 m!1287087))

(push 1)

