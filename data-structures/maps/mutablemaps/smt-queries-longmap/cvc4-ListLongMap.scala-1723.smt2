; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31798 () Bool)

(assert start!31798)

(declare-fun b!317349 () Bool)

(declare-fun e!197313 () Bool)

(declare-fun e!197314 () Bool)

(assert (=> b!317349 (= e!197313 e!197314)))

(declare-fun res!172086 () Bool)

(assert (=> b!317349 (=> (not res!172086) (not e!197314))))

(declare-datatypes ((array!16167 0))(
  ( (array!16168 (arr!7647 (Array (_ BitVec 32) (_ BitVec 64))) (size!7999 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16167)

(declare-datatypes ((SeekEntryResult!2798 0))(
  ( (MissingZero!2798 (index!13368 (_ BitVec 32))) (Found!2798 (index!13369 (_ BitVec 32))) (Intermediate!2798 (undefined!3610 Bool) (index!13370 (_ BitVec 32)) (x!31594 (_ BitVec 32))) (Undefined!2798) (MissingVacant!2798 (index!13371 (_ BitVec 32))) )
))
(declare-fun lt!154957 () SeekEntryResult!2798)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun lt!154955 () SeekEntryResult!2798)

(assert (=> b!317349 (= res!172086 (and (= lt!154955 lt!154957) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7647 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16167 (_ BitVec 32)) SeekEntryResult!2798)

(assert (=> b!317349 (= lt!154955 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!317350 () Bool)

(declare-fun res!172091 () Bool)

(declare-fun e!197312 () Bool)

(assert (=> b!317350 (=> (not res!172091) (not e!197312))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!317350 (= res!172091 (and (= (size!7999 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7999 a!3293))))))

(declare-fun b!317351 () Bool)

(declare-fun res!172095 () Bool)

(assert (=> b!317351 (=> (not res!172095) (not e!197312))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317351 (= res!172095 (validKeyInArray!0 k!2441))))

(declare-fun b!317352 () Bool)

(declare-fun res!172089 () Bool)

(assert (=> b!317352 (=> (not res!172089) (not e!197312))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16167 (_ BitVec 32)) Bool)

(assert (=> b!317352 (= res!172089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!317353 () Bool)

(declare-fun lt!154956 () array!16167)

(declare-fun lt!154958 () (_ BitVec 32))

(declare-fun e!197310 () Bool)

(assert (=> b!317353 (= e!197310 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!154956 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154958 k!2441 lt!154956 mask!3709)))))

(assert (=> b!317353 (= lt!154956 (array!16168 (store (arr!7647 a!3293) i!1240 k!2441) (size!7999 a!3293)))))

(declare-fun b!317354 () Bool)

(declare-fun res!172093 () Bool)

(assert (=> b!317354 (=> (not res!172093) (not e!197313))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!317354 (= res!172093 (and (= (select (arr!7647 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7999 a!3293))))))

(declare-fun b!317355 () Bool)

(assert (=> b!317355 (= e!197314 (not true))))

(assert (=> b!317355 e!197310))

(declare-fun res!172094 () Bool)

(assert (=> b!317355 (=> (not res!172094) (not e!197310))))

(assert (=> b!317355 (= res!172094 (= lt!154955 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154958 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317355 (= lt!154958 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun res!172092 () Bool)

(assert (=> start!31798 (=> (not res!172092) (not e!197312))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31798 (= res!172092 (validMask!0 mask!3709))))

(assert (=> start!31798 e!197312))

(declare-fun array_inv!5601 (array!16167) Bool)

(assert (=> start!31798 (array_inv!5601 a!3293)))

(assert (=> start!31798 true))

(declare-fun b!317356 () Bool)

(declare-fun res!172090 () Bool)

(assert (=> b!317356 (=> (not res!172090) (not e!197312))))

(declare-fun arrayContainsKey!0 (array!16167 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317356 (= res!172090 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!317357 () Bool)

(declare-fun res!172088 () Bool)

(assert (=> b!317357 (=> (not res!172088) (not e!197312))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16167 (_ BitVec 32)) SeekEntryResult!2798)

(assert (=> b!317357 (= res!172088 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2798 i!1240)))))

(declare-fun b!317358 () Bool)

(assert (=> b!317358 (= e!197312 e!197313)))

(declare-fun res!172087 () Bool)

(assert (=> b!317358 (=> (not res!172087) (not e!197313))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317358 (= res!172087 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154957))))

(assert (=> b!317358 (= lt!154957 (Intermediate!2798 false resIndex!52 resX!52))))

(assert (= (and start!31798 res!172092) b!317350))

(assert (= (and b!317350 res!172091) b!317351))

(assert (= (and b!317351 res!172095) b!317356))

(assert (= (and b!317356 res!172090) b!317357))

(assert (= (and b!317357 res!172088) b!317352))

(assert (= (and b!317352 res!172089) b!317358))

(assert (= (and b!317358 res!172087) b!317354))

(assert (= (and b!317354 res!172093) b!317349))

(assert (= (and b!317349 res!172086) b!317355))

(assert (= (and b!317355 res!172094) b!317353))

(declare-fun m!326033 () Bool)

(assert (=> b!317357 m!326033))

(declare-fun m!326035 () Bool)

(assert (=> b!317356 m!326035))

(declare-fun m!326037 () Bool)

(assert (=> b!317352 m!326037))

(declare-fun m!326039 () Bool)

(assert (=> start!31798 m!326039))

(declare-fun m!326041 () Bool)

(assert (=> start!31798 m!326041))

(declare-fun m!326043 () Bool)

(assert (=> b!317354 m!326043))

(declare-fun m!326045 () Bool)

(assert (=> b!317353 m!326045))

(declare-fun m!326047 () Bool)

(assert (=> b!317353 m!326047))

(declare-fun m!326049 () Bool)

(assert (=> b!317353 m!326049))

(declare-fun m!326051 () Bool)

(assert (=> b!317355 m!326051))

(declare-fun m!326053 () Bool)

(assert (=> b!317355 m!326053))

(declare-fun m!326055 () Bool)

(assert (=> b!317349 m!326055))

(declare-fun m!326057 () Bool)

(assert (=> b!317349 m!326057))

(declare-fun m!326059 () Bool)

(assert (=> b!317351 m!326059))

(declare-fun m!326061 () Bool)

(assert (=> b!317358 m!326061))

(assert (=> b!317358 m!326061))

(declare-fun m!326063 () Bool)

(assert (=> b!317358 m!326063))

(push 1)

(assert (not b!317357))

(assert (not b!317358))

(assert (not start!31798))

