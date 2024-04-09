; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125296 () Bool)

(assert start!125296)

(declare-fun b!1461769 () Bool)

(declare-fun res!991431 () Bool)

(declare-fun e!821791 () Bool)

(assert (=> b!1461769 (=> (not res!991431) (not e!821791))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11889 0))(
  ( (MissingZero!11889 (index!49947 (_ BitVec 32))) (Found!11889 (index!49948 (_ BitVec 32))) (Intermediate!11889 (undefined!12701 Bool) (index!49949 (_ BitVec 32)) (x!131549 (_ BitVec 32))) (Undefined!11889) (MissingVacant!11889 (index!49950 (_ BitVec 32))) )
))
(declare-fun lt!640204 () SeekEntryResult!11889)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98661 0))(
  ( (array!98662 (arr!47614 (Array (_ BitVec 32) (_ BitVec 64))) (size!48165 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98661)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98661 (_ BitVec 32)) SeekEntryResult!11889)

(assert (=> b!1461769 (= res!991431 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47614 a!2862) j!93) a!2862 mask!2687) lt!640204))))

(declare-fun b!1461770 () Bool)

(declare-fun res!991434 () Bool)

(declare-fun e!821784 () Bool)

(assert (=> b!1461770 (=> (not res!991434) (not e!821784))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98661 (_ BitVec 32)) SeekEntryResult!11889)

(assert (=> b!1461770 (= res!991434 (= (seekEntryOrOpen!0 (select (arr!47614 a!2862) j!93) a!2862 mask!2687) (Found!11889 j!93)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1461771 () Bool)

(assert (=> b!1461771 (= e!821784 (or (= (select (arr!47614 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47614 a!2862) intermediateBeforeIndex!19) (select (arr!47614 a!2862) j!93))))))

(declare-fun b!1461772 () Bool)

(declare-fun e!821785 () Bool)

(declare-fun e!821790 () Bool)

(assert (=> b!1461772 (= e!821785 (not e!821790))))

(declare-fun res!991422 () Bool)

(assert (=> b!1461772 (=> res!991422 e!821790)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1461772 (= res!991422 (or (and (= (select (arr!47614 a!2862) index!646) (select (store (arr!47614 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47614 a!2862) index!646) (select (arr!47614 a!2862) j!93))) (= (select (arr!47614 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1461772 e!821784))

(declare-fun res!991426 () Bool)

(assert (=> b!1461772 (=> (not res!991426) (not e!821784))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98661 (_ BitVec 32)) Bool)

(assert (=> b!1461772 (= res!991426 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49222 0))(
  ( (Unit!49223) )
))
(declare-fun lt!640201 () Unit!49222)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98661 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49222)

(assert (=> b!1461772 (= lt!640201 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1461773 () Bool)

(declare-fun e!821788 () Bool)

(declare-fun e!821783 () Bool)

(assert (=> b!1461773 (= e!821788 e!821783)))

(declare-fun res!991417 () Bool)

(assert (=> b!1461773 (=> (not res!991417) (not e!821783))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1461773 (= res!991417 (= (select (store (arr!47614 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!640203 () array!98661)

(assert (=> b!1461773 (= lt!640203 (array!98662 (store (arr!47614 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48165 a!2862)))))

(declare-fun b!1461774 () Bool)

(declare-fun e!821792 () Bool)

(assert (=> b!1461774 (= e!821790 e!821792)))

(declare-fun res!991433 () Bool)

(assert (=> b!1461774 (=> res!991433 e!821792)))

(declare-fun lt!640206 () (_ BitVec 32))

(assert (=> b!1461774 (= res!991433 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640206 #b00000000000000000000000000000000) (bvsge lt!640206 (size!48165 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461774 (= lt!640206 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1461775 () Bool)

(declare-fun res!991428 () Bool)

(assert (=> b!1461775 (=> (not res!991428) (not e!821788))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1461775 (= res!991428 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48165 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48165 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48165 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1461776 () Bool)

(declare-fun res!991430 () Bool)

(assert (=> b!1461776 (=> (not res!991430) (not e!821785))))

(assert (=> b!1461776 (= res!991430 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1461777 () Bool)

(declare-fun res!991425 () Bool)

(assert (=> b!1461777 (=> (not res!991425) (not e!821785))))

(declare-fun e!821786 () Bool)

(assert (=> b!1461777 (= res!991425 e!821786)))

(declare-fun c!134690 () Bool)

(assert (=> b!1461777 (= c!134690 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!991424 () Bool)

(assert (=> start!125296 (=> (not res!991424) (not e!821788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125296 (= res!991424 (validMask!0 mask!2687))))

(assert (=> start!125296 e!821788))

(assert (=> start!125296 true))

(declare-fun array_inv!36559 (array!98661) Bool)

(assert (=> start!125296 (array_inv!36559 a!2862)))

(declare-fun b!1461778 () Bool)

(declare-fun lt!640202 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98661 (_ BitVec 32)) SeekEntryResult!11889)

(assert (=> b!1461778 (= e!821786 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640202 lt!640203 mask!2687) (seekEntryOrOpen!0 lt!640202 lt!640203 mask!2687)))))

(declare-fun b!1461779 () Bool)

(declare-fun res!991429 () Bool)

(assert (=> b!1461779 (=> res!991429 e!821792)))

(assert (=> b!1461779 (= res!991429 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640206 (select (arr!47614 a!2862) j!93) a!2862 mask!2687) lt!640204)))))

(declare-fun b!1461780 () Bool)

(assert (=> b!1461780 (= e!821783 e!821791)))

(declare-fun res!991423 () Bool)

(assert (=> b!1461780 (=> (not res!991423) (not e!821791))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461780 (= res!991423 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47614 a!2862) j!93) mask!2687) (select (arr!47614 a!2862) j!93) a!2862 mask!2687) lt!640204))))

(assert (=> b!1461780 (= lt!640204 (Intermediate!11889 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1461781 () Bool)

(declare-fun res!991421 () Bool)

(assert (=> b!1461781 (=> (not res!991421) (not e!821788))))

(assert (=> b!1461781 (= res!991421 (and (= (size!48165 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48165 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48165 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1461782 () Bool)

(declare-fun res!991420 () Bool)

(assert (=> b!1461782 (=> (not res!991420) (not e!821788))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1461782 (= res!991420 (validKeyInArray!0 (select (arr!47614 a!2862) j!93)))))

(declare-fun b!1461783 () Bool)

(assert (=> b!1461783 (= e!821792 true)))

(declare-fun lt!640205 () Bool)

(declare-fun e!821787 () Bool)

(assert (=> b!1461783 (= lt!640205 e!821787)))

(declare-fun c!134689 () Bool)

(assert (=> b!1461783 (= c!134689 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1461784 () Bool)

(assert (=> b!1461784 (= e!821791 e!821785)))

(declare-fun res!991432 () Bool)

(assert (=> b!1461784 (=> (not res!991432) (not e!821785))))

(declare-fun lt!640207 () SeekEntryResult!11889)

(assert (=> b!1461784 (= res!991432 (= lt!640207 (Intermediate!11889 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1461784 (= lt!640207 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640202 mask!2687) lt!640202 lt!640203 mask!2687))))

(assert (=> b!1461784 (= lt!640202 (select (store (arr!47614 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1461785 () Bool)

(assert (=> b!1461785 (= e!821787 (not (= lt!640207 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640206 lt!640202 lt!640203 mask!2687))))))

(declare-fun b!1461786 () Bool)

(declare-fun res!991418 () Bool)

(assert (=> b!1461786 (=> (not res!991418) (not e!821788))))

(declare-datatypes ((List!34295 0))(
  ( (Nil!34292) (Cons!34291 (h!35641 (_ BitVec 64)) (t!48996 List!34295)) )
))
(declare-fun arrayNoDuplicates!0 (array!98661 (_ BitVec 32) List!34295) Bool)

(assert (=> b!1461786 (= res!991418 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34292))))

(declare-fun b!1461787 () Bool)

(assert (=> b!1461787 (= e!821787 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640206 intermediateAfterIndex!19 lt!640202 lt!640203 mask!2687) (seekEntryOrOpen!0 lt!640202 lt!640203 mask!2687))))))

(declare-fun b!1461788 () Bool)

(declare-fun res!991427 () Bool)

(assert (=> b!1461788 (=> (not res!991427) (not e!821788))))

(assert (=> b!1461788 (= res!991427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1461789 () Bool)

(declare-fun res!991419 () Bool)

(assert (=> b!1461789 (=> (not res!991419) (not e!821788))))

(assert (=> b!1461789 (= res!991419 (validKeyInArray!0 (select (arr!47614 a!2862) i!1006)))))

(declare-fun b!1461790 () Bool)

(assert (=> b!1461790 (= e!821786 (= lt!640207 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640202 lt!640203 mask!2687)))))

(assert (= (and start!125296 res!991424) b!1461781))

(assert (= (and b!1461781 res!991421) b!1461789))

(assert (= (and b!1461789 res!991419) b!1461782))

(assert (= (and b!1461782 res!991420) b!1461788))

(assert (= (and b!1461788 res!991427) b!1461786))

(assert (= (and b!1461786 res!991418) b!1461775))

(assert (= (and b!1461775 res!991428) b!1461773))

(assert (= (and b!1461773 res!991417) b!1461780))

(assert (= (and b!1461780 res!991423) b!1461769))

(assert (= (and b!1461769 res!991431) b!1461784))

(assert (= (and b!1461784 res!991432) b!1461777))

(assert (= (and b!1461777 c!134690) b!1461790))

(assert (= (and b!1461777 (not c!134690)) b!1461778))

(assert (= (and b!1461777 res!991425) b!1461776))

(assert (= (and b!1461776 res!991430) b!1461772))

(assert (= (and b!1461772 res!991426) b!1461770))

(assert (= (and b!1461770 res!991434) b!1461771))

(assert (= (and b!1461772 (not res!991422)) b!1461774))

(assert (= (and b!1461774 (not res!991433)) b!1461779))

(assert (= (and b!1461779 (not res!991429)) b!1461783))

(assert (= (and b!1461783 c!134689) b!1461785))

(assert (= (and b!1461783 (not c!134689)) b!1461787))

(declare-fun m!1349355 () Bool)

(assert (=> b!1461770 m!1349355))

(assert (=> b!1461770 m!1349355))

(declare-fun m!1349357 () Bool)

(assert (=> b!1461770 m!1349357))

(declare-fun m!1349359 () Bool)

(assert (=> b!1461790 m!1349359))

(declare-fun m!1349361 () Bool)

(assert (=> b!1461788 m!1349361))

(assert (=> b!1461780 m!1349355))

(assert (=> b!1461780 m!1349355))

(declare-fun m!1349363 () Bool)

(assert (=> b!1461780 m!1349363))

(assert (=> b!1461780 m!1349363))

(assert (=> b!1461780 m!1349355))

(declare-fun m!1349365 () Bool)

(assert (=> b!1461780 m!1349365))

(declare-fun m!1349367 () Bool)

(assert (=> b!1461785 m!1349367))

(declare-fun m!1349369 () Bool)

(assert (=> b!1461784 m!1349369))

(assert (=> b!1461784 m!1349369))

(declare-fun m!1349371 () Bool)

(assert (=> b!1461784 m!1349371))

(declare-fun m!1349373 () Bool)

(assert (=> b!1461784 m!1349373))

(declare-fun m!1349375 () Bool)

(assert (=> b!1461784 m!1349375))

(declare-fun m!1349377 () Bool)

(assert (=> b!1461771 m!1349377))

(assert (=> b!1461771 m!1349355))

(declare-fun m!1349379 () Bool)

(assert (=> b!1461786 m!1349379))

(assert (=> b!1461782 m!1349355))

(assert (=> b!1461782 m!1349355))

(declare-fun m!1349381 () Bool)

(assert (=> b!1461782 m!1349381))

(declare-fun m!1349383 () Bool)

(assert (=> start!125296 m!1349383))

(declare-fun m!1349385 () Bool)

(assert (=> start!125296 m!1349385))

(assert (=> b!1461773 m!1349373))

(declare-fun m!1349387 () Bool)

(assert (=> b!1461773 m!1349387))

(declare-fun m!1349389 () Bool)

(assert (=> b!1461787 m!1349389))

(declare-fun m!1349391 () Bool)

(assert (=> b!1461787 m!1349391))

(assert (=> b!1461779 m!1349355))

(assert (=> b!1461779 m!1349355))

(declare-fun m!1349393 () Bool)

(assert (=> b!1461779 m!1349393))

(assert (=> b!1461769 m!1349355))

(assert (=> b!1461769 m!1349355))

(declare-fun m!1349395 () Bool)

(assert (=> b!1461769 m!1349395))

(declare-fun m!1349397 () Bool)

(assert (=> b!1461774 m!1349397))

(declare-fun m!1349399 () Bool)

(assert (=> b!1461772 m!1349399))

(assert (=> b!1461772 m!1349373))

(declare-fun m!1349401 () Bool)

(assert (=> b!1461772 m!1349401))

(declare-fun m!1349403 () Bool)

(assert (=> b!1461772 m!1349403))

(declare-fun m!1349405 () Bool)

(assert (=> b!1461772 m!1349405))

(assert (=> b!1461772 m!1349355))

(declare-fun m!1349407 () Bool)

(assert (=> b!1461778 m!1349407))

(assert (=> b!1461778 m!1349391))

(declare-fun m!1349409 () Bool)

(assert (=> b!1461789 m!1349409))

(assert (=> b!1461789 m!1349409))

(declare-fun m!1349411 () Bool)

(assert (=> b!1461789 m!1349411))

(push 1)

