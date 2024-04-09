; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127670 () Bool)

(assert start!127670)

(declare-fun b!1499290 () Bool)

(declare-fun e!839272 () Bool)

(declare-fun e!839273 () Bool)

(assert (=> b!1499290 (= e!839272 e!839273)))

(declare-fun res!1020447 () Bool)

(assert (=> b!1499290 (=> (not res!1020447) (not e!839273))))

(declare-datatypes ((array!99964 0))(
  ( (array!99965 (arr!48237 (Array (_ BitVec 32) (_ BitVec 64))) (size!48788 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99964)

(declare-fun lt!652677 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(assert (=> b!1499290 (= res!1020447 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652677 #b00000000000000000000000000000000) (bvslt lt!652677 (size!48788 a!2850))))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499290 (= lt!652677 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499291 () Bool)

(declare-fun res!1020439 () Bool)

(assert (=> b!1499291 (=> (not res!1020439) (not e!839272))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499291 (= res!1020439 (validKeyInArray!0 (select (arr!48237 a!2850) j!87)))))

(declare-fun b!1499292 () Bool)

(declare-fun res!1020442 () Bool)

(assert (=> b!1499292 (=> (not res!1020442) (not e!839272))))

(declare-datatypes ((List!34909 0))(
  ( (Nil!34906) (Cons!34905 (h!36303 (_ BitVec 64)) (t!49610 List!34909)) )
))
(declare-fun arrayNoDuplicates!0 (array!99964 (_ BitVec 32) List!34909) Bool)

(assert (=> b!1499292 (= res!1020442 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34906))))

(declare-fun b!1499293 () Bool)

(declare-fun res!1020445 () Bool)

(assert (=> b!1499293 (=> (not res!1020445) (not e!839272))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1499293 (= res!1020445 (validKeyInArray!0 (select (arr!48237 a!2850) i!996)))))

(declare-fun b!1499294 () Bool)

(declare-fun res!1020444 () Bool)

(assert (=> b!1499294 (=> (not res!1020444) (not e!839272))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499294 (= res!1020444 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48788 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48788 a!2850)) (= (select (arr!48237 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48237 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48788 a!2850))))))

(declare-fun res!1020446 () Bool)

(assert (=> start!127670 (=> (not res!1020446) (not e!839272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127670 (= res!1020446 (validMask!0 mask!2661))))

(assert (=> start!127670 e!839272))

(assert (=> start!127670 true))

(declare-fun array_inv!37182 (array!99964) Bool)

(assert (=> start!127670 (array_inv!37182 a!2850)))

(declare-fun b!1499295 () Bool)

(declare-fun res!1020440 () Bool)

(assert (=> b!1499295 (=> (not res!1020440) (not e!839272))))

(assert (=> b!1499295 (= res!1020440 (and (= (size!48788 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48788 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48788 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499296 () Bool)

(declare-fun res!1020438 () Bool)

(assert (=> b!1499296 (=> (not res!1020438) (not e!839272))))

(assert (=> b!1499296 (= res!1020438 (not (= (select (arr!48237 a!2850) index!625) (select (arr!48237 a!2850) j!87))))))

(declare-fun b!1499297 () Bool)

(declare-fun res!1020441 () Bool)

(assert (=> b!1499297 (=> (not res!1020441) (not e!839272))))

(declare-datatypes ((SeekEntryResult!12466 0))(
  ( (MissingZero!12466 (index!52255 (_ BitVec 32))) (Found!12466 (index!52256 (_ BitVec 32))) (Intermediate!12466 (undefined!13278 Bool) (index!52257 (_ BitVec 32)) (x!133953 (_ BitVec 32))) (Undefined!12466) (MissingVacant!12466 (index!52258 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99964 (_ BitVec 32)) SeekEntryResult!12466)

(assert (=> b!1499297 (= res!1020441 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48237 a!2850) j!87) a!2850 mask!2661) (Found!12466 j!87)))))

(declare-fun b!1499298 () Bool)

(assert (=> b!1499298 (= e!839273 false)))

(declare-fun lt!652678 () SeekEntryResult!12466)

(assert (=> b!1499298 (= lt!652678 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652677 vacantBefore!10 (select (arr!48237 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499299 () Bool)

(declare-fun res!1020443 () Bool)

(assert (=> b!1499299 (=> (not res!1020443) (not e!839272))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99964 (_ BitVec 32)) Bool)

(assert (=> b!1499299 (= res!1020443 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127670 res!1020446) b!1499295))

(assert (= (and b!1499295 res!1020440) b!1499293))

(assert (= (and b!1499293 res!1020445) b!1499291))

(assert (= (and b!1499291 res!1020439) b!1499299))

(assert (= (and b!1499299 res!1020443) b!1499292))

(assert (= (and b!1499292 res!1020442) b!1499294))

(assert (= (and b!1499294 res!1020444) b!1499297))

(assert (= (and b!1499297 res!1020441) b!1499296))

(assert (= (and b!1499296 res!1020438) b!1499290))

(assert (= (and b!1499290 res!1020447) b!1499298))

(declare-fun m!1382541 () Bool)

(assert (=> b!1499292 m!1382541))

(declare-fun m!1382543 () Bool)

(assert (=> b!1499291 m!1382543))

(assert (=> b!1499291 m!1382543))

(declare-fun m!1382545 () Bool)

(assert (=> b!1499291 m!1382545))

(declare-fun m!1382547 () Bool)

(assert (=> b!1499296 m!1382547))

(assert (=> b!1499296 m!1382543))

(declare-fun m!1382549 () Bool)

(assert (=> b!1499290 m!1382549))

(assert (=> b!1499298 m!1382543))

(assert (=> b!1499298 m!1382543))

(declare-fun m!1382551 () Bool)

(assert (=> b!1499298 m!1382551))

(declare-fun m!1382553 () Bool)

(assert (=> b!1499299 m!1382553))

(assert (=> b!1499297 m!1382543))

(assert (=> b!1499297 m!1382543))

(declare-fun m!1382555 () Bool)

(assert (=> b!1499297 m!1382555))

(declare-fun m!1382557 () Bool)

(assert (=> b!1499293 m!1382557))

(assert (=> b!1499293 m!1382557))

(declare-fun m!1382559 () Bool)

(assert (=> b!1499293 m!1382559))

(declare-fun m!1382561 () Bool)

(assert (=> b!1499294 m!1382561))

(declare-fun m!1382563 () Bool)

(assert (=> b!1499294 m!1382563))

(declare-fun m!1382565 () Bool)

(assert (=> b!1499294 m!1382565))

(declare-fun m!1382567 () Bool)

(assert (=> start!127670 m!1382567))

(declare-fun m!1382569 () Bool)

(assert (=> start!127670 m!1382569))

(push 1)

(assert (not b!1499293))

(assert (not start!127670))

(assert (not b!1499292))

(assert (not b!1499290))

(assert (not b!1499297))

(assert (not b!1499299))

(assert (not b!1499291))

(assert (not b!1499298))

(check-sat)

