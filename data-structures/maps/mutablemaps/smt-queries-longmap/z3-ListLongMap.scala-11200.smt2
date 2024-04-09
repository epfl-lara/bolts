; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130866 () Bool)

(assert start!130866)

(declare-fun b!1534251 () Bool)

(declare-fun res!1051481 () Bool)

(declare-fun e!854435 () Bool)

(assert (=> b!1534251 (=> (not res!1051481) (not e!854435))))

(declare-datatypes ((array!101891 0))(
  ( (array!101892 (arr!49157 (Array (_ BitVec 32) (_ BitVec 64))) (size!49708 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101891)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101891 (_ BitVec 32)) Bool)

(assert (=> b!1534251 (= res!1051481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534252 () Bool)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1534252 (= e!854435 (and (not (= (select (arr!49157 a!2792) index!463) (select (arr!49157 a!2792) j!64))) (bvsge mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480))))))

(declare-fun b!1534253 () Bool)

(declare-fun res!1051475 () Bool)

(assert (=> b!1534253 (=> (not res!1051475) (not e!854435))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534253 (= res!1051475 (and (= (size!49708 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49708 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49708 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1051482 () Bool)

(assert (=> start!130866 (=> (not res!1051482) (not e!854435))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130866 (= res!1051482 (validMask!0 mask!2480))))

(assert (=> start!130866 e!854435))

(assert (=> start!130866 true))

(declare-fun array_inv!38102 (array!101891) Bool)

(assert (=> start!130866 (array_inv!38102 a!2792)))

(declare-fun b!1534254 () Bool)

(declare-fun res!1051477 () Bool)

(assert (=> b!1534254 (=> (not res!1051477) (not e!854435))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534254 (= res!1051477 (validKeyInArray!0 (select (arr!49157 a!2792) j!64)))))

(declare-fun b!1534255 () Bool)

(declare-fun res!1051478 () Bool)

(assert (=> b!1534255 (=> (not res!1051478) (not e!854435))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1534255 (= res!1051478 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49708 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49708 a!2792)) (= (select (arr!49157 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534256 () Bool)

(declare-fun res!1051480 () Bool)

(assert (=> b!1534256 (=> (not res!1051480) (not e!854435))))

(declare-datatypes ((SeekEntryResult!13312 0))(
  ( (MissingZero!13312 (index!55642 (_ BitVec 32))) (Found!13312 (index!55643 (_ BitVec 32))) (Intermediate!13312 (undefined!14124 Bool) (index!55644 (_ BitVec 32)) (x!137405 (_ BitVec 32))) (Undefined!13312) (MissingVacant!13312 (index!55645 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101891 (_ BitVec 32)) SeekEntryResult!13312)

(assert (=> b!1534256 (= res!1051480 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49157 a!2792) j!64) a!2792 mask!2480) (Found!13312 j!64)))))

(declare-fun b!1534257 () Bool)

(declare-fun res!1051476 () Bool)

(assert (=> b!1534257 (=> (not res!1051476) (not e!854435))))

(assert (=> b!1534257 (= res!1051476 (validKeyInArray!0 (select (arr!49157 a!2792) i!951)))))

(declare-fun b!1534258 () Bool)

(declare-fun res!1051479 () Bool)

(assert (=> b!1534258 (=> (not res!1051479) (not e!854435))))

(declare-datatypes ((List!35811 0))(
  ( (Nil!35808) (Cons!35807 (h!37253 (_ BitVec 64)) (t!50512 List!35811)) )
))
(declare-fun arrayNoDuplicates!0 (array!101891 (_ BitVec 32) List!35811) Bool)

(assert (=> b!1534258 (= res!1051479 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35808))))

(assert (= (and start!130866 res!1051482) b!1534253))

(assert (= (and b!1534253 res!1051475) b!1534257))

(assert (= (and b!1534257 res!1051476) b!1534254))

(assert (= (and b!1534254 res!1051477) b!1534251))

(assert (= (and b!1534251 res!1051481) b!1534258))

(assert (= (and b!1534258 res!1051479) b!1534255))

(assert (= (and b!1534255 res!1051478) b!1534256))

(assert (= (and b!1534256 res!1051480) b!1534252))

(declare-fun m!1416955 () Bool)

(assert (=> start!130866 m!1416955))

(declare-fun m!1416957 () Bool)

(assert (=> start!130866 m!1416957))

(declare-fun m!1416959 () Bool)

(assert (=> b!1534257 m!1416959))

(assert (=> b!1534257 m!1416959))

(declare-fun m!1416961 () Bool)

(assert (=> b!1534257 m!1416961))

(declare-fun m!1416963 () Bool)

(assert (=> b!1534251 m!1416963))

(declare-fun m!1416965 () Bool)

(assert (=> b!1534256 m!1416965))

(assert (=> b!1534256 m!1416965))

(declare-fun m!1416967 () Bool)

(assert (=> b!1534256 m!1416967))

(declare-fun m!1416969 () Bool)

(assert (=> b!1534252 m!1416969))

(assert (=> b!1534252 m!1416965))

(declare-fun m!1416971 () Bool)

(assert (=> b!1534258 m!1416971))

(assert (=> b!1534254 m!1416965))

(assert (=> b!1534254 m!1416965))

(declare-fun m!1416973 () Bool)

(assert (=> b!1534254 m!1416973))

(declare-fun m!1416975 () Bool)

(assert (=> b!1534255 m!1416975))

(check-sat (not b!1534251) (not b!1534254) (not b!1534257) (not start!130866) (not b!1534258) (not b!1534256))
(check-sat)
