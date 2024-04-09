; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32258 () Bool)

(assert start!32258)

(declare-fun b!321026 () Bool)

(declare-fun res!175305 () Bool)

(declare-fun e!198996 () Bool)

(assert (=> b!321026 (=> (not res!175305) (not e!198996))))

(declare-datatypes ((array!16444 0))(
  ( (array!16445 (arr!7778 (Array (_ BitVec 32) (_ BitVec 64))) (size!8130 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16444)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16444 (_ BitVec 32)) Bool)

(assert (=> b!321026 (= res!175305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!175309 () Bool)

(assert (=> start!32258 (=> (not res!175309) (not e!198996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32258 (= res!175309 (validMask!0 mask!3777))))

(assert (=> start!32258 e!198996))

(declare-fun array_inv!5732 (array!16444) Bool)

(assert (=> start!32258 (array_inv!5732 a!3305)))

(assert (=> start!32258 true))

(declare-fun b!321027 () Bool)

(declare-fun res!175310 () Bool)

(assert (=> b!321027 (=> (not res!175310) (not e!198996))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321027 (= res!175310 (validKeyInArray!0 k0!2497))))

(declare-fun b!321028 () Bool)

(declare-fun res!175304 () Bool)

(assert (=> b!321028 (=> (not res!175304) (not e!198996))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2920 0))(
  ( (MissingZero!2920 (index!13856 (_ BitVec 32))) (Found!2920 (index!13857 (_ BitVec 32))) (Intermediate!2920 (undefined!3732 Bool) (index!13858 (_ BitVec 32)) (x!32086 (_ BitVec 32))) (Undefined!2920) (MissingVacant!2920 (index!13859 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16444 (_ BitVec 32)) SeekEntryResult!2920)

(assert (=> b!321028 (= res!175304 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2920 i!1250)))))

(declare-fun b!321029 () Bool)

(declare-fun res!175307 () Bool)

(assert (=> b!321029 (=> (not res!175307) (not e!198996))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16444 (_ BitVec 32)) SeekEntryResult!2920)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321029 (= res!175307 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) (Intermediate!2920 false resIndex!58 resX!58)))))

(declare-fun b!321030 () Bool)

(declare-fun res!175306 () Bool)

(assert (=> b!321030 (=> (not res!175306) (not e!198996))))

(declare-fun arrayContainsKey!0 (array!16444 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321030 (= res!175306 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321031 () Bool)

(assert (=> b!321031 (= e!198996 false)))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun lt!156131 () SeekEntryResult!2920)

(assert (=> b!321031 (= lt!156131 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777))))

(declare-fun b!321032 () Bool)

(declare-fun res!175311 () Bool)

(assert (=> b!321032 (=> (not res!175311) (not e!198996))))

(assert (=> b!321032 (= res!175311 (and (= (size!8130 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8130 a!3305))))))

(declare-fun b!321033 () Bool)

(declare-fun res!175308 () Bool)

(assert (=> b!321033 (=> (not res!175308) (not e!198996))))

(assert (=> b!321033 (= res!175308 (and (= (select (arr!7778 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8130 a!3305))))))

(assert (= (and start!32258 res!175309) b!321032))

(assert (= (and b!321032 res!175311) b!321027))

(assert (= (and b!321027 res!175310) b!321030))

(assert (= (and b!321030 res!175306) b!321028))

(assert (= (and b!321028 res!175304) b!321026))

(assert (= (and b!321026 res!175305) b!321029))

(assert (= (and b!321029 res!175307) b!321033))

(assert (= (and b!321033 res!175308) b!321031))

(declare-fun m!329253 () Bool)

(assert (=> b!321029 m!329253))

(assert (=> b!321029 m!329253))

(declare-fun m!329255 () Bool)

(assert (=> b!321029 m!329255))

(declare-fun m!329257 () Bool)

(assert (=> b!321026 m!329257))

(declare-fun m!329259 () Bool)

(assert (=> start!32258 m!329259))

(declare-fun m!329261 () Bool)

(assert (=> start!32258 m!329261))

(declare-fun m!329263 () Bool)

(assert (=> b!321033 m!329263))

(declare-fun m!329265 () Bool)

(assert (=> b!321027 m!329265))

(declare-fun m!329267 () Bool)

(assert (=> b!321030 m!329267))

(declare-fun m!329269 () Bool)

(assert (=> b!321031 m!329269))

(declare-fun m!329271 () Bool)

(assert (=> b!321028 m!329271))

(check-sat (not b!321028) (not b!321029) (not start!32258) (not b!321031) (not b!321030) (not b!321026) (not b!321027))
