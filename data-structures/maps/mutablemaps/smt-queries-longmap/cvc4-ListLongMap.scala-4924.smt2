; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67808 () Bool)

(assert start!67808)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!437939 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!42803 0))(
  ( (array!42804 (arr!20486 (Array (_ BitVec 32) (_ BitVec 64))) (size!20907 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42803)

(declare-fun b!787865 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8093 0))(
  ( (MissingZero!8093 (index!34739 (_ BitVec 32))) (Found!8093 (index!34740 (_ BitVec 32))) (Intermediate!8093 (undefined!8905 Bool) (index!34741 (_ BitVec 32)) (x!65698 (_ BitVec 32))) (Undefined!8093) (MissingVacant!8093 (index!34742 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42803 (_ BitVec 32)) SeekEntryResult!8093)

(assert (=> b!787865 (= e!437939 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20486 a!3186) j!159) a!3186 mask!3328) (Found!8093 j!159)))))

(declare-fun b!787866 () Bool)

(declare-fun res!533819 () Bool)

(declare-fun e!437941 () Bool)

(assert (=> b!787866 (=> (not res!533819) (not e!437941))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!787866 (= res!533819 (and (= (size!20907 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20907 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20907 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!787867 () Bool)

(declare-fun res!533814 () Bool)

(declare-fun e!437950 () Bool)

(assert (=> b!787867 (=> (not res!533814) (not e!437950))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42803 (_ BitVec 32)) Bool)

(assert (=> b!787867 (= res!533814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!787868 () Bool)

(declare-fun res!533815 () Bool)

(assert (=> b!787868 (=> (not res!533815) (not e!437941))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42803 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!787868 (= res!533815 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!787869 () Bool)

(declare-fun res!533822 () Bool)

(assert (=> b!787869 (=> (not res!533822) (not e!437950))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!787869 (= res!533822 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20907 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20907 a!3186))))))

(declare-fun lt!351517 () SeekEntryResult!8093)

(declare-fun b!787870 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42803 (_ BitVec 32)) SeekEntryResult!8093)

(assert (=> b!787870 (= e!437939 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20486 a!3186) j!159) a!3186 mask!3328) lt!351517))))

(declare-fun res!533821 () Bool)

(assert (=> start!67808 (=> (not res!533821) (not e!437941))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67808 (= res!533821 (validMask!0 mask!3328))))

(assert (=> start!67808 e!437941))

(assert (=> start!67808 true))

(declare-fun array_inv!16260 (array!42803) Bool)

(assert (=> start!67808 (array_inv!16260 a!3186)))

(declare-fun b!787871 () Bool)

(declare-fun e!437943 () Bool)

(declare-fun lt!351512 () SeekEntryResult!8093)

(declare-fun lt!351516 () SeekEntryResult!8093)

(assert (=> b!787871 (= e!437943 (= lt!351512 lt!351516))))

(declare-fun b!787872 () Bool)

(declare-fun e!437947 () Bool)

(assert (=> b!787872 (= e!437950 e!437947)))

(declare-fun res!533824 () Bool)

(assert (=> b!787872 (=> (not res!533824) (not e!437947))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!787872 (= res!533824 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20486 a!3186) j!159) mask!3328) (select (arr!20486 a!3186) j!159) a!3186 mask!3328) lt!351517))))

(assert (=> b!787872 (= lt!351517 (Intermediate!8093 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!787873 () Bool)

(declare-fun res!533811 () Bool)

(assert (=> b!787873 (=> (not res!533811) (not e!437947))))

(assert (=> b!787873 (= res!533811 e!437939)))

(declare-fun c!87438 () Bool)

(assert (=> b!787873 (= c!87438 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!787874 () Bool)

(declare-fun e!437940 () Bool)

(declare-fun e!437942 () Bool)

(assert (=> b!787874 (= e!437940 (not e!437942))))

(declare-fun res!533806 () Bool)

(assert (=> b!787874 (=> res!533806 e!437942)))

(declare-fun lt!351510 () SeekEntryResult!8093)

(assert (=> b!787874 (= res!533806 (or (not (is-Intermediate!8093 lt!351510)) (bvslt x!1131 (x!65698 lt!351510)) (not (= x!1131 (x!65698 lt!351510))) (not (= index!1321 (index!34741 lt!351510)))))))

(declare-fun e!437946 () Bool)

(assert (=> b!787874 e!437946))

(declare-fun res!533817 () Bool)

(assert (=> b!787874 (=> (not res!533817) (not e!437946))))

(declare-fun lt!351507 () SeekEntryResult!8093)

(assert (=> b!787874 (= res!533817 (= lt!351512 lt!351507))))

(assert (=> b!787874 (= lt!351507 (Found!8093 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42803 (_ BitVec 32)) SeekEntryResult!8093)

(assert (=> b!787874 (= lt!351512 (seekEntryOrOpen!0 (select (arr!20486 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!787874 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!27282 0))(
  ( (Unit!27283) )
))
(declare-fun lt!351513 () Unit!27282)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42803 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27282)

(assert (=> b!787874 (= lt!351513 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!787875 () Bool)

(declare-fun e!437948 () Bool)

(assert (=> b!787875 (= e!437942 e!437948)))

(declare-fun res!533823 () Bool)

(assert (=> b!787875 (=> res!533823 e!437948)))

(assert (=> b!787875 (= res!533823 (not (= lt!351516 lt!351507)))))

(assert (=> b!787875 (= lt!351516 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20486 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!787876 () Bool)

(assert (=> b!787876 (= e!437941 e!437950)))

(declare-fun res!533812 () Bool)

(assert (=> b!787876 (=> (not res!533812) (not e!437950))))

(declare-fun lt!351511 () SeekEntryResult!8093)

(assert (=> b!787876 (= res!533812 (or (= lt!351511 (MissingZero!8093 i!1173)) (= lt!351511 (MissingVacant!8093 i!1173))))))

(assert (=> b!787876 (= lt!351511 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!787877 () Bool)

(declare-fun res!533810 () Bool)

(assert (=> b!787877 (=> (not res!533810) (not e!437943))))

(declare-fun lt!351514 () (_ BitVec 64))

(declare-fun lt!351515 () array!42803)

(assert (=> b!787877 (= res!533810 (= (seekEntryOrOpen!0 lt!351514 lt!351515 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351514 lt!351515 mask!3328)))))

(declare-fun b!787878 () Bool)

(declare-fun res!533809 () Bool)

(assert (=> b!787878 (=> (not res!533809) (not e!437941))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!787878 (= res!533809 (validKeyInArray!0 k!2102))))

(declare-fun b!787879 () Bool)

(declare-fun res!533820 () Bool)

(assert (=> b!787879 (=> (not res!533820) (not e!437947))))

(assert (=> b!787879 (= res!533820 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20486 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!787880 () Bool)

(declare-fun e!437945 () Unit!27282)

(declare-fun Unit!27284 () Unit!27282)

(assert (=> b!787880 (= e!437945 Unit!27284)))

(assert (=> b!787880 false))

(declare-fun b!787881 () Bool)

(declare-fun e!437949 () Bool)

(assert (=> b!787881 (= e!437949 true)))

(assert (=> b!787881 e!437943))

(declare-fun res!533818 () Bool)

(assert (=> b!787881 (=> (not res!533818) (not e!437943))))

(declare-fun lt!351508 () (_ BitVec 64))

(assert (=> b!787881 (= res!533818 (= lt!351508 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!351506 () Unit!27282)

(assert (=> b!787881 (= lt!351506 e!437945)))

(declare-fun c!87437 () Bool)

(assert (=> b!787881 (= c!87437 (= lt!351508 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!787882 () Bool)

(declare-fun res!533813 () Bool)

(assert (=> b!787882 (=> (not res!533813) (not e!437941))))

(assert (=> b!787882 (= res!533813 (validKeyInArray!0 (select (arr!20486 a!3186) j!159)))))

(declare-fun b!787883 () Bool)

(assert (=> b!787883 (= e!437947 e!437940)))

(declare-fun res!533816 () Bool)

(assert (=> b!787883 (=> (not res!533816) (not e!437940))))

(declare-fun lt!351509 () SeekEntryResult!8093)

(assert (=> b!787883 (= res!533816 (= lt!351509 lt!351510))))

(assert (=> b!787883 (= lt!351510 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351514 lt!351515 mask!3328))))

(assert (=> b!787883 (= lt!351509 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351514 mask!3328) lt!351514 lt!351515 mask!3328))))

(assert (=> b!787883 (= lt!351514 (select (store (arr!20486 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!787883 (= lt!351515 (array!42804 (store (arr!20486 a!3186) i!1173 k!2102) (size!20907 a!3186)))))

(declare-fun b!787884 () Bool)

(declare-fun Unit!27285 () Unit!27282)

(assert (=> b!787884 (= e!437945 Unit!27285)))

(declare-fun b!787885 () Bool)

(declare-fun res!533808 () Bool)

(assert (=> b!787885 (=> (not res!533808) (not e!437950))))

(declare-datatypes ((List!14541 0))(
  ( (Nil!14538) (Cons!14537 (h!15660 (_ BitVec 64)) (t!20864 List!14541)) )
))
(declare-fun arrayNoDuplicates!0 (array!42803 (_ BitVec 32) List!14541) Bool)

(assert (=> b!787885 (= res!533808 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14538))))

(declare-fun b!787886 () Bool)

(assert (=> b!787886 (= e!437948 e!437949)))

(declare-fun res!533807 () Bool)

(assert (=> b!787886 (=> res!533807 e!437949)))

(assert (=> b!787886 (= res!533807 (= lt!351508 lt!351514))))

(assert (=> b!787886 (= lt!351508 (select (store (arr!20486 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!787887 () Bool)

(assert (=> b!787887 (= e!437946 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20486 a!3186) j!159) a!3186 mask!3328) lt!351507))))

(assert (= (and start!67808 res!533821) b!787866))

(assert (= (and b!787866 res!533819) b!787882))

(assert (= (and b!787882 res!533813) b!787878))

(assert (= (and b!787878 res!533809) b!787868))

(assert (= (and b!787868 res!533815) b!787876))

(assert (= (and b!787876 res!533812) b!787867))

(assert (= (and b!787867 res!533814) b!787885))

(assert (= (and b!787885 res!533808) b!787869))

(assert (= (and b!787869 res!533822) b!787872))

(assert (= (and b!787872 res!533824) b!787879))

(assert (= (and b!787879 res!533820) b!787873))

(assert (= (and b!787873 c!87438) b!787870))

(assert (= (and b!787873 (not c!87438)) b!787865))

(assert (= (and b!787873 res!533811) b!787883))

(assert (= (and b!787883 res!533816) b!787874))

(assert (= (and b!787874 res!533817) b!787887))

(assert (= (and b!787874 (not res!533806)) b!787875))

(assert (= (and b!787875 (not res!533823)) b!787886))

(assert (= (and b!787886 (not res!533807)) b!787881))

(assert (= (and b!787881 c!87437) b!787880))

(assert (= (and b!787881 (not c!87437)) b!787884))

(assert (= (and b!787881 res!533818) b!787877))

(assert (= (and b!787877 res!533810) b!787871))

(declare-fun m!729381 () Bool)

(assert (=> start!67808 m!729381))

(declare-fun m!729383 () Bool)

(assert (=> start!67808 m!729383))

(declare-fun m!729385 () Bool)

(assert (=> b!787877 m!729385))

(declare-fun m!729387 () Bool)

(assert (=> b!787877 m!729387))

(declare-fun m!729389 () Bool)

(assert (=> b!787875 m!729389))

(assert (=> b!787875 m!729389))

(declare-fun m!729391 () Bool)

(assert (=> b!787875 m!729391))

(assert (=> b!787874 m!729389))

(assert (=> b!787874 m!729389))

(declare-fun m!729393 () Bool)

(assert (=> b!787874 m!729393))

(declare-fun m!729395 () Bool)

(assert (=> b!787874 m!729395))

(declare-fun m!729397 () Bool)

(assert (=> b!787874 m!729397))

(declare-fun m!729399 () Bool)

(assert (=> b!787878 m!729399))

(declare-fun m!729401 () Bool)

(assert (=> b!787868 m!729401))

(assert (=> b!787887 m!729389))

(assert (=> b!787887 m!729389))

(declare-fun m!729403 () Bool)

(assert (=> b!787887 m!729403))

(assert (=> b!787882 m!729389))

(assert (=> b!787882 m!729389))

(declare-fun m!729405 () Bool)

(assert (=> b!787882 m!729405))

(declare-fun m!729407 () Bool)

(assert (=> b!787885 m!729407))

(declare-fun m!729409 () Bool)

(assert (=> b!787876 m!729409))

(declare-fun m!729411 () Bool)

(assert (=> b!787883 m!729411))

(declare-fun m!729413 () Bool)

(assert (=> b!787883 m!729413))

(declare-fun m!729415 () Bool)

(assert (=> b!787883 m!729415))

(declare-fun m!729417 () Bool)

(assert (=> b!787883 m!729417))

(declare-fun m!729419 () Bool)

(assert (=> b!787883 m!729419))

(assert (=> b!787883 m!729417))

(assert (=> b!787872 m!729389))

(assert (=> b!787872 m!729389))

(declare-fun m!729421 () Bool)

(assert (=> b!787872 m!729421))

(assert (=> b!787872 m!729421))

(assert (=> b!787872 m!729389))

(declare-fun m!729423 () Bool)

(assert (=> b!787872 m!729423))

(declare-fun m!729425 () Bool)

(assert (=> b!787867 m!729425))

(assert (=> b!787865 m!729389))

(assert (=> b!787865 m!729389))

(assert (=> b!787865 m!729391))

(declare-fun m!729427 () Bool)

(assert (=> b!787879 m!729427))

(assert (=> b!787870 m!729389))

(assert (=> b!787870 m!729389))

(declare-fun m!729429 () Bool)

(assert (=> b!787870 m!729429))

(assert (=> b!787886 m!729413))

(declare-fun m!729431 () Bool)

(assert (=> b!787886 m!729431))

(push 1)

