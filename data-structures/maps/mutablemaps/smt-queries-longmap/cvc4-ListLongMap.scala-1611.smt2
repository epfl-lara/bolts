; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30346 () Bool)

(assert start!30346)

(declare-fun b!303714 () Bool)

(declare-fun res!161362 () Bool)

(declare-fun e!190998 () Bool)

(assert (=> b!303714 (=> (not res!161362) (not e!190998))))

(declare-datatypes ((array!15450 0))(
  ( (array!15451 (arr!7311 (Array (_ BitVec 32) (_ BitVec 64))) (size!7663 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15450)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2462 0))(
  ( (MissingZero!2462 (index!12024 (_ BitVec 32))) (Found!2462 (index!12025 (_ BitVec 32))) (Intermediate!2462 (undefined!3274 Bool) (index!12026 (_ BitVec 32)) (x!30242 (_ BitVec 32))) (Undefined!2462) (MissingVacant!2462 (index!12027 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15450 (_ BitVec 32)) SeekEntryResult!2462)

(assert (=> b!303714 (= res!161362 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2462 i!1240)))))

(declare-fun b!303715 () Bool)

(declare-fun res!161364 () Bool)

(declare-fun e!190997 () Bool)

(assert (=> b!303715 (=> (not res!161364) (not e!190997))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!303715 (= res!161364 (and (= (select (arr!7311 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7663 a!3293))))))

(declare-fun b!303716 () Bool)

(declare-fun res!161361 () Bool)

(assert (=> b!303716 (=> (not res!161361) (not e!190997))))

(assert (=> b!303716 (= res!161361 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7311 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7311 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7311 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!303718 () Bool)

(assert (=> b!303718 (= e!190997 false)))

(declare-fun lt!150245 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303718 (= lt!150245 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!303719 () Bool)

(declare-fun res!161365 () Bool)

(assert (=> b!303719 (=> (not res!161365) (not e!190998))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15450 (_ BitVec 32)) Bool)

(assert (=> b!303719 (= res!161365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303720 () Bool)

(declare-fun res!161358 () Bool)

(assert (=> b!303720 (=> (not res!161358) (not e!190997))))

(declare-fun lt!150244 () SeekEntryResult!2462)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15450 (_ BitVec 32)) SeekEntryResult!2462)

(assert (=> b!303720 (= res!161358 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150244))))

(declare-fun b!303721 () Bool)

(declare-fun res!161363 () Bool)

(assert (=> b!303721 (=> (not res!161363) (not e!190998))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303721 (= res!161363 (validKeyInArray!0 k!2441))))

(declare-fun b!303722 () Bool)

(assert (=> b!303722 (= e!190998 e!190997)))

(declare-fun res!161360 () Bool)

(assert (=> b!303722 (=> (not res!161360) (not e!190997))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303722 (= res!161360 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150244))))

(assert (=> b!303722 (= lt!150244 (Intermediate!2462 false resIndex!52 resX!52))))

(declare-fun b!303723 () Bool)

(declare-fun res!161366 () Bool)

(assert (=> b!303723 (=> (not res!161366) (not e!190998))))

(declare-fun arrayContainsKey!0 (array!15450 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303723 (= res!161366 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303717 () Bool)

(declare-fun res!161367 () Bool)

(assert (=> b!303717 (=> (not res!161367) (not e!190998))))

(assert (=> b!303717 (= res!161367 (and (= (size!7663 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7663 a!3293))))))

(declare-fun res!161359 () Bool)

(assert (=> start!30346 (=> (not res!161359) (not e!190998))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30346 (= res!161359 (validMask!0 mask!3709))))

(assert (=> start!30346 e!190998))

(declare-fun array_inv!5265 (array!15450) Bool)

(assert (=> start!30346 (array_inv!5265 a!3293)))

(assert (=> start!30346 true))

(assert (= (and start!30346 res!161359) b!303717))

(assert (= (and b!303717 res!161367) b!303721))

(assert (= (and b!303721 res!161363) b!303723))

(assert (= (and b!303723 res!161366) b!303714))

(assert (= (and b!303714 res!161362) b!303719))

(assert (= (and b!303719 res!161365) b!303722))

(assert (= (and b!303722 res!161360) b!303715))

(assert (= (and b!303715 res!161364) b!303720))

(assert (= (and b!303720 res!161358) b!303716))

(assert (= (and b!303716 res!161361) b!303718))

(declare-fun m!315013 () Bool)

(assert (=> b!303723 m!315013))

(declare-fun m!315015 () Bool)

(assert (=> b!303721 m!315015))

(declare-fun m!315017 () Bool)

(assert (=> b!303720 m!315017))

(declare-fun m!315019 () Bool)

(assert (=> b!303719 m!315019))

(declare-fun m!315021 () Bool)

(assert (=> start!30346 m!315021))

(declare-fun m!315023 () Bool)

(assert (=> start!30346 m!315023))

(declare-fun m!315025 () Bool)

(assert (=> b!303714 m!315025))

(declare-fun m!315027 () Bool)

(assert (=> b!303715 m!315027))

(declare-fun m!315029 () Bool)

(assert (=> b!303722 m!315029))

(assert (=> b!303722 m!315029))

(declare-fun m!315031 () Bool)

(assert (=> b!303722 m!315031))

(declare-fun m!315033 () Bool)

(assert (=> b!303718 m!315033))

(declare-fun m!315035 () Bool)

(assert (=> b!303716 m!315035))

(push 1)

(assert (not b!303720))

(assert (not b!303719))

(assert (not start!30346))

