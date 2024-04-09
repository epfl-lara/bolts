; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30996 () Bool)

(assert start!30996)

(declare-fun b!311214 () Bool)

(declare-fun res!167834 () Bool)

(declare-fun e!194198 () Bool)

(assert (=> b!311214 (=> (not res!167834) (not e!194198))))

(declare-datatypes ((array!15896 0))(
  ( (array!15897 (arr!7528 (Array (_ BitVec 32) (_ BitVec 64))) (size!7880 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15896)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!311214 (= res!167834 (and (= (select (arr!7528 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7880 a!3293))))))

(declare-fun b!311215 () Bool)

(declare-fun res!167827 () Bool)

(declare-fun e!194199 () Bool)

(assert (=> b!311215 (=> (not res!167827) (not e!194199))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15896 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311215 (= res!167827 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311216 () Bool)

(declare-fun res!167835 () Bool)

(assert (=> b!311216 (=> (not res!167835) (not e!194199))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311216 (= res!167835 (validKeyInArray!0 k!2441))))

(declare-fun b!311217 () Bool)

(declare-fun e!194196 () Bool)

(assert (=> b!311217 (= e!194196 (not true))))

(declare-fun e!194197 () Bool)

(assert (=> b!311217 e!194197))

(declare-fun res!167828 () Bool)

(assert (=> b!311217 (=> (not res!167828) (not e!194197))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!152307 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2679 0))(
  ( (MissingZero!2679 (index!12892 (_ BitVec 32))) (Found!2679 (index!12893 (_ BitVec 32))) (Intermediate!2679 (undefined!3491 Bool) (index!12894 (_ BitVec 32)) (x!31079 (_ BitVec 32))) (Undefined!2679) (MissingVacant!2679 (index!12895 (_ BitVec 32))) )
))
(declare-fun lt!152306 () SeekEntryResult!2679)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15896 (_ BitVec 32)) SeekEntryResult!2679)

(assert (=> b!311217 (= res!167828 (= lt!152306 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152307 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311217 (= lt!152307 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311218 () Bool)

(declare-fun res!167830 () Bool)

(assert (=> b!311218 (=> (not res!167830) (not e!194199))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15896 (_ BitVec 32)) Bool)

(assert (=> b!311218 (= res!167830 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311219 () Bool)

(assert (=> b!311219 (= e!194198 e!194196)))

(declare-fun res!167831 () Bool)

(assert (=> b!311219 (=> (not res!167831) (not e!194196))))

(declare-fun lt!152308 () SeekEntryResult!2679)

(assert (=> b!311219 (= res!167831 (and (= lt!152306 lt!152308) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7528 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311219 (= lt!152306 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!311220 () Bool)

(assert (=> b!311220 (= e!194199 e!194198)))

(declare-fun res!167832 () Bool)

(assert (=> b!311220 (=> (not res!167832) (not e!194198))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311220 (= res!167832 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152308))))

(assert (=> b!311220 (= lt!152308 (Intermediate!2679 false resIndex!52 resX!52))))

(declare-fun lt!152309 () array!15896)

(declare-fun b!311221 () Bool)

(assert (=> b!311221 (= e!194197 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152309 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152307 k!2441 lt!152309 mask!3709)))))

(assert (=> b!311221 (= lt!152309 (array!15897 (store (arr!7528 a!3293) i!1240 k!2441) (size!7880 a!3293)))))

(declare-fun res!167826 () Bool)

(assert (=> start!30996 (=> (not res!167826) (not e!194199))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30996 (= res!167826 (validMask!0 mask!3709))))

(assert (=> start!30996 e!194199))

(declare-fun array_inv!5482 (array!15896) Bool)

(assert (=> start!30996 (array_inv!5482 a!3293)))

(assert (=> start!30996 true))

(declare-fun b!311222 () Bool)

(declare-fun res!167829 () Bool)

(assert (=> b!311222 (=> (not res!167829) (not e!194199))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15896 (_ BitVec 32)) SeekEntryResult!2679)

(assert (=> b!311222 (= res!167829 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2679 i!1240)))))

(declare-fun b!311223 () Bool)

(declare-fun res!167833 () Bool)

(assert (=> b!311223 (=> (not res!167833) (not e!194199))))

(assert (=> b!311223 (= res!167833 (and (= (size!7880 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7880 a!3293))))))

(assert (= (and start!30996 res!167826) b!311223))

(assert (= (and b!311223 res!167833) b!311216))

(assert (= (and b!311216 res!167835) b!311215))

(assert (= (and b!311215 res!167827) b!311222))

(assert (= (and b!311222 res!167829) b!311218))

(assert (= (and b!311218 res!167830) b!311220))

(assert (= (and b!311220 res!167832) b!311214))

(assert (= (and b!311214 res!167834) b!311219))

(assert (= (and b!311219 res!167831) b!311217))

(assert (= (and b!311217 res!167828) b!311221))

(declare-fun m!321229 () Bool)

(assert (=> b!311220 m!321229))

(assert (=> b!311220 m!321229))

(declare-fun m!321231 () Bool)

(assert (=> b!311220 m!321231))

(declare-fun m!321233 () Bool)

(assert (=> b!311215 m!321233))

(declare-fun m!321235 () Bool)

(assert (=> b!311214 m!321235))

(declare-fun m!321237 () Bool)

(assert (=> b!311219 m!321237))

(declare-fun m!321239 () Bool)

(assert (=> b!311219 m!321239))

(declare-fun m!321241 () Bool)

(assert (=> b!311217 m!321241))

(declare-fun m!321243 () Bool)

(assert (=> b!311217 m!321243))

(declare-fun m!321245 () Bool)

(assert (=> b!311221 m!321245))

(declare-fun m!321247 () Bool)

(assert (=> b!311221 m!321247))

(declare-fun m!321249 () Bool)

(assert (=> b!311221 m!321249))

(declare-fun m!321251 () Bool)

(assert (=> start!30996 m!321251))

(declare-fun m!321253 () Bool)

(assert (=> start!30996 m!321253))

(declare-fun m!321255 () Bool)

(assert (=> b!311218 m!321255))

(declare-fun m!321257 () Bool)

(assert (=> b!311222 m!321257))

(declare-fun m!321259 () Bool)

(assert (=> b!311216 m!321259))

(push 1)

