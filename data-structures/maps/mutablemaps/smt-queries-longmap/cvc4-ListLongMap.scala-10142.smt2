; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119660 () Bool)

(assert start!119660)

(declare-fun b!1393293 () Bool)

(declare-fun e!788969 () Bool)

(assert (=> b!1393293 (= e!788969 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95260 0))(
  ( (array!95261 (arr!45984 (Array (_ BitVec 32) (_ BitVec 64))) (size!46535 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95260)

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10323 0))(
  ( (MissingZero!10323 (index!43662 (_ BitVec 32))) (Found!10323 (index!43663 (_ BitVec 32))) (Intermediate!10323 (undefined!11135 Bool) (index!43664 (_ BitVec 32)) (x!125346 (_ BitVec 32))) (Undefined!10323) (MissingVacant!10323 (index!43665 (_ BitVec 32))) )
))
(declare-fun lt!611907 () SeekEntryResult!10323)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95260 (_ BitVec 32)) SeekEntryResult!10323)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393293 (= lt!611907 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45984 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45984 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95261 (store (arr!45984 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46535 a!2901)) mask!2840))))

(declare-fun b!1393294 () Bool)

(declare-fun res!932814 () Bool)

(declare-fun e!788972 () Bool)

(assert (=> b!1393294 (=> (not res!932814) (not e!788972))))

(assert (=> b!1393294 (= res!932814 (and (= (size!46535 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46535 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46535 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393295 () Bool)

(declare-fun res!932816 () Bool)

(assert (=> b!1393295 (=> (not res!932816) (not e!788972))))

(declare-datatypes ((List!32683 0))(
  ( (Nil!32680) (Cons!32679 (h!33912 (_ BitVec 64)) (t!47384 List!32683)) )
))
(declare-fun arrayNoDuplicates!0 (array!95260 (_ BitVec 32) List!32683) Bool)

(assert (=> b!1393295 (= res!932816 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32680))))

(declare-fun b!1393296 () Bool)

(declare-fun res!932813 () Bool)

(assert (=> b!1393296 (=> (not res!932813) (not e!788972))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95260 (_ BitVec 32)) Bool)

(assert (=> b!1393296 (= res!932813 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393297 () Bool)

(declare-fun res!932812 () Bool)

(assert (=> b!1393297 (=> (not res!932812) (not e!788972))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393297 (= res!932812 (validKeyInArray!0 (select (arr!45984 a!2901) i!1037)))))

(declare-fun e!788970 () Bool)

(declare-fun b!1393298 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95260 (_ BitVec 32)) SeekEntryResult!10323)

(assert (=> b!1393298 (= e!788970 (= (seekEntryOrOpen!0 (select (arr!45984 a!2901) j!112) a!2901 mask!2840) (Found!10323 j!112)))))

(declare-fun res!932810 () Bool)

(assert (=> start!119660 (=> (not res!932810) (not e!788972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119660 (= res!932810 (validMask!0 mask!2840))))

(assert (=> start!119660 e!788972))

(assert (=> start!119660 true))

(declare-fun array_inv!34929 (array!95260) Bool)

(assert (=> start!119660 (array_inv!34929 a!2901)))

(declare-fun b!1393299 () Bool)

(assert (=> b!1393299 (= e!788972 (not e!788969))))

(declare-fun res!932811 () Bool)

(assert (=> b!1393299 (=> res!932811 e!788969)))

(declare-fun lt!611908 () SeekEntryResult!10323)

(assert (=> b!1393299 (= res!932811 (or (not (is-Intermediate!10323 lt!611908)) (undefined!11135 lt!611908)))))

(assert (=> b!1393299 e!788970))

(declare-fun res!932815 () Bool)

(assert (=> b!1393299 (=> (not res!932815) (not e!788970))))

(assert (=> b!1393299 (= res!932815 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46600 0))(
  ( (Unit!46601) )
))
(declare-fun lt!611906 () Unit!46600)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95260 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46600)

(assert (=> b!1393299 (= lt!611906 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1393299 (= lt!611908 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45984 a!2901) j!112) mask!2840) (select (arr!45984 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393300 () Bool)

(declare-fun res!932817 () Bool)

(assert (=> b!1393300 (=> (not res!932817) (not e!788972))))

(assert (=> b!1393300 (= res!932817 (validKeyInArray!0 (select (arr!45984 a!2901) j!112)))))

(assert (= (and start!119660 res!932810) b!1393294))

(assert (= (and b!1393294 res!932814) b!1393297))

(assert (= (and b!1393297 res!932812) b!1393300))

(assert (= (and b!1393300 res!932817) b!1393296))

(assert (= (and b!1393296 res!932813) b!1393295))

(assert (= (and b!1393295 res!932816) b!1393299))

(assert (= (and b!1393299 res!932815) b!1393298))

(assert (= (and b!1393299 (not res!932811)) b!1393293))

(declare-fun m!1279237 () Bool)

(assert (=> start!119660 m!1279237))

(declare-fun m!1279239 () Bool)

(assert (=> start!119660 m!1279239))

(declare-fun m!1279241 () Bool)

(assert (=> b!1393295 m!1279241))

(declare-fun m!1279243 () Bool)

(assert (=> b!1393296 m!1279243))

(declare-fun m!1279245 () Bool)

(assert (=> b!1393298 m!1279245))

(assert (=> b!1393298 m!1279245))

(declare-fun m!1279247 () Bool)

(assert (=> b!1393298 m!1279247))

(assert (=> b!1393300 m!1279245))

(assert (=> b!1393300 m!1279245))

(declare-fun m!1279249 () Bool)

(assert (=> b!1393300 m!1279249))

(declare-fun m!1279251 () Bool)

(assert (=> b!1393293 m!1279251))

(declare-fun m!1279253 () Bool)

(assert (=> b!1393293 m!1279253))

(assert (=> b!1393293 m!1279253))

(declare-fun m!1279255 () Bool)

(assert (=> b!1393293 m!1279255))

(assert (=> b!1393293 m!1279255))

(assert (=> b!1393293 m!1279253))

(declare-fun m!1279257 () Bool)

(assert (=> b!1393293 m!1279257))

(assert (=> b!1393299 m!1279245))

(declare-fun m!1279259 () Bool)

(assert (=> b!1393299 m!1279259))

(assert (=> b!1393299 m!1279245))

(declare-fun m!1279261 () Bool)

(assert (=> b!1393299 m!1279261))

(assert (=> b!1393299 m!1279259))

(assert (=> b!1393299 m!1279245))

(declare-fun m!1279263 () Bool)

(assert (=> b!1393299 m!1279263))

(declare-fun m!1279265 () Bool)

(assert (=> b!1393299 m!1279265))

(declare-fun m!1279267 () Bool)

(assert (=> b!1393297 m!1279267))

(assert (=> b!1393297 m!1279267))

(declare-fun m!1279269 () Bool)

(assert (=> b!1393297 m!1279269))

(push 1)

(assert (not start!119660))

(assert (not b!1393296))

(assert (not b!1393299))

(assert (not b!1393298))

(assert (not b!1393297))

(assert (not b!1393300))

(assert (not b!1393295))

(assert (not b!1393293))

(check-sat)

(pop 1)

