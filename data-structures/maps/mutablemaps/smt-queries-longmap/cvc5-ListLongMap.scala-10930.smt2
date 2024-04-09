; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127924 () Bool)

(assert start!127924)

(declare-fun b!1502437 () Bool)

(declare-fun res!1023498 () Bool)

(declare-fun e!840332 () Bool)

(assert (=> b!1502437 (=> (not res!1023498) (not e!840332))))

(declare-datatypes ((array!100185 0))(
  ( (array!100186 (arr!48346 (Array (_ BitVec 32) (_ BitVec 64))) (size!48897 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100185)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100185 (_ BitVec 32)) Bool)

(assert (=> b!1502437 (= res!1023498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1502438 () Bool)

(declare-fun res!1023500 () Bool)

(assert (=> b!1502438 (=> (not res!1023500) (not e!840332))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502438 (= res!1023500 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48897 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48897 a!2850)) (= (select (arr!48346 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48346 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48897 a!2850))))))

(declare-fun res!1023497 () Bool)

(assert (=> start!127924 (=> (not res!1023497) (not e!840332))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127924 (= res!1023497 (validMask!0 mask!2661))))

(assert (=> start!127924 e!840332))

(assert (=> start!127924 true))

(declare-fun array_inv!37291 (array!100185) Bool)

(assert (=> start!127924 (array_inv!37291 a!2850)))

(declare-fun b!1502439 () Bool)

(declare-fun res!1023501 () Bool)

(assert (=> b!1502439 (=> (not res!1023501) (not e!840332))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502439 (= res!1023501 (validKeyInArray!0 (select (arr!48346 a!2850) i!996)))))

(declare-fun b!1502440 () Bool)

(declare-fun res!1023495 () Bool)

(assert (=> b!1502440 (=> (not res!1023495) (not e!840332))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1502440 (= res!1023495 (and (= (size!48897 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48897 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48897 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502441 () Bool)

(declare-fun res!1023499 () Bool)

(assert (=> b!1502441 (=> (not res!1023499) (not e!840332))))

(declare-datatypes ((List!35018 0))(
  ( (Nil!35015) (Cons!35014 (h!36412 (_ BitVec 64)) (t!49719 List!35018)) )
))
(declare-fun arrayNoDuplicates!0 (array!100185 (_ BitVec 32) List!35018) Bool)

(assert (=> b!1502441 (= res!1023499 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35015))))

(declare-fun b!1502442 () Bool)

(declare-fun res!1023496 () Bool)

(assert (=> b!1502442 (=> (not res!1023496) (not e!840332))))

(assert (=> b!1502442 (= res!1023496 (validKeyInArray!0 (select (arr!48346 a!2850) j!87)))))

(declare-fun b!1502443 () Bool)

(assert (=> b!1502443 (= e!840332 false)))

(declare-datatypes ((SeekEntryResult!12563 0))(
  ( (MissingZero!12563 (index!52643 (_ BitVec 32))) (Found!12563 (index!52644 (_ BitVec 32))) (Intermediate!12563 (undefined!13375 Bool) (index!52645 (_ BitVec 32)) (x!134349 (_ BitVec 32))) (Undefined!12563) (MissingVacant!12563 (index!52646 (_ BitVec 32))) )
))
(declare-fun lt!653347 () SeekEntryResult!12563)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100185 (_ BitVec 32)) SeekEntryResult!12563)

(assert (=> b!1502443 (= lt!653347 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48346 a!2850) j!87) a!2850 mask!2661))))

(assert (= (and start!127924 res!1023497) b!1502440))

(assert (= (and b!1502440 res!1023495) b!1502439))

(assert (= (and b!1502439 res!1023501) b!1502442))

(assert (= (and b!1502442 res!1023496) b!1502437))

(assert (= (and b!1502437 res!1023498) b!1502441))

(assert (= (and b!1502441 res!1023499) b!1502438))

(assert (= (and b!1502438 res!1023500) b!1502443))

(declare-fun m!1385763 () Bool)

(assert (=> b!1502441 m!1385763))

(declare-fun m!1385765 () Bool)

(assert (=> b!1502443 m!1385765))

(assert (=> b!1502443 m!1385765))

(declare-fun m!1385767 () Bool)

(assert (=> b!1502443 m!1385767))

(declare-fun m!1385769 () Bool)

(assert (=> b!1502438 m!1385769))

(declare-fun m!1385771 () Bool)

(assert (=> b!1502438 m!1385771))

(declare-fun m!1385773 () Bool)

(assert (=> b!1502438 m!1385773))

(declare-fun m!1385775 () Bool)

(assert (=> b!1502437 m!1385775))

(declare-fun m!1385777 () Bool)

(assert (=> start!127924 m!1385777))

(declare-fun m!1385779 () Bool)

(assert (=> start!127924 m!1385779))

(declare-fun m!1385781 () Bool)

(assert (=> b!1502439 m!1385781))

(assert (=> b!1502439 m!1385781))

(declare-fun m!1385783 () Bool)

(assert (=> b!1502439 m!1385783))

(assert (=> b!1502442 m!1385765))

(assert (=> b!1502442 m!1385765))

(declare-fun m!1385785 () Bool)

(assert (=> b!1502442 m!1385785))

(push 1)

(assert (not b!1502437))

(assert (not start!127924))

(assert (not b!1502443))

(assert (not b!1502439))

(assert (not b!1502441))

(assert (not b!1502442))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

