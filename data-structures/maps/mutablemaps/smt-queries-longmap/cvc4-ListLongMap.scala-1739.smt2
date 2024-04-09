; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31948 () Bool)

(assert start!31948)

(declare-fun b!319086 () Bool)

(declare-fun e!198208 () Bool)

(declare-datatypes ((SeekEntryResult!2846 0))(
  ( (MissingZero!2846 (index!13560 (_ BitVec 32))) (Found!2846 (index!13561 (_ BitVec 32))) (Intermediate!2846 (undefined!3658 Bool) (index!13562 (_ BitVec 32)) (x!31779 (_ BitVec 32))) (Undefined!2846) (MissingVacant!2846 (index!13563 (_ BitVec 32))) )
))
(declare-fun lt!155742 () SeekEntryResult!2846)

(declare-fun lt!155745 () SeekEntryResult!2846)

(assert (=> b!319086 (= e!198208 (= lt!155742 lt!155745))))

(declare-fun lt!155741 () SeekEntryResult!2846)

(declare-fun lt!155740 () SeekEntryResult!2846)

(assert (=> b!319086 (= lt!155741 lt!155740)))

(declare-datatypes ((array!16266 0))(
  ( (array!16267 (arr!7695 (Array (_ BitVec 32) (_ BitVec 64))) (size!8047 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16266)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((Unit!9803 0))(
  ( (Unit!9804) )
))
(declare-fun lt!155747 () Unit!9803)

(declare-fun lt!155743 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!16266 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9803)

(assert (=> b!319086 (= lt!155747 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!155743 resIndex!52 resX!52 mask!3709))))

(declare-fun res!173637 () Bool)

(declare-fun e!198207 () Bool)

(assert (=> start!31948 (=> (not res!173637) (not e!198207))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31948 (= res!173637 (validMask!0 mask!3709))))

(assert (=> start!31948 e!198207))

(declare-fun array_inv!5649 (array!16266) Bool)

(assert (=> start!31948 (array_inv!5649 a!3293)))

(assert (=> start!31948 true))

(declare-fun b!319087 () Bool)

(declare-fun res!173628 () Bool)

(assert (=> b!319087 (=> (not res!173628) (not e!198207))))

(declare-fun arrayContainsKey!0 (array!16266 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319087 (= res!173628 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!319088 () Bool)

(declare-fun res!173629 () Bool)

(assert (=> b!319088 (=> (not res!173629) (not e!198207))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16266 (_ BitVec 32)) SeekEntryResult!2846)

(assert (=> b!319088 (= res!173629 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2846 i!1240)))))

(declare-fun b!319089 () Bool)

(declare-fun res!173633 () Bool)

(assert (=> b!319089 (=> (not res!173633) (not e!198207))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319089 (= res!173633 (validKeyInArray!0 k!2441))))

(declare-fun b!319090 () Bool)

(declare-fun res!173631 () Bool)

(assert (=> b!319090 (=> (not res!173631) (not e!198207))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16266 (_ BitVec 32)) Bool)

(assert (=> b!319090 (= res!173631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!319091 () Bool)

(declare-fun res!173636 () Bool)

(declare-fun e!198211 () Bool)

(assert (=> b!319091 (=> (not res!173636) (not e!198211))))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!319091 (= res!173636 (and (= (select (arr!7695 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8047 a!3293))))))

(declare-fun b!319092 () Bool)

(declare-fun e!198209 () Bool)

(assert (=> b!319092 (= e!198211 e!198209)))

(declare-fun res!173634 () Bool)

(assert (=> b!319092 (=> (not res!173634) (not e!198209))))

(declare-fun lt!155744 () SeekEntryResult!2846)

(assert (=> b!319092 (= res!173634 (and (= lt!155745 lt!155744) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7695 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16266 (_ BitVec 32)) SeekEntryResult!2846)

(assert (=> b!319092 (= lt!155745 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!319093 () Bool)

(declare-fun res!173635 () Bool)

(assert (=> b!319093 (=> (not res!173635) (not e!198207))))

(assert (=> b!319093 (= res!173635 (and (= (size!8047 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8047 a!3293))))))

(declare-fun b!319094 () Bool)

(assert (=> b!319094 (= e!198207 e!198211)))

(declare-fun res!173632 () Bool)

(assert (=> b!319094 (=> (not res!173632) (not e!198211))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319094 (= res!173632 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155744))))

(assert (=> b!319094 (= lt!155744 (Intermediate!2846 false resIndex!52 resX!52))))

(declare-fun b!319095 () Bool)

(assert (=> b!319095 (= e!198209 (not e!198208))))

(declare-fun res!173630 () Bool)

(assert (=> b!319095 (=> res!173630 e!198208)))

(assert (=> b!319095 (= res!173630 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!155743 #b00000000000000000000000000000000) (bvsge lt!155743 (size!8047 a!3293)) (not (= lt!155740 lt!155744))))))

(assert (=> b!319095 (= lt!155742 lt!155741)))

(declare-fun lt!155746 () array!16266)

(assert (=> b!319095 (= lt!155741 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155743 k!2441 lt!155746 mask!3709))))

(assert (=> b!319095 (= lt!155742 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155746 mask!3709))))

(assert (=> b!319095 (= lt!155746 (array!16267 (store (arr!7695 a!3293) i!1240 k!2441) (size!8047 a!3293)))))

(assert (=> b!319095 (= lt!155745 lt!155740)))

(assert (=> b!319095 (= lt!155740 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155743 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319095 (= lt!155743 (nextIndex!0 index!1781 x!1427 mask!3709))))

(assert (= (and start!31948 res!173637) b!319093))

(assert (= (and b!319093 res!173635) b!319089))

(assert (= (and b!319089 res!173633) b!319087))

(assert (= (and b!319087 res!173628) b!319088))

(assert (= (and b!319088 res!173629) b!319090))

(assert (= (and b!319090 res!173631) b!319094))

(assert (= (and b!319094 res!173632) b!319091))

(assert (= (and b!319091 res!173636) b!319092))

(assert (= (and b!319092 res!173634) b!319095))

(assert (= (and b!319095 (not res!173630)) b!319086))

(declare-fun m!327753 () Bool)

(assert (=> b!319091 m!327753))

(declare-fun m!327755 () Bool)

(assert (=> b!319092 m!327755))

(declare-fun m!327757 () Bool)

(assert (=> b!319092 m!327757))

(declare-fun m!327759 () Bool)

(assert (=> start!31948 m!327759))

(declare-fun m!327761 () Bool)

(assert (=> start!31948 m!327761))

(declare-fun m!327763 () Bool)

(assert (=> b!319095 m!327763))

(declare-fun m!327765 () Bool)

(assert (=> b!319095 m!327765))

(declare-fun m!327767 () Bool)

(assert (=> b!319095 m!327767))

(declare-fun m!327769 () Bool)

(assert (=> b!319095 m!327769))

(declare-fun m!327771 () Bool)

(assert (=> b!319095 m!327771))

(declare-fun m!327773 () Bool)

(assert (=> b!319089 m!327773))

(declare-fun m!327775 () Bool)

(assert (=> b!319088 m!327775))

(declare-fun m!327777 () Bool)

(assert (=> b!319094 m!327777))

(assert (=> b!319094 m!327777))

(declare-fun m!327779 () Bool)

(assert (=> b!319094 m!327779))

(declare-fun m!327781 () Bool)

(assert (=> b!319086 m!327781))

(declare-fun m!327783 () Bool)

(assert (=> b!319090 m!327783))

(declare-fun m!327785 () Bool)

(assert (=> b!319087 m!327785))

(push 1)

(assert (not b!319094))

(assert (not b!319090))

(assert (not b!319089))

(assert (not b!319087))

(assert (not b!319092))

