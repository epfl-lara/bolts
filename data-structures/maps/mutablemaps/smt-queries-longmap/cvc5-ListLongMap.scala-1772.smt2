; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32286 () Bool)

(assert start!32286)

(declare-fun b!321411 () Bool)

(declare-fun res!175692 () Bool)

(declare-fun e!199119 () Bool)

(assert (=> b!321411 (=> (not res!175692) (not e!199119))))

(declare-datatypes ((array!16472 0))(
  ( (array!16473 (arr!7792 (Array (_ BitVec 32) (_ BitVec 64))) (size!8144 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16472)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!321411 (= res!175692 (and (= (select (arr!7792 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8144 a!3305))))))

(declare-fun b!321412 () Bool)

(declare-fun mask!3777 () (_ BitVec 32))

(assert (=> b!321412 (= e!199119 (bvslt mask!3777 #b00000000000000000000000000000000))))

(declare-fun lt!156184 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321412 (= lt!156184 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!321413 () Bool)

(declare-fun res!175693 () Bool)

(declare-fun e!199118 () Bool)

(assert (=> b!321413 (=> (not res!175693) (not e!199118))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16472 (_ BitVec 32)) Bool)

(assert (=> b!321413 (= res!175693 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!321414 () Bool)

(declare-fun res!175689 () Bool)

(assert (=> b!321414 (=> (not res!175689) (not e!199118))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16472 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321414 (= res!175689 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321415 () Bool)

(assert (=> b!321415 (= e!199118 e!199119)))

(declare-fun res!175690 () Bool)

(assert (=> b!321415 (=> (not res!175690) (not e!199119))))

(declare-datatypes ((SeekEntryResult!2934 0))(
  ( (MissingZero!2934 (index!13912 (_ BitVec 32))) (Found!2934 (index!13913 (_ BitVec 32))) (Intermediate!2934 (undefined!3746 Bool) (index!13914 (_ BitVec 32)) (x!32140 (_ BitVec 32))) (Undefined!2934) (MissingVacant!2934 (index!13915 (_ BitVec 32))) )
))
(declare-fun lt!156185 () SeekEntryResult!2934)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16472 (_ BitVec 32)) SeekEntryResult!2934)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321415 (= res!175690 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156185))))

(assert (=> b!321415 (= lt!156185 (Intermediate!2934 false resIndex!58 resX!58))))

(declare-fun res!175695 () Bool)

(assert (=> start!32286 (=> (not res!175695) (not e!199118))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32286 (= res!175695 (validMask!0 mask!3777))))

(assert (=> start!32286 e!199118))

(declare-fun array_inv!5746 (array!16472) Bool)

(assert (=> start!32286 (array_inv!5746 a!3305)))

(assert (=> start!32286 true))

(declare-fun b!321416 () Bool)

(declare-fun res!175691 () Bool)

(assert (=> b!321416 (=> (not res!175691) (not e!199119))))

(assert (=> b!321416 (= res!175691 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7792 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7792 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7792 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!321417 () Bool)

(declare-fun res!175698 () Bool)

(assert (=> b!321417 (=> (not res!175698) (not e!199118))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321417 (= res!175698 (validKeyInArray!0 k!2497))))

(declare-fun b!321418 () Bool)

(declare-fun res!175694 () Bool)

(assert (=> b!321418 (=> (not res!175694) (not e!199118))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16472 (_ BitVec 32)) SeekEntryResult!2934)

(assert (=> b!321418 (= res!175694 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2934 i!1250)))))

(declare-fun b!321419 () Bool)

(declare-fun res!175696 () Bool)

(assert (=> b!321419 (=> (not res!175696) (not e!199118))))

(assert (=> b!321419 (= res!175696 (and (= (size!8144 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8144 a!3305))))))

(declare-fun b!321420 () Bool)

(declare-fun res!175697 () Bool)

(assert (=> b!321420 (=> (not res!175697) (not e!199119))))

(assert (=> b!321420 (= res!175697 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156185))))

(assert (= (and start!32286 res!175695) b!321419))

(assert (= (and b!321419 res!175696) b!321417))

(assert (= (and b!321417 res!175698) b!321414))

(assert (= (and b!321414 res!175689) b!321418))

(assert (= (and b!321418 res!175694) b!321413))

(assert (= (and b!321413 res!175693) b!321415))

(assert (= (and b!321415 res!175690) b!321411))

(assert (= (and b!321411 res!175692) b!321420))

(assert (= (and b!321420 res!175697) b!321416))

(assert (= (and b!321416 res!175691) b!321412))

(declare-fun m!329563 () Bool)

(assert (=> b!321420 m!329563))

(declare-fun m!329565 () Bool)

(assert (=> b!321411 m!329565))

(declare-fun m!329567 () Bool)

(assert (=> b!321417 m!329567))

(declare-fun m!329569 () Bool)

(assert (=> b!321414 m!329569))

(declare-fun m!329571 () Bool)

(assert (=> b!321418 m!329571))

(declare-fun m!329573 () Bool)

(assert (=> start!32286 m!329573))

(declare-fun m!329575 () Bool)

(assert (=> start!32286 m!329575))

(declare-fun m!329577 () Bool)

(assert (=> b!321412 m!329577))

(declare-fun m!329579 () Bool)

(assert (=> b!321415 m!329579))

(assert (=> b!321415 m!329579))

(declare-fun m!329581 () Bool)

(assert (=> b!321415 m!329581))

(declare-fun m!329583 () Bool)

(assert (=> b!321413 m!329583))

(declare-fun m!329585 () Bool)

(assert (=> b!321416 m!329585))

(push 1)

(assert (not b!321412))

(assert (not b!321418))

