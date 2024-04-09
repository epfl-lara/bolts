; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119548 () Bool)

(assert start!119548)

(declare-fun b!1392317 () Bool)

(declare-fun res!932007 () Bool)

(declare-fun e!788458 () Bool)

(assert (=> b!1392317 (=> (not res!932007) (not e!788458))))

(declare-datatypes ((array!95199 0))(
  ( (array!95200 (arr!45955 (Array (_ BitVec 32) (_ BitVec 64))) (size!46506 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95199)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1392317 (= res!932007 (validKeyInArray!0 (select (arr!45955 a!2901) j!112)))))

(declare-fun b!1392318 () Bool)

(declare-fun res!932003 () Bool)

(assert (=> b!1392318 (=> (not res!932003) (not e!788458))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1392318 (= res!932003 (validKeyInArray!0 (select (arr!45955 a!2901) i!1037)))))

(declare-fun b!1392319 () Bool)

(declare-fun e!788457 () Bool)

(declare-fun e!788455 () Bool)

(assert (=> b!1392319 (= e!788457 e!788455)))

(declare-fun res!932005 () Bool)

(assert (=> b!1392319 (=> res!932005 e!788455)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!611545 () (_ BitVec 32))

(assert (=> b!1392319 (= res!932005 (or (bvslt mask!2840 #b00000000000000000000000000000000) (bvslt lt!611545 #b00000000000000000000000000000000) (bvsge lt!611545 (bvadd #b00000000000000000000000000000001 mask!2840))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392319 (= lt!611545 (toIndex!0 (select (store (arr!45955 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun b!1392320 () Bool)

(declare-fun res!932001 () Bool)

(assert (=> b!1392320 (=> (not res!932001) (not e!788458))))

(assert (=> b!1392320 (= res!932001 (and (= (size!46506 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46506 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46506 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1392321 () Bool)

(declare-fun res!932000 () Bool)

(assert (=> b!1392321 (=> (not res!932000) (not e!788458))))

(declare-datatypes ((List!32654 0))(
  ( (Nil!32651) (Cons!32650 (h!33880 (_ BitVec 64)) (t!47355 List!32654)) )
))
(declare-fun arrayNoDuplicates!0 (array!95199 (_ BitVec 32) List!32654) Bool)

(assert (=> b!1392321 (= res!932000 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32651))))

(declare-fun res!932002 () Bool)

(assert (=> start!119548 (=> (not res!932002) (not e!788458))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119548 (= res!932002 (validMask!0 mask!2840))))

(assert (=> start!119548 e!788458))

(assert (=> start!119548 true))

(declare-fun array_inv!34900 (array!95199) Bool)

(assert (=> start!119548 (array_inv!34900 a!2901)))

(declare-fun b!1392322 () Bool)

(declare-fun res!932004 () Bool)

(assert (=> b!1392322 (=> (not res!932004) (not e!788458))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95199 (_ BitVec 32)) Bool)

(assert (=> b!1392322 (= res!932004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1392323 () Bool)

(assert (=> b!1392323 (= e!788458 (not e!788457))))

(declare-fun res!931999 () Bool)

(assert (=> b!1392323 (=> res!931999 e!788457)))

(declare-datatypes ((SeekEntryResult!10294 0))(
  ( (MissingZero!10294 (index!43546 (_ BitVec 32))) (Found!10294 (index!43547 (_ BitVec 32))) (Intermediate!10294 (undefined!11106 Bool) (index!43548 (_ BitVec 32)) (x!125239 (_ BitVec 32))) (Undefined!10294) (MissingVacant!10294 (index!43549 (_ BitVec 32))) )
))
(declare-fun lt!611544 () SeekEntryResult!10294)

(assert (=> b!1392323 (= res!931999 (or (not (is-Intermediate!10294 lt!611544)) (undefined!11106 lt!611544)))))

(declare-fun e!788456 () Bool)

(assert (=> b!1392323 e!788456))

(declare-fun res!932006 () Bool)

(assert (=> b!1392323 (=> (not res!932006) (not e!788456))))

(assert (=> b!1392323 (= res!932006 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46542 0))(
  ( (Unit!46543) )
))
(declare-fun lt!611543 () Unit!46542)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95199 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46542)

(assert (=> b!1392323 (= lt!611543 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95199 (_ BitVec 32)) SeekEntryResult!10294)

(assert (=> b!1392323 (= lt!611544 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45955 a!2901) j!112) mask!2840) (select (arr!45955 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392324 () Bool)

(assert (=> b!1392324 (= e!788455 (validKeyInArray!0 (select (store (arr!45955 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(declare-fun b!1392325 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95199 (_ BitVec 32)) SeekEntryResult!10294)

(assert (=> b!1392325 (= e!788456 (= (seekEntryOrOpen!0 (select (arr!45955 a!2901) j!112) a!2901 mask!2840) (Found!10294 j!112)))))

(assert (= (and start!119548 res!932002) b!1392320))

(assert (= (and b!1392320 res!932001) b!1392318))

(assert (= (and b!1392318 res!932003) b!1392317))

(assert (= (and b!1392317 res!932007) b!1392322))

(assert (= (and b!1392322 res!932004) b!1392321))

(assert (= (and b!1392321 res!932000) b!1392323))

(assert (= (and b!1392323 res!932006) b!1392325))

(assert (= (and b!1392323 (not res!931999)) b!1392319))

(assert (= (and b!1392319 (not res!932005)) b!1392324))

(declare-fun m!1278101 () Bool)

(assert (=> b!1392319 m!1278101))

(declare-fun m!1278103 () Bool)

(assert (=> b!1392319 m!1278103))

(assert (=> b!1392319 m!1278103))

(declare-fun m!1278105 () Bool)

(assert (=> b!1392319 m!1278105))

(declare-fun m!1278107 () Bool)

(assert (=> start!119548 m!1278107))

(declare-fun m!1278109 () Bool)

(assert (=> start!119548 m!1278109))

(declare-fun m!1278111 () Bool)

(assert (=> b!1392318 m!1278111))

(assert (=> b!1392318 m!1278111))

(declare-fun m!1278113 () Bool)

(assert (=> b!1392318 m!1278113))

(declare-fun m!1278115 () Bool)

(assert (=> b!1392317 m!1278115))

(assert (=> b!1392317 m!1278115))

(declare-fun m!1278117 () Bool)

(assert (=> b!1392317 m!1278117))

(declare-fun m!1278119 () Bool)

(assert (=> b!1392322 m!1278119))

(declare-fun m!1278121 () Bool)

(assert (=> b!1392321 m!1278121))

(assert (=> b!1392323 m!1278115))

(declare-fun m!1278123 () Bool)

(assert (=> b!1392323 m!1278123))

(assert (=> b!1392323 m!1278115))

(declare-fun m!1278125 () Bool)

(assert (=> b!1392323 m!1278125))

(assert (=> b!1392323 m!1278123))

(assert (=> b!1392323 m!1278115))

(declare-fun m!1278127 () Bool)

(assert (=> b!1392323 m!1278127))

(declare-fun m!1278129 () Bool)

(assert (=> b!1392323 m!1278129))

(assert (=> b!1392324 m!1278101))

(assert (=> b!1392324 m!1278103))

(assert (=> b!1392324 m!1278103))

(declare-fun m!1278131 () Bool)

(assert (=> b!1392324 m!1278131))

(assert (=> b!1392325 m!1278115))

(assert (=> b!1392325 m!1278115))

(declare-fun m!1278133 () Bool)

(assert (=> b!1392325 m!1278133))

(push 1)

