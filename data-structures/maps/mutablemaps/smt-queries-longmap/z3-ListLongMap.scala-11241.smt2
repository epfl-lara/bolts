; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131112 () Bool)

(assert start!131112)

(declare-fun b!1537819 () Bool)

(declare-fun res!1055044 () Bool)

(declare-fun e!855758 () Bool)

(assert (=> b!1537819 (=> (not res!1055044) (not e!855758))))

(declare-datatypes ((array!102137 0))(
  ( (array!102138 (arr!49280 (Array (_ BitVec 32) (_ BitVec 64))) (size!49831 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102137)

(declare-datatypes ((List!35934 0))(
  ( (Nil!35931) (Cons!35930 (h!37376 (_ BitVec 64)) (t!50635 List!35934)) )
))
(declare-fun arrayNoDuplicates!0 (array!102137 (_ BitVec 32) List!35934) Bool)

(assert (=> b!1537819 (= res!1055044 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35931))))

(declare-fun b!1537820 () Bool)

(assert (=> b!1537820 (= e!855758 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13429 0))(
  ( (MissingZero!13429 (index!56110 (_ BitVec 32))) (Found!13429 (index!56111 (_ BitVec 32))) (Intermediate!13429 (undefined!14241 Bool) (index!56112 (_ BitVec 32)) (x!137850 (_ BitVec 32))) (Undefined!13429) (MissingVacant!13429 (index!56113 (_ BitVec 32))) )
))
(declare-fun lt!664729 () SeekEntryResult!13429)

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102137 (_ BitVec 32)) SeekEntryResult!13429)

(assert (=> b!1537820 (= lt!664729 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49280 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537821 () Bool)

(declare-fun res!1055048 () Bool)

(assert (=> b!1537821 (=> (not res!1055048) (not e!855758))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102137 (_ BitVec 32)) Bool)

(assert (=> b!1537821 (= res!1055048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537822 () Bool)

(declare-fun res!1055049 () Bool)

(assert (=> b!1537822 (=> (not res!1055049) (not e!855758))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537822 (= res!1055049 (and (= (size!49831 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49831 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49831 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537824 () Bool)

(declare-fun res!1055047 () Bool)

(assert (=> b!1537824 (=> (not res!1055047) (not e!855758))))

(assert (=> b!1537824 (= res!1055047 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49831 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49831 a!2792)) (= (select (arr!49280 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537825 () Bool)

(declare-fun res!1055046 () Bool)

(assert (=> b!1537825 (=> (not res!1055046) (not e!855758))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537825 (= res!1055046 (validKeyInArray!0 (select (arr!49280 a!2792) i!951)))))

(declare-fun res!1055045 () Bool)

(assert (=> start!131112 (=> (not res!1055045) (not e!855758))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131112 (= res!1055045 (validMask!0 mask!2480))))

(assert (=> start!131112 e!855758))

(assert (=> start!131112 true))

(declare-fun array_inv!38225 (array!102137) Bool)

(assert (=> start!131112 (array_inv!38225 a!2792)))

(declare-fun b!1537823 () Bool)

(declare-fun res!1055043 () Bool)

(assert (=> b!1537823 (=> (not res!1055043) (not e!855758))))

(assert (=> b!1537823 (= res!1055043 (validKeyInArray!0 (select (arr!49280 a!2792) j!64)))))

(assert (= (and start!131112 res!1055045) b!1537822))

(assert (= (and b!1537822 res!1055049) b!1537825))

(assert (= (and b!1537825 res!1055046) b!1537823))

(assert (= (and b!1537823 res!1055043) b!1537821))

(assert (= (and b!1537821 res!1055048) b!1537819))

(assert (= (and b!1537819 res!1055044) b!1537824))

(assert (= (and b!1537824 res!1055047) b!1537820))

(declare-fun m!1420373 () Bool)

(assert (=> b!1537824 m!1420373))

(declare-fun m!1420375 () Bool)

(assert (=> start!131112 m!1420375))

(declare-fun m!1420377 () Bool)

(assert (=> start!131112 m!1420377))

(declare-fun m!1420379 () Bool)

(assert (=> b!1537820 m!1420379))

(assert (=> b!1537820 m!1420379))

(declare-fun m!1420381 () Bool)

(assert (=> b!1537820 m!1420381))

(declare-fun m!1420383 () Bool)

(assert (=> b!1537825 m!1420383))

(assert (=> b!1537825 m!1420383))

(declare-fun m!1420385 () Bool)

(assert (=> b!1537825 m!1420385))

(declare-fun m!1420387 () Bool)

(assert (=> b!1537821 m!1420387))

(assert (=> b!1537823 m!1420379))

(assert (=> b!1537823 m!1420379))

(declare-fun m!1420389 () Bool)

(assert (=> b!1537823 m!1420389))

(declare-fun m!1420391 () Bool)

(assert (=> b!1537819 m!1420391))

(check-sat (not start!131112) (not b!1537820) (not b!1537821) (not b!1537825) (not b!1537823) (not b!1537819))
