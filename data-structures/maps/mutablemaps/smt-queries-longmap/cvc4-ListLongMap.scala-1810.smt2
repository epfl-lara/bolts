; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32680 () Bool)

(assert start!32680)

(declare-fun b!326178 () Bool)

(declare-fun res!179368 () Bool)

(declare-fun e!200899 () Bool)

(assert (=> b!326178 (=> (not res!179368) (not e!200899))))

(declare-datatypes ((array!16713 0))(
  ( (array!16714 (arr!7908 (Array (_ BitVec 32) (_ BitVec 64))) (size!8260 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16713)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!326178 (= res!179368 (and (= (select (arr!7908 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8260 a!3305))))))

(declare-fun b!326179 () Bool)

(declare-fun res!179370 () Bool)

(declare-fun e!200897 () Bool)

(assert (=> b!326179 (=> (not res!179370) (not e!200897))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16713 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326179 (= res!179370 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326180 () Bool)

(declare-fun res!179367 () Bool)

(assert (=> b!326180 (=> (not res!179367) (not e!200899))))

(declare-datatypes ((SeekEntryResult!3050 0))(
  ( (MissingZero!3050 (index!14376 (_ BitVec 32))) (Found!3050 (index!14377 (_ BitVec 32))) (Intermediate!3050 (undefined!3862 Bool) (index!14378 (_ BitVec 32)) (x!32587 (_ BitVec 32))) (Undefined!3050) (MissingVacant!3050 (index!14379 (_ BitVec 32))) )
))
(declare-fun lt!157273 () SeekEntryResult!3050)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16713 (_ BitVec 32)) SeekEntryResult!3050)

(assert (=> b!326180 (= res!179367 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157273))))

(declare-fun b!326181 () Bool)

(declare-fun res!179373 () Bool)

(assert (=> b!326181 (=> (not res!179373) (not e!200897))))

(assert (=> b!326181 (= res!179373 (and (= (size!8260 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8260 a!3305))))))

(declare-fun b!326182 () Bool)

(declare-fun res!179371 () Bool)

(assert (=> b!326182 (=> (not res!179371) (not e!200897))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326182 (= res!179371 (validKeyInArray!0 k!2497))))

(declare-fun b!326183 () Bool)

(assert (=> b!326183 (= e!200899 false)))

(declare-datatypes ((Unit!10109 0))(
  ( (Unit!10110) )
))
(declare-fun lt!157274 () Unit!10109)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16713 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10109)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326183 (= lt!157274 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!326184 () Bool)

(declare-fun res!179374 () Bool)

(assert (=> b!326184 (=> (not res!179374) (not e!200897))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16713 (_ BitVec 32)) SeekEntryResult!3050)

(assert (=> b!326184 (= res!179374 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3050 i!1250)))))

(declare-fun b!326185 () Bool)

(declare-fun res!179372 () Bool)

(assert (=> b!326185 (=> (not res!179372) (not e!200899))))

(assert (=> b!326185 (= res!179372 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7908 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326186 () Bool)

(assert (=> b!326186 (= e!200897 e!200899)))

(declare-fun res!179369 () Bool)

(assert (=> b!326186 (=> (not res!179369) (not e!200899))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326186 (= res!179369 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157273))))

(assert (=> b!326186 (= lt!157273 (Intermediate!3050 false resIndex!58 resX!58))))

(declare-fun res!179375 () Bool)

(assert (=> start!32680 (=> (not res!179375) (not e!200897))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32680 (= res!179375 (validMask!0 mask!3777))))

(assert (=> start!32680 e!200897))

(declare-fun array_inv!5862 (array!16713) Bool)

(assert (=> start!32680 (array_inv!5862 a!3305)))

(assert (=> start!32680 true))

(declare-fun b!326187 () Bool)

(declare-fun res!179376 () Bool)

(assert (=> b!326187 (=> (not res!179376) (not e!200897))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16713 (_ BitVec 32)) Bool)

(assert (=> b!326187 (= res!179376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32680 res!179375) b!326181))

(assert (= (and b!326181 res!179373) b!326182))

(assert (= (and b!326182 res!179371) b!326179))

(assert (= (and b!326179 res!179370) b!326184))

(assert (= (and b!326184 res!179374) b!326187))

(assert (= (and b!326187 res!179376) b!326186))

(assert (= (and b!326186 res!179369) b!326178))

(assert (= (and b!326178 res!179368) b!326180))

(assert (= (and b!326180 res!179367) b!326185))

(assert (= (and b!326185 res!179372) b!326183))

(declare-fun m!332777 () Bool)

(assert (=> b!326184 m!332777))

(declare-fun m!332779 () Bool)

(assert (=> b!326187 m!332779))

(declare-fun m!332781 () Bool)

(assert (=> b!326182 m!332781))

(declare-fun m!332783 () Bool)

(assert (=> b!326179 m!332783))

(declare-fun m!332785 () Bool)

(assert (=> b!326178 m!332785))

(declare-fun m!332787 () Bool)

(assert (=> b!326185 m!332787))

(declare-fun m!332789 () Bool)

(assert (=> b!326183 m!332789))

(assert (=> b!326183 m!332789))

(declare-fun m!332791 () Bool)

(assert (=> b!326183 m!332791))

(declare-fun m!332793 () Bool)

(assert (=> b!326180 m!332793))

(declare-fun m!332795 () Bool)

(assert (=> b!326186 m!332795))

(assert (=> b!326186 m!332795))

(declare-fun m!332797 () Bool)

(assert (=> b!326186 m!332797))

(declare-fun m!332799 () Bool)

(assert (=> start!32680 m!332799))

(declare-fun m!332801 () Bool)

(assert (=> start!32680 m!332801))

(push 1)

(assert (not b!326186))

(assert (not start!32680))

(assert (not b!326182))

(assert (not b!326179))

(assert (not b!326184))

