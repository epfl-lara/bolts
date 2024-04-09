; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129910 () Bool)

(assert start!129910)

(declare-fun b!1524210 () Bool)

(declare-fun res!1043001 () Bool)

(declare-fun e!849716 () Bool)

(assert (=> b!1524210 (=> (not res!1043001) (not e!849716))))

(declare-datatypes ((array!101376 0))(
  ( (array!101377 (arr!48913 (Array (_ BitVec 32) (_ BitVec 64))) (size!49464 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101376)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1524210 (= res!1043001 (validKeyInArray!0 (select (arr!48913 a!2804) j!70)))))

(declare-fun b!1524211 () Bool)

(declare-fun e!849714 () Bool)

(assert (=> b!1524211 (= e!849716 e!849714)))

(declare-fun res!1043004 () Bool)

(assert (=> b!1524211 (=> (not res!1043004) (not e!849714))))

(declare-datatypes ((SeekEntryResult!13099 0))(
  ( (MissingZero!13099 (index!54790 (_ BitVec 32))) (Found!13099 (index!54791 (_ BitVec 32))) (Intermediate!13099 (undefined!13911 Bool) (index!54792 (_ BitVec 32)) (x!136490 (_ BitVec 32))) (Undefined!13099) (MissingVacant!13099 (index!54793 (_ BitVec 32))) )
))
(declare-fun lt!660210 () SeekEntryResult!13099)

(declare-fun lt!660209 () SeekEntryResult!13099)

(assert (=> b!1524211 (= res!1043004 (= lt!660210 lt!660209))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1524211 (= lt!660209 (Intermediate!13099 false resIndex!21 resX!21))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101376 (_ BitVec 32)) SeekEntryResult!13099)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1524211 (= lt!660210 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48913 a!2804) j!70) mask!2512) (select (arr!48913 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1043005 () Bool)

(assert (=> start!129910 (=> (not res!1043005) (not e!849716))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129910 (= res!1043005 (validMask!0 mask!2512))))

(assert (=> start!129910 e!849716))

(assert (=> start!129910 true))

(declare-fun array_inv!37858 (array!101376) Bool)

(assert (=> start!129910 (array_inv!37858 a!2804)))

(declare-fun b!1524212 () Bool)

(declare-fun res!1043002 () Bool)

(assert (=> b!1524212 (=> (not res!1043002) (not e!849716))))

(declare-datatypes ((List!35576 0))(
  ( (Nil!35573) (Cons!35572 (h!37000 (_ BitVec 64)) (t!50277 List!35576)) )
))
(declare-fun arrayNoDuplicates!0 (array!101376 (_ BitVec 32) List!35576) Bool)

(assert (=> b!1524212 (= res!1043002 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35573))))

(declare-fun b!1524213 () Bool)

(assert (=> b!1524213 (= e!849714 (not true))))

(declare-fun e!849713 () Bool)

(assert (=> b!1524213 e!849713))

(declare-fun res!1043006 () Bool)

(assert (=> b!1524213 (=> (not res!1043006) (not e!849713))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101376 (_ BitVec 32)) Bool)

(assert (=> b!1524213 (= res!1043006 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50938 0))(
  ( (Unit!50939) )
))
(declare-fun lt!660211 () Unit!50938)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101376 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50938)

(assert (=> b!1524213 (= lt!660211 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1524214 () Bool)

(declare-fun res!1043007 () Bool)

(assert (=> b!1524214 (=> (not res!1043007) (not e!849716))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1524214 (= res!1043007 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49464 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49464 a!2804))))))

(declare-fun b!1524215 () Bool)

(declare-fun res!1043003 () Bool)

(assert (=> b!1524215 (=> (not res!1043003) (not e!849716))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1524215 (= res!1043003 (validKeyInArray!0 (select (arr!48913 a!2804) i!961)))))

(declare-fun b!1524216 () Bool)

(declare-fun res!1043009 () Bool)

(assert (=> b!1524216 (=> (not res!1043009) (not e!849714))))

(assert (=> b!1524216 (= res!1043009 (= lt!660210 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48913 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48913 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101377 (store (arr!48913 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49464 a!2804)) mask!2512)))))

(declare-fun b!1524217 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101376 (_ BitVec 32)) SeekEntryResult!13099)

(assert (=> b!1524217 (= e!849713 (= (seekEntry!0 (select (arr!48913 a!2804) j!70) a!2804 mask!2512) (Found!13099 j!70)))))

(declare-fun b!1524218 () Bool)

(declare-fun res!1043008 () Bool)

(assert (=> b!1524218 (=> (not res!1043008) (not e!849714))))

(assert (=> b!1524218 (= res!1043008 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48913 a!2804) j!70) a!2804 mask!2512) lt!660209))))

(declare-fun b!1524219 () Bool)

(declare-fun res!1043000 () Bool)

(assert (=> b!1524219 (=> (not res!1043000) (not e!849716))))

(assert (=> b!1524219 (= res!1043000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1524220 () Bool)

(declare-fun res!1043010 () Bool)

(assert (=> b!1524220 (=> (not res!1043010) (not e!849716))))

(assert (=> b!1524220 (= res!1043010 (and (= (size!49464 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49464 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49464 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129910 res!1043005) b!1524220))

(assert (= (and b!1524220 res!1043010) b!1524215))

(assert (= (and b!1524215 res!1043003) b!1524210))

(assert (= (and b!1524210 res!1043001) b!1524219))

(assert (= (and b!1524219 res!1043000) b!1524212))

(assert (= (and b!1524212 res!1043002) b!1524214))

(assert (= (and b!1524214 res!1043007) b!1524211))

(assert (= (and b!1524211 res!1043004) b!1524218))

(assert (= (and b!1524218 res!1043008) b!1524216))

(assert (= (and b!1524216 res!1043009) b!1524213))

(assert (= (and b!1524213 res!1043006) b!1524217))

(declare-fun m!1407297 () Bool)

(assert (=> b!1524211 m!1407297))

(assert (=> b!1524211 m!1407297))

(declare-fun m!1407299 () Bool)

(assert (=> b!1524211 m!1407299))

(assert (=> b!1524211 m!1407299))

(assert (=> b!1524211 m!1407297))

(declare-fun m!1407301 () Bool)

(assert (=> b!1524211 m!1407301))

(assert (=> b!1524210 m!1407297))

(assert (=> b!1524210 m!1407297))

(declare-fun m!1407303 () Bool)

(assert (=> b!1524210 m!1407303))

(declare-fun m!1407305 () Bool)

(assert (=> b!1524219 m!1407305))

(assert (=> b!1524218 m!1407297))

(assert (=> b!1524218 m!1407297))

(declare-fun m!1407307 () Bool)

(assert (=> b!1524218 m!1407307))

(declare-fun m!1407309 () Bool)

(assert (=> b!1524213 m!1407309))

(declare-fun m!1407311 () Bool)

(assert (=> b!1524213 m!1407311))

(declare-fun m!1407313 () Bool)

(assert (=> b!1524212 m!1407313))

(assert (=> b!1524217 m!1407297))

(assert (=> b!1524217 m!1407297))

(declare-fun m!1407315 () Bool)

(assert (=> b!1524217 m!1407315))

(declare-fun m!1407317 () Bool)

(assert (=> b!1524215 m!1407317))

(assert (=> b!1524215 m!1407317))

(declare-fun m!1407319 () Bool)

(assert (=> b!1524215 m!1407319))

(declare-fun m!1407321 () Bool)

(assert (=> start!129910 m!1407321))

(declare-fun m!1407323 () Bool)

(assert (=> start!129910 m!1407323))

(declare-fun m!1407325 () Bool)

(assert (=> b!1524216 m!1407325))

(declare-fun m!1407327 () Bool)

(assert (=> b!1524216 m!1407327))

(assert (=> b!1524216 m!1407327))

(declare-fun m!1407329 () Bool)

(assert (=> b!1524216 m!1407329))

(assert (=> b!1524216 m!1407329))

(assert (=> b!1524216 m!1407327))

(declare-fun m!1407331 () Bool)

(assert (=> b!1524216 m!1407331))

(push 1)

