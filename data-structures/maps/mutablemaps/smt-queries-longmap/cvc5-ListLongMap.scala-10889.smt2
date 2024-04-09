; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127642 () Bool)

(assert start!127642)

(declare-fun b!1498954 () Bool)

(declare-fun res!1020105 () Bool)

(declare-fun e!839180 () Bool)

(assert (=> b!1498954 (=> (not res!1020105) (not e!839180))))

(declare-datatypes ((array!99936 0))(
  ( (array!99937 (arr!48223 (Array (_ BitVec 32) (_ BitVec 64))) (size!48774 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99936)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99936 (_ BitVec 32)) Bool)

(assert (=> b!1498954 (= res!1020105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498955 () Bool)

(declare-fun res!1020107 () Bool)

(assert (=> b!1498955 (=> (not res!1020107) (not e!839180))))

(declare-datatypes ((List!34895 0))(
  ( (Nil!34892) (Cons!34891 (h!36289 (_ BitVec 64)) (t!49596 List!34895)) )
))
(declare-fun arrayNoDuplicates!0 (array!99936 (_ BitVec 32) List!34895) Bool)

(assert (=> b!1498955 (= res!1020107 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34892))))

(declare-fun res!1020106 () Bool)

(assert (=> start!127642 (=> (not res!1020106) (not e!839180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127642 (= res!1020106 (validMask!0 mask!2661))))

(assert (=> start!127642 e!839180))

(assert (=> start!127642 true))

(declare-fun array_inv!37168 (array!99936) Bool)

(assert (=> start!127642 (array_inv!37168 a!2850)))

(declare-fun b!1498956 () Bool)

(declare-fun res!1020103 () Bool)

(assert (=> b!1498956 (=> (not res!1020103) (not e!839180))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498956 (= res!1020103 (validKeyInArray!0 (select (arr!48223 a!2850) j!87)))))

(declare-fun b!1498957 () Bool)

(declare-fun res!1020102 () Bool)

(assert (=> b!1498957 (=> (not res!1020102) (not e!839180))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1498957 (= res!1020102 (and (= (size!48774 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48774 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48774 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498958 () Bool)

(declare-fun res!1020108 () Bool)

(assert (=> b!1498958 (=> (not res!1020108) (not e!839180))))

(assert (=> b!1498958 (= res!1020108 (validKeyInArray!0 (select (arr!48223 a!2850) i!996)))))

(declare-fun b!1498959 () Bool)

(assert (=> b!1498959 (= e!839180 false)))

(declare-fun index!625 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12452 0))(
  ( (MissingZero!12452 (index!52199 (_ BitVec 32))) (Found!12452 (index!52200 (_ BitVec 32))) (Intermediate!12452 (undefined!13264 Bool) (index!52201 (_ BitVec 32)) (x!133907 (_ BitVec 32))) (Undefined!12452) (MissingVacant!12452 (index!52202 (_ BitVec 32))) )
))
(declare-fun lt!652645 () SeekEntryResult!12452)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99936 (_ BitVec 32)) SeekEntryResult!12452)

(assert (=> b!1498959 (= lt!652645 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48223 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1498960 () Bool)

(declare-fun res!1020104 () Bool)

(assert (=> b!1498960 (=> (not res!1020104) (not e!839180))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498960 (= res!1020104 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48774 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48774 a!2850)) (= (select (arr!48223 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48223 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48774 a!2850))))))

(assert (= (and start!127642 res!1020106) b!1498957))

(assert (= (and b!1498957 res!1020102) b!1498958))

(assert (= (and b!1498958 res!1020108) b!1498956))

(assert (= (and b!1498956 res!1020103) b!1498954))

(assert (= (and b!1498954 res!1020105) b!1498955))

(assert (= (and b!1498955 res!1020107) b!1498960))

(assert (= (and b!1498960 res!1020104) b!1498959))

(declare-fun m!1382181 () Bool)

(assert (=> b!1498955 m!1382181))

(declare-fun m!1382183 () Bool)

(assert (=> b!1498958 m!1382183))

(assert (=> b!1498958 m!1382183))

(declare-fun m!1382185 () Bool)

(assert (=> b!1498958 m!1382185))

(declare-fun m!1382187 () Bool)

(assert (=> start!127642 m!1382187))

(declare-fun m!1382189 () Bool)

(assert (=> start!127642 m!1382189))

(declare-fun m!1382191 () Bool)

(assert (=> b!1498954 m!1382191))

(declare-fun m!1382193 () Bool)

(assert (=> b!1498956 m!1382193))

(assert (=> b!1498956 m!1382193))

(declare-fun m!1382195 () Bool)

(assert (=> b!1498956 m!1382195))

(declare-fun m!1382197 () Bool)

(assert (=> b!1498960 m!1382197))

(declare-fun m!1382199 () Bool)

(assert (=> b!1498960 m!1382199))

(declare-fun m!1382201 () Bool)

(assert (=> b!1498960 m!1382201))

(assert (=> b!1498959 m!1382193))

(assert (=> b!1498959 m!1382193))

(declare-fun m!1382203 () Bool)

(assert (=> b!1498959 m!1382203))

(push 1)

(assert (not b!1498955))

(assert (not b!1498954))

(assert (not b!1498959))

(assert (not start!127642))

(assert (not b!1498956))

(assert (not b!1498958))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

