; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129328 () Bool)

(assert start!129328)

(declare-fun b!1518223 () Bool)

(declare-fun res!1038199 () Bool)

(declare-fun e!847004 () Bool)

(assert (=> b!1518223 (=> (not res!1038199) (not e!847004))))

(declare-datatypes ((array!101097 0))(
  ( (array!101098 (arr!48781 (Array (_ BitVec 32) (_ BitVec 64))) (size!49332 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101097)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518223 (= res!1038199 (validKeyInArray!0 (select (arr!48781 a!2804) i!961)))))

(declare-fun b!1518224 () Bool)

(declare-fun e!847005 () Bool)

(declare-fun e!847006 () Bool)

(assert (=> b!1518224 (= e!847005 (not e!847006))))

(declare-fun res!1038210 () Bool)

(assert (=> b!1518224 (=> res!1038210 e!847006)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1518224 (= res!1038210 (or (not (= (select (arr!48781 a!2804) j!70) (select (store (arr!48781 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!847002 () Bool)

(assert (=> b!1518224 e!847002))

(declare-fun res!1038202 () Bool)

(assert (=> b!1518224 (=> (not res!1038202) (not e!847002))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101097 (_ BitVec 32)) Bool)

(assert (=> b!1518224 (= res!1038202 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50770 0))(
  ( (Unit!50771) )
))
(declare-fun lt!658066 () Unit!50770)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101097 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50770)

(assert (=> b!1518224 (= lt!658066 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1518225 () Bool)

(declare-fun res!1038203 () Bool)

(assert (=> b!1518225 (=> (not res!1038203) (not e!847004))))

(assert (=> b!1518225 (= res!1038203 (validKeyInArray!0 (select (arr!48781 a!2804) j!70)))))

(declare-fun b!1518226 () Bool)

(declare-fun res!1038209 () Bool)

(assert (=> b!1518226 (=> (not res!1038209) (not e!847004))))

(declare-datatypes ((List!35444 0))(
  ( (Nil!35441) (Cons!35440 (h!36853 (_ BitVec 64)) (t!50145 List!35444)) )
))
(declare-fun arrayNoDuplicates!0 (array!101097 (_ BitVec 32) List!35444) Bool)

(assert (=> b!1518226 (= res!1038209 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35441))))

(declare-fun b!1518227 () Bool)

(declare-fun res!1038205 () Bool)

(assert (=> b!1518227 (=> (not res!1038205) (not e!847004))))

(assert (=> b!1518227 (= res!1038205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1518228 () Bool)

(declare-fun res!1038200 () Bool)

(assert (=> b!1518228 (=> (not res!1038200) (not e!847004))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1518228 (= res!1038200 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49332 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49332 a!2804))))))

(declare-fun b!1518229 () Bool)

(declare-fun res!1038198 () Bool)

(assert (=> b!1518229 (=> (not res!1038198) (not e!847005))))

(declare-datatypes ((SeekEntryResult!12973 0))(
  ( (MissingZero!12973 (index!54286 (_ BitVec 32))) (Found!12973 (index!54287 (_ BitVec 32))) (Intermediate!12973 (undefined!13785 Bool) (index!54288 (_ BitVec 32)) (x!135976 (_ BitVec 32))) (Undefined!12973) (MissingVacant!12973 (index!54289 (_ BitVec 32))) )
))
(declare-fun lt!658063 () SeekEntryResult!12973)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101097 (_ BitVec 32)) SeekEntryResult!12973)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518229 (= res!1038198 (= lt!658063 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48781 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48781 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101098 (store (arr!48781 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49332 a!2804)) mask!2512)))))

(declare-fun b!1518230 () Bool)

(assert (=> b!1518230 (= e!847004 e!847005)))

(declare-fun res!1038208 () Bool)

(assert (=> b!1518230 (=> (not res!1038208) (not e!847005))))

(declare-fun lt!658062 () SeekEntryResult!12973)

(assert (=> b!1518230 (= res!1038208 (= lt!658063 lt!658062))))

(assert (=> b!1518230 (= lt!658062 (Intermediate!12973 false resIndex!21 resX!21))))

(assert (=> b!1518230 (= lt!658063 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48781 a!2804) j!70) mask!2512) (select (arr!48781 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1038201 () Bool)

(assert (=> start!129328 (=> (not res!1038201) (not e!847004))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129328 (= res!1038201 (validMask!0 mask!2512))))

(assert (=> start!129328 e!847004))

(assert (=> start!129328 true))

(declare-fun array_inv!37726 (array!101097) Bool)

(assert (=> start!129328 (array_inv!37726 a!2804)))

(declare-fun b!1518231 () Bool)

(declare-fun e!847007 () Bool)

(assert (=> b!1518231 (= e!847006 e!847007)))

(declare-fun res!1038206 () Bool)

(assert (=> b!1518231 (=> res!1038206 e!847007)))

(declare-fun lt!658065 () (_ BitVec 32))

(assert (=> b!1518231 (= res!1038206 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658065 #b00000000000000000000000000000000) (bvsge lt!658065 (size!49332 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518231 (= lt!658065 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1518232 () Bool)

(assert (=> b!1518232 (= e!847007 true)))

(declare-fun lt!658064 () SeekEntryResult!12973)

(assert (=> b!1518232 (= lt!658064 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658065 (select (arr!48781 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518233 () Bool)

(declare-fun res!1038207 () Bool)

(assert (=> b!1518233 (=> (not res!1038207) (not e!847005))))

(assert (=> b!1518233 (= res!1038207 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48781 a!2804) j!70) a!2804 mask!2512) lt!658062))))

(declare-fun b!1518234 () Bool)

(declare-fun res!1038204 () Bool)

(assert (=> b!1518234 (=> (not res!1038204) (not e!847004))))

(assert (=> b!1518234 (= res!1038204 (and (= (size!49332 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49332 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49332 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1518235 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101097 (_ BitVec 32)) SeekEntryResult!12973)

(assert (=> b!1518235 (= e!847002 (= (seekEntry!0 (select (arr!48781 a!2804) j!70) a!2804 mask!2512) (Found!12973 j!70)))))

(assert (= (and start!129328 res!1038201) b!1518234))

(assert (= (and b!1518234 res!1038204) b!1518223))

(assert (= (and b!1518223 res!1038199) b!1518225))

(assert (= (and b!1518225 res!1038203) b!1518227))

(assert (= (and b!1518227 res!1038205) b!1518226))

(assert (= (and b!1518226 res!1038209) b!1518228))

(assert (= (and b!1518228 res!1038200) b!1518230))

(assert (= (and b!1518230 res!1038208) b!1518233))

(assert (= (and b!1518233 res!1038207) b!1518229))

(assert (= (and b!1518229 res!1038198) b!1518224))

(assert (= (and b!1518224 res!1038202) b!1518235))

(assert (= (and b!1518224 (not res!1038210)) b!1518231))

(assert (= (and b!1518231 (not res!1038206)) b!1518232))

(declare-fun m!1401591 () Bool)

(assert (=> b!1518233 m!1401591))

(assert (=> b!1518233 m!1401591))

(declare-fun m!1401593 () Bool)

(assert (=> b!1518233 m!1401593))

(assert (=> b!1518225 m!1401591))

(assert (=> b!1518225 m!1401591))

(declare-fun m!1401595 () Bool)

(assert (=> b!1518225 m!1401595))

(assert (=> b!1518224 m!1401591))

(declare-fun m!1401597 () Bool)

(assert (=> b!1518224 m!1401597))

(declare-fun m!1401599 () Bool)

(assert (=> b!1518224 m!1401599))

(declare-fun m!1401601 () Bool)

(assert (=> b!1518224 m!1401601))

(declare-fun m!1401603 () Bool)

(assert (=> b!1518224 m!1401603))

(declare-fun m!1401605 () Bool)

(assert (=> b!1518226 m!1401605))

(declare-fun m!1401607 () Bool)

(assert (=> start!129328 m!1401607))

(declare-fun m!1401609 () Bool)

(assert (=> start!129328 m!1401609))

(assert (=> b!1518229 m!1401599))

(assert (=> b!1518229 m!1401601))

(assert (=> b!1518229 m!1401601))

(declare-fun m!1401611 () Bool)

(assert (=> b!1518229 m!1401611))

(assert (=> b!1518229 m!1401611))

(assert (=> b!1518229 m!1401601))

(declare-fun m!1401613 () Bool)

(assert (=> b!1518229 m!1401613))

(declare-fun m!1401615 () Bool)

(assert (=> b!1518223 m!1401615))

(assert (=> b!1518223 m!1401615))

(declare-fun m!1401617 () Bool)

(assert (=> b!1518223 m!1401617))

(assert (=> b!1518232 m!1401591))

(assert (=> b!1518232 m!1401591))

(declare-fun m!1401619 () Bool)

(assert (=> b!1518232 m!1401619))

(declare-fun m!1401621 () Bool)

(assert (=> b!1518231 m!1401621))

(assert (=> b!1518235 m!1401591))

(assert (=> b!1518235 m!1401591))

(declare-fun m!1401623 () Bool)

(assert (=> b!1518235 m!1401623))

(assert (=> b!1518230 m!1401591))

(assert (=> b!1518230 m!1401591))

(declare-fun m!1401625 () Bool)

(assert (=> b!1518230 m!1401625))

(assert (=> b!1518230 m!1401625))

(assert (=> b!1518230 m!1401591))

(declare-fun m!1401627 () Bool)

(assert (=> b!1518230 m!1401627))

(declare-fun m!1401629 () Bool)

(assert (=> b!1518227 m!1401629))

(push 1)

