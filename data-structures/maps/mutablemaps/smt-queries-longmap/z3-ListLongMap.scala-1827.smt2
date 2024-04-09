; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33026 () Bool)

(assert start!33026)

(declare-fun b!328658 () Bool)

(declare-fun res!181142 () Bool)

(declare-fun e!201975 () Bool)

(assert (=> b!328658 (=> (not res!181142) (not e!201975))))

(declare-datatypes ((array!16828 0))(
  ( (array!16829 (arr!7958 (Array (_ BitVec 32) (_ BitVec 64))) (size!8310 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16828)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!328658 (= res!181142 (and (= (select (arr!7958 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8310 a!3305))))))

(declare-fun b!328659 () Bool)

(declare-fun res!181146 () Bool)

(assert (=> b!328659 (=> (not res!181146) (not e!201975))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16828 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!328659 (= res!181146 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!328660 () Bool)

(assert (=> b!328660 (= e!201975 false)))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3100 0))(
  ( (MissingZero!3100 (index!14576 (_ BitVec 32))) (Found!3100 (index!14577 (_ BitVec 32))) (Intermediate!3100 (undefined!3912 Bool) (index!14578 (_ BitVec 32)) (x!32806 (_ BitVec 32))) (Undefined!3100) (MissingVacant!3100 (index!14579 (_ BitVec 32))) )
))
(declare-fun lt!157994 () SeekEntryResult!3100)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16828 (_ BitVec 32)) SeekEntryResult!3100)

(assert (=> b!328660 (= lt!157994 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777))))

(declare-fun b!328661 () Bool)

(declare-fun res!181145 () Bool)

(assert (=> b!328661 (=> (not res!181145) (not e!201975))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!328661 (= res!181145 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) (Intermediate!3100 false resIndex!58 resX!58)))))

(declare-fun res!181143 () Bool)

(assert (=> start!33026 (=> (not res!181143) (not e!201975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33026 (= res!181143 (validMask!0 mask!3777))))

(assert (=> start!33026 e!201975))

(declare-fun array_inv!5912 (array!16828) Bool)

(assert (=> start!33026 (array_inv!5912 a!3305)))

(assert (=> start!33026 true))

(declare-fun b!328662 () Bool)

(declare-fun res!181144 () Bool)

(assert (=> b!328662 (=> (not res!181144) (not e!201975))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!328662 (= res!181144 (validKeyInArray!0 k0!2497))))

(declare-fun b!328663 () Bool)

(declare-fun res!181148 () Bool)

(assert (=> b!328663 (=> (not res!181148) (not e!201975))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16828 (_ BitVec 32)) Bool)

(assert (=> b!328663 (= res!181148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!328664 () Bool)

(declare-fun res!181149 () Bool)

(assert (=> b!328664 (=> (not res!181149) (not e!201975))))

(assert (=> b!328664 (= res!181149 (and (= (size!8310 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8310 a!3305))))))

(declare-fun b!328665 () Bool)

(declare-fun res!181147 () Bool)

(assert (=> b!328665 (=> (not res!181147) (not e!201975))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16828 (_ BitVec 32)) SeekEntryResult!3100)

(assert (=> b!328665 (= res!181147 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3100 i!1250)))))

(assert (= (and start!33026 res!181143) b!328664))

(assert (= (and b!328664 res!181149) b!328662))

(assert (= (and b!328662 res!181144) b!328659))

(assert (= (and b!328659 res!181146) b!328665))

(assert (= (and b!328665 res!181147) b!328663))

(assert (= (and b!328663 res!181148) b!328661))

(assert (= (and b!328661 res!181145) b!328658))

(assert (= (and b!328658 res!181142) b!328660))

(declare-fun m!334545 () Bool)

(assert (=> b!328663 m!334545))

(declare-fun m!334547 () Bool)

(assert (=> b!328662 m!334547))

(declare-fun m!334549 () Bool)

(assert (=> b!328660 m!334549))

(declare-fun m!334551 () Bool)

(assert (=> b!328658 m!334551))

(declare-fun m!334553 () Bool)

(assert (=> b!328661 m!334553))

(assert (=> b!328661 m!334553))

(declare-fun m!334555 () Bool)

(assert (=> b!328661 m!334555))

(declare-fun m!334557 () Bool)

(assert (=> b!328665 m!334557))

(declare-fun m!334559 () Bool)

(assert (=> b!328659 m!334559))

(declare-fun m!334561 () Bool)

(assert (=> start!33026 m!334561))

(declare-fun m!334563 () Bool)

(assert (=> start!33026 m!334563))

(check-sat (not b!328661) (not b!328665) (not start!33026) (not b!328663) (not b!328662) (not b!328659) (not b!328660))
