; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120346 () Bool)

(assert start!120346)

(declare-fun b!1399971 () Bool)

(declare-fun res!938599 () Bool)

(declare-fun e!792638 () Bool)

(assert (=> b!1399971 (=> (not res!938599) (not e!792638))))

(declare-datatypes ((array!95673 0))(
  ( (array!95674 (arr!46183 (Array (_ BitVec 32) (_ BitVec 64))) (size!46734 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95673)

(declare-datatypes ((List!32882 0))(
  ( (Nil!32879) (Cons!32878 (h!34126 (_ BitVec 64)) (t!47583 List!32882)) )
))
(declare-fun arrayNoDuplicates!0 (array!95673 (_ BitVec 32) List!32882) Bool)

(assert (=> b!1399971 (= res!938599 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32879))))

(declare-fun b!1399972 () Bool)

(declare-fun res!938595 () Bool)

(assert (=> b!1399972 (=> (not res!938595) (not e!792638))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95673 (_ BitVec 32)) Bool)

(assert (=> b!1399972 (= res!938595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1399973 () Bool)

(declare-fun e!792637 () Bool)

(declare-fun e!792639 () Bool)

(assert (=> b!1399973 (= e!792637 e!792639)))

(declare-fun res!938601 () Bool)

(assert (=> b!1399973 (=> res!938601 e!792639)))

(declare-datatypes ((SeekEntryResult!10522 0))(
  ( (MissingZero!10522 (index!44464 (_ BitVec 32))) (Found!10522 (index!44465 (_ BitVec 32))) (Intermediate!10522 (undefined!11334 Bool) (index!44466 (_ BitVec 32)) (x!126120 (_ BitVec 32))) (Undefined!10522) (MissingVacant!10522 (index!44467 (_ BitVec 32))) )
))
(declare-fun lt!615868 () SeekEntryResult!10522)

(declare-fun lt!615865 () SeekEntryResult!10522)

(assert (=> b!1399973 (= res!938601 (or (= lt!615868 lt!615865) (not (is-Intermediate!10522 lt!615865))))))

(declare-fun lt!615869 () (_ BitVec 64))

(declare-fun lt!615864 () array!95673)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95673 (_ BitVec 32)) SeekEntryResult!10522)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399973 (= lt!615865 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615869 mask!2840) lt!615869 lt!615864 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1399973 (= lt!615869 (select (store (arr!46183 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1399973 (= lt!615864 (array!95674 (store (arr!46183 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46734 a!2901)))))

(declare-fun b!1399974 () Bool)

(declare-fun res!938594 () Bool)

(assert (=> b!1399974 (=> (not res!938594) (not e!792638))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399974 (= res!938594 (validKeyInArray!0 (select (arr!46183 a!2901) i!1037)))))

(declare-fun b!1399975 () Bool)

(declare-fun e!792635 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95673 (_ BitVec 32)) SeekEntryResult!10522)

(assert (=> b!1399975 (= e!792635 (= (seekEntryOrOpen!0 (select (arr!46183 a!2901) j!112) a!2901 mask!2840) (Found!10522 j!112)))))

(declare-fun b!1399976 () Bool)

(declare-fun res!938591 () Bool)

(assert (=> b!1399976 (=> (not res!938591) (not e!792638))))

(assert (=> b!1399976 (= res!938591 (validKeyInArray!0 (select (arr!46183 a!2901) j!112)))))

(declare-fun b!1399977 () Bool)

(declare-fun e!792641 () Bool)

(assert (=> b!1399977 (= e!792641 true)))

(declare-fun lt!615866 () (_ BitVec 32))

(declare-fun lt!615871 () SeekEntryResult!10522)

(assert (=> b!1399977 (= lt!615871 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615866 lt!615869 lt!615864 mask!2840))))

(declare-fun res!938600 () Bool)

(assert (=> start!120346 (=> (not res!938600) (not e!792638))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120346 (= res!938600 (validMask!0 mask!2840))))

(assert (=> start!120346 e!792638))

(assert (=> start!120346 true))

(declare-fun array_inv!35128 (array!95673) Bool)

(assert (=> start!120346 (array_inv!35128 a!2901)))

(declare-fun e!792640 () Bool)

(declare-fun b!1399978 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95673 (_ BitVec 32)) SeekEntryResult!10522)

(assert (=> b!1399978 (= e!792640 (= (seekEntryOrOpen!0 lt!615869 lt!615864 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126120 lt!615865) (index!44466 lt!615865) (index!44466 lt!615865) (select (arr!46183 a!2901) j!112) lt!615864 mask!2840)))))

(declare-fun b!1399979 () Bool)

(assert (=> b!1399979 (= e!792639 e!792641)))

(declare-fun res!938596 () Bool)

(assert (=> b!1399979 (=> res!938596 e!792641)))

(assert (=> b!1399979 (= res!938596 (or (bvslt (x!126120 lt!615868) #b00000000000000000000000000000000) (bvsgt (x!126120 lt!615868) #b01111111111111111111111111111110) (bvslt (x!126120 lt!615865) #b00000000000000000000000000000000) (bvsgt (x!126120 lt!615865) #b01111111111111111111111111111110) (bvslt lt!615866 #b00000000000000000000000000000000) (bvsge lt!615866 (size!46734 a!2901)) (bvslt (index!44466 lt!615868) #b00000000000000000000000000000000) (bvsge (index!44466 lt!615868) (size!46734 a!2901)) (bvslt (index!44466 lt!615865) #b00000000000000000000000000000000) (bvsge (index!44466 lt!615865) (size!46734 a!2901)) (not (= lt!615868 (Intermediate!10522 false (index!44466 lt!615868) (x!126120 lt!615868)))) (not (= lt!615865 (Intermediate!10522 false (index!44466 lt!615865) (x!126120 lt!615865))))))))

(assert (=> b!1399979 e!792640))

(declare-fun res!938598 () Bool)

(assert (=> b!1399979 (=> (not res!938598) (not e!792640))))

(assert (=> b!1399979 (= res!938598 (and (not (undefined!11334 lt!615865)) (= (index!44466 lt!615865) i!1037) (bvslt (x!126120 lt!615865) (x!126120 lt!615868)) (= (select (store (arr!46183 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44466 lt!615865)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!46998 0))(
  ( (Unit!46999) )
))
(declare-fun lt!615867 () Unit!46998)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95673 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46998)

(assert (=> b!1399979 (= lt!615867 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615866 (x!126120 lt!615868) (index!44466 lt!615868) (x!126120 lt!615865) (index!44466 lt!615865) (undefined!11334 lt!615865) mask!2840))))

(declare-fun b!1399980 () Bool)

(assert (=> b!1399980 (= e!792638 (not e!792637))))

(declare-fun res!938592 () Bool)

(assert (=> b!1399980 (=> res!938592 e!792637)))

(assert (=> b!1399980 (= res!938592 (or (not (is-Intermediate!10522 lt!615868)) (undefined!11334 lt!615868)))))

(assert (=> b!1399980 e!792635))

(declare-fun res!938597 () Bool)

(assert (=> b!1399980 (=> (not res!938597) (not e!792635))))

(assert (=> b!1399980 (= res!938597 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!615870 () Unit!46998)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95673 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46998)

(assert (=> b!1399980 (= lt!615870 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1399980 (= lt!615868 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615866 (select (arr!46183 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1399980 (= lt!615866 (toIndex!0 (select (arr!46183 a!2901) j!112) mask!2840))))

(declare-fun b!1399981 () Bool)

(declare-fun res!938593 () Bool)

(assert (=> b!1399981 (=> (not res!938593) (not e!792638))))

(assert (=> b!1399981 (= res!938593 (and (= (size!46734 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46734 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46734 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120346 res!938600) b!1399981))

(assert (= (and b!1399981 res!938593) b!1399974))

(assert (= (and b!1399974 res!938594) b!1399976))

(assert (= (and b!1399976 res!938591) b!1399972))

(assert (= (and b!1399972 res!938595) b!1399971))

(assert (= (and b!1399971 res!938599) b!1399980))

(assert (= (and b!1399980 res!938597) b!1399975))

(assert (= (and b!1399980 (not res!938592)) b!1399973))

(assert (= (and b!1399973 (not res!938601)) b!1399979))

(assert (= (and b!1399979 res!938598) b!1399978))

(assert (= (and b!1399979 (not res!938596)) b!1399977))

(declare-fun m!1287353 () Bool)

(assert (=> b!1399972 m!1287353))

(declare-fun m!1287355 () Bool)

(assert (=> b!1399975 m!1287355))

(assert (=> b!1399975 m!1287355))

(declare-fun m!1287357 () Bool)

(assert (=> b!1399975 m!1287357))

(declare-fun m!1287359 () Bool)

(assert (=> start!120346 m!1287359))

(declare-fun m!1287361 () Bool)

(assert (=> start!120346 m!1287361))

(assert (=> b!1399976 m!1287355))

(assert (=> b!1399976 m!1287355))

(declare-fun m!1287363 () Bool)

(assert (=> b!1399976 m!1287363))

(declare-fun m!1287365 () Bool)

(assert (=> b!1399977 m!1287365))

(assert (=> b!1399980 m!1287355))

(declare-fun m!1287367 () Bool)

(assert (=> b!1399980 m!1287367))

(assert (=> b!1399980 m!1287355))

(declare-fun m!1287369 () Bool)

(assert (=> b!1399980 m!1287369))

(declare-fun m!1287371 () Bool)

(assert (=> b!1399980 m!1287371))

(assert (=> b!1399980 m!1287355))

(declare-fun m!1287373 () Bool)

(assert (=> b!1399980 m!1287373))

(declare-fun m!1287375 () Bool)

(assert (=> b!1399971 m!1287375))

(declare-fun m!1287377 () Bool)

(assert (=> b!1399978 m!1287377))

(assert (=> b!1399978 m!1287355))

(assert (=> b!1399978 m!1287355))

(declare-fun m!1287379 () Bool)

(assert (=> b!1399978 m!1287379))

(declare-fun m!1287381 () Bool)

(assert (=> b!1399973 m!1287381))

(assert (=> b!1399973 m!1287381))

(declare-fun m!1287383 () Bool)

(assert (=> b!1399973 m!1287383))

(declare-fun m!1287385 () Bool)

(assert (=> b!1399973 m!1287385))

(declare-fun m!1287387 () Bool)

(assert (=> b!1399973 m!1287387))

(assert (=> b!1399979 m!1287385))

(declare-fun m!1287389 () Bool)

(assert (=> b!1399979 m!1287389))

(declare-fun m!1287391 () Bool)

(assert (=> b!1399979 m!1287391))

(declare-fun m!1287393 () Bool)

(assert (=> b!1399974 m!1287393))

(assert (=> b!1399974 m!1287393))

(declare-fun m!1287395 () Bool)

(assert (=> b!1399974 m!1287395))

(push 1)

