; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128530 () Bool)

(assert start!128530)

(declare-fun b!1506540 () Bool)

(declare-fun res!1026941 () Bool)

(declare-fun e!841957 () Bool)

(assert (=> b!1506540 (=> (not res!1026941) (not e!841957))))

(declare-datatypes ((array!100455 0))(
  ( (array!100456 (arr!48466 (Array (_ BitVec 32) (_ BitVec 64))) (size!49017 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100455)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506540 (= res!1026941 (validKeyInArray!0 (select (arr!48466 a!2804) i!961)))))

(declare-fun b!1506541 () Bool)

(declare-fun res!1026940 () Bool)

(assert (=> b!1506541 (=> (not res!1026940) (not e!841957))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1506541 (= res!1026940 (and (= (size!49017 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49017 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49017 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1026942 () Bool)

(assert (=> start!128530 (=> (not res!1026942) (not e!841957))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128530 (= res!1026942 (validMask!0 mask!2512))))

(assert (=> start!128530 e!841957))

(assert (=> start!128530 true))

(declare-fun array_inv!37411 (array!100455) Bool)

(assert (=> start!128530 (array_inv!37411 a!2804)))

(declare-fun b!1506542 () Bool)

(declare-fun res!1026939 () Bool)

(assert (=> b!1506542 (=> (not res!1026939) (not e!841957))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506542 (= res!1026939 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49017 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49017 a!2804))))))

(declare-fun b!1506543 () Bool)

(declare-fun res!1026935 () Bool)

(assert (=> b!1506543 (=> (not res!1026935) (not e!841957))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100455 (_ BitVec 32)) Bool)

(assert (=> b!1506543 (= res!1026935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506544 () Bool)

(declare-fun res!1026938 () Bool)

(assert (=> b!1506544 (=> (not res!1026938) (not e!841957))))

(declare-datatypes ((SeekEntryResult!12658 0))(
  ( (MissingZero!12658 (index!53026 (_ BitVec 32))) (Found!12658 (index!53027 (_ BitVec 32))) (Intermediate!12658 (undefined!13470 Bool) (index!53028 (_ BitVec 32)) (x!134797 (_ BitVec 32))) (Undefined!12658) (MissingVacant!12658 (index!53029 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100455 (_ BitVec 32)) SeekEntryResult!12658)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506544 (= res!1026938 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48466 a!2804) j!70) mask!2512) (select (arr!48466 a!2804) j!70) a!2804 mask!2512) (Intermediate!12658 false resIndex!21 resX!21)))))

(declare-fun b!1506545 () Bool)

(declare-fun res!1026937 () Bool)

(assert (=> b!1506545 (=> (not res!1026937) (not e!841957))))

(declare-datatypes ((List!35129 0))(
  ( (Nil!35126) (Cons!35125 (h!36526 (_ BitVec 64)) (t!49830 List!35129)) )
))
(declare-fun arrayNoDuplicates!0 (array!100455 (_ BitVec 32) List!35129) Bool)

(assert (=> b!1506545 (= res!1026937 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35126))))

(declare-fun b!1506546 () Bool)

(assert (=> b!1506546 (= e!841957 (bvslt mask!2512 #b00000000000000000000000000000000))))

(declare-fun b!1506547 () Bool)

(declare-fun res!1026936 () Bool)

(assert (=> b!1506547 (=> (not res!1026936) (not e!841957))))

(assert (=> b!1506547 (= res!1026936 (validKeyInArray!0 (select (arr!48466 a!2804) j!70)))))

(assert (= (and start!128530 res!1026942) b!1506541))

(assert (= (and b!1506541 res!1026940) b!1506540))

(assert (= (and b!1506540 res!1026941) b!1506547))

(assert (= (and b!1506547 res!1026936) b!1506543))

(assert (= (and b!1506543 res!1026935) b!1506545))

(assert (= (and b!1506545 res!1026937) b!1506542))

(assert (= (and b!1506542 res!1026939) b!1506544))

(assert (= (and b!1506544 res!1026938) b!1506546))

(declare-fun m!1389525 () Bool)

(assert (=> b!1506543 m!1389525))

(declare-fun m!1389527 () Bool)

(assert (=> b!1506547 m!1389527))

(assert (=> b!1506547 m!1389527))

(declare-fun m!1389529 () Bool)

(assert (=> b!1506547 m!1389529))

(declare-fun m!1389531 () Bool)

(assert (=> b!1506540 m!1389531))

(assert (=> b!1506540 m!1389531))

(declare-fun m!1389533 () Bool)

(assert (=> b!1506540 m!1389533))

(declare-fun m!1389535 () Bool)

(assert (=> start!128530 m!1389535))

(declare-fun m!1389537 () Bool)

(assert (=> start!128530 m!1389537))

(assert (=> b!1506544 m!1389527))

(assert (=> b!1506544 m!1389527))

(declare-fun m!1389539 () Bool)

(assert (=> b!1506544 m!1389539))

(assert (=> b!1506544 m!1389539))

(assert (=> b!1506544 m!1389527))

(declare-fun m!1389541 () Bool)

(assert (=> b!1506544 m!1389541))

(declare-fun m!1389543 () Bool)

(assert (=> b!1506545 m!1389543))

(push 1)

(assert (not b!1506540))

(assert (not b!1506547))

(assert (not b!1506545))

(assert (not b!1506544))

(assert (not b!1506543))

