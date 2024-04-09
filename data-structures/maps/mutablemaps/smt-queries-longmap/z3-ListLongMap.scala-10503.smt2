; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123756 () Bool)

(assert start!123756)

(declare-fun b!1433901 () Bool)

(declare-fun res!967472 () Bool)

(declare-fun e!809362 () Bool)

(assert (=> b!1433901 (=> (not res!967472) (not e!809362))))

(declare-datatypes ((array!97532 0))(
  ( (array!97533 (arr!47066 (Array (_ BitVec 32) (_ BitVec 64))) (size!47617 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97532)

(declare-datatypes ((List!33756 0))(
  ( (Nil!33753) (Cons!33752 (h!35081 (_ BitVec 64)) (t!48457 List!33756)) )
))
(declare-fun arrayNoDuplicates!0 (array!97532 (_ BitVec 32) List!33756) Bool)

(assert (=> b!1433901 (= res!967472 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33753))))

(declare-fun b!1433902 () Bool)

(declare-fun res!967478 () Bool)

(assert (=> b!1433902 (=> (not res!967478) (not e!809362))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1433902 (= res!967478 (and (= (size!47617 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47617 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47617 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1433903 () Bool)

(declare-fun res!967485 () Bool)

(assert (=> b!1433903 (=> (not res!967485) (not e!809362))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1433903 (= res!967485 (validKeyInArray!0 (select (arr!47066 a!2831) i!982)))))

(declare-fun b!1433904 () Bool)

(declare-fun res!967479 () Bool)

(declare-fun e!809359 () Bool)

(assert (=> b!1433904 (=> (not res!967479) (not e!809359))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1433904 (= res!967479 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1433905 () Bool)

(declare-fun res!967483 () Bool)

(assert (=> b!1433905 (=> (not res!967483) (not e!809362))))

(assert (=> b!1433905 (= res!967483 (validKeyInArray!0 (select (arr!47066 a!2831) j!81)))))

(declare-fun b!1433906 () Bool)

(declare-fun e!809361 () Bool)

(assert (=> b!1433906 (= e!809361 true)))

(declare-fun lt!631216 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1433906 (= lt!631216 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1433907 () Bool)

(declare-fun e!809363 () Bool)

(declare-datatypes ((SeekEntryResult!11367 0))(
  ( (MissingZero!11367 (index!47859 (_ BitVec 32))) (Found!11367 (index!47860 (_ BitVec 32))) (Intermediate!11367 (undefined!12179 Bool) (index!47861 (_ BitVec 32)) (x!129518 (_ BitVec 32))) (Undefined!11367) (MissingVacant!11367 (index!47862 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97532 (_ BitVec 32)) SeekEntryResult!11367)

(assert (=> b!1433907 (= e!809363 (= (seekEntryOrOpen!0 (select (arr!47066 a!2831) j!81) a!2831 mask!2608) (Found!11367 j!81)))))

(declare-fun res!967480 () Bool)

(assert (=> start!123756 (=> (not res!967480) (not e!809362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123756 (= res!967480 (validMask!0 mask!2608))))

(assert (=> start!123756 e!809362))

(assert (=> start!123756 true))

(declare-fun array_inv!36011 (array!97532) Bool)

(assert (=> start!123756 (array_inv!36011 a!2831)))

(declare-fun b!1433908 () Bool)

(declare-fun e!809358 () Bool)

(assert (=> b!1433908 (= e!809358 e!809359)))

(declare-fun res!967476 () Bool)

(assert (=> b!1433908 (=> (not res!967476) (not e!809359))))

(declare-fun lt!631213 () SeekEntryResult!11367)

(declare-fun lt!631212 () (_ BitVec 64))

(declare-fun lt!631214 () array!97532)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97532 (_ BitVec 32)) SeekEntryResult!11367)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1433908 (= res!967476 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631212 mask!2608) lt!631212 lt!631214 mask!2608) lt!631213))))

(assert (=> b!1433908 (= lt!631213 (Intermediate!11367 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1433908 (= lt!631212 (select (store (arr!47066 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1433908 (= lt!631214 (array!97533 (store (arr!47066 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47617 a!2831)))))

(declare-fun b!1433909 () Bool)

(assert (=> b!1433909 (= e!809362 e!809358)))

(declare-fun res!967482 () Bool)

(assert (=> b!1433909 (=> (not res!967482) (not e!809358))))

(declare-fun lt!631211 () SeekEntryResult!11367)

(assert (=> b!1433909 (= res!967482 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47066 a!2831) j!81) mask!2608) (select (arr!47066 a!2831) j!81) a!2831 mask!2608) lt!631211))))

(assert (=> b!1433909 (= lt!631211 (Intermediate!11367 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1433910 () Bool)

(declare-fun res!967473 () Bool)

(assert (=> b!1433910 (=> (not res!967473) (not e!809359))))

(assert (=> b!1433910 (= res!967473 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631212 lt!631214 mask!2608) lt!631213))))

(declare-fun b!1433911 () Bool)

(declare-fun res!967484 () Bool)

(assert (=> b!1433911 (=> (not res!967484) (not e!809362))))

(assert (=> b!1433911 (= res!967484 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47617 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47617 a!2831))))))

(declare-fun b!1433912 () Bool)

(declare-fun res!967474 () Bool)

(assert (=> b!1433912 (=> (not res!967474) (not e!809362))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97532 (_ BitVec 32)) Bool)

(assert (=> b!1433912 (= res!967474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1433913 () Bool)

(assert (=> b!1433913 (= e!809359 (not e!809361))))

(declare-fun res!967481 () Bool)

(assert (=> b!1433913 (=> res!967481 e!809361)))

(assert (=> b!1433913 (= res!967481 (or (= (select (arr!47066 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47066 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47066 a!2831) index!585) (select (arr!47066 a!2831) j!81)) (= (select (store (arr!47066 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1433913 e!809363))

(declare-fun res!967477 () Bool)

(assert (=> b!1433913 (=> (not res!967477) (not e!809363))))

(assert (=> b!1433913 (= res!967477 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48428 0))(
  ( (Unit!48429) )
))
(declare-fun lt!631215 () Unit!48428)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97532 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48428)

(assert (=> b!1433913 (= lt!631215 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1433914 () Bool)

(declare-fun res!967475 () Bool)

(assert (=> b!1433914 (=> (not res!967475) (not e!809359))))

(assert (=> b!1433914 (= res!967475 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47066 a!2831) j!81) a!2831 mask!2608) lt!631211))))

(assert (= (and start!123756 res!967480) b!1433902))

(assert (= (and b!1433902 res!967478) b!1433903))

(assert (= (and b!1433903 res!967485) b!1433905))

(assert (= (and b!1433905 res!967483) b!1433912))

(assert (= (and b!1433912 res!967474) b!1433901))

(assert (= (and b!1433901 res!967472) b!1433911))

(assert (= (and b!1433911 res!967484) b!1433909))

(assert (= (and b!1433909 res!967482) b!1433908))

(assert (= (and b!1433908 res!967476) b!1433914))

(assert (= (and b!1433914 res!967475) b!1433910))

(assert (= (and b!1433910 res!967473) b!1433904))

(assert (= (and b!1433904 res!967479) b!1433913))

(assert (= (and b!1433913 res!967477) b!1433907))

(assert (= (and b!1433913 (not res!967481)) b!1433906))

(declare-fun m!1323565 () Bool)

(assert (=> b!1433908 m!1323565))

(assert (=> b!1433908 m!1323565))

(declare-fun m!1323567 () Bool)

(assert (=> b!1433908 m!1323567))

(declare-fun m!1323569 () Bool)

(assert (=> b!1433908 m!1323569))

(declare-fun m!1323571 () Bool)

(assert (=> b!1433908 m!1323571))

(declare-fun m!1323573 () Bool)

(assert (=> b!1433903 m!1323573))

(assert (=> b!1433903 m!1323573))

(declare-fun m!1323575 () Bool)

(assert (=> b!1433903 m!1323575))

(declare-fun m!1323577 () Bool)

(assert (=> b!1433905 m!1323577))

(assert (=> b!1433905 m!1323577))

(declare-fun m!1323579 () Bool)

(assert (=> b!1433905 m!1323579))

(assert (=> b!1433914 m!1323577))

(assert (=> b!1433914 m!1323577))

(declare-fun m!1323581 () Bool)

(assert (=> b!1433914 m!1323581))

(declare-fun m!1323583 () Bool)

(assert (=> b!1433906 m!1323583))

(declare-fun m!1323585 () Bool)

(assert (=> b!1433901 m!1323585))

(assert (=> b!1433909 m!1323577))

(assert (=> b!1433909 m!1323577))

(declare-fun m!1323587 () Bool)

(assert (=> b!1433909 m!1323587))

(assert (=> b!1433909 m!1323587))

(assert (=> b!1433909 m!1323577))

(declare-fun m!1323589 () Bool)

(assert (=> b!1433909 m!1323589))

(declare-fun m!1323591 () Bool)

(assert (=> start!123756 m!1323591))

(declare-fun m!1323593 () Bool)

(assert (=> start!123756 m!1323593))

(declare-fun m!1323595 () Bool)

(assert (=> b!1433912 m!1323595))

(assert (=> b!1433913 m!1323569))

(declare-fun m!1323597 () Bool)

(assert (=> b!1433913 m!1323597))

(declare-fun m!1323599 () Bool)

(assert (=> b!1433913 m!1323599))

(declare-fun m!1323601 () Bool)

(assert (=> b!1433913 m!1323601))

(assert (=> b!1433913 m!1323577))

(declare-fun m!1323603 () Bool)

(assert (=> b!1433913 m!1323603))

(assert (=> b!1433907 m!1323577))

(assert (=> b!1433907 m!1323577))

(declare-fun m!1323605 () Bool)

(assert (=> b!1433907 m!1323605))

(declare-fun m!1323607 () Bool)

(assert (=> b!1433910 m!1323607))

(check-sat (not b!1433901) (not b!1433912) (not b!1433905) (not b!1433903) (not b!1433909) (not b!1433914) (not b!1433908) (not start!123756) (not b!1433910) (not b!1433906) (not b!1433907) (not b!1433913))
(check-sat)
