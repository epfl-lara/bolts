; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31846 () Bool)

(assert start!31846)

(declare-fun b!318069 () Bool)

(declare-fun e!197673 () Bool)

(declare-fun e!197670 () Bool)

(assert (=> b!318069 (= e!197673 e!197670)))

(declare-fun res!172809 () Bool)

(assert (=> b!318069 (=> (not res!172809) (not e!197670))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((array!16215 0))(
  ( (array!16216 (arr!7671 (Array (_ BitVec 32) (_ BitVec 64))) (size!8023 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16215)

(declare-datatypes ((SeekEntryResult!2822 0))(
  ( (MissingZero!2822 (index!13464 (_ BitVec 32))) (Found!2822 (index!13465 (_ BitVec 32))) (Intermediate!2822 (undefined!3634 Bool) (index!13466 (_ BitVec 32)) (x!31682 (_ BitVec 32))) (Undefined!2822) (MissingVacant!2822 (index!13467 (_ BitVec 32))) )
))
(declare-fun lt!155245 () SeekEntryResult!2822)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16215 (_ BitVec 32)) SeekEntryResult!2822)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318069 (= res!172809 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155245))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!318069 (= lt!155245 (Intermediate!2822 false resIndex!52 resX!52))))

(declare-fun b!318070 () Bool)

(declare-fun res!172806 () Bool)

(assert (=> b!318070 (=> (not res!172806) (not e!197673))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318070 (= res!172806 (validKeyInArray!0 k!2441))))

(declare-fun b!318071 () Bool)

(declare-fun res!172815 () Bool)

(assert (=> b!318071 (=> (not res!172815) (not e!197673))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16215 (_ BitVec 32)) SeekEntryResult!2822)

(assert (=> b!318071 (= res!172815 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2822 i!1240)))))

(declare-fun res!172813 () Bool)

(assert (=> start!31846 (=> (not res!172813) (not e!197673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31846 (= res!172813 (validMask!0 mask!3709))))

(assert (=> start!31846 e!197673))

(declare-fun array_inv!5625 (array!16215) Bool)

(assert (=> start!31846 (array_inv!5625 a!3293)))

(assert (=> start!31846 true))

(declare-fun b!318072 () Bool)

(declare-fun lt!155246 () array!16215)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun e!197671 () Bool)

(declare-fun lt!155244 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!318072 (= e!197671 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155246 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155244 k!2441 lt!155246 mask!3709)))))

(assert (=> b!318072 (= lt!155246 (array!16216 (store (arr!7671 a!3293) i!1240 k!2441) (size!8023 a!3293)))))

(declare-fun b!318073 () Bool)

(declare-fun res!172810 () Bool)

(assert (=> b!318073 (=> (not res!172810) (not e!197673))))

(assert (=> b!318073 (= res!172810 (and (= (size!8023 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8023 a!3293))))))

(declare-fun b!318074 () Bool)

(declare-fun e!197674 () Bool)

(assert (=> b!318074 (= e!197670 e!197674)))

(declare-fun res!172812 () Bool)

(assert (=> b!318074 (=> (not res!172812) (not e!197674))))

(declare-fun lt!155243 () SeekEntryResult!2822)

(assert (=> b!318074 (= res!172812 (and (= lt!155243 lt!155245) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7671 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!318074 (= lt!155243 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!318075 () Bool)

(assert (=> b!318075 (= e!197674 (not true))))

(assert (=> b!318075 e!197671))

(declare-fun res!172814 () Bool)

(assert (=> b!318075 (=> (not res!172814) (not e!197671))))

(assert (=> b!318075 (= res!172814 (= lt!155243 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155244 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318075 (= lt!155244 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!318076 () Bool)

(declare-fun res!172811 () Bool)

(assert (=> b!318076 (=> (not res!172811) (not e!197673))))

(declare-fun arrayContainsKey!0 (array!16215 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318076 (= res!172811 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!318077 () Bool)

(declare-fun res!172807 () Bool)

(assert (=> b!318077 (=> (not res!172807) (not e!197670))))

(assert (=> b!318077 (= res!172807 (and (= (select (arr!7671 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8023 a!3293))))))

(declare-fun b!318078 () Bool)

(declare-fun res!172808 () Bool)

(assert (=> b!318078 (=> (not res!172808) (not e!197673))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16215 (_ BitVec 32)) Bool)

(assert (=> b!318078 (= res!172808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!31846 res!172813) b!318073))

(assert (= (and b!318073 res!172810) b!318070))

(assert (= (and b!318070 res!172806) b!318076))

(assert (= (and b!318076 res!172811) b!318071))

(assert (= (and b!318071 res!172815) b!318078))

(assert (= (and b!318078 res!172808) b!318069))

(assert (= (and b!318069 res!172809) b!318077))

(assert (= (and b!318077 res!172807) b!318074))

(assert (= (and b!318074 res!172812) b!318075))

(assert (= (and b!318075 res!172814) b!318072))

(declare-fun m!326801 () Bool)

(assert (=> start!31846 m!326801))

(declare-fun m!326803 () Bool)

(assert (=> start!31846 m!326803))

(declare-fun m!326805 () Bool)

(assert (=> b!318074 m!326805))

(declare-fun m!326807 () Bool)

(assert (=> b!318074 m!326807))

(declare-fun m!326809 () Bool)

(assert (=> b!318078 m!326809))

(declare-fun m!326811 () Bool)

(assert (=> b!318075 m!326811))

(declare-fun m!326813 () Bool)

(assert (=> b!318075 m!326813))

(declare-fun m!326815 () Bool)

(assert (=> b!318077 m!326815))

(declare-fun m!326817 () Bool)

(assert (=> b!318071 m!326817))

(declare-fun m!326819 () Bool)

(assert (=> b!318069 m!326819))

(assert (=> b!318069 m!326819))

(declare-fun m!326821 () Bool)

(assert (=> b!318069 m!326821))

(declare-fun m!326823 () Bool)

(assert (=> b!318076 m!326823))

(declare-fun m!326825 () Bool)

(assert (=> b!318070 m!326825))

(declare-fun m!326827 () Bool)

(assert (=> b!318072 m!326827))

(declare-fun m!326829 () Bool)

(assert (=> b!318072 m!326829))

(declare-fun m!326831 () Bool)

(assert (=> b!318072 m!326831))

(push 1)

