; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127620 () Bool)

(assert start!127620)

(declare-fun b!1498696 () Bool)

(declare-fun res!1019849 () Bool)

(declare-fun e!839114 () Bool)

(assert (=> b!1498696 (=> (not res!1019849) (not e!839114))))

(declare-datatypes ((array!99914 0))(
  ( (array!99915 (arr!48212 (Array (_ BitVec 32) (_ BitVec 64))) (size!48763 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99914)

(declare-datatypes ((List!34884 0))(
  ( (Nil!34881) (Cons!34880 (h!36278 (_ BitVec 64)) (t!49585 List!34884)) )
))
(declare-fun arrayNoDuplicates!0 (array!99914 (_ BitVec 32) List!34884) Bool)

(assert (=> b!1498696 (= res!1019849 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34881))))

(declare-fun b!1498697 () Bool)

(declare-fun res!1019845 () Bool)

(assert (=> b!1498697 (=> (not res!1019845) (not e!839114))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498697 (= res!1019845 (validKeyInArray!0 (select (arr!48212 a!2850) i!996)))))

(declare-fun b!1498698 () Bool)

(declare-fun res!1019847 () Bool)

(assert (=> b!1498698 (=> (not res!1019847) (not e!839114))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun mask!2661 () (_ BitVec 32))

(assert (=> b!1498698 (= res!1019847 (and (= (size!48763 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48763 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48763 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1019846 () Bool)

(assert (=> start!127620 (=> (not res!1019846) (not e!839114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127620 (= res!1019846 (validMask!0 mask!2661))))

(assert (=> start!127620 e!839114))

(assert (=> start!127620 true))

(declare-fun array_inv!37157 (array!99914) Bool)

(assert (=> start!127620 (array_inv!37157 a!2850)))

(declare-fun b!1498699 () Bool)

(assert (=> b!1498699 (= e!839114 false)))

(declare-fun index!625 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12441 0))(
  ( (MissingZero!12441 (index!52155 (_ BitVec 32))) (Found!12441 (index!52156 (_ BitVec 32))) (Intermediate!12441 (undefined!13253 Bool) (index!52157 (_ BitVec 32)) (x!133864 (_ BitVec 32))) (Undefined!12441) (MissingVacant!12441 (index!52158 (_ BitVec 32))) )
))
(declare-fun lt!652630 () SeekEntryResult!12441)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99914 (_ BitVec 32)) SeekEntryResult!12441)

(assert (=> b!1498699 (= lt!652630 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48212 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1498700 () Bool)

(declare-fun res!1019848 () Bool)

(assert (=> b!1498700 (=> (not res!1019848) (not e!839114))))

(assert (=> b!1498700 (= res!1019848 (validKeyInArray!0 (select (arr!48212 a!2850) j!87)))))

(declare-fun b!1498701 () Bool)

(declare-fun res!1019850 () Bool)

(assert (=> b!1498701 (=> (not res!1019850) (not e!839114))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99914 (_ BitVec 32)) Bool)

(assert (=> b!1498701 (= res!1019850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498702 () Bool)

(declare-fun res!1019844 () Bool)

(assert (=> b!1498702 (=> (not res!1019844) (not e!839114))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498702 (= res!1019844 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48763 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48763 a!2850)) (= (select (arr!48212 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48212 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48763 a!2850))))))

(assert (= (and start!127620 res!1019846) b!1498698))

(assert (= (and b!1498698 res!1019847) b!1498697))

(assert (= (and b!1498697 res!1019845) b!1498700))

(assert (= (and b!1498700 res!1019848) b!1498701))

(assert (= (and b!1498701 res!1019850) b!1498696))

(assert (= (and b!1498696 res!1019849) b!1498702))

(assert (= (and b!1498702 res!1019844) b!1498699))

(declare-fun m!1381893 () Bool)

(assert (=> b!1498702 m!1381893))

(declare-fun m!1381895 () Bool)

(assert (=> b!1498702 m!1381895))

(declare-fun m!1381897 () Bool)

(assert (=> b!1498702 m!1381897))

(declare-fun m!1381899 () Bool)

(assert (=> b!1498701 m!1381899))

(declare-fun m!1381901 () Bool)

(assert (=> b!1498697 m!1381901))

(assert (=> b!1498697 m!1381901))

(declare-fun m!1381903 () Bool)

(assert (=> b!1498697 m!1381903))

(declare-fun m!1381905 () Bool)

(assert (=> b!1498696 m!1381905))

(declare-fun m!1381907 () Bool)

(assert (=> start!127620 m!1381907))

(declare-fun m!1381909 () Bool)

(assert (=> start!127620 m!1381909))

(declare-fun m!1381911 () Bool)

(assert (=> b!1498700 m!1381911))

(assert (=> b!1498700 m!1381911))

(declare-fun m!1381913 () Bool)

(assert (=> b!1498700 m!1381913))

(assert (=> b!1498699 m!1381911))

(assert (=> b!1498699 m!1381911))

(declare-fun m!1381915 () Bool)

(assert (=> b!1498699 m!1381915))

(check-sat (not b!1498700) (not b!1498701) (not b!1498696) (not b!1498697) (not start!127620) (not b!1498699))
