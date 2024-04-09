; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31052 () Bool)

(assert start!31052)

(declare-fun res!168673 () Bool)

(declare-fun e!194619 () Bool)

(assert (=> start!31052 (=> (not res!168673) (not e!194619))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31052 (= res!168673 (validMask!0 mask!3709))))

(assert (=> start!31052 e!194619))

(declare-datatypes ((array!15952 0))(
  ( (array!15953 (arr!7556 (Array (_ BitVec 32) (_ BitVec 64))) (size!7908 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15952)

(declare-fun array_inv!5510 (array!15952) Bool)

(assert (=> start!31052 (array_inv!5510 a!3293)))

(assert (=> start!31052 true))

(declare-fun b!312054 () Bool)

(declare-fun e!194620 () Bool)

(declare-fun e!194618 () Bool)

(assert (=> b!312054 (= e!194620 e!194618)))

(declare-fun res!168675 () Bool)

(assert (=> b!312054 (=> (not res!168675) (not e!194618))))

(declare-datatypes ((SeekEntryResult!2707 0))(
  ( (MissingZero!2707 (index!13004 (_ BitVec 32))) (Found!2707 (index!13005 (_ BitVec 32))) (Intermediate!2707 (undefined!3519 Bool) (index!13006 (_ BitVec 32)) (x!31179 (_ BitVec 32))) (Undefined!2707) (MissingVacant!2707 (index!13007 (_ BitVec 32))) )
))
(declare-fun lt!152846 () SeekEntryResult!2707)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun lt!152845 () SeekEntryResult!2707)

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!312054 (= res!168675 (and (= lt!152846 lt!152845) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7556 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15952 (_ BitVec 32)) SeekEntryResult!2707)

(assert (=> b!312054 (= lt!152846 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!312055 () Bool)

(declare-fun e!194616 () Bool)

(assert (=> b!312055 (= e!194616 true)))

(declare-fun lt!152848 () SeekEntryResult!2707)

(declare-fun lt!152844 () SeekEntryResult!2707)

(assert (=> b!312055 (= lt!152848 lt!152844)))

(declare-fun lt!152849 () (_ BitVec 32))

(declare-datatypes ((Unit!9612 0))(
  ( (Unit!9613) )
))
(declare-fun lt!152847 () Unit!9612)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15952 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9612)

(assert (=> b!312055 (= lt!152847 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k0!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152849 resIndex!52 resX!52 mask!3709))))

(declare-fun b!312056 () Bool)

(declare-fun res!168672 () Bool)

(assert (=> b!312056 (=> (not res!168672) (not e!194619))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15952 (_ BitVec 32)) Bool)

(assert (=> b!312056 (= res!168672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312057 () Bool)

(declare-fun res!168674 () Bool)

(assert (=> b!312057 (=> (not res!168674) (not e!194619))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312057 (= res!168674 (validKeyInArray!0 k0!2441))))

(declare-fun b!312058 () Bool)

(declare-fun res!168667 () Bool)

(assert (=> b!312058 (=> (not res!168667) (not e!194619))))

(assert (=> b!312058 (= res!168667 (and (= (size!7908 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7908 a!3293))))))

(declare-fun b!312059 () Bool)

(declare-fun res!168666 () Bool)

(assert (=> b!312059 (=> (not res!168666) (not e!194620))))

(assert (=> b!312059 (= res!168666 (and (= (select (arr!7556 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7908 a!3293))))))

(declare-fun b!312060 () Bool)

(assert (=> b!312060 (= e!194619 e!194620)))

(declare-fun res!168670 () Bool)

(assert (=> b!312060 (=> (not res!168670) (not e!194620))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312060 (= res!168670 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!152845))))

(assert (=> b!312060 (= lt!152845 (Intermediate!2707 false resIndex!52 resX!52))))

(declare-fun b!312061 () Bool)

(declare-fun res!168668 () Bool)

(assert (=> b!312061 (=> (not res!168668) (not e!194619))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15952 (_ BitVec 32)) SeekEntryResult!2707)

(assert (=> b!312061 (= res!168668 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2707 i!1240)))))

(declare-fun b!312062 () Bool)

(assert (=> b!312062 (= e!194618 (not e!194616))))

(declare-fun res!168671 () Bool)

(assert (=> b!312062 (=> res!168671 e!194616)))

(assert (=> b!312062 (= res!168671 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152849 #b00000000000000000000000000000000) (bvsge lt!152849 (size!7908 a!3293)) (not (= lt!152844 lt!152845))))))

(declare-fun lt!152842 () SeekEntryResult!2707)

(assert (=> b!312062 (= lt!152842 lt!152848)))

(declare-fun lt!152843 () array!15952)

(assert (=> b!312062 (= lt!152848 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152849 k0!2441 lt!152843 mask!3709))))

(assert (=> b!312062 (= lt!152842 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!152843 mask!3709))))

(assert (=> b!312062 (= lt!152843 (array!15953 (store (arr!7556 a!3293) i!1240 k0!2441) (size!7908 a!3293)))))

(assert (=> b!312062 (= lt!152846 lt!152844)))

(assert (=> b!312062 (= lt!152844 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152849 k0!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312062 (= lt!152849 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!312063 () Bool)

(declare-fun res!168669 () Bool)

(assert (=> b!312063 (=> (not res!168669) (not e!194619))))

(declare-fun arrayContainsKey!0 (array!15952 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312063 (= res!168669 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!31052 res!168673) b!312058))

(assert (= (and b!312058 res!168667) b!312057))

(assert (= (and b!312057 res!168674) b!312063))

(assert (= (and b!312063 res!168669) b!312061))

(assert (= (and b!312061 res!168668) b!312056))

(assert (= (and b!312056 res!168672) b!312060))

(assert (= (and b!312060 res!168670) b!312059))

(assert (= (and b!312059 res!168666) b!312054))

(assert (= (and b!312054 res!168675) b!312062))

(assert (= (and b!312062 (not res!168671)) b!312055))

(declare-fun m!322157 () Bool)

(assert (=> start!31052 m!322157))

(declare-fun m!322159 () Bool)

(assert (=> start!31052 m!322159))

(declare-fun m!322161 () Bool)

(assert (=> b!312059 m!322161))

(declare-fun m!322163 () Bool)

(assert (=> b!312057 m!322163))

(declare-fun m!322165 () Bool)

(assert (=> b!312060 m!322165))

(assert (=> b!312060 m!322165))

(declare-fun m!322167 () Bool)

(assert (=> b!312060 m!322167))

(declare-fun m!322169 () Bool)

(assert (=> b!312061 m!322169))

(declare-fun m!322171 () Bool)

(assert (=> b!312055 m!322171))

(declare-fun m!322173 () Bool)

(assert (=> b!312063 m!322173))

(declare-fun m!322175 () Bool)

(assert (=> b!312054 m!322175))

(declare-fun m!322177 () Bool)

(assert (=> b!312054 m!322177))

(declare-fun m!322179 () Bool)

(assert (=> b!312062 m!322179))

(declare-fun m!322181 () Bool)

(assert (=> b!312062 m!322181))

(declare-fun m!322183 () Bool)

(assert (=> b!312062 m!322183))

(declare-fun m!322185 () Bool)

(assert (=> b!312062 m!322185))

(declare-fun m!322187 () Bool)

(assert (=> b!312062 m!322187))

(declare-fun m!322189 () Bool)

(assert (=> b!312056 m!322189))

(check-sat (not b!312060) (not b!312054) (not b!312061) (not b!312056) (not b!312062) (not start!31052) (not b!312057) (not b!312063) (not b!312055))
