; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127786 () Bool)

(assert start!127786)

(declare-fun res!1022197 () Bool)

(declare-fun e!839804 () Bool)

(assert (=> start!127786 (=> (not res!1022197) (not e!839804))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127786 (= res!1022197 (validMask!0 mask!2661))))

(assert (=> start!127786 e!839804))

(assert (=> start!127786 true))

(declare-datatypes ((array!100080 0))(
  ( (array!100081 (arr!48295 (Array (_ BitVec 32) (_ BitVec 64))) (size!48846 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100080)

(declare-fun array_inv!37240 (array!100080) Bool)

(assert (=> start!127786 (array_inv!37240 a!2850)))

(declare-fun b!1501041 () Bool)

(declare-fun res!1022196 () Bool)

(assert (=> b!1501041 (=> (not res!1022196) (not e!839804))))

(declare-datatypes ((List!34967 0))(
  ( (Nil!34964) (Cons!34963 (h!36361 (_ BitVec 64)) (t!49668 List!34967)) )
))
(declare-fun arrayNoDuplicates!0 (array!100080 (_ BitVec 32) List!34967) Bool)

(assert (=> b!1501041 (= res!1022196 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34964))))

(declare-fun b!1501042 () Bool)

(declare-fun res!1022191 () Bool)

(assert (=> b!1501042 (=> (not res!1022191) (not e!839804))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100080 (_ BitVec 32)) Bool)

(assert (=> b!1501042 (= res!1022191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501043 () Bool)

(declare-fun res!1022193 () Bool)

(declare-fun e!839806 () Bool)

(assert (=> b!1501043 (=> (not res!1022193) (not e!839806))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12524 0))(
  ( (MissingZero!12524 (index!52487 (_ BitVec 32))) (Found!12524 (index!52488 (_ BitVec 32))) (Intermediate!12524 (undefined!13336 Bool) (index!52489 (_ BitVec 32)) (x!134171 (_ BitVec 32))) (Undefined!12524) (MissingVacant!12524 (index!52490 (_ BitVec 32))) )
))
(declare-fun lt!653038 () SeekEntryResult!12524)

(declare-fun lt!653037 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100080 (_ BitVec 32)) SeekEntryResult!12524)

(assert (=> b!1501043 (= res!1022193 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653037 vacantBefore!10 (select (arr!48295 a!2850) j!87) a!2850 mask!2661) lt!653038))))

(declare-fun b!1501044 () Bool)

(declare-fun res!1022195 () Bool)

(assert (=> b!1501044 (=> (not res!1022195) (not e!839804))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501044 (= res!1022195 (validKeyInArray!0 (select (arr!48295 a!2850) i!996)))))

(declare-fun b!1501045 () Bool)

(declare-fun res!1022189 () Bool)

(assert (=> b!1501045 (=> (not res!1022189) (not e!839804))))

(assert (=> b!1501045 (= res!1022189 (validKeyInArray!0 (select (arr!48295 a!2850) j!87)))))

(declare-fun b!1501046 () Bool)

(assert (=> b!1501046 (= e!839806 (not (bvsge mask!2661 #b00000000000000000000000000000000)))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1501046 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653037 vacantAfter!10 (select (store (arr!48295 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100081 (store (arr!48295 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48846 a!2850)) mask!2661) lt!653038)))

(declare-datatypes ((Unit!50156 0))(
  ( (Unit!50157) )
))
(declare-fun lt!653036 () Unit!50156)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!100080 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50156)

(assert (=> b!1501046 (= lt!653036 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2850 i!996 j!87 (bvadd #b00000000000000000000000000000001 x!647) lt!653037 vacantBefore!10 vacantAfter!10 mask!2661))))

(declare-fun b!1501047 () Bool)

(declare-fun res!1022194 () Bool)

(assert (=> b!1501047 (=> (not res!1022194) (not e!839804))))

(declare-fun index!625 () (_ BitVec 32))

(assert (=> b!1501047 (= res!1022194 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48846 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48846 a!2850)) (= (select (arr!48295 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48295 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48846 a!2850))))))

(declare-fun b!1501048 () Bool)

(declare-fun res!1022192 () Bool)

(assert (=> b!1501048 (=> (not res!1022192) (not e!839804))))

(assert (=> b!1501048 (= res!1022192 (and (= (size!48846 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48846 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48846 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501049 () Bool)

(declare-fun res!1022199 () Bool)

(declare-fun e!839805 () Bool)

(assert (=> b!1501049 (=> (not res!1022199) (not e!839805))))

(assert (=> b!1501049 (= res!1022199 (not (= (select (arr!48295 a!2850) index!625) (select (arr!48295 a!2850) j!87))))))

(declare-fun b!1501050 () Bool)

(assert (=> b!1501050 (= e!839804 e!839805)))

(declare-fun res!1022190 () Bool)

(assert (=> b!1501050 (=> (not res!1022190) (not e!839805))))

(assert (=> b!1501050 (= res!1022190 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48295 a!2850) j!87) a!2850 mask!2661) lt!653038))))

(assert (=> b!1501050 (= lt!653038 (Found!12524 j!87))))

(declare-fun b!1501051 () Bool)

(assert (=> b!1501051 (= e!839805 e!839806)))

(declare-fun res!1022198 () Bool)

(assert (=> b!1501051 (=> (not res!1022198) (not e!839806))))

(assert (=> b!1501051 (= res!1022198 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653037 #b00000000000000000000000000000000) (bvslt lt!653037 (size!48846 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1501051 (= lt!653037 (nextIndex!0 index!625 x!647 mask!2661))))

(assert (= (and start!127786 res!1022197) b!1501048))

(assert (= (and b!1501048 res!1022192) b!1501044))

(assert (= (and b!1501044 res!1022195) b!1501045))

(assert (= (and b!1501045 res!1022189) b!1501042))

(assert (= (and b!1501042 res!1022191) b!1501041))

(assert (= (and b!1501041 res!1022196) b!1501047))

(assert (= (and b!1501047 res!1022194) b!1501050))

(assert (= (and b!1501050 res!1022190) b!1501049))

(assert (= (and b!1501049 res!1022199) b!1501051))

(assert (= (and b!1501051 res!1022198) b!1501043))

(assert (= (and b!1501043 res!1022193) b!1501046))

(declare-fun m!1384299 () Bool)

(assert (=> b!1501041 m!1384299))

(declare-fun m!1384301 () Bool)

(assert (=> start!127786 m!1384301))

(declare-fun m!1384303 () Bool)

(assert (=> start!127786 m!1384303))

(declare-fun m!1384305 () Bool)

(assert (=> b!1501043 m!1384305))

(assert (=> b!1501043 m!1384305))

(declare-fun m!1384307 () Bool)

(assert (=> b!1501043 m!1384307))

(declare-fun m!1384309 () Bool)

(assert (=> b!1501046 m!1384309))

(declare-fun m!1384311 () Bool)

(assert (=> b!1501046 m!1384311))

(assert (=> b!1501046 m!1384311))

(declare-fun m!1384313 () Bool)

(assert (=> b!1501046 m!1384313))

(declare-fun m!1384315 () Bool)

(assert (=> b!1501046 m!1384315))

(declare-fun m!1384317 () Bool)

(assert (=> b!1501051 m!1384317))

(declare-fun m!1384319 () Bool)

(assert (=> b!1501042 m!1384319))

(assert (=> b!1501050 m!1384305))

(assert (=> b!1501050 m!1384305))

(declare-fun m!1384321 () Bool)

(assert (=> b!1501050 m!1384321))

(assert (=> b!1501045 m!1384305))

(assert (=> b!1501045 m!1384305))

(declare-fun m!1384323 () Bool)

(assert (=> b!1501045 m!1384323))

(declare-fun m!1384325 () Bool)

(assert (=> b!1501047 m!1384325))

(assert (=> b!1501047 m!1384309))

(declare-fun m!1384327 () Bool)

(assert (=> b!1501047 m!1384327))

(declare-fun m!1384329 () Bool)

(assert (=> b!1501049 m!1384329))

(assert (=> b!1501049 m!1384305))

(declare-fun m!1384331 () Bool)

(assert (=> b!1501044 m!1384331))

(assert (=> b!1501044 m!1384331))

(declare-fun m!1384333 () Bool)

(assert (=> b!1501044 m!1384333))

(push 1)

