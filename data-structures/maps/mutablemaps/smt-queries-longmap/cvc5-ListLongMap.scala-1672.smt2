; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30924 () Bool)

(assert start!30924)

(declare-fun b!310134 () Bool)

(declare-fun res!166753 () Bool)

(declare-fun e!193658 () Bool)

(assert (=> b!310134 (=> (not res!166753) (not e!193658))))

(declare-datatypes ((array!15824 0))(
  ( (array!15825 (arr!7492 (Array (_ BitVec 32) (_ BitVec 64))) (size!7844 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15824)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15824 (_ BitVec 32)) Bool)

(assert (=> b!310134 (= res!166753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310135 () Bool)

(declare-fun e!193656 () Bool)

(assert (=> b!310135 (= e!193658 e!193656)))

(declare-fun res!166750 () Bool)

(assert (=> b!310135 (=> (not res!166750) (not e!193656))))

(declare-datatypes ((SeekEntryResult!2643 0))(
  ( (MissingZero!2643 (index!12748 (_ BitVec 32))) (Found!2643 (index!12749 (_ BitVec 32))) (Intermediate!2643 (undefined!3455 Bool) (index!12750 (_ BitVec 32)) (x!30947 (_ BitVec 32))) (Undefined!2643) (MissingVacant!2643 (index!12751 (_ BitVec 32))) )
))
(declare-fun lt!151875 () SeekEntryResult!2643)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15824 (_ BitVec 32)) SeekEntryResult!2643)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310135 (= res!166750 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151875))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!310135 (= lt!151875 (Intermediate!2643 false resIndex!52 resX!52))))

(declare-fun b!310136 () Bool)

(declare-fun res!166752 () Bool)

(assert (=> b!310136 (=> (not res!166752) (not e!193656))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!310136 (= res!166752 (and (= (select (arr!7492 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7844 a!3293))))))

(declare-fun b!310137 () Bool)

(declare-fun res!166751 () Bool)

(assert (=> b!310137 (=> (not res!166751) (not e!193658))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15824 (_ BitVec 32)) SeekEntryResult!2643)

(assert (=> b!310137 (= res!166751 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2643 i!1240)))))

(declare-fun b!310138 () Bool)

(declare-fun res!166746 () Bool)

(assert (=> b!310138 (=> (not res!166746) (not e!193658))))

(declare-fun arrayContainsKey!0 (array!15824 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310138 (= res!166746 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun e!193659 () Bool)

(declare-fun b!310139 () Bool)

(assert (=> b!310139 (= e!193659 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110))))))

(declare-fun e!193660 () Bool)

(assert (=> b!310139 e!193660))

(declare-fun res!166754 () Bool)

(assert (=> b!310139 (=> (not res!166754) (not e!193660))))

(declare-fun lt!151877 () (_ BitVec 32))

(declare-fun lt!151874 () SeekEntryResult!2643)

(assert (=> b!310139 (= res!166754 (= lt!151874 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151877 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310139 (= lt!151877 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun lt!151876 () array!15824)

(declare-fun b!310140 () Bool)

(assert (=> b!310140 (= e!193660 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!151876 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151877 k!2441 lt!151876 mask!3709)))))

(assert (=> b!310140 (= lt!151876 (array!15825 (store (arr!7492 a!3293) i!1240 k!2441) (size!7844 a!3293)))))

(declare-fun res!166749 () Bool)

(assert (=> start!30924 (=> (not res!166749) (not e!193658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30924 (= res!166749 (validMask!0 mask!3709))))

(assert (=> start!30924 e!193658))

(declare-fun array_inv!5446 (array!15824) Bool)

(assert (=> start!30924 (array_inv!5446 a!3293)))

(assert (=> start!30924 true))

(declare-fun b!310141 () Bool)

(declare-fun res!166748 () Bool)

(assert (=> b!310141 (=> (not res!166748) (not e!193658))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310141 (= res!166748 (validKeyInArray!0 k!2441))))

(declare-fun b!310142 () Bool)

(declare-fun res!166755 () Bool)

(assert (=> b!310142 (=> (not res!166755) (not e!193658))))

(assert (=> b!310142 (= res!166755 (and (= (size!7844 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7844 a!3293))))))

(declare-fun b!310143 () Bool)

(assert (=> b!310143 (= e!193656 e!193659)))

(declare-fun res!166747 () Bool)

(assert (=> b!310143 (=> (not res!166747) (not e!193659))))

(assert (=> b!310143 (= res!166747 (and (= lt!151874 lt!151875) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7492 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310143 (= lt!151874 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(assert (= (and start!30924 res!166749) b!310142))

(assert (= (and b!310142 res!166755) b!310141))

(assert (= (and b!310141 res!166748) b!310138))

(assert (= (and b!310138 res!166746) b!310137))

(assert (= (and b!310137 res!166751) b!310134))

(assert (= (and b!310134 res!166753) b!310135))

(assert (= (and b!310135 res!166750) b!310136))

(assert (= (and b!310136 res!166752) b!310143))

(assert (= (and b!310143 res!166747) b!310139))

(assert (= (and b!310139 res!166754) b!310140))

(declare-fun m!320077 () Bool)

(assert (=> b!310136 m!320077))

(declare-fun m!320079 () Bool)

(assert (=> b!310137 m!320079))

(declare-fun m!320081 () Bool)

(assert (=> b!310135 m!320081))

(assert (=> b!310135 m!320081))

(declare-fun m!320083 () Bool)

(assert (=> b!310135 m!320083))

(declare-fun m!320085 () Bool)

(assert (=> b!310138 m!320085))

(declare-fun m!320087 () Bool)

(assert (=> b!310141 m!320087))

(declare-fun m!320089 () Bool)

(assert (=> b!310139 m!320089))

(declare-fun m!320091 () Bool)

(assert (=> b!310139 m!320091))

(declare-fun m!320093 () Bool)

(assert (=> start!30924 m!320093))

(declare-fun m!320095 () Bool)

(assert (=> start!30924 m!320095))

(declare-fun m!320097 () Bool)

(assert (=> b!310134 m!320097))

(declare-fun m!320099 () Bool)

(assert (=> b!310140 m!320099))

(declare-fun m!320101 () Bool)

(assert (=> b!310140 m!320101))

(declare-fun m!320103 () Bool)

(assert (=> b!310140 m!320103))

(declare-fun m!320105 () Bool)

(assert (=> b!310143 m!320105))

(declare-fun m!320107 () Bool)

(assert (=> b!310143 m!320107))

(push 1)

