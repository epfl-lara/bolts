; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86528 () Bool)

(assert start!86528)

(declare-fun b!1001731 () Bool)

(declare-fun e!564452 () Bool)

(declare-fun e!564449 () Bool)

(assert (=> b!1001731 (= e!564452 e!564449)))

(declare-fun res!671370 () Bool)

(assert (=> b!1001731 (=> (not res!671370) (not e!564449))))

(declare-datatypes ((array!63281 0))(
  ( (array!63282 (arr!30462 (Array (_ BitVec 32) (_ BitVec 64))) (size!30965 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63281)

(declare-fun lt!442838 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1001731 (= res!671370 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!442838 #b00000000000000000000000000000000) (bvslt lt!442838 (size!30965 a!3219))))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001731 (= lt!442838 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1001732 () Bool)

(declare-fun res!671367 () Bool)

(declare-fun e!564448 () Bool)

(assert (=> b!1001732 (=> (not res!671367) (not e!564448))))

(declare-datatypes ((List!21264 0))(
  ( (Nil!21261) (Cons!21260 (h!22437 (_ BitVec 64)) (t!30273 List!21264)) )
))
(declare-fun arrayNoDuplicates!0 (array!63281 (_ BitVec 32) List!21264) Bool)

(assert (=> b!1001732 (= res!671367 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21261))))

(declare-fun b!1001733 () Bool)

(declare-fun res!671372 () Bool)

(declare-fun e!564446 () Bool)

(assert (=> b!1001733 (=> (not res!671372) (not e!564446))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001733 (= res!671372 (validKeyInArray!0 k!2224))))

(declare-fun b!1001734 () Bool)

(declare-fun res!671365 () Bool)

(assert (=> b!1001734 (=> (not res!671365) (not e!564446))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1001734 (= res!671365 (validKeyInArray!0 (select (arr!30462 a!3219) j!170)))))

(declare-fun b!1001735 () Bool)

(declare-fun e!564447 () Bool)

(assert (=> b!1001735 (= e!564448 e!564447)))

(declare-fun res!671371 () Bool)

(assert (=> b!1001735 (=> (not res!671371) (not e!564447))))

(declare-datatypes ((SeekEntryResult!9394 0))(
  ( (MissingZero!9394 (index!39946 (_ BitVec 32))) (Found!9394 (index!39947 (_ BitVec 32))) (Intermediate!9394 (undefined!10206 Bool) (index!39948 (_ BitVec 32)) (x!87391 (_ BitVec 32))) (Undefined!9394) (MissingVacant!9394 (index!39949 (_ BitVec 32))) )
))
(declare-fun lt!442834 () SeekEntryResult!9394)

(declare-fun lt!442833 () SeekEntryResult!9394)

(assert (=> b!1001735 (= res!671371 (= lt!442834 lt!442833))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1001735 (= lt!442833 (Intermediate!9394 false resIndex!38 resX!38))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63281 (_ BitVec 32)) SeekEntryResult!9394)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001735 (= lt!442834 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30462 a!3219) j!170) mask!3464) (select (arr!30462 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001736 () Bool)

(declare-fun res!671375 () Bool)

(assert (=> b!1001736 (=> (not res!671375) (not e!564452))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1001736 (= res!671375 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1001737 () Bool)

(declare-fun res!671369 () Bool)

(assert (=> b!1001737 (=> (not res!671369) (not e!564449))))

(assert (=> b!1001737 (= res!671369 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442838 (select (arr!30462 a!3219) j!170) a!3219 mask!3464) lt!442833))))

(declare-fun b!1001738 () Bool)

(declare-fun res!671378 () Bool)

(assert (=> b!1001738 (=> (not res!671378) (not e!564446))))

(assert (=> b!1001738 (= res!671378 (and (= (size!30965 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30965 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30965 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1001739 () Bool)

(declare-fun res!671380 () Bool)

(assert (=> b!1001739 (=> (not res!671380) (not e!564452))))

(declare-fun lt!442837 () SeekEntryResult!9394)

(declare-fun lt!442835 () array!63281)

(declare-fun lt!442832 () (_ BitVec 64))

(assert (=> b!1001739 (= res!671380 (not (= lt!442837 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442832 lt!442835 mask!3464))))))

(declare-fun res!671376 () Bool)

(assert (=> start!86528 (=> (not res!671376) (not e!564446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86528 (= res!671376 (validMask!0 mask!3464))))

(assert (=> start!86528 e!564446))

(declare-fun array_inv!23452 (array!63281) Bool)

(assert (=> start!86528 (array_inv!23452 a!3219)))

(assert (=> start!86528 true))

(declare-fun b!1001740 () Bool)

(assert (=> b!1001740 (= e!564446 e!564448)))

(declare-fun res!671368 () Bool)

(assert (=> b!1001740 (=> (not res!671368) (not e!564448))))

(declare-fun lt!442839 () SeekEntryResult!9394)

(assert (=> b!1001740 (= res!671368 (or (= lt!442839 (MissingVacant!9394 i!1194)) (= lt!442839 (MissingZero!9394 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63281 (_ BitVec 32)) SeekEntryResult!9394)

(assert (=> b!1001740 (= lt!442839 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1001741 () Bool)

(declare-fun res!671377 () Bool)

(assert (=> b!1001741 (=> (not res!671377) (not e!564448))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63281 (_ BitVec 32)) Bool)

(assert (=> b!1001741 (= res!671377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1001742 () Bool)

(assert (=> b!1001742 (= e!564449 false)))

(declare-fun lt!442836 () SeekEntryResult!9394)

(assert (=> b!1001742 (= lt!442836 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442838 lt!442832 lt!442835 mask!3464))))

(declare-fun b!1001743 () Bool)

(declare-fun e!564451 () Bool)

(assert (=> b!1001743 (= e!564447 e!564451)))

(declare-fun res!671366 () Bool)

(assert (=> b!1001743 (=> (not res!671366) (not e!564451))))

(assert (=> b!1001743 (= res!671366 (= lt!442837 lt!442833))))

(assert (=> b!1001743 (= lt!442837 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30462 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001744 () Bool)

(declare-fun res!671373 () Bool)

(assert (=> b!1001744 (=> (not res!671373) (not e!564446))))

(declare-fun arrayContainsKey!0 (array!63281 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001744 (= res!671373 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1001745 () Bool)

(assert (=> b!1001745 (= e!564451 e!564452)))

(declare-fun res!671374 () Bool)

(assert (=> b!1001745 (=> (not res!671374) (not e!564452))))

(assert (=> b!1001745 (= res!671374 (not (= lt!442834 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442832 mask!3464) lt!442832 lt!442835 mask!3464))))))

(assert (=> b!1001745 (= lt!442832 (select (store (arr!30462 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1001745 (= lt!442835 (array!63282 (store (arr!30462 a!3219) i!1194 k!2224) (size!30965 a!3219)))))

(declare-fun b!1001746 () Bool)

(declare-fun res!671379 () Bool)

(assert (=> b!1001746 (=> (not res!671379) (not e!564448))))

(assert (=> b!1001746 (= res!671379 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30965 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30965 a!3219))))))

(assert (= (and start!86528 res!671376) b!1001738))

(assert (= (and b!1001738 res!671378) b!1001734))

(assert (= (and b!1001734 res!671365) b!1001733))

(assert (= (and b!1001733 res!671372) b!1001744))

(assert (= (and b!1001744 res!671373) b!1001740))

(assert (= (and b!1001740 res!671368) b!1001741))

(assert (= (and b!1001741 res!671377) b!1001732))

(assert (= (and b!1001732 res!671367) b!1001746))

(assert (= (and b!1001746 res!671379) b!1001735))

(assert (= (and b!1001735 res!671371) b!1001743))

(assert (= (and b!1001743 res!671366) b!1001745))

(assert (= (and b!1001745 res!671374) b!1001739))

(assert (= (and b!1001739 res!671380) b!1001736))

(assert (= (and b!1001736 res!671375) b!1001731))

(assert (= (and b!1001731 res!671370) b!1001737))

(assert (= (and b!1001737 res!671369) b!1001742))

(declare-fun m!927821 () Bool)

(assert (=> b!1001742 m!927821))

(declare-fun m!927823 () Bool)

(assert (=> b!1001740 m!927823))

(declare-fun m!927825 () Bool)

(assert (=> b!1001731 m!927825))

(declare-fun m!927827 () Bool)

(assert (=> b!1001734 m!927827))

(assert (=> b!1001734 m!927827))

(declare-fun m!927829 () Bool)

(assert (=> b!1001734 m!927829))

(declare-fun m!927831 () Bool)

(assert (=> b!1001745 m!927831))

(assert (=> b!1001745 m!927831))

(declare-fun m!927833 () Bool)

(assert (=> b!1001745 m!927833))

(declare-fun m!927835 () Bool)

(assert (=> b!1001745 m!927835))

(declare-fun m!927837 () Bool)

(assert (=> b!1001745 m!927837))

(assert (=> b!1001743 m!927827))

(assert (=> b!1001743 m!927827))

(declare-fun m!927839 () Bool)

(assert (=> b!1001743 m!927839))

(declare-fun m!927841 () Bool)

(assert (=> b!1001744 m!927841))

(assert (=> b!1001737 m!927827))

(assert (=> b!1001737 m!927827))

(declare-fun m!927843 () Bool)

(assert (=> b!1001737 m!927843))

(declare-fun m!927845 () Bool)

(assert (=> b!1001739 m!927845))

(declare-fun m!927847 () Bool)

(assert (=> b!1001733 m!927847))

(declare-fun m!927849 () Bool)

(assert (=> start!86528 m!927849))

(declare-fun m!927851 () Bool)

(assert (=> start!86528 m!927851))

(declare-fun m!927853 () Bool)

(assert (=> b!1001732 m!927853))

(declare-fun m!927855 () Bool)

(assert (=> b!1001741 m!927855))

(assert (=> b!1001735 m!927827))

(assert (=> b!1001735 m!927827))

(declare-fun m!927857 () Bool)

(assert (=> b!1001735 m!927857))

(assert (=> b!1001735 m!927857))

(assert (=> b!1001735 m!927827))

(declare-fun m!927859 () Bool)

(assert (=> b!1001735 m!927859))

(push 1)

(assert (not b!1001731))

