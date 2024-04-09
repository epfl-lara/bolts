; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122816 () Bool)

(assert start!122816)

(declare-fun b!1423177 () Bool)

(declare-fun e!804487 () Bool)

(declare-fun e!804484 () Bool)

(assert (=> b!1423177 (= e!804487 e!804484)))

(declare-fun res!958722 () Bool)

(assert (=> b!1423177 (=> (not res!958722) (not e!804484))))

(declare-datatypes ((SeekEntryResult!11170 0))(
  ( (MissingZero!11170 (index!47071 (_ BitVec 32))) (Found!11170 (index!47072 (_ BitVec 32))) (Intermediate!11170 (undefined!11982 Bool) (index!47073 (_ BitVec 32)) (x!128711 (_ BitVec 32))) (Undefined!11170) (MissingVacant!11170 (index!47074 (_ BitVec 32))) )
))
(declare-fun lt!626977 () SeekEntryResult!11170)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97099 0))(
  ( (array!97100 (arr!46863 (Array (_ BitVec 32) (_ BitVec 64))) (size!47414 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97099)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97099 (_ BitVec 32)) SeekEntryResult!11170)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423177 (= res!958722 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46863 a!2831) j!81) mask!2608) (select (arr!46863 a!2831) j!81) a!2831 mask!2608) lt!626977))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1423177 (= lt!626977 (Intermediate!11170 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1423178 () Bool)

(declare-fun res!958731 () Bool)

(declare-fun e!804482 () Bool)

(assert (=> b!1423178 (=> res!958731 e!804482)))

(declare-fun lt!626980 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1423178 (= res!958731 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626980 (select (arr!46863 a!2831) j!81) a!2831 mask!2608) lt!626977)))))

(declare-fun b!1423179 () Bool)

(declare-fun res!958732 () Bool)

(assert (=> b!1423179 (=> (not res!958732) (not e!804487))))

(declare-datatypes ((List!33553 0))(
  ( (Nil!33550) (Cons!33549 (h!34851 (_ BitVec 64)) (t!48254 List!33553)) )
))
(declare-fun arrayNoDuplicates!0 (array!97099 (_ BitVec 32) List!33553) Bool)

(assert (=> b!1423179 (= res!958732 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33550))))

(declare-fun b!1423180 () Bool)

(declare-fun res!958729 () Bool)

(declare-fun e!804488 () Bool)

(assert (=> b!1423180 (=> (not res!958729) (not e!804488))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1423180 (= res!958729 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1423181 () Bool)

(declare-fun res!958721 () Bool)

(assert (=> b!1423181 (=> (not res!958721) (not e!804487))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97099 (_ BitVec 32)) Bool)

(assert (=> b!1423181 (= res!958721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1423182 () Bool)

(declare-fun res!958719 () Bool)

(assert (=> b!1423182 (=> (not res!958719) (not e!804487))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1423182 (= res!958719 (validKeyInArray!0 (select (arr!46863 a!2831) j!81)))))

(declare-fun b!1423183 () Bool)

(declare-fun e!804485 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97099 (_ BitVec 32)) SeekEntryResult!11170)

(assert (=> b!1423183 (= e!804485 (= (seekEntryOrOpen!0 (select (arr!46863 a!2831) j!81) a!2831 mask!2608) (Found!11170 j!81)))))

(declare-fun b!1423184 () Bool)

(assert (=> b!1423184 (= e!804482 true)))

(declare-fun lt!626976 () (_ BitVec 64))

(declare-fun lt!626975 () SeekEntryResult!11170)

(declare-fun lt!626978 () array!97099)

(assert (=> b!1423184 (= lt!626975 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626980 lt!626976 lt!626978 mask!2608))))

(declare-fun res!958724 () Bool)

(assert (=> start!122816 (=> (not res!958724) (not e!804487))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122816 (= res!958724 (validMask!0 mask!2608))))

(assert (=> start!122816 e!804487))

(assert (=> start!122816 true))

(declare-fun array_inv!35808 (array!97099) Bool)

(assert (=> start!122816 (array_inv!35808 a!2831)))

(declare-fun b!1423185 () Bool)

(assert (=> b!1423185 (= e!804484 e!804488)))

(declare-fun res!958727 () Bool)

(assert (=> b!1423185 (=> (not res!958727) (not e!804488))))

(declare-fun lt!626979 () SeekEntryResult!11170)

(assert (=> b!1423185 (= res!958727 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626976 mask!2608) lt!626976 lt!626978 mask!2608) lt!626979))))

(assert (=> b!1423185 (= lt!626979 (Intermediate!11170 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1423185 (= lt!626976 (select (store (arr!46863 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1423185 (= lt!626978 (array!97100 (store (arr!46863 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47414 a!2831)))))

(declare-fun b!1423186 () Bool)

(declare-fun res!958733 () Bool)

(assert (=> b!1423186 (=> (not res!958733) (not e!804487))))

(assert (=> b!1423186 (= res!958733 (and (= (size!47414 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47414 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47414 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1423187 () Bool)

(declare-fun res!958734 () Bool)

(assert (=> b!1423187 (=> (not res!958734) (not e!804488))))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1423187 (= res!958734 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626976 lt!626978 mask!2608) lt!626979))))

(declare-fun b!1423188 () Bool)

(declare-fun res!958728 () Bool)

(assert (=> b!1423188 (=> (not res!958728) (not e!804488))))

(assert (=> b!1423188 (= res!958728 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46863 a!2831) j!81) a!2831 mask!2608) lt!626977))))

(declare-fun b!1423189 () Bool)

(declare-fun e!804483 () Bool)

(assert (=> b!1423189 (= e!804483 e!804482)))

(declare-fun res!958730 () Bool)

(assert (=> b!1423189 (=> res!958730 e!804482)))

(assert (=> b!1423189 (= res!958730 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626980 #b00000000000000000000000000000000) (bvsge lt!626980 (size!47414 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423189 (= lt!626980 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1423190 () Bool)

(declare-fun res!958720 () Bool)

(assert (=> b!1423190 (=> (not res!958720) (not e!804487))))

(assert (=> b!1423190 (= res!958720 (validKeyInArray!0 (select (arr!46863 a!2831) i!982)))))

(declare-fun b!1423191 () Bool)

(declare-fun res!958726 () Bool)

(assert (=> b!1423191 (=> (not res!958726) (not e!804487))))

(assert (=> b!1423191 (= res!958726 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47414 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47414 a!2831))))))

(declare-fun b!1423192 () Bool)

(assert (=> b!1423192 (= e!804488 (not e!804483))))

(declare-fun res!958723 () Bool)

(assert (=> b!1423192 (=> res!958723 e!804483)))

(assert (=> b!1423192 (= res!958723 (or (= (select (arr!46863 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46863 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46863 a!2831) index!585) (select (arr!46863 a!2831) j!81)) (= (select (store (arr!46863 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1423192 e!804485))

(declare-fun res!958725 () Bool)

(assert (=> b!1423192 (=> (not res!958725) (not e!804485))))

(assert (=> b!1423192 (= res!958725 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48124 0))(
  ( (Unit!48125) )
))
(declare-fun lt!626974 () Unit!48124)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97099 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48124)

(assert (=> b!1423192 (= lt!626974 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (= (and start!122816 res!958724) b!1423186))

(assert (= (and b!1423186 res!958733) b!1423190))

(assert (= (and b!1423190 res!958720) b!1423182))

(assert (= (and b!1423182 res!958719) b!1423181))

(assert (= (and b!1423181 res!958721) b!1423179))

(assert (= (and b!1423179 res!958732) b!1423191))

(assert (= (and b!1423191 res!958726) b!1423177))

(assert (= (and b!1423177 res!958722) b!1423185))

(assert (= (and b!1423185 res!958727) b!1423188))

(assert (= (and b!1423188 res!958728) b!1423187))

(assert (= (and b!1423187 res!958734) b!1423180))

(assert (= (and b!1423180 res!958729) b!1423192))

(assert (= (and b!1423192 res!958725) b!1423183))

(assert (= (and b!1423192 (not res!958723)) b!1423189))

(assert (= (and b!1423189 (not res!958730)) b!1423178))

(assert (= (and b!1423178 (not res!958731)) b!1423184))

(declare-fun m!1313783 () Bool)

(assert (=> b!1423183 m!1313783))

(assert (=> b!1423183 m!1313783))

(declare-fun m!1313785 () Bool)

(assert (=> b!1423183 m!1313785))

(assert (=> b!1423177 m!1313783))

(assert (=> b!1423177 m!1313783))

(declare-fun m!1313787 () Bool)

(assert (=> b!1423177 m!1313787))

(assert (=> b!1423177 m!1313787))

(assert (=> b!1423177 m!1313783))

(declare-fun m!1313789 () Bool)

(assert (=> b!1423177 m!1313789))

(declare-fun m!1313791 () Bool)

(assert (=> start!122816 m!1313791))

(declare-fun m!1313793 () Bool)

(assert (=> start!122816 m!1313793))

(declare-fun m!1313795 () Bool)

(assert (=> b!1423185 m!1313795))

(assert (=> b!1423185 m!1313795))

(declare-fun m!1313797 () Bool)

(assert (=> b!1423185 m!1313797))

(declare-fun m!1313799 () Bool)

(assert (=> b!1423185 m!1313799))

(declare-fun m!1313801 () Bool)

(assert (=> b!1423185 m!1313801))

(declare-fun m!1313803 () Bool)

(assert (=> b!1423189 m!1313803))

(assert (=> b!1423192 m!1313799))

(declare-fun m!1313805 () Bool)

(assert (=> b!1423192 m!1313805))

(declare-fun m!1313807 () Bool)

(assert (=> b!1423192 m!1313807))

(declare-fun m!1313809 () Bool)

(assert (=> b!1423192 m!1313809))

(assert (=> b!1423192 m!1313783))

(declare-fun m!1313811 () Bool)

(assert (=> b!1423192 m!1313811))

(declare-fun m!1313813 () Bool)

(assert (=> b!1423179 m!1313813))

(declare-fun m!1313815 () Bool)

(assert (=> b!1423190 m!1313815))

(assert (=> b!1423190 m!1313815))

(declare-fun m!1313817 () Bool)

(assert (=> b!1423190 m!1313817))

(declare-fun m!1313819 () Bool)

(assert (=> b!1423184 m!1313819))

(declare-fun m!1313821 () Bool)

(assert (=> b!1423187 m!1313821))

(declare-fun m!1313823 () Bool)

(assert (=> b!1423181 m!1313823))

(assert (=> b!1423188 m!1313783))

(assert (=> b!1423188 m!1313783))

(declare-fun m!1313825 () Bool)

(assert (=> b!1423188 m!1313825))

(assert (=> b!1423178 m!1313783))

(assert (=> b!1423178 m!1313783))

(declare-fun m!1313827 () Bool)

(assert (=> b!1423178 m!1313827))

(assert (=> b!1423182 m!1313783))

(assert (=> b!1423182 m!1313783))

(declare-fun m!1313829 () Bool)

(assert (=> b!1423182 m!1313829))

(push 1)

