; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122774 () Bool)

(assert start!122774)

(declare-fun b!1422169 () Bool)

(declare-fun res!957720 () Bool)

(declare-fun e!804044 () Bool)

(assert (=> b!1422169 (=> (not res!957720) (not e!804044))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1422169 (= res!957720 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1422170 () Bool)

(declare-fun e!804041 () Bool)

(assert (=> b!1422170 (= e!804041 true)))

(declare-fun lt!626536 () (_ BitVec 64))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97057 0))(
  ( (array!97058 (arr!46842 (Array (_ BitVec 32) (_ BitVec 64))) (size!47393 (_ BitVec 32))) )
))
(declare-fun lt!626534 () array!97057)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!626539 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11149 0))(
  ( (MissingZero!11149 (index!46987 (_ BitVec 32))) (Found!11149 (index!46988 (_ BitVec 32))) (Intermediate!11149 (undefined!11961 Bool) (index!46989 (_ BitVec 32)) (x!128634 (_ BitVec 32))) (Undefined!11149) (MissingVacant!11149 (index!46990 (_ BitVec 32))) )
))
(declare-fun lt!626538 () SeekEntryResult!11149)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97057 (_ BitVec 32)) SeekEntryResult!11149)

(assert (=> b!1422170 (= lt!626538 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626539 lt!626536 lt!626534 mask!2608))))

(declare-fun b!1422172 () Bool)

(declare-fun res!957715 () Bool)

(declare-fun e!804046 () Bool)

(assert (=> b!1422172 (=> (not res!957715) (not e!804046))))

(declare-fun a!2831 () array!97057)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1422172 (= res!957715 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47393 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47393 a!2831))))))

(declare-fun b!1422173 () Bool)

(declare-fun res!957716 () Bool)

(assert (=> b!1422173 (=> (not res!957716) (not e!804046))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1422173 (= res!957716 (and (= (size!47393 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47393 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47393 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1422174 () Bool)

(declare-fun e!804047 () Bool)

(assert (=> b!1422174 (= e!804047 e!804044)))

(declare-fun res!957726 () Bool)

(assert (=> b!1422174 (=> (not res!957726) (not e!804044))))

(declare-fun lt!626537 () SeekEntryResult!11149)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422174 (= res!957726 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626536 mask!2608) lt!626536 lt!626534 mask!2608) lt!626537))))

(assert (=> b!1422174 (= lt!626537 (Intermediate!11149 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1422174 (= lt!626536 (select (store (arr!46842 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1422174 (= lt!626534 (array!97058 (store (arr!46842 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47393 a!2831)))))

(declare-fun b!1422175 () Bool)

(declare-fun e!804045 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97057 (_ BitVec 32)) SeekEntryResult!11149)

(assert (=> b!1422175 (= e!804045 (= (seekEntryOrOpen!0 (select (arr!46842 a!2831) j!81) a!2831 mask!2608) (Found!11149 j!81)))))

(declare-fun b!1422176 () Bool)

(declare-fun res!957713 () Bool)

(assert (=> b!1422176 (=> (not res!957713) (not e!804044))))

(declare-fun lt!626533 () SeekEntryResult!11149)

(assert (=> b!1422176 (= res!957713 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46842 a!2831) j!81) a!2831 mask!2608) lt!626533))))

(declare-fun b!1422177 () Bool)

(assert (=> b!1422177 (= e!804046 e!804047)))

(declare-fun res!957722 () Bool)

(assert (=> b!1422177 (=> (not res!957722) (not e!804047))))

(assert (=> b!1422177 (= res!957722 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46842 a!2831) j!81) mask!2608) (select (arr!46842 a!2831) j!81) a!2831 mask!2608) lt!626533))))

(assert (=> b!1422177 (= lt!626533 (Intermediate!11149 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1422178 () Bool)

(declare-fun res!957719 () Bool)

(assert (=> b!1422178 (=> (not res!957719) (not e!804046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97057 (_ BitVec 32)) Bool)

(assert (=> b!1422178 (= res!957719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1422179 () Bool)

(declare-fun e!804043 () Bool)

(assert (=> b!1422179 (= e!804043 e!804041)))

(declare-fun res!957711 () Bool)

(assert (=> b!1422179 (=> res!957711 e!804041)))

(assert (=> b!1422179 (= res!957711 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626539 #b00000000000000000000000000000000) (bvsge lt!626539 (size!47393 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422179 (= lt!626539 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1422180 () Bool)

(declare-fun res!957724 () Bool)

(assert (=> b!1422180 (=> (not res!957724) (not e!804046))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1422180 (= res!957724 (validKeyInArray!0 (select (arr!46842 a!2831) j!81)))))

(declare-fun b!1422181 () Bool)

(assert (=> b!1422181 (= e!804044 (not e!804043))))

(declare-fun res!957718 () Bool)

(assert (=> b!1422181 (=> res!957718 e!804043)))

(assert (=> b!1422181 (= res!957718 (or (= (select (arr!46842 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46842 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46842 a!2831) index!585) (select (arr!46842 a!2831) j!81)) (= (select (store (arr!46842 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1422181 e!804045))

(declare-fun res!957717 () Bool)

(assert (=> b!1422181 (=> (not res!957717) (not e!804045))))

(assert (=> b!1422181 (= res!957717 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48082 0))(
  ( (Unit!48083) )
))
(declare-fun lt!626535 () Unit!48082)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97057 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48082)

(assert (=> b!1422181 (= lt!626535 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1422182 () Bool)

(declare-fun res!957725 () Bool)

(assert (=> b!1422182 (=> (not res!957725) (not e!804044))))

(assert (=> b!1422182 (= res!957725 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626536 lt!626534 mask!2608) lt!626537))))

(declare-fun b!1422183 () Bool)

(declare-fun res!957712 () Bool)

(assert (=> b!1422183 (=> (not res!957712) (not e!804046))))

(declare-datatypes ((List!33532 0))(
  ( (Nil!33529) (Cons!33528 (h!34830 (_ BitVec 64)) (t!48233 List!33532)) )
))
(declare-fun arrayNoDuplicates!0 (array!97057 (_ BitVec 32) List!33532) Bool)

(assert (=> b!1422183 (= res!957712 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33529))))

(declare-fun b!1422184 () Bool)

(declare-fun res!957723 () Bool)

(assert (=> b!1422184 (=> (not res!957723) (not e!804046))))

(assert (=> b!1422184 (= res!957723 (validKeyInArray!0 (select (arr!46842 a!2831) i!982)))))

(declare-fun b!1422171 () Bool)

(declare-fun res!957721 () Bool)

(assert (=> b!1422171 (=> res!957721 e!804041)))

(assert (=> b!1422171 (= res!957721 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626539 (select (arr!46842 a!2831) j!81) a!2831 mask!2608) lt!626533)))))

(declare-fun res!957714 () Bool)

(assert (=> start!122774 (=> (not res!957714) (not e!804046))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122774 (= res!957714 (validMask!0 mask!2608))))

(assert (=> start!122774 e!804046))

(assert (=> start!122774 true))

(declare-fun array_inv!35787 (array!97057) Bool)

(assert (=> start!122774 (array_inv!35787 a!2831)))

(assert (= (and start!122774 res!957714) b!1422173))

(assert (= (and b!1422173 res!957716) b!1422184))

(assert (= (and b!1422184 res!957723) b!1422180))

(assert (= (and b!1422180 res!957724) b!1422178))

(assert (= (and b!1422178 res!957719) b!1422183))

(assert (= (and b!1422183 res!957712) b!1422172))

(assert (= (and b!1422172 res!957715) b!1422177))

(assert (= (and b!1422177 res!957722) b!1422174))

(assert (= (and b!1422174 res!957726) b!1422176))

(assert (= (and b!1422176 res!957713) b!1422182))

(assert (= (and b!1422182 res!957725) b!1422169))

(assert (= (and b!1422169 res!957720) b!1422181))

(assert (= (and b!1422181 res!957717) b!1422175))

(assert (= (and b!1422181 (not res!957718)) b!1422179))

(assert (= (and b!1422179 (not res!957711)) b!1422171))

(assert (= (and b!1422171 (not res!957721)) b!1422170))

(declare-fun m!1312775 () Bool)

(assert (=> start!122774 m!1312775))

(declare-fun m!1312777 () Bool)

(assert (=> start!122774 m!1312777))

(declare-fun m!1312779 () Bool)

(assert (=> b!1422178 m!1312779))

(declare-fun m!1312781 () Bool)

(assert (=> b!1422184 m!1312781))

(assert (=> b!1422184 m!1312781))

(declare-fun m!1312783 () Bool)

(assert (=> b!1422184 m!1312783))

(declare-fun m!1312785 () Bool)

(assert (=> b!1422174 m!1312785))

(assert (=> b!1422174 m!1312785))

(declare-fun m!1312787 () Bool)

(assert (=> b!1422174 m!1312787))

(declare-fun m!1312789 () Bool)

(assert (=> b!1422174 m!1312789))

(declare-fun m!1312791 () Bool)

(assert (=> b!1422174 m!1312791))

(declare-fun m!1312793 () Bool)

(assert (=> b!1422183 m!1312793))

(declare-fun m!1312795 () Bool)

(assert (=> b!1422171 m!1312795))

(assert (=> b!1422171 m!1312795))

(declare-fun m!1312797 () Bool)

(assert (=> b!1422171 m!1312797))

(assert (=> b!1422175 m!1312795))

(assert (=> b!1422175 m!1312795))

(declare-fun m!1312799 () Bool)

(assert (=> b!1422175 m!1312799))

(declare-fun m!1312801 () Bool)

(assert (=> b!1422182 m!1312801))

(assert (=> b!1422176 m!1312795))

(assert (=> b!1422176 m!1312795))

(declare-fun m!1312803 () Bool)

(assert (=> b!1422176 m!1312803))

(assert (=> b!1422180 m!1312795))

(assert (=> b!1422180 m!1312795))

(declare-fun m!1312805 () Bool)

(assert (=> b!1422180 m!1312805))

(declare-fun m!1312807 () Bool)

(assert (=> b!1422179 m!1312807))

(assert (=> b!1422177 m!1312795))

(assert (=> b!1422177 m!1312795))

(declare-fun m!1312809 () Bool)

(assert (=> b!1422177 m!1312809))

(assert (=> b!1422177 m!1312809))

(assert (=> b!1422177 m!1312795))

(declare-fun m!1312811 () Bool)

(assert (=> b!1422177 m!1312811))

(assert (=> b!1422181 m!1312789))

(declare-fun m!1312813 () Bool)

(assert (=> b!1422181 m!1312813))

(declare-fun m!1312815 () Bool)

(assert (=> b!1422181 m!1312815))

(declare-fun m!1312817 () Bool)

(assert (=> b!1422181 m!1312817))

(assert (=> b!1422181 m!1312795))

(declare-fun m!1312819 () Bool)

(assert (=> b!1422181 m!1312819))

(declare-fun m!1312821 () Bool)

(assert (=> b!1422170 m!1312821))

(push 1)

