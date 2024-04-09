; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131206 () Bool)

(assert start!131206)

(declare-fun b!1538720 () Bool)

(declare-fun res!1055844 () Bool)

(declare-fun e!856039 () Bool)

(assert (=> b!1538720 (=> (not res!1055844) (not e!856039))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102198 0))(
  ( (array!102199 (arr!49309 (Array (_ BitVec 32) (_ BitVec 64))) (size!49860 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102198)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1538720 (= res!1055844 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49860 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49860 a!2792)) (= (select (arr!49309 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538721 () Bool)

(declare-fun res!1055837 () Bool)

(assert (=> b!1538721 (=> (not res!1055837) (not e!856039))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13458 0))(
  ( (MissingZero!13458 (index!56226 (_ BitVec 32))) (Found!13458 (index!56227 (_ BitVec 32))) (Intermediate!13458 (undefined!14270 Bool) (index!56228 (_ BitVec 32)) (x!137962 (_ BitVec 32))) (Undefined!13458) (MissingVacant!13458 (index!56229 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102198 (_ BitVec 32)) SeekEntryResult!13458)

(assert (=> b!1538721 (= res!1055837 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49309 a!2792) j!64) a!2792 mask!2480) (Found!13458 j!64)))))

(declare-fun b!1538722 () Bool)

(declare-fun res!1055836 () Bool)

(assert (=> b!1538722 (=> (not res!1055836) (not e!856039))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538722 (= res!1055836 (validKeyInArray!0 (select (arr!49309 a!2792) i!951)))))

(declare-fun b!1538723 () Bool)

(assert (=> b!1538723 (= e!856039 false)))

(declare-fun lt!664867 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538723 (= lt!664867 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538724 () Bool)

(declare-fun res!1055838 () Bool)

(assert (=> b!1538724 (=> (not res!1055838) (not e!856039))))

(assert (=> b!1538724 (= res!1055838 (validKeyInArray!0 (select (arr!49309 a!2792) j!64)))))

(declare-fun res!1055842 () Bool)

(assert (=> start!131206 (=> (not res!1055842) (not e!856039))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131206 (= res!1055842 (validMask!0 mask!2480))))

(assert (=> start!131206 e!856039))

(assert (=> start!131206 true))

(declare-fun array_inv!38254 (array!102198) Bool)

(assert (=> start!131206 (array_inv!38254 a!2792)))

(declare-fun b!1538725 () Bool)

(declare-fun res!1055843 () Bool)

(assert (=> b!1538725 (=> (not res!1055843) (not e!856039))))

(assert (=> b!1538725 (= res!1055843 (and (= (size!49860 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49860 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49860 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538726 () Bool)

(declare-fun res!1055840 () Bool)

(assert (=> b!1538726 (=> (not res!1055840) (not e!856039))))

(declare-datatypes ((List!35963 0))(
  ( (Nil!35960) (Cons!35959 (h!37405 (_ BitVec 64)) (t!50664 List!35963)) )
))
(declare-fun arrayNoDuplicates!0 (array!102198 (_ BitVec 32) List!35963) Bool)

(assert (=> b!1538726 (= res!1055840 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35960))))

(declare-fun b!1538727 () Bool)

(declare-fun res!1055839 () Bool)

(assert (=> b!1538727 (=> (not res!1055839) (not e!856039))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102198 (_ BitVec 32)) Bool)

(assert (=> b!1538727 (= res!1055839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538728 () Bool)

(declare-fun res!1055841 () Bool)

(assert (=> b!1538728 (=> (not res!1055841) (not e!856039))))

(assert (=> b!1538728 (= res!1055841 (not (= (select (arr!49309 a!2792) index!463) (select (arr!49309 a!2792) j!64))))))

(assert (= (and start!131206 res!1055842) b!1538725))

(assert (= (and b!1538725 res!1055843) b!1538722))

(assert (= (and b!1538722 res!1055836) b!1538724))

(assert (= (and b!1538724 res!1055838) b!1538727))

(assert (= (and b!1538727 res!1055839) b!1538726))

(assert (= (and b!1538726 res!1055840) b!1538720))

(assert (= (and b!1538720 res!1055844) b!1538721))

(assert (= (and b!1538721 res!1055837) b!1538728))

(assert (= (and b!1538728 res!1055841) b!1538723))

(declare-fun m!1421157 () Bool)

(assert (=> b!1538721 m!1421157))

(assert (=> b!1538721 m!1421157))

(declare-fun m!1421159 () Bool)

(assert (=> b!1538721 m!1421159))

(declare-fun m!1421161 () Bool)

(assert (=> b!1538720 m!1421161))

(declare-fun m!1421163 () Bool)

(assert (=> start!131206 m!1421163))

(declare-fun m!1421165 () Bool)

(assert (=> start!131206 m!1421165))

(declare-fun m!1421167 () Bool)

(assert (=> b!1538726 m!1421167))

(declare-fun m!1421169 () Bool)

(assert (=> b!1538728 m!1421169))

(assert (=> b!1538728 m!1421157))

(declare-fun m!1421171 () Bool)

(assert (=> b!1538723 m!1421171))

(assert (=> b!1538724 m!1421157))

(assert (=> b!1538724 m!1421157))

(declare-fun m!1421173 () Bool)

(assert (=> b!1538724 m!1421173))

(declare-fun m!1421175 () Bool)

(assert (=> b!1538722 m!1421175))

(assert (=> b!1538722 m!1421175))

(declare-fun m!1421177 () Bool)

(assert (=> b!1538722 m!1421177))

(declare-fun m!1421179 () Bool)

(assert (=> b!1538727 m!1421179))

(push 1)

(assert (not b!1538724))

(assert (not b!1538721))

(assert (not b!1538727))

(assert (not b!1538726))

(assert (not b!1538723))

(assert (not b!1538722))

(assert (not start!131206))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

