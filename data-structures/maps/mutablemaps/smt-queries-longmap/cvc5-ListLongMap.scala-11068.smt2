; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129286 () Bool)

(assert start!129286)

(declare-fun b!1517404 () Bool)

(declare-fun res!1037387 () Bool)

(declare-fun e!846624 () Bool)

(assert (=> b!1517404 (=> (not res!1037387) (not e!846624))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101055 0))(
  ( (array!101056 (arr!48760 (Array (_ BitVec 32) (_ BitVec 64))) (size!49311 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101055)

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12952 0))(
  ( (MissingZero!12952 (index!54202 (_ BitVec 32))) (Found!12952 (index!54203 (_ BitVec 32))) (Intermediate!12952 (undefined!13764 Bool) (index!54204 (_ BitVec 32)) (x!135899 (_ BitVec 32))) (Undefined!12952) (MissingVacant!12952 (index!54205 (_ BitVec 32))) )
))
(declare-fun lt!657750 () SeekEntryResult!12952)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101055 (_ BitVec 32)) SeekEntryResult!12952)

(assert (=> b!1517404 (= res!1037387 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48760 a!2804) j!70) a!2804 mask!2512) lt!657750))))

(declare-fun res!1037388 () Bool)

(declare-fun e!846628 () Bool)

(assert (=> start!129286 (=> (not res!1037388) (not e!846628))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129286 (= res!1037388 (validMask!0 mask!2512))))

(assert (=> start!129286 e!846628))

(assert (=> start!129286 true))

(declare-fun array_inv!37705 (array!101055) Bool)

(assert (=> start!129286 (array_inv!37705 a!2804)))

(declare-fun b!1517405 () Bool)

(declare-fun e!846629 () Bool)

(assert (=> b!1517405 (= e!846629 true)))

(declare-fun lt!657748 () SeekEntryResult!12952)

(declare-fun lt!657749 () (_ BitVec 32))

(assert (=> b!1517405 (= lt!657748 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657749 (select (arr!48760 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517406 () Bool)

(declare-fun res!1037386 () Bool)

(assert (=> b!1517406 (=> (not res!1037386) (not e!846628))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517406 (= res!1037386 (validKeyInArray!0 (select (arr!48760 a!2804) i!961)))))

(declare-fun b!1517407 () Bool)

(declare-fun e!846627 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101055 (_ BitVec 32)) SeekEntryResult!12952)

(assert (=> b!1517407 (= e!846627 (= (seekEntry!0 (select (arr!48760 a!2804) j!70) a!2804 mask!2512) (Found!12952 j!70)))))

(declare-fun b!1517408 () Bool)

(declare-fun res!1037389 () Bool)

(assert (=> b!1517408 (=> (not res!1037389) (not e!846628))))

(assert (=> b!1517408 (= res!1037389 (and (= (size!49311 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49311 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49311 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517409 () Bool)

(declare-fun res!1037391 () Bool)

(assert (=> b!1517409 (=> (not res!1037391) (not e!846628))))

(assert (=> b!1517409 (= res!1037391 (validKeyInArray!0 (select (arr!48760 a!2804) j!70)))))

(declare-fun b!1517410 () Bool)

(declare-fun res!1037390 () Bool)

(assert (=> b!1517410 (=> (not res!1037390) (not e!846628))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101055 (_ BitVec 32)) Bool)

(assert (=> b!1517410 (= res!1037390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517411 () Bool)

(assert (=> b!1517411 (= e!846628 e!846624)))

(declare-fun res!1037383 () Bool)

(assert (=> b!1517411 (=> (not res!1037383) (not e!846624))))

(declare-fun lt!657751 () SeekEntryResult!12952)

(assert (=> b!1517411 (= res!1037383 (= lt!657751 lt!657750))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1517411 (= lt!657750 (Intermediate!12952 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517411 (= lt!657751 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48760 a!2804) j!70) mask!2512) (select (arr!48760 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517412 () Bool)

(declare-fun e!846626 () Bool)

(assert (=> b!1517412 (= e!846626 e!846629)))

(declare-fun res!1037384 () Bool)

(assert (=> b!1517412 (=> res!1037384 e!846629)))

(assert (=> b!1517412 (= res!1037384 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657749 #b00000000000000000000000000000000) (bvsge lt!657749 (size!49311 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517412 (= lt!657749 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517413 () Bool)

(declare-fun res!1037380 () Bool)

(assert (=> b!1517413 (=> (not res!1037380) (not e!846624))))

(assert (=> b!1517413 (= res!1037380 (= lt!657751 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48760 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48760 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101056 (store (arr!48760 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49311 a!2804)) mask!2512)))))

(declare-fun b!1517414 () Bool)

(declare-fun res!1037385 () Bool)

(assert (=> b!1517414 (=> (not res!1037385) (not e!846628))))

(assert (=> b!1517414 (= res!1037385 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49311 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49311 a!2804))))))

(declare-fun b!1517415 () Bool)

(assert (=> b!1517415 (= e!846624 (not e!846626))))

(declare-fun res!1037382 () Bool)

(assert (=> b!1517415 (=> res!1037382 e!846626)))

(assert (=> b!1517415 (= res!1037382 (or (not (= (select (arr!48760 a!2804) j!70) (select (store (arr!48760 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1517415 e!846627))

(declare-fun res!1037381 () Bool)

(assert (=> b!1517415 (=> (not res!1037381) (not e!846627))))

(assert (=> b!1517415 (= res!1037381 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50728 0))(
  ( (Unit!50729) )
))
(declare-fun lt!657747 () Unit!50728)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101055 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50728)

(assert (=> b!1517415 (= lt!657747 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1517416 () Bool)

(declare-fun res!1037379 () Bool)

(assert (=> b!1517416 (=> (not res!1037379) (not e!846628))))

(declare-datatypes ((List!35423 0))(
  ( (Nil!35420) (Cons!35419 (h!36832 (_ BitVec 64)) (t!50124 List!35423)) )
))
(declare-fun arrayNoDuplicates!0 (array!101055 (_ BitVec 32) List!35423) Bool)

(assert (=> b!1517416 (= res!1037379 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35420))))

(assert (= (and start!129286 res!1037388) b!1517408))

(assert (= (and b!1517408 res!1037389) b!1517406))

(assert (= (and b!1517406 res!1037386) b!1517409))

(assert (= (and b!1517409 res!1037391) b!1517410))

(assert (= (and b!1517410 res!1037390) b!1517416))

(assert (= (and b!1517416 res!1037379) b!1517414))

(assert (= (and b!1517414 res!1037385) b!1517411))

(assert (= (and b!1517411 res!1037383) b!1517404))

(assert (= (and b!1517404 res!1037387) b!1517413))

(assert (= (and b!1517413 res!1037380) b!1517415))

(assert (= (and b!1517415 res!1037381) b!1517407))

(assert (= (and b!1517415 (not res!1037382)) b!1517412))

(assert (= (and b!1517412 (not res!1037384)) b!1517405))

(declare-fun m!1400751 () Bool)

(assert (=> b!1517416 m!1400751))

(declare-fun m!1400753 () Bool)

(assert (=> b!1517405 m!1400753))

(assert (=> b!1517405 m!1400753))

(declare-fun m!1400755 () Bool)

(assert (=> b!1517405 m!1400755))

(assert (=> b!1517404 m!1400753))

(assert (=> b!1517404 m!1400753))

(declare-fun m!1400757 () Bool)

(assert (=> b!1517404 m!1400757))

(declare-fun m!1400759 () Bool)

(assert (=> b!1517410 m!1400759))

(declare-fun m!1400761 () Bool)

(assert (=> b!1517413 m!1400761))

(declare-fun m!1400763 () Bool)

(assert (=> b!1517413 m!1400763))

(assert (=> b!1517413 m!1400763))

(declare-fun m!1400765 () Bool)

(assert (=> b!1517413 m!1400765))

(assert (=> b!1517413 m!1400765))

(assert (=> b!1517413 m!1400763))

(declare-fun m!1400767 () Bool)

(assert (=> b!1517413 m!1400767))

(declare-fun m!1400769 () Bool)

(assert (=> b!1517412 m!1400769))

(declare-fun m!1400771 () Bool)

(assert (=> start!129286 m!1400771))

(declare-fun m!1400773 () Bool)

(assert (=> start!129286 m!1400773))

(declare-fun m!1400775 () Bool)

(assert (=> b!1517406 m!1400775))

(assert (=> b!1517406 m!1400775))

(declare-fun m!1400777 () Bool)

(assert (=> b!1517406 m!1400777))

(assert (=> b!1517411 m!1400753))

(assert (=> b!1517411 m!1400753))

(declare-fun m!1400779 () Bool)

(assert (=> b!1517411 m!1400779))

(assert (=> b!1517411 m!1400779))

(assert (=> b!1517411 m!1400753))

(declare-fun m!1400781 () Bool)

(assert (=> b!1517411 m!1400781))

(assert (=> b!1517407 m!1400753))

(assert (=> b!1517407 m!1400753))

(declare-fun m!1400783 () Bool)

(assert (=> b!1517407 m!1400783))

(assert (=> b!1517415 m!1400753))

(declare-fun m!1400785 () Bool)

(assert (=> b!1517415 m!1400785))

(assert (=> b!1517415 m!1400761))

(assert (=> b!1517415 m!1400763))

(declare-fun m!1400787 () Bool)

(assert (=> b!1517415 m!1400787))

(assert (=> b!1517409 m!1400753))

(assert (=> b!1517409 m!1400753))

(declare-fun m!1400789 () Bool)

(assert (=> b!1517409 m!1400789))

(push 1)

