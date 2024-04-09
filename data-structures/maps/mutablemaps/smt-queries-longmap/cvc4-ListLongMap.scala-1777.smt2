; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32374 () Bool)

(assert start!32374)

(declare-fun res!176279 () Bool)

(declare-fun e!199430 () Bool)

(assert (=> start!32374 (=> (not res!176279) (not e!199430))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32374 (= res!176279 (validMask!0 mask!3777))))

(assert (=> start!32374 e!199430))

(declare-datatypes ((array!16509 0))(
  ( (array!16510 (arr!7809 (Array (_ BitVec 32) (_ BitVec 64))) (size!8161 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16509)

(declare-fun array_inv!5763 (array!16509) Bool)

(assert (=> start!32374 (array_inv!5763 a!3305)))

(assert (=> start!32374 true))

(declare-fun b!322185 () Bool)

(declare-fun res!176276 () Bool)

(assert (=> b!322185 (=> (not res!176276) (not e!199430))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!322185 (= res!176276 (and (= (size!8161 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8161 a!3305))))))

(declare-fun b!322186 () Bool)

(declare-fun res!176278 () Bool)

(declare-fun e!199432 () Bool)

(assert (=> b!322186 (=> (not res!176278) (not e!199432))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!322186 (= res!176278 (and (= (select (arr!7809 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8161 a!3305))))))

(declare-fun b!322187 () Bool)

(declare-datatypes ((Unit!9843 0))(
  ( (Unit!9844) )
))
(declare-fun e!199429 () Unit!9843)

(declare-fun Unit!9845 () Unit!9843)

(assert (=> b!322187 (= e!199429 Unit!9845)))

(declare-fun b!322188 () Bool)

(declare-fun res!176283 () Bool)

(assert (=> b!322188 (=> (not res!176283) (not e!199430))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2951 0))(
  ( (MissingZero!2951 (index!13980 (_ BitVec 32))) (Found!2951 (index!13981 (_ BitVec 32))) (Intermediate!2951 (undefined!3763 Bool) (index!13982 (_ BitVec 32)) (x!32206 (_ BitVec 32))) (Undefined!2951) (MissingVacant!2951 (index!13983 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16509 (_ BitVec 32)) SeekEntryResult!2951)

(assert (=> b!322188 (= res!176283 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2951 i!1250)))))

(declare-fun b!322189 () Bool)

(declare-fun res!176281 () Bool)

(assert (=> b!322189 (=> (not res!176281) (not e!199430))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16509 (_ BitVec 32)) Bool)

(assert (=> b!322189 (= res!176281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!322190 () Bool)

(declare-fun e!199427 () Unit!9843)

(declare-fun Unit!9846 () Unit!9843)

(assert (=> b!322190 (= e!199427 Unit!9846)))

(declare-fun b!322191 () Bool)

(declare-fun e!199431 () Unit!9843)

(assert (=> b!322191 (= e!199427 e!199431)))

(declare-fun c!50584 () Bool)

(assert (=> b!322191 (= c!50584 (or (= (select (arr!7809 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7809 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!322192 () Bool)

(declare-fun res!176280 () Bool)

(assert (=> b!322192 (=> (not res!176280) (not e!199432))))

(declare-fun lt!156400 () SeekEntryResult!2951)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16509 (_ BitVec 32)) SeekEntryResult!2951)

(assert (=> b!322192 (= res!176280 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156400))))

(declare-fun b!322193 () Bool)

(declare-fun Unit!9847 () Unit!9843)

(assert (=> b!322193 (= e!199429 Unit!9847)))

(assert (=> b!322193 false))

(declare-fun b!322194 () Bool)

(declare-fun res!176275 () Bool)

(assert (=> b!322194 (=> (not res!176275) (not e!199432))))

(assert (=> b!322194 (= res!176275 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7809 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!322195 () Bool)

(declare-fun res!176277 () Bool)

(assert (=> b!322195 (=> (not res!176277) (not e!199430))))

(declare-fun arrayContainsKey!0 (array!16509 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!322195 (= res!176277 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!322196 () Bool)

(assert (=> b!322196 false))

(declare-fun lt!156401 () Unit!9843)

(assert (=> b!322196 (= lt!156401 e!199429)))

(declare-fun c!50583 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322196 (= c!50583 (is-Intermediate!2951 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!9848 () Unit!9843)

(assert (=> b!322196 (= e!199431 Unit!9848)))

(declare-fun b!322197 () Bool)

(declare-fun res!176282 () Bool)

(assert (=> b!322197 (=> (not res!176282) (not e!199430))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!322197 (= res!176282 (validKeyInArray!0 k!2497))))

(declare-fun b!322198 () Bool)

(assert (=> b!322198 (= e!199432 (not true))))

(assert (=> b!322198 (= index!1840 resIndex!58)))

(declare-fun lt!156399 () Unit!9843)

(assert (=> b!322198 (= lt!156399 e!199427)))

(declare-fun c!50585 () Bool)

(assert (=> b!322198 (= c!50585 (not (= resIndex!58 index!1840)))))

(declare-fun b!322199 () Bool)

(assert (=> b!322199 (= e!199430 e!199432)))

(declare-fun res!176274 () Bool)

(assert (=> b!322199 (=> (not res!176274) (not e!199432))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322199 (= res!176274 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156400))))

(assert (=> b!322199 (= lt!156400 (Intermediate!2951 false resIndex!58 resX!58))))

(declare-fun b!322200 () Bool)

(assert (=> b!322200 false))

(declare-fun Unit!9849 () Unit!9843)

(assert (=> b!322200 (= e!199431 Unit!9849)))

(assert (= (and start!32374 res!176279) b!322185))

(assert (= (and b!322185 res!176276) b!322197))

(assert (= (and b!322197 res!176282) b!322195))

(assert (= (and b!322195 res!176277) b!322188))

(assert (= (and b!322188 res!176283) b!322189))

(assert (= (and b!322189 res!176281) b!322199))

(assert (= (and b!322199 res!176274) b!322186))

(assert (= (and b!322186 res!176278) b!322192))

(assert (= (and b!322192 res!176280) b!322194))

(assert (= (and b!322194 res!176275) b!322198))

(assert (= (and b!322198 c!50585) b!322191))

(assert (= (and b!322198 (not c!50585)) b!322190))

(assert (= (and b!322191 c!50584) b!322200))

(assert (= (and b!322191 (not c!50584)) b!322196))

(assert (= (and b!322196 c!50583) b!322187))

(assert (= (and b!322196 (not c!50583)) b!322193))

(declare-fun m!330089 () Bool)

(assert (=> b!322194 m!330089))

(assert (=> b!322191 m!330089))

(declare-fun m!330091 () Bool)

(assert (=> b!322199 m!330091))

(assert (=> b!322199 m!330091))

(declare-fun m!330093 () Bool)

(assert (=> b!322199 m!330093))

(declare-fun m!330095 () Bool)

(assert (=> b!322196 m!330095))

(assert (=> b!322196 m!330095))

(declare-fun m!330097 () Bool)

(assert (=> b!322196 m!330097))

(declare-fun m!330099 () Bool)

(assert (=> start!32374 m!330099))

(declare-fun m!330101 () Bool)

(assert (=> start!32374 m!330101))

(declare-fun m!330103 () Bool)

(assert (=> b!322189 m!330103))

(declare-fun m!330105 () Bool)

(assert (=> b!322188 m!330105))

(declare-fun m!330107 () Bool)

(assert (=> b!322195 m!330107))

(declare-fun m!330109 () Bool)

(assert (=> b!322186 m!330109))

(declare-fun m!330111 () Bool)

(assert (=> b!322197 m!330111))

(declare-fun m!330113 () Bool)

(assert (=> b!322192 m!330113))

(push 1)

(assert (not b!322192))

