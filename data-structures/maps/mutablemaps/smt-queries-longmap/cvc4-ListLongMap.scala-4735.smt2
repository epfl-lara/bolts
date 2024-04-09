; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65492 () Bool)

(assert start!65492)

(declare-fun b!746127 () Bool)

(declare-fun e!416709 () Bool)

(declare-fun e!416704 () Bool)

(assert (=> b!746127 (= e!416709 (not e!416704))))

(declare-fun res!503054 () Bool)

(assert (=> b!746127 (=> res!503054 e!416704)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7526 0))(
  ( (MissingZero!7526 (index!32471 (_ BitVec 32))) (Found!7526 (index!32472 (_ BitVec 32))) (Intermediate!7526 (undefined!8338 Bool) (index!32473 (_ BitVec 32)) (x!63445 (_ BitVec 32))) (Undefined!7526) (MissingVacant!7526 (index!32474 (_ BitVec 32))) )
))
(declare-fun lt!331580 () SeekEntryResult!7526)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!746127 (= res!503054 (or (not (is-Intermediate!7526 lt!331580)) (bvslt x!1131 (x!63445 lt!331580)) (not (= x!1131 (x!63445 lt!331580))) (not (= index!1321 (index!32473 lt!331580)))))))

(declare-fun e!416711 () Bool)

(assert (=> b!746127 e!416711))

(declare-fun res!503066 () Bool)

(assert (=> b!746127 (=> (not res!503066) (not e!416711))))

(declare-fun lt!331578 () SeekEntryResult!7526)

(declare-fun lt!331584 () SeekEntryResult!7526)

(assert (=> b!746127 (= res!503066 (= lt!331578 lt!331584))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!746127 (= lt!331584 (Found!7526 j!159))))

(declare-datatypes ((array!41618 0))(
  ( (array!41619 (arr!19919 (Array (_ BitVec 32) (_ BitVec 64))) (size!20340 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41618)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41618 (_ BitVec 32)) SeekEntryResult!7526)

(assert (=> b!746127 (= lt!331578 (seekEntryOrOpen!0 (select (arr!19919 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41618 (_ BitVec 32)) Bool)

(assert (=> b!746127 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25532 0))(
  ( (Unit!25533) )
))
(declare-fun lt!331585 () Unit!25532)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41618 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25532)

(assert (=> b!746127 (= lt!331585 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!746128 () Bool)

(declare-fun res!503052 () Bool)

(declare-fun e!416707 () Bool)

(assert (=> b!746128 (=> (not res!503052) (not e!416707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!746128 (= res!503052 (validKeyInArray!0 (select (arr!19919 a!3186) j!159)))))

(declare-fun e!416712 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!746129 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41618 (_ BitVec 32)) SeekEntryResult!7526)

(assert (=> b!746129 (= e!416712 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19919 a!3186) j!159) a!3186 mask!3328) (Found!7526 j!159)))))

(declare-fun b!746130 () Bool)

(declare-fun res!503057 () Bool)

(declare-fun e!416706 () Bool)

(assert (=> b!746130 (=> (not res!503057) (not e!416706))))

(declare-datatypes ((List!13974 0))(
  ( (Nil!13971) (Cons!13970 (h!15042 (_ BitVec 64)) (t!20297 List!13974)) )
))
(declare-fun arrayNoDuplicates!0 (array!41618 (_ BitVec 32) List!13974) Bool)

(assert (=> b!746130 (= res!503057 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13971))))

(declare-fun res!503063 () Bool)

(assert (=> start!65492 (=> (not res!503063) (not e!416707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65492 (= res!503063 (validMask!0 mask!3328))))

(assert (=> start!65492 e!416707))

(assert (=> start!65492 true))

(declare-fun array_inv!15693 (array!41618) Bool)

(assert (=> start!65492 (array_inv!15693 a!3186)))

(declare-fun b!746131 () Bool)

(declare-fun res!503053 () Bool)

(assert (=> b!746131 (=> (not res!503053) (not e!416706))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!746131 (= res!503053 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20340 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20340 a!3186))))))

(declare-fun b!746132 () Bool)

(declare-fun res!503060 () Bool)

(assert (=> b!746132 (=> (not res!503060) (not e!416707))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!746132 (= res!503060 (validKeyInArray!0 k!2102))))

(declare-fun lt!331583 () SeekEntryResult!7526)

(declare-fun b!746133 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41618 (_ BitVec 32)) SeekEntryResult!7526)

(assert (=> b!746133 (= e!416712 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19919 a!3186) j!159) a!3186 mask!3328) lt!331583))))

(declare-fun b!746134 () Bool)

(declare-fun e!416710 () Bool)

(assert (=> b!746134 (= e!416710 e!416709)))

(declare-fun res!503055 () Bool)

(assert (=> b!746134 (=> (not res!503055) (not e!416709))))

(declare-fun lt!331586 () SeekEntryResult!7526)

(assert (=> b!746134 (= res!503055 (= lt!331586 lt!331580))))

(declare-fun lt!331579 () (_ BitVec 64))

(declare-fun lt!331582 () array!41618)

(assert (=> b!746134 (= lt!331580 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331579 lt!331582 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!746134 (= lt!331586 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331579 mask!3328) lt!331579 lt!331582 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!746134 (= lt!331579 (select (store (arr!19919 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!746134 (= lt!331582 (array!41619 (store (arr!19919 a!3186) i!1173 k!2102) (size!20340 a!3186)))))

(declare-fun b!746135 () Bool)

(declare-fun res!503062 () Bool)

(assert (=> b!746135 (=> (not res!503062) (not e!416706))))

(assert (=> b!746135 (= res!503062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!746136 () Bool)

(declare-fun res!503061 () Bool)

(assert (=> b!746136 (=> (not res!503061) (not e!416710))))

(assert (=> b!746136 (= res!503061 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19919 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!746137 () Bool)

(declare-fun res!503056 () Bool)

(assert (=> b!746137 (=> (not res!503056) (not e!416707))))

(assert (=> b!746137 (= res!503056 (and (= (size!20340 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20340 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20340 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!746138 () Bool)

(declare-fun res!503064 () Bool)

(assert (=> b!746138 (=> (not res!503064) (not e!416707))))

(declare-fun arrayContainsKey!0 (array!41618 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!746138 (= res!503064 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!746139 () Bool)

(declare-fun e!416705 () Bool)

(assert (=> b!746139 (= e!416705 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun lt!331577 () SeekEntryResult!7526)

(assert (=> b!746139 (= lt!331578 lt!331577)))

(declare-fun b!746140 () Bool)

(assert (=> b!746140 (= e!416704 e!416705)))

(declare-fun res!503067 () Bool)

(assert (=> b!746140 (=> res!503067 e!416705)))

(assert (=> b!746140 (= res!503067 (or (not (= lt!331577 lt!331584)) (= (select (store (arr!19919 a!3186) i!1173 k!2102) index!1321) lt!331579) (not (= (select (store (arr!19919 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!746140 (= lt!331577 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19919 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!746141 () Bool)

(assert (=> b!746141 (= e!416707 e!416706)))

(declare-fun res!503065 () Bool)

(assert (=> b!746141 (=> (not res!503065) (not e!416706))))

(declare-fun lt!331581 () SeekEntryResult!7526)

(assert (=> b!746141 (= res!503065 (or (= lt!331581 (MissingZero!7526 i!1173)) (= lt!331581 (MissingVacant!7526 i!1173))))))

(assert (=> b!746141 (= lt!331581 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!746142 () Bool)

(assert (=> b!746142 (= e!416706 e!416710)))

(declare-fun res!503058 () Bool)

(assert (=> b!746142 (=> (not res!503058) (not e!416710))))

(assert (=> b!746142 (= res!503058 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19919 a!3186) j!159) mask!3328) (select (arr!19919 a!3186) j!159) a!3186 mask!3328) lt!331583))))

(assert (=> b!746142 (= lt!331583 (Intermediate!7526 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!746143 () Bool)

(declare-fun res!503059 () Bool)

(assert (=> b!746143 (=> (not res!503059) (not e!416710))))

(assert (=> b!746143 (= res!503059 e!416712)))

(declare-fun c!81918 () Bool)

(assert (=> b!746143 (= c!81918 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!746144 () Bool)

(assert (=> b!746144 (= e!416711 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19919 a!3186) j!159) a!3186 mask!3328) lt!331584))))

(assert (= (and start!65492 res!503063) b!746137))

(assert (= (and b!746137 res!503056) b!746128))

(assert (= (and b!746128 res!503052) b!746132))

(assert (= (and b!746132 res!503060) b!746138))

(assert (= (and b!746138 res!503064) b!746141))

(assert (= (and b!746141 res!503065) b!746135))

(assert (= (and b!746135 res!503062) b!746130))

(assert (= (and b!746130 res!503057) b!746131))

(assert (= (and b!746131 res!503053) b!746142))

(assert (= (and b!746142 res!503058) b!746136))

(assert (= (and b!746136 res!503061) b!746143))

(assert (= (and b!746143 c!81918) b!746133))

(assert (= (and b!746143 (not c!81918)) b!746129))

(assert (= (and b!746143 res!503059) b!746134))

(assert (= (and b!746134 res!503055) b!746127))

(assert (= (and b!746127 res!503066) b!746144))

(assert (= (and b!746127 (not res!503054)) b!746140))

(assert (= (and b!746140 (not res!503067)) b!746139))

(declare-fun m!696505 () Bool)

(assert (=> b!746132 m!696505))

(declare-fun m!696507 () Bool)

(assert (=> b!746142 m!696507))

(assert (=> b!746142 m!696507))

(declare-fun m!696509 () Bool)

(assert (=> b!746142 m!696509))

(assert (=> b!746142 m!696509))

(assert (=> b!746142 m!696507))

(declare-fun m!696511 () Bool)

(assert (=> b!746142 m!696511))

(assert (=> b!746129 m!696507))

(assert (=> b!746129 m!696507))

(declare-fun m!696513 () Bool)

(assert (=> b!746129 m!696513))

(assert (=> b!746144 m!696507))

(assert (=> b!746144 m!696507))

(declare-fun m!696515 () Bool)

(assert (=> b!746144 m!696515))

(declare-fun m!696517 () Bool)

(assert (=> start!65492 m!696517))

(declare-fun m!696519 () Bool)

(assert (=> start!65492 m!696519))

(declare-fun m!696521 () Bool)

(assert (=> b!746138 m!696521))

(declare-fun m!696523 () Bool)

(assert (=> b!746134 m!696523))

(declare-fun m!696525 () Bool)

(assert (=> b!746134 m!696525))

(declare-fun m!696527 () Bool)

(assert (=> b!746134 m!696527))

(declare-fun m!696529 () Bool)

(assert (=> b!746134 m!696529))

(assert (=> b!746134 m!696523))

(declare-fun m!696531 () Bool)

(assert (=> b!746134 m!696531))

(declare-fun m!696533 () Bool)

(assert (=> b!746141 m!696533))

(assert (=> b!746128 m!696507))

(assert (=> b!746128 m!696507))

(declare-fun m!696535 () Bool)

(assert (=> b!746128 m!696535))

(declare-fun m!696537 () Bool)

(assert (=> b!746135 m!696537))

(assert (=> b!746140 m!696527))

(declare-fun m!696539 () Bool)

(assert (=> b!746140 m!696539))

(assert (=> b!746140 m!696507))

(assert (=> b!746140 m!696507))

(assert (=> b!746140 m!696513))

(declare-fun m!696541 () Bool)

(assert (=> b!746136 m!696541))

(declare-fun m!696543 () Bool)

(assert (=> b!746130 m!696543))

(assert (=> b!746133 m!696507))

(assert (=> b!746133 m!696507))

(declare-fun m!696545 () Bool)

(assert (=> b!746133 m!696545))

(assert (=> b!746127 m!696507))

(assert (=> b!746127 m!696507))

(declare-fun m!696547 () Bool)

(assert (=> b!746127 m!696547))

(declare-fun m!696549 () Bool)

(assert (=> b!746127 m!696549))

(declare-fun m!696551 () Bool)

(assert (=> b!746127 m!696551))

(push 1)

(assert (not b!746133))

(assert (not b!746138))

(assert (not b!746127))

(assert (not b!746144))

(assert (not b!746140))

(assert (not b!746135))

(assert (not b!746132))

(assert (not b!746128))

(assert (not b!746142))

(assert (not start!65492))

(assert (not b!746130))

(assert (not b!746129))

(assert (not b!746134))

(assert (not b!746141))

(check-sat)

(pop 1)

(push 1)

(check-sat)

