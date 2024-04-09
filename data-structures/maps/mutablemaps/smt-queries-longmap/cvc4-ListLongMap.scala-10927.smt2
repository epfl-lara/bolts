; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127874 () Bool)

(assert start!127874)

(declare-fun b!1502154 () Bool)

(declare-fun res!1023304 () Bool)

(declare-fun e!840199 () Bool)

(assert (=> b!1502154 (=> (not res!1023304) (not e!840199))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100168 0))(
  ( (array!100169 (arr!48339 (Array (_ BitVec 32) (_ BitVec 64))) (size!48890 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100168)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1502154 (= res!1023304 (and (= (size!48890 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48890 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48890 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502155 () Bool)

(declare-fun res!1023303 () Bool)

(assert (=> b!1502155 (=> (not res!1023303) (not e!840199))))

(declare-datatypes ((List!35011 0))(
  ( (Nil!35008) (Cons!35007 (h!36405 (_ BitVec 64)) (t!49712 List!35011)) )
))
(declare-fun arrayNoDuplicates!0 (array!100168 (_ BitVec 32) List!35011) Bool)

(assert (=> b!1502155 (= res!1023303 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35008))))

(declare-fun b!1502156 () Bool)

(declare-fun res!1023302 () Bool)

(assert (=> b!1502156 (=> (not res!1023302) (not e!840199))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502156 (= res!1023302 (validKeyInArray!0 (select (arr!48339 a!2850) j!87)))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun b!1502157 () Bool)

(assert (=> b!1502157 (= e!840199 (and (= (select (arr!48339 a!2850) index!625) (select (arr!48339 a!2850) j!87)) (not (= j!87 index!625))))))

(declare-fun b!1502158 () Bool)

(declare-fun res!1023307 () Bool)

(assert (=> b!1502158 (=> (not res!1023307) (not e!840199))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12556 0))(
  ( (MissingZero!12556 (index!52615 (_ BitVec 32))) (Found!12556 (index!52616 (_ BitVec 32))) (Intermediate!12556 (undefined!13368 Bool) (index!52617 (_ BitVec 32)) (x!134315 (_ BitVec 32))) (Undefined!12556) (MissingVacant!12556 (index!52618 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100168 (_ BitVec 32)) SeekEntryResult!12556)

(assert (=> b!1502158 (= res!1023307 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48339 a!2850) j!87) a!2850 mask!2661) (Found!12556 j!87)))))

(declare-fun b!1502159 () Bool)

(declare-fun res!1023306 () Bool)

(assert (=> b!1502159 (=> (not res!1023306) (not e!840199))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502159 (= res!1023306 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48890 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48890 a!2850)) (= (select (arr!48339 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48339 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48890 a!2850))))))

(declare-fun res!1023308 () Bool)

(assert (=> start!127874 (=> (not res!1023308) (not e!840199))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127874 (= res!1023308 (validMask!0 mask!2661))))

(assert (=> start!127874 e!840199))

(assert (=> start!127874 true))

(declare-fun array_inv!37284 (array!100168) Bool)

(assert (=> start!127874 (array_inv!37284 a!2850)))

(declare-fun b!1502160 () Bool)

(declare-fun res!1023309 () Bool)

(assert (=> b!1502160 (=> (not res!1023309) (not e!840199))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100168 (_ BitVec 32)) Bool)

(assert (=> b!1502160 (= res!1023309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1502161 () Bool)

(declare-fun res!1023305 () Bool)

(assert (=> b!1502161 (=> (not res!1023305) (not e!840199))))

(assert (=> b!1502161 (= res!1023305 (validKeyInArray!0 (select (arr!48339 a!2850) i!996)))))

(assert (= (and start!127874 res!1023308) b!1502154))

(assert (= (and b!1502154 res!1023304) b!1502161))

(assert (= (and b!1502161 res!1023305) b!1502156))

(assert (= (and b!1502156 res!1023302) b!1502160))

(assert (= (and b!1502160 res!1023309) b!1502155))

(assert (= (and b!1502155 res!1023303) b!1502159))

(assert (= (and b!1502159 res!1023306) b!1502158))

(assert (= (and b!1502158 res!1023307) b!1502157))

(declare-fun m!1385521 () Bool)

(assert (=> b!1502158 m!1385521))

(assert (=> b!1502158 m!1385521))

(declare-fun m!1385523 () Bool)

(assert (=> b!1502158 m!1385523))

(declare-fun m!1385525 () Bool)

(assert (=> b!1502160 m!1385525))

(declare-fun m!1385527 () Bool)

(assert (=> b!1502161 m!1385527))

(assert (=> b!1502161 m!1385527))

(declare-fun m!1385529 () Bool)

(assert (=> b!1502161 m!1385529))

(declare-fun m!1385531 () Bool)

(assert (=> b!1502157 m!1385531))

(assert (=> b!1502157 m!1385521))

(declare-fun m!1385533 () Bool)

(assert (=> b!1502155 m!1385533))

(declare-fun m!1385535 () Bool)

(assert (=> start!127874 m!1385535))

(declare-fun m!1385537 () Bool)

(assert (=> start!127874 m!1385537))

(assert (=> b!1502156 m!1385521))

(assert (=> b!1502156 m!1385521))

(declare-fun m!1385539 () Bool)

(assert (=> b!1502156 m!1385539))

(declare-fun m!1385541 () Bool)

(assert (=> b!1502159 m!1385541))

(declare-fun m!1385543 () Bool)

(assert (=> b!1502159 m!1385543))

(declare-fun m!1385545 () Bool)

(assert (=> b!1502159 m!1385545))

(push 1)

(assert (not start!127874))

(assert (not b!1502160))

(assert (not b!1502158))

(assert (not b!1502161))

(assert (not b!1502156))

(assert (not b!1502155))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!157623 () Bool)

(assert (=> d!157623 (= (validKeyInArray!0 (select (arr!48339 a!2850) j!87)) (and (not (= (select (arr!48339 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48339 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1502156 d!157623))

(declare-fun d!157625 () Bool)

(assert (=> d!157625 (= (validKeyInArray!0 (select (arr!48339 a!2850) i!996)) (and (not (= (select (arr!48339 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48339 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1502161 d!157625))

(declare-fun d!157627 () Bool)

(assert (=> d!157627 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

