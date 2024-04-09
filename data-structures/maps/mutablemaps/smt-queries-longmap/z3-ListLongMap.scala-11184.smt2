; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130770 () Bool)

(assert start!130770)

(declare-fun b!1533157 () Bool)

(declare-fun res!1050385 () Bool)

(declare-fun e!854147 () Bool)

(assert (=> b!1533157 (=> (not res!1050385) (not e!854147))))

(declare-datatypes ((array!101795 0))(
  ( (array!101796 (arr!49109 (Array (_ BitVec 32) (_ BitVec 64))) (size!49660 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101795)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(assert (=> b!1533157 (= res!1050385 (and (= (size!49660 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49660 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49660 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533158 () Bool)

(declare-fun res!1050381 () Bool)

(assert (=> b!1533158 (=> (not res!1050381) (not e!854147))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101795 (_ BitVec 32)) Bool)

(assert (=> b!1533158 (= res!1050381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533160 () Bool)

(declare-fun res!1050383 () Bool)

(assert (=> b!1533160 (=> (not res!1050383) (not e!854147))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1533160 (= res!1050383 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49660 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49660 a!2792)) (= (select (arr!49109 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533161 () Bool)

(declare-fun res!1050387 () Bool)

(assert (=> b!1533161 (=> (not res!1050387) (not e!854147))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533161 (= res!1050387 (validKeyInArray!0 (select (arr!49109 a!2792) i!951)))))

(declare-fun b!1533162 () Bool)

(assert (=> b!1533162 (= e!854147 false)))

(declare-datatypes ((SeekEntryResult!13264 0))(
  ( (MissingZero!13264 (index!55450 (_ BitVec 32))) (Found!13264 (index!55451 (_ BitVec 32))) (Intermediate!13264 (undefined!14076 Bool) (index!55452 (_ BitVec 32)) (x!137229 (_ BitVec 32))) (Undefined!13264) (MissingVacant!13264 (index!55453 (_ BitVec 32))) )
))
(declare-fun lt!663712 () SeekEntryResult!13264)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101795 (_ BitVec 32)) SeekEntryResult!13264)

(assert (=> b!1533162 (= lt!663712 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49109 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1533163 () Bool)

(declare-fun res!1050382 () Bool)

(assert (=> b!1533163 (=> (not res!1050382) (not e!854147))))

(assert (=> b!1533163 (= res!1050382 (validKeyInArray!0 (select (arr!49109 a!2792) j!64)))))

(declare-fun res!1050384 () Bool)

(assert (=> start!130770 (=> (not res!1050384) (not e!854147))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130770 (= res!1050384 (validMask!0 mask!2480))))

(assert (=> start!130770 e!854147))

(assert (=> start!130770 true))

(declare-fun array_inv!38054 (array!101795) Bool)

(assert (=> start!130770 (array_inv!38054 a!2792)))

(declare-fun b!1533159 () Bool)

(declare-fun res!1050386 () Bool)

(assert (=> b!1533159 (=> (not res!1050386) (not e!854147))))

(declare-datatypes ((List!35763 0))(
  ( (Nil!35760) (Cons!35759 (h!37205 (_ BitVec 64)) (t!50464 List!35763)) )
))
(declare-fun arrayNoDuplicates!0 (array!101795 (_ BitVec 32) List!35763) Bool)

(assert (=> b!1533159 (= res!1050386 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35760))))

(assert (= (and start!130770 res!1050384) b!1533157))

(assert (= (and b!1533157 res!1050385) b!1533161))

(assert (= (and b!1533161 res!1050387) b!1533163))

(assert (= (and b!1533163 res!1050382) b!1533158))

(assert (= (and b!1533158 res!1050381) b!1533159))

(assert (= (and b!1533159 res!1050386) b!1533160))

(assert (= (and b!1533160 res!1050383) b!1533162))

(declare-fun m!1415909 () Bool)

(assert (=> b!1533159 m!1415909))

(declare-fun m!1415911 () Bool)

(assert (=> b!1533163 m!1415911))

(assert (=> b!1533163 m!1415911))

(declare-fun m!1415913 () Bool)

(assert (=> b!1533163 m!1415913))

(declare-fun m!1415915 () Bool)

(assert (=> b!1533160 m!1415915))

(declare-fun m!1415917 () Bool)

(assert (=> b!1533158 m!1415917))

(declare-fun m!1415919 () Bool)

(assert (=> start!130770 m!1415919))

(declare-fun m!1415921 () Bool)

(assert (=> start!130770 m!1415921))

(assert (=> b!1533162 m!1415911))

(assert (=> b!1533162 m!1415911))

(declare-fun m!1415923 () Bool)

(assert (=> b!1533162 m!1415923))

(declare-fun m!1415925 () Bool)

(assert (=> b!1533161 m!1415925))

(assert (=> b!1533161 m!1415925))

(declare-fun m!1415927 () Bool)

(assert (=> b!1533161 m!1415927))

(check-sat (not b!1533158) (not b!1533162) (not b!1533161) (not b!1533163) (not b!1533159) (not start!130770))
