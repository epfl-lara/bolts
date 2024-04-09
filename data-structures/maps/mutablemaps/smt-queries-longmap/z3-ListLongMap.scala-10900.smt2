; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127710 () Bool)

(assert start!127710)

(declare-fun b!1499890 () Bool)

(declare-fun e!839452 () Bool)

(assert (=> b!1499890 (= e!839452 false)))

(declare-fun lt!652797 () (_ BitVec 32))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100004 0))(
  ( (array!100005 (arr!48257 (Array (_ BitVec 32) (_ BitVec 64))) (size!48808 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100004)

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12486 0))(
  ( (MissingZero!12486 (index!52335 (_ BitVec 32))) (Found!12486 (index!52336 (_ BitVec 32))) (Intermediate!12486 (undefined!13298 Bool) (index!52337 (_ BitVec 32)) (x!134029 (_ BitVec 32))) (Undefined!12486) (MissingVacant!12486 (index!52338 (_ BitVec 32))) )
))
(declare-fun lt!652798 () SeekEntryResult!12486)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100004 (_ BitVec 32)) SeekEntryResult!12486)

(assert (=> b!1499890 (= lt!652798 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652797 vacantBefore!10 (select (arr!48257 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499891 () Bool)

(declare-fun res!1021043 () Bool)

(declare-fun e!839451 () Bool)

(assert (=> b!1499891 (=> (not res!1021043) (not e!839451))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100004 (_ BitVec 32)) Bool)

(assert (=> b!1499891 (= res!1021043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499892 () Bool)

(declare-fun res!1021044 () Bool)

(assert (=> b!1499892 (=> (not res!1021044) (not e!839451))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499892 (= res!1021044 (validKeyInArray!0 (select (arr!48257 a!2850) j!87)))))

(declare-fun b!1499893 () Bool)

(declare-fun res!1021039 () Bool)

(assert (=> b!1499893 (=> (not res!1021039) (not e!839451))))

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1499893 (= res!1021039 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48257 a!2850) j!87) a!2850 mask!2661) (Found!12486 j!87)))))

(declare-fun b!1499894 () Bool)

(declare-fun res!1021042 () Bool)

(assert (=> b!1499894 (=> (not res!1021042) (not e!839451))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499894 (= res!1021042 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48808 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48808 a!2850)) (= (select (arr!48257 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48257 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48808 a!2850))))))

(declare-fun b!1499895 () Bool)

(assert (=> b!1499895 (= e!839451 e!839452)))

(declare-fun res!1021045 () Bool)

(assert (=> b!1499895 (=> (not res!1021045) (not e!839452))))

(assert (=> b!1499895 (= res!1021045 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652797 #b00000000000000000000000000000000) (bvslt lt!652797 (size!48808 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499895 (= lt!652797 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499896 () Bool)

(declare-fun res!1021038 () Bool)

(assert (=> b!1499896 (=> (not res!1021038) (not e!839451))))

(declare-datatypes ((List!34929 0))(
  ( (Nil!34926) (Cons!34925 (h!36323 (_ BitVec 64)) (t!49630 List!34929)) )
))
(declare-fun arrayNoDuplicates!0 (array!100004 (_ BitVec 32) List!34929) Bool)

(assert (=> b!1499896 (= res!1021038 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34926))))

(declare-fun b!1499897 () Bool)

(declare-fun res!1021041 () Bool)

(assert (=> b!1499897 (=> (not res!1021041) (not e!839451))))

(assert (=> b!1499897 (= res!1021041 (and (= (size!48808 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48808 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48808 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1021047 () Bool)

(assert (=> start!127710 (=> (not res!1021047) (not e!839451))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127710 (= res!1021047 (validMask!0 mask!2661))))

(assert (=> start!127710 e!839451))

(assert (=> start!127710 true))

(declare-fun array_inv!37202 (array!100004) Bool)

(assert (=> start!127710 (array_inv!37202 a!2850)))

(declare-fun b!1499898 () Bool)

(declare-fun res!1021040 () Bool)

(assert (=> b!1499898 (=> (not res!1021040) (not e!839451))))

(assert (=> b!1499898 (= res!1021040 (not (= (select (arr!48257 a!2850) index!625) (select (arr!48257 a!2850) j!87))))))

(declare-fun b!1499899 () Bool)

(declare-fun res!1021046 () Bool)

(assert (=> b!1499899 (=> (not res!1021046) (not e!839451))))

(assert (=> b!1499899 (= res!1021046 (validKeyInArray!0 (select (arr!48257 a!2850) i!996)))))

(assert (= (and start!127710 res!1021047) b!1499897))

(assert (= (and b!1499897 res!1021041) b!1499899))

(assert (= (and b!1499899 res!1021046) b!1499892))

(assert (= (and b!1499892 res!1021044) b!1499891))

(assert (= (and b!1499891 res!1021043) b!1499896))

(assert (= (and b!1499896 res!1021038) b!1499894))

(assert (= (and b!1499894 res!1021042) b!1499893))

(assert (= (and b!1499893 res!1021039) b!1499898))

(assert (= (and b!1499898 res!1021040) b!1499895))

(assert (= (and b!1499895 res!1021045) b!1499890))

(declare-fun m!1383141 () Bool)

(assert (=> b!1499898 m!1383141))

(declare-fun m!1383143 () Bool)

(assert (=> b!1499898 m!1383143))

(declare-fun m!1383145 () Bool)

(assert (=> b!1499899 m!1383145))

(assert (=> b!1499899 m!1383145))

(declare-fun m!1383147 () Bool)

(assert (=> b!1499899 m!1383147))

(declare-fun m!1383149 () Bool)

(assert (=> b!1499891 m!1383149))

(assert (=> b!1499893 m!1383143))

(assert (=> b!1499893 m!1383143))

(declare-fun m!1383151 () Bool)

(assert (=> b!1499893 m!1383151))

(declare-fun m!1383153 () Bool)

(assert (=> b!1499895 m!1383153))

(assert (=> b!1499892 m!1383143))

(assert (=> b!1499892 m!1383143))

(declare-fun m!1383155 () Bool)

(assert (=> b!1499892 m!1383155))

(declare-fun m!1383157 () Bool)

(assert (=> start!127710 m!1383157))

(declare-fun m!1383159 () Bool)

(assert (=> start!127710 m!1383159))

(assert (=> b!1499890 m!1383143))

(assert (=> b!1499890 m!1383143))

(declare-fun m!1383161 () Bool)

(assert (=> b!1499890 m!1383161))

(declare-fun m!1383163 () Bool)

(assert (=> b!1499896 m!1383163))

(declare-fun m!1383165 () Bool)

(assert (=> b!1499894 m!1383165))

(declare-fun m!1383167 () Bool)

(assert (=> b!1499894 m!1383167))

(declare-fun m!1383169 () Bool)

(assert (=> b!1499894 m!1383169))

(check-sat (not b!1499891) (not start!127710) (not b!1499892) (not b!1499893) (not b!1499896) (not b!1499890) (not b!1499899) (not b!1499895))
(check-sat)
