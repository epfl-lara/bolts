; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127716 () Bool)

(assert start!127716)

(declare-fun b!1499980 () Bool)

(declare-fun e!839480 () Bool)

(declare-fun e!839478 () Bool)

(assert (=> b!1499980 (= e!839480 e!839478)))

(declare-fun res!1021137 () Bool)

(assert (=> b!1499980 (=> (not res!1021137) (not e!839478))))

(declare-datatypes ((array!100010 0))(
  ( (array!100011 (arr!48260 (Array (_ BitVec 32) (_ BitVec 64))) (size!48811 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100010)

(declare-fun lt!652815 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(assert (=> b!1499980 (= res!1021137 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652815 #b00000000000000000000000000000000) (bvslt lt!652815 (size!48811 a!2850))))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499980 (= lt!652815 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499981 () Bool)

(declare-fun res!1021129 () Bool)

(assert (=> b!1499981 (=> (not res!1021129) (not e!839480))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1499981 (= res!1021129 (not (= (select (arr!48260 a!2850) index!625) (select (arr!48260 a!2850) j!87))))))

(declare-fun b!1499982 () Bool)

(declare-fun res!1021130 () Bool)

(assert (=> b!1499982 (=> (not res!1021130) (not e!839480))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1499982 (= res!1021130 (and (= (size!48811 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48811 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48811 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499983 () Bool)

(declare-fun res!1021131 () Bool)

(assert (=> b!1499983 (=> (not res!1021131) (not e!839480))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499983 (= res!1021131 (validKeyInArray!0 (select (arr!48260 a!2850) i!996)))))

(declare-fun b!1499984 () Bool)

(assert (=> b!1499984 (= e!839478 false)))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12489 0))(
  ( (MissingZero!12489 (index!52347 (_ BitVec 32))) (Found!12489 (index!52348 (_ BitVec 32))) (Intermediate!12489 (undefined!13301 Bool) (index!52349 (_ BitVec 32)) (x!134040 (_ BitVec 32))) (Undefined!12489) (MissingVacant!12489 (index!52350 (_ BitVec 32))) )
))
(declare-fun lt!652816 () SeekEntryResult!12489)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100010 (_ BitVec 32)) SeekEntryResult!12489)

(assert (=> b!1499984 (= lt!652816 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652815 vacantBefore!10 (select (arr!48260 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499985 () Bool)

(declare-fun res!1021134 () Bool)

(assert (=> b!1499985 (=> (not res!1021134) (not e!839480))))

(assert (=> b!1499985 (= res!1021134 (validKeyInArray!0 (select (arr!48260 a!2850) j!87)))))

(declare-fun res!1021135 () Bool)

(assert (=> start!127716 (=> (not res!1021135) (not e!839480))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127716 (= res!1021135 (validMask!0 mask!2661))))

(assert (=> start!127716 e!839480))

(assert (=> start!127716 true))

(declare-fun array_inv!37205 (array!100010) Bool)

(assert (=> start!127716 (array_inv!37205 a!2850)))

(declare-fun b!1499986 () Bool)

(declare-fun res!1021128 () Bool)

(assert (=> b!1499986 (=> (not res!1021128) (not e!839480))))

(declare-datatypes ((List!34932 0))(
  ( (Nil!34929) (Cons!34928 (h!36326 (_ BitVec 64)) (t!49633 List!34932)) )
))
(declare-fun arrayNoDuplicates!0 (array!100010 (_ BitVec 32) List!34932) Bool)

(assert (=> b!1499986 (= res!1021128 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34929))))

(declare-fun b!1499987 () Bool)

(declare-fun res!1021136 () Bool)

(assert (=> b!1499987 (=> (not res!1021136) (not e!839480))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499987 (= res!1021136 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48811 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48811 a!2850)) (= (select (arr!48260 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48260 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48811 a!2850))))))

(declare-fun b!1499988 () Bool)

(declare-fun res!1021132 () Bool)

(assert (=> b!1499988 (=> (not res!1021132) (not e!839480))))

(assert (=> b!1499988 (= res!1021132 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48260 a!2850) j!87) a!2850 mask!2661) (Found!12489 j!87)))))

(declare-fun b!1499989 () Bool)

(declare-fun res!1021133 () Bool)

(assert (=> b!1499989 (=> (not res!1021133) (not e!839480))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100010 (_ BitVec 32)) Bool)

(assert (=> b!1499989 (= res!1021133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127716 res!1021135) b!1499982))

(assert (= (and b!1499982 res!1021130) b!1499983))

(assert (= (and b!1499983 res!1021131) b!1499985))

(assert (= (and b!1499985 res!1021134) b!1499989))

(assert (= (and b!1499989 res!1021133) b!1499986))

(assert (= (and b!1499986 res!1021128) b!1499987))

(assert (= (and b!1499987 res!1021136) b!1499988))

(assert (= (and b!1499988 res!1021132) b!1499981))

(assert (= (and b!1499981 res!1021129) b!1499980))

(assert (= (and b!1499980 res!1021137) b!1499984))

(declare-fun m!1383231 () Bool)

(assert (=> b!1499985 m!1383231))

(assert (=> b!1499985 m!1383231))

(declare-fun m!1383233 () Bool)

(assert (=> b!1499985 m!1383233))

(declare-fun m!1383235 () Bool)

(assert (=> b!1499983 m!1383235))

(assert (=> b!1499983 m!1383235))

(declare-fun m!1383237 () Bool)

(assert (=> b!1499983 m!1383237))

(declare-fun m!1383239 () Bool)

(assert (=> b!1499981 m!1383239))

(assert (=> b!1499981 m!1383231))

(assert (=> b!1499984 m!1383231))

(assert (=> b!1499984 m!1383231))

(declare-fun m!1383241 () Bool)

(assert (=> b!1499984 m!1383241))

(declare-fun m!1383243 () Bool)

(assert (=> b!1499980 m!1383243))

(assert (=> b!1499988 m!1383231))

(assert (=> b!1499988 m!1383231))

(declare-fun m!1383245 () Bool)

(assert (=> b!1499988 m!1383245))

(declare-fun m!1383247 () Bool)

(assert (=> start!127716 m!1383247))

(declare-fun m!1383249 () Bool)

(assert (=> start!127716 m!1383249))

(declare-fun m!1383251 () Bool)

(assert (=> b!1499986 m!1383251))

(declare-fun m!1383253 () Bool)

(assert (=> b!1499987 m!1383253))

(declare-fun m!1383255 () Bool)

(assert (=> b!1499987 m!1383255))

(declare-fun m!1383257 () Bool)

(assert (=> b!1499987 m!1383257))

(declare-fun m!1383259 () Bool)

(assert (=> b!1499989 m!1383259))

(check-sat (not b!1499983) (not b!1499986) (not b!1499984) (not b!1499985) (not start!127716) (not b!1499989) (not b!1499980) (not b!1499988))
(check-sat)
