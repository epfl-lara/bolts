; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66820 () Bool)

(assert start!66820)

(declare-fun b!770345 () Bool)

(declare-fun res!521218 () Bool)

(declare-fun e!428925 () Bool)

(assert (=> b!770345 (=> (not res!521218) (not e!428925))))

(declare-datatypes ((array!42337 0))(
  ( (array!42338 (arr!20265 (Array (_ BitVec 32) (_ BitVec 64))) (size!20686 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42337)

(declare-datatypes ((List!14320 0))(
  ( (Nil!14317) (Cons!14316 (h!15415 (_ BitVec 64)) (t!20643 List!14320)) )
))
(declare-fun arrayNoDuplicates!0 (array!42337 (_ BitVec 32) List!14320) Bool)

(assert (=> b!770345 (= res!521218 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14317))))

(declare-fun res!521225 () Bool)

(declare-fun e!428922 () Bool)

(assert (=> start!66820 (=> (not res!521225) (not e!428922))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66820 (= res!521225 (validMask!0 mask!3328))))

(assert (=> start!66820 e!428922))

(assert (=> start!66820 true))

(declare-fun array_inv!16039 (array!42337) Bool)

(assert (=> start!66820 (array_inv!16039 a!3186)))

(declare-fun b!770346 () Bool)

(declare-fun res!521219 () Bool)

(assert (=> b!770346 (=> (not res!521219) (not e!428925))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42337 (_ BitVec 32)) Bool)

(assert (=> b!770346 (= res!521219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!770347 () Bool)

(declare-fun e!428927 () Bool)

(declare-fun e!428926 () Bool)

(assert (=> b!770347 (= e!428927 e!428926)))

(declare-fun res!521221 () Bool)

(assert (=> b!770347 (=> (not res!521221) (not e!428926))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7872 0))(
  ( (MissingZero!7872 (index!33855 (_ BitVec 32))) (Found!7872 (index!33856 (_ BitVec 32))) (Intermediate!7872 (undefined!8684 Bool) (index!33857 (_ BitVec 32)) (x!64812 (_ BitVec 32))) (Undefined!7872) (MissingVacant!7872 (index!33858 (_ BitVec 32))) )
))
(declare-fun lt!342889 () SeekEntryResult!7872)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42337 (_ BitVec 32)) SeekEntryResult!7872)

(assert (=> b!770347 (= res!521221 (= (seekEntryOrOpen!0 (select (arr!20265 a!3186) j!159) a!3186 mask!3328) lt!342889))))

(assert (=> b!770347 (= lt!342889 (Found!7872 j!159))))

(declare-fun b!770348 () Bool)

(declare-fun res!521227 () Bool)

(assert (=> b!770348 (=> (not res!521227) (not e!428925))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!770348 (= res!521227 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20686 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20686 a!3186))))))

(declare-fun b!770349 () Bool)

(declare-fun res!521212 () Bool)

(declare-fun e!428924 () Bool)

(assert (=> b!770349 (=> (not res!521212) (not e!428924))))

(declare-fun e!428928 () Bool)

(assert (=> b!770349 (= res!521212 e!428928)))

(declare-fun c!84962 () Bool)

(assert (=> b!770349 (= c!84962 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!770350 () Bool)

(assert (=> b!770350 (= e!428925 e!428924)))

(declare-fun res!521214 () Bool)

(assert (=> b!770350 (=> (not res!521214) (not e!428924))))

(declare-fun lt!342888 () SeekEntryResult!7872)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42337 (_ BitVec 32)) SeekEntryResult!7872)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770350 (= res!521214 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20265 a!3186) j!159) mask!3328) (select (arr!20265 a!3186) j!159) a!3186 mask!3328) lt!342888))))

(assert (=> b!770350 (= lt!342888 (Intermediate!7872 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!770351 () Bool)

(declare-fun res!521213 () Bool)

(assert (=> b!770351 (=> (not res!521213) (not e!428922))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!770351 (= res!521213 (validKeyInArray!0 k!2102))))

(declare-fun b!770352 () Bool)

(declare-datatypes ((Unit!26524 0))(
  ( (Unit!26525) )
))
(declare-fun e!428929 () Unit!26524)

(declare-fun Unit!26526 () Unit!26524)

(assert (=> b!770352 (= e!428929 Unit!26526)))

(declare-fun lt!342891 () (_ BitVec 32))

(assert (=> b!770352 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342891 (select (arr!20265 a!3186) j!159) a!3186 mask!3328) lt!342888)))

(declare-fun b!770353 () Bool)

(declare-fun res!521220 () Bool)

(assert (=> b!770353 (=> (not res!521220) (not e!428924))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!770353 (= res!521220 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20265 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!770354 () Bool)

(declare-fun res!521216 () Bool)

(assert (=> b!770354 (=> (not res!521216) (not e!428922))))

(declare-fun arrayContainsKey!0 (array!42337 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!770354 (= res!521216 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!770355 () Bool)

(declare-fun e!428920 () Bool)

(assert (=> b!770355 (= e!428924 e!428920)))

(declare-fun res!521217 () Bool)

(assert (=> b!770355 (=> (not res!521217) (not e!428920))))

(declare-fun lt!342892 () SeekEntryResult!7872)

(declare-fun lt!342885 () SeekEntryResult!7872)

(assert (=> b!770355 (= res!521217 (= lt!342892 lt!342885))))

(declare-fun lt!342883 () array!42337)

(declare-fun lt!342890 () (_ BitVec 64))

(assert (=> b!770355 (= lt!342885 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342890 lt!342883 mask!3328))))

(assert (=> b!770355 (= lt!342892 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342890 mask!3328) lt!342890 lt!342883 mask!3328))))

(assert (=> b!770355 (= lt!342890 (select (store (arr!20265 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!770355 (= lt!342883 (array!42338 (store (arr!20265 a!3186) i!1173 k!2102) (size!20686 a!3186)))))

(declare-fun b!770356 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42337 (_ BitVec 32)) SeekEntryResult!7872)

(assert (=> b!770356 (= e!428928 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20265 a!3186) j!159) a!3186 mask!3328) (Found!7872 j!159)))))

(declare-fun b!770357 () Bool)

(assert (=> b!770357 (= e!428926 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20265 a!3186) j!159) a!3186 mask!3328) lt!342889))))

(declare-fun b!770358 () Bool)

(assert (=> b!770358 (= e!428922 e!428925)))

(declare-fun res!521215 () Bool)

(assert (=> b!770358 (=> (not res!521215) (not e!428925))))

(declare-fun lt!342887 () SeekEntryResult!7872)

(assert (=> b!770358 (= res!521215 (or (= lt!342887 (MissingZero!7872 i!1173)) (= lt!342887 (MissingVacant!7872 i!1173))))))

(assert (=> b!770358 (= lt!342887 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!770359 () Bool)

(declare-fun res!521222 () Bool)

(assert (=> b!770359 (=> (not res!521222) (not e!428922))))

(assert (=> b!770359 (= res!521222 (validKeyInArray!0 (select (arr!20265 a!3186) j!159)))))

(declare-fun b!770360 () Bool)

(declare-fun e!428921 () Bool)

(assert (=> b!770360 (= e!428921 true)))

(declare-fun lt!342886 () Unit!26524)

(assert (=> b!770360 (= lt!342886 e!428929)))

(declare-fun c!84963 () Bool)

(assert (=> b!770360 (= c!84963 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770360 (= lt!342891 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!770361 () Bool)

(assert (=> b!770361 (= e!428928 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20265 a!3186) j!159) a!3186 mask!3328) lt!342888))))

(declare-fun b!770362 () Bool)

(declare-fun Unit!26527 () Unit!26524)

(assert (=> b!770362 (= e!428929 Unit!26527)))

(declare-fun lt!342882 () SeekEntryResult!7872)

(assert (=> b!770362 (= lt!342882 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20265 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!770362 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342891 resIntermediateIndex!5 (select (arr!20265 a!3186) j!159) a!3186 mask!3328) (Found!7872 j!159))))

(declare-fun b!770363 () Bool)

(assert (=> b!770363 (= e!428920 (not e!428921))))

(declare-fun res!521223 () Bool)

(assert (=> b!770363 (=> res!521223 e!428921)))

(assert (=> b!770363 (= res!521223 (or (not (is-Intermediate!7872 lt!342885)) (bvsge x!1131 (x!64812 lt!342885))))))

(assert (=> b!770363 e!428927))

(declare-fun res!521224 () Bool)

(assert (=> b!770363 (=> (not res!521224) (not e!428927))))

(assert (=> b!770363 (= res!521224 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342884 () Unit!26524)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42337 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26524)

(assert (=> b!770363 (= lt!342884 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!770364 () Bool)

(declare-fun res!521226 () Bool)

(assert (=> b!770364 (=> (not res!521226) (not e!428922))))

(assert (=> b!770364 (= res!521226 (and (= (size!20686 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20686 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20686 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!66820 res!521225) b!770364))

(assert (= (and b!770364 res!521226) b!770359))

(assert (= (and b!770359 res!521222) b!770351))

(assert (= (and b!770351 res!521213) b!770354))

(assert (= (and b!770354 res!521216) b!770358))

(assert (= (and b!770358 res!521215) b!770346))

(assert (= (and b!770346 res!521219) b!770345))

(assert (= (and b!770345 res!521218) b!770348))

(assert (= (and b!770348 res!521227) b!770350))

(assert (= (and b!770350 res!521214) b!770353))

(assert (= (and b!770353 res!521220) b!770349))

(assert (= (and b!770349 c!84962) b!770361))

(assert (= (and b!770349 (not c!84962)) b!770356))

(assert (= (and b!770349 res!521212) b!770355))

(assert (= (and b!770355 res!521217) b!770363))

(assert (= (and b!770363 res!521224) b!770347))

(assert (= (and b!770347 res!521221) b!770357))

(assert (= (and b!770363 (not res!521223)) b!770360))

(assert (= (and b!770360 c!84963) b!770352))

(assert (= (and b!770360 (not c!84963)) b!770362))

(declare-fun m!715699 () Bool)

(assert (=> b!770346 m!715699))

(declare-fun m!715701 () Bool)

(assert (=> b!770354 m!715701))

(declare-fun m!715703 () Bool)

(assert (=> b!770361 m!715703))

(assert (=> b!770361 m!715703))

(declare-fun m!715705 () Bool)

(assert (=> b!770361 m!715705))

(assert (=> b!770347 m!715703))

(assert (=> b!770347 m!715703))

(declare-fun m!715707 () Bool)

(assert (=> b!770347 m!715707))

(declare-fun m!715709 () Bool)

(assert (=> b!770345 m!715709))

(declare-fun m!715711 () Bool)

(assert (=> start!66820 m!715711))

(declare-fun m!715713 () Bool)

(assert (=> start!66820 m!715713))

(assert (=> b!770350 m!715703))

(assert (=> b!770350 m!715703))

(declare-fun m!715715 () Bool)

(assert (=> b!770350 m!715715))

(assert (=> b!770350 m!715715))

(assert (=> b!770350 m!715703))

(declare-fun m!715717 () Bool)

(assert (=> b!770350 m!715717))

(declare-fun m!715719 () Bool)

(assert (=> b!770358 m!715719))

(assert (=> b!770359 m!715703))

(assert (=> b!770359 m!715703))

(declare-fun m!715721 () Bool)

(assert (=> b!770359 m!715721))

(assert (=> b!770357 m!715703))

(assert (=> b!770357 m!715703))

(declare-fun m!715723 () Bool)

(assert (=> b!770357 m!715723))

(declare-fun m!715725 () Bool)

(assert (=> b!770353 m!715725))

(assert (=> b!770352 m!715703))

(assert (=> b!770352 m!715703))

(declare-fun m!715727 () Bool)

(assert (=> b!770352 m!715727))

(declare-fun m!715729 () Bool)

(assert (=> b!770363 m!715729))

(declare-fun m!715731 () Bool)

(assert (=> b!770363 m!715731))

(declare-fun m!715733 () Bool)

(assert (=> b!770360 m!715733))

(declare-fun m!715735 () Bool)

(assert (=> b!770355 m!715735))

(declare-fun m!715737 () Bool)

(assert (=> b!770355 m!715737))

(declare-fun m!715739 () Bool)

(assert (=> b!770355 m!715739))

(declare-fun m!715741 () Bool)

(assert (=> b!770355 m!715741))

(assert (=> b!770355 m!715735))

(declare-fun m!715743 () Bool)

(assert (=> b!770355 m!715743))

(assert (=> b!770356 m!715703))

(assert (=> b!770356 m!715703))

(declare-fun m!715745 () Bool)

(assert (=> b!770356 m!715745))

(assert (=> b!770362 m!715703))

(assert (=> b!770362 m!715703))

(assert (=> b!770362 m!715745))

(assert (=> b!770362 m!715703))

(declare-fun m!715747 () Bool)

(assert (=> b!770362 m!715747))

(declare-fun m!715749 () Bool)

(assert (=> b!770351 m!715749))

(push 1)

