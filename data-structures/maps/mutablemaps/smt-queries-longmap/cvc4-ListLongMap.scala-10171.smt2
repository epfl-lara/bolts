; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119942 () Bool)

(assert start!119942)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95440 0))(
  ( (array!95441 (arr!46071 (Array (_ BitVec 32) (_ BitVec 64))) (size!46622 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95440)

(declare-fun b!1396026 () Bool)

(declare-fun e!790359 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10410 0))(
  ( (MissingZero!10410 (index!44010 (_ BitVec 32))) (Found!10410 (index!44011 (_ BitVec 32))) (Intermediate!10410 (undefined!11222 Bool) (index!44012 (_ BitVec 32)) (x!125677 (_ BitVec 32))) (Undefined!10410) (MissingVacant!10410 (index!44013 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95440 (_ BitVec 32)) SeekEntryResult!10410)

(assert (=> b!1396026 (= e!790359 (= (seekEntryOrOpen!0 (select (arr!46071 a!2901) j!112) a!2901 mask!2840) (Found!10410 j!112)))))

(declare-fun b!1396027 () Bool)

(declare-fun res!935213 () Bool)

(declare-fun e!790361 () Bool)

(assert (=> b!1396027 (=> (not res!935213) (not e!790361))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1396027 (= res!935213 (and (= (size!46622 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46622 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46622 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396028 () Bool)

(declare-fun res!935219 () Bool)

(assert (=> b!1396028 (=> (not res!935219) (not e!790361))))

(declare-datatypes ((List!32770 0))(
  ( (Nil!32767) (Cons!32766 (h!34005 (_ BitVec 64)) (t!47471 List!32770)) )
))
(declare-fun arrayNoDuplicates!0 (array!95440 (_ BitVec 32) List!32770) Bool)

(assert (=> b!1396028 (= res!935219 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32767))))

(declare-fun b!1396029 () Bool)

(declare-fun res!935218 () Bool)

(assert (=> b!1396029 (=> (not res!935218) (not e!790361))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396029 (= res!935218 (validKeyInArray!0 (select (arr!46071 a!2901) i!1037)))))

(declare-fun b!1396030 () Bool)

(declare-fun res!935214 () Bool)

(assert (=> b!1396030 (=> (not res!935214) (not e!790361))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95440 (_ BitVec 32)) Bool)

(assert (=> b!1396030 (= res!935214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396031 () Bool)

(declare-fun lt!613192 () SeekEntryResult!10410)

(declare-fun e!790360 () Bool)

(declare-fun lt!613191 () SeekEntryResult!10410)

(assert (=> b!1396031 (= e!790360 (or (= lt!613192 lt!613191) (not (is-Intermediate!10410 lt!613191)) (bvslt mask!2840 #b00000000000000000000000000000000) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95440 (_ BitVec 32)) SeekEntryResult!10410)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396031 (= lt!613191 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95441 (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46622 a!2901)) mask!2840))))

(declare-fun b!1396032 () Bool)

(declare-fun res!935220 () Bool)

(assert (=> b!1396032 (=> (not res!935220) (not e!790361))))

(assert (=> b!1396032 (= res!935220 (validKeyInArray!0 (select (arr!46071 a!2901) j!112)))))

(declare-fun b!1396033 () Bool)

(assert (=> b!1396033 (= e!790361 (not e!790360))))

(declare-fun res!935216 () Bool)

(assert (=> b!1396033 (=> res!935216 e!790360)))

(assert (=> b!1396033 (= res!935216 (or (not (is-Intermediate!10410 lt!613192)) (undefined!11222 lt!613192)))))

(assert (=> b!1396033 e!790359))

(declare-fun res!935215 () Bool)

(assert (=> b!1396033 (=> (not res!935215) (not e!790359))))

(assert (=> b!1396033 (= res!935215 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46774 0))(
  ( (Unit!46775) )
))
(declare-fun lt!613190 () Unit!46774)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95440 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46774)

(assert (=> b!1396033 (= lt!613190 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1396033 (= lt!613192 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46071 a!2901) j!112) mask!2840) (select (arr!46071 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!935217 () Bool)

(assert (=> start!119942 (=> (not res!935217) (not e!790361))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119942 (= res!935217 (validMask!0 mask!2840))))

(assert (=> start!119942 e!790361))

(assert (=> start!119942 true))

(declare-fun array_inv!35016 (array!95440) Bool)

(assert (=> start!119942 (array_inv!35016 a!2901)))

(assert (= (and start!119942 res!935217) b!1396027))

(assert (= (and b!1396027 res!935213) b!1396029))

(assert (= (and b!1396029 res!935218) b!1396032))

(assert (= (and b!1396032 res!935220) b!1396030))

(assert (= (and b!1396030 res!935214) b!1396028))

(assert (= (and b!1396028 res!935219) b!1396033))

(assert (= (and b!1396033 res!935215) b!1396026))

(assert (= (and b!1396033 (not res!935216)) b!1396031))

(declare-fun m!1282603 () Bool)

(assert (=> b!1396026 m!1282603))

(assert (=> b!1396026 m!1282603))

(declare-fun m!1282605 () Bool)

(assert (=> b!1396026 m!1282605))

(assert (=> b!1396032 m!1282603))

(assert (=> b!1396032 m!1282603))

(declare-fun m!1282607 () Bool)

(assert (=> b!1396032 m!1282607))

(declare-fun m!1282609 () Bool)

(assert (=> start!119942 m!1282609))

(declare-fun m!1282611 () Bool)

(assert (=> start!119942 m!1282611))

(declare-fun m!1282613 () Bool)

(assert (=> b!1396031 m!1282613))

(declare-fun m!1282615 () Bool)

(assert (=> b!1396031 m!1282615))

(assert (=> b!1396031 m!1282615))

(declare-fun m!1282617 () Bool)

(assert (=> b!1396031 m!1282617))

(assert (=> b!1396031 m!1282617))

(assert (=> b!1396031 m!1282615))

(declare-fun m!1282619 () Bool)

(assert (=> b!1396031 m!1282619))

(assert (=> b!1396033 m!1282603))

(declare-fun m!1282621 () Bool)

(assert (=> b!1396033 m!1282621))

(assert (=> b!1396033 m!1282603))

(declare-fun m!1282623 () Bool)

(assert (=> b!1396033 m!1282623))

(assert (=> b!1396033 m!1282621))

(assert (=> b!1396033 m!1282603))

(declare-fun m!1282625 () Bool)

(assert (=> b!1396033 m!1282625))

(declare-fun m!1282627 () Bool)

(assert (=> b!1396033 m!1282627))

(declare-fun m!1282629 () Bool)

(assert (=> b!1396028 m!1282629))

(declare-fun m!1282631 () Bool)

(assert (=> b!1396030 m!1282631))

(declare-fun m!1282633 () Bool)

(assert (=> b!1396029 m!1282633))

(assert (=> b!1396029 m!1282633))

(declare-fun m!1282635 () Bool)

(assert (=> b!1396029 m!1282635))

(push 1)

(assert (not b!1396030))

(assert (not b!1396032))

(assert (not b!1396033))

(assert (not b!1396028))

(assert (not b!1396029))

(assert (not b!1396031))

(assert (not start!119942))

(assert (not b!1396026))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!150739 () Bool)

(assert (=> d!150739 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119942 d!150739))

(declare-fun d!150743 () Bool)

(assert (=> d!150743 (= (array_inv!35016 a!2901) (bvsge (size!46622 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119942 d!150743))

(declare-fun b!1396059 () Bool)

(declare-fun e!790385 () Bool)

(declare-fun call!66849 () Bool)

(assert (=> b!1396059 (= e!790385 call!66849)))

(declare-fun d!150745 () Bool)

(declare-fun res!935236 () Bool)

(declare-fun e!790384 () Bool)

(assert (=> d!150745 (=> res!935236 e!790384)))

(assert (=> d!150745 (= res!935236 (bvsge #b00000000000000000000000000000000 (size!46622 a!2901)))))

(assert (=> d!150745 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32767) e!790384)))

(declare-fun bm!66846 () Bool)

(declare-fun c!129869 () Bool)

(assert (=> bm!66846 (= call!66849 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129869 (Cons!32766 (select (arr!46071 a!2901) #b00000000000000000000000000000000) Nil!32767) Nil!32767)))))

(declare-fun b!1396060 () Bool)

(declare-fun e!790383 () Bool)

(assert (=> b!1396060 (= e!790384 e!790383)))

(declare-fun res!935237 () Bool)

(assert (=> b!1396060 (=> (not res!935237) (not e!790383))))

(declare-fun e!790382 () Bool)

(assert (=> b!1396060 (= res!935237 (not e!790382))))

(declare-fun res!935238 () Bool)

(assert (=> b!1396060 (=> (not res!935238) (not e!790382))))

(assert (=> b!1396060 (= res!935238 (validKeyInArray!0 (select (arr!46071 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1396061 () Bool)

(assert (=> b!1396061 (= e!790385 call!66849)))

(declare-fun b!1396062 () Bool)

(assert (=> b!1396062 (= e!790383 e!790385)))

(assert (=> b!1396062 (= c!129869 (validKeyInArray!0 (select (arr!46071 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1396063 () Bool)

(declare-fun contains!9794 (List!32770 (_ BitVec 64)) Bool)

(assert (=> b!1396063 (= e!790382 (contains!9794 Nil!32767 (select (arr!46071 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!150745 (not res!935236)) b!1396060))

(assert (= (and b!1396060 res!935238) b!1396063))

(assert (= (and b!1396060 res!935237) b!1396062))

(assert (= (and b!1396062 c!129869) b!1396061))

(assert (= (and b!1396062 (not c!129869)) b!1396059))

(assert (= (or b!1396061 b!1396059) bm!66846))

(declare-fun m!1282645 () Bool)

(assert (=> bm!66846 m!1282645))

(declare-fun m!1282647 () Bool)

(assert (=> bm!66846 m!1282647))

(assert (=> b!1396060 m!1282645))

(assert (=> b!1396060 m!1282645))

(declare-fun m!1282649 () Bool)

(assert (=> b!1396060 m!1282649))

(assert (=> b!1396062 m!1282645))

(assert (=> b!1396062 m!1282645))

(assert (=> b!1396062 m!1282649))

(assert (=> b!1396063 m!1282645))

(assert (=> b!1396063 m!1282645))

(declare-fun m!1282651 () Bool)

(assert (=> b!1396063 m!1282651))

(assert (=> b!1396028 d!150745))

(declare-fun b!1396085 () Bool)

(declare-fun e!790402 () Bool)

(declare-fun call!66855 () Bool)

(assert (=> b!1396085 (= e!790402 call!66855)))

(declare-fun b!1396086 () Bool)

(declare-fun e!790401 () Bool)

(assert (=> b!1396086 (= e!790402 e!790401)))

(declare-fun lt!613211 () (_ BitVec 64))

(assert (=> b!1396086 (= lt!613211 (select (arr!46071 a!2901) j!112))))

(declare-fun lt!613213 () Unit!46774)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95440 (_ BitVec 64) (_ BitVec 32)) Unit!46774)

(assert (=> b!1396086 (= lt!613213 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!613211 j!112))))

(declare-fun arrayContainsKey!0 (array!95440 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1396086 (arrayContainsKey!0 a!2901 lt!613211 #b00000000000000000000000000000000)))

(declare-fun lt!613212 () Unit!46774)

(assert (=> b!1396086 (= lt!613212 lt!613213)))

(declare-fun res!935249 () Bool)

(assert (=> b!1396086 (= res!935249 (= (seekEntryOrOpen!0 (select (arr!46071 a!2901) j!112) a!2901 mask!2840) (Found!10410 j!112)))))

(assert (=> b!1396086 (=> (not res!935249) (not e!790401))))

(declare-fun bm!66852 () Bool)

(assert (=> bm!66852 (= call!66855 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1396087 () Bool)

(assert (=> b!1396087 (= e!790401 call!66855)))

(declare-fun b!1396084 () Bool)

(declare-fun e!790403 () Bool)

(assert (=> b!1396084 (= e!790403 e!790402)))

(declare-fun c!129875 () Bool)

(assert (=> b!1396084 (= c!129875 (validKeyInArray!0 (select (arr!46071 a!2901) j!112)))))

(declare-fun d!150755 () Bool)

(declare-fun res!935250 () Bool)

(assert (=> d!150755 (=> res!935250 e!790403)))

(assert (=> d!150755 (= res!935250 (bvsge j!112 (size!46622 a!2901)))))

(assert (=> d!150755 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!790403)))

(assert (= (and d!150755 (not res!935250)) b!1396084))

(assert (= (and b!1396084 c!129875) b!1396086))

(assert (= (and b!1396084 (not c!129875)) b!1396085))

(assert (= (and b!1396086 res!935249) b!1396087))

(assert (= (or b!1396087 b!1396085) bm!66852))

(assert (=> b!1396086 m!1282603))

(declare-fun m!1282661 () Bool)

(assert (=> b!1396086 m!1282661))

(declare-fun m!1282663 () Bool)

(assert (=> b!1396086 m!1282663))

(assert (=> b!1396086 m!1282603))

(assert (=> b!1396086 m!1282605))

(declare-fun m!1282665 () Bool)

(assert (=> bm!66852 m!1282665))

(assert (=> b!1396084 m!1282603))

(assert (=> b!1396084 m!1282603))

(assert (=> b!1396084 m!1282607))

(assert (=> b!1396033 d!150755))

(declare-fun d!150761 () Bool)

(assert (=> d!150761 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!613222 () Unit!46774)

(declare-fun choose!38 (array!95440 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46774)

(assert (=> d!150761 (= lt!613222 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150761 (validMask!0 mask!2840)))

(assert (=> d!150761 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!613222)))

(declare-fun bs!40626 () Bool)

(assert (= bs!40626 d!150761))

(assert (=> bs!40626 m!1282627))

(declare-fun m!1282667 () Bool)

(assert (=> bs!40626 m!1282667))

(assert (=> bs!40626 m!1282609))

(assert (=> b!1396033 d!150761))

(declare-fun b!1396163 () Bool)

(declare-fun e!790447 () SeekEntryResult!10410)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396163 (= e!790447 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46071 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46071 a!2901) j!112) a!2901 mask!2840))))

(declare-fun e!790448 () SeekEntryResult!10410)

(declare-fun b!1396164 () Bool)

(assert (=> b!1396164 (= e!790448 (Intermediate!10410 true (toIndex!0 (select (arr!46071 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun d!150763 () Bool)

(declare-fun e!790451 () Bool)

(assert (=> d!150763 e!790451))

(declare-fun c!129903 () Bool)

(declare-fun lt!613249 () SeekEntryResult!10410)

(assert (=> d!150763 (= c!129903 (and (is-Intermediate!10410 lt!613249) (undefined!11222 lt!613249)))))

(assert (=> d!150763 (= lt!613249 e!790448)))

(declare-fun c!129904 () Bool)

(assert (=> d!150763 (= c!129904 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!613248 () (_ BitVec 64))

(assert (=> d!150763 (= lt!613248 (select (arr!46071 a!2901) (toIndex!0 (select (arr!46071 a!2901) j!112) mask!2840)))))

(assert (=> d!150763 (validMask!0 mask!2840)))

(assert (=> d!150763 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46071 a!2901) j!112) mask!2840) (select (arr!46071 a!2901) j!112) a!2901 mask!2840) lt!613249)))

(declare-fun b!1396165 () Bool)

(assert (=> b!1396165 (and (bvsge (index!44012 lt!613249) #b00000000000000000000000000000000) (bvslt (index!44012 lt!613249) (size!46622 a!2901)))))

(declare-fun e!790450 () Bool)

(assert (=> b!1396165 (= e!790450 (= (select (arr!46071 a!2901) (index!44012 lt!613249)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1396166 () Bool)

(assert (=> b!1396166 (= e!790447 (Intermediate!10410 false (toIndex!0 (select (arr!46071 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1396167 () Bool)

(assert (=> b!1396167 (and (bvsge (index!44012 lt!613249) #b00000000000000000000000000000000) (bvslt (index!44012 lt!613249) (size!46622 a!2901)))))

(declare-fun res!935275 () Bool)

(assert (=> b!1396167 (= res!935275 (= (select (arr!46071 a!2901) (index!44012 lt!613249)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1396167 (=> res!935275 e!790450)))

(declare-fun b!1396168 () Bool)

(assert (=> b!1396168 (= e!790448 e!790447)))

(declare-fun c!129905 () Bool)

(assert (=> b!1396168 (= c!129905 (or (= lt!613248 (select (arr!46071 a!2901) j!112)) (= (bvadd lt!613248 lt!613248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1396169 () Bool)

(assert (=> b!1396169 (and (bvsge (index!44012 lt!613249) #b00000000000000000000000000000000) (bvslt (index!44012 lt!613249) (size!46622 a!2901)))))

(declare-fun res!935274 () Bool)

(assert (=> b!1396169 (= res!935274 (= (select (arr!46071 a!2901) (index!44012 lt!613249)) (select (arr!46071 a!2901) j!112)))))

(assert (=> b!1396169 (=> res!935274 e!790450)))

(declare-fun e!790449 () Bool)

(assert (=> b!1396169 (= e!790449 e!790450)))

(declare-fun b!1396170 () Bool)

(assert (=> b!1396170 (= e!790451 (bvsge (x!125677 lt!613249) #b01111111111111111111111111111110))))

(declare-fun b!1396171 () Bool)

(assert (=> b!1396171 (= e!790451 e!790449)))

(declare-fun res!935273 () Bool)

(assert (=> b!1396171 (= res!935273 (and (is-Intermediate!10410 lt!613249) (not (undefined!11222 lt!613249)) (bvslt (x!125677 lt!613249) #b01111111111111111111111111111110) (bvsge (x!125677 lt!613249) #b00000000000000000000000000000000) (bvsge (x!125677 lt!613249) #b00000000000000000000000000000000)))))

(assert (=> b!1396171 (=> (not res!935273) (not e!790449))))

(assert (= (and d!150763 c!129904) b!1396164))

(assert (= (and d!150763 (not c!129904)) b!1396168))

(assert (= (and b!1396168 c!129905) b!1396166))

(assert (= (and b!1396168 (not c!129905)) b!1396163))

(assert (= (and d!150763 c!129903) b!1396170))

(assert (= (and d!150763 (not c!129903)) b!1396171))

(assert (= (and b!1396171 res!935273) b!1396169))

(assert (= (and b!1396169 (not res!935274)) b!1396167))

(assert (= (and b!1396167 (not res!935275)) b!1396165))

(assert (=> b!1396163 m!1282621))

(declare-fun m!1282695 () Bool)

(assert (=> b!1396163 m!1282695))

(assert (=> b!1396163 m!1282695))

(assert (=> b!1396163 m!1282603))

(declare-fun m!1282697 () Bool)

(assert (=> b!1396163 m!1282697))

(declare-fun m!1282699 () Bool)

(assert (=> b!1396169 m!1282699))

(assert (=> b!1396167 m!1282699))

(assert (=> b!1396165 m!1282699))

(assert (=> d!150763 m!1282621))

(declare-fun m!1282701 () Bool)

(assert (=> d!150763 m!1282701))

(assert (=> d!150763 m!1282609))

(assert (=> b!1396033 d!150763))

(declare-fun d!150775 () Bool)

(declare-fun lt!613268 () (_ BitVec 32))

(declare-fun lt!613267 () (_ BitVec 32))

(assert (=> d!150775 (= lt!613268 (bvmul (bvxor lt!613267 (bvlshr lt!613267 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150775 (= lt!613267 ((_ extract 31 0) (bvand (bvxor (select (arr!46071 a!2901) j!112) (bvlshr (select (arr!46071 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150775 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!935276 (let ((h!34007 ((_ extract 31 0) (bvand (bvxor (select (arr!46071 a!2901) j!112) (bvlshr (select (arr!46071 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125681 (bvmul (bvxor h!34007 (bvlshr h!34007 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125681 (bvlshr x!125681 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!935276 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!935276 #b00000000000000000000000000000000))))))

(assert (=> d!150775 (= (toIndex!0 (select (arr!46071 a!2901) j!112) mask!2840) (bvand (bvxor lt!613268 (bvlshr lt!613268 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1396033 d!150775))

(declare-fun d!150787 () Bool)

(assert (=> d!150787 (= (validKeyInArray!0 (select (arr!46071 a!2901) i!1037)) (and (not (= (select (arr!46071 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46071 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1396029 d!150787))

(declare-fun b!1396186 () Bool)

(declare-fun e!790461 () Bool)

(declare-fun call!66860 () Bool)

(assert (=> b!1396186 (= e!790461 call!66860)))

(declare-fun b!1396187 () Bool)

(declare-fun e!790460 () Bool)

(assert (=> b!1396187 (= e!790461 e!790460)))

(declare-fun lt!613269 () (_ BitVec 64))

(assert (=> b!1396187 (= lt!613269 (select (arr!46071 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!613271 () Unit!46774)

(assert (=> b!1396187 (= lt!613271 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!613269 #b00000000000000000000000000000000))))

(assert (=> b!1396187 (arrayContainsKey!0 a!2901 lt!613269 #b00000000000000000000000000000000)))

(declare-fun lt!613270 () Unit!46774)

(assert (=> b!1396187 (= lt!613270 lt!613271)))

(declare-fun res!935282 () Bool)

(assert (=> b!1396187 (= res!935282 (= (seekEntryOrOpen!0 (select (arr!46071 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10410 #b00000000000000000000000000000000)))))

(assert (=> b!1396187 (=> (not res!935282) (not e!790460))))

(declare-fun bm!66857 () Bool)

(assert (=> bm!66857 (= call!66860 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1396188 () Bool)

(assert (=> b!1396188 (= e!790460 call!66860)))

(declare-fun b!1396185 () Bool)

(declare-fun e!790462 () Bool)

(assert (=> b!1396185 (= e!790462 e!790461)))

(declare-fun c!129910 () Bool)

(assert (=> b!1396185 (= c!129910 (validKeyInArray!0 (select (arr!46071 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!150789 () Bool)

(declare-fun res!935283 () Bool)

(assert (=> d!150789 (=> res!935283 e!790462)))

(assert (=> d!150789 (= res!935283 (bvsge #b00000000000000000000000000000000 (size!46622 a!2901)))))

(assert (=> d!150789 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!790462)))

(assert (= (and d!150789 (not res!935283)) b!1396185))

(assert (= (and b!1396185 c!129910) b!1396187))

(assert (= (and b!1396185 (not c!129910)) b!1396186))

(assert (= (and b!1396187 res!935282) b!1396188))

(assert (= (or b!1396188 b!1396186) bm!66857))

(assert (=> b!1396187 m!1282645))

(declare-fun m!1282719 () Bool)

(assert (=> b!1396187 m!1282719))

(declare-fun m!1282721 () Bool)

(assert (=> b!1396187 m!1282721))

(assert (=> b!1396187 m!1282645))

(declare-fun m!1282723 () Bool)

(assert (=> b!1396187 m!1282723))

(declare-fun m!1282725 () Bool)

(assert (=> bm!66857 m!1282725))

(assert (=> b!1396185 m!1282645))

(assert (=> b!1396185 m!1282645))

(assert (=> b!1396185 m!1282649))

(assert (=> b!1396030 d!150789))

(declare-fun b!1396259 () Bool)

(declare-fun e!790502 () SeekEntryResult!10410)

(assert (=> b!1396259 (= e!790502 Undefined!10410)))

(declare-fun b!1396260 () Bool)

(declare-fun c!129941 () Bool)

(declare-fun lt!613306 () (_ BitVec 64))

(assert (=> b!1396260 (= c!129941 (= lt!613306 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!790501 () SeekEntryResult!10410)

(declare-fun e!790503 () SeekEntryResult!10410)

(assert (=> b!1396260 (= e!790501 e!790503)))

(declare-fun lt!613307 () SeekEntryResult!10410)

(declare-fun b!1396261 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95440 (_ BitVec 32)) SeekEntryResult!10410)

(assert (=> b!1396261 (= e!790503 (seekKeyOrZeroReturnVacant!0 (x!125677 lt!613307) (index!44012 lt!613307) (index!44012 lt!613307) (select (arr!46071 a!2901) j!112) a!2901 mask!2840))))

(declare-fun d!150791 () Bool)

(declare-fun lt!613308 () SeekEntryResult!10410)

(assert (=> d!150791 (and (or (is-Undefined!10410 lt!613308) (not (is-Found!10410 lt!613308)) (and (bvsge (index!44011 lt!613308) #b00000000000000000000000000000000) (bvslt (index!44011 lt!613308) (size!46622 a!2901)))) (or (is-Undefined!10410 lt!613308) (is-Found!10410 lt!613308) (not (is-MissingZero!10410 lt!613308)) (and (bvsge (index!44010 lt!613308) #b00000000000000000000000000000000) (bvslt (index!44010 lt!613308) (size!46622 a!2901)))) (or (is-Undefined!10410 lt!613308) (is-Found!10410 lt!613308) (is-MissingZero!10410 lt!613308) (not (is-MissingVacant!10410 lt!613308)) (and (bvsge (index!44013 lt!613308) #b00000000000000000000000000000000) (bvslt (index!44013 lt!613308) (size!46622 a!2901)))) (or (is-Undefined!10410 lt!613308) (ite (is-Found!10410 lt!613308) (= (select (arr!46071 a!2901) (index!44011 lt!613308)) (select (arr!46071 a!2901) j!112)) (ite (is-MissingZero!10410 lt!613308) (= (select (arr!46071 a!2901) (index!44010 lt!613308)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10410 lt!613308) (= (select (arr!46071 a!2901) (index!44013 lt!613308)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!150791 (= lt!613308 e!790502)))

(declare-fun c!129940 () Bool)

(assert (=> d!150791 (= c!129940 (and (is-Intermediate!10410 lt!613307) (undefined!11222 lt!613307)))))

(assert (=> d!150791 (= lt!613307 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46071 a!2901) j!112) mask!2840) (select (arr!46071 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150791 (validMask!0 mask!2840)))

(assert (=> d!150791 (= (seekEntryOrOpen!0 (select (arr!46071 a!2901) j!112) a!2901 mask!2840) lt!613308)))

(declare-fun b!1396262 () Bool)

(assert (=> b!1396262 (= e!790502 e!790501)))

(assert (=> b!1396262 (= lt!613306 (select (arr!46071 a!2901) (index!44012 lt!613307)))))

(declare-fun c!129939 () Bool)

(assert (=> b!1396262 (= c!129939 (= lt!613306 (select (arr!46071 a!2901) j!112)))))

(declare-fun b!1396263 () Bool)

(assert (=> b!1396263 (= e!790503 (MissingZero!10410 (index!44012 lt!613307)))))

(declare-fun b!1396264 () Bool)

(assert (=> b!1396264 (= e!790501 (Found!10410 (index!44012 lt!613307)))))

(assert (= (and d!150791 c!129940) b!1396259))

(assert (= (and d!150791 (not c!129940)) b!1396262))

(assert (= (and b!1396262 c!129939) b!1396264))

(assert (= (and b!1396262 (not c!129939)) b!1396260))

(assert (= (and b!1396260 c!129941) b!1396263))

(assert (= (and b!1396260 (not c!129941)) b!1396261))

(assert (=> b!1396261 m!1282603))

(declare-fun m!1282765 () Bool)

(assert (=> b!1396261 m!1282765))

(declare-fun m!1282767 () Bool)

(assert (=> d!150791 m!1282767))

(declare-fun m!1282769 () Bool)

(assert (=> d!150791 m!1282769))

(assert (=> d!150791 m!1282621))

(assert (=> d!150791 m!1282603))

(assert (=> d!150791 m!1282625))

(assert (=> d!150791 m!1282603))

(assert (=> d!150791 m!1282621))

(assert (=> d!150791 m!1282609))

(declare-fun m!1282771 () Bool)

(assert (=> d!150791 m!1282771))

(declare-fun m!1282773 () Bool)

(assert (=> b!1396262 m!1282773))

(assert (=> b!1396026 d!150791))

(declare-fun b!1396265 () Bool)

(declare-fun e!790504 () SeekEntryResult!10410)

(assert (=> b!1396265 (= e!790504 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95441 (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46622 a!2901)) mask!2840))))

(declare-fun b!1396266 () Bool)

(declare-fun e!790505 () SeekEntryResult!10410)

(assert (=> b!1396266 (= e!790505 (Intermediate!10410 true (toIndex!0 (select (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun d!150805 () Bool)

(declare-fun e!790508 () Bool)

(assert (=> d!150805 e!790508))

(declare-fun c!129942 () Bool)

(declare-fun lt!613310 () SeekEntryResult!10410)

(assert (=> d!150805 (= c!129942 (and (is-Intermediate!10410 lt!613310) (undefined!11222 lt!613310)))))

(assert (=> d!150805 (= lt!613310 e!790505)))

(declare-fun c!129943 () Bool)

(assert (=> d!150805 (= c!129943 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!613309 () (_ BitVec 64))

(assert (=> d!150805 (= lt!613309 (select (arr!46071 (array!95441 (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46622 a!2901))) (toIndex!0 (select (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!150805 (validMask!0 mask!2840)))

(assert (=> d!150805 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95441 (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46622 a!2901)) mask!2840) lt!613310)))

(declare-fun b!1396267 () Bool)

(assert (=> b!1396267 (and (bvsge (index!44012 lt!613310) #b00000000000000000000000000000000) (bvslt (index!44012 lt!613310) (size!46622 (array!95441 (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46622 a!2901)))))))

(declare-fun e!790507 () Bool)

(assert (=> b!1396267 (= e!790507 (= (select (arr!46071 (array!95441 (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46622 a!2901))) (index!44012 lt!613310)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1396268 () Bool)

(assert (=> b!1396268 (= e!790504 (Intermediate!10410 false (toIndex!0 (select (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1396269 () Bool)

(assert (=> b!1396269 (and (bvsge (index!44012 lt!613310) #b00000000000000000000000000000000) (bvslt (index!44012 lt!613310) (size!46622 (array!95441 (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46622 a!2901)))))))

(declare-fun res!935301 () Bool)

(assert (=> b!1396269 (= res!935301 (= (select (arr!46071 (array!95441 (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46622 a!2901))) (index!44012 lt!613310)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1396269 (=> res!935301 e!790507)))

(declare-fun b!1396270 () Bool)

(assert (=> b!1396270 (= e!790505 e!790504)))

(declare-fun c!129944 () Bool)

(assert (=> b!1396270 (= c!129944 (or (= lt!613309 (select (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!613309 lt!613309) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1396271 () Bool)

(assert (=> b!1396271 (and (bvsge (index!44012 lt!613310) #b00000000000000000000000000000000) (bvslt (index!44012 lt!613310) (size!46622 (array!95441 (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46622 a!2901)))))))

(declare-fun res!935300 () Bool)

(assert (=> b!1396271 (= res!935300 (= (select (arr!46071 (array!95441 (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46622 a!2901))) (index!44012 lt!613310)) (select (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(assert (=> b!1396271 (=> res!935300 e!790507)))

(declare-fun e!790506 () Bool)

(assert (=> b!1396271 (= e!790506 e!790507)))

(declare-fun b!1396272 () Bool)

(assert (=> b!1396272 (= e!790508 (bvsge (x!125677 lt!613310) #b01111111111111111111111111111110))))

(declare-fun b!1396273 () Bool)

(assert (=> b!1396273 (= e!790508 e!790506)))

(declare-fun res!935299 () Bool)

(assert (=> b!1396273 (= res!935299 (and (is-Intermediate!10410 lt!613310) (not (undefined!11222 lt!613310)) (bvslt (x!125677 lt!613310) #b01111111111111111111111111111110) (bvsge (x!125677 lt!613310) #b00000000000000000000000000000000) (bvsge (x!125677 lt!613310) #b00000000000000000000000000000000)))))

(assert (=> b!1396273 (=> (not res!935299) (not e!790506))))

(assert (= (and d!150805 c!129943) b!1396266))

(assert (= (and d!150805 (not c!129943)) b!1396270))

(assert (= (and b!1396270 c!129944) b!1396268))

(assert (= (and b!1396270 (not c!129944)) b!1396265))

(assert (= (and d!150805 c!129942) b!1396272))

(assert (= (and d!150805 (not c!129942)) b!1396273))

(assert (= (and b!1396273 res!935299) b!1396271))

(assert (= (and b!1396271 (not res!935300)) b!1396269))

(assert (= (and b!1396269 (not res!935301)) b!1396267))

(assert (=> b!1396265 m!1282617))

(declare-fun m!1282775 () Bool)

(assert (=> b!1396265 m!1282775))

(assert (=> b!1396265 m!1282775))

(assert (=> b!1396265 m!1282615))

(declare-fun m!1282777 () Bool)

(assert (=> b!1396265 m!1282777))

(declare-fun m!1282779 () Bool)

(assert (=> b!1396271 m!1282779))

(assert (=> b!1396269 m!1282779))

(assert (=> b!1396267 m!1282779))

(assert (=> d!150805 m!1282617))

(declare-fun m!1282781 () Bool)

(assert (=> d!150805 m!1282781))

(assert (=> d!150805 m!1282609))

(assert (=> b!1396031 d!150805))

(declare-fun d!150807 () Bool)

(declare-fun lt!613312 () (_ BitVec 32))

(declare-fun lt!613311 () (_ BitVec 32))

(assert (=> d!150807 (= lt!613312 (bvmul (bvxor lt!613311 (bvlshr lt!613311 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150807 (= lt!613311 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150807 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!935276 (let ((h!34007 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125681 (bvmul (bvxor h!34007 (bvlshr h!34007 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125681 (bvlshr x!125681 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!935276 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!935276 #b00000000000000000000000000000000))))))

(assert (=> d!150807 (= (toIndex!0 (select (store (arr!46071 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!613312 (bvlshr lt!613312 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1396031 d!150807))

(declare-fun d!150809 () Bool)

(assert (=> d!150809 (= (validKeyInArray!0 (select (arr!46071 a!2901) j!112)) (and (not (= (select (arr!46071 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46071 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1396032 d!150809))

(push 1)

