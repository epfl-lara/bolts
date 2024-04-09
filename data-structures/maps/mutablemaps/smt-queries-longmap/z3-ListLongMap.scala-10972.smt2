; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128544 () Bool)

(assert start!128544)

(declare-fun b!1506699 () Bool)

(declare-fun res!1027097 () Bool)

(declare-fun e!841999 () Bool)

(assert (=> b!1506699 (=> (not res!1027097) (not e!841999))))

(declare-datatypes ((array!100469 0))(
  ( (array!100470 (arr!48473 (Array (_ BitVec 32) (_ BitVec 64))) (size!49024 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100469)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100469 (_ BitVec 32)) Bool)

(assert (=> b!1506699 (= res!1027097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506700 () Bool)

(declare-fun res!1027094 () Bool)

(assert (=> b!1506700 (=> (not res!1027094) (not e!841999))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506700 (= res!1027094 (validKeyInArray!0 (select (arr!48473 a!2804) i!961)))))

(declare-fun res!1027095 () Bool)

(assert (=> start!128544 (=> (not res!1027095) (not e!841999))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128544 (= res!1027095 (validMask!0 mask!2512))))

(assert (=> start!128544 e!841999))

(assert (=> start!128544 true))

(declare-fun array_inv!37418 (array!100469) Bool)

(assert (=> start!128544 (array_inv!37418 a!2804)))

(declare-fun b!1506701 () Bool)

(declare-fun res!1027101 () Bool)

(assert (=> b!1506701 (=> (not res!1027101) (not e!841999))))

(declare-datatypes ((List!35136 0))(
  ( (Nil!35133) (Cons!35132 (h!36533 (_ BitVec 64)) (t!49837 List!35136)) )
))
(declare-fun arrayNoDuplicates!0 (array!100469 (_ BitVec 32) List!35136) Bool)

(assert (=> b!1506701 (= res!1027101 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35133))))

(declare-fun b!1506702 () Bool)

(declare-fun res!1027099 () Bool)

(assert (=> b!1506702 (=> (not res!1027099) (not e!841999))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12665 0))(
  ( (MissingZero!12665 (index!53054 (_ BitVec 32))) (Found!12665 (index!53055 (_ BitVec 32))) (Intermediate!12665 (undefined!13477 Bool) (index!53056 (_ BitVec 32)) (x!134820 (_ BitVec 32))) (Undefined!12665) (MissingVacant!12665 (index!53057 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100469 (_ BitVec 32)) SeekEntryResult!12665)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506702 (= res!1027099 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48473 a!2804) j!70) mask!2512) (select (arr!48473 a!2804) j!70) a!2804 mask!2512) (Intermediate!12665 false resIndex!21 resX!21)))))

(declare-fun b!1506703 () Bool)

(declare-fun res!1027096 () Bool)

(assert (=> b!1506703 (=> (not res!1027096) (not e!841999))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1506703 (= res!1027096 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49024 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49024 a!2804))))))

(declare-fun b!1506704 () Bool)

(declare-fun res!1027098 () Bool)

(assert (=> b!1506704 (=> (not res!1027098) (not e!841999))))

(assert (=> b!1506704 (= res!1027098 (validKeyInArray!0 (select (arr!48473 a!2804) j!70)))))

(declare-fun b!1506705 () Bool)

(declare-fun res!1027100 () Bool)

(assert (=> b!1506705 (=> (not res!1027100) (not e!841999))))

(assert (=> b!1506705 (= res!1027100 (and (= (size!49024 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49024 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49024 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506706 () Bool)

(assert (=> b!1506706 (= e!841999 (and (bvsge mask!2512 #b00000000000000000000000000000000) (bvsge index!487 (bvadd #b00000000000000000000000000000001 mask!2512))))))

(assert (= (and start!128544 res!1027095) b!1506705))

(assert (= (and b!1506705 res!1027100) b!1506700))

(assert (= (and b!1506700 res!1027094) b!1506704))

(assert (= (and b!1506704 res!1027098) b!1506699))

(assert (= (and b!1506699 res!1027097) b!1506701))

(assert (= (and b!1506701 res!1027101) b!1506703))

(assert (= (and b!1506703 res!1027096) b!1506702))

(assert (= (and b!1506702 res!1027099) b!1506706))

(declare-fun m!1389665 () Bool)

(assert (=> b!1506700 m!1389665))

(assert (=> b!1506700 m!1389665))

(declare-fun m!1389667 () Bool)

(assert (=> b!1506700 m!1389667))

(declare-fun m!1389669 () Bool)

(assert (=> b!1506704 m!1389669))

(assert (=> b!1506704 m!1389669))

(declare-fun m!1389671 () Bool)

(assert (=> b!1506704 m!1389671))

(declare-fun m!1389673 () Bool)

(assert (=> b!1506699 m!1389673))

(assert (=> b!1506702 m!1389669))

(assert (=> b!1506702 m!1389669))

(declare-fun m!1389675 () Bool)

(assert (=> b!1506702 m!1389675))

(assert (=> b!1506702 m!1389675))

(assert (=> b!1506702 m!1389669))

(declare-fun m!1389677 () Bool)

(assert (=> b!1506702 m!1389677))

(declare-fun m!1389679 () Bool)

(assert (=> b!1506701 m!1389679))

(declare-fun m!1389681 () Bool)

(assert (=> start!128544 m!1389681))

(declare-fun m!1389683 () Bool)

(assert (=> start!128544 m!1389683))

(check-sat (not b!1506704) (not b!1506701) (not b!1506702) (not b!1506700) (not start!128544) (not b!1506699))
(check-sat)
