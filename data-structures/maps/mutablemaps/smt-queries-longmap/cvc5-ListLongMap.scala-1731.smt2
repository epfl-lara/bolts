; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31842 () Bool)

(assert start!31842)

(declare-fun b!318010 () Bool)

(declare-fun res!172750 () Bool)

(declare-fun e!197642 () Bool)

(assert (=> b!318010 (=> (not res!172750) (not e!197642))))

(declare-datatypes ((array!16211 0))(
  ( (array!16212 (arr!7669 (Array (_ BitVec 32) (_ BitVec 64))) (size!8021 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16211)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16211 (_ BitVec 32)) Bool)

(assert (=> b!318010 (= res!172750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!318011 () Bool)

(declare-fun res!172747 () Bool)

(assert (=> b!318011 (=> (not res!172747) (not e!197642))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2820 0))(
  ( (MissingZero!2820 (index!13456 (_ BitVec 32))) (Found!2820 (index!13457 (_ BitVec 32))) (Intermediate!2820 (undefined!3632 Bool) (index!13458 (_ BitVec 32)) (x!31680 (_ BitVec 32))) (Undefined!2820) (MissingVacant!2820 (index!13459 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16211 (_ BitVec 32)) SeekEntryResult!2820)

(assert (=> b!318011 (= res!172747 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2820 i!1240)))))

(declare-fun b!318012 () Bool)

(declare-fun res!172754 () Bool)

(declare-fun e!197644 () Bool)

(assert (=> b!318012 (=> (not res!172754) (not e!197644))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!318012 (= res!172754 (and (= (select (arr!7669 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8021 a!3293))))))

(declare-fun b!318013 () Bool)

(declare-fun lt!155219 () (_ BitVec 32))

(declare-fun lt!155221 () array!16211)

(declare-fun e!197640 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16211 (_ BitVec 32)) SeekEntryResult!2820)

(assert (=> b!318013 (= e!197640 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155221 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155219 k!2441 lt!155221 mask!3709)))))

(assert (=> b!318013 (= lt!155221 (array!16212 (store (arr!7669 a!3293) i!1240 k!2441) (size!8021 a!3293)))))

(declare-fun b!318014 () Bool)

(declare-fun res!172749 () Bool)

(assert (=> b!318014 (=> (not res!172749) (not e!197642))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318014 (= res!172749 (validKeyInArray!0 k!2441))))

(declare-fun res!172755 () Bool)

(assert (=> start!31842 (=> (not res!172755) (not e!197642))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31842 (= res!172755 (validMask!0 mask!3709))))

(assert (=> start!31842 e!197642))

(declare-fun array_inv!5623 (array!16211) Bool)

(assert (=> start!31842 (array_inv!5623 a!3293)))

(assert (=> start!31842 true))

(declare-fun b!318009 () Bool)

(declare-fun res!172752 () Bool)

(assert (=> b!318009 (=> (not res!172752) (not e!197642))))

(declare-fun arrayContainsKey!0 (array!16211 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318009 (= res!172752 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!318015 () Bool)

(declare-fun e!197641 () Bool)

(assert (=> b!318015 (= e!197641 (not true))))

(assert (=> b!318015 e!197640))

(declare-fun res!172751 () Bool)

(assert (=> b!318015 (=> (not res!172751) (not e!197640))))

(declare-fun lt!155220 () SeekEntryResult!2820)

(assert (=> b!318015 (= res!172751 (= lt!155220 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155219 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318015 (= lt!155219 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!318016 () Bool)

(assert (=> b!318016 (= e!197644 e!197641)))

(declare-fun res!172748 () Bool)

(assert (=> b!318016 (=> (not res!172748) (not e!197641))))

(declare-fun lt!155222 () SeekEntryResult!2820)

(assert (=> b!318016 (= res!172748 (and (= lt!155220 lt!155222) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7669 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!318016 (= lt!155220 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!318017 () Bool)

(declare-fun res!172753 () Bool)

(assert (=> b!318017 (=> (not res!172753) (not e!197642))))

(assert (=> b!318017 (= res!172753 (and (= (size!8021 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8021 a!3293))))))

(declare-fun b!318018 () Bool)

(assert (=> b!318018 (= e!197642 e!197644)))

(declare-fun res!172746 () Bool)

(assert (=> b!318018 (=> (not res!172746) (not e!197644))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318018 (= res!172746 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155222))))

(assert (=> b!318018 (= lt!155222 (Intermediate!2820 false resIndex!52 resX!52))))

(assert (= (and start!31842 res!172755) b!318017))

(assert (= (and b!318017 res!172753) b!318014))

(assert (= (and b!318014 res!172749) b!318009))

(assert (= (and b!318009 res!172752) b!318011))

(assert (= (and b!318011 res!172747) b!318010))

(assert (= (and b!318010 res!172750) b!318018))

(assert (= (and b!318018 res!172746) b!318012))

(assert (= (and b!318012 res!172754) b!318016))

(assert (= (and b!318016 res!172748) b!318015))

(assert (= (and b!318015 res!172751) b!318013))

(declare-fun m!326737 () Bool)

(assert (=> b!318012 m!326737))

(declare-fun m!326739 () Bool)

(assert (=> start!31842 m!326739))

(declare-fun m!326741 () Bool)

(assert (=> start!31842 m!326741))

(declare-fun m!326743 () Bool)

(assert (=> b!318018 m!326743))

(assert (=> b!318018 m!326743))

(declare-fun m!326745 () Bool)

(assert (=> b!318018 m!326745))

(declare-fun m!326747 () Bool)

(assert (=> b!318009 m!326747))

(declare-fun m!326749 () Bool)

(assert (=> b!318011 m!326749))

(declare-fun m!326751 () Bool)

(assert (=> b!318014 m!326751))

(declare-fun m!326753 () Bool)

(assert (=> b!318016 m!326753))

(declare-fun m!326755 () Bool)

(assert (=> b!318016 m!326755))

(declare-fun m!326757 () Bool)

(assert (=> b!318015 m!326757))

(declare-fun m!326759 () Bool)

(assert (=> b!318015 m!326759))

(declare-fun m!326761 () Bool)

(assert (=> b!318010 m!326761))

(declare-fun m!326763 () Bool)

(assert (=> b!318013 m!326763))

(declare-fun m!326765 () Bool)

(assert (=> b!318013 m!326765))

(declare-fun m!326767 () Bool)

(assert (=> b!318013 m!326767))

(push 1)

