; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33228 () Bool)

(assert start!33228)

(declare-fun b!330207 () Bool)

(declare-fun res!182040 () Bool)

(declare-fun e!202712 () Bool)

(assert (=> b!330207 (=> (not res!182040) (not e!202712))))

(declare-datatypes ((array!16883 0))(
  ( (array!16884 (arr!7981 (Array (_ BitVec 32) (_ BitVec 64))) (size!8333 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16883)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16883 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!330207 (= res!182040 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!330208 () Bool)

(declare-fun res!182044 () Bool)

(declare-fun e!202711 () Bool)

(assert (=> b!330208 (=> (not res!182044) (not e!202711))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!330208 (= res!182044 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7981 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!330209 () Bool)

(declare-fun res!182047 () Bool)

(assert (=> b!330209 (=> (not res!182047) (not e!202712))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3123 0))(
  ( (MissingZero!3123 (index!14668 (_ BitVec 32))) (Found!3123 (index!14669 (_ BitVec 32))) (Intermediate!3123 (undefined!3935 Bool) (index!14670 (_ BitVec 32)) (x!32917 (_ BitVec 32))) (Undefined!3123) (MissingVacant!3123 (index!14671 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16883 (_ BitVec 32)) SeekEntryResult!3123)

(assert (=> b!330209 (= res!182047 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3123 i!1250)))))

(declare-fun b!330210 () Bool)

(assert (=> b!330210 false))

(declare-datatypes ((Unit!10280 0))(
  ( (Unit!10281) )
))
(declare-fun e!202714 () Unit!10280)

(declare-fun Unit!10282 () Unit!10280)

(assert (=> b!330210 (= e!202714 Unit!10282)))

(declare-fun b!330211 () Bool)

(declare-fun e!202709 () Unit!10280)

(declare-fun Unit!10283 () Unit!10280)

(assert (=> b!330211 (= e!202709 Unit!10283)))

(assert (=> b!330211 false))

(declare-fun b!330212 () Bool)

(declare-fun Unit!10284 () Unit!10280)

(assert (=> b!330212 (= e!202709 Unit!10284)))

(declare-fun b!330213 () Bool)

(assert (=> b!330213 (= e!202711 (not true))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!330213 (= index!1840 resIndex!58)))

(declare-fun lt!158466 () Unit!10280)

(declare-fun e!202710 () Unit!10280)

(assert (=> b!330213 (= lt!158466 e!202710)))

(declare-fun c!51727 () Bool)

(assert (=> b!330213 (= c!51727 (not (= resIndex!58 index!1840)))))

(declare-fun b!330214 () Bool)

(declare-fun res!182042 () Bool)

(assert (=> b!330214 (=> (not res!182042) (not e!202711))))

(assert (=> b!330214 (= res!182042 (and (= (select (arr!7981 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8333 a!3305))))))

(declare-fun b!330215 () Bool)

(assert (=> b!330215 (= e!202710 e!202714)))

(declare-fun c!51728 () Bool)

(assert (=> b!330215 (= c!51728 (or (= (select (arr!7981 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7981 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!330216 () Bool)

(declare-fun res!182043 () Bool)

(assert (=> b!330216 (=> (not res!182043) (not e!202712))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16883 (_ BitVec 32)) Bool)

(assert (=> b!330216 (= res!182043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!182046 () Bool)

(assert (=> start!33228 (=> (not res!182046) (not e!202712))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33228 (= res!182046 (validMask!0 mask!3777))))

(assert (=> start!33228 e!202712))

(declare-fun array_inv!5935 (array!16883) Bool)

(assert (=> start!33228 (array_inv!5935 a!3305)))

(assert (=> start!33228 true))

(declare-fun b!330217 () Bool)

(declare-fun res!182041 () Bool)

(assert (=> b!330217 (=> (not res!182041) (not e!202712))))

(assert (=> b!330217 (= res!182041 (and (= (size!8333 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8333 a!3305))))))

(declare-fun b!330218 () Bool)

(declare-fun res!182049 () Bool)

(assert (=> b!330218 (=> (not res!182049) (not e!202712))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!330218 (= res!182049 (validKeyInArray!0 k!2497))))

(declare-fun b!330219 () Bool)

(declare-fun res!182048 () Bool)

(assert (=> b!330219 (=> (not res!182048) (not e!202711))))

(declare-fun lt!158468 () SeekEntryResult!3123)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16883 (_ BitVec 32)) SeekEntryResult!3123)

(assert (=> b!330219 (= res!182048 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158468))))

(declare-fun b!330220 () Bool)

(assert (=> b!330220 false))

(declare-fun lt!158467 () Unit!10280)

(assert (=> b!330220 (= lt!158467 e!202709)))

(declare-fun c!51726 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330220 (= c!51726 (is-Intermediate!3123 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!10285 () Unit!10280)

(assert (=> b!330220 (= e!202714 Unit!10285)))

(declare-fun b!330221 () Bool)

(declare-fun Unit!10286 () Unit!10280)

(assert (=> b!330221 (= e!202710 Unit!10286)))

(declare-fun b!330222 () Bool)

(assert (=> b!330222 (= e!202712 e!202711)))

(declare-fun res!182045 () Bool)

(assert (=> b!330222 (=> (not res!182045) (not e!202711))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330222 (= res!182045 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158468))))

(assert (=> b!330222 (= lt!158468 (Intermediate!3123 false resIndex!58 resX!58))))

(assert (= (and start!33228 res!182046) b!330217))

(assert (= (and b!330217 res!182041) b!330218))

(assert (= (and b!330218 res!182049) b!330207))

(assert (= (and b!330207 res!182040) b!330209))

(assert (= (and b!330209 res!182047) b!330216))

(assert (= (and b!330216 res!182043) b!330222))

(assert (= (and b!330222 res!182045) b!330214))

(assert (= (and b!330214 res!182042) b!330219))

(assert (= (and b!330219 res!182048) b!330208))

(assert (= (and b!330208 res!182044) b!330213))

(assert (= (and b!330213 c!51727) b!330215))

(assert (= (and b!330213 (not c!51727)) b!330221))

(assert (= (and b!330215 c!51728) b!330210))

(assert (= (and b!330215 (not c!51728)) b!330220))

(assert (= (and b!330220 c!51726) b!330212))

(assert (= (and b!330220 (not c!51726)) b!330211))

(declare-fun m!335497 () Bool)

(assert (=> start!33228 m!335497))

(declare-fun m!335499 () Bool)

(assert (=> start!33228 m!335499))

(declare-fun m!335501 () Bool)

(assert (=> b!330219 m!335501))

(declare-fun m!335503 () Bool)

(assert (=> b!330222 m!335503))

(assert (=> b!330222 m!335503))

(declare-fun m!335505 () Bool)

(assert (=> b!330222 m!335505))

(declare-fun m!335507 () Bool)

(assert (=> b!330216 m!335507))

(declare-fun m!335509 () Bool)

(assert (=> b!330207 m!335509))

(declare-fun m!335511 () Bool)

(assert (=> b!330218 m!335511))

(declare-fun m!335513 () Bool)

(assert (=> b!330220 m!335513))

(assert (=> b!330220 m!335513))

(declare-fun m!335515 () Bool)

(assert (=> b!330220 m!335515))

(declare-fun m!335517 () Bool)

(assert (=> b!330208 m!335517))

(assert (=> b!330215 m!335517))

(declare-fun m!335519 () Bool)

(assert (=> b!330209 m!335519))

(declare-fun m!335521 () Bool)

(assert (=> b!330214 m!335521))

(push 1)

