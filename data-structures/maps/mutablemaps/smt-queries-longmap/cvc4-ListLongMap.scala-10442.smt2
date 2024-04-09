; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122858 () Bool)

(assert start!122858)

(declare-fun b!1424185 () Bool)

(declare-fun e!804924 () Bool)

(declare-fun e!804928 () Bool)

(assert (=> b!1424185 (= e!804924 e!804928)))

(declare-fun res!959731 () Bool)

(assert (=> b!1424185 (=> res!959731 e!804928)))

(declare-fun lt!627420 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97141 0))(
  ( (array!97142 (arr!46884 (Array (_ BitVec 32) (_ BitVec 64))) (size!47435 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97141)

(assert (=> b!1424185 (= res!959731 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627420 #b00000000000000000000000000000000) (bvsge lt!627420 (size!47435 a!2831))))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424185 (= lt!627420 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1424186 () Bool)

(declare-fun e!804927 () Bool)

(assert (=> b!1424186 (= e!804927 (not e!804924))))

(declare-fun res!959736 () Bool)

(assert (=> b!1424186 (=> res!959736 e!804924)))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1424186 (= res!959736 (or (= (select (arr!46884 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46884 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46884 a!2831) index!585) (select (arr!46884 a!2831) j!81)) (= (select (store (arr!46884 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804926 () Bool)

(assert (=> b!1424186 e!804926))

(declare-fun res!959741 () Bool)

(assert (=> b!1424186 (=> (not res!959741) (not e!804926))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97141 (_ BitVec 32)) Bool)

(assert (=> b!1424186 (= res!959741 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48166 0))(
  ( (Unit!48167) )
))
(declare-fun lt!627415 () Unit!48166)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97141 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48166)

(assert (=> b!1424186 (= lt!627415 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1424187 () Bool)

(declare-fun res!959742 () Bool)

(declare-fun e!804929 () Bool)

(assert (=> b!1424187 (=> (not res!959742) (not e!804929))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424187 (= res!959742 (validKeyInArray!0 (select (arr!46884 a!2831) i!982)))))

(declare-fun b!1424188 () Bool)

(declare-fun e!804925 () Bool)

(assert (=> b!1424188 (= e!804929 e!804925)))

(declare-fun res!959733 () Bool)

(assert (=> b!1424188 (=> (not res!959733) (not e!804925))))

(declare-datatypes ((SeekEntryResult!11191 0))(
  ( (MissingZero!11191 (index!47155 (_ BitVec 32))) (Found!11191 (index!47156 (_ BitVec 32))) (Intermediate!11191 (undefined!12003 Bool) (index!47157 (_ BitVec 32)) (x!128788 (_ BitVec 32))) (Undefined!11191) (MissingVacant!11191 (index!47158 (_ BitVec 32))) )
))
(declare-fun lt!627416 () SeekEntryResult!11191)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97141 (_ BitVec 32)) SeekEntryResult!11191)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424188 (= res!959733 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46884 a!2831) j!81) mask!2608) (select (arr!46884 a!2831) j!81) a!2831 mask!2608) lt!627416))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1424188 (= lt!627416 (Intermediate!11191 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun res!959739 () Bool)

(assert (=> start!122858 (=> (not res!959739) (not e!804929))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122858 (= res!959739 (validMask!0 mask!2608))))

(assert (=> start!122858 e!804929))

(assert (=> start!122858 true))

(declare-fun array_inv!35829 (array!97141) Bool)

(assert (=> start!122858 (array_inv!35829 a!2831)))

(declare-fun b!1424189 () Bool)

(declare-fun res!959730 () Bool)

(assert (=> b!1424189 (=> (not res!959730) (not e!804929))))

(assert (=> b!1424189 (= res!959730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1424190 () Bool)

(declare-fun res!959734 () Bool)

(assert (=> b!1424190 (=> (not res!959734) (not e!804929))))

(assert (=> b!1424190 (= res!959734 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47435 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47435 a!2831))))))

(declare-fun b!1424191 () Bool)

(declare-fun res!959738 () Bool)

(assert (=> b!1424191 (=> (not res!959738) (not e!804929))))

(declare-datatypes ((List!33574 0))(
  ( (Nil!33571) (Cons!33570 (h!34872 (_ BitVec 64)) (t!48275 List!33574)) )
))
(declare-fun arrayNoDuplicates!0 (array!97141 (_ BitVec 32) List!33574) Bool)

(assert (=> b!1424191 (= res!959738 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33571))))

(declare-fun b!1424192 () Bool)

(assert (=> b!1424192 (= e!804928 true)))

(declare-fun lt!627419 () (_ BitVec 64))

(declare-fun lt!627421 () array!97141)

(declare-fun lt!627417 () SeekEntryResult!11191)

(assert (=> b!1424192 (= lt!627417 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627420 lt!627419 lt!627421 mask!2608))))

(declare-fun b!1424193 () Bool)

(declare-fun res!959740 () Bool)

(assert (=> b!1424193 (=> (not res!959740) (not e!804927))))

(assert (=> b!1424193 (= res!959740 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46884 a!2831) j!81) a!2831 mask!2608) lt!627416))))

(declare-fun b!1424194 () Bool)

(declare-fun res!959727 () Bool)

(assert (=> b!1424194 (=> (not res!959727) (not e!804929))))

(assert (=> b!1424194 (= res!959727 (validKeyInArray!0 (select (arr!46884 a!2831) j!81)))))

(declare-fun b!1424195 () Bool)

(declare-fun res!959732 () Bool)

(assert (=> b!1424195 (=> (not res!959732) (not e!804927))))

(declare-fun lt!627418 () SeekEntryResult!11191)

(assert (=> b!1424195 (= res!959732 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627419 lt!627421 mask!2608) lt!627418))))

(declare-fun b!1424196 () Bool)

(declare-fun res!959729 () Bool)

(assert (=> b!1424196 (=> (not res!959729) (not e!804929))))

(assert (=> b!1424196 (= res!959729 (and (= (size!47435 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47435 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47435 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424197 () Bool)

(declare-fun res!959737 () Bool)

(assert (=> b!1424197 (=> res!959737 e!804928)))

(assert (=> b!1424197 (= res!959737 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627420 (select (arr!46884 a!2831) j!81) a!2831 mask!2608) lt!627416)))))

(declare-fun b!1424198 () Bool)

(declare-fun res!959728 () Bool)

(assert (=> b!1424198 (=> (not res!959728) (not e!804927))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1424198 (= res!959728 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1424199 () Bool)

(assert (=> b!1424199 (= e!804925 e!804927)))

(declare-fun res!959735 () Bool)

(assert (=> b!1424199 (=> (not res!959735) (not e!804927))))

(assert (=> b!1424199 (= res!959735 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627419 mask!2608) lt!627419 lt!627421 mask!2608) lt!627418))))

(assert (=> b!1424199 (= lt!627418 (Intermediate!11191 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1424199 (= lt!627419 (select (store (arr!46884 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1424199 (= lt!627421 (array!97142 (store (arr!46884 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47435 a!2831)))))

(declare-fun b!1424200 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97141 (_ BitVec 32)) SeekEntryResult!11191)

(assert (=> b!1424200 (= e!804926 (= (seekEntryOrOpen!0 (select (arr!46884 a!2831) j!81) a!2831 mask!2608) (Found!11191 j!81)))))

(assert (= (and start!122858 res!959739) b!1424196))

(assert (= (and b!1424196 res!959729) b!1424187))

(assert (= (and b!1424187 res!959742) b!1424194))

(assert (= (and b!1424194 res!959727) b!1424189))

(assert (= (and b!1424189 res!959730) b!1424191))

(assert (= (and b!1424191 res!959738) b!1424190))

(assert (= (and b!1424190 res!959734) b!1424188))

(assert (= (and b!1424188 res!959733) b!1424199))

(assert (= (and b!1424199 res!959735) b!1424193))

(assert (= (and b!1424193 res!959740) b!1424195))

(assert (= (and b!1424195 res!959732) b!1424198))

(assert (= (and b!1424198 res!959728) b!1424186))

(assert (= (and b!1424186 res!959741) b!1424200))

(assert (= (and b!1424186 (not res!959736)) b!1424185))

(assert (= (and b!1424185 (not res!959731)) b!1424197))

(assert (= (and b!1424197 (not res!959737)) b!1424192))

(declare-fun m!1314791 () Bool)

(assert (=> b!1424193 m!1314791))

(assert (=> b!1424193 m!1314791))

(declare-fun m!1314793 () Bool)

(assert (=> b!1424193 m!1314793))

(assert (=> b!1424197 m!1314791))

(assert (=> b!1424197 m!1314791))

(declare-fun m!1314795 () Bool)

(assert (=> b!1424197 m!1314795))

(declare-fun m!1314797 () Bool)

(assert (=> b!1424186 m!1314797))

(declare-fun m!1314799 () Bool)

(assert (=> b!1424186 m!1314799))

(declare-fun m!1314801 () Bool)

(assert (=> b!1424186 m!1314801))

(declare-fun m!1314803 () Bool)

(assert (=> b!1424186 m!1314803))

(assert (=> b!1424186 m!1314791))

(declare-fun m!1314805 () Bool)

(assert (=> b!1424186 m!1314805))

(declare-fun m!1314807 () Bool)

(assert (=> b!1424192 m!1314807))

(declare-fun m!1314809 () Bool)

(assert (=> b!1424187 m!1314809))

(assert (=> b!1424187 m!1314809))

(declare-fun m!1314811 () Bool)

(assert (=> b!1424187 m!1314811))

(declare-fun m!1314813 () Bool)

(assert (=> b!1424189 m!1314813))

(declare-fun m!1314815 () Bool)

(assert (=> b!1424185 m!1314815))

(declare-fun m!1314817 () Bool)

(assert (=> b!1424199 m!1314817))

(assert (=> b!1424199 m!1314817))

(declare-fun m!1314819 () Bool)

(assert (=> b!1424199 m!1314819))

(assert (=> b!1424199 m!1314797))

(declare-fun m!1314821 () Bool)

(assert (=> b!1424199 m!1314821))

(assert (=> b!1424188 m!1314791))

(assert (=> b!1424188 m!1314791))

(declare-fun m!1314823 () Bool)

(assert (=> b!1424188 m!1314823))

(assert (=> b!1424188 m!1314823))

(assert (=> b!1424188 m!1314791))

(declare-fun m!1314825 () Bool)

(assert (=> b!1424188 m!1314825))

(declare-fun m!1314827 () Bool)

(assert (=> b!1424195 m!1314827))

(declare-fun m!1314829 () Bool)

(assert (=> start!122858 m!1314829))

(declare-fun m!1314831 () Bool)

(assert (=> start!122858 m!1314831))

(assert (=> b!1424194 m!1314791))

(assert (=> b!1424194 m!1314791))

(declare-fun m!1314833 () Bool)

(assert (=> b!1424194 m!1314833))

(assert (=> b!1424200 m!1314791))

(assert (=> b!1424200 m!1314791))

(declare-fun m!1314835 () Bool)

(assert (=> b!1424200 m!1314835))

(declare-fun m!1314837 () Bool)

(assert (=> b!1424191 m!1314837))

(push 1)

