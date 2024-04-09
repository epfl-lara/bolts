; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65360 () Bool)

(assert start!65360)

(declare-datatypes ((array!41486 0))(
  ( (array!41487 (arr!19853 (Array (_ BitVec 32) (_ BitVec 64))) (size!20274 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41486)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!414922 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!329825 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!7460 0))(
  ( (MissingZero!7460 (index!32207 (_ BitVec 32))) (Found!7460 (index!32208 (_ BitVec 32))) (Intermediate!7460 (undefined!8272 Bool) (index!32209 (_ BitVec 32)) (x!63203 (_ BitVec 32))) (Undefined!7460) (MissingVacant!7460 (index!32210 (_ BitVec 32))) )
))
(declare-fun lt!329831 () SeekEntryResult!7460)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun b!742409 () Bool)

(assert (=> b!742409 (= e!414922 (or (not (= (select (store (arr!19853 a!3186) i!1173 k!2102) index!1321) lt!329825)) (undefined!8272 lt!329831) (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun b!742410 () Bool)

(declare-fun res!499744 () Bool)

(declare-fun e!414928 () Bool)

(assert (=> b!742410 (=> (not res!499744) (not e!414928))))

(declare-fun e!414926 () Bool)

(assert (=> b!742410 (= res!499744 e!414926)))

(declare-fun c!81720 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!742410 (= c!81720 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!742411 () Bool)

(declare-fun res!499743 () Bool)

(declare-fun e!414929 () Bool)

(assert (=> b!742411 (=> (not res!499743) (not e!414929))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!742411 (= res!499743 (and (= (size!20274 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20274 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20274 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!499742 () Bool)

(assert (=> start!65360 (=> (not res!499742) (not e!414929))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65360 (= res!499742 (validMask!0 mask!3328))))

(assert (=> start!65360 e!414929))

(assert (=> start!65360 true))

(declare-fun array_inv!15627 (array!41486) Bool)

(assert (=> start!65360 (array_inv!15627 a!3186)))

(declare-fun b!742412 () Bool)

(declare-fun e!414923 () Bool)

(assert (=> b!742412 (= e!414929 e!414923)))

(declare-fun res!499739 () Bool)

(assert (=> b!742412 (=> (not res!499739) (not e!414923))))

(declare-fun lt!329826 () SeekEntryResult!7460)

(assert (=> b!742412 (= res!499739 (or (= lt!329826 (MissingZero!7460 i!1173)) (= lt!329826 (MissingVacant!7460 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41486 (_ BitVec 32)) SeekEntryResult!7460)

(assert (=> b!742412 (= lt!329826 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!742413 () Bool)

(declare-fun res!499741 () Bool)

(assert (=> b!742413 (=> (not res!499741) (not e!414928))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!742413 (= res!499741 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19853 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!742414 () Bool)

(declare-fun res!499735 () Bool)

(assert (=> b!742414 (=> (not res!499735) (not e!414923))))

(declare-datatypes ((List!13908 0))(
  ( (Nil!13905) (Cons!13904 (h!14976 (_ BitVec 64)) (t!20231 List!13908)) )
))
(declare-fun arrayNoDuplicates!0 (array!41486 (_ BitVec 32) List!13908) Bool)

(assert (=> b!742414 (= res!499735 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13905))))

(declare-fun e!414930 () Bool)

(declare-fun lt!329827 () SeekEntryResult!7460)

(declare-fun b!742415 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41486 (_ BitVec 32)) SeekEntryResult!7460)

(assert (=> b!742415 (= e!414930 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19853 a!3186) j!159) a!3186 mask!3328) lt!329827))))

(declare-fun b!742416 () Bool)

(declare-fun res!499746 () Bool)

(assert (=> b!742416 (=> (not res!499746) (not e!414923))))

(assert (=> b!742416 (= res!499746 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20274 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20274 a!3186))))))

(declare-fun b!742417 () Bool)

(declare-fun res!499731 () Bool)

(assert (=> b!742417 (=> res!499731 e!414922)))

(assert (=> b!742417 (= res!499731 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19853 a!3186) j!159) a!3186 mask!3328) (Found!7460 j!159))))))

(declare-fun b!742418 () Bool)

(assert (=> b!742418 (= e!414923 e!414928)))

(declare-fun res!499740 () Bool)

(assert (=> b!742418 (=> (not res!499740) (not e!414928))))

(declare-fun lt!329824 () SeekEntryResult!7460)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41486 (_ BitVec 32)) SeekEntryResult!7460)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!742418 (= res!499740 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19853 a!3186) j!159) mask!3328) (select (arr!19853 a!3186) j!159) a!3186 mask!3328) lt!329824))))

(assert (=> b!742418 (= lt!329824 (Intermediate!7460 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!742419 () Bool)

(declare-fun res!499734 () Bool)

(assert (=> b!742419 (=> (not res!499734) (not e!414929))))

(declare-fun arrayContainsKey!0 (array!41486 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!742419 (= res!499734 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!742420 () Bool)

(assert (=> b!742420 (= e!414926 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19853 a!3186) j!159) a!3186 mask!3328) lt!329824))))

(declare-fun b!742421 () Bool)

(declare-fun e!414927 () Bool)

(assert (=> b!742421 (= e!414927 (not e!414922))))

(declare-fun res!499736 () Bool)

(assert (=> b!742421 (=> res!499736 e!414922)))

(assert (=> b!742421 (= res!499736 (or (not (is-Intermediate!7460 lt!329831)) (bvslt x!1131 (x!63203 lt!329831)) (not (= x!1131 (x!63203 lt!329831))) (not (= index!1321 (index!32209 lt!329831)))))))

(declare-fun e!414924 () Bool)

(assert (=> b!742421 e!414924))

(declare-fun res!499733 () Bool)

(assert (=> b!742421 (=> (not res!499733) (not e!414924))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41486 (_ BitVec 32)) Bool)

(assert (=> b!742421 (= res!499733 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25400 0))(
  ( (Unit!25401) )
))
(declare-fun lt!329828 () Unit!25400)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41486 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25400)

(assert (=> b!742421 (= lt!329828 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!742422 () Bool)

(declare-fun res!499732 () Bool)

(assert (=> b!742422 (=> (not res!499732) (not e!414929))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!742422 (= res!499732 (validKeyInArray!0 k!2102))))

(declare-fun b!742423 () Bool)

(assert (=> b!742423 (= e!414924 e!414930)))

(declare-fun res!499745 () Bool)

(assert (=> b!742423 (=> (not res!499745) (not e!414930))))

(assert (=> b!742423 (= res!499745 (= (seekEntryOrOpen!0 (select (arr!19853 a!3186) j!159) a!3186 mask!3328) lt!329827))))

(assert (=> b!742423 (= lt!329827 (Found!7460 j!159))))

(declare-fun b!742424 () Bool)

(assert (=> b!742424 (= e!414926 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19853 a!3186) j!159) a!3186 mask!3328) (Found!7460 j!159)))))

(declare-fun b!742425 () Bool)

(declare-fun res!499730 () Bool)

(assert (=> b!742425 (=> (not res!499730) (not e!414923))))

(assert (=> b!742425 (= res!499730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!742426 () Bool)

(assert (=> b!742426 (= e!414928 e!414927)))

(declare-fun res!499737 () Bool)

(assert (=> b!742426 (=> (not res!499737) (not e!414927))))

(declare-fun lt!329830 () SeekEntryResult!7460)

(assert (=> b!742426 (= res!499737 (= lt!329830 lt!329831))))

(declare-fun lt!329829 () array!41486)

(assert (=> b!742426 (= lt!329831 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329825 lt!329829 mask!3328))))

(assert (=> b!742426 (= lt!329830 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329825 mask!3328) lt!329825 lt!329829 mask!3328))))

(assert (=> b!742426 (= lt!329825 (select (store (arr!19853 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!742426 (= lt!329829 (array!41487 (store (arr!19853 a!3186) i!1173 k!2102) (size!20274 a!3186)))))

(declare-fun b!742427 () Bool)

(declare-fun res!499738 () Bool)

(assert (=> b!742427 (=> (not res!499738) (not e!414929))))

(assert (=> b!742427 (= res!499738 (validKeyInArray!0 (select (arr!19853 a!3186) j!159)))))

(assert (= (and start!65360 res!499742) b!742411))

(assert (= (and b!742411 res!499743) b!742427))

(assert (= (and b!742427 res!499738) b!742422))

(assert (= (and b!742422 res!499732) b!742419))

(assert (= (and b!742419 res!499734) b!742412))

(assert (= (and b!742412 res!499739) b!742425))

(assert (= (and b!742425 res!499730) b!742414))

(assert (= (and b!742414 res!499735) b!742416))

(assert (= (and b!742416 res!499746) b!742418))

(assert (= (and b!742418 res!499740) b!742413))

(assert (= (and b!742413 res!499741) b!742410))

(assert (= (and b!742410 c!81720) b!742420))

(assert (= (and b!742410 (not c!81720)) b!742424))

(assert (= (and b!742410 res!499744) b!742426))

(assert (= (and b!742426 res!499737) b!742421))

(assert (= (and b!742421 res!499733) b!742423))

(assert (= (and b!742423 res!499745) b!742415))

(assert (= (and b!742421 (not res!499736)) b!742417))

(assert (= (and b!742417 (not res!499731)) b!742409))

(declare-fun m!693355 () Bool)

(assert (=> b!742421 m!693355))

(declare-fun m!693357 () Bool)

(assert (=> b!742421 m!693357))

(declare-fun m!693359 () Bool)

(assert (=> b!742414 m!693359))

(declare-fun m!693361 () Bool)

(assert (=> b!742425 m!693361))

(declare-fun m!693363 () Bool)

(assert (=> b!742418 m!693363))

(assert (=> b!742418 m!693363))

(declare-fun m!693365 () Bool)

(assert (=> b!742418 m!693365))

(assert (=> b!742418 m!693365))

(assert (=> b!742418 m!693363))

(declare-fun m!693367 () Bool)

(assert (=> b!742418 m!693367))

(assert (=> b!742417 m!693363))

(assert (=> b!742417 m!693363))

(declare-fun m!693369 () Bool)

(assert (=> b!742417 m!693369))

(assert (=> b!742427 m!693363))

(assert (=> b!742427 m!693363))

(declare-fun m!693371 () Bool)

(assert (=> b!742427 m!693371))

(declare-fun m!693373 () Bool)

(assert (=> b!742409 m!693373))

(declare-fun m!693375 () Bool)

(assert (=> b!742409 m!693375))

(declare-fun m!693377 () Bool)

(assert (=> b!742413 m!693377))

(declare-fun m!693379 () Bool)

(assert (=> b!742426 m!693379))

(declare-fun m!693381 () Bool)

(assert (=> b!742426 m!693381))

(assert (=> b!742426 m!693379))

(assert (=> b!742426 m!693373))

(declare-fun m!693383 () Bool)

(assert (=> b!742426 m!693383))

(declare-fun m!693385 () Bool)

(assert (=> b!742426 m!693385))

(declare-fun m!693387 () Bool)

(assert (=> start!65360 m!693387))

(declare-fun m!693389 () Bool)

(assert (=> start!65360 m!693389))

(declare-fun m!693391 () Bool)

(assert (=> b!742422 m!693391))

(assert (=> b!742423 m!693363))

(assert (=> b!742423 m!693363))

(declare-fun m!693393 () Bool)

(assert (=> b!742423 m!693393))

(declare-fun m!693395 () Bool)

(assert (=> b!742419 m!693395))

(declare-fun m!693397 () Bool)

(assert (=> b!742412 m!693397))

(assert (=> b!742424 m!693363))

(assert (=> b!742424 m!693363))

(assert (=> b!742424 m!693369))

(assert (=> b!742415 m!693363))

(assert (=> b!742415 m!693363))

(declare-fun m!693399 () Bool)

(assert (=> b!742415 m!693399))

(assert (=> b!742420 m!693363))

(assert (=> b!742420 m!693363))

(declare-fun m!693401 () Bool)

(assert (=> b!742420 m!693401))

(push 1)

