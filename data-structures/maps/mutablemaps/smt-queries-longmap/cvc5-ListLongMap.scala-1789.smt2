; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32442 () Bool)

(assert start!32442)

(declare-fun b!323801 () Bool)

(declare-fun res!177293 () Bool)

(declare-fun e!200031 () Bool)

(assert (=> b!323801 (=> (not res!177293) (not e!200031))))

(declare-datatypes ((array!16577 0))(
  ( (array!16578 (arr!7843 (Array (_ BitVec 32) (_ BitVec 64))) (size!8195 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16577)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2985 0))(
  ( (MissingZero!2985 (index!14116 (_ BitVec 32))) (Found!2985 (index!14117 (_ BitVec 32))) (Intermediate!2985 (undefined!3797 Bool) (index!14118 (_ BitVec 32)) (x!32336 (_ BitVec 32))) (Undefined!2985) (MissingVacant!2985 (index!14119 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16577 (_ BitVec 32)) SeekEntryResult!2985)

(assert (=> b!323801 (= res!177293 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2985 i!1250)))))

(declare-fun b!323803 () Bool)

(declare-fun res!177290 () Bool)

(assert (=> b!323803 (=> (not res!177290) (not e!200031))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16577 (_ BitVec 32)) Bool)

(assert (=> b!323803 (= res!177290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!323804 () Bool)

(declare-fun res!177292 () Bool)

(assert (=> b!323804 (=> (not res!177292) (not e!200031))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!323804 (= res!177292 (and (= (select (arr!7843 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8195 a!3305))))))

(declare-fun b!323805 () Bool)

(declare-fun res!177294 () Bool)

(assert (=> b!323805 (=> (not res!177294) (not e!200031))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16577 (_ BitVec 32)) SeekEntryResult!2985)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323805 (= res!177294 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!2985 false resIndex!58 resX!58)))))

(declare-fun b!323806 () Bool)

(assert (=> b!323806 (= e!200031 false)))

(declare-fun lt!156701 () SeekEntryResult!2985)

(assert (=> b!323806 (= lt!156701 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(declare-fun res!177297 () Bool)

(assert (=> start!32442 (=> (not res!177297) (not e!200031))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32442 (= res!177297 (validMask!0 mask!3777))))

(assert (=> start!32442 e!200031))

(declare-fun array_inv!5797 (array!16577) Bool)

(assert (=> start!32442 (array_inv!5797 a!3305)))

(assert (=> start!32442 true))

(declare-fun b!323802 () Bool)

(declare-fun res!177295 () Bool)

(assert (=> b!323802 (=> (not res!177295) (not e!200031))))

(declare-fun arrayContainsKey!0 (array!16577 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323802 (= res!177295 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!323807 () Bool)

(declare-fun res!177296 () Bool)

(assert (=> b!323807 (=> (not res!177296) (not e!200031))))

(assert (=> b!323807 (= res!177296 (and (= (size!8195 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8195 a!3305))))))

(declare-fun b!323808 () Bool)

(declare-fun res!177291 () Bool)

(assert (=> b!323808 (=> (not res!177291) (not e!200031))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323808 (= res!177291 (validKeyInArray!0 k!2497))))

(assert (= (and start!32442 res!177297) b!323807))

(assert (= (and b!323807 res!177296) b!323808))

(assert (= (and b!323808 res!177291) b!323802))

(assert (= (and b!323802 res!177295) b!323801))

(assert (= (and b!323801 res!177293) b!323803))

(assert (= (and b!323803 res!177290) b!323805))

(assert (= (and b!323805 res!177294) b!323804))

(assert (= (and b!323804 res!177292) b!323806))

(declare-fun m!330973 () Bool)

(assert (=> b!323805 m!330973))

(assert (=> b!323805 m!330973))

(declare-fun m!330975 () Bool)

(assert (=> b!323805 m!330975))

(declare-fun m!330977 () Bool)

(assert (=> b!323801 m!330977))

(declare-fun m!330979 () Bool)

(assert (=> b!323802 m!330979))

(declare-fun m!330981 () Bool)

(assert (=> start!32442 m!330981))

(declare-fun m!330983 () Bool)

(assert (=> start!32442 m!330983))

(declare-fun m!330985 () Bool)

(assert (=> b!323806 m!330985))

(declare-fun m!330987 () Bool)

(assert (=> b!323808 m!330987))

(declare-fun m!330989 () Bool)

(assert (=> b!323804 m!330989))

(declare-fun m!330991 () Bool)

(assert (=> b!323803 m!330991))

(push 1)

(assert (not b!323806))

(assert (not b!323801))

(assert (not b!323805))

(assert (not start!32442))

(assert (not b!323802))

(assert (not b!323808))

(assert (not b!323803))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

