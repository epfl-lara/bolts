; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31048 () Bool)

(assert start!31048)

(declare-fun b!311995 () Bool)

(declare-fun res!168609 () Bool)

(declare-fun e!194586 () Bool)

(assert (=> b!311995 (=> (not res!168609) (not e!194586))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311995 (= res!168609 (validKeyInArray!0 k!2441))))

(declare-fun b!311996 () Bool)

(declare-fun e!194587 () Bool)

(declare-fun e!194588 () Bool)

(assert (=> b!311996 (= e!194587 (not e!194588))))

(declare-fun res!168612 () Bool)

(assert (=> b!311996 (=> res!168612 e!194588)))

(declare-datatypes ((array!15948 0))(
  ( (array!15949 (arr!7554 (Array (_ BitVec 32) (_ BitVec 64))) (size!7906 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15948)

(declare-datatypes ((SeekEntryResult!2705 0))(
  ( (MissingZero!2705 (index!12996 (_ BitVec 32))) (Found!2705 (index!12997 (_ BitVec 32))) (Intermediate!2705 (undefined!3517 Bool) (index!12998 (_ BitVec 32)) (x!31169 (_ BitVec 32))) (Undefined!2705) (MissingVacant!2705 (index!12999 (_ BitVec 32))) )
))
(declare-fun lt!152798 () SeekEntryResult!2705)

(declare-fun lt!152794 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!152801 () SeekEntryResult!2705)

(assert (=> b!311996 (= res!168612 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152794 #b00000000000000000000000000000000) (bvsge lt!152794 (size!7906 a!3293)) (not (= lt!152801 lt!152798))))))

(declare-fun lt!152796 () SeekEntryResult!2705)

(declare-fun lt!152799 () SeekEntryResult!2705)

(assert (=> b!311996 (= lt!152796 lt!152799)))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!152800 () array!15948)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15948 (_ BitVec 32)) SeekEntryResult!2705)

(assert (=> b!311996 (= lt!152799 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152794 k!2441 lt!152800 mask!3709))))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!311996 (= lt!152796 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152800 mask!3709))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!311996 (= lt!152800 (array!15949 (store (arr!7554 a!3293) i!1240 k!2441) (size!7906 a!3293)))))

(declare-fun lt!152797 () SeekEntryResult!2705)

(assert (=> b!311996 (= lt!152797 lt!152801)))

(assert (=> b!311996 (= lt!152801 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152794 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311996 (= lt!152794 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311997 () Bool)

(declare-fun res!168611 () Bool)

(declare-fun e!194590 () Bool)

(assert (=> b!311997 (=> (not res!168611) (not e!194590))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!311997 (= res!168611 (and (= (select (arr!7554 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7906 a!3293))))))

(declare-fun b!311998 () Bool)

(declare-fun res!168614 () Bool)

(assert (=> b!311998 (=> (not res!168614) (not e!194586))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15948 (_ BitVec 32)) Bool)

(assert (=> b!311998 (= res!168614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311999 () Bool)

(assert (=> b!311999 (= e!194586 e!194590)))

(declare-fun res!168606 () Bool)

(assert (=> b!311999 (=> (not res!168606) (not e!194590))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311999 (= res!168606 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152798))))

(assert (=> b!311999 (= lt!152798 (Intermediate!2705 false resIndex!52 resX!52))))

(declare-fun b!312000 () Bool)

(assert (=> b!312000 (= e!194590 e!194587)))

(declare-fun res!168607 () Bool)

(assert (=> b!312000 (=> (not res!168607) (not e!194587))))

(assert (=> b!312000 (= res!168607 (and (= lt!152797 lt!152798) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7554 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!312000 (= lt!152797 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!312001 () Bool)

(declare-fun res!168613 () Bool)

(assert (=> b!312001 (=> (not res!168613) (not e!194586))))

(declare-fun arrayContainsKey!0 (array!15948 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312001 (= res!168613 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!168610 () Bool)

(assert (=> start!31048 (=> (not res!168610) (not e!194586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31048 (= res!168610 (validMask!0 mask!3709))))

(assert (=> start!31048 e!194586))

(declare-fun array_inv!5508 (array!15948) Bool)

(assert (=> start!31048 (array_inv!5508 a!3293)))

(assert (=> start!31048 true))

(declare-fun b!311994 () Bool)

(assert (=> b!311994 (= e!194588 (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110)))))

(assert (=> b!311994 (= lt!152799 lt!152801)))

(declare-datatypes ((Unit!9608 0))(
  ( (Unit!9609) )
))
(declare-fun lt!152795 () Unit!9608)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15948 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9608)

(assert (=> b!311994 (= lt!152795 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152794 resIndex!52 resX!52 mask!3709))))

(declare-fun b!312002 () Bool)

(declare-fun res!168615 () Bool)

(assert (=> b!312002 (=> (not res!168615) (not e!194586))))

(assert (=> b!312002 (= res!168615 (and (= (size!7906 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7906 a!3293))))))

(declare-fun b!312003 () Bool)

(declare-fun res!168608 () Bool)

(assert (=> b!312003 (=> (not res!168608) (not e!194586))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15948 (_ BitVec 32)) SeekEntryResult!2705)

(assert (=> b!312003 (= res!168608 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2705 i!1240)))))

(assert (= (and start!31048 res!168610) b!312002))

(assert (= (and b!312002 res!168615) b!311995))

(assert (= (and b!311995 res!168609) b!312001))

(assert (= (and b!312001 res!168613) b!312003))

(assert (= (and b!312003 res!168608) b!311998))

(assert (= (and b!311998 res!168614) b!311999))

(assert (= (and b!311999 res!168606) b!311997))

(assert (= (and b!311997 res!168611) b!312000))

(assert (= (and b!312000 res!168607) b!311996))

(assert (= (and b!311996 (not res!168612)) b!311994))

(declare-fun m!322089 () Bool)

(assert (=> b!312001 m!322089))

(declare-fun m!322091 () Bool)

(assert (=> b!312003 m!322091))

(declare-fun m!322093 () Bool)

(assert (=> b!311994 m!322093))

(declare-fun m!322095 () Bool)

(assert (=> b!311996 m!322095))

(declare-fun m!322097 () Bool)

(assert (=> b!311996 m!322097))

(declare-fun m!322099 () Bool)

(assert (=> b!311996 m!322099))

(declare-fun m!322101 () Bool)

(assert (=> b!311996 m!322101))

(declare-fun m!322103 () Bool)

(assert (=> b!311996 m!322103))

(declare-fun m!322105 () Bool)

(assert (=> b!312000 m!322105))

(declare-fun m!322107 () Bool)

(assert (=> b!312000 m!322107))

(declare-fun m!322109 () Bool)

(assert (=> b!311997 m!322109))

(declare-fun m!322111 () Bool)

(assert (=> start!31048 m!322111))

(declare-fun m!322113 () Bool)

(assert (=> start!31048 m!322113))

(declare-fun m!322115 () Bool)

(assert (=> b!311999 m!322115))

(assert (=> b!311999 m!322115))

(declare-fun m!322117 () Bool)

(assert (=> b!311999 m!322117))

(declare-fun m!322119 () Bool)

(assert (=> b!311998 m!322119))

(declare-fun m!322121 () Bool)

(assert (=> b!311995 m!322121))

(push 1)

(assert (not b!311995))

(assert (not b!312000))

(assert (not start!31048))

(assert (not b!311994))

(assert (not b!311998))

(assert (not b!311996))

