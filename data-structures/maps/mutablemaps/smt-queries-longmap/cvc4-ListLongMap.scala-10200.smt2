; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120170 () Bool)

(assert start!120170)

(declare-fun b!1398638 () Bool)

(declare-fun res!937661 () Bool)

(declare-fun e!791832 () Bool)

(assert (=> b!1398638 (=> (not res!937661) (not e!791832))))

(declare-datatypes ((array!95617 0))(
  ( (array!95618 (arr!46158 (Array (_ BitVec 32) (_ BitVec 64))) (size!46709 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95617)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398638 (= res!937661 (validKeyInArray!0 (select (arr!46158 a!2901) i!1037)))))

(declare-fun b!1398639 () Bool)

(declare-fun e!791833 () Bool)

(declare-fun e!791834 () Bool)

(assert (=> b!1398639 (= e!791833 e!791834)))

(declare-fun res!937665 () Bool)

(assert (=> b!1398639 (=> res!937665 e!791834)))

(declare-datatypes ((SeekEntryResult!10497 0))(
  ( (MissingZero!10497 (index!44358 (_ BitVec 32))) (Found!10497 (index!44359 (_ BitVec 32))) (Intermediate!10497 (undefined!11309 Bool) (index!44360 (_ BitVec 32)) (x!126002 (_ BitVec 32))) (Undefined!10497) (MissingVacant!10497 (index!44361 (_ BitVec 32))) )
))
(declare-fun lt!615053 () SeekEntryResult!10497)

(declare-fun lt!615055 () SeekEntryResult!10497)

(assert (=> b!1398639 (= res!937665 (or (= lt!615053 lt!615055) (not (is-Intermediate!10497 lt!615055))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!615057 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95617 (_ BitVec 32)) SeekEntryResult!10497)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398639 (= lt!615055 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615057 mask!2840) lt!615057 (array!95618 (store (arr!46158 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46709 a!2901)) mask!2840))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1398639 (= lt!615057 (select (store (arr!46158 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun e!791830 () Bool)

(declare-fun b!1398640 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95617 (_ BitVec 32)) SeekEntryResult!10497)

(assert (=> b!1398640 (= e!791830 (= (seekEntryOrOpen!0 (select (arr!46158 a!2901) j!112) a!2901 mask!2840) (Found!10497 j!112)))))

(declare-fun b!1398641 () Bool)

(declare-fun res!937668 () Bool)

(assert (=> b!1398641 (=> (not res!937668) (not e!791832))))

(assert (=> b!1398641 (= res!937668 (and (= (size!46709 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46709 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46709 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1398642 () Bool)

(declare-fun res!937660 () Bool)

(assert (=> b!1398642 (=> (not res!937660) (not e!791832))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95617 (_ BitVec 32)) Bool)

(assert (=> b!1398642 (= res!937660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!937662 () Bool)

(assert (=> start!120170 (=> (not res!937662) (not e!791832))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120170 (= res!937662 (validMask!0 mask!2840))))

(assert (=> start!120170 e!791832))

(assert (=> start!120170 true))

(declare-fun array_inv!35103 (array!95617) Bool)

(assert (=> start!120170 (array_inv!35103 a!2901)))

(declare-fun b!1398643 () Bool)

(declare-fun res!937667 () Bool)

(assert (=> b!1398643 (=> (not res!937667) (not e!791832))))

(assert (=> b!1398643 (= res!937667 (validKeyInArray!0 (select (arr!46158 a!2901) j!112)))))

(declare-fun b!1398644 () Bool)

(assert (=> b!1398644 (= e!791834 (or (bvslt mask!2840 #b00000000000000000000000000000000) (bvslt (index!44360 lt!615055) #b00000000000000000000000000000000) (bvsge (index!44360 lt!615055) (bvadd #b00000000000000000000000000000001 mask!2840)) (and (bvsle (x!126002 lt!615055) #b01111111111111111111111111111110) (bvsge (x!126002 lt!615055) #b00000000000000000000000000000000))))))

(assert (=> b!1398644 (and (not (undefined!11309 lt!615055)) (= (index!44360 lt!615055) i!1037) (bvslt (x!126002 lt!615055) (x!126002 lt!615053)) (= (select (store (arr!46158 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44360 lt!615055)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!46948 0))(
  ( (Unit!46949) )
))
(declare-fun lt!615054 () Unit!46948)

(declare-fun lt!615056 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95617 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46948)

(assert (=> b!1398644 (= lt!615054 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615056 (x!126002 lt!615053) (index!44360 lt!615053) (x!126002 lt!615055) (index!44360 lt!615055) (undefined!11309 lt!615055) mask!2840))))

(declare-fun b!1398645 () Bool)

(declare-fun res!937664 () Bool)

(assert (=> b!1398645 (=> (not res!937664) (not e!791832))))

(declare-datatypes ((List!32857 0))(
  ( (Nil!32854) (Cons!32853 (h!34095 (_ BitVec 64)) (t!47558 List!32857)) )
))
(declare-fun arrayNoDuplicates!0 (array!95617 (_ BitVec 32) List!32857) Bool)

(assert (=> b!1398645 (= res!937664 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32854))))

(declare-fun b!1398646 () Bool)

(assert (=> b!1398646 (= e!791832 (not e!791833))))

(declare-fun res!937666 () Bool)

(assert (=> b!1398646 (=> res!937666 e!791833)))

(assert (=> b!1398646 (= res!937666 (or (not (is-Intermediate!10497 lt!615053)) (undefined!11309 lt!615053)))))

(assert (=> b!1398646 e!791830))

(declare-fun res!937663 () Bool)

(assert (=> b!1398646 (=> (not res!937663) (not e!791830))))

(assert (=> b!1398646 (= res!937663 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!615058 () Unit!46948)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95617 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46948)

(assert (=> b!1398646 (= lt!615058 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1398646 (= lt!615053 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615056 (select (arr!46158 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1398646 (= lt!615056 (toIndex!0 (select (arr!46158 a!2901) j!112) mask!2840))))

(assert (= (and start!120170 res!937662) b!1398641))

(assert (= (and b!1398641 res!937668) b!1398638))

(assert (= (and b!1398638 res!937661) b!1398643))

(assert (= (and b!1398643 res!937667) b!1398642))

(assert (= (and b!1398642 res!937660) b!1398645))

(assert (= (and b!1398645 res!937664) b!1398646))

(assert (= (and b!1398646 res!937663) b!1398640))

(assert (= (and b!1398646 (not res!937666)) b!1398639))

(assert (= (and b!1398639 (not res!937665)) b!1398644))

(declare-fun m!1285941 () Bool)

(assert (=> b!1398645 m!1285941))

(declare-fun m!1285943 () Bool)

(assert (=> b!1398638 m!1285943))

(assert (=> b!1398638 m!1285943))

(declare-fun m!1285945 () Bool)

(assert (=> b!1398638 m!1285945))

(declare-fun m!1285947 () Bool)

(assert (=> b!1398646 m!1285947))

(declare-fun m!1285949 () Bool)

(assert (=> b!1398646 m!1285949))

(assert (=> b!1398646 m!1285947))

(declare-fun m!1285951 () Bool)

(assert (=> b!1398646 m!1285951))

(declare-fun m!1285953 () Bool)

(assert (=> b!1398646 m!1285953))

(assert (=> b!1398646 m!1285947))

(declare-fun m!1285955 () Bool)

(assert (=> b!1398646 m!1285955))

(assert (=> b!1398640 m!1285947))

(assert (=> b!1398640 m!1285947))

(declare-fun m!1285957 () Bool)

(assert (=> b!1398640 m!1285957))

(declare-fun m!1285959 () Bool)

(assert (=> b!1398642 m!1285959))

(declare-fun m!1285961 () Bool)

(assert (=> b!1398639 m!1285961))

(declare-fun m!1285963 () Bool)

(assert (=> b!1398639 m!1285963))

(assert (=> b!1398639 m!1285961))

(declare-fun m!1285965 () Bool)

(assert (=> b!1398639 m!1285965))

(declare-fun m!1285967 () Bool)

(assert (=> b!1398639 m!1285967))

(assert (=> b!1398643 m!1285947))

(assert (=> b!1398643 m!1285947))

(declare-fun m!1285969 () Bool)

(assert (=> b!1398643 m!1285969))

(declare-fun m!1285971 () Bool)

(assert (=> start!120170 m!1285971))

(declare-fun m!1285973 () Bool)

(assert (=> start!120170 m!1285973))

(assert (=> b!1398644 m!1285963))

(declare-fun m!1285975 () Bool)

(assert (=> b!1398644 m!1285975))

(declare-fun m!1285977 () Bool)

(assert (=> b!1398644 m!1285977))

(push 1)

(assert (not b!1398640))

(assert (not b!1398639))

(assert (not b!1398638))

(assert (not b!1398646))

(assert (not b!1398642))

(assert (not start!120170))

(assert (not b!1398644))

(assert (not b!1398645))

(assert (not b!1398643))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!150887 () Bool)

(declare-fun res!937690 () Bool)

(declare-fun e!791865 () Bool)

(assert (=> d!150887 (=> res!937690 e!791865)))

(assert (=> d!150887 (= res!937690 (bvsge #b00000000000000000000000000000000 (size!46709 a!2901)))))

(assert (=> d!150887 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!791865)))

(declare-fun bm!66867 () Bool)

(declare-fun call!66870 () Bool)

(assert (=> bm!66867 (= call!66870 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1398694 () Bool)

(declare-fun e!791867 () Bool)

(assert (=> b!1398694 (= e!791867 call!66870)))

(declare-fun b!1398695 () Bool)

(declare-fun e!791866 () Bool)

(assert (=> b!1398695 (= e!791866 e!791867)))

(declare-fun lt!615087 () (_ BitVec 64))

(assert (=> b!1398695 (= lt!615087 (select (arr!46158 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!615086 () Unit!46948)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95617 (_ BitVec 64) (_ BitVec 32)) Unit!46948)

(assert (=> b!1398695 (= lt!615086 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!615087 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!95617 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1398695 (arrayContainsKey!0 a!2901 lt!615087 #b00000000000000000000000000000000)))

(declare-fun lt!615088 () Unit!46948)

(assert (=> b!1398695 (= lt!615088 lt!615086)))

(declare-fun res!937689 () Bool)

(assert (=> b!1398695 (= res!937689 (= (seekEntryOrOpen!0 (select (arr!46158 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10497 #b00000000000000000000000000000000)))))

(assert (=> b!1398695 (=> (not res!937689) (not e!791867))))

(declare-fun b!1398696 () Bool)

(assert (=> b!1398696 (= e!791866 call!66870)))

(declare-fun b!1398697 () Bool)

(assert (=> b!1398697 (= e!791865 e!791866)))

(declare-fun c!129962 () Bool)

(assert (=> b!1398697 (= c!129962 (validKeyInArray!0 (select (arr!46158 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!150887 (not res!937690)) b!1398697))

(assert (= (and b!1398697 c!129962) b!1398695))

(assert (= (and b!1398697 (not c!129962)) b!1398696))

(assert (= (and b!1398695 res!937689) b!1398694))

(assert (= (or b!1398694 b!1398696) bm!66867))

(declare-fun m!1285997 () Bool)

(assert (=> bm!66867 m!1285997))

(declare-fun m!1285999 () Bool)

(assert (=> b!1398695 m!1285999))

(declare-fun m!1286001 () Bool)

(assert (=> b!1398695 m!1286001))

(declare-fun m!1286003 () Bool)

(assert (=> b!1398695 m!1286003))

(assert (=> b!1398695 m!1285999))

(declare-fun m!1286005 () Bool)

(assert (=> b!1398695 m!1286005))

(assert (=> b!1398697 m!1285999))

(assert (=> b!1398697 m!1285999))

(declare-fun m!1286007 () Bool)

(assert (=> b!1398697 m!1286007))

(assert (=> b!1398642 d!150887))

(declare-fun d!150893 () Bool)

(assert (=> d!150893 (= (validKeyInArray!0 (select (arr!46158 a!2901) j!112)) (and (not (= (select (arr!46158 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46158 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1398643 d!150893))

(declare-fun d!150895 () Bool)

(assert (=> d!150895 (= (validKeyInArray!0 (select (arr!46158 a!2901) i!1037)) (and (not (= (select (arr!46158 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46158 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1398638 d!150895))

(declare-fun d!150897 () Bool)

(assert (=> d!150897 (and (not (undefined!11309 lt!615055)) (= (index!44360 lt!615055) i!1037) (bvslt (x!126002 lt!615055) (x!126002 lt!615053)))))

(declare-fun lt!615103 () Unit!46948)

(declare-fun choose!62 (array!95617 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46948)

(assert (=> d!150897 (= lt!615103 (choose!62 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615056 (x!126002 lt!615053) (index!44360 lt!615053) (x!126002 lt!615055) (index!44360 lt!615055) (undefined!11309 lt!615055) mask!2840))))

(assert (=> d!150897 (validMask!0 mask!2840)))

(assert (=> d!150897 (= (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615056 (x!126002 lt!615053) (index!44360 lt!615053) (x!126002 lt!615055) (index!44360 lt!615055) (undefined!11309 lt!615055) mask!2840) lt!615103)))

(declare-fun bs!40717 () Bool)

(assert (= bs!40717 d!150897))

(declare-fun m!1286017 () Bool)

(assert (=> bs!40717 m!1286017))

(assert (=> bs!40717 m!1285971))

(assert (=> b!1398644 d!150897))

(declare-fun d!150903 () Bool)

(assert (=> d!150903 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!120170 d!150903))

(declare-fun d!150909 () Bool)

(assert (=> d!150909 (= (array_inv!35103 a!2901) (bvsge (size!46709 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!120170 d!150909))

(declare-fun b!1398819 () Bool)

(declare-fun e!791943 () Bool)

(declare-fun lt!615152 () SeekEntryResult!10497)

(assert (=> b!1398819 (= e!791943 (bvsge (x!126002 lt!615152) #b01111111111111111111111111111110))))

(declare-fun b!1398820 () Bool)

(declare-fun e!791940 () SeekEntryResult!10497)

(assert (=> b!1398820 (= e!791940 (Intermediate!10497 false (toIndex!0 lt!615057 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1398821 () Bool)

(assert (=> b!1398821 (and (bvsge (index!44360 lt!615152) #b00000000000000000000000000000000) (bvslt (index!44360 lt!615152) (size!46709 (array!95618 (store (arr!46158 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46709 a!2901)))))))

(declare-fun res!937729 () Bool)

(assert (=> b!1398821 (= res!937729 (= (select (arr!46158 (array!95618 (store (arr!46158 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46709 a!2901))) (index!44360 lt!615152)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!791942 () Bool)

(assert (=> b!1398821 (=> res!937729 e!791942)))

(declare-fun b!1398822 () Bool)

(declare-fun e!791944 () Bool)

(assert (=> b!1398822 (= e!791943 e!791944)))

(declare-fun res!937728 () Bool)

(assert (=> b!1398822 (= res!937728 (and (is-Intermediate!10497 lt!615152) (not (undefined!11309 lt!615152)) (bvslt (x!126002 lt!615152) #b01111111111111111111111111111110) (bvsge (x!126002 lt!615152) #b00000000000000000000000000000000) (bvsge (x!126002 lt!615152) #b00000000000000000000000000000000)))))

(assert (=> b!1398822 (=> (not res!937728) (not e!791944))))

(declare-fun d!150911 () Bool)

(assert (=> d!150911 e!791943))

(declare-fun c!130007 () Bool)

(assert (=> d!150911 (= c!130007 (and (is-Intermediate!10497 lt!615152) (undefined!11309 lt!615152)))))

(declare-fun e!791941 () SeekEntryResult!10497)

(assert (=> d!150911 (= lt!615152 e!791941)))

(declare-fun c!130008 () Bool)

(assert (=> d!150911 (= c!130008 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!615151 () (_ BitVec 64))

(assert (=> d!150911 (= lt!615151 (select (arr!46158 (array!95618 (store (arr!46158 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46709 a!2901))) (toIndex!0 lt!615057 mask!2840)))))

(assert (=> d!150911 (validMask!0 mask!2840)))

(assert (=> d!150911 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615057 mask!2840) lt!615057 (array!95618 (store (arr!46158 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46709 a!2901)) mask!2840) lt!615152)))

(declare-fun b!1398823 () Bool)

(assert (=> b!1398823 (and (bvsge (index!44360 lt!615152) #b00000000000000000000000000000000) (bvslt (index!44360 lt!615152) (size!46709 (array!95618 (store (arr!46158 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46709 a!2901)))))))

(declare-fun res!937727 () Bool)

(assert (=> b!1398823 (= res!937727 (= (select (arr!46158 (array!95618 (store (arr!46158 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46709 a!2901))) (index!44360 lt!615152)) lt!615057))))

(assert (=> b!1398823 (=> res!937727 e!791942)))

(assert (=> b!1398823 (= e!791944 e!791942)))

(declare-fun b!1398824 () Bool)

(assert (=> b!1398824 (= e!791941 (Intermediate!10497 true (toIndex!0 lt!615057 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1398825 () Bool)

(assert (=> b!1398825 (= e!791941 e!791940)))

(declare-fun c!130006 () Bool)

(assert (=> b!1398825 (= c!130006 (or (= lt!615151 lt!615057) (= (bvadd lt!615151 lt!615151) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1398826 () Bool)

(assert (=> b!1398826 (and (bvsge (index!44360 lt!615152) #b00000000000000000000000000000000) (bvslt (index!44360 lt!615152) (size!46709 (array!95618 (store (arr!46158 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46709 a!2901)))))))

(assert (=> b!1398826 (= e!791942 (= (select (arr!46158 (array!95618 (store (arr!46158 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46709 a!2901))) (index!44360 lt!615152)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1398827 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398827 (= e!791940 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!615057 mask!2840) #b00000000000000000000000000000000 mask!2840) lt!615057 (array!95618 (store (arr!46158 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46709 a!2901)) mask!2840))))

(assert (= (and d!150911 c!130008) b!1398824))

(assert (= (and d!150911 (not c!130008)) b!1398825))

(assert (= (and b!1398825 c!130006) b!1398820))

(assert (= (and b!1398825 (not c!130006)) b!1398827))

(assert (= (and d!150911 c!130007) b!1398819))

(assert (= (and d!150911 (not c!130007)) b!1398822))

(assert (= (and b!1398822 res!937728) b!1398823))

(assert (= (and b!1398823 (not res!937727)) b!1398821))

(assert (= (and b!1398821 (not res!937729)) b!1398826))

(assert (=> d!150911 m!1285961))

(declare-fun m!1286075 () Bool)

(assert (=> d!150911 m!1286075))

(assert (=> d!150911 m!1285971))

(assert (=> b!1398827 m!1285961))

(declare-fun m!1286077 () Bool)

(assert (=> b!1398827 m!1286077))

(assert (=> b!1398827 m!1286077))

(declare-fun m!1286079 () Bool)

(assert (=> b!1398827 m!1286079))

(declare-fun m!1286081 () Bool)

(assert (=> b!1398823 m!1286081))

(assert (=> b!1398826 m!1286081))

(assert (=> b!1398821 m!1286081))

(assert (=> b!1398639 d!150911))

(declare-fun d!150933 () Bool)

(declare-fun lt!615165 () (_ BitVec 32))

(declare-fun lt!615164 () (_ BitVec 32))

(assert (=> d!150933 (= lt!615165 (bvmul (bvxor lt!615164 (bvlshr lt!615164 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150933 (= lt!615164 ((_ extract 31 0) (bvand (bvxor lt!615057 (bvlshr lt!615057 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150933 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!937730 (let ((h!34098 ((_ extract 31 0) (bvand (bvxor lt!615057 (bvlshr lt!615057 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!126011 (bvmul (bvxor h!34098 (bvlshr h!34098 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!126011 (bvlshr x!126011 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!937730 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!937730 #b00000000000000000000000000000000))))))

(assert (=> d!150933 (= (toIndex!0 lt!615057 mask!2840) (bvand (bvxor lt!615165 (bvlshr lt!615165 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1398639 d!150933))

(declare-fun b!1398866 () Bool)

(declare-fun e!791976 () Bool)

(declare-fun call!66884 () Bool)

(assert (=> b!1398866 (= e!791976 call!66884)))

(declare-fun b!1398867 () Bool)

(assert (=> b!1398867 (= e!791976 call!66884)))

(declare-fun b!1398868 () Bool)

(declare-fun e!791974 () Bool)

(assert (=> b!1398868 (= e!791974 e!791976)))

(declare-fun c!130018 () Bool)

(assert (=> b!1398868 (= c!130018 (validKeyInArray!0 (select (arr!46158 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1398869 () Bool)

(declare-fun e!791973 () Bool)

(assert (=> b!1398869 (= e!791973 e!791974)))

(declare-fun res!937752 () Bool)

(assert (=> b!1398869 (=> (not res!937752) (not e!791974))))

(declare-fun e!791975 () Bool)

(assert (=> b!1398869 (= res!937752 (not e!791975))))

(declare-fun res!937753 () Bool)

(assert (=> b!1398869 (=> (not res!937753) (not e!791975))))

(assert (=> b!1398869 (= res!937753 (validKeyInArray!0 (select (arr!46158 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1398870 () Bool)

(declare-fun contains!9798 (List!32857 (_ BitVec 64)) Bool)

(assert (=> b!1398870 (= e!791975 (contains!9798 Nil!32854 (select (arr!46158 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66881 () Bool)

(assert (=> bm!66881 (= call!66884 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130018 (Cons!32853 (select (arr!46158 a!2901) #b00000000000000000000000000000000) Nil!32854) Nil!32854)))))

(declare-fun d!150943 () Bool)

(declare-fun res!937751 () Bool)

(assert (=> d!150943 (=> res!937751 e!791973)))

(assert (=> d!150943 (= res!937751 (bvsge #b00000000000000000000000000000000 (size!46709 a!2901)))))

(assert (=> d!150943 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32854) e!791973)))

(assert (= (and d!150943 (not res!937751)) b!1398869))

(assert (= (and b!1398869 res!937753) b!1398870))

(assert (= (and b!1398869 res!937752) b!1398868))

(assert (= (and b!1398868 c!130018) b!1398867))

(assert (= (and b!1398868 (not c!130018)) b!1398866))

(assert (= (or b!1398867 b!1398866) bm!66881))

(assert (=> b!1398868 m!1285999))

(assert (=> b!1398868 m!1285999))

(assert (=> b!1398868 m!1286007))

(assert (=> b!1398869 m!1285999))

(assert (=> b!1398869 m!1285999))

(assert (=> b!1398869 m!1286007))

(assert (=> b!1398870 m!1285999))

(assert (=> b!1398870 m!1285999))

(declare-fun m!1286109 () Bool)

(assert (=> b!1398870 m!1286109))

(assert (=> bm!66881 m!1285999))

(declare-fun m!1286111 () Bool)

(assert (=> bm!66881 m!1286111))

(assert (=> b!1398645 d!150943))

(declare-fun b!1398883 () Bool)

(declare-fun lt!615175 () SeekEntryResult!10497)

(declare-fun e!791983 () SeekEntryResult!10497)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95617 (_ BitVec 32)) SeekEntryResult!10497)

(assert (=> b!1398883 (= e!791983 (seekKeyOrZeroReturnVacant!0 (x!126002 lt!615175) (index!44360 lt!615175) (index!44360 lt!615175) (select (arr!46158 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1398884 () Bool)

(declare-fun e!791985 () SeekEntryResult!10497)

(declare-fun e!791984 () SeekEntryResult!10497)

(assert (=> b!1398884 (= e!791985 e!791984)))

(declare-fun lt!615177 () (_ BitVec 64))

(assert (=> b!1398884 (= lt!615177 (select (arr!46158 a!2901) (index!44360 lt!615175)))))

(declare-fun c!130027 () Bool)

(assert (=> b!1398884 (= c!130027 (= lt!615177 (select (arr!46158 a!2901) j!112)))))

(declare-fun b!1398885 () Bool)

(assert (=> b!1398885 (= e!791984 (Found!10497 (index!44360 lt!615175)))))

(declare-fun b!1398886 () Bool)

(declare-fun c!130026 () Bool)

(assert (=> b!1398886 (= c!130026 (= lt!615177 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1398886 (= e!791984 e!791983)))

(declare-fun d!150947 () Bool)

(declare-fun lt!615176 () SeekEntryResult!10497)

(assert (=> d!150947 (and (or (is-Undefined!10497 lt!615176) (not (is-Found!10497 lt!615176)) (and (bvsge (index!44359 lt!615176) #b00000000000000000000000000000000) (bvslt (index!44359 lt!615176) (size!46709 a!2901)))) (or (is-Undefined!10497 lt!615176) (is-Found!10497 lt!615176) (not (is-MissingZero!10497 lt!615176)) (and (bvsge (index!44358 lt!615176) #b00000000000000000000000000000000) (bvslt (index!44358 lt!615176) (size!46709 a!2901)))) (or (is-Undefined!10497 lt!615176) (is-Found!10497 lt!615176) (is-MissingZero!10497 lt!615176) (not (is-MissingVacant!10497 lt!615176)) (and (bvsge (index!44361 lt!615176) #b00000000000000000000000000000000) (bvslt (index!44361 lt!615176) (size!46709 a!2901)))) (or (is-Undefined!10497 lt!615176) (ite (is-Found!10497 lt!615176) (= (select (arr!46158 a!2901) (index!44359 lt!615176)) (select (arr!46158 a!2901) j!112)) (ite (is-MissingZero!10497 lt!615176) (= (select (arr!46158 a!2901) (index!44358 lt!615176)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10497 lt!615176) (= (select (arr!46158 a!2901) (index!44361 lt!615176)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

