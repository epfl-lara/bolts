; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86408 () Bool)

(assert start!86408)

(declare-fun b!999440 () Bool)

(declare-fun res!669076 () Bool)

(declare-fun e!563559 () Bool)

(assert (=> b!999440 (=> (not res!669076) (not e!563559))))

(declare-datatypes ((array!63161 0))(
  ( (array!63162 (arr!30402 (Array (_ BitVec 32) (_ BitVec 64))) (size!30905 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63161)

(declare-datatypes ((List!21204 0))(
  ( (Nil!21201) (Cons!21200 (h!22377 (_ BitVec 64)) (t!30213 List!21204)) )
))
(declare-fun arrayNoDuplicates!0 (array!63161 (_ BitVec 32) List!21204) Bool)

(assert (=> b!999440 (= res!669076 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21201))))

(declare-fun b!999441 () Bool)

(declare-fun res!669085 () Bool)

(assert (=> b!999441 (=> (not res!669085) (not e!563559))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!999441 (= res!669085 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30905 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30905 a!3219))))))

(declare-fun res!669074 () Bool)

(declare-fun e!563561 () Bool)

(assert (=> start!86408 (=> (not res!669074) (not e!563561))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86408 (= res!669074 (validMask!0 mask!3464))))

(assert (=> start!86408 e!563561))

(declare-fun array_inv!23392 (array!63161) Bool)

(assert (=> start!86408 (array_inv!23392 a!3219)))

(assert (=> start!86408 true))

(declare-fun b!999442 () Bool)

(declare-fun e!563557 () Bool)

(assert (=> b!999442 (= e!563559 e!563557)))

(declare-fun res!669082 () Bool)

(assert (=> b!999442 (=> (not res!669082) (not e!563557))))

(declare-fun j!170 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9334 0))(
  ( (MissingZero!9334 (index!39706 (_ BitVec 32))) (Found!9334 (index!39707 (_ BitVec 32))) (Intermediate!9334 (undefined!10146 Bool) (index!39708 (_ BitVec 32)) (x!87171 (_ BitVec 32))) (Undefined!9334) (MissingVacant!9334 (index!39709 (_ BitVec 32))) )
))
(declare-fun lt!442009 () SeekEntryResult!9334)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63161 (_ BitVec 32)) SeekEntryResult!9334)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999442 (= res!669082 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30402 a!3219) j!170) mask!3464) (select (arr!30402 a!3219) j!170) a!3219 mask!3464) lt!442009))))

(assert (=> b!999442 (= lt!442009 (Intermediate!9334 false resIndex!38 resX!38))))

(declare-fun b!999443 () Bool)

(declare-fun res!669079 () Bool)

(assert (=> b!999443 (=> (not res!669079) (not e!563559))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63161 (_ BitVec 32)) Bool)

(assert (=> b!999443 (= res!669079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!999444 () Bool)

(declare-fun res!669080 () Bool)

(assert (=> b!999444 (=> (not res!669080) (not e!563561))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999444 (= res!669080 (validKeyInArray!0 (select (arr!30402 a!3219) j!170)))))

(declare-fun b!999445 () Bool)

(declare-fun e!563558 () Bool)

(assert (=> b!999445 (= e!563557 e!563558)))

(declare-fun res!669075 () Bool)

(assert (=> b!999445 (=> (not res!669075) (not e!563558))))

(declare-fun lt!442011 () (_ BitVec 32))

(assert (=> b!999445 (= res!669075 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvsge lt!442011 #b00000000000000000000000000000000) (bvslt lt!442011 (bvadd #b00000000000000000000000000000001 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!999445 (= lt!442011 (toIndex!0 (select (store (arr!30402 a!3219) i!1194 k!2224) j!170) mask!3464))))

(declare-fun b!999446 () Bool)

(declare-fun res!669084 () Bool)

(assert (=> b!999446 (=> (not res!669084) (not e!563561))))

(assert (=> b!999446 (= res!669084 (validKeyInArray!0 k!2224))))

(declare-fun b!999447 () Bool)

(assert (=> b!999447 (= e!563561 e!563559)))

(declare-fun res!669083 () Bool)

(assert (=> b!999447 (=> (not res!669083) (not e!563559))))

(declare-fun lt!442010 () SeekEntryResult!9334)

(assert (=> b!999447 (= res!669083 (or (= lt!442010 (MissingVacant!9334 i!1194)) (= lt!442010 (MissingZero!9334 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63161 (_ BitVec 32)) SeekEntryResult!9334)

(assert (=> b!999447 (= lt!442010 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!999448 () Bool)

(declare-fun res!669077 () Bool)

(assert (=> b!999448 (=> (not res!669077) (not e!563561))))

(declare-fun arrayContainsKey!0 (array!63161 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!999448 (= res!669077 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!999449 () Bool)

(assert (=> b!999449 (= e!563558 (not (validKeyInArray!0 (select (store (arr!30402 a!3219) i!1194 k!2224) j!170))))))

(declare-fun b!999450 () Bool)

(declare-fun res!669078 () Bool)

(assert (=> b!999450 (=> (not res!669078) (not e!563557))))

(assert (=> b!999450 (= res!669078 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30402 a!3219) j!170) a!3219 mask!3464) lt!442009))))

(declare-fun b!999451 () Bool)

(declare-fun res!669081 () Bool)

(assert (=> b!999451 (=> (not res!669081) (not e!563561))))

(assert (=> b!999451 (= res!669081 (and (= (size!30905 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30905 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30905 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86408 res!669074) b!999451))

(assert (= (and b!999451 res!669081) b!999444))

(assert (= (and b!999444 res!669080) b!999446))

(assert (= (and b!999446 res!669084) b!999448))

(assert (= (and b!999448 res!669077) b!999447))

(assert (= (and b!999447 res!669083) b!999443))

(assert (= (and b!999443 res!669079) b!999440))

(assert (= (and b!999440 res!669076) b!999441))

(assert (= (and b!999441 res!669085) b!999442))

(assert (= (and b!999442 res!669082) b!999450))

(assert (= (and b!999450 res!669078) b!999445))

(assert (= (and b!999445 res!669075) b!999449))

(declare-fun m!925783 () Bool)

(assert (=> b!999440 m!925783))

(declare-fun m!925785 () Bool)

(assert (=> b!999443 m!925785))

(declare-fun m!925787 () Bool)

(assert (=> b!999444 m!925787))

(assert (=> b!999444 m!925787))

(declare-fun m!925789 () Bool)

(assert (=> b!999444 m!925789))

(assert (=> b!999450 m!925787))

(assert (=> b!999450 m!925787))

(declare-fun m!925791 () Bool)

(assert (=> b!999450 m!925791))

(declare-fun m!925793 () Bool)

(assert (=> b!999447 m!925793))

(declare-fun m!925795 () Bool)

(assert (=> b!999448 m!925795))

(declare-fun m!925797 () Bool)

(assert (=> start!86408 m!925797))

(declare-fun m!925799 () Bool)

(assert (=> start!86408 m!925799))

(assert (=> b!999442 m!925787))

(assert (=> b!999442 m!925787))

(declare-fun m!925801 () Bool)

(assert (=> b!999442 m!925801))

(assert (=> b!999442 m!925801))

(assert (=> b!999442 m!925787))

(declare-fun m!925803 () Bool)

(assert (=> b!999442 m!925803))

(declare-fun m!925805 () Bool)

(assert (=> b!999445 m!925805))

(declare-fun m!925807 () Bool)

(assert (=> b!999445 m!925807))

(assert (=> b!999445 m!925807))

(declare-fun m!925809 () Bool)

(assert (=> b!999445 m!925809))

(declare-fun m!925811 () Bool)

(assert (=> b!999446 m!925811))

(assert (=> b!999449 m!925805))

(assert (=> b!999449 m!925807))

(assert (=> b!999449 m!925807))

(declare-fun m!925813 () Bool)

(assert (=> b!999449 m!925813))

(push 1)

(assert (not b!999446))

(assert (not b!999444))

(assert (not b!999445))

(assert (not b!999449))

(assert (not b!999443))

(assert (not b!999442))

(assert (not b!999447))

(assert (not b!999450))

