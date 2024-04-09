; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127926 () Bool)

(assert start!127926)

(declare-fun b!1502458 () Bool)

(declare-fun res!1023518 () Bool)

(declare-fun e!840338 () Bool)

(assert (=> b!1502458 (=> (not res!1023518) (not e!840338))))

(declare-datatypes ((array!100187 0))(
  ( (array!100188 (arr!48347 (Array (_ BitVec 32) (_ BitVec 64))) (size!48898 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100187)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502458 (= res!1023518 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48898 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48898 a!2850)) (= (select (arr!48347 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48347 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48898 a!2850))))))

(declare-fun b!1502459 () Bool)

(declare-fun res!1023516 () Bool)

(assert (=> b!1502459 (=> (not res!1023516) (not e!840338))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502459 (= res!1023516 (validKeyInArray!0 (select (arr!48347 a!2850) i!996)))))

(declare-fun b!1502460 () Bool)

(declare-fun res!1023517 () Bool)

(assert (=> b!1502460 (=> (not res!1023517) (not e!840338))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1502460 (= res!1023517 (validKeyInArray!0 (select (arr!48347 a!2850) j!87)))))

(declare-fun b!1502461 () Bool)

(assert (=> b!1502461 (= e!840338 false)))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12564 0))(
  ( (MissingZero!12564 (index!52647 (_ BitVec 32))) (Found!12564 (index!52648 (_ BitVec 32))) (Intermediate!12564 (undefined!13376 Bool) (index!52649 (_ BitVec 32)) (x!134350 (_ BitVec 32))) (Undefined!12564) (MissingVacant!12564 (index!52650 (_ BitVec 32))) )
))
(declare-fun lt!653350 () SeekEntryResult!12564)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100187 (_ BitVec 32)) SeekEntryResult!12564)

(assert (=> b!1502461 (= lt!653350 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48347 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1502462 () Bool)

(declare-fun res!1023520 () Bool)

(assert (=> b!1502462 (=> (not res!1023520) (not e!840338))))

(declare-datatypes ((List!35019 0))(
  ( (Nil!35016) (Cons!35015 (h!36413 (_ BitVec 64)) (t!49720 List!35019)) )
))
(declare-fun arrayNoDuplicates!0 (array!100187 (_ BitVec 32) List!35019) Bool)

(assert (=> b!1502462 (= res!1023520 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35016))))

(declare-fun res!1023522 () Bool)

(assert (=> start!127926 (=> (not res!1023522) (not e!840338))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127926 (= res!1023522 (validMask!0 mask!2661))))

(assert (=> start!127926 e!840338))

(assert (=> start!127926 true))

(declare-fun array_inv!37292 (array!100187) Bool)

(assert (=> start!127926 (array_inv!37292 a!2850)))

(declare-fun b!1502463 () Bool)

(declare-fun res!1023521 () Bool)

(assert (=> b!1502463 (=> (not res!1023521) (not e!840338))))

(assert (=> b!1502463 (= res!1023521 (and (= (size!48898 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48898 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48898 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502464 () Bool)

(declare-fun res!1023519 () Bool)

(assert (=> b!1502464 (=> (not res!1023519) (not e!840338))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100187 (_ BitVec 32)) Bool)

(assert (=> b!1502464 (= res!1023519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127926 res!1023522) b!1502463))

(assert (= (and b!1502463 res!1023521) b!1502459))

(assert (= (and b!1502459 res!1023516) b!1502460))

(assert (= (and b!1502460 res!1023517) b!1502464))

(assert (= (and b!1502464 res!1023519) b!1502462))

(assert (= (and b!1502462 res!1023520) b!1502458))

(assert (= (and b!1502458 res!1023518) b!1502461))

(declare-fun m!1385787 () Bool)

(assert (=> start!127926 m!1385787))

(declare-fun m!1385789 () Bool)

(assert (=> start!127926 m!1385789))

(declare-fun m!1385791 () Bool)

(assert (=> b!1502459 m!1385791))

(assert (=> b!1502459 m!1385791))

(declare-fun m!1385793 () Bool)

(assert (=> b!1502459 m!1385793))

(declare-fun m!1385795 () Bool)

(assert (=> b!1502461 m!1385795))

(assert (=> b!1502461 m!1385795))

(declare-fun m!1385797 () Bool)

(assert (=> b!1502461 m!1385797))

(declare-fun m!1385799 () Bool)

(assert (=> b!1502462 m!1385799))

(assert (=> b!1502460 m!1385795))

(assert (=> b!1502460 m!1385795))

(declare-fun m!1385801 () Bool)

(assert (=> b!1502460 m!1385801))

(declare-fun m!1385803 () Bool)

(assert (=> b!1502458 m!1385803))

(declare-fun m!1385805 () Bool)

(assert (=> b!1502458 m!1385805))

(declare-fun m!1385807 () Bool)

(assert (=> b!1502458 m!1385807))

(declare-fun m!1385809 () Bool)

(assert (=> b!1502464 m!1385809))

(check-sat (not b!1502459) (not b!1502461) (not b!1502462) (not b!1502464) (not start!127926) (not b!1502460))
