; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32668 () Bool)

(assert start!32668)

(declare-fun b!325998 () Bool)

(declare-fun e!200843 () Bool)

(declare-fun e!200845 () Bool)

(assert (=> b!325998 (= e!200843 e!200845)))

(declare-fun res!179191 () Bool)

(assert (=> b!325998 (=> (not res!179191) (not e!200845))))

(declare-datatypes ((array!16701 0))(
  ( (array!16702 (arr!7902 (Array (_ BitVec 32) (_ BitVec 64))) (size!8254 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16701)

(declare-datatypes ((SeekEntryResult!3044 0))(
  ( (MissingZero!3044 (index!14352 (_ BitVec 32))) (Found!3044 (index!14353 (_ BitVec 32))) (Intermediate!3044 (undefined!3856 Bool) (index!14354 (_ BitVec 32)) (x!32565 (_ BitVec 32))) (Undefined!3044) (MissingVacant!3044 (index!14355 (_ BitVec 32))) )
))
(declare-fun lt!157238 () SeekEntryResult!3044)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16701 (_ BitVec 32)) SeekEntryResult!3044)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325998 (= res!179191 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157238))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!325998 (= lt!157238 (Intermediate!3044 false resIndex!58 resX!58))))

(declare-fun res!179188 () Bool)

(assert (=> start!32668 (=> (not res!179188) (not e!200843))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32668 (= res!179188 (validMask!0 mask!3777))))

(assert (=> start!32668 e!200843))

(declare-fun array_inv!5856 (array!16701) Bool)

(assert (=> start!32668 (array_inv!5856 a!3305)))

(assert (=> start!32668 true))

(declare-fun b!325999 () Bool)

(declare-fun res!179196 () Bool)

(assert (=> b!325999 (=> (not res!179196) (not e!200845))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!325999 (= res!179196 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7902 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!326000 () Bool)

(declare-fun res!179189 () Bool)

(assert (=> b!326000 (=> (not res!179189) (not e!200843))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!326000 (= res!179189 (validKeyInArray!0 k!2497))))

(declare-fun b!326001 () Bool)

(declare-fun res!179192 () Bool)

(assert (=> b!326001 (=> (not res!179192) (not e!200843))))

(declare-fun arrayContainsKey!0 (array!16701 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!326001 (= res!179192 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!326002 () Bool)

(declare-fun res!179195 () Bool)

(assert (=> b!326002 (=> (not res!179195) (not e!200845))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!326002 (= res!179195 (and (= (select (arr!7902 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8254 a!3305))))))

(declare-fun b!326003 () Bool)

(declare-fun res!179190 () Bool)

(assert (=> b!326003 (=> (not res!179190) (not e!200843))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16701 (_ BitVec 32)) Bool)

(assert (=> b!326003 (= res!179190 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!326004 () Bool)

(declare-fun res!179187 () Bool)

(assert (=> b!326004 (=> (not res!179187) (not e!200845))))

(assert (=> b!326004 (= res!179187 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157238))))

(declare-fun b!326005 () Bool)

(declare-fun res!179193 () Bool)

(assert (=> b!326005 (=> (not res!179193) (not e!200843))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16701 (_ BitVec 32)) SeekEntryResult!3044)

(assert (=> b!326005 (= res!179193 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3044 i!1250)))))

(declare-fun b!326006 () Bool)

(declare-fun res!179194 () Bool)

(assert (=> b!326006 (=> (not res!179194) (not e!200843))))

(assert (=> b!326006 (= res!179194 (and (= (size!8254 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8254 a!3305))))))

(declare-fun b!326007 () Bool)

(assert (=> b!326007 (= e!200845 false)))

(declare-datatypes ((Unit!10097 0))(
  ( (Unit!10098) )
))
(declare-fun lt!157237 () Unit!10097)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16701 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10097)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!326007 (= lt!157237 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(assert (= (and start!32668 res!179188) b!326006))

(assert (= (and b!326006 res!179194) b!326000))

(assert (= (and b!326000 res!179189) b!326001))

(assert (= (and b!326001 res!179192) b!326005))

(assert (= (and b!326005 res!179193) b!326003))

(assert (= (and b!326003 res!179190) b!325998))

(assert (= (and b!325998 res!179191) b!326002))

(assert (= (and b!326002 res!179195) b!326004))

(assert (= (and b!326004 res!179187) b!325999))

(assert (= (and b!325999 res!179196) b!326007))

(declare-fun m!332621 () Bool)

(assert (=> b!325998 m!332621))

(assert (=> b!325998 m!332621))

(declare-fun m!332623 () Bool)

(assert (=> b!325998 m!332623))

(declare-fun m!332625 () Bool)

(assert (=> b!326005 m!332625))

(declare-fun m!332627 () Bool)

(assert (=> b!326003 m!332627))

(declare-fun m!332629 () Bool)

(assert (=> b!325999 m!332629))

(declare-fun m!332631 () Bool)

(assert (=> b!326002 m!332631))

(declare-fun m!332633 () Bool)

(assert (=> b!326001 m!332633))

(declare-fun m!332635 () Bool)

(assert (=> b!326004 m!332635))

(declare-fun m!332637 () Bool)

(assert (=> start!32668 m!332637))

(declare-fun m!332639 () Bool)

(assert (=> start!32668 m!332639))

(declare-fun m!332641 () Bool)

(assert (=> b!326007 m!332641))

(assert (=> b!326007 m!332641))

(declare-fun m!332643 () Bool)

(assert (=> b!326007 m!332643))

(declare-fun m!332645 () Bool)

(assert (=> b!326000 m!332645))

(push 1)

(assert (not b!326005))

(assert (not b!325998))

(assert (not b!326007))

(assert (not b!326004))

(assert (not start!32668))

(assert (not b!326000))

