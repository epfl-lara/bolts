; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121666 () Bool)

(assert start!121666)

(declare-fun b!1412920 () Bool)

(declare-fun res!950019 () Bool)

(declare-fun e!799626 () Bool)

(assert (=> b!1412920 (=> (not res!950019) (not e!799626))))

(declare-datatypes ((array!96522 0))(
  ( (array!96523 (arr!46594 (Array (_ BitVec 32) (_ BitVec 64))) (size!47145 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96522)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412920 (= res!950019 (validKeyInArray!0 (select (arr!46594 a!2901) j!112)))))

(declare-fun b!1412921 () Bool)

(declare-fun e!799624 () Bool)

(declare-fun e!799628 () Bool)

(assert (=> b!1412921 (= e!799624 e!799628)))

(declare-fun res!950022 () Bool)

(assert (=> b!1412921 (=> res!950022 e!799628)))

(declare-datatypes ((SeekEntryResult!10927 0))(
  ( (MissingZero!10927 (index!46087 (_ BitVec 32))) (Found!10927 (index!46088 (_ BitVec 32))) (Intermediate!10927 (undefined!11739 Bool) (index!46089 (_ BitVec 32)) (x!127681 (_ BitVec 32))) (Undefined!10927) (MissingVacant!10927 (index!46090 (_ BitVec 32))) )
))
(declare-fun lt!622669 () SeekEntryResult!10927)

(declare-fun lt!622672 () SeekEntryResult!10927)

(assert (=> b!1412921 (= res!950022 (or (= lt!622669 lt!622672) (not (is-Intermediate!10927 lt!622672))))))

(declare-fun lt!622673 () (_ BitVec 64))

(declare-fun lt!622675 () array!96522)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96522 (_ BitVec 32)) SeekEntryResult!10927)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412921 (= lt!622672 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622673 mask!2840) lt!622673 lt!622675 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1412921 (= lt!622673 (select (store (arr!46594 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412921 (= lt!622675 (array!96523 (store (arr!46594 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47145 a!2901)))))

(declare-fun b!1412922 () Bool)

(assert (=> b!1412922 (= e!799626 (not e!799624))))

(declare-fun res!950026 () Bool)

(assert (=> b!1412922 (=> res!950026 e!799624)))

(assert (=> b!1412922 (= res!950026 (or (not (is-Intermediate!10927 lt!622669)) (undefined!11739 lt!622669)))))

(declare-fun e!799623 () Bool)

(assert (=> b!1412922 e!799623))

(declare-fun res!950025 () Bool)

(assert (=> b!1412922 (=> (not res!950025) (not e!799623))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96522 (_ BitVec 32)) Bool)

(assert (=> b!1412922 (= res!950025 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47778 0))(
  ( (Unit!47779) )
))
(declare-fun lt!622671 () Unit!47778)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96522 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47778)

(assert (=> b!1412922 (= lt!622671 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!622670 () (_ BitVec 32))

(assert (=> b!1412922 (= lt!622669 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622670 (select (arr!46594 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1412922 (= lt!622670 (toIndex!0 (select (arr!46594 a!2901) j!112) mask!2840))))

(declare-fun res!950021 () Bool)

(assert (=> start!121666 (=> (not res!950021) (not e!799626))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121666 (= res!950021 (validMask!0 mask!2840))))

(assert (=> start!121666 e!799626))

(assert (=> start!121666 true))

(declare-fun array_inv!35539 (array!96522) Bool)

(assert (=> start!121666 (array_inv!35539 a!2901)))

(declare-fun b!1412923 () Bool)

(assert (=> b!1412923 (= e!799628 true)))

(declare-fun e!799625 () Bool)

(assert (=> b!1412923 e!799625))

(declare-fun res!950028 () Bool)

(assert (=> b!1412923 (=> (not res!950028) (not e!799625))))

(assert (=> b!1412923 (= res!950028 (and (not (undefined!11739 lt!622672)) (= (index!46089 lt!622672) i!1037) (bvslt (x!127681 lt!622672) (x!127681 lt!622669)) (= (select (store (arr!46594 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46089 lt!622672)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622674 () Unit!47778)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96522 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47778)

(assert (=> b!1412923 (= lt!622674 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622670 (x!127681 lt!622669) (index!46089 lt!622669) (x!127681 lt!622672) (index!46089 lt!622672) (undefined!11739 lt!622672) mask!2840))))

(declare-fun b!1412924 () Bool)

(declare-fun res!950023 () Bool)

(assert (=> b!1412924 (=> (not res!950023) (not e!799626))))

(assert (=> b!1412924 (= res!950023 (and (= (size!47145 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47145 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47145 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412925 () Bool)

(declare-fun res!950027 () Bool)

(assert (=> b!1412925 (=> (not res!950027) (not e!799626))))

(assert (=> b!1412925 (= res!950027 (validKeyInArray!0 (select (arr!46594 a!2901) i!1037)))))

(declare-fun b!1412926 () Bool)

(declare-fun res!950020 () Bool)

(assert (=> b!1412926 (=> (not res!950020) (not e!799626))))

(declare-datatypes ((List!33293 0))(
  ( (Nil!33290) (Cons!33289 (h!34564 (_ BitVec 64)) (t!47994 List!33293)) )
))
(declare-fun arrayNoDuplicates!0 (array!96522 (_ BitVec 32) List!33293) Bool)

(assert (=> b!1412926 (= res!950020 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33290))))

(declare-fun b!1412927 () Bool)

(declare-fun res!950024 () Bool)

(assert (=> b!1412927 (=> (not res!950024) (not e!799626))))

(assert (=> b!1412927 (= res!950024 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1412928 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96522 (_ BitVec 32)) SeekEntryResult!10927)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96522 (_ BitVec 32)) SeekEntryResult!10927)

(assert (=> b!1412928 (= e!799625 (= (seekEntryOrOpen!0 lt!622673 lt!622675 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127681 lt!622672) (index!46089 lt!622672) (index!46089 lt!622672) (select (arr!46594 a!2901) j!112) lt!622675 mask!2840)))))

(declare-fun b!1412929 () Bool)

(assert (=> b!1412929 (= e!799623 (= (seekEntryOrOpen!0 (select (arr!46594 a!2901) j!112) a!2901 mask!2840) (Found!10927 j!112)))))

(assert (= (and start!121666 res!950021) b!1412924))

(assert (= (and b!1412924 res!950023) b!1412925))

(assert (= (and b!1412925 res!950027) b!1412920))

(assert (= (and b!1412920 res!950019) b!1412927))

(assert (= (and b!1412927 res!950024) b!1412926))

(assert (= (and b!1412926 res!950020) b!1412922))

(assert (= (and b!1412922 res!950025) b!1412929))

(assert (= (and b!1412922 (not res!950026)) b!1412921))

(assert (= (and b!1412921 (not res!950022)) b!1412923))

(assert (= (and b!1412923 res!950028) b!1412928))

(declare-fun m!1303229 () Bool)

(assert (=> b!1412923 m!1303229))

(declare-fun m!1303231 () Bool)

(assert (=> b!1412923 m!1303231))

(declare-fun m!1303233 () Bool)

(assert (=> b!1412923 m!1303233))

(declare-fun m!1303235 () Bool)

(assert (=> b!1412925 m!1303235))

(assert (=> b!1412925 m!1303235))

(declare-fun m!1303237 () Bool)

(assert (=> b!1412925 m!1303237))

(declare-fun m!1303239 () Bool)

(assert (=> b!1412920 m!1303239))

(assert (=> b!1412920 m!1303239))

(declare-fun m!1303241 () Bool)

(assert (=> b!1412920 m!1303241))

(assert (=> b!1412922 m!1303239))

(declare-fun m!1303243 () Bool)

(assert (=> b!1412922 m!1303243))

(assert (=> b!1412922 m!1303239))

(assert (=> b!1412922 m!1303239))

(declare-fun m!1303245 () Bool)

(assert (=> b!1412922 m!1303245))

(declare-fun m!1303247 () Bool)

(assert (=> b!1412922 m!1303247))

(declare-fun m!1303249 () Bool)

(assert (=> b!1412922 m!1303249))

(declare-fun m!1303251 () Bool)

(assert (=> b!1412921 m!1303251))

(assert (=> b!1412921 m!1303251))

(declare-fun m!1303253 () Bool)

(assert (=> b!1412921 m!1303253))

(assert (=> b!1412921 m!1303229))

(declare-fun m!1303255 () Bool)

(assert (=> b!1412921 m!1303255))

(declare-fun m!1303257 () Bool)

(assert (=> b!1412926 m!1303257))

(assert (=> b!1412929 m!1303239))

(assert (=> b!1412929 m!1303239))

(declare-fun m!1303259 () Bool)

(assert (=> b!1412929 m!1303259))

(declare-fun m!1303261 () Bool)

(assert (=> start!121666 m!1303261))

(declare-fun m!1303263 () Bool)

(assert (=> start!121666 m!1303263))

(declare-fun m!1303265 () Bool)

(assert (=> b!1412927 m!1303265))

(declare-fun m!1303267 () Bool)

(assert (=> b!1412928 m!1303267))

(assert (=> b!1412928 m!1303239))

(assert (=> b!1412928 m!1303239))

(declare-fun m!1303269 () Bool)

(assert (=> b!1412928 m!1303269))

(push 1)

