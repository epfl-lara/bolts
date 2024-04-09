; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66800 () Bool)

(assert start!66800)

(declare-fun b!769745 () Bool)

(declare-fun res!520738 () Bool)

(declare-fun e!428625 () Bool)

(assert (=> b!769745 (=> (not res!520738) (not e!428625))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-datatypes ((array!42317 0))(
  ( (array!42318 (arr!20255 (Array (_ BitVec 32) (_ BitVec 64))) (size!20676 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42317)

(assert (=> b!769745 (= res!520738 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20676 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20676 a!3186))))))

(declare-fun b!769746 () Bool)

(declare-datatypes ((Unit!26484 0))(
  ( (Unit!26485) )
))
(declare-fun e!428627 () Unit!26484)

(declare-fun Unit!26486 () Unit!26484)

(assert (=> b!769746 (= e!428627 Unit!26486)))

(declare-fun lt!342562 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7862 0))(
  ( (MissingZero!7862 (index!33815 (_ BitVec 32))) (Found!7862 (index!33816 (_ BitVec 32))) (Intermediate!7862 (undefined!8674 Bool) (index!33817 (_ BitVec 32)) (x!64770 (_ BitVec 32))) (Undefined!7862) (MissingVacant!7862 (index!33818 (_ BitVec 32))) )
))
(declare-fun lt!342556 () SeekEntryResult!7862)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42317 (_ BitVec 32)) SeekEntryResult!7862)

(assert (=> b!769746 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342562 (select (arr!20255 a!3186) j!159) a!3186 mask!3328) lt!342556)))

(declare-fun b!769747 () Bool)

(declare-fun res!520744 () Bool)

(declare-fun e!428628 () Bool)

(assert (=> b!769747 (=> (not res!520744) (not e!428628))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!769747 (= res!520744 (validKeyInArray!0 k!2102))))

(declare-fun b!769748 () Bool)

(declare-fun e!428622 () Bool)

(assert (=> b!769748 (= e!428622 true)))

(declare-fun lt!342559 () Unit!26484)

(assert (=> b!769748 (= lt!342559 e!428627)))

(declare-fun c!84902 () Bool)

(assert (=> b!769748 (= c!84902 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769748 (= lt!342562 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!769749 () Bool)

(declare-fun e!428623 () Bool)

(assert (=> b!769749 (= e!428623 (not e!428622))))

(declare-fun res!520745 () Bool)

(assert (=> b!769749 (=> res!520745 e!428622)))

(declare-fun lt!342554 () SeekEntryResult!7862)

(assert (=> b!769749 (= res!520745 (or (not (is-Intermediate!7862 lt!342554)) (bvsge x!1131 (x!64770 lt!342554))))))

(declare-fun e!428626 () Bool)

(assert (=> b!769749 e!428626))

(declare-fun res!520737 () Bool)

(assert (=> b!769749 (=> (not res!520737) (not e!428626))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42317 (_ BitVec 32)) Bool)

(assert (=> b!769749 (= res!520737 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342553 () Unit!26484)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42317 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26484)

(assert (=> b!769749 (= lt!342553 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!769750 () Bool)

(declare-fun res!520734 () Bool)

(assert (=> b!769750 (=> (not res!520734) (not e!428625))))

(assert (=> b!769750 (= res!520734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun lt!342560 () SeekEntryResult!7862)

(declare-fun e!428620 () Bool)

(declare-fun b!769751 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42317 (_ BitVec 32)) SeekEntryResult!7862)

(assert (=> b!769751 (= e!428620 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20255 a!3186) j!159) a!3186 mask!3328) lt!342560))))

(declare-fun b!769752 () Bool)

(declare-fun e!428624 () Bool)

(assert (=> b!769752 (= e!428624 e!428623)))

(declare-fun res!520733 () Bool)

(assert (=> b!769752 (=> (not res!520733) (not e!428623))))

(declare-fun lt!342557 () SeekEntryResult!7862)

(assert (=> b!769752 (= res!520733 (= lt!342557 lt!342554))))

(declare-fun lt!342552 () array!42317)

(declare-fun lt!342561 () (_ BitVec 64))

(assert (=> b!769752 (= lt!342554 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342561 lt!342552 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769752 (= lt!342557 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342561 mask!3328) lt!342561 lt!342552 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!769752 (= lt!342561 (select (store (arr!20255 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!769752 (= lt!342552 (array!42318 (store (arr!20255 a!3186) i!1173 k!2102) (size!20676 a!3186)))))

(declare-fun b!769753 () Bool)

(declare-fun res!520741 () Bool)

(assert (=> b!769753 (=> (not res!520741) (not e!428628))))

(assert (=> b!769753 (= res!520741 (and (= (size!20676 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20676 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20676 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!769754 () Bool)

(assert (=> b!769754 (= e!428628 e!428625)))

(declare-fun res!520747 () Bool)

(assert (=> b!769754 (=> (not res!520747) (not e!428625))))

(declare-fun lt!342558 () SeekEntryResult!7862)

(assert (=> b!769754 (= res!520747 (or (= lt!342558 (MissingZero!7862 i!1173)) (= lt!342558 (MissingVacant!7862 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42317 (_ BitVec 32)) SeekEntryResult!7862)

(assert (=> b!769754 (= lt!342558 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun e!428621 () Bool)

(declare-fun b!769755 () Bool)

(assert (=> b!769755 (= e!428621 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20255 a!3186) j!159) a!3186 mask!3328) lt!342556))))

(declare-fun res!520732 () Bool)

(assert (=> start!66800 (=> (not res!520732) (not e!428628))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66800 (= res!520732 (validMask!0 mask!3328))))

(assert (=> start!66800 e!428628))

(assert (=> start!66800 true))

(declare-fun array_inv!16029 (array!42317) Bool)

(assert (=> start!66800 (array_inv!16029 a!3186)))

(declare-fun b!769756 () Bool)

(declare-fun res!520743 () Bool)

(assert (=> b!769756 (=> (not res!520743) (not e!428628))))

(declare-fun arrayContainsKey!0 (array!42317 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!769756 (= res!520743 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!769757 () Bool)

(declare-fun res!520742 () Bool)

(assert (=> b!769757 (=> (not res!520742) (not e!428624))))

(assert (=> b!769757 (= res!520742 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20255 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!769758 () Bool)

(declare-fun Unit!26487 () Unit!26484)

(assert (=> b!769758 (= e!428627 Unit!26487)))

(declare-fun lt!342555 () SeekEntryResult!7862)

(assert (=> b!769758 (= lt!342555 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20255 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!769758 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342562 resIntermediateIndex!5 (select (arr!20255 a!3186) j!159) a!3186 mask!3328) (Found!7862 j!159))))

(declare-fun b!769759 () Bool)

(declare-fun res!520735 () Bool)

(assert (=> b!769759 (=> (not res!520735) (not e!428624))))

(assert (=> b!769759 (= res!520735 e!428621)))

(declare-fun c!84903 () Bool)

(assert (=> b!769759 (= c!84903 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!769760 () Bool)

(declare-fun res!520746 () Bool)

(assert (=> b!769760 (=> (not res!520746) (not e!428628))))

(assert (=> b!769760 (= res!520746 (validKeyInArray!0 (select (arr!20255 a!3186) j!159)))))

(declare-fun b!769761 () Bool)

(declare-fun res!520736 () Bool)

(assert (=> b!769761 (=> (not res!520736) (not e!428625))))

(declare-datatypes ((List!14310 0))(
  ( (Nil!14307) (Cons!14306 (h!15405 (_ BitVec 64)) (t!20633 List!14310)) )
))
(declare-fun arrayNoDuplicates!0 (array!42317 (_ BitVec 32) List!14310) Bool)

(assert (=> b!769761 (= res!520736 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14307))))

(declare-fun b!769762 () Bool)

(assert (=> b!769762 (= e!428625 e!428624)))

(declare-fun res!520739 () Bool)

(assert (=> b!769762 (=> (not res!520739) (not e!428624))))

(assert (=> b!769762 (= res!520739 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20255 a!3186) j!159) mask!3328) (select (arr!20255 a!3186) j!159) a!3186 mask!3328) lt!342556))))

(assert (=> b!769762 (= lt!342556 (Intermediate!7862 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!769763 () Bool)

(assert (=> b!769763 (= e!428626 e!428620)))

(declare-fun res!520740 () Bool)

(assert (=> b!769763 (=> (not res!520740) (not e!428620))))

(assert (=> b!769763 (= res!520740 (= (seekEntryOrOpen!0 (select (arr!20255 a!3186) j!159) a!3186 mask!3328) lt!342560))))

(assert (=> b!769763 (= lt!342560 (Found!7862 j!159))))

(declare-fun b!769764 () Bool)

(assert (=> b!769764 (= e!428621 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20255 a!3186) j!159) a!3186 mask!3328) (Found!7862 j!159)))))

(assert (= (and start!66800 res!520732) b!769753))

(assert (= (and b!769753 res!520741) b!769760))

(assert (= (and b!769760 res!520746) b!769747))

(assert (= (and b!769747 res!520744) b!769756))

(assert (= (and b!769756 res!520743) b!769754))

(assert (= (and b!769754 res!520747) b!769750))

(assert (= (and b!769750 res!520734) b!769761))

(assert (= (and b!769761 res!520736) b!769745))

(assert (= (and b!769745 res!520738) b!769762))

(assert (= (and b!769762 res!520739) b!769757))

(assert (= (and b!769757 res!520742) b!769759))

(assert (= (and b!769759 c!84903) b!769755))

(assert (= (and b!769759 (not c!84903)) b!769764))

(assert (= (and b!769759 res!520735) b!769752))

(assert (= (and b!769752 res!520733) b!769749))

(assert (= (and b!769749 res!520737) b!769763))

(assert (= (and b!769763 res!520740) b!769751))

(assert (= (and b!769749 (not res!520745)) b!769748))

(assert (= (and b!769748 c!84902) b!769746))

(assert (= (and b!769748 (not c!84902)) b!769758))

(declare-fun m!715179 () Bool)

(assert (=> b!769751 m!715179))

(assert (=> b!769751 m!715179))

(declare-fun m!715181 () Bool)

(assert (=> b!769751 m!715181))

(assert (=> b!769755 m!715179))

(assert (=> b!769755 m!715179))

(declare-fun m!715183 () Bool)

(assert (=> b!769755 m!715183))

(declare-fun m!715185 () Bool)

(assert (=> b!769747 m!715185))

(assert (=> b!769764 m!715179))

(assert (=> b!769764 m!715179))

(declare-fun m!715187 () Bool)

(assert (=> b!769764 m!715187))

(declare-fun m!715189 () Bool)

(assert (=> b!769761 m!715189))

(declare-fun m!715191 () Bool)

(assert (=> b!769754 m!715191))

(declare-fun m!715193 () Bool)

(assert (=> start!66800 m!715193))

(declare-fun m!715195 () Bool)

(assert (=> start!66800 m!715195))

(assert (=> b!769758 m!715179))

(assert (=> b!769758 m!715179))

(assert (=> b!769758 m!715187))

(assert (=> b!769758 m!715179))

(declare-fun m!715197 () Bool)

(assert (=> b!769758 m!715197))

(assert (=> b!769762 m!715179))

(assert (=> b!769762 m!715179))

(declare-fun m!715199 () Bool)

(assert (=> b!769762 m!715199))

(assert (=> b!769762 m!715199))

(assert (=> b!769762 m!715179))

(declare-fun m!715201 () Bool)

(assert (=> b!769762 m!715201))

(assert (=> b!769746 m!715179))

(assert (=> b!769746 m!715179))

(declare-fun m!715203 () Bool)

(assert (=> b!769746 m!715203))

(declare-fun m!715205 () Bool)

(assert (=> b!769750 m!715205))

(declare-fun m!715207 () Bool)

(assert (=> b!769752 m!715207))

(declare-fun m!715209 () Bool)

(assert (=> b!769752 m!715209))

(declare-fun m!715211 () Bool)

(assert (=> b!769752 m!715211))

(declare-fun m!715213 () Bool)

(assert (=> b!769752 m!715213))

(assert (=> b!769752 m!715207))

(declare-fun m!715215 () Bool)

(assert (=> b!769752 m!715215))

(declare-fun m!715217 () Bool)

(assert (=> b!769748 m!715217))

(assert (=> b!769763 m!715179))

(assert (=> b!769763 m!715179))

(declare-fun m!715219 () Bool)

(assert (=> b!769763 m!715219))

(declare-fun m!715221 () Bool)

(assert (=> b!769757 m!715221))

(assert (=> b!769760 m!715179))

(assert (=> b!769760 m!715179))

(declare-fun m!715223 () Bool)

(assert (=> b!769760 m!715223))

(declare-fun m!715225 () Bool)

(assert (=> b!769749 m!715225))

(declare-fun m!715227 () Bool)

(assert (=> b!769749 m!715227))

(declare-fun m!715229 () Bool)

(assert (=> b!769756 m!715229))

(push 1)

