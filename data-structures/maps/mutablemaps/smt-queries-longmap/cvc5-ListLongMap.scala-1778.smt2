; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32376 () Bool)

(assert start!32376)

(declare-fun b!322233 () Bool)

(assert (=> b!322233 false))

(declare-datatypes ((Unit!9850 0))(
  ( (Unit!9851) )
))
(declare-fun e!199445 () Unit!9850)

(declare-fun Unit!9852 () Unit!9850)

(assert (=> b!322233 (= e!199445 Unit!9852)))

(declare-fun b!322234 () Bool)

(declare-fun res!176307 () Bool)

(declare-fun e!199446 () Bool)

(assert (=> b!322234 (=> (not res!176307) (not e!199446))))

(declare-datatypes ((array!16511 0))(
  ( (array!16512 (arr!7810 (Array (_ BitVec 32) (_ BitVec 64))) (size!8162 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16511)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!322234 (= res!176307 (and (= (size!8162 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8162 a!3305))))))

(declare-fun b!322235 () Bool)

(declare-fun res!176305 () Bool)

(assert (=> b!322235 (=> (not res!176305) (not e!199446))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!322235 (= res!176305 (validKeyInArray!0 k!2497))))

(declare-fun b!322236 () Bool)

(declare-fun e!199449 () Unit!9850)

(declare-fun Unit!9853 () Unit!9850)

(assert (=> b!322236 (= e!199449 Unit!9853)))

(assert (=> b!322236 false))

(declare-fun b!322237 () Bool)

(declare-fun e!199450 () Bool)

(assert (=> b!322237 (= e!199446 e!199450)))

(declare-fun res!176311 () Bool)

(assert (=> b!322237 (=> (not res!176311) (not e!199450))))

(declare-datatypes ((SeekEntryResult!2952 0))(
  ( (MissingZero!2952 (index!13984 (_ BitVec 32))) (Found!2952 (index!13985 (_ BitVec 32))) (Intermediate!2952 (undefined!3764 Bool) (index!13986 (_ BitVec 32)) (x!32215 (_ BitVec 32))) (Undefined!2952) (MissingVacant!2952 (index!13987 (_ BitVec 32))) )
))
(declare-fun lt!156408 () SeekEntryResult!2952)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16511 (_ BitVec 32)) SeekEntryResult!2952)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322237 (= res!176311 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156408))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!322237 (= lt!156408 (Intermediate!2952 false resIndex!58 resX!58))))

(declare-fun b!322238 () Bool)

(declare-fun res!176304 () Bool)

(assert (=> b!322238 (=> (not res!176304) (not e!199446))))

(declare-fun arrayContainsKey!0 (array!16511 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!322238 (= res!176304 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!322239 () Bool)

(declare-fun res!176308 () Bool)

(assert (=> b!322239 (=> (not res!176308) (not e!199446))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16511 (_ BitVec 32)) SeekEntryResult!2952)

(assert (=> b!322239 (= res!176308 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2952 i!1250)))))

(declare-fun b!322240 () Bool)

(declare-fun res!176310 () Bool)

(assert (=> b!322240 (=> (not res!176310) (not e!199450))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!322240 (= res!176310 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156408))))

(declare-fun b!322241 () Bool)

(declare-fun res!176313 () Bool)

(assert (=> b!322241 (=> (not res!176313) (not e!199450))))

(assert (=> b!322241 (= res!176313 (and (= (select (arr!7810 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8162 a!3305))))))

(declare-fun b!322242 () Bool)

(declare-fun res!176309 () Bool)

(assert (=> b!322242 (=> (not res!176309) (not e!199450))))

(assert (=> b!322242 (= res!176309 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7810 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!322244 () Bool)

(declare-fun e!199447 () Unit!9850)

(assert (=> b!322244 (= e!199447 e!199445)))

(declare-fun c!50592 () Bool)

(assert (=> b!322244 (= c!50592 (or (= (select (arr!7810 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7810 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!322245 () Bool)

(assert (=> b!322245 (= e!199450 (not (or (not (= (select (arr!7810 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3777 #b00000000000000000000000000000000))))))

(assert (=> b!322245 (= index!1840 resIndex!58)))

(declare-fun lt!156409 () Unit!9850)

(assert (=> b!322245 (= lt!156409 e!199447)))

(declare-fun c!50593 () Bool)

(assert (=> b!322245 (= c!50593 (not (= resIndex!58 index!1840)))))

(declare-fun b!322246 () Bool)

(assert (=> b!322246 false))

(declare-fun lt!156410 () Unit!9850)

(assert (=> b!322246 (= lt!156410 e!199449)))

(declare-fun c!50594 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322246 (= c!50594 (is-Intermediate!2952 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!9854 () Unit!9850)

(assert (=> b!322246 (= e!199445 Unit!9854)))

(declare-fun b!322247 () Bool)

(declare-fun Unit!9855 () Unit!9850)

(assert (=> b!322247 (= e!199449 Unit!9855)))

(declare-fun b!322248 () Bool)

(declare-fun Unit!9856 () Unit!9850)

(assert (=> b!322248 (= e!199447 Unit!9856)))

(declare-fun b!322243 () Bool)

(declare-fun res!176306 () Bool)

(assert (=> b!322243 (=> (not res!176306) (not e!199446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16511 (_ BitVec 32)) Bool)

(assert (=> b!322243 (= res!176306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!176312 () Bool)

(assert (=> start!32376 (=> (not res!176312) (not e!199446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32376 (= res!176312 (validMask!0 mask!3777))))

(assert (=> start!32376 e!199446))

(declare-fun array_inv!5764 (array!16511) Bool)

(assert (=> start!32376 (array_inv!5764 a!3305)))

(assert (=> start!32376 true))

(assert (= (and start!32376 res!176312) b!322234))

(assert (= (and b!322234 res!176307) b!322235))

(assert (= (and b!322235 res!176305) b!322238))

(assert (= (and b!322238 res!176304) b!322239))

(assert (= (and b!322239 res!176308) b!322243))

(assert (= (and b!322243 res!176306) b!322237))

(assert (= (and b!322237 res!176311) b!322241))

(assert (= (and b!322241 res!176313) b!322240))

(assert (= (and b!322240 res!176310) b!322242))

(assert (= (and b!322242 res!176309) b!322245))

(assert (= (and b!322245 c!50593) b!322244))

(assert (= (and b!322245 (not c!50593)) b!322248))

(assert (= (and b!322244 c!50592) b!322233))

(assert (= (and b!322244 (not c!50592)) b!322246))

(assert (= (and b!322246 c!50594) b!322247))

(assert (= (and b!322246 (not c!50594)) b!322236))

(declare-fun m!330115 () Bool)

(assert (=> b!322242 m!330115))

(declare-fun m!330117 () Bool)

(assert (=> b!322237 m!330117))

(assert (=> b!322237 m!330117))

(declare-fun m!330119 () Bool)

(assert (=> b!322237 m!330119))

(declare-fun m!330121 () Bool)

(assert (=> b!322243 m!330121))

(declare-fun m!330123 () Bool)

(assert (=> b!322238 m!330123))

(declare-fun m!330125 () Bool)

(assert (=> start!32376 m!330125))

(declare-fun m!330127 () Bool)

(assert (=> start!32376 m!330127))

(assert (=> b!322244 m!330115))

(declare-fun m!330129 () Bool)

(assert (=> b!322246 m!330129))

(assert (=> b!322246 m!330129))

(declare-fun m!330131 () Bool)

(assert (=> b!322246 m!330131))

(declare-fun m!330133 () Bool)

(assert (=> b!322241 m!330133))

(assert (=> b!322245 m!330115))

(declare-fun m!330135 () Bool)

(assert (=> b!322239 m!330135))

(declare-fun m!330137 () Bool)

(assert (=> b!322240 m!330137))

(declare-fun m!330139 () Bool)

(assert (=> b!322235 m!330139))

(push 1)

