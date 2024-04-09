; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65606 () Bool)

(assert start!65606)

(declare-fun b!749651 () Bool)

(declare-fun res!505969 () Bool)

(declare-fun e!418319 () Bool)

(assert (=> b!749651 (=> (not res!505969) (not e!418319))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!749651 (= res!505969 (validKeyInArray!0 k!2102))))

(declare-fun b!749652 () Bool)

(declare-fun res!505973 () Bool)

(declare-fun e!418314 () Bool)

(assert (=> b!749652 (=> (not res!505973) (not e!418314))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41732 0))(
  ( (array!41733 (arr!19976 (Array (_ BitVec 32) (_ BitVec 64))) (size!20397 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41732)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!749652 (= res!505973 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20397 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20397 a!3186))))))

(declare-fun b!749653 () Bool)

(assert (=> b!749653 (= e!418319 e!418314)))

(declare-fun res!505974 () Bool)

(assert (=> b!749653 (=> (not res!505974) (not e!418314))))

(declare-datatypes ((SeekEntryResult!7583 0))(
  ( (MissingZero!7583 (index!32699 (_ BitVec 32))) (Found!7583 (index!32700 (_ BitVec 32))) (Intermediate!7583 (undefined!8395 Bool) (index!32701 (_ BitVec 32)) (x!63654 (_ BitVec 32))) (Undefined!7583) (MissingVacant!7583 (index!32702 (_ BitVec 32))) )
))
(declare-fun lt!333318 () SeekEntryResult!7583)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!749653 (= res!505974 (or (= lt!333318 (MissingZero!7583 i!1173)) (= lt!333318 (MissingVacant!7583 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41732 (_ BitVec 32)) SeekEntryResult!7583)

(assert (=> b!749653 (= lt!333318 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!749654 () Bool)

(declare-fun res!505970 () Bool)

(assert (=> b!749654 (=> (not res!505970) (not e!418319))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!749654 (= res!505970 (validKeyInArray!0 (select (arr!19976 a!3186) j!159)))))

(declare-fun b!749655 () Bool)

(declare-fun e!418318 () Bool)

(declare-fun e!418323 () Bool)

(assert (=> b!749655 (= e!418318 e!418323)))

(declare-fun res!505977 () Bool)

(assert (=> b!749655 (=> (not res!505977) (not e!418323))))

(declare-fun lt!333319 () SeekEntryResult!7583)

(declare-fun lt!333313 () SeekEntryResult!7583)

(assert (=> b!749655 (= res!505977 (= lt!333319 lt!333313))))

(declare-fun lt!333316 () (_ BitVec 64))

(declare-fun lt!333320 () array!41732)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41732 (_ BitVec 32)) SeekEntryResult!7583)

(assert (=> b!749655 (= lt!333313 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333316 lt!333320 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!749655 (= lt!333319 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333316 mask!3328) lt!333316 lt!333320 mask!3328))))

(assert (=> b!749655 (= lt!333316 (select (store (arr!19976 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!749655 (= lt!333320 (array!41733 (store (arr!19976 a!3186) i!1173 k!2102) (size!20397 a!3186)))))

(declare-fun b!749656 () Bool)

(declare-fun res!505981 () Bool)

(assert (=> b!749656 (=> (not res!505981) (not e!418314))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41732 (_ BitVec 32)) Bool)

(assert (=> b!749656 (= res!505981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!749657 () Bool)

(declare-fun e!418321 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41732 (_ BitVec 32)) SeekEntryResult!7583)

(assert (=> b!749657 (= e!418321 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19976 a!3186) j!159) a!3186 mask!3328) (Found!7583 j!159)))))

(declare-fun b!749658 () Bool)

(declare-fun res!505971 () Bool)

(assert (=> b!749658 (=> (not res!505971) (not e!418318))))

(assert (=> b!749658 (= res!505971 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19976 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!749659 () Bool)

(declare-fun res!505972 () Bool)

(assert (=> b!749659 (=> (not res!505972) (not e!418319))))

(declare-fun arrayContainsKey!0 (array!41732 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!749659 (= res!505972 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!505979 () Bool)

(assert (=> start!65606 (=> (not res!505979) (not e!418319))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65606 (= res!505979 (validMask!0 mask!3328))))

(assert (=> start!65606 e!418319))

(assert (=> start!65606 true))

(declare-fun array_inv!15750 (array!41732) Bool)

(assert (=> start!65606 (array_inv!15750 a!3186)))

(declare-fun lt!333314 () SeekEntryResult!7583)

(declare-fun b!749660 () Bool)

(assert (=> b!749660 (= e!418321 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19976 a!3186) j!159) a!3186 mask!3328) lt!333314))))

(declare-fun b!749661 () Bool)

(declare-fun res!505976 () Bool)

(declare-fun e!418320 () Bool)

(assert (=> b!749661 (=> res!505976 e!418320)))

(declare-fun lt!333315 () SeekEntryResult!7583)

(assert (=> b!749661 (= res!505976 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19976 a!3186) j!159) a!3186 mask!3328) lt!333315)))))

(declare-fun b!749662 () Bool)

(declare-fun res!505975 () Bool)

(assert (=> b!749662 (=> (not res!505975) (not e!418318))))

(assert (=> b!749662 (= res!505975 e!418321)))

(declare-fun c!82224 () Bool)

(assert (=> b!749662 (= c!82224 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!749663 () Bool)

(declare-fun e!418317 () Bool)

(assert (=> b!749663 (= e!418317 true)))

(declare-fun e!418316 () Bool)

(assert (=> b!749663 e!418316))

(declare-fun res!505966 () Bool)

(assert (=> b!749663 (=> (not res!505966) (not e!418316))))

(declare-fun lt!333321 () (_ BitVec 64))

(assert (=> b!749663 (= res!505966 (= lt!333321 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25734 0))(
  ( (Unit!25735) )
))
(declare-fun lt!333317 () Unit!25734)

(declare-fun e!418322 () Unit!25734)

(assert (=> b!749663 (= lt!333317 e!418322)))

(declare-fun c!82223 () Bool)

(assert (=> b!749663 (= c!82223 (= lt!333321 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!749664 () Bool)

(assert (=> b!749664 (= e!418323 (not e!418320))))

(declare-fun res!505968 () Bool)

(assert (=> b!749664 (=> res!505968 e!418320)))

(assert (=> b!749664 (= res!505968 (or (not (is-Intermediate!7583 lt!333313)) (bvslt x!1131 (x!63654 lt!333313)) (not (= x!1131 (x!63654 lt!333313))) (not (= index!1321 (index!32701 lt!333313)))))))

(declare-fun e!418313 () Bool)

(assert (=> b!749664 e!418313))

(declare-fun res!505980 () Bool)

(assert (=> b!749664 (=> (not res!505980) (not e!418313))))

(declare-fun lt!333323 () SeekEntryResult!7583)

(assert (=> b!749664 (= res!505980 (= lt!333323 lt!333315))))

(assert (=> b!749664 (= lt!333315 (Found!7583 j!159))))

(assert (=> b!749664 (= lt!333323 (seekEntryOrOpen!0 (select (arr!19976 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!749664 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333322 () Unit!25734)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41732 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25734)

(assert (=> b!749664 (= lt!333322 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!749665 () Bool)

(assert (=> b!749665 (= e!418314 e!418318)))

(declare-fun res!505982 () Bool)

(assert (=> b!749665 (=> (not res!505982) (not e!418318))))

(assert (=> b!749665 (= res!505982 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19976 a!3186) j!159) mask!3328) (select (arr!19976 a!3186) j!159) a!3186 mask!3328) lt!333314))))

(assert (=> b!749665 (= lt!333314 (Intermediate!7583 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!749666 () Bool)

(assert (=> b!749666 (= e!418313 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19976 a!3186) j!159) a!3186 mask!3328) lt!333315))))

(declare-fun b!749667 () Bool)

(assert (=> b!749667 (= e!418316 (= (seekEntryOrOpen!0 lt!333316 lt!333320 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333316 lt!333320 mask!3328)))))

(declare-fun b!749668 () Bool)

(declare-fun Unit!25736 () Unit!25734)

(assert (=> b!749668 (= e!418322 Unit!25736)))

(assert (=> b!749668 false))

(declare-fun b!749669 () Bool)

(declare-fun res!505978 () Bool)

(assert (=> b!749669 (=> (not res!505978) (not e!418314))))

(declare-datatypes ((List!14031 0))(
  ( (Nil!14028) (Cons!14027 (h!15099 (_ BitVec 64)) (t!20354 List!14031)) )
))
(declare-fun arrayNoDuplicates!0 (array!41732 (_ BitVec 32) List!14031) Bool)

(assert (=> b!749669 (= res!505978 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14028))))

(declare-fun b!749670 () Bool)

(assert (=> b!749670 (= e!418320 e!418317)))

(declare-fun res!505983 () Bool)

(assert (=> b!749670 (=> res!505983 e!418317)))

(assert (=> b!749670 (= res!505983 (= lt!333321 lt!333316))))

(assert (=> b!749670 (= lt!333321 (select (store (arr!19976 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!749671 () Bool)

(declare-fun res!505967 () Bool)

(assert (=> b!749671 (=> (not res!505967) (not e!418319))))

(assert (=> b!749671 (= res!505967 (and (= (size!20397 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20397 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20397 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!749672 () Bool)

(declare-fun Unit!25737 () Unit!25734)

(assert (=> b!749672 (= e!418322 Unit!25737)))

(assert (= (and start!65606 res!505979) b!749671))

(assert (= (and b!749671 res!505967) b!749654))

(assert (= (and b!749654 res!505970) b!749651))

(assert (= (and b!749651 res!505969) b!749659))

(assert (= (and b!749659 res!505972) b!749653))

(assert (= (and b!749653 res!505974) b!749656))

(assert (= (and b!749656 res!505981) b!749669))

(assert (= (and b!749669 res!505978) b!749652))

(assert (= (and b!749652 res!505973) b!749665))

(assert (= (and b!749665 res!505982) b!749658))

(assert (= (and b!749658 res!505971) b!749662))

(assert (= (and b!749662 c!82224) b!749660))

(assert (= (and b!749662 (not c!82224)) b!749657))

(assert (= (and b!749662 res!505975) b!749655))

(assert (= (and b!749655 res!505977) b!749664))

(assert (= (and b!749664 res!505980) b!749666))

(assert (= (and b!749664 (not res!505968)) b!749661))

(assert (= (and b!749661 (not res!505976)) b!749670))

(assert (= (and b!749670 (not res!505983)) b!749663))

(assert (= (and b!749663 c!82223) b!749668))

(assert (= (and b!749663 (not c!82223)) b!749672))

(assert (= (and b!749663 res!505966) b!749667))

(declare-fun m!699285 () Bool)

(assert (=> b!749656 m!699285))

(declare-fun m!699287 () Bool)

(assert (=> b!749653 m!699287))

(declare-fun m!699289 () Bool)

(assert (=> b!749651 m!699289))

(declare-fun m!699291 () Bool)

(assert (=> b!749664 m!699291))

(assert (=> b!749664 m!699291))

(declare-fun m!699293 () Bool)

(assert (=> b!749664 m!699293))

(declare-fun m!699295 () Bool)

(assert (=> b!749664 m!699295))

(declare-fun m!699297 () Bool)

(assert (=> b!749664 m!699297))

(declare-fun m!699299 () Bool)

(assert (=> b!749667 m!699299))

(declare-fun m!699301 () Bool)

(assert (=> b!749667 m!699301))

(declare-fun m!699303 () Bool)

(assert (=> b!749670 m!699303))

(declare-fun m!699305 () Bool)

(assert (=> b!749670 m!699305))

(declare-fun m!699307 () Bool)

(assert (=> b!749655 m!699307))

(declare-fun m!699309 () Bool)

(assert (=> b!749655 m!699309))

(assert (=> b!749655 m!699303))

(declare-fun m!699311 () Bool)

(assert (=> b!749655 m!699311))

(assert (=> b!749655 m!699309))

(declare-fun m!699313 () Bool)

(assert (=> b!749655 m!699313))

(declare-fun m!699315 () Bool)

(assert (=> b!749669 m!699315))

(declare-fun m!699317 () Bool)

(assert (=> b!749659 m!699317))

(assert (=> b!749665 m!699291))

(assert (=> b!749665 m!699291))

(declare-fun m!699319 () Bool)

(assert (=> b!749665 m!699319))

(assert (=> b!749665 m!699319))

(assert (=> b!749665 m!699291))

(declare-fun m!699321 () Bool)

(assert (=> b!749665 m!699321))

(assert (=> b!749657 m!699291))

(assert (=> b!749657 m!699291))

(declare-fun m!699323 () Bool)

(assert (=> b!749657 m!699323))

(assert (=> b!749661 m!699291))

(assert (=> b!749661 m!699291))

(assert (=> b!749661 m!699323))

(assert (=> b!749666 m!699291))

(assert (=> b!749666 m!699291))

(declare-fun m!699325 () Bool)

(assert (=> b!749666 m!699325))

(declare-fun m!699327 () Bool)

(assert (=> b!749658 m!699327))

(assert (=> b!749660 m!699291))

(assert (=> b!749660 m!699291))

(declare-fun m!699329 () Bool)

(assert (=> b!749660 m!699329))

(declare-fun m!699331 () Bool)

(assert (=> start!65606 m!699331))

(declare-fun m!699333 () Bool)

(assert (=> start!65606 m!699333))

(assert (=> b!749654 m!699291))

(assert (=> b!749654 m!699291))

(declare-fun m!699335 () Bool)

(assert (=> b!749654 m!699335))

(push 1)

