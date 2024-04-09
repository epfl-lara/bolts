; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65506 () Bool)

(assert start!65506)

(declare-fun res!503393 () Bool)

(declare-fun e!416899 () Bool)

(assert (=> start!65506 (=> (not res!503393) (not e!416899))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65506 (= res!503393 (validMask!0 mask!3328))))

(assert (=> start!65506 e!416899))

(assert (=> start!65506 true))

(declare-datatypes ((array!41632 0))(
  ( (array!41633 (arr!19926 (Array (_ BitVec 32) (_ BitVec 64))) (size!20347 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41632)

(declare-fun array_inv!15700 (array!41632) Bool)

(assert (=> start!65506 (array_inv!15700 a!3186)))

(declare-fun b!746505 () Bool)

(declare-fun e!416897 () Bool)

(assert (=> b!746505 (= e!416897 true)))

(declare-datatypes ((SeekEntryResult!7533 0))(
  ( (MissingZero!7533 (index!32499 (_ BitVec 32))) (Found!7533 (index!32500 (_ BitVec 32))) (Intermediate!7533 (undefined!8345 Bool) (index!32501 (_ BitVec 32)) (x!63476 (_ BitVec 32))) (Undefined!7533) (MissingVacant!7533 (index!32502 (_ BitVec 32))) )
))
(declare-fun lt!331796 () SeekEntryResult!7533)

(declare-fun lt!331789 () SeekEntryResult!7533)

(assert (=> b!746505 (= lt!331796 lt!331789)))

(declare-fun b!746506 () Bool)

(declare-fun res!503402 () Bool)

(declare-fun e!416898 () Bool)

(assert (=> b!746506 (=> (not res!503402) (not e!416898))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!746506 (= res!503402 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20347 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20347 a!3186))))))

(declare-fun b!746507 () Bool)

(declare-fun res!503396 () Bool)

(assert (=> b!746507 (=> (not res!503396) (not e!416898))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41632 (_ BitVec 32)) Bool)

(assert (=> b!746507 (= res!503396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!746508 () Bool)

(declare-fun res!503400 () Bool)

(assert (=> b!746508 (=> (not res!503400) (not e!416899))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!746508 (= res!503400 (validKeyInArray!0 k!2102))))

(declare-fun b!746509 () Bool)

(assert (=> b!746509 (= e!416899 e!416898)))

(declare-fun res!503394 () Bool)

(assert (=> b!746509 (=> (not res!503394) (not e!416898))))

(declare-fun lt!331791 () SeekEntryResult!7533)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!746509 (= res!503394 (or (= lt!331791 (MissingZero!7533 i!1173)) (= lt!331791 (MissingVacant!7533 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41632 (_ BitVec 32)) SeekEntryResult!7533)

(assert (=> b!746509 (= lt!331791 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun lt!331790 () SeekEntryResult!7533)

(declare-fun b!746510 () Bool)

(declare-fun e!416901 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41632 (_ BitVec 32)) SeekEntryResult!7533)

(assert (=> b!746510 (= e!416901 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19926 a!3186) j!159) a!3186 mask!3328) lt!331790))))

(declare-fun b!746511 () Bool)

(declare-fun e!416896 () Bool)

(declare-fun e!416894 () Bool)

(assert (=> b!746511 (= e!416896 e!416894)))

(declare-fun res!503395 () Bool)

(assert (=> b!746511 (=> (not res!503395) (not e!416894))))

(declare-fun lt!331787 () SeekEntryResult!7533)

(declare-fun lt!331788 () SeekEntryResult!7533)

(assert (=> b!746511 (= res!503395 (= lt!331787 lt!331788))))

(declare-fun lt!331795 () (_ BitVec 64))

(declare-fun lt!331794 () array!41632)

(assert (=> b!746511 (= lt!331788 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331795 lt!331794 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!746511 (= lt!331787 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331795 mask!3328) lt!331795 lt!331794 mask!3328))))

(assert (=> b!746511 (= lt!331795 (select (store (arr!19926 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!746511 (= lt!331794 (array!41633 (store (arr!19926 a!3186) i!1173 k!2102) (size!20347 a!3186)))))

(declare-fun b!746512 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41632 (_ BitVec 32)) SeekEntryResult!7533)

(assert (=> b!746512 (= e!416901 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19926 a!3186) j!159) a!3186 mask!3328) (Found!7533 j!159)))))

(declare-fun b!746513 () Bool)

(declare-fun lt!331793 () SeekEntryResult!7533)

(declare-fun e!416893 () Bool)

(assert (=> b!746513 (= e!416893 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19926 a!3186) j!159) a!3186 mask!3328) lt!331793))))

(declare-fun b!746514 () Bool)

(declare-fun e!416900 () Bool)

(assert (=> b!746514 (= e!416894 (not e!416900))))

(declare-fun res!503392 () Bool)

(assert (=> b!746514 (=> res!503392 e!416900)))

(assert (=> b!746514 (= res!503392 (or (not (is-Intermediate!7533 lt!331788)) (bvslt x!1131 (x!63476 lt!331788)) (not (= x!1131 (x!63476 lt!331788))) (not (= index!1321 (index!32501 lt!331788)))))))

(assert (=> b!746514 e!416893))

(declare-fun res!503397 () Bool)

(assert (=> b!746514 (=> (not res!503397) (not e!416893))))

(assert (=> b!746514 (= res!503397 (= lt!331796 lt!331793))))

(assert (=> b!746514 (= lt!331793 (Found!7533 j!159))))

(assert (=> b!746514 (= lt!331796 (seekEntryOrOpen!0 (select (arr!19926 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!746514 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25546 0))(
  ( (Unit!25547) )
))
(declare-fun lt!331792 () Unit!25546)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41632 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25546)

(assert (=> b!746514 (= lt!331792 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!746515 () Bool)

(assert (=> b!746515 (= e!416900 e!416897)))

(declare-fun res!503388 () Bool)

(assert (=> b!746515 (=> res!503388 e!416897)))

(assert (=> b!746515 (= res!503388 (or (not (= lt!331789 lt!331793)) (= (select (store (arr!19926 a!3186) i!1173 k!2102) index!1321) lt!331795) (not (= (select (store (arr!19926 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!746515 (= lt!331789 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19926 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!746516 () Bool)

(assert (=> b!746516 (= e!416898 e!416896)))

(declare-fun res!503399 () Bool)

(assert (=> b!746516 (=> (not res!503399) (not e!416896))))

(assert (=> b!746516 (= res!503399 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19926 a!3186) j!159) mask!3328) (select (arr!19926 a!3186) j!159) a!3186 mask!3328) lt!331790))))

(assert (=> b!746516 (= lt!331790 (Intermediate!7533 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!746517 () Bool)

(declare-fun res!503398 () Bool)

(assert (=> b!746517 (=> (not res!503398) (not e!416899))))

(assert (=> b!746517 (= res!503398 (and (= (size!20347 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20347 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20347 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!746518 () Bool)

(declare-fun res!503401 () Bool)

(assert (=> b!746518 (=> (not res!503401) (not e!416896))))

(assert (=> b!746518 (= res!503401 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19926 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!746519 () Bool)

(declare-fun res!503390 () Bool)

(assert (=> b!746519 (=> (not res!503390) (not e!416899))))

(declare-fun arrayContainsKey!0 (array!41632 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!746519 (= res!503390 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!746520 () Bool)

(declare-fun res!503389 () Bool)

(assert (=> b!746520 (=> (not res!503389) (not e!416899))))

(assert (=> b!746520 (= res!503389 (validKeyInArray!0 (select (arr!19926 a!3186) j!159)))))

(declare-fun b!746521 () Bool)

(declare-fun res!503391 () Bool)

(assert (=> b!746521 (=> (not res!503391) (not e!416896))))

(assert (=> b!746521 (= res!503391 e!416901)))

(declare-fun c!81939 () Bool)

(assert (=> b!746521 (= c!81939 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!746522 () Bool)

(declare-fun res!503403 () Bool)

(assert (=> b!746522 (=> (not res!503403) (not e!416898))))

(declare-datatypes ((List!13981 0))(
  ( (Nil!13978) (Cons!13977 (h!15049 (_ BitVec 64)) (t!20304 List!13981)) )
))
(declare-fun arrayNoDuplicates!0 (array!41632 (_ BitVec 32) List!13981) Bool)

(assert (=> b!746522 (= res!503403 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13978))))

(assert (= (and start!65506 res!503393) b!746517))

(assert (= (and b!746517 res!503398) b!746520))

(assert (= (and b!746520 res!503389) b!746508))

(assert (= (and b!746508 res!503400) b!746519))

(assert (= (and b!746519 res!503390) b!746509))

(assert (= (and b!746509 res!503394) b!746507))

(assert (= (and b!746507 res!503396) b!746522))

(assert (= (and b!746522 res!503403) b!746506))

(assert (= (and b!746506 res!503402) b!746516))

(assert (= (and b!746516 res!503399) b!746518))

(assert (= (and b!746518 res!503401) b!746521))

(assert (= (and b!746521 c!81939) b!746510))

(assert (= (and b!746521 (not c!81939)) b!746512))

(assert (= (and b!746521 res!503391) b!746511))

(assert (= (and b!746511 res!503395) b!746514))

(assert (= (and b!746514 res!503397) b!746513))

(assert (= (and b!746514 (not res!503392)) b!746515))

(assert (= (and b!746515 (not res!503388)) b!746505))

(declare-fun m!696841 () Bool)

(assert (=> b!746516 m!696841))

(assert (=> b!746516 m!696841))

(declare-fun m!696843 () Bool)

(assert (=> b!746516 m!696843))

(assert (=> b!746516 m!696843))

(assert (=> b!746516 m!696841))

(declare-fun m!696845 () Bool)

(assert (=> b!746516 m!696845))

(declare-fun m!696847 () Bool)

(assert (=> b!746522 m!696847))

(declare-fun m!696849 () Bool)

(assert (=> b!746515 m!696849))

(declare-fun m!696851 () Bool)

(assert (=> b!746515 m!696851))

(assert (=> b!746515 m!696841))

(assert (=> b!746515 m!696841))

(declare-fun m!696853 () Bool)

(assert (=> b!746515 m!696853))

(assert (=> b!746514 m!696841))

(assert (=> b!746514 m!696841))

(declare-fun m!696855 () Bool)

(assert (=> b!746514 m!696855))

(declare-fun m!696857 () Bool)

(assert (=> b!746514 m!696857))

(declare-fun m!696859 () Bool)

(assert (=> b!746514 m!696859))

(assert (=> b!746510 m!696841))

(assert (=> b!746510 m!696841))

(declare-fun m!696861 () Bool)

(assert (=> b!746510 m!696861))

(declare-fun m!696863 () Bool)

(assert (=> b!746519 m!696863))

(assert (=> b!746512 m!696841))

(assert (=> b!746512 m!696841))

(assert (=> b!746512 m!696853))

(declare-fun m!696865 () Bool)

(assert (=> b!746509 m!696865))

(declare-fun m!696867 () Bool)

(assert (=> b!746507 m!696867))

(declare-fun m!696869 () Bool)

(assert (=> b!746508 m!696869))

(declare-fun m!696871 () Bool)

(assert (=> b!746518 m!696871))

(assert (=> b!746513 m!696841))

(assert (=> b!746513 m!696841))

(declare-fun m!696873 () Bool)

(assert (=> b!746513 m!696873))

(declare-fun m!696875 () Bool)

(assert (=> start!65506 m!696875))

(declare-fun m!696877 () Bool)

(assert (=> start!65506 m!696877))

(assert (=> b!746520 m!696841))

(assert (=> b!746520 m!696841))

(declare-fun m!696879 () Bool)

(assert (=> b!746520 m!696879))

(assert (=> b!746511 m!696849))

(declare-fun m!696881 () Bool)

(assert (=> b!746511 m!696881))

(declare-fun m!696883 () Bool)

(assert (=> b!746511 m!696883))

(declare-fun m!696885 () Bool)

(assert (=> b!746511 m!696885))

(declare-fun m!696887 () Bool)

(assert (=> b!746511 m!696887))

(assert (=> b!746511 m!696883))

(push 1)

