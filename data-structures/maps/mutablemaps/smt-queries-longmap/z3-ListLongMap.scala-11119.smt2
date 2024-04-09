; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129912 () Bool)

(assert start!129912)

(declare-fun b!1524243 () Bool)

(declare-fun res!1043038 () Bool)

(declare-fun e!849726 () Bool)

(assert (=> b!1524243 (=> (not res!1043038) (not e!849726))))

(declare-datatypes ((SeekEntryResult!13100 0))(
  ( (MissingZero!13100 (index!54794 (_ BitVec 32))) (Found!13100 (index!54795 (_ BitVec 32))) (Intermediate!13100 (undefined!13912 Bool) (index!54796 (_ BitVec 32)) (x!136491 (_ BitVec 32))) (Undefined!13100) (MissingVacant!13100 (index!54797 (_ BitVec 32))) )
))
(declare-fun lt!660218 () SeekEntryResult!13100)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101378 0))(
  ( (array!101379 (arr!48914 (Array (_ BitVec 32) (_ BitVec 64))) (size!49465 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101378)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101378 (_ BitVec 32)) SeekEntryResult!13100)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1524243 (= res!1043038 (= lt!660218 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48914 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48914 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101379 (store (arr!48914 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49465 a!2804)) mask!2512)))))

(declare-fun b!1524244 () Bool)

(declare-fun res!1043043 () Bool)

(declare-fun e!849727 () Bool)

(assert (=> b!1524244 (=> (not res!1043043) (not e!849727))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1524244 (= res!1043043 (validKeyInArray!0 (select (arr!48914 a!2804) i!961)))))

(declare-fun b!1524245 () Bool)

(declare-fun res!1043036 () Bool)

(assert (=> b!1524245 (=> (not res!1043036) (not e!849727))))

(assert (=> b!1524245 (= res!1043036 (validKeyInArray!0 (select (arr!48914 a!2804) j!70)))))

(declare-fun b!1524246 () Bool)

(assert (=> b!1524246 (= e!849727 e!849726)))

(declare-fun res!1043035 () Bool)

(assert (=> b!1524246 (=> (not res!1043035) (not e!849726))))

(declare-fun lt!660220 () SeekEntryResult!13100)

(assert (=> b!1524246 (= res!1043035 (= lt!660218 lt!660220))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1524246 (= lt!660220 (Intermediate!13100 false resIndex!21 resX!21))))

(assert (=> b!1524246 (= lt!660218 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48914 a!2804) j!70) mask!2512) (select (arr!48914 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524247 () Bool)

(declare-fun res!1043041 () Bool)

(assert (=> b!1524247 (=> (not res!1043041) (not e!849727))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101378 (_ BitVec 32)) Bool)

(assert (=> b!1524247 (= res!1043041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1043034 () Bool)

(assert (=> start!129912 (=> (not res!1043034) (not e!849727))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129912 (= res!1043034 (validMask!0 mask!2512))))

(assert (=> start!129912 e!849727))

(assert (=> start!129912 true))

(declare-fun array_inv!37859 (array!101378) Bool)

(assert (=> start!129912 (array_inv!37859 a!2804)))

(declare-fun b!1524248 () Bool)

(declare-fun res!1043037 () Bool)

(assert (=> b!1524248 (=> (not res!1043037) (not e!849727))))

(assert (=> b!1524248 (= res!1043037 (and (= (size!49465 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49465 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49465 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1524249 () Bool)

(assert (=> b!1524249 (= e!849726 (not true))))

(declare-fun e!849725 () Bool)

(assert (=> b!1524249 e!849725))

(declare-fun res!1043039 () Bool)

(assert (=> b!1524249 (=> (not res!1043039) (not e!849725))))

(assert (=> b!1524249 (= res!1043039 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50940 0))(
  ( (Unit!50941) )
))
(declare-fun lt!660219 () Unit!50940)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101378 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50940)

(assert (=> b!1524249 (= lt!660219 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1524250 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101378 (_ BitVec 32)) SeekEntryResult!13100)

(assert (=> b!1524250 (= e!849725 (= (seekEntry!0 (select (arr!48914 a!2804) j!70) a!2804 mask!2512) (Found!13100 j!70)))))

(declare-fun b!1524251 () Bool)

(declare-fun res!1043033 () Bool)

(assert (=> b!1524251 (=> (not res!1043033) (not e!849727))))

(declare-datatypes ((List!35577 0))(
  ( (Nil!35574) (Cons!35573 (h!37001 (_ BitVec 64)) (t!50278 List!35577)) )
))
(declare-fun arrayNoDuplicates!0 (array!101378 (_ BitVec 32) List!35577) Bool)

(assert (=> b!1524251 (= res!1043033 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35574))))

(declare-fun b!1524252 () Bool)

(declare-fun res!1043040 () Bool)

(assert (=> b!1524252 (=> (not res!1043040) (not e!849726))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1524252 (= res!1043040 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48914 a!2804) j!70) a!2804 mask!2512) lt!660220))))

(declare-fun b!1524253 () Bool)

(declare-fun res!1043042 () Bool)

(assert (=> b!1524253 (=> (not res!1043042) (not e!849727))))

(assert (=> b!1524253 (= res!1043042 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49465 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49465 a!2804))))))

(assert (= (and start!129912 res!1043034) b!1524248))

(assert (= (and b!1524248 res!1043037) b!1524244))

(assert (= (and b!1524244 res!1043043) b!1524245))

(assert (= (and b!1524245 res!1043036) b!1524247))

(assert (= (and b!1524247 res!1043041) b!1524251))

(assert (= (and b!1524251 res!1043033) b!1524253))

(assert (= (and b!1524253 res!1043042) b!1524246))

(assert (= (and b!1524246 res!1043035) b!1524252))

(assert (= (and b!1524252 res!1043040) b!1524243))

(assert (= (and b!1524243 res!1043038) b!1524249))

(assert (= (and b!1524249 res!1043039) b!1524250))

(declare-fun m!1407333 () Bool)

(assert (=> b!1524243 m!1407333))

(declare-fun m!1407335 () Bool)

(assert (=> b!1524243 m!1407335))

(assert (=> b!1524243 m!1407335))

(declare-fun m!1407337 () Bool)

(assert (=> b!1524243 m!1407337))

(assert (=> b!1524243 m!1407337))

(assert (=> b!1524243 m!1407335))

(declare-fun m!1407339 () Bool)

(assert (=> b!1524243 m!1407339))

(declare-fun m!1407341 () Bool)

(assert (=> b!1524249 m!1407341))

(declare-fun m!1407343 () Bool)

(assert (=> b!1524249 m!1407343))

(declare-fun m!1407345 () Bool)

(assert (=> b!1524247 m!1407345))

(declare-fun m!1407347 () Bool)

(assert (=> b!1524245 m!1407347))

(assert (=> b!1524245 m!1407347))

(declare-fun m!1407349 () Bool)

(assert (=> b!1524245 m!1407349))

(assert (=> b!1524250 m!1407347))

(assert (=> b!1524250 m!1407347))

(declare-fun m!1407351 () Bool)

(assert (=> b!1524250 m!1407351))

(declare-fun m!1407353 () Bool)

(assert (=> b!1524244 m!1407353))

(assert (=> b!1524244 m!1407353))

(declare-fun m!1407355 () Bool)

(assert (=> b!1524244 m!1407355))

(assert (=> b!1524252 m!1407347))

(assert (=> b!1524252 m!1407347))

(declare-fun m!1407357 () Bool)

(assert (=> b!1524252 m!1407357))

(declare-fun m!1407359 () Bool)

(assert (=> b!1524251 m!1407359))

(declare-fun m!1407361 () Bool)

(assert (=> start!129912 m!1407361))

(declare-fun m!1407363 () Bool)

(assert (=> start!129912 m!1407363))

(assert (=> b!1524246 m!1407347))

(assert (=> b!1524246 m!1407347))

(declare-fun m!1407365 () Bool)

(assert (=> b!1524246 m!1407365))

(assert (=> b!1524246 m!1407365))

(assert (=> b!1524246 m!1407347))

(declare-fun m!1407367 () Bool)

(assert (=> b!1524246 m!1407367))

(check-sat (not start!129912) (not b!1524250) (not b!1524243) (not b!1524247) (not b!1524251) (not b!1524252) (not b!1524245) (not b!1524246) (not b!1524249) (not b!1524244))
(check-sat)
