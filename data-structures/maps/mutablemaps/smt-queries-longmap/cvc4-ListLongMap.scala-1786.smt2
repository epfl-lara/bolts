; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32428 () Bool)

(assert start!32428)

(declare-fun b!323481 () Bool)

(declare-fun res!177084 () Bool)

(declare-fun e!199914 () Bool)

(assert (=> b!323481 (=> (not res!177084) (not e!199914))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323481 (= res!177084 (validKeyInArray!0 k!2497))))

(declare-fun res!177087 () Bool)

(assert (=> start!32428 (=> (not res!177087) (not e!199914))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32428 (= res!177087 (validMask!0 mask!3777))))

(assert (=> start!32428 e!199914))

(declare-datatypes ((array!16563 0))(
  ( (array!16564 (arr!7836 (Array (_ BitVec 32) (_ BitVec 64))) (size!8188 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16563)

(declare-fun array_inv!5790 (array!16563) Bool)

(assert (=> start!32428 (array_inv!5790 a!3305)))

(assert (=> start!32428 true))

(declare-fun b!323482 () Bool)

(assert (=> b!323482 false))

(declare-datatypes ((Unit!10032 0))(
  ( (Unit!10033) )
))
(declare-fun lt!156643 () Unit!10032)

(declare-fun e!199916 () Unit!10032)

(assert (=> b!323482 (= lt!156643 e!199916)))

(declare-fun c!50828 () Bool)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2978 0))(
  ( (MissingZero!2978 (index!14088 (_ BitVec 32))) (Found!2978 (index!14089 (_ BitVec 32))) (Intermediate!2978 (undefined!3790 Bool) (index!14090 (_ BitVec 32)) (x!32305 (_ BitVec 32))) (Undefined!2978) (MissingVacant!2978 (index!14091 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16563 (_ BitVec 32)) SeekEntryResult!2978)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323482 (= c!50828 (is-Intermediate!2978 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun e!199913 () Unit!10032)

(declare-fun Unit!10034 () Unit!10032)

(assert (=> b!323482 (= e!199913 Unit!10034)))

(declare-fun b!323483 () Bool)

(declare-fun e!199915 () Bool)

(assert (=> b!323483 (= e!199915 (not (or (not (= (select (arr!7836 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3777 #b00000000000000000000000000000000) (bvslt index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)))))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!323483 (= index!1840 resIndex!58)))

(declare-fun lt!156642 () Unit!10032)

(declare-fun e!199917 () Unit!10032)

(assert (=> b!323483 (= lt!156642 e!199917)))

(declare-fun c!50826 () Bool)

(assert (=> b!323483 (= c!50826 (not (= resIndex!58 index!1840)))))

(declare-fun b!323484 () Bool)

(declare-fun res!177085 () Bool)

(assert (=> b!323484 (=> (not res!177085) (not e!199915))))

(declare-fun lt!156644 () SeekEntryResult!2978)

(assert (=> b!323484 (= res!177085 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156644))))

(declare-fun b!323485 () Bool)

(assert (=> b!323485 (= e!199914 e!199915)))

(declare-fun res!177092 () Bool)

(assert (=> b!323485 (=> (not res!177092) (not e!199915))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323485 (= res!177092 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156644))))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!323485 (= lt!156644 (Intermediate!2978 false resIndex!58 resX!58))))

(declare-fun b!323486 () Bool)

(assert (=> b!323486 false))

(declare-fun Unit!10035 () Unit!10032)

(assert (=> b!323486 (= e!199913 Unit!10035)))

(declare-fun b!323487 () Bool)

(assert (=> b!323487 (= e!199917 e!199913)))

(declare-fun c!50827 () Bool)

(assert (=> b!323487 (= c!50827 (or (= (select (arr!7836 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7836 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!323488 () Bool)

(declare-fun Unit!10036 () Unit!10032)

(assert (=> b!323488 (= e!199916 Unit!10036)))

(assert (=> b!323488 false))

(declare-fun b!323489 () Bool)

(declare-fun Unit!10037 () Unit!10032)

(assert (=> b!323489 (= e!199916 Unit!10037)))

(declare-fun b!323490 () Bool)

(declare-fun res!177090 () Bool)

(assert (=> b!323490 (=> (not res!177090) (not e!199915))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!323490 (= res!177090 (and (= (select (arr!7836 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8188 a!3305))))))

(declare-fun b!323491 () Bool)

(declare-fun res!177088 () Bool)

(assert (=> b!323491 (=> (not res!177088) (not e!199914))))

(declare-fun arrayContainsKey!0 (array!16563 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323491 (= res!177088 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!323492 () Bool)

(declare-fun Unit!10038 () Unit!10032)

(assert (=> b!323492 (= e!199917 Unit!10038)))

(declare-fun b!323493 () Bool)

(declare-fun res!177093 () Bool)

(assert (=> b!323493 (=> (not res!177093) (not e!199914))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16563 (_ BitVec 32)) Bool)

(assert (=> b!323493 (= res!177093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!323494 () Bool)

(declare-fun res!177086 () Bool)

(assert (=> b!323494 (=> (not res!177086) (not e!199914))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16563 (_ BitVec 32)) SeekEntryResult!2978)

(assert (=> b!323494 (= res!177086 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2978 i!1250)))))

(declare-fun b!323495 () Bool)

(declare-fun res!177091 () Bool)

(assert (=> b!323495 (=> (not res!177091) (not e!199915))))

(assert (=> b!323495 (= res!177091 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7836 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!323496 () Bool)

(declare-fun res!177089 () Bool)

(assert (=> b!323496 (=> (not res!177089) (not e!199914))))

(assert (=> b!323496 (= res!177089 (and (= (size!8188 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8188 a!3305))))))

(assert (= (and start!32428 res!177087) b!323496))

(assert (= (and b!323496 res!177089) b!323481))

(assert (= (and b!323481 res!177084) b!323491))

(assert (= (and b!323491 res!177088) b!323494))

(assert (= (and b!323494 res!177086) b!323493))

(assert (= (and b!323493 res!177093) b!323485))

(assert (= (and b!323485 res!177092) b!323490))

(assert (= (and b!323490 res!177090) b!323484))

(assert (= (and b!323484 res!177085) b!323495))

(assert (= (and b!323495 res!177091) b!323483))

(assert (= (and b!323483 c!50826) b!323487))

(assert (= (and b!323483 (not c!50826)) b!323492))

(assert (= (and b!323487 c!50827) b!323486))

(assert (= (and b!323487 (not c!50827)) b!323482))

(assert (= (and b!323482 c!50828) b!323489))

(assert (= (and b!323482 (not c!50828)) b!323488))

(declare-fun m!330791 () Bool)

(assert (=> b!323487 m!330791))

(declare-fun m!330793 () Bool)

(assert (=> start!32428 m!330793))

(declare-fun m!330795 () Bool)

(assert (=> start!32428 m!330795))

(declare-fun m!330797 () Bool)

(assert (=> b!323494 m!330797))

(declare-fun m!330799 () Bool)

(assert (=> b!323490 m!330799))

(declare-fun m!330801 () Bool)

(assert (=> b!323481 m!330801))

(declare-fun m!330803 () Bool)

(assert (=> b!323491 m!330803))

(declare-fun m!330805 () Bool)

(assert (=> b!323484 m!330805))

(assert (=> b!323483 m!330791))

(declare-fun m!330807 () Bool)

(assert (=> b!323482 m!330807))

(assert (=> b!323482 m!330807))

(declare-fun m!330809 () Bool)

(assert (=> b!323482 m!330809))

(declare-fun m!330811 () Bool)

(assert (=> b!323485 m!330811))

(assert (=> b!323485 m!330811))

(declare-fun m!330813 () Bool)

(assert (=> b!323485 m!330813))

(assert (=> b!323495 m!330791))

(declare-fun m!330815 () Bool)

(assert (=> b!323493 m!330815))

(push 1)

(assert (not b!323491))

(assert (not start!32428))

(assert (not b!323493))

(assert (not b!323484))

(assert (not b!323481))

(assert (not b!323494))

(assert (not b!323482))

(assert (not b!323485))

(check-sat)

(pop 1)

(push 1)

(check-sat)

