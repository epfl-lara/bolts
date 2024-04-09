; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66776 () Bool)

(assert start!66776)

(declare-fun b!769025 () Bool)

(declare-fun e!428264 () Bool)

(declare-fun e!428260 () Bool)

(assert (=> b!769025 (= e!428264 e!428260)))

(declare-fun res!520162 () Bool)

(assert (=> b!769025 (=> (not res!520162) (not e!428260))))

(declare-datatypes ((array!42293 0))(
  ( (array!42294 (arr!20243 (Array (_ BitVec 32) (_ BitVec 64))) (size!20664 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42293)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7850 0))(
  ( (MissingZero!7850 (index!33767 (_ BitVec 32))) (Found!7850 (index!33768 (_ BitVec 32))) (Intermediate!7850 (undefined!8662 Bool) (index!33769 (_ BitVec 32)) (x!64726 (_ BitVec 32))) (Undefined!7850) (MissingVacant!7850 (index!33770 (_ BitVec 32))) )
))
(declare-fun lt!342163 () SeekEntryResult!7850)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42293 (_ BitVec 32)) SeekEntryResult!7850)

(assert (=> b!769025 (= res!520162 (= (seekEntryOrOpen!0 (select (arr!20243 a!3186) j!159) a!3186 mask!3328) lt!342163))))

(assert (=> b!769025 (= lt!342163 (Found!7850 j!159))))

(declare-fun b!769026 () Bool)

(declare-fun res!520168 () Bool)

(declare-fun e!428269 () Bool)

(assert (=> b!769026 (=> (not res!520168) (not e!428269))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!769026 (= res!520168 (validKeyInArray!0 (select (arr!20243 a!3186) j!159)))))

(declare-fun b!769027 () Bool)

(declare-fun e!428266 () Bool)

(assert (=> b!769027 (= e!428266 true)))

(declare-datatypes ((Unit!26436 0))(
  ( (Unit!26437) )
))
(declare-fun lt!342157 () Unit!26436)

(declare-fun e!428267 () Unit!26436)

(assert (=> b!769027 (= lt!342157 e!428267)))

(declare-fun c!84831 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!769027 (= c!84831 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!342162 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769027 (= lt!342162 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!769029 () Bool)

(declare-fun res!520158 () Bool)

(declare-fun e!428268 () Bool)

(assert (=> b!769029 (=> (not res!520158) (not e!428268))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42293 (_ BitVec 32)) Bool)

(assert (=> b!769029 (= res!520158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!769030 () Bool)

(declare-fun e!428261 () Bool)

(declare-fun lt!342165 () SeekEntryResult!7850)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42293 (_ BitVec 32)) SeekEntryResult!7850)

(assert (=> b!769030 (= e!428261 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20243 a!3186) j!159) a!3186 mask!3328) lt!342165))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!769031 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42293 (_ BitVec 32)) SeekEntryResult!7850)

(assert (=> b!769031 (= e!428260 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20243 a!3186) j!159) a!3186 mask!3328) lt!342163))))

(declare-fun b!769032 () Bool)

(declare-fun res!520169 () Bool)

(assert (=> b!769032 (=> (not res!520169) (not e!428268))))

(declare-datatypes ((List!14298 0))(
  ( (Nil!14295) (Cons!14294 (h!15393 (_ BitVec 64)) (t!20621 List!14298)) )
))
(declare-fun arrayNoDuplicates!0 (array!42293 (_ BitVec 32) List!14298) Bool)

(assert (=> b!769032 (= res!520169 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14295))))

(declare-fun b!769033 () Bool)

(declare-fun res!520171 () Bool)

(assert (=> b!769033 (=> (not res!520171) (not e!428268))))

(assert (=> b!769033 (= res!520171 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20664 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20664 a!3186))))))

(declare-fun b!769034 () Bool)

(declare-fun res!520165 () Bool)

(declare-fun e!428262 () Bool)

(assert (=> b!769034 (=> (not res!520165) (not e!428262))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!769034 (= res!520165 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20243 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!769035 () Bool)

(declare-fun e!428265 () Bool)

(assert (=> b!769035 (= e!428265 (not e!428266))))

(declare-fun res!520159 () Bool)

(assert (=> b!769035 (=> res!520159 e!428266)))

(declare-fun lt!342158 () SeekEntryResult!7850)

(assert (=> b!769035 (= res!520159 (or (not (is-Intermediate!7850 lt!342158)) (bvsge x!1131 (x!64726 lt!342158))))))

(assert (=> b!769035 e!428264))

(declare-fun res!520157 () Bool)

(assert (=> b!769035 (=> (not res!520157) (not e!428264))))

(assert (=> b!769035 (= res!520157 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342166 () Unit!26436)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42293 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26436)

(assert (=> b!769035 (= lt!342166 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!769036 () Bool)

(assert (=> b!769036 (= e!428269 e!428268)))

(declare-fun res!520170 () Bool)

(assert (=> b!769036 (=> (not res!520170) (not e!428268))))

(declare-fun lt!342160 () SeekEntryResult!7850)

(assert (=> b!769036 (= res!520170 (or (= lt!342160 (MissingZero!7850 i!1173)) (= lt!342160 (MissingVacant!7850 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!769036 (= lt!342160 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!769037 () Bool)

(declare-fun res!520161 () Bool)

(assert (=> b!769037 (=> (not res!520161) (not e!428269))))

(declare-fun arrayContainsKey!0 (array!42293 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!769037 (= res!520161 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!769038 () Bool)

(declare-fun res!520156 () Bool)

(assert (=> b!769038 (=> (not res!520156) (not e!428269))))

(assert (=> b!769038 (= res!520156 (validKeyInArray!0 k!2102))))

(declare-fun res!520164 () Bool)

(assert (=> start!66776 (=> (not res!520164) (not e!428269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66776 (= res!520164 (validMask!0 mask!3328))))

(assert (=> start!66776 e!428269))

(assert (=> start!66776 true))

(declare-fun array_inv!16017 (array!42293) Bool)

(assert (=> start!66776 (array_inv!16017 a!3186)))

(declare-fun b!769028 () Bool)

(declare-fun Unit!26438 () Unit!26436)

(assert (=> b!769028 (= e!428267 Unit!26438)))

(declare-fun lt!342161 () SeekEntryResult!7850)

(assert (=> b!769028 (= lt!342161 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20243 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!769028 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342162 resIntermediateIndex!5 (select (arr!20243 a!3186) j!159) a!3186 mask!3328) (Found!7850 j!159))))

(declare-fun b!769039 () Bool)

(declare-fun res!520160 () Bool)

(assert (=> b!769039 (=> (not res!520160) (not e!428262))))

(assert (=> b!769039 (= res!520160 e!428261)))

(declare-fun c!84830 () Bool)

(assert (=> b!769039 (= c!84830 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!769040 () Bool)

(declare-fun Unit!26439 () Unit!26436)

(assert (=> b!769040 (= e!428267 Unit!26439)))

(assert (=> b!769040 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342162 (select (arr!20243 a!3186) j!159) a!3186 mask!3328) lt!342165)))

(declare-fun b!769041 () Bool)

(declare-fun res!520163 () Bool)

(assert (=> b!769041 (=> (not res!520163) (not e!428269))))

(assert (=> b!769041 (= res!520163 (and (= (size!20664 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20664 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20664 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!769042 () Bool)

(assert (=> b!769042 (= e!428262 e!428265)))

(declare-fun res!520167 () Bool)

(assert (=> b!769042 (=> (not res!520167) (not e!428265))))

(declare-fun lt!342164 () SeekEntryResult!7850)

(assert (=> b!769042 (= res!520167 (= lt!342164 lt!342158))))

(declare-fun lt!342156 () array!42293)

(declare-fun lt!342159 () (_ BitVec 64))

(assert (=> b!769042 (= lt!342158 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342159 lt!342156 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769042 (= lt!342164 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342159 mask!3328) lt!342159 lt!342156 mask!3328))))

(assert (=> b!769042 (= lt!342159 (select (store (arr!20243 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!769042 (= lt!342156 (array!42294 (store (arr!20243 a!3186) i!1173 k!2102) (size!20664 a!3186)))))

(declare-fun b!769043 () Bool)

(assert (=> b!769043 (= e!428268 e!428262)))

(declare-fun res!520166 () Bool)

(assert (=> b!769043 (=> (not res!520166) (not e!428262))))

(assert (=> b!769043 (= res!520166 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20243 a!3186) j!159) mask!3328) (select (arr!20243 a!3186) j!159) a!3186 mask!3328) lt!342165))))

(assert (=> b!769043 (= lt!342165 (Intermediate!7850 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!769044 () Bool)

(assert (=> b!769044 (= e!428261 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20243 a!3186) j!159) a!3186 mask!3328) (Found!7850 j!159)))))

(assert (= (and start!66776 res!520164) b!769041))

(assert (= (and b!769041 res!520163) b!769026))

(assert (= (and b!769026 res!520168) b!769038))

(assert (= (and b!769038 res!520156) b!769037))

(assert (= (and b!769037 res!520161) b!769036))

(assert (= (and b!769036 res!520170) b!769029))

(assert (= (and b!769029 res!520158) b!769032))

(assert (= (and b!769032 res!520169) b!769033))

(assert (= (and b!769033 res!520171) b!769043))

(assert (= (and b!769043 res!520166) b!769034))

(assert (= (and b!769034 res!520165) b!769039))

(assert (= (and b!769039 c!84830) b!769030))

(assert (= (and b!769039 (not c!84830)) b!769044))

(assert (= (and b!769039 res!520160) b!769042))

(assert (= (and b!769042 res!520167) b!769035))

(assert (= (and b!769035 res!520157) b!769025))

(assert (= (and b!769025 res!520162) b!769031))

(assert (= (and b!769035 (not res!520159)) b!769027))

(assert (= (and b!769027 c!84831) b!769040))

(assert (= (and b!769027 (not c!84831)) b!769028))

(declare-fun m!714555 () Bool)

(assert (=> b!769032 m!714555))

(declare-fun m!714557 () Bool)

(assert (=> b!769038 m!714557))

(declare-fun m!714559 () Bool)

(assert (=> b!769044 m!714559))

(assert (=> b!769044 m!714559))

(declare-fun m!714561 () Bool)

(assert (=> b!769044 m!714561))

(declare-fun m!714563 () Bool)

(assert (=> b!769042 m!714563))

(declare-fun m!714565 () Bool)

(assert (=> b!769042 m!714565))

(declare-fun m!714567 () Bool)

(assert (=> b!769042 m!714567))

(declare-fun m!714569 () Bool)

(assert (=> b!769042 m!714569))

(declare-fun m!714571 () Bool)

(assert (=> b!769042 m!714571))

(assert (=> b!769042 m!714567))

(assert (=> b!769040 m!714559))

(assert (=> b!769040 m!714559))

(declare-fun m!714573 () Bool)

(assert (=> b!769040 m!714573))

(declare-fun m!714575 () Bool)

(assert (=> b!769029 m!714575))

(declare-fun m!714577 () Bool)

(assert (=> b!769027 m!714577))

(assert (=> b!769043 m!714559))

(assert (=> b!769043 m!714559))

(declare-fun m!714579 () Bool)

(assert (=> b!769043 m!714579))

(assert (=> b!769043 m!714579))

(assert (=> b!769043 m!714559))

(declare-fun m!714581 () Bool)

(assert (=> b!769043 m!714581))

(declare-fun m!714583 () Bool)

(assert (=> b!769035 m!714583))

(declare-fun m!714585 () Bool)

(assert (=> b!769035 m!714585))

(declare-fun m!714587 () Bool)

(assert (=> b!769034 m!714587))

(assert (=> b!769025 m!714559))

(assert (=> b!769025 m!714559))

(declare-fun m!714589 () Bool)

(assert (=> b!769025 m!714589))

(assert (=> b!769031 m!714559))

(assert (=> b!769031 m!714559))

(declare-fun m!714591 () Bool)

(assert (=> b!769031 m!714591))

(assert (=> b!769028 m!714559))

(assert (=> b!769028 m!714559))

(assert (=> b!769028 m!714561))

(assert (=> b!769028 m!714559))

(declare-fun m!714593 () Bool)

(assert (=> b!769028 m!714593))

(assert (=> b!769030 m!714559))

(assert (=> b!769030 m!714559))

(declare-fun m!714595 () Bool)

(assert (=> b!769030 m!714595))

(declare-fun m!714597 () Bool)

(assert (=> start!66776 m!714597))

(declare-fun m!714599 () Bool)

(assert (=> start!66776 m!714599))

(declare-fun m!714601 () Bool)

(assert (=> b!769036 m!714601))

(declare-fun m!714603 () Bool)

(assert (=> b!769037 m!714603))

(assert (=> b!769026 m!714559))

(assert (=> b!769026 m!714559))

(declare-fun m!714605 () Bool)

(assert (=> b!769026 m!714605))

(push 1)

