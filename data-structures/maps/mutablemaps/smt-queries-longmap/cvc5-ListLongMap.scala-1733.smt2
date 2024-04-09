; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31854 () Bool)

(assert start!31854)

(declare-fun b!318189 () Bool)

(declare-fun res!172933 () Bool)

(declare-fun e!197733 () Bool)

(assert (=> b!318189 (=> (not res!172933) (not e!197733))))

(declare-datatypes ((array!16223 0))(
  ( (array!16224 (arr!7675 (Array (_ BitVec 32) (_ BitVec 64))) (size!8027 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16223)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!318189 (= res!172933 (and (= (select (arr!7675 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8027 a!3293))))))

(declare-fun b!318190 () Bool)

(declare-fun e!197734 () Bool)

(assert (=> b!318190 (= e!197734 (not (bvsle (bvadd #b00000000000000000000000000000001 x!1427) resX!52)))))

(declare-fun e!197731 () Bool)

(assert (=> b!318190 e!197731))

(declare-fun res!172927 () Bool)

(assert (=> b!318190 (=> (not res!172927) (not e!197731))))

(declare-datatypes ((SeekEntryResult!2826 0))(
  ( (MissingZero!2826 (index!13480 (_ BitVec 32))) (Found!2826 (index!13481 (_ BitVec 32))) (Intermediate!2826 (undefined!3638 Bool) (index!13482 (_ BitVec 32)) (x!31702 (_ BitVec 32))) (Undefined!2826) (MissingVacant!2826 (index!13483 (_ BitVec 32))) )
))
(declare-fun lt!155291 () SeekEntryResult!2826)

(declare-fun lt!155293 () (_ BitVec 32))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16223 (_ BitVec 32)) SeekEntryResult!2826)

(assert (=> b!318190 (= res!172927 (= lt!155291 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155293 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318190 (= lt!155293 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!318191 () Bool)

(declare-fun res!172926 () Bool)

(declare-fun e!197732 () Bool)

(assert (=> b!318191 (=> (not res!172926) (not e!197732))))

(assert (=> b!318191 (= res!172926 (and (= (size!8027 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8027 a!3293))))))

(declare-fun b!318192 () Bool)

(declare-fun res!172931 () Bool)

(assert (=> b!318192 (=> (not res!172931) (not e!197732))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16223 (_ BitVec 32)) SeekEntryResult!2826)

(assert (=> b!318192 (= res!172931 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2826 i!1240)))))

(declare-fun b!318194 () Bool)

(declare-fun res!172928 () Bool)

(assert (=> b!318194 (=> (not res!172928) (not e!197732))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16223 (_ BitVec 32)) Bool)

(assert (=> b!318194 (= res!172928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!318195 () Bool)

(declare-fun res!172929 () Bool)

(assert (=> b!318195 (=> (not res!172929) (not e!197732))))

(declare-fun arrayContainsKey!0 (array!16223 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318195 (= res!172929 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!318196 () Bool)

(assert (=> b!318196 (= e!197732 e!197733)))

(declare-fun res!172935 () Bool)

(assert (=> b!318196 (=> (not res!172935) (not e!197733))))

(declare-fun lt!155294 () SeekEntryResult!2826)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318196 (= res!172935 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155294))))

(assert (=> b!318196 (= lt!155294 (Intermediate!2826 false resIndex!52 resX!52))))

(declare-fun b!318197 () Bool)

(declare-fun lt!155292 () array!16223)

(assert (=> b!318197 (= e!197731 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155292 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155293 k!2441 lt!155292 mask!3709)))))

(assert (=> b!318197 (= lt!155292 (array!16224 (store (arr!7675 a!3293) i!1240 k!2441) (size!8027 a!3293)))))

(declare-fun b!318198 () Bool)

(declare-fun res!172934 () Bool)

(assert (=> b!318198 (=> (not res!172934) (not e!197732))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318198 (= res!172934 (validKeyInArray!0 k!2441))))

(declare-fun res!172932 () Bool)

(assert (=> start!31854 (=> (not res!172932) (not e!197732))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31854 (= res!172932 (validMask!0 mask!3709))))

(assert (=> start!31854 e!197732))

(declare-fun array_inv!5629 (array!16223) Bool)

(assert (=> start!31854 (array_inv!5629 a!3293)))

(assert (=> start!31854 true))

(declare-fun b!318193 () Bool)

(assert (=> b!318193 (= e!197733 e!197734)))

(declare-fun res!172930 () Bool)

(assert (=> b!318193 (=> (not res!172930) (not e!197734))))

(assert (=> b!318193 (= res!172930 (and (= lt!155291 lt!155294) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7675 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!318193 (= lt!155291 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(assert (= (and start!31854 res!172932) b!318191))

(assert (= (and b!318191 res!172926) b!318198))

(assert (= (and b!318198 res!172934) b!318195))

(assert (= (and b!318195 res!172929) b!318192))

(assert (= (and b!318192 res!172931) b!318194))

(assert (= (and b!318194 res!172928) b!318196))

(assert (= (and b!318196 res!172935) b!318189))

(assert (= (and b!318189 res!172933) b!318193))

(assert (= (and b!318193 res!172930) b!318190))

(assert (= (and b!318190 res!172927) b!318197))

(declare-fun m!326929 () Bool)

(assert (=> b!318198 m!326929))

(declare-fun m!326931 () Bool)

(assert (=> b!318195 m!326931))

(declare-fun m!326933 () Bool)

(assert (=> b!318192 m!326933))

(declare-fun m!326935 () Bool)

(assert (=> b!318189 m!326935))

(declare-fun m!326937 () Bool)

(assert (=> b!318196 m!326937))

(assert (=> b!318196 m!326937))

(declare-fun m!326939 () Bool)

(assert (=> b!318196 m!326939))

(declare-fun m!326941 () Bool)

(assert (=> b!318197 m!326941))

(declare-fun m!326943 () Bool)

(assert (=> b!318197 m!326943))

(declare-fun m!326945 () Bool)

(assert (=> b!318197 m!326945))

(declare-fun m!326947 () Bool)

(assert (=> b!318194 m!326947))

(declare-fun m!326949 () Bool)

(assert (=> b!318190 m!326949))

(declare-fun m!326951 () Bool)

(assert (=> b!318190 m!326951))

(declare-fun m!326953 () Bool)

(assert (=> b!318193 m!326953))

(declare-fun m!326955 () Bool)

(assert (=> b!318193 m!326955))

(declare-fun m!326957 () Bool)

(assert (=> start!31854 m!326957))

(declare-fun m!326959 () Bool)

(assert (=> start!31854 m!326959))

(push 1)

(assert (not b!318193))

(assert (not b!318194))

(assert (not b!318195))

(assert (not b!318197))

(assert (not b!318198))

(assert (not b!318196))

(assert (not start!31854))

(assert (not b!318192))

(assert (not b!318190))

(check-sat)

(pop 1)

(push 1)

(check-sat)

