; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122016 () Bool)

(assert start!122016)

(declare-fun b!1415518 () Bool)

(declare-fun e!801181 () Bool)

(declare-fun e!801178 () Bool)

(assert (=> b!1415518 (= e!801181 e!801178)))

(declare-fun res!951676 () Bool)

(assert (=> b!1415518 (=> res!951676 e!801178)))

(declare-datatypes ((SeekEntryResult!10970 0))(
  ( (MissingZero!10970 (index!46271 (_ BitVec 32))) (Found!10970 (index!46272 (_ BitVec 32))) (Intermediate!10970 (undefined!11782 Bool) (index!46273 (_ BitVec 32)) (x!127884 (_ BitVec 32))) (Undefined!10970) (MissingVacant!10970 (index!46274 (_ BitVec 32))) )
))
(declare-fun lt!624201 () SeekEntryResult!10970)

(declare-fun lt!624199 () SeekEntryResult!10970)

(get-info :version)

(assert (=> b!1415518 (= res!951676 (or (= lt!624201 lt!624199) (not ((_ is Intermediate!10970) lt!624199))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!624198 () (_ BitVec 64))

(declare-datatypes ((array!96620 0))(
  ( (array!96621 (arr!46637 (Array (_ BitVec 32) (_ BitVec 64))) (size!47188 (_ BitVec 32))) )
))
(declare-fun lt!624200 () array!96620)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96620 (_ BitVec 32)) SeekEntryResult!10970)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415518 (= lt!624199 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624198 mask!2840) lt!624198 lt!624200 mask!2840))))

(declare-fun a!2901 () array!96620)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1415518 (= lt!624198 (select (store (arr!46637 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415518 (= lt!624200 (array!96621 (store (arr!46637 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47188 a!2901)))))

(declare-fun b!1415519 () Bool)

(declare-fun res!951675 () Bool)

(declare-fun e!801180 () Bool)

(assert (=> b!1415519 (=> (not res!951675) (not e!801180))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96620 (_ BitVec 32)) Bool)

(assert (=> b!1415519 (= res!951675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415521 () Bool)

(declare-fun res!951677 () Bool)

(assert (=> b!1415521 (=> (not res!951677) (not e!801180))))

(declare-datatypes ((List!33336 0))(
  ( (Nil!33333) (Cons!33332 (h!34619 (_ BitVec 64)) (t!48037 List!33336)) )
))
(declare-fun arrayNoDuplicates!0 (array!96620 (_ BitVec 32) List!33336) Bool)

(assert (=> b!1415521 (= res!951677 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33333))))

(declare-fun b!1415522 () Bool)

(declare-fun res!951673 () Bool)

(assert (=> b!1415522 (=> (not res!951673) (not e!801180))))

(assert (=> b!1415522 (= res!951673 (and (= (size!47188 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47188 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47188 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415523 () Bool)

(declare-fun e!801179 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96620 (_ BitVec 32)) SeekEntryResult!10970)

(assert (=> b!1415523 (= e!801179 (= (seekEntryOrOpen!0 (select (arr!46637 a!2901) j!112) a!2901 mask!2840) (Found!10970 j!112)))))

(declare-fun e!801182 () Bool)

(declare-fun b!1415524 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96620 (_ BitVec 32)) SeekEntryResult!10970)

(assert (=> b!1415524 (= e!801182 (= (seekEntryOrOpen!0 lt!624198 lt!624200 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127884 lt!624199) (index!46273 lt!624199) (index!46273 lt!624199) (select (arr!46637 a!2901) j!112) lt!624200 mask!2840)))))

(declare-fun b!1415525 () Bool)

(declare-fun res!951674 () Bool)

(assert (=> b!1415525 (=> (not res!951674) (not e!801180))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415525 (= res!951674 (validKeyInArray!0 (select (arr!46637 a!2901) i!1037)))))

(declare-fun b!1415526 () Bool)

(declare-fun lt!624197 () (_ BitVec 32))

(assert (=> b!1415526 (= e!801178 (or (bvslt (x!127884 lt!624201) #b00000000000000000000000000000000) (bvsgt (x!127884 lt!624201) #b01111111111111111111111111111110) (bvslt (x!127884 lt!624199) #b00000000000000000000000000000000) (bvsgt (x!127884 lt!624199) #b01111111111111111111111111111110) (bvslt lt!624197 #b00000000000000000000000000000000) (bvsge lt!624197 (size!47188 a!2901)) (bvslt (index!46273 lt!624201) #b00000000000000000000000000000000) (bvsge (index!46273 lt!624201) (size!47188 a!2901)) (bvslt (index!46273 lt!624199) #b00000000000000000000000000000000) (bvsge (index!46273 lt!624199) (size!47188 a!2901)) (not (= lt!624201 (Intermediate!10970 false (index!46273 lt!624201) (x!127884 lt!624201)))) (= lt!624199 (Intermediate!10970 false (index!46273 lt!624199) (x!127884 lt!624199)))))))

(assert (=> b!1415526 e!801182))

(declare-fun res!951678 () Bool)

(assert (=> b!1415526 (=> (not res!951678) (not e!801182))))

(assert (=> b!1415526 (= res!951678 (and (not (undefined!11782 lt!624199)) (= (index!46273 lt!624199) i!1037) (bvslt (x!127884 lt!624199) (x!127884 lt!624201)) (= (select (store (arr!46637 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46273 lt!624199)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47864 0))(
  ( (Unit!47865) )
))
(declare-fun lt!624196 () Unit!47864)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96620 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47864)

(assert (=> b!1415526 (= lt!624196 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624197 (x!127884 lt!624201) (index!46273 lt!624201) (x!127884 lt!624199) (index!46273 lt!624199) (undefined!11782 lt!624199) mask!2840))))

(declare-fun b!1415527 () Bool)

(assert (=> b!1415527 (= e!801180 (not e!801181))))

(declare-fun res!951671 () Bool)

(assert (=> b!1415527 (=> res!951671 e!801181)))

(assert (=> b!1415527 (= res!951671 (or (not ((_ is Intermediate!10970) lt!624201)) (undefined!11782 lt!624201)))))

(assert (=> b!1415527 e!801179))

(declare-fun res!951669 () Bool)

(assert (=> b!1415527 (=> (not res!951669) (not e!801179))))

(assert (=> b!1415527 (= res!951669 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!624202 () Unit!47864)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96620 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47864)

(assert (=> b!1415527 (= lt!624202 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1415527 (= lt!624201 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624197 (select (arr!46637 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1415527 (= lt!624197 (toIndex!0 (select (arr!46637 a!2901) j!112) mask!2840))))

(declare-fun b!1415520 () Bool)

(declare-fun res!951672 () Bool)

(assert (=> b!1415520 (=> (not res!951672) (not e!801180))))

(assert (=> b!1415520 (= res!951672 (validKeyInArray!0 (select (arr!46637 a!2901) j!112)))))

(declare-fun res!951670 () Bool)

(assert (=> start!122016 (=> (not res!951670) (not e!801180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122016 (= res!951670 (validMask!0 mask!2840))))

(assert (=> start!122016 e!801180))

(assert (=> start!122016 true))

(declare-fun array_inv!35582 (array!96620) Bool)

(assert (=> start!122016 (array_inv!35582 a!2901)))

(assert (= (and start!122016 res!951670) b!1415522))

(assert (= (and b!1415522 res!951673) b!1415525))

(assert (= (and b!1415525 res!951674) b!1415520))

(assert (= (and b!1415520 res!951672) b!1415519))

(assert (= (and b!1415519 res!951675) b!1415521))

(assert (= (and b!1415521 res!951677) b!1415527))

(assert (= (and b!1415527 res!951669) b!1415523))

(assert (= (and b!1415527 (not res!951671)) b!1415518))

(assert (= (and b!1415518 (not res!951676)) b!1415526))

(assert (= (and b!1415526 res!951678) b!1415524))

(declare-fun m!1305923 () Bool)

(assert (=> b!1415519 m!1305923))

(declare-fun m!1305925 () Bool)

(assert (=> b!1415523 m!1305925))

(assert (=> b!1415523 m!1305925))

(declare-fun m!1305927 () Bool)

(assert (=> b!1415523 m!1305927))

(declare-fun m!1305929 () Bool)

(assert (=> b!1415521 m!1305929))

(declare-fun m!1305931 () Bool)

(assert (=> b!1415526 m!1305931))

(declare-fun m!1305933 () Bool)

(assert (=> b!1415526 m!1305933))

(declare-fun m!1305935 () Bool)

(assert (=> b!1415526 m!1305935))

(assert (=> b!1415527 m!1305925))

(declare-fun m!1305937 () Bool)

(assert (=> b!1415527 m!1305937))

(assert (=> b!1415527 m!1305925))

(declare-fun m!1305939 () Bool)

(assert (=> b!1415527 m!1305939))

(assert (=> b!1415527 m!1305925))

(declare-fun m!1305941 () Bool)

(assert (=> b!1415527 m!1305941))

(declare-fun m!1305943 () Bool)

(assert (=> b!1415527 m!1305943))

(declare-fun m!1305945 () Bool)

(assert (=> b!1415525 m!1305945))

(assert (=> b!1415525 m!1305945))

(declare-fun m!1305947 () Bool)

(assert (=> b!1415525 m!1305947))

(declare-fun m!1305949 () Bool)

(assert (=> b!1415518 m!1305949))

(assert (=> b!1415518 m!1305949))

(declare-fun m!1305951 () Bool)

(assert (=> b!1415518 m!1305951))

(assert (=> b!1415518 m!1305931))

(declare-fun m!1305953 () Bool)

(assert (=> b!1415518 m!1305953))

(assert (=> b!1415520 m!1305925))

(assert (=> b!1415520 m!1305925))

(declare-fun m!1305955 () Bool)

(assert (=> b!1415520 m!1305955))

(declare-fun m!1305957 () Bool)

(assert (=> start!122016 m!1305957))

(declare-fun m!1305959 () Bool)

(assert (=> start!122016 m!1305959))

(declare-fun m!1305961 () Bool)

(assert (=> b!1415524 m!1305961))

(assert (=> b!1415524 m!1305925))

(assert (=> b!1415524 m!1305925))

(declare-fun m!1305963 () Bool)

(assert (=> b!1415524 m!1305963))

(check-sat (not b!1415526) (not b!1415519) (not b!1415521) (not b!1415523) (not b!1415527) (not b!1415520) (not start!122016) (not b!1415524) (not b!1415518) (not b!1415525))
(check-sat)
