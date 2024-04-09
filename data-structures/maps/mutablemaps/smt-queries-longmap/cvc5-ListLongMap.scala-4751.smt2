; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65584 () Bool)

(assert start!65584)

(declare-fun b!748925 () Bool)

(declare-fun res!505381 () Bool)

(declare-fun e!417964 () Bool)

(assert (=> b!748925 (=> (not res!505381) (not e!417964))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!748925 (= res!505381 (validKeyInArray!0 k!2102))))

(declare-fun b!748926 () Bool)

(declare-fun e!417958 () Bool)

(declare-fun e!417962 () Bool)

(assert (=> b!748926 (= e!417958 e!417962)))

(declare-fun res!505373 () Bool)

(assert (=> b!748926 (=> (not res!505373) (not e!417962))))

(declare-datatypes ((array!41710 0))(
  ( (array!41711 (arr!19965 (Array (_ BitVec 32) (_ BitVec 64))) (size!20386 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41710)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7572 0))(
  ( (MissingZero!7572 (index!32655 (_ BitVec 32))) (Found!7572 (index!32656 (_ BitVec 32))) (Intermediate!7572 (undefined!8384 Bool) (index!32657 (_ BitVec 32)) (x!63619 (_ BitVec 32))) (Undefined!7572) (MissingVacant!7572 (index!32658 (_ BitVec 32))) )
))
(declare-fun lt!332966 () SeekEntryResult!7572)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41710 (_ BitVec 32)) SeekEntryResult!7572)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!748926 (= res!505373 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19965 a!3186) j!159) mask!3328) (select (arr!19965 a!3186) j!159) a!3186 mask!3328) lt!332966))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!748926 (= lt!332966 (Intermediate!7572 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!748927 () Bool)

(assert (=> b!748927 (= e!417964 e!417958)))

(declare-fun res!505382 () Bool)

(assert (=> b!748927 (=> (not res!505382) (not e!417958))))

(declare-fun lt!332961 () SeekEntryResult!7572)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!748927 (= res!505382 (or (= lt!332961 (MissingZero!7572 i!1173)) (= lt!332961 (MissingVacant!7572 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41710 (_ BitVec 32)) SeekEntryResult!7572)

(assert (=> b!748927 (= lt!332961 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!748928 () Bool)

(declare-fun res!505372 () Bool)

(assert (=> b!748928 (=> (not res!505372) (not e!417958))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!748928 (= res!505372 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20386 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20386 a!3186))))))

(declare-fun e!417957 () Bool)

(declare-fun b!748929 () Bool)

(assert (=> b!748929 (= e!417957 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19965 a!3186) j!159) a!3186 mask!3328) lt!332966))))

(declare-fun b!748930 () Bool)

(declare-fun res!505377 () Bool)

(assert (=> b!748930 (=> (not res!505377) (not e!417964))))

(assert (=> b!748930 (= res!505377 (validKeyInArray!0 (select (arr!19965 a!3186) j!159)))))

(declare-fun b!748931 () Bool)

(declare-fun e!417966 () Bool)

(declare-fun lt!332965 () (_ BitVec 64))

(assert (=> b!748931 (= e!417966 (validKeyInArray!0 lt!332965))))

(declare-fun b!748932 () Bool)

(declare-fun res!505389 () Bool)

(assert (=> b!748932 (=> (not res!505389) (not e!417958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41710 (_ BitVec 32)) Bool)

(assert (=> b!748932 (= res!505389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!748933 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41710 (_ BitVec 32)) SeekEntryResult!7572)

(assert (=> b!748933 (= e!417957 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19965 a!3186) j!159) a!3186 mask!3328) (Found!7572 j!159)))))

(declare-fun b!748934 () Bool)

(declare-fun e!417965 () Bool)

(assert (=> b!748934 (= e!417965 e!417966)))

(declare-fun res!505385 () Bool)

(assert (=> b!748934 (=> res!505385 e!417966)))

(assert (=> b!748934 (= res!505385 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(assert (=> b!748934 (= (select (store (arr!19965 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-datatypes ((Unit!25690 0))(
  ( (Unit!25691) )
))
(declare-fun lt!332964 () Unit!25690)

(declare-fun e!417961 () Unit!25690)

(assert (=> b!748934 (= lt!332964 e!417961)))

(declare-fun c!82158 () Bool)

(assert (=> b!748934 (= c!82158 (= (select (store (arr!19965 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!748935 () Bool)

(declare-fun e!417960 () Bool)

(assert (=> b!748935 (= e!417962 e!417960)))

(declare-fun res!505374 () Bool)

(assert (=> b!748935 (=> (not res!505374) (not e!417960))))

(declare-fun lt!332962 () SeekEntryResult!7572)

(declare-fun lt!332959 () SeekEntryResult!7572)

(assert (=> b!748935 (= res!505374 (= lt!332962 lt!332959))))

(declare-fun lt!332958 () array!41710)

(assert (=> b!748935 (= lt!332959 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332965 lt!332958 mask!3328))))

(assert (=> b!748935 (= lt!332962 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332965 mask!3328) lt!332965 lt!332958 mask!3328))))

(assert (=> b!748935 (= lt!332965 (select (store (arr!19965 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!748935 (= lt!332958 (array!41711 (store (arr!19965 a!3186) i!1173 k!2102) (size!20386 a!3186)))))

(declare-fun b!748937 () Bool)

(assert (=> b!748937 (= e!417960 (not e!417965))))

(declare-fun res!505387 () Bool)

(assert (=> b!748937 (=> res!505387 e!417965)))

(assert (=> b!748937 (= res!505387 (or (not (is-Intermediate!7572 lt!332959)) (bvslt x!1131 (x!63619 lt!332959)) (not (= x!1131 (x!63619 lt!332959))) (not (= index!1321 (index!32657 lt!332959)))))))

(declare-fun e!417963 () Bool)

(assert (=> b!748937 e!417963))

(declare-fun res!505379 () Bool)

(assert (=> b!748937 (=> (not res!505379) (not e!417963))))

(declare-fun lt!332957 () SeekEntryResult!7572)

(declare-fun lt!332963 () SeekEntryResult!7572)

(assert (=> b!748937 (= res!505379 (= lt!332957 lt!332963))))

(assert (=> b!748937 (= lt!332963 (Found!7572 j!159))))

(assert (=> b!748937 (= lt!332957 (seekEntryOrOpen!0 (select (arr!19965 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!748937 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332960 () Unit!25690)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41710 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25690)

(assert (=> b!748937 (= lt!332960 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!748938 () Bool)

(declare-fun res!505376 () Bool)

(assert (=> b!748938 (=> (not res!505376) (not e!417958))))

(declare-datatypes ((List!14020 0))(
  ( (Nil!14017) (Cons!14016 (h!15088 (_ BitVec 64)) (t!20343 List!14020)) )
))
(declare-fun arrayNoDuplicates!0 (array!41710 (_ BitVec 32) List!14020) Bool)

(assert (=> b!748938 (= res!505376 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14017))))

(declare-fun b!748939 () Bool)

(declare-fun res!505383 () Bool)

(assert (=> b!748939 (=> (not res!505383) (not e!417962))))

(assert (=> b!748939 (= res!505383 e!417957)))

(declare-fun c!82157 () Bool)

(assert (=> b!748939 (= c!82157 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!748940 () Bool)

(assert (=> b!748940 (= e!417963 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19965 a!3186) j!159) a!3186 mask!3328) lt!332963))))

(declare-fun b!748941 () Bool)

(declare-fun res!505384 () Bool)

(assert (=> b!748941 (=> res!505384 e!417965)))

(assert (=> b!748941 (= res!505384 (= (select (store (arr!19965 a!3186) i!1173 k!2102) index!1321) lt!332965))))

(declare-fun b!748942 () Bool)

(declare-fun res!505375 () Bool)

(assert (=> b!748942 (=> (not res!505375) (not e!417964))))

(declare-fun arrayContainsKey!0 (array!41710 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!748942 (= res!505375 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!748943 () Bool)

(declare-fun Unit!25692 () Unit!25690)

(assert (=> b!748943 (= e!417961 Unit!25692)))

(declare-fun b!748944 () Bool)

(declare-fun res!505380 () Bool)

(assert (=> b!748944 (=> (not res!505380) (not e!417962))))

(assert (=> b!748944 (= res!505380 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19965 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!505386 () Bool)

(assert (=> start!65584 (=> (not res!505386) (not e!417964))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65584 (= res!505386 (validMask!0 mask!3328))))

(assert (=> start!65584 e!417964))

(assert (=> start!65584 true))

(declare-fun array_inv!15739 (array!41710) Bool)

(assert (=> start!65584 (array_inv!15739 a!3186)))

(declare-fun b!748936 () Bool)

(declare-fun res!505388 () Bool)

(assert (=> b!748936 (=> (not res!505388) (not e!417964))))

(assert (=> b!748936 (= res!505388 (and (= (size!20386 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20386 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20386 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!748945 () Bool)

(declare-fun Unit!25693 () Unit!25690)

(assert (=> b!748945 (= e!417961 Unit!25693)))

(assert (=> b!748945 false))

(declare-fun b!748946 () Bool)

(declare-fun res!505378 () Bool)

(assert (=> b!748946 (=> res!505378 e!417965)))

(assert (=> b!748946 (= res!505378 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19965 a!3186) j!159) a!3186 mask!3328) lt!332963)))))

(assert (= (and start!65584 res!505386) b!748936))

(assert (= (and b!748936 res!505388) b!748930))

(assert (= (and b!748930 res!505377) b!748925))

(assert (= (and b!748925 res!505381) b!748942))

(assert (= (and b!748942 res!505375) b!748927))

(assert (= (and b!748927 res!505382) b!748932))

(assert (= (and b!748932 res!505389) b!748938))

(assert (= (and b!748938 res!505376) b!748928))

(assert (= (and b!748928 res!505372) b!748926))

(assert (= (and b!748926 res!505373) b!748944))

(assert (= (and b!748944 res!505380) b!748939))

(assert (= (and b!748939 c!82157) b!748929))

(assert (= (and b!748939 (not c!82157)) b!748933))

(assert (= (and b!748939 res!505383) b!748935))

(assert (= (and b!748935 res!505374) b!748937))

(assert (= (and b!748937 res!505379) b!748940))

(assert (= (and b!748937 (not res!505387)) b!748946))

(assert (= (and b!748946 (not res!505378)) b!748941))

(assert (= (and b!748941 (not res!505384)) b!748934))

(assert (= (and b!748934 c!82158) b!748945))

(assert (= (and b!748934 (not c!82158)) b!748943))

(assert (= (and b!748934 (not res!505385)) b!748931))

(declare-fun m!698719 () Bool)

(assert (=> start!65584 m!698719))

(declare-fun m!698721 () Bool)

(assert (=> start!65584 m!698721))

(declare-fun m!698723 () Bool)

(assert (=> b!748933 m!698723))

(assert (=> b!748933 m!698723))

(declare-fun m!698725 () Bool)

(assert (=> b!748933 m!698725))

(declare-fun m!698727 () Bool)

(assert (=> b!748934 m!698727))

(declare-fun m!698729 () Bool)

(assert (=> b!748934 m!698729))

(declare-fun m!698731 () Bool)

(assert (=> b!748927 m!698731))

(assert (=> b!748929 m!698723))

(assert (=> b!748929 m!698723))

(declare-fun m!698733 () Bool)

(assert (=> b!748929 m!698733))

(declare-fun m!698735 () Bool)

(assert (=> b!748942 m!698735))

(assert (=> b!748946 m!698723))

(assert (=> b!748946 m!698723))

(assert (=> b!748946 m!698725))

(declare-fun m!698737 () Bool)

(assert (=> b!748935 m!698737))

(declare-fun m!698739 () Bool)

(assert (=> b!748935 m!698739))

(assert (=> b!748935 m!698727))

(declare-fun m!698741 () Bool)

(assert (=> b!748935 m!698741))

(declare-fun m!698743 () Bool)

(assert (=> b!748935 m!698743))

(assert (=> b!748935 m!698737))

(assert (=> b!748940 m!698723))

(assert (=> b!748940 m!698723))

(declare-fun m!698745 () Bool)

(assert (=> b!748940 m!698745))

(declare-fun m!698747 () Bool)

(assert (=> b!748938 m!698747))

(assert (=> b!748926 m!698723))

(assert (=> b!748926 m!698723))

(declare-fun m!698749 () Bool)

(assert (=> b!748926 m!698749))

(assert (=> b!748926 m!698749))

(assert (=> b!748926 m!698723))

(declare-fun m!698751 () Bool)

(assert (=> b!748926 m!698751))

(declare-fun m!698753 () Bool)

(assert (=> b!748932 m!698753))

(declare-fun m!698755 () Bool)

(assert (=> b!748931 m!698755))

(assert (=> b!748941 m!698727))

(assert (=> b!748941 m!698729))

(assert (=> b!748937 m!698723))

(assert (=> b!748937 m!698723))

(declare-fun m!698757 () Bool)

(assert (=> b!748937 m!698757))

(declare-fun m!698759 () Bool)

(assert (=> b!748937 m!698759))

(declare-fun m!698761 () Bool)

(assert (=> b!748937 m!698761))

(assert (=> b!748930 m!698723))

(assert (=> b!748930 m!698723))

(declare-fun m!698763 () Bool)

(assert (=> b!748930 m!698763))

(declare-fun m!698765 () Bool)

(assert (=> b!748925 m!698765))

(declare-fun m!698767 () Bool)

(assert (=> b!748944 m!698767))

(push 1)

