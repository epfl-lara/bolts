; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86984 () Bool)

(assert start!86984)

(declare-fun b!1008645 () Bool)

(declare-fun res!677698 () Bool)

(declare-fun e!567528 () Bool)

(assert (=> b!1008645 (=> (not res!677698) (not e!567528))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1008645 (= res!677698 (validKeyInArray!0 k!2224))))

(declare-fun b!1008646 () Bool)

(declare-fun res!677694 () Bool)

(assert (=> b!1008646 (=> (not res!677694) (not e!567528))))

(declare-datatypes ((array!63584 0))(
  ( (array!63585 (arr!30609 (Array (_ BitVec 32) (_ BitVec 64))) (size!31112 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63584)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1008646 (= res!677694 (and (= (size!31112 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31112 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31112 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1008647 () Bool)

(declare-fun res!677706 () Bool)

(declare-fun e!567529 () Bool)

(assert (=> b!1008647 (=> (not res!677706) (not e!567529))))

(declare-fun lt!445812 () (_ BitVec 64))

(declare-fun lt!445813 () array!63584)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9541 0))(
  ( (MissingZero!9541 (index!40534 (_ BitVec 32))) (Found!9541 (index!40535 (_ BitVec 32))) (Intermediate!9541 (undefined!10353 Bool) (index!40536 (_ BitVec 32)) (x!87948 (_ BitVec 32))) (Undefined!9541) (MissingVacant!9541 (index!40537 (_ BitVec 32))) )
))
(declare-fun lt!445818 () SeekEntryResult!9541)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63584 (_ BitVec 32)) SeekEntryResult!9541)

(assert (=> b!1008647 (= res!677706 (not (= lt!445818 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445812 lt!445813 mask!3464))))))

(declare-fun b!1008648 () Bool)

(declare-fun e!567525 () Bool)

(declare-fun e!567526 () Bool)

(assert (=> b!1008648 (= e!567525 e!567526)))

(declare-fun res!677697 () Bool)

(assert (=> b!1008648 (=> (not res!677697) (not e!567526))))

(declare-fun lt!445815 () SeekEntryResult!9541)

(assert (=> b!1008648 (= res!677697 (= lt!445818 lt!445815))))

(assert (=> b!1008648 (= lt!445818 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30609 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008649 () Bool)

(declare-fun res!677700 () Bool)

(assert (=> b!1008649 (=> (not res!677700) (not e!567528))))

(assert (=> b!1008649 (= res!677700 (validKeyInArray!0 (select (arr!30609 a!3219) j!170)))))

(declare-fun b!1008650 () Bool)

(declare-fun e!567527 () Bool)

(assert (=> b!1008650 (= e!567527 e!567525)))

(declare-fun res!677696 () Bool)

(assert (=> b!1008650 (=> (not res!677696) (not e!567525))))

(declare-fun lt!445814 () SeekEntryResult!9541)

(assert (=> b!1008650 (= res!677696 (= lt!445814 lt!445815))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1008650 (= lt!445815 (Intermediate!9541 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008650 (= lt!445814 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30609 a!3219) j!170) mask!3464) (select (arr!30609 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008651 () Bool)

(declare-fun res!677705 () Bool)

(assert (=> b!1008651 (=> (not res!677705) (not e!567527))))

(assert (=> b!1008651 (= res!677705 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31112 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31112 a!3219))))))

(declare-fun b!1008652 () Bool)

(declare-fun res!677701 () Bool)

(assert (=> b!1008652 (=> (not res!677701) (not e!567529))))

(assert (=> b!1008652 (= res!677701 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1008653 () Bool)

(declare-fun res!677702 () Bool)

(assert (=> b!1008653 (=> (not res!677702) (not e!567527))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63584 (_ BitVec 32)) Bool)

(assert (=> b!1008653 (= res!677702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1008654 () Bool)

(declare-fun res!677699 () Bool)

(assert (=> b!1008654 (=> (not res!677699) (not e!567527))))

(declare-datatypes ((List!21411 0))(
  ( (Nil!21408) (Cons!21407 (h!22593 (_ BitVec 64)) (t!30420 List!21411)) )
))
(declare-fun arrayNoDuplicates!0 (array!63584 (_ BitVec 32) List!21411) Bool)

(assert (=> b!1008654 (= res!677699 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21408))))

(declare-fun b!1008655 () Bool)

(declare-fun res!677695 () Bool)

(assert (=> b!1008655 (=> (not res!677695) (not e!567528))))

(declare-fun arrayContainsKey!0 (array!63584 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1008655 (= res!677695 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1008656 () Bool)

(assert (=> b!1008656 (= e!567529 false)))

(declare-fun lt!445817 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008656 (= lt!445817 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1008657 () Bool)

(assert (=> b!1008657 (= e!567528 e!567527)))

(declare-fun res!677707 () Bool)

(assert (=> b!1008657 (=> (not res!677707) (not e!567527))))

(declare-fun lt!445816 () SeekEntryResult!9541)

(assert (=> b!1008657 (= res!677707 (or (= lt!445816 (MissingVacant!9541 i!1194)) (= lt!445816 (MissingZero!9541 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63584 (_ BitVec 32)) SeekEntryResult!9541)

(assert (=> b!1008657 (= lt!445816 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun res!677704 () Bool)

(assert (=> start!86984 (=> (not res!677704) (not e!567528))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86984 (= res!677704 (validMask!0 mask!3464))))

(assert (=> start!86984 e!567528))

(declare-fun array_inv!23599 (array!63584) Bool)

(assert (=> start!86984 (array_inv!23599 a!3219)))

(assert (=> start!86984 true))

(declare-fun b!1008658 () Bool)

(assert (=> b!1008658 (= e!567526 e!567529)))

(declare-fun res!677703 () Bool)

(assert (=> b!1008658 (=> (not res!677703) (not e!567529))))

(assert (=> b!1008658 (= res!677703 (not (= lt!445814 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445812 mask!3464) lt!445812 lt!445813 mask!3464))))))

(assert (=> b!1008658 (= lt!445812 (select (store (arr!30609 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1008658 (= lt!445813 (array!63585 (store (arr!30609 a!3219) i!1194 k!2224) (size!31112 a!3219)))))

(assert (= (and start!86984 res!677704) b!1008646))

(assert (= (and b!1008646 res!677694) b!1008649))

(assert (= (and b!1008649 res!677700) b!1008645))

(assert (= (and b!1008645 res!677698) b!1008655))

(assert (= (and b!1008655 res!677695) b!1008657))

(assert (= (and b!1008657 res!677707) b!1008653))

(assert (= (and b!1008653 res!677702) b!1008654))

(assert (= (and b!1008654 res!677699) b!1008651))

(assert (= (and b!1008651 res!677705) b!1008650))

(assert (= (and b!1008650 res!677696) b!1008648))

(assert (= (and b!1008648 res!677697) b!1008658))

(assert (= (and b!1008658 res!677703) b!1008647))

(assert (= (and b!1008647 res!677706) b!1008652))

(assert (= (and b!1008652 res!677701) b!1008656))

(declare-fun m!933459 () Bool)

(assert (=> b!1008649 m!933459))

(assert (=> b!1008649 m!933459))

(declare-fun m!933461 () Bool)

(assert (=> b!1008649 m!933461))

(declare-fun m!933463 () Bool)

(assert (=> b!1008654 m!933463))

(declare-fun m!933465 () Bool)

(assert (=> b!1008655 m!933465))

(assert (=> b!1008650 m!933459))

(assert (=> b!1008650 m!933459))

(declare-fun m!933467 () Bool)

(assert (=> b!1008650 m!933467))

(assert (=> b!1008650 m!933467))

(assert (=> b!1008650 m!933459))

(declare-fun m!933469 () Bool)

(assert (=> b!1008650 m!933469))

(declare-fun m!933471 () Bool)

(assert (=> b!1008653 m!933471))

(declare-fun m!933473 () Bool)

(assert (=> b!1008645 m!933473))

(assert (=> b!1008648 m!933459))

(assert (=> b!1008648 m!933459))

(declare-fun m!933475 () Bool)

(assert (=> b!1008648 m!933475))

(declare-fun m!933477 () Bool)

(assert (=> b!1008658 m!933477))

(assert (=> b!1008658 m!933477))

(declare-fun m!933479 () Bool)

(assert (=> b!1008658 m!933479))

(declare-fun m!933481 () Bool)

(assert (=> b!1008658 m!933481))

(declare-fun m!933483 () Bool)

(assert (=> b!1008658 m!933483))

(declare-fun m!933485 () Bool)

(assert (=> b!1008657 m!933485))

(declare-fun m!933487 () Bool)

(assert (=> start!86984 m!933487))

(declare-fun m!933489 () Bool)

(assert (=> start!86984 m!933489))

(declare-fun m!933491 () Bool)

(assert (=> b!1008647 m!933491))

(declare-fun m!933493 () Bool)

(assert (=> b!1008656 m!933493))

(push 1)

