; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65732 () Bool)

(assert start!65732)

(declare-fun b!753916 () Bool)

(declare-fun res!509487 () Bool)

(declare-fun e!420503 () Bool)

(assert (=> b!753916 (=> (not res!509487) (not e!420503))))

(declare-datatypes ((array!41858 0))(
  ( (array!41859 (arr!20039 (Array (_ BitVec 32) (_ BitVec 64))) (size!20460 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41858)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!753916 (= res!509487 (validKeyInArray!0 (select (arr!20039 a!3186) j!159)))))

(declare-fun b!753917 () Bool)

(declare-fun res!509479 () Bool)

(assert (=> b!753917 (=> (not res!509479) (not e!420503))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!753917 (= res!509479 (validKeyInArray!0 k!2102))))

(declare-fun b!753918 () Bool)

(declare-fun res!509488 () Bool)

(declare-fun e!420504 () Bool)

(assert (=> b!753918 (=> (not res!509488) (not e!420504))))

(declare-datatypes ((List!14094 0))(
  ( (Nil!14091) (Cons!14090 (h!15162 (_ BitVec 64)) (t!20417 List!14094)) )
))
(declare-fun arrayNoDuplicates!0 (array!41858 (_ BitVec 32) List!14094) Bool)

(assert (=> b!753918 (= res!509488 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14091))))

(declare-fun e!420500 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!753919 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7646 0))(
  ( (MissingZero!7646 (index!32951 (_ BitVec 32))) (Found!7646 (index!32952 (_ BitVec 32))) (Intermediate!7646 (undefined!8458 Bool) (index!32953 (_ BitVec 32)) (x!63885 (_ BitVec 32))) (Undefined!7646) (MissingVacant!7646 (index!32954 (_ BitVec 32))) )
))
(declare-fun lt!335504 () SeekEntryResult!7646)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41858 (_ BitVec 32)) SeekEntryResult!7646)

(assert (=> b!753919 (= e!420500 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20039 a!3186) j!159) a!3186 mask!3328) lt!335504))))

(declare-fun b!753920 () Bool)

(declare-fun e!420508 () Bool)

(assert (=> b!753920 (= e!420508 true)))

(declare-fun e!420502 () Bool)

(assert (=> b!753920 e!420502))

(declare-fun res!509486 () Bool)

(assert (=> b!753920 (=> (not res!509486) (not e!420502))))

(declare-fun lt!335509 () (_ BitVec 64))

(assert (=> b!753920 (= res!509486 (= lt!335509 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25986 0))(
  ( (Unit!25987) )
))
(declare-fun lt!335499 () Unit!25986)

(declare-fun e!420507 () Unit!25986)

(assert (=> b!753920 (= lt!335499 e!420507)))

(declare-fun c!82601 () Bool)

(assert (=> b!753920 (= c!82601 (= lt!335509 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!753921 () Bool)

(assert (=> b!753921 (= e!420503 e!420504)))

(declare-fun res!509483 () Bool)

(assert (=> b!753921 (=> (not res!509483) (not e!420504))))

(declare-fun lt!335506 () SeekEntryResult!7646)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!753921 (= res!509483 (or (= lt!335506 (MissingZero!7646 i!1173)) (= lt!335506 (MissingVacant!7646 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41858 (_ BitVec 32)) SeekEntryResult!7646)

(assert (=> b!753921 (= lt!335506 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!753922 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!420509 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!753922 (= e!420509 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20039 a!3186) j!159) a!3186 mask!3328) (Found!7646 j!159)))))

(declare-fun b!753923 () Bool)

(declare-fun e!420499 () Bool)

(declare-fun e!420510 () Bool)

(assert (=> b!753923 (= e!420499 e!420510)))

(declare-fun res!509484 () Bool)

(assert (=> b!753923 (=> (not res!509484) (not e!420510))))

(declare-fun lt!335503 () SeekEntryResult!7646)

(declare-fun lt!335500 () SeekEntryResult!7646)

(assert (=> b!753923 (= res!509484 (= lt!335503 lt!335500))))

(declare-fun lt!335507 () (_ BitVec 64))

(declare-fun lt!335505 () array!41858)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41858 (_ BitVec 32)) SeekEntryResult!7646)

(assert (=> b!753923 (= lt!335500 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335507 lt!335505 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!753923 (= lt!335503 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335507 mask!3328) lt!335507 lt!335505 mask!3328))))

(assert (=> b!753923 (= lt!335507 (select (store (arr!20039 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!753923 (= lt!335505 (array!41859 (store (arr!20039 a!3186) i!1173 k!2102) (size!20460 a!3186)))))

(declare-fun b!753925 () Bool)

(declare-fun res!509482 () Bool)

(assert (=> b!753925 (=> (not res!509482) (not e!420499))))

(assert (=> b!753925 (= res!509482 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20039 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!753926 () Bool)

(declare-fun lt!335502 () SeekEntryResult!7646)

(declare-fun lt!335508 () SeekEntryResult!7646)

(assert (=> b!753926 (= e!420502 (= lt!335502 lt!335508))))

(declare-fun b!753927 () Bool)

(declare-fun res!509489 () Bool)

(assert (=> b!753927 (=> (not res!509489) (not e!420503))))

(declare-fun arrayContainsKey!0 (array!41858 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!753927 (= res!509489 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!753928 () Bool)

(declare-fun e!420505 () Bool)

(assert (=> b!753928 (= e!420510 (not e!420505))))

(declare-fun res!509485 () Bool)

(assert (=> b!753928 (=> res!509485 e!420505)))

(assert (=> b!753928 (= res!509485 (or (not (is-Intermediate!7646 lt!335500)) (bvslt x!1131 (x!63885 lt!335500)) (not (= x!1131 (x!63885 lt!335500))) (not (= index!1321 (index!32953 lt!335500)))))))

(assert (=> b!753928 e!420500))

(declare-fun res!509477 () Bool)

(assert (=> b!753928 (=> (not res!509477) (not e!420500))))

(assert (=> b!753928 (= res!509477 (= lt!335502 lt!335504))))

(assert (=> b!753928 (= lt!335504 (Found!7646 j!159))))

(assert (=> b!753928 (= lt!335502 (seekEntryOrOpen!0 (select (arr!20039 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41858 (_ BitVec 32)) Bool)

(assert (=> b!753928 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335501 () Unit!25986)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41858 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25986)

(assert (=> b!753928 (= lt!335501 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!753929 () Bool)

(declare-fun res!509476 () Bool)

(assert (=> b!753929 (=> (not res!509476) (not e!420499))))

(assert (=> b!753929 (= res!509476 e!420509)))

(declare-fun c!82602 () Bool)

(assert (=> b!753929 (= c!82602 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!753930 () Bool)

(assert (=> b!753930 (= e!420504 e!420499)))

(declare-fun res!509491 () Bool)

(assert (=> b!753930 (=> (not res!509491) (not e!420499))))

(declare-fun lt!335510 () SeekEntryResult!7646)

(assert (=> b!753930 (= res!509491 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20039 a!3186) j!159) mask!3328) (select (arr!20039 a!3186) j!159) a!3186 mask!3328) lt!335510))))

(assert (=> b!753930 (= lt!335510 (Intermediate!7646 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!753931 () Bool)

(declare-fun res!509480 () Bool)

(assert (=> b!753931 (=> (not res!509480) (not e!420504))))

(assert (=> b!753931 (= res!509480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!753932 () Bool)

(declare-fun Unit!25988 () Unit!25986)

(assert (=> b!753932 (= e!420507 Unit!25988)))

(declare-fun b!753933 () Bool)

(declare-fun Unit!25989 () Unit!25986)

(assert (=> b!753933 (= e!420507 Unit!25989)))

(assert (=> b!753933 false))

(declare-fun b!753934 () Bool)

(declare-fun e!420506 () Bool)

(assert (=> b!753934 (= e!420506 e!420508)))

(declare-fun res!509492 () Bool)

(assert (=> b!753934 (=> res!509492 e!420508)))

(assert (=> b!753934 (= res!509492 (= lt!335509 lt!335507))))

(assert (=> b!753934 (= lt!335509 (select (store (arr!20039 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!753935 () Bool)

(declare-fun res!509481 () Bool)

(assert (=> b!753935 (=> (not res!509481) (not e!420503))))

(assert (=> b!753935 (= res!509481 (and (= (size!20460 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20460 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20460 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!509493 () Bool)

(assert (=> start!65732 (=> (not res!509493) (not e!420503))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65732 (= res!509493 (validMask!0 mask!3328))))

(assert (=> start!65732 e!420503))

(assert (=> start!65732 true))

(declare-fun array_inv!15813 (array!41858) Bool)

(assert (=> start!65732 (array_inv!15813 a!3186)))

(declare-fun b!753924 () Bool)

(assert (=> b!753924 (= e!420505 e!420506)))

(declare-fun res!509475 () Bool)

(assert (=> b!753924 (=> res!509475 e!420506)))

(assert (=> b!753924 (= res!509475 (not (= lt!335508 lt!335504)))))

(assert (=> b!753924 (= lt!335508 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20039 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!753936 () Bool)

(assert (=> b!753936 (= e!420509 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20039 a!3186) j!159) a!3186 mask!3328) lt!335510))))

(declare-fun b!753937 () Bool)

(declare-fun res!509478 () Bool)

(assert (=> b!753937 (=> (not res!509478) (not e!420502))))

(assert (=> b!753937 (= res!509478 (= (seekEntryOrOpen!0 lt!335507 lt!335505 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335507 lt!335505 mask!3328)))))

(declare-fun b!753938 () Bool)

(declare-fun res!509490 () Bool)

(assert (=> b!753938 (=> (not res!509490) (not e!420504))))

(assert (=> b!753938 (= res!509490 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20460 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20460 a!3186))))))

(assert (= (and start!65732 res!509493) b!753935))

(assert (= (and b!753935 res!509481) b!753916))

(assert (= (and b!753916 res!509487) b!753917))

(assert (= (and b!753917 res!509479) b!753927))

(assert (= (and b!753927 res!509489) b!753921))

(assert (= (and b!753921 res!509483) b!753931))

(assert (= (and b!753931 res!509480) b!753918))

(assert (= (and b!753918 res!509488) b!753938))

(assert (= (and b!753938 res!509490) b!753930))

(assert (= (and b!753930 res!509491) b!753925))

(assert (= (and b!753925 res!509482) b!753929))

(assert (= (and b!753929 c!82602) b!753936))

(assert (= (and b!753929 (not c!82602)) b!753922))

(assert (= (and b!753929 res!509476) b!753923))

(assert (= (and b!753923 res!509484) b!753928))

(assert (= (and b!753928 res!509477) b!753919))

(assert (= (and b!753928 (not res!509485)) b!753924))

(assert (= (and b!753924 (not res!509475)) b!753934))

(assert (= (and b!753934 (not res!509492)) b!753920))

(assert (= (and b!753920 c!82601) b!753933))

(assert (= (and b!753920 (not c!82601)) b!753932))

(assert (= (and b!753920 res!509486) b!753937))

(assert (= (and b!753937 res!509478) b!753926))

(declare-fun m!702561 () Bool)

(assert (=> b!753937 m!702561))

(declare-fun m!702563 () Bool)

(assert (=> b!753937 m!702563))

(declare-fun m!702565 () Bool)

(assert (=> b!753924 m!702565))

(assert (=> b!753924 m!702565))

(declare-fun m!702567 () Bool)

(assert (=> b!753924 m!702567))

(assert (=> b!753919 m!702565))

(assert (=> b!753919 m!702565))

(declare-fun m!702569 () Bool)

(assert (=> b!753919 m!702569))

(declare-fun m!702571 () Bool)

(assert (=> b!753925 m!702571))

(assert (=> b!753928 m!702565))

(assert (=> b!753928 m!702565))

(declare-fun m!702573 () Bool)

(assert (=> b!753928 m!702573))

(declare-fun m!702575 () Bool)

(assert (=> b!753928 m!702575))

(declare-fun m!702577 () Bool)

(assert (=> b!753928 m!702577))

(declare-fun m!702579 () Bool)

(assert (=> b!753921 m!702579))

(assert (=> b!753936 m!702565))

(assert (=> b!753936 m!702565))

(declare-fun m!702581 () Bool)

(assert (=> b!753936 m!702581))

(declare-fun m!702583 () Bool)

(assert (=> b!753923 m!702583))

(declare-fun m!702585 () Bool)

(assert (=> b!753923 m!702585))

(declare-fun m!702587 () Bool)

(assert (=> b!753923 m!702587))

(assert (=> b!753923 m!702583))

(declare-fun m!702589 () Bool)

(assert (=> b!753923 m!702589))

(declare-fun m!702591 () Bool)

(assert (=> b!753923 m!702591))

(declare-fun m!702593 () Bool)

(assert (=> start!65732 m!702593))

(declare-fun m!702595 () Bool)

(assert (=> start!65732 m!702595))

(declare-fun m!702597 () Bool)

(assert (=> b!753931 m!702597))

(declare-fun m!702599 () Bool)

(assert (=> b!753927 m!702599))

(declare-fun m!702601 () Bool)

(assert (=> b!753917 m!702601))

(declare-fun m!702603 () Bool)

(assert (=> b!753918 m!702603))

(assert (=> b!753930 m!702565))

(assert (=> b!753930 m!702565))

(declare-fun m!702605 () Bool)

(assert (=> b!753930 m!702605))

(assert (=> b!753930 m!702605))

(assert (=> b!753930 m!702565))

(declare-fun m!702607 () Bool)

(assert (=> b!753930 m!702607))

(assert (=> b!753916 m!702565))

(assert (=> b!753916 m!702565))

(declare-fun m!702609 () Bool)

(assert (=> b!753916 m!702609))

(assert (=> b!753934 m!702589))

(declare-fun m!702611 () Bool)

(assert (=> b!753934 m!702611))

(assert (=> b!753922 m!702565))

(assert (=> b!753922 m!702565))

(assert (=> b!753922 m!702567))

(push 1)

(assert (not b!753922))

(assert (not b!753918))

(assert (not start!65732))

(assert (not b!753921))

(assert (not b!753916))

(assert (not b!753931))

(assert (not b!753919))

(assert (not b!753928))

(assert (not b!753924))

(assert (not b!753917))

(assert (not b!753936))

(assert (not b!753937))

(assert (not b!753923))

(assert (not b!753927))

(assert (not b!753930))

(check-sat)

(pop 1)

