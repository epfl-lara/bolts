; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118560 () Bool)

(assert start!118560)

(declare-fun b!1385638 () Bool)

(declare-fun e!785108 () Bool)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385638 (= e!785108 (= i!1065 startIndex!16))))

(declare-fun res!927001 () Bool)

(assert (=> start!118560 (=> (not res!927001) (not e!785108))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118560 (= res!927001 (validMask!0 mask!2987))))

(assert (=> start!118560 e!785108))

(assert (=> start!118560 true))

(declare-datatypes ((array!94754 0))(
  ( (array!94755 (arr!45749 (Array (_ BitVec 32) (_ BitVec 64))) (size!46300 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94754)

(declare-fun array_inv!34694 (array!94754) Bool)

(assert (=> start!118560 (array_inv!34694 a!2938)))

(declare-fun b!1385639 () Bool)

(declare-fun res!927000 () Bool)

(assert (=> b!1385639 (=> (not res!927000) (not e!785108))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94754 (_ BitVec 32)) Bool)

(assert (=> b!1385639 (= res!927000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385640 () Bool)

(declare-fun res!926997 () Bool)

(assert (=> b!1385640 (=> (not res!926997) (not e!785108))))

(declare-datatypes ((List!32457 0))(
  ( (Nil!32454) (Cons!32453 (h!33662 (_ BitVec 64)) (t!47158 List!32457)) )
))
(declare-fun arrayNoDuplicates!0 (array!94754 (_ BitVec 32) List!32457) Bool)

(assert (=> b!1385640 (= res!926997 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32454))))

(declare-fun b!1385641 () Bool)

(declare-fun res!926999 () Bool)

(assert (=> b!1385641 (=> (not res!926999) (not e!785108))))

(assert (=> b!1385641 (= res!926999 (and (not (= (select (arr!45749 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45749 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1385642 () Bool)

(declare-fun res!927002 () Bool)

(assert (=> b!1385642 (=> (not res!927002) (not e!785108))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385642 (= res!927002 (validKeyInArray!0 (select (arr!45749 a!2938) i!1065)))))

(declare-fun b!1385643 () Bool)

(declare-fun res!926998 () Bool)

(assert (=> b!1385643 (=> (not res!926998) (not e!785108))))

(assert (=> b!1385643 (= res!926998 (validKeyInArray!0 (select (arr!45749 a!2938) startIndex!16)))))

(declare-fun b!1385644 () Bool)

(declare-fun res!927003 () Bool)

(assert (=> b!1385644 (=> (not res!927003) (not e!785108))))

(assert (=> b!1385644 (= res!927003 (and (= (size!46300 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46300 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46300 a!2938))))))

(assert (= (and start!118560 res!927001) b!1385644))

(assert (= (and b!1385644 res!927003) b!1385642))

(assert (= (and b!1385642 res!927002) b!1385640))

(assert (= (and b!1385640 res!926997) b!1385639))

(assert (= (and b!1385639 res!927000) b!1385641))

(assert (= (and b!1385641 res!926999) b!1385643))

(assert (= (and b!1385643 res!926998) b!1385638))

(declare-fun m!1270977 () Bool)

(assert (=> b!1385641 m!1270977))

(declare-fun m!1270979 () Bool)

(assert (=> b!1385640 m!1270979))

(assert (=> b!1385642 m!1270977))

(assert (=> b!1385642 m!1270977))

(declare-fun m!1270981 () Bool)

(assert (=> b!1385642 m!1270981))

(declare-fun m!1270983 () Bool)

(assert (=> b!1385643 m!1270983))

(assert (=> b!1385643 m!1270983))

(declare-fun m!1270985 () Bool)

(assert (=> b!1385643 m!1270985))

(declare-fun m!1270987 () Bool)

(assert (=> start!118560 m!1270987))

(declare-fun m!1270989 () Bool)

(assert (=> start!118560 m!1270989))

(declare-fun m!1270991 () Bool)

(assert (=> b!1385639 m!1270991))

(check-sat (not b!1385643) (not b!1385640) (not b!1385639) (not b!1385642) (not start!118560))
