; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65464 () Bool)

(assert start!65464)

(declare-fun b!745371 () Bool)

(declare-fun res!502384 () Bool)

(declare-fun e!416326 () Bool)

(assert (=> b!745371 (=> (not res!502384) (not e!416326))))

(declare-datatypes ((array!41590 0))(
  ( (array!41591 (arr!19905 (Array (_ BitVec 32) (_ BitVec 64))) (size!20326 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41590)

(declare-datatypes ((List!13960 0))(
  ( (Nil!13957) (Cons!13956 (h!15028 (_ BitVec 64)) (t!20283 List!13960)) )
))
(declare-fun arrayNoDuplicates!0 (array!41590 (_ BitVec 32) List!13960) Bool)

(assert (=> b!745371 (= res!502384 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13957))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!745372 () Bool)

(declare-fun e!416334 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7512 0))(
  ( (MissingZero!7512 (index!32415 (_ BitVec 32))) (Found!7512 (index!32416 (_ BitVec 32))) (Intermediate!7512 (undefined!8324 Bool) (index!32417 (_ BitVec 32)) (x!63399 (_ BitVec 32))) (Undefined!7512) (MissingVacant!7512 (index!32418 (_ BitVec 32))) )
))
(declare-fun lt!331167 () SeekEntryResult!7512)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41590 (_ BitVec 32)) SeekEntryResult!7512)

(assert (=> b!745372 (= e!416334 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19905 a!3186) j!159) a!3186 mask!3328) lt!331167))))

(declare-fun b!745373 () Bool)

(declare-fun e!416328 () Bool)

(assert (=> b!745373 (= e!416328 true)))

(declare-fun lt!331169 () SeekEntryResult!7512)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!745373 (= lt!331169 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19905 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!745374 () Bool)

(declare-fun e!416331 () Bool)

(assert (=> b!745374 (= e!416331 (not e!416328))))

(declare-fun res!502393 () Bool)

(assert (=> b!745374 (=> res!502393 e!416328)))

(declare-fun lt!331164 () SeekEntryResult!7512)

(assert (=> b!745374 (= res!502393 (or (not (is-Intermediate!7512 lt!331164)) (bvslt x!1131 (x!63399 lt!331164)) (not (= x!1131 (x!63399 lt!331164))) (not (= index!1321 (index!32417 lt!331164)))))))

(declare-fun e!416327 () Bool)

(assert (=> b!745374 e!416327))

(declare-fun res!502382 () Bool)

(assert (=> b!745374 (=> (not res!502382) (not e!416327))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41590 (_ BitVec 32)) Bool)

(assert (=> b!745374 (= res!502382 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25504 0))(
  ( (Unit!25505) )
))
(declare-fun lt!331166 () Unit!25504)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41590 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25504)

(assert (=> b!745374 (= lt!331166 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!745375 () Bool)

(declare-fun res!502395 () Bool)

(declare-fun e!416333 () Bool)

(assert (=> b!745375 (=> (not res!502395) (not e!416333))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!745375 (= res!502395 (validKeyInArray!0 k!2102))))

(declare-fun b!745376 () Bool)

(assert (=> b!745376 (= e!416333 e!416326)))

(declare-fun res!502387 () Bool)

(assert (=> b!745376 (=> (not res!502387) (not e!416326))))

(declare-fun lt!331172 () SeekEntryResult!7512)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!745376 (= res!502387 (or (= lt!331172 (MissingZero!7512 i!1173)) (= lt!331172 (MissingVacant!7512 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41590 (_ BitVec 32)) SeekEntryResult!7512)

(assert (=> b!745376 (= lt!331172 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!502391 () Bool)

(assert (=> start!65464 (=> (not res!502391) (not e!416333))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65464 (= res!502391 (validMask!0 mask!3328))))

(assert (=> start!65464 e!416333))

(assert (=> start!65464 true))

(declare-fun array_inv!15679 (array!41590) Bool)

(assert (=> start!65464 (array_inv!15679 a!3186)))

(declare-fun b!745377 () Bool)

(declare-fun res!502388 () Bool)

(assert (=> b!745377 (=> (not res!502388) (not e!416333))))

(assert (=> b!745377 (= res!502388 (and (= (size!20326 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20326 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20326 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!745378 () Bool)

(declare-fun res!502380 () Bool)

(assert (=> b!745378 (=> (not res!502380) (not e!416326))))

(assert (=> b!745378 (= res!502380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!745379 () Bool)

(declare-fun e!416330 () Bool)

(assert (=> b!745379 (= e!416330 e!416331)))

(declare-fun res!502392 () Bool)

(assert (=> b!745379 (=> (not res!502392) (not e!416331))))

(declare-fun lt!331168 () SeekEntryResult!7512)

(assert (=> b!745379 (= res!502392 (= lt!331168 lt!331164))))

(declare-fun lt!331165 () (_ BitVec 64))

(declare-fun lt!331171 () array!41590)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41590 (_ BitVec 32)) SeekEntryResult!7512)

(assert (=> b!745379 (= lt!331164 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331165 lt!331171 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!745379 (= lt!331168 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331165 mask!3328) lt!331165 lt!331171 mask!3328))))

(assert (=> b!745379 (= lt!331165 (select (store (arr!19905 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!745379 (= lt!331171 (array!41591 (store (arr!19905 a!3186) i!1173 k!2102) (size!20326 a!3186)))))

(declare-fun b!745380 () Bool)

(declare-fun res!502381 () Bool)

(assert (=> b!745380 (=> (not res!502381) (not e!416333))))

(declare-fun arrayContainsKey!0 (array!41590 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!745380 (= res!502381 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!745381 () Bool)

(declare-fun res!502390 () Bool)

(assert (=> b!745381 (=> (not res!502390) (not e!416330))))

(assert (=> b!745381 (= res!502390 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19905 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!745382 () Bool)

(declare-fun res!502386 () Bool)

(assert (=> b!745382 (=> (not res!502386) (not e!416326))))

(assert (=> b!745382 (= res!502386 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20326 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20326 a!3186))))))

(declare-fun e!416329 () Bool)

(declare-fun lt!331170 () SeekEntryResult!7512)

(declare-fun b!745383 () Bool)

(assert (=> b!745383 (= e!416329 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19905 a!3186) j!159) a!3186 mask!3328) lt!331170))))

(declare-fun b!745384 () Bool)

(assert (=> b!745384 (= e!416329 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19905 a!3186) j!159) a!3186 mask!3328) (Found!7512 j!159)))))

(declare-fun b!745385 () Bool)

(declare-fun res!502385 () Bool)

(assert (=> b!745385 (=> (not res!502385) (not e!416330))))

(assert (=> b!745385 (= res!502385 e!416329)))

(declare-fun c!81876 () Bool)

(assert (=> b!745385 (= c!81876 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!745386 () Bool)

(declare-fun res!502383 () Bool)

(assert (=> b!745386 (=> (not res!502383) (not e!416333))))

(assert (=> b!745386 (= res!502383 (validKeyInArray!0 (select (arr!19905 a!3186) j!159)))))

(declare-fun b!745387 () Bool)

(assert (=> b!745387 (= e!416327 e!416334)))

(declare-fun res!502389 () Bool)

(assert (=> b!745387 (=> (not res!502389) (not e!416334))))

(assert (=> b!745387 (= res!502389 (= (seekEntryOrOpen!0 (select (arr!19905 a!3186) j!159) a!3186 mask!3328) lt!331167))))

(assert (=> b!745387 (= lt!331167 (Found!7512 j!159))))

(declare-fun b!745388 () Bool)

(assert (=> b!745388 (= e!416326 e!416330)))

(declare-fun res!502394 () Bool)

(assert (=> b!745388 (=> (not res!502394) (not e!416330))))

(assert (=> b!745388 (= res!502394 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19905 a!3186) j!159) mask!3328) (select (arr!19905 a!3186) j!159) a!3186 mask!3328) lt!331170))))

(assert (=> b!745388 (= lt!331170 (Intermediate!7512 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!65464 res!502391) b!745377))

(assert (= (and b!745377 res!502388) b!745386))

(assert (= (and b!745386 res!502383) b!745375))

(assert (= (and b!745375 res!502395) b!745380))

(assert (= (and b!745380 res!502381) b!745376))

(assert (= (and b!745376 res!502387) b!745378))

(assert (= (and b!745378 res!502380) b!745371))

(assert (= (and b!745371 res!502384) b!745382))

(assert (= (and b!745382 res!502386) b!745388))

(assert (= (and b!745388 res!502394) b!745381))

(assert (= (and b!745381 res!502390) b!745385))

(assert (= (and b!745385 c!81876) b!745383))

(assert (= (and b!745385 (not c!81876)) b!745384))

(assert (= (and b!745385 res!502385) b!745379))

(assert (= (and b!745379 res!502392) b!745374))

(assert (= (and b!745374 res!502382) b!745387))

(assert (= (and b!745387 res!502389) b!745372))

(assert (= (and b!745374 (not res!502393)) b!745373))

(declare-fun m!695839 () Bool)

(assert (=> b!745375 m!695839))

(declare-fun m!695841 () Bool)

(assert (=> b!745372 m!695841))

(assert (=> b!745372 m!695841))

(declare-fun m!695843 () Bool)

(assert (=> b!745372 m!695843))

(assert (=> b!745387 m!695841))

(assert (=> b!745387 m!695841))

(declare-fun m!695845 () Bool)

(assert (=> b!745387 m!695845))

(assert (=> b!745384 m!695841))

(assert (=> b!745384 m!695841))

(declare-fun m!695847 () Bool)

(assert (=> b!745384 m!695847))

(assert (=> b!745373 m!695841))

(assert (=> b!745373 m!695841))

(assert (=> b!745373 m!695847))

(declare-fun m!695849 () Bool)

(assert (=> start!65464 m!695849))

(declare-fun m!695851 () Bool)

(assert (=> start!65464 m!695851))

(declare-fun m!695853 () Bool)

(assert (=> b!745378 m!695853))

(declare-fun m!695855 () Bool)

(assert (=> b!745380 m!695855))

(declare-fun m!695857 () Bool)

(assert (=> b!745374 m!695857))

(declare-fun m!695859 () Bool)

(assert (=> b!745374 m!695859))

(assert (=> b!745386 m!695841))

(assert (=> b!745386 m!695841))

(declare-fun m!695861 () Bool)

(assert (=> b!745386 m!695861))

(declare-fun m!695863 () Bool)

(assert (=> b!745376 m!695863))

(assert (=> b!745383 m!695841))

(assert (=> b!745383 m!695841))

(declare-fun m!695865 () Bool)

(assert (=> b!745383 m!695865))

(assert (=> b!745388 m!695841))

(assert (=> b!745388 m!695841))

(declare-fun m!695867 () Bool)

(assert (=> b!745388 m!695867))

(assert (=> b!745388 m!695867))

(assert (=> b!745388 m!695841))

(declare-fun m!695869 () Bool)

(assert (=> b!745388 m!695869))

(declare-fun m!695871 () Bool)

(assert (=> b!745379 m!695871))

(assert (=> b!745379 m!695871))

(declare-fun m!695873 () Bool)

(assert (=> b!745379 m!695873))

(declare-fun m!695875 () Bool)

(assert (=> b!745379 m!695875))

(declare-fun m!695877 () Bool)

(assert (=> b!745379 m!695877))

(declare-fun m!695879 () Bool)

(assert (=> b!745379 m!695879))

(declare-fun m!695881 () Bool)

(assert (=> b!745381 m!695881))

(declare-fun m!695883 () Bool)

(assert (=> b!745371 m!695883))

(push 1)

