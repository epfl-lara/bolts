; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33226 () Bool)

(assert start!33226)

(declare-fun b!330159 () Bool)

(declare-datatypes ((Unit!10273 0))(
  ( (Unit!10274) )
))
(declare-fun e!202692 () Unit!10273)

(declare-fun Unit!10275 () Unit!10273)

(assert (=> b!330159 (= e!202692 Unit!10275)))

(declare-fun b!330160 () Bool)

(assert (=> b!330160 false))

(declare-fun lt!158459 () Unit!10273)

(assert (=> b!330160 (= lt!158459 e!202692)))

(declare-datatypes ((array!16881 0))(
  ( (array!16882 (arr!7980 (Array (_ BitVec 32) (_ BitVec 64))) (size!8332 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16881)

(declare-fun c!51718 () Bool)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3122 0))(
  ( (MissingZero!3122 (index!14664 (_ BitVec 32))) (Found!3122 (index!14665 (_ BitVec 32))) (Intermediate!3122 (undefined!3934 Bool) (index!14666 (_ BitVec 32)) (x!32908 (_ BitVec 32))) (Undefined!3122) (MissingVacant!3122 (index!14667 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16881 (_ BitVec 32)) SeekEntryResult!3122)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330160 (= c!51718 (is-Intermediate!3122 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun e!202696 () Unit!10273)

(declare-fun Unit!10276 () Unit!10273)

(assert (=> b!330160 (= e!202696 Unit!10276)))

(declare-fun b!330161 () Bool)

(declare-fun res!182014 () Bool)

(declare-fun e!202693 () Bool)

(assert (=> b!330161 (=> (not res!182014) (not e!202693))))

(declare-fun lt!158457 () SeekEntryResult!3122)

(assert (=> b!330161 (= res!182014 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158457))))

(declare-fun b!330163 () Bool)

(declare-fun res!182010 () Bool)

(declare-fun e!202694 () Bool)

(assert (=> b!330163 (=> (not res!182010) (not e!202694))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!330163 (= res!182010 (validKeyInArray!0 k!2497))))

(declare-fun b!330164 () Bool)

(declare-fun res!182015 () Bool)

(assert (=> b!330164 (=> (not res!182015) (not e!202694))))

(declare-fun arrayContainsKey!0 (array!16881 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!330164 (= res!182015 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!330165 () Bool)

(assert (=> b!330165 (= e!202693 (not (= (select (arr!7980 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!330165 (= index!1840 resIndex!58)))

(declare-fun lt!158458 () Unit!10273)

(declare-fun e!202695 () Unit!10273)

(assert (=> b!330165 (= lt!158458 e!202695)))

(declare-fun c!51717 () Bool)

(assert (=> b!330165 (= c!51717 (not (= resIndex!58 index!1840)))))

(declare-fun b!330166 () Bool)

(assert (=> b!330166 (= e!202695 e!202696)))

(declare-fun c!51719 () Bool)

(assert (=> b!330166 (= c!51719 (or (= (select (arr!7980 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7980 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!330167 () Bool)

(declare-fun res!182019 () Bool)

(assert (=> b!330167 (=> (not res!182019) (not e!202694))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16881 (_ BitVec 32)) SeekEntryResult!3122)

(assert (=> b!330167 (= res!182019 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3122 i!1250)))))

(declare-fun b!330168 () Bool)

(declare-fun Unit!10277 () Unit!10273)

(assert (=> b!330168 (= e!202692 Unit!10277)))

(assert (=> b!330168 false))

(declare-fun b!330169 () Bool)

(assert (=> b!330169 (= e!202694 e!202693)))

(declare-fun res!182017 () Bool)

(assert (=> b!330169 (=> (not res!182017) (not e!202693))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330169 (= res!182017 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158457))))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!330169 (= lt!158457 (Intermediate!3122 false resIndex!58 resX!58))))

(declare-fun b!330170 () Bool)

(declare-fun res!182012 () Bool)

(assert (=> b!330170 (=> (not res!182012) (not e!202693))))

(assert (=> b!330170 (= res!182012 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7980 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun res!182016 () Bool)

(assert (=> start!33226 (=> (not res!182016) (not e!202694))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33226 (= res!182016 (validMask!0 mask!3777))))

(assert (=> start!33226 e!202694))

(declare-fun array_inv!5934 (array!16881) Bool)

(assert (=> start!33226 (array_inv!5934 a!3305)))

(assert (=> start!33226 true))

(declare-fun b!330162 () Bool)

(declare-fun res!182011 () Bool)

(assert (=> b!330162 (=> (not res!182011) (not e!202694))))

(assert (=> b!330162 (= res!182011 (and (= (size!8332 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8332 a!3305))))))

(declare-fun b!330171 () Bool)

(declare-fun res!182018 () Bool)

(assert (=> b!330171 (=> (not res!182018) (not e!202693))))

(assert (=> b!330171 (= res!182018 (and (= (select (arr!7980 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8332 a!3305))))))

(declare-fun b!330172 () Bool)

(declare-fun Unit!10278 () Unit!10273)

(assert (=> b!330172 (= e!202695 Unit!10278)))

(declare-fun b!330173 () Bool)

(assert (=> b!330173 false))

(declare-fun Unit!10279 () Unit!10273)

(assert (=> b!330173 (= e!202696 Unit!10279)))

(declare-fun b!330174 () Bool)

(declare-fun res!182013 () Bool)

(assert (=> b!330174 (=> (not res!182013) (not e!202694))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16881 (_ BitVec 32)) Bool)

(assert (=> b!330174 (= res!182013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!33226 res!182016) b!330162))

(assert (= (and b!330162 res!182011) b!330163))

(assert (= (and b!330163 res!182010) b!330164))

(assert (= (and b!330164 res!182015) b!330167))

(assert (= (and b!330167 res!182019) b!330174))

(assert (= (and b!330174 res!182013) b!330169))

(assert (= (and b!330169 res!182017) b!330171))

(assert (= (and b!330171 res!182018) b!330161))

(assert (= (and b!330161 res!182014) b!330170))

(assert (= (and b!330170 res!182012) b!330165))

(assert (= (and b!330165 c!51717) b!330166))

(assert (= (and b!330165 (not c!51717)) b!330172))

(assert (= (and b!330166 c!51719) b!330173))

(assert (= (and b!330166 (not c!51719)) b!330160))

(assert (= (and b!330160 c!51718) b!330159))

(assert (= (and b!330160 (not c!51718)) b!330168))

(declare-fun m!335471 () Bool)

(assert (=> b!330171 m!335471))

(declare-fun m!335473 () Bool)

(assert (=> b!330167 m!335473))

(declare-fun m!335475 () Bool)

(assert (=> b!330174 m!335475))

(declare-fun m!335477 () Bool)

(assert (=> b!330165 m!335477))

(declare-fun m!335479 () Bool)

(assert (=> start!33226 m!335479))

(declare-fun m!335481 () Bool)

(assert (=> start!33226 m!335481))

(declare-fun m!335483 () Bool)

(assert (=> b!330164 m!335483))

(declare-fun m!335485 () Bool)

(assert (=> b!330163 m!335485))

(assert (=> b!330166 m!335477))

(declare-fun m!335487 () Bool)

(assert (=> b!330160 m!335487))

(assert (=> b!330160 m!335487))

(declare-fun m!335489 () Bool)

(assert (=> b!330160 m!335489))

(declare-fun m!335491 () Bool)

(assert (=> b!330169 m!335491))

(assert (=> b!330169 m!335491))

(declare-fun m!335493 () Bool)

(assert (=> b!330169 m!335493))

(declare-fun m!335495 () Bool)

(assert (=> b!330161 m!335495))

(assert (=> b!330170 m!335477))

(push 1)

(assert (not b!330174))

(assert (not b!330169))

