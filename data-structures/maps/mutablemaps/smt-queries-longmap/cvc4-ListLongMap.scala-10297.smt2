; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121148 () Bool)

(assert start!121148)

(declare-fun res!945861 () Bool)

(declare-fun e!796931 () Bool)

(assert (=> start!121148 (=> (not res!945861) (not e!796931))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121148 (= res!945861 (validMask!0 mask!2840))))

(assert (=> start!121148 e!796931))

(assert (=> start!121148 true))

(declare-datatypes ((array!96220 0))(
  ( (array!96221 (arr!46449 (Array (_ BitVec 32) (_ BitVec 64))) (size!47000 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96220)

(declare-fun array_inv!35394 (array!96220) Bool)

(assert (=> start!121148 (array_inv!35394 a!2901)))

(declare-fun b!1408028 () Bool)

(declare-fun res!945867 () Bool)

(assert (=> b!1408028 (=> (not res!945867) (not e!796931))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96220 (_ BitVec 32)) Bool)

(assert (=> b!1408028 (= res!945867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408029 () Bool)

(declare-fun e!796930 () Bool)

(assert (=> b!1408029 (= e!796930 true)))

(declare-fun lt!620068 () array!96220)

(declare-datatypes ((SeekEntryResult!10782 0))(
  ( (MissingZero!10782 (index!45504 (_ BitVec 32))) (Found!10782 (index!45505 (_ BitVec 32))) (Intermediate!10782 (undefined!11594 Bool) (index!45506 (_ BitVec 32)) (x!127114 (_ BitVec 32))) (Undefined!10782) (MissingVacant!10782 (index!45507 (_ BitVec 32))) )
))
(declare-fun lt!620067 () SeekEntryResult!10782)

(declare-fun lt!620066 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96220 (_ BitVec 32)) SeekEntryResult!10782)

(assert (=> b!1408029 (= lt!620067 (seekEntryOrOpen!0 lt!620066 lt!620068 mask!2840))))

(declare-fun lt!620065 () (_ BitVec 32))

(declare-fun lt!620062 () SeekEntryResult!10782)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((Unit!47488 0))(
  ( (Unit!47489) )
))
(declare-fun lt!620064 () Unit!47488)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!96220 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47488)

(assert (=> b!1408029 (= lt!620064 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!620065 (x!127114 lt!620062) (index!45506 lt!620062) mask!2840))))

(declare-fun b!1408030 () Bool)

(declare-fun res!945866 () Bool)

(assert (=> b!1408030 (=> (not res!945866) (not e!796931))))

(assert (=> b!1408030 (= res!945866 (and (= (size!47000 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47000 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47000 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408031 () Bool)

(declare-fun res!945860 () Bool)

(assert (=> b!1408031 (=> (not res!945860) (not e!796931))))

(declare-datatypes ((List!33148 0))(
  ( (Nil!33145) (Cons!33144 (h!34407 (_ BitVec 64)) (t!47849 List!33148)) )
))
(declare-fun arrayNoDuplicates!0 (array!96220 (_ BitVec 32) List!33148) Bool)

(assert (=> b!1408031 (= res!945860 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33145))))

(declare-fun b!1408032 () Bool)

(declare-fun res!945865 () Bool)

(assert (=> b!1408032 (=> (not res!945865) (not e!796931))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408032 (= res!945865 (validKeyInArray!0 (select (arr!46449 a!2901) i!1037)))))

(declare-fun b!1408033 () Bool)

(declare-fun e!796928 () Bool)

(assert (=> b!1408033 (= e!796931 (not e!796928))))

(declare-fun res!945864 () Bool)

(assert (=> b!1408033 (=> res!945864 e!796928)))

(assert (=> b!1408033 (= res!945864 (or (not (is-Intermediate!10782 lt!620062)) (undefined!11594 lt!620062)))))

(assert (=> b!1408033 (= lt!620067 (Found!10782 j!112))))

(assert (=> b!1408033 (= lt!620067 (seekEntryOrOpen!0 (select (arr!46449 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1408033 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!620063 () Unit!47488)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96220 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47488)

(assert (=> b!1408033 (= lt!620063 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96220 (_ BitVec 32)) SeekEntryResult!10782)

(assert (=> b!1408033 (= lt!620062 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!620065 (select (arr!46449 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408033 (= lt!620065 (toIndex!0 (select (arr!46449 a!2901) j!112) mask!2840))))

(declare-fun b!1408034 () Bool)

(assert (=> b!1408034 (= e!796928 e!796930)))

(declare-fun res!945863 () Bool)

(assert (=> b!1408034 (=> res!945863 e!796930)))

(assert (=> b!1408034 (= res!945863 (not (= lt!620062 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!620066 mask!2840) lt!620066 lt!620068 mask!2840))))))

(assert (=> b!1408034 (= lt!620066 (select (store (arr!46449 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1408034 (= lt!620068 (array!96221 (store (arr!46449 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47000 a!2901)))))

(declare-fun b!1408035 () Bool)

(declare-fun res!945859 () Bool)

(assert (=> b!1408035 (=> res!945859 e!796930)))

(assert (=> b!1408035 (= res!945859 (or (bvslt (x!127114 lt!620062) #b00000000000000000000000000000000) (bvsgt (x!127114 lt!620062) #b01111111111111111111111111111110) (bvslt lt!620065 #b00000000000000000000000000000000) (bvsge lt!620065 (size!47000 a!2901)) (bvslt (index!45506 lt!620062) #b00000000000000000000000000000000) (bvsge (index!45506 lt!620062) (size!47000 a!2901)) (not (= lt!620062 (Intermediate!10782 false (index!45506 lt!620062) (x!127114 lt!620062))))))))

(declare-fun b!1408036 () Bool)

(declare-fun res!945862 () Bool)

(assert (=> b!1408036 (=> (not res!945862) (not e!796931))))

(assert (=> b!1408036 (= res!945862 (validKeyInArray!0 (select (arr!46449 a!2901) j!112)))))

(assert (= (and start!121148 res!945861) b!1408030))

(assert (= (and b!1408030 res!945866) b!1408032))

(assert (= (and b!1408032 res!945865) b!1408036))

(assert (= (and b!1408036 res!945862) b!1408028))

(assert (= (and b!1408028 res!945867) b!1408031))

(assert (= (and b!1408031 res!945860) b!1408033))

(assert (= (and b!1408033 (not res!945864)) b!1408034))

(assert (= (and b!1408034 (not res!945863)) b!1408035))

(assert (= (and b!1408035 (not res!945859)) b!1408029))

(declare-fun m!1297251 () Bool)

(assert (=> b!1408034 m!1297251))

(assert (=> b!1408034 m!1297251))

(declare-fun m!1297253 () Bool)

(assert (=> b!1408034 m!1297253))

(declare-fun m!1297255 () Bool)

(assert (=> b!1408034 m!1297255))

(declare-fun m!1297257 () Bool)

(assert (=> b!1408034 m!1297257))

(declare-fun m!1297259 () Bool)

(assert (=> start!121148 m!1297259))

(declare-fun m!1297261 () Bool)

(assert (=> start!121148 m!1297261))

(declare-fun m!1297263 () Bool)

(assert (=> b!1408032 m!1297263))

(assert (=> b!1408032 m!1297263))

(declare-fun m!1297265 () Bool)

(assert (=> b!1408032 m!1297265))

(declare-fun m!1297267 () Bool)

(assert (=> b!1408036 m!1297267))

(assert (=> b!1408036 m!1297267))

(declare-fun m!1297269 () Bool)

(assert (=> b!1408036 m!1297269))

(declare-fun m!1297271 () Bool)

(assert (=> b!1408031 m!1297271))

(assert (=> b!1408033 m!1297267))

(declare-fun m!1297273 () Bool)

(assert (=> b!1408033 m!1297273))

(assert (=> b!1408033 m!1297267))

(declare-fun m!1297275 () Bool)

(assert (=> b!1408033 m!1297275))

(assert (=> b!1408033 m!1297267))

(declare-fun m!1297277 () Bool)

(assert (=> b!1408033 m!1297277))

(assert (=> b!1408033 m!1297267))

(declare-fun m!1297279 () Bool)

(assert (=> b!1408033 m!1297279))

(declare-fun m!1297281 () Bool)

(assert (=> b!1408033 m!1297281))

(declare-fun m!1297283 () Bool)

(assert (=> b!1408029 m!1297283))

(declare-fun m!1297285 () Bool)

(assert (=> b!1408029 m!1297285))

(declare-fun m!1297287 () Bool)

(assert (=> b!1408028 m!1297287))

(push 1)

