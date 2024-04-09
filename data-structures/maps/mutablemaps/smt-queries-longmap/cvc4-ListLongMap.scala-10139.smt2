; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119642 () Bool)

(assert start!119642)

(declare-fun b!1393077 () Bool)

(declare-fun e!788864 () Bool)

(declare-fun e!788861 () Bool)

(assert (=> b!1393077 (= e!788864 (not e!788861))))

(declare-fun res!932599 () Bool)

(assert (=> b!1393077 (=> res!932599 e!788861)))

(declare-datatypes ((SeekEntryResult!10314 0))(
  ( (MissingZero!10314 (index!43626 (_ BitVec 32))) (Found!10314 (index!43627 (_ BitVec 32))) (Intermediate!10314 (undefined!11126 Bool) (index!43628 (_ BitVec 32)) (x!125313 (_ BitVec 32))) (Undefined!10314) (MissingVacant!10314 (index!43629 (_ BitVec 32))) )
))
(declare-fun lt!611825 () SeekEntryResult!10314)

(assert (=> b!1393077 (= res!932599 (or (not (is-Intermediate!10314 lt!611825)) (undefined!11126 lt!611825)))))

(declare-fun e!788862 () Bool)

(assert (=> b!1393077 e!788862))

(declare-fun res!932594 () Bool)

(assert (=> b!1393077 (=> (not res!932594) (not e!788862))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((array!95242 0))(
  ( (array!95243 (arr!45975 (Array (_ BitVec 32) (_ BitVec 64))) (size!46526 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95242)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95242 (_ BitVec 32)) Bool)

(assert (=> b!1393077 (= res!932594 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46582 0))(
  ( (Unit!46583) )
))
(declare-fun lt!611827 () Unit!46582)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95242 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46582)

(assert (=> b!1393077 (= lt!611827 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95242 (_ BitVec 32)) SeekEntryResult!10314)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393077 (= lt!611825 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45975 a!2901) j!112) mask!2840) (select (arr!45975 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393078 () Bool)

(declare-fun res!932597 () Bool)

(assert (=> b!1393078 (=> (not res!932597) (not e!788864))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393078 (= res!932597 (validKeyInArray!0 (select (arr!45975 a!2901) j!112)))))

(declare-fun b!1393079 () Bool)

(declare-fun res!932601 () Bool)

(assert (=> b!1393079 (=> (not res!932601) (not e!788864))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1393079 (= res!932601 (validKeyInArray!0 (select (arr!45975 a!2901) i!1037)))))

(declare-fun b!1393080 () Bool)

(declare-fun res!932596 () Bool)

(assert (=> b!1393080 (=> (not res!932596) (not e!788864))))

(assert (=> b!1393080 (= res!932596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393082 () Bool)

(assert (=> b!1393082 (= e!788861 true)))

(declare-fun lt!611826 () SeekEntryResult!10314)

(assert (=> b!1393082 (= lt!611826 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45975 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45975 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95243 (store (arr!45975 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46526 a!2901)) mask!2840))))

(declare-fun b!1393083 () Bool)

(declare-fun res!932598 () Bool)

(assert (=> b!1393083 (=> (not res!932598) (not e!788864))))

(assert (=> b!1393083 (= res!932598 (and (= (size!46526 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46526 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46526 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393084 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95242 (_ BitVec 32)) SeekEntryResult!10314)

(assert (=> b!1393084 (= e!788862 (= (seekEntryOrOpen!0 (select (arr!45975 a!2901) j!112) a!2901 mask!2840) (Found!10314 j!112)))))

(declare-fun res!932600 () Bool)

(assert (=> start!119642 (=> (not res!932600) (not e!788864))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119642 (= res!932600 (validMask!0 mask!2840))))

(assert (=> start!119642 e!788864))

(assert (=> start!119642 true))

(declare-fun array_inv!34920 (array!95242) Bool)

(assert (=> start!119642 (array_inv!34920 a!2901)))

(declare-fun b!1393081 () Bool)

(declare-fun res!932595 () Bool)

(assert (=> b!1393081 (=> (not res!932595) (not e!788864))))

(declare-datatypes ((List!32674 0))(
  ( (Nil!32671) (Cons!32670 (h!33903 (_ BitVec 64)) (t!47375 List!32674)) )
))
(declare-fun arrayNoDuplicates!0 (array!95242 (_ BitVec 32) List!32674) Bool)

(assert (=> b!1393081 (= res!932595 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32671))))

(assert (= (and start!119642 res!932600) b!1393083))

(assert (= (and b!1393083 res!932598) b!1393079))

(assert (= (and b!1393079 res!932601) b!1393078))

(assert (= (and b!1393078 res!932597) b!1393080))

(assert (= (and b!1393080 res!932596) b!1393081))

(assert (= (and b!1393081 res!932595) b!1393077))

(assert (= (and b!1393077 res!932594) b!1393084))

(assert (= (and b!1393077 (not res!932599)) b!1393082))

(declare-fun m!1278931 () Bool)

(assert (=> b!1393082 m!1278931))

(declare-fun m!1278933 () Bool)

(assert (=> b!1393082 m!1278933))

(assert (=> b!1393082 m!1278933))

(declare-fun m!1278935 () Bool)

(assert (=> b!1393082 m!1278935))

(assert (=> b!1393082 m!1278935))

(assert (=> b!1393082 m!1278933))

(declare-fun m!1278937 () Bool)

(assert (=> b!1393082 m!1278937))

(declare-fun m!1278939 () Bool)

(assert (=> b!1393084 m!1278939))

(assert (=> b!1393084 m!1278939))

(declare-fun m!1278941 () Bool)

(assert (=> b!1393084 m!1278941))

(declare-fun m!1278943 () Bool)

(assert (=> start!119642 m!1278943))

(declare-fun m!1278945 () Bool)

(assert (=> start!119642 m!1278945))

(declare-fun m!1278947 () Bool)

(assert (=> b!1393080 m!1278947))

(declare-fun m!1278949 () Bool)

(assert (=> b!1393079 m!1278949))

(assert (=> b!1393079 m!1278949))

(declare-fun m!1278951 () Bool)

(assert (=> b!1393079 m!1278951))

(assert (=> b!1393077 m!1278939))

(declare-fun m!1278953 () Bool)

(assert (=> b!1393077 m!1278953))

(assert (=> b!1393077 m!1278939))

(declare-fun m!1278955 () Bool)

(assert (=> b!1393077 m!1278955))

(assert (=> b!1393077 m!1278953))

(assert (=> b!1393077 m!1278939))

(declare-fun m!1278957 () Bool)

(assert (=> b!1393077 m!1278957))

(declare-fun m!1278959 () Bool)

(assert (=> b!1393077 m!1278959))

(declare-fun m!1278961 () Bool)

(assert (=> b!1393081 m!1278961))

(assert (=> b!1393078 m!1278939))

(assert (=> b!1393078 m!1278939))

(declare-fun m!1278963 () Bool)

(assert (=> b!1393078 m!1278963))

(push 1)

(assert (not b!1393078))

(assert (not b!1393081))

(assert (not b!1393080))

(assert (not start!119642))

(assert (not b!1393084))

(assert (not b!1393077))

(assert (not b!1393079))

(assert (not b!1393082))

(check-sat)

(pop 1)

(push 1)

(check-sat)

