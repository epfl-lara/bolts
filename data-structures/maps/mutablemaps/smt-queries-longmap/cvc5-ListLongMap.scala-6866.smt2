; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86482 () Bool)

(assert start!86482)

(declare-fun b!1000736 () Bool)

(declare-fun e!564004 () Bool)

(declare-fun e!564008 () Bool)

(assert (=> b!1000736 (= e!564004 e!564008)))

(declare-fun res!670375 () Bool)

(assert (=> b!1000736 (=> (not res!670375) (not e!564008))))

(declare-datatypes ((SeekEntryResult!9371 0))(
  ( (MissingZero!9371 (index!39854 (_ BitVec 32))) (Found!9371 (index!39855 (_ BitVec 32))) (Intermediate!9371 (undefined!10183 Bool) (index!39856 (_ BitVec 32)) (x!87312 (_ BitVec 32))) (Undefined!9371) (MissingVacant!9371 (index!39857 (_ BitVec 32))) )
))
(declare-fun lt!442348 () SeekEntryResult!9371)

(declare-fun lt!442351 () SeekEntryResult!9371)

(assert (=> b!1000736 (= res!670375 (= lt!442348 lt!442351))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000736 (= lt!442351 (Intermediate!9371 false resIndex!38 resX!38))))

(declare-datatypes ((array!63235 0))(
  ( (array!63236 (arr!30439 (Array (_ BitVec 32) (_ BitVec 64))) (size!30942 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63235)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63235 (_ BitVec 32)) SeekEntryResult!9371)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000736 (= lt!442348 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30439 a!3219) j!170) mask!3464) (select (arr!30439 a!3219) j!170) a!3219 mask!3464))))

(declare-fun res!670379 () Bool)

(declare-fun e!564005 () Bool)

(assert (=> start!86482 (=> (not res!670379) (not e!564005))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86482 (= res!670379 (validMask!0 mask!3464))))

(assert (=> start!86482 e!564005))

(declare-fun array_inv!23429 (array!63235) Bool)

(assert (=> start!86482 (array_inv!23429 a!3219)))

(assert (=> start!86482 true))

(declare-fun b!1000737 () Bool)

(declare-fun res!670371 () Bool)

(assert (=> b!1000737 (=> (not res!670371) (not e!564004))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1000737 (= res!670371 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30942 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30942 a!3219))))))

(declare-fun b!1000738 () Bool)

(declare-fun res!670376 () Bool)

(assert (=> b!1000738 (=> (not res!670376) (not e!564005))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000738 (= res!670376 (validKeyInArray!0 k!2224))))

(declare-fun b!1000739 () Bool)

(declare-fun res!670378 () Bool)

(assert (=> b!1000739 (=> (not res!670378) (not e!564008))))

(assert (=> b!1000739 (= res!670378 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30439 a!3219) j!170) a!3219 mask!3464) lt!442351))))

(declare-fun b!1000740 () Bool)

(declare-fun e!564007 () Bool)

(assert (=> b!1000740 (= e!564008 e!564007)))

(declare-fun res!670370 () Bool)

(assert (=> b!1000740 (=> (not res!670370) (not e!564007))))

(declare-fun lt!442352 () (_ BitVec 64))

(declare-fun lt!442350 () array!63235)

(assert (=> b!1000740 (= res!670370 (not (= lt!442348 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442352 mask!3464) lt!442352 lt!442350 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1000740 (= lt!442352 (select (store (arr!30439 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1000740 (= lt!442350 (array!63236 (store (arr!30439 a!3219) i!1194 k!2224) (size!30942 a!3219)))))

(declare-fun b!1000741 () Bool)

(declare-fun res!670381 () Bool)

(assert (=> b!1000741 (=> (not res!670381) (not e!564004))))

(declare-datatypes ((List!21241 0))(
  ( (Nil!21238) (Cons!21237 (h!22414 (_ BitVec 64)) (t!30250 List!21241)) )
))
(declare-fun arrayNoDuplicates!0 (array!63235 (_ BitVec 32) List!21241) Bool)

(assert (=> b!1000741 (= res!670381 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21238))))

(declare-fun b!1000742 () Bool)

(declare-fun res!670374 () Bool)

(assert (=> b!1000742 (=> (not res!670374) (not e!564005))))

(assert (=> b!1000742 (= res!670374 (and (= (size!30942 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30942 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30942 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1000743 () Bool)

(assert (=> b!1000743 (= e!564005 e!564004)))

(declare-fun res!670372 () Bool)

(assert (=> b!1000743 (=> (not res!670372) (not e!564004))))

(declare-fun lt!442353 () SeekEntryResult!9371)

(assert (=> b!1000743 (= res!670372 (or (= lt!442353 (MissingVacant!9371 i!1194)) (= lt!442353 (MissingZero!9371 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63235 (_ BitVec 32)) SeekEntryResult!9371)

(assert (=> b!1000743 (= lt!442353 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1000744 () Bool)

(declare-fun res!670373 () Bool)

(assert (=> b!1000744 (=> (not res!670373) (not e!564005))))

(declare-fun arrayContainsKey!0 (array!63235 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000744 (= res!670373 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000745 () Bool)

(declare-fun res!670380 () Bool)

(assert (=> b!1000745 (=> (not res!670380) (not e!564005))))

(assert (=> b!1000745 (= res!670380 (validKeyInArray!0 (select (arr!30439 a!3219) j!170)))))

(declare-fun b!1000746 () Bool)

(declare-fun res!670377 () Bool)

(assert (=> b!1000746 (=> (not res!670377) (not e!564004))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63235 (_ BitVec 32)) Bool)

(assert (=> b!1000746 (= res!670377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000747 () Bool)

(assert (=> b!1000747 (= e!564007 false)))

(declare-fun lt!442349 () SeekEntryResult!9371)

(assert (=> b!1000747 (= lt!442349 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442352 lt!442350 mask!3464))))

(assert (= (and start!86482 res!670379) b!1000742))

(assert (= (and b!1000742 res!670374) b!1000745))

(assert (= (and b!1000745 res!670380) b!1000738))

(assert (= (and b!1000738 res!670376) b!1000744))

(assert (= (and b!1000744 res!670373) b!1000743))

(assert (= (and b!1000743 res!670372) b!1000746))

(assert (= (and b!1000746 res!670377) b!1000741))

(assert (= (and b!1000741 res!670381) b!1000737))

(assert (= (and b!1000737 res!670371) b!1000736))

(assert (= (and b!1000736 res!670375) b!1000739))

(assert (= (and b!1000739 res!670378) b!1000740))

(assert (= (and b!1000740 res!670370) b!1000747))

(declare-fun m!926973 () Bool)

(assert (=> b!1000738 m!926973))

(declare-fun m!926975 () Bool)

(assert (=> b!1000740 m!926975))

(assert (=> b!1000740 m!926975))

(declare-fun m!926977 () Bool)

(assert (=> b!1000740 m!926977))

(declare-fun m!926979 () Bool)

(assert (=> b!1000740 m!926979))

(declare-fun m!926981 () Bool)

(assert (=> b!1000740 m!926981))

(declare-fun m!926983 () Bool)

(assert (=> b!1000739 m!926983))

(assert (=> b!1000739 m!926983))

(declare-fun m!926985 () Bool)

(assert (=> b!1000739 m!926985))

(declare-fun m!926987 () Bool)

(assert (=> b!1000747 m!926987))

(assert (=> b!1000736 m!926983))

(assert (=> b!1000736 m!926983))

(declare-fun m!926989 () Bool)

(assert (=> b!1000736 m!926989))

(assert (=> b!1000736 m!926989))

(assert (=> b!1000736 m!926983))

(declare-fun m!926991 () Bool)

(assert (=> b!1000736 m!926991))

(declare-fun m!926993 () Bool)

(assert (=> b!1000743 m!926993))

(declare-fun m!926995 () Bool)

(assert (=> start!86482 m!926995))

(declare-fun m!926997 () Bool)

(assert (=> start!86482 m!926997))

(declare-fun m!926999 () Bool)

(assert (=> b!1000744 m!926999))

(declare-fun m!927001 () Bool)

(assert (=> b!1000741 m!927001))

(assert (=> b!1000745 m!926983))

(assert (=> b!1000745 m!926983))

(declare-fun m!927003 () Bool)

(assert (=> b!1000745 m!927003))

(declare-fun m!927005 () Bool)

(assert (=> b!1000746 m!927005))

(push 1)

