; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67694 () Bool)

(assert start!67694)

(declare-fun b!783932 () Bool)

(declare-fun e!435896 () Bool)

(declare-fun e!435892 () Bool)

(assert (=> b!783932 (= e!435896 e!435892)))

(declare-fun res!530566 () Bool)

(assert (=> b!783932 (=> (not res!530566) (not e!435892))))

(declare-datatypes ((SeekEntryResult!8036 0))(
  ( (MissingZero!8036 (index!34511 (_ BitVec 32))) (Found!8036 (index!34512 (_ BitVec 32))) (Intermediate!8036 (undefined!8848 Bool) (index!34513 (_ BitVec 32)) (x!65489 (_ BitVec 32))) (Undefined!8036) (MissingVacant!8036 (index!34514 (_ BitVec 32))) )
))
(declare-fun lt!349455 () SeekEntryResult!8036)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!783932 (= res!530566 (or (= lt!349455 (MissingZero!8036 i!1173)) (= lt!349455 (MissingVacant!8036 i!1173))))))

(declare-datatypes ((array!42689 0))(
  ( (array!42690 (arr!20429 (Array (_ BitVec 32) (_ BitVec 64))) (size!20850 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42689)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42689 (_ BitVec 32)) SeekEntryResult!8036)

(assert (=> b!783932 (= lt!349455 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!783933 () Bool)

(declare-datatypes ((Unit!27054 0))(
  ( (Unit!27055) )
))
(declare-fun e!435888 () Unit!27054)

(declare-fun Unit!27056 () Unit!27054)

(assert (=> b!783933 (= e!435888 Unit!27056)))

(assert (=> b!783933 false))

(declare-fun lt!349463 () SeekEntryResult!8036)

(declare-fun b!783934 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!435890 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42689 (_ BitVec 32)) SeekEntryResult!8036)

(assert (=> b!783934 (= e!435890 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20429 a!3186) j!159) a!3186 mask!3328) lt!349463))))

(declare-fun b!783935 () Bool)

(declare-fun Unit!27057 () Unit!27054)

(assert (=> b!783935 (= e!435888 Unit!27057)))

(declare-fun b!783936 () Bool)

(declare-fun e!435889 () Bool)

(assert (=> b!783936 (= e!435889 true)))

(declare-fun e!435893 () Bool)

(assert (=> b!783936 e!435893))

(declare-fun res!530561 () Bool)

(assert (=> b!783936 (=> (not res!530561) (not e!435893))))

(declare-fun lt!349465 () (_ BitVec 64))

(assert (=> b!783936 (= res!530561 (= lt!349465 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349459 () Unit!27054)

(assert (=> b!783936 (= lt!349459 e!435888)))

(declare-fun c!87096 () Bool)

(assert (=> b!783936 (= c!87096 (= lt!349465 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!783937 () Bool)

(declare-fun res!530565 () Bool)

(assert (=> b!783937 (=> (not res!530565) (not e!435892))))

(declare-datatypes ((List!14484 0))(
  ( (Nil!14481) (Cons!14480 (h!15603 (_ BitVec 64)) (t!20807 List!14484)) )
))
(declare-fun arrayNoDuplicates!0 (array!42689 (_ BitVec 32) List!14484) Bool)

(assert (=> b!783937 (= res!530565 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14481))))

(declare-fun res!530564 () Bool)

(assert (=> start!67694 (=> (not res!530564) (not e!435896))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67694 (= res!530564 (validMask!0 mask!3328))))

(assert (=> start!67694 e!435896))

(assert (=> start!67694 true))

(declare-fun array_inv!16203 (array!42689) Bool)

(assert (=> start!67694 (array_inv!16203 a!3186)))

(declare-fun b!783938 () Bool)

(declare-fun res!530563 () Bool)

(assert (=> b!783938 (=> (not res!530563) (not e!435893))))

(declare-fun lt!349460 () array!42689)

(declare-fun lt!349457 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42689 (_ BitVec 32)) SeekEntryResult!8036)

(assert (=> b!783938 (= res!530563 (= (seekEntryOrOpen!0 lt!349457 lt!349460 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349457 lt!349460 mask!3328)))))

(declare-fun b!783939 () Bool)

(declare-fun res!530562 () Bool)

(assert (=> b!783939 (=> (not res!530562) (not e!435896))))

(assert (=> b!783939 (= res!530562 (and (= (size!20850 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20850 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20850 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!783940 () Bool)

(declare-fun res!530567 () Bool)

(declare-fun e!435894 () Bool)

(assert (=> b!783940 (=> (not res!530567) (not e!435894))))

(assert (=> b!783940 (= res!530567 e!435890)))

(declare-fun c!87095 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!783940 (= c!87095 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!783941 () Bool)

(declare-fun lt!349464 () SeekEntryResult!8036)

(declare-fun lt!349454 () SeekEntryResult!8036)

(assert (=> b!783941 (= e!435893 (= lt!349464 lt!349454))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!783942 () Bool)

(assert (=> b!783942 (= e!435890 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20429 a!3186) j!159) a!3186 mask!3328) (Found!8036 j!159)))))

(declare-fun b!783943 () Bool)

(declare-fun res!530558 () Bool)

(assert (=> b!783943 (=> (not res!530558) (not e!435896))))

(declare-fun arrayContainsKey!0 (array!42689 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!783943 (= res!530558 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!783944 () Bool)

(declare-fun e!435891 () Bool)

(declare-fun e!435887 () Bool)

(assert (=> b!783944 (= e!435891 e!435887)))

(declare-fun res!530573 () Bool)

(assert (=> b!783944 (=> res!530573 e!435887)))

(declare-fun lt!349456 () SeekEntryResult!8036)

(assert (=> b!783944 (= res!530573 (not (= lt!349454 lt!349456)))))

(assert (=> b!783944 (= lt!349454 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20429 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!783945 () Bool)

(declare-fun e!435895 () Bool)

(assert (=> b!783945 (= e!435894 e!435895)))

(declare-fun res!530574 () Bool)

(assert (=> b!783945 (=> (not res!530574) (not e!435895))))

(declare-fun lt!349462 () SeekEntryResult!8036)

(declare-fun lt!349458 () SeekEntryResult!8036)

(assert (=> b!783945 (= res!530574 (= lt!349462 lt!349458))))

(assert (=> b!783945 (= lt!349458 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349457 lt!349460 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!783945 (= lt!349462 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349457 mask!3328) lt!349457 lt!349460 mask!3328))))

(assert (=> b!783945 (= lt!349457 (select (store (arr!20429 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!783945 (= lt!349460 (array!42690 (store (arr!20429 a!3186) i!1173 k!2102) (size!20850 a!3186)))))

(declare-fun b!783946 () Bool)

(assert (=> b!783946 (= e!435887 e!435889)))

(declare-fun res!530575 () Bool)

(assert (=> b!783946 (=> res!530575 e!435889)))

(assert (=> b!783946 (= res!530575 (= lt!349465 lt!349457))))

(assert (=> b!783946 (= lt!349465 (select (store (arr!20429 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!783947 () Bool)

(assert (=> b!783947 (= e!435892 e!435894)))

(declare-fun res!530559 () Bool)

(assert (=> b!783947 (=> (not res!530559) (not e!435894))))

(assert (=> b!783947 (= res!530559 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20429 a!3186) j!159) mask!3328) (select (arr!20429 a!3186) j!159) a!3186 mask!3328) lt!349463))))

(assert (=> b!783947 (= lt!349463 (Intermediate!8036 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!783948 () Bool)

(declare-fun res!530568 () Bool)

(assert (=> b!783948 (=> (not res!530568) (not e!435896))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!783948 (= res!530568 (validKeyInArray!0 k!2102))))

(declare-fun b!783949 () Bool)

(assert (=> b!783949 (= e!435895 (not e!435891))))

(declare-fun res!530572 () Bool)

(assert (=> b!783949 (=> res!530572 e!435891)))

(assert (=> b!783949 (= res!530572 (or (not (is-Intermediate!8036 lt!349458)) (bvslt x!1131 (x!65489 lt!349458)) (not (= x!1131 (x!65489 lt!349458))) (not (= index!1321 (index!34513 lt!349458)))))))

(declare-fun e!435897 () Bool)

(assert (=> b!783949 e!435897))

(declare-fun res!530571 () Bool)

(assert (=> b!783949 (=> (not res!530571) (not e!435897))))

(assert (=> b!783949 (= res!530571 (= lt!349464 lt!349456))))

(assert (=> b!783949 (= lt!349456 (Found!8036 j!159))))

(assert (=> b!783949 (= lt!349464 (seekEntryOrOpen!0 (select (arr!20429 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42689 (_ BitVec 32)) Bool)

(assert (=> b!783949 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349461 () Unit!27054)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42689 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27054)

(assert (=> b!783949 (= lt!349461 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!783950 () Bool)

(declare-fun res!530560 () Bool)

(assert (=> b!783950 (=> (not res!530560) (not e!435896))))

(assert (=> b!783950 (= res!530560 (validKeyInArray!0 (select (arr!20429 a!3186) j!159)))))

(declare-fun b!783951 () Bool)

(assert (=> b!783951 (= e!435897 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20429 a!3186) j!159) a!3186 mask!3328) lt!349456))))

(declare-fun b!783952 () Bool)

(declare-fun res!530569 () Bool)

(assert (=> b!783952 (=> (not res!530569) (not e!435892))))

(assert (=> b!783952 (= res!530569 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20850 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20850 a!3186))))))

(declare-fun b!783953 () Bool)

(declare-fun res!530570 () Bool)

(assert (=> b!783953 (=> (not res!530570) (not e!435894))))

(assert (=> b!783953 (= res!530570 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20429 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!783954 () Bool)

(declare-fun res!530557 () Bool)

(assert (=> b!783954 (=> (not res!530557) (not e!435892))))

(assert (=> b!783954 (= res!530557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!67694 res!530564) b!783939))

(assert (= (and b!783939 res!530562) b!783950))

(assert (= (and b!783950 res!530560) b!783948))

(assert (= (and b!783948 res!530568) b!783943))

(assert (= (and b!783943 res!530558) b!783932))

(assert (= (and b!783932 res!530566) b!783954))

(assert (= (and b!783954 res!530557) b!783937))

(assert (= (and b!783937 res!530565) b!783952))

(assert (= (and b!783952 res!530569) b!783947))

(assert (= (and b!783947 res!530559) b!783953))

(assert (= (and b!783953 res!530570) b!783940))

(assert (= (and b!783940 c!87095) b!783934))

(assert (= (and b!783940 (not c!87095)) b!783942))

(assert (= (and b!783940 res!530567) b!783945))

(assert (= (and b!783945 res!530574) b!783949))

(assert (= (and b!783949 res!530571) b!783951))

(assert (= (and b!783949 (not res!530572)) b!783944))

(assert (= (and b!783944 (not res!530573)) b!783946))

(assert (= (and b!783946 (not res!530575)) b!783936))

(assert (= (and b!783936 c!87096) b!783933))

(assert (= (and b!783936 (not c!87096)) b!783935))

(assert (= (and b!783936 res!530561) b!783938))

(assert (= (and b!783938 res!530563) b!783941))

(declare-fun m!726417 () Bool)

(assert (=> b!783932 m!726417))

(declare-fun m!726419 () Bool)

(assert (=> b!783942 m!726419))

(assert (=> b!783942 m!726419))

(declare-fun m!726421 () Bool)

(assert (=> b!783942 m!726421))

(declare-fun m!726423 () Bool)

(assert (=> b!783954 m!726423))

(assert (=> b!783949 m!726419))

(assert (=> b!783949 m!726419))

(declare-fun m!726425 () Bool)

(assert (=> b!783949 m!726425))

(declare-fun m!726427 () Bool)

(assert (=> b!783949 m!726427))

(declare-fun m!726429 () Bool)

(assert (=> b!783949 m!726429))

(declare-fun m!726431 () Bool)

(assert (=> b!783945 m!726431))

(declare-fun m!726433 () Bool)

(assert (=> b!783945 m!726433))

(declare-fun m!726435 () Bool)

(assert (=> b!783945 m!726435))

(declare-fun m!726437 () Bool)

(assert (=> b!783945 m!726437))

(assert (=> b!783945 m!726431))

(declare-fun m!726439 () Bool)

(assert (=> b!783945 m!726439))

(assert (=> b!783950 m!726419))

(assert (=> b!783950 m!726419))

(declare-fun m!726441 () Bool)

(assert (=> b!783950 m!726441))

(declare-fun m!726443 () Bool)

(assert (=> b!783948 m!726443))

(declare-fun m!726445 () Bool)

(assert (=> start!67694 m!726445))

(declare-fun m!726447 () Bool)

(assert (=> start!67694 m!726447))

(declare-fun m!726449 () Bool)

(assert (=> b!783938 m!726449))

(declare-fun m!726451 () Bool)

(assert (=> b!783938 m!726451))

(assert (=> b!783944 m!726419))

(assert (=> b!783944 m!726419))

(assert (=> b!783944 m!726421))

(declare-fun m!726453 () Bool)

(assert (=> b!783937 m!726453))

(declare-fun m!726455 () Bool)

(assert (=> b!783953 m!726455))

(assert (=> b!783951 m!726419))

(assert (=> b!783951 m!726419))

(declare-fun m!726457 () Bool)

(assert (=> b!783951 m!726457))

(declare-fun m!726459 () Bool)

(assert (=> b!783943 m!726459))

(assert (=> b!783946 m!726437))

(declare-fun m!726461 () Bool)

(assert (=> b!783946 m!726461))

(assert (=> b!783934 m!726419))

(assert (=> b!783934 m!726419))

(declare-fun m!726463 () Bool)

(assert (=> b!783934 m!726463))

(assert (=> b!783947 m!726419))

(assert (=> b!783947 m!726419))

(declare-fun m!726465 () Bool)

(assert (=> b!783947 m!726465))

(assert (=> b!783947 m!726465))

(assert (=> b!783947 m!726419))

(declare-fun m!726467 () Bool)

(assert (=> b!783947 m!726467))

(push 1)

(assert (not b!783934))

(assert (not b!783947))

(assert (not start!67694))

(assert (not b!783954))

(assert (not b!783943))

(assert (not b!783945))

(assert (not b!783937))

(assert (not b!783951))

(assert (not b!783949))

(assert (not b!783948))

