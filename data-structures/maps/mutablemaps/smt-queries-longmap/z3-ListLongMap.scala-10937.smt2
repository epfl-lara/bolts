; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128004 () Bool)

(assert start!128004)

(declare-fun b!1503170 () Bool)

(declare-fun res!1024123 () Bool)

(declare-fun e!840571 () Bool)

(assert (=> b!1503170 (=> (not res!1024123) (not e!840571))))

(declare-datatypes ((array!100232 0))(
  ( (array!100233 (arr!48368 (Array (_ BitVec 32) (_ BitVec 64))) (size!48919 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100232)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503170 (= res!1024123 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48919 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48919 a!2850)) (= (select (arr!48368 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48368 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48919 a!2850))))))

(declare-fun b!1503171 () Bool)

(declare-fun res!1024128 () Bool)

(assert (=> b!1503171 (=> (not res!1024128) (not e!840571))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503171 (= res!1024128 (and (= (size!48919 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48919 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48919 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1024126 () Bool)

(assert (=> start!128004 (=> (not res!1024126) (not e!840571))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128004 (= res!1024126 (validMask!0 mask!2661))))

(assert (=> start!128004 e!840571))

(assert (=> start!128004 true))

(declare-fun array_inv!37313 (array!100232) Bool)

(assert (=> start!128004 (array_inv!37313 a!2850)))

(declare-fun b!1503172 () Bool)

(declare-fun res!1024125 () Bool)

(assert (=> b!1503172 (=> (not res!1024125) (not e!840571))))

(declare-datatypes ((SeekEntryResult!12585 0))(
  ( (MissingZero!12585 (index!52731 (_ BitVec 32))) (Found!12585 (index!52732 (_ BitVec 32))) (Intermediate!12585 (undefined!13397 Bool) (index!52733 (_ BitVec 32)) (x!134430 (_ BitVec 32))) (Undefined!12585) (MissingVacant!12585 (index!52734 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100232 (_ BitVec 32)) SeekEntryResult!12585)

(assert (=> b!1503172 (= res!1024125 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48368 a!2850) j!87) a!2850 mask!2661) (Found!12585 j!87)))))

(declare-fun b!1503173 () Bool)

(assert (=> b!1503173 (= e!840571 false)))

(declare-fun lt!653464 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503173 (= lt!653464 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503174 () Bool)

(declare-fun res!1024121 () Bool)

(assert (=> b!1503174 (=> (not res!1024121) (not e!840571))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503174 (= res!1024121 (validKeyInArray!0 (select (arr!48368 a!2850) i!996)))))

(declare-fun b!1503175 () Bool)

(declare-fun res!1024127 () Bool)

(assert (=> b!1503175 (=> (not res!1024127) (not e!840571))))

(assert (=> b!1503175 (= res!1024127 (validKeyInArray!0 (select (arr!48368 a!2850) j!87)))))

(declare-fun b!1503176 () Bool)

(declare-fun res!1024122 () Bool)

(assert (=> b!1503176 (=> (not res!1024122) (not e!840571))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100232 (_ BitVec 32)) Bool)

(assert (=> b!1503176 (= res!1024122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503177 () Bool)

(declare-fun res!1024120 () Bool)

(assert (=> b!1503177 (=> (not res!1024120) (not e!840571))))

(declare-datatypes ((List!35040 0))(
  ( (Nil!35037) (Cons!35036 (h!36434 (_ BitVec 64)) (t!49741 List!35040)) )
))
(declare-fun arrayNoDuplicates!0 (array!100232 (_ BitVec 32) List!35040) Bool)

(assert (=> b!1503177 (= res!1024120 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35037))))

(declare-fun b!1503178 () Bool)

(declare-fun res!1024124 () Bool)

(assert (=> b!1503178 (=> (not res!1024124) (not e!840571))))

(assert (=> b!1503178 (= res!1024124 (not (= (select (arr!48368 a!2850) index!625) (select (arr!48368 a!2850) j!87))))))

(assert (= (and start!128004 res!1024126) b!1503171))

(assert (= (and b!1503171 res!1024128) b!1503174))

(assert (= (and b!1503174 res!1024121) b!1503175))

(assert (= (and b!1503175 res!1024127) b!1503176))

(assert (= (and b!1503176 res!1024122) b!1503177))

(assert (= (and b!1503177 res!1024120) b!1503170))

(assert (= (and b!1503170 res!1024123) b!1503172))

(assert (= (and b!1503172 res!1024125) b!1503178))

(assert (= (and b!1503178 res!1024124) b!1503173))

(declare-fun m!1386469 () Bool)

(assert (=> b!1503173 m!1386469))

(declare-fun m!1386471 () Bool)

(assert (=> b!1503177 m!1386471))

(declare-fun m!1386473 () Bool)

(assert (=> b!1503170 m!1386473))

(declare-fun m!1386475 () Bool)

(assert (=> b!1503170 m!1386475))

(declare-fun m!1386477 () Bool)

(assert (=> b!1503170 m!1386477))

(declare-fun m!1386479 () Bool)

(assert (=> b!1503176 m!1386479))

(declare-fun m!1386481 () Bool)

(assert (=> b!1503178 m!1386481))

(declare-fun m!1386483 () Bool)

(assert (=> b!1503178 m!1386483))

(assert (=> b!1503172 m!1386483))

(assert (=> b!1503172 m!1386483))

(declare-fun m!1386485 () Bool)

(assert (=> b!1503172 m!1386485))

(assert (=> b!1503175 m!1386483))

(assert (=> b!1503175 m!1386483))

(declare-fun m!1386487 () Bool)

(assert (=> b!1503175 m!1386487))

(declare-fun m!1386489 () Bool)

(assert (=> b!1503174 m!1386489))

(assert (=> b!1503174 m!1386489))

(declare-fun m!1386491 () Bool)

(assert (=> b!1503174 m!1386491))

(declare-fun m!1386493 () Bool)

(assert (=> start!128004 m!1386493))

(declare-fun m!1386495 () Bool)

(assert (=> start!128004 m!1386495))

(check-sat (not b!1503173) (not b!1503175) (not b!1503176) (not b!1503177) (not b!1503174) (not start!128004) (not b!1503172))
