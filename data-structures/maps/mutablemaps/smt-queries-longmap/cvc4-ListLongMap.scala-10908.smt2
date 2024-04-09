; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127760 () Bool)

(assert start!127760)

(declare-fun b!1500640 () Bool)

(declare-fun res!1021791 () Bool)

(declare-fun e!839678 () Bool)

(assert (=> b!1500640 (=> (not res!1021791) (not e!839678))))

(declare-datatypes ((array!100054 0))(
  ( (array!100055 (arr!48282 (Array (_ BitVec 32) (_ BitVec 64))) (size!48833 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100054)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500640 (= res!1021791 (validKeyInArray!0 (select (arr!48282 a!2850) j!87)))))

(declare-fun b!1500641 () Bool)

(declare-fun e!839677 () Bool)

(assert (=> b!1500641 (= e!839678 e!839677)))

(declare-fun res!1021794 () Bool)

(assert (=> b!1500641 (=> (not res!1021794) (not e!839677))))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!652947 () (_ BitVec 32))

(assert (=> b!1500641 (= res!1021794 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652947 #b00000000000000000000000000000000) (bvslt lt!652947 (size!48833 a!2850))))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500641 (= lt!652947 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500643 () Bool)

(declare-fun res!1021788 () Bool)

(assert (=> b!1500643 (=> (not res!1021788) (not e!839678))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12511 0))(
  ( (MissingZero!12511 (index!52435 (_ BitVec 32))) (Found!12511 (index!52436 (_ BitVec 32))) (Intermediate!12511 (undefined!13323 Bool) (index!52437 (_ BitVec 32)) (x!134118 (_ BitVec 32))) (Undefined!12511) (MissingVacant!12511 (index!52438 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100054 (_ BitVec 32)) SeekEntryResult!12511)

(assert (=> b!1500643 (= res!1021788 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48282 a!2850) j!87) a!2850 mask!2661) (Found!12511 j!87)))))

(declare-fun b!1500644 () Bool)

(declare-fun res!1021795 () Bool)

(assert (=> b!1500644 (=> (not res!1021795) (not e!839678))))

(assert (=> b!1500644 (= res!1021795 (not (= (select (arr!48282 a!2850) index!625) (select (arr!48282 a!2850) j!87))))))

(declare-fun b!1500645 () Bool)

(declare-fun res!1021790 () Bool)

(assert (=> b!1500645 (=> (not res!1021790) (not e!839678))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100054 (_ BitVec 32)) Bool)

(assert (=> b!1500645 (= res!1021790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500646 () Bool)

(assert (=> b!1500646 (= e!839677 false)))

(declare-fun lt!652948 () SeekEntryResult!12511)

(assert (=> b!1500646 (= lt!652948 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652947 vacantBefore!10 (select (arr!48282 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1500647 () Bool)

(declare-fun res!1021797 () Bool)

(assert (=> b!1500647 (=> (not res!1021797) (not e!839678))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1500647 (= res!1021797 (and (= (size!48833 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48833 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48833 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500648 () Bool)

(declare-fun res!1021792 () Bool)

(assert (=> b!1500648 (=> (not res!1021792) (not e!839678))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500648 (= res!1021792 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48833 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48833 a!2850)) (= (select (arr!48282 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48282 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48833 a!2850))))))

(declare-fun b!1500649 () Bool)

(declare-fun res!1021793 () Bool)

(assert (=> b!1500649 (=> (not res!1021793) (not e!839678))))

(assert (=> b!1500649 (= res!1021793 (validKeyInArray!0 (select (arr!48282 a!2850) i!996)))))

(declare-fun b!1500642 () Bool)

(declare-fun res!1021789 () Bool)

(assert (=> b!1500642 (=> (not res!1021789) (not e!839678))))

(declare-datatypes ((List!34954 0))(
  ( (Nil!34951) (Cons!34950 (h!36348 (_ BitVec 64)) (t!49655 List!34954)) )
))
(declare-fun arrayNoDuplicates!0 (array!100054 (_ BitVec 32) List!34954) Bool)

(assert (=> b!1500642 (= res!1021789 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34951))))

(declare-fun res!1021796 () Bool)

(assert (=> start!127760 (=> (not res!1021796) (not e!839678))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127760 (= res!1021796 (validMask!0 mask!2661))))

(assert (=> start!127760 e!839678))

(assert (=> start!127760 true))

(declare-fun array_inv!37227 (array!100054) Bool)

(assert (=> start!127760 (array_inv!37227 a!2850)))

(assert (= (and start!127760 res!1021796) b!1500647))

(assert (= (and b!1500647 res!1021797) b!1500649))

(assert (= (and b!1500649 res!1021793) b!1500640))

(assert (= (and b!1500640 res!1021791) b!1500645))

(assert (= (and b!1500645 res!1021790) b!1500642))

(assert (= (and b!1500642 res!1021789) b!1500648))

(assert (= (and b!1500648 res!1021792) b!1500643))

(assert (= (and b!1500643 res!1021788) b!1500644))

(assert (= (and b!1500644 res!1021795) b!1500641))

(assert (= (and b!1500641 res!1021794) b!1500646))

(declare-fun m!1383891 () Bool)

(assert (=> b!1500642 m!1383891))

(declare-fun m!1383893 () Bool)

(assert (=> b!1500648 m!1383893))

(declare-fun m!1383895 () Bool)

(assert (=> b!1500648 m!1383895))

(declare-fun m!1383897 () Bool)

(assert (=> b!1500648 m!1383897))

(declare-fun m!1383899 () Bool)

(assert (=> b!1500646 m!1383899))

(assert (=> b!1500646 m!1383899))

(declare-fun m!1383901 () Bool)

(assert (=> b!1500646 m!1383901))

(declare-fun m!1383903 () Bool)

(assert (=> b!1500649 m!1383903))

(assert (=> b!1500649 m!1383903))

(declare-fun m!1383905 () Bool)

(assert (=> b!1500649 m!1383905))

(declare-fun m!1383907 () Bool)

(assert (=> b!1500644 m!1383907))

(assert (=> b!1500644 m!1383899))

(declare-fun m!1383909 () Bool)

(assert (=> b!1500645 m!1383909))

(declare-fun m!1383911 () Bool)

(assert (=> start!127760 m!1383911))

(declare-fun m!1383913 () Bool)

(assert (=> start!127760 m!1383913))

(declare-fun m!1383915 () Bool)

(assert (=> b!1500641 m!1383915))

(assert (=> b!1500640 m!1383899))

(assert (=> b!1500640 m!1383899))

(declare-fun m!1383917 () Bool)

(assert (=> b!1500640 m!1383917))

(assert (=> b!1500643 m!1383899))

(assert (=> b!1500643 m!1383899))

(declare-fun m!1383919 () Bool)

(assert (=> b!1500643 m!1383919))

(push 1)

(assert (not b!1500645))

(assert (not b!1500646))

(assert (not b!1500641))

(assert (not b!1500642))

(assert (not start!127760))

(assert (not b!1500649))

(assert (not b!1500640))

(assert (not b!1500643))

(check-sat)

