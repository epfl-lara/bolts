; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65456 () Bool)

(assert start!65456)

(declare-fun b!745154 () Bool)

(declare-fun e!416218 () Bool)

(declare-fun e!416220 () Bool)

(assert (=> b!745154 (= e!416218 (not e!416220))))

(declare-fun res!502187 () Bool)

(assert (=> b!745154 (=> res!502187 e!416220)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7508 0))(
  ( (MissingZero!7508 (index!32399 (_ BitVec 32))) (Found!7508 (index!32400 (_ BitVec 32))) (Intermediate!7508 (undefined!8320 Bool) (index!32401 (_ BitVec 32)) (x!63379 (_ BitVec 32))) (Undefined!7508) (MissingVacant!7508 (index!32402 (_ BitVec 32))) )
))
(declare-fun lt!331057 () SeekEntryResult!7508)

(assert (=> b!745154 (= res!502187 (or (not (is-Intermediate!7508 lt!331057)) (bvslt x!1131 (x!63379 lt!331057)) (not (= x!1131 (x!63379 lt!331057))) (not (= index!1321 (index!32401 lt!331057)))))))

(declare-fun e!416221 () Bool)

(assert (=> b!745154 e!416221))

(declare-fun res!502192 () Bool)

(assert (=> b!745154 (=> (not res!502192) (not e!416221))))

(declare-datatypes ((array!41582 0))(
  ( (array!41583 (arr!19901 (Array (_ BitVec 32) (_ BitVec 64))) (size!20322 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41582)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41582 (_ BitVec 32)) Bool)

(assert (=> b!745154 (= res!502192 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25496 0))(
  ( (Unit!25497) )
))
(declare-fun lt!331061 () Unit!25496)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41582 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25496)

(assert (=> b!745154 (= lt!331061 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!745155 () Bool)

(declare-fun res!502191 () Bool)

(declare-fun e!416223 () Bool)

(assert (=> b!745155 (=> (not res!502191) (not e!416223))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!745155 (= res!502191 (validKeyInArray!0 k!2102))))

(declare-fun b!745156 () Bool)

(declare-fun e!416226 () Bool)

(assert (=> b!745156 (= e!416223 e!416226)))

(declare-fun res!502189 () Bool)

(assert (=> b!745156 (=> (not res!502189) (not e!416226))))

(declare-fun lt!331060 () SeekEntryResult!7508)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!745156 (= res!502189 (or (= lt!331060 (MissingZero!7508 i!1173)) (= lt!331060 (MissingVacant!7508 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41582 (_ BitVec 32)) SeekEntryResult!7508)

(assert (=> b!745156 (= lt!331060 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!416225 () Bool)

(declare-fun b!745157 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41582 (_ BitVec 32)) SeekEntryResult!7508)

(assert (=> b!745157 (= e!416225 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19901 a!3186) j!159) a!3186 mask!3328) (Found!7508 j!159)))))

(declare-fun b!745158 () Bool)

(declare-fun res!502193 () Bool)

(assert (=> b!745158 (=> (not res!502193) (not e!416226))))

(assert (=> b!745158 (= res!502193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!745159 () Bool)

(declare-fun res!502196 () Bool)

(declare-fun e!416222 () Bool)

(assert (=> b!745159 (=> (not res!502196) (not e!416222))))

(assert (=> b!745159 (= res!502196 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19901 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!745160 () Bool)

(declare-fun e!416219 () Bool)

(assert (=> b!745160 (= e!416221 e!416219)))

(declare-fun res!502188 () Bool)

(assert (=> b!745160 (=> (not res!502188) (not e!416219))))

(declare-fun lt!331064 () SeekEntryResult!7508)

(assert (=> b!745160 (= res!502188 (= (seekEntryOrOpen!0 (select (arr!19901 a!3186) j!159) a!3186 mask!3328) lt!331064))))

(assert (=> b!745160 (= lt!331064 (Found!7508 j!159))))

(declare-fun b!745161 () Bool)

(declare-fun res!502199 () Bool)

(assert (=> b!745161 (=> (not res!502199) (not e!416223))))

(assert (=> b!745161 (= res!502199 (validKeyInArray!0 (select (arr!19901 a!3186) j!159)))))

(declare-fun b!745162 () Bool)

(declare-fun res!502190 () Bool)

(assert (=> b!745162 (=> res!502190 e!416220)))

(assert (=> b!745162 (= res!502190 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19901 a!3186) j!159) a!3186 mask!3328) (Found!7508 j!159))))))

(declare-fun b!745163 () Bool)

(assert (=> b!745163 (= e!416226 e!416222)))

(declare-fun res!502202 () Bool)

(assert (=> b!745163 (=> (not res!502202) (not e!416222))))

(declare-fun lt!331063 () SeekEntryResult!7508)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41582 (_ BitVec 32)) SeekEntryResult!7508)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!745163 (= res!502202 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19901 a!3186) j!159) mask!3328) (select (arr!19901 a!3186) j!159) a!3186 mask!3328) lt!331063))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!745163 (= lt!331063 (Intermediate!7508 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!745164 () Bool)

(declare-fun res!502200 () Bool)

(assert (=> b!745164 (=> (not res!502200) (not e!416226))))

(declare-datatypes ((List!13956 0))(
  ( (Nil!13953) (Cons!13952 (h!15024 (_ BitVec 64)) (t!20279 List!13956)) )
))
(declare-fun arrayNoDuplicates!0 (array!41582 (_ BitVec 32) List!13956) Bool)

(assert (=> b!745164 (= res!502200 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13953))))

(declare-fun lt!331059 () (_ BitVec 64))

(declare-fun b!745165 () Bool)

(assert (=> b!745165 (= e!416220 (or (= (select (store (arr!19901 a!3186) i!1173 k!2102) index!1321) lt!331059) (not (= (select (store (arr!19901 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun b!745166 () Bool)

(assert (=> b!745166 (= e!416225 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19901 a!3186) j!159) a!3186 mask!3328) lt!331063))))

(declare-fun b!745167 () Bool)

(declare-fun res!502198 () Bool)

(assert (=> b!745167 (=> (not res!502198) (not e!416226))))

(assert (=> b!745167 (= res!502198 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20322 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20322 a!3186))))))

(declare-fun b!745168 () Bool)

(declare-fun res!502197 () Bool)

(assert (=> b!745168 (=> (not res!502197) (not e!416223))))

(declare-fun arrayContainsKey!0 (array!41582 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!745168 (= res!502197 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!745169 () Bool)

(assert (=> b!745169 (= e!416222 e!416218)))

(declare-fun res!502203 () Bool)

(assert (=> b!745169 (=> (not res!502203) (not e!416218))))

(declare-fun lt!331062 () SeekEntryResult!7508)

(assert (=> b!745169 (= res!502203 (= lt!331062 lt!331057))))

(declare-fun lt!331058 () array!41582)

(assert (=> b!745169 (= lt!331057 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331059 lt!331058 mask!3328))))

(assert (=> b!745169 (= lt!331062 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331059 mask!3328) lt!331059 lt!331058 mask!3328))))

(assert (=> b!745169 (= lt!331059 (select (store (arr!19901 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!745169 (= lt!331058 (array!41583 (store (arr!19901 a!3186) i!1173 k!2102) (size!20322 a!3186)))))

(declare-fun b!745170 () Bool)

(assert (=> b!745170 (= e!416219 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19901 a!3186) j!159) a!3186 mask!3328) lt!331064))))

(declare-fun res!502195 () Bool)

(assert (=> start!65456 (=> (not res!502195) (not e!416223))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65456 (= res!502195 (validMask!0 mask!3328))))

(assert (=> start!65456 e!416223))

(assert (=> start!65456 true))

(declare-fun array_inv!15675 (array!41582) Bool)

(assert (=> start!65456 (array_inv!15675 a!3186)))

(declare-fun b!745171 () Bool)

(declare-fun res!502194 () Bool)

(assert (=> b!745171 (=> (not res!502194) (not e!416223))))

(assert (=> b!745171 (= res!502194 (and (= (size!20322 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20322 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20322 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!745172 () Bool)

(declare-fun res!502201 () Bool)

(assert (=> b!745172 (=> (not res!502201) (not e!416222))))

(assert (=> b!745172 (= res!502201 e!416225)))

(declare-fun c!81864 () Bool)

(assert (=> b!745172 (= c!81864 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!65456 res!502195) b!745171))

(assert (= (and b!745171 res!502194) b!745161))

(assert (= (and b!745161 res!502199) b!745155))

(assert (= (and b!745155 res!502191) b!745168))

(assert (= (and b!745168 res!502197) b!745156))

(assert (= (and b!745156 res!502189) b!745158))

(assert (= (and b!745158 res!502193) b!745164))

(assert (= (and b!745164 res!502200) b!745167))

(assert (= (and b!745167 res!502198) b!745163))

(assert (= (and b!745163 res!502202) b!745159))

(assert (= (and b!745159 res!502196) b!745172))

(assert (= (and b!745172 c!81864) b!745166))

(assert (= (and b!745172 (not c!81864)) b!745157))

(assert (= (and b!745172 res!502201) b!745169))

(assert (= (and b!745169 res!502203) b!745154))

(assert (= (and b!745154 res!502192) b!745160))

(assert (= (and b!745160 res!502188) b!745170))

(assert (= (and b!745154 (not res!502187)) b!745162))

(assert (= (and b!745162 (not res!502190)) b!745165))

(declare-fun m!695653 () Bool)

(assert (=> b!745158 m!695653))

(declare-fun m!695655 () Bool)

(assert (=> b!745165 m!695655))

(declare-fun m!695657 () Bool)

(assert (=> b!745165 m!695657))

(declare-fun m!695659 () Bool)

(assert (=> b!745169 m!695659))

(assert (=> b!745169 m!695655))

(declare-fun m!695661 () Bool)

(assert (=> b!745169 m!695661))

(declare-fun m!695663 () Bool)

(assert (=> b!745169 m!695663))

(declare-fun m!695665 () Bool)

(assert (=> b!745169 m!695665))

(assert (=> b!745169 m!695663))

(declare-fun m!695667 () Bool)

(assert (=> b!745170 m!695667))

(assert (=> b!745170 m!695667))

(declare-fun m!695669 () Bool)

(assert (=> b!745170 m!695669))

(assert (=> b!745166 m!695667))

(assert (=> b!745166 m!695667))

(declare-fun m!695671 () Bool)

(assert (=> b!745166 m!695671))

(declare-fun m!695673 () Bool)

(assert (=> b!745159 m!695673))

(assert (=> b!745161 m!695667))

(assert (=> b!745161 m!695667))

(declare-fun m!695675 () Bool)

(assert (=> b!745161 m!695675))

(declare-fun m!695677 () Bool)

(assert (=> b!745168 m!695677))

(assert (=> b!745157 m!695667))

(assert (=> b!745157 m!695667))

(declare-fun m!695679 () Bool)

(assert (=> b!745157 m!695679))

(declare-fun m!695681 () Bool)

(assert (=> start!65456 m!695681))

(declare-fun m!695683 () Bool)

(assert (=> start!65456 m!695683))

(declare-fun m!695685 () Bool)

(assert (=> b!745164 m!695685))

(declare-fun m!695687 () Bool)

(assert (=> b!745154 m!695687))

(declare-fun m!695689 () Bool)

(assert (=> b!745154 m!695689))

(declare-fun m!695691 () Bool)

(assert (=> b!745155 m!695691))

(assert (=> b!745163 m!695667))

(assert (=> b!745163 m!695667))

(declare-fun m!695693 () Bool)

(assert (=> b!745163 m!695693))

(assert (=> b!745163 m!695693))

(assert (=> b!745163 m!695667))

(declare-fun m!695695 () Bool)

(assert (=> b!745163 m!695695))

(assert (=> b!745162 m!695667))

(assert (=> b!745162 m!695667))

(assert (=> b!745162 m!695679))

(assert (=> b!745160 m!695667))

(assert (=> b!745160 m!695667))

(declare-fun m!695697 () Bool)

(assert (=> b!745160 m!695697))

(declare-fun m!695699 () Bool)

(assert (=> b!745156 m!695699))

(push 1)

(assert (not start!65456))

(assert (not b!745161))

(assert (not b!745168))

(assert (not b!745162))

(assert (not b!745169))

(assert (not b!745157))

(assert (not b!745160))

(assert (not b!745164))

(assert (not b!745158))

(assert (not b!745155))

(assert (not b!745166))

(assert (not b!745154))

(assert (not b!745156))

(assert (not b!745170))

(assert (not b!745163))

(check-sat)

(pop 1)

(push 1)

(check-sat)

