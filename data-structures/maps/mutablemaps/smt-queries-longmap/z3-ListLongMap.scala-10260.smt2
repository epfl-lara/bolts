; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120654 () Bool)

(assert start!120654)

(declare-fun b!1404227 () Bool)

(declare-fun res!942850 () Bool)

(declare-fun e!794981 () Bool)

(assert (=> b!1404227 (=> (not res!942850) (not e!794981))))

(declare-datatypes ((array!95981 0))(
  ( (array!95982 (arr!46337 (Array (_ BitVec 32) (_ BitVec 64))) (size!46888 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95981)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95981 (_ BitVec 32)) Bool)

(assert (=> b!1404227 (= res!942850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!942851 () Bool)

(assert (=> start!120654 (=> (not res!942851) (not e!794981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120654 (= res!942851 (validMask!0 mask!2840))))

(assert (=> start!120654 e!794981))

(assert (=> start!120654 true))

(declare-fun array_inv!35282 (array!95981) Bool)

(assert (=> start!120654 (array_inv!35282 a!2901)))

(declare-fun b!1404228 () Bool)

(declare-fun res!942847 () Bool)

(assert (=> b!1404228 (=> (not res!942847) (not e!794981))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1404228 (= res!942847 (and (= (size!46888 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46888 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46888 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404229 () Bool)

(declare-fun res!942852 () Bool)

(assert (=> b!1404229 (=> (not res!942852) (not e!794981))))

(declare-datatypes ((List!33036 0))(
  ( (Nil!33033) (Cons!33032 (h!34280 (_ BitVec 64)) (t!47737 List!33036)) )
))
(declare-fun arrayNoDuplicates!0 (array!95981 (_ BitVec 32) List!33036) Bool)

(assert (=> b!1404229 (= res!942852 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33033))))

(declare-fun b!1404230 () Bool)

(assert (=> b!1404230 (= e!794981 (and (bvsle #b00000000000000000000000000000000 (size!46888 a!2901)) (bvsgt j!112 (size!46888 a!2901))))))

(declare-datatypes ((SeekEntryResult!10670 0))(
  ( (MissingZero!10670 (index!45056 (_ BitVec 32))) (Found!10670 (index!45057 (_ BitVec 32))) (Intermediate!10670 (undefined!11482 Bool) (index!45058 (_ BitVec 32)) (x!126676 (_ BitVec 32))) (Undefined!10670) (MissingVacant!10670 (index!45059 (_ BitVec 32))) )
))
(declare-fun lt!618562 () SeekEntryResult!10670)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95981 (_ BitVec 32)) SeekEntryResult!10670)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404230 (= lt!618562 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46337 a!2901) j!112) mask!2840) (select (arr!46337 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404231 () Bool)

(declare-fun res!942848 () Bool)

(assert (=> b!1404231 (=> (not res!942848) (not e!794981))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404231 (= res!942848 (validKeyInArray!0 (select (arr!46337 a!2901) j!112)))))

(declare-fun b!1404232 () Bool)

(declare-fun res!942849 () Bool)

(assert (=> b!1404232 (=> (not res!942849) (not e!794981))))

(assert (=> b!1404232 (= res!942849 (validKeyInArray!0 (select (arr!46337 a!2901) i!1037)))))

(assert (= (and start!120654 res!942851) b!1404228))

(assert (= (and b!1404228 res!942847) b!1404232))

(assert (= (and b!1404232 res!942849) b!1404231))

(assert (= (and b!1404231 res!942848) b!1404227))

(assert (= (and b!1404227 res!942850) b!1404229))

(assert (= (and b!1404229 res!942852) b!1404230))

(declare-fun m!1293109 () Bool)

(assert (=> b!1404232 m!1293109))

(assert (=> b!1404232 m!1293109))

(declare-fun m!1293111 () Bool)

(assert (=> b!1404232 m!1293111))

(declare-fun m!1293113 () Bool)

(assert (=> b!1404230 m!1293113))

(assert (=> b!1404230 m!1293113))

(declare-fun m!1293115 () Bool)

(assert (=> b!1404230 m!1293115))

(assert (=> b!1404230 m!1293115))

(assert (=> b!1404230 m!1293113))

(declare-fun m!1293117 () Bool)

(assert (=> b!1404230 m!1293117))

(declare-fun m!1293119 () Bool)

(assert (=> b!1404229 m!1293119))

(declare-fun m!1293121 () Bool)

(assert (=> start!120654 m!1293121))

(declare-fun m!1293123 () Bool)

(assert (=> start!120654 m!1293123))

(declare-fun m!1293125 () Bool)

(assert (=> b!1404227 m!1293125))

(assert (=> b!1404231 m!1293113))

(assert (=> b!1404231 m!1293113))

(declare-fun m!1293127 () Bool)

(assert (=> b!1404231 m!1293127))

(check-sat (not b!1404227) (not b!1404230) (not start!120654) (not b!1404231) (not b!1404229) (not b!1404232))
(check-sat)
