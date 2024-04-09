; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127638 () Bool)

(assert start!127638)

(declare-fun b!1498904 () Bool)

(declare-fun res!1020057 () Bool)

(declare-fun e!839167 () Bool)

(assert (=> b!1498904 (=> (not res!1020057) (not e!839167))))

(declare-datatypes ((array!99932 0))(
  ( (array!99933 (arr!48221 (Array (_ BitVec 32) (_ BitVec 64))) (size!48772 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99932)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1498904 (= res!1020057 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48772 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48772 a!2850)) (= (select (arr!48221 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48221 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48772 a!2850))))))

(declare-fun res!1020060 () Bool)

(assert (=> start!127638 (=> (not res!1020060) (not e!839167))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127638 (= res!1020060 (validMask!0 mask!2661))))

(assert (=> start!127638 e!839167))

(assert (=> start!127638 true))

(declare-fun array_inv!37166 (array!99932) Bool)

(assert (=> start!127638 (array_inv!37166 a!2850)))

(declare-fun b!1498905 () Bool)

(declare-fun res!1020055 () Bool)

(assert (=> b!1498905 (=> (not res!1020055) (not e!839167))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498905 (= res!1020055 (validKeyInArray!0 (select (arr!48221 a!2850) i!996)))))

(declare-fun b!1498906 () Bool)

(declare-fun res!1020053 () Bool)

(assert (=> b!1498906 (=> (not res!1020053) (not e!839167))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99932 (_ BitVec 32)) Bool)

(assert (=> b!1498906 (= res!1020053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498907 () Bool)

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498907 (= e!839167 (not (validKeyInArray!0 (select (store (arr!48221 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87))))))

(declare-fun b!1498908 () Bool)

(declare-fun res!1020058 () Bool)

(assert (=> b!1498908 (=> (not res!1020058) (not e!839167))))

(declare-datatypes ((SeekEntryResult!12450 0))(
  ( (MissingZero!12450 (index!52191 (_ BitVec 32))) (Found!12450 (index!52192 (_ BitVec 32))) (Intermediate!12450 (undefined!13262 Bool) (index!52193 (_ BitVec 32)) (x!133897 (_ BitVec 32))) (Undefined!12450) (MissingVacant!12450 (index!52194 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99932 (_ BitVec 32)) SeekEntryResult!12450)

(assert (=> b!1498908 (= res!1020058 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48221 a!2850) j!87) a!2850 mask!2661) (Found!12450 j!87)))))

(declare-fun b!1498909 () Bool)

(declare-fun res!1020054 () Bool)

(assert (=> b!1498909 (=> (not res!1020054) (not e!839167))))

(assert (=> b!1498909 (= res!1020054 (and (= (select (arr!48221 a!2850) index!625) (select (arr!48221 a!2850) j!87)) (= j!87 index!625) (bvsge mask!2661 #b00000000000000000000000000000000) (bvslt index!625 (bvadd #b00000000000000000000000000000001 mask!2661)) (bvslt vacantAfter!10 (bvadd #b00000000000000000000000000000001 mask!2661))))))

(declare-fun b!1498910 () Bool)

(declare-fun res!1020052 () Bool)

(assert (=> b!1498910 (=> (not res!1020052) (not e!839167))))

(declare-datatypes ((List!34893 0))(
  ( (Nil!34890) (Cons!34889 (h!36287 (_ BitVec 64)) (t!49594 List!34893)) )
))
(declare-fun arrayNoDuplicates!0 (array!99932 (_ BitVec 32) List!34893) Bool)

(assert (=> b!1498910 (= res!1020052 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34890))))

(declare-fun b!1498911 () Bool)

(declare-fun res!1020059 () Bool)

(assert (=> b!1498911 (=> (not res!1020059) (not e!839167))))

(assert (=> b!1498911 (= res!1020059 (and (= (size!48772 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48772 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48772 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498912 () Bool)

(declare-fun res!1020056 () Bool)

(assert (=> b!1498912 (=> (not res!1020056) (not e!839167))))

(assert (=> b!1498912 (= res!1020056 (validKeyInArray!0 (select (arr!48221 a!2850) j!87)))))

(assert (= (and start!127638 res!1020060) b!1498911))

(assert (= (and b!1498911 res!1020059) b!1498905))

(assert (= (and b!1498905 res!1020055) b!1498912))

(assert (= (and b!1498912 res!1020056) b!1498906))

(assert (= (and b!1498906 res!1020053) b!1498910))

(assert (= (and b!1498910 res!1020052) b!1498904))

(assert (= (and b!1498904 res!1020057) b!1498908))

(assert (= (and b!1498908 res!1020058) b!1498909))

(assert (= (and b!1498909 res!1020054) b!1498907))

(declare-fun m!1382121 () Bool)

(assert (=> b!1498905 m!1382121))

(assert (=> b!1498905 m!1382121))

(declare-fun m!1382123 () Bool)

(assert (=> b!1498905 m!1382123))

(declare-fun m!1382125 () Bool)

(assert (=> start!127638 m!1382125))

(declare-fun m!1382127 () Bool)

(assert (=> start!127638 m!1382127))

(declare-fun m!1382129 () Bool)

(assert (=> b!1498904 m!1382129))

(declare-fun m!1382131 () Bool)

(assert (=> b!1498904 m!1382131))

(declare-fun m!1382133 () Bool)

(assert (=> b!1498904 m!1382133))

(declare-fun m!1382135 () Bool)

(assert (=> b!1498908 m!1382135))

(assert (=> b!1498908 m!1382135))

(declare-fun m!1382137 () Bool)

(assert (=> b!1498908 m!1382137))

(declare-fun m!1382139 () Bool)

(assert (=> b!1498906 m!1382139))

(declare-fun m!1382141 () Bool)

(assert (=> b!1498909 m!1382141))

(assert (=> b!1498909 m!1382135))

(declare-fun m!1382143 () Bool)

(assert (=> b!1498910 m!1382143))

(assert (=> b!1498907 m!1382131))

(declare-fun m!1382145 () Bool)

(assert (=> b!1498907 m!1382145))

(assert (=> b!1498907 m!1382145))

(declare-fun m!1382147 () Bool)

(assert (=> b!1498907 m!1382147))

(assert (=> b!1498912 m!1382135))

(assert (=> b!1498912 m!1382135))

(declare-fun m!1382149 () Bool)

(assert (=> b!1498912 m!1382149))

(check-sat (not b!1498905) (not start!127638) (not b!1498907) (not b!1498912) (not b!1498910) (not b!1498908) (not b!1498906))
(check-sat)
