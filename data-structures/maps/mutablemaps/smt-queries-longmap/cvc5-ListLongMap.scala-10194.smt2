; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120130 () Bool)

(assert start!120130)

(declare-fun b!1398089 () Bool)

(declare-fun res!937111 () Bool)

(declare-fun e!791521 () Bool)

(assert (=> b!1398089 (=> (not res!937111) (not e!791521))))

(declare-datatypes ((array!95577 0))(
  ( (array!95578 (arr!46138 (Array (_ BitVec 32) (_ BitVec 64))) (size!46689 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95577)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398089 (= res!937111 (validKeyInArray!0 (select (arr!46138 a!2901) i!1037)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!791524 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1398090 () Bool)

(declare-datatypes ((SeekEntryResult!10477 0))(
  ( (MissingZero!10477 (index!44278 (_ BitVec 32))) (Found!10477 (index!44279 (_ BitVec 32))) (Intermediate!10477 (undefined!11289 Bool) (index!44280 (_ BitVec 32)) (x!125934 (_ BitVec 32))) (Undefined!10477) (MissingVacant!10477 (index!44281 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95577 (_ BitVec 32)) SeekEntryResult!10477)

(assert (=> b!1398090 (= e!791524 (= (seekEntryOrOpen!0 (select (arr!46138 a!2901) j!112) a!2901 mask!2840) (Found!10477 j!112)))))

(declare-fun res!937119 () Bool)

(assert (=> start!120130 (=> (not res!937119) (not e!791521))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120130 (= res!937119 (validMask!0 mask!2840))))

(assert (=> start!120130 e!791521))

(assert (=> start!120130 true))

(declare-fun array_inv!35083 (array!95577) Bool)

(assert (=> start!120130 (array_inv!35083 a!2901)))

(declare-fun b!1398091 () Bool)

(declare-fun e!791523 () Bool)

(assert (=> b!1398091 (= e!791523 true)))

(declare-fun lt!614694 () SeekEntryResult!10477)

(declare-fun lt!614697 () SeekEntryResult!10477)

(assert (=> b!1398091 (and (not (undefined!11289 lt!614694)) (= (index!44280 lt!614694) i!1037) (bvslt (x!125934 lt!614694) (x!125934 lt!614697)) (= (select (store (arr!46138 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44280 lt!614694)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!46908 0))(
  ( (Unit!46909) )
))
(declare-fun lt!614698 () Unit!46908)

(declare-fun lt!614695 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95577 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46908)

(assert (=> b!1398091 (= lt!614698 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614695 (x!125934 lt!614697) (index!44280 lt!614697) (x!125934 lt!614694) (index!44280 lt!614694) (undefined!11289 lt!614694) mask!2840))))

(declare-fun b!1398092 () Bool)

(declare-fun res!937117 () Bool)

(assert (=> b!1398092 (=> (not res!937117) (not e!791521))))

(declare-datatypes ((List!32837 0))(
  ( (Nil!32834) (Cons!32833 (h!34075 (_ BitVec 64)) (t!47538 List!32837)) )
))
(declare-fun arrayNoDuplicates!0 (array!95577 (_ BitVec 32) List!32837) Bool)

(assert (=> b!1398092 (= res!937117 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32834))))

(declare-fun b!1398093 () Bool)

(declare-fun res!937115 () Bool)

(assert (=> b!1398093 (=> (not res!937115) (not e!791521))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95577 (_ BitVec 32)) Bool)

(assert (=> b!1398093 (= res!937115 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1398094 () Bool)

(declare-fun e!791525 () Bool)

(assert (=> b!1398094 (= e!791525 e!791523)))

(declare-fun res!937113 () Bool)

(assert (=> b!1398094 (=> res!937113 e!791523)))

(assert (=> b!1398094 (= res!937113 (or (= lt!614697 lt!614694) (not (is-Intermediate!10477 lt!614694))))))

(declare-fun lt!614696 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95577 (_ BitVec 32)) SeekEntryResult!10477)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398094 (= lt!614694 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614696 mask!2840) lt!614696 (array!95578 (store (arr!46138 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46689 a!2901)) mask!2840))))

(assert (=> b!1398094 (= lt!614696 (select (store (arr!46138 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1398095 () Bool)

(declare-fun res!937118 () Bool)

(assert (=> b!1398095 (=> (not res!937118) (not e!791521))))

(assert (=> b!1398095 (= res!937118 (and (= (size!46689 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46689 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46689 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1398096 () Bool)

(declare-fun res!937116 () Bool)

(assert (=> b!1398096 (=> (not res!937116) (not e!791521))))

(assert (=> b!1398096 (= res!937116 (validKeyInArray!0 (select (arr!46138 a!2901) j!112)))))

(declare-fun b!1398097 () Bool)

(assert (=> b!1398097 (= e!791521 (not e!791525))))

(declare-fun res!937114 () Bool)

(assert (=> b!1398097 (=> res!937114 e!791525)))

(assert (=> b!1398097 (= res!937114 (or (not (is-Intermediate!10477 lt!614697)) (undefined!11289 lt!614697)))))

(assert (=> b!1398097 e!791524))

(declare-fun res!937112 () Bool)

(assert (=> b!1398097 (=> (not res!937112) (not e!791524))))

(assert (=> b!1398097 (= res!937112 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!614693 () Unit!46908)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95577 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46908)

(assert (=> b!1398097 (= lt!614693 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1398097 (= lt!614697 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614695 (select (arr!46138 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1398097 (= lt!614695 (toIndex!0 (select (arr!46138 a!2901) j!112) mask!2840))))

(assert (= (and start!120130 res!937119) b!1398095))

(assert (= (and b!1398095 res!937118) b!1398089))

(assert (= (and b!1398089 res!937111) b!1398096))

(assert (= (and b!1398096 res!937116) b!1398093))

(assert (= (and b!1398093 res!937115) b!1398092))

(assert (= (and b!1398092 res!937117) b!1398097))

(assert (= (and b!1398097 res!937112) b!1398090))

(assert (= (and b!1398097 (not res!937114)) b!1398094))

(assert (= (and b!1398094 (not res!937113)) b!1398091))

(declare-fun m!1285175 () Bool)

(assert (=> b!1398092 m!1285175))

(declare-fun m!1285177 () Bool)

(assert (=> b!1398096 m!1285177))

(assert (=> b!1398096 m!1285177))

(declare-fun m!1285179 () Bool)

(assert (=> b!1398096 m!1285179))

(assert (=> b!1398090 m!1285177))

(assert (=> b!1398090 m!1285177))

(declare-fun m!1285181 () Bool)

(assert (=> b!1398090 m!1285181))

(declare-fun m!1285183 () Bool)

(assert (=> b!1398093 m!1285183))

(assert (=> b!1398097 m!1285177))

(declare-fun m!1285185 () Bool)

(assert (=> b!1398097 m!1285185))

(declare-fun m!1285187 () Bool)

(assert (=> b!1398097 m!1285187))

(declare-fun m!1285189 () Bool)

(assert (=> b!1398097 m!1285189))

(assert (=> b!1398097 m!1285177))

(declare-fun m!1285191 () Bool)

(assert (=> b!1398097 m!1285191))

(assert (=> b!1398097 m!1285177))

(declare-fun m!1285193 () Bool)

(assert (=> start!120130 m!1285193))

(declare-fun m!1285195 () Bool)

(assert (=> start!120130 m!1285195))

(declare-fun m!1285197 () Bool)

(assert (=> b!1398091 m!1285197))

(declare-fun m!1285199 () Bool)

(assert (=> b!1398091 m!1285199))

(declare-fun m!1285201 () Bool)

(assert (=> b!1398091 m!1285201))

(declare-fun m!1285203 () Bool)

(assert (=> b!1398089 m!1285203))

(assert (=> b!1398089 m!1285203))

(declare-fun m!1285205 () Bool)

(assert (=> b!1398089 m!1285205))

(declare-fun m!1285207 () Bool)

(assert (=> b!1398094 m!1285207))

(assert (=> b!1398094 m!1285197))

(assert (=> b!1398094 m!1285207))

(declare-fun m!1285209 () Bool)

(assert (=> b!1398094 m!1285209))

(declare-fun m!1285211 () Bool)

(assert (=> b!1398094 m!1285211))

(push 1)

