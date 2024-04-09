; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65446 () Bool)

(assert start!65446)

(declare-fun b!744876 () Bool)

(declare-fun e!416084 () Bool)

(assert (=> b!744876 (= e!416084 true)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41572 0))(
  ( (array!41573 (arr!19896 (Array (_ BitVec 32) (_ BitVec 64))) (size!20317 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41572)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7503 0))(
  ( (MissingZero!7503 (index!32379 (_ BitVec 32))) (Found!7503 (index!32380 (_ BitVec 32))) (Intermediate!7503 (undefined!8315 Bool) (index!32381 (_ BitVec 32)) (x!63366 (_ BitVec 32))) (Undefined!7503) (MissingVacant!7503 (index!32382 (_ BitVec 32))) )
))
(declare-fun lt!330933 () SeekEntryResult!7503)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41572 (_ BitVec 32)) SeekEntryResult!7503)

(assert (=> b!744876 (= lt!330933 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19896 a!3186) j!159) a!3186 mask!3328))))

(declare-fun e!416086 () Bool)

(declare-fun b!744877 () Bool)

(assert (=> b!744877 (= e!416086 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19896 a!3186) j!159) a!3186 mask!3328) (Found!7503 j!159)))))

(declare-fun b!744878 () Bool)

(declare-fun res!501953 () Bool)

(declare-fun e!416089 () Bool)

(assert (=> b!744878 (=> (not res!501953) (not e!416089))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41572 (_ BitVec 32)) Bool)

(assert (=> b!744878 (= res!501953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!744879 () Bool)

(declare-fun res!501947 () Bool)

(declare-fun e!416091 () Bool)

(assert (=> b!744879 (=> (not res!501947) (not e!416091))))

(assert (=> b!744879 (= res!501947 e!416086)))

(declare-fun c!81849 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!744879 (= c!81849 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!744880 () Bool)

(declare-fun res!501954 () Bool)

(declare-fun e!416085 () Bool)

(assert (=> b!744880 (=> (not res!501954) (not e!416085))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!744880 (= res!501954 (validKeyInArray!0 (select (arr!19896 a!3186) j!159)))))

(declare-fun b!744881 () Bool)

(declare-fun res!501944 () Bool)

(assert (=> b!744881 (=> (not res!501944) (not e!416085))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!744881 (= res!501944 (and (= (size!20317 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20317 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20317 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!744882 () Bool)

(declare-fun res!501948 () Bool)

(assert (=> b!744882 (=> (not res!501948) (not e!416089))))

(assert (=> b!744882 (= res!501948 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20317 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20317 a!3186))))))

(declare-fun b!744883 () Bool)

(assert (=> b!744883 (= e!416089 e!416091)))

(declare-fun res!501940 () Bool)

(assert (=> b!744883 (=> (not res!501940) (not e!416091))))

(declare-fun lt!330932 () SeekEntryResult!7503)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41572 (_ BitVec 32)) SeekEntryResult!7503)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!744883 (= res!501940 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19896 a!3186) j!159) mask!3328) (select (arr!19896 a!3186) j!159) a!3186 mask!3328) lt!330932))))

(assert (=> b!744883 (= lt!330932 (Intermediate!7503 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!744884 () Bool)

(assert (=> b!744884 (= e!416086 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19896 a!3186) j!159) a!3186 mask!3328) lt!330932))))

(declare-fun b!744885 () Bool)

(declare-fun res!501945 () Bool)

(assert (=> b!744885 (=> (not res!501945) (not e!416085))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!744885 (= res!501945 (validKeyInArray!0 k!2102))))

(declare-fun b!744886 () Bool)

(declare-fun res!501951 () Bool)

(assert (=> b!744886 (=> (not res!501951) (not e!416085))))

(declare-fun arrayContainsKey!0 (array!41572 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!744886 (= res!501951 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!744887 () Bool)

(assert (=> b!744887 (= e!416085 e!416089)))

(declare-fun res!501952 () Bool)

(assert (=> b!744887 (=> (not res!501952) (not e!416089))))

(declare-fun lt!330930 () SeekEntryResult!7503)

(assert (=> b!744887 (= res!501952 (or (= lt!330930 (MissingZero!7503 i!1173)) (= lt!330930 (MissingVacant!7503 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41572 (_ BitVec 32)) SeekEntryResult!7503)

(assert (=> b!744887 (= lt!330930 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!744888 () Bool)

(declare-fun e!416088 () Bool)

(declare-fun e!416083 () Bool)

(assert (=> b!744888 (= e!416088 e!416083)))

(declare-fun res!501950 () Bool)

(assert (=> b!744888 (=> (not res!501950) (not e!416083))))

(declare-fun lt!330931 () SeekEntryResult!7503)

(assert (=> b!744888 (= res!501950 (= (seekEntryOrOpen!0 (select (arr!19896 a!3186) j!159) a!3186 mask!3328) lt!330931))))

(assert (=> b!744888 (= lt!330931 (Found!7503 j!159))))

(declare-fun res!501943 () Bool)

(assert (=> start!65446 (=> (not res!501943) (not e!416085))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65446 (= res!501943 (validMask!0 mask!3328))))

(assert (=> start!65446 e!416085))

(assert (=> start!65446 true))

(declare-fun array_inv!15670 (array!41572) Bool)

(assert (=> start!65446 (array_inv!15670 a!3186)))

(declare-fun b!744889 () Bool)

(declare-fun e!416087 () Bool)

(assert (=> b!744889 (= e!416091 e!416087)))

(declare-fun res!501942 () Bool)

(assert (=> b!744889 (=> (not res!501942) (not e!416087))))

(declare-fun lt!330938 () SeekEntryResult!7503)

(declare-fun lt!330934 () SeekEntryResult!7503)

(assert (=> b!744889 (= res!501942 (= lt!330938 lt!330934))))

(declare-fun lt!330936 () (_ BitVec 64))

(declare-fun lt!330937 () array!41572)

(assert (=> b!744889 (= lt!330934 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330936 lt!330937 mask!3328))))

(assert (=> b!744889 (= lt!330938 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330936 mask!3328) lt!330936 lt!330937 mask!3328))))

(assert (=> b!744889 (= lt!330936 (select (store (arr!19896 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!744889 (= lt!330937 (array!41573 (store (arr!19896 a!3186) i!1173 k!2102) (size!20317 a!3186)))))

(declare-fun b!744890 () Bool)

(assert (=> b!744890 (= e!416087 (not e!416084))))

(declare-fun res!501949 () Bool)

(assert (=> b!744890 (=> res!501949 e!416084)))

(assert (=> b!744890 (= res!501949 (or (not (is-Intermediate!7503 lt!330934)) (bvslt x!1131 (x!63366 lt!330934)) (not (= x!1131 (x!63366 lt!330934))) (not (= index!1321 (index!32381 lt!330934)))))))

(assert (=> b!744890 e!416088))

(declare-fun res!501939 () Bool)

(assert (=> b!744890 (=> (not res!501939) (not e!416088))))

(assert (=> b!744890 (= res!501939 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25486 0))(
  ( (Unit!25487) )
))
(declare-fun lt!330935 () Unit!25486)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41572 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25486)

(assert (=> b!744890 (= lt!330935 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!744891 () Bool)

(assert (=> b!744891 (= e!416083 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19896 a!3186) j!159) a!3186 mask!3328) lt!330931))))

(declare-fun b!744892 () Bool)

(declare-fun res!501946 () Bool)

(assert (=> b!744892 (=> (not res!501946) (not e!416089))))

(declare-datatypes ((List!13951 0))(
  ( (Nil!13948) (Cons!13947 (h!15019 (_ BitVec 64)) (t!20274 List!13951)) )
))
(declare-fun arrayNoDuplicates!0 (array!41572 (_ BitVec 32) List!13951) Bool)

(assert (=> b!744892 (= res!501946 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13948))))

(declare-fun b!744893 () Bool)

(declare-fun res!501941 () Bool)

(assert (=> b!744893 (=> (not res!501941) (not e!416091))))

(assert (=> b!744893 (= res!501941 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19896 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!65446 res!501943) b!744881))

(assert (= (and b!744881 res!501944) b!744880))

(assert (= (and b!744880 res!501954) b!744885))

(assert (= (and b!744885 res!501945) b!744886))

(assert (= (and b!744886 res!501951) b!744887))

(assert (= (and b!744887 res!501952) b!744878))

(assert (= (and b!744878 res!501953) b!744892))

(assert (= (and b!744892 res!501946) b!744882))

(assert (= (and b!744882 res!501948) b!744883))

(assert (= (and b!744883 res!501940) b!744893))

(assert (= (and b!744893 res!501941) b!744879))

(assert (= (and b!744879 c!81849) b!744884))

(assert (= (and b!744879 (not c!81849)) b!744877))

(assert (= (and b!744879 res!501947) b!744889))

(assert (= (and b!744889 res!501942) b!744890))

(assert (= (and b!744890 res!501939) b!744888))

(assert (= (and b!744888 res!501950) b!744891))

(assert (= (and b!744890 (not res!501949)) b!744876))

(declare-fun m!695419 () Bool)

(assert (=> b!744877 m!695419))

(assert (=> b!744877 m!695419))

(declare-fun m!695421 () Bool)

(assert (=> b!744877 m!695421))

(declare-fun m!695423 () Bool)

(assert (=> b!744878 m!695423))

(declare-fun m!695425 () Bool)

(assert (=> b!744890 m!695425))

(declare-fun m!695427 () Bool)

(assert (=> b!744890 m!695427))

(assert (=> b!744891 m!695419))

(assert (=> b!744891 m!695419))

(declare-fun m!695429 () Bool)

(assert (=> b!744891 m!695429))

(assert (=> b!744888 m!695419))

(assert (=> b!744888 m!695419))

(declare-fun m!695431 () Bool)

(assert (=> b!744888 m!695431))

(assert (=> b!744880 m!695419))

(assert (=> b!744880 m!695419))

(declare-fun m!695433 () Bool)

(assert (=> b!744880 m!695433))

(declare-fun m!695435 () Bool)

(assert (=> b!744893 m!695435))

(assert (=> b!744883 m!695419))

(assert (=> b!744883 m!695419))

(declare-fun m!695437 () Bool)

(assert (=> b!744883 m!695437))

(assert (=> b!744883 m!695437))

(assert (=> b!744883 m!695419))

(declare-fun m!695439 () Bool)

(assert (=> b!744883 m!695439))

(declare-fun m!695441 () Bool)

(assert (=> b!744887 m!695441))

(declare-fun m!695443 () Bool)

(assert (=> start!65446 m!695443))

(declare-fun m!695445 () Bool)

(assert (=> start!65446 m!695445))

(declare-fun m!695447 () Bool)

(assert (=> b!744885 m!695447))

(declare-fun m!695449 () Bool)

(assert (=> b!744886 m!695449))

(assert (=> b!744884 m!695419))

(assert (=> b!744884 m!695419))

(declare-fun m!695451 () Bool)

(assert (=> b!744884 m!695451))

(declare-fun m!695453 () Bool)

(assert (=> b!744889 m!695453))

(declare-fun m!695455 () Bool)

(assert (=> b!744889 m!695455))

(declare-fun m!695457 () Bool)

(assert (=> b!744889 m!695457))

(declare-fun m!695459 () Bool)

(assert (=> b!744889 m!695459))

(assert (=> b!744889 m!695453))

(declare-fun m!695461 () Bool)

(assert (=> b!744889 m!695461))

(declare-fun m!695463 () Bool)

(assert (=> b!744892 m!695463))

(assert (=> b!744876 m!695419))

(assert (=> b!744876 m!695419))

(assert (=> b!744876 m!695421))

(push 1)

