; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120476 () Bool)

(assert start!120476)

(declare-fun b!1402116 () Bool)

(declare-fun res!940741 () Bool)

(declare-fun e!794005 () Bool)

(assert (=> b!1402116 (=> (not res!940741) (not e!794005))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95803 0))(
  ( (array!95804 (arr!46248 (Array (_ BitVec 32) (_ BitVec 64))) (size!46799 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95803)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1402116 (= res!940741 (and (= (size!46799 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46799 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46799 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402117 () Bool)

(declare-fun e!794006 () Bool)

(assert (=> b!1402117 (= e!794005 (not e!794006))))

(declare-fun res!940739 () Bool)

(assert (=> b!1402117 (=> res!940739 e!794006)))

(declare-datatypes ((SeekEntryResult!10587 0))(
  ( (MissingZero!10587 (index!44724 (_ BitVec 32))) (Found!10587 (index!44725 (_ BitVec 32))) (Intermediate!10587 (undefined!11399 Bool) (index!44726 (_ BitVec 32)) (x!126353 (_ BitVec 32))) (Undefined!10587) (MissingVacant!10587 (index!44727 (_ BitVec 32))) )
))
(declare-fun lt!617427 () SeekEntryResult!10587)

(assert (=> b!1402117 (= res!940739 (or (not (is-Intermediate!10587 lt!617427)) (undefined!11399 lt!617427)))))

(declare-fun e!794004 () Bool)

(assert (=> b!1402117 e!794004))

(declare-fun res!940742 () Bool)

(assert (=> b!1402117 (=> (not res!940742) (not e!794004))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95803 (_ BitVec 32)) Bool)

(assert (=> b!1402117 (= res!940742 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47128 0))(
  ( (Unit!47129) )
))
(declare-fun lt!617424 () Unit!47128)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95803 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47128)

(assert (=> b!1402117 (= lt!617424 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!617426 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95803 (_ BitVec 32)) SeekEntryResult!10587)

(assert (=> b!1402117 (= lt!617427 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617426 (select (arr!46248 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402117 (= lt!617426 (toIndex!0 (select (arr!46248 a!2901) j!112) mask!2840))))

(declare-fun b!1402118 () Bool)

(declare-fun e!794000 () Bool)

(declare-fun e!794002 () Bool)

(assert (=> b!1402118 (= e!794000 e!794002)))

(declare-fun res!940737 () Bool)

(assert (=> b!1402118 (=> res!940737 e!794002)))

(declare-fun lt!617428 () SeekEntryResult!10587)

(assert (=> b!1402118 (= res!940737 (or (bvslt (x!126353 lt!617427) #b00000000000000000000000000000000) (bvsgt (x!126353 lt!617427) #b01111111111111111111111111111110) (bvslt (x!126353 lt!617428) #b00000000000000000000000000000000) (bvsgt (x!126353 lt!617428) #b01111111111111111111111111111110) (bvslt lt!617426 #b00000000000000000000000000000000) (bvsge lt!617426 (size!46799 a!2901)) (bvslt (index!44726 lt!617427) #b00000000000000000000000000000000) (bvsge (index!44726 lt!617427) (size!46799 a!2901)) (bvslt (index!44726 lt!617428) #b00000000000000000000000000000000) (bvsge (index!44726 lt!617428) (size!46799 a!2901)) (not (= lt!617427 (Intermediate!10587 false (index!44726 lt!617427) (x!126353 lt!617427)))) (not (= lt!617428 (Intermediate!10587 false (index!44726 lt!617428) (x!126353 lt!617428))))))))

(declare-fun e!794003 () Bool)

(assert (=> b!1402118 e!794003))

(declare-fun res!940743 () Bool)

(assert (=> b!1402118 (=> (not res!940743) (not e!794003))))

(assert (=> b!1402118 (= res!940743 (and (not (undefined!11399 lt!617428)) (= (index!44726 lt!617428) i!1037) (bvslt (x!126353 lt!617428) (x!126353 lt!617427)) (= (select (store (arr!46248 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44726 lt!617428)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!617429 () Unit!47128)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95803 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47128)

(assert (=> b!1402118 (= lt!617429 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617426 (x!126353 lt!617427) (index!44726 lt!617427) (x!126353 lt!617428) (index!44726 lt!617428) (undefined!11399 lt!617428) mask!2840))))

(declare-fun b!1402119 () Bool)

(declare-fun res!940738 () Bool)

(assert (=> b!1402119 (=> (not res!940738) (not e!794005))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402119 (= res!940738 (validKeyInArray!0 (select (arr!46248 a!2901) j!112)))))

(declare-fun b!1402120 () Bool)

(declare-fun res!940736 () Bool)

(assert (=> b!1402120 (=> (not res!940736) (not e!794005))))

(assert (=> b!1402120 (= res!940736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402121 () Bool)

(declare-fun res!940746 () Bool)

(assert (=> b!1402121 (=> (not res!940746) (not e!794005))))

(declare-datatypes ((List!32947 0))(
  ( (Nil!32944) (Cons!32943 (h!34191 (_ BitVec 64)) (t!47648 List!32947)) )
))
(declare-fun arrayNoDuplicates!0 (array!95803 (_ BitVec 32) List!32947) Bool)

(assert (=> b!1402121 (= res!940746 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32944))))

(declare-fun lt!617431 () (_ BitVec 64))

(declare-fun b!1402122 () Bool)

(declare-fun lt!617425 () array!95803)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95803 (_ BitVec 32)) SeekEntryResult!10587)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95803 (_ BitVec 32)) SeekEntryResult!10587)

(assert (=> b!1402122 (= e!794003 (= (seekEntryOrOpen!0 lt!617431 lt!617425 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126353 lt!617428) (index!44726 lt!617428) (index!44726 lt!617428) (select (arr!46248 a!2901) j!112) lt!617425 mask!2840)))))

(declare-fun res!940744 () Bool)

(assert (=> start!120476 (=> (not res!940744) (not e!794005))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120476 (= res!940744 (validMask!0 mask!2840))))

(assert (=> start!120476 e!794005))

(assert (=> start!120476 true))

(declare-fun array_inv!35193 (array!95803) Bool)

(assert (=> start!120476 (array_inv!35193 a!2901)))

(declare-fun b!1402123 () Bool)

(assert (=> b!1402123 (= e!794004 (= (seekEntryOrOpen!0 (select (arr!46248 a!2901) j!112) a!2901 mask!2840) (Found!10587 j!112)))))

(declare-fun b!1402124 () Bool)

(declare-fun res!940740 () Bool)

(assert (=> b!1402124 (=> (not res!940740) (not e!794005))))

(assert (=> b!1402124 (= res!940740 (validKeyInArray!0 (select (arr!46248 a!2901) i!1037)))))

(declare-fun b!1402125 () Bool)

(assert (=> b!1402125 (= e!794002 true)))

(declare-fun lt!617430 () SeekEntryResult!10587)

(assert (=> b!1402125 (= lt!617430 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617426 lt!617431 lt!617425 mask!2840))))

(declare-fun b!1402126 () Bool)

(assert (=> b!1402126 (= e!794006 e!794000)))

(declare-fun res!940745 () Bool)

(assert (=> b!1402126 (=> res!940745 e!794000)))

(assert (=> b!1402126 (= res!940745 (or (= lt!617427 lt!617428) (not (is-Intermediate!10587 lt!617428))))))

(assert (=> b!1402126 (= lt!617428 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617431 mask!2840) lt!617431 lt!617425 mask!2840))))

(assert (=> b!1402126 (= lt!617431 (select (store (arr!46248 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402126 (= lt!617425 (array!95804 (store (arr!46248 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46799 a!2901)))))

(assert (= (and start!120476 res!940744) b!1402116))

(assert (= (and b!1402116 res!940741) b!1402124))

(assert (= (and b!1402124 res!940740) b!1402119))

(assert (= (and b!1402119 res!940738) b!1402120))

(assert (= (and b!1402120 res!940736) b!1402121))

(assert (= (and b!1402121 res!940746) b!1402117))

(assert (= (and b!1402117 res!940742) b!1402123))

(assert (= (and b!1402117 (not res!940739)) b!1402126))

(assert (= (and b!1402126 (not res!940745)) b!1402118))

(assert (= (and b!1402118 res!940743) b!1402122))

(assert (= (and b!1402118 (not res!940737)) b!1402125))

(declare-fun m!1290213 () Bool)

(assert (=> b!1402122 m!1290213))

(declare-fun m!1290215 () Bool)

(assert (=> b!1402122 m!1290215))

(assert (=> b!1402122 m!1290215))

(declare-fun m!1290217 () Bool)

(assert (=> b!1402122 m!1290217))

(declare-fun m!1290219 () Bool)

(assert (=> b!1402121 m!1290219))

(declare-fun m!1290221 () Bool)

(assert (=> b!1402124 m!1290221))

(assert (=> b!1402124 m!1290221))

(declare-fun m!1290223 () Bool)

(assert (=> b!1402124 m!1290223))

(declare-fun m!1290225 () Bool)

(assert (=> b!1402126 m!1290225))

(assert (=> b!1402126 m!1290225))

(declare-fun m!1290227 () Bool)

(assert (=> b!1402126 m!1290227))

(declare-fun m!1290229 () Bool)

(assert (=> b!1402126 m!1290229))

(declare-fun m!1290231 () Bool)

(assert (=> b!1402126 m!1290231))

(assert (=> b!1402119 m!1290215))

(assert (=> b!1402119 m!1290215))

(declare-fun m!1290233 () Bool)

(assert (=> b!1402119 m!1290233))

(declare-fun m!1290235 () Bool)

(assert (=> start!120476 m!1290235))

(declare-fun m!1290237 () Bool)

(assert (=> start!120476 m!1290237))

(assert (=> b!1402123 m!1290215))

(assert (=> b!1402123 m!1290215))

(declare-fun m!1290239 () Bool)

(assert (=> b!1402123 m!1290239))

(assert (=> b!1402118 m!1290229))

(declare-fun m!1290241 () Bool)

(assert (=> b!1402118 m!1290241))

(declare-fun m!1290243 () Bool)

(assert (=> b!1402118 m!1290243))

(declare-fun m!1290245 () Bool)

(assert (=> b!1402120 m!1290245))

(assert (=> b!1402117 m!1290215))

(declare-fun m!1290247 () Bool)

(assert (=> b!1402117 m!1290247))

(assert (=> b!1402117 m!1290215))

(assert (=> b!1402117 m!1290215))

(declare-fun m!1290249 () Bool)

(assert (=> b!1402117 m!1290249))

(declare-fun m!1290251 () Bool)

(assert (=> b!1402117 m!1290251))

(declare-fun m!1290253 () Bool)

(assert (=> b!1402117 m!1290253))

(declare-fun m!1290255 () Bool)

(assert (=> b!1402125 m!1290255))

(push 1)

