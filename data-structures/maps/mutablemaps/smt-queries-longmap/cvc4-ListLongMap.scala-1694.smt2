; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31060 () Bool)

(assert start!31060)

(declare-fun b!312174 () Bool)

(declare-fun res!168791 () Bool)

(declare-fun e!194677 () Bool)

(assert (=> b!312174 (=> (not res!168791) (not e!194677))))

(declare-datatypes ((array!15960 0))(
  ( (array!15961 (arr!7560 (Array (_ BitVec 32) (_ BitVec 64))) (size!7912 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15960)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15960 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312174 (= res!168791 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!168794 () Bool)

(assert (=> start!31060 (=> (not res!168794) (not e!194677))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31060 (= res!168794 (validMask!0 mask!3709))))

(assert (=> start!31060 e!194677))

(declare-fun array_inv!5514 (array!15960) Bool)

(assert (=> start!31060 (array_inv!5514 a!3293)))

(assert (=> start!31060 true))

(declare-fun b!312175 () Bool)

(declare-fun res!168792 () Bool)

(assert (=> b!312175 (=> (not res!168792) (not e!194677))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!312175 (= res!168792 (and (= (size!7912 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7912 a!3293))))))

(declare-fun b!312176 () Bool)

(declare-fun e!194679 () Bool)

(assert (=> b!312176 (= e!194679 true)))

(declare-datatypes ((SeekEntryResult!2711 0))(
  ( (MissingZero!2711 (index!13020 (_ BitVec 32))) (Found!2711 (index!13021 (_ BitVec 32))) (Intermediate!2711 (undefined!3523 Bool) (index!13022 (_ BitVec 32)) (x!31191 (_ BitVec 32))) (Undefined!2711) (MissingVacant!2711 (index!13023 (_ BitVec 32))) )
))
(declare-fun lt!152945 () SeekEntryResult!2711)

(declare-fun lt!152944 () SeekEntryResult!2711)

(assert (=> b!312176 (= lt!152945 lt!152944)))

(declare-datatypes ((Unit!9620 0))(
  ( (Unit!9621) )
))
(declare-fun lt!152939 () Unit!9620)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!152938 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15960 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9620)

(assert (=> b!312176 (= lt!152939 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152938 resIndex!52 resX!52 mask!3709))))

(declare-fun b!312177 () Bool)

(declare-fun e!194680 () Bool)

(declare-fun e!194678 () Bool)

(assert (=> b!312177 (= e!194680 e!194678)))

(declare-fun res!168787 () Bool)

(assert (=> b!312177 (=> (not res!168787) (not e!194678))))

(declare-fun lt!152943 () SeekEntryResult!2711)

(declare-fun lt!152941 () SeekEntryResult!2711)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312177 (= res!168787 (and (= lt!152943 lt!152941) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7560 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15960 (_ BitVec 32)) SeekEntryResult!2711)

(assert (=> b!312177 (= lt!152943 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!312178 () Bool)

(declare-fun res!168793 () Bool)

(assert (=> b!312178 (=> (not res!168793) (not e!194677))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15960 (_ BitVec 32)) SeekEntryResult!2711)

(assert (=> b!312178 (= res!168793 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2711 i!1240)))))

(declare-fun b!312179 () Bool)

(declare-fun res!168788 () Bool)

(assert (=> b!312179 (=> (not res!168788) (not e!194680))))

(assert (=> b!312179 (= res!168788 (and (= (select (arr!7560 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7912 a!3293))))))

(declare-fun b!312180 () Bool)

(declare-fun res!168790 () Bool)

(assert (=> b!312180 (=> (not res!168790) (not e!194677))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312180 (= res!168790 (validKeyInArray!0 k!2441))))

(declare-fun b!312181 () Bool)

(assert (=> b!312181 (= e!194677 e!194680)))

(declare-fun res!168789 () Bool)

(assert (=> b!312181 (=> (not res!168789) (not e!194680))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312181 (= res!168789 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152941))))

(assert (=> b!312181 (= lt!152941 (Intermediate!2711 false resIndex!52 resX!52))))

(declare-fun b!312182 () Bool)

(assert (=> b!312182 (= e!194678 (not e!194679))))

(declare-fun res!168786 () Bool)

(assert (=> b!312182 (=> res!168786 e!194679)))

(assert (=> b!312182 (= res!168786 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152938 #b00000000000000000000000000000000) (bvsge lt!152938 (size!7912 a!3293)) (not (= lt!152944 lt!152941))))))

(declare-fun lt!152942 () SeekEntryResult!2711)

(assert (=> b!312182 (= lt!152942 lt!152945)))

(declare-fun lt!152940 () array!15960)

(assert (=> b!312182 (= lt!152945 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152938 k!2441 lt!152940 mask!3709))))

(assert (=> b!312182 (= lt!152942 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152940 mask!3709))))

(assert (=> b!312182 (= lt!152940 (array!15961 (store (arr!7560 a!3293) i!1240 k!2441) (size!7912 a!3293)))))

(assert (=> b!312182 (= lt!152943 lt!152944)))

(assert (=> b!312182 (= lt!152944 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152938 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312182 (= lt!152938 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!312183 () Bool)

(declare-fun res!168795 () Bool)

(assert (=> b!312183 (=> (not res!168795) (not e!194677))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15960 (_ BitVec 32)) Bool)

(assert (=> b!312183 (= res!168795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!31060 res!168794) b!312175))

(assert (= (and b!312175 res!168792) b!312180))

(assert (= (and b!312180 res!168790) b!312174))

(assert (= (and b!312174 res!168791) b!312178))

(assert (= (and b!312178 res!168793) b!312183))

(assert (= (and b!312183 res!168795) b!312181))

(assert (= (and b!312181 res!168789) b!312179))

(assert (= (and b!312179 res!168788) b!312177))

(assert (= (and b!312177 res!168787) b!312182))

(assert (= (and b!312182 (not res!168786)) b!312176))

(declare-fun m!322293 () Bool)

(assert (=> b!312181 m!322293))

(assert (=> b!312181 m!322293))

(declare-fun m!322295 () Bool)

(assert (=> b!312181 m!322295))

(declare-fun m!322297 () Bool)

(assert (=> b!312182 m!322297))

(declare-fun m!322299 () Bool)

(assert (=> b!312182 m!322299))

(declare-fun m!322301 () Bool)

(assert (=> b!312182 m!322301))

(declare-fun m!322303 () Bool)

(assert (=> b!312182 m!322303))

(declare-fun m!322305 () Bool)

(assert (=> b!312182 m!322305))

(declare-fun m!322307 () Bool)

(assert (=> b!312174 m!322307))

(declare-fun m!322309 () Bool)

(assert (=> b!312183 m!322309))

(declare-fun m!322311 () Bool)

(assert (=> b!312176 m!322311))

(declare-fun m!322313 () Bool)

(assert (=> b!312177 m!322313))

(declare-fun m!322315 () Bool)

(assert (=> b!312177 m!322315))

(declare-fun m!322317 () Bool)

(assert (=> b!312179 m!322317))

(declare-fun m!322319 () Bool)

(assert (=> start!31060 m!322319))

(declare-fun m!322321 () Bool)

(assert (=> start!31060 m!322321))

(declare-fun m!322323 () Bool)

(assert (=> b!312178 m!322323))

(declare-fun m!322325 () Bool)

(assert (=> b!312180 m!322325))

(push 1)

(assert (not b!312176))

(assert (not b!312181))

(assert (not b!312182))

