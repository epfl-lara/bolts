; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66782 () Bool)

(assert start!66782)

(declare-fun res!520308 () Bool)

(declare-fun e!428359 () Bool)

(assert (=> start!66782 (=> (not res!520308) (not e!428359))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66782 (= res!520308 (validMask!0 mask!3328))))

(assert (=> start!66782 e!428359))

(assert (=> start!66782 true))

(declare-datatypes ((array!42299 0))(
  ( (array!42300 (arr!20246 (Array (_ BitVec 32) (_ BitVec 64))) (size!20667 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42299)

(declare-fun array_inv!16020 (array!42299) Bool)

(assert (=> start!66782 (array_inv!16020 a!3186)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7853 0))(
  ( (MissingZero!7853 (index!33779 (_ BitVec 32))) (Found!7853 (index!33780 (_ BitVec 32))) (Intermediate!7853 (undefined!8665 Bool) (index!33781 (_ BitVec 32)) (x!64737 (_ BitVec 32))) (Undefined!7853) (MissingVacant!7853 (index!33782 (_ BitVec 32))) )
))
(declare-fun lt!342261 () SeekEntryResult!7853)

(declare-fun b!769205 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!428358 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42299 (_ BitVec 32)) SeekEntryResult!7853)

(assert (=> b!769205 (= e!428358 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20246 a!3186) j!159) a!3186 mask!3328) lt!342261))))

(declare-fun b!769206 () Bool)

(declare-fun res!520310 () Bool)

(declare-fun e!428353 () Bool)

(assert (=> b!769206 (=> (not res!520310) (not e!428353))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!769206 (= res!520310 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20246 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!769207 () Bool)

(declare-fun e!428351 () Bool)

(assert (=> b!769207 (= e!428351 e!428358)))

(declare-fun res!520303 () Bool)

(assert (=> b!769207 (=> (not res!520303) (not e!428358))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42299 (_ BitVec 32)) SeekEntryResult!7853)

(assert (=> b!769207 (= res!520303 (= (seekEntryOrOpen!0 (select (arr!20246 a!3186) j!159) a!3186 mask!3328) lt!342261))))

(assert (=> b!769207 (= lt!342261 (Found!7853 j!159))))

(declare-fun b!769208 () Bool)

(declare-datatypes ((Unit!26448 0))(
  ( (Unit!26449) )
))
(declare-fun e!428352 () Unit!26448)

(declare-fun Unit!26450 () Unit!26448)

(assert (=> b!769208 (= e!428352 Unit!26450)))

(declare-fun lt!342256 () (_ BitVec 32))

(declare-fun lt!342264 () SeekEntryResult!7853)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42299 (_ BitVec 32)) SeekEntryResult!7853)

(assert (=> b!769208 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342256 (select (arr!20246 a!3186) j!159) a!3186 mask!3328) lt!342264)))

(declare-fun b!769209 () Bool)

(declare-fun Unit!26451 () Unit!26448)

(assert (=> b!769209 (= e!428352 Unit!26451)))

(declare-fun lt!342260 () SeekEntryResult!7853)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!769209 (= lt!342260 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20246 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!769209 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342256 resIntermediateIndex!5 (select (arr!20246 a!3186) j!159) a!3186 mask!3328) (Found!7853 j!159))))

(declare-fun b!769210 () Bool)

(declare-fun res!520301 () Bool)

(assert (=> b!769210 (=> (not res!520301) (not e!428359))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!769210 (= res!520301 (validKeyInArray!0 (select (arr!20246 a!3186) j!159)))))

(declare-fun b!769211 () Bool)

(declare-fun res!520305 () Bool)

(assert (=> b!769211 (=> (not res!520305) (not e!428359))))

(assert (=> b!769211 (= res!520305 (and (= (size!20667 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20667 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20667 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!769212 () Bool)

(declare-fun res!520315 () Bool)

(declare-fun e!428350 () Bool)

(assert (=> b!769212 (=> (not res!520315) (not e!428350))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42299 (_ BitVec 32)) Bool)

(assert (=> b!769212 (= res!520315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!769213 () Bool)

(assert (=> b!769213 (= e!428350 e!428353)))

(declare-fun res!520306 () Bool)

(assert (=> b!769213 (=> (not res!520306) (not e!428353))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769213 (= res!520306 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20246 a!3186) j!159) mask!3328) (select (arr!20246 a!3186) j!159) a!3186 mask!3328) lt!342264))))

(assert (=> b!769213 (= lt!342264 (Intermediate!7853 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!769214 () Bool)

(declare-fun e!428354 () Bool)

(assert (=> b!769214 (= e!428353 e!428354)))

(declare-fun res!520300 () Bool)

(assert (=> b!769214 (=> (not res!520300) (not e!428354))))

(declare-fun lt!342258 () SeekEntryResult!7853)

(declare-fun lt!342265 () SeekEntryResult!7853)

(assert (=> b!769214 (= res!520300 (= lt!342258 lt!342265))))

(declare-fun lt!342259 () (_ BitVec 64))

(declare-fun lt!342257 () array!42299)

(assert (=> b!769214 (= lt!342265 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342259 lt!342257 mask!3328))))

(assert (=> b!769214 (= lt!342258 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342259 mask!3328) lt!342259 lt!342257 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!769214 (= lt!342259 (select (store (arr!20246 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!769214 (= lt!342257 (array!42300 (store (arr!20246 a!3186) i!1173 k!2102) (size!20667 a!3186)))))

(declare-fun b!769215 () Bool)

(declare-fun res!520314 () Bool)

(assert (=> b!769215 (=> (not res!520314) (not e!428350))))

(declare-datatypes ((List!14301 0))(
  ( (Nil!14298) (Cons!14297 (h!15396 (_ BitVec 64)) (t!20624 List!14301)) )
))
(declare-fun arrayNoDuplicates!0 (array!42299 (_ BitVec 32) List!14301) Bool)

(assert (=> b!769215 (= res!520314 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14298))))

(declare-fun b!769216 () Bool)

(declare-fun res!520309 () Bool)

(assert (=> b!769216 (=> (not res!520309) (not e!428359))))

(declare-fun arrayContainsKey!0 (array!42299 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!769216 (= res!520309 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun e!428357 () Bool)

(declare-fun b!769217 () Bool)

(assert (=> b!769217 (= e!428357 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20246 a!3186) j!159) a!3186 mask!3328) (Found!7853 j!159)))))

(declare-fun b!769218 () Bool)

(declare-fun res!520304 () Bool)

(assert (=> b!769218 (=> (not res!520304) (not e!428353))))

(assert (=> b!769218 (= res!520304 e!428357)))

(declare-fun c!84848 () Bool)

(assert (=> b!769218 (= c!84848 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!769219 () Bool)

(declare-fun e!428355 () Bool)

(assert (=> b!769219 (= e!428354 (not e!428355))))

(declare-fun res!520312 () Bool)

(assert (=> b!769219 (=> res!520312 e!428355)))

(assert (=> b!769219 (= res!520312 (or (not (is-Intermediate!7853 lt!342265)) (bvsge x!1131 (x!64737 lt!342265))))))

(assert (=> b!769219 e!428351))

(declare-fun res!520313 () Bool)

(assert (=> b!769219 (=> (not res!520313) (not e!428351))))

(assert (=> b!769219 (= res!520313 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342262 () Unit!26448)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42299 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26448)

(assert (=> b!769219 (= lt!342262 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!769220 () Bool)

(declare-fun res!520307 () Bool)

(assert (=> b!769220 (=> (not res!520307) (not e!428350))))

(assert (=> b!769220 (= res!520307 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20667 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20667 a!3186))))))

(declare-fun b!769221 () Bool)

(assert (=> b!769221 (= e!428355 true)))

(declare-fun lt!342255 () Unit!26448)

(assert (=> b!769221 (= lt!342255 e!428352)))

(declare-fun c!84849 () Bool)

(assert (=> b!769221 (= c!84849 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769221 (= lt!342256 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!769222 () Bool)

(declare-fun res!520302 () Bool)

(assert (=> b!769222 (=> (not res!520302) (not e!428359))))

(assert (=> b!769222 (= res!520302 (validKeyInArray!0 k!2102))))

(declare-fun b!769223 () Bool)

(assert (=> b!769223 (= e!428357 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20246 a!3186) j!159) a!3186 mask!3328) lt!342264))))

(declare-fun b!769224 () Bool)

(assert (=> b!769224 (= e!428359 e!428350)))

(declare-fun res!520311 () Bool)

(assert (=> b!769224 (=> (not res!520311) (not e!428350))))

(declare-fun lt!342263 () SeekEntryResult!7853)

(assert (=> b!769224 (= res!520311 (or (= lt!342263 (MissingZero!7853 i!1173)) (= lt!342263 (MissingVacant!7853 i!1173))))))

(assert (=> b!769224 (= lt!342263 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!66782 res!520308) b!769211))

(assert (= (and b!769211 res!520305) b!769210))

(assert (= (and b!769210 res!520301) b!769222))

(assert (= (and b!769222 res!520302) b!769216))

(assert (= (and b!769216 res!520309) b!769224))

(assert (= (and b!769224 res!520311) b!769212))

(assert (= (and b!769212 res!520315) b!769215))

(assert (= (and b!769215 res!520314) b!769220))

(assert (= (and b!769220 res!520307) b!769213))

(assert (= (and b!769213 res!520306) b!769206))

(assert (= (and b!769206 res!520310) b!769218))

(assert (= (and b!769218 c!84848) b!769223))

(assert (= (and b!769218 (not c!84848)) b!769217))

(assert (= (and b!769218 res!520304) b!769214))

(assert (= (and b!769214 res!520300) b!769219))

(assert (= (and b!769219 res!520313) b!769207))

(assert (= (and b!769207 res!520303) b!769205))

(assert (= (and b!769219 (not res!520312)) b!769221))

(assert (= (and b!769221 c!84849) b!769208))

(assert (= (and b!769221 (not c!84849)) b!769209))

(declare-fun m!714711 () Bool)

(assert (=> b!769222 m!714711))

(declare-fun m!714713 () Bool)

(assert (=> b!769221 m!714713))

(declare-fun m!714715 () Bool)

(assert (=> start!66782 m!714715))

(declare-fun m!714717 () Bool)

(assert (=> start!66782 m!714717))

(declare-fun m!714719 () Bool)

(assert (=> b!769208 m!714719))

(assert (=> b!769208 m!714719))

(declare-fun m!714721 () Bool)

(assert (=> b!769208 m!714721))

(declare-fun m!714723 () Bool)

(assert (=> b!769216 m!714723))

(declare-fun m!714725 () Bool)

(assert (=> b!769224 m!714725))

(assert (=> b!769205 m!714719))

(assert (=> b!769205 m!714719))

(declare-fun m!714727 () Bool)

(assert (=> b!769205 m!714727))

(assert (=> b!769209 m!714719))

(assert (=> b!769209 m!714719))

(declare-fun m!714729 () Bool)

(assert (=> b!769209 m!714729))

(assert (=> b!769209 m!714719))

(declare-fun m!714731 () Bool)

(assert (=> b!769209 m!714731))

(declare-fun m!714733 () Bool)

(assert (=> b!769212 m!714733))

(assert (=> b!769210 m!714719))

(assert (=> b!769210 m!714719))

(declare-fun m!714735 () Bool)

(assert (=> b!769210 m!714735))

(assert (=> b!769223 m!714719))

(assert (=> b!769223 m!714719))

(declare-fun m!714737 () Bool)

(assert (=> b!769223 m!714737))

(declare-fun m!714739 () Bool)

(assert (=> b!769206 m!714739))

(assert (=> b!769217 m!714719))

(assert (=> b!769217 m!714719))

(assert (=> b!769217 m!714729))

(assert (=> b!769207 m!714719))

(assert (=> b!769207 m!714719))

(declare-fun m!714741 () Bool)

(assert (=> b!769207 m!714741))

(assert (=> b!769213 m!714719))

(assert (=> b!769213 m!714719))

(declare-fun m!714743 () Bool)

(assert (=> b!769213 m!714743))

(assert (=> b!769213 m!714743))

(assert (=> b!769213 m!714719))

(declare-fun m!714745 () Bool)

(assert (=> b!769213 m!714745))

(declare-fun m!714747 () Bool)

(assert (=> b!769215 m!714747))

(declare-fun m!714749 () Bool)

(assert (=> b!769214 m!714749))

(declare-fun m!714751 () Bool)

(assert (=> b!769214 m!714751))

(assert (=> b!769214 m!714749))

(declare-fun m!714753 () Bool)

(assert (=> b!769214 m!714753))

(declare-fun m!714755 () Bool)

(assert (=> b!769214 m!714755))

(declare-fun m!714757 () Bool)

(assert (=> b!769214 m!714757))

(declare-fun m!714759 () Bool)

(assert (=> b!769219 m!714759))

(declare-fun m!714761 () Bool)

(assert (=> b!769219 m!714761))

(push 1)

