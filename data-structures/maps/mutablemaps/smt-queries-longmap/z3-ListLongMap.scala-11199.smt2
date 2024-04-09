; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130860 () Bool)

(assert start!130860)

(declare-fun b!1534179 () Bool)

(declare-fun res!1051404 () Bool)

(declare-fun e!854417 () Bool)

(assert (=> b!1534179 (=> (not res!1051404) (not e!854417))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101885 0))(
  ( (array!101886 (arr!49154 (Array (_ BitVec 32) (_ BitVec 64))) (size!49705 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101885)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13309 0))(
  ( (MissingZero!13309 (index!55630 (_ BitVec 32))) (Found!13309 (index!55631 (_ BitVec 32))) (Intermediate!13309 (undefined!14121 Bool) (index!55632 (_ BitVec 32)) (x!137394 (_ BitVec 32))) (Undefined!13309) (MissingVacant!13309 (index!55633 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101885 (_ BitVec 32)) SeekEntryResult!13309)

(assert (=> b!1534179 (= res!1051404 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49154 a!2792) j!64) a!2792 mask!2480) (Found!13309 j!64)))))

(declare-fun res!1051410 () Bool)

(assert (=> start!130860 (=> (not res!1051410) (not e!854417))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130860 (= res!1051410 (validMask!0 mask!2480))))

(assert (=> start!130860 e!854417))

(assert (=> start!130860 true))

(declare-fun array_inv!38099 (array!101885) Bool)

(assert (=> start!130860 (array_inv!38099 a!2792)))

(declare-fun b!1534180 () Bool)

(declare-fun res!1051405 () Bool)

(assert (=> b!1534180 (=> (not res!1051405) (not e!854417))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534180 (= res!1051405 (validKeyInArray!0 (select (arr!49154 a!2792) j!64)))))

(declare-fun b!1534181 () Bool)

(declare-fun res!1051408 () Bool)

(assert (=> b!1534181 (=> (not res!1051408) (not e!854417))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534181 (= res!1051408 (and (= (size!49705 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49705 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49705 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534182 () Bool)

(declare-fun res!1051406 () Bool)

(assert (=> b!1534182 (=> (not res!1051406) (not e!854417))))

(assert (=> b!1534182 (= res!1051406 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49705 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49705 a!2792)) (= (select (arr!49154 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534183 () Bool)

(declare-fun res!1051403 () Bool)

(assert (=> b!1534183 (=> (not res!1051403) (not e!854417))))

(assert (=> b!1534183 (= res!1051403 (validKeyInArray!0 (select (arr!49154 a!2792) i!951)))))

(declare-fun b!1534184 () Bool)

(assert (=> b!1534184 (= e!854417 (and (not (= (select (arr!49154 a!2792) index!463) (select (arr!49154 a!2792) j!64))) (bvslt mask!2480 #b00000000000000000000000000000000)))))

(declare-fun b!1534185 () Bool)

(declare-fun res!1051409 () Bool)

(assert (=> b!1534185 (=> (not res!1051409) (not e!854417))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101885 (_ BitVec 32)) Bool)

(assert (=> b!1534185 (= res!1051409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534186 () Bool)

(declare-fun res!1051407 () Bool)

(assert (=> b!1534186 (=> (not res!1051407) (not e!854417))))

(declare-datatypes ((List!35808 0))(
  ( (Nil!35805) (Cons!35804 (h!37250 (_ BitVec 64)) (t!50509 List!35808)) )
))
(declare-fun arrayNoDuplicates!0 (array!101885 (_ BitVec 32) List!35808) Bool)

(assert (=> b!1534186 (= res!1051407 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35805))))

(assert (= (and start!130860 res!1051410) b!1534181))

(assert (= (and b!1534181 res!1051408) b!1534183))

(assert (= (and b!1534183 res!1051403) b!1534180))

(assert (= (and b!1534180 res!1051405) b!1534185))

(assert (= (and b!1534185 res!1051409) b!1534186))

(assert (= (and b!1534186 res!1051407) b!1534182))

(assert (= (and b!1534182 res!1051406) b!1534179))

(assert (= (and b!1534179 res!1051404) b!1534184))

(declare-fun m!1416889 () Bool)

(assert (=> b!1534186 m!1416889))

(declare-fun m!1416891 () Bool)

(assert (=> b!1534183 m!1416891))

(assert (=> b!1534183 m!1416891))

(declare-fun m!1416893 () Bool)

(assert (=> b!1534183 m!1416893))

(declare-fun m!1416895 () Bool)

(assert (=> b!1534182 m!1416895))

(declare-fun m!1416897 () Bool)

(assert (=> b!1534185 m!1416897))

(declare-fun m!1416899 () Bool)

(assert (=> start!130860 m!1416899))

(declare-fun m!1416901 () Bool)

(assert (=> start!130860 m!1416901))

(declare-fun m!1416903 () Bool)

(assert (=> b!1534180 m!1416903))

(assert (=> b!1534180 m!1416903))

(declare-fun m!1416905 () Bool)

(assert (=> b!1534180 m!1416905))

(assert (=> b!1534179 m!1416903))

(assert (=> b!1534179 m!1416903))

(declare-fun m!1416907 () Bool)

(assert (=> b!1534179 m!1416907))

(declare-fun m!1416909 () Bool)

(assert (=> b!1534184 m!1416909))

(assert (=> b!1534184 m!1416903))

(check-sat (not b!1534185) (not b!1534180) (not b!1534179) (not start!130860) (not b!1534186) (not b!1534183))
(check-sat)
