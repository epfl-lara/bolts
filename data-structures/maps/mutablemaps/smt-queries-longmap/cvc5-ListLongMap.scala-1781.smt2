; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32394 () Bool)

(assert start!32394)

(declare-fun b!322665 () Bool)

(declare-fun res!176580 () Bool)

(declare-fun e!199608 () Bool)

(assert (=> b!322665 (=> (not res!176580) (not e!199608))))

(declare-datatypes ((array!16529 0))(
  ( (array!16530 (arr!7819 (Array (_ BitVec 32) (_ BitVec 64))) (size!8171 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16529)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16529 (_ BitVec 32)) Bool)

(assert (=> b!322665 (= res!176580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!322666 () Bool)

(declare-fun res!176576 () Bool)

(assert (=> b!322666 (=> (not res!176576) (not e!199608))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!322666 (= res!176576 (validKeyInArray!0 k!2497))))

(declare-fun b!322667 () Bool)

(assert (=> b!322667 false))

(declare-datatypes ((Unit!9913 0))(
  ( (Unit!9914) )
))
(declare-fun e!199612 () Unit!9913)

(declare-fun Unit!9915 () Unit!9913)

(assert (=> b!322667 (= e!199612 Unit!9915)))

(declare-fun b!322668 () Bool)

(declare-fun res!176583 () Bool)

(declare-fun e!199607 () Bool)

(assert (=> b!322668 (=> (not res!176583) (not e!199607))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!322668 (= res!176583 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7819 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!322669 () Bool)

(declare-fun res!176578 () Bool)

(assert (=> b!322669 (=> (not res!176578) (not e!199608))))

(declare-fun arrayContainsKey!0 (array!16529 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!322669 (= res!176578 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!322670 () Bool)

(assert (=> b!322670 false))

(declare-fun lt!156490 () Unit!9913)

(declare-fun e!199610 () Unit!9913)

(assert (=> b!322670 (= lt!156490 e!199610)))

(declare-fun c!50674 () Bool)

(declare-datatypes ((SeekEntryResult!2961 0))(
  ( (MissingZero!2961 (index!14020 (_ BitVec 32))) (Found!2961 (index!14021 (_ BitVec 32))) (Intermediate!2961 (undefined!3773 Bool) (index!14022 (_ BitVec 32)) (x!32248 (_ BitVec 32))) (Undefined!2961) (MissingVacant!2961 (index!14023 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16529 (_ BitVec 32)) SeekEntryResult!2961)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322670 (= c!50674 (is-Intermediate!2961 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!9916 () Unit!9913)

(assert (=> b!322670 (= e!199612 Unit!9916)))

(declare-fun b!322671 () Bool)

(declare-fun res!176575 () Bool)

(assert (=> b!322671 (=> (not res!176575) (not e!199608))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16529 (_ BitVec 32)) SeekEntryResult!2961)

(assert (=> b!322671 (= res!176575 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2961 i!1250)))))

(declare-fun b!322672 () Bool)

(declare-fun e!199611 () Unit!9913)

(declare-fun Unit!9917 () Unit!9913)

(assert (=> b!322672 (= e!199611 Unit!9917)))

(declare-fun b!322673 () Bool)

(declare-fun res!176581 () Bool)

(assert (=> b!322673 (=> (not res!176581) (not e!199607))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!322673 (= res!176581 (and (= (select (arr!7819 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8171 a!3305))))))

(declare-fun b!322674 () Bool)

(assert (=> b!322674 (= e!199608 e!199607)))

(declare-fun res!176574 () Bool)

(assert (=> b!322674 (=> (not res!176574) (not e!199607))))

(declare-fun lt!156491 () SeekEntryResult!2961)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322674 (= res!176574 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156491))))

(assert (=> b!322674 (= lt!156491 (Intermediate!2961 false resIndex!58 resX!58))))

(declare-fun b!322675 () Bool)

(declare-fun Unit!9918 () Unit!9913)

(assert (=> b!322675 (= e!199610 Unit!9918)))

(assert (=> b!322675 false))

(declare-fun b!322676 () Bool)

(declare-fun res!176579 () Bool)

(assert (=> b!322676 (=> (not res!176579) (not e!199607))))

(assert (=> b!322676 (= res!176579 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156491))))

(declare-fun b!322677 () Bool)

(declare-fun res!176577 () Bool)

(assert (=> b!322677 (=> (not res!176577) (not e!199608))))

(assert (=> b!322677 (= res!176577 (and (= (size!8171 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8171 a!3305))))))

(declare-fun b!322678 () Bool)

(assert (=> b!322678 (= e!199607 (not (or (not (= (select (arr!7819 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsle x!1490 #b01111111111111111111111111111110))))))

(assert (=> b!322678 (= index!1840 resIndex!58)))

(declare-fun lt!156489 () Unit!9913)

(assert (=> b!322678 (= lt!156489 e!199611)))

(declare-fun c!50675 () Bool)

(assert (=> b!322678 (= c!50675 (not (= resIndex!58 index!1840)))))

(declare-fun res!176582 () Bool)

(assert (=> start!32394 (=> (not res!176582) (not e!199608))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32394 (= res!176582 (validMask!0 mask!3777))))

(assert (=> start!32394 e!199608))

(declare-fun array_inv!5773 (array!16529) Bool)

(assert (=> start!32394 (array_inv!5773 a!3305)))

(assert (=> start!32394 true))

(declare-fun b!322679 () Bool)

(declare-fun Unit!9919 () Unit!9913)

(assert (=> b!322679 (= e!199610 Unit!9919)))

(declare-fun b!322680 () Bool)

(assert (=> b!322680 (= e!199611 e!199612)))

(declare-fun c!50673 () Bool)

(assert (=> b!322680 (= c!50673 (or (= (select (arr!7819 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7819 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!32394 res!176582) b!322677))

(assert (= (and b!322677 res!176577) b!322666))

(assert (= (and b!322666 res!176576) b!322669))

(assert (= (and b!322669 res!176578) b!322671))

(assert (= (and b!322671 res!176575) b!322665))

(assert (= (and b!322665 res!176580) b!322674))

(assert (= (and b!322674 res!176574) b!322673))

(assert (= (and b!322673 res!176581) b!322676))

(assert (= (and b!322676 res!176579) b!322668))

(assert (= (and b!322668 res!176583) b!322678))

(assert (= (and b!322678 c!50675) b!322680))

(assert (= (and b!322678 (not c!50675)) b!322672))

(assert (= (and b!322680 c!50673) b!322667))

(assert (= (and b!322680 (not c!50673)) b!322670))

(assert (= (and b!322670 c!50674) b!322679))

(assert (= (and b!322670 (not c!50674)) b!322675))

(declare-fun m!330349 () Bool)

(assert (=> b!322671 m!330349))

(declare-fun m!330351 () Bool)

(assert (=> b!322673 m!330351))

(declare-fun m!330353 () Bool)

(assert (=> b!322665 m!330353))

(declare-fun m!330355 () Bool)

(assert (=> b!322680 m!330355))

(declare-fun m!330357 () Bool)

(assert (=> b!322669 m!330357))

(assert (=> b!322678 m!330355))

(declare-fun m!330359 () Bool)

(assert (=> b!322674 m!330359))

(assert (=> b!322674 m!330359))

(declare-fun m!330361 () Bool)

(assert (=> b!322674 m!330361))

(declare-fun m!330363 () Bool)

(assert (=> b!322666 m!330363))

(declare-fun m!330365 () Bool)

(assert (=> b!322676 m!330365))

(declare-fun m!330367 () Bool)

(assert (=> b!322670 m!330367))

(assert (=> b!322670 m!330367))

(declare-fun m!330369 () Bool)

(assert (=> b!322670 m!330369))

(assert (=> b!322668 m!330355))

(declare-fun m!330371 () Bool)

(assert (=> start!32394 m!330371))

(declare-fun m!330373 () Bool)

(assert (=> start!32394 m!330373))

(push 1)

