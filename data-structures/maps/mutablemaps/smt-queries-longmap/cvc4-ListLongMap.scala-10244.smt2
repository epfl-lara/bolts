; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120560 () Bool)

(assert start!120560)

(declare-fun res!941904 () Bool)

(declare-fun e!794589 () Bool)

(assert (=> start!120560 (=> (not res!941904) (not e!794589))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120560 (= res!941904 (validMask!0 mask!2840))))

(assert (=> start!120560 e!794589))

(assert (=> start!120560 true))

(declare-datatypes ((array!95887 0))(
  ( (array!95888 (arr!46290 (Array (_ BitVec 32) (_ BitVec 64))) (size!46841 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95887)

(declare-fun array_inv!35235 (array!95887) Bool)

(assert (=> start!120560 (array_inv!35235 a!2901)))

(declare-fun e!794588 () Bool)

(declare-fun b!1403280 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10629 0))(
  ( (MissingZero!10629 (index!44892 (_ BitVec 32))) (Found!10629 (index!44893 (_ BitVec 32))) (Intermediate!10629 (undefined!11441 Bool) (index!44894 (_ BitVec 32)) (x!126507 (_ BitVec 32))) (Undefined!10629) (MissingVacant!10629 (index!44895 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95887 (_ BitVec 32)) SeekEntryResult!10629)

(assert (=> b!1403280 (= e!794588 (= (seekEntryOrOpen!0 (select (arr!46290 a!2901) j!112) a!2901 mask!2840) (Found!10629 j!112)))))

(declare-fun b!1403281 () Bool)

(declare-fun res!941903 () Bool)

(assert (=> b!1403281 (=> (not res!941903) (not e!794589))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403281 (= res!941903 (validKeyInArray!0 (select (arr!46290 a!2901) i!1037)))))

(declare-fun b!1403282 () Bool)

(declare-fun res!941906 () Bool)

(assert (=> b!1403282 (=> (not res!941906) (not e!794589))))

(declare-datatypes ((List!32989 0))(
  ( (Nil!32986) (Cons!32985 (h!34233 (_ BitVec 64)) (t!47690 List!32989)) )
))
(declare-fun arrayNoDuplicates!0 (array!95887 (_ BitVec 32) List!32989) Bool)

(assert (=> b!1403282 (= res!941906 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32986))))

(declare-fun b!1403283 () Bool)

(declare-fun res!941901 () Bool)

(assert (=> b!1403283 (=> (not res!941901) (not e!794589))))

(assert (=> b!1403283 (= res!941901 (and (= (size!46841 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46841 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46841 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403284 () Bool)

(declare-fun e!794591 () Bool)

(assert (=> b!1403284 (= e!794591 true)))

(declare-fun lt!618312 () SeekEntryResult!10629)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95887 (_ BitVec 32)) SeekEntryResult!10629)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403284 (= lt!618312 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46290 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46290 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95888 (store (arr!46290 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46841 a!2901)) mask!2840))))

(declare-fun b!1403285 () Bool)

(declare-fun res!941900 () Bool)

(assert (=> b!1403285 (=> (not res!941900) (not e!794589))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95887 (_ BitVec 32)) Bool)

(assert (=> b!1403285 (= res!941900 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403286 () Bool)

(assert (=> b!1403286 (= e!794589 (not e!794591))))

(declare-fun res!941902 () Bool)

(assert (=> b!1403286 (=> res!941902 e!794591)))

(declare-fun lt!618313 () SeekEntryResult!10629)

(assert (=> b!1403286 (= res!941902 (or (not (is-Intermediate!10629 lt!618313)) (undefined!11441 lt!618313)))))

(assert (=> b!1403286 e!794588))

(declare-fun res!941907 () Bool)

(assert (=> b!1403286 (=> (not res!941907) (not e!794588))))

(assert (=> b!1403286 (= res!941907 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47212 0))(
  ( (Unit!47213) )
))
(declare-fun lt!618311 () Unit!47212)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95887 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47212)

(assert (=> b!1403286 (= lt!618311 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1403286 (= lt!618313 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46290 a!2901) j!112) mask!2840) (select (arr!46290 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1403287 () Bool)

(declare-fun res!941905 () Bool)

(assert (=> b!1403287 (=> (not res!941905) (not e!794589))))

(assert (=> b!1403287 (= res!941905 (validKeyInArray!0 (select (arr!46290 a!2901) j!112)))))

(assert (= (and start!120560 res!941904) b!1403283))

(assert (= (and b!1403283 res!941901) b!1403281))

(assert (= (and b!1403281 res!941903) b!1403287))

(assert (= (and b!1403287 res!941905) b!1403285))

(assert (= (and b!1403285 res!941900) b!1403282))

(assert (= (and b!1403282 res!941906) b!1403286))

(assert (= (and b!1403286 res!941907) b!1403280))

(assert (= (and b!1403286 (not res!941902)) b!1403284))

(declare-fun m!1291945 () Bool)

(assert (=> b!1403285 m!1291945))

(declare-fun m!1291947 () Bool)

(assert (=> b!1403280 m!1291947))

(assert (=> b!1403280 m!1291947))

(declare-fun m!1291949 () Bool)

(assert (=> b!1403280 m!1291949))

(declare-fun m!1291951 () Bool)

(assert (=> b!1403284 m!1291951))

(declare-fun m!1291953 () Bool)

(assert (=> b!1403284 m!1291953))

(assert (=> b!1403284 m!1291953))

(declare-fun m!1291955 () Bool)

(assert (=> b!1403284 m!1291955))

(assert (=> b!1403284 m!1291955))

(assert (=> b!1403284 m!1291953))

(declare-fun m!1291957 () Bool)

(assert (=> b!1403284 m!1291957))

(declare-fun m!1291959 () Bool)

(assert (=> b!1403282 m!1291959))

(declare-fun m!1291961 () Bool)

(assert (=> start!120560 m!1291961))

(declare-fun m!1291963 () Bool)

(assert (=> start!120560 m!1291963))

(declare-fun m!1291965 () Bool)

(assert (=> b!1403281 m!1291965))

(assert (=> b!1403281 m!1291965))

(declare-fun m!1291967 () Bool)

(assert (=> b!1403281 m!1291967))

(assert (=> b!1403286 m!1291947))

(declare-fun m!1291969 () Bool)

(assert (=> b!1403286 m!1291969))

(assert (=> b!1403286 m!1291947))

(declare-fun m!1291971 () Bool)

(assert (=> b!1403286 m!1291971))

(assert (=> b!1403286 m!1291969))

(assert (=> b!1403286 m!1291947))

(declare-fun m!1291973 () Bool)

(assert (=> b!1403286 m!1291973))

(declare-fun m!1291975 () Bool)

(assert (=> b!1403286 m!1291975))

(assert (=> b!1403287 m!1291947))

(assert (=> b!1403287 m!1291947))

(declare-fun m!1291977 () Bool)

(assert (=> b!1403287 m!1291977))

(push 1)

(assert (not b!1403280))

(assert (not b!1403281))

(assert (not start!120560))

(assert (not b!1403284))

(assert (not b!1403286))

(assert (not b!1403282))

(assert (not b!1403285))

(assert (not b!1403287))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

