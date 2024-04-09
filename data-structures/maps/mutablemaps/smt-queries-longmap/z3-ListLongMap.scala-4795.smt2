; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65850 () Bool)

(assert start!65850)

(declare-fun b!757987 () Bool)

(declare-fun res!512853 () Bool)

(declare-fun e!422628 () Bool)

(assert (=> b!757987 (=> (not res!512853) (not e!422628))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41976 0))(
  ( (array!41977 (arr!20098 (Array (_ BitVec 32) (_ BitVec 64))) (size!20519 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41976)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!757987 (= res!512853 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20098 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!757988 () Bool)

(declare-fun res!512843 () Bool)

(declare-fun e!422626 () Bool)

(assert (=> b!757988 (=> (not res!512843) (not e!422626))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41976 (_ BitVec 32)) Bool)

(assert (=> b!757988 (= res!512843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!512856 () Bool)

(declare-fun e!422633 () Bool)

(assert (=> start!65850 (=> (not res!512856) (not e!422633))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65850 (= res!512856 (validMask!0 mask!3328))))

(assert (=> start!65850 e!422633))

(assert (=> start!65850 true))

(declare-fun array_inv!15872 (array!41976) Bool)

(assert (=> start!65850 (array_inv!15872 a!3186)))

(declare-fun b!757989 () Bool)

(assert (=> b!757989 (= e!422626 e!422628)))

(declare-fun res!512854 () Bool)

(assert (=> b!757989 (=> (not res!512854) (not e!422628))))

(declare-datatypes ((SeekEntryResult!7705 0))(
  ( (MissingZero!7705 (index!33187 (_ BitVec 32))) (Found!7705 (index!33188 (_ BitVec 32))) (Intermediate!7705 (undefined!8517 Bool) (index!33189 (_ BitVec 32)) (x!64104 (_ BitVec 32))) (Undefined!7705) (MissingVacant!7705 (index!33190 (_ BitVec 32))) )
))
(declare-fun lt!337633 () SeekEntryResult!7705)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41976 (_ BitVec 32)) SeekEntryResult!7705)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!757989 (= res!512854 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20098 a!3186) j!159) mask!3328) (select (arr!20098 a!3186) j!159) a!3186 mask!3328) lt!337633))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!757989 (= lt!337633 (Intermediate!7705 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!757990 () Bool)

(declare-datatypes ((Unit!26222 0))(
  ( (Unit!26223) )
))
(declare-fun e!422623 () Unit!26222)

(declare-fun Unit!26224 () Unit!26222)

(assert (=> b!757990 (= e!422623 Unit!26224)))

(declare-fun e!422632 () Bool)

(declare-fun b!757991 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41976 (_ BitVec 32)) SeekEntryResult!7705)

(assert (=> b!757991 (= e!422632 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20098 a!3186) j!159) a!3186 mask!3328) (Found!7705 j!159)))))

(declare-fun b!757992 () Bool)

(declare-fun res!512851 () Bool)

(assert (=> b!757992 (=> (not res!512851) (not e!422626))))

(assert (=> b!757992 (= res!512851 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20519 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20519 a!3186))))))

(declare-fun b!757993 () Bool)

(declare-fun res!512849 () Bool)

(assert (=> b!757993 (=> (not res!512849) (not e!422633))))

(assert (=> b!757993 (= res!512849 (and (= (size!20519 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20519 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20519 a!3186)) (not (= i!1173 j!159))))))

(declare-fun lt!337626 () SeekEntryResult!7705)

(declare-fun b!757994 () Bool)

(declare-fun e!422631 () Bool)

(assert (=> b!757994 (= e!422631 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20098 a!3186) j!159) a!3186 mask!3328) lt!337626))))

(declare-fun b!757995 () Bool)

(assert (=> b!757995 (= e!422633 e!422626)))

(declare-fun res!512841 () Bool)

(assert (=> b!757995 (=> (not res!512841) (not e!422626))))

(declare-fun lt!337630 () SeekEntryResult!7705)

(assert (=> b!757995 (= res!512841 (or (= lt!337630 (MissingZero!7705 i!1173)) (= lt!337630 (MissingVacant!7705 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41976 (_ BitVec 32)) SeekEntryResult!7705)

(assert (=> b!757995 (= lt!337630 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!757996 () Bool)

(declare-fun e!422634 () Bool)

(declare-fun e!422629 () Bool)

(assert (=> b!757996 (= e!422634 (not e!422629))))

(declare-fun res!512845 () Bool)

(assert (=> b!757996 (=> res!512845 e!422629)))

(declare-fun lt!337623 () SeekEntryResult!7705)

(get-info :version)

(assert (=> b!757996 (= res!512845 (or (not ((_ is Intermediate!7705) lt!337623)) (bvslt x!1131 (x!64104 lt!337623)) (not (= x!1131 (x!64104 lt!337623))) (not (= index!1321 (index!33189 lt!337623)))))))

(assert (=> b!757996 e!422631))

(declare-fun res!512838 () Bool)

(assert (=> b!757996 (=> (not res!512838) (not e!422631))))

(declare-fun lt!337628 () SeekEntryResult!7705)

(assert (=> b!757996 (= res!512838 (= lt!337628 lt!337626))))

(assert (=> b!757996 (= lt!337626 (Found!7705 j!159))))

(assert (=> b!757996 (= lt!337628 (seekEntryOrOpen!0 (select (arr!20098 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!757996 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337624 () Unit!26222)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41976 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26222)

(assert (=> b!757996 (= lt!337624 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!757997 () Bool)

(declare-fun e!422630 () Bool)

(declare-fun lt!337629 () SeekEntryResult!7705)

(assert (=> b!757997 (= e!422630 (= lt!337628 lt!337629))))

(declare-fun b!757998 () Bool)

(declare-fun res!512847 () Bool)

(assert (=> b!757998 (=> (not res!512847) (not e!422628))))

(assert (=> b!757998 (= res!512847 e!422632)))

(declare-fun c!82956 () Bool)

(assert (=> b!757998 (= c!82956 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!757999 () Bool)

(declare-fun res!512846 () Bool)

(assert (=> b!757999 (=> (not res!512846) (not e!422630))))

(declare-fun lt!337627 () (_ BitVec 64))

(declare-fun lt!337634 () array!41976)

(assert (=> b!757999 (= res!512846 (= (seekEntryOrOpen!0 lt!337627 lt!337634 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337627 lt!337634 mask!3328)))))

(declare-fun b!758000 () Bool)

(declare-fun e!422627 () Bool)

(declare-fun e!422625 () Bool)

(assert (=> b!758000 (= e!422627 e!422625)))

(declare-fun res!512839 () Bool)

(assert (=> b!758000 (=> res!512839 e!422625)))

(declare-fun lt!337625 () (_ BitVec 64))

(assert (=> b!758000 (= res!512839 (= lt!337625 lt!337627))))

(assert (=> b!758000 (= lt!337625 (select (store (arr!20098 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!758001 () Bool)

(declare-fun res!512852 () Bool)

(assert (=> b!758001 (=> (not res!512852) (not e!422633))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!758001 (= res!512852 (validKeyInArray!0 (select (arr!20098 a!3186) j!159)))))

(declare-fun b!758002 () Bool)

(declare-fun res!512848 () Bool)

(assert (=> b!758002 (=> (not res!512848) (not e!422633))))

(declare-fun arrayContainsKey!0 (array!41976 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!758002 (= res!512848 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!758003 () Bool)

(declare-fun res!512842 () Bool)

(assert (=> b!758003 (=> (not res!512842) (not e!422626))))

(declare-datatypes ((List!14153 0))(
  ( (Nil!14150) (Cons!14149 (h!15221 (_ BitVec 64)) (t!20476 List!14153)) )
))
(declare-fun arrayNoDuplicates!0 (array!41976 (_ BitVec 32) List!14153) Bool)

(assert (=> b!758003 (= res!512842 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14150))))

(declare-fun b!758004 () Bool)

(declare-fun Unit!26225 () Unit!26222)

(assert (=> b!758004 (= e!422623 Unit!26225)))

(assert (=> b!758004 false))

(declare-fun b!758005 () Bool)

(declare-fun res!512855 () Bool)

(assert (=> b!758005 (=> (not res!512855) (not e!422633))))

(assert (=> b!758005 (= res!512855 (validKeyInArray!0 k0!2102))))

(declare-fun b!758006 () Bool)

(assert (=> b!758006 (= e!422628 e!422634)))

(declare-fun res!512850 () Bool)

(assert (=> b!758006 (=> (not res!512850) (not e!422634))))

(declare-fun lt!337631 () SeekEntryResult!7705)

(assert (=> b!758006 (= res!512850 (= lt!337631 lt!337623))))

(assert (=> b!758006 (= lt!337623 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337627 lt!337634 mask!3328))))

(assert (=> b!758006 (= lt!337631 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337627 mask!3328) lt!337627 lt!337634 mask!3328))))

(assert (=> b!758006 (= lt!337627 (select (store (arr!20098 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!758006 (= lt!337634 (array!41977 (store (arr!20098 a!3186) i!1173 k0!2102) (size!20519 a!3186)))))

(declare-fun b!758007 () Bool)

(assert (=> b!758007 (= e!422629 e!422627)))

(declare-fun res!512844 () Bool)

(assert (=> b!758007 (=> res!512844 e!422627)))

(assert (=> b!758007 (= res!512844 (not (= lt!337629 lt!337626)))))

(assert (=> b!758007 (= lt!337629 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20098 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!758008 () Bool)

(assert (=> b!758008 (= e!422632 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20098 a!3186) j!159) a!3186 mask!3328) lt!337633))))

(declare-fun b!758009 () Bool)

(assert (=> b!758009 (= e!422625 true)))

(assert (=> b!758009 e!422630))

(declare-fun res!512840 () Bool)

(assert (=> b!758009 (=> (not res!512840) (not e!422630))))

(assert (=> b!758009 (= res!512840 (= lt!337625 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!337632 () Unit!26222)

(assert (=> b!758009 (= lt!337632 e!422623)))

(declare-fun c!82955 () Bool)

(assert (=> b!758009 (= c!82955 (= lt!337625 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!65850 res!512856) b!757993))

(assert (= (and b!757993 res!512849) b!758001))

(assert (= (and b!758001 res!512852) b!758005))

(assert (= (and b!758005 res!512855) b!758002))

(assert (= (and b!758002 res!512848) b!757995))

(assert (= (and b!757995 res!512841) b!757988))

(assert (= (and b!757988 res!512843) b!758003))

(assert (= (and b!758003 res!512842) b!757992))

(assert (= (and b!757992 res!512851) b!757989))

(assert (= (and b!757989 res!512854) b!757987))

(assert (= (and b!757987 res!512853) b!757998))

(assert (= (and b!757998 c!82956) b!758008))

(assert (= (and b!757998 (not c!82956)) b!757991))

(assert (= (and b!757998 res!512847) b!758006))

(assert (= (and b!758006 res!512850) b!757996))

(assert (= (and b!757996 res!512838) b!757994))

(assert (= (and b!757996 (not res!512845)) b!758007))

(assert (= (and b!758007 (not res!512844)) b!758000))

(assert (= (and b!758000 (not res!512839)) b!758009))

(assert (= (and b!758009 c!82955) b!758004))

(assert (= (and b!758009 (not c!82955)) b!757990))

(assert (= (and b!758009 res!512840) b!757999))

(assert (= (and b!757999 res!512846) b!757997))

(declare-fun m!705629 () Bool)

(assert (=> b!757991 m!705629))

(assert (=> b!757991 m!705629))

(declare-fun m!705631 () Bool)

(assert (=> b!757991 m!705631))

(assert (=> b!757996 m!705629))

(assert (=> b!757996 m!705629))

(declare-fun m!705633 () Bool)

(assert (=> b!757996 m!705633))

(declare-fun m!705635 () Bool)

(assert (=> b!757996 m!705635))

(declare-fun m!705637 () Bool)

(assert (=> b!757996 m!705637))

(assert (=> b!758007 m!705629))

(assert (=> b!758007 m!705629))

(assert (=> b!758007 m!705631))

(assert (=> b!757989 m!705629))

(assert (=> b!757989 m!705629))

(declare-fun m!705639 () Bool)

(assert (=> b!757989 m!705639))

(assert (=> b!757989 m!705639))

(assert (=> b!757989 m!705629))

(declare-fun m!705641 () Bool)

(assert (=> b!757989 m!705641))

(declare-fun m!705643 () Bool)

(assert (=> start!65850 m!705643))

(declare-fun m!705645 () Bool)

(assert (=> start!65850 m!705645))

(declare-fun m!705647 () Bool)

(assert (=> b!758003 m!705647))

(declare-fun m!705649 () Bool)

(assert (=> b!757987 m!705649))

(assert (=> b!758001 m!705629))

(assert (=> b!758001 m!705629))

(declare-fun m!705651 () Bool)

(assert (=> b!758001 m!705651))

(assert (=> b!758008 m!705629))

(assert (=> b!758008 m!705629))

(declare-fun m!705653 () Bool)

(assert (=> b!758008 m!705653))

(assert (=> b!757994 m!705629))

(assert (=> b!757994 m!705629))

(declare-fun m!705655 () Bool)

(assert (=> b!757994 m!705655))

(declare-fun m!705657 () Bool)

(assert (=> b!757988 m!705657))

(declare-fun m!705659 () Bool)

(assert (=> b!758002 m!705659))

(declare-fun m!705661 () Bool)

(assert (=> b!758005 m!705661))

(declare-fun m!705663 () Bool)

(assert (=> b!758000 m!705663))

(declare-fun m!705665 () Bool)

(assert (=> b!758000 m!705665))

(declare-fun m!705667 () Bool)

(assert (=> b!757995 m!705667))

(assert (=> b!758006 m!705663))

(declare-fun m!705669 () Bool)

(assert (=> b!758006 m!705669))

(declare-fun m!705671 () Bool)

(assert (=> b!758006 m!705671))

(declare-fun m!705673 () Bool)

(assert (=> b!758006 m!705673))

(declare-fun m!705675 () Bool)

(assert (=> b!758006 m!705675))

(assert (=> b!758006 m!705669))

(declare-fun m!705677 () Bool)

(assert (=> b!757999 m!705677))

(declare-fun m!705679 () Bool)

(assert (=> b!757999 m!705679))

(check-sat (not b!758003) (not b!757994) (not b!757991) (not b!758001) (not b!758006) (not b!757989) (not b!758002) (not b!757999) (not start!65850) (not b!757995) (not b!757988) (not b!757996) (not b!758008) (not b!758007) (not b!758005))
(check-sat)
