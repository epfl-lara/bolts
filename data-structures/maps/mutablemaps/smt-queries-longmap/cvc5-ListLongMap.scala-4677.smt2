; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65140 () Bool)

(assert start!65140)

(declare-fun b!735042 () Bool)

(declare-fun res!494002 () Bool)

(declare-fun e!411297 () Bool)

(assert (=> b!735042 (=> (not res!494002) (not e!411297))))

(declare-fun e!411302 () Bool)

(assert (=> b!735042 (= res!494002 e!411302)))

(declare-fun c!80910 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!735042 (= c!80910 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!735043 () Bool)

(declare-fun res!493988 () Bool)

(declare-fun e!411294 () Bool)

(assert (=> b!735043 (=> (not res!493988) (not e!411294))))

(declare-datatypes ((array!41266 0))(
  ( (array!41267 (arr!19743 (Array (_ BitVec 32) (_ BitVec 64))) (size!20164 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41266)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41266 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!735043 (= res!493988 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!735044 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7350 0))(
  ( (MissingZero!7350 (index!31767 (_ BitVec 32))) (Found!7350 (index!31768 (_ BitVec 32))) (Intermediate!7350 (undefined!8162 Bool) (index!31769 (_ BitVec 32)) (x!62805 (_ BitVec 32))) (Undefined!7350) (MissingVacant!7350 (index!31770 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41266 (_ BitVec 32)) SeekEntryResult!7350)

(assert (=> b!735044 (= e!411302 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19743 a!3186) j!159) a!3186 mask!3328) (Found!7350 j!159)))))

(declare-fun b!735045 () Bool)

(declare-fun res!493998 () Bool)

(declare-fun e!411295 () Bool)

(assert (=> b!735045 (=> res!493998 e!411295)))

(declare-fun e!411298 () Bool)

(assert (=> b!735045 (= res!493998 e!411298)))

(declare-fun c!80909 () Bool)

(declare-fun lt!325824 () Bool)

(assert (=> b!735045 (= c!80909 lt!325824)))

(declare-fun e!411293 () Bool)

(declare-fun b!735046 () Bool)

(declare-fun lt!325827 () SeekEntryResult!7350)

(assert (=> b!735046 (= e!411293 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19743 a!3186) j!159) a!3186 mask!3328) lt!325827))))

(declare-fun b!735047 () Bool)

(assert (=> b!735047 (= e!411295 true)))

(declare-fun lt!325830 () (_ BitVec 32))

(declare-fun lt!325832 () (_ BitVec 64))

(declare-fun lt!325821 () SeekEntryResult!7350)

(declare-fun lt!325823 () array!41266)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41266 (_ BitVec 32)) SeekEntryResult!7350)

(assert (=> b!735047 (= lt!325821 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!325830 lt!325832 lt!325823 mask!3328))))

(declare-fun res!493997 () Bool)

(assert (=> start!65140 (=> (not res!493997) (not e!411294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65140 (= res!493997 (validMask!0 mask!3328))))

(assert (=> start!65140 e!411294))

(assert (=> start!65140 true))

(declare-fun array_inv!15517 (array!41266) Bool)

(assert (=> start!65140 (array_inv!15517 a!3186)))

(declare-fun b!735048 () Bool)

(declare-fun res!493989 () Bool)

(declare-fun e!411296 () Bool)

(assert (=> b!735048 (=> (not res!493989) (not e!411296))))

(assert (=> b!735048 (= res!493989 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20164 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20164 a!3186))))))

(declare-fun lt!325819 () SeekEntryResult!7350)

(declare-fun b!735049 () Bool)

(assert (=> b!735049 (= e!411298 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!325830 resIntermediateIndex!5 (select (arr!19743 a!3186) j!159) a!3186 mask!3328) lt!325819)))))

(declare-fun b!735050 () Bool)

(declare-fun res!493999 () Bool)

(assert (=> b!735050 (=> (not res!493999) (not e!411296))))

(declare-datatypes ((List!13798 0))(
  ( (Nil!13795) (Cons!13794 (h!14866 (_ BitVec 64)) (t!20121 List!13798)) )
))
(declare-fun arrayNoDuplicates!0 (array!41266 (_ BitVec 32) List!13798) Bool)

(assert (=> b!735050 (= res!493999 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13795))))

(declare-fun b!735051 () Bool)

(declare-fun res!493995 () Bool)

(assert (=> b!735051 (=> (not res!493995) (not e!411296))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41266 (_ BitVec 32)) Bool)

(assert (=> b!735051 (= res!493995 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!735052 () Bool)

(declare-fun lt!325828 () SeekEntryResult!7350)

(assert (=> b!735052 (= e!411298 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!325830 (select (arr!19743 a!3186) j!159) a!3186 mask!3328) lt!325828)))))

(declare-fun b!735053 () Bool)

(declare-fun res!493990 () Bool)

(assert (=> b!735053 (=> (not res!493990) (not e!411294))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!735053 (= res!493990 (and (= (size!20164 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20164 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20164 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!735054 () Bool)

(declare-fun e!411299 () Bool)

(assert (=> b!735054 (= e!411299 e!411293)))

(declare-fun res!493987 () Bool)

(assert (=> b!735054 (=> (not res!493987) (not e!411293))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41266 (_ BitVec 32)) SeekEntryResult!7350)

(assert (=> b!735054 (= res!493987 (= (seekEntryOrOpen!0 (select (arr!19743 a!3186) j!159) a!3186 mask!3328) lt!325827))))

(assert (=> b!735054 (= lt!325827 (Found!7350 j!159))))

(declare-fun b!735055 () Bool)

(assert (=> b!735055 (= e!411302 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19743 a!3186) j!159) a!3186 mask!3328) lt!325828))))

(declare-fun b!735056 () Bool)

(declare-datatypes ((Unit!25018 0))(
  ( (Unit!25019) )
))
(declare-fun e!411303 () Unit!25018)

(declare-fun Unit!25020 () Unit!25018)

(assert (=> b!735056 (= e!411303 Unit!25020)))

(declare-fun lt!325829 () SeekEntryResult!7350)

(assert (=> b!735056 (= lt!325829 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19743 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!735056 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!325830 resIntermediateIndex!5 (select (arr!19743 a!3186) j!159) a!3186 mask!3328) lt!325819)))

(declare-fun b!735057 () Bool)

(declare-fun e!411301 () Bool)

(assert (=> b!735057 (= e!411297 e!411301)))

(declare-fun res!493993 () Bool)

(assert (=> b!735057 (=> (not res!493993) (not e!411301))))

(declare-fun lt!325820 () SeekEntryResult!7350)

(declare-fun lt!325825 () SeekEntryResult!7350)

(assert (=> b!735057 (= res!493993 (= lt!325820 lt!325825))))

(assert (=> b!735057 (= lt!325825 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325832 lt!325823 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735057 (= lt!325820 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325832 mask!3328) lt!325832 lt!325823 mask!3328))))

(assert (=> b!735057 (= lt!325832 (select (store (arr!19743 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!735057 (= lt!325823 (array!41267 (store (arr!19743 a!3186) i!1173 k!2102) (size!20164 a!3186)))))

(declare-fun b!735058 () Bool)

(declare-fun res!493992 () Bool)

(assert (=> b!735058 (=> (not res!493992) (not e!411297))))

(assert (=> b!735058 (= res!493992 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19743 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!735059 () Bool)

(assert (=> b!735059 (= e!411294 e!411296)))

(declare-fun res!494001 () Bool)

(assert (=> b!735059 (=> (not res!494001) (not e!411296))))

(declare-fun lt!325822 () SeekEntryResult!7350)

(assert (=> b!735059 (= res!494001 (or (= lt!325822 (MissingZero!7350 i!1173)) (= lt!325822 (MissingVacant!7350 i!1173))))))

(assert (=> b!735059 (= lt!325822 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!735060 () Bool)

(declare-fun e!411300 () Bool)

(assert (=> b!735060 (= e!411301 (not e!411300))))

(declare-fun res!494000 () Bool)

(assert (=> b!735060 (=> res!494000 e!411300)))

(assert (=> b!735060 (= res!494000 (or (not (is-Intermediate!7350 lt!325825)) (bvsge x!1131 (x!62805 lt!325825))))))

(assert (=> b!735060 (= lt!325819 (Found!7350 j!159))))

(assert (=> b!735060 e!411299))

(declare-fun res!493994 () Bool)

(assert (=> b!735060 (=> (not res!493994) (not e!411299))))

(assert (=> b!735060 (= res!493994 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!325831 () Unit!25018)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41266 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25018)

(assert (=> b!735060 (= lt!325831 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!735061 () Bool)

(declare-fun res!494004 () Bool)

(assert (=> b!735061 (=> (not res!494004) (not e!411294))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!735061 (= res!494004 (validKeyInArray!0 (select (arr!19743 a!3186) j!159)))))

(declare-fun b!735062 () Bool)

(declare-fun res!494003 () Bool)

(assert (=> b!735062 (=> (not res!494003) (not e!411294))))

(assert (=> b!735062 (= res!494003 (validKeyInArray!0 k!2102))))

(declare-fun b!735063 () Bool)

(declare-fun Unit!25021 () Unit!25018)

(assert (=> b!735063 (= e!411303 Unit!25021)))

(assert (=> b!735063 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!325830 (select (arr!19743 a!3186) j!159) a!3186 mask!3328) lt!325828)))

(declare-fun b!735064 () Bool)

(assert (=> b!735064 (= e!411300 e!411295)))

(declare-fun res!493991 () Bool)

(assert (=> b!735064 (=> res!493991 e!411295)))

(assert (=> b!735064 (= res!493991 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!325830 #b00000000000000000000000000000000) (bvsge lt!325830 (size!20164 a!3186))))))

(declare-fun lt!325826 () Unit!25018)

(assert (=> b!735064 (= lt!325826 e!411303)))

(declare-fun c!80908 () Bool)

(assert (=> b!735064 (= c!80908 lt!325824)))

(assert (=> b!735064 (= lt!325824 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735064 (= lt!325830 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!735065 () Bool)

(assert (=> b!735065 (= e!411296 e!411297)))

(declare-fun res!493996 () Bool)

(assert (=> b!735065 (=> (not res!493996) (not e!411297))))

(assert (=> b!735065 (= res!493996 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19743 a!3186) j!159) mask!3328) (select (arr!19743 a!3186) j!159) a!3186 mask!3328) lt!325828))))

(assert (=> b!735065 (= lt!325828 (Intermediate!7350 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!65140 res!493997) b!735053))

(assert (= (and b!735053 res!493990) b!735061))

(assert (= (and b!735061 res!494004) b!735062))

(assert (= (and b!735062 res!494003) b!735043))

(assert (= (and b!735043 res!493988) b!735059))

(assert (= (and b!735059 res!494001) b!735051))

(assert (= (and b!735051 res!493995) b!735050))

(assert (= (and b!735050 res!493999) b!735048))

(assert (= (and b!735048 res!493989) b!735065))

(assert (= (and b!735065 res!493996) b!735058))

(assert (= (and b!735058 res!493992) b!735042))

(assert (= (and b!735042 c!80910) b!735055))

(assert (= (and b!735042 (not c!80910)) b!735044))

(assert (= (and b!735042 res!494002) b!735057))

(assert (= (and b!735057 res!493993) b!735060))

(assert (= (and b!735060 res!493994) b!735054))

(assert (= (and b!735054 res!493987) b!735046))

(assert (= (and b!735060 (not res!494000)) b!735064))

(assert (= (and b!735064 c!80908) b!735063))

(assert (= (and b!735064 (not c!80908)) b!735056))

(assert (= (and b!735064 (not res!493991)) b!735045))

(assert (= (and b!735045 c!80909) b!735052))

(assert (= (and b!735045 (not c!80909)) b!735049))

(assert (= (and b!735045 (not res!493998)) b!735047))

(declare-fun m!687589 () Bool)

(assert (=> b!735065 m!687589))

(assert (=> b!735065 m!687589))

(declare-fun m!687591 () Bool)

(assert (=> b!735065 m!687591))

(assert (=> b!735065 m!687591))

(assert (=> b!735065 m!687589))

(declare-fun m!687593 () Bool)

(assert (=> b!735065 m!687593))

(assert (=> b!735054 m!687589))

(assert (=> b!735054 m!687589))

(declare-fun m!687595 () Bool)

(assert (=> b!735054 m!687595))

(declare-fun m!687597 () Bool)

(assert (=> b!735060 m!687597))

(declare-fun m!687599 () Bool)

(assert (=> b!735060 m!687599))

(assert (=> b!735056 m!687589))

(assert (=> b!735056 m!687589))

(declare-fun m!687601 () Bool)

(assert (=> b!735056 m!687601))

(assert (=> b!735056 m!687589))

(declare-fun m!687603 () Bool)

(assert (=> b!735056 m!687603))

(assert (=> b!735055 m!687589))

(assert (=> b!735055 m!687589))

(declare-fun m!687605 () Bool)

(assert (=> b!735055 m!687605))

(assert (=> b!735046 m!687589))

(assert (=> b!735046 m!687589))

(declare-fun m!687607 () Bool)

(assert (=> b!735046 m!687607))

(declare-fun m!687609 () Bool)

(assert (=> b!735062 m!687609))

(assert (=> b!735044 m!687589))

(assert (=> b!735044 m!687589))

(assert (=> b!735044 m!687601))

(declare-fun m!687611 () Bool)

(assert (=> b!735047 m!687611))

(assert (=> b!735052 m!687589))

(assert (=> b!735052 m!687589))

(declare-fun m!687613 () Bool)

(assert (=> b!735052 m!687613))

(declare-fun m!687615 () Bool)

(assert (=> b!735051 m!687615))

(declare-fun m!687617 () Bool)

(assert (=> b!735043 m!687617))

(declare-fun m!687619 () Bool)

(assert (=> start!65140 m!687619))

(declare-fun m!687621 () Bool)

(assert (=> start!65140 m!687621))

(declare-fun m!687623 () Bool)

(assert (=> b!735050 m!687623))

(assert (=> b!735063 m!687589))

(assert (=> b!735063 m!687589))

(assert (=> b!735063 m!687613))

(declare-fun m!687625 () Bool)

(assert (=> b!735058 m!687625))

(assert (=> b!735049 m!687589))

(assert (=> b!735049 m!687589))

(assert (=> b!735049 m!687603))

(assert (=> b!735061 m!687589))

(assert (=> b!735061 m!687589))

(declare-fun m!687627 () Bool)

(assert (=> b!735061 m!687627))

(declare-fun m!687629 () Bool)

(assert (=> b!735064 m!687629))

(declare-fun m!687631 () Bool)

(assert (=> b!735057 m!687631))

(declare-fun m!687633 () Bool)

(assert (=> b!735057 m!687633))

(declare-fun m!687635 () Bool)

(assert (=> b!735057 m!687635))

(assert (=> b!735057 m!687631))

(declare-fun m!687637 () Bool)

(assert (=> b!735057 m!687637))

(declare-fun m!687639 () Bool)

(assert (=> b!735057 m!687639))

(declare-fun m!687641 () Bool)

(assert (=> b!735059 m!687641))

(push 1)

