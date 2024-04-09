; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125088 () Bool)

(assert start!125088)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!637795 () (_ BitVec 64))

(declare-datatypes ((array!98453 0))(
  ( (array!98454 (arr!47510 (Array (_ BitVec 32) (_ BitVec 64))) (size!48061 (_ BitVec 32))) )
))
(declare-fun lt!637794 () array!98453)

(declare-fun b!1455076 () Bool)

(declare-fun e!818836 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11785 0))(
  ( (MissingZero!11785 (index!49531 (_ BitVec 32))) (Found!11785 (index!49532 (_ BitVec 32))) (Intermediate!11785 (undefined!12597 Bool) (index!49533 (_ BitVec 32)) (x!131165 (_ BitVec 32))) (Undefined!11785) (MissingVacant!11785 (index!49534 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98453 (_ BitVec 32)) SeekEntryResult!11785)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98453 (_ BitVec 32)) SeekEntryResult!11785)

(assert (=> b!1455076 (= e!818836 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637795 lt!637794 mask!2687) (seekEntryOrOpen!0 lt!637795 lt!637794 mask!2687)))))

(declare-fun b!1455077 () Bool)

(declare-fun res!985910 () Bool)

(declare-fun e!818842 () Bool)

(assert (=> b!1455077 (=> (not res!985910) (not e!818842))))

(declare-fun lt!637788 () SeekEntryResult!11785)

(declare-fun a!2862 () array!98453)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98453 (_ BitVec 32)) SeekEntryResult!11785)

(assert (=> b!1455077 (= res!985910 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47510 a!2862) j!93) a!2862 mask!2687) lt!637788))))

(declare-fun b!1455078 () Bool)

(declare-fun e!818834 () Bool)

(declare-fun e!818840 () Bool)

(assert (=> b!1455078 (= e!818834 e!818840)))

(declare-fun res!985905 () Bool)

(assert (=> b!1455078 (=> res!985905 e!818840)))

(declare-fun lt!637791 () (_ BitVec 32))

(assert (=> b!1455078 (= res!985905 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637791 #b00000000000000000000000000000000) (bvsge lt!637791 (size!48061 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455078 (= lt!637791 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!637792 () SeekEntryResult!11785)

(assert (=> b!1455078 (= lt!637792 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637795 lt!637794 mask!2687))))

(assert (=> b!1455078 (= lt!637792 (seekEntryOrOpen!0 lt!637795 lt!637794 mask!2687))))

(declare-fun b!1455079 () Bool)

(declare-fun res!985917 () Bool)

(assert (=> b!1455079 (=> res!985917 e!818840)))

(assert (=> b!1455079 (= res!985917 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637791 (select (arr!47510 a!2862) j!93) a!2862 mask!2687) lt!637788)))))

(declare-fun b!1455080 () Bool)

(declare-fun res!985912 () Bool)

(declare-fun e!818837 () Bool)

(assert (=> b!1455080 (=> (not res!985912) (not e!818837))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98453 (_ BitVec 32)) Bool)

(assert (=> b!1455080 (= res!985912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1455081 () Bool)

(declare-fun res!985908 () Bool)

(declare-fun e!818843 () Bool)

(assert (=> b!1455081 (=> (not res!985908) (not e!818843))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1455081 (= res!985908 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1455082 () Bool)

(declare-fun res!985916 () Bool)

(assert (=> b!1455082 (=> (not res!985916) (not e!818837))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1455082 (= res!985916 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48061 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48061 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48061 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!818839 () Bool)

(declare-fun b!1455083 () Bool)

(declare-fun lt!637790 () SeekEntryResult!11785)

(assert (=> b!1455083 (= e!818839 (not (= lt!637790 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637791 lt!637795 lt!637794 mask!2687))))))

(declare-fun b!1455084 () Bool)

(declare-fun res!985911 () Bool)

(assert (=> b!1455084 (=> (not res!985911) (not e!818837))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1455084 (= res!985911 (validKeyInArray!0 (select (arr!47510 a!2862) i!1006)))))

(declare-fun b!1455085 () Bool)

(declare-fun res!985902 () Bool)

(declare-fun e!818835 () Bool)

(assert (=> b!1455085 (=> (not res!985902) (not e!818835))))

(assert (=> b!1455085 (= res!985902 (= (seekEntryOrOpen!0 (select (arr!47510 a!2862) j!93) a!2862 mask!2687) (Found!11785 j!93)))))

(declare-fun b!1455086 () Bool)

(assert (=> b!1455086 (= e!818843 (not e!818834))))

(declare-fun res!985913 () Bool)

(assert (=> b!1455086 (=> res!985913 e!818834)))

(assert (=> b!1455086 (= res!985913 (or (and (= (select (arr!47510 a!2862) index!646) (select (store (arr!47510 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47510 a!2862) index!646) (select (arr!47510 a!2862) j!93))) (= (select (arr!47510 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1455086 e!818835))

(declare-fun res!985906 () Bool)

(assert (=> b!1455086 (=> (not res!985906) (not e!818835))))

(assert (=> b!1455086 (= res!985906 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49014 0))(
  ( (Unit!49015) )
))
(declare-fun lt!637793 () Unit!49014)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98453 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49014)

(assert (=> b!1455086 (= lt!637793 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1455087 () Bool)

(assert (=> b!1455087 (= e!818836 (= lt!637790 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637795 lt!637794 mask!2687)))))

(declare-fun res!985907 () Bool)

(assert (=> start!125088 (=> (not res!985907) (not e!818837))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125088 (= res!985907 (validMask!0 mask!2687))))

(assert (=> start!125088 e!818837))

(assert (=> start!125088 true))

(declare-fun array_inv!36455 (array!98453) Bool)

(assert (=> start!125088 (array_inv!36455 a!2862)))

(declare-fun b!1455088 () Bool)

(declare-fun e!818841 () Bool)

(assert (=> b!1455088 (= e!818837 e!818841)))

(declare-fun res!985909 () Bool)

(assert (=> b!1455088 (=> (not res!985909) (not e!818841))))

(assert (=> b!1455088 (= res!985909 (= (select (store (arr!47510 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1455088 (= lt!637794 (array!98454 (store (arr!47510 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48061 a!2862)))))

(declare-fun b!1455089 () Bool)

(assert (=> b!1455089 (= e!818841 e!818842)))

(declare-fun res!985914 () Bool)

(assert (=> b!1455089 (=> (not res!985914) (not e!818842))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455089 (= res!985914 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47510 a!2862) j!93) mask!2687) (select (arr!47510 a!2862) j!93) a!2862 mask!2687) lt!637788))))

(assert (=> b!1455089 (= lt!637788 (Intermediate!11785 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1455090 () Bool)

(assert (=> b!1455090 (= e!818835 (and (or (= (select (arr!47510 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47510 a!2862) intermediateBeforeIndex!19) (select (arr!47510 a!2862) j!93))) (let ((bdg!53128 (select (store (arr!47510 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47510 a!2862) index!646) bdg!53128) (= (select (arr!47510 a!2862) index!646) (select (arr!47510 a!2862) j!93))) (= (select (arr!47510 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53128 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1455091 () Bool)

(assert (=> b!1455091 (= e!818839 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637791 intermediateAfterIndex!19 lt!637795 lt!637794 mask!2687) lt!637792)))))

(declare-fun b!1455092 () Bool)

(declare-fun res!985901 () Bool)

(assert (=> b!1455092 (=> (not res!985901) (not e!818843))))

(assert (=> b!1455092 (= res!985901 e!818836)))

(declare-fun c!134101 () Bool)

(assert (=> b!1455092 (= c!134101 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1455093 () Bool)

(declare-fun res!985903 () Bool)

(assert (=> b!1455093 (=> (not res!985903) (not e!818837))))

(assert (=> b!1455093 (= res!985903 (and (= (size!48061 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48061 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48061 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1455094 () Bool)

(declare-fun res!985904 () Bool)

(assert (=> b!1455094 (=> (not res!985904) (not e!818837))))

(assert (=> b!1455094 (= res!985904 (validKeyInArray!0 (select (arr!47510 a!2862) j!93)))))

(declare-fun b!1455095 () Bool)

(assert (=> b!1455095 (= e!818840 true)))

(declare-fun lt!637789 () Bool)

(assert (=> b!1455095 (= lt!637789 e!818839)))

(declare-fun c!134102 () Bool)

(assert (=> b!1455095 (= c!134102 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1455096 () Bool)

(declare-fun res!985900 () Bool)

(assert (=> b!1455096 (=> (not res!985900) (not e!818837))))

(declare-datatypes ((List!34191 0))(
  ( (Nil!34188) (Cons!34187 (h!35537 (_ BitVec 64)) (t!48892 List!34191)) )
))
(declare-fun arrayNoDuplicates!0 (array!98453 (_ BitVec 32) List!34191) Bool)

(assert (=> b!1455096 (= res!985900 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34188))))

(declare-fun b!1455097 () Bool)

(assert (=> b!1455097 (= e!818842 e!818843)))

(declare-fun res!985915 () Bool)

(assert (=> b!1455097 (=> (not res!985915) (not e!818843))))

(assert (=> b!1455097 (= res!985915 (= lt!637790 (Intermediate!11785 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1455097 (= lt!637790 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637795 mask!2687) lt!637795 lt!637794 mask!2687))))

(assert (=> b!1455097 (= lt!637795 (select (store (arr!47510 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!125088 res!985907) b!1455093))

(assert (= (and b!1455093 res!985903) b!1455084))

(assert (= (and b!1455084 res!985911) b!1455094))

(assert (= (and b!1455094 res!985904) b!1455080))

(assert (= (and b!1455080 res!985912) b!1455096))

(assert (= (and b!1455096 res!985900) b!1455082))

(assert (= (and b!1455082 res!985916) b!1455088))

(assert (= (and b!1455088 res!985909) b!1455089))

(assert (= (and b!1455089 res!985914) b!1455077))

(assert (= (and b!1455077 res!985910) b!1455097))

(assert (= (and b!1455097 res!985915) b!1455092))

(assert (= (and b!1455092 c!134101) b!1455087))

(assert (= (and b!1455092 (not c!134101)) b!1455076))

(assert (= (and b!1455092 res!985901) b!1455081))

(assert (= (and b!1455081 res!985908) b!1455086))

(assert (= (and b!1455086 res!985906) b!1455085))

(assert (= (and b!1455085 res!985902) b!1455090))

(assert (= (and b!1455086 (not res!985913)) b!1455078))

(assert (= (and b!1455078 (not res!985905)) b!1455079))

(assert (= (and b!1455079 (not res!985917)) b!1455095))

(assert (= (and b!1455095 c!134102) b!1455083))

(assert (= (and b!1455095 (not c!134102)) b!1455091))

(declare-fun m!1343389 () Bool)

(assert (=> b!1455084 m!1343389))

(assert (=> b!1455084 m!1343389))

(declare-fun m!1343391 () Bool)

(assert (=> b!1455084 m!1343391))

(declare-fun m!1343393 () Bool)

(assert (=> b!1455091 m!1343393))

(declare-fun m!1343395 () Bool)

(assert (=> b!1455080 m!1343395))

(declare-fun m!1343397 () Bool)

(assert (=> b!1455090 m!1343397))

(declare-fun m!1343399 () Bool)

(assert (=> b!1455090 m!1343399))

(declare-fun m!1343401 () Bool)

(assert (=> b!1455090 m!1343401))

(declare-fun m!1343403 () Bool)

(assert (=> b!1455090 m!1343403))

(declare-fun m!1343405 () Bool)

(assert (=> b!1455090 m!1343405))

(assert (=> b!1455089 m!1343405))

(assert (=> b!1455089 m!1343405))

(declare-fun m!1343407 () Bool)

(assert (=> b!1455089 m!1343407))

(assert (=> b!1455089 m!1343407))

(assert (=> b!1455089 m!1343405))

(declare-fun m!1343409 () Bool)

(assert (=> b!1455089 m!1343409))

(assert (=> b!1455085 m!1343405))

(assert (=> b!1455085 m!1343405))

(declare-fun m!1343411 () Bool)

(assert (=> b!1455085 m!1343411))

(assert (=> b!1455088 m!1343397))

(declare-fun m!1343413 () Bool)

(assert (=> b!1455088 m!1343413))

(declare-fun m!1343415 () Bool)

(assert (=> b!1455096 m!1343415))

(declare-fun m!1343417 () Bool)

(assert (=> b!1455086 m!1343417))

(assert (=> b!1455086 m!1343397))

(assert (=> b!1455086 m!1343401))

(assert (=> b!1455086 m!1343403))

(declare-fun m!1343419 () Bool)

(assert (=> b!1455086 m!1343419))

(assert (=> b!1455086 m!1343405))

(declare-fun m!1343421 () Bool)

(assert (=> start!125088 m!1343421))

(declare-fun m!1343423 () Bool)

(assert (=> start!125088 m!1343423))

(declare-fun m!1343425 () Bool)

(assert (=> b!1455087 m!1343425))

(declare-fun m!1343427 () Bool)

(assert (=> b!1455083 m!1343427))

(declare-fun m!1343429 () Bool)

(assert (=> b!1455078 m!1343429))

(declare-fun m!1343431 () Bool)

(assert (=> b!1455078 m!1343431))

(declare-fun m!1343433 () Bool)

(assert (=> b!1455078 m!1343433))

(assert (=> b!1455079 m!1343405))

(assert (=> b!1455079 m!1343405))

(declare-fun m!1343435 () Bool)

(assert (=> b!1455079 m!1343435))

(declare-fun m!1343437 () Bool)

(assert (=> b!1455097 m!1343437))

(assert (=> b!1455097 m!1343437))

(declare-fun m!1343439 () Bool)

(assert (=> b!1455097 m!1343439))

(assert (=> b!1455097 m!1343397))

(declare-fun m!1343441 () Bool)

(assert (=> b!1455097 m!1343441))

(assert (=> b!1455094 m!1343405))

(assert (=> b!1455094 m!1343405))

(declare-fun m!1343443 () Bool)

(assert (=> b!1455094 m!1343443))

(assert (=> b!1455076 m!1343431))

(assert (=> b!1455076 m!1343433))

(assert (=> b!1455077 m!1343405))

(assert (=> b!1455077 m!1343405))

(declare-fun m!1343445 () Bool)

(assert (=> b!1455077 m!1343445))

(check-sat (not b!1455085) (not b!1455084) (not b!1455077) (not b!1455097) (not b!1455087) (not b!1455078) (not b!1455080) (not b!1455091) (not b!1455094) (not b!1455076) (not b!1455079) (not b!1455096) (not start!125088) (not b!1455086) (not b!1455089) (not b!1455083))
(check-sat)
