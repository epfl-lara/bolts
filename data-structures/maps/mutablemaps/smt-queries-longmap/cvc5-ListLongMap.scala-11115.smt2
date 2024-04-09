; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129826 () Bool)

(assert start!129826)

(declare-fun b!1523451 () Bool)

(declare-fun res!1042501 () Bool)

(declare-fun e!849344 () Bool)

(assert (=> b!1523451 (=> (not res!1042501) (not e!849344))))

(declare-datatypes ((array!101349 0))(
  ( (array!101350 (arr!48901 (Array (_ BitVec 32) (_ BitVec 64))) (size!49452 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101349)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1523451 (= res!1042501 (validKeyInArray!0 (select (arr!48901 a!2804) j!70)))))

(declare-fun b!1523452 () Bool)

(declare-fun res!1042503 () Bool)

(declare-fun e!849342 () Bool)

(assert (=> b!1523452 (=> (not res!1042503) (not e!849342))))

(declare-datatypes ((SeekEntryResult!13087 0))(
  ( (MissingZero!13087 (index!54742 (_ BitVec 32))) (Found!13087 (index!54743 (_ BitVec 32))) (Intermediate!13087 (undefined!13899 Bool) (index!54744 (_ BitVec 32)) (x!136440 (_ BitVec 32))) (Undefined!13087) (MissingVacant!13087 (index!54745 (_ BitVec 32))) )
))
(declare-fun lt!659913 () SeekEntryResult!13087)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101349 (_ BitVec 32)) SeekEntryResult!13087)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523452 (= res!1042503 (= lt!659913 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48901 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48901 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101350 (store (arr!48901 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49452 a!2804)) mask!2512)))))

(declare-fun b!1523453 () Bool)

(declare-fun res!1042502 () Bool)

(assert (=> b!1523453 (=> (not res!1042502) (not e!849344))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101349 (_ BitVec 32)) Bool)

(assert (=> b!1523453 (= res!1042502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1042499 () Bool)

(assert (=> start!129826 (=> (not res!1042499) (not e!849344))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129826 (= res!1042499 (validMask!0 mask!2512))))

(assert (=> start!129826 e!849344))

(assert (=> start!129826 true))

(declare-fun array_inv!37846 (array!101349) Bool)

(assert (=> start!129826 (array_inv!37846 a!2804)))

(declare-fun b!1523454 () Bool)

(declare-fun res!1042505 () Bool)

(assert (=> b!1523454 (=> (not res!1042505) (not e!849344))))

(assert (=> b!1523454 (= res!1042505 (and (= (size!49452 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49452 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49452 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1523455 () Bool)

(declare-fun e!849343 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101349 (_ BitVec 32)) SeekEntryResult!13087)

(assert (=> b!1523455 (= e!849343 (= (seekEntry!0 (select (arr!48901 a!2804) j!70) a!2804 mask!2512) (Found!13087 j!70)))))

(declare-fun b!1523456 () Bool)

(assert (=> b!1523456 (= e!849344 e!849342)))

(declare-fun res!1042500 () Bool)

(assert (=> b!1523456 (=> (not res!1042500) (not e!849342))))

(declare-fun lt!659914 () SeekEntryResult!13087)

(assert (=> b!1523456 (= res!1042500 (= lt!659913 lt!659914))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1523456 (= lt!659914 (Intermediate!13087 false resIndex!21 resX!21))))

(assert (=> b!1523456 (= lt!659913 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48901 a!2804) j!70) mask!2512) (select (arr!48901 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1523457 () Bool)

(declare-fun res!1042496 () Bool)

(assert (=> b!1523457 (=> (not res!1042496) (not e!849342))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1523457 (= res!1042496 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48901 a!2804) j!70) a!2804 mask!2512) lt!659914))))

(declare-fun b!1523458 () Bool)

(assert (=> b!1523458 (= e!849342 (not true))))

(assert (=> b!1523458 e!849343))

(declare-fun res!1042498 () Bool)

(assert (=> b!1523458 (=> (not res!1042498) (not e!849343))))

(assert (=> b!1523458 (= res!1042498 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50914 0))(
  ( (Unit!50915) )
))
(declare-fun lt!659912 () Unit!50914)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101349 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50914)

(assert (=> b!1523458 (= lt!659912 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1523459 () Bool)

(declare-fun res!1042504 () Bool)

(assert (=> b!1523459 (=> (not res!1042504) (not e!849344))))

(assert (=> b!1523459 (= res!1042504 (validKeyInArray!0 (select (arr!48901 a!2804) i!961)))))

(declare-fun b!1523460 () Bool)

(declare-fun res!1042506 () Bool)

(assert (=> b!1523460 (=> (not res!1042506) (not e!849344))))

(declare-datatypes ((List!35564 0))(
  ( (Nil!35561) (Cons!35560 (h!36985 (_ BitVec 64)) (t!50265 List!35564)) )
))
(declare-fun arrayNoDuplicates!0 (array!101349 (_ BitVec 32) List!35564) Bool)

(assert (=> b!1523460 (= res!1042506 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35561))))

(declare-fun b!1523461 () Bool)

(declare-fun res!1042497 () Bool)

(assert (=> b!1523461 (=> (not res!1042497) (not e!849344))))

(assert (=> b!1523461 (= res!1042497 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49452 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49452 a!2804))))))

(assert (= (and start!129826 res!1042499) b!1523454))

(assert (= (and b!1523454 res!1042505) b!1523459))

(assert (= (and b!1523459 res!1042504) b!1523451))

(assert (= (and b!1523451 res!1042501) b!1523453))

(assert (= (and b!1523453 res!1042502) b!1523460))

(assert (= (and b!1523460 res!1042506) b!1523461))

(assert (= (and b!1523461 res!1042497) b!1523456))

(assert (= (and b!1523456 res!1042500) b!1523457))

(assert (= (and b!1523457 res!1042496) b!1523452))

(assert (= (and b!1523452 res!1042503) b!1523458))

(assert (= (and b!1523458 res!1042498) b!1523455))

(declare-fun m!1406631 () Bool)

(assert (=> b!1523452 m!1406631))

(declare-fun m!1406633 () Bool)

(assert (=> b!1523452 m!1406633))

(assert (=> b!1523452 m!1406633))

(declare-fun m!1406635 () Bool)

(assert (=> b!1523452 m!1406635))

(assert (=> b!1523452 m!1406635))

(assert (=> b!1523452 m!1406633))

(declare-fun m!1406637 () Bool)

(assert (=> b!1523452 m!1406637))

(declare-fun m!1406639 () Bool)

(assert (=> b!1523460 m!1406639))

(declare-fun m!1406641 () Bool)

(assert (=> start!129826 m!1406641))

(declare-fun m!1406643 () Bool)

(assert (=> start!129826 m!1406643))

(declare-fun m!1406645 () Bool)

(assert (=> b!1523458 m!1406645))

(declare-fun m!1406647 () Bool)

(assert (=> b!1523458 m!1406647))

(declare-fun m!1406649 () Bool)

(assert (=> b!1523453 m!1406649))

(declare-fun m!1406651 () Bool)

(assert (=> b!1523457 m!1406651))

(assert (=> b!1523457 m!1406651))

(declare-fun m!1406653 () Bool)

(assert (=> b!1523457 m!1406653))

(declare-fun m!1406655 () Bool)

(assert (=> b!1523459 m!1406655))

(assert (=> b!1523459 m!1406655))

(declare-fun m!1406657 () Bool)

(assert (=> b!1523459 m!1406657))

(assert (=> b!1523456 m!1406651))

(assert (=> b!1523456 m!1406651))

(declare-fun m!1406659 () Bool)

(assert (=> b!1523456 m!1406659))

(assert (=> b!1523456 m!1406659))

(assert (=> b!1523456 m!1406651))

(declare-fun m!1406661 () Bool)

(assert (=> b!1523456 m!1406661))

(assert (=> b!1523451 m!1406651))

(assert (=> b!1523451 m!1406651))

(declare-fun m!1406663 () Bool)

(assert (=> b!1523451 m!1406663))

(assert (=> b!1523455 m!1406651))

(assert (=> b!1523455 m!1406651))

(declare-fun m!1406665 () Bool)

(assert (=> b!1523455 m!1406665))

(push 1)

