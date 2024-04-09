; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127984 () Bool)

(assert start!127984)

(declare-fun b!1502900 () Bool)

(declare-fun res!1023857 () Bool)

(declare-fun e!840511 () Bool)

(assert (=> b!1502900 (=> (not res!1023857) (not e!840511))))

(declare-datatypes ((array!100212 0))(
  ( (array!100213 (arr!48358 (Array (_ BitVec 32) (_ BitVec 64))) (size!48909 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100212)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502900 (= res!1023857 (validKeyInArray!0 (select (arr!48358 a!2850) i!996)))))

(declare-fun b!1502901 () Bool)

(declare-fun res!1023858 () Bool)

(assert (=> b!1502901 (=> (not res!1023858) (not e!840511))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502901 (= res!1023858 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48909 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48909 a!2850)) (= (select (arr!48358 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48358 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48909 a!2850))))))

(declare-fun b!1502902 () Bool)

(declare-fun res!1023852 () Bool)

(assert (=> b!1502902 (=> (not res!1023852) (not e!840511))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12575 0))(
  ( (MissingZero!12575 (index!52691 (_ BitVec 32))) (Found!12575 (index!52692 (_ BitVec 32))) (Intermediate!12575 (undefined!13387 Bool) (index!52693 (_ BitVec 32)) (x!134396 (_ BitVec 32))) (Undefined!12575) (MissingVacant!12575 (index!52694 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100212 (_ BitVec 32)) SeekEntryResult!12575)

(assert (=> b!1502902 (= res!1023852 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48358 a!2850) j!87) a!2850 mask!2661) (Found!12575 j!87)))))

(declare-fun b!1502903 () Bool)

(declare-fun res!1023855 () Bool)

(assert (=> b!1502903 (=> (not res!1023855) (not e!840511))))

(assert (=> b!1502903 (= res!1023855 (not (= (select (arr!48358 a!2850) index!625) (select (arr!48358 a!2850) j!87))))))

(declare-fun b!1502904 () Bool)

(declare-fun res!1023850 () Bool)

(assert (=> b!1502904 (=> (not res!1023850) (not e!840511))))

(declare-datatypes ((List!35030 0))(
  ( (Nil!35027) (Cons!35026 (h!36424 (_ BitVec 64)) (t!49731 List!35030)) )
))
(declare-fun arrayNoDuplicates!0 (array!100212 (_ BitVec 32) List!35030) Bool)

(assert (=> b!1502904 (= res!1023850 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35027))))

(declare-fun b!1502905 () Bool)

(declare-fun res!1023854 () Bool)

(assert (=> b!1502905 (=> (not res!1023854) (not e!840511))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100212 (_ BitVec 32)) Bool)

(assert (=> b!1502905 (= res!1023854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1023853 () Bool)

(assert (=> start!127984 (=> (not res!1023853) (not e!840511))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127984 (= res!1023853 (validMask!0 mask!2661))))

(assert (=> start!127984 e!840511))

(assert (=> start!127984 true))

(declare-fun array_inv!37303 (array!100212) Bool)

(assert (=> start!127984 (array_inv!37303 a!2850)))

(declare-fun b!1502906 () Bool)

(declare-fun res!1023856 () Bool)

(assert (=> b!1502906 (=> (not res!1023856) (not e!840511))))

(assert (=> b!1502906 (= res!1023856 (validKeyInArray!0 (select (arr!48358 a!2850) j!87)))))

(declare-fun b!1502907 () Bool)

(declare-fun res!1023851 () Bool)

(assert (=> b!1502907 (=> (not res!1023851) (not e!840511))))

(assert (=> b!1502907 (= res!1023851 (and (= (size!48909 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48909 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48909 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502908 () Bool)

(assert (=> b!1502908 (= e!840511 false)))

(declare-fun lt!653434 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1502908 (= lt!653434 (nextIndex!0 index!625 x!647 mask!2661))))

(assert (= (and start!127984 res!1023853) b!1502907))

(assert (= (and b!1502907 res!1023851) b!1502900))

(assert (= (and b!1502900 res!1023857) b!1502906))

(assert (= (and b!1502906 res!1023856) b!1502905))

(assert (= (and b!1502905 res!1023854) b!1502904))

(assert (= (and b!1502904 res!1023850) b!1502901))

(assert (= (and b!1502901 res!1023858) b!1502902))

(assert (= (and b!1502902 res!1023852) b!1502903))

(assert (= (and b!1502903 res!1023855) b!1502908))

(declare-fun m!1386189 () Bool)

(assert (=> b!1502900 m!1386189))

(assert (=> b!1502900 m!1386189))

(declare-fun m!1386191 () Bool)

(assert (=> b!1502900 m!1386191))

(declare-fun m!1386193 () Bool)

(assert (=> b!1502902 m!1386193))

(assert (=> b!1502902 m!1386193))

(declare-fun m!1386195 () Bool)

(assert (=> b!1502902 m!1386195))

(declare-fun m!1386197 () Bool)

(assert (=> b!1502908 m!1386197))

(assert (=> b!1502906 m!1386193))

(assert (=> b!1502906 m!1386193))

(declare-fun m!1386199 () Bool)

(assert (=> b!1502906 m!1386199))

(declare-fun m!1386201 () Bool)

(assert (=> b!1502905 m!1386201))

(declare-fun m!1386203 () Bool)

(assert (=> b!1502904 m!1386203))

(declare-fun m!1386205 () Bool)

(assert (=> b!1502901 m!1386205))

(declare-fun m!1386207 () Bool)

(assert (=> b!1502901 m!1386207))

(declare-fun m!1386209 () Bool)

(assert (=> b!1502901 m!1386209))

(declare-fun m!1386211 () Bool)

(assert (=> b!1502903 m!1386211))

(assert (=> b!1502903 m!1386193))

(declare-fun m!1386213 () Bool)

(assert (=> start!127984 m!1386213))

(declare-fun m!1386215 () Bool)

(assert (=> start!127984 m!1386215))

(push 1)

(assert (not b!1502902))

(assert (not b!1502906))

(assert (not b!1502908))

(assert (not start!127984))

(assert (not b!1502905))

(assert (not b!1502904))

(assert (not b!1502900))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

