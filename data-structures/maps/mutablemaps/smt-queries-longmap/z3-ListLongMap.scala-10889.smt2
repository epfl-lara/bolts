; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127644 () Bool)

(assert start!127644)

(declare-fun b!1498975 () Bool)

(declare-fun res!1020125 () Bool)

(declare-fun e!839185 () Bool)

(assert (=> b!1498975 (=> (not res!1020125) (not e!839185))))

(declare-datatypes ((array!99938 0))(
  ( (array!99939 (arr!48224 (Array (_ BitVec 32) (_ BitVec 64))) (size!48775 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99938)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498975 (= res!1020125 (validKeyInArray!0 (select (arr!48224 a!2850) i!996)))))

(declare-fun b!1498976 () Bool)

(declare-fun res!1020128 () Bool)

(assert (=> b!1498976 (=> (not res!1020128) (not e!839185))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1498976 (= res!1020128 (validKeyInArray!0 (select (arr!48224 a!2850) j!87)))))

(declare-fun b!1498977 () Bool)

(assert (=> b!1498977 (= e!839185 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12453 0))(
  ( (MissingZero!12453 (index!52203 (_ BitVec 32))) (Found!12453 (index!52204 (_ BitVec 32))) (Intermediate!12453 (undefined!13265 Bool) (index!52205 (_ BitVec 32)) (x!133908 (_ BitVec 32))) (Undefined!12453) (MissingVacant!12453 (index!52206 (_ BitVec 32))) )
))
(declare-fun lt!652648 () SeekEntryResult!12453)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99938 (_ BitVec 32)) SeekEntryResult!12453)

(assert (=> b!1498977 (= lt!652648 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48224 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1498978 () Bool)

(declare-fun res!1020124 () Bool)

(assert (=> b!1498978 (=> (not res!1020124) (not e!839185))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1498978 (= res!1020124 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48775 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48775 a!2850)) (= (select (arr!48224 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48224 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48775 a!2850))))))

(declare-fun b!1498979 () Bool)

(declare-fun res!1020127 () Bool)

(assert (=> b!1498979 (=> (not res!1020127) (not e!839185))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99938 (_ BitVec 32)) Bool)

(assert (=> b!1498979 (= res!1020127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498980 () Bool)

(declare-fun res!1020129 () Bool)

(assert (=> b!1498980 (=> (not res!1020129) (not e!839185))))

(assert (=> b!1498980 (= res!1020129 (and (= (size!48775 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48775 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48775 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1020126 () Bool)

(assert (=> start!127644 (=> (not res!1020126) (not e!839185))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127644 (= res!1020126 (validMask!0 mask!2661))))

(assert (=> start!127644 e!839185))

(assert (=> start!127644 true))

(declare-fun array_inv!37169 (array!99938) Bool)

(assert (=> start!127644 (array_inv!37169 a!2850)))

(declare-fun b!1498981 () Bool)

(declare-fun res!1020123 () Bool)

(assert (=> b!1498981 (=> (not res!1020123) (not e!839185))))

(declare-datatypes ((List!34896 0))(
  ( (Nil!34893) (Cons!34892 (h!36290 (_ BitVec 64)) (t!49597 List!34896)) )
))
(declare-fun arrayNoDuplicates!0 (array!99938 (_ BitVec 32) List!34896) Bool)

(assert (=> b!1498981 (= res!1020123 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34893))))

(assert (= (and start!127644 res!1020126) b!1498980))

(assert (= (and b!1498980 res!1020129) b!1498975))

(assert (= (and b!1498975 res!1020125) b!1498976))

(assert (= (and b!1498976 res!1020128) b!1498979))

(assert (= (and b!1498979 res!1020127) b!1498981))

(assert (= (and b!1498981 res!1020123) b!1498978))

(assert (= (and b!1498978 res!1020124) b!1498977))

(declare-fun m!1382205 () Bool)

(assert (=> b!1498981 m!1382205))

(declare-fun m!1382207 () Bool)

(assert (=> b!1498975 m!1382207))

(assert (=> b!1498975 m!1382207))

(declare-fun m!1382209 () Bool)

(assert (=> b!1498975 m!1382209))

(declare-fun m!1382211 () Bool)

(assert (=> b!1498979 m!1382211))

(declare-fun m!1382213 () Bool)

(assert (=> start!127644 m!1382213))

(declare-fun m!1382215 () Bool)

(assert (=> start!127644 m!1382215))

(declare-fun m!1382217 () Bool)

(assert (=> b!1498977 m!1382217))

(assert (=> b!1498977 m!1382217))

(declare-fun m!1382219 () Bool)

(assert (=> b!1498977 m!1382219))

(declare-fun m!1382221 () Bool)

(assert (=> b!1498978 m!1382221))

(declare-fun m!1382223 () Bool)

(assert (=> b!1498978 m!1382223))

(declare-fun m!1382225 () Bool)

(assert (=> b!1498978 m!1382225))

(assert (=> b!1498976 m!1382217))

(assert (=> b!1498976 m!1382217))

(declare-fun m!1382227 () Bool)

(assert (=> b!1498976 m!1382227))

(check-sat (not b!1498977) (not b!1498975) (not b!1498976) (not b!1498979) (not start!127644) (not b!1498981))
