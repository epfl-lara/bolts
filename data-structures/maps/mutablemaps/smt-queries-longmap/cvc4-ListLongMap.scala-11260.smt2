; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131390 () Bool)

(assert start!131390)

(declare-fun b!1539951 () Bool)

(declare-fun e!856526 () Bool)

(declare-fun e!856527 () Bool)

(assert (=> b!1539951 (= e!856526 e!856527)))

(declare-fun res!1056787 () Bool)

(assert (=> b!1539951 (=> (not res!1056787) (not e!856527))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102265 0))(
  ( (array!102266 (arr!49338 (Array (_ BitVec 32) (_ BitVec 64))) (size!49889 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102265)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13487 0))(
  ( (MissingZero!13487 (index!56342 (_ BitVec 32))) (Found!13487 (index!56343 (_ BitVec 32))) (Intermediate!13487 (undefined!14299 Bool) (index!56344 (_ BitVec 32)) (x!138081 (_ BitVec 32))) (Undefined!13487) (MissingVacant!13487 (index!56345 (_ BitVec 32))) )
))
(declare-fun lt!665139 () SeekEntryResult!13487)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102265 (_ BitVec 32)) SeekEntryResult!13487)

(assert (=> b!1539951 (= res!1056787 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49338 a!2792) j!64) a!2792 mask!2480) lt!665139))))

(assert (=> b!1539951 (= lt!665139 (Found!13487 j!64))))

(declare-fun b!1539952 () Bool)

(declare-fun res!1056789 () Bool)

(assert (=> b!1539952 (=> (not res!1056789) (not e!856526))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1539952 (= res!1056789 (validKeyInArray!0 (select (arr!49338 a!2792) i!951)))))

(declare-fun res!1056786 () Bool)

(assert (=> start!131390 (=> (not res!1056786) (not e!856526))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131390 (= res!1056786 (validMask!0 mask!2480))))

(assert (=> start!131390 e!856526))

(assert (=> start!131390 true))

(declare-fun array_inv!38283 (array!102265) Bool)

(assert (=> start!131390 (array_inv!38283 a!2792)))

(declare-fun b!1539953 () Bool)

(declare-fun res!1056779 () Bool)

(assert (=> b!1539953 (=> (not res!1056779) (not e!856526))))

(assert (=> b!1539953 (= res!1056779 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49889 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49889 a!2792)) (= (select (arr!49338 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1539954 () Bool)

(declare-fun res!1056784 () Bool)

(assert (=> b!1539954 (=> (not res!1056784) (not e!856526))))

(assert (=> b!1539954 (= res!1056784 (validKeyInArray!0 (select (arr!49338 a!2792) j!64)))))

(declare-fun b!1539955 () Bool)

(declare-fun e!856528 () Bool)

(assert (=> b!1539955 (= e!856527 e!856528)))

(declare-fun res!1056781 () Bool)

(assert (=> b!1539955 (=> (not res!1056781) (not e!856528))))

(declare-fun lt!665140 () (_ BitVec 32))

(assert (=> b!1539955 (= res!1056781 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!665140 #b00000000000000000000000000000000) (bvslt lt!665140 (size!49889 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1539955 (= lt!665140 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1539956 () Bool)

(declare-fun res!1056782 () Bool)

(assert (=> b!1539956 (=> (not res!1056782) (not e!856527))))

(assert (=> b!1539956 (= res!1056782 (not (= (select (arr!49338 a!2792) index!463) (select (arr!49338 a!2792) j!64))))))

(declare-fun b!1539957 () Bool)

(declare-fun res!1056788 () Bool)

(assert (=> b!1539957 (=> (not res!1056788) (not e!856526))))

(assert (=> b!1539957 (= res!1056788 (and (= (size!49889 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49889 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49889 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1539958 () Bool)

(declare-fun res!1056783 () Bool)

(assert (=> b!1539958 (=> (not res!1056783) (not e!856526))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102265 (_ BitVec 32)) Bool)

(assert (=> b!1539958 (= res!1056783 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1539959 () Bool)

(assert (=> b!1539959 (= e!856528 (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!510)) (bvsub #b01111111111111111111111111111110 x!510)))))

(declare-fun b!1539960 () Bool)

(declare-fun res!1056780 () Bool)

(assert (=> b!1539960 (=> (not res!1056780) (not e!856526))))

(declare-datatypes ((List!35992 0))(
  ( (Nil!35989) (Cons!35988 (h!37434 (_ BitVec 64)) (t!50693 List!35992)) )
))
(declare-fun arrayNoDuplicates!0 (array!102265 (_ BitVec 32) List!35992) Bool)

(assert (=> b!1539960 (= res!1056780 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35989))))

(declare-fun b!1539961 () Bool)

(declare-fun res!1056785 () Bool)

(assert (=> b!1539961 (=> (not res!1056785) (not e!856528))))

(assert (=> b!1539961 (= res!1056785 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665140 vacantIndex!5 (select (arr!49338 a!2792) j!64) a!2792 mask!2480) lt!665139))))

(assert (= (and start!131390 res!1056786) b!1539957))

(assert (= (and b!1539957 res!1056788) b!1539952))

(assert (= (and b!1539952 res!1056789) b!1539954))

(assert (= (and b!1539954 res!1056784) b!1539958))

(assert (= (and b!1539958 res!1056783) b!1539960))

(assert (= (and b!1539960 res!1056780) b!1539953))

(assert (= (and b!1539953 res!1056779) b!1539951))

(assert (= (and b!1539951 res!1056787) b!1539956))

(assert (= (and b!1539956 res!1056782) b!1539955))

(assert (= (and b!1539955 res!1056781) b!1539961))

(assert (= (and b!1539961 res!1056785) b!1539959))

(declare-fun m!1422109 () Bool)

(assert (=> b!1539958 m!1422109))

(declare-fun m!1422111 () Bool)

(assert (=> b!1539954 m!1422111))

(assert (=> b!1539954 m!1422111))

(declare-fun m!1422113 () Bool)

(assert (=> b!1539954 m!1422113))

(assert (=> b!1539951 m!1422111))

(assert (=> b!1539951 m!1422111))

(declare-fun m!1422115 () Bool)

(assert (=> b!1539951 m!1422115))

(declare-fun m!1422117 () Bool)

(assert (=> start!131390 m!1422117))

(declare-fun m!1422119 () Bool)

(assert (=> start!131390 m!1422119))

(declare-fun m!1422121 () Bool)

(assert (=> b!1539955 m!1422121))

(assert (=> b!1539961 m!1422111))

(assert (=> b!1539961 m!1422111))

(declare-fun m!1422123 () Bool)

(assert (=> b!1539961 m!1422123))

(declare-fun m!1422125 () Bool)

(assert (=> b!1539953 m!1422125))

(declare-fun m!1422127 () Bool)

(assert (=> b!1539956 m!1422127))

(assert (=> b!1539956 m!1422111))

(declare-fun m!1422129 () Bool)

(assert (=> b!1539960 m!1422129))

(declare-fun m!1422131 () Bool)

(assert (=> b!1539952 m!1422131))

(assert (=> b!1539952 m!1422131))

(declare-fun m!1422133 () Bool)

(assert (=> b!1539952 m!1422133))

(push 1)

(assert (not b!1539952))

(assert (not b!1539960))

(assert (not b!1539951))

(assert (not b!1539955))

(assert (not b!1539961))

(assert (not b!1539958))

(assert (not b!1539954))

(assert (not start!131390))

(check-sat)

(pop 1)

(push 1)

(check-sat)

