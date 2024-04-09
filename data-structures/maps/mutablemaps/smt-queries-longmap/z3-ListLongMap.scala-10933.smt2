; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127980 () Bool)

(assert start!127980)

(declare-fun b!1502846 () Bool)

(declare-fun res!1023804 () Bool)

(declare-fun e!840500 () Bool)

(assert (=> b!1502846 (=> (not res!1023804) (not e!840500))))

(declare-datatypes ((array!100208 0))(
  ( (array!100209 (arr!48356 (Array (_ BitVec 32) (_ BitVec 64))) (size!48907 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100208)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502846 (= res!1023804 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48907 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48907 a!2850)) (= (select (arr!48356 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48356 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48907 a!2850))))))

(declare-fun b!1502847 () Bool)

(declare-fun res!1023802 () Bool)

(assert (=> b!1502847 (=> (not res!1023802) (not e!840500))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1502847 (= res!1023802 (and (= (size!48907 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48907 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48907 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502848 () Bool)

(declare-fun res!1023800 () Bool)

(assert (=> b!1502848 (=> (not res!1023800) (not e!840500))))

(declare-datatypes ((List!35028 0))(
  ( (Nil!35025) (Cons!35024 (h!36422 (_ BitVec 64)) (t!49729 List!35028)) )
))
(declare-fun arrayNoDuplicates!0 (array!100208 (_ BitVec 32) List!35028) Bool)

(assert (=> b!1502848 (= res!1023800 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35025))))

(declare-fun b!1502849 () Bool)

(declare-fun res!1023801 () Bool)

(assert (=> b!1502849 (=> (not res!1023801) (not e!840500))))

(assert (=> b!1502849 (= res!1023801 (not (= (select (arr!48356 a!2850) index!625) (select (arr!48356 a!2850) j!87))))))

(declare-fun b!1502850 () Bool)

(declare-fun res!1023797 () Bool)

(assert (=> b!1502850 (=> (not res!1023797) (not e!840500))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502850 (= res!1023797 (validKeyInArray!0 (select (arr!48356 a!2850) i!996)))))

(declare-fun b!1502851 () Bool)

(assert (=> b!1502851 (= e!840500 false)))

(declare-fun lt!653428 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1502851 (= lt!653428 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1502852 () Bool)

(declare-fun res!1023803 () Bool)

(assert (=> b!1502852 (=> (not res!1023803) (not e!840500))))

(declare-datatypes ((SeekEntryResult!12573 0))(
  ( (MissingZero!12573 (index!52683 (_ BitVec 32))) (Found!12573 (index!52684 (_ BitVec 32))) (Intermediate!12573 (undefined!13385 Bool) (index!52685 (_ BitVec 32)) (x!134386 (_ BitVec 32))) (Undefined!12573) (MissingVacant!12573 (index!52686 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100208 (_ BitVec 32)) SeekEntryResult!12573)

(assert (=> b!1502852 (= res!1023803 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48356 a!2850) j!87) a!2850 mask!2661) (Found!12573 j!87)))))

(declare-fun res!1023796 () Bool)

(assert (=> start!127980 (=> (not res!1023796) (not e!840500))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127980 (= res!1023796 (validMask!0 mask!2661))))

(assert (=> start!127980 e!840500))

(assert (=> start!127980 true))

(declare-fun array_inv!37301 (array!100208) Bool)

(assert (=> start!127980 (array_inv!37301 a!2850)))

(declare-fun b!1502853 () Bool)

(declare-fun res!1023798 () Bool)

(assert (=> b!1502853 (=> (not res!1023798) (not e!840500))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100208 (_ BitVec 32)) Bool)

(assert (=> b!1502853 (= res!1023798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1502854 () Bool)

(declare-fun res!1023799 () Bool)

(assert (=> b!1502854 (=> (not res!1023799) (not e!840500))))

(assert (=> b!1502854 (= res!1023799 (validKeyInArray!0 (select (arr!48356 a!2850) j!87)))))

(assert (= (and start!127980 res!1023796) b!1502847))

(assert (= (and b!1502847 res!1023802) b!1502850))

(assert (= (and b!1502850 res!1023797) b!1502854))

(assert (= (and b!1502854 res!1023799) b!1502853))

(assert (= (and b!1502853 res!1023798) b!1502848))

(assert (= (and b!1502848 res!1023800) b!1502846))

(assert (= (and b!1502846 res!1023804) b!1502852))

(assert (= (and b!1502852 res!1023803) b!1502849))

(assert (= (and b!1502849 res!1023801) b!1502851))

(declare-fun m!1386133 () Bool)

(assert (=> b!1502853 m!1386133))

(declare-fun m!1386135 () Bool)

(assert (=> b!1502849 m!1386135))

(declare-fun m!1386137 () Bool)

(assert (=> b!1502849 m!1386137))

(declare-fun m!1386139 () Bool)

(assert (=> b!1502846 m!1386139))

(declare-fun m!1386141 () Bool)

(assert (=> b!1502846 m!1386141))

(declare-fun m!1386143 () Bool)

(assert (=> b!1502846 m!1386143))

(declare-fun m!1386145 () Bool)

(assert (=> b!1502850 m!1386145))

(assert (=> b!1502850 m!1386145))

(declare-fun m!1386147 () Bool)

(assert (=> b!1502850 m!1386147))

(declare-fun m!1386149 () Bool)

(assert (=> b!1502851 m!1386149))

(assert (=> b!1502852 m!1386137))

(assert (=> b!1502852 m!1386137))

(declare-fun m!1386151 () Bool)

(assert (=> b!1502852 m!1386151))

(declare-fun m!1386153 () Bool)

(assert (=> b!1502848 m!1386153))

(declare-fun m!1386155 () Bool)

(assert (=> start!127980 m!1386155))

(declare-fun m!1386157 () Bool)

(assert (=> start!127980 m!1386157))

(assert (=> b!1502854 m!1386137))

(assert (=> b!1502854 m!1386137))

(declare-fun m!1386159 () Bool)

(assert (=> b!1502854 m!1386159))

(check-sat (not b!1502851) (not start!127980) (not b!1502850) (not b!1502853) (not b!1502854) (not b!1502848) (not b!1502852))
