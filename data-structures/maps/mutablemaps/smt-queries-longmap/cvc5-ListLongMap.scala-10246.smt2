; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120568 () Bool)

(assert start!120568)

(declare-fun b!1403376 () Bool)

(declare-fun e!794636 () Bool)

(assert (=> b!1403376 (= e!794636 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95895 0))(
  ( (array!95896 (arr!46294 (Array (_ BitVec 32) (_ BitVec 64))) (size!46845 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95895)

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10633 0))(
  ( (MissingZero!10633 (index!44908 (_ BitVec 32))) (Found!10633 (index!44909 (_ BitVec 32))) (Intermediate!10633 (undefined!11445 Bool) (index!44910 (_ BitVec 32)) (x!126527 (_ BitVec 32))) (Undefined!10633) (MissingVacant!10633 (index!44911 (_ BitVec 32))) )
))
(declare-fun lt!618347 () SeekEntryResult!10633)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95895 (_ BitVec 32)) SeekEntryResult!10633)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403376 (= lt!618347 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46294 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46294 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95896 (store (arr!46294 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46845 a!2901)) mask!2840))))

(declare-fun b!1403377 () Bool)

(declare-fun res!942002 () Bool)

(declare-fun e!794638 () Bool)

(assert (=> b!1403377 (=> (not res!942002) (not e!794638))))

(declare-datatypes ((List!32993 0))(
  ( (Nil!32990) (Cons!32989 (h!34237 (_ BitVec 64)) (t!47694 List!32993)) )
))
(declare-fun arrayNoDuplicates!0 (array!95895 (_ BitVec 32) List!32993) Bool)

(assert (=> b!1403377 (= res!942002 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32990))))

(declare-fun e!794637 () Bool)

(declare-fun b!1403378 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95895 (_ BitVec 32)) SeekEntryResult!10633)

(assert (=> b!1403378 (= e!794637 (= (seekEntryOrOpen!0 (select (arr!46294 a!2901) j!112) a!2901 mask!2840) (Found!10633 j!112)))))

(declare-fun b!1403379 () Bool)

(declare-fun res!942003 () Bool)

(assert (=> b!1403379 (=> (not res!942003) (not e!794638))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95895 (_ BitVec 32)) Bool)

(assert (=> b!1403379 (= res!942003 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403380 () Bool)

(assert (=> b!1403380 (= e!794638 (not e!794636))))

(declare-fun res!941999 () Bool)

(assert (=> b!1403380 (=> res!941999 e!794636)))

(declare-fun lt!618349 () SeekEntryResult!10633)

(assert (=> b!1403380 (= res!941999 (or (not (is-Intermediate!10633 lt!618349)) (undefined!11445 lt!618349)))))

(assert (=> b!1403380 e!794637))

(declare-fun res!941997 () Bool)

(assert (=> b!1403380 (=> (not res!941997) (not e!794637))))

(assert (=> b!1403380 (= res!941997 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47220 0))(
  ( (Unit!47221) )
))
(declare-fun lt!618348 () Unit!47220)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95895 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47220)

(assert (=> b!1403380 (= lt!618348 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1403380 (= lt!618349 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46294 a!2901) j!112) mask!2840) (select (arr!46294 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403381 () Bool)

(declare-fun res!942001 () Bool)

(assert (=> b!1403381 (=> (not res!942001) (not e!794638))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403381 (= res!942001 (validKeyInArray!0 (select (arr!46294 a!2901) j!112)))))

(declare-fun res!941996 () Bool)

(assert (=> start!120568 (=> (not res!941996) (not e!794638))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120568 (= res!941996 (validMask!0 mask!2840))))

(assert (=> start!120568 e!794638))

(assert (=> start!120568 true))

(declare-fun array_inv!35239 (array!95895) Bool)

(assert (=> start!120568 (array_inv!35239 a!2901)))

(declare-fun b!1403382 () Bool)

(declare-fun res!942000 () Bool)

(assert (=> b!1403382 (=> (not res!942000) (not e!794638))))

(assert (=> b!1403382 (= res!942000 (and (= (size!46845 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46845 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46845 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403383 () Bool)

(declare-fun res!941998 () Bool)

(assert (=> b!1403383 (=> (not res!941998) (not e!794638))))

(assert (=> b!1403383 (= res!941998 (validKeyInArray!0 (select (arr!46294 a!2901) i!1037)))))

(assert (= (and start!120568 res!941996) b!1403382))

(assert (= (and b!1403382 res!942000) b!1403383))

(assert (= (and b!1403383 res!941998) b!1403381))

(assert (= (and b!1403381 res!942001) b!1403379))

(assert (= (and b!1403379 res!942003) b!1403377))

(assert (= (and b!1403377 res!942002) b!1403380))

(assert (= (and b!1403380 res!941997) b!1403378))

(assert (= (and b!1403380 (not res!941999)) b!1403376))

(declare-fun m!1292081 () Bool)

(assert (=> b!1403378 m!1292081))

(assert (=> b!1403378 m!1292081))

(declare-fun m!1292083 () Bool)

(assert (=> b!1403378 m!1292083))

(declare-fun m!1292085 () Bool)

(assert (=> b!1403383 m!1292085))

(assert (=> b!1403383 m!1292085))

(declare-fun m!1292087 () Bool)

(assert (=> b!1403383 m!1292087))

(assert (=> b!1403380 m!1292081))

(declare-fun m!1292089 () Bool)

(assert (=> b!1403380 m!1292089))

(assert (=> b!1403380 m!1292081))

(declare-fun m!1292091 () Bool)

(assert (=> b!1403380 m!1292091))

(assert (=> b!1403380 m!1292089))

(assert (=> b!1403380 m!1292081))

(declare-fun m!1292093 () Bool)

(assert (=> b!1403380 m!1292093))

(declare-fun m!1292095 () Bool)

(assert (=> b!1403380 m!1292095))

(assert (=> b!1403381 m!1292081))

(assert (=> b!1403381 m!1292081))

(declare-fun m!1292097 () Bool)

(assert (=> b!1403381 m!1292097))

(declare-fun m!1292099 () Bool)

(assert (=> b!1403379 m!1292099))

(declare-fun m!1292101 () Bool)

(assert (=> b!1403377 m!1292101))

(declare-fun m!1292103 () Bool)

(assert (=> start!120568 m!1292103))

(declare-fun m!1292105 () Bool)

(assert (=> start!120568 m!1292105))

(declare-fun m!1292107 () Bool)

(assert (=> b!1403376 m!1292107))

(declare-fun m!1292109 () Bool)

(assert (=> b!1403376 m!1292109))

(assert (=> b!1403376 m!1292109))

(declare-fun m!1292111 () Bool)

(assert (=> b!1403376 m!1292111))

(assert (=> b!1403376 m!1292111))

(assert (=> b!1403376 m!1292109))

(declare-fun m!1292113 () Bool)

(assert (=> b!1403376 m!1292113))

(push 1)

(assert (not b!1403383))

(assert (not start!120568))

(assert (not b!1403379))

(assert (not b!1403380))

(assert (not b!1403376))

(assert (not b!1403377))

(assert (not b!1403381))

(assert (not b!1403378))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

