; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67360 () Bool)

(assert start!67360)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42544 0))(
  ( (array!42545 (arr!20361 (Array (_ BitVec 32) (_ BitVec 64))) (size!20782 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42544)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!433168 () Bool)

(declare-datatypes ((SeekEntryResult!7968 0))(
  ( (MissingZero!7968 (index!34239 (_ BitVec 32))) (Found!7968 (index!34240 (_ BitVec 32))) (Intermediate!7968 (undefined!8780 Bool) (index!34241 (_ BitVec 32)) (x!65218 (_ BitVec 32))) (Undefined!7968) (MissingVacant!7968 (index!34242 (_ BitVec 32))) )
))
(declare-fun lt!346864 () SeekEntryResult!7968)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!778519 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42544 (_ BitVec 32)) SeekEntryResult!7968)

(assert (=> b!778519 (= e!433168 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20361 a!3186) j!159) a!3186 mask!3328) lt!346864))))

(declare-fun b!778520 () Bool)

(declare-fun res!526735 () Bool)

(declare-fun e!433171 () Bool)

(assert (=> b!778520 (=> (not res!526735) (not e!433171))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!778520 (= res!526735 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20782 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20782 a!3186))))))

(declare-fun e!433170 () Bool)

(declare-fun b!778521 () Bool)

(declare-fun lt!346866 () SeekEntryResult!7968)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42544 (_ BitVec 32)) SeekEntryResult!7968)

(assert (=> b!778521 (= e!433170 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20361 a!3186) j!159) a!3186 mask!3328) lt!346866))))

(declare-fun b!778522 () Bool)

(declare-fun res!526744 () Bool)

(declare-fun e!433167 () Bool)

(assert (=> b!778522 (=> (not res!526744) (not e!433167))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!778522 (= res!526744 (validKeyInArray!0 (select (arr!20361 a!3186) j!159)))))

(declare-fun b!778523 () Bool)

(declare-fun e!433165 () Bool)

(declare-fun e!433166 () Bool)

(assert (=> b!778523 (= e!433165 (not e!433166))))

(declare-fun res!526736 () Bool)

(assert (=> b!778523 (=> res!526736 e!433166)))

(declare-fun lt!346859 () SeekEntryResult!7968)

(assert (=> b!778523 (= res!526736 (or (not (is-Intermediate!7968 lt!346859)) (bvslt x!1131 (x!65218 lt!346859)) (not (= x!1131 (x!65218 lt!346859))) (not (= index!1321 (index!34241 lt!346859)))))))

(declare-fun e!433164 () Bool)

(assert (=> b!778523 e!433164))

(declare-fun res!526730 () Bool)

(assert (=> b!778523 (=> (not res!526730) (not e!433164))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42544 (_ BitVec 32)) Bool)

(assert (=> b!778523 (= res!526730 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26830 0))(
  ( (Unit!26831) )
))
(declare-fun lt!346862 () Unit!26830)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42544 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26830)

(assert (=> b!778523 (= lt!346862 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!778525 () Bool)

(declare-fun res!526732 () Bool)

(declare-fun e!433169 () Bool)

(assert (=> b!778525 (=> (not res!526732) (not e!433169))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!778525 (= res!526732 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20361 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!778526 () Bool)

(declare-fun res!526742 () Bool)

(assert (=> b!778526 (=> (not res!526742) (not e!433167))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!778526 (= res!526742 (validKeyInArray!0 k!2102))))

(declare-fun b!778527 () Bool)

(declare-fun res!526738 () Bool)

(assert (=> b!778527 (=> (not res!526738) (not e!433167))))

(assert (=> b!778527 (= res!526738 (and (= (size!20782 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20782 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20782 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!778528 () Bool)

(declare-fun res!526737 () Bool)

(assert (=> b!778528 (=> (not res!526737) (not e!433169))))

(assert (=> b!778528 (= res!526737 e!433170)))

(declare-fun c!86298 () Bool)

(assert (=> b!778528 (= c!86298 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!778529 () Bool)

(assert (=> b!778529 (= e!433167 e!433171)))

(declare-fun res!526741 () Bool)

(assert (=> b!778529 (=> (not res!526741) (not e!433171))))

(declare-fun lt!346860 () SeekEntryResult!7968)

(assert (=> b!778529 (= res!526741 (or (= lt!346860 (MissingZero!7968 i!1173)) (= lt!346860 (MissingVacant!7968 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42544 (_ BitVec 32)) SeekEntryResult!7968)

(assert (=> b!778529 (= lt!346860 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!778530 () Bool)

(assert (=> b!778530 (= e!433164 e!433168)))

(declare-fun res!526729 () Bool)

(assert (=> b!778530 (=> (not res!526729) (not e!433168))))

(assert (=> b!778530 (= res!526729 (= (seekEntryOrOpen!0 (select (arr!20361 a!3186) j!159) a!3186 mask!3328) lt!346864))))

(assert (=> b!778530 (= lt!346864 (Found!7968 j!159))))

(declare-fun b!778531 () Bool)

(assert (=> b!778531 (= e!433170 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20361 a!3186) j!159) a!3186 mask!3328) (Found!7968 j!159)))))

(declare-fun b!778532 () Bool)

(declare-fun res!526734 () Bool)

(assert (=> b!778532 (=> (not res!526734) (not e!433171))))

(declare-datatypes ((List!14416 0))(
  ( (Nil!14413) (Cons!14412 (h!15526 (_ BitVec 64)) (t!20739 List!14416)) )
))
(declare-fun arrayNoDuplicates!0 (array!42544 (_ BitVec 32) List!14416) Bool)

(assert (=> b!778532 (= res!526734 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14413))))

(declare-fun b!778533 () Bool)

(declare-fun res!526731 () Bool)

(assert (=> b!778533 (=> (not res!526731) (not e!433171))))

(assert (=> b!778533 (= res!526731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!778534 () Bool)

(assert (=> b!778534 (= e!433169 e!433165)))

(declare-fun res!526733 () Bool)

(assert (=> b!778534 (=> (not res!526733) (not e!433165))))

(declare-fun lt!346861 () SeekEntryResult!7968)

(assert (=> b!778534 (= res!526733 (= lt!346861 lt!346859))))

(declare-fun lt!346863 () array!42544)

(declare-fun lt!346867 () (_ BitVec 64))

(assert (=> b!778534 (= lt!346859 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346867 lt!346863 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!778534 (= lt!346861 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346867 mask!3328) lt!346867 lt!346863 mask!3328))))

(assert (=> b!778534 (= lt!346867 (select (store (arr!20361 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!778534 (= lt!346863 (array!42545 (store (arr!20361 a!3186) i!1173 k!2102) (size!20782 a!3186)))))

(declare-fun res!526743 () Bool)

(assert (=> start!67360 (=> (not res!526743) (not e!433167))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67360 (= res!526743 (validMask!0 mask!3328))))

(assert (=> start!67360 e!433167))

(assert (=> start!67360 true))

(declare-fun array_inv!16135 (array!42544) Bool)

(assert (=> start!67360 (array_inv!16135 a!3186)))

(declare-fun b!778524 () Bool)

(declare-fun res!526739 () Bool)

(assert (=> b!778524 (=> (not res!526739) (not e!433167))))

(declare-fun arrayContainsKey!0 (array!42544 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!778524 (= res!526739 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!778535 () Bool)

(assert (=> b!778535 (= e!433171 e!433169)))

(declare-fun res!526740 () Bool)

(assert (=> b!778535 (=> (not res!526740) (not e!433169))))

(assert (=> b!778535 (= res!526740 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20361 a!3186) j!159) mask!3328) (select (arr!20361 a!3186) j!159) a!3186 mask!3328) lt!346866))))

(assert (=> b!778535 (= lt!346866 (Intermediate!7968 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!778536 () Bool)

(assert (=> b!778536 (= e!433166 true)))

(declare-fun lt!346865 () SeekEntryResult!7968)

(assert (=> b!778536 (= lt!346865 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20361 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and start!67360 res!526743) b!778527))

(assert (= (and b!778527 res!526738) b!778522))

(assert (= (and b!778522 res!526744) b!778526))

(assert (= (and b!778526 res!526742) b!778524))

(assert (= (and b!778524 res!526739) b!778529))

(assert (= (and b!778529 res!526741) b!778533))

(assert (= (and b!778533 res!526731) b!778532))

(assert (= (and b!778532 res!526734) b!778520))

(assert (= (and b!778520 res!526735) b!778535))

(assert (= (and b!778535 res!526740) b!778525))

(assert (= (and b!778525 res!526732) b!778528))

(assert (= (and b!778528 c!86298) b!778521))

(assert (= (and b!778528 (not c!86298)) b!778531))

(assert (= (and b!778528 res!526737) b!778534))

(assert (= (and b!778534 res!526733) b!778523))

(assert (= (and b!778523 res!526730) b!778530))

(assert (= (and b!778530 res!526729) b!778519))

(assert (= (and b!778523 (not res!526736)) b!778536))

(declare-fun m!722215 () Bool)

(assert (=> b!778523 m!722215))

(declare-fun m!722217 () Bool)

(assert (=> b!778523 m!722217))

(declare-fun m!722219 () Bool)

(assert (=> b!778533 m!722219))

(declare-fun m!722221 () Bool)

(assert (=> b!778535 m!722221))

(assert (=> b!778535 m!722221))

(declare-fun m!722223 () Bool)

(assert (=> b!778535 m!722223))

(assert (=> b!778535 m!722223))

(assert (=> b!778535 m!722221))

(declare-fun m!722225 () Bool)

(assert (=> b!778535 m!722225))

(assert (=> b!778519 m!722221))

(assert (=> b!778519 m!722221))

(declare-fun m!722227 () Bool)

(assert (=> b!778519 m!722227))

(declare-fun m!722229 () Bool)

(assert (=> b!778532 m!722229))

(declare-fun m!722231 () Bool)

(assert (=> b!778529 m!722231))

(assert (=> b!778521 m!722221))

(assert (=> b!778521 m!722221))

(declare-fun m!722233 () Bool)

(assert (=> b!778521 m!722233))

(assert (=> b!778531 m!722221))

(assert (=> b!778531 m!722221))

(declare-fun m!722235 () Bool)

(assert (=> b!778531 m!722235))

(declare-fun m!722237 () Bool)

(assert (=> start!67360 m!722237))

(declare-fun m!722239 () Bool)

(assert (=> start!67360 m!722239))

(declare-fun m!722241 () Bool)

(assert (=> b!778534 m!722241))

(declare-fun m!722243 () Bool)

(assert (=> b!778534 m!722243))

(assert (=> b!778534 m!722241))

(declare-fun m!722245 () Bool)

(assert (=> b!778534 m!722245))

(declare-fun m!722247 () Bool)

(assert (=> b!778534 m!722247))

(declare-fun m!722249 () Bool)

(assert (=> b!778534 m!722249))

(assert (=> b!778536 m!722221))

(assert (=> b!778536 m!722221))

(assert (=> b!778536 m!722235))

(assert (=> b!778522 m!722221))

(assert (=> b!778522 m!722221))

(declare-fun m!722251 () Bool)

(assert (=> b!778522 m!722251))

(assert (=> b!778530 m!722221))

(assert (=> b!778530 m!722221))

(declare-fun m!722253 () Bool)

(assert (=> b!778530 m!722253))

(declare-fun m!722255 () Bool)

(assert (=> b!778525 m!722255))

(declare-fun m!722257 () Bool)

(assert (=> b!778526 m!722257))

(declare-fun m!722259 () Bool)

(assert (=> b!778524 m!722259))

(push 1)

