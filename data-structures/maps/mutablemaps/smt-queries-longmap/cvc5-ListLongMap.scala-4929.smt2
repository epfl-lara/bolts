; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67900 () Bool)

(assert start!67900)

(declare-fun b!789215 () Bool)

(declare-fun e!438687 () Bool)

(declare-fun e!438681 () Bool)

(assert (=> b!789215 (= e!438687 e!438681)))

(declare-fun res!534677 () Bool)

(assert (=> b!789215 (=> res!534677 e!438681)))

(declare-datatypes ((SeekEntryResult!8106 0))(
  ( (MissingZero!8106 (index!34791 (_ BitVec 32))) (Found!8106 (index!34792 (_ BitVec 32))) (Intermediate!8106 (undefined!8918 Bool) (index!34793 (_ BitVec 32)) (x!65760 (_ BitVec 32))) (Undefined!8106) (MissingVacant!8106 (index!34794 (_ BitVec 32))) )
))
(declare-fun lt!352156 () SeekEntryResult!8106)

(declare-fun lt!352161 () SeekEntryResult!8106)

(assert (=> b!789215 (= res!534677 (not (= lt!352156 lt!352161)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42832 0))(
  ( (array!42833 (arr!20499 (Array (_ BitVec 32) (_ BitVec 64))) (size!20920 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42832)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42832 (_ BitVec 32)) SeekEntryResult!8106)

(assert (=> b!789215 (= lt!352156 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20499 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!789216 () Bool)

(declare-fun e!438686 () Bool)

(declare-fun e!438682 () Bool)

(assert (=> b!789216 (= e!438686 e!438682)))

(declare-fun res!534686 () Bool)

(assert (=> b!789216 (=> (not res!534686) (not e!438682))))

(declare-fun lt!352164 () SeekEntryResult!8106)

(declare-fun lt!352165 () SeekEntryResult!8106)

(assert (=> b!789216 (= res!534686 (= lt!352164 lt!352165))))

(declare-fun lt!352157 () array!42832)

(declare-fun lt!352163 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42832 (_ BitVec 32)) SeekEntryResult!8106)

(assert (=> b!789216 (= lt!352165 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352163 lt!352157 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!789216 (= lt!352164 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352163 mask!3328) lt!352163 lt!352157 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!789216 (= lt!352163 (select (store (arr!20499 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!789216 (= lt!352157 (array!42833 (store (arr!20499 a!3186) i!1173 k!2102) (size!20920 a!3186)))))

(declare-fun b!789217 () Bool)

(declare-fun res!534681 () Bool)

(assert (=> b!789217 (=> (not res!534681) (not e!438686))))

(assert (=> b!789217 (= res!534681 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20499 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!352158 () SeekEntryResult!8106)

(declare-fun e!438677 () Bool)

(declare-fun b!789218 () Bool)

(assert (=> b!789218 (= e!438677 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20499 a!3186) j!159) a!3186 mask!3328) lt!352158))))

(declare-fun res!534676 () Bool)

(declare-fun e!438680 () Bool)

(assert (=> start!67900 (=> (not res!534676) (not e!438680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67900 (= res!534676 (validMask!0 mask!3328))))

(assert (=> start!67900 e!438680))

(assert (=> start!67900 true))

(declare-fun array_inv!16273 (array!42832) Bool)

(assert (=> start!67900 (array_inv!16273 a!3186)))

(declare-fun b!789219 () Bool)

(declare-datatypes ((Unit!27334 0))(
  ( (Unit!27335) )
))
(declare-fun e!438678 () Unit!27334)

(declare-fun Unit!27336 () Unit!27334)

(assert (=> b!789219 (= e!438678 Unit!27336)))

(assert (=> b!789219 false))

(declare-fun b!789220 () Bool)

(declare-fun Unit!27337 () Unit!27334)

(assert (=> b!789220 (= e!438678 Unit!27337)))

(declare-fun b!789221 () Bool)

(declare-fun e!438688 () Bool)

(assert (=> b!789221 (= e!438688 e!438686)))

(declare-fun res!534675 () Bool)

(assert (=> b!789221 (=> (not res!534675) (not e!438686))))

(assert (=> b!789221 (= res!534675 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20499 a!3186) j!159) mask!3328) (select (arr!20499 a!3186) j!159) a!3186 mask!3328) lt!352158))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!789221 (= lt!352158 (Intermediate!8106 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!789222 () Bool)

(assert (=> b!789222 (= e!438682 (not e!438687))))

(declare-fun res!534674 () Bool)

(assert (=> b!789222 (=> res!534674 e!438687)))

(assert (=> b!789222 (= res!534674 (or (not (is-Intermediate!8106 lt!352165)) (bvslt x!1131 (x!65760 lt!352165)) (not (= x!1131 (x!65760 lt!352165))) (not (= index!1321 (index!34793 lt!352165)))))))

(declare-fun e!438679 () Bool)

(assert (=> b!789222 e!438679))

(declare-fun res!534682 () Bool)

(assert (=> b!789222 (=> (not res!534682) (not e!438679))))

(declare-fun lt!352154 () SeekEntryResult!8106)

(assert (=> b!789222 (= res!534682 (= lt!352154 lt!352161))))

(assert (=> b!789222 (= lt!352161 (Found!8106 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42832 (_ BitVec 32)) SeekEntryResult!8106)

(assert (=> b!789222 (= lt!352154 (seekEntryOrOpen!0 (select (arr!20499 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42832 (_ BitVec 32)) Bool)

(assert (=> b!789222 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!352160 () Unit!27334)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42832 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27334)

(assert (=> b!789222 (= lt!352160 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!789223 () Bool)

(declare-fun res!534683 () Bool)

(assert (=> b!789223 (=> (not res!534683) (not e!438688))))

(declare-datatypes ((List!14554 0))(
  ( (Nil!14551) (Cons!14550 (h!15676 (_ BitVec 64)) (t!20877 List!14554)) )
))
(declare-fun arrayNoDuplicates!0 (array!42832 (_ BitVec 32) List!14554) Bool)

(assert (=> b!789223 (= res!534683 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14551))))

(declare-fun b!789224 () Bool)

(assert (=> b!789224 (= e!438679 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20499 a!3186) j!159) a!3186 mask!3328) lt!352161))))

(declare-fun b!789225 () Bool)

(declare-fun res!534679 () Bool)

(assert (=> b!789225 (=> (not res!534679) (not e!438680))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!789225 (= res!534679 (validKeyInArray!0 k!2102))))

(declare-fun b!789226 () Bool)

(assert (=> b!789226 (= e!438677 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20499 a!3186) j!159) a!3186 mask!3328) (Found!8106 j!159)))))

(declare-fun b!789227 () Bool)

(assert (=> b!789227 (= e!438680 e!438688)))

(declare-fun res!534680 () Bool)

(assert (=> b!789227 (=> (not res!534680) (not e!438688))))

(declare-fun lt!352159 () SeekEntryResult!8106)

(assert (=> b!789227 (= res!534680 (or (= lt!352159 (MissingZero!8106 i!1173)) (= lt!352159 (MissingVacant!8106 i!1173))))))

(assert (=> b!789227 (= lt!352159 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!789228 () Bool)

(declare-fun res!534690 () Bool)

(assert (=> b!789228 (=> (not res!534690) (not e!438686))))

(assert (=> b!789228 (= res!534690 e!438677)))

(declare-fun c!87681 () Bool)

(assert (=> b!789228 (= c!87681 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!789229 () Bool)

(declare-fun res!534685 () Bool)

(assert (=> b!789229 (=> (not res!534685) (not e!438680))))

(assert (=> b!789229 (= res!534685 (validKeyInArray!0 (select (arr!20499 a!3186) j!159)))))

(declare-fun b!789230 () Bool)

(declare-fun res!534689 () Bool)

(assert (=> b!789230 (=> (not res!534689) (not e!438680))))

(assert (=> b!789230 (= res!534689 (and (= (size!20920 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20920 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20920 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!789231 () Bool)

(declare-fun res!534687 () Bool)

(declare-fun e!438684 () Bool)

(assert (=> b!789231 (=> (not res!534687) (not e!438684))))

(assert (=> b!789231 (= res!534687 (= (seekEntryOrOpen!0 lt!352163 lt!352157 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!352163 lt!352157 mask!3328)))))

(declare-fun b!789232 () Bool)

(declare-fun e!438685 () Bool)

(assert (=> b!789232 (= e!438685 true)))

(assert (=> b!789232 e!438684))

(declare-fun res!534678 () Bool)

(assert (=> b!789232 (=> (not res!534678) (not e!438684))))

(declare-fun lt!352162 () (_ BitVec 64))

(assert (=> b!789232 (= res!534678 (= lt!352162 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!352155 () Unit!27334)

(assert (=> b!789232 (= lt!352155 e!438678)))

(declare-fun c!87680 () Bool)

(assert (=> b!789232 (= c!87680 (= lt!352162 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!789233 () Bool)

(assert (=> b!789233 (= e!438684 (= lt!352154 lt!352156))))

(declare-fun b!789234 () Bool)

(declare-fun res!534684 () Bool)

(assert (=> b!789234 (=> (not res!534684) (not e!438688))))

(assert (=> b!789234 (= res!534684 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20920 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20920 a!3186))))))

(declare-fun b!789235 () Bool)

(declare-fun res!534673 () Bool)

(assert (=> b!789235 (=> (not res!534673) (not e!438680))))

(declare-fun arrayContainsKey!0 (array!42832 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!789235 (= res!534673 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!789236 () Bool)

(declare-fun res!534688 () Bool)

(assert (=> b!789236 (=> (not res!534688) (not e!438688))))

(assert (=> b!789236 (= res!534688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!789237 () Bool)

(assert (=> b!789237 (= e!438681 e!438685)))

(declare-fun res!534691 () Bool)

(assert (=> b!789237 (=> res!534691 e!438685)))

(assert (=> b!789237 (= res!534691 (= lt!352162 lt!352163))))

(assert (=> b!789237 (= lt!352162 (select (store (arr!20499 a!3186) i!1173 k!2102) index!1321))))

(assert (= (and start!67900 res!534676) b!789230))

(assert (= (and b!789230 res!534689) b!789229))

(assert (= (and b!789229 res!534685) b!789225))

(assert (= (and b!789225 res!534679) b!789235))

(assert (= (and b!789235 res!534673) b!789227))

(assert (= (and b!789227 res!534680) b!789236))

(assert (= (and b!789236 res!534688) b!789223))

(assert (= (and b!789223 res!534683) b!789234))

(assert (= (and b!789234 res!534684) b!789221))

(assert (= (and b!789221 res!534675) b!789217))

(assert (= (and b!789217 res!534681) b!789228))

(assert (= (and b!789228 c!87681) b!789218))

(assert (= (and b!789228 (not c!87681)) b!789226))

(assert (= (and b!789228 res!534690) b!789216))

(assert (= (and b!789216 res!534686) b!789222))

(assert (= (and b!789222 res!534682) b!789224))

(assert (= (and b!789222 (not res!534674)) b!789215))

(assert (= (and b!789215 (not res!534677)) b!789237))

(assert (= (and b!789237 (not res!534691)) b!789232))

(assert (= (and b!789232 c!87680) b!789219))

(assert (= (and b!789232 (not c!87680)) b!789220))

(assert (= (and b!789232 res!534678) b!789231))

(assert (= (and b!789231 res!534687) b!789233))

(declare-fun m!730393 () Bool)

(assert (=> b!789224 m!730393))

(assert (=> b!789224 m!730393))

(declare-fun m!730395 () Bool)

(assert (=> b!789224 m!730395))

(declare-fun m!730397 () Bool)

(assert (=> b!789236 m!730397))

(assert (=> b!789222 m!730393))

(assert (=> b!789222 m!730393))

(declare-fun m!730399 () Bool)

(assert (=> b!789222 m!730399))

(declare-fun m!730401 () Bool)

(assert (=> b!789222 m!730401))

(declare-fun m!730403 () Bool)

(assert (=> b!789222 m!730403))

(assert (=> b!789221 m!730393))

(assert (=> b!789221 m!730393))

(declare-fun m!730405 () Bool)

(assert (=> b!789221 m!730405))

(assert (=> b!789221 m!730405))

(assert (=> b!789221 m!730393))

(declare-fun m!730407 () Bool)

(assert (=> b!789221 m!730407))

(assert (=> b!789218 m!730393))

(assert (=> b!789218 m!730393))

(declare-fun m!730409 () Bool)

(assert (=> b!789218 m!730409))

(declare-fun m!730411 () Bool)

(assert (=> b!789217 m!730411))

(assert (=> b!789215 m!730393))

(assert (=> b!789215 m!730393))

(declare-fun m!730413 () Bool)

(assert (=> b!789215 m!730413))

(declare-fun m!730415 () Bool)

(assert (=> b!789225 m!730415))

(declare-fun m!730417 () Bool)

(assert (=> start!67900 m!730417))

(declare-fun m!730419 () Bool)

(assert (=> start!67900 m!730419))

(declare-fun m!730421 () Bool)

(assert (=> b!789227 m!730421))

(assert (=> b!789226 m!730393))

(assert (=> b!789226 m!730393))

(assert (=> b!789226 m!730413))

(declare-fun m!730423 () Bool)

(assert (=> b!789216 m!730423))

(declare-fun m!730425 () Bool)

(assert (=> b!789216 m!730425))

(declare-fun m!730427 () Bool)

(assert (=> b!789216 m!730427))

(assert (=> b!789216 m!730425))

(declare-fun m!730429 () Bool)

(assert (=> b!789216 m!730429))

(declare-fun m!730431 () Bool)

(assert (=> b!789216 m!730431))

(declare-fun m!730433 () Bool)

(assert (=> b!789235 m!730433))

(declare-fun m!730435 () Bool)

(assert (=> b!789231 m!730435))

(declare-fun m!730437 () Bool)

(assert (=> b!789231 m!730437))

(assert (=> b!789229 m!730393))

(assert (=> b!789229 m!730393))

(declare-fun m!730439 () Bool)

(assert (=> b!789229 m!730439))

(assert (=> b!789237 m!730427))

(declare-fun m!730441 () Bool)

(assert (=> b!789237 m!730441))

(declare-fun m!730443 () Bool)

(assert (=> b!789223 m!730443))

(push 1)

