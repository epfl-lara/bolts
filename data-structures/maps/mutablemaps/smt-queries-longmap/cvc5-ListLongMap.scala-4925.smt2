; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67810 () Bool)

(assert start!67810)

(declare-fun b!787934 () Bool)

(declare-datatypes ((Unit!27286 0))(
  ( (Unit!27287) )
))
(declare-fun e!437984 () Unit!27286)

(declare-fun Unit!27288 () Unit!27286)

(assert (=> b!787934 (= e!437984 Unit!27288)))

(declare-datatypes ((SeekEntryResult!8094 0))(
  ( (MissingZero!8094 (index!34743 (_ BitVec 32))) (Found!8094 (index!34744 (_ BitVec 32))) (Intermediate!8094 (undefined!8906 Bool) (index!34745 (_ BitVec 32)) (x!65707 (_ BitVec 32))) (Undefined!8094) (MissingVacant!8094 (index!34746 (_ BitVec 32))) )
))
(declare-fun lt!351552 () SeekEntryResult!8094)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42805 0))(
  ( (array!42806 (arr!20487 (Array (_ BitVec 32) (_ BitVec 64))) (size!20908 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42805)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!787935 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!437979 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42805 (_ BitVec 32)) SeekEntryResult!8094)

(assert (=> b!787935 (= e!437979 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20487 a!3186) j!159) a!3186 mask!3328) lt!351552))))

(declare-fun b!787936 () Bool)

(declare-fun res!533863 () Bool)

(declare-fun e!437983 () Bool)

(assert (=> b!787936 (=> (not res!533863) (not e!437983))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!787936 (= res!533863 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20487 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!787937 () Bool)

(declare-fun res!533874 () Bool)

(declare-fun e!437982 () Bool)

(assert (=> b!787937 (=> (not res!533874) (not e!437982))))

(declare-datatypes ((List!14542 0))(
  ( (Nil!14539) (Cons!14538 (h!15661 (_ BitVec 64)) (t!20865 List!14542)) )
))
(declare-fun arrayNoDuplicates!0 (array!42805 (_ BitVec 32) List!14542) Bool)

(assert (=> b!787937 (= res!533874 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14539))))

(declare-fun b!787938 () Bool)

(declare-fun e!437985 () Bool)

(declare-fun e!437980 () Bool)

(assert (=> b!787938 (= e!437985 e!437980)))

(declare-fun res!533872 () Bool)

(assert (=> b!787938 (=> res!533872 e!437980)))

(declare-fun lt!351546 () (_ BitVec 64))

(declare-fun lt!351545 () (_ BitVec 64))

(assert (=> b!787938 (= res!533872 (= lt!351546 lt!351545))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!787938 (= lt!351546 (select (store (arr!20487 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!787939 () Bool)

(declare-fun res!533866 () Bool)

(declare-fun e!437978 () Bool)

(assert (=> b!787939 (=> (not res!533866) (not e!437978))))

(declare-fun arrayContainsKey!0 (array!42805 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!787939 (= res!533866 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!787940 () Bool)

(assert (=> b!787940 (= e!437980 (= (select (arr!20487 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!437986 () Bool)

(assert (=> b!787940 e!437986))

(declare-fun res!533867 () Bool)

(assert (=> b!787940 (=> (not res!533867) (not e!437986))))

(assert (=> b!787940 (= res!533867 (= lt!351546 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!351547 () Unit!27286)

(assert (=> b!787940 (= lt!351547 e!437984)))

(declare-fun c!87444 () Bool)

(assert (=> b!787940 (= c!87444 (= lt!351546 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!533881 () Bool)

(assert (=> start!67810 (=> (not res!533881) (not e!437978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67810 (= res!533881 (validMask!0 mask!3328))))

(assert (=> start!67810 e!437978))

(assert (=> start!67810 true))

(declare-fun array_inv!16261 (array!42805) Bool)

(assert (=> start!67810 (array_inv!16261 a!3186)))

(declare-fun b!787941 () Bool)

(declare-fun res!533865 () Bool)

(assert (=> b!787941 (=> (not res!533865) (not e!437982))))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!787941 (= res!533865 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20908 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20908 a!3186))))))

(declare-fun b!787942 () Bool)

(declare-fun e!437977 () Bool)

(assert (=> b!787942 (= e!437977 e!437985)))

(declare-fun res!533871 () Bool)

(assert (=> b!787942 (=> res!533871 e!437985)))

(declare-fun lt!351551 () SeekEntryResult!8094)

(assert (=> b!787942 (= res!533871 (not (= lt!351551 lt!351552)))))

(assert (=> b!787942 (= lt!351551 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20487 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!787943 () Bool)

(assert (=> b!787943 (= e!437982 e!437983)))

(declare-fun res!533877 () Bool)

(assert (=> b!787943 (=> (not res!533877) (not e!437983))))

(declare-fun lt!351544 () SeekEntryResult!8094)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42805 (_ BitVec 32)) SeekEntryResult!8094)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!787943 (= res!533877 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20487 a!3186) j!159) mask!3328) (select (arr!20487 a!3186) j!159) a!3186 mask!3328) lt!351544))))

(assert (=> b!787943 (= lt!351544 (Intermediate!8094 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!787944 () Bool)

(declare-fun e!437976 () Bool)

(assert (=> b!787944 (= e!437976 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20487 a!3186) j!159) a!3186 mask!3328) lt!351544))))

(declare-fun b!787945 () Bool)

(assert (=> b!787945 (= e!437976 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20487 a!3186) j!159) a!3186 mask!3328) (Found!8094 j!159)))))

(declare-fun b!787946 () Bool)

(declare-fun res!533875 () Bool)

(assert (=> b!787946 (=> (not res!533875) (not e!437978))))

(assert (=> b!787946 (= res!533875 (and (= (size!20908 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20908 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20908 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!787947 () Bool)

(declare-fun e!437975 () Bool)

(assert (=> b!787947 (= e!437983 e!437975)))

(declare-fun res!533870 () Bool)

(assert (=> b!787947 (=> (not res!533870) (not e!437975))))

(declare-fun lt!351548 () SeekEntryResult!8094)

(declare-fun lt!351549 () SeekEntryResult!8094)

(assert (=> b!787947 (= res!533870 (= lt!351548 lt!351549))))

(declare-fun lt!351550 () array!42805)

(assert (=> b!787947 (= lt!351549 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351545 lt!351550 mask!3328))))

(assert (=> b!787947 (= lt!351548 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351545 mask!3328) lt!351545 lt!351550 mask!3328))))

(assert (=> b!787947 (= lt!351545 (select (store (arr!20487 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!787947 (= lt!351550 (array!42806 (store (arr!20487 a!3186) i!1173 k!2102) (size!20908 a!3186)))))

(declare-fun b!787948 () Bool)

(declare-fun Unit!27289 () Unit!27286)

(assert (=> b!787948 (= e!437984 Unit!27289)))

(assert (=> b!787948 false))

(declare-fun b!787949 () Bool)

(assert (=> b!787949 (= e!437978 e!437982)))

(declare-fun res!533868 () Bool)

(assert (=> b!787949 (=> (not res!533868) (not e!437982))))

(declare-fun lt!351553 () SeekEntryResult!8094)

(assert (=> b!787949 (= res!533868 (or (= lt!351553 (MissingZero!8094 i!1173)) (= lt!351553 (MissingVacant!8094 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42805 (_ BitVec 32)) SeekEntryResult!8094)

(assert (=> b!787949 (= lt!351553 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!787950 () Bool)

(declare-fun res!533879 () Bool)

(assert (=> b!787950 (=> (not res!533879) (not e!437978))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!787950 (= res!533879 (validKeyInArray!0 (select (arr!20487 a!3186) j!159)))))

(declare-fun b!787951 () Bool)

(assert (=> b!787951 (= e!437975 (not e!437977))))

(declare-fun res!533880 () Bool)

(assert (=> b!787951 (=> res!533880 e!437977)))

(assert (=> b!787951 (= res!533880 (or (not (is-Intermediate!8094 lt!351549)) (bvslt x!1131 (x!65707 lt!351549)) (not (= x!1131 (x!65707 lt!351549))) (not (= index!1321 (index!34745 lt!351549)))))))

(assert (=> b!787951 e!437979))

(declare-fun res!533876 () Bool)

(assert (=> b!787951 (=> (not res!533876) (not e!437979))))

(declare-fun lt!351543 () SeekEntryResult!8094)

(assert (=> b!787951 (= res!533876 (= lt!351543 lt!351552))))

(assert (=> b!787951 (= lt!351552 (Found!8094 j!159))))

(assert (=> b!787951 (= lt!351543 (seekEntryOrOpen!0 (select (arr!20487 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42805 (_ BitVec 32)) Bool)

(assert (=> b!787951 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!351542 () Unit!27286)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42805 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27286)

(assert (=> b!787951 (= lt!351542 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!787952 () Bool)

(declare-fun res!533878 () Bool)

(assert (=> b!787952 (=> (not res!533878) (not e!437986))))

(assert (=> b!787952 (= res!533878 (= (seekEntryOrOpen!0 lt!351545 lt!351550 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351545 lt!351550 mask!3328)))))

(declare-fun b!787953 () Bool)

(assert (=> b!787953 (= e!437986 (= lt!351543 lt!351551))))

(declare-fun b!787954 () Bool)

(declare-fun res!533864 () Bool)

(assert (=> b!787954 (=> (not res!533864) (not e!437983))))

(assert (=> b!787954 (= res!533864 e!437976)))

(declare-fun c!87443 () Bool)

(assert (=> b!787954 (= c!87443 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!787955 () Bool)

(declare-fun res!533869 () Bool)

(assert (=> b!787955 (=> (not res!533869) (not e!437982))))

(assert (=> b!787955 (= res!533869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!787956 () Bool)

(declare-fun res!533873 () Bool)

(assert (=> b!787956 (=> (not res!533873) (not e!437978))))

(assert (=> b!787956 (= res!533873 (validKeyInArray!0 k!2102))))

(assert (= (and start!67810 res!533881) b!787946))

(assert (= (and b!787946 res!533875) b!787950))

(assert (= (and b!787950 res!533879) b!787956))

(assert (= (and b!787956 res!533873) b!787939))

(assert (= (and b!787939 res!533866) b!787949))

(assert (= (and b!787949 res!533868) b!787955))

(assert (= (and b!787955 res!533869) b!787937))

(assert (= (and b!787937 res!533874) b!787941))

(assert (= (and b!787941 res!533865) b!787943))

(assert (= (and b!787943 res!533877) b!787936))

(assert (= (and b!787936 res!533863) b!787954))

(assert (= (and b!787954 c!87443) b!787944))

(assert (= (and b!787954 (not c!87443)) b!787945))

(assert (= (and b!787954 res!533864) b!787947))

(assert (= (and b!787947 res!533870) b!787951))

(assert (= (and b!787951 res!533876) b!787935))

(assert (= (and b!787951 (not res!533880)) b!787942))

(assert (= (and b!787942 (not res!533871)) b!787938))

(assert (= (and b!787938 (not res!533872)) b!787940))

(assert (= (and b!787940 c!87444) b!787948))

(assert (= (and b!787940 (not c!87444)) b!787934))

(assert (= (and b!787940 res!533867) b!787952))

(assert (= (and b!787952 res!533878) b!787953))

(declare-fun m!729433 () Bool)

(assert (=> b!787950 m!729433))

(assert (=> b!787950 m!729433))

(declare-fun m!729435 () Bool)

(assert (=> b!787950 m!729435))

(assert (=> b!787942 m!729433))

(assert (=> b!787942 m!729433))

(declare-fun m!729437 () Bool)

(assert (=> b!787942 m!729437))

(declare-fun m!729439 () Bool)

(assert (=> b!787937 m!729439))

(declare-fun m!729441 () Bool)

(assert (=> b!787952 m!729441))

(declare-fun m!729443 () Bool)

(assert (=> b!787952 m!729443))

(assert (=> b!787935 m!729433))

(assert (=> b!787935 m!729433))

(declare-fun m!729445 () Bool)

(assert (=> b!787935 m!729445))

(declare-fun m!729447 () Bool)

(assert (=> start!67810 m!729447))

(declare-fun m!729449 () Bool)

(assert (=> start!67810 m!729449))

(declare-fun m!729451 () Bool)

(assert (=> b!787936 m!729451))

(declare-fun m!729453 () Bool)

(assert (=> b!787938 m!729453))

(declare-fun m!729455 () Bool)

(assert (=> b!787938 m!729455))

(assert (=> b!787951 m!729433))

(assert (=> b!787951 m!729433))

(declare-fun m!729457 () Bool)

(assert (=> b!787951 m!729457))

(declare-fun m!729459 () Bool)

(assert (=> b!787951 m!729459))

(declare-fun m!729461 () Bool)

(assert (=> b!787951 m!729461))

(declare-fun m!729463 () Bool)

(assert (=> b!787955 m!729463))

(declare-fun m!729465 () Bool)

(assert (=> b!787949 m!729465))

(assert (=> b!787944 m!729433))

(assert (=> b!787944 m!729433))

(declare-fun m!729467 () Bool)

(assert (=> b!787944 m!729467))

(assert (=> b!787943 m!729433))

(assert (=> b!787943 m!729433))

(declare-fun m!729469 () Bool)

(assert (=> b!787943 m!729469))

(assert (=> b!787943 m!729469))

(assert (=> b!787943 m!729433))

(declare-fun m!729471 () Bool)

(assert (=> b!787943 m!729471))

(declare-fun m!729473 () Bool)

(assert (=> b!787940 m!729473))

(declare-fun m!729475 () Bool)

(assert (=> b!787956 m!729475))

(declare-fun m!729477 () Bool)

(assert (=> b!787939 m!729477))

(declare-fun m!729479 () Bool)

(assert (=> b!787947 m!729479))

(declare-fun m!729481 () Bool)

(assert (=> b!787947 m!729481))

(assert (=> b!787947 m!729453))

(assert (=> b!787947 m!729481))

(declare-fun m!729483 () Bool)

(assert (=> b!787947 m!729483))

(declare-fun m!729485 () Bool)

(assert (=> b!787947 m!729485))

(assert (=> b!787945 m!729433))

(assert (=> b!787945 m!729433))

(assert (=> b!787945 m!729437))

(push 1)

