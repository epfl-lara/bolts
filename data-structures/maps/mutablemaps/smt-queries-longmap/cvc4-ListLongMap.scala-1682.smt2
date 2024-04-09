; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30988 () Bool)

(assert start!30988)

(declare-fun b!311094 () Bool)

(declare-fun e!194140 () Bool)

(assert (=> b!311094 (= e!194140 (not true))))

(declare-fun e!194139 () Bool)

(assert (=> b!311094 e!194139))

(declare-fun res!167713 () Bool)

(assert (=> b!311094 (=> (not res!167713) (not e!194139))))

(declare-datatypes ((array!15888 0))(
  ( (array!15889 (arr!7524 (Array (_ BitVec 32) (_ BitVec 64))) (size!7876 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15888)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!152260 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2675 0))(
  ( (MissingZero!2675 (index!12876 (_ BitVec 32))) (Found!2675 (index!12877 (_ BitVec 32))) (Intermediate!2675 (undefined!3487 Bool) (index!12878 (_ BitVec 32)) (x!31059 (_ BitVec 32))) (Undefined!2675) (MissingVacant!2675 (index!12879 (_ BitVec 32))) )
))
(declare-fun lt!152259 () SeekEntryResult!2675)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15888 (_ BitVec 32)) SeekEntryResult!2675)

(assert (=> b!311094 (= res!167713 (= lt!152259 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152260 k!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311094 (= lt!152260 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311095 () Bool)

(declare-fun e!194138 () Bool)

(declare-fun e!194137 () Bool)

(assert (=> b!311095 (= e!194138 e!194137)))

(declare-fun res!167706 () Bool)

(assert (=> b!311095 (=> (not res!167706) (not e!194137))))

(declare-fun lt!152258 () SeekEntryResult!2675)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311095 (= res!167706 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152258))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!311095 (= lt!152258 (Intermediate!2675 false resIndex!52 resX!52))))

(declare-fun b!311096 () Bool)

(declare-fun res!167707 () Bool)

(assert (=> b!311096 (=> (not res!167707) (not e!194138))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15888 (_ BitVec 32)) SeekEntryResult!2675)

(assert (=> b!311096 (= res!167707 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2675 i!1240)))))

(declare-fun res!167712 () Bool)

(assert (=> start!30988 (=> (not res!167712) (not e!194138))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30988 (= res!167712 (validMask!0 mask!3709))))

(assert (=> start!30988 e!194138))

(declare-fun array_inv!5478 (array!15888) Bool)

(assert (=> start!30988 (array_inv!5478 a!3293)))

(assert (=> start!30988 true))

(declare-fun b!311097 () Bool)

(declare-fun lt!152261 () array!15888)

(assert (=> b!311097 (= e!194139 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152261 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152260 k!2441 lt!152261 mask!3709)))))

(assert (=> b!311097 (= lt!152261 (array!15889 (store (arr!7524 a!3293) i!1240 k!2441) (size!7876 a!3293)))))

(declare-fun b!311098 () Bool)

(declare-fun res!167711 () Bool)

(assert (=> b!311098 (=> (not res!167711) (not e!194138))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311098 (= res!167711 (validKeyInArray!0 k!2441))))

(declare-fun b!311099 () Bool)

(declare-fun res!167708 () Bool)

(assert (=> b!311099 (=> (not res!167708) (not e!194138))))

(declare-fun arrayContainsKey!0 (array!15888 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311099 (= res!167708 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311100 () Bool)

(declare-fun res!167715 () Bool)

(assert (=> b!311100 (=> (not res!167715) (not e!194137))))

(assert (=> b!311100 (= res!167715 (and (= (select (arr!7524 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7876 a!3293))))))

(declare-fun b!311101 () Bool)

(declare-fun res!167714 () Bool)

(assert (=> b!311101 (=> (not res!167714) (not e!194138))))

(assert (=> b!311101 (= res!167714 (and (= (size!7876 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7876 a!3293))))))

(declare-fun b!311102 () Bool)

(assert (=> b!311102 (= e!194137 e!194140)))

(declare-fun res!167710 () Bool)

(assert (=> b!311102 (=> (not res!167710) (not e!194140))))

(assert (=> b!311102 (= res!167710 (and (= lt!152259 lt!152258) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7524 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311102 (= lt!152259 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!311103 () Bool)

(declare-fun res!167709 () Bool)

(assert (=> b!311103 (=> (not res!167709) (not e!194138))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15888 (_ BitVec 32)) Bool)

(assert (=> b!311103 (= res!167709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30988 res!167712) b!311101))

(assert (= (and b!311101 res!167714) b!311098))

(assert (= (and b!311098 res!167711) b!311099))

(assert (= (and b!311099 res!167708) b!311096))

(assert (= (and b!311096 res!167707) b!311103))

(assert (= (and b!311103 res!167709) b!311095))

(assert (= (and b!311095 res!167706) b!311100))

(assert (= (and b!311100 res!167715) b!311102))

(assert (= (and b!311102 res!167710) b!311094))

(assert (= (and b!311094 res!167713) b!311097))

(declare-fun m!321101 () Bool)

(assert (=> b!311096 m!321101))

(declare-fun m!321103 () Bool)

(assert (=> start!30988 m!321103))

(declare-fun m!321105 () Bool)

(assert (=> start!30988 m!321105))

(declare-fun m!321107 () Bool)

(assert (=> b!311098 m!321107))

(declare-fun m!321109 () Bool)

(assert (=> b!311095 m!321109))

(assert (=> b!311095 m!321109))

(declare-fun m!321111 () Bool)

(assert (=> b!311095 m!321111))

(declare-fun m!321113 () Bool)

(assert (=> b!311102 m!321113))

(declare-fun m!321115 () Bool)

(assert (=> b!311102 m!321115))

(declare-fun m!321117 () Bool)

(assert (=> b!311094 m!321117))

(declare-fun m!321119 () Bool)

(assert (=> b!311094 m!321119))

(declare-fun m!321121 () Bool)

(assert (=> b!311097 m!321121))

(declare-fun m!321123 () Bool)

(assert (=> b!311097 m!321123))

(declare-fun m!321125 () Bool)

(assert (=> b!311097 m!321125))

(declare-fun m!321127 () Bool)

(assert (=> b!311103 m!321127))

(declare-fun m!321129 () Bool)

(assert (=> b!311099 m!321129))

(declare-fun m!321131 () Bool)

(assert (=> b!311100 m!321131))

(push 1)

(assert (not start!30988))

(assert (not b!311096))

(assert (not b!311099))

(assert (not b!311102))

(assert (not b!311094))

(assert (not b!311103))

