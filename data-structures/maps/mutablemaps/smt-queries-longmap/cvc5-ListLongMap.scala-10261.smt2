; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120658 () Bool)

(assert start!120658)

(declare-fun b!1404263 () Bool)

(declare-fun e!794992 () Bool)

(assert (=> b!1404263 (= e!794992 false)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95985 0))(
  ( (array!95986 (arr!46339 (Array (_ BitVec 32) (_ BitVec 64))) (size!46890 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95985)

(declare-datatypes ((SeekEntryResult!10672 0))(
  ( (MissingZero!10672 (index!45064 (_ BitVec 32))) (Found!10672 (index!45065 (_ BitVec 32))) (Intermediate!10672 (undefined!11484 Bool) (index!45066 (_ BitVec 32)) (x!126686 (_ BitVec 32))) (Undefined!10672) (MissingVacant!10672 (index!45067 (_ BitVec 32))) )
))
(declare-fun lt!618568 () SeekEntryResult!10672)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95985 (_ BitVec 32)) SeekEntryResult!10672)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404263 (= lt!618568 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46339 a!2901) j!112) mask!2840) (select (arr!46339 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!942886 () Bool)

(assert (=> start!120658 (=> (not res!942886) (not e!794992))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120658 (= res!942886 (validMask!0 mask!2840))))

(assert (=> start!120658 e!794992))

(assert (=> start!120658 true))

(declare-fun array_inv!35284 (array!95985) Bool)

(assert (=> start!120658 (array_inv!35284 a!2901)))

(declare-fun b!1404264 () Bool)

(declare-fun res!942887 () Bool)

(assert (=> b!1404264 (=> (not res!942887) (not e!794992))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404264 (= res!942887 (validKeyInArray!0 (select (arr!46339 a!2901) j!112)))))

(declare-fun b!1404265 () Bool)

(declare-fun res!942888 () Bool)

(assert (=> b!1404265 (=> (not res!942888) (not e!794992))))

(declare-datatypes ((List!33038 0))(
  ( (Nil!33035) (Cons!33034 (h!34282 (_ BitVec 64)) (t!47739 List!33038)) )
))
(declare-fun arrayNoDuplicates!0 (array!95985 (_ BitVec 32) List!33038) Bool)

(assert (=> b!1404265 (= res!942888 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33035))))

(declare-fun b!1404266 () Bool)

(declare-fun res!942885 () Bool)

(assert (=> b!1404266 (=> (not res!942885) (not e!794992))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1404266 (= res!942885 (validKeyInArray!0 (select (arr!46339 a!2901) i!1037)))))

(declare-fun b!1404267 () Bool)

(declare-fun res!942883 () Bool)

(assert (=> b!1404267 (=> (not res!942883) (not e!794992))))

(assert (=> b!1404267 (= res!942883 (and (= (size!46890 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46890 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46890 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404268 () Bool)

(declare-fun res!942884 () Bool)

(assert (=> b!1404268 (=> (not res!942884) (not e!794992))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95985 (_ BitVec 32)) Bool)

(assert (=> b!1404268 (= res!942884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120658 res!942886) b!1404267))

(assert (= (and b!1404267 res!942883) b!1404266))

(assert (= (and b!1404266 res!942885) b!1404264))

(assert (= (and b!1404264 res!942887) b!1404268))

(assert (= (and b!1404268 res!942884) b!1404265))

(assert (= (and b!1404265 res!942888) b!1404263))

(declare-fun m!1293149 () Bool)

(assert (=> b!1404268 m!1293149))

(declare-fun m!1293151 () Bool)

(assert (=> b!1404263 m!1293151))

(assert (=> b!1404263 m!1293151))

(declare-fun m!1293153 () Bool)

(assert (=> b!1404263 m!1293153))

(assert (=> b!1404263 m!1293153))

(assert (=> b!1404263 m!1293151))

(declare-fun m!1293155 () Bool)

(assert (=> b!1404263 m!1293155))

(declare-fun m!1293157 () Bool)

(assert (=> b!1404266 m!1293157))

(assert (=> b!1404266 m!1293157))

(declare-fun m!1293159 () Bool)

(assert (=> b!1404266 m!1293159))

(declare-fun m!1293161 () Bool)

(assert (=> b!1404265 m!1293161))

(declare-fun m!1293163 () Bool)

(assert (=> start!120658 m!1293163))

(declare-fun m!1293165 () Bool)

(assert (=> start!120658 m!1293165))

(assert (=> b!1404264 m!1293151))

(assert (=> b!1404264 m!1293151))

(declare-fun m!1293167 () Bool)

(assert (=> b!1404264 m!1293167))

(push 1)

(assert (not start!120658))

(assert (not b!1404263))

(assert (not b!1404266))

(assert (not b!1404264))

(assert (not b!1404265))

(assert (not b!1404268))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

