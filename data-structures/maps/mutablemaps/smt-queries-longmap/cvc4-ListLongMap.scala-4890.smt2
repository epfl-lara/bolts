; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67472 () Bool)

(assert start!67472)

(declare-fun b!780169 () Bool)

(declare-fun e!434033 () Bool)

(assert (=> b!780169 (= e!434033 false)))

(declare-datatypes ((SeekEntryResult!7991 0))(
  ( (MissingZero!7991 (index!34331 (_ BitVec 32))) (Found!7991 (index!34332 (_ BitVec 32))) (Intermediate!7991 (undefined!8803 Bool) (index!34333 (_ BitVec 32)) (x!65306 (_ BitVec 32))) (Undefined!7991) (MissingVacant!7991 (index!34334 (_ BitVec 32))) )
))
(declare-fun lt!347681 () SeekEntryResult!7991)

(declare-fun lt!347689 () SeekEntryResult!7991)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!780169 (and (= lt!347681 lt!347689) (= lt!347689 (MissingVacant!7991 resIntermediateIndex!5)))))

(declare-datatypes ((array!42593 0))(
  ( (array!42594 (arr!20384 (Array (_ BitVec 32) (_ BitVec 64))) (size!20805 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42593)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!780170 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!347687 () SeekEntryResult!7991)

(declare-fun e!434028 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42593 (_ BitVec 32)) SeekEntryResult!7991)

(assert (=> b!780170 (= e!434028 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20384 a!3186) j!159) a!3186 mask!3328) lt!347687))))

(declare-fun b!780171 () Bool)

(declare-fun e!434029 () Bool)

(declare-fun e!434031 () Bool)

(assert (=> b!780171 (= e!434029 e!434031)))

(declare-fun res!527962 () Bool)

(assert (=> b!780171 (=> (not res!527962) (not e!434031))))

(declare-fun lt!347683 () SeekEntryResult!7991)

(declare-fun lt!347685 () SeekEntryResult!7991)

(assert (=> b!780171 (= res!527962 (= lt!347683 lt!347685))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!347682 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!347684 () array!42593)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42593 (_ BitVec 32)) SeekEntryResult!7991)

(assert (=> b!780171 (= lt!347685 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347682 lt!347684 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!780171 (= lt!347683 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347682 mask!3328) lt!347682 lt!347684 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!780171 (= lt!347682 (select (store (arr!20384 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!780171 (= lt!347684 (array!42594 (store (arr!20384 a!3186) i!1173 k!2102) (size!20805 a!3186)))))

(declare-fun b!780172 () Bool)

(declare-fun res!527960 () Bool)

(declare-fun e!434034 () Bool)

(assert (=> b!780172 (=> (not res!527960) (not e!434034))))

(declare-fun arrayContainsKey!0 (array!42593 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!780172 (= res!527960 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!780173 () Bool)

(declare-fun res!527957 () Bool)

(assert (=> b!780173 (=> (not res!527957) (not e!434034))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!780173 (= res!527957 (validKeyInArray!0 k!2102))))

(declare-fun b!780174 () Bool)

(declare-fun e!434027 () Bool)

(assert (=> b!780174 (= e!434034 e!434027)))

(declare-fun res!527950 () Bool)

(assert (=> b!780174 (=> (not res!527950) (not e!434027))))

(declare-fun lt!347680 () SeekEntryResult!7991)

(assert (=> b!780174 (= res!527950 (or (= lt!347680 (MissingZero!7991 i!1173)) (= lt!347680 (MissingVacant!7991 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42593 (_ BitVec 32)) SeekEntryResult!7991)

(assert (=> b!780174 (= lt!347680 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!780175 () Bool)

(declare-fun res!527965 () Bool)

(assert (=> b!780175 (=> (not res!527965) (not e!434027))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42593 (_ BitVec 32)) Bool)

(assert (=> b!780175 (= res!527965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!780176 () Bool)

(declare-fun res!527955 () Bool)

(assert (=> b!780176 (=> (not res!527955) (not e!434029))))

(assert (=> b!780176 (= res!527955 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20384 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!780177 () Bool)

(declare-fun res!527958 () Bool)

(assert (=> b!780177 (=> (not res!527958) (not e!434029))))

(declare-fun e!434032 () Bool)

(assert (=> b!780177 (= res!527958 e!434032)))

(declare-fun c!86514 () Bool)

(assert (=> b!780177 (= c!86514 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!780178 () Bool)

(declare-fun e!434030 () Bool)

(assert (=> b!780178 (= e!434030 e!434033)))

(declare-fun res!527953 () Bool)

(assert (=> b!780178 (=> res!527953 e!434033)))

(assert (=> b!780178 (= res!527953 (or (not (= lt!347689 lt!347687)) (= (select (store (arr!20384 a!3186) i!1173 k!2102) index!1321) lt!347682) (not (= (select (store (arr!20384 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!780178 (= lt!347689 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20384 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!780179 () Bool)

(declare-fun res!527952 () Bool)

(assert (=> b!780179 (=> (not res!527952) (not e!434034))))

(assert (=> b!780179 (= res!527952 (and (= (size!20805 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20805 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20805 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!780180 () Bool)

(declare-fun res!527963 () Bool)

(assert (=> b!780180 (=> (not res!527963) (not e!434027))))

(assert (=> b!780180 (= res!527963 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20805 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20805 a!3186))))))

(declare-fun b!780181 () Bool)

(declare-fun res!527951 () Bool)

(assert (=> b!780181 (=> (not res!527951) (not e!434034))))

(assert (=> b!780181 (= res!527951 (validKeyInArray!0 (select (arr!20384 a!3186) j!159)))))

(declare-fun b!780182 () Bool)

(assert (=> b!780182 (= e!434031 (not e!434030))))

(declare-fun res!527964 () Bool)

(assert (=> b!780182 (=> res!527964 e!434030)))

(assert (=> b!780182 (= res!527964 (or (not (is-Intermediate!7991 lt!347685)) (bvslt x!1131 (x!65306 lt!347685)) (not (= x!1131 (x!65306 lt!347685))) (not (= index!1321 (index!34333 lt!347685)))))))

(assert (=> b!780182 e!434028))

(declare-fun res!527956 () Bool)

(assert (=> b!780182 (=> (not res!527956) (not e!434028))))

(assert (=> b!780182 (= res!527956 (= lt!347681 lt!347687))))

(assert (=> b!780182 (= lt!347687 (Found!7991 j!159))))

(assert (=> b!780182 (= lt!347681 (seekEntryOrOpen!0 (select (arr!20384 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!780182 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26876 0))(
  ( (Unit!26877) )
))
(declare-fun lt!347686 () Unit!26876)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42593 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26876)

(assert (=> b!780182 (= lt!347686 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!780183 () Bool)

(assert (=> b!780183 (= e!434032 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20384 a!3186) j!159) a!3186 mask!3328) (Found!7991 j!159)))))

(declare-fun b!780184 () Bool)

(declare-fun lt!347688 () SeekEntryResult!7991)

(assert (=> b!780184 (= e!434032 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20384 a!3186) j!159) a!3186 mask!3328) lt!347688))))

(declare-fun b!780185 () Bool)

(declare-fun res!527959 () Bool)

(assert (=> b!780185 (=> (not res!527959) (not e!434027))))

(declare-datatypes ((List!14439 0))(
  ( (Nil!14436) (Cons!14435 (h!15552 (_ BitVec 64)) (t!20762 List!14439)) )
))
(declare-fun arrayNoDuplicates!0 (array!42593 (_ BitVec 32) List!14439) Bool)

(assert (=> b!780185 (= res!527959 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14436))))

(declare-fun res!527954 () Bool)

(assert (=> start!67472 (=> (not res!527954) (not e!434034))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67472 (= res!527954 (validMask!0 mask!3328))))

(assert (=> start!67472 e!434034))

(assert (=> start!67472 true))

(declare-fun array_inv!16158 (array!42593) Bool)

(assert (=> start!67472 (array_inv!16158 a!3186)))

(declare-fun b!780186 () Bool)

(assert (=> b!780186 (= e!434027 e!434029)))

(declare-fun res!527961 () Bool)

(assert (=> b!780186 (=> (not res!527961) (not e!434029))))

(assert (=> b!780186 (= res!527961 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20384 a!3186) j!159) mask!3328) (select (arr!20384 a!3186) j!159) a!3186 mask!3328) lt!347688))))

(assert (=> b!780186 (= lt!347688 (Intermediate!7991 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!67472 res!527954) b!780179))

(assert (= (and b!780179 res!527952) b!780181))

(assert (= (and b!780181 res!527951) b!780173))

(assert (= (and b!780173 res!527957) b!780172))

(assert (= (and b!780172 res!527960) b!780174))

(assert (= (and b!780174 res!527950) b!780175))

(assert (= (and b!780175 res!527965) b!780185))

(assert (= (and b!780185 res!527959) b!780180))

(assert (= (and b!780180 res!527963) b!780186))

(assert (= (and b!780186 res!527961) b!780176))

(assert (= (and b!780176 res!527955) b!780177))

(assert (= (and b!780177 c!86514) b!780184))

(assert (= (and b!780177 (not c!86514)) b!780183))

(assert (= (and b!780177 res!527958) b!780171))

(assert (= (and b!780171 res!527962) b!780182))

(assert (= (and b!780182 res!527956) b!780170))

(assert (= (and b!780182 (not res!527964)) b!780178))

(assert (= (and b!780178 (not res!527953)) b!780169))

(declare-fun m!723577 () Bool)

(assert (=> b!780185 m!723577))

(declare-fun m!723579 () Bool)

(assert (=> b!780183 m!723579))

(assert (=> b!780183 m!723579))

(declare-fun m!723581 () Bool)

(assert (=> b!780183 m!723581))

(declare-fun m!723583 () Bool)

(assert (=> b!780176 m!723583))

(declare-fun m!723585 () Bool)

(assert (=> b!780172 m!723585))

(declare-fun m!723587 () Bool)

(assert (=> b!780178 m!723587))

(declare-fun m!723589 () Bool)

(assert (=> b!780178 m!723589))

(assert (=> b!780178 m!723579))

(assert (=> b!780178 m!723579))

(assert (=> b!780178 m!723581))

(declare-fun m!723591 () Bool)

(assert (=> b!780171 m!723591))

(assert (=> b!780171 m!723587))

(declare-fun m!723593 () Bool)

(assert (=> b!780171 m!723593))

(declare-fun m!723595 () Bool)

(assert (=> b!780171 m!723595))

(assert (=> b!780171 m!723593))

(declare-fun m!723597 () Bool)

(assert (=> b!780171 m!723597))

(assert (=> b!780170 m!723579))

(assert (=> b!780170 m!723579))

(declare-fun m!723599 () Bool)

(assert (=> b!780170 m!723599))

(assert (=> b!780184 m!723579))

(assert (=> b!780184 m!723579))

(declare-fun m!723601 () Bool)

(assert (=> b!780184 m!723601))

(declare-fun m!723603 () Bool)

(assert (=> b!780175 m!723603))

(assert (=> b!780186 m!723579))

(assert (=> b!780186 m!723579))

(declare-fun m!723605 () Bool)

(assert (=> b!780186 m!723605))

(assert (=> b!780186 m!723605))

(assert (=> b!780186 m!723579))

(declare-fun m!723607 () Bool)

(assert (=> b!780186 m!723607))

(declare-fun m!723609 () Bool)

(assert (=> b!780173 m!723609))

(declare-fun m!723611 () Bool)

(assert (=> b!780174 m!723611))

(assert (=> b!780181 m!723579))

(assert (=> b!780181 m!723579))

(declare-fun m!723613 () Bool)

(assert (=> b!780181 m!723613))

(declare-fun m!723615 () Bool)

(assert (=> start!67472 m!723615))

(declare-fun m!723617 () Bool)

(assert (=> start!67472 m!723617))

(assert (=> b!780182 m!723579))

(assert (=> b!780182 m!723579))

(declare-fun m!723619 () Bool)

(assert (=> b!780182 m!723619))

(declare-fun m!723621 () Bool)

(assert (=> b!780182 m!723621))

(declare-fun m!723623 () Bool)

(assert (=> b!780182 m!723623))

(push 1)

