; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66594 () Bool)

(assert start!66594)

(declare-fun b!767159 () Bool)

(declare-fun e!427224 () Bool)

(declare-fun e!427227 () Bool)

(assert (=> b!767159 (= e!427224 e!427227)))

(declare-fun res!519104 () Bool)

(assert (=> b!767159 (=> (not res!519104) (not e!427227))))

(declare-datatypes ((SeekEntryResult!7835 0))(
  ( (MissingZero!7835 (index!33707 (_ BitVec 32))) (Found!7835 (index!33708 (_ BitVec 32))) (Intermediate!7835 (undefined!8647 Bool) (index!33709 (_ BitVec 32)) (x!64646 (_ BitVec 32))) (Undefined!7835) (MissingVacant!7835 (index!33710 (_ BitVec 32))) )
))
(declare-fun lt!341288 () SeekEntryResult!7835)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!767159 (= res!519104 (or (= lt!341288 (MissingZero!7835 i!1173)) (= lt!341288 (MissingVacant!7835 i!1173))))))

(declare-datatypes ((array!42257 0))(
  ( (array!42258 (arr!20228 (Array (_ BitVec 32) (_ BitVec 64))) (size!20649 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42257)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42257 (_ BitVec 32)) SeekEntryResult!7835)

(assert (=> b!767159 (= lt!341288 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!767160 () Bool)

(declare-fun e!427229 () Bool)

(assert (=> b!767160 (= e!427229 true)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!341293 () SeekEntryResult!7835)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42257 (_ BitVec 32)) SeekEntryResult!7835)

(assert (=> b!767160 (= lt!341293 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20228 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!767161 () Bool)

(declare-fun res!519110 () Bool)

(declare-fun e!427228 () Bool)

(assert (=> b!767161 (=> (not res!519110) (not e!427228))))

(declare-fun e!427230 () Bool)

(assert (=> b!767161 (= res!519110 e!427230)))

(declare-fun c!84420 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!767161 (= c!84420 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!767162 () Bool)

(declare-fun res!519101 () Bool)

(assert (=> b!767162 (=> (not res!519101) (not e!427224))))

(assert (=> b!767162 (= res!519101 (and (= (size!20649 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20649 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20649 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!519103 () Bool)

(assert (=> start!66594 (=> (not res!519103) (not e!427224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66594 (= res!519103 (validMask!0 mask!3328))))

(assert (=> start!66594 e!427224))

(assert (=> start!66594 true))

(declare-fun array_inv!16002 (array!42257) Bool)

(assert (=> start!66594 (array_inv!16002 a!3186)))

(declare-fun b!767163 () Bool)

(declare-fun res!519109 () Bool)

(assert (=> b!767163 (=> (not res!519109) (not e!427227))))

(assert (=> b!767163 (= res!519109 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20649 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20649 a!3186))))))

(declare-fun b!767164 () Bool)

(declare-fun e!427232 () Bool)

(assert (=> b!767164 (= e!427228 e!427232)))

(declare-fun res!519111 () Bool)

(assert (=> b!767164 (=> (not res!519111) (not e!427232))))

(declare-fun lt!341291 () SeekEntryResult!7835)

(declare-fun lt!341287 () SeekEntryResult!7835)

(assert (=> b!767164 (= res!519111 (= lt!341291 lt!341287))))

(declare-fun lt!341289 () array!42257)

(declare-fun lt!341296 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42257 (_ BitVec 32)) SeekEntryResult!7835)

(assert (=> b!767164 (= lt!341287 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341296 lt!341289 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!767164 (= lt!341291 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341296 mask!3328) lt!341296 lt!341289 mask!3328))))

(assert (=> b!767164 (= lt!341296 (select (store (arr!20228 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!767164 (= lt!341289 (array!42258 (store (arr!20228 a!3186) i!1173 k!2102) (size!20649 a!3186)))))

(declare-fun b!767165 () Bool)

(declare-fun res!519107 () Bool)

(assert (=> b!767165 (=> (not res!519107) (not e!427224))))

(declare-fun arrayContainsKey!0 (array!42257 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!767165 (= res!519107 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!767166 () Bool)

(declare-fun e!427223 () Bool)

(assert (=> b!767166 (= e!427223 e!427229)))

(declare-fun res!519115 () Bool)

(assert (=> b!767166 (=> res!519115 e!427229)))

(assert (=> b!767166 (= res!519115 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!341294 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!767166 (= lt!341294 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!767167 () Bool)

(assert (=> b!767167 (= e!427227 e!427228)))

(declare-fun res!519106 () Bool)

(assert (=> b!767167 (=> (not res!519106) (not e!427228))))

(declare-fun lt!341292 () SeekEntryResult!7835)

(assert (=> b!767167 (= res!519106 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20228 a!3186) j!159) mask!3328) (select (arr!20228 a!3186) j!159) a!3186 mask!3328) lt!341292))))

(assert (=> b!767167 (= lt!341292 (Intermediate!7835 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!767168 () Bool)

(declare-fun res!519112 () Bool)

(assert (=> b!767168 (=> (not res!519112) (not e!427227))))

(declare-datatypes ((List!14283 0))(
  ( (Nil!14280) (Cons!14279 (h!15372 (_ BitVec 64)) (t!20606 List!14283)) )
))
(declare-fun arrayNoDuplicates!0 (array!42257 (_ BitVec 32) List!14283) Bool)

(assert (=> b!767168 (= res!519112 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14280))))

(declare-fun b!767169 () Bool)

(declare-fun res!519114 () Bool)

(assert (=> b!767169 (=> (not res!519114) (not e!427228))))

(assert (=> b!767169 (= res!519114 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20228 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!427225 () Bool)

(declare-fun lt!341290 () SeekEntryResult!7835)

(declare-fun b!767170 () Bool)

(assert (=> b!767170 (= e!427225 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20228 a!3186) j!159) a!3186 mask!3328) lt!341290))))

(declare-fun b!767171 () Bool)

(declare-fun res!519105 () Bool)

(assert (=> b!767171 (=> (not res!519105) (not e!427224))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!767171 (= res!519105 (validKeyInArray!0 k!2102))))

(declare-fun b!767172 () Bool)

(declare-fun e!427226 () Bool)

(assert (=> b!767172 (= e!427226 e!427225)))

(declare-fun res!519117 () Bool)

(assert (=> b!767172 (=> (not res!519117) (not e!427225))))

(assert (=> b!767172 (= res!519117 (= (seekEntryOrOpen!0 (select (arr!20228 a!3186) j!159) a!3186 mask!3328) lt!341290))))

(assert (=> b!767172 (= lt!341290 (Found!7835 j!159))))

(declare-fun b!767173 () Bool)

(declare-fun res!519116 () Bool)

(assert (=> b!767173 (=> (not res!519116) (not e!427224))))

(assert (=> b!767173 (= res!519116 (validKeyInArray!0 (select (arr!20228 a!3186) j!159)))))

(declare-fun b!767174 () Bool)

(declare-fun res!519102 () Bool)

(assert (=> b!767174 (=> (not res!519102) (not e!427227))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42257 (_ BitVec 32)) Bool)

(assert (=> b!767174 (= res!519102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!767175 () Bool)

(assert (=> b!767175 (= e!427230 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20228 a!3186) j!159) a!3186 mask!3328) (Found!7835 j!159)))))

(declare-fun b!767176 () Bool)

(assert (=> b!767176 (= e!427230 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20228 a!3186) j!159) a!3186 mask!3328) lt!341292))))

(declare-fun b!767177 () Bool)

(assert (=> b!767177 (= e!427232 (not e!427223))))

(declare-fun res!519108 () Bool)

(assert (=> b!767177 (=> res!519108 e!427223)))

(assert (=> b!767177 (= res!519108 (or (not (is-Intermediate!7835 lt!341287)) (bvsge x!1131 (x!64646 lt!341287))))))

(assert (=> b!767177 e!427226))

(declare-fun res!519113 () Bool)

(assert (=> b!767177 (=> (not res!519113) (not e!427226))))

(assert (=> b!767177 (= res!519113 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26396 0))(
  ( (Unit!26397) )
))
(declare-fun lt!341295 () Unit!26396)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42257 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26396)

(assert (=> b!767177 (= lt!341295 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!66594 res!519103) b!767162))

(assert (= (and b!767162 res!519101) b!767173))

(assert (= (and b!767173 res!519116) b!767171))

(assert (= (and b!767171 res!519105) b!767165))

(assert (= (and b!767165 res!519107) b!767159))

(assert (= (and b!767159 res!519104) b!767174))

(assert (= (and b!767174 res!519102) b!767168))

(assert (= (and b!767168 res!519112) b!767163))

(assert (= (and b!767163 res!519109) b!767167))

(assert (= (and b!767167 res!519106) b!767169))

(assert (= (and b!767169 res!519114) b!767161))

(assert (= (and b!767161 c!84420) b!767176))

(assert (= (and b!767161 (not c!84420)) b!767175))

(assert (= (and b!767161 res!519110) b!767164))

(assert (= (and b!767164 res!519111) b!767177))

(assert (= (and b!767177 res!519113) b!767172))

(assert (= (and b!767172 res!519117) b!767170))

(assert (= (and b!767177 (not res!519108)) b!767166))

(assert (= (and b!767166 (not res!519115)) b!767160))

(declare-fun m!713033 () Bool)

(assert (=> b!767177 m!713033))

(declare-fun m!713035 () Bool)

(assert (=> b!767177 m!713035))

(declare-fun m!713037 () Bool)

(assert (=> b!767174 m!713037))

(declare-fun m!713039 () Bool)

(assert (=> b!767176 m!713039))

(assert (=> b!767176 m!713039))

(declare-fun m!713041 () Bool)

(assert (=> b!767176 m!713041))

(assert (=> b!767175 m!713039))

(assert (=> b!767175 m!713039))

(declare-fun m!713043 () Bool)

(assert (=> b!767175 m!713043))

(assert (=> b!767170 m!713039))

(assert (=> b!767170 m!713039))

(declare-fun m!713045 () Bool)

(assert (=> b!767170 m!713045))

(declare-fun m!713047 () Bool)

(assert (=> b!767159 m!713047))

(declare-fun m!713049 () Bool)

(assert (=> b!767166 m!713049))

(declare-fun m!713051 () Bool)

(assert (=> start!66594 m!713051))

(declare-fun m!713053 () Bool)

(assert (=> start!66594 m!713053))

(assert (=> b!767160 m!713039))

(assert (=> b!767160 m!713039))

(assert (=> b!767160 m!713043))

(assert (=> b!767173 m!713039))

(assert (=> b!767173 m!713039))

(declare-fun m!713055 () Bool)

(assert (=> b!767173 m!713055))

(assert (=> b!767172 m!713039))

(assert (=> b!767172 m!713039))

(declare-fun m!713057 () Bool)

(assert (=> b!767172 m!713057))

(declare-fun m!713059 () Bool)

(assert (=> b!767171 m!713059))

(declare-fun m!713061 () Bool)

(assert (=> b!767169 m!713061))

(declare-fun m!713063 () Bool)

(assert (=> b!767164 m!713063))

(declare-fun m!713065 () Bool)

(assert (=> b!767164 m!713065))

(assert (=> b!767164 m!713063))

(declare-fun m!713067 () Bool)

(assert (=> b!767164 m!713067))

(declare-fun m!713069 () Bool)

(assert (=> b!767164 m!713069))

(declare-fun m!713071 () Bool)

(assert (=> b!767164 m!713071))

(assert (=> b!767167 m!713039))

(assert (=> b!767167 m!713039))

(declare-fun m!713073 () Bool)

(assert (=> b!767167 m!713073))

(assert (=> b!767167 m!713073))

(assert (=> b!767167 m!713039))

(declare-fun m!713075 () Bool)

(assert (=> b!767167 m!713075))

(declare-fun m!713077 () Bool)

(assert (=> b!767165 m!713077))

(declare-fun m!713079 () Bool)

(assert (=> b!767168 m!713079))

(push 1)

