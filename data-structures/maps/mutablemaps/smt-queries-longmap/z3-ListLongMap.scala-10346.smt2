; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121668 () Bool)

(assert start!121668)

(declare-fun b!1412950 () Bool)

(declare-fun e!799643 () Bool)

(assert (=> b!1412950 (= e!799643 true)))

(declare-fun e!799641 () Bool)

(assert (=> b!1412950 e!799641))

(declare-fun res!950051 () Bool)

(assert (=> b!1412950 (=> (not res!950051) (not e!799641))))

(declare-datatypes ((array!96524 0))(
  ( (array!96525 (arr!46595 (Array (_ BitVec 32) (_ BitVec 64))) (size!47146 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96524)

(declare-datatypes ((SeekEntryResult!10928 0))(
  ( (MissingZero!10928 (index!46091 (_ BitVec 32))) (Found!10928 (index!46092 (_ BitVec 32))) (Intermediate!10928 (undefined!11740 Bool) (index!46093 (_ BitVec 32)) (x!127682 (_ BitVec 32))) (Undefined!10928) (MissingVacant!10928 (index!46094 (_ BitVec 32))) )
))
(declare-fun lt!622694 () SeekEntryResult!10928)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!622695 () SeekEntryResult!10928)

(assert (=> b!1412950 (= res!950051 (and (not (undefined!11740 lt!622695)) (= (index!46093 lt!622695) i!1037) (bvslt (x!127682 lt!622695) (x!127682 lt!622694)) (= (select (store (arr!46595 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46093 lt!622695)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!622693 () (_ BitVec 32))

(declare-datatypes ((Unit!47780 0))(
  ( (Unit!47781) )
))
(declare-fun lt!622690 () Unit!47780)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96524 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47780)

(assert (=> b!1412950 (= lt!622690 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622693 (x!127682 lt!622694) (index!46093 lt!622694) (x!127682 lt!622695) (index!46093 lt!622695) (undefined!11740 lt!622695) mask!2840))))

(declare-fun b!1412951 () Bool)

(declare-fun res!950057 () Bool)

(declare-fun e!799644 () Bool)

(assert (=> b!1412951 (=> (not res!950057) (not e!799644))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412951 (= res!950057 (validKeyInArray!0 (select (arr!46595 a!2901) j!112)))))

(declare-fun b!1412952 () Bool)

(declare-fun res!950053 () Bool)

(assert (=> b!1412952 (=> (not res!950053) (not e!799644))))

(assert (=> b!1412952 (= res!950053 (validKeyInArray!0 (select (arr!46595 a!2901) i!1037)))))

(declare-fun b!1412953 () Bool)

(declare-fun e!799642 () Bool)

(assert (=> b!1412953 (= e!799644 (not e!799642))))

(declare-fun res!950050 () Bool)

(assert (=> b!1412953 (=> res!950050 e!799642)))

(get-info :version)

(assert (=> b!1412953 (= res!950050 (or (not ((_ is Intermediate!10928) lt!622694)) (undefined!11740 lt!622694)))))

(declare-fun e!799646 () Bool)

(assert (=> b!1412953 e!799646))

(declare-fun res!950054 () Bool)

(assert (=> b!1412953 (=> (not res!950054) (not e!799646))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96524 (_ BitVec 32)) Bool)

(assert (=> b!1412953 (= res!950054 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622692 () Unit!47780)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96524 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47780)

(assert (=> b!1412953 (= lt!622692 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96524 (_ BitVec 32)) SeekEntryResult!10928)

(assert (=> b!1412953 (= lt!622694 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622693 (select (arr!46595 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412953 (= lt!622693 (toIndex!0 (select (arr!46595 a!2901) j!112) mask!2840))))

(declare-fun res!950052 () Bool)

(assert (=> start!121668 (=> (not res!950052) (not e!799644))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121668 (= res!950052 (validMask!0 mask!2840))))

(assert (=> start!121668 e!799644))

(assert (=> start!121668 true))

(declare-fun array_inv!35540 (array!96524) Bool)

(assert (=> start!121668 (array_inv!35540 a!2901)))

(declare-fun b!1412954 () Bool)

(assert (=> b!1412954 (= e!799642 e!799643)))

(declare-fun res!950049 () Bool)

(assert (=> b!1412954 (=> res!950049 e!799643)))

(assert (=> b!1412954 (= res!950049 (or (= lt!622694 lt!622695) (not ((_ is Intermediate!10928) lt!622695))))))

(declare-fun lt!622691 () (_ BitVec 64))

(declare-fun lt!622696 () array!96524)

(assert (=> b!1412954 (= lt!622695 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622691 mask!2840) lt!622691 lt!622696 mask!2840))))

(assert (=> b!1412954 (= lt!622691 (select (store (arr!46595 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412954 (= lt!622696 (array!96525 (store (arr!46595 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47146 a!2901)))))

(declare-fun b!1412955 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96524 (_ BitVec 32)) SeekEntryResult!10928)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96524 (_ BitVec 32)) SeekEntryResult!10928)

(assert (=> b!1412955 (= e!799641 (= (seekEntryOrOpen!0 lt!622691 lt!622696 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127682 lt!622695) (index!46093 lt!622695) (index!46093 lt!622695) (select (arr!46595 a!2901) j!112) lt!622696 mask!2840)))))

(declare-fun b!1412956 () Bool)

(declare-fun res!950058 () Bool)

(assert (=> b!1412956 (=> (not res!950058) (not e!799644))))

(assert (=> b!1412956 (= res!950058 (and (= (size!47146 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47146 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47146 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412957 () Bool)

(declare-fun res!950055 () Bool)

(assert (=> b!1412957 (=> (not res!950055) (not e!799644))))

(declare-datatypes ((List!33294 0))(
  ( (Nil!33291) (Cons!33290 (h!34565 (_ BitVec 64)) (t!47995 List!33294)) )
))
(declare-fun arrayNoDuplicates!0 (array!96524 (_ BitVec 32) List!33294) Bool)

(assert (=> b!1412957 (= res!950055 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33291))))

(declare-fun b!1412958 () Bool)

(assert (=> b!1412958 (= e!799646 (= (seekEntryOrOpen!0 (select (arr!46595 a!2901) j!112) a!2901 mask!2840) (Found!10928 j!112)))))

(declare-fun b!1412959 () Bool)

(declare-fun res!950056 () Bool)

(assert (=> b!1412959 (=> (not res!950056) (not e!799644))))

(assert (=> b!1412959 (= res!950056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121668 res!950052) b!1412956))

(assert (= (and b!1412956 res!950058) b!1412952))

(assert (= (and b!1412952 res!950053) b!1412951))

(assert (= (and b!1412951 res!950057) b!1412959))

(assert (= (and b!1412959 res!950056) b!1412957))

(assert (= (and b!1412957 res!950055) b!1412953))

(assert (= (and b!1412953 res!950054) b!1412958))

(assert (= (and b!1412953 (not res!950050)) b!1412954))

(assert (= (and b!1412954 (not res!950049)) b!1412950))

(assert (= (and b!1412950 res!950051) b!1412955))

(declare-fun m!1303271 () Bool)

(assert (=> b!1412954 m!1303271))

(assert (=> b!1412954 m!1303271))

(declare-fun m!1303273 () Bool)

(assert (=> b!1412954 m!1303273))

(declare-fun m!1303275 () Bool)

(assert (=> b!1412954 m!1303275))

(declare-fun m!1303277 () Bool)

(assert (=> b!1412954 m!1303277))

(declare-fun m!1303279 () Bool)

(assert (=> b!1412958 m!1303279))

(assert (=> b!1412958 m!1303279))

(declare-fun m!1303281 () Bool)

(assert (=> b!1412958 m!1303281))

(declare-fun m!1303283 () Bool)

(assert (=> b!1412955 m!1303283))

(assert (=> b!1412955 m!1303279))

(assert (=> b!1412955 m!1303279))

(declare-fun m!1303285 () Bool)

(assert (=> b!1412955 m!1303285))

(assert (=> b!1412950 m!1303275))

(declare-fun m!1303287 () Bool)

(assert (=> b!1412950 m!1303287))

(declare-fun m!1303289 () Bool)

(assert (=> b!1412950 m!1303289))

(declare-fun m!1303291 () Bool)

(assert (=> b!1412952 m!1303291))

(assert (=> b!1412952 m!1303291))

(declare-fun m!1303293 () Bool)

(assert (=> b!1412952 m!1303293))

(assert (=> b!1412951 m!1303279))

(assert (=> b!1412951 m!1303279))

(declare-fun m!1303295 () Bool)

(assert (=> b!1412951 m!1303295))

(declare-fun m!1303297 () Bool)

(assert (=> b!1412959 m!1303297))

(declare-fun m!1303299 () Bool)

(assert (=> start!121668 m!1303299))

(declare-fun m!1303301 () Bool)

(assert (=> start!121668 m!1303301))

(declare-fun m!1303303 () Bool)

(assert (=> b!1412957 m!1303303))

(assert (=> b!1412953 m!1303279))

(declare-fun m!1303305 () Bool)

(assert (=> b!1412953 m!1303305))

(assert (=> b!1412953 m!1303279))

(declare-fun m!1303307 () Bool)

(assert (=> b!1412953 m!1303307))

(assert (=> b!1412953 m!1303279))

(declare-fun m!1303309 () Bool)

(assert (=> b!1412953 m!1303309))

(declare-fun m!1303311 () Bool)

(assert (=> b!1412953 m!1303311))

(check-sat (not b!1412955) (not b!1412950) (not b!1412953) (not b!1412954) (not b!1412952) (not b!1412959) (not b!1412951) (not b!1412957) (not start!121668) (not b!1412958))
(check-sat)
