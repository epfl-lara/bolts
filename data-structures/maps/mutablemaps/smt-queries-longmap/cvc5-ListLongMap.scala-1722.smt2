; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31788 () Bool)

(assert start!31788)

(declare-fun b!317199 () Bool)

(declare-fun res!171939 () Bool)

(declare-fun e!197238 () Bool)

(assert (=> b!317199 (=> (not res!171939) (not e!197238))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((array!16157 0))(
  ( (array!16158 (arr!7642 (Array (_ BitVec 32) (_ BitVec 64))) (size!7994 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16157)

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!317199 (= res!171939 (and (= (select (arr!7642 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7994 a!3293))))))

(declare-fun b!317200 () Bool)

(declare-fun e!197237 () Bool)

(assert (=> b!317200 (= e!197238 e!197237)))

(declare-fun res!171944 () Bool)

(assert (=> b!317200 (=> (not res!171944) (not e!197237))))

(declare-datatypes ((SeekEntryResult!2793 0))(
  ( (MissingZero!2793 (index!13348 (_ BitVec 32))) (Found!2793 (index!13349 (_ BitVec 32))) (Intermediate!2793 (undefined!3605 Bool) (index!13350 (_ BitVec 32)) (x!31581 (_ BitVec 32))) (Undefined!2793) (MissingVacant!2793 (index!13351 (_ BitVec 32))) )
))
(declare-fun lt!154897 () SeekEntryResult!2793)

(declare-fun lt!154895 () SeekEntryResult!2793)

(declare-fun k!2441 () (_ BitVec 64))

(assert (=> b!317200 (= res!171944 (and (= lt!154897 lt!154895) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7642 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16157 (_ BitVec 32)) SeekEntryResult!2793)

(assert (=> b!317200 (= lt!154897 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!317201 () Bool)

(declare-fun res!171940 () Bool)

(declare-fun e!197236 () Bool)

(assert (=> b!317201 (=> (not res!171940) (not e!197236))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16157 (_ BitVec 32)) SeekEntryResult!2793)

(assert (=> b!317201 (= res!171940 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2793 i!1240)))))

(declare-fun b!317202 () Bool)

(declare-fun res!171938 () Bool)

(assert (=> b!317202 (=> (not res!171938) (not e!197236))))

(assert (=> b!317202 (= res!171938 (and (= (size!7994 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7994 a!3293))))))

(declare-fun b!317203 () Bool)

(declare-fun lt!154898 () array!16157)

(declare-fun e!197239 () Bool)

(declare-fun lt!154896 () (_ BitVec 32))

(assert (=> b!317203 (= e!197239 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!154898 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154896 k!2441 lt!154898 mask!3709)))))

(assert (=> b!317203 (= lt!154898 (array!16158 (store (arr!7642 a!3293) i!1240 k!2441) (size!7994 a!3293)))))

(declare-fun b!317204 () Bool)

(declare-fun res!171942 () Bool)

(assert (=> b!317204 (=> (not res!171942) (not e!197236))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317204 (= res!171942 (validKeyInArray!0 k!2441))))

(declare-fun res!171936 () Bool)

(assert (=> start!31788 (=> (not res!171936) (not e!197236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31788 (= res!171936 (validMask!0 mask!3709))))

(assert (=> start!31788 e!197236))

(declare-fun array_inv!5596 (array!16157) Bool)

(assert (=> start!31788 (array_inv!5596 a!3293)))

(assert (=> start!31788 true))

(declare-fun b!317205 () Bool)

(declare-fun res!171945 () Bool)

(assert (=> b!317205 (=> (not res!171945) (not e!197236))))

(declare-fun arrayContainsKey!0 (array!16157 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317205 (= res!171945 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!317206 () Bool)

(declare-fun res!171943 () Bool)

(assert (=> b!317206 (=> (not res!171943) (not e!197236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16157 (_ BitVec 32)) Bool)

(assert (=> b!317206 (= res!171943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!317207 () Bool)

(assert (=> b!317207 (= e!197237 (not true))))

(assert (=> b!317207 e!197239))

(declare-fun res!171937 () Bool)

(assert (=> b!317207 (=> (not res!171937) (not e!197239))))

(assert (=> b!317207 (= res!171937 (= lt!154897 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154896 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317207 (= lt!154896 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317208 () Bool)

(assert (=> b!317208 (= e!197236 e!197238)))

(declare-fun res!171941 () Bool)

(assert (=> b!317208 (=> (not res!171941) (not e!197238))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317208 (= res!171941 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154895))))

(assert (=> b!317208 (= lt!154895 (Intermediate!2793 false resIndex!52 resX!52))))

(assert (= (and start!31788 res!171936) b!317202))

(assert (= (and b!317202 res!171938) b!317204))

(assert (= (and b!317204 res!171942) b!317205))

(assert (= (and b!317205 res!171945) b!317201))

(assert (= (and b!317201 res!171940) b!317206))

(assert (= (and b!317206 res!171943) b!317208))

(assert (= (and b!317208 res!171941) b!317199))

(assert (= (and b!317199 res!171939) b!317200))

(assert (= (and b!317200 res!171944) b!317207))

(assert (= (and b!317207 res!171937) b!317203))

(declare-fun m!325873 () Bool)

(assert (=> b!317199 m!325873))

(declare-fun m!325875 () Bool)

(assert (=> b!317203 m!325875))

(declare-fun m!325877 () Bool)

(assert (=> b!317203 m!325877))

(declare-fun m!325879 () Bool)

(assert (=> b!317203 m!325879))

(declare-fun m!325881 () Bool)

(assert (=> b!317208 m!325881))

(assert (=> b!317208 m!325881))

(declare-fun m!325883 () Bool)

(assert (=> b!317208 m!325883))

(declare-fun m!325885 () Bool)

(assert (=> b!317207 m!325885))

(declare-fun m!325887 () Bool)

(assert (=> b!317207 m!325887))

(declare-fun m!325889 () Bool)

(assert (=> b!317205 m!325889))

(declare-fun m!325891 () Bool)

(assert (=> b!317206 m!325891))

(declare-fun m!325893 () Bool)

(assert (=> b!317204 m!325893))

(declare-fun m!325895 () Bool)

(assert (=> b!317200 m!325895))

(declare-fun m!325897 () Bool)

(assert (=> b!317200 m!325897))

(declare-fun m!325899 () Bool)

(assert (=> start!31788 m!325899))

(declare-fun m!325901 () Bool)

(assert (=> start!31788 m!325901))

(declare-fun m!325903 () Bool)

(assert (=> b!317201 m!325903))

(push 1)

