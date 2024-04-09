; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33300 () Bool)

(assert start!33300)

(declare-fun b!330844 () Bool)

(declare-fun res!182409 () Bool)

(declare-fun e!203019 () Bool)

(assert (=> b!330844 (=> (not res!182409) (not e!203019))))

(declare-datatypes ((array!16904 0))(
  ( (array!16905 (arr!7990 (Array (_ BitVec 32) (_ BitVec 64))) (size!8342 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16904)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!330844 (= res!182409 (and (= (select (arr!7990 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8342 a!3305))))))

(declare-fun b!330845 () Bool)

(declare-fun res!182404 () Bool)

(declare-fun e!203018 () Bool)

(assert (=> b!330845 (=> (not res!182404) (not e!203018))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16904 (_ BitVec 32)) Bool)

(assert (=> b!330845 (= res!182404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!330846 () Bool)

(declare-fun res!182406 () Bool)

(assert (=> b!330846 (=> (not res!182406) (not e!203018))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16904 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!330846 (= res!182406 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!330847 () Bool)

(assert (=> b!330847 (= e!203018 e!203019)))

(declare-fun res!182408 () Bool)

(assert (=> b!330847 (=> (not res!182408) (not e!203019))))

(declare-datatypes ((SeekEntryResult!3132 0))(
  ( (MissingZero!3132 (index!14704 (_ BitVec 32))) (Found!3132 (index!14705 (_ BitVec 32))) (Intermediate!3132 (undefined!3944 Bool) (index!14706 (_ BitVec 32)) (x!32959 (_ BitVec 32))) (Undefined!3132) (MissingVacant!3132 (index!14707 (_ BitVec 32))) )
))
(declare-fun lt!158662 () SeekEntryResult!3132)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16904 (_ BitVec 32)) SeekEntryResult!3132)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330847 (= res!182408 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158662))))

(assert (=> b!330847 (= lt!158662 (Intermediate!3132 false resIndex!58 resX!58))))

(declare-fun b!330848 () Bool)

(declare-fun res!182411 () Bool)

(assert (=> b!330848 (=> (not res!182411) (not e!203019))))

(assert (=> b!330848 (= res!182411 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7990 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!330849 () Bool)

(declare-fun res!182407 () Bool)

(assert (=> b!330849 (=> (not res!182407) (not e!203018))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16904 (_ BitVec 32)) SeekEntryResult!3132)

(assert (=> b!330849 (= res!182407 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3132 i!1250)))))

(declare-fun b!330850 () Bool)

(declare-fun res!182412 () Bool)

(assert (=> b!330850 (=> (not res!182412) (not e!203019))))

(assert (=> b!330850 (= res!182412 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158662))))

(declare-fun b!330851 () Bool)

(assert (=> b!330851 (= e!203019 false)))

(declare-datatypes ((Unit!10322 0))(
  ( (Unit!10323) )
))
(declare-fun lt!158663 () Unit!10322)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16904 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10322)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330851 (= lt!158663 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun b!330852 () Bool)

(declare-fun res!182405 () Bool)

(assert (=> b!330852 (=> (not res!182405) (not e!203018))))

(assert (=> b!330852 (= res!182405 (and (= (size!8342 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8342 a!3305))))))

(declare-fun b!330843 () Bool)

(declare-fun res!182403 () Bool)

(assert (=> b!330843 (=> (not res!182403) (not e!203018))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!330843 (= res!182403 (validKeyInArray!0 k!2497))))

(declare-fun res!182410 () Bool)

(assert (=> start!33300 (=> (not res!182410) (not e!203018))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33300 (= res!182410 (validMask!0 mask!3777))))

(assert (=> start!33300 e!203018))

(declare-fun array_inv!5944 (array!16904) Bool)

(assert (=> start!33300 (array_inv!5944 a!3305)))

(assert (=> start!33300 true))

(assert (= (and start!33300 res!182410) b!330852))

(assert (= (and b!330852 res!182405) b!330843))

(assert (= (and b!330843 res!182403) b!330846))

(assert (= (and b!330846 res!182406) b!330849))

(assert (= (and b!330849 res!182407) b!330845))

(assert (= (and b!330845 res!182404) b!330847))

(assert (= (and b!330847 res!182408) b!330844))

(assert (= (and b!330844 res!182409) b!330850))

(assert (= (and b!330850 res!182412) b!330848))

(assert (= (and b!330848 res!182411) b!330851))

(declare-fun m!335893 () Bool)

(assert (=> b!330849 m!335893))

(declare-fun m!335895 () Bool)

(assert (=> b!330846 m!335895))

(declare-fun m!335897 () Bool)

(assert (=> start!33300 m!335897))

(declare-fun m!335899 () Bool)

(assert (=> start!33300 m!335899))

(declare-fun m!335901 () Bool)

(assert (=> b!330844 m!335901))

(declare-fun m!335903 () Bool)

(assert (=> b!330847 m!335903))

(assert (=> b!330847 m!335903))

(declare-fun m!335905 () Bool)

(assert (=> b!330847 m!335905))

(declare-fun m!335907 () Bool)

(assert (=> b!330850 m!335907))

(declare-fun m!335909 () Bool)

(assert (=> b!330843 m!335909))

(declare-fun m!335911 () Bool)

(assert (=> b!330848 m!335911))

(declare-fun m!335913 () Bool)

(assert (=> b!330851 m!335913))

(assert (=> b!330851 m!335913))

(declare-fun m!335915 () Bool)

(assert (=> b!330851 m!335915))

(declare-fun m!335917 () Bool)

(assert (=> b!330845 m!335917))

(push 1)

