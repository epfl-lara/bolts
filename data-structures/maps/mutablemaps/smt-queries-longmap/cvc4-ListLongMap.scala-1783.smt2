; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32410 () Bool)

(assert start!32410)

(declare-fun b!323049 () Bool)

(assert (=> b!323049 false))

(declare-datatypes ((Unit!9969 0))(
  ( (Unit!9970) )
))
(declare-fun e!199755 () Unit!9969)

(declare-fun Unit!9971 () Unit!9969)

(assert (=> b!323049 (= e!199755 Unit!9971)))

(declare-fun b!323050 () Bool)

(declare-fun res!176818 () Bool)

(declare-fun e!199751 () Bool)

(assert (=> b!323050 (=> (not res!176818) (not e!199751))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323050 (= res!176818 (validKeyInArray!0 k!2497))))

(declare-fun b!323051 () Bool)

(declare-fun e!199756 () Unit!9969)

(declare-fun Unit!9972 () Unit!9969)

(assert (=> b!323051 (= e!199756 Unit!9972)))

(declare-fun b!323052 () Bool)

(declare-fun Unit!9973 () Unit!9969)

(assert (=> b!323052 (= e!199756 Unit!9973)))

(assert (=> b!323052 false))

(declare-fun b!323053 () Bool)

(declare-fun res!176817 () Bool)

(assert (=> b!323053 (=> (not res!176817) (not e!199751))))

(declare-datatypes ((array!16545 0))(
  ( (array!16546 (arr!7827 (Array (_ BitVec 32) (_ BitVec 64))) (size!8179 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16545)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2969 0))(
  ( (MissingZero!2969 (index!14052 (_ BitVec 32))) (Found!2969 (index!14053 (_ BitVec 32))) (Intermediate!2969 (undefined!3781 Bool) (index!14054 (_ BitVec 32)) (x!32272 (_ BitVec 32))) (Undefined!2969) (MissingVacant!2969 (index!14055 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16545 (_ BitVec 32)) SeekEntryResult!2969)

(assert (=> b!323053 (= res!176817 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2969 i!1250)))))

(declare-fun b!323054 () Bool)

(declare-fun res!176820 () Bool)

(declare-fun e!199752 () Bool)

(assert (=> b!323054 (=> (not res!176820) (not e!199752))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!323054 (= res!176820 (and (= (select (arr!7827 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8179 a!3305))))))

(declare-fun b!323056 () Bool)

(declare-fun e!199754 () Unit!9969)

(assert (=> b!323056 (= e!199754 e!199755)))

(declare-fun c!50746 () Bool)

(assert (=> b!323056 (= c!50746 (or (= (select (arr!7827 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7827 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!323057 () Bool)

(declare-fun res!176815 () Bool)

(assert (=> b!323057 (=> (not res!176815) (not e!199751))))

(declare-fun arrayContainsKey!0 (array!16545 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323057 (= res!176815 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!323058 () Bool)

(declare-fun Unit!9974 () Unit!9969)

(assert (=> b!323058 (= e!199754 Unit!9974)))

(declare-fun b!323059 () Bool)

(declare-fun res!176816 () Bool)

(assert (=> b!323059 (=> (not res!176816) (not e!199751))))

(assert (=> b!323059 (= res!176816 (and (= (size!8179 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8179 a!3305))))))

(declare-fun b!323060 () Bool)

(declare-fun res!176823 () Bool)

(assert (=> b!323060 (=> (not res!176823) (not e!199751))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16545 (_ BitVec 32)) Bool)

(assert (=> b!323060 (= res!176823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!323061 () Bool)

(assert (=> b!323061 (= e!199752 (not true))))

(assert (=> b!323061 (= index!1840 resIndex!58)))

(declare-fun lt!156563 () Unit!9969)

(assert (=> b!323061 (= lt!156563 e!199754)))

(declare-fun c!50747 () Bool)

(assert (=> b!323061 (= c!50747 (not (= resIndex!58 index!1840)))))

(declare-fun b!323062 () Bool)

(declare-fun res!176821 () Bool)

(assert (=> b!323062 (=> (not res!176821) (not e!199752))))

(declare-fun lt!156561 () SeekEntryResult!2969)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16545 (_ BitVec 32)) SeekEntryResult!2969)

(assert (=> b!323062 (= res!176821 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156561))))

(declare-fun b!323063 () Bool)

(assert (=> b!323063 (= e!199751 e!199752)))

(declare-fun res!176822 () Bool)

(assert (=> b!323063 (=> (not res!176822) (not e!199752))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323063 (= res!176822 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156561))))

(assert (=> b!323063 (= lt!156561 (Intermediate!2969 false resIndex!58 resX!58))))

(declare-fun b!323064 () Bool)

(assert (=> b!323064 false))

(declare-fun lt!156562 () Unit!9969)

(assert (=> b!323064 (= lt!156562 e!199756)))

(declare-fun c!50745 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323064 (= c!50745 (is-Intermediate!2969 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!9975 () Unit!9969)

(assert (=> b!323064 (= e!199755 Unit!9975)))

(declare-fun res!176819 () Bool)

(assert (=> start!32410 (=> (not res!176819) (not e!199751))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32410 (= res!176819 (validMask!0 mask!3777))))

(assert (=> start!32410 e!199751))

(declare-fun array_inv!5781 (array!16545) Bool)

(assert (=> start!32410 (array_inv!5781 a!3305)))

(assert (=> start!32410 true))

(declare-fun b!323055 () Bool)

(declare-fun res!176814 () Bool)

(assert (=> b!323055 (=> (not res!176814) (not e!199752))))

(assert (=> b!323055 (= res!176814 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7827 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(assert (= (and start!32410 res!176819) b!323059))

(assert (= (and b!323059 res!176816) b!323050))

(assert (= (and b!323050 res!176818) b!323057))

(assert (= (and b!323057 res!176815) b!323053))

(assert (= (and b!323053 res!176817) b!323060))

(assert (= (and b!323060 res!176823) b!323063))

(assert (= (and b!323063 res!176822) b!323054))

(assert (= (and b!323054 res!176820) b!323062))

(assert (= (and b!323062 res!176821) b!323055))

(assert (= (and b!323055 res!176814) b!323061))

(assert (= (and b!323061 c!50747) b!323056))

(assert (= (and b!323061 (not c!50747)) b!323058))

(assert (= (and b!323056 c!50746) b!323049))

(assert (= (and b!323056 (not c!50746)) b!323064))

(assert (= (and b!323064 c!50745) b!323051))

(assert (= (and b!323064 (not c!50745)) b!323052))

(declare-fun m!330557 () Bool)

(assert (=> b!323053 m!330557))

(declare-fun m!330559 () Bool)

(assert (=> b!323063 m!330559))

(assert (=> b!323063 m!330559))

(declare-fun m!330561 () Bool)

(assert (=> b!323063 m!330561))

(declare-fun m!330563 () Bool)

(assert (=> b!323060 m!330563))

(declare-fun m!330565 () Bool)

(assert (=> b!323054 m!330565))

(declare-fun m!330567 () Bool)

(assert (=> b!323050 m!330567))

(declare-fun m!330569 () Bool)

(assert (=> b!323064 m!330569))

(assert (=> b!323064 m!330569))

(declare-fun m!330571 () Bool)

(assert (=> b!323064 m!330571))

(declare-fun m!330573 () Bool)

(assert (=> b!323062 m!330573))

(declare-fun m!330575 () Bool)

(assert (=> start!32410 m!330575))

(declare-fun m!330577 () Bool)

(assert (=> start!32410 m!330577))

(declare-fun m!330579 () Bool)

(assert (=> b!323056 m!330579))

(assert (=> b!323055 m!330579))

(declare-fun m!330581 () Bool)

(assert (=> b!323057 m!330581))

(push 1)

(assert (not b!323062))

