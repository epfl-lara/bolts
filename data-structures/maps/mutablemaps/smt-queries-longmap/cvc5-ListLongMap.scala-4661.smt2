; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64756 () Bool)

(assert start!64756)

(declare-fun b!730556 () Bool)

(declare-fun e!408846 () Bool)

(declare-fun e!408841 () Bool)

(assert (=> b!730556 (= e!408846 e!408841)))

(declare-fun res!490965 () Bool)

(assert (=> b!730556 (=> res!490965 e!408841)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!730556 (= res!490965 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!323756 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730556 (= lt!323756 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!730557 () Bool)

(declare-fun e!408840 () Bool)

(declare-fun e!408848 () Bool)

(assert (=> b!730557 (= e!408840 e!408848)))

(declare-fun res!490962 () Bool)

(assert (=> b!730557 (=> (not res!490962) (not e!408848))))

(declare-datatypes ((SeekEntryResult!7302 0))(
  ( (MissingZero!7302 (index!31575 (_ BitVec 32))) (Found!7302 (index!31576 (_ BitVec 32))) (Intermediate!7302 (undefined!8114 Bool) (index!31577 (_ BitVec 32)) (x!62581 (_ BitVec 32))) (Undefined!7302) (MissingVacant!7302 (index!31578 (_ BitVec 32))) )
))
(declare-fun lt!323748 () SeekEntryResult!7302)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!730557 (= res!490962 (or (= lt!323748 (MissingZero!7302 i!1173)) (= lt!323748 (MissingVacant!7302 i!1173))))))

(declare-datatypes ((array!41158 0))(
  ( (array!41159 (arr!19695 (Array (_ BitVec 32) (_ BitVec 64))) (size!20116 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41158)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41158 (_ BitVec 32)) SeekEntryResult!7302)

(assert (=> b!730557 (= lt!323748 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!730558 () Bool)

(declare-fun res!490969 () Bool)

(assert (=> b!730558 (=> (not res!490969) (not e!408848))))

(declare-datatypes ((List!13750 0))(
  ( (Nil!13747) (Cons!13746 (h!14806 (_ BitVec 64)) (t!20073 List!13750)) )
))
(declare-fun arrayNoDuplicates!0 (array!41158 (_ BitVec 32) List!13750) Bool)

(assert (=> b!730558 (= res!490969 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13747))))

(declare-fun b!730559 () Bool)

(declare-fun res!490971 () Bool)

(declare-fun e!408842 () Bool)

(assert (=> b!730559 (=> (not res!490971) (not e!408842))))

(declare-fun e!408844 () Bool)

(assert (=> b!730559 (= res!490971 e!408844)))

(declare-fun c!80172 () Bool)

(assert (=> b!730559 (= c!80172 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!730560 () Bool)

(declare-fun res!490973 () Bool)

(assert (=> b!730560 (=> (not res!490973) (not e!408848))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41158 (_ BitVec 32)) Bool)

(assert (=> b!730560 (= res!490973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!730561 () Bool)

(declare-fun res!490975 () Bool)

(assert (=> b!730561 (=> (not res!490975) (not e!408840))))

(declare-fun arrayContainsKey!0 (array!41158 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!730561 (= res!490975 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!730562 () Bool)

(declare-fun res!490963 () Bool)

(assert (=> b!730562 (=> (not res!490963) (not e!408840))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!730562 (= res!490963 (and (= (size!20116 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20116 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20116 a!3186)) (not (= i!1173 j!159))))))

(declare-fun lt!323747 () SeekEntryResult!7302)

(declare-fun b!730563 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41158 (_ BitVec 32)) SeekEntryResult!7302)

(assert (=> b!730563 (= e!408844 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19695 a!3186) j!159) a!3186 mask!3328) lt!323747))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!730564 () Bool)

(declare-fun lt!323750 () SeekEntryResult!7302)

(declare-fun e!408847 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41158 (_ BitVec 32)) SeekEntryResult!7302)

(assert (=> b!730564 (= e!408847 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19695 a!3186) j!159) a!3186 mask!3328) lt!323750))))

(declare-fun b!730565 () Bool)

(declare-fun res!490961 () Bool)

(assert (=> b!730565 (=> (not res!490961) (not e!408848))))

(assert (=> b!730565 (= res!490961 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20116 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20116 a!3186))))))

(declare-fun res!490966 () Bool)

(assert (=> start!64756 (=> (not res!490966) (not e!408840))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64756 (= res!490966 (validMask!0 mask!3328))))

(assert (=> start!64756 e!408840))

(assert (=> start!64756 true))

(declare-fun array_inv!15469 (array!41158) Bool)

(assert (=> start!64756 (array_inv!15469 a!3186)))

(declare-fun b!730566 () Bool)

(declare-fun e!408845 () Bool)

(assert (=> b!730566 (= e!408845 (not e!408846))))

(declare-fun res!490972 () Bool)

(assert (=> b!730566 (=> res!490972 e!408846)))

(declare-fun lt!323754 () SeekEntryResult!7302)

(assert (=> b!730566 (= res!490972 (or (not (is-Intermediate!7302 lt!323754)) (bvsge x!1131 (x!62581 lt!323754))))))

(declare-fun e!408849 () Bool)

(assert (=> b!730566 e!408849))

(declare-fun res!490974 () Bool)

(assert (=> b!730566 (=> (not res!490974) (not e!408849))))

(assert (=> b!730566 (= res!490974 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24922 0))(
  ( (Unit!24923) )
))
(declare-fun lt!323755 () Unit!24922)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41158 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24922)

(assert (=> b!730566 (= lt!323755 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!730567 () Bool)

(declare-fun res!490964 () Bool)

(assert (=> b!730567 (=> (not res!490964) (not e!408840))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!730567 (= res!490964 (validKeyInArray!0 (select (arr!19695 a!3186) j!159)))))

(declare-fun b!730568 () Bool)

(assert (=> b!730568 (= e!408842 e!408845)))

(declare-fun res!490977 () Bool)

(assert (=> b!730568 (=> (not res!490977) (not e!408845))))

(declare-fun lt!323749 () SeekEntryResult!7302)

(assert (=> b!730568 (= res!490977 (= lt!323749 lt!323754))))

(declare-fun lt!323751 () (_ BitVec 64))

(declare-fun lt!323753 () array!41158)

(assert (=> b!730568 (= lt!323754 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323751 lt!323753 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730568 (= lt!323749 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323751 mask!3328) lt!323751 lt!323753 mask!3328))))

(assert (=> b!730568 (= lt!323751 (select (store (arr!19695 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!730568 (= lt!323753 (array!41159 (store (arr!19695 a!3186) i!1173 k!2102) (size!20116 a!3186)))))

(declare-fun b!730569 () Bool)

(declare-fun res!490970 () Bool)

(assert (=> b!730569 (=> (not res!490970) (not e!408842))))

(assert (=> b!730569 (= res!490970 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19695 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!730570 () Bool)

(assert (=> b!730570 (= e!408844 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19695 a!3186) j!159) a!3186 mask!3328) (Found!7302 j!159)))))

(declare-fun b!730571 () Bool)

(assert (=> b!730571 (= e!408849 e!408847)))

(declare-fun res!490967 () Bool)

(assert (=> b!730571 (=> (not res!490967) (not e!408847))))

(assert (=> b!730571 (= res!490967 (= (seekEntryOrOpen!0 (select (arr!19695 a!3186) j!159) a!3186 mask!3328) lt!323750))))

(assert (=> b!730571 (= lt!323750 (Found!7302 j!159))))

(declare-fun b!730572 () Bool)

(declare-fun res!490976 () Bool)

(assert (=> b!730572 (=> (not res!490976) (not e!408840))))

(assert (=> b!730572 (= res!490976 (validKeyInArray!0 k!2102))))

(declare-fun b!730573 () Bool)

(assert (=> b!730573 (= e!408841 true)))

(declare-fun lt!323752 () SeekEntryResult!7302)

(assert (=> b!730573 (= lt!323752 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19695 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!730574 () Bool)

(assert (=> b!730574 (= e!408848 e!408842)))

(declare-fun res!490968 () Bool)

(assert (=> b!730574 (=> (not res!490968) (not e!408842))))

(assert (=> b!730574 (= res!490968 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19695 a!3186) j!159) mask!3328) (select (arr!19695 a!3186) j!159) a!3186 mask!3328) lt!323747))))

(assert (=> b!730574 (= lt!323747 (Intermediate!7302 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!64756 res!490966) b!730562))

(assert (= (and b!730562 res!490963) b!730567))

(assert (= (and b!730567 res!490964) b!730572))

(assert (= (and b!730572 res!490976) b!730561))

(assert (= (and b!730561 res!490975) b!730557))

(assert (= (and b!730557 res!490962) b!730560))

(assert (= (and b!730560 res!490973) b!730558))

(assert (= (and b!730558 res!490969) b!730565))

(assert (= (and b!730565 res!490961) b!730574))

(assert (= (and b!730574 res!490968) b!730569))

(assert (= (and b!730569 res!490970) b!730559))

(assert (= (and b!730559 c!80172) b!730563))

(assert (= (and b!730559 (not c!80172)) b!730570))

(assert (= (and b!730559 res!490971) b!730568))

(assert (= (and b!730568 res!490977) b!730566))

(assert (= (and b!730566 res!490974) b!730571))

(assert (= (and b!730571 res!490967) b!730564))

(assert (= (and b!730566 (not res!490972)) b!730556))

(assert (= (and b!730556 (not res!490965)) b!730573))

(declare-fun m!684157 () Bool)

(assert (=> b!730560 m!684157))

(declare-fun m!684159 () Bool)

(assert (=> b!730572 m!684159))

(declare-fun m!684161 () Bool)

(assert (=> b!730574 m!684161))

(assert (=> b!730574 m!684161))

(declare-fun m!684163 () Bool)

(assert (=> b!730574 m!684163))

(assert (=> b!730574 m!684163))

(assert (=> b!730574 m!684161))

(declare-fun m!684165 () Bool)

(assert (=> b!730574 m!684165))

(assert (=> b!730573 m!684161))

(assert (=> b!730573 m!684161))

(declare-fun m!684167 () Bool)

(assert (=> b!730573 m!684167))

(assert (=> b!730570 m!684161))

(assert (=> b!730570 m!684161))

(assert (=> b!730570 m!684167))

(declare-fun m!684169 () Bool)

(assert (=> b!730557 m!684169))

(assert (=> b!730567 m!684161))

(assert (=> b!730567 m!684161))

(declare-fun m!684171 () Bool)

(assert (=> b!730567 m!684171))

(declare-fun m!684173 () Bool)

(assert (=> start!64756 m!684173))

(declare-fun m!684175 () Bool)

(assert (=> start!64756 m!684175))

(assert (=> b!730563 m!684161))

(assert (=> b!730563 m!684161))

(declare-fun m!684177 () Bool)

(assert (=> b!730563 m!684177))

(declare-fun m!684179 () Bool)

(assert (=> b!730569 m!684179))

(declare-fun m!684181 () Bool)

(assert (=> b!730561 m!684181))

(declare-fun m!684183 () Bool)

(assert (=> b!730558 m!684183))

(declare-fun m!684185 () Bool)

(assert (=> b!730556 m!684185))

(declare-fun m!684187 () Bool)

(assert (=> b!730566 m!684187))

(declare-fun m!684189 () Bool)

(assert (=> b!730566 m!684189))

(assert (=> b!730571 m!684161))

(assert (=> b!730571 m!684161))

(declare-fun m!684191 () Bool)

(assert (=> b!730571 m!684191))

(assert (=> b!730564 m!684161))

(assert (=> b!730564 m!684161))

(declare-fun m!684193 () Bool)

(assert (=> b!730564 m!684193))

(declare-fun m!684195 () Bool)

(assert (=> b!730568 m!684195))

(declare-fun m!684197 () Bool)

(assert (=> b!730568 m!684197))

(assert (=> b!730568 m!684195))

(declare-fun m!684199 () Bool)

(assert (=> b!730568 m!684199))

(declare-fun m!684201 () Bool)

(assert (=> b!730568 m!684201))

(declare-fun m!684203 () Bool)

(assert (=> b!730568 m!684203))

(push 1)

