; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30818 () Bool)

(assert start!30818)

(declare-fun res!165934 () Bool)

(declare-fun e!193168 () Bool)

(assert (=> start!30818 (=> (not res!165934) (not e!193168))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30818 (= res!165934 (validMask!0 mask!3709))))

(assert (=> start!30818 e!193168))

(declare-datatypes ((array!15769 0))(
  ( (array!15770 (arr!7466 (Array (_ BitVec 32) (_ BitVec 64))) (size!7818 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15769)

(declare-fun array_inv!5420 (array!15769) Bool)

(assert (=> start!30818 (array_inv!5420 a!3293)))

(assert (=> start!30818 true))

(declare-fun b!309160 () Bool)

(declare-fun res!165931 () Bool)

(assert (=> b!309160 (=> (not res!165931) (not e!193168))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!309160 (= res!165931 (and (= (size!7818 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7818 a!3293))))))

(declare-fun b!309161 () Bool)

(declare-fun res!165939 () Bool)

(assert (=> b!309161 (=> (not res!165939) (not e!193168))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2617 0))(
  ( (MissingZero!2617 (index!12644 (_ BitVec 32))) (Found!2617 (index!12645 (_ BitVec 32))) (Intermediate!2617 (undefined!3429 Bool) (index!12646 (_ BitVec 32)) (x!30840 (_ BitVec 32))) (Undefined!2617) (MissingVacant!2617 (index!12647 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15769 (_ BitVec 32)) SeekEntryResult!2617)

(assert (=> b!309161 (= res!165939 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2617 i!1240)))))

(declare-fun b!309162 () Bool)

(declare-fun res!165933 () Bool)

(assert (=> b!309162 (=> (not res!165933) (not e!193168))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309162 (= res!165933 (validKeyInArray!0 k0!2441))))

(declare-fun b!309163 () Bool)

(declare-fun e!193169 () Bool)

(declare-fun e!193171 () Bool)

(assert (=> b!309163 (= e!193169 e!193171)))

(declare-fun res!165932 () Bool)

(assert (=> b!309163 (=> (not res!165932) (not e!193171))))

(declare-fun lt!151532 () SeekEntryResult!2617)

(declare-fun lt!151531 () SeekEntryResult!2617)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!309163 (= res!165932 (and (= lt!151532 lt!151531) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7466 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15769 (_ BitVec 32)) SeekEntryResult!2617)

(assert (=> b!309163 (= lt!151532 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!309164 () Bool)

(assert (=> b!309164 (= e!193171 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309164 (= lt!151532 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!309165 () Bool)

(declare-fun res!165938 () Bool)

(assert (=> b!309165 (=> (not res!165938) (not e!193168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15769 (_ BitVec 32)) Bool)

(assert (=> b!309165 (= res!165938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!309166 () Bool)

(declare-fun res!165937 () Bool)

(assert (=> b!309166 (=> (not res!165937) (not e!193169))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!309166 (= res!165937 (and (= (select (arr!7466 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7818 a!3293))))))

(declare-fun b!309167 () Bool)

(assert (=> b!309167 (= e!193168 e!193169)))

(declare-fun res!165936 () Bool)

(assert (=> b!309167 (=> (not res!165936) (not e!193169))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309167 (= res!165936 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151531))))

(assert (=> b!309167 (= lt!151531 (Intermediate!2617 false resIndex!52 resX!52))))

(declare-fun b!309168 () Bool)

(declare-fun res!165935 () Bool)

(assert (=> b!309168 (=> (not res!165935) (not e!193168))))

(declare-fun arrayContainsKey!0 (array!15769 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309168 (= res!165935 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30818 res!165934) b!309160))

(assert (= (and b!309160 res!165931) b!309162))

(assert (= (and b!309162 res!165933) b!309168))

(assert (= (and b!309168 res!165935) b!309161))

(assert (= (and b!309161 res!165939) b!309165))

(assert (= (and b!309165 res!165938) b!309167))

(assert (= (and b!309167 res!165936) b!309166))

(assert (= (and b!309166 res!165937) b!309163))

(assert (= (and b!309163 res!165932) b!309164))

(declare-fun m!319209 () Bool)

(assert (=> b!309164 m!319209))

(assert (=> b!309164 m!319209))

(declare-fun m!319211 () Bool)

(assert (=> b!309164 m!319211))

(declare-fun m!319213 () Bool)

(assert (=> b!309161 m!319213))

(declare-fun m!319215 () Bool)

(assert (=> b!309167 m!319215))

(assert (=> b!309167 m!319215))

(declare-fun m!319217 () Bool)

(assert (=> b!309167 m!319217))

(declare-fun m!319219 () Bool)

(assert (=> b!309168 m!319219))

(declare-fun m!319221 () Bool)

(assert (=> b!309166 m!319221))

(declare-fun m!319223 () Bool)

(assert (=> start!30818 m!319223))

(declare-fun m!319225 () Bool)

(assert (=> start!30818 m!319225))

(declare-fun m!319227 () Bool)

(assert (=> b!309162 m!319227))

(declare-fun m!319229 () Bool)

(assert (=> b!309165 m!319229))

(declare-fun m!319231 () Bool)

(assert (=> b!309163 m!319231))

(declare-fun m!319233 () Bool)

(assert (=> b!309163 m!319233))

(check-sat (not b!309163) (not b!309167) (not start!30818) (not b!309162) (not b!309168) (not b!309164) (not b!309165) (not b!309161))
(check-sat)
