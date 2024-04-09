; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65466 () Bool)

(assert start!65466)

(declare-fun b!745425 () Bool)

(declare-fun res!502436 () Bool)

(declare-fun e!416357 () Bool)

(assert (=> b!745425 (=> (not res!502436) (not e!416357))))

(declare-datatypes ((array!41592 0))(
  ( (array!41593 (arr!19906 (Array (_ BitVec 32) (_ BitVec 64))) (size!20327 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41592)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41592 (_ BitVec 32)) Bool)

(assert (=> b!745425 (= res!502436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!745426 () Bool)

(declare-fun res!502434 () Bool)

(declare-fun e!416359 () Bool)

(assert (=> b!745426 (=> (not res!502434) (not e!416359))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!745426 (= res!502434 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19906 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!745427 () Bool)

(declare-fun res!502441 () Bool)

(declare-fun e!416355 () Bool)

(assert (=> b!745427 (=> (not res!502441) (not e!416355))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!745427 (= res!502441 (validKeyInArray!0 k0!2102))))

(declare-fun b!745428 () Bool)

(assert (=> b!745428 (= e!416357 e!416359)))

(declare-fun res!502438 () Bool)

(assert (=> b!745428 (=> (not res!502438) (not e!416359))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7513 0))(
  ( (MissingZero!7513 (index!32419 (_ BitVec 32))) (Found!7513 (index!32420 (_ BitVec 32))) (Intermediate!7513 (undefined!8325 Bool) (index!32421 (_ BitVec 32)) (x!63400 (_ BitVec 32))) (Undefined!7513) (MissingVacant!7513 (index!32422 (_ BitVec 32))) )
))
(declare-fun lt!331194 () SeekEntryResult!7513)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41592 (_ BitVec 32)) SeekEntryResult!7513)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!745428 (= res!502438 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19906 a!3186) j!159) mask!3328) (select (arr!19906 a!3186) j!159) a!3186 mask!3328) lt!331194))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!745428 (= lt!331194 (Intermediate!7513 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!745429 () Bool)

(assert (=> b!745429 (= e!416355 e!416357)))

(declare-fun res!502440 () Bool)

(assert (=> b!745429 (=> (not res!502440) (not e!416357))))

(declare-fun lt!331191 () SeekEntryResult!7513)

(assert (=> b!745429 (= res!502440 (or (= lt!331191 (MissingZero!7513 i!1173)) (= lt!331191 (MissingVacant!7513 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41592 (_ BitVec 32)) SeekEntryResult!7513)

(assert (=> b!745429 (= lt!331191 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!745430 () Bool)

(declare-fun e!416360 () Bool)

(declare-fun e!416361 () Bool)

(assert (=> b!745430 (= e!416360 e!416361)))

(declare-fun res!502428 () Bool)

(assert (=> b!745430 (=> (not res!502428) (not e!416361))))

(declare-fun lt!331197 () SeekEntryResult!7513)

(assert (=> b!745430 (= res!502428 (= (seekEntryOrOpen!0 (select (arr!19906 a!3186) j!159) a!3186 mask!3328) lt!331197))))

(assert (=> b!745430 (= lt!331197 (Found!7513 j!159))))

(declare-fun b!745431 () Bool)

(declare-fun res!502433 () Bool)

(assert (=> b!745431 (=> (not res!502433) (not e!416355))))

(declare-fun arrayContainsKey!0 (array!41592 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!745431 (= res!502433 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!745432 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41592 (_ BitVec 32)) SeekEntryResult!7513)

(assert (=> b!745432 (= e!416361 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19906 a!3186) j!159) a!3186 mask!3328) lt!331197))))

(declare-fun b!745433 () Bool)

(declare-fun res!502442 () Bool)

(assert (=> b!745433 (=> (not res!502442) (not e!416357))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!745433 (= res!502442 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20327 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20327 a!3186))))))

(declare-fun b!745434 () Bool)

(declare-fun e!416358 () Bool)

(assert (=> b!745434 (= e!416358 true)))

(declare-fun lt!331199 () SeekEntryResult!7513)

(assert (=> b!745434 (= lt!331199 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19906 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!745435 () Bool)

(declare-fun res!502437 () Bool)

(assert (=> b!745435 (=> (not res!502437) (not e!416355))))

(assert (=> b!745435 (= res!502437 (validKeyInArray!0 (select (arr!19906 a!3186) j!159)))))

(declare-fun b!745437 () Bool)

(declare-fun e!416353 () Bool)

(assert (=> b!745437 (= e!416359 e!416353)))

(declare-fun res!502439 () Bool)

(assert (=> b!745437 (=> (not res!502439) (not e!416353))))

(declare-fun lt!331192 () SeekEntryResult!7513)

(declare-fun lt!331193 () SeekEntryResult!7513)

(assert (=> b!745437 (= res!502439 (= lt!331192 lt!331193))))

(declare-fun lt!331195 () array!41592)

(declare-fun lt!331198 () (_ BitVec 64))

(assert (=> b!745437 (= lt!331193 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331198 lt!331195 mask!3328))))

(assert (=> b!745437 (= lt!331192 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331198 mask!3328) lt!331198 lt!331195 mask!3328))))

(assert (=> b!745437 (= lt!331198 (select (store (arr!19906 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!745437 (= lt!331195 (array!41593 (store (arr!19906 a!3186) i!1173 k0!2102) (size!20327 a!3186)))))

(declare-fun b!745438 () Bool)

(assert (=> b!745438 (= e!416353 (not e!416358))))

(declare-fun res!502435 () Bool)

(assert (=> b!745438 (=> res!502435 e!416358)))

(get-info :version)

(assert (=> b!745438 (= res!502435 (or (not ((_ is Intermediate!7513) lt!331193)) (bvslt x!1131 (x!63400 lt!331193)) (not (= x!1131 (x!63400 lt!331193))) (not (= index!1321 (index!32421 lt!331193)))))))

(assert (=> b!745438 e!416360))

(declare-fun res!502443 () Bool)

(assert (=> b!745438 (=> (not res!502443) (not e!416360))))

(assert (=> b!745438 (= res!502443 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25506 0))(
  ( (Unit!25507) )
))
(declare-fun lt!331196 () Unit!25506)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41592 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25506)

(assert (=> b!745438 (= lt!331196 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun e!416354 () Bool)

(declare-fun b!745439 () Bool)

(assert (=> b!745439 (= e!416354 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19906 a!3186) j!159) a!3186 mask!3328) lt!331194))))

(declare-fun b!745440 () Bool)

(declare-fun res!502429 () Bool)

(assert (=> b!745440 (=> (not res!502429) (not e!416359))))

(assert (=> b!745440 (= res!502429 e!416354)))

(declare-fun c!81879 () Bool)

(assert (=> b!745440 (= c!81879 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!745441 () Bool)

(declare-fun res!502432 () Bool)

(assert (=> b!745441 (=> (not res!502432) (not e!416357))))

(declare-datatypes ((List!13961 0))(
  ( (Nil!13958) (Cons!13957 (h!15029 (_ BitVec 64)) (t!20284 List!13961)) )
))
(declare-fun arrayNoDuplicates!0 (array!41592 (_ BitVec 32) List!13961) Bool)

(assert (=> b!745441 (= res!502432 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13958))))

(declare-fun b!745442 () Bool)

(declare-fun res!502430 () Bool)

(assert (=> b!745442 (=> (not res!502430) (not e!416355))))

(assert (=> b!745442 (= res!502430 (and (= (size!20327 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20327 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20327 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!745436 () Bool)

(assert (=> b!745436 (= e!416354 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19906 a!3186) j!159) a!3186 mask!3328) (Found!7513 j!159)))))

(declare-fun res!502431 () Bool)

(assert (=> start!65466 (=> (not res!502431) (not e!416355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65466 (= res!502431 (validMask!0 mask!3328))))

(assert (=> start!65466 e!416355))

(assert (=> start!65466 true))

(declare-fun array_inv!15680 (array!41592) Bool)

(assert (=> start!65466 (array_inv!15680 a!3186)))

(assert (= (and start!65466 res!502431) b!745442))

(assert (= (and b!745442 res!502430) b!745435))

(assert (= (and b!745435 res!502437) b!745427))

(assert (= (and b!745427 res!502441) b!745431))

(assert (= (and b!745431 res!502433) b!745429))

(assert (= (and b!745429 res!502440) b!745425))

(assert (= (and b!745425 res!502436) b!745441))

(assert (= (and b!745441 res!502432) b!745433))

(assert (= (and b!745433 res!502442) b!745428))

(assert (= (and b!745428 res!502438) b!745426))

(assert (= (and b!745426 res!502434) b!745440))

(assert (= (and b!745440 c!81879) b!745439))

(assert (= (and b!745440 (not c!81879)) b!745436))

(assert (= (and b!745440 res!502429) b!745437))

(assert (= (and b!745437 res!502439) b!745438))

(assert (= (and b!745438 res!502443) b!745430))

(assert (= (and b!745430 res!502428) b!745432))

(assert (= (and b!745438 (not res!502435)) b!745434))

(declare-fun m!695885 () Bool)

(assert (=> b!745441 m!695885))

(declare-fun m!695887 () Bool)

(assert (=> b!745426 m!695887))

(declare-fun m!695889 () Bool)

(assert (=> b!745438 m!695889))

(declare-fun m!695891 () Bool)

(assert (=> b!745438 m!695891))

(declare-fun m!695893 () Bool)

(assert (=> b!745431 m!695893))

(declare-fun m!695895 () Bool)

(assert (=> b!745436 m!695895))

(assert (=> b!745436 m!695895))

(declare-fun m!695897 () Bool)

(assert (=> b!745436 m!695897))

(declare-fun m!695899 () Bool)

(assert (=> b!745437 m!695899))

(declare-fun m!695901 () Bool)

(assert (=> b!745437 m!695901))

(declare-fun m!695903 () Bool)

(assert (=> b!745437 m!695903))

(declare-fun m!695905 () Bool)

(assert (=> b!745437 m!695905))

(declare-fun m!695907 () Bool)

(assert (=> b!745437 m!695907))

(assert (=> b!745437 m!695899))

(declare-fun m!695909 () Bool)

(assert (=> b!745425 m!695909))

(assert (=> b!745435 m!695895))

(assert (=> b!745435 m!695895))

(declare-fun m!695911 () Bool)

(assert (=> b!745435 m!695911))

(declare-fun m!695913 () Bool)

(assert (=> b!745429 m!695913))

(declare-fun m!695915 () Bool)

(assert (=> start!65466 m!695915))

(declare-fun m!695917 () Bool)

(assert (=> start!65466 m!695917))

(assert (=> b!745430 m!695895))

(assert (=> b!745430 m!695895))

(declare-fun m!695919 () Bool)

(assert (=> b!745430 m!695919))

(assert (=> b!745434 m!695895))

(assert (=> b!745434 m!695895))

(assert (=> b!745434 m!695897))

(assert (=> b!745432 m!695895))

(assert (=> b!745432 m!695895))

(declare-fun m!695921 () Bool)

(assert (=> b!745432 m!695921))

(declare-fun m!695923 () Bool)

(assert (=> b!745427 m!695923))

(assert (=> b!745439 m!695895))

(assert (=> b!745439 m!695895))

(declare-fun m!695925 () Bool)

(assert (=> b!745439 m!695925))

(assert (=> b!745428 m!695895))

(assert (=> b!745428 m!695895))

(declare-fun m!695927 () Bool)

(assert (=> b!745428 m!695927))

(assert (=> b!745428 m!695927))

(assert (=> b!745428 m!695895))

(declare-fun m!695929 () Bool)

(assert (=> b!745428 m!695929))

(check-sat (not b!745434) (not b!745428) (not b!745441) (not b!745429) (not b!745427) (not b!745437) (not b!745432) (not b!745436) (not b!745430) (not start!65466) (not b!745425) (not b!745431) (not b!745439) (not b!745438) (not b!745435))
(check-sat)
