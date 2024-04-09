; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130320 () Bool)

(assert start!130320)

(declare-fun b!1529621 () Bool)

(declare-fun res!1047476 () Bool)

(declare-fun e!852414 () Bool)

(assert (=> b!1529621 (=> (not res!1047476) (not e!852414))))

(declare-datatypes ((array!101597 0))(
  ( (array!101598 (arr!49019 (Array (_ BitVec 32) (_ BitVec 64))) (size!49570 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101597)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529621 (= res!1047476 (validKeyInArray!0 (select (arr!49019 a!2804) j!70)))))

(declare-fun b!1529622 () Bool)

(declare-fun res!1047469 () Bool)

(assert (=> b!1529622 (=> (not res!1047469) (not e!852414))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1529622 (= res!1047469 (and (= (size!49570 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49570 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49570 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1047477 () Bool)

(assert (=> start!130320 (=> (not res!1047477) (not e!852414))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130320 (= res!1047477 (validMask!0 mask!2512))))

(assert (=> start!130320 e!852414))

(assert (=> start!130320 true))

(declare-fun array_inv!37964 (array!101597) Bool)

(assert (=> start!130320 (array_inv!37964 a!2804)))

(declare-fun b!1529623 () Bool)

(declare-fun e!852412 () Bool)

(declare-datatypes ((SeekEntryResult!13205 0))(
  ( (MissingZero!13205 (index!55214 (_ BitVec 32))) (Found!13205 (index!55215 (_ BitVec 32))) (Intermediate!13205 (undefined!14017 Bool) (index!55216 (_ BitVec 32)) (x!136903 (_ BitVec 32))) (Undefined!13205) (MissingVacant!13205 (index!55217 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101597 (_ BitVec 32)) SeekEntryResult!13205)

(assert (=> b!1529623 (= e!852412 (= (seekEntry!0 (select (arr!49019 a!2804) j!70) a!2804 mask!2512) (Found!13205 j!70)))))

(declare-fun b!1529624 () Bool)

(declare-fun res!1047470 () Bool)

(assert (=> b!1529624 (=> (not res!1047470) (not e!852414))))

(assert (=> b!1529624 (= res!1047470 (validKeyInArray!0 (select (arr!49019 a!2804) i!961)))))

(declare-fun b!1529625 () Bool)

(declare-fun e!852416 () Bool)

(assert (=> b!1529625 (= e!852416 true)))

(declare-fun lt!662458 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529625 (= lt!662458 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1529626 () Bool)

(declare-fun res!1047466 () Bool)

(assert (=> b!1529626 (=> (not res!1047466) (not e!852414))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101597 (_ BitVec 32)) Bool)

(assert (=> b!1529626 (= res!1047466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1529627 () Bool)

(declare-fun res!1047468 () Bool)

(declare-fun e!852415 () Bool)

(assert (=> b!1529627 (=> (not res!1047468) (not e!852415))))

(declare-fun lt!662461 () SeekEntryResult!13205)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101597 (_ BitVec 32)) SeekEntryResult!13205)

(assert (=> b!1529627 (= res!1047468 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49019 a!2804) j!70) a!2804 mask!2512) lt!662461))))

(declare-fun b!1529628 () Bool)

(declare-fun res!1047473 () Bool)

(assert (=> b!1529628 (=> (not res!1047473) (not e!852414))))

(declare-datatypes ((List!35682 0))(
  ( (Nil!35679) (Cons!35678 (h!37115 (_ BitVec 64)) (t!50383 List!35682)) )
))
(declare-fun arrayNoDuplicates!0 (array!101597 (_ BitVec 32) List!35682) Bool)

(assert (=> b!1529628 (= res!1047473 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35679))))

(declare-fun b!1529629 () Bool)

(declare-fun res!1047471 () Bool)

(assert (=> b!1529629 (=> (not res!1047471) (not e!852414))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1529629 (= res!1047471 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49570 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49570 a!2804))))))

(declare-fun b!1529630 () Bool)

(assert (=> b!1529630 (= e!852415 (not e!852416))))

(declare-fun res!1047475 () Bool)

(assert (=> b!1529630 (=> res!1047475 e!852416)))

(assert (=> b!1529630 (= res!1047475 (or (not (= (select (arr!49019 a!2804) j!70) (select (store (arr!49019 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1529630 e!852412))

(declare-fun res!1047474 () Bool)

(assert (=> b!1529630 (=> (not res!1047474) (not e!852412))))

(assert (=> b!1529630 (= res!1047474 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51150 0))(
  ( (Unit!51151) )
))
(declare-fun lt!662459 () Unit!51150)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101597 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51150)

(assert (=> b!1529630 (= lt!662459 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529631 () Bool)

(declare-fun res!1047467 () Bool)

(assert (=> b!1529631 (=> (not res!1047467) (not e!852415))))

(declare-fun lt!662460 () SeekEntryResult!13205)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529631 (= res!1047467 (= lt!662460 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49019 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49019 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101598 (store (arr!49019 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49570 a!2804)) mask!2512)))))

(declare-fun b!1529632 () Bool)

(assert (=> b!1529632 (= e!852414 e!852415)))

(declare-fun res!1047472 () Bool)

(assert (=> b!1529632 (=> (not res!1047472) (not e!852415))))

(assert (=> b!1529632 (= res!1047472 (= lt!662460 lt!662461))))

(assert (=> b!1529632 (= lt!662461 (Intermediate!13205 false resIndex!21 resX!21))))

(assert (=> b!1529632 (= lt!662460 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49019 a!2804) j!70) mask!2512) (select (arr!49019 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!130320 res!1047477) b!1529622))

(assert (= (and b!1529622 res!1047469) b!1529624))

(assert (= (and b!1529624 res!1047470) b!1529621))

(assert (= (and b!1529621 res!1047476) b!1529626))

(assert (= (and b!1529626 res!1047466) b!1529628))

(assert (= (and b!1529628 res!1047473) b!1529629))

(assert (= (and b!1529629 res!1047471) b!1529632))

(assert (= (and b!1529632 res!1047472) b!1529627))

(assert (= (and b!1529627 res!1047468) b!1529631))

(assert (= (and b!1529631 res!1047467) b!1529630))

(assert (= (and b!1529630 res!1047474) b!1529623))

(assert (= (and b!1529630 (not res!1047475)) b!1529625))

(declare-fun m!1412633 () Bool)

(assert (=> b!1529628 m!1412633))

(declare-fun m!1412635 () Bool)

(assert (=> b!1529627 m!1412635))

(assert (=> b!1529627 m!1412635))

(declare-fun m!1412637 () Bool)

(assert (=> b!1529627 m!1412637))

(declare-fun m!1412639 () Bool)

(assert (=> start!130320 m!1412639))

(declare-fun m!1412641 () Bool)

(assert (=> start!130320 m!1412641))

(declare-fun m!1412643 () Bool)

(assert (=> b!1529626 m!1412643))

(assert (=> b!1529623 m!1412635))

(assert (=> b!1529623 m!1412635))

(declare-fun m!1412645 () Bool)

(assert (=> b!1529623 m!1412645))

(declare-fun m!1412647 () Bool)

(assert (=> b!1529631 m!1412647))

(declare-fun m!1412649 () Bool)

(assert (=> b!1529631 m!1412649))

(assert (=> b!1529631 m!1412649))

(declare-fun m!1412651 () Bool)

(assert (=> b!1529631 m!1412651))

(assert (=> b!1529631 m!1412651))

(assert (=> b!1529631 m!1412649))

(declare-fun m!1412653 () Bool)

(assert (=> b!1529631 m!1412653))

(assert (=> b!1529632 m!1412635))

(assert (=> b!1529632 m!1412635))

(declare-fun m!1412655 () Bool)

(assert (=> b!1529632 m!1412655))

(assert (=> b!1529632 m!1412655))

(assert (=> b!1529632 m!1412635))

(declare-fun m!1412657 () Bool)

(assert (=> b!1529632 m!1412657))

(declare-fun m!1412659 () Bool)

(assert (=> b!1529624 m!1412659))

(assert (=> b!1529624 m!1412659))

(declare-fun m!1412661 () Bool)

(assert (=> b!1529624 m!1412661))

(declare-fun m!1412663 () Bool)

(assert (=> b!1529625 m!1412663))

(assert (=> b!1529621 m!1412635))

(assert (=> b!1529621 m!1412635))

(declare-fun m!1412665 () Bool)

(assert (=> b!1529621 m!1412665))

(assert (=> b!1529630 m!1412635))

(declare-fun m!1412667 () Bool)

(assert (=> b!1529630 m!1412667))

(assert (=> b!1529630 m!1412647))

(assert (=> b!1529630 m!1412649))

(declare-fun m!1412669 () Bool)

(assert (=> b!1529630 m!1412669))

(check-sat (not b!1529632) (not b!1529625) (not b!1529624) (not b!1529626) (not start!130320) (not b!1529630) (not b!1529631) (not b!1529627) (not b!1529623) (not b!1529621) (not b!1529628))
(check-sat)
