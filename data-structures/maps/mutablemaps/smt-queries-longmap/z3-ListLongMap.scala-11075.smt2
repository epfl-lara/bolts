; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129330 () Bool)

(assert start!129330)

(declare-fun b!1518262 () Bool)

(declare-fun res!1038243 () Bool)

(declare-fun e!847022 () Bool)

(assert (=> b!1518262 (=> (not res!1038243) (not e!847022))))

(declare-datatypes ((array!101099 0))(
  ( (array!101100 (arr!48782 (Array (_ BitVec 32) (_ BitVec 64))) (size!49333 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101099)

(declare-datatypes ((List!35445 0))(
  ( (Nil!35442) (Cons!35441 (h!36854 (_ BitVec 64)) (t!50146 List!35445)) )
))
(declare-fun arrayNoDuplicates!0 (array!101099 (_ BitVec 32) List!35445) Bool)

(assert (=> b!1518262 (= res!1038243 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35442))))

(declare-fun b!1518263 () Bool)

(declare-fun e!847025 () Bool)

(declare-fun e!847020 () Bool)

(assert (=> b!1518263 (= e!847025 (not e!847020))))

(declare-fun res!1038237 () Bool)

(assert (=> b!1518263 (=> res!1038237 e!847020)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1518263 (= res!1038237 (or (not (= (select (arr!48782 a!2804) j!70) (select (store (arr!48782 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!847023 () Bool)

(assert (=> b!1518263 e!847023))

(declare-fun res!1038242 () Bool)

(assert (=> b!1518263 (=> (not res!1038242) (not e!847023))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101099 (_ BitVec 32)) Bool)

(assert (=> b!1518263 (= res!1038242 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50772 0))(
  ( (Unit!50773) )
))
(declare-fun lt!658079 () Unit!50772)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101099 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50772)

(assert (=> b!1518263 (= lt!658079 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1038238 () Bool)

(assert (=> start!129330 (=> (not res!1038238) (not e!847022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129330 (= res!1038238 (validMask!0 mask!2512))))

(assert (=> start!129330 e!847022))

(assert (=> start!129330 true))

(declare-fun array_inv!37727 (array!101099) Bool)

(assert (=> start!129330 (array_inv!37727 a!2804)))

(declare-fun b!1518264 () Bool)

(declare-datatypes ((SeekEntryResult!12974 0))(
  ( (MissingZero!12974 (index!54290 (_ BitVec 32))) (Found!12974 (index!54291 (_ BitVec 32))) (Intermediate!12974 (undefined!13786 Bool) (index!54292 (_ BitVec 32)) (x!135977 (_ BitVec 32))) (Undefined!12974) (MissingVacant!12974 (index!54293 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101099 (_ BitVec 32)) SeekEntryResult!12974)

(assert (=> b!1518264 (= e!847023 (= (seekEntry!0 (select (arr!48782 a!2804) j!70) a!2804 mask!2512) (Found!12974 j!70)))))

(declare-fun b!1518265 () Bool)

(declare-fun res!1038244 () Bool)

(assert (=> b!1518265 (=> (not res!1038244) (not e!847022))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518265 (= res!1038244 (validKeyInArray!0 (select (arr!48782 a!2804) i!961)))))

(declare-fun b!1518266 () Bool)

(declare-fun e!847021 () Bool)

(assert (=> b!1518266 (= e!847021 true)))

(declare-fun lt!658077 () (_ BitVec 32))

(declare-fun lt!658080 () SeekEntryResult!12974)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101099 (_ BitVec 32)) SeekEntryResult!12974)

(assert (=> b!1518266 (= lt!658080 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658077 (select (arr!48782 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518267 () Bool)

(assert (=> b!1518267 (= e!847022 e!847025)))

(declare-fun res!1038247 () Bool)

(assert (=> b!1518267 (=> (not res!1038247) (not e!847025))))

(declare-fun lt!658081 () SeekEntryResult!12974)

(declare-fun lt!658078 () SeekEntryResult!12974)

(assert (=> b!1518267 (= res!1038247 (= lt!658081 lt!658078))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1518267 (= lt!658078 (Intermediate!12974 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518267 (= lt!658081 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48782 a!2804) j!70) mask!2512) (select (arr!48782 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518268 () Bool)

(declare-fun res!1038239 () Bool)

(assert (=> b!1518268 (=> (not res!1038239) (not e!847022))))

(assert (=> b!1518268 (= res!1038239 (validKeyInArray!0 (select (arr!48782 a!2804) j!70)))))

(declare-fun b!1518269 () Bool)

(declare-fun res!1038241 () Bool)

(assert (=> b!1518269 (=> (not res!1038241) (not e!847022))))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1518269 (= res!1038241 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49333 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49333 a!2804))))))

(declare-fun b!1518270 () Bool)

(declare-fun res!1038248 () Bool)

(assert (=> b!1518270 (=> (not res!1038248) (not e!847022))))

(assert (=> b!1518270 (= res!1038248 (and (= (size!49333 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49333 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49333 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1518271 () Bool)

(declare-fun res!1038245 () Bool)

(assert (=> b!1518271 (=> (not res!1038245) (not e!847025))))

(assert (=> b!1518271 (= res!1038245 (= lt!658081 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48782 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48782 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101100 (store (arr!48782 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49333 a!2804)) mask!2512)))))

(declare-fun b!1518272 () Bool)

(declare-fun res!1038240 () Bool)

(assert (=> b!1518272 (=> (not res!1038240) (not e!847022))))

(assert (=> b!1518272 (= res!1038240 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1518273 () Bool)

(declare-fun res!1038246 () Bool)

(assert (=> b!1518273 (=> (not res!1038246) (not e!847025))))

(assert (=> b!1518273 (= res!1038246 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48782 a!2804) j!70) a!2804 mask!2512) lt!658078))))

(declare-fun b!1518274 () Bool)

(assert (=> b!1518274 (= e!847020 e!847021)))

(declare-fun res!1038249 () Bool)

(assert (=> b!1518274 (=> res!1038249 e!847021)))

(assert (=> b!1518274 (= res!1038249 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658077 #b00000000000000000000000000000000) (bvsge lt!658077 (size!49333 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518274 (= lt!658077 (nextIndex!0 index!487 x!534 mask!2512))))

(assert (= (and start!129330 res!1038238) b!1518270))

(assert (= (and b!1518270 res!1038248) b!1518265))

(assert (= (and b!1518265 res!1038244) b!1518268))

(assert (= (and b!1518268 res!1038239) b!1518272))

(assert (= (and b!1518272 res!1038240) b!1518262))

(assert (= (and b!1518262 res!1038243) b!1518269))

(assert (= (and b!1518269 res!1038241) b!1518267))

(assert (= (and b!1518267 res!1038247) b!1518273))

(assert (= (and b!1518273 res!1038246) b!1518271))

(assert (= (and b!1518271 res!1038245) b!1518263))

(assert (= (and b!1518263 res!1038242) b!1518264))

(assert (= (and b!1518263 (not res!1038237)) b!1518274))

(assert (= (and b!1518274 (not res!1038249)) b!1518266))

(declare-fun m!1401631 () Bool)

(assert (=> b!1518265 m!1401631))

(assert (=> b!1518265 m!1401631))

(declare-fun m!1401633 () Bool)

(assert (=> b!1518265 m!1401633))

(declare-fun m!1401635 () Bool)

(assert (=> b!1518263 m!1401635))

(declare-fun m!1401637 () Bool)

(assert (=> b!1518263 m!1401637))

(declare-fun m!1401639 () Bool)

(assert (=> b!1518263 m!1401639))

(declare-fun m!1401641 () Bool)

(assert (=> b!1518263 m!1401641))

(declare-fun m!1401643 () Bool)

(assert (=> b!1518263 m!1401643))

(declare-fun m!1401645 () Bool)

(assert (=> b!1518262 m!1401645))

(assert (=> b!1518268 m!1401635))

(assert (=> b!1518268 m!1401635))

(declare-fun m!1401647 () Bool)

(assert (=> b!1518268 m!1401647))

(assert (=> b!1518267 m!1401635))

(assert (=> b!1518267 m!1401635))

(declare-fun m!1401649 () Bool)

(assert (=> b!1518267 m!1401649))

(assert (=> b!1518267 m!1401649))

(assert (=> b!1518267 m!1401635))

(declare-fun m!1401651 () Bool)

(assert (=> b!1518267 m!1401651))

(assert (=> b!1518264 m!1401635))

(assert (=> b!1518264 m!1401635))

(declare-fun m!1401653 () Bool)

(assert (=> b!1518264 m!1401653))

(declare-fun m!1401655 () Bool)

(assert (=> b!1518272 m!1401655))

(assert (=> b!1518271 m!1401639))

(assert (=> b!1518271 m!1401641))

(assert (=> b!1518271 m!1401641))

(declare-fun m!1401657 () Bool)

(assert (=> b!1518271 m!1401657))

(assert (=> b!1518271 m!1401657))

(assert (=> b!1518271 m!1401641))

(declare-fun m!1401659 () Bool)

(assert (=> b!1518271 m!1401659))

(assert (=> b!1518266 m!1401635))

(assert (=> b!1518266 m!1401635))

(declare-fun m!1401661 () Bool)

(assert (=> b!1518266 m!1401661))

(declare-fun m!1401663 () Bool)

(assert (=> b!1518274 m!1401663))

(declare-fun m!1401665 () Bool)

(assert (=> start!129330 m!1401665))

(declare-fun m!1401667 () Bool)

(assert (=> start!129330 m!1401667))

(assert (=> b!1518273 m!1401635))

(assert (=> b!1518273 m!1401635))

(declare-fun m!1401669 () Bool)

(assert (=> b!1518273 m!1401669))

(check-sat (not b!1518265) (not b!1518272) (not b!1518271) (not b!1518264) (not b!1518263) (not b!1518274) (not start!129330) (not b!1518262) (not b!1518268) (not b!1518266) (not b!1518273) (not b!1518267))
(check-sat)
