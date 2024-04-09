; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30624 () Bool)

(assert start!30624)

(declare-fun b!307018 () Bool)

(declare-fun res!163932 () Bool)

(declare-fun e!192329 () Bool)

(assert (=> b!307018 (=> (not res!163932) (not e!192329))))

(declare-datatypes ((array!15626 0))(
  ( (array!15627 (arr!7396 (Array (_ BitVec 32) (_ BitVec 64))) (size!7748 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15626)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2547 0))(
  ( (MissingZero!2547 (index!12364 (_ BitVec 32))) (Found!2547 (index!12365 (_ BitVec 32))) (Intermediate!2547 (undefined!3359 Bool) (index!12366 (_ BitVec 32)) (x!30577 (_ BitVec 32))) (Undefined!2547) (MissingVacant!2547 (index!12367 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15626 (_ BitVec 32)) SeekEntryResult!2547)

(assert (=> b!307018 (= res!163932 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2547 i!1240)))))

(declare-fun res!163934 () Bool)

(assert (=> start!30624 (=> (not res!163934) (not e!192329))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30624 (= res!163934 (validMask!0 mask!3709))))

(assert (=> start!30624 e!192329))

(declare-fun array_inv!5350 (array!15626) Bool)

(assert (=> start!30624 (array_inv!5350 a!3293)))

(assert (=> start!30624 true))

(declare-fun b!307019 () Bool)

(declare-fun res!163936 () Bool)

(assert (=> b!307019 (=> (not res!163936) (not e!192329))))

(declare-fun arrayContainsKey!0 (array!15626 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307019 (= res!163936 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307020 () Bool)

(declare-fun res!163937 () Bool)

(declare-fun e!192331 () Bool)

(assert (=> b!307020 (=> (not res!163937) (not e!192331))))

(declare-fun lt!151067 () SeekEntryResult!2547)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15626 (_ BitVec 32)) SeekEntryResult!2547)

(assert (=> b!307020 (= res!163937 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151067))))

(declare-fun b!307021 () Bool)

(declare-fun res!163935 () Bool)

(assert (=> b!307021 (=> (not res!163935) (not e!192331))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!307021 (= res!163935 (and (= (select (arr!7396 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7748 a!3293))))))

(declare-fun b!307022 () Bool)

(assert (=> b!307022 (= e!192329 e!192331)))

(declare-fun res!163930 () Bool)

(assert (=> b!307022 (=> (not res!163930) (not e!192331))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307022 (= res!163930 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151067))))

(assert (=> b!307022 (= lt!151067 (Intermediate!2547 false resIndex!52 resX!52))))

(declare-fun b!307023 () Bool)

(declare-fun res!163933 () Bool)

(assert (=> b!307023 (=> (not res!163933) (not e!192329))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15626 (_ BitVec 32)) Bool)

(assert (=> b!307023 (= res!163933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307024 () Bool)

(declare-fun res!163931 () Bool)

(assert (=> b!307024 (=> (not res!163931) (not e!192329))))

(assert (=> b!307024 (= res!163931 (and (= (size!7748 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7748 a!3293))))))

(declare-fun b!307025 () Bool)

(assert (=> b!307025 (= e!192331 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7396 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(declare-fun b!307026 () Bool)

(declare-fun res!163938 () Bool)

(assert (=> b!307026 (=> (not res!163938) (not e!192329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307026 (= res!163938 (validKeyInArray!0 k!2441))))

(assert (= (and start!30624 res!163934) b!307024))

(assert (= (and b!307024 res!163931) b!307026))

(assert (= (and b!307026 res!163938) b!307019))

(assert (= (and b!307019 res!163936) b!307018))

(assert (= (and b!307018 res!163932) b!307023))

(assert (= (and b!307023 res!163933) b!307022))

(assert (= (and b!307022 res!163930) b!307021))

(assert (= (and b!307021 res!163935) b!307020))

(assert (= (and b!307020 res!163937) b!307025))

(declare-fun m!317407 () Bool)

(assert (=> b!307021 m!317407))

(declare-fun m!317409 () Bool)

(assert (=> b!307019 m!317409))

(declare-fun m!317411 () Bool)

(assert (=> b!307018 m!317411))

(declare-fun m!317413 () Bool)

(assert (=> b!307025 m!317413))

(declare-fun m!317415 () Bool)

(assert (=> b!307022 m!317415))

(assert (=> b!307022 m!317415))

(declare-fun m!317417 () Bool)

(assert (=> b!307022 m!317417))

(declare-fun m!317419 () Bool)

(assert (=> b!307020 m!317419))

(declare-fun m!317421 () Bool)

(assert (=> start!30624 m!317421))

(declare-fun m!317423 () Bool)

(assert (=> start!30624 m!317423))

(declare-fun m!317425 () Bool)

(assert (=> b!307026 m!317425))

(declare-fun m!317427 () Bool)

(assert (=> b!307023 m!317427))

(push 1)

(assert (not b!307018))

(assert (not start!30624))

(assert (not b!307020))

(assert (not b!307026))

(assert (not b!307023))

(assert (not b!307019))

(assert (not b!307022))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

