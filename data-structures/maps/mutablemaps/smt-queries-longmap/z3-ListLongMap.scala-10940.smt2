; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128022 () Bool)

(assert start!128022)

(declare-fun b!1503413 () Bool)

(declare-fun res!1024366 () Bool)

(declare-fun e!840626 () Bool)

(assert (=> b!1503413 (=> (not res!1024366) (not e!840626))))

(declare-datatypes ((array!100250 0))(
  ( (array!100251 (arr!48377 (Array (_ BitVec 32) (_ BitVec 64))) (size!48928 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100250)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503413 (= res!1024366 (validKeyInArray!0 (select (arr!48377 a!2850) i!996)))))

(declare-fun b!1503414 () Bool)

(declare-fun res!1024364 () Bool)

(assert (=> b!1503414 (=> (not res!1024364) (not e!840626))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503414 (= res!1024364 (and (= (size!48928 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48928 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48928 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503415 () Bool)

(assert (=> b!1503415 (= e!840626 false)))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun lt!653491 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503415 (= lt!653491 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun res!1024363 () Bool)

(assert (=> start!128022 (=> (not res!1024363) (not e!840626))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128022 (= res!1024363 (validMask!0 mask!2661))))

(assert (=> start!128022 e!840626))

(assert (=> start!128022 true))

(declare-fun array_inv!37322 (array!100250) Bool)

(assert (=> start!128022 (array_inv!37322 a!2850)))

(declare-fun b!1503416 () Bool)

(declare-fun res!1024365 () Bool)

(assert (=> b!1503416 (=> (not res!1024365) (not e!840626))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100250 (_ BitVec 32)) Bool)

(assert (=> b!1503416 (= res!1024365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503417 () Bool)

(declare-fun res!1024368 () Bool)

(assert (=> b!1503417 (=> (not res!1024368) (not e!840626))))

(assert (=> b!1503417 (= res!1024368 (not (= (select (arr!48377 a!2850) index!625) (select (arr!48377 a!2850) j!87))))))

(declare-fun b!1503418 () Bool)

(declare-fun res!1024370 () Bool)

(assert (=> b!1503418 (=> (not res!1024370) (not e!840626))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12594 0))(
  ( (MissingZero!12594 (index!52767 (_ BitVec 32))) (Found!12594 (index!52768 (_ BitVec 32))) (Intermediate!12594 (undefined!13406 Bool) (index!52769 (_ BitVec 32)) (x!134463 (_ BitVec 32))) (Undefined!12594) (MissingVacant!12594 (index!52770 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100250 (_ BitVec 32)) SeekEntryResult!12594)

(assert (=> b!1503418 (= res!1024370 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48377 a!2850) j!87) a!2850 mask!2661) (Found!12594 j!87)))))

(declare-fun b!1503419 () Bool)

(declare-fun res!1024369 () Bool)

(assert (=> b!1503419 (=> (not res!1024369) (not e!840626))))

(assert (=> b!1503419 (= res!1024369 (validKeyInArray!0 (select (arr!48377 a!2850) j!87)))))

(declare-fun b!1503420 () Bool)

(declare-fun res!1024371 () Bool)

(assert (=> b!1503420 (=> (not res!1024371) (not e!840626))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503420 (= res!1024371 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48928 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48928 a!2850)) (= (select (arr!48377 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48377 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48928 a!2850))))))

(declare-fun b!1503421 () Bool)

(declare-fun res!1024367 () Bool)

(assert (=> b!1503421 (=> (not res!1024367) (not e!840626))))

(declare-datatypes ((List!35049 0))(
  ( (Nil!35046) (Cons!35045 (h!36443 (_ BitVec 64)) (t!49750 List!35049)) )
))
(declare-fun arrayNoDuplicates!0 (array!100250 (_ BitVec 32) List!35049) Bool)

(assert (=> b!1503421 (= res!1024367 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35046))))

(assert (= (and start!128022 res!1024363) b!1503414))

(assert (= (and b!1503414 res!1024364) b!1503413))

(assert (= (and b!1503413 res!1024366) b!1503419))

(assert (= (and b!1503419 res!1024369) b!1503416))

(assert (= (and b!1503416 res!1024365) b!1503421))

(assert (= (and b!1503421 res!1024367) b!1503420))

(assert (= (and b!1503420 res!1024371) b!1503418))

(assert (= (and b!1503418 res!1024370) b!1503417))

(assert (= (and b!1503417 res!1024368) b!1503415))

(declare-fun m!1386721 () Bool)

(assert (=> b!1503416 m!1386721))

(declare-fun m!1386723 () Bool)

(assert (=> b!1503418 m!1386723))

(assert (=> b!1503418 m!1386723))

(declare-fun m!1386725 () Bool)

(assert (=> b!1503418 m!1386725))

(declare-fun m!1386727 () Bool)

(assert (=> b!1503420 m!1386727))

(declare-fun m!1386729 () Bool)

(assert (=> b!1503420 m!1386729))

(declare-fun m!1386731 () Bool)

(assert (=> b!1503420 m!1386731))

(declare-fun m!1386733 () Bool)

(assert (=> start!128022 m!1386733))

(declare-fun m!1386735 () Bool)

(assert (=> start!128022 m!1386735))

(declare-fun m!1386737 () Bool)

(assert (=> b!1503413 m!1386737))

(assert (=> b!1503413 m!1386737))

(declare-fun m!1386739 () Bool)

(assert (=> b!1503413 m!1386739))

(declare-fun m!1386741 () Bool)

(assert (=> b!1503417 m!1386741))

(assert (=> b!1503417 m!1386723))

(assert (=> b!1503419 m!1386723))

(assert (=> b!1503419 m!1386723))

(declare-fun m!1386743 () Bool)

(assert (=> b!1503419 m!1386743))

(declare-fun m!1386745 () Bool)

(assert (=> b!1503421 m!1386745))

(declare-fun m!1386747 () Bool)

(assert (=> b!1503415 m!1386747))

(check-sat (not b!1503421) (not b!1503418) (not b!1503413) (not b!1503415) (not b!1503416) (not start!128022) (not b!1503419))
