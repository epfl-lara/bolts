; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127912 () Bool)

(assert start!127912)

(declare-fun b!1502311 () Bool)

(declare-fun res!1023374 () Bool)

(declare-fun e!840296 () Bool)

(assert (=> b!1502311 (=> (not res!1023374) (not e!840296))))

(declare-datatypes ((array!100173 0))(
  ( (array!100174 (arr!48340 (Array (_ BitVec 32) (_ BitVec 64))) (size!48891 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100173)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502311 (= res!1023374 (validKeyInArray!0 (select (arr!48340 a!2850) i!996)))))

(declare-fun b!1502312 () Bool)

(declare-fun res!1023372 () Bool)

(assert (=> b!1502312 (=> (not res!1023372) (not e!840296))))

(declare-datatypes ((List!35012 0))(
  ( (Nil!35009) (Cons!35008 (h!36406 (_ BitVec 64)) (t!49713 List!35012)) )
))
(declare-fun arrayNoDuplicates!0 (array!100173 (_ BitVec 32) List!35012) Bool)

(assert (=> b!1502312 (= res!1023372 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35009))))

(declare-fun b!1502313 () Bool)

(assert (=> b!1502313 (= e!840296 false)))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12557 0))(
  ( (MissingZero!12557 (index!52619 (_ BitVec 32))) (Found!12557 (index!52620 (_ BitVec 32))) (Intermediate!12557 (undefined!13369 Bool) (index!52621 (_ BitVec 32)) (x!134327 (_ BitVec 32))) (Undefined!12557) (MissingVacant!12557 (index!52622 (_ BitVec 32))) )
))
(declare-fun lt!653329 () SeekEntryResult!12557)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100173 (_ BitVec 32)) SeekEntryResult!12557)

(assert (=> b!1502313 (= lt!653329 (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48340 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1502314 () Bool)

(declare-fun res!1023375 () Bool)

(assert (=> b!1502314 (=> (not res!1023375) (not e!840296))))

(assert (=> b!1502314 (= res!1023375 (and (= (size!48891 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48891 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48891 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502315 () Bool)

(declare-fun res!1023369 () Bool)

(assert (=> b!1502315 (=> (not res!1023369) (not e!840296))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502315 (= res!1023369 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48891 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48891 a!2850)) (= (select (arr!48340 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48340 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48891 a!2850))))))

(declare-fun res!1023373 () Bool)

(assert (=> start!127912 (=> (not res!1023373) (not e!840296))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127912 (= res!1023373 (validMask!0 mask!2661))))

(assert (=> start!127912 e!840296))

(assert (=> start!127912 true))

(declare-fun array_inv!37285 (array!100173) Bool)

(assert (=> start!127912 (array_inv!37285 a!2850)))

(declare-fun b!1502316 () Bool)

(declare-fun res!1023370 () Bool)

(assert (=> b!1502316 (=> (not res!1023370) (not e!840296))))

(assert (=> b!1502316 (= res!1023370 (validKeyInArray!0 (select (arr!48340 a!2850) j!87)))))

(declare-fun b!1502317 () Bool)

(declare-fun res!1023371 () Bool)

(assert (=> b!1502317 (=> (not res!1023371) (not e!840296))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100173 (_ BitVec 32)) Bool)

(assert (=> b!1502317 (= res!1023371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127912 res!1023373) b!1502314))

(assert (= (and b!1502314 res!1023375) b!1502311))

(assert (= (and b!1502311 res!1023374) b!1502316))

(assert (= (and b!1502316 res!1023370) b!1502317))

(assert (= (and b!1502317 res!1023371) b!1502312))

(assert (= (and b!1502312 res!1023372) b!1502315))

(assert (= (and b!1502315 res!1023369) b!1502313))

(declare-fun m!1385619 () Bool)

(assert (=> b!1502313 m!1385619))

(assert (=> b!1502313 m!1385619))

(declare-fun m!1385621 () Bool)

(assert (=> b!1502313 m!1385621))

(declare-fun m!1385623 () Bool)

(assert (=> b!1502311 m!1385623))

(assert (=> b!1502311 m!1385623))

(declare-fun m!1385625 () Bool)

(assert (=> b!1502311 m!1385625))

(declare-fun m!1385627 () Bool)

(assert (=> b!1502317 m!1385627))

(declare-fun m!1385629 () Bool)

(assert (=> b!1502315 m!1385629))

(declare-fun m!1385631 () Bool)

(assert (=> b!1502315 m!1385631))

(declare-fun m!1385633 () Bool)

(assert (=> b!1502315 m!1385633))

(declare-fun m!1385635 () Bool)

(assert (=> start!127912 m!1385635))

(declare-fun m!1385637 () Bool)

(assert (=> start!127912 m!1385637))

(assert (=> b!1502316 m!1385619))

(assert (=> b!1502316 m!1385619))

(declare-fun m!1385639 () Bool)

(assert (=> b!1502316 m!1385639))

(declare-fun m!1385641 () Bool)

(assert (=> b!1502312 m!1385641))

(push 1)

(assert (not b!1502316))

(assert (not b!1502312))

(assert (not b!1502317))

(assert (not start!127912))

(assert (not b!1502311))

(assert (not b!1502313))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

