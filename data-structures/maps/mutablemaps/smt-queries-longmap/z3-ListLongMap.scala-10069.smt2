; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118590 () Bool)

(assert start!118590)

(declare-fun b!1385845 () Bool)

(declare-fun res!927205 () Bool)

(declare-fun e!785197 () Bool)

(assert (=> b!1385845 (=> (not res!927205) (not e!785197))))

(declare-datatypes ((array!94784 0))(
  ( (array!94785 (arr!45764 (Array (_ BitVec 32) (_ BitVec 64))) (size!46315 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94784)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385845 (= res!927205 (validKeyInArray!0 (select (arr!45764 a!2938) i!1065)))))

(declare-fun res!927207 () Bool)

(assert (=> start!118590 (=> (not res!927207) (not e!785197))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118590 (= res!927207 (validMask!0 mask!2987))))

(assert (=> start!118590 e!785197))

(assert (=> start!118590 true))

(declare-fun array_inv!34709 (array!94784) Bool)

(assert (=> start!118590 (array_inv!34709 a!2938)))

(declare-fun b!1385846 () Bool)

(declare-fun res!927208 () Bool)

(assert (=> b!1385846 (=> (not res!927208) (not e!785197))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385846 (= res!927208 (validKeyInArray!0 (select (arr!45764 a!2938) startIndex!16)))))

(declare-fun b!1385847 () Bool)

(declare-fun res!927210 () Bool)

(assert (=> b!1385847 (=> (not res!927210) (not e!785197))))

(declare-datatypes ((List!32472 0))(
  ( (Nil!32469) (Cons!32468 (h!33677 (_ BitVec 64)) (t!47173 List!32472)) )
))
(declare-fun arrayNoDuplicates!0 (array!94784 (_ BitVec 32) List!32472) Bool)

(assert (=> b!1385847 (= res!927210 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32469))))

(declare-fun b!1385848 () Bool)

(declare-fun res!927209 () Bool)

(assert (=> b!1385848 (=> (not res!927209) (not e!785197))))

(assert (=> b!1385848 (= res!927209 (and (= (size!46315 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46315 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46315 a!2938))))))

(declare-fun b!1385849 () Bool)

(declare-fun res!927206 () Bool)

(assert (=> b!1385849 (=> (not res!927206) (not e!785197))))

(assert (=> b!1385849 (= res!927206 (and (not (= (select (arr!45764 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45764 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1385850 () Bool)

(declare-fun res!927204 () Bool)

(assert (=> b!1385850 (=> (not res!927204) (not e!785197))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94784 (_ BitVec 32)) Bool)

(assert (=> b!1385850 (= res!927204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385851 () Bool)

(assert (=> b!1385851 (= e!785197 (not true))))

(declare-datatypes ((SeekEntryResult!10129 0))(
  ( (MissingZero!10129 (index!42886 (_ BitVec 32))) (Found!10129 (index!42887 (_ BitVec 32))) (Intermediate!10129 (undefined!10941 Bool) (index!42888 (_ BitVec 32)) (x!124517 (_ BitVec 32))) (Undefined!10129) (MissingVacant!10129 (index!42889 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94784 (_ BitVec 32)) SeekEntryResult!10129)

(assert (=> b!1385851 (= (seekEntryOrOpen!0 (select (arr!45764 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45764 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94785 (store (arr!45764 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46315 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46200 0))(
  ( (Unit!46201) )
))
(declare-fun lt!609286 () Unit!46200)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94784 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46200)

(assert (=> b!1385851 (= lt!609286 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(assert (= (and start!118590 res!927207) b!1385848))

(assert (= (and b!1385848 res!927209) b!1385845))

(assert (= (and b!1385845 res!927205) b!1385847))

(assert (= (and b!1385847 res!927210) b!1385850))

(assert (= (and b!1385850 res!927204) b!1385849))

(assert (= (and b!1385849 res!927206) b!1385846))

(assert (= (and b!1385846 res!927208) b!1385851))

(declare-fun m!1271179 () Bool)

(assert (=> b!1385850 m!1271179))

(declare-fun m!1271181 () Bool)

(assert (=> b!1385851 m!1271181))

(assert (=> b!1385851 m!1271181))

(declare-fun m!1271183 () Bool)

(assert (=> b!1385851 m!1271183))

(declare-fun m!1271185 () Bool)

(assert (=> b!1385851 m!1271185))

(declare-fun m!1271187 () Bool)

(assert (=> b!1385851 m!1271187))

(declare-fun m!1271189 () Bool)

(assert (=> b!1385851 m!1271189))

(assert (=> b!1385851 m!1271189))

(declare-fun m!1271191 () Bool)

(assert (=> b!1385851 m!1271191))

(declare-fun m!1271193 () Bool)

(assert (=> b!1385849 m!1271193))

(declare-fun m!1271195 () Bool)

(assert (=> b!1385847 m!1271195))

(assert (=> b!1385846 m!1271189))

(assert (=> b!1385846 m!1271189))

(declare-fun m!1271197 () Bool)

(assert (=> b!1385846 m!1271197))

(declare-fun m!1271199 () Bool)

(assert (=> start!118590 m!1271199))

(declare-fun m!1271201 () Bool)

(assert (=> start!118590 m!1271201))

(assert (=> b!1385845 m!1271193))

(assert (=> b!1385845 m!1271193))

(declare-fun m!1271203 () Bool)

(assert (=> b!1385845 m!1271203))

(check-sat (not b!1385851) (not b!1385850) (not b!1385847) (not b!1385845) (not b!1385846) (not start!118590))
