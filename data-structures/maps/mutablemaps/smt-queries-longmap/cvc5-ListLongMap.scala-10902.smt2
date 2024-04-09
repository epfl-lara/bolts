; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127720 () Bool)

(assert start!127720)

(declare-fun b!1500040 () Bool)

(declare-fun res!1021191 () Bool)

(declare-fun e!839498 () Bool)

(assert (=> b!1500040 (=> (not res!1021191) (not e!839498))))

(declare-datatypes ((array!100014 0))(
  ( (array!100015 (arr!48262 (Array (_ BitVec 32) (_ BitVec 64))) (size!48813 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100014)

(declare-datatypes ((List!34934 0))(
  ( (Nil!34931) (Cons!34930 (h!36328 (_ BitVec 64)) (t!49635 List!34934)) )
))
(declare-fun arrayNoDuplicates!0 (array!100014 (_ BitVec 32) List!34934) Bool)

(assert (=> b!1500040 (= res!1021191 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34931))))

(declare-fun b!1500041 () Bool)

(declare-fun res!1021193 () Bool)

(assert (=> b!1500041 (=> (not res!1021193) (not e!839498))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1500041 (= res!1021193 (validKeyInArray!0 (select (arr!48262 a!2850) i!996)))))

(declare-fun b!1500042 () Bool)

(declare-fun res!1021196 () Bool)

(assert (=> b!1500042 (=> (not res!1021196) (not e!839498))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12491 0))(
  ( (MissingZero!12491 (index!52355 (_ BitVec 32))) (Found!12491 (index!52356 (_ BitVec 32))) (Intermediate!12491 (undefined!13303 Bool) (index!52357 (_ BitVec 32)) (x!134050 (_ BitVec 32))) (Undefined!12491) (MissingVacant!12491 (index!52358 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100014 (_ BitVec 32)) SeekEntryResult!12491)

(assert (=> b!1500042 (= res!1021196 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48262 a!2850) j!87) a!2850 mask!2661) (Found!12491 j!87)))))

(declare-fun b!1500043 () Bool)

(declare-fun res!1021197 () Bool)

(assert (=> b!1500043 (=> (not res!1021197) (not e!839498))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1500043 (= res!1021197 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48813 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48813 a!2850)) (= (select (arr!48262 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48262 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48813 a!2850))))))

(declare-fun b!1500044 () Bool)

(declare-fun res!1021195 () Bool)

(assert (=> b!1500044 (=> (not res!1021195) (not e!839498))))

(assert (=> b!1500044 (= res!1021195 (validKeyInArray!0 (select (arr!48262 a!2850) j!87)))))

(declare-fun b!1500046 () Bool)

(declare-fun res!1021190 () Bool)

(assert (=> b!1500046 (=> (not res!1021190) (not e!839498))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100014 (_ BitVec 32)) Bool)

(assert (=> b!1500046 (= res!1021190 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1500047 () Bool)

(declare-fun res!1021192 () Bool)

(assert (=> b!1500047 (=> (not res!1021192) (not e!839498))))

(assert (=> b!1500047 (= res!1021192 (and (= (size!48813 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48813 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48813 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1500048 () Bool)

(declare-fun res!1021194 () Bool)

(assert (=> b!1500048 (=> (not res!1021194) (not e!839498))))

(assert (=> b!1500048 (= res!1021194 (not (= (select (arr!48262 a!2850) index!625) (select (arr!48262 a!2850) j!87))))))

(declare-fun b!1500049 () Bool)

(declare-fun e!839497 () Bool)

(assert (=> b!1500049 (= e!839498 e!839497)))

(declare-fun res!1021188 () Bool)

(assert (=> b!1500049 (=> (not res!1021188) (not e!839497))))

(declare-fun lt!652827 () (_ BitVec 32))

(assert (=> b!1500049 (= res!1021188 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652827 #b00000000000000000000000000000000) (bvslt lt!652827 (size!48813 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1500049 (= lt!652827 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1500045 () Bool)

(assert (=> b!1500045 (= e!839497 false)))

(declare-fun lt!652828 () SeekEntryResult!12491)

(assert (=> b!1500045 (= lt!652828 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652827 vacantBefore!10 (select (arr!48262 a!2850) j!87) a!2850 mask!2661))))

(declare-fun res!1021189 () Bool)

(assert (=> start!127720 (=> (not res!1021189) (not e!839498))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127720 (= res!1021189 (validMask!0 mask!2661))))

(assert (=> start!127720 e!839498))

(assert (=> start!127720 true))

(declare-fun array_inv!37207 (array!100014) Bool)

(assert (=> start!127720 (array_inv!37207 a!2850)))

(assert (= (and start!127720 res!1021189) b!1500047))

(assert (= (and b!1500047 res!1021192) b!1500041))

(assert (= (and b!1500041 res!1021193) b!1500044))

(assert (= (and b!1500044 res!1021195) b!1500046))

(assert (= (and b!1500046 res!1021190) b!1500040))

(assert (= (and b!1500040 res!1021191) b!1500043))

(assert (= (and b!1500043 res!1021197) b!1500042))

(assert (= (and b!1500042 res!1021196) b!1500048))

(assert (= (and b!1500048 res!1021194) b!1500049))

(assert (= (and b!1500049 res!1021188) b!1500045))

(declare-fun m!1383291 () Bool)

(assert (=> b!1500046 m!1383291))

(declare-fun m!1383293 () Bool)

(assert (=> b!1500045 m!1383293))

(assert (=> b!1500045 m!1383293))

(declare-fun m!1383295 () Bool)

(assert (=> b!1500045 m!1383295))

(declare-fun m!1383297 () Bool)

(assert (=> b!1500041 m!1383297))

(assert (=> b!1500041 m!1383297))

(declare-fun m!1383299 () Bool)

(assert (=> b!1500041 m!1383299))

(declare-fun m!1383301 () Bool)

(assert (=> b!1500048 m!1383301))

(assert (=> b!1500048 m!1383293))

(declare-fun m!1383303 () Bool)

(assert (=> b!1500040 m!1383303))

(assert (=> b!1500044 m!1383293))

(assert (=> b!1500044 m!1383293))

(declare-fun m!1383305 () Bool)

(assert (=> b!1500044 m!1383305))

(declare-fun m!1383307 () Bool)

(assert (=> b!1500043 m!1383307))

(declare-fun m!1383309 () Bool)

(assert (=> b!1500043 m!1383309))

(declare-fun m!1383311 () Bool)

(assert (=> b!1500043 m!1383311))

(declare-fun m!1383313 () Bool)

(assert (=> b!1500049 m!1383313))

(assert (=> b!1500042 m!1383293))

(assert (=> b!1500042 m!1383293))

(declare-fun m!1383315 () Bool)

(assert (=> b!1500042 m!1383315))

(declare-fun m!1383317 () Bool)

(assert (=> start!127720 m!1383317))

(declare-fun m!1383319 () Bool)

(assert (=> start!127720 m!1383319))

(push 1)

