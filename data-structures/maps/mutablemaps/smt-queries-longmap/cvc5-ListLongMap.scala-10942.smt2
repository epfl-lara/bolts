; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128032 () Bool)

(assert start!128032)

(declare-fun b!1503548 () Bool)

(declare-fun res!1024501 () Bool)

(declare-fun e!840655 () Bool)

(assert (=> b!1503548 (=> (not res!1024501) (not e!840655))))

(declare-datatypes ((array!100260 0))(
  ( (array!100261 (arr!48382 (Array (_ BitVec 32) (_ BitVec 64))) (size!48933 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100260)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503548 (= res!1024501 (not (= (select (arr!48382 a!2850) index!625) (select (arr!48382 a!2850) j!87))))))

(declare-fun b!1503549 () Bool)

(declare-fun res!1024503 () Bool)

(assert (=> b!1503549 (=> (not res!1024503) (not e!840655))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100260 (_ BitVec 32)) Bool)

(assert (=> b!1503549 (= res!1024503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503550 () Bool)

(declare-fun res!1024498 () Bool)

(assert (=> b!1503550 (=> (not res!1024498) (not e!840655))))

(declare-datatypes ((List!35054 0))(
  ( (Nil!35051) (Cons!35050 (h!36448 (_ BitVec 64)) (t!49755 List!35054)) )
))
(declare-fun arrayNoDuplicates!0 (array!100260 (_ BitVec 32) List!35054) Bool)

(assert (=> b!1503550 (= res!1024498 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35051))))

(declare-fun b!1503551 () Bool)

(declare-fun res!1024504 () Bool)

(assert (=> b!1503551 (=> (not res!1024504) (not e!840655))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1503551 (= res!1024504 (and (= (size!48933 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48933 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48933 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503553 () Bool)

(declare-fun res!1024505 () Bool)

(assert (=> b!1503553 (=> (not res!1024505) (not e!840655))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503553 (= res!1024505 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48933 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48933 a!2850)) (= (select (arr!48382 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48382 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48933 a!2850))))))

(declare-fun b!1503554 () Bool)

(declare-fun res!1024500 () Bool)

(assert (=> b!1503554 (=> (not res!1024500) (not e!840655))))

(declare-datatypes ((SeekEntryResult!12599 0))(
  ( (MissingZero!12599 (index!52787 (_ BitVec 32))) (Found!12599 (index!52788 (_ BitVec 32))) (Intermediate!12599 (undefined!13411 Bool) (index!52789 (_ BitVec 32)) (x!134484 (_ BitVec 32))) (Undefined!12599) (MissingVacant!12599 (index!52790 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100260 (_ BitVec 32)) SeekEntryResult!12599)

(assert (=> b!1503554 (= res!1024500 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48382 a!2850) j!87) a!2850 mask!2661) (Found!12599 j!87)))))

(declare-fun b!1503555 () Bool)

(declare-fun res!1024499 () Bool)

(assert (=> b!1503555 (=> (not res!1024499) (not e!840655))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503555 (= res!1024499 (validKeyInArray!0 (select (arr!48382 a!2850) j!87)))))

(declare-fun b!1503556 () Bool)

(declare-fun res!1024502 () Bool)

(assert (=> b!1503556 (=> (not res!1024502) (not e!840655))))

(assert (=> b!1503556 (= res!1024502 (validKeyInArray!0 (select (arr!48382 a!2850) i!996)))))

(declare-fun b!1503552 () Bool)

(assert (=> b!1503552 (= e!840655 false)))

(declare-fun lt!653506 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503552 (= lt!653506 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun res!1024506 () Bool)

(assert (=> start!128032 (=> (not res!1024506) (not e!840655))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128032 (= res!1024506 (validMask!0 mask!2661))))

(assert (=> start!128032 e!840655))

(assert (=> start!128032 true))

(declare-fun array_inv!37327 (array!100260) Bool)

(assert (=> start!128032 (array_inv!37327 a!2850)))

(assert (= (and start!128032 res!1024506) b!1503551))

(assert (= (and b!1503551 res!1024504) b!1503556))

(assert (= (and b!1503556 res!1024502) b!1503555))

(assert (= (and b!1503555 res!1024499) b!1503549))

(assert (= (and b!1503549 res!1024503) b!1503550))

(assert (= (and b!1503550 res!1024498) b!1503553))

(assert (= (and b!1503553 res!1024505) b!1503554))

(assert (= (and b!1503554 res!1024500) b!1503548))

(assert (= (and b!1503548 res!1024501) b!1503552))

(declare-fun m!1386861 () Bool)

(assert (=> start!128032 m!1386861))

(declare-fun m!1386863 () Bool)

(assert (=> start!128032 m!1386863))

(declare-fun m!1386865 () Bool)

(assert (=> b!1503553 m!1386865))

(declare-fun m!1386867 () Bool)

(assert (=> b!1503553 m!1386867))

(declare-fun m!1386869 () Bool)

(assert (=> b!1503553 m!1386869))

(declare-fun m!1386871 () Bool)

(assert (=> b!1503556 m!1386871))

(assert (=> b!1503556 m!1386871))

(declare-fun m!1386873 () Bool)

(assert (=> b!1503556 m!1386873))

(declare-fun m!1386875 () Bool)

(assert (=> b!1503552 m!1386875))

(declare-fun m!1386877 () Bool)

(assert (=> b!1503550 m!1386877))

(declare-fun m!1386879 () Bool)

(assert (=> b!1503555 m!1386879))

(assert (=> b!1503555 m!1386879))

(declare-fun m!1386881 () Bool)

(assert (=> b!1503555 m!1386881))

(assert (=> b!1503554 m!1386879))

(assert (=> b!1503554 m!1386879))

(declare-fun m!1386883 () Bool)

(assert (=> b!1503554 m!1386883))

(declare-fun m!1386885 () Bool)

(assert (=> b!1503548 m!1386885))

(assert (=> b!1503548 m!1386879))

(declare-fun m!1386887 () Bool)

(assert (=> b!1503549 m!1386887))

(push 1)

(assert (not b!1503552))

(assert (not b!1503549))

(assert (not b!1503554))

(assert (not b!1503550))

(assert (not b!1503555))

(assert (not start!128032))

(assert (not b!1503556))

(check-sat)

