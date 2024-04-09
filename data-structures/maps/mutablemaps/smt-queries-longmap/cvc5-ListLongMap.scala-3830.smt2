; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52484 () Bool)

(assert start!52484)

(declare-fun b!572855 () Bool)

(declare-fun e!329545 () Bool)

(declare-fun e!329547 () Bool)

(assert (=> b!572855 (= e!329545 e!329547)))

(declare-fun res!362516 () Bool)

(assert (=> b!572855 (=> res!362516 e!329547)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!261629 () (_ BitVec 64))

(declare-datatypes ((array!35835 0))(
  ( (array!35836 (arr!17202 (Array (_ BitVec 32) (_ BitVec 64))) (size!17566 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35835)

(assert (=> b!572855 (= res!362516 (or (= lt!261629 (select (arr!17202 a!3118) j!142)) (= lt!261629 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5658 0))(
  ( (MissingZero!5658 (index!24859 (_ BitVec 32))) (Found!5658 (index!24860 (_ BitVec 32))) (Intermediate!5658 (undefined!6470 Bool) (index!24861 (_ BitVec 32)) (x!53754 (_ BitVec 32))) (Undefined!5658) (MissingVacant!5658 (index!24862 (_ BitVec 32))) )
))
(declare-fun lt!261621 () SeekEntryResult!5658)

(assert (=> b!572855 (= lt!261629 (select (arr!17202 a!3118) (index!24861 lt!261621)))))

(declare-fun b!572856 () Bool)

(declare-fun res!362521 () Bool)

(declare-fun e!329551 () Bool)

(assert (=> b!572856 (=> (not res!362521) (not e!329551))))

(declare-datatypes ((List!11335 0))(
  ( (Nil!11332) (Cons!11331 (h!12358 (_ BitVec 64)) (t!17571 List!11335)) )
))
(declare-fun arrayNoDuplicates!0 (array!35835 (_ BitVec 32) List!11335) Bool)

(assert (=> b!572856 (= res!362521 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11332))))

(declare-fun lt!261624 () (_ BitVec 64))

(declare-fun e!329548 () Bool)

(declare-fun lt!261623 () array!35835)

(declare-fun b!572857 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35835 (_ BitVec 32)) SeekEntryResult!5658)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35835 (_ BitVec 32)) SeekEntryResult!5658)

(assert (=> b!572857 (= e!329548 (= (seekEntryOrOpen!0 lt!261624 lt!261623 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53754 lt!261621) (index!24861 lt!261621) (index!24861 lt!261621) lt!261624 lt!261623 mask!3119)))))

(declare-fun b!572858 () Bool)

(assert (=> b!572858 (= e!329547 e!329548)))

(declare-fun res!362514 () Bool)

(assert (=> b!572858 (=> (not res!362514) (not e!329548))))

(declare-fun lt!261627 () SeekEntryResult!5658)

(assert (=> b!572858 (= res!362514 (= lt!261627 (seekKeyOrZeroReturnVacant!0 (x!53754 lt!261621) (index!24861 lt!261621) (index!24861 lt!261621) (select (arr!17202 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun res!362520 () Bool)

(declare-fun e!329549 () Bool)

(assert (=> start!52484 (=> (not res!362520) (not e!329549))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52484 (= res!362520 (validMask!0 mask!3119))))

(assert (=> start!52484 e!329549))

(assert (=> start!52484 true))

(declare-fun array_inv!12976 (array!35835) Bool)

(assert (=> start!52484 (array_inv!12976 a!3118)))

(declare-fun b!572859 () Bool)

(assert (=> b!572859 (= e!329549 e!329551)))

(declare-fun res!362523 () Bool)

(assert (=> b!572859 (=> (not res!362523) (not e!329551))))

(declare-fun lt!261628 () SeekEntryResult!5658)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572859 (= res!362523 (or (= lt!261628 (MissingZero!5658 i!1132)) (= lt!261628 (MissingVacant!5658 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!572859 (= lt!261628 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!572860 () Bool)

(declare-fun res!362522 () Bool)

(assert (=> b!572860 (=> (not res!362522) (not e!329549))))

(assert (=> b!572860 (= res!362522 (and (= (size!17566 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17566 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17566 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!572861 () Bool)

(declare-fun e!329550 () Bool)

(assert (=> b!572861 (= e!329550 (not (or (undefined!6470 lt!261621) (not (is-Intermediate!5658 lt!261621)) (let ((bdg!17961 (select (arr!17202 a!3118) (index!24861 lt!261621)))) (or (= bdg!17961 (select (arr!17202 a!3118) j!142)) (= bdg!17961 #b0000000000000000000000000000000000000000000000000000000000000000) (and (bvsge (index!24861 lt!261621) #b00000000000000000000000000000000) (bvslt (index!24861 lt!261621) (bvadd #b00000000000000000000000000000001 mask!3119))))))))))

(declare-fun e!329544 () Bool)

(assert (=> b!572861 e!329544))

(declare-fun res!362515 () Bool)

(assert (=> b!572861 (=> (not res!362515) (not e!329544))))

(assert (=> b!572861 (= res!362515 (= lt!261627 (Found!5658 j!142)))))

(assert (=> b!572861 (= lt!261627 (seekEntryOrOpen!0 (select (arr!17202 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35835 (_ BitVec 32)) Bool)

(assert (=> b!572861 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18018 0))(
  ( (Unit!18019) )
))
(declare-fun lt!261626 () Unit!18018)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35835 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18018)

(assert (=> b!572861 (= lt!261626 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572862 () Bool)

(declare-fun res!362513 () Bool)

(assert (=> b!572862 (=> (not res!362513) (not e!329549))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572862 (= res!362513 (validKeyInArray!0 k!1914))))

(declare-fun b!572863 () Bool)

(assert (=> b!572863 (= e!329544 e!329545)))

(declare-fun res!362519 () Bool)

(assert (=> b!572863 (=> res!362519 e!329545)))

(assert (=> b!572863 (= res!362519 (or (undefined!6470 lt!261621) (not (is-Intermediate!5658 lt!261621))))))

(declare-fun b!572864 () Bool)

(declare-fun res!362517 () Bool)

(assert (=> b!572864 (=> (not res!362517) (not e!329551))))

(assert (=> b!572864 (= res!362517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!572865 () Bool)

(declare-fun res!362525 () Bool)

(assert (=> b!572865 (=> (not res!362525) (not e!329549))))

(declare-fun arrayContainsKey!0 (array!35835 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572865 (= res!362525 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!572866 () Bool)

(assert (=> b!572866 (= e!329551 e!329550)))

(declare-fun res!362518 () Bool)

(assert (=> b!572866 (=> (not res!362518) (not e!329550))))

(declare-fun lt!261625 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35835 (_ BitVec 32)) SeekEntryResult!5658)

(assert (=> b!572866 (= res!362518 (= lt!261621 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261625 lt!261624 lt!261623 mask!3119)))))

(declare-fun lt!261622 () (_ BitVec 32))

(assert (=> b!572866 (= lt!261621 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261622 (select (arr!17202 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572866 (= lt!261625 (toIndex!0 lt!261624 mask!3119))))

(assert (=> b!572866 (= lt!261624 (select (store (arr!17202 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!572866 (= lt!261622 (toIndex!0 (select (arr!17202 a!3118) j!142) mask!3119))))

(assert (=> b!572866 (= lt!261623 (array!35836 (store (arr!17202 a!3118) i!1132 k!1914) (size!17566 a!3118)))))

(declare-fun b!572867 () Bool)

(declare-fun res!362524 () Bool)

(assert (=> b!572867 (=> (not res!362524) (not e!329549))))

(assert (=> b!572867 (= res!362524 (validKeyInArray!0 (select (arr!17202 a!3118) j!142)))))

(assert (= (and start!52484 res!362520) b!572860))

(assert (= (and b!572860 res!362522) b!572867))

(assert (= (and b!572867 res!362524) b!572862))

(assert (= (and b!572862 res!362513) b!572865))

(assert (= (and b!572865 res!362525) b!572859))

(assert (= (and b!572859 res!362523) b!572864))

(assert (= (and b!572864 res!362517) b!572856))

(assert (= (and b!572856 res!362521) b!572866))

(assert (= (and b!572866 res!362518) b!572861))

(assert (= (and b!572861 res!362515) b!572863))

(assert (= (and b!572863 (not res!362519)) b!572855))

(assert (= (and b!572855 (not res!362516)) b!572858))

(assert (= (and b!572858 res!362514) b!572857))

(declare-fun m!551947 () Bool)

(assert (=> b!572859 m!551947))

(declare-fun m!551949 () Bool)

(assert (=> b!572857 m!551949))

(declare-fun m!551951 () Bool)

(assert (=> b!572857 m!551951))

(declare-fun m!551953 () Bool)

(assert (=> b!572858 m!551953))

(assert (=> b!572858 m!551953))

(declare-fun m!551955 () Bool)

(assert (=> b!572858 m!551955))

(declare-fun m!551957 () Bool)

(assert (=> b!572865 m!551957))

(declare-fun m!551959 () Bool)

(assert (=> b!572862 m!551959))

(assert (=> b!572867 m!551953))

(assert (=> b!572867 m!551953))

(declare-fun m!551961 () Bool)

(assert (=> b!572867 m!551961))

(declare-fun m!551963 () Bool)

(assert (=> b!572856 m!551963))

(declare-fun m!551965 () Bool)

(assert (=> b!572864 m!551965))

(declare-fun m!551967 () Bool)

(assert (=> start!52484 m!551967))

(declare-fun m!551969 () Bool)

(assert (=> start!52484 m!551969))

(declare-fun m!551971 () Bool)

(assert (=> b!572861 m!551971))

(assert (=> b!572861 m!551953))

(declare-fun m!551973 () Bool)

(assert (=> b!572861 m!551973))

(declare-fun m!551975 () Bool)

(assert (=> b!572861 m!551975))

(assert (=> b!572861 m!551953))

(declare-fun m!551977 () Bool)

(assert (=> b!572861 m!551977))

(assert (=> b!572866 m!551953))

(declare-fun m!551979 () Bool)

(assert (=> b!572866 m!551979))

(assert (=> b!572866 m!551953))

(declare-fun m!551981 () Bool)

(assert (=> b!572866 m!551981))

(declare-fun m!551983 () Bool)

(assert (=> b!572866 m!551983))

(declare-fun m!551985 () Bool)

(assert (=> b!572866 m!551985))

(declare-fun m!551987 () Bool)

(assert (=> b!572866 m!551987))

(assert (=> b!572866 m!551953))

(declare-fun m!551989 () Bool)

(assert (=> b!572866 m!551989))

(assert (=> b!572855 m!551953))

(assert (=> b!572855 m!551971))

(push 1)

(assert (not b!572857))

(assert (not b!572861))

(assert (not b!572858))

(assert (not b!572865))

(assert (not b!572867))

(assert (not b!572864))

(assert (not start!52484))

(assert (not b!572862))

(assert (not b!572859))

(assert (not b!572856))

(assert (not b!572866))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!572997 () Bool)

(declare-fun e!329641 () SeekEntryResult!5658)

(assert (=> b!572997 (= e!329641 (Intermediate!5658 false lt!261625 #b00000000000000000000000000000000))))

(declare-fun b!572998 () Bool)

(declare-fun e!329637 () Bool)

(declare-fun e!329640 () Bool)

(assert (=> b!572998 (= e!329637 e!329640)))

(declare-fun res!362631 () Bool)

(declare-fun lt!261697 () SeekEntryResult!5658)

(assert (=> b!572998 (= res!362631 (and (is-Intermediate!5658 lt!261697) (not (undefined!6470 lt!261697)) (bvslt (x!53754 lt!261697) #b01111111111111111111111111111110) (bvsge (x!53754 lt!261697) #b00000000000000000000000000000000) (bvsge (x!53754 lt!261697) #b00000000000000000000000000000000)))))

(assert (=> b!572998 (=> (not res!362631) (not e!329640))))

(declare-fun b!572999 () Bool)

(declare-fun e!329638 () SeekEntryResult!5658)

(assert (=> b!572999 (= e!329638 (Intermediate!5658 true lt!261625 #b00000000000000000000000000000000))))

(declare-fun b!573000 () Bool)

(assert (=> b!573000 (and (bvsge (index!24861 lt!261697) #b00000000000000000000000000000000) (bvslt (index!24861 lt!261697) (size!17566 lt!261623)))))

(declare-fun res!362633 () Bool)

(assert (=> b!573000 (= res!362633 (= (select (arr!17202 lt!261623) (index!24861 lt!261697)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!329639 () Bool)

(assert (=> b!573000 (=> res!362633 e!329639)))

(declare-fun d!84749 () Bool)

(assert (=> d!84749 e!329637))

(declare-fun c!65543 () Bool)

(assert (=> d!84749 (= c!65543 (and (is-Intermediate!5658 lt!261697) (undefined!6470 lt!261697)))))

(assert (=> d!84749 (= lt!261697 e!329638)))

(declare-fun c!65541 () Bool)

(assert (=> d!84749 (= c!65541 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!261698 () (_ BitVec 64))

(assert (=> d!84749 (= lt!261698 (select (arr!17202 lt!261623) lt!261625))))

(assert (=> d!84749 (validMask!0 mask!3119)))

(assert (=> d!84749 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261625 lt!261624 lt!261623 mask!3119) lt!261697)))

(declare-fun b!573001 () Bool)

(assert (=> b!573001 (= e!329637 (bvsge (x!53754 lt!261697) #b01111111111111111111111111111110))))

(declare-fun b!573002 () Bool)

(assert (=> b!573002 (= e!329638 e!329641)))

(declare-fun c!65542 () Bool)

(assert (=> b!573002 (= c!65542 (or (= lt!261698 lt!261624) (= (bvadd lt!261698 lt!261698) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!573003 () Bool)

(assert (=> b!573003 (and (bvsge (index!24861 lt!261697) #b00000000000000000000000000000000) (bvslt (index!24861 lt!261697) (size!17566 lt!261623)))))

(assert (=> b!573003 (= e!329639 (= (select (arr!17202 lt!261623) (index!24861 lt!261697)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!573004 () Bool)

(assert (=> b!573004 (and (bvsge (index!24861 lt!261697) #b00000000000000000000000000000000) (bvslt (index!24861 lt!261697) (size!17566 lt!261623)))))

(declare-fun res!362632 () Bool)

(assert (=> b!573004 (= res!362632 (= (select (arr!17202 lt!261623) (index!24861 lt!261697)) lt!261624))))

(assert (=> b!573004 (=> res!362632 e!329639)))

(assert (=> b!573004 (= e!329640 e!329639)))

(declare-fun b!573005 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!573005 (= e!329641 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!261625 #b00000000000000000000000000000000 mask!3119) lt!261624 lt!261623 mask!3119))))

(assert (= (and d!84749 c!65541) b!572999))

(assert (= (and d!84749 (not c!65541)) b!573002))

(assert (= (and b!573002 c!65542) b!572997))

(assert (= (and b!573002 (not c!65542)) b!573005))

(assert (= (and d!84749 c!65543) b!573001))

(assert (= (and d!84749 (not c!65543)) b!572998))

(assert (= (and b!572998 res!362631) b!573004))

(assert (= (and b!573004 (not res!362632)) b!573000))

(assert (= (and b!573000 (not res!362633)) b!573003))

(declare-fun m!552097 () Bool)

(assert (=> b!573000 m!552097))

(declare-fun m!552099 () Bool)

(assert (=> b!573005 m!552099))

(assert (=> b!573005 m!552099))

(declare-fun m!552101 () Bool)

(assert (=> b!573005 m!552101))

(assert (=> b!573003 m!552097))

(declare-fun m!552103 () Bool)

(assert (=> d!84749 m!552103))

(assert (=> d!84749 m!551967))

(assert (=> b!573004 m!552097))

(assert (=> b!572866 d!84749))

(declare-fun b!573006 () Bool)

(declare-fun e!329646 () SeekEntryResult!5658)

(assert (=> b!573006 (= e!329646 (Intermediate!5658 false lt!261622 #b00000000000000000000000000000000))))

(declare-fun b!573007 () Bool)

(declare-fun e!329642 () Bool)

(declare-fun e!329645 () Bool)

(assert (=> b!573007 (= e!329642 e!329645)))

(declare-fun res!362634 () Bool)

(declare-fun lt!261699 () SeekEntryResult!5658)

(assert (=> b!573007 (= res!362634 (and (is-Intermediate!5658 lt!261699) (not (undefined!6470 lt!261699)) (bvslt (x!53754 lt!261699) #b01111111111111111111111111111110) (bvsge (x!53754 lt!261699) #b00000000000000000000000000000000) (bvsge (x!53754 lt!261699) #b00000000000000000000000000000000)))))

(assert (=> b!573007 (=> (not res!362634) (not e!329645))))

(declare-fun b!573008 () Bool)

(declare-fun e!329643 () SeekEntryResult!5658)

(assert (=> b!573008 (= e!329643 (Intermediate!5658 true lt!261622 #b00000000000000000000000000000000))))

(declare-fun b!573009 () Bool)

(assert (=> b!573009 (and (bvsge (index!24861 lt!261699) #b00000000000000000000000000000000) (bvslt (index!24861 lt!261699) (size!17566 a!3118)))))

(declare-fun res!362636 () Bool)

(assert (=> b!573009 (= res!362636 (= (select (arr!17202 a!3118) (index!24861 lt!261699)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!329644 () Bool)

(assert (=> b!573009 (=> res!362636 e!329644)))

(declare-fun d!84761 () Bool)

(assert (=> d!84761 e!329642))

(declare-fun c!65546 () Bool)

(assert (=> d!84761 (= c!65546 (and (is-Intermediate!5658 lt!261699) (undefined!6470 lt!261699)))))

(assert (=> d!84761 (= lt!261699 e!329643)))

(declare-fun c!65544 () Bool)

(assert (=> d!84761 (= c!65544 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!261700 () (_ BitVec 64))

(assert (=> d!84761 (= lt!261700 (select (arr!17202 a!3118) lt!261622))))

(assert (=> d!84761 (validMask!0 mask!3119)))

(assert (=> d!84761 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261622 (select (arr!17202 a!3118) j!142) a!3118 mask!3119) lt!261699)))

(declare-fun b!573010 () Bool)

(assert (=> b!573010 (= e!329642 (bvsge (x!53754 lt!261699) #b01111111111111111111111111111110))))

(declare-fun b!573011 () Bool)

(assert (=> b!573011 (= e!329643 e!329646)))

(declare-fun c!65545 () Bool)

(assert (=> b!573011 (= c!65545 (or (= lt!261700 (select (arr!17202 a!3118) j!142)) (= (bvadd lt!261700 lt!261700) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!573012 () Bool)

(assert (=> b!573012 (and (bvsge (index!24861 lt!261699) #b00000000000000000000000000000000) (bvslt (index!24861 lt!261699) (size!17566 a!3118)))))

(assert (=> b!573012 (= e!329644 (= (select (arr!17202 a!3118) (index!24861 lt!261699)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!573013 () Bool)

(assert (=> b!573013 (and (bvsge (index!24861 lt!261699) #b00000000000000000000000000000000) (bvslt (index!24861 lt!261699) (size!17566 a!3118)))))

(declare-fun res!362635 () Bool)

(assert (=> b!573013 (= res!362635 (= (select (arr!17202 a!3118) (index!24861 lt!261699)) (select (arr!17202 a!3118) j!142)))))

(assert (=> b!573013 (=> res!362635 e!329644)))

(assert (=> b!573013 (= e!329645 e!329644)))

(declare-fun b!573014 () Bool)

(assert (=> b!573014 (= e!329646 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!261622 #b00000000000000000000000000000000 mask!3119) (select (arr!17202 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!84761 c!65544) b!573008))

(assert (= (and d!84761 (not c!65544)) b!573011))

(assert (= (and b!573011 c!65545) b!573006))

(assert (= (and b!573011 (not c!65545)) b!573014))

(assert (= (and d!84761 c!65546) b!573010))

(assert (= (and d!84761 (not c!65546)) b!573007))

(assert (= (and b!573007 res!362634) b!573013))

(assert (= (and b!573013 (not res!362635)) b!573009))

(assert (= (and b!573009 (not res!362636)) b!573012))

(declare-fun m!552105 () Bool)

(assert (=> b!573009 m!552105))

(declare-fun m!552107 () Bool)

(assert (=> b!573014 m!552107))

(assert (=> b!573014 m!552107))

(assert (=> b!573014 m!551953))

(declare-fun m!552109 () Bool)

(assert (=> b!573014 m!552109))

(assert (=> b!573012 m!552105))

(declare-fun m!552111 () Bool)

(assert (=> d!84761 m!552111))

(assert (=> d!84761 m!551967))

(assert (=> b!573013 m!552105))

(assert (=> b!572866 d!84761))

(declare-fun d!84763 () Bool)

(declare-fun lt!261710 () (_ BitVec 32))

(declare-fun lt!261709 () (_ BitVec 32))

(assert (=> d!84763 (= lt!261710 (bvmul (bvxor lt!261709 (bvlshr lt!261709 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84763 (= lt!261709 ((_ extract 31 0) (bvand (bvxor lt!261624 (bvlshr lt!261624 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84763 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!362637 (let ((h!12361 ((_ extract 31 0) (bvand (bvxor lt!261624 (bvlshr lt!261624 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53758 (bvmul (bvxor h!12361 (bvlshr h!12361 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53758 (bvlshr x!53758 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!362637 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!362637 #b00000000000000000000000000000000))))))

(assert (=> d!84763 (= (toIndex!0 lt!261624 mask!3119) (bvand (bvxor lt!261710 (bvlshr lt!261710 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!572866 d!84763))

(declare-fun d!84765 () Bool)

(declare-fun lt!261712 () (_ BitVec 32))

(declare-fun lt!261711 () (_ BitVec 32))

(assert (=> d!84765 (= lt!261712 (bvmul (bvxor lt!261711 (bvlshr lt!261711 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84765 (= lt!261711 ((_ extract 31 0) (bvand (bvxor (select (arr!17202 a!3118) j!142) (bvlshr (select (arr!17202 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84765 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!362637 (let ((h!12361 ((_ extract 31 0) (bvand (bvxor (select (arr!17202 a!3118) j!142) (bvlshr (select (arr!17202 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53758 (bvmul (bvxor h!12361 (bvlshr h!12361 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53758 (bvlshr x!53758 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!362637 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!362637 #b00000000000000000000000000000000))))))

(assert (=> d!84765 (= (toIndex!0 (select (arr!17202 a!3118) j!142) mask!3119) (bvand (bvxor lt!261712 (bvlshr lt!261712 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!572866 d!84765))

(declare-fun d!84767 () Bool)

(declare-fun res!362654 () Bool)

(declare-fun e!329671 () Bool)

(assert (=> d!84767 (=> res!362654 e!329671)))

(assert (=> d!84767 (= res!362654 (= (select (arr!17202 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!84767 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!329671)))

(declare-fun b!573055 () Bool)

(declare-fun e!329672 () Bool)

(assert (=> b!573055 (= e!329671 e!329672)))

(declare-fun res!362655 () Bool)

(assert (=> b!573055 (=> (not res!362655) (not e!329672))))

(assert (=> b!573055 (= res!362655 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17566 a!3118)))))

(declare-fun b!573056 () Bool)

(assert (=> b!573056 (= e!329672 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84767 (not res!362654)) b!573055))

(assert (= (and b!573055 res!362655) b!573056))

(declare-fun m!552121 () Bool)

(assert (=> d!84767 m!552121))

(declare-fun m!552123 () Bool)

(assert (=> b!573056 m!552123))

(assert (=> b!572865 d!84767))

(declare-fun b!573092 () Bool)

(declare-fun e!329696 () Bool)

(declare-fun e!329695 () Bool)

(assert (=> b!573092 (= e!329696 e!329695)))

(declare-fun c!65570 () Bool)

(assert (=> b!573092 (= c!65570 (validKeyInArray!0 (select (arr!17202 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!573093 () Bool)

(declare-fun e!329694 () Bool)

(declare-fun call!32630 () Bool)

(assert (=> b!573093 (= e!329694 call!32630)))

(declare-fun d!84771 () Bool)

(declare-fun res!362671 () Bool)

(assert (=> d!84771 (=> res!362671 e!329696)))

(assert (=> d!84771 (= res!362671 (bvsge #b00000000000000000000000000000000 (size!17566 a!3118)))))

(assert (=> d!84771 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!329696)))

(declare-fun b!573094 () Bool)

(assert (=> b!573094 (= e!329695 e!329694)))

(declare-fun lt!261738 () (_ BitVec 64))

(assert (=> b!573094 (= lt!261738 (select (arr!17202 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!261739 () Unit!18018)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35835 (_ BitVec 64) (_ BitVec 32)) Unit!18018)

(assert (=> b!573094 (= lt!261739 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!261738 #b00000000000000000000000000000000))))

(assert (=> b!573094 (arrayContainsKey!0 a!3118 lt!261738 #b00000000000000000000000000000000)))

(declare-fun lt!261737 () Unit!18018)

(assert (=> b!573094 (= lt!261737 lt!261739)))

(declare-fun res!362670 () Bool)

(assert (=> b!573094 (= res!362670 (= (seekEntryOrOpen!0 (select (arr!17202 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5658 #b00000000000000000000000000000000)))))

(assert (=> b!573094 (=> (not res!362670) (not e!329694))))

(declare-fun bm!32627 () Bool)

(assert (=> bm!32627 (= call!32630 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!573095 () Bool)

(assert (=> b!573095 (= e!329695 call!32630)))

(assert (= (and d!84771 (not res!362671)) b!573092))

(assert (= (and b!573092 c!65570) b!573094))

(assert (= (and b!573092 (not c!65570)) b!573095))

(assert (= (and b!573094 res!362670) b!573093))

(assert (= (or b!573093 b!573095) bm!32627))

(assert (=> b!573092 m!552121))

(assert (=> b!573092 m!552121))

(declare-fun m!552141 () Bool)

(assert (=> b!573092 m!552141))

(assert (=> b!573094 m!552121))

(declare-fun m!552143 () Bool)

(assert (=> b!573094 m!552143))

(declare-fun m!552145 () Bool)

(assert (=> b!573094 m!552145))

(assert (=> b!573094 m!552121))

(declare-fun m!552147 () Bool)

(assert (=> b!573094 m!552147))

(declare-fun m!552149 () Bool)

(assert (=> bm!32627 m!552149))

(assert (=> b!572864 d!84771))

(declare-fun d!84781 () Bool)

(assert (=> d!84781 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52484 d!84781))

(declare-fun d!84789 () Bool)

(assert (=> d!84789 (= (array_inv!12976 a!3118) (bvsge (size!17566 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52484 d!84789))

(declare-fun d!84791 () Bool)

(assert (=> d!84791 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!572862 d!84791))

(declare-fun d!84793 () Bool)

(declare-fun lt!261779 () SeekEntryResult!5658)

(assert (=> d!84793 (and (or (is-Undefined!5658 lt!261779) (not (is-Found!5658 lt!261779)) (and (bvsge (index!24860 lt!261779) #b00000000000000000000000000000000) (bvslt (index!24860 lt!261779) (size!17566 a!3118)))) (or (is-Undefined!5658 lt!261779) (is-Found!5658 lt!261779) (not (is-MissingZero!5658 lt!261779)) (and (bvsge (index!24859 lt!261779) #b00000000000000000000000000000000) (bvslt (index!24859 lt!261779) (size!17566 a!3118)))) (or (is-Undefined!5658 lt!261779) (is-Found!5658 lt!261779) (is-MissingZero!5658 lt!261779) (not (is-MissingVacant!5658 lt!261779)) (and (bvsge (index!24862 lt!261779) #b00000000000000000000000000000000) (bvslt (index!24862 lt!261779) (size!17566 a!3118)))) (or (is-Undefined!5658 lt!261779) (ite (is-Found!5658 lt!261779) (= (select (arr!17202 a!3118) (index!24860 lt!261779)) (select (arr!17202 a!3118) j!142)) (ite (is-MissingZero!5658 lt!261779) (= (select (arr!17202 a!3118) (index!24859 lt!261779)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5658 lt!261779) (= (select (arr!17202 a!3118) (index!24862 lt!261779)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!329733 () SeekEntryResult!5658)

(assert (=> d!84793 (= lt!261779 e!329733)))

(declare-fun c!65598 () Bool)

(declare-fun lt!261780 () SeekEntryResult!5658)

(assert (=> d!84793 (= c!65598 (and (is-Intermediate!5658 lt!261780) (undefined!6470 lt!261780)))))

(assert (=> d!84793 (= lt!261780 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17202 a!3118) j!142) mask!3119) (select (arr!17202 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84793 (validMask!0 mask!3119)))

(assert (=> d!84793 (= (seekEntryOrOpen!0 (select (arr!17202 a!3118) j!142) a!3118 mask!3119) lt!261779)))

(declare-fun b!573159 () Bool)

(declare-fun c!65599 () Bool)

(declare-fun lt!261778 () (_ BitVec 64))

(assert (=> b!573159 (= c!65599 (= lt!261778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!329732 () SeekEntryResult!5658)

(declare-fun e!329734 () SeekEntryResult!5658)

(assert (=> b!573159 (= e!329732 e!329734)))

(declare-fun b!573160 () Bool)

(assert (=> b!573160 (= e!329732 (Found!5658 (index!24861 lt!261780)))))

(declare-fun b!573161 () Bool)

(assert (=> b!573161 (= e!329733 Undefined!5658)))

(declare-fun b!573162 () Bool)

(assert (=> b!573162 (= e!329734 (seekKeyOrZeroReturnVacant!0 (x!53754 lt!261780) (index!24861 lt!261780) (index!24861 lt!261780) (select (arr!17202 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!573163 () Bool)

(assert (=> b!573163 (= e!329734 (MissingZero!5658 (index!24861 lt!261780)))))

(declare-fun b!573164 () Bool)

(assert (=> b!573164 (= e!329733 e!329732)))

(assert (=> b!573164 (= lt!261778 (select (arr!17202 a!3118) (index!24861 lt!261780)))))

(declare-fun c!65600 () Bool)

(assert (=> b!573164 (= c!65600 (= lt!261778 (select (arr!17202 a!3118) j!142)))))

(assert (= (and d!84793 c!65598) b!573161))

(assert (= (and d!84793 (not c!65598)) b!573164))

(assert (= (and b!573164 c!65600) b!573160))

(assert (= (and b!573164 (not c!65600)) b!573159))

(assert (= (and b!573159 c!65599) b!573163))

(assert (= (and b!573159 (not c!65599)) b!573162))

(declare-fun m!552183 () Bool)

(assert (=> d!84793 m!552183))

(assert (=> d!84793 m!551953))

(assert (=> d!84793 m!551979))

(declare-fun m!552185 () Bool)

(assert (=> d!84793 m!552185))

(assert (=> d!84793 m!551967))

(assert (=> d!84793 m!551979))

(assert (=> d!84793 m!551953))

(declare-fun m!552187 () Bool)

(assert (=> d!84793 m!552187))

(declare-fun m!552189 () Bool)

(assert (=> d!84793 m!552189))

(assert (=> b!573162 m!551953))

(declare-fun m!552191 () Bool)

(assert (=> b!573162 m!552191))

(declare-fun m!552193 () Bool)

(assert (=> b!573164 m!552193))

(assert (=> b!572861 d!84793))

(declare-fun b!573171 () Bool)

(declare-fun e!329740 () Bool)

(declare-fun e!329739 () Bool)

(assert (=> b!573171 (= e!329740 e!329739)))

(declare-fun c!65604 () Bool)

(assert (=> b!573171 (= c!65604 (validKeyInArray!0 (select (arr!17202 a!3118) j!142)))))

(declare-fun b!573172 () Bool)

(declare-fun e!329738 () Bool)

(declare-fun call!32634 () Bool)

(assert (=> b!573172 (= e!329738 call!32634)))

(declare-fun d!84801 () Bool)

(declare-fun res!362683 () Bool)

(assert (=> d!84801 (=> res!362683 e!329740)))

(assert (=> d!84801 (= res!362683 (bvsge j!142 (size!17566 a!3118)))))

(assert (=> d!84801 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!329740)))

(declare-fun b!573173 () Bool)

(assert (=> b!573173 (= e!329739 e!329738)))

(declare-fun lt!261784 () (_ BitVec 64))

(assert (=> b!573173 (= lt!261784 (select (arr!17202 a!3118) j!142))))

(declare-fun lt!261785 () Unit!18018)

(assert (=> b!573173 (= lt!261785 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!261784 j!142))))

(assert (=> b!573173 (arrayContainsKey!0 a!3118 lt!261784 #b00000000000000000000000000000000)))

(declare-fun lt!261783 () Unit!18018)

(assert (=> b!573173 (= lt!261783 lt!261785)))

(declare-fun res!362682 () Bool)

(assert (=> b!573173 (= res!362682 (= (seekEntryOrOpen!0 (select (arr!17202 a!3118) j!142) a!3118 mask!3119) (Found!5658 j!142)))))

(assert (=> b!573173 (=> (not res!362682) (not e!329738))))

(declare-fun bm!32631 () Bool)

(assert (=> bm!32631 (= call!32634 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!573174 () Bool)

(assert (=> b!573174 (= e!329739 call!32634)))

(assert (= (and d!84801 (not res!362683)) b!573171))

(assert (= (and b!573171 c!65604) b!573173))

(assert (= (and b!573171 (not c!65604)) b!573174))

(assert (= (and b!573173 res!362682) b!573172))

(assert (= (or b!573172 b!573174) bm!32631))

(assert (=> b!573171 m!551953))

(assert (=> b!573171 m!551953))

(assert (=> b!573171 m!551961))

(assert (=> b!573173 m!551953))

(declare-fun m!552203 () Bool)

(assert (=> b!573173 m!552203))

(declare-fun m!552205 () Bool)

(assert (=> b!573173 m!552205))

(assert (=> b!573173 m!551953))

(assert (=> b!573173 m!551977))

(declare-fun m!552209 () Bool)

(assert (=> bm!32631 m!552209))

(assert (=> b!572861 d!84801))

(declare-fun d!84805 () Bool)

(assert (=> d!84805 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!261805 () Unit!18018)

(declare-fun choose!38 (array!35835 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18018)

(assert (=> d!84805 (= lt!261805 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84805 (validMask!0 mask!3119)))

(assert (=> d!84805 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!261805)))

(declare-fun bs!17751 () Bool)

(assert (= bs!17751 d!84805))

(assert (=> bs!17751 m!551973))

(declare-fun m!552249 () Bool)

(assert (=> bs!17751 m!552249))

(assert (=> bs!17751 m!551967))

(assert (=> b!572861 d!84805))

(declare-fun d!84815 () Bool)

(declare-fun lt!261807 () SeekEntryResult!5658)

(assert (=> d!84815 (and (or (is-Undefined!5658 lt!261807) (not (is-Found!5658 lt!261807)) (and (bvsge (index!24860 lt!261807) #b00000000000000000000000000000000) (bvslt (index!24860 lt!261807) (size!17566 a!3118)))) (or (is-Undefined!5658 lt!261807) (is-Found!5658 lt!261807) (not (is-MissingZero!5658 lt!261807)) (and (bvsge (index!24859 lt!261807) #b00000000000000000000000000000000) (bvslt (index!24859 lt!261807) (size!17566 a!3118)))) (or (is-Undefined!5658 lt!261807) (is-Found!5658 lt!261807) (is-MissingZero!5658 lt!261807) (not (is-MissingVacant!5658 lt!261807)) (and (bvsge (index!24862 lt!261807) #b00000000000000000000000000000000) (bvslt (index!24862 lt!261807) (size!17566 a!3118)))) (or (is-Undefined!5658 lt!261807) (ite (is-Found!5658 lt!261807) (= (select (arr!17202 a!3118) (index!24860 lt!261807)) k!1914) (ite (is-MissingZero!5658 lt!261807) (= (select (arr!17202 a!3118) (index!24859 lt!261807)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5658 lt!261807) (= (select (arr!17202 a!3118) (index!24862 lt!261807)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!329760 () SeekEntryResult!5658)

(assert (=> d!84815 (= lt!261807 e!329760)))

(declare-fun c!65621 () Bool)

(declare-fun lt!261808 () SeekEntryResult!5658)

(assert (=> d!84815 (= c!65621 (and (is-Intermediate!5658 lt!261808) (undefined!6470 lt!261808)))))

(assert (=> d!84815 (= lt!261808 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!84815 (validMask!0 mask!3119)))

(assert (=> d!84815 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!261807)))

(declare-fun b!573209 () Bool)

(declare-fun c!65622 () Bool)

(declare-fun lt!261806 () (_ BitVec 64))

(assert (=> b!573209 (= c!65622 (= lt!261806 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!329759 () SeekEntryResult!5658)

(declare-fun e!329761 () SeekEntryResult!5658)

(assert (=> b!573209 (= e!329759 e!329761)))

(declare-fun b!573210 () Bool)

(assert (=> b!573210 (= e!329759 (Found!5658 (index!24861 lt!261808)))))

(declare-fun b!573211 () Bool)

(assert (=> b!573211 (= e!329760 Undefined!5658)))

(declare-fun b!573212 () Bool)

(assert (=> b!573212 (= e!329761 (seekKeyOrZeroReturnVacant!0 (x!53754 lt!261808) (index!24861 lt!261808) (index!24861 lt!261808) k!1914 a!3118 mask!3119))))

(declare-fun b!573213 () Bool)

(assert (=> b!573213 (= e!329761 (MissingZero!5658 (index!24861 lt!261808)))))

(declare-fun b!573214 () Bool)

(assert (=> b!573214 (= e!329760 e!329759)))

(assert (=> b!573214 (= lt!261806 (select (arr!17202 a!3118) (index!24861 lt!261808)))))

(declare-fun c!65623 () Bool)

(assert (=> b!573214 (= c!65623 (= lt!261806 k!1914))))

(assert (= (and d!84815 c!65621) b!573211))

(assert (= (and d!84815 (not c!65621)) b!573214))

(assert (= (and b!573214 c!65623) b!573210))

(assert (= (and b!573214 (not c!65623)) b!573209))

(assert (= (and b!573209 c!65622) b!573213))

(assert (= (and b!573209 (not c!65622)) b!573212))

(declare-fun m!552251 () Bool)

(assert (=> d!84815 m!552251))

(declare-fun m!552253 () Bool)

(assert (=> d!84815 m!552253))

(declare-fun m!552255 () Bool)

(assert (=> d!84815 m!552255))

(assert (=> d!84815 m!551967))

(assert (=> d!84815 m!552253))

(declare-fun m!552257 () Bool)

(assert (=> d!84815 m!552257))

(declare-fun m!552259 () Bool)

(assert (=> d!84815 m!552259))

(declare-fun m!552261 () Bool)

(assert (=> b!573212 m!552261))

(declare-fun m!552263 () Bool)

(assert (=> b!573214 m!552263))

(assert (=> b!572859 d!84815))

(declare-fun b!573249 () Bool)

(declare-fun e!329783 () SeekEntryResult!5658)

(declare-fun e!329785 () SeekEntryResult!5658)

(assert (=> b!573249 (= e!329783 e!329785)))

(declare-fun lt!261829 () (_ BitVec 64))

(declare-fun c!65638 () Bool)

(assert (=> b!573249 (= c!65638 (= lt!261829 (select (arr!17202 a!3118) j!142)))))

(declare-fun b!573250 () Bool)

(declare-fun c!65639 () Bool)

(assert (=> b!573250 (= c!65639 (= lt!261829 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!329784 () SeekEntryResult!5658)

(assert (=> b!573250 (= e!329785 e!329784)))

(declare-fun b!573251 () Bool)

(assert (=> b!573251 (= e!329783 Undefined!5658)))

(declare-fun d!84817 () Bool)

(declare-fun lt!261828 () SeekEntryResult!5658)

(assert (=> d!84817 (and (or (is-Undefined!5658 lt!261828) (not (is-Found!5658 lt!261828)) (and (bvsge (index!24860 lt!261828) #b00000000000000000000000000000000) (bvslt (index!24860 lt!261828) (size!17566 a!3118)))) (or (is-Undefined!5658 lt!261828) (is-Found!5658 lt!261828) (not (is-MissingVacant!5658 lt!261828)) (not (= (index!24862 lt!261828) (index!24861 lt!261621))) (and (bvsge (index!24862 lt!261828) #b00000000000000000000000000000000) (bvslt (index!24862 lt!261828) (size!17566 a!3118)))) (or (is-Undefined!5658 lt!261828) (ite (is-Found!5658 lt!261828) (= (select (arr!17202 a!3118) (index!24860 lt!261828)) (select (arr!17202 a!3118) j!142)) (and (is-MissingVacant!5658 lt!261828) (= (index!24862 lt!261828) (index!24861 lt!261621)) (= (select (arr!17202 a!3118) (index!24862 lt!261828)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!84817 (= lt!261828 e!329783)))

(declare-fun c!65637 () Bool)

(assert (=> d!84817 (= c!65637 (bvsge (x!53754 lt!261621) #b01111111111111111111111111111110))))

(assert (=> d!84817 (= lt!261829 (select (arr!17202 a!3118) (index!24861 lt!261621)))))

(assert (=> d!84817 (validMask!0 mask!3119)))

(assert (=> d!84817 (= (seekKeyOrZeroReturnVacant!0 (x!53754 lt!261621) (index!24861 lt!261621) (index!24861 lt!261621) (select (arr!17202 a!3118) j!142) a!3118 mask!3119) lt!261828)))

(declare-fun b!573252 () Bool)

(assert (=> b!573252 (= e!329785 (Found!5658 (index!24861 lt!261621)))))

(declare-fun b!573253 () Bool)

(assert (=> b!573253 (= e!329784 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53754 lt!261621) #b00000000000000000000000000000001) (nextIndex!0 (index!24861 lt!261621) (x!53754 lt!261621) mask!3119) (index!24861 lt!261621) (select (arr!17202 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!573254 () Bool)

(assert (=> b!573254 (= e!329784 (MissingVacant!5658 (index!24861 lt!261621)))))

(assert (= (and d!84817 c!65637) b!573251))

(assert (= (and d!84817 (not c!65637)) b!573249))

(assert (= (and b!573249 c!65638) b!573252))

(assert (= (and b!573249 (not c!65638)) b!573250))

(assert (= (and b!573250 c!65639) b!573254))

(assert (= (and b!573250 (not c!65639)) b!573253))

(declare-fun m!552303 () Bool)

(assert (=> d!84817 m!552303))

(declare-fun m!552305 () Bool)

(assert (=> d!84817 m!552305))

(assert (=> d!84817 m!551971))

(assert (=> d!84817 m!551967))

(declare-fun m!552307 () Bool)

(assert (=> b!573253 m!552307))

(assert (=> b!573253 m!552307))

(assert (=> b!573253 m!551953))

(declare-fun m!552309 () Bool)

(assert (=> b!573253 m!552309))

(assert (=> b!572858 d!84817))

(declare-fun d!84829 () Bool)

(declare-fun lt!261831 () SeekEntryResult!5658)

(assert (=> d!84829 (and (or (is-Undefined!5658 lt!261831) (not (is-Found!5658 lt!261831)) (and (bvsge (index!24860 lt!261831) #b00000000000000000000000000000000) (bvslt (index!24860 lt!261831) (size!17566 lt!261623)))) (or (is-Undefined!5658 lt!261831) (is-Found!5658 lt!261831) (not (is-MissingZero!5658 lt!261831)) (and (bvsge (index!24859 lt!261831) #b00000000000000000000000000000000) (bvslt (index!24859 lt!261831) (size!17566 lt!261623)))) (or (is-Undefined!5658 lt!261831) (is-Found!5658 lt!261831) (is-MissingZero!5658 lt!261831) (not (is-MissingVacant!5658 lt!261831)) (and (bvsge (index!24862 lt!261831) #b00000000000000000000000000000000) (bvslt (index!24862 lt!261831) (size!17566 lt!261623)))) (or (is-Undefined!5658 lt!261831) (ite (is-Found!5658 lt!261831) (= (select (arr!17202 lt!261623) (index!24860 lt!261831)) lt!261624) (ite (is-MissingZero!5658 lt!261831) (= (select (arr!17202 lt!261623) (index!24859 lt!261831)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5658 lt!261831) (= (select (arr!17202 lt!261623) (index!24862 lt!261831)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!329787 () SeekEntryResult!5658)

(assert (=> d!84829 (= lt!261831 e!329787)))

(declare-fun c!65640 () Bool)

(declare-fun lt!261832 () SeekEntryResult!5658)

(assert (=> d!84829 (= c!65640 (and (is-Intermediate!5658 lt!261832) (undefined!6470 lt!261832)))))

(assert (=> d!84829 (= lt!261832 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!261624 mask!3119) lt!261624 lt!261623 mask!3119))))

(assert (=> d!84829 (validMask!0 mask!3119)))

(assert (=> d!84829 (= (seekEntryOrOpen!0 lt!261624 lt!261623 mask!3119) lt!261831)))

(declare-fun b!573255 () Bool)

(declare-fun c!65641 () Bool)

(declare-fun lt!261830 () (_ BitVec 64))

(assert (=> b!573255 (= c!65641 (= lt!261830 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!329786 () SeekEntryResult!5658)

(declare-fun e!329788 () SeekEntryResult!5658)

(assert (=> b!573255 (= e!329786 e!329788)))

(declare-fun b!573256 () Bool)

(assert (=> b!573256 (= e!329786 (Found!5658 (index!24861 lt!261832)))))

(declare-fun b!573257 () Bool)

(assert (=> b!573257 (= e!329787 Undefined!5658)))

(declare-fun b!573258 () Bool)

(assert (=> b!573258 (= e!329788 (seekKeyOrZeroReturnVacant!0 (x!53754 lt!261832) (index!24861 lt!261832) (index!24861 lt!261832) lt!261624 lt!261623 mask!3119))))

(declare-fun b!573259 () Bool)

(assert (=> b!573259 (= e!329788 (MissingZero!5658 (index!24861 lt!261832)))))

(declare-fun b!573260 () Bool)

(assert (=> b!573260 (= e!329787 e!329786)))

(assert (=> b!573260 (= lt!261830 (select (arr!17202 lt!261623) (index!24861 lt!261832)))))

(declare-fun c!65642 () Bool)

(assert (=> b!573260 (= c!65642 (= lt!261830 lt!261624))))

(assert (= (and d!84829 c!65640) b!573257))

(assert (= (and d!84829 (not c!65640)) b!573260))

(assert (= (and b!573260 c!65642) b!573256))

(assert (= (and b!573260 (not c!65642)) b!573255))

(assert (= (and b!573255 c!65641) b!573259))

(assert (= (and b!573255 (not c!65641)) b!573258))

(declare-fun m!552311 () Bool)

(assert (=> d!84829 m!552311))

(assert (=> d!84829 m!551981))

(declare-fun m!552313 () Bool)

(assert (=> d!84829 m!552313))

(assert (=> d!84829 m!551967))

(assert (=> d!84829 m!551981))

(declare-fun m!552315 () Bool)

(assert (=> d!84829 m!552315))

(declare-fun m!552317 () Bool)

(assert (=> d!84829 m!552317))

(declare-fun m!552319 () Bool)

(assert (=> b!573258 m!552319))

(declare-fun m!552321 () Bool)

(assert (=> b!573260 m!552321))

(assert (=> b!572857 d!84829))

(declare-fun b!573261 () Bool)

(declare-fun e!329789 () SeekEntryResult!5658)

(declare-fun e!329791 () SeekEntryResult!5658)

(assert (=> b!573261 (= e!329789 e!329791)))

(declare-fun c!65644 () Bool)

(declare-fun lt!261834 () (_ BitVec 64))

(assert (=> b!573261 (= c!65644 (= lt!261834 lt!261624))))

(declare-fun b!573262 () Bool)

(declare-fun c!65645 () Bool)

(assert (=> b!573262 (= c!65645 (= lt!261834 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!329790 () SeekEntryResult!5658)

(assert (=> b!573262 (= e!329791 e!329790)))

(declare-fun b!573263 () Bool)

(assert (=> b!573263 (= e!329789 Undefined!5658)))

(declare-fun lt!261833 () SeekEntryResult!5658)

(declare-fun d!84831 () Bool)

(assert (=> d!84831 (and (or (is-Undefined!5658 lt!261833) (not (is-Found!5658 lt!261833)) (and (bvsge (index!24860 lt!261833) #b00000000000000000000000000000000) (bvslt (index!24860 lt!261833) (size!17566 lt!261623)))) (or (is-Undefined!5658 lt!261833) (is-Found!5658 lt!261833) (not (is-MissingVacant!5658 lt!261833)) (not (= (index!24862 lt!261833) (index!24861 lt!261621))) (and (bvsge (index!24862 lt!261833) #b00000000000000000000000000000000) (bvslt (index!24862 lt!261833) (size!17566 lt!261623)))) (or (is-Undefined!5658 lt!261833) (ite (is-Found!5658 lt!261833) (= (select (arr!17202 lt!261623) (index!24860 lt!261833)) lt!261624) (and (is-MissingVacant!5658 lt!261833) (= (index!24862 lt!261833) (index!24861 lt!261621)) (= (select (arr!17202 lt!261623) (index!24862 lt!261833)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!84831 (= lt!261833 e!329789)))

(declare-fun c!65643 () Bool)

(assert (=> d!84831 (= c!65643 (bvsge (x!53754 lt!261621) #b01111111111111111111111111111110))))

(assert (=> d!84831 (= lt!261834 (select (arr!17202 lt!261623) (index!24861 lt!261621)))))

(assert (=> d!84831 (validMask!0 mask!3119)))

(assert (=> d!84831 (= (seekKeyOrZeroReturnVacant!0 (x!53754 lt!261621) (index!24861 lt!261621) (index!24861 lt!261621) lt!261624 lt!261623 mask!3119) lt!261833)))

(declare-fun b!573264 () Bool)

(assert (=> b!573264 (= e!329791 (Found!5658 (index!24861 lt!261621)))))

(declare-fun b!573265 () Bool)

(assert (=> b!573265 (= e!329790 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53754 lt!261621) #b00000000000000000000000000000001) (nextIndex!0 (index!24861 lt!261621) (x!53754 lt!261621) mask!3119) (index!24861 lt!261621) lt!261624 lt!261623 mask!3119))))

(declare-fun b!573266 () Bool)

(assert (=> b!573266 (= e!329790 (MissingVacant!5658 (index!24861 lt!261621)))))

(assert (= (and d!84831 c!65643) b!573263))

(assert (= (and d!84831 (not c!65643)) b!573261))

(assert (= (and b!573261 c!65644) b!573264))

(assert (= (and b!573261 (not c!65644)) b!573262))

(assert (= (and b!573262 c!65645) b!573266))

(assert (= (and b!573262 (not c!65645)) b!573265))

(declare-fun m!552323 () Bool)

(assert (=> d!84831 m!552323))

(declare-fun m!552325 () Bool)

(assert (=> d!84831 m!552325))

(declare-fun m!552327 () Bool)

(assert (=> d!84831 m!552327))

(assert (=> d!84831 m!551967))

(assert (=> b!573265 m!552307))

(assert (=> b!573265 m!552307))

(declare-fun m!552329 () Bool)

(assert (=> b!573265 m!552329))

(assert (=> b!572857 d!84831))

(declare-fun d!84833 () Bool)

(assert (=> d!84833 (= (validKeyInArray!0 (select (arr!17202 a!3118) j!142)) (and (not (= (select (arr!17202 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17202 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!572867 d!84833))

(declare-fun b!573277 () Bool)

(declare-fun e!329802 () Bool)

(declare-fun e!329800 () Bool)

(assert (=> b!573277 (= e!329802 e!329800)))

(declare-fun res!362702 () Bool)

(assert (=> b!573277 (=> (not res!362702) (not e!329800))))

(declare-fun e!329803 () Bool)

(assert (=> b!573277 (= res!362702 (not e!329803))))

(declare-fun res!362700 () Bool)

(assert (=> b!573277 (=> (not res!362700) (not e!329803))))

(assert (=> b!573277 (= res!362700 (validKeyInArray!0 (select (arr!17202 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!84835 () Bool)

(declare-fun res!362701 () Bool)

(assert (=> d!84835 (=> res!362701 e!329802)))

(assert (=> d!84835 (= res!362701 (bvsge #b00000000000000000000000000000000 (size!17566 a!3118)))))

(assert (=> d!84835 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11332) e!329802)))

(declare-fun b!573278 () Bool)

(declare-fun e!329801 () Bool)

(declare-fun call!32639 () Bool)

(assert (=> b!573278 (= e!329801 call!32639)))

(declare-fun b!573279 () Bool)

(assert (=> b!573279 (= e!329801 call!32639)))

(declare-fun bm!32636 () Bool)

(declare-fun c!65648 () Bool)

(assert (=> bm!32636 (= call!32639 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65648 (Cons!11331 (select (arr!17202 a!3118) #b00000000000000000000000000000000) Nil!11332) Nil!11332)))))

(declare-fun b!573280 () Bool)

(declare-fun contains!2888 (List!11335 (_ BitVec 64)) Bool)

(assert (=> b!573280 (= e!329803 (contains!2888 Nil!11332 (select (arr!17202 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!573281 () Bool)

(assert (=> b!573281 (= e!329800 e!329801)))

(assert (=> b!573281 (= c!65648 (validKeyInArray!0 (select (arr!17202 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!84835 (not res!362701)) b!573277))

(assert (= (and b!573277 res!362700) b!573280))

(assert (= (and b!573277 res!362702) b!573281))

(assert (= (and b!573281 c!65648) b!573279))

(assert (= (and b!573281 (not c!65648)) b!573278))

(assert (= (or b!573279 b!573278) bm!32636))

(assert (=> b!573277 m!552121))

(assert (=> b!573277 m!552121))

(assert (=> b!573277 m!552141))

(assert (=> bm!32636 m!552121))

(declare-fun m!552331 () Bool)

(assert (=> bm!32636 m!552331))

(assert (=> b!573280 m!552121))

(assert (=> b!573280 m!552121))

(declare-fun m!552333 () Bool)

(assert (=> b!573280 m!552333))

(assert (=> b!573281 m!552121))

(assert (=> b!573281 m!552121))

(assert (=> b!573281 m!552141))

(assert (=> b!572856 d!84835))

(push 1)

(assert (not b!573056))

(assert (not b!573277))

(assert (not b!573005))

(assert (not b!573173))

(assert (not d!84815))

(assert (not bm!32627))

(assert (not bm!32636))

(assert (not b!573094))

(assert (not d!84817))

(assert (not b!573265))

(assert (not b!573280))

(assert (not b!573014))

(assert (not b!573258))

(assert (not b!573092))

(assert (not d!84761))

(assert (not b!573281))

(assert (not b!573253))

(assert (not bm!32631))

(assert (not b!573212))

(assert (not d!84749))

(assert (not d!84831))

(assert (not d!84793))

(assert (not d!84829))

(assert (not b!573162))

(assert (not b!573171))

(assert (not d!84805))

(check-sat)

(pop 1)

(push 1)

(check-sat)

