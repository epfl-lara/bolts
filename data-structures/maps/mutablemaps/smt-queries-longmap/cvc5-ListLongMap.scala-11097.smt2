; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129636 () Bool)

(assert start!129636)

(declare-fun b!1521335 () Bool)

(declare-fun res!1040699 () Bool)

(declare-fun e!848488 () Bool)

(assert (=> b!1521335 (=> (not res!1040699) (not e!848488))))

(declare-datatypes ((array!101238 0))(
  ( (array!101239 (arr!48847 (Array (_ BitVec 32) (_ BitVec 64))) (size!49398 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101238)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521335 (= res!1040699 (validKeyInArray!0 (select (arr!48847 a!2804) j!70)))))

(declare-fun b!1521336 () Bool)

(declare-fun e!848489 () Bool)

(assert (=> b!1521336 (= e!848488 e!848489)))

(declare-fun res!1040700 () Bool)

(assert (=> b!1521336 (=> (not res!1040700) (not e!848489))))

(declare-datatypes ((SeekEntryResult!13033 0))(
  ( (MissingZero!13033 (index!54526 (_ BitVec 32))) (Found!13033 (index!54527 (_ BitVec 32))) (Intermediate!13033 (undefined!13845 Bool) (index!54528 (_ BitVec 32)) (x!136232 (_ BitVec 32))) (Undefined!13033) (MissingVacant!13033 (index!54529 (_ BitVec 32))) )
))
(declare-fun lt!659277 () SeekEntryResult!13033)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101238 (_ BitVec 32)) SeekEntryResult!13033)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521336 (= res!1040700 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48847 a!2804) j!70) mask!2512) (select (arr!48847 a!2804) j!70) a!2804 mask!2512) lt!659277))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1521336 (= lt!659277 (Intermediate!13033 false resIndex!21 resX!21))))

(declare-fun b!1521337 () Bool)

(declare-fun res!1040697 () Bool)

(assert (=> b!1521337 (=> (not res!1040697) (not e!848488))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101238 (_ BitVec 32)) Bool)

(assert (=> b!1521337 (= res!1040697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1040701 () Bool)

(assert (=> start!129636 (=> (not res!1040701) (not e!848488))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129636 (= res!1040701 (validMask!0 mask!2512))))

(assert (=> start!129636 e!848488))

(assert (=> start!129636 true))

(declare-fun array_inv!37792 (array!101238) Bool)

(assert (=> start!129636 (array_inv!37792 a!2804)))

(declare-fun b!1521338 () Bool)

(declare-fun res!1040703 () Bool)

(assert (=> b!1521338 (=> (not res!1040703) (not e!848488))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1521338 (= res!1040703 (validKeyInArray!0 (select (arr!48847 a!2804) i!961)))))

(declare-fun b!1521339 () Bool)

(declare-fun res!1040698 () Bool)

(assert (=> b!1521339 (=> (not res!1040698) (not e!848489))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1521339 (= res!1040698 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48847 a!2804) j!70) a!2804 mask!2512) lt!659277))))

(declare-fun b!1521340 () Bool)

(declare-fun res!1040695 () Bool)

(assert (=> b!1521340 (=> (not res!1040695) (not e!848488))))

(declare-datatypes ((List!35510 0))(
  ( (Nil!35507) (Cons!35506 (h!36928 (_ BitVec 64)) (t!50211 List!35510)) )
))
(declare-fun arrayNoDuplicates!0 (array!101238 (_ BitVec 32) List!35510) Bool)

(assert (=> b!1521340 (= res!1040695 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35507))))

(declare-fun b!1521341 () Bool)

(assert (=> b!1521341 (= e!848489 false)))

(declare-fun lt!659278 () (_ BitVec 32))

(assert (=> b!1521341 (= lt!659278 (toIndex!0 (select (store (arr!48847 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun b!1521342 () Bool)

(declare-fun res!1040702 () Bool)

(assert (=> b!1521342 (=> (not res!1040702) (not e!848488))))

(assert (=> b!1521342 (= res!1040702 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49398 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49398 a!2804))))))

(declare-fun b!1521343 () Bool)

(declare-fun res!1040696 () Bool)

(assert (=> b!1521343 (=> (not res!1040696) (not e!848488))))

(assert (=> b!1521343 (= res!1040696 (and (= (size!49398 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49398 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49398 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129636 res!1040701) b!1521343))

(assert (= (and b!1521343 res!1040696) b!1521338))

(assert (= (and b!1521338 res!1040703) b!1521335))

(assert (= (and b!1521335 res!1040699) b!1521337))

(assert (= (and b!1521337 res!1040697) b!1521340))

(assert (= (and b!1521340 res!1040695) b!1521342))

(assert (= (and b!1521342 res!1040702) b!1521336))

(assert (= (and b!1521336 res!1040700) b!1521339))

(assert (= (and b!1521339 res!1040698) b!1521341))

(declare-fun m!1404473 () Bool)

(assert (=> b!1521341 m!1404473))

(declare-fun m!1404475 () Bool)

(assert (=> b!1521341 m!1404475))

(assert (=> b!1521341 m!1404475))

(declare-fun m!1404477 () Bool)

(assert (=> b!1521341 m!1404477))

(declare-fun m!1404479 () Bool)

(assert (=> b!1521337 m!1404479))

(declare-fun m!1404481 () Bool)

(assert (=> b!1521340 m!1404481))

(declare-fun m!1404483 () Bool)

(assert (=> b!1521336 m!1404483))

(assert (=> b!1521336 m!1404483))

(declare-fun m!1404485 () Bool)

(assert (=> b!1521336 m!1404485))

(assert (=> b!1521336 m!1404485))

(assert (=> b!1521336 m!1404483))

(declare-fun m!1404487 () Bool)

(assert (=> b!1521336 m!1404487))

(assert (=> b!1521339 m!1404483))

(assert (=> b!1521339 m!1404483))

(declare-fun m!1404489 () Bool)

(assert (=> b!1521339 m!1404489))

(declare-fun m!1404491 () Bool)

(assert (=> start!129636 m!1404491))

(declare-fun m!1404493 () Bool)

(assert (=> start!129636 m!1404493))

(declare-fun m!1404495 () Bool)

(assert (=> b!1521338 m!1404495))

(assert (=> b!1521338 m!1404495))

(declare-fun m!1404497 () Bool)

(assert (=> b!1521338 m!1404497))

(assert (=> b!1521335 m!1404483))

(assert (=> b!1521335 m!1404483))

(declare-fun m!1404499 () Bool)

(assert (=> b!1521335 m!1404499))

(push 1)

