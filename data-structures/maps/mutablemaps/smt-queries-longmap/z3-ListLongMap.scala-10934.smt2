; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127986 () Bool)

(assert start!127986)

(declare-fun b!1502927 () Bool)

(declare-fun res!1023880 () Bool)

(declare-fun e!840518 () Bool)

(assert (=> b!1502927 (=> (not res!1023880) (not e!840518))))

(declare-datatypes ((array!100214 0))(
  ( (array!100215 (arr!48359 (Array (_ BitVec 32) (_ BitVec 64))) (size!48910 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100214)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502927 (= res!1023880 (validKeyInArray!0 (select (arr!48359 a!2850) j!87)))))

(declare-fun b!1502928 () Bool)

(declare-fun res!1023882 () Bool)

(assert (=> b!1502928 (=> (not res!1023882) (not e!840518))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100214 (_ BitVec 32)) Bool)

(assert (=> b!1502928 (= res!1023882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1502929 () Bool)

(declare-fun res!1023878 () Bool)

(assert (=> b!1502929 (=> (not res!1023878) (not e!840518))))

(declare-datatypes ((List!35031 0))(
  ( (Nil!35028) (Cons!35027 (h!36425 (_ BitVec 64)) (t!49732 List!35031)) )
))
(declare-fun arrayNoDuplicates!0 (array!100214 (_ BitVec 32) List!35031) Bool)

(assert (=> b!1502929 (= res!1023878 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35028))))

(declare-fun b!1502930 () Bool)

(declare-fun res!1023885 () Bool)

(assert (=> b!1502930 (=> (not res!1023885) (not e!840518))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12576 0))(
  ( (MissingZero!12576 (index!52695 (_ BitVec 32))) (Found!12576 (index!52696 (_ BitVec 32))) (Intermediate!12576 (undefined!13388 Bool) (index!52697 (_ BitVec 32)) (x!134397 (_ BitVec 32))) (Undefined!12576) (MissingVacant!12576 (index!52698 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100214 (_ BitVec 32)) SeekEntryResult!12576)

(assert (=> b!1502930 (= res!1023885 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48359 a!2850) j!87) a!2850 mask!2661) (Found!12576 j!87)))))

(declare-fun b!1502931 () Bool)

(declare-fun res!1023883 () Bool)

(assert (=> b!1502931 (=> (not res!1023883) (not e!840518))))

(assert (=> b!1502931 (= res!1023883 (not (= (select (arr!48359 a!2850) index!625) (select (arr!48359 a!2850) j!87))))))

(declare-fun b!1502932 () Bool)

(declare-fun res!1023877 () Bool)

(assert (=> b!1502932 (=> (not res!1023877) (not e!840518))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502932 (= res!1023877 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48910 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48910 a!2850)) (= (select (arr!48359 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48359 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48910 a!2850))))))

(declare-fun res!1023884 () Bool)

(assert (=> start!127986 (=> (not res!1023884) (not e!840518))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127986 (= res!1023884 (validMask!0 mask!2661))))

(assert (=> start!127986 e!840518))

(assert (=> start!127986 true))

(declare-fun array_inv!37304 (array!100214) Bool)

(assert (=> start!127986 (array_inv!37304 a!2850)))

(declare-fun b!1502933 () Bool)

(assert (=> b!1502933 (= e!840518 false)))

(declare-fun lt!653437 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1502933 (= lt!653437 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1502934 () Bool)

(declare-fun res!1023881 () Bool)

(assert (=> b!1502934 (=> (not res!1023881) (not e!840518))))

(assert (=> b!1502934 (= res!1023881 (and (= (size!48910 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48910 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48910 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502935 () Bool)

(declare-fun res!1023879 () Bool)

(assert (=> b!1502935 (=> (not res!1023879) (not e!840518))))

(assert (=> b!1502935 (= res!1023879 (validKeyInArray!0 (select (arr!48359 a!2850) i!996)))))

(assert (= (and start!127986 res!1023884) b!1502934))

(assert (= (and b!1502934 res!1023881) b!1502935))

(assert (= (and b!1502935 res!1023879) b!1502927))

(assert (= (and b!1502927 res!1023880) b!1502928))

(assert (= (and b!1502928 res!1023882) b!1502929))

(assert (= (and b!1502929 res!1023878) b!1502932))

(assert (= (and b!1502932 res!1023877) b!1502930))

(assert (= (and b!1502930 res!1023885) b!1502931))

(assert (= (and b!1502931 res!1023883) b!1502933))

(declare-fun m!1386217 () Bool)

(assert (=> b!1502931 m!1386217))

(declare-fun m!1386219 () Bool)

(assert (=> b!1502931 m!1386219))

(declare-fun m!1386221 () Bool)

(assert (=> b!1502929 m!1386221))

(declare-fun m!1386223 () Bool)

(assert (=> b!1502932 m!1386223))

(declare-fun m!1386225 () Bool)

(assert (=> b!1502932 m!1386225))

(declare-fun m!1386227 () Bool)

(assert (=> b!1502932 m!1386227))

(assert (=> b!1502930 m!1386219))

(assert (=> b!1502930 m!1386219))

(declare-fun m!1386229 () Bool)

(assert (=> b!1502930 m!1386229))

(declare-fun m!1386231 () Bool)

(assert (=> b!1502933 m!1386231))

(declare-fun m!1386233 () Bool)

(assert (=> b!1502935 m!1386233))

(assert (=> b!1502935 m!1386233))

(declare-fun m!1386235 () Bool)

(assert (=> b!1502935 m!1386235))

(declare-fun m!1386237 () Bool)

(assert (=> start!127986 m!1386237))

(declare-fun m!1386239 () Bool)

(assert (=> start!127986 m!1386239))

(declare-fun m!1386241 () Bool)

(assert (=> b!1502928 m!1386241))

(assert (=> b!1502927 m!1386219))

(assert (=> b!1502927 m!1386219))

(declare-fun m!1386243 () Bool)

(assert (=> b!1502927 m!1386243))

(check-sat (not b!1502933) (not b!1502929) (not b!1502927) (not start!127986) (not b!1502928) (not b!1502935) (not b!1502930))
