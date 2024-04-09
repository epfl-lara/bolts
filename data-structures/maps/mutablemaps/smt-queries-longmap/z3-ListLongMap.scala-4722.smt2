; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65412 () Bool)

(assert start!65412)

(declare-fun b!743940 () Bool)

(declare-fun e!415627 () Bool)

(assert (=> b!743940 (= e!415627 true)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41538 0))(
  ( (array!41539 (arr!19879 (Array (_ BitVec 32) (_ BitVec 64))) (size!20300 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41538)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7486 0))(
  ( (MissingZero!7486 (index!32311 (_ BitVec 32))) (Found!7486 (index!32312 (_ BitVec 32))) (Intermediate!7486 (undefined!8298 Bool) (index!32313 (_ BitVec 32)) (x!63301 (_ BitVec 32))) (Undefined!7486) (MissingVacant!7486 (index!32314 (_ BitVec 32))) )
))
(declare-fun lt!330492 () SeekEntryResult!7486)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41538 (_ BitVec 32)) SeekEntryResult!7486)

(assert (=> b!743940 (= lt!330492 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19879 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!743941 () Bool)

(declare-fun e!415628 () Bool)

(declare-fun e!415625 () Bool)

(assert (=> b!743941 (= e!415628 e!415625)))

(declare-fun res!501109 () Bool)

(assert (=> b!743941 (=> (not res!501109) (not e!415625))))

(declare-fun lt!330489 () SeekEntryResult!7486)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!743941 (= res!501109 (or (= lt!330489 (MissingZero!7486 i!1173)) (= lt!330489 (MissingVacant!7486 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41538 (_ BitVec 32)) SeekEntryResult!7486)

(assert (=> b!743941 (= lt!330489 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!501114 () Bool)

(assert (=> start!65412 (=> (not res!501114) (not e!415628))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65412 (= res!501114 (validMask!0 mask!3328))))

(assert (=> start!65412 e!415628))

(assert (=> start!65412 true))

(declare-fun array_inv!15653 (array!41538) Bool)

(assert (=> start!65412 (array_inv!15653 a!3186)))

(declare-fun b!743942 () Bool)

(declare-fun e!415629 () Bool)

(assert (=> b!743942 (= e!415629 (not e!415627))))

(declare-fun res!501105 () Bool)

(assert (=> b!743942 (=> res!501105 e!415627)))

(declare-fun lt!330491 () SeekEntryResult!7486)

(get-info :version)

(assert (=> b!743942 (= res!501105 (or (not ((_ is Intermediate!7486) lt!330491)) (bvslt x!1131 (x!63301 lt!330491)) (not (= x!1131 (x!63301 lt!330491))) (not (= index!1321 (index!32313 lt!330491)))))))

(declare-fun e!415631 () Bool)

(assert (=> b!743942 e!415631))

(declare-fun res!501110 () Bool)

(assert (=> b!743942 (=> (not res!501110) (not e!415631))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41538 (_ BitVec 32)) Bool)

(assert (=> b!743942 (= res!501110 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25452 0))(
  ( (Unit!25453) )
))
(declare-fun lt!330495 () Unit!25452)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41538 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25452)

(assert (=> b!743942 (= lt!330495 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!743943 () Bool)

(declare-fun res!501108 () Bool)

(assert (=> b!743943 (=> (not res!501108) (not e!415628))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!743943 (= res!501108 (validKeyInArray!0 (select (arr!19879 a!3186) j!159)))))

(declare-fun b!743944 () Bool)

(declare-fun res!501111 () Bool)

(declare-fun e!415632 () Bool)

(assert (=> b!743944 (=> (not res!501111) (not e!415632))))

(assert (=> b!743944 (= res!501111 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19879 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!743945 () Bool)

(assert (=> b!743945 (= e!415625 e!415632)))

(declare-fun res!501120 () Bool)

(assert (=> b!743945 (=> (not res!501120) (not e!415632))))

(declare-fun lt!330497 () SeekEntryResult!7486)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41538 (_ BitVec 32)) SeekEntryResult!7486)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!743945 (= res!501120 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19879 a!3186) j!159) mask!3328) (select (arr!19879 a!3186) j!159) a!3186 mask!3328) lt!330497))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!743945 (= lt!330497 (Intermediate!7486 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!743946 () Bool)

(declare-fun res!501107 () Bool)

(assert (=> b!743946 (=> (not res!501107) (not e!415625))))

(assert (=> b!743946 (= res!501107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun lt!330496 () SeekEntryResult!7486)

(declare-fun b!743947 () Bool)

(declare-fun e!415630 () Bool)

(assert (=> b!743947 (= e!415630 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19879 a!3186) j!159) a!3186 mask!3328) lt!330496))))

(declare-fun b!743948 () Bool)

(declare-fun res!501113 () Bool)

(assert (=> b!743948 (=> (not res!501113) (not e!415625))))

(assert (=> b!743948 (= res!501113 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20300 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20300 a!3186))))))

(declare-fun b!743949 () Bool)

(declare-fun res!501115 () Bool)

(assert (=> b!743949 (=> (not res!501115) (not e!415628))))

(assert (=> b!743949 (= res!501115 (and (= (size!20300 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20300 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20300 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!743950 () Bool)

(assert (=> b!743950 (= e!415631 e!415630)))

(declare-fun res!501112 () Bool)

(assert (=> b!743950 (=> (not res!501112) (not e!415630))))

(assert (=> b!743950 (= res!501112 (= (seekEntryOrOpen!0 (select (arr!19879 a!3186) j!159) a!3186 mask!3328) lt!330496))))

(assert (=> b!743950 (= lt!330496 (Found!7486 j!159))))

(declare-fun b!743951 () Bool)

(declare-fun e!415626 () Bool)

(assert (=> b!743951 (= e!415626 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19879 a!3186) j!159) a!3186 mask!3328) (Found!7486 j!159)))))

(declare-fun b!743952 () Bool)

(declare-fun res!501118 () Bool)

(assert (=> b!743952 (=> (not res!501118) (not e!415628))))

(declare-fun arrayContainsKey!0 (array!41538 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!743952 (= res!501118 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!743953 () Bool)

(declare-fun res!501116 () Bool)

(assert (=> b!743953 (=> (not res!501116) (not e!415632))))

(assert (=> b!743953 (= res!501116 e!415626)))

(declare-fun c!81798 () Bool)

(assert (=> b!743953 (= c!81798 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!743954 () Bool)

(declare-fun res!501106 () Bool)

(assert (=> b!743954 (=> (not res!501106) (not e!415628))))

(assert (=> b!743954 (= res!501106 (validKeyInArray!0 k0!2102))))

(declare-fun b!743955 () Bool)

(assert (=> b!743955 (= e!415632 e!415629)))

(declare-fun res!501117 () Bool)

(assert (=> b!743955 (=> (not res!501117) (not e!415629))))

(declare-fun lt!330494 () SeekEntryResult!7486)

(assert (=> b!743955 (= res!501117 (= lt!330494 lt!330491))))

(declare-fun lt!330490 () array!41538)

(declare-fun lt!330493 () (_ BitVec 64))

(assert (=> b!743955 (= lt!330491 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330493 lt!330490 mask!3328))))

(assert (=> b!743955 (= lt!330494 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330493 mask!3328) lt!330493 lt!330490 mask!3328))))

(assert (=> b!743955 (= lt!330493 (select (store (arr!19879 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!743955 (= lt!330490 (array!41539 (store (arr!19879 a!3186) i!1173 k0!2102) (size!20300 a!3186)))))

(declare-fun b!743956 () Bool)

(declare-fun res!501119 () Bool)

(assert (=> b!743956 (=> (not res!501119) (not e!415625))))

(declare-datatypes ((List!13934 0))(
  ( (Nil!13931) (Cons!13930 (h!15002 (_ BitVec 64)) (t!20257 List!13934)) )
))
(declare-fun arrayNoDuplicates!0 (array!41538 (_ BitVec 32) List!13934) Bool)

(assert (=> b!743956 (= res!501119 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13931))))

(declare-fun b!743957 () Bool)

(assert (=> b!743957 (= e!415626 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19879 a!3186) j!159) a!3186 mask!3328) lt!330497))))

(assert (= (and start!65412 res!501114) b!743949))

(assert (= (and b!743949 res!501115) b!743943))

(assert (= (and b!743943 res!501108) b!743954))

(assert (= (and b!743954 res!501106) b!743952))

(assert (= (and b!743952 res!501118) b!743941))

(assert (= (and b!743941 res!501109) b!743946))

(assert (= (and b!743946 res!501107) b!743956))

(assert (= (and b!743956 res!501119) b!743948))

(assert (= (and b!743948 res!501113) b!743945))

(assert (= (and b!743945 res!501120) b!743944))

(assert (= (and b!743944 res!501111) b!743953))

(assert (= (and b!743953 c!81798) b!743957))

(assert (= (and b!743953 (not c!81798)) b!743951))

(assert (= (and b!743953 res!501116) b!743955))

(assert (= (and b!743955 res!501117) b!743942))

(assert (= (and b!743942 res!501110) b!743950))

(assert (= (and b!743950 res!501112) b!743947))

(assert (= (and b!743942 (not res!501105)) b!743940))

(declare-fun m!694625 () Bool)

(assert (=> start!65412 m!694625))

(declare-fun m!694627 () Bool)

(assert (=> start!65412 m!694627))

(declare-fun m!694629 () Bool)

(assert (=> b!743956 m!694629))

(declare-fun m!694631 () Bool)

(assert (=> b!743957 m!694631))

(assert (=> b!743957 m!694631))

(declare-fun m!694633 () Bool)

(assert (=> b!743957 m!694633))

(declare-fun m!694635 () Bool)

(assert (=> b!743942 m!694635))

(declare-fun m!694637 () Bool)

(assert (=> b!743942 m!694637))

(declare-fun m!694639 () Bool)

(assert (=> b!743955 m!694639))

(declare-fun m!694641 () Bool)

(assert (=> b!743955 m!694641))

(declare-fun m!694643 () Bool)

(assert (=> b!743955 m!694643))

(declare-fun m!694645 () Bool)

(assert (=> b!743955 m!694645))

(declare-fun m!694647 () Bool)

(assert (=> b!743955 m!694647))

(assert (=> b!743955 m!694641))

(declare-fun m!694649 () Bool)

(assert (=> b!743944 m!694649))

(assert (=> b!743943 m!694631))

(assert (=> b!743943 m!694631))

(declare-fun m!694651 () Bool)

(assert (=> b!743943 m!694651))

(assert (=> b!743950 m!694631))

(assert (=> b!743950 m!694631))

(declare-fun m!694653 () Bool)

(assert (=> b!743950 m!694653))

(assert (=> b!743940 m!694631))

(assert (=> b!743940 m!694631))

(declare-fun m!694655 () Bool)

(assert (=> b!743940 m!694655))

(assert (=> b!743951 m!694631))

(assert (=> b!743951 m!694631))

(assert (=> b!743951 m!694655))

(declare-fun m!694657 () Bool)

(assert (=> b!743954 m!694657))

(assert (=> b!743945 m!694631))

(assert (=> b!743945 m!694631))

(declare-fun m!694659 () Bool)

(assert (=> b!743945 m!694659))

(assert (=> b!743945 m!694659))

(assert (=> b!743945 m!694631))

(declare-fun m!694661 () Bool)

(assert (=> b!743945 m!694661))

(declare-fun m!694663 () Bool)

(assert (=> b!743941 m!694663))

(declare-fun m!694665 () Bool)

(assert (=> b!743952 m!694665))

(declare-fun m!694667 () Bool)

(assert (=> b!743946 m!694667))

(assert (=> b!743947 m!694631))

(assert (=> b!743947 m!694631))

(declare-fun m!694669 () Bool)

(assert (=> b!743947 m!694669))

(check-sat (not b!743956) (not b!743950) (not b!743955) (not b!743946) (not b!743943) (not b!743945) (not b!743947) (not b!743957) (not b!743942) (not start!65412) (not b!743954) (not b!743940) (not b!743951) (not b!743941) (not b!743952))
(check-sat)
