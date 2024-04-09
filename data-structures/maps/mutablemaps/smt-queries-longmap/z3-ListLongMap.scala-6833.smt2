; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86070 () Bool)

(assert start!86070)

(declare-fun b!996469 () Bool)

(declare-fun res!666740 () Bool)

(declare-fun e!562223 () Bool)

(assert (=> b!996469 (=> (not res!666740) (not e!562223))))

(declare-datatypes ((array!63027 0))(
  ( (array!63028 (arr!30341 (Array (_ BitVec 32) (_ BitVec 64))) (size!30844 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63027)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!996469 (= res!666740 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30844 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30844 a!3219))))))

(declare-fun b!996470 () Bool)

(declare-fun res!666742 () Bool)

(declare-fun e!562221 () Bool)

(assert (=> b!996470 (=> (not res!666742) (not e!562221))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63027 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!996470 (= res!666742 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!996471 () Bool)

(declare-fun res!666745 () Bool)

(assert (=> b!996471 (=> (not res!666745) (not e!562221))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!996471 (= res!666745 (validKeyInArray!0 k0!2224))))

(declare-fun b!996472 () Bool)

(declare-fun res!666743 () Bool)

(assert (=> b!996472 (=> (not res!666743) (not e!562223))))

(declare-datatypes ((List!21143 0))(
  ( (Nil!21140) (Cons!21139 (h!22304 (_ BitVec 64)) (t!30152 List!21143)) )
))
(declare-fun arrayNoDuplicates!0 (array!63027 (_ BitVec 32) List!21143) Bool)

(assert (=> b!996472 (= res!666743 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21140))))

(declare-fun b!996474 () Bool)

(declare-fun mask!3464 () (_ BitVec 32))

(assert (=> b!996474 (= e!562223 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!996475 () Bool)

(declare-fun res!666746 () Bool)

(assert (=> b!996475 (=> (not res!666746) (not e!562221))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!996475 (= res!666746 (and (= (size!30844 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30844 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30844 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!996476 () Bool)

(declare-fun res!666741 () Bool)

(assert (=> b!996476 (=> (not res!666741) (not e!562223))))

(declare-datatypes ((SeekEntryResult!9273 0))(
  ( (MissingZero!9273 (index!39462 (_ BitVec 32))) (Found!9273 (index!39463 (_ BitVec 32))) (Intermediate!9273 (undefined!10085 Bool) (index!39464 (_ BitVec 32)) (x!86926 (_ BitVec 32))) (Undefined!9273) (MissingVacant!9273 (index!39465 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63027 (_ BitVec 32)) SeekEntryResult!9273)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!996476 (= res!666741 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30341 a!3219) j!170) mask!3464) (select (arr!30341 a!3219) j!170) a!3219 mask!3464) (Intermediate!9273 false resIndex!38 resX!38)))))

(declare-fun b!996477 () Bool)

(assert (=> b!996477 (= e!562221 e!562223)))

(declare-fun res!666739 () Bool)

(assert (=> b!996477 (=> (not res!666739) (not e!562223))))

(declare-fun lt!441213 () SeekEntryResult!9273)

(assert (=> b!996477 (= res!666739 (or (= lt!441213 (MissingVacant!9273 i!1194)) (= lt!441213 (MissingZero!9273 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63027 (_ BitVec 32)) SeekEntryResult!9273)

(assert (=> b!996477 (= lt!441213 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!996478 () Bool)

(declare-fun res!666748 () Bool)

(assert (=> b!996478 (=> (not res!666748) (not e!562223))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63027 (_ BitVec 32)) Bool)

(assert (=> b!996478 (= res!666748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!996473 () Bool)

(declare-fun res!666747 () Bool)

(assert (=> b!996473 (=> (not res!666747) (not e!562221))))

(assert (=> b!996473 (= res!666747 (validKeyInArray!0 (select (arr!30341 a!3219) j!170)))))

(declare-fun res!666744 () Bool)

(assert (=> start!86070 (=> (not res!666744) (not e!562221))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86070 (= res!666744 (validMask!0 mask!3464))))

(assert (=> start!86070 e!562221))

(declare-fun array_inv!23331 (array!63027) Bool)

(assert (=> start!86070 (array_inv!23331 a!3219)))

(assert (=> start!86070 true))

(assert (= (and start!86070 res!666744) b!996475))

(assert (= (and b!996475 res!666746) b!996473))

(assert (= (and b!996473 res!666747) b!996471))

(assert (= (and b!996471 res!666745) b!996470))

(assert (= (and b!996470 res!666742) b!996477))

(assert (= (and b!996477 res!666739) b!996478))

(assert (= (and b!996478 res!666748) b!996472))

(assert (= (and b!996472 res!666743) b!996469))

(assert (= (and b!996469 res!666740) b!996476))

(assert (= (and b!996476 res!666741) b!996474))

(declare-fun m!923665 () Bool)

(assert (=> b!996477 m!923665))

(declare-fun m!923667 () Bool)

(assert (=> start!86070 m!923667))

(declare-fun m!923669 () Bool)

(assert (=> start!86070 m!923669))

(declare-fun m!923671 () Bool)

(assert (=> b!996478 m!923671))

(declare-fun m!923673 () Bool)

(assert (=> b!996470 m!923673))

(declare-fun m!923675 () Bool)

(assert (=> b!996476 m!923675))

(assert (=> b!996476 m!923675))

(declare-fun m!923677 () Bool)

(assert (=> b!996476 m!923677))

(assert (=> b!996476 m!923677))

(assert (=> b!996476 m!923675))

(declare-fun m!923679 () Bool)

(assert (=> b!996476 m!923679))

(assert (=> b!996473 m!923675))

(assert (=> b!996473 m!923675))

(declare-fun m!923681 () Bool)

(assert (=> b!996473 m!923681))

(declare-fun m!923683 () Bool)

(assert (=> b!996471 m!923683))

(declare-fun m!923685 () Bool)

(assert (=> b!996472 m!923685))

(check-sat (not b!996471) (not b!996477) (not b!996478) (not b!996472) (not b!996470) (not b!996476) (not b!996473) (not start!86070))
(check-sat)
