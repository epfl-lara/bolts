; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64956 () Bool)

(assert start!64956)

(declare-fun b!733027 () Bool)

(declare-fun res!492691 () Bool)

(declare-fun e!410190 () Bool)

(assert (=> b!733027 (=> (not res!492691) (not e!410190))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!733027 (= res!492691 (validKeyInArray!0 k0!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41220 0))(
  ( (array!41221 (arr!19723 (Array (_ BitVec 32) (_ BitVec 64))) (size!20144 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41220)

(declare-fun b!733028 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!410188 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7330 0))(
  ( (MissingZero!7330 (index!31687 (_ BitVec 32))) (Found!7330 (index!31688 (_ BitVec 32))) (Intermediate!7330 (undefined!8142 Bool) (index!31689 (_ BitVec 32)) (x!62705 (_ BitVec 32))) (Undefined!7330) (MissingVacant!7330 (index!31690 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41220 (_ BitVec 32)) SeekEntryResult!7330)

(assert (=> b!733028 (= e!410188 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19723 a!3186) j!159) a!3186 mask!3328) (Found!7330 j!159)))))

(declare-fun b!733029 () Bool)

(declare-fun res!492690 () Bool)

(declare-fun e!410193 () Bool)

(assert (=> b!733029 (=> (not res!492690) (not e!410193))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!733029 (= res!492690 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19723 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!733031 () Bool)

(declare-fun res!492686 () Bool)

(assert (=> b!733031 (=> (not res!492686) (not e!410190))))

(assert (=> b!733031 (= res!492686 (validKeyInArray!0 (select (arr!19723 a!3186) j!159)))))

(declare-fun b!733032 () Bool)

(declare-fun res!492682 () Bool)

(declare-fun e!410186 () Bool)

(assert (=> b!733032 (=> (not res!492682) (not e!410186))))

(declare-datatypes ((List!13778 0))(
  ( (Nil!13775) (Cons!13774 (h!14840 (_ BitVec 64)) (t!20101 List!13778)) )
))
(declare-fun arrayNoDuplicates!0 (array!41220 (_ BitVec 32) List!13778) Bool)

(assert (=> b!733032 (= res!492682 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13775))))

(declare-fun b!733033 () Bool)

(declare-fun e!410189 () Bool)

(assert (=> b!733033 (= e!410193 e!410189)))

(declare-fun res!492693 () Bool)

(assert (=> b!733033 (=> (not res!492693) (not e!410189))))

(declare-fun lt!324898 () SeekEntryResult!7330)

(declare-fun lt!324897 () SeekEntryResult!7330)

(assert (=> b!733033 (= res!492693 (= lt!324898 lt!324897))))

(declare-fun lt!324896 () array!41220)

(declare-fun lt!324900 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41220 (_ BitVec 32)) SeekEntryResult!7330)

(assert (=> b!733033 (= lt!324897 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324900 lt!324896 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!733033 (= lt!324898 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324900 mask!3328) lt!324900 lt!324896 mask!3328))))

(assert (=> b!733033 (= lt!324900 (select (store (arr!19723 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!733033 (= lt!324896 (array!41221 (store (arr!19723 a!3186) i!1173 k0!2102) (size!20144 a!3186)))))

(declare-fun e!410184 () Bool)

(declare-fun lt!324901 () SeekEntryResult!7330)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!733034 () Bool)

(assert (=> b!733034 (= e!410184 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19723 a!3186) j!159) a!3186 mask!3328) lt!324901))))

(declare-fun lt!324894 () SeekEntryResult!7330)

(declare-fun b!733035 () Bool)

(assert (=> b!733035 (= e!410188 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19723 a!3186) j!159) a!3186 mask!3328) lt!324894))))

(declare-fun b!733036 () Bool)

(declare-fun e!410187 () Bool)

(declare-fun e!410192 () Bool)

(assert (=> b!733036 (= e!410187 e!410192)))

(declare-fun res!492692 () Bool)

(assert (=> b!733036 (=> res!492692 e!410192)))

(assert (=> b!733036 (= res!492692 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!324895 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!733036 (= lt!324895 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!733037 () Bool)

(declare-fun res!492687 () Bool)

(assert (=> b!733037 (=> (not res!492687) (not e!410186))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41220 (_ BitVec 32)) Bool)

(assert (=> b!733037 (= res!492687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!733038 () Bool)

(assert (=> b!733038 (= e!410189 (not e!410187))))

(declare-fun res!492689 () Bool)

(assert (=> b!733038 (=> res!492689 e!410187)))

(get-info :version)

(assert (=> b!733038 (= res!492689 (or (not ((_ is Intermediate!7330) lt!324897)) (bvsge x!1131 (x!62705 lt!324897))))))

(declare-fun e!410191 () Bool)

(assert (=> b!733038 e!410191))

(declare-fun res!492696 () Bool)

(assert (=> b!733038 (=> (not res!492696) (not e!410191))))

(assert (=> b!733038 (= res!492696 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24978 0))(
  ( (Unit!24979) )
))
(declare-fun lt!324899 () Unit!24978)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41220 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24978)

(assert (=> b!733038 (= lt!324899 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!733039 () Bool)

(declare-fun res!492698 () Bool)

(assert (=> b!733039 (=> (not res!492698) (not e!410190))))

(declare-fun arrayContainsKey!0 (array!41220 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!733039 (= res!492698 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!733040 () Bool)

(declare-fun res!492694 () Bool)

(assert (=> b!733040 (=> (not res!492694) (not e!410186))))

(assert (=> b!733040 (= res!492694 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20144 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20144 a!3186))))))

(declare-fun b!733041 () Bool)

(declare-fun res!492684 () Bool)

(assert (=> b!733041 (=> res!492684 e!410192)))

(assert (=> b!733041 (= res!492684 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19723 a!3186) j!159) a!3186 mask!3328) (Found!7330 j!159)))))

(declare-fun b!733030 () Bool)

(assert (=> b!733030 (= e!410190 e!410186)))

(declare-fun res!492697 () Bool)

(assert (=> b!733030 (=> (not res!492697) (not e!410186))))

(declare-fun lt!324902 () SeekEntryResult!7330)

(assert (=> b!733030 (= res!492697 (or (= lt!324902 (MissingZero!7330 i!1173)) (= lt!324902 (MissingVacant!7330 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41220 (_ BitVec 32)) SeekEntryResult!7330)

(assert (=> b!733030 (= lt!324902 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!492688 () Bool)

(assert (=> start!64956 (=> (not res!492688) (not e!410190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64956 (= res!492688 (validMask!0 mask!3328))))

(assert (=> start!64956 e!410190))

(assert (=> start!64956 true))

(declare-fun array_inv!15497 (array!41220) Bool)

(assert (=> start!64956 (array_inv!15497 a!3186)))

(declare-fun b!733042 () Bool)

(assert (=> b!733042 (= e!410192 (bvsge mask!3328 #b00000000000000000000000000000000))))

(declare-fun b!733043 () Bool)

(declare-fun res!492695 () Bool)

(assert (=> b!733043 (=> (not res!492695) (not e!410193))))

(assert (=> b!733043 (= res!492695 e!410188)))

(declare-fun c!80550 () Bool)

(assert (=> b!733043 (= c!80550 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!733044 () Bool)

(assert (=> b!733044 (= e!410186 e!410193)))

(declare-fun res!492699 () Bool)

(assert (=> b!733044 (=> (not res!492699) (not e!410193))))

(assert (=> b!733044 (= res!492699 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19723 a!3186) j!159) mask!3328) (select (arr!19723 a!3186) j!159) a!3186 mask!3328) lt!324894))))

(assert (=> b!733044 (= lt!324894 (Intermediate!7330 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!733045 () Bool)

(assert (=> b!733045 (= e!410191 e!410184)))

(declare-fun res!492685 () Bool)

(assert (=> b!733045 (=> (not res!492685) (not e!410184))))

(assert (=> b!733045 (= res!492685 (= (seekEntryOrOpen!0 (select (arr!19723 a!3186) j!159) a!3186 mask!3328) lt!324901))))

(assert (=> b!733045 (= lt!324901 (Found!7330 j!159))))

(declare-fun b!733046 () Bool)

(declare-fun res!492683 () Bool)

(assert (=> b!733046 (=> (not res!492683) (not e!410190))))

(assert (=> b!733046 (= res!492683 (and (= (size!20144 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20144 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20144 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!64956 res!492688) b!733046))

(assert (= (and b!733046 res!492683) b!733031))

(assert (= (and b!733031 res!492686) b!733027))

(assert (= (and b!733027 res!492691) b!733039))

(assert (= (and b!733039 res!492698) b!733030))

(assert (= (and b!733030 res!492697) b!733037))

(assert (= (and b!733037 res!492687) b!733032))

(assert (= (and b!733032 res!492682) b!733040))

(assert (= (and b!733040 res!492694) b!733044))

(assert (= (and b!733044 res!492699) b!733029))

(assert (= (and b!733029 res!492690) b!733043))

(assert (= (and b!733043 c!80550) b!733035))

(assert (= (and b!733043 (not c!80550)) b!733028))

(assert (= (and b!733043 res!492695) b!733033))

(assert (= (and b!733033 res!492693) b!733038))

(assert (= (and b!733038 res!492696) b!733045))

(assert (= (and b!733045 res!492685) b!733034))

(assert (= (and b!733038 (not res!492689)) b!733036))

(assert (= (and b!733036 (not res!492692)) b!733041))

(assert (= (and b!733041 (not res!492684)) b!733042))

(declare-fun m!686065 () Bool)

(assert (=> b!733031 m!686065))

(assert (=> b!733031 m!686065))

(declare-fun m!686067 () Bool)

(assert (=> b!733031 m!686067))

(declare-fun m!686069 () Bool)

(assert (=> b!733039 m!686069))

(declare-fun m!686071 () Bool)

(assert (=> b!733027 m!686071))

(declare-fun m!686073 () Bool)

(assert (=> b!733037 m!686073))

(assert (=> b!733045 m!686065))

(assert (=> b!733045 m!686065))

(declare-fun m!686075 () Bool)

(assert (=> b!733045 m!686075))

(assert (=> b!733028 m!686065))

(assert (=> b!733028 m!686065))

(declare-fun m!686077 () Bool)

(assert (=> b!733028 m!686077))

(assert (=> b!733034 m!686065))

(assert (=> b!733034 m!686065))

(declare-fun m!686079 () Bool)

(assert (=> b!733034 m!686079))

(declare-fun m!686081 () Bool)

(assert (=> b!733029 m!686081))

(declare-fun m!686083 () Bool)

(assert (=> b!733036 m!686083))

(declare-fun m!686085 () Bool)

(assert (=> b!733038 m!686085))

(declare-fun m!686087 () Bool)

(assert (=> b!733038 m!686087))

(declare-fun m!686089 () Bool)

(assert (=> b!733032 m!686089))

(assert (=> b!733035 m!686065))

(assert (=> b!733035 m!686065))

(declare-fun m!686091 () Bool)

(assert (=> b!733035 m!686091))

(assert (=> b!733041 m!686065))

(assert (=> b!733041 m!686065))

(assert (=> b!733041 m!686077))

(declare-fun m!686093 () Bool)

(assert (=> b!733033 m!686093))

(declare-fun m!686095 () Bool)

(assert (=> b!733033 m!686095))

(assert (=> b!733033 m!686093))

(declare-fun m!686097 () Bool)

(assert (=> b!733033 m!686097))

(declare-fun m!686099 () Bool)

(assert (=> b!733033 m!686099))

(declare-fun m!686101 () Bool)

(assert (=> b!733033 m!686101))

(declare-fun m!686103 () Bool)

(assert (=> b!733030 m!686103))

(assert (=> b!733044 m!686065))

(assert (=> b!733044 m!686065))

(declare-fun m!686105 () Bool)

(assert (=> b!733044 m!686105))

(assert (=> b!733044 m!686105))

(assert (=> b!733044 m!686065))

(declare-fun m!686107 () Bool)

(assert (=> b!733044 m!686107))

(declare-fun m!686109 () Bool)

(assert (=> start!64956 m!686109))

(declare-fun m!686111 () Bool)

(assert (=> start!64956 m!686111))

(check-sat (not b!733036) (not b!733033) (not b!733037) (not b!733027) (not b!733034) (not start!64956) (not b!733035) (not b!733030) (not b!733038) (not b!733039) (not b!733044) (not b!733041) (not b!733031) (not b!733045) (not b!733028) (not b!733032))
(check-sat)
