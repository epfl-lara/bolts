; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31024 () Bool)

(assert start!31024)

(declare-fun b!311635 () Bool)

(declare-fun res!168248 () Bool)

(declare-fun e!194407 () Bool)

(assert (=> b!311635 (=> (not res!168248) (not e!194407))))

(declare-datatypes ((array!15924 0))(
  ( (array!15925 (arr!7542 (Array (_ BitVec 32) (_ BitVec 64))) (size!7894 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15924)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15924 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311635 (= res!168248 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311636 () Bool)

(declare-fun e!194408 () Bool)

(declare-fun e!194410 () Bool)

(assert (=> b!311636 (= e!194408 (not e!194410))))

(declare-fun res!168251 () Bool)

(assert (=> b!311636 (=> res!168251 e!194410)))

(declare-datatypes ((SeekEntryResult!2693 0))(
  ( (MissingZero!2693 (index!12948 (_ BitVec 32))) (Found!2693 (index!12949 (_ BitVec 32))) (Intermediate!2693 (undefined!3505 Bool) (index!12950 (_ BitVec 32)) (x!31125 (_ BitVec 32))) (Undefined!2693) (MissingVacant!2693 (index!12951 (_ BitVec 32))) )
))
(declare-fun lt!152513 () SeekEntryResult!2693)

(declare-fun lt!152512 () SeekEntryResult!2693)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!152510 () (_ BitVec 32))

(assert (=> b!311636 (= res!168251 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152510 #b00000000000000000000000000000000) (bvsge lt!152510 (size!7894 a!3293)) (not (= lt!152512 lt!152513))))))

(declare-fun lt!152509 () SeekEntryResult!2693)

(declare-fun lt!152511 () SeekEntryResult!2693)

(assert (=> b!311636 (= lt!152509 lt!152511)))

(declare-fun lt!152506 () array!15924)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15924 (_ BitVec 32)) SeekEntryResult!2693)

(assert (=> b!311636 (= lt!152511 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152510 k!2441 lt!152506 mask!3709))))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!311636 (= lt!152509 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152506 mask!3709))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!311636 (= lt!152506 (array!15925 (store (arr!7542 a!3293) i!1240 k!2441) (size!7894 a!3293)))))

(declare-fun lt!152507 () SeekEntryResult!2693)

(assert (=> b!311636 (= lt!152507 lt!152512)))

(assert (=> b!311636 (= lt!152512 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152510 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311636 (= lt!152510 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311637 () Bool)

(declare-fun res!168247 () Bool)

(assert (=> b!311637 (=> (not res!168247) (not e!194407))))

(assert (=> b!311637 (= res!168247 (and (= (size!7894 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7894 a!3293))))))

(declare-fun b!311638 () Bool)

(declare-fun res!168249 () Bool)

(assert (=> b!311638 (=> (not res!168249) (not e!194407))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15924 (_ BitVec 32)) Bool)

(assert (=> b!311638 (= res!168249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311639 () Bool)

(declare-fun res!168255 () Bool)

(assert (=> b!311639 (=> (not res!168255) (not e!194407))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15924 (_ BitVec 32)) SeekEntryResult!2693)

(assert (=> b!311639 (= res!168255 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2693 i!1240)))))

(declare-fun b!311640 () Bool)

(declare-fun res!168250 () Bool)

(assert (=> b!311640 (=> (not res!168250) (not e!194407))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311640 (= res!168250 (validKeyInArray!0 k!2441))))

(declare-fun b!311641 () Bool)

(declare-fun res!168253 () Bool)

(declare-fun e!194409 () Bool)

(assert (=> b!311641 (=> (not res!168253) (not e!194409))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!311641 (= res!168253 (and (= (select (arr!7542 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7894 a!3293))))))

(declare-fun res!168254 () Bool)

(assert (=> start!31024 (=> (not res!168254) (not e!194407))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31024 (= res!168254 (validMask!0 mask!3709))))

(assert (=> start!31024 e!194407))

(declare-fun array_inv!5496 (array!15924) Bool)

(assert (=> start!31024 (array_inv!5496 a!3293)))

(assert (=> start!31024 true))

(declare-fun b!311634 () Bool)

(assert (=> b!311634 (= e!194410 true)))

(assert (=> b!311634 (= lt!152511 lt!152512)))

(declare-datatypes ((Unit!9584 0))(
  ( (Unit!9585) )
))
(declare-fun lt!152508 () Unit!9584)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15924 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9584)

(assert (=> b!311634 (= lt!152508 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152510 resIndex!52 resX!52 mask!3709))))

(declare-fun b!311642 () Bool)

(assert (=> b!311642 (= e!194407 e!194409)))

(declare-fun res!168252 () Bool)

(assert (=> b!311642 (=> (not res!168252) (not e!194409))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311642 (= res!168252 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152513))))

(assert (=> b!311642 (= lt!152513 (Intermediate!2693 false resIndex!52 resX!52))))

(declare-fun b!311643 () Bool)

(assert (=> b!311643 (= e!194409 e!194408)))

(declare-fun res!168246 () Bool)

(assert (=> b!311643 (=> (not res!168246) (not e!194408))))

(assert (=> b!311643 (= res!168246 (and (= lt!152507 lt!152513) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7542 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311643 (= lt!152507 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(assert (= (and start!31024 res!168254) b!311637))

(assert (= (and b!311637 res!168247) b!311640))

(assert (= (and b!311640 res!168250) b!311635))

(assert (= (and b!311635 res!168248) b!311639))

(assert (= (and b!311639 res!168255) b!311638))

(assert (= (and b!311638 res!168249) b!311642))

(assert (= (and b!311642 res!168252) b!311641))

(assert (= (and b!311641 res!168253) b!311643))

(assert (= (and b!311643 res!168246) b!311636))

(assert (= (and b!311636 (not res!168251)) b!311634))

(declare-fun m!321681 () Bool)

(assert (=> b!311641 m!321681))

(declare-fun m!321683 () Bool)

(assert (=> b!311643 m!321683))

(declare-fun m!321685 () Bool)

(assert (=> b!311643 m!321685))

(declare-fun m!321687 () Bool)

(assert (=> b!311638 m!321687))

(declare-fun m!321689 () Bool)

(assert (=> b!311635 m!321689))

(declare-fun m!321691 () Bool)

(assert (=> b!311640 m!321691))

(declare-fun m!321693 () Bool)

(assert (=> start!31024 m!321693))

(declare-fun m!321695 () Bool)

(assert (=> start!31024 m!321695))

(declare-fun m!321697 () Bool)

(assert (=> b!311639 m!321697))

(declare-fun m!321699 () Bool)

(assert (=> b!311634 m!321699))

(declare-fun m!321701 () Bool)

(assert (=> b!311642 m!321701))

(assert (=> b!311642 m!321701))

(declare-fun m!321703 () Bool)

(assert (=> b!311642 m!321703))

(declare-fun m!321705 () Bool)

(assert (=> b!311636 m!321705))

(declare-fun m!321707 () Bool)

(assert (=> b!311636 m!321707))

(declare-fun m!321709 () Bool)

(assert (=> b!311636 m!321709))

(declare-fun m!321711 () Bool)

(assert (=> b!311636 m!321711))

(declare-fun m!321713 () Bool)

(assert (=> b!311636 m!321713))

(push 1)

(assert (not b!311639))

(assert (not b!311638))

(assert (not b!311643))

