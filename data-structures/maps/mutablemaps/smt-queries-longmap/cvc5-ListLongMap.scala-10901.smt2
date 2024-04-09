; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127714 () Bool)

(assert start!127714)

(declare-fun b!1499951 () Bool)

(declare-fun res!1021098 () Bool)

(declare-fun e!839471 () Bool)

(assert (=> b!1499951 (=> (not res!1021098) (not e!839471))))

(declare-datatypes ((array!100008 0))(
  ( (array!100009 (arr!48259 (Array (_ BitVec 32) (_ BitVec 64))) (size!48810 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100008)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499951 (= res!1021098 (validKeyInArray!0 (select (arr!48259 a!2850) i!996)))))

(declare-fun b!1499952 () Bool)

(declare-fun res!1021101 () Bool)

(assert (=> b!1499952 (=> (not res!1021101) (not e!839471))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1499952 (= res!1021101 (not (= (select (arr!48259 a!2850) index!625) (select (arr!48259 a!2850) j!87))))))

(declare-fun b!1499953 () Bool)

(declare-fun e!839469 () Bool)

(assert (=> b!1499953 (= e!839469 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12488 0))(
  ( (MissingZero!12488 (index!52343 (_ BitVec 32))) (Found!12488 (index!52344 (_ BitVec 32))) (Intermediate!12488 (undefined!13300 Bool) (index!52345 (_ BitVec 32)) (x!134039 (_ BitVec 32))) (Undefined!12488) (MissingVacant!12488 (index!52346 (_ BitVec 32))) )
))
(declare-fun lt!652810 () SeekEntryResult!12488)

(declare-fun lt!652809 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100008 (_ BitVec 32)) SeekEntryResult!12488)

(assert (=> b!1499953 (= lt!652810 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652809 vacantBefore!10 (select (arr!48259 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499954 () Bool)

(declare-fun res!1021102 () Bool)

(assert (=> b!1499954 (=> (not res!1021102) (not e!839471))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100008 (_ BitVec 32)) Bool)

(assert (=> b!1499954 (= res!1021102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499955 () Bool)

(declare-fun res!1021106 () Bool)

(assert (=> b!1499955 (=> (not res!1021106) (not e!839471))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499955 (= res!1021106 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48810 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48810 a!2850)) (= (select (arr!48259 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48259 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48810 a!2850))))))

(declare-fun b!1499956 () Bool)

(declare-fun res!1021103 () Bool)

(assert (=> b!1499956 (=> (not res!1021103) (not e!839471))))

(assert (=> b!1499956 (= res!1021103 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48259 a!2850) j!87) a!2850 mask!2661) (Found!12488 j!87)))))

(declare-fun b!1499957 () Bool)

(declare-fun res!1021104 () Bool)

(assert (=> b!1499957 (=> (not res!1021104) (not e!839471))))

(declare-datatypes ((List!34931 0))(
  ( (Nil!34928) (Cons!34927 (h!36325 (_ BitVec 64)) (t!49632 List!34931)) )
))
(declare-fun arrayNoDuplicates!0 (array!100008 (_ BitVec 32) List!34931) Bool)

(assert (=> b!1499957 (= res!1021104 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34928))))

(declare-fun b!1499958 () Bool)

(declare-fun res!1021105 () Bool)

(assert (=> b!1499958 (=> (not res!1021105) (not e!839471))))

(assert (=> b!1499958 (= res!1021105 (and (= (size!48810 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48810 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48810 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499959 () Bool)

(assert (=> b!1499959 (= e!839471 e!839469)))

(declare-fun res!1021099 () Bool)

(assert (=> b!1499959 (=> (not res!1021099) (not e!839469))))

(assert (=> b!1499959 (= res!1021099 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652809 #b00000000000000000000000000000000) (bvslt lt!652809 (size!48810 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499959 (= lt!652809 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun res!1021107 () Bool)

(assert (=> start!127714 (=> (not res!1021107) (not e!839471))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127714 (= res!1021107 (validMask!0 mask!2661))))

(assert (=> start!127714 e!839471))

(assert (=> start!127714 true))

(declare-fun array_inv!37204 (array!100008) Bool)

(assert (=> start!127714 (array_inv!37204 a!2850)))

(declare-fun b!1499950 () Bool)

(declare-fun res!1021100 () Bool)

(assert (=> b!1499950 (=> (not res!1021100) (not e!839471))))

(assert (=> b!1499950 (= res!1021100 (validKeyInArray!0 (select (arr!48259 a!2850) j!87)))))

(assert (= (and start!127714 res!1021107) b!1499958))

(assert (= (and b!1499958 res!1021105) b!1499951))

(assert (= (and b!1499951 res!1021098) b!1499950))

(assert (= (and b!1499950 res!1021100) b!1499954))

(assert (= (and b!1499954 res!1021102) b!1499957))

(assert (= (and b!1499957 res!1021104) b!1499955))

(assert (= (and b!1499955 res!1021106) b!1499956))

(assert (= (and b!1499956 res!1021103) b!1499952))

(assert (= (and b!1499952 res!1021101) b!1499959))

(assert (= (and b!1499959 res!1021099) b!1499953))

(declare-fun m!1383201 () Bool)

(assert (=> b!1499957 m!1383201))

(declare-fun m!1383203 () Bool)

(assert (=> b!1499951 m!1383203))

(assert (=> b!1499951 m!1383203))

(declare-fun m!1383205 () Bool)

(assert (=> b!1499951 m!1383205))

(declare-fun m!1383207 () Bool)

(assert (=> b!1499956 m!1383207))

(assert (=> b!1499956 m!1383207))

(declare-fun m!1383209 () Bool)

(assert (=> b!1499956 m!1383209))

(declare-fun m!1383211 () Bool)

(assert (=> b!1499954 m!1383211))

(declare-fun m!1383213 () Bool)

(assert (=> start!127714 m!1383213))

(declare-fun m!1383215 () Bool)

(assert (=> start!127714 m!1383215))

(assert (=> b!1499953 m!1383207))

(assert (=> b!1499953 m!1383207))

(declare-fun m!1383217 () Bool)

(assert (=> b!1499953 m!1383217))

(declare-fun m!1383219 () Bool)

(assert (=> b!1499955 m!1383219))

(declare-fun m!1383221 () Bool)

(assert (=> b!1499955 m!1383221))

(declare-fun m!1383223 () Bool)

(assert (=> b!1499955 m!1383223))

(assert (=> b!1499950 m!1383207))

(assert (=> b!1499950 m!1383207))

(declare-fun m!1383225 () Bool)

(assert (=> b!1499950 m!1383225))

(declare-fun m!1383227 () Bool)

(assert (=> b!1499959 m!1383227))

(declare-fun m!1383229 () Bool)

(assert (=> b!1499952 m!1383229))

(assert (=> b!1499952 m!1383207))

(push 1)

