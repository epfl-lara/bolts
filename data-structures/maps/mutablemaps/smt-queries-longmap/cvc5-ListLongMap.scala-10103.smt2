; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119152 () Bool)

(assert start!119152)

(declare-fun b!1389527 () Bool)

(declare-fun e!787082 () Bool)

(assert (=> b!1389527 (= e!787082 false)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95007 0))(
  ( (array!95008 (arr!45865 (Array (_ BitVec 32) (_ BitVec 64))) (size!46416 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95007)

(declare-datatypes ((SeekEntryResult!10204 0))(
  ( (MissingZero!10204 (index!43186 (_ BitVec 32))) (Found!10204 (index!43187 (_ BitVec 32))) (Intermediate!10204 (undefined!11016 Bool) (index!43188 (_ BitVec 32)) (x!124885 (_ BitVec 32))) (Undefined!10204) (MissingVacant!10204 (index!43189 (_ BitVec 32))) )
))
(declare-fun lt!610534 () SeekEntryResult!10204)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95007 (_ BitVec 32)) SeekEntryResult!10204)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389527 (= lt!610534 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45865 a!2901) j!112) mask!2840) (select (arr!45865 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!929801 () Bool)

(assert (=> start!119152 (=> (not res!929801) (not e!787082))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119152 (= res!929801 (validMask!0 mask!2840))))

(assert (=> start!119152 e!787082))

(assert (=> start!119152 true))

(declare-fun array_inv!34810 (array!95007) Bool)

(assert (=> start!119152 (array_inv!34810 a!2901)))

(declare-fun b!1389528 () Bool)

(declare-fun res!929800 () Bool)

(assert (=> b!1389528 (=> (not res!929800) (not e!787082))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389528 (= res!929800 (validKeyInArray!0 (select (arr!45865 a!2901) j!112)))))

(declare-fun b!1389529 () Bool)

(declare-fun res!929799 () Bool)

(assert (=> b!1389529 (=> (not res!929799) (not e!787082))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95007 (_ BitVec 32)) Bool)

(assert (=> b!1389529 (= res!929799 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389530 () Bool)

(declare-fun res!929797 () Bool)

(assert (=> b!1389530 (=> (not res!929797) (not e!787082))))

(declare-datatypes ((List!32564 0))(
  ( (Nil!32561) (Cons!32560 (h!33778 (_ BitVec 64)) (t!47265 List!32564)) )
))
(declare-fun arrayNoDuplicates!0 (array!95007 (_ BitVec 32) List!32564) Bool)

(assert (=> b!1389530 (= res!929797 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32561))))

(declare-fun b!1389531 () Bool)

(declare-fun res!929802 () Bool)

(assert (=> b!1389531 (=> (not res!929802) (not e!787082))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389531 (= res!929802 (and (= (size!46416 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46416 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46416 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389532 () Bool)

(declare-fun res!929798 () Bool)

(assert (=> b!1389532 (=> (not res!929798) (not e!787082))))

(assert (=> b!1389532 (= res!929798 (validKeyInArray!0 (select (arr!45865 a!2901) i!1037)))))

(assert (= (and start!119152 res!929801) b!1389531))

(assert (= (and b!1389531 res!929802) b!1389532))

(assert (= (and b!1389532 res!929798) b!1389528))

(assert (= (and b!1389528 res!929800) b!1389529))

(assert (= (and b!1389529 res!929799) b!1389530))

(assert (= (and b!1389530 res!929797) b!1389527))

(declare-fun m!1275239 () Bool)

(assert (=> b!1389532 m!1275239))

(assert (=> b!1389532 m!1275239))

(declare-fun m!1275241 () Bool)

(assert (=> b!1389532 m!1275241))

(declare-fun m!1275243 () Bool)

(assert (=> b!1389527 m!1275243))

(assert (=> b!1389527 m!1275243))

(declare-fun m!1275245 () Bool)

(assert (=> b!1389527 m!1275245))

(assert (=> b!1389527 m!1275245))

(assert (=> b!1389527 m!1275243))

(declare-fun m!1275247 () Bool)

(assert (=> b!1389527 m!1275247))

(assert (=> b!1389528 m!1275243))

(assert (=> b!1389528 m!1275243))

(declare-fun m!1275249 () Bool)

(assert (=> b!1389528 m!1275249))

(declare-fun m!1275251 () Bool)

(assert (=> b!1389529 m!1275251))

(declare-fun m!1275253 () Bool)

(assert (=> b!1389530 m!1275253))

(declare-fun m!1275255 () Bool)

(assert (=> start!119152 m!1275255))

(declare-fun m!1275257 () Bool)

(assert (=> start!119152 m!1275257))

(push 1)

(assert (not b!1389530))

(assert (not b!1389529))

(assert (not b!1389532))

(assert (not b!1389527))

(assert (not start!119152))

(assert (not b!1389528))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

