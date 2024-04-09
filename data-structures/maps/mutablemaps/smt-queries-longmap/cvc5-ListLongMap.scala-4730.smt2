; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65458 () Bool)

(assert start!65458)

(declare-fun b!745209 () Bool)

(declare-fun res!502240 () Bool)

(declare-fun e!416250 () Bool)

(assert (=> b!745209 (=> (not res!502240) (not e!416250))))

(declare-datatypes ((array!41584 0))(
  ( (array!41585 (arr!19902 (Array (_ BitVec 32) (_ BitVec 64))) (size!20323 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41584)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!745209 (= res!502240 (and (= (size!20323 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20323 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20323 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!745210 () Bool)

(declare-fun e!416245 () Bool)

(assert (=> b!745210 (= e!416250 e!416245)))

(declare-fun res!502249 () Bool)

(assert (=> b!745210 (=> (not res!502249) (not e!416245))))

(declare-datatypes ((SeekEntryResult!7509 0))(
  ( (MissingZero!7509 (index!32403 (_ BitVec 32))) (Found!7509 (index!32404 (_ BitVec 32))) (Intermediate!7509 (undefined!8321 Bool) (index!32405 (_ BitVec 32)) (x!63388 (_ BitVec 32))) (Undefined!7509) (MissingVacant!7509 (index!32406 (_ BitVec 32))) )
))
(declare-fun lt!331085 () SeekEntryResult!7509)

(assert (=> b!745210 (= res!502249 (or (= lt!331085 (MissingZero!7509 i!1173)) (= lt!331085 (MissingVacant!7509 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41584 (_ BitVec 32)) SeekEntryResult!7509)

(assert (=> b!745210 (= lt!331085 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!745211 () Bool)

(declare-fun res!502250 () Bool)

(assert (=> b!745211 (=> (not res!502250) (not e!416250))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!745211 (= res!502250 (validKeyInArray!0 (select (arr!19902 a!3186) j!159)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!331091 () SeekEntryResult!7509)

(declare-fun e!416248 () Bool)

(declare-fun b!745212 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41584 (_ BitVec 32)) SeekEntryResult!7509)

(assert (=> b!745212 (= e!416248 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19902 a!3186) j!159) a!3186 mask!3328) lt!331091))))

(declare-fun b!745213 () Bool)

(declare-fun res!502247 () Bool)

(assert (=> b!745213 (=> (not res!502247) (not e!416245))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41584 (_ BitVec 32)) Bool)

(assert (=> b!745213 (= res!502247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!745214 () Bool)

(declare-fun e!416247 () Bool)

(assert (=> b!745214 (= e!416247 e!416248)))

(declare-fun res!502241 () Bool)

(assert (=> b!745214 (=> (not res!502241) (not e!416248))))

(assert (=> b!745214 (= res!502241 (= (seekEntryOrOpen!0 (select (arr!19902 a!3186) j!159) a!3186 mask!3328) lt!331091))))

(assert (=> b!745214 (= lt!331091 (Found!7509 j!159))))

(declare-fun b!745215 () Bool)

(declare-fun e!416249 () Bool)

(assert (=> b!745215 (= e!416249 true)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!331086 () SeekEntryResult!7509)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!745215 (= lt!331086 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19902 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!745216 () Bool)

(declare-fun e!416253 () Bool)

(declare-fun e!416246 () Bool)

(assert (=> b!745216 (= e!416253 e!416246)))

(declare-fun res!502243 () Bool)

(assert (=> b!745216 (=> (not res!502243) (not e!416246))))

(declare-fun lt!331083 () SeekEntryResult!7509)

(declare-fun lt!331090 () SeekEntryResult!7509)

(assert (=> b!745216 (= res!502243 (= lt!331083 lt!331090))))

(declare-fun lt!331084 () (_ BitVec 64))

(declare-fun lt!331088 () array!41584)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41584 (_ BitVec 32)) SeekEntryResult!7509)

(assert (=> b!745216 (= lt!331090 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331084 lt!331088 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!745216 (= lt!331083 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331084 mask!3328) lt!331084 lt!331088 mask!3328))))

(assert (=> b!745216 (= lt!331084 (select (store (arr!19902 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!745216 (= lt!331088 (array!41585 (store (arr!19902 a!3186) i!1173 k!2102) (size!20323 a!3186)))))

(declare-fun b!745217 () Bool)

(declare-fun res!502237 () Bool)

(assert (=> b!745217 (=> (not res!502237) (not e!416245))))

(assert (=> b!745217 (= res!502237 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20323 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20323 a!3186))))))

(declare-fun b!745219 () Bool)

(declare-fun res!502245 () Bool)

(assert (=> b!745219 (=> (not res!502245) (not e!416250))))

(declare-fun arrayContainsKey!0 (array!41584 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!745219 (= res!502245 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun e!416252 () Bool)

(declare-fun lt!331087 () SeekEntryResult!7509)

(declare-fun b!745220 () Bool)

(assert (=> b!745220 (= e!416252 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19902 a!3186) j!159) a!3186 mask!3328) lt!331087))))

(declare-fun b!745221 () Bool)

(declare-fun res!502239 () Bool)

(assert (=> b!745221 (=> (not res!502239) (not e!416253))))

(assert (=> b!745221 (= res!502239 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19902 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!745222 () Bool)

(declare-fun res!502238 () Bool)

(assert (=> b!745222 (=> (not res!502238) (not e!416250))))

(assert (=> b!745222 (= res!502238 (validKeyInArray!0 k!2102))))

(declare-fun b!745223 () Bool)

(assert (=> b!745223 (= e!416252 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19902 a!3186) j!159) a!3186 mask!3328) (Found!7509 j!159)))))

(declare-fun b!745224 () Bool)

(assert (=> b!745224 (= e!416245 e!416253)))

(declare-fun res!502244 () Bool)

(assert (=> b!745224 (=> (not res!502244) (not e!416253))))

(assert (=> b!745224 (= res!502244 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19902 a!3186) j!159) mask!3328) (select (arr!19902 a!3186) j!159) a!3186 mask!3328) lt!331087))))

(assert (=> b!745224 (= lt!331087 (Intermediate!7509 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!502242 () Bool)

(assert (=> start!65458 (=> (not res!502242) (not e!416250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65458 (= res!502242 (validMask!0 mask!3328))))

(assert (=> start!65458 e!416250))

(assert (=> start!65458 true))

(declare-fun array_inv!15676 (array!41584) Bool)

(assert (=> start!65458 (array_inv!15676 a!3186)))

(declare-fun b!745218 () Bool)

(assert (=> b!745218 (= e!416246 (not e!416249))))

(declare-fun res!502248 () Bool)

(assert (=> b!745218 (=> res!502248 e!416249)))

(assert (=> b!745218 (= res!502248 (or (not (is-Intermediate!7509 lt!331090)) (bvslt x!1131 (x!63388 lt!331090)) (not (= x!1131 (x!63388 lt!331090))) (not (= index!1321 (index!32405 lt!331090)))))))

(assert (=> b!745218 e!416247))

(declare-fun res!502251 () Bool)

(assert (=> b!745218 (=> (not res!502251) (not e!416247))))

(assert (=> b!745218 (= res!502251 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25498 0))(
  ( (Unit!25499) )
))
(declare-fun lt!331089 () Unit!25498)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41584 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25498)

(assert (=> b!745218 (= lt!331089 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!745225 () Bool)

(declare-fun res!502246 () Bool)

(assert (=> b!745225 (=> (not res!502246) (not e!416253))))

(assert (=> b!745225 (= res!502246 e!416252)))

(declare-fun c!81867 () Bool)

(assert (=> b!745225 (= c!81867 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!745226 () Bool)

(declare-fun res!502236 () Bool)

(assert (=> b!745226 (=> (not res!502236) (not e!416245))))

(declare-datatypes ((List!13957 0))(
  ( (Nil!13954) (Cons!13953 (h!15025 (_ BitVec 64)) (t!20280 List!13957)) )
))
(declare-fun arrayNoDuplicates!0 (array!41584 (_ BitVec 32) List!13957) Bool)

(assert (=> b!745226 (= res!502236 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13954))))

(assert (= (and start!65458 res!502242) b!745209))

(assert (= (and b!745209 res!502240) b!745211))

(assert (= (and b!745211 res!502250) b!745222))

(assert (= (and b!745222 res!502238) b!745219))

(assert (= (and b!745219 res!502245) b!745210))

(assert (= (and b!745210 res!502249) b!745213))

(assert (= (and b!745213 res!502247) b!745226))

(assert (= (and b!745226 res!502236) b!745217))

(assert (= (and b!745217 res!502237) b!745224))

(assert (= (and b!745224 res!502244) b!745221))

(assert (= (and b!745221 res!502239) b!745225))

(assert (= (and b!745225 c!81867) b!745220))

(assert (= (and b!745225 (not c!81867)) b!745223))

(assert (= (and b!745225 res!502246) b!745216))

(assert (= (and b!745216 res!502243) b!745218))

(assert (= (and b!745218 res!502251) b!745214))

(assert (= (and b!745214 res!502241) b!745212))

(assert (= (and b!745218 (not res!502248)) b!745215))

(declare-fun m!695701 () Bool)

(assert (=> b!745210 m!695701))

(declare-fun m!695703 () Bool)

(assert (=> b!745221 m!695703))

(declare-fun m!695705 () Bool)

(assert (=> b!745216 m!695705))

(declare-fun m!695707 () Bool)

(assert (=> b!745216 m!695707))

(declare-fun m!695709 () Bool)

(assert (=> b!745216 m!695709))

(declare-fun m!695711 () Bool)

(assert (=> b!745216 m!695711))

(assert (=> b!745216 m!695705))

(declare-fun m!695713 () Bool)

(assert (=> b!745216 m!695713))

(declare-fun m!695715 () Bool)

(assert (=> start!65458 m!695715))

(declare-fun m!695717 () Bool)

(assert (=> start!65458 m!695717))

(declare-fun m!695719 () Bool)

(assert (=> b!745224 m!695719))

(assert (=> b!745224 m!695719))

(declare-fun m!695721 () Bool)

(assert (=> b!745224 m!695721))

(assert (=> b!745224 m!695721))

(assert (=> b!745224 m!695719))

(declare-fun m!695723 () Bool)

(assert (=> b!745224 m!695723))

(assert (=> b!745214 m!695719))

(assert (=> b!745214 m!695719))

(declare-fun m!695725 () Bool)

(assert (=> b!745214 m!695725))

(assert (=> b!745223 m!695719))

(assert (=> b!745223 m!695719))

(declare-fun m!695727 () Bool)

(assert (=> b!745223 m!695727))

(declare-fun m!695729 () Bool)

(assert (=> b!745219 m!695729))

(assert (=> b!745220 m!695719))

(assert (=> b!745220 m!695719))

(declare-fun m!695731 () Bool)

(assert (=> b!745220 m!695731))

(declare-fun m!695733 () Bool)

(assert (=> b!745222 m!695733))

(assert (=> b!745211 m!695719))

(assert (=> b!745211 m!695719))

(declare-fun m!695735 () Bool)

(assert (=> b!745211 m!695735))

(assert (=> b!745215 m!695719))

(assert (=> b!745215 m!695719))

(assert (=> b!745215 m!695727))

(assert (=> b!745212 m!695719))

(assert (=> b!745212 m!695719))

(declare-fun m!695737 () Bool)

(assert (=> b!745212 m!695737))

(declare-fun m!695739 () Bool)

(assert (=> b!745218 m!695739))

(declare-fun m!695741 () Bool)

(assert (=> b!745218 m!695741))

(declare-fun m!695743 () Bool)

(assert (=> b!745226 m!695743))

(declare-fun m!695745 () Bool)

(assert (=> b!745213 m!695745))

(push 1)

