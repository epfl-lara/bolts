; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120464 () Bool)

(assert start!120464)

(declare-fun b!1401918 () Bool)

(declare-fun e!793878 () Bool)

(declare-fun e!793875 () Bool)

(assert (=> b!1401918 (= e!793878 e!793875)))

(declare-fun res!940539 () Bool)

(assert (=> b!1401918 (=> res!940539 e!793875)))

(declare-datatypes ((array!95791 0))(
  ( (array!95792 (arr!46242 (Array (_ BitVec 32) (_ BitVec 64))) (size!46793 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95791)

(declare-datatypes ((SeekEntryResult!10581 0))(
  ( (MissingZero!10581 (index!44700 (_ BitVec 32))) (Found!10581 (index!44701 (_ BitVec 32))) (Intermediate!10581 (undefined!11393 Bool) (index!44702 (_ BitVec 32)) (x!126331 (_ BitVec 32))) (Undefined!10581) (MissingVacant!10581 (index!44703 (_ BitVec 32))) )
))
(declare-fun lt!617281 () SeekEntryResult!10581)

(declare-fun lt!617282 () (_ BitVec 32))

(declare-fun lt!617283 () SeekEntryResult!10581)

(assert (=> b!1401918 (= res!940539 (or (bvslt (x!126331 lt!617283) #b00000000000000000000000000000000) (bvsgt (x!126331 lt!617283) #b01111111111111111111111111111110) (bvslt (x!126331 lt!617281) #b00000000000000000000000000000000) (bvsgt (x!126331 lt!617281) #b01111111111111111111111111111110) (bvslt lt!617282 #b00000000000000000000000000000000) (bvsge lt!617282 (size!46793 a!2901)) (bvslt (index!44702 lt!617283) #b00000000000000000000000000000000) (bvsge (index!44702 lt!617283) (size!46793 a!2901)) (bvslt (index!44702 lt!617281) #b00000000000000000000000000000000) (bvsge (index!44702 lt!617281) (size!46793 a!2901)) (not (= lt!617283 (Intermediate!10581 false (index!44702 lt!617283) (x!126331 lt!617283)))) (not (= lt!617281 (Intermediate!10581 false (index!44702 lt!617281) (x!126331 lt!617281))))))))

(declare-fun e!793876 () Bool)

(assert (=> b!1401918 e!793876))

(declare-fun res!940540 () Bool)

(assert (=> b!1401918 (=> (not res!940540) (not e!793876))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1401918 (= res!940540 (and (not (undefined!11393 lt!617281)) (= (index!44702 lt!617281) i!1037) (bvslt (x!126331 lt!617281) (x!126331 lt!617283)) (= (select (store (arr!46242 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44702 lt!617281)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((Unit!47116 0))(
  ( (Unit!47117) )
))
(declare-fun lt!617280 () Unit!47116)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95791 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47116)

(assert (=> b!1401918 (= lt!617280 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617282 (x!126331 lt!617283) (index!44702 lt!617283) (x!126331 lt!617281) (index!44702 lt!617281) (undefined!11393 lt!617281) mask!2840))))

(declare-fun b!1401919 () Bool)

(declare-fun res!940541 () Bool)

(declare-fun e!793880 () Bool)

(assert (=> b!1401919 (=> (not res!940541) (not e!793880))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95791 (_ BitVec 32)) Bool)

(assert (=> b!1401919 (= res!940541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401920 () Bool)

(declare-fun e!793879 () Bool)

(assert (=> b!1401920 (= e!793879 e!793878)))

(declare-fun res!940542 () Bool)

(assert (=> b!1401920 (=> res!940542 e!793878)))

(assert (=> b!1401920 (= res!940542 (or (= lt!617283 lt!617281) (not (is-Intermediate!10581 lt!617281))))))

(declare-fun lt!617286 () (_ BitVec 64))

(declare-fun lt!617285 () array!95791)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95791 (_ BitVec 32)) SeekEntryResult!10581)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401920 (= lt!617281 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617286 mask!2840) lt!617286 lt!617285 mask!2840))))

(assert (=> b!1401920 (= lt!617286 (select (store (arr!46242 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401920 (= lt!617285 (array!95792 (store (arr!46242 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46793 a!2901)))))

(declare-fun e!793877 () Bool)

(declare-fun b!1401921 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95791 (_ BitVec 32)) SeekEntryResult!10581)

(assert (=> b!1401921 (= e!793877 (= (seekEntryOrOpen!0 (select (arr!46242 a!2901) j!112) a!2901 mask!2840) (Found!10581 j!112)))))

(declare-fun b!1401922 () Bool)

(declare-fun res!940545 () Bool)

(assert (=> b!1401922 (=> (not res!940545) (not e!793880))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401922 (= res!940545 (validKeyInArray!0 (select (arr!46242 a!2901) i!1037)))))

(declare-fun res!940547 () Bool)

(assert (=> start!120464 (=> (not res!940547) (not e!793880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120464 (= res!940547 (validMask!0 mask!2840))))

(assert (=> start!120464 e!793880))

(assert (=> start!120464 true))

(declare-fun array_inv!35187 (array!95791) Bool)

(assert (=> start!120464 (array_inv!35187 a!2901)))

(declare-fun b!1401923 () Bool)

(assert (=> b!1401923 (= e!793880 (not e!793879))))

(declare-fun res!940548 () Bool)

(assert (=> b!1401923 (=> res!940548 e!793879)))

(assert (=> b!1401923 (= res!940548 (or (not (is-Intermediate!10581 lt!617283)) (undefined!11393 lt!617283)))))

(assert (=> b!1401923 e!793877))

(declare-fun res!940544 () Bool)

(assert (=> b!1401923 (=> (not res!940544) (not e!793877))))

(assert (=> b!1401923 (= res!940544 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!617284 () Unit!47116)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95791 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47116)

(assert (=> b!1401923 (= lt!617284 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1401923 (= lt!617283 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617282 (select (arr!46242 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1401923 (= lt!617282 (toIndex!0 (select (arr!46242 a!2901) j!112) mask!2840))))

(declare-fun b!1401924 () Bool)

(assert (=> b!1401924 (= e!793875 true)))

(declare-fun lt!617287 () SeekEntryResult!10581)

(assert (=> b!1401924 (= lt!617287 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617282 lt!617286 lt!617285 mask!2840))))

(declare-fun b!1401925 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95791 (_ BitVec 32)) SeekEntryResult!10581)

(assert (=> b!1401925 (= e!793876 (= (seekEntryOrOpen!0 lt!617286 lt!617285 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126331 lt!617281) (index!44702 lt!617281) (index!44702 lt!617281) (select (arr!46242 a!2901) j!112) lt!617285 mask!2840)))))

(declare-fun b!1401926 () Bool)

(declare-fun res!940538 () Bool)

(assert (=> b!1401926 (=> (not res!940538) (not e!793880))))

(declare-datatypes ((List!32941 0))(
  ( (Nil!32938) (Cons!32937 (h!34185 (_ BitVec 64)) (t!47642 List!32941)) )
))
(declare-fun arrayNoDuplicates!0 (array!95791 (_ BitVec 32) List!32941) Bool)

(assert (=> b!1401926 (= res!940538 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32938))))

(declare-fun b!1401927 () Bool)

(declare-fun res!940543 () Bool)

(assert (=> b!1401927 (=> (not res!940543) (not e!793880))))

(assert (=> b!1401927 (= res!940543 (validKeyInArray!0 (select (arr!46242 a!2901) j!112)))))

(declare-fun b!1401928 () Bool)

(declare-fun res!940546 () Bool)

(assert (=> b!1401928 (=> (not res!940546) (not e!793880))))

(assert (=> b!1401928 (= res!940546 (and (= (size!46793 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46793 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46793 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120464 res!940547) b!1401928))

(assert (= (and b!1401928 res!940546) b!1401922))

(assert (= (and b!1401922 res!940545) b!1401927))

(assert (= (and b!1401927 res!940543) b!1401919))

(assert (= (and b!1401919 res!940541) b!1401926))

(assert (= (and b!1401926 res!940538) b!1401923))

(assert (= (and b!1401923 res!940544) b!1401921))

(assert (= (and b!1401923 (not res!940548)) b!1401920))

(assert (= (and b!1401920 (not res!940542)) b!1401918))

(assert (= (and b!1401918 res!940540) b!1401925))

(assert (= (and b!1401918 (not res!940539)) b!1401924))

(declare-fun m!1289949 () Bool)

(assert (=> b!1401918 m!1289949))

(declare-fun m!1289951 () Bool)

(assert (=> b!1401918 m!1289951))

(declare-fun m!1289953 () Bool)

(assert (=> b!1401918 m!1289953))

(declare-fun m!1289955 () Bool)

(assert (=> b!1401924 m!1289955))

(declare-fun m!1289957 () Bool)

(assert (=> b!1401920 m!1289957))

(assert (=> b!1401920 m!1289957))

(declare-fun m!1289959 () Bool)

(assert (=> b!1401920 m!1289959))

(assert (=> b!1401920 m!1289949))

(declare-fun m!1289961 () Bool)

(assert (=> b!1401920 m!1289961))

(declare-fun m!1289963 () Bool)

(assert (=> start!120464 m!1289963))

(declare-fun m!1289965 () Bool)

(assert (=> start!120464 m!1289965))

(declare-fun m!1289967 () Bool)

(assert (=> b!1401921 m!1289967))

(assert (=> b!1401921 m!1289967))

(declare-fun m!1289969 () Bool)

(assert (=> b!1401921 m!1289969))

(declare-fun m!1289971 () Bool)

(assert (=> b!1401922 m!1289971))

(assert (=> b!1401922 m!1289971))

(declare-fun m!1289973 () Bool)

(assert (=> b!1401922 m!1289973))

(declare-fun m!1289975 () Bool)

(assert (=> b!1401926 m!1289975))

(declare-fun m!1289977 () Bool)

(assert (=> b!1401925 m!1289977))

(assert (=> b!1401925 m!1289967))

(assert (=> b!1401925 m!1289967))

(declare-fun m!1289979 () Bool)

(assert (=> b!1401925 m!1289979))

(assert (=> b!1401923 m!1289967))

(declare-fun m!1289981 () Bool)

(assert (=> b!1401923 m!1289981))

(assert (=> b!1401923 m!1289967))

(declare-fun m!1289983 () Bool)

(assert (=> b!1401923 m!1289983))

(declare-fun m!1289985 () Bool)

(assert (=> b!1401923 m!1289985))

(assert (=> b!1401923 m!1289967))

(declare-fun m!1289987 () Bool)

(assert (=> b!1401923 m!1289987))

(declare-fun m!1289989 () Bool)

(assert (=> b!1401919 m!1289989))

(assert (=> b!1401927 m!1289967))

(assert (=> b!1401927 m!1289967))

(declare-fun m!1289991 () Bool)

(assert (=> b!1401927 m!1289991))

(push 1)

