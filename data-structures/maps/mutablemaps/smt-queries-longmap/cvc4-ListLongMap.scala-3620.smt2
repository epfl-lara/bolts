; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49890 () Bool)

(assert start!49890)

(declare-fun b!547289 () Bool)

(declare-fun res!341017 () Bool)

(declare-fun e!316234 () Bool)

(assert (=> b!547289 (=> (not res!341017) (not e!316234))))

(declare-datatypes ((array!34510 0))(
  ( (array!34511 (arr!16574 (Array (_ BitVec 32) (_ BitVec 64))) (size!16938 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34510)

(assert (=> b!547289 (= res!341017 (and (bvsle #b00000000000000000000000000000000 (size!16938 a!3118)) (bvslt (size!16938 a!3118) #b01111111111111111111111111111111)))))

(declare-fun b!547290 () Bool)

(declare-fun res!341009 () Bool)

(assert (=> b!547290 (=> (not res!341009) (not e!316234))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34510 (_ BitVec 32)) Bool)

(assert (=> b!547290 (= res!341009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!547291 () Bool)

(declare-fun e!316237 () Bool)

(assert (=> b!547291 (= e!316237 e!316234)))

(declare-fun res!341014 () Bool)

(assert (=> b!547291 (=> (not res!341014) (not e!316234))))

(declare-datatypes ((SeekEntryResult!5030 0))(
  ( (MissingZero!5030 (index!22347 (_ BitVec 32))) (Found!5030 (index!22348 (_ BitVec 32))) (Intermediate!5030 (undefined!5842 Bool) (index!22349 (_ BitVec 32)) (x!51317 (_ BitVec 32))) (Undefined!5030) (MissingVacant!5030 (index!22350 (_ BitVec 32))) )
))
(declare-fun lt!249506 () SeekEntryResult!5030)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!547291 (= res!341014 (or (= lt!249506 (MissingZero!5030 i!1132)) (= lt!249506 (MissingVacant!5030 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34510 (_ BitVec 32)) SeekEntryResult!5030)

(assert (=> b!547291 (= lt!249506 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!547292 () Bool)

(declare-fun res!341013 () Bool)

(assert (=> b!547292 (=> (not res!341013) (not e!316237))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!547292 (= res!341013 (and (= (size!16938 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16938 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16938 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!547293 () Bool)

(declare-fun res!341011 () Bool)

(assert (=> b!547293 (=> (not res!341011) (not e!316237))))

(declare-fun arrayContainsKey!0 (array!34510 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547293 (= res!341011 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!547294 () Bool)

(declare-fun res!341016 () Bool)

(assert (=> b!547294 (=> (not res!341016) (not e!316234))))

(declare-datatypes ((List!10707 0))(
  ( (Nil!10704) (Cons!10703 (h!11670 (_ BitVec 64)) (t!16943 List!10707)) )
))
(declare-fun noDuplicate!225 (List!10707) Bool)

(assert (=> b!547294 (= res!341016 (noDuplicate!225 Nil!10704))))

(declare-fun b!547295 () Bool)

(declare-fun res!341015 () Bool)

(assert (=> b!547295 (=> (not res!341015) (not e!316237))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547295 (= res!341015 (validKeyInArray!0 (select (arr!16574 a!3118) j!142)))))

(declare-fun b!547296 () Bool)

(declare-fun e!316236 () Bool)

(assert (=> b!547296 (= e!316234 e!316236)))

(declare-fun res!341012 () Bool)

(assert (=> b!547296 (=> res!341012 e!316236)))

(declare-fun contains!2825 (List!10707 (_ BitVec 64)) Bool)

(assert (=> b!547296 (= res!341012 (contains!2825 Nil!10704 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!341018 () Bool)

(assert (=> start!49890 (=> (not res!341018) (not e!316237))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49890 (= res!341018 (validMask!0 mask!3119))))

(assert (=> start!49890 e!316237))

(assert (=> start!49890 true))

(declare-fun array_inv!12348 (array!34510) Bool)

(assert (=> start!49890 (array_inv!12348 a!3118)))

(declare-fun b!547297 () Bool)

(assert (=> b!547297 (= e!316236 (contains!2825 Nil!10704 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!547298 () Bool)

(declare-fun res!341010 () Bool)

(assert (=> b!547298 (=> (not res!341010) (not e!316237))))

(assert (=> b!547298 (= res!341010 (validKeyInArray!0 k!1914))))

(assert (= (and start!49890 res!341018) b!547292))

(assert (= (and b!547292 res!341013) b!547295))

(assert (= (and b!547295 res!341015) b!547298))

(assert (= (and b!547298 res!341010) b!547293))

(assert (= (and b!547293 res!341011) b!547291))

(assert (= (and b!547291 res!341014) b!547290))

(assert (= (and b!547290 res!341009) b!547289))

(assert (= (and b!547289 res!341017) b!547294))

(assert (= (and b!547294 res!341016) b!547296))

(assert (= (and b!547296 (not res!341012)) b!547297))

(declare-fun m!524577 () Bool)

(assert (=> b!547290 m!524577))

(declare-fun m!524579 () Bool)

(assert (=> b!547298 m!524579))

(declare-fun m!524581 () Bool)

(assert (=> b!547293 m!524581))

(declare-fun m!524583 () Bool)

(assert (=> start!49890 m!524583))

(declare-fun m!524585 () Bool)

(assert (=> start!49890 m!524585))

(declare-fun m!524587 () Bool)

(assert (=> b!547296 m!524587))

(declare-fun m!524589 () Bool)

(assert (=> b!547295 m!524589))

(assert (=> b!547295 m!524589))

(declare-fun m!524591 () Bool)

(assert (=> b!547295 m!524591))

(declare-fun m!524593 () Bool)

(assert (=> b!547291 m!524593))

(declare-fun m!524595 () Bool)

(assert (=> b!547297 m!524595))

(declare-fun m!524597 () Bool)

(assert (=> b!547294 m!524597))

(push 1)

(assert (not b!547298))

(assert (not b!547296))

(assert (not b!547297))

(assert (not b!547295))

(assert (not b!547290))

(assert (not start!49890))

(assert (not b!547293))

(assert (not b!547294))

(assert (not b!547291))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!82387 () Bool)

(declare-fun lt!249530 () SeekEntryResult!5030)

(assert (=> d!82387 (and (or (is-Undefined!5030 lt!249530) (not (is-Found!5030 lt!249530)) (and (bvsge (index!22348 lt!249530) #b00000000000000000000000000000000) (bvslt (index!22348 lt!249530) (size!16938 a!3118)))) (or (is-Undefined!5030 lt!249530) (is-Found!5030 lt!249530) (not (is-MissingZero!5030 lt!249530)) (and (bvsge (index!22347 lt!249530) #b00000000000000000000000000000000) (bvslt (index!22347 lt!249530) (size!16938 a!3118)))) (or (is-Undefined!5030 lt!249530) (is-Found!5030 lt!249530) (is-MissingZero!5030 lt!249530) (not (is-MissingVacant!5030 lt!249530)) (and (bvsge (index!22350 lt!249530) #b00000000000000000000000000000000) (bvslt (index!22350 lt!249530) (size!16938 a!3118)))) (or (is-Undefined!5030 lt!249530) (ite (is-Found!5030 lt!249530) (= (select (arr!16574 a!3118) (index!22348 lt!249530)) k!1914) (ite (is-MissingZero!5030 lt!249530) (= (select (arr!16574 a!3118) (index!22347 lt!249530)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5030 lt!249530) (= (select (arr!16574 a!3118) (index!22350 lt!249530)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!316287 () SeekEntryResult!5030)

(assert (=> d!82387 (= lt!249530 e!316287)))

(declare-fun c!63477 () Bool)

(declare-fun lt!249529 () SeekEntryResult!5030)

(assert (=> d!82387 (= c!63477 (and (is-Intermediate!5030 lt!249529) (undefined!5842 lt!249529)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34510 (_ BitVec 32)) SeekEntryResult!5030)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!82387 (= lt!249529 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!82387 (validMask!0 mask!3119)))

(assert (=> d!82387 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!249530)))

(declare-fun b!547355 () Bool)

(declare-fun c!63479 () Bool)

(declare-fun lt!249531 () (_ BitVec 64))

(assert (=> b!547355 (= c!63479 (= lt!249531 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!316285 () SeekEntryResult!5030)

(declare-fun e!316286 () SeekEntryResult!5030)

(assert (=> b!547355 (= e!316285 e!316286)))

(declare-fun b!547356 () Bool)

(assert (=> b!547356 (= e!316285 (Found!5030 (index!22349 lt!249529)))))

(declare-fun b!547357 () Bool)

(assert (=> b!547357 (= e!316286 (MissingZero!5030 (index!22349 lt!249529)))))

(declare-fun b!547358 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34510 (_ BitVec 32)) SeekEntryResult!5030)

(assert (=> b!547358 (= e!316286 (seekKeyOrZeroReturnVacant!0 (x!51317 lt!249529) (index!22349 lt!249529) (index!22349 lt!249529) k!1914 a!3118 mask!3119))))

(declare-fun b!547359 () Bool)

(assert (=> b!547359 (= e!316287 Undefined!5030)))

(declare-fun b!547360 () Bool)

(assert (=> b!547360 (= e!316287 e!316285)))

(assert (=> b!547360 (= lt!249531 (select (arr!16574 a!3118) (index!22349 lt!249529)))))

(declare-fun c!63478 () Bool)

(assert (=> b!547360 (= c!63478 (= lt!249531 k!1914))))

(assert (= (and d!82387 c!63477) b!547359))

(assert (= (and d!82387 (not c!63477)) b!547360))

(assert (= (and b!547360 c!63478) b!547356))

(assert (= (and b!547360 (not c!63478)) b!547355))

(assert (= (and b!547355 c!63479) b!547357))

(assert (= (and b!547355 (not c!63479)) b!547358))

(declare-fun m!524637 () Bool)

(assert (=> d!82387 m!524637))

(declare-fun m!524639 () Bool)

(assert (=> d!82387 m!524639))

(declare-fun m!524641 () Bool)

(assert (=> d!82387 m!524641))

(assert (=> d!82387 m!524583))

(declare-fun m!524643 () Bool)

(assert (=> d!82387 m!524643))

(declare-fun m!524645 () Bool)

(assert (=> d!82387 m!524645))

(assert (=> d!82387 m!524643))

(declare-fun m!524647 () Bool)

(assert (=> b!547358 m!524647))

(declare-fun m!524649 () Bool)

(assert (=> b!547360 m!524649))

(assert (=> b!547291 d!82387))

(declare-fun d!82405 () Bool)

(declare-fun lt!249546 () Bool)

(declare-fun content!230 (List!10707) (Set (_ BitVec 64)))

(assert (=> d!82405 (= lt!249546 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!230 Nil!10704)))))

(declare-fun e!316304 () Bool)

(assert (=> d!82405 (= lt!249546 e!316304)))

(declare-fun res!341062 () Bool)

(assert (=> d!82405 (=> (not res!341062) (not e!316304))))

(assert (=> d!82405 (= res!341062 (is-Cons!10703 Nil!10704))))

(assert (=> d!82405 (= (contains!2825 Nil!10704 #b0000000000000000000000000000000000000000000000000000000000000000) lt!249546)))

(declare-fun b!547389 () Bool)

(declare-fun e!316305 () Bool)

(assert (=> b!547389 (= e!316304 e!316305)))

(declare-fun res!341061 () Bool)

(assert (=> b!547389 (=> res!341061 e!316305)))

(assert (=> b!547389 (= res!341061 (= (h!11670 Nil!10704) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!547390 () Bool)

(assert (=> b!547390 (= e!316305 (contains!2825 (t!16943 Nil!10704) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!82405 res!341062) b!547389))

(assert (= (and b!547389 (not res!341061)) b!547390))

(declare-fun m!524651 () Bool)

(assert (=> d!82405 m!524651))

(declare-fun m!524653 () Bool)

(assert (=> d!82405 m!524653))

(declare-fun m!524655 () Bool)

(assert (=> b!547390 m!524655))

(assert (=> b!547296 d!82405))

(declare-fun d!82407 () Bool)

(assert (=> d!82407 (= (validKeyInArray!0 (select (arr!16574 a!3118) j!142)) (and (not (= (select (arr!16574 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16574 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!547295 d!82407))

