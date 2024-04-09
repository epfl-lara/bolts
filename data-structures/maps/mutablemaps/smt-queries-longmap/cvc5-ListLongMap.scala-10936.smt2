; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127996 () Bool)

(assert start!127996)

(declare-fun res!1024013 () Bool)

(declare-fun e!840548 () Bool)

(assert (=> start!127996 (=> (not res!1024013) (not e!840548))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127996 (= res!1024013 (validMask!0 mask!2661))))

(assert (=> start!127996 e!840548))

(assert (=> start!127996 true))

(declare-datatypes ((array!100224 0))(
  ( (array!100225 (arr!48364 (Array (_ BitVec 32) (_ BitVec 64))) (size!48915 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100224)

(declare-fun array_inv!37309 (array!100224) Bool)

(assert (=> start!127996 (array_inv!37309 a!2850)))

(declare-fun b!1503062 () Bool)

(declare-fun res!1024020 () Bool)

(assert (=> b!1503062 (=> (not res!1024020) (not e!840548))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503062 (= res!1024020 (validKeyInArray!0 (select (arr!48364 a!2850) i!996)))))

(declare-fun b!1503063 () Bool)

(declare-fun res!1024012 () Bool)

(assert (=> b!1503063 (=> (not res!1024012) (not e!840548))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503063 (= res!1024012 (not (= (select (arr!48364 a!2850) index!625) (select (arr!48364 a!2850) j!87))))))

(declare-fun b!1503064 () Bool)

(declare-fun res!1024016 () Bool)

(assert (=> b!1503064 (=> (not res!1024016) (not e!840548))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100224 (_ BitVec 32)) Bool)

(assert (=> b!1503064 (= res!1024016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503065 () Bool)

(declare-fun res!1024018 () Bool)

(assert (=> b!1503065 (=> (not res!1024018) (not e!840548))))

(assert (=> b!1503065 (= res!1024018 (validKeyInArray!0 (select (arr!48364 a!2850) j!87)))))

(declare-fun b!1503066 () Bool)

(declare-fun res!1024014 () Bool)

(assert (=> b!1503066 (=> (not res!1024014) (not e!840548))))

(assert (=> b!1503066 (= res!1024014 (and (= (size!48915 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48915 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48915 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503067 () Bool)

(declare-fun res!1024019 () Bool)

(assert (=> b!1503067 (=> (not res!1024019) (not e!840548))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12581 0))(
  ( (MissingZero!12581 (index!52715 (_ BitVec 32))) (Found!12581 (index!52716 (_ BitVec 32))) (Intermediate!12581 (undefined!13393 Bool) (index!52717 (_ BitVec 32)) (x!134418 (_ BitVec 32))) (Undefined!12581) (MissingVacant!12581 (index!52718 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100224 (_ BitVec 32)) SeekEntryResult!12581)

(assert (=> b!1503067 (= res!1024019 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48364 a!2850) j!87) a!2850 mask!2661) (Found!12581 j!87)))))

(declare-fun b!1503068 () Bool)

(assert (=> b!1503068 (= e!840548 false)))

(declare-fun lt!653452 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503068 (= lt!653452 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503069 () Bool)

(declare-fun res!1024017 () Bool)

(assert (=> b!1503069 (=> (not res!1024017) (not e!840548))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503069 (= res!1024017 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48915 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48915 a!2850)) (= (select (arr!48364 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48364 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48915 a!2850))))))

(declare-fun b!1503070 () Bool)

(declare-fun res!1024015 () Bool)

(assert (=> b!1503070 (=> (not res!1024015) (not e!840548))))

(declare-datatypes ((List!35036 0))(
  ( (Nil!35033) (Cons!35032 (h!36430 (_ BitVec 64)) (t!49737 List!35036)) )
))
(declare-fun arrayNoDuplicates!0 (array!100224 (_ BitVec 32) List!35036) Bool)

(assert (=> b!1503070 (= res!1024015 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35033))))

(assert (= (and start!127996 res!1024013) b!1503066))

(assert (= (and b!1503066 res!1024014) b!1503062))

(assert (= (and b!1503062 res!1024020) b!1503065))

(assert (= (and b!1503065 res!1024018) b!1503064))

(assert (= (and b!1503064 res!1024016) b!1503070))

(assert (= (and b!1503070 res!1024015) b!1503069))

(assert (= (and b!1503069 res!1024017) b!1503067))

(assert (= (and b!1503067 res!1024019) b!1503063))

(assert (= (and b!1503063 res!1024012) b!1503068))

(declare-fun m!1386357 () Bool)

(assert (=> b!1503069 m!1386357))

(declare-fun m!1386359 () Bool)

(assert (=> b!1503069 m!1386359))

(declare-fun m!1386361 () Bool)

(assert (=> b!1503069 m!1386361))

(declare-fun m!1386363 () Bool)

(assert (=> b!1503068 m!1386363))

(declare-fun m!1386365 () Bool)

(assert (=> b!1503064 m!1386365))

(declare-fun m!1386367 () Bool)

(assert (=> b!1503065 m!1386367))

(assert (=> b!1503065 m!1386367))

(declare-fun m!1386369 () Bool)

(assert (=> b!1503065 m!1386369))

(declare-fun m!1386371 () Bool)

(assert (=> b!1503062 m!1386371))

(assert (=> b!1503062 m!1386371))

(declare-fun m!1386373 () Bool)

(assert (=> b!1503062 m!1386373))

(declare-fun m!1386375 () Bool)

(assert (=> b!1503070 m!1386375))

(declare-fun m!1386377 () Bool)

(assert (=> start!127996 m!1386377))

(declare-fun m!1386379 () Bool)

(assert (=> start!127996 m!1386379))

(declare-fun m!1386381 () Bool)

(assert (=> b!1503063 m!1386381))

(assert (=> b!1503063 m!1386367))

(assert (=> b!1503067 m!1386367))

(assert (=> b!1503067 m!1386367))

(declare-fun m!1386383 () Bool)

(assert (=> b!1503067 m!1386383))

(push 1)

(assert (not b!1503064))

(assert (not start!127996))

(assert (not b!1503068))

(assert (not b!1503067))

(assert (not b!1503070))

(assert (not b!1503062))

(assert (not b!1503065))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

