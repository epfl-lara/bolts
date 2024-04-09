; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64854 () Bool)

(assert start!64854)

(declare-fun b!731737 () Bool)

(declare-fun e!409483 () Bool)

(declare-fun e!409485 () Bool)

(assert (=> b!731737 (= e!409483 e!409485)))

(declare-fun res!491781 () Bool)

(assert (=> b!731737 (=> (not res!491781) (not e!409485))))

(declare-datatypes ((array!41187 0))(
  ( (array!41188 (arr!19708 (Array (_ BitVec 32) (_ BitVec 64))) (size!20129 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41187)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7315 0))(
  ( (MissingZero!7315 (index!31627 (_ BitVec 32))) (Found!7315 (index!31628 (_ BitVec 32))) (Intermediate!7315 (undefined!8127 Bool) (index!31629 (_ BitVec 32)) (x!62638 (_ BitVec 32))) (Undefined!7315) (MissingVacant!7315 (index!31630 (_ BitVec 32))) )
))
(declare-fun lt!324295 () SeekEntryResult!7315)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41187 (_ BitVec 32)) SeekEntryResult!7315)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!731737 (= res!491781 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19708 a!3186) j!159) mask!3328) (select (arr!19708 a!3186) j!159) a!3186 mask!3328) lt!324295))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!731737 (= lt!324295 (Intermediate!7315 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!731739 () Bool)

(declare-fun res!491783 () Bool)

(declare-fun e!409488 () Bool)

(assert (=> b!731739 (=> res!491783 e!409488)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41187 (_ BitVec 32)) SeekEntryResult!7315)

(assert (=> b!731739 (= res!491783 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19708 a!3186) j!159) a!3186 mask!3328) (Found!7315 j!159))))))

(declare-fun b!731740 () Bool)

(declare-fun res!491779 () Bool)

(assert (=> b!731740 (=> (not res!491779) (not e!409483))))

(declare-datatypes ((List!13763 0))(
  ( (Nil!13760) (Cons!13759 (h!14822 (_ BitVec 64)) (t!20086 List!13763)) )
))
(declare-fun arrayNoDuplicates!0 (array!41187 (_ BitVec 32) List!13763) Bool)

(assert (=> b!731740 (= res!491779 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13760))))

(declare-fun lt!324291 () (_ BitVec 32))

(declare-fun b!731741 () Bool)

(assert (=> b!731741 (= e!409488 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt lt!324291 #b00000000000000000000000000000000) (bvsge lt!324291 (bvadd #b00000000000000000000000000000001 mask!3328)) (and (bvsle (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000))))))

(declare-fun e!409489 () Bool)

(declare-fun b!731742 () Bool)

(assert (=> b!731742 (= e!409489 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19708 a!3186) j!159) a!3186 mask!3328) (Found!7315 j!159)))))

(declare-fun b!731743 () Bool)

(declare-fun res!491787 () Bool)

(declare-fun e!409486 () Bool)

(assert (=> b!731743 (=> (not res!491787) (not e!409486))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!731743 (= res!491787 (validKeyInArray!0 k0!2102))))

(declare-fun b!731744 () Bool)

(declare-fun res!491775 () Bool)

(assert (=> b!731744 (=> (not res!491775) (not e!409483))))

(assert (=> b!731744 (= res!491775 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20129 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20129 a!3186))))))

(declare-fun lt!324288 () SeekEntryResult!7315)

(declare-fun e!409490 () Bool)

(declare-fun b!731745 () Bool)

(assert (=> b!731745 (= e!409490 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19708 a!3186) j!159) a!3186 mask!3328) lt!324288))))

(declare-fun b!731738 () Bool)

(declare-fun res!491789 () Bool)

(assert (=> b!731738 (=> (not res!491789) (not e!409485))))

(assert (=> b!731738 (= res!491789 e!409489)))

(declare-fun c!80358 () Bool)

(assert (=> b!731738 (= c!80358 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!491786 () Bool)

(assert (=> start!64854 (=> (not res!491786) (not e!409486))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64854 (= res!491786 (validMask!0 mask!3328))))

(assert (=> start!64854 e!409486))

(assert (=> start!64854 true))

(declare-fun array_inv!15482 (array!41187) Bool)

(assert (=> start!64854 (array_inv!15482 a!3186)))

(declare-fun b!731746 () Bool)

(declare-fun e!409491 () Bool)

(assert (=> b!731746 (= e!409485 e!409491)))

(declare-fun res!491776 () Bool)

(assert (=> b!731746 (=> (not res!491776) (not e!409491))))

(declare-fun lt!324293 () SeekEntryResult!7315)

(declare-fun lt!324294 () SeekEntryResult!7315)

(assert (=> b!731746 (= res!491776 (= lt!324293 lt!324294))))

(declare-fun lt!324290 () (_ BitVec 64))

(declare-fun lt!324289 () array!41187)

(assert (=> b!731746 (= lt!324294 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324290 lt!324289 mask!3328))))

(assert (=> b!731746 (= lt!324293 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324290 mask!3328) lt!324290 lt!324289 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!731746 (= lt!324290 (select (store (arr!19708 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!731746 (= lt!324289 (array!41188 (store (arr!19708 a!3186) i!1173 k0!2102) (size!20129 a!3186)))))

(declare-fun b!731747 () Bool)

(declare-fun res!491773 () Bool)

(assert (=> b!731747 (=> (not res!491773) (not e!409486))))

(assert (=> b!731747 (= res!491773 (and (= (size!20129 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20129 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20129 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!731748 () Bool)

(declare-fun e!409482 () Bool)

(assert (=> b!731748 (= e!409482 e!409488)))

(declare-fun res!491774 () Bool)

(assert (=> b!731748 (=> res!491774 e!409488)))

(assert (=> b!731748 (= res!491774 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!731748 (= lt!324291 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!731749 () Bool)

(assert (=> b!731749 (= e!409491 (not e!409482))))

(declare-fun res!491780 () Bool)

(assert (=> b!731749 (=> res!491780 e!409482)))

(get-info :version)

(assert (=> b!731749 (= res!491780 (or (not ((_ is Intermediate!7315) lt!324294)) (bvsge x!1131 (x!62638 lt!324294))))))

(declare-fun e!409484 () Bool)

(assert (=> b!731749 e!409484))

(declare-fun res!491790 () Bool)

(assert (=> b!731749 (=> (not res!491790) (not e!409484))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41187 (_ BitVec 32)) Bool)

(assert (=> b!731749 (= res!491790 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24948 0))(
  ( (Unit!24949) )
))
(declare-fun lt!324296 () Unit!24948)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41187 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24948)

(assert (=> b!731749 (= lt!324296 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!731750 () Bool)

(declare-fun res!491785 () Bool)

(assert (=> b!731750 (=> (not res!491785) (not e!409486))))

(assert (=> b!731750 (= res!491785 (validKeyInArray!0 (select (arr!19708 a!3186) j!159)))))

(declare-fun b!731751 () Bool)

(declare-fun res!491784 () Bool)

(assert (=> b!731751 (=> (not res!491784) (not e!409485))))

(assert (=> b!731751 (= res!491784 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19708 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!731752 () Bool)

(declare-fun res!491782 () Bool)

(assert (=> b!731752 (=> (not res!491782) (not e!409486))))

(declare-fun arrayContainsKey!0 (array!41187 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!731752 (= res!491782 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!731753 () Bool)

(assert (=> b!731753 (= e!409489 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19708 a!3186) j!159) a!3186 mask!3328) lt!324295))))

(declare-fun b!731754 () Bool)

(assert (=> b!731754 (= e!409486 e!409483)))

(declare-fun res!491777 () Bool)

(assert (=> b!731754 (=> (not res!491777) (not e!409483))))

(declare-fun lt!324292 () SeekEntryResult!7315)

(assert (=> b!731754 (= res!491777 (or (= lt!324292 (MissingZero!7315 i!1173)) (= lt!324292 (MissingVacant!7315 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41187 (_ BitVec 32)) SeekEntryResult!7315)

(assert (=> b!731754 (= lt!324292 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!731755 () Bool)

(declare-fun res!491788 () Bool)

(assert (=> b!731755 (=> (not res!491788) (not e!409483))))

(assert (=> b!731755 (= res!491788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!731756 () Bool)

(assert (=> b!731756 (= e!409484 e!409490)))

(declare-fun res!491778 () Bool)

(assert (=> b!731756 (=> (not res!491778) (not e!409490))))

(assert (=> b!731756 (= res!491778 (= (seekEntryOrOpen!0 (select (arr!19708 a!3186) j!159) a!3186 mask!3328) lt!324288))))

(assert (=> b!731756 (= lt!324288 (Found!7315 j!159))))

(assert (= (and start!64854 res!491786) b!731747))

(assert (= (and b!731747 res!491773) b!731750))

(assert (= (and b!731750 res!491785) b!731743))

(assert (= (and b!731743 res!491787) b!731752))

(assert (= (and b!731752 res!491782) b!731754))

(assert (= (and b!731754 res!491777) b!731755))

(assert (= (and b!731755 res!491788) b!731740))

(assert (= (and b!731740 res!491779) b!731744))

(assert (= (and b!731744 res!491775) b!731737))

(assert (= (and b!731737 res!491781) b!731751))

(assert (= (and b!731751 res!491784) b!731738))

(assert (= (and b!731738 c!80358) b!731753))

(assert (= (and b!731738 (not c!80358)) b!731742))

(assert (= (and b!731738 res!491789) b!731746))

(assert (= (and b!731746 res!491776) b!731749))

(assert (= (and b!731749 res!491790) b!731756))

(assert (= (and b!731756 res!491778) b!731745))

(assert (= (and b!731749 (not res!491780)) b!731748))

(assert (= (and b!731748 (not res!491774)) b!731739))

(assert (= (and b!731739 (not res!491783)) b!731741))

(declare-fun m!685063 () Bool)

(assert (=> b!731746 m!685063))

(declare-fun m!685065 () Bool)

(assert (=> b!731746 m!685065))

(declare-fun m!685067 () Bool)

(assert (=> b!731746 m!685067))

(declare-fun m!685069 () Bool)

(assert (=> b!731746 m!685069))

(assert (=> b!731746 m!685063))

(declare-fun m!685071 () Bool)

(assert (=> b!731746 m!685071))

(declare-fun m!685073 () Bool)

(assert (=> start!64854 m!685073))

(declare-fun m!685075 () Bool)

(assert (=> start!64854 m!685075))

(declare-fun m!685077 () Bool)

(assert (=> b!731737 m!685077))

(assert (=> b!731737 m!685077))

(declare-fun m!685079 () Bool)

(assert (=> b!731737 m!685079))

(assert (=> b!731737 m!685079))

(assert (=> b!731737 m!685077))

(declare-fun m!685081 () Bool)

(assert (=> b!731737 m!685081))

(declare-fun m!685083 () Bool)

(assert (=> b!731743 m!685083))

(assert (=> b!731753 m!685077))

(assert (=> b!731753 m!685077))

(declare-fun m!685085 () Bool)

(assert (=> b!731753 m!685085))

(declare-fun m!685087 () Bool)

(assert (=> b!731749 m!685087))

(declare-fun m!685089 () Bool)

(assert (=> b!731749 m!685089))

(declare-fun m!685091 () Bool)

(assert (=> b!731751 m!685091))

(declare-fun m!685093 () Bool)

(assert (=> b!731748 m!685093))

(assert (=> b!731739 m!685077))

(assert (=> b!731739 m!685077))

(declare-fun m!685095 () Bool)

(assert (=> b!731739 m!685095))

(declare-fun m!685097 () Bool)

(assert (=> b!731740 m!685097))

(declare-fun m!685099 () Bool)

(assert (=> b!731755 m!685099))

(declare-fun m!685101 () Bool)

(assert (=> b!731754 m!685101))

(assert (=> b!731742 m!685077))

(assert (=> b!731742 m!685077))

(assert (=> b!731742 m!685095))

(assert (=> b!731745 m!685077))

(assert (=> b!731745 m!685077))

(declare-fun m!685103 () Bool)

(assert (=> b!731745 m!685103))

(assert (=> b!731750 m!685077))

(assert (=> b!731750 m!685077))

(declare-fun m!685105 () Bool)

(assert (=> b!731750 m!685105))

(declare-fun m!685107 () Bool)

(assert (=> b!731752 m!685107))

(assert (=> b!731756 m!685077))

(assert (=> b!731756 m!685077))

(declare-fun m!685109 () Bool)

(assert (=> b!731756 m!685109))

(check-sat (not b!731754) (not b!731740) (not b!731749) (not b!731753) (not b!731737) (not b!731755) (not b!731739) (not b!731742) (not b!731752) (not b!731748) (not b!731745) (not b!731743) (not b!731746) (not b!731750) (not b!731756) (not start!64854))
(check-sat)
(get-model)

(declare-fun e!409536 () SeekEntryResult!7315)

(declare-fun b!731835 () Bool)

(assert (=> b!731835 (= e!409536 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!19708 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!99669 () Bool)

(declare-fun e!409533 () Bool)

(assert (=> d!99669 e!409533))

(declare-fun c!80370 () Bool)

(declare-fun lt!324328 () SeekEntryResult!7315)

(assert (=> d!99669 (= c!80370 (and ((_ is Intermediate!7315) lt!324328) (undefined!8127 lt!324328)))))

(declare-fun e!409535 () SeekEntryResult!7315)

(assert (=> d!99669 (= lt!324328 e!409535)))

(declare-fun c!80368 () Bool)

(assert (=> d!99669 (= c!80368 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!324329 () (_ BitVec 64))

(assert (=> d!99669 (= lt!324329 (select (arr!19708 a!3186) index!1321))))

(assert (=> d!99669 (validMask!0 mask!3328)))

(assert (=> d!99669 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19708 a!3186) j!159) a!3186 mask!3328) lt!324328)))

(declare-fun b!731836 () Bool)

(assert (=> b!731836 (= e!409533 (bvsge (x!62638 lt!324328) #b01111111111111111111111111111110))))

(declare-fun b!731837 () Bool)

(assert (=> b!731837 (and (bvsge (index!31629 lt!324328) #b00000000000000000000000000000000) (bvslt (index!31629 lt!324328) (size!20129 a!3186)))))

(declare-fun res!491852 () Bool)

(assert (=> b!731837 (= res!491852 (= (select (arr!19708 a!3186) (index!31629 lt!324328)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!409532 () Bool)

(assert (=> b!731837 (=> res!491852 e!409532)))

(declare-fun b!731838 () Bool)

(assert (=> b!731838 (= e!409535 (Intermediate!7315 true index!1321 x!1131))))

(declare-fun b!731839 () Bool)

(assert (=> b!731839 (= e!409535 e!409536)))

(declare-fun c!80369 () Bool)

(assert (=> b!731839 (= c!80369 (or (= lt!324329 (select (arr!19708 a!3186) j!159)) (= (bvadd lt!324329 lt!324329) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!731840 () Bool)

(assert (=> b!731840 (and (bvsge (index!31629 lt!324328) #b00000000000000000000000000000000) (bvslt (index!31629 lt!324328) (size!20129 a!3186)))))

(assert (=> b!731840 (= e!409532 (= (select (arr!19708 a!3186) (index!31629 lt!324328)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!731841 () Bool)

(declare-fun e!409534 () Bool)

(assert (=> b!731841 (= e!409533 e!409534)))

(declare-fun res!491851 () Bool)

(assert (=> b!731841 (= res!491851 (and ((_ is Intermediate!7315) lt!324328) (not (undefined!8127 lt!324328)) (bvslt (x!62638 lt!324328) #b01111111111111111111111111111110) (bvsge (x!62638 lt!324328) #b00000000000000000000000000000000) (bvsge (x!62638 lt!324328) x!1131)))))

(assert (=> b!731841 (=> (not res!491851) (not e!409534))))

(declare-fun b!731842 () Bool)

(assert (=> b!731842 (= e!409536 (Intermediate!7315 false index!1321 x!1131))))

(declare-fun b!731843 () Bool)

(assert (=> b!731843 (and (bvsge (index!31629 lt!324328) #b00000000000000000000000000000000) (bvslt (index!31629 lt!324328) (size!20129 a!3186)))))

(declare-fun res!491853 () Bool)

(assert (=> b!731843 (= res!491853 (= (select (arr!19708 a!3186) (index!31629 lt!324328)) (select (arr!19708 a!3186) j!159)))))

(assert (=> b!731843 (=> res!491853 e!409532)))

(assert (=> b!731843 (= e!409534 e!409532)))

(assert (= (and d!99669 c!80368) b!731838))

(assert (= (and d!99669 (not c!80368)) b!731839))

(assert (= (and b!731839 c!80369) b!731842))

(assert (= (and b!731839 (not c!80369)) b!731835))

(assert (= (and d!99669 c!80370) b!731836))

(assert (= (and d!99669 (not c!80370)) b!731841))

(assert (= (and b!731841 res!491851) b!731843))

(assert (= (and b!731843 (not res!491853)) b!731837))

(assert (= (and b!731837 (not res!491852)) b!731840))

(declare-fun m!685159 () Bool)

(assert (=> b!731843 m!685159))

(declare-fun m!685161 () Bool)

(assert (=> d!99669 m!685161))

(assert (=> d!99669 m!685073))

(assert (=> b!731840 m!685159))

(assert (=> b!731835 m!685093))

(assert (=> b!731835 m!685093))

(assert (=> b!731835 m!685077))

(declare-fun m!685163 () Bool)

(assert (=> b!731835 m!685163))

(assert (=> b!731837 m!685159))

(assert (=> b!731753 d!99669))

(declare-fun d!99671 () Bool)

(assert (=> d!99671 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!731743 d!99671))

(declare-fun b!731856 () Bool)

(declare-fun e!409543 () SeekEntryResult!7315)

(declare-fun lt!324336 () SeekEntryResult!7315)

(assert (=> b!731856 (= e!409543 (MissingZero!7315 (index!31629 lt!324336)))))

(declare-fun b!731857 () Bool)

(declare-fun e!409544 () SeekEntryResult!7315)

(assert (=> b!731857 (= e!409544 (Found!7315 (index!31629 lt!324336)))))

(declare-fun b!731858 () Bool)

(declare-fun e!409545 () SeekEntryResult!7315)

(assert (=> b!731858 (= e!409545 e!409544)))

(declare-fun lt!324338 () (_ BitVec 64))

(assert (=> b!731858 (= lt!324338 (select (arr!19708 a!3186) (index!31629 lt!324336)))))

(declare-fun c!80379 () Bool)

(assert (=> b!731858 (= c!80379 (= lt!324338 k0!2102))))

(declare-fun b!731859 () Bool)

(declare-fun c!80377 () Bool)

(assert (=> b!731859 (= c!80377 (= lt!324338 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!731859 (= e!409544 e!409543)))

(declare-fun d!99673 () Bool)

(declare-fun lt!324337 () SeekEntryResult!7315)

(assert (=> d!99673 (and (or ((_ is Undefined!7315) lt!324337) (not ((_ is Found!7315) lt!324337)) (and (bvsge (index!31628 lt!324337) #b00000000000000000000000000000000) (bvslt (index!31628 lt!324337) (size!20129 a!3186)))) (or ((_ is Undefined!7315) lt!324337) ((_ is Found!7315) lt!324337) (not ((_ is MissingZero!7315) lt!324337)) (and (bvsge (index!31627 lt!324337) #b00000000000000000000000000000000) (bvslt (index!31627 lt!324337) (size!20129 a!3186)))) (or ((_ is Undefined!7315) lt!324337) ((_ is Found!7315) lt!324337) ((_ is MissingZero!7315) lt!324337) (not ((_ is MissingVacant!7315) lt!324337)) (and (bvsge (index!31630 lt!324337) #b00000000000000000000000000000000) (bvslt (index!31630 lt!324337) (size!20129 a!3186)))) (or ((_ is Undefined!7315) lt!324337) (ite ((_ is Found!7315) lt!324337) (= (select (arr!19708 a!3186) (index!31628 lt!324337)) k0!2102) (ite ((_ is MissingZero!7315) lt!324337) (= (select (arr!19708 a!3186) (index!31627 lt!324337)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7315) lt!324337) (= (select (arr!19708 a!3186) (index!31630 lt!324337)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!99673 (= lt!324337 e!409545)))

(declare-fun c!80378 () Bool)

(assert (=> d!99673 (= c!80378 (and ((_ is Intermediate!7315) lt!324336) (undefined!8127 lt!324336)))))

(assert (=> d!99673 (= lt!324336 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!99673 (validMask!0 mask!3328)))

(assert (=> d!99673 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!324337)))

(declare-fun b!731860 () Bool)

(assert (=> b!731860 (= e!409545 Undefined!7315)))

(declare-fun b!731861 () Bool)

(assert (=> b!731861 (= e!409543 (seekKeyOrZeroReturnVacant!0 (x!62638 lt!324336) (index!31629 lt!324336) (index!31629 lt!324336) k0!2102 a!3186 mask!3328))))

(assert (= (and d!99673 c!80378) b!731860))

(assert (= (and d!99673 (not c!80378)) b!731858))

(assert (= (and b!731858 c!80379) b!731857))

(assert (= (and b!731858 (not c!80379)) b!731859))

(assert (= (and b!731859 c!80377) b!731856))

(assert (= (and b!731859 (not c!80377)) b!731861))

(declare-fun m!685165 () Bool)

(assert (=> b!731858 m!685165))

(declare-fun m!685167 () Bool)

(assert (=> d!99673 m!685167))

(assert (=> d!99673 m!685167))

(declare-fun m!685169 () Bool)

(assert (=> d!99673 m!685169))

(declare-fun m!685171 () Bool)

(assert (=> d!99673 m!685171))

(declare-fun m!685173 () Bool)

(assert (=> d!99673 m!685173))

(declare-fun m!685175 () Bool)

(assert (=> d!99673 m!685175))

(assert (=> d!99673 m!685073))

(declare-fun m!685177 () Bool)

(assert (=> b!731861 m!685177))

(assert (=> b!731754 d!99673))

(declare-fun b!731882 () Bool)

(declare-fun e!409561 () Bool)

(declare-fun call!34854 () Bool)

(assert (=> b!731882 (= e!409561 call!34854)))

(declare-fun d!99677 () Bool)

(declare-fun res!491865 () Bool)

(declare-fun e!409562 () Bool)

(assert (=> d!99677 (=> res!491865 e!409562)))

(assert (=> d!99677 (= res!491865 (bvsge #b00000000000000000000000000000000 (size!20129 a!3186)))))

(assert (=> d!99677 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!409562)))

(declare-fun b!731883 () Bool)

(declare-fun e!409563 () Bool)

(assert (=> b!731883 (= e!409561 e!409563)))

(declare-fun lt!324354 () (_ BitVec 64))

(assert (=> b!731883 (= lt!324354 (select (arr!19708 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!324355 () Unit!24948)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!41187 (_ BitVec 64) (_ BitVec 32)) Unit!24948)

(assert (=> b!731883 (= lt!324355 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!324354 #b00000000000000000000000000000000))))

(assert (=> b!731883 (arrayContainsKey!0 a!3186 lt!324354 #b00000000000000000000000000000000)))

(declare-fun lt!324356 () Unit!24948)

(assert (=> b!731883 (= lt!324356 lt!324355)))

(declare-fun res!491864 () Bool)

(assert (=> b!731883 (= res!491864 (= (seekEntryOrOpen!0 (select (arr!19708 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7315 #b00000000000000000000000000000000)))))

(assert (=> b!731883 (=> (not res!491864) (not e!409563))))

(declare-fun bm!34851 () Bool)

(assert (=> bm!34851 (= call!34854 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!731884 () Bool)

(assert (=> b!731884 (= e!409562 e!409561)))

(declare-fun c!80385 () Bool)

(assert (=> b!731884 (= c!80385 (validKeyInArray!0 (select (arr!19708 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!731885 () Bool)

(assert (=> b!731885 (= e!409563 call!34854)))

(assert (= (and d!99677 (not res!491865)) b!731884))

(assert (= (and b!731884 c!80385) b!731883))

(assert (= (and b!731884 (not c!80385)) b!731882))

(assert (= (and b!731883 res!491864) b!731885))

(assert (= (or b!731885 b!731882) bm!34851))

(declare-fun m!685185 () Bool)

(assert (=> b!731883 m!685185))

(declare-fun m!685187 () Bool)

(assert (=> b!731883 m!685187))

(declare-fun m!685189 () Bool)

(assert (=> b!731883 m!685189))

(assert (=> b!731883 m!685185))

(declare-fun m!685191 () Bool)

(assert (=> b!731883 m!685191))

(declare-fun m!685193 () Bool)

(assert (=> bm!34851 m!685193))

(assert (=> b!731884 m!685185))

(assert (=> b!731884 m!685185))

(declare-fun m!685195 () Bool)

(assert (=> b!731884 m!685195))

(assert (=> b!731755 d!99677))

(declare-fun b!731922 () Bool)

(declare-fun e!409589 () Bool)

(declare-fun call!34860 () Bool)

(assert (=> b!731922 (= e!409589 call!34860)))

(declare-fun b!731923 () Bool)

(declare-fun e!409591 () Bool)

(assert (=> b!731923 (= e!409591 e!409589)))

(declare-fun c!80397 () Bool)

(assert (=> b!731923 (= c!80397 (validKeyInArray!0 (select (arr!19708 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!731924 () Bool)

(declare-fun e!409590 () Bool)

(assert (=> b!731924 (= e!409590 e!409591)))

(declare-fun res!491882 () Bool)

(assert (=> b!731924 (=> (not res!491882) (not e!409591))))

(declare-fun e!409592 () Bool)

(assert (=> b!731924 (= res!491882 (not e!409592))))

(declare-fun res!491881 () Bool)

(assert (=> b!731924 (=> (not res!491881) (not e!409592))))

(assert (=> b!731924 (= res!491881 (validKeyInArray!0 (select (arr!19708 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34857 () Bool)

(assert (=> bm!34857 (= call!34860 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!80397 (Cons!13759 (select (arr!19708 a!3186) #b00000000000000000000000000000000) Nil!13760) Nil!13760)))))

(declare-fun d!99683 () Bool)

(declare-fun res!491880 () Bool)

(assert (=> d!99683 (=> res!491880 e!409590)))

(assert (=> d!99683 (= res!491880 (bvsge #b00000000000000000000000000000000 (size!20129 a!3186)))))

(assert (=> d!99683 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13760) e!409590)))

(declare-fun b!731925 () Bool)

(declare-fun contains!4057 (List!13763 (_ BitVec 64)) Bool)

(assert (=> b!731925 (= e!409592 (contains!4057 Nil!13760 (select (arr!19708 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!731926 () Bool)

(assert (=> b!731926 (= e!409589 call!34860)))

(assert (= (and d!99683 (not res!491880)) b!731924))

(assert (= (and b!731924 res!491881) b!731925))

(assert (= (and b!731924 res!491882) b!731923))

(assert (= (and b!731923 c!80397) b!731922))

(assert (= (and b!731923 (not c!80397)) b!731926))

(assert (= (or b!731922 b!731926) bm!34857))

(assert (=> b!731923 m!685185))

(assert (=> b!731923 m!685185))

(assert (=> b!731923 m!685195))

(assert (=> b!731924 m!685185))

(assert (=> b!731924 m!685185))

(assert (=> b!731924 m!685195))

(assert (=> bm!34857 m!685185))

(declare-fun m!685211 () Bool)

(assert (=> bm!34857 m!685211))

(assert (=> b!731925 m!685185))

(assert (=> b!731925 m!685185))

(declare-fun m!685213 () Bool)

(assert (=> b!731925 m!685213))

(assert (=> b!731740 d!99683))

(declare-fun d!99689 () Bool)

(assert (=> d!99689 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!64854 d!99689))

(declare-fun d!99699 () Bool)

(assert (=> d!99699 (= (array_inv!15482 a!3186) (bvsge (size!20129 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!64854 d!99699))

(declare-fun d!99701 () Bool)

(declare-fun res!491890 () Bool)

(declare-fun e!409607 () Bool)

(assert (=> d!99701 (=> res!491890 e!409607)))

(assert (=> d!99701 (= res!491890 (= (select (arr!19708 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!99701 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!409607)))

(declare-fun b!731948 () Bool)

(declare-fun e!409608 () Bool)

(assert (=> b!731948 (= e!409607 e!409608)))

(declare-fun res!491891 () Bool)

(assert (=> b!731948 (=> (not res!491891) (not e!409608))))

(assert (=> b!731948 (= res!491891 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20129 a!3186)))))

(declare-fun b!731949 () Bool)

(assert (=> b!731949 (= e!409608 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!99701 (not res!491890)) b!731948))

(assert (= (and b!731948 res!491891) b!731949))

(assert (=> d!99701 m!685185))

(declare-fun m!685235 () Bool)

(assert (=> b!731949 m!685235))

(assert (=> b!731752 d!99701))

(declare-fun lt!324390 () SeekEntryResult!7315)

(declare-fun d!99703 () Bool)

(assert (=> d!99703 (and (or ((_ is Undefined!7315) lt!324390) (not ((_ is Found!7315) lt!324390)) (and (bvsge (index!31628 lt!324390) #b00000000000000000000000000000000) (bvslt (index!31628 lt!324390) (size!20129 a!3186)))) (or ((_ is Undefined!7315) lt!324390) ((_ is Found!7315) lt!324390) (not ((_ is MissingVacant!7315) lt!324390)) (not (= (index!31630 lt!324390) resIntermediateIndex!5)) (and (bvsge (index!31630 lt!324390) #b00000000000000000000000000000000) (bvslt (index!31630 lt!324390) (size!20129 a!3186)))) (or ((_ is Undefined!7315) lt!324390) (ite ((_ is Found!7315) lt!324390) (= (select (arr!19708 a!3186) (index!31628 lt!324390)) (select (arr!19708 a!3186) j!159)) (and ((_ is MissingVacant!7315) lt!324390) (= (index!31630 lt!324390) resIntermediateIndex!5) (= (select (arr!19708 a!3186) (index!31630 lt!324390)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!409640 () SeekEntryResult!7315)

(assert (=> d!99703 (= lt!324390 e!409640)))

(declare-fun c!80430 () Bool)

(assert (=> d!99703 (= c!80430 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!324391 () (_ BitVec 64))

(assert (=> d!99703 (= lt!324391 (select (arr!19708 a!3186) index!1321))))

(assert (=> d!99703 (validMask!0 mask!3328)))

(assert (=> d!99703 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19708 a!3186) j!159) a!3186 mask!3328) lt!324390)))

(declare-fun b!732007 () Bool)

(declare-fun e!409639 () SeekEntryResult!7315)

(assert (=> b!732007 (= e!409640 e!409639)))

(declare-fun c!80429 () Bool)

(assert (=> b!732007 (= c!80429 (= lt!324391 (select (arr!19708 a!3186) j!159)))))

(declare-fun b!732008 () Bool)

(assert (=> b!732008 (= e!409639 (Found!7315 index!1321))))

(declare-fun b!732009 () Bool)

(declare-fun e!409641 () SeekEntryResult!7315)

(assert (=> b!732009 (= e!409641 (MissingVacant!7315 resIntermediateIndex!5))))

(declare-fun b!732010 () Bool)

(assert (=> b!732010 (= e!409641 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!19708 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!732011 () Bool)

(assert (=> b!732011 (= e!409640 Undefined!7315)))

(declare-fun b!732012 () Bool)

(declare-fun c!80431 () Bool)

(assert (=> b!732012 (= c!80431 (= lt!324391 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!732012 (= e!409639 e!409641)))

(assert (= (and d!99703 c!80430) b!732011))

(assert (= (and d!99703 (not c!80430)) b!732007))

(assert (= (and b!732007 c!80429) b!732008))

(assert (= (and b!732007 (not c!80429)) b!732012))

(assert (= (and b!732012 c!80431) b!732009))

(assert (= (and b!732012 (not c!80431)) b!732010))

(declare-fun m!685251 () Bool)

(assert (=> d!99703 m!685251))

(declare-fun m!685253 () Bool)

(assert (=> d!99703 m!685253))

(assert (=> d!99703 m!685161))

(assert (=> d!99703 m!685073))

(assert (=> b!732010 m!685093))

(assert (=> b!732010 m!685093))

(assert (=> b!732010 m!685077))

(declare-fun m!685255 () Bool)

(assert (=> b!732010 m!685255))

(assert (=> b!731742 d!99703))

(declare-fun b!732013 () Bool)

(declare-fun e!409646 () SeekEntryResult!7315)

(assert (=> b!732013 (= e!409646 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!19708 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!19708 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!99709 () Bool)

(declare-fun e!409643 () Bool)

(assert (=> d!99709 e!409643))

(declare-fun c!80434 () Bool)

(declare-fun lt!324392 () SeekEntryResult!7315)

(assert (=> d!99709 (= c!80434 (and ((_ is Intermediate!7315) lt!324392) (undefined!8127 lt!324392)))))

(declare-fun e!409645 () SeekEntryResult!7315)

(assert (=> d!99709 (= lt!324392 e!409645)))

(declare-fun c!80432 () Bool)

(assert (=> d!99709 (= c!80432 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!324393 () (_ BitVec 64))

(assert (=> d!99709 (= lt!324393 (select (arr!19708 a!3186) (toIndex!0 (select (arr!19708 a!3186) j!159) mask!3328)))))

(assert (=> d!99709 (validMask!0 mask!3328)))

(assert (=> d!99709 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19708 a!3186) j!159) mask!3328) (select (arr!19708 a!3186) j!159) a!3186 mask!3328) lt!324392)))

(declare-fun b!732014 () Bool)

(assert (=> b!732014 (= e!409643 (bvsge (x!62638 lt!324392) #b01111111111111111111111111111110))))

(declare-fun b!732015 () Bool)

(assert (=> b!732015 (and (bvsge (index!31629 lt!324392) #b00000000000000000000000000000000) (bvslt (index!31629 lt!324392) (size!20129 a!3186)))))

(declare-fun res!491902 () Bool)

(assert (=> b!732015 (= res!491902 (= (select (arr!19708 a!3186) (index!31629 lt!324392)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!409642 () Bool)

(assert (=> b!732015 (=> res!491902 e!409642)))

(declare-fun b!732016 () Bool)

(assert (=> b!732016 (= e!409645 (Intermediate!7315 true (toIndex!0 (select (arr!19708 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!732017 () Bool)

(assert (=> b!732017 (= e!409645 e!409646)))

(declare-fun c!80433 () Bool)

(assert (=> b!732017 (= c!80433 (or (= lt!324393 (select (arr!19708 a!3186) j!159)) (= (bvadd lt!324393 lt!324393) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!732018 () Bool)

(assert (=> b!732018 (and (bvsge (index!31629 lt!324392) #b00000000000000000000000000000000) (bvslt (index!31629 lt!324392) (size!20129 a!3186)))))

(assert (=> b!732018 (= e!409642 (= (select (arr!19708 a!3186) (index!31629 lt!324392)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!732019 () Bool)

(declare-fun e!409644 () Bool)

(assert (=> b!732019 (= e!409643 e!409644)))

(declare-fun res!491901 () Bool)

(assert (=> b!732019 (= res!491901 (and ((_ is Intermediate!7315) lt!324392) (not (undefined!8127 lt!324392)) (bvslt (x!62638 lt!324392) #b01111111111111111111111111111110) (bvsge (x!62638 lt!324392) #b00000000000000000000000000000000) (bvsge (x!62638 lt!324392) #b00000000000000000000000000000000)))))

(assert (=> b!732019 (=> (not res!491901) (not e!409644))))

(declare-fun b!732020 () Bool)

(assert (=> b!732020 (= e!409646 (Intermediate!7315 false (toIndex!0 (select (arr!19708 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!732021 () Bool)

(assert (=> b!732021 (and (bvsge (index!31629 lt!324392) #b00000000000000000000000000000000) (bvslt (index!31629 lt!324392) (size!20129 a!3186)))))

(declare-fun res!491903 () Bool)

(assert (=> b!732021 (= res!491903 (= (select (arr!19708 a!3186) (index!31629 lt!324392)) (select (arr!19708 a!3186) j!159)))))

(assert (=> b!732021 (=> res!491903 e!409642)))

(assert (=> b!732021 (= e!409644 e!409642)))

(assert (= (and d!99709 c!80432) b!732016))

(assert (= (and d!99709 (not c!80432)) b!732017))

(assert (= (and b!732017 c!80433) b!732020))

(assert (= (and b!732017 (not c!80433)) b!732013))

(assert (= (and d!99709 c!80434) b!732014))

(assert (= (and d!99709 (not c!80434)) b!732019))

(assert (= (and b!732019 res!491901) b!732021))

(assert (= (and b!732021 (not res!491903)) b!732015))

(assert (= (and b!732015 (not res!491902)) b!732018))

(declare-fun m!685257 () Bool)

(assert (=> b!732021 m!685257))

(assert (=> d!99709 m!685079))

(declare-fun m!685259 () Bool)

(assert (=> d!99709 m!685259))

(assert (=> d!99709 m!685073))

(assert (=> b!732018 m!685257))

(assert (=> b!732013 m!685079))

(declare-fun m!685261 () Bool)

(assert (=> b!732013 m!685261))

(assert (=> b!732013 m!685261))

(assert (=> b!732013 m!685077))

(declare-fun m!685263 () Bool)

(assert (=> b!732013 m!685263))

(assert (=> b!732015 m!685257))

(assert (=> b!731737 d!99709))

(declare-fun d!99711 () Bool)

(declare-fun lt!324403 () (_ BitVec 32))

(declare-fun lt!324402 () (_ BitVec 32))

(assert (=> d!99711 (= lt!324403 (bvmul (bvxor lt!324402 (bvlshr lt!324402 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99711 (= lt!324402 ((_ extract 31 0) (bvand (bvxor (select (arr!19708 a!3186) j!159) (bvlshr (select (arr!19708 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99711 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!491904 (let ((h!14824 ((_ extract 31 0) (bvand (bvxor (select (arr!19708 a!3186) j!159) (bvlshr (select (arr!19708 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62644 (bvmul (bvxor h!14824 (bvlshr h!14824 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62644 (bvlshr x!62644 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!491904 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!491904 #b00000000000000000000000000000000))))))

(assert (=> d!99711 (= (toIndex!0 (select (arr!19708 a!3186) j!159) mask!3328) (bvand (bvxor lt!324403 (bvlshr lt!324403 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!731737 d!99711))

(declare-fun d!99719 () Bool)

(declare-fun lt!324406 () (_ BitVec 32))

(assert (=> d!99719 (and (bvsge lt!324406 #b00000000000000000000000000000000) (bvslt lt!324406 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!99719 (= lt!324406 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!99719 (validMask!0 mask!3328)))

(assert (=> d!99719 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!324406)))

(declare-fun bs!20940 () Bool)

(assert (= bs!20940 d!99719))

(declare-fun m!685265 () Bool)

(assert (=> bs!20940 m!685265))

(assert (=> bs!20940 m!685073))

(assert (=> b!731748 d!99719))

(declare-fun b!732034 () Bool)

(declare-fun e!409653 () Bool)

(declare-fun call!34862 () Bool)

(assert (=> b!732034 (= e!409653 call!34862)))

(declare-fun d!99721 () Bool)

(declare-fun res!491906 () Bool)

(declare-fun e!409654 () Bool)

(assert (=> d!99721 (=> res!491906 e!409654)))

(assert (=> d!99721 (= res!491906 (bvsge j!159 (size!20129 a!3186)))))

(assert (=> d!99721 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!409654)))

(declare-fun b!732035 () Bool)

(declare-fun e!409655 () Bool)

(assert (=> b!732035 (= e!409653 e!409655)))

(declare-fun lt!324407 () (_ BitVec 64))

(assert (=> b!732035 (= lt!324407 (select (arr!19708 a!3186) j!159))))

(declare-fun lt!324408 () Unit!24948)

(assert (=> b!732035 (= lt!324408 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!324407 j!159))))

(assert (=> b!732035 (arrayContainsKey!0 a!3186 lt!324407 #b00000000000000000000000000000000)))

(declare-fun lt!324409 () Unit!24948)

(assert (=> b!732035 (= lt!324409 lt!324408)))

(declare-fun res!491905 () Bool)

(assert (=> b!732035 (= res!491905 (= (seekEntryOrOpen!0 (select (arr!19708 a!3186) j!159) a!3186 mask!3328) (Found!7315 j!159)))))

(assert (=> b!732035 (=> (not res!491905) (not e!409655))))

(declare-fun bm!34859 () Bool)

(assert (=> bm!34859 (= call!34862 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!732036 () Bool)

(assert (=> b!732036 (= e!409654 e!409653)))

(declare-fun c!80441 () Bool)

(assert (=> b!732036 (= c!80441 (validKeyInArray!0 (select (arr!19708 a!3186) j!159)))))

(declare-fun b!732037 () Bool)

(assert (=> b!732037 (= e!409655 call!34862)))

(assert (= (and d!99721 (not res!491906)) b!732036))

(assert (= (and b!732036 c!80441) b!732035))

(assert (= (and b!732036 (not c!80441)) b!732034))

(assert (= (and b!732035 res!491905) b!732037))

(assert (= (or b!732037 b!732034) bm!34859))

(assert (=> b!732035 m!685077))

(declare-fun m!685267 () Bool)

(assert (=> b!732035 m!685267))

(declare-fun m!685269 () Bool)

(assert (=> b!732035 m!685269))

(assert (=> b!732035 m!685077))

(assert (=> b!732035 m!685109))

(declare-fun m!685271 () Bool)

(assert (=> bm!34859 m!685271))

(assert (=> b!732036 m!685077))

(assert (=> b!732036 m!685077))

(assert (=> b!732036 m!685105))

(assert (=> b!731749 d!99721))

(declare-fun d!99723 () Bool)

(assert (=> d!99723 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!324414 () Unit!24948)

(declare-fun choose!38 (array!41187 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24948)

(assert (=> d!99723 (= lt!324414 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!99723 (validMask!0 mask!3328)))

(assert (=> d!99723 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!324414)))

(declare-fun bs!20941 () Bool)

(assert (= bs!20941 d!99723))

(assert (=> bs!20941 m!685087))

(declare-fun m!685281 () Bool)

(assert (=> bs!20941 m!685281))

(assert (=> bs!20941 m!685073))

(assert (=> b!731749 d!99723))

(assert (=> b!731739 d!99703))

(declare-fun d!99727 () Bool)

(assert (=> d!99727 (= (validKeyInArray!0 (select (arr!19708 a!3186) j!159)) (and (not (= (select (arr!19708 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19708 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!731750 d!99727))

(declare-fun d!99729 () Bool)

(declare-fun lt!324415 () SeekEntryResult!7315)

(assert (=> d!99729 (and (or ((_ is Undefined!7315) lt!324415) (not ((_ is Found!7315) lt!324415)) (and (bvsge (index!31628 lt!324415) #b00000000000000000000000000000000) (bvslt (index!31628 lt!324415) (size!20129 a!3186)))) (or ((_ is Undefined!7315) lt!324415) ((_ is Found!7315) lt!324415) (not ((_ is MissingVacant!7315) lt!324415)) (not (= (index!31630 lt!324415) resIntermediateIndex!5)) (and (bvsge (index!31630 lt!324415) #b00000000000000000000000000000000) (bvslt (index!31630 lt!324415) (size!20129 a!3186)))) (or ((_ is Undefined!7315) lt!324415) (ite ((_ is Found!7315) lt!324415) (= (select (arr!19708 a!3186) (index!31628 lt!324415)) (select (arr!19708 a!3186) j!159)) (and ((_ is MissingVacant!7315) lt!324415) (= (index!31630 lt!324415) resIntermediateIndex!5) (= (select (arr!19708 a!3186) (index!31630 lt!324415)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!409660 () SeekEntryResult!7315)

(assert (=> d!99729 (= lt!324415 e!409660)))

(declare-fun c!80446 () Bool)

(assert (=> d!99729 (= c!80446 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(declare-fun lt!324416 () (_ BitVec 64))

(assert (=> d!99729 (= lt!324416 (select (arr!19708 a!3186) resIntermediateIndex!5))))

(assert (=> d!99729 (validMask!0 mask!3328)))

(assert (=> d!99729 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19708 a!3186) j!159) a!3186 mask!3328) lt!324415)))

(declare-fun b!732044 () Bool)

(declare-fun e!409659 () SeekEntryResult!7315)

(assert (=> b!732044 (= e!409660 e!409659)))

(declare-fun c!80445 () Bool)

(assert (=> b!732044 (= c!80445 (= lt!324416 (select (arr!19708 a!3186) j!159)))))

(declare-fun b!732045 () Bool)

(assert (=> b!732045 (= e!409659 (Found!7315 resIntermediateIndex!5))))

(declare-fun b!732046 () Bool)

(declare-fun e!409661 () SeekEntryResult!7315)

(assert (=> b!732046 (= e!409661 (MissingVacant!7315 resIntermediateIndex!5))))

(declare-fun b!732047 () Bool)

(assert (=> b!732047 (= e!409661 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!19708 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!732048 () Bool)

(assert (=> b!732048 (= e!409660 Undefined!7315)))

(declare-fun b!732049 () Bool)

(declare-fun c!80447 () Bool)

(assert (=> b!732049 (= c!80447 (= lt!324416 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!732049 (= e!409659 e!409661)))

(assert (= (and d!99729 c!80446) b!732048))

(assert (= (and d!99729 (not c!80446)) b!732044))

(assert (= (and b!732044 c!80445) b!732045))

(assert (= (and b!732044 (not c!80445)) b!732049))

(assert (= (and b!732049 c!80447) b!732046))

(assert (= (and b!732049 (not c!80447)) b!732047))

(declare-fun m!685283 () Bool)

(assert (=> d!99729 m!685283))

(declare-fun m!685285 () Bool)

(assert (=> d!99729 m!685285))

(assert (=> d!99729 m!685091))

(assert (=> d!99729 m!685073))

(declare-fun m!685287 () Bool)

(assert (=> b!732047 m!685287))

(assert (=> b!732047 m!685287))

(assert (=> b!732047 m!685077))

(declare-fun m!685289 () Bool)

(assert (=> b!732047 m!685289))

(assert (=> b!731745 d!99729))

(declare-fun b!732050 () Bool)

(declare-fun e!409662 () SeekEntryResult!7315)

(declare-fun lt!324417 () SeekEntryResult!7315)

(assert (=> b!732050 (= e!409662 (MissingZero!7315 (index!31629 lt!324417)))))

(declare-fun b!732051 () Bool)

(declare-fun e!409663 () SeekEntryResult!7315)

(assert (=> b!732051 (= e!409663 (Found!7315 (index!31629 lt!324417)))))

(declare-fun b!732052 () Bool)

(declare-fun e!409664 () SeekEntryResult!7315)

(assert (=> b!732052 (= e!409664 e!409663)))

(declare-fun lt!324419 () (_ BitVec 64))

(assert (=> b!732052 (= lt!324419 (select (arr!19708 a!3186) (index!31629 lt!324417)))))

(declare-fun c!80450 () Bool)

(assert (=> b!732052 (= c!80450 (= lt!324419 (select (arr!19708 a!3186) j!159)))))

(declare-fun b!732053 () Bool)

(declare-fun c!80448 () Bool)

(assert (=> b!732053 (= c!80448 (= lt!324419 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!732053 (= e!409663 e!409662)))

(declare-fun d!99731 () Bool)

(declare-fun lt!324418 () SeekEntryResult!7315)

(assert (=> d!99731 (and (or ((_ is Undefined!7315) lt!324418) (not ((_ is Found!7315) lt!324418)) (and (bvsge (index!31628 lt!324418) #b00000000000000000000000000000000) (bvslt (index!31628 lt!324418) (size!20129 a!3186)))) (or ((_ is Undefined!7315) lt!324418) ((_ is Found!7315) lt!324418) (not ((_ is MissingZero!7315) lt!324418)) (and (bvsge (index!31627 lt!324418) #b00000000000000000000000000000000) (bvslt (index!31627 lt!324418) (size!20129 a!3186)))) (or ((_ is Undefined!7315) lt!324418) ((_ is Found!7315) lt!324418) ((_ is MissingZero!7315) lt!324418) (not ((_ is MissingVacant!7315) lt!324418)) (and (bvsge (index!31630 lt!324418) #b00000000000000000000000000000000) (bvslt (index!31630 lt!324418) (size!20129 a!3186)))) (or ((_ is Undefined!7315) lt!324418) (ite ((_ is Found!7315) lt!324418) (= (select (arr!19708 a!3186) (index!31628 lt!324418)) (select (arr!19708 a!3186) j!159)) (ite ((_ is MissingZero!7315) lt!324418) (= (select (arr!19708 a!3186) (index!31627 lt!324418)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7315) lt!324418) (= (select (arr!19708 a!3186) (index!31630 lt!324418)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!99731 (= lt!324418 e!409664)))

(declare-fun c!80449 () Bool)

(assert (=> d!99731 (= c!80449 (and ((_ is Intermediate!7315) lt!324417) (undefined!8127 lt!324417)))))

(assert (=> d!99731 (= lt!324417 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19708 a!3186) j!159) mask!3328) (select (arr!19708 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!99731 (validMask!0 mask!3328)))

(assert (=> d!99731 (= (seekEntryOrOpen!0 (select (arr!19708 a!3186) j!159) a!3186 mask!3328) lt!324418)))

(declare-fun b!732054 () Bool)

(assert (=> b!732054 (= e!409664 Undefined!7315)))

(declare-fun b!732055 () Bool)

(assert (=> b!732055 (= e!409662 (seekKeyOrZeroReturnVacant!0 (x!62638 lt!324417) (index!31629 lt!324417) (index!31629 lt!324417) (select (arr!19708 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!99731 c!80449) b!732054))

(assert (= (and d!99731 (not c!80449)) b!732052))

(assert (= (and b!732052 c!80450) b!732051))

(assert (= (and b!732052 (not c!80450)) b!732053))

(assert (= (and b!732053 c!80448) b!732050))

(assert (= (and b!732053 (not c!80448)) b!732055))

(declare-fun m!685291 () Bool)

(assert (=> b!732052 m!685291))

(assert (=> d!99731 m!685077))

(assert (=> d!99731 m!685079))

(assert (=> d!99731 m!685079))

(assert (=> d!99731 m!685077))

(assert (=> d!99731 m!685081))

(declare-fun m!685293 () Bool)

(assert (=> d!99731 m!685293))

(declare-fun m!685295 () Bool)

(assert (=> d!99731 m!685295))

(declare-fun m!685297 () Bool)

(assert (=> d!99731 m!685297))

(assert (=> d!99731 m!685073))

(assert (=> b!732055 m!685077))

(declare-fun m!685299 () Bool)

(assert (=> b!732055 m!685299))

(assert (=> b!731756 d!99731))

(declare-fun e!409669 () SeekEntryResult!7315)

(declare-fun b!732056 () Bool)

(assert (=> b!732056 (= e!409669 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!324290 lt!324289 mask!3328))))

(declare-fun d!99733 () Bool)

(declare-fun e!409666 () Bool)

(assert (=> d!99733 e!409666))

(declare-fun c!80453 () Bool)

(declare-fun lt!324420 () SeekEntryResult!7315)

(assert (=> d!99733 (= c!80453 (and ((_ is Intermediate!7315) lt!324420) (undefined!8127 lt!324420)))))

(declare-fun e!409668 () SeekEntryResult!7315)

(assert (=> d!99733 (= lt!324420 e!409668)))

(declare-fun c!80451 () Bool)

(assert (=> d!99733 (= c!80451 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!324421 () (_ BitVec 64))

(assert (=> d!99733 (= lt!324421 (select (arr!19708 lt!324289) index!1321))))

(assert (=> d!99733 (validMask!0 mask!3328)))

(assert (=> d!99733 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324290 lt!324289 mask!3328) lt!324420)))

(declare-fun b!732057 () Bool)

(assert (=> b!732057 (= e!409666 (bvsge (x!62638 lt!324420) #b01111111111111111111111111111110))))

(declare-fun b!732058 () Bool)

(assert (=> b!732058 (and (bvsge (index!31629 lt!324420) #b00000000000000000000000000000000) (bvslt (index!31629 lt!324420) (size!20129 lt!324289)))))

(declare-fun res!491908 () Bool)

(assert (=> b!732058 (= res!491908 (= (select (arr!19708 lt!324289) (index!31629 lt!324420)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!409665 () Bool)

(assert (=> b!732058 (=> res!491908 e!409665)))

(declare-fun b!732059 () Bool)

(assert (=> b!732059 (= e!409668 (Intermediate!7315 true index!1321 x!1131))))

(declare-fun b!732060 () Bool)

(assert (=> b!732060 (= e!409668 e!409669)))

(declare-fun c!80452 () Bool)

(assert (=> b!732060 (= c!80452 (or (= lt!324421 lt!324290) (= (bvadd lt!324421 lt!324421) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!732061 () Bool)

(assert (=> b!732061 (and (bvsge (index!31629 lt!324420) #b00000000000000000000000000000000) (bvslt (index!31629 lt!324420) (size!20129 lt!324289)))))

(assert (=> b!732061 (= e!409665 (= (select (arr!19708 lt!324289) (index!31629 lt!324420)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!732062 () Bool)

(declare-fun e!409667 () Bool)

(assert (=> b!732062 (= e!409666 e!409667)))

(declare-fun res!491907 () Bool)

(assert (=> b!732062 (= res!491907 (and ((_ is Intermediate!7315) lt!324420) (not (undefined!8127 lt!324420)) (bvslt (x!62638 lt!324420) #b01111111111111111111111111111110) (bvsge (x!62638 lt!324420) #b00000000000000000000000000000000) (bvsge (x!62638 lt!324420) x!1131)))))

(assert (=> b!732062 (=> (not res!491907) (not e!409667))))

(declare-fun b!732063 () Bool)

(assert (=> b!732063 (= e!409669 (Intermediate!7315 false index!1321 x!1131))))

(declare-fun b!732064 () Bool)

(assert (=> b!732064 (and (bvsge (index!31629 lt!324420) #b00000000000000000000000000000000) (bvslt (index!31629 lt!324420) (size!20129 lt!324289)))))

(declare-fun res!491909 () Bool)

(assert (=> b!732064 (= res!491909 (= (select (arr!19708 lt!324289) (index!31629 lt!324420)) lt!324290))))

(assert (=> b!732064 (=> res!491909 e!409665)))

(assert (=> b!732064 (= e!409667 e!409665)))

(assert (= (and d!99733 c!80451) b!732059))

(assert (= (and d!99733 (not c!80451)) b!732060))

(assert (= (and b!732060 c!80452) b!732063))

(assert (= (and b!732060 (not c!80452)) b!732056))

(assert (= (and d!99733 c!80453) b!732057))

(assert (= (and d!99733 (not c!80453)) b!732062))

(assert (= (and b!732062 res!491907) b!732064))

(assert (= (and b!732064 (not res!491909)) b!732058))

(assert (= (and b!732058 (not res!491908)) b!732061))

(declare-fun m!685301 () Bool)

(assert (=> b!732064 m!685301))

(declare-fun m!685303 () Bool)

(assert (=> d!99733 m!685303))

(assert (=> d!99733 m!685073))

(assert (=> b!732061 m!685301))

(assert (=> b!732056 m!685093))

(assert (=> b!732056 m!685093))

(declare-fun m!685305 () Bool)

(assert (=> b!732056 m!685305))

(assert (=> b!732058 m!685301))

(assert (=> b!731746 d!99733))

(declare-fun b!732065 () Bool)

(declare-fun e!409674 () SeekEntryResult!7315)

(assert (=> b!732065 (= e!409674 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!324290 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!324290 lt!324289 mask!3328))))

(declare-fun d!99735 () Bool)

(declare-fun e!409671 () Bool)

(assert (=> d!99735 e!409671))

(declare-fun c!80456 () Bool)

(declare-fun lt!324422 () SeekEntryResult!7315)

(assert (=> d!99735 (= c!80456 (and ((_ is Intermediate!7315) lt!324422) (undefined!8127 lt!324422)))))

(declare-fun e!409673 () SeekEntryResult!7315)

(assert (=> d!99735 (= lt!324422 e!409673)))

(declare-fun c!80454 () Bool)

(assert (=> d!99735 (= c!80454 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!324423 () (_ BitVec 64))

(assert (=> d!99735 (= lt!324423 (select (arr!19708 lt!324289) (toIndex!0 lt!324290 mask!3328)))))

(assert (=> d!99735 (validMask!0 mask!3328)))

(assert (=> d!99735 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324290 mask!3328) lt!324290 lt!324289 mask!3328) lt!324422)))

(declare-fun b!732066 () Bool)

(assert (=> b!732066 (= e!409671 (bvsge (x!62638 lt!324422) #b01111111111111111111111111111110))))

(declare-fun b!732067 () Bool)

(assert (=> b!732067 (and (bvsge (index!31629 lt!324422) #b00000000000000000000000000000000) (bvslt (index!31629 lt!324422) (size!20129 lt!324289)))))

(declare-fun res!491911 () Bool)

(assert (=> b!732067 (= res!491911 (= (select (arr!19708 lt!324289) (index!31629 lt!324422)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!409670 () Bool)

(assert (=> b!732067 (=> res!491911 e!409670)))

(declare-fun b!732068 () Bool)

(assert (=> b!732068 (= e!409673 (Intermediate!7315 true (toIndex!0 lt!324290 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!732069 () Bool)

(assert (=> b!732069 (= e!409673 e!409674)))

(declare-fun c!80455 () Bool)

(assert (=> b!732069 (= c!80455 (or (= lt!324423 lt!324290) (= (bvadd lt!324423 lt!324423) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!732070 () Bool)

(assert (=> b!732070 (and (bvsge (index!31629 lt!324422) #b00000000000000000000000000000000) (bvslt (index!31629 lt!324422) (size!20129 lt!324289)))))

(assert (=> b!732070 (= e!409670 (= (select (arr!19708 lt!324289) (index!31629 lt!324422)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!732071 () Bool)

(declare-fun e!409672 () Bool)

(assert (=> b!732071 (= e!409671 e!409672)))

(declare-fun res!491910 () Bool)

(assert (=> b!732071 (= res!491910 (and ((_ is Intermediate!7315) lt!324422) (not (undefined!8127 lt!324422)) (bvslt (x!62638 lt!324422) #b01111111111111111111111111111110) (bvsge (x!62638 lt!324422) #b00000000000000000000000000000000) (bvsge (x!62638 lt!324422) #b00000000000000000000000000000000)))))

(assert (=> b!732071 (=> (not res!491910) (not e!409672))))

(declare-fun b!732072 () Bool)

(assert (=> b!732072 (= e!409674 (Intermediate!7315 false (toIndex!0 lt!324290 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!732073 () Bool)

(assert (=> b!732073 (and (bvsge (index!31629 lt!324422) #b00000000000000000000000000000000) (bvslt (index!31629 lt!324422) (size!20129 lt!324289)))))

(declare-fun res!491912 () Bool)

(assert (=> b!732073 (= res!491912 (= (select (arr!19708 lt!324289) (index!31629 lt!324422)) lt!324290))))

(assert (=> b!732073 (=> res!491912 e!409670)))

(assert (=> b!732073 (= e!409672 e!409670)))

(assert (= (and d!99735 c!80454) b!732068))

(assert (= (and d!99735 (not c!80454)) b!732069))

(assert (= (and b!732069 c!80455) b!732072))

(assert (= (and b!732069 (not c!80455)) b!732065))

(assert (= (and d!99735 c!80456) b!732066))

(assert (= (and d!99735 (not c!80456)) b!732071))

(assert (= (and b!732071 res!491910) b!732073))

(assert (= (and b!732073 (not res!491912)) b!732067))

(assert (= (and b!732067 (not res!491911)) b!732070))

(declare-fun m!685307 () Bool)

(assert (=> b!732073 m!685307))

(assert (=> d!99735 m!685063))

(declare-fun m!685309 () Bool)

(assert (=> d!99735 m!685309))

(assert (=> d!99735 m!685073))

(assert (=> b!732070 m!685307))

(assert (=> b!732065 m!685063))

(declare-fun m!685311 () Bool)

(assert (=> b!732065 m!685311))

(assert (=> b!732065 m!685311))

(declare-fun m!685313 () Bool)

(assert (=> b!732065 m!685313))

(assert (=> b!732067 m!685307))

(assert (=> b!731746 d!99735))

(declare-fun d!99737 () Bool)

(declare-fun lt!324425 () (_ BitVec 32))

(declare-fun lt!324424 () (_ BitVec 32))

(assert (=> d!99737 (= lt!324425 (bvmul (bvxor lt!324424 (bvlshr lt!324424 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99737 (= lt!324424 ((_ extract 31 0) (bvand (bvxor lt!324290 (bvlshr lt!324290 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99737 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!491904 (let ((h!14824 ((_ extract 31 0) (bvand (bvxor lt!324290 (bvlshr lt!324290 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62644 (bvmul (bvxor h!14824 (bvlshr h!14824 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62644 (bvlshr x!62644 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!491904 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!491904 #b00000000000000000000000000000000))))))

(assert (=> d!99737 (= (toIndex!0 lt!324290 mask!3328) (bvand (bvxor lt!324425 (bvlshr lt!324425 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!731746 d!99737))

(check-sat (not b!731924) (not d!99723) (not d!99719) (not b!732010) (not b!732055) (not d!99733) (not b!732047) (not b!731835) (not d!99669) (not b!731884) (not b!732013) (not bm!34859) (not b!731923) (not b!732065) (not bm!34857) (not b!732035) (not d!99709) (not bm!34851) (not d!99729) (not d!99731) (not b!731883) (not b!732036) (not b!731861) (not d!99703) (not d!99735) (not d!99673) (not b!731949) (not b!731925) (not b!732056))
(check-sat)
