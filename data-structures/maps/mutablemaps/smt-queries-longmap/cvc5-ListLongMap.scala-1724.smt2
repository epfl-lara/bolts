; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31800 () Bool)

(assert start!31800)

(declare-fun b!317379 () Bool)

(declare-fun e!197328 () Bool)

(declare-fun e!197325 () Bool)

(assert (=> b!317379 (= e!197328 e!197325)))

(declare-fun res!172122 () Bool)

(assert (=> b!317379 (=> (not res!172122) (not e!197325))))

(declare-datatypes ((array!16169 0))(
  ( (array!16170 (arr!7648 (Array (_ BitVec 32) (_ BitVec 64))) (size!8000 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16169)

(declare-datatypes ((SeekEntryResult!2799 0))(
  ( (MissingZero!2799 (index!13372 (_ BitVec 32))) (Found!2799 (index!13373 (_ BitVec 32))) (Intermediate!2799 (undefined!3611 Bool) (index!13374 (_ BitVec 32)) (x!31603 (_ BitVec 32))) (Undefined!2799) (MissingVacant!2799 (index!13375 (_ BitVec 32))) )
))
(declare-fun lt!154969 () SeekEntryResult!2799)

(declare-fun lt!154968 () SeekEntryResult!2799)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(assert (=> b!317379 (= res!172122 (and (= lt!154969 lt!154968) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7648 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16169 (_ BitVec 32)) SeekEntryResult!2799)

(assert (=> b!317379 (= lt!154969 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!317380 () Bool)

(declare-fun e!197326 () Bool)

(assert (=> b!317380 (= e!197326 e!197328)))

(declare-fun res!172119 () Bool)

(assert (=> b!317380 (=> (not res!172119) (not e!197328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317380 (= res!172119 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154968))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!317380 (= lt!154968 (Intermediate!2799 false resIndex!52 resX!52))))

(declare-fun b!317381 () Bool)

(declare-fun res!172123 () Bool)

(assert (=> b!317381 (=> (not res!172123) (not e!197326))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16169 (_ BitVec 32)) Bool)

(assert (=> b!317381 (= res!172123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!172121 () Bool)

(assert (=> start!31800 (=> (not res!172121) (not e!197326))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31800 (= res!172121 (validMask!0 mask!3709))))

(assert (=> start!31800 e!197326))

(declare-fun array_inv!5602 (array!16169) Bool)

(assert (=> start!31800 (array_inv!5602 a!3293)))

(assert (=> start!31800 true))

(declare-fun b!317382 () Bool)

(declare-fun res!172118 () Bool)

(assert (=> b!317382 (=> (not res!172118) (not e!197328))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!317382 (= res!172118 (and (= (select (arr!7648 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8000 a!3293))))))

(declare-fun b!317383 () Bool)

(declare-fun res!172117 () Bool)

(assert (=> b!317383 (=> (not res!172117) (not e!197326))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317383 (= res!172117 (validKeyInArray!0 k!2441))))

(declare-fun b!317384 () Bool)

(declare-fun res!172120 () Bool)

(assert (=> b!317384 (=> (not res!172120) (not e!197326))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16169 (_ BitVec 32)) SeekEntryResult!2799)

(assert (=> b!317384 (= res!172120 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2799 i!1240)))))

(declare-fun b!317385 () Bool)

(declare-fun res!172124 () Bool)

(assert (=> b!317385 (=> (not res!172124) (not e!197326))))

(declare-fun arrayContainsKey!0 (array!16169 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317385 (= res!172124 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!317386 () Bool)

(assert (=> b!317386 (= e!197325 (not true))))

(declare-fun e!197329 () Bool)

(assert (=> b!317386 e!197329))

(declare-fun res!172116 () Bool)

(assert (=> b!317386 (=> (not res!172116) (not e!197329))))

(declare-fun lt!154970 () (_ BitVec 32))

(assert (=> b!317386 (= res!172116 (= lt!154969 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154970 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317386 (= lt!154970 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317387 () Bool)

(declare-fun res!172125 () Bool)

(assert (=> b!317387 (=> (not res!172125) (not e!197326))))

(assert (=> b!317387 (= res!172125 (and (= (size!8000 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8000 a!3293))))))

(declare-fun lt!154967 () array!16169)

(declare-fun b!317388 () Bool)

(assert (=> b!317388 (= e!197329 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!154967 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154970 k!2441 lt!154967 mask!3709)))))

(assert (=> b!317388 (= lt!154967 (array!16170 (store (arr!7648 a!3293) i!1240 k!2441) (size!8000 a!3293)))))

(assert (= (and start!31800 res!172121) b!317387))

(assert (= (and b!317387 res!172125) b!317383))

(assert (= (and b!317383 res!172117) b!317385))

(assert (= (and b!317385 res!172124) b!317384))

(assert (= (and b!317384 res!172120) b!317381))

(assert (= (and b!317381 res!172123) b!317380))

(assert (= (and b!317380 res!172119) b!317382))

(assert (= (and b!317382 res!172118) b!317379))

(assert (= (and b!317379 res!172122) b!317386))

(assert (= (and b!317386 res!172116) b!317388))

(declare-fun m!326065 () Bool)

(assert (=> b!317383 m!326065))

(declare-fun m!326067 () Bool)

(assert (=> b!317384 m!326067))

(declare-fun m!326069 () Bool)

(assert (=> b!317382 m!326069))

(declare-fun m!326071 () Bool)

(assert (=> b!317385 m!326071))

(declare-fun m!326073 () Bool)

(assert (=> b!317379 m!326073))

(declare-fun m!326075 () Bool)

(assert (=> b!317379 m!326075))

(declare-fun m!326077 () Bool)

(assert (=> start!31800 m!326077))

(declare-fun m!326079 () Bool)

(assert (=> start!31800 m!326079))

(declare-fun m!326081 () Bool)

(assert (=> b!317386 m!326081))

(declare-fun m!326083 () Bool)

(assert (=> b!317386 m!326083))

(declare-fun m!326085 () Bool)

(assert (=> b!317388 m!326085))

(declare-fun m!326087 () Bool)

(assert (=> b!317388 m!326087))

(declare-fun m!326089 () Bool)

(assert (=> b!317388 m!326089))

(declare-fun m!326091 () Bool)

(assert (=> b!317380 m!326091))

(assert (=> b!317380 m!326091))

(declare-fun m!326093 () Bool)

(assert (=> b!317380 m!326093))

(declare-fun m!326095 () Bool)

(assert (=> b!317381 m!326095))

(push 1)

