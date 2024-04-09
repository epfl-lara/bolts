; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120466 () Bool)

(assert start!120466)

(declare-fun b!1401951 () Bool)

(declare-fun e!793895 () Bool)

(declare-fun e!793896 () Bool)

(assert (=> b!1401951 (= e!793895 (not e!793896))))

(declare-fun res!940572 () Bool)

(assert (=> b!1401951 (=> res!940572 e!793896)))

(declare-datatypes ((SeekEntryResult!10582 0))(
  ( (MissingZero!10582 (index!44704 (_ BitVec 32))) (Found!10582 (index!44705 (_ BitVec 32))) (Intermediate!10582 (undefined!11394 Bool) (index!44706 (_ BitVec 32)) (x!126340 (_ BitVec 32))) (Undefined!10582) (MissingVacant!10582 (index!44707 (_ BitVec 32))) )
))
(declare-fun lt!617305 () SeekEntryResult!10582)

(assert (=> b!1401951 (= res!940572 (or (not (is-Intermediate!10582 lt!617305)) (undefined!11394 lt!617305)))))

(declare-fun e!793899 () Bool)

(assert (=> b!1401951 e!793899))

(declare-fun res!940578 () Bool)

(assert (=> b!1401951 (=> (not res!940578) (not e!793899))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95793 0))(
  ( (array!95794 (arr!46243 (Array (_ BitVec 32) (_ BitVec 64))) (size!46794 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95793)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95793 (_ BitVec 32)) Bool)

(assert (=> b!1401951 (= res!940578 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47118 0))(
  ( (Unit!47119) )
))
(declare-fun lt!617304 () Unit!47118)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95793 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47118)

(assert (=> b!1401951 (= lt!617304 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!617306 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95793 (_ BitVec 32)) SeekEntryResult!10582)

(assert (=> b!1401951 (= lt!617305 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617306 (select (arr!46243 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401951 (= lt!617306 (toIndex!0 (select (arr!46243 a!2901) j!112) mask!2840))))

(declare-fun b!1401952 () Bool)

(declare-fun res!940575 () Bool)

(assert (=> b!1401952 (=> (not res!940575) (not e!793895))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1401952 (= res!940575 (and (= (size!46794 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46794 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46794 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1401953 () Bool)

(declare-fun res!940573 () Bool)

(assert (=> b!1401953 (=> (not res!940573) (not e!793895))))

(assert (=> b!1401953 (= res!940573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401954 () Bool)

(declare-fun e!793898 () Bool)

(assert (=> b!1401954 (= e!793896 e!793898)))

(declare-fun res!940581 () Bool)

(assert (=> b!1401954 (=> res!940581 e!793898)))

(declare-fun lt!617308 () SeekEntryResult!10582)

(assert (=> b!1401954 (= res!940581 (or (= lt!617305 lt!617308) (not (is-Intermediate!10582 lt!617308))))))

(declare-fun lt!617311 () (_ BitVec 64))

(declare-fun lt!617310 () array!95793)

(assert (=> b!1401954 (= lt!617308 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617311 mask!2840) lt!617311 lt!617310 mask!2840))))

(assert (=> b!1401954 (= lt!617311 (select (store (arr!46243 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401954 (= lt!617310 (array!95794 (store (arr!46243 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46794 a!2901)))))

(declare-fun res!940574 () Bool)

(assert (=> start!120466 (=> (not res!940574) (not e!793895))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120466 (= res!940574 (validMask!0 mask!2840))))

(assert (=> start!120466 e!793895))

(assert (=> start!120466 true))

(declare-fun array_inv!35188 (array!95793) Bool)

(assert (=> start!120466 (array_inv!35188 a!2901)))

(declare-fun b!1401955 () Bool)

(declare-fun e!793897 () Bool)

(assert (=> b!1401955 (= e!793898 e!793897)))

(declare-fun res!940577 () Bool)

(assert (=> b!1401955 (=> res!940577 e!793897)))

(assert (=> b!1401955 (= res!940577 (or (bvslt (x!126340 lt!617305) #b00000000000000000000000000000000) (bvsgt (x!126340 lt!617305) #b01111111111111111111111111111110) (bvslt (x!126340 lt!617308) #b00000000000000000000000000000000) (bvsgt (x!126340 lt!617308) #b01111111111111111111111111111110) (bvslt lt!617306 #b00000000000000000000000000000000) (bvsge lt!617306 (size!46794 a!2901)) (bvslt (index!44706 lt!617305) #b00000000000000000000000000000000) (bvsge (index!44706 lt!617305) (size!46794 a!2901)) (bvslt (index!44706 lt!617308) #b00000000000000000000000000000000) (bvsge (index!44706 lt!617308) (size!46794 a!2901)) (not (= lt!617305 (Intermediate!10582 false (index!44706 lt!617305) (x!126340 lt!617305)))) (not (= lt!617308 (Intermediate!10582 false (index!44706 lt!617308) (x!126340 lt!617308))))))))

(declare-fun e!793901 () Bool)

(assert (=> b!1401955 e!793901))

(declare-fun res!940579 () Bool)

(assert (=> b!1401955 (=> (not res!940579) (not e!793901))))

(assert (=> b!1401955 (= res!940579 (and (not (undefined!11394 lt!617308)) (= (index!44706 lt!617308) i!1037) (bvslt (x!126340 lt!617308) (x!126340 lt!617305)) (= (select (store (arr!46243 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44706 lt!617308)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!617307 () Unit!47118)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95793 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47118)

(assert (=> b!1401955 (= lt!617307 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617306 (x!126340 lt!617305) (index!44706 lt!617305) (x!126340 lt!617308) (index!44706 lt!617308) (undefined!11394 lt!617308) mask!2840))))

(declare-fun b!1401956 () Bool)

(declare-fun res!940571 () Bool)

(assert (=> b!1401956 (=> (not res!940571) (not e!793895))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401956 (= res!940571 (validKeyInArray!0 (select (arr!46243 a!2901) j!112)))))

(declare-fun b!1401957 () Bool)

(declare-fun res!940580 () Bool)

(assert (=> b!1401957 (=> (not res!940580) (not e!793895))))

(assert (=> b!1401957 (= res!940580 (validKeyInArray!0 (select (arr!46243 a!2901) i!1037)))))

(declare-fun b!1401958 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95793 (_ BitVec 32)) SeekEntryResult!10582)

(assert (=> b!1401958 (= e!793899 (= (seekEntryOrOpen!0 (select (arr!46243 a!2901) j!112) a!2901 mask!2840) (Found!10582 j!112)))))

(declare-fun b!1401959 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95793 (_ BitVec 32)) SeekEntryResult!10582)

(assert (=> b!1401959 (= e!793901 (= (seekEntryOrOpen!0 lt!617311 lt!617310 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126340 lt!617308) (index!44706 lt!617308) (index!44706 lt!617308) (select (arr!46243 a!2901) j!112) lt!617310 mask!2840)))))

(declare-fun b!1401960 () Bool)

(declare-fun res!940576 () Bool)

(assert (=> b!1401960 (=> (not res!940576) (not e!793895))))

(declare-datatypes ((List!32942 0))(
  ( (Nil!32939) (Cons!32938 (h!34186 (_ BitVec 64)) (t!47643 List!32942)) )
))
(declare-fun arrayNoDuplicates!0 (array!95793 (_ BitVec 32) List!32942) Bool)

(assert (=> b!1401960 (= res!940576 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32939))))

(declare-fun b!1401961 () Bool)

(assert (=> b!1401961 (= e!793897 true)))

(declare-fun lt!617309 () SeekEntryResult!10582)

(assert (=> b!1401961 (= lt!617309 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617306 lt!617311 lt!617310 mask!2840))))

(assert (= (and start!120466 res!940574) b!1401952))

(assert (= (and b!1401952 res!940575) b!1401957))

(assert (= (and b!1401957 res!940580) b!1401956))

(assert (= (and b!1401956 res!940571) b!1401953))

(assert (= (and b!1401953 res!940573) b!1401960))

(assert (= (and b!1401960 res!940576) b!1401951))

(assert (= (and b!1401951 res!940578) b!1401958))

(assert (= (and b!1401951 (not res!940572)) b!1401954))

(assert (= (and b!1401954 (not res!940581)) b!1401955))

(assert (= (and b!1401955 res!940579) b!1401959))

(assert (= (and b!1401955 (not res!940577)) b!1401961))

(declare-fun m!1289993 () Bool)

(assert (=> b!1401960 m!1289993))

(declare-fun m!1289995 () Bool)

(assert (=> b!1401959 m!1289995))

(declare-fun m!1289997 () Bool)

(assert (=> b!1401959 m!1289997))

(assert (=> b!1401959 m!1289997))

(declare-fun m!1289999 () Bool)

(assert (=> b!1401959 m!1289999))

(declare-fun m!1290001 () Bool)

(assert (=> b!1401953 m!1290001))

(declare-fun m!1290003 () Bool)

(assert (=> start!120466 m!1290003))

(declare-fun m!1290005 () Bool)

(assert (=> start!120466 m!1290005))

(assert (=> b!1401956 m!1289997))

(assert (=> b!1401956 m!1289997))

(declare-fun m!1290007 () Bool)

(assert (=> b!1401956 m!1290007))

(declare-fun m!1290009 () Bool)

(assert (=> b!1401954 m!1290009))

(assert (=> b!1401954 m!1290009))

(declare-fun m!1290011 () Bool)

(assert (=> b!1401954 m!1290011))

(declare-fun m!1290013 () Bool)

(assert (=> b!1401954 m!1290013))

(declare-fun m!1290015 () Bool)

(assert (=> b!1401954 m!1290015))

(declare-fun m!1290017 () Bool)

(assert (=> b!1401957 m!1290017))

(assert (=> b!1401957 m!1290017))

(declare-fun m!1290019 () Bool)

(assert (=> b!1401957 m!1290019))

(assert (=> b!1401955 m!1290013))

(declare-fun m!1290021 () Bool)

(assert (=> b!1401955 m!1290021))

(declare-fun m!1290023 () Bool)

(assert (=> b!1401955 m!1290023))

(assert (=> b!1401958 m!1289997))

(assert (=> b!1401958 m!1289997))

(declare-fun m!1290025 () Bool)

(assert (=> b!1401958 m!1290025))

(assert (=> b!1401951 m!1289997))

(declare-fun m!1290027 () Bool)

(assert (=> b!1401951 m!1290027))

(assert (=> b!1401951 m!1289997))

(declare-fun m!1290029 () Bool)

(assert (=> b!1401951 m!1290029))

(declare-fun m!1290031 () Bool)

(assert (=> b!1401951 m!1290031))

(assert (=> b!1401951 m!1289997))

(declare-fun m!1290033 () Bool)

(assert (=> b!1401951 m!1290033))

(declare-fun m!1290035 () Bool)

(assert (=> b!1401961 m!1290035))

(push 1)

