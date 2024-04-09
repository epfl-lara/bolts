; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118806 () Bool)

(assert start!118806)

(declare-fun b!1387834 () Bool)

(declare-fun res!928579 () Bool)

(declare-fun e!786179 () Bool)

(assert (=> b!1387834 (=> (not res!928579) (not e!786179))))

(declare-datatypes ((array!94895 0))(
  ( (array!94896 (arr!45818 (Array (_ BitVec 32) (_ BitVec 64))) (size!46369 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94895)

(declare-datatypes ((List!32526 0))(
  ( (Nil!32523) (Cons!32522 (h!33734 (_ BitVec 64)) (t!47227 List!32526)) )
))
(declare-fun arrayNoDuplicates!0 (array!94895 (_ BitVec 32) List!32526) Bool)

(assert (=> b!1387834 (= res!928579 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32523))))

(declare-fun b!1387835 () Bool)

(declare-fun e!786176 () Bool)

(assert (=> b!1387835 (= e!786179 e!786176)))

(declare-fun res!928578 () Bool)

(assert (=> b!1387835 (=> (not res!928578) (not e!786176))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1387835 (= res!928578 (bvsge startIndex!16 (bvsub (size!46369 a!2938) #b00000000000000000000000000000001)))))

(declare-datatypes ((Unit!46348 0))(
  ( (Unit!46349) )
))
(declare-fun lt!610033 () Unit!46348)

(declare-fun e!786175 () Unit!46348)

(assert (=> b!1387835 (= lt!610033 e!786175)))

(declare-fun c!129074 () Bool)

(declare-fun e!786177 () Bool)

(assert (=> b!1387835 (= c!129074 e!786177)))

(declare-fun res!928580 () Bool)

(assert (=> b!1387835 (=> (not res!928580) (not e!786177))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1387835 (= res!928580 (not (= startIndex!16 i!1065)))))

(declare-fun lt!610032 () array!94895)

(assert (=> b!1387835 (= lt!610032 (array!94896 (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46369 a!2938)))))

(declare-fun b!1387836 () Bool)

(declare-fun lt!610031 () Unit!46348)

(assert (=> b!1387836 (= e!786175 lt!610031)))

(declare-fun lt!610030 () Unit!46348)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94895 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46348)

(assert (=> b!1387836 (= lt!610030 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10183 0))(
  ( (MissingZero!10183 (index!43102 (_ BitVec 32))) (Found!10183 (index!43103 (_ BitVec 32))) (Intermediate!10183 (undefined!10995 Bool) (index!43104 (_ BitVec 32)) (x!124724 (_ BitVec 32))) (Undefined!10183) (MissingVacant!10183 (index!43105 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94895 (_ BitVec 32)) SeekEntryResult!10183)

(assert (=> b!1387836 (= (seekEntryOrOpen!0 (select (arr!45818 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610032 mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94895 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46348)

(assert (=> b!1387836 (= lt!610031 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94895 (_ BitVec 32)) Bool)

(assert (=> b!1387836 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1387837 () Bool)

(declare-fun Unit!46350 () Unit!46348)

(assert (=> b!1387837 (= e!786175 Unit!46350)))

(declare-fun b!1387838 () Bool)

(declare-fun res!928577 () Bool)

(assert (=> b!1387838 (=> (not res!928577) (not e!786179))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1387838 (= res!928577 (validKeyInArray!0 (select (arr!45818 a!2938) i!1065)))))

(declare-fun b!1387839 () Bool)

(assert (=> b!1387839 (= e!786177 (validKeyInArray!0 (select (arr!45818 a!2938) startIndex!16)))))

(declare-fun b!1387840 () Bool)

(assert (=> b!1387840 (= e!786176 (not (arrayForallSeekEntryOrOpenFound!0 startIndex!16 lt!610032 mask!2987)))))

(declare-fun b!1387841 () Bool)

(declare-fun res!928575 () Bool)

(assert (=> b!1387841 (=> (not res!928575) (not e!786179))))

(assert (=> b!1387841 (= res!928575 (and (not (= (select (arr!45818 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45818 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1387842 () Bool)

(declare-fun res!928576 () Bool)

(assert (=> b!1387842 (=> (not res!928576) (not e!786179))))

(assert (=> b!1387842 (= res!928576 (and (= (size!46369 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46369 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46369 a!2938))))))

(declare-fun res!928574 () Bool)

(assert (=> start!118806 (=> (not res!928574) (not e!786179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118806 (= res!928574 (validMask!0 mask!2987))))

(assert (=> start!118806 e!786179))

(assert (=> start!118806 true))

(declare-fun array_inv!34763 (array!94895) Bool)

(assert (=> start!118806 (array_inv!34763 a!2938)))

(declare-fun b!1387843 () Bool)

(declare-fun res!928581 () Bool)

(assert (=> b!1387843 (=> (not res!928581) (not e!786179))))

(assert (=> b!1387843 (= res!928581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118806 res!928574) b!1387842))

(assert (= (and b!1387842 res!928576) b!1387838))

(assert (= (and b!1387838 res!928577) b!1387834))

(assert (= (and b!1387834 res!928579) b!1387843))

(assert (= (and b!1387843 res!928581) b!1387841))

(assert (= (and b!1387841 res!928575) b!1387835))

(assert (= (and b!1387835 res!928580) b!1387839))

(assert (= (and b!1387835 c!129074) b!1387836))

(assert (= (and b!1387835 (not c!129074)) b!1387837))

(assert (= (and b!1387835 res!928578) b!1387840))

(declare-fun m!1273549 () Bool)

(assert (=> start!118806 m!1273549))

(declare-fun m!1273551 () Bool)

(assert (=> start!118806 m!1273551))

(declare-fun m!1273553 () Bool)

(assert (=> b!1387843 m!1273553))

(declare-fun m!1273555 () Bool)

(assert (=> b!1387836 m!1273555))

(declare-fun m!1273557 () Bool)

(assert (=> b!1387836 m!1273557))

(declare-fun m!1273559 () Bool)

(assert (=> b!1387836 m!1273559))

(declare-fun m!1273561 () Bool)

(assert (=> b!1387836 m!1273561))

(assert (=> b!1387836 m!1273557))

(declare-fun m!1273563 () Bool)

(assert (=> b!1387836 m!1273563))

(declare-fun m!1273565 () Bool)

(assert (=> b!1387836 m!1273565))

(declare-fun m!1273567 () Bool)

(assert (=> b!1387836 m!1273567))

(assert (=> b!1387836 m!1273565))

(declare-fun m!1273569 () Bool)

(assert (=> b!1387836 m!1273569))

(assert (=> b!1387839 m!1273565))

(assert (=> b!1387839 m!1273565))

(declare-fun m!1273571 () Bool)

(assert (=> b!1387839 m!1273571))

(assert (=> b!1387835 m!1273559))

(declare-fun m!1273573 () Bool)

(assert (=> b!1387834 m!1273573))

(declare-fun m!1273575 () Bool)

(assert (=> b!1387840 m!1273575))

(declare-fun m!1273577 () Bool)

(assert (=> b!1387841 m!1273577))

(assert (=> b!1387838 m!1273577))

(assert (=> b!1387838 m!1273577))

(declare-fun m!1273579 () Bool)

(assert (=> b!1387838 m!1273579))

(check-sat (not b!1387839) (not start!118806) (not b!1387838) (not b!1387843) (not b!1387834) (not b!1387840) (not b!1387836))
(check-sat)
(get-model)

(declare-fun b!1387886 () Bool)

(declare-fun e!786202 () SeekEntryResult!10183)

(declare-fun lt!610053 () SeekEntryResult!10183)

(assert (=> b!1387886 (= e!786202 (MissingZero!10183 (index!43104 lt!610053)))))

(declare-fun b!1387887 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!94895 (_ BitVec 32)) SeekEntryResult!10183)

(assert (=> b!1387887 (= e!786202 (seekKeyOrZeroReturnVacant!0 (x!124724 lt!610053) (index!43104 lt!610053) (index!43104 lt!610053) (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610032 mask!2987))))

(declare-fun b!1387888 () Bool)

(declare-fun c!129084 () Bool)

(declare-fun lt!610052 () (_ BitVec 64))

(assert (=> b!1387888 (= c!129084 (= lt!610052 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!786203 () SeekEntryResult!10183)

(assert (=> b!1387888 (= e!786203 e!786202)))

(declare-fun b!1387889 () Bool)

(assert (=> b!1387889 (= e!786203 (Found!10183 (index!43104 lt!610053)))))

(declare-fun b!1387890 () Bool)

(declare-fun e!786201 () SeekEntryResult!10183)

(assert (=> b!1387890 (= e!786201 Undefined!10183)))

(declare-fun b!1387891 () Bool)

(assert (=> b!1387891 (= e!786201 e!786203)))

(assert (=> b!1387891 (= lt!610052 (select (arr!45818 lt!610032) (index!43104 lt!610053)))))

(declare-fun c!129086 () Bool)

(assert (=> b!1387891 (= c!129086 (= lt!610052 (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)))))

(declare-fun d!149657 () Bool)

(declare-fun lt!610054 () SeekEntryResult!10183)

(get-info :version)

(assert (=> d!149657 (and (or ((_ is Undefined!10183) lt!610054) (not ((_ is Found!10183) lt!610054)) (and (bvsge (index!43103 lt!610054) #b00000000000000000000000000000000) (bvslt (index!43103 lt!610054) (size!46369 lt!610032)))) (or ((_ is Undefined!10183) lt!610054) ((_ is Found!10183) lt!610054) (not ((_ is MissingZero!10183) lt!610054)) (and (bvsge (index!43102 lt!610054) #b00000000000000000000000000000000) (bvslt (index!43102 lt!610054) (size!46369 lt!610032)))) (or ((_ is Undefined!10183) lt!610054) ((_ is Found!10183) lt!610054) ((_ is MissingZero!10183) lt!610054) (not ((_ is MissingVacant!10183) lt!610054)) (and (bvsge (index!43105 lt!610054) #b00000000000000000000000000000000) (bvslt (index!43105 lt!610054) (size!46369 lt!610032)))) (or ((_ is Undefined!10183) lt!610054) (ite ((_ is Found!10183) lt!610054) (= (select (arr!45818 lt!610032) (index!43103 lt!610054)) (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)) (ite ((_ is MissingZero!10183) lt!610054) (= (select (arr!45818 lt!610032) (index!43102 lt!610054)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10183) lt!610054) (= (select (arr!45818 lt!610032) (index!43105 lt!610054)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!149657 (= lt!610054 e!786201)))

(declare-fun c!129085 () Bool)

(assert (=> d!149657 (= c!129085 (and ((_ is Intermediate!10183) lt!610053) (undefined!10995 lt!610053)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!94895 (_ BitVec 32)) SeekEntryResult!10183)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!149657 (= lt!610053 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610032 mask!2987))))

(assert (=> d!149657 (validMask!0 mask!2987)))

(assert (=> d!149657 (= (seekEntryOrOpen!0 (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610032 mask!2987) lt!610054)))

(assert (= (and d!149657 c!129085) b!1387890))

(assert (= (and d!149657 (not c!129085)) b!1387891))

(assert (= (and b!1387891 c!129086) b!1387889))

(assert (= (and b!1387891 (not c!129086)) b!1387888))

(assert (= (and b!1387888 c!129084) b!1387886))

(assert (= (and b!1387888 (not c!129084)) b!1387887))

(assert (=> b!1387887 m!1273557))

(declare-fun m!1273613 () Bool)

(assert (=> b!1387887 m!1273613))

(declare-fun m!1273615 () Bool)

(assert (=> b!1387891 m!1273615))

(assert (=> d!149657 m!1273557))

(declare-fun m!1273617 () Bool)

(assert (=> d!149657 m!1273617))

(assert (=> d!149657 m!1273617))

(assert (=> d!149657 m!1273557))

(declare-fun m!1273619 () Bool)

(assert (=> d!149657 m!1273619))

(declare-fun m!1273621 () Bool)

(assert (=> d!149657 m!1273621))

(declare-fun m!1273623 () Bool)

(assert (=> d!149657 m!1273623))

(declare-fun m!1273625 () Bool)

(assert (=> d!149657 m!1273625))

(assert (=> d!149657 m!1273549))

(assert (=> b!1387836 d!149657))

(declare-fun d!149659 () Bool)

(assert (=> d!149659 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun lt!610057 () Unit!46348)

(declare-fun choose!38 (array!94895 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46348)

(assert (=> d!149659 (= lt!610057 (choose!38 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> d!149659 (validMask!0 mask!2987)))

(assert (=> d!149659 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16) lt!610057)))

(declare-fun bs!40334 () Bool)

(assert (= bs!40334 d!149659))

(assert (=> bs!40334 m!1273569))

(declare-fun m!1273627 () Bool)

(assert (=> bs!40334 m!1273627))

(assert (=> bs!40334 m!1273549))

(assert (=> b!1387836 d!149659))

(declare-fun b!1387922 () Bool)

(declare-fun e!786228 () Bool)

(declare-fun call!66605 () Bool)

(assert (=> b!1387922 (= e!786228 call!66605)))

(declare-fun b!1387923 () Bool)

(declare-fun e!786227 () Bool)

(assert (=> b!1387923 (= e!786227 call!66605)))

(declare-fun bm!66602 () Bool)

(assert (=> bm!66602 (= call!66605 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001) a!2938 mask!2987))))

(declare-fun b!1387924 () Bool)

(declare-fun e!786229 () Bool)

(assert (=> b!1387924 (= e!786229 e!786228)))

(declare-fun c!129094 () Bool)

(assert (=> b!1387924 (= c!129094 (validKeyInArray!0 (select (arr!45818 a!2938) startIndex!16)))))

(declare-fun d!149663 () Bool)

(declare-fun res!928622 () Bool)

(assert (=> d!149663 (=> res!928622 e!786229)))

(assert (=> d!149663 (= res!928622 (bvsge startIndex!16 (size!46369 a!2938)))))

(assert (=> d!149663 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987) e!786229)))

(declare-fun b!1387925 () Bool)

(assert (=> b!1387925 (= e!786228 e!786227)))

(declare-fun lt!610073 () (_ BitVec 64))

(assert (=> b!1387925 (= lt!610073 (select (arr!45818 a!2938) startIndex!16))))

(declare-fun lt!610075 () Unit!46348)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94895 (_ BitVec 64) (_ BitVec 32)) Unit!46348)

(assert (=> b!1387925 (= lt!610075 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!610073 startIndex!16))))

(declare-fun arrayContainsKey!0 (array!94895 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1387925 (arrayContainsKey!0 a!2938 lt!610073 #b00000000000000000000000000000000)))

(declare-fun lt!610074 () Unit!46348)

(assert (=> b!1387925 (= lt!610074 lt!610075)))

(declare-fun res!928623 () Bool)

(assert (=> b!1387925 (= res!928623 (= (seekEntryOrOpen!0 (select (arr!45818 a!2938) startIndex!16) a!2938 mask!2987) (Found!10183 startIndex!16)))))

(assert (=> b!1387925 (=> (not res!928623) (not e!786227))))

(assert (= (and d!149663 (not res!928622)) b!1387924))

(assert (= (and b!1387924 c!129094) b!1387925))

(assert (= (and b!1387924 (not c!129094)) b!1387922))

(assert (= (and b!1387925 res!928623) b!1387923))

(assert (= (or b!1387923 b!1387922) bm!66602))

(declare-fun m!1273641 () Bool)

(assert (=> bm!66602 m!1273641))

(assert (=> b!1387924 m!1273565))

(assert (=> b!1387924 m!1273565))

(assert (=> b!1387924 m!1273571))

(assert (=> b!1387925 m!1273565))

(declare-fun m!1273643 () Bool)

(assert (=> b!1387925 m!1273643))

(declare-fun m!1273645 () Bool)

(assert (=> b!1387925 m!1273645))

(assert (=> b!1387925 m!1273565))

(assert (=> b!1387925 m!1273567))

(assert (=> b!1387836 d!149663))

(declare-fun d!149671 () Bool)

(declare-fun e!786251 () Bool)

(assert (=> d!149671 e!786251))

(declare-fun res!928639 () Bool)

(assert (=> d!149671 (=> (not res!928639) (not e!786251))))

(assert (=> d!149671 (= res!928639 (and (or (bvslt i!1065 #b00000000000000000000000000000000) (bvsge i!1065 (size!46369 a!2938)) (and (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46369 a!2938)))) (or (bvslt i!1065 #b00000000000000000000000000000000) (bvsge i!1065 (size!46369 a!2938)) (and (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46369 a!2938)))) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46369 a!2938))))))

(declare-fun lt!610096 () Unit!46348)

(declare-fun choose!14 (array!94895 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46348)

(assert (=> d!149671 (= lt!610096 (choose!14 a!2938 i!1065 startIndex!16 mask!2987))))

(assert (=> d!149671 (validMask!0 mask!2987)))

(assert (=> d!149671 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987) lt!610096)))

(declare-fun b!1387953 () Bool)

(assert (=> b!1387953 (= e!786251 (= (seekEntryOrOpen!0 (select (arr!45818 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94896 (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46369 a!2938)) mask!2987)))))

(assert (= (and d!149671 res!928639) b!1387953))

(declare-fun m!1273683 () Bool)

(assert (=> d!149671 m!1273683))

(assert (=> d!149671 m!1273549))

(assert (=> b!1387953 m!1273565))

(assert (=> b!1387953 m!1273567))

(assert (=> b!1387953 m!1273559))

(assert (=> b!1387953 m!1273557))

(declare-fun m!1273685 () Bool)

(assert (=> b!1387953 m!1273685))

(assert (=> b!1387953 m!1273565))

(assert (=> b!1387953 m!1273557))

(assert (=> b!1387836 d!149671))

(declare-fun b!1387954 () Bool)

(declare-fun e!786253 () SeekEntryResult!10183)

(declare-fun lt!610098 () SeekEntryResult!10183)

(assert (=> b!1387954 (= e!786253 (MissingZero!10183 (index!43104 lt!610098)))))

(declare-fun b!1387955 () Bool)

(assert (=> b!1387955 (= e!786253 (seekKeyOrZeroReturnVacant!0 (x!124724 lt!610098) (index!43104 lt!610098) (index!43104 lt!610098) (select (arr!45818 a!2938) startIndex!16) a!2938 mask!2987))))

(declare-fun b!1387956 () Bool)

(declare-fun c!129101 () Bool)

(declare-fun lt!610097 () (_ BitVec 64))

(assert (=> b!1387956 (= c!129101 (= lt!610097 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!786254 () SeekEntryResult!10183)

(assert (=> b!1387956 (= e!786254 e!786253)))

(declare-fun b!1387957 () Bool)

(assert (=> b!1387957 (= e!786254 (Found!10183 (index!43104 lt!610098)))))

(declare-fun b!1387958 () Bool)

(declare-fun e!786252 () SeekEntryResult!10183)

(assert (=> b!1387958 (= e!786252 Undefined!10183)))

(declare-fun b!1387959 () Bool)

(assert (=> b!1387959 (= e!786252 e!786254)))

(assert (=> b!1387959 (= lt!610097 (select (arr!45818 a!2938) (index!43104 lt!610098)))))

(declare-fun c!129103 () Bool)

(assert (=> b!1387959 (= c!129103 (= lt!610097 (select (arr!45818 a!2938) startIndex!16)))))

(declare-fun d!149687 () Bool)

(declare-fun lt!610099 () SeekEntryResult!10183)

(assert (=> d!149687 (and (or ((_ is Undefined!10183) lt!610099) (not ((_ is Found!10183) lt!610099)) (and (bvsge (index!43103 lt!610099) #b00000000000000000000000000000000) (bvslt (index!43103 lt!610099) (size!46369 a!2938)))) (or ((_ is Undefined!10183) lt!610099) ((_ is Found!10183) lt!610099) (not ((_ is MissingZero!10183) lt!610099)) (and (bvsge (index!43102 lt!610099) #b00000000000000000000000000000000) (bvslt (index!43102 lt!610099) (size!46369 a!2938)))) (or ((_ is Undefined!10183) lt!610099) ((_ is Found!10183) lt!610099) ((_ is MissingZero!10183) lt!610099) (not ((_ is MissingVacant!10183) lt!610099)) (and (bvsge (index!43105 lt!610099) #b00000000000000000000000000000000) (bvslt (index!43105 lt!610099) (size!46369 a!2938)))) (or ((_ is Undefined!10183) lt!610099) (ite ((_ is Found!10183) lt!610099) (= (select (arr!45818 a!2938) (index!43103 lt!610099)) (select (arr!45818 a!2938) startIndex!16)) (ite ((_ is MissingZero!10183) lt!610099) (= (select (arr!45818 a!2938) (index!43102 lt!610099)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10183) lt!610099) (= (select (arr!45818 a!2938) (index!43105 lt!610099)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!149687 (= lt!610099 e!786252)))

(declare-fun c!129102 () Bool)

(assert (=> d!149687 (= c!129102 (and ((_ is Intermediate!10183) lt!610098) (undefined!10995 lt!610098)))))

(assert (=> d!149687 (= lt!610098 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45818 a!2938) startIndex!16) mask!2987) (select (arr!45818 a!2938) startIndex!16) a!2938 mask!2987))))

(assert (=> d!149687 (validMask!0 mask!2987)))

(assert (=> d!149687 (= (seekEntryOrOpen!0 (select (arr!45818 a!2938) startIndex!16) a!2938 mask!2987) lt!610099)))

(assert (= (and d!149687 c!129102) b!1387958))

(assert (= (and d!149687 (not c!129102)) b!1387959))

(assert (= (and b!1387959 c!129103) b!1387957))

(assert (= (and b!1387959 (not c!129103)) b!1387956))

(assert (= (and b!1387956 c!129101) b!1387954))

(assert (= (and b!1387956 (not c!129101)) b!1387955))

(assert (=> b!1387955 m!1273565))

(declare-fun m!1273687 () Bool)

(assert (=> b!1387955 m!1273687))

(declare-fun m!1273689 () Bool)

(assert (=> b!1387959 m!1273689))

(assert (=> d!149687 m!1273565))

(declare-fun m!1273691 () Bool)

(assert (=> d!149687 m!1273691))

(assert (=> d!149687 m!1273691))

(assert (=> d!149687 m!1273565))

(declare-fun m!1273693 () Bool)

(assert (=> d!149687 m!1273693))

(declare-fun m!1273695 () Bool)

(assert (=> d!149687 m!1273695))

(declare-fun m!1273697 () Bool)

(assert (=> d!149687 m!1273697))

(declare-fun m!1273699 () Bool)

(assert (=> d!149687 m!1273699))

(assert (=> d!149687 m!1273549))

(assert (=> b!1387836 d!149687))

(declare-fun b!1387960 () Bool)

(declare-fun e!786256 () Bool)

(declare-fun call!66612 () Bool)

(assert (=> b!1387960 (= e!786256 call!66612)))

(declare-fun b!1387961 () Bool)

(declare-fun e!786255 () Bool)

(assert (=> b!1387961 (= e!786255 call!66612)))

(declare-fun bm!66609 () Bool)

(assert (=> bm!66609 (= call!66612 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2938 mask!2987))))

(declare-fun b!1387962 () Bool)

(declare-fun e!786257 () Bool)

(assert (=> b!1387962 (= e!786257 e!786256)))

(declare-fun c!129104 () Bool)

(assert (=> b!1387962 (= c!129104 (validKeyInArray!0 (select (arr!45818 a!2938) #b00000000000000000000000000000000)))))

(declare-fun d!149689 () Bool)

(declare-fun res!928640 () Bool)

(assert (=> d!149689 (=> res!928640 e!786257)))

(assert (=> d!149689 (= res!928640 (bvsge #b00000000000000000000000000000000 (size!46369 a!2938)))))

(assert (=> d!149689 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987) e!786257)))

(declare-fun b!1387963 () Bool)

(assert (=> b!1387963 (= e!786256 e!786255)))

(declare-fun lt!610100 () (_ BitVec 64))

(assert (=> b!1387963 (= lt!610100 (select (arr!45818 a!2938) #b00000000000000000000000000000000))))

(declare-fun lt!610102 () Unit!46348)

(assert (=> b!1387963 (= lt!610102 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!610100 #b00000000000000000000000000000000))))

(assert (=> b!1387963 (arrayContainsKey!0 a!2938 lt!610100 #b00000000000000000000000000000000)))

(declare-fun lt!610101 () Unit!46348)

(assert (=> b!1387963 (= lt!610101 lt!610102)))

(declare-fun res!928641 () Bool)

(assert (=> b!1387963 (= res!928641 (= (seekEntryOrOpen!0 (select (arr!45818 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987) (Found!10183 #b00000000000000000000000000000000)))))

(assert (=> b!1387963 (=> (not res!928641) (not e!786255))))

(assert (= (and d!149689 (not res!928640)) b!1387962))

(assert (= (and b!1387962 c!129104) b!1387963))

(assert (= (and b!1387962 (not c!129104)) b!1387960))

(assert (= (and b!1387963 res!928641) b!1387961))

(assert (= (or b!1387961 b!1387960) bm!66609))

(declare-fun m!1273701 () Bool)

(assert (=> bm!66609 m!1273701))

(declare-fun m!1273703 () Bool)

(assert (=> b!1387962 m!1273703))

(assert (=> b!1387962 m!1273703))

(declare-fun m!1273705 () Bool)

(assert (=> b!1387962 m!1273705))

(assert (=> b!1387963 m!1273703))

(declare-fun m!1273707 () Bool)

(assert (=> b!1387963 m!1273707))

(declare-fun m!1273709 () Bool)

(assert (=> b!1387963 m!1273709))

(assert (=> b!1387963 m!1273703))

(declare-fun m!1273711 () Bool)

(assert (=> b!1387963 m!1273711))

(assert (=> b!1387843 d!149689))

(declare-fun d!149691 () Bool)

(assert (=> d!149691 (= (validMask!0 mask!2987) (and (or (= mask!2987 #b00000000000000000000000000000111) (= mask!2987 #b00000000000000000000000000001111) (= mask!2987 #b00000000000000000000000000011111) (= mask!2987 #b00000000000000000000000000111111) (= mask!2987 #b00000000000000000000000001111111) (= mask!2987 #b00000000000000000000000011111111) (= mask!2987 #b00000000000000000000000111111111) (= mask!2987 #b00000000000000000000001111111111) (= mask!2987 #b00000000000000000000011111111111) (= mask!2987 #b00000000000000000000111111111111) (= mask!2987 #b00000000000000000001111111111111) (= mask!2987 #b00000000000000000011111111111111) (= mask!2987 #b00000000000000000111111111111111) (= mask!2987 #b00000000000000001111111111111111) (= mask!2987 #b00000000000000011111111111111111) (= mask!2987 #b00000000000000111111111111111111) (= mask!2987 #b00000000000001111111111111111111) (= mask!2987 #b00000000000011111111111111111111) (= mask!2987 #b00000000000111111111111111111111) (= mask!2987 #b00000000001111111111111111111111) (= mask!2987 #b00000000011111111111111111111111) (= mask!2987 #b00000000111111111111111111111111) (= mask!2987 #b00000001111111111111111111111111) (= mask!2987 #b00000011111111111111111111111111) (= mask!2987 #b00000111111111111111111111111111) (= mask!2987 #b00001111111111111111111111111111) (= mask!2987 #b00011111111111111111111111111111) (= mask!2987 #b00111111111111111111111111111111)) (bvsle mask!2987 #b00111111111111111111111111111111)))))

(assert (=> start!118806 d!149691))

(declare-fun d!149699 () Bool)

(assert (=> d!149699 (= (array_inv!34763 a!2938) (bvsge (size!46369 a!2938) #b00000000000000000000000000000000))))

(assert (=> start!118806 d!149699))

(declare-fun d!149701 () Bool)

(assert (=> d!149701 (= (validKeyInArray!0 (select (arr!45818 a!2938) startIndex!16)) (and (not (= (select (arr!45818 a!2938) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45818 a!2938) startIndex!16) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387839 d!149701))

(declare-fun d!149703 () Bool)

(assert (=> d!149703 (= (validKeyInArray!0 (select (arr!45818 a!2938) i!1065)) (and (not (= (select (arr!45818 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45818 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387838 d!149703))

(declare-fun b!1387971 () Bool)

(declare-fun e!786265 () Bool)

(declare-fun call!66614 () Bool)

(assert (=> b!1387971 (= e!786265 call!66614)))

(declare-fun b!1387972 () Bool)

(declare-fun e!786264 () Bool)

(assert (=> b!1387972 (= e!786264 call!66614)))

(declare-fun bm!66611 () Bool)

(assert (=> bm!66611 (= call!66614 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001) lt!610032 mask!2987))))

(declare-fun b!1387973 () Bool)

(declare-fun e!786266 () Bool)

(assert (=> b!1387973 (= e!786266 e!786265)))

(declare-fun c!129106 () Bool)

(assert (=> b!1387973 (= c!129106 (validKeyInArray!0 (select (arr!45818 lt!610032) startIndex!16)))))

(declare-fun d!149705 () Bool)

(declare-fun res!928647 () Bool)

(assert (=> d!149705 (=> res!928647 e!786266)))

(assert (=> d!149705 (= res!928647 (bvsge startIndex!16 (size!46369 lt!610032)))))

(assert (=> d!149705 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!16 lt!610032 mask!2987) e!786266)))

(declare-fun b!1387974 () Bool)

(assert (=> b!1387974 (= e!786265 e!786264)))

(declare-fun lt!610112 () (_ BitVec 64))

(assert (=> b!1387974 (= lt!610112 (select (arr!45818 lt!610032) startIndex!16))))

(declare-fun lt!610114 () Unit!46348)

(assert (=> b!1387974 (= lt!610114 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!610032 lt!610112 startIndex!16))))

(assert (=> b!1387974 (arrayContainsKey!0 lt!610032 lt!610112 #b00000000000000000000000000000000)))

(declare-fun lt!610113 () Unit!46348)

(assert (=> b!1387974 (= lt!610113 lt!610114)))

(declare-fun res!928648 () Bool)

(assert (=> b!1387974 (= res!928648 (= (seekEntryOrOpen!0 (select (arr!45818 lt!610032) startIndex!16) lt!610032 mask!2987) (Found!10183 startIndex!16)))))

(assert (=> b!1387974 (=> (not res!928648) (not e!786264))))

(assert (= (and d!149705 (not res!928647)) b!1387973))

(assert (= (and b!1387973 c!129106) b!1387974))

(assert (= (and b!1387973 (not c!129106)) b!1387971))

(assert (= (and b!1387974 res!928648) b!1387972))

(assert (= (or b!1387972 b!1387971) bm!66611))

(declare-fun m!1273725 () Bool)

(assert (=> bm!66611 m!1273725))

(declare-fun m!1273727 () Bool)

(assert (=> b!1387973 m!1273727))

(assert (=> b!1387973 m!1273727))

(declare-fun m!1273729 () Bool)

(assert (=> b!1387973 m!1273729))

(assert (=> b!1387974 m!1273727))

(declare-fun m!1273731 () Bool)

(assert (=> b!1387974 m!1273731))

(declare-fun m!1273733 () Bool)

(assert (=> b!1387974 m!1273733))

(assert (=> b!1387974 m!1273727))

(declare-fun m!1273735 () Bool)

(assert (=> b!1387974 m!1273735))

(assert (=> b!1387840 d!149705))

(declare-fun bm!66614 () Bool)

(declare-fun call!66617 () Bool)

(declare-fun c!129109 () Bool)

(assert (=> bm!66614 (= call!66617 (arrayNoDuplicates!0 a!2938 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129109 (Cons!32522 (select (arr!45818 a!2938) #b00000000000000000000000000000000) Nil!32523) Nil!32523)))))

(declare-fun b!1387985 () Bool)

(declare-fun e!786275 () Bool)

(declare-fun e!786278 () Bool)

(assert (=> b!1387985 (= e!786275 e!786278)))

(declare-fun res!928655 () Bool)

(assert (=> b!1387985 (=> (not res!928655) (not e!786278))))

(declare-fun e!786277 () Bool)

(assert (=> b!1387985 (= res!928655 (not e!786277))))

(declare-fun res!928657 () Bool)

(assert (=> b!1387985 (=> (not res!928657) (not e!786277))))

(assert (=> b!1387985 (= res!928657 (validKeyInArray!0 (select (arr!45818 a!2938) #b00000000000000000000000000000000)))))

(declare-fun d!149707 () Bool)

(declare-fun res!928656 () Bool)

(assert (=> d!149707 (=> res!928656 e!786275)))

(assert (=> d!149707 (= res!928656 (bvsge #b00000000000000000000000000000000 (size!46369 a!2938)))))

(assert (=> d!149707 (= (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32523) e!786275)))

(declare-fun b!1387986 () Bool)

(declare-fun contains!9760 (List!32526 (_ BitVec 64)) Bool)

(assert (=> b!1387986 (= e!786277 (contains!9760 Nil!32523 (select (arr!45818 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1387987 () Bool)

(declare-fun e!786276 () Bool)

(assert (=> b!1387987 (= e!786276 call!66617)))

(declare-fun b!1387988 () Bool)

(assert (=> b!1387988 (= e!786278 e!786276)))

(assert (=> b!1387988 (= c!129109 (validKeyInArray!0 (select (arr!45818 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1387989 () Bool)

(assert (=> b!1387989 (= e!786276 call!66617)))

(assert (= (and d!149707 (not res!928656)) b!1387985))

(assert (= (and b!1387985 res!928657) b!1387986))

(assert (= (and b!1387985 res!928655) b!1387988))

(assert (= (and b!1387988 c!129109) b!1387987))

(assert (= (and b!1387988 (not c!129109)) b!1387989))

(assert (= (or b!1387987 b!1387989) bm!66614))

(assert (=> bm!66614 m!1273703))

(declare-fun m!1273737 () Bool)

(assert (=> bm!66614 m!1273737))

(assert (=> b!1387985 m!1273703))

(assert (=> b!1387985 m!1273703))

(assert (=> b!1387985 m!1273705))

(assert (=> b!1387986 m!1273703))

(assert (=> b!1387986 m!1273703))

(declare-fun m!1273739 () Bool)

(assert (=> b!1387986 m!1273739))

(assert (=> b!1387988 m!1273703))

(assert (=> b!1387988 m!1273703))

(assert (=> b!1387988 m!1273705))

(assert (=> b!1387834 d!149707))

(check-sat (not b!1387986) (not b!1387953) (not b!1387988) (not d!149687) (not d!149659) (not b!1387925) (not b!1387974) (not b!1387973) (not bm!66614) (not b!1387955) (not b!1387985) (not bm!66602) (not bm!66611) (not b!1387963) (not b!1387887) (not d!149657) (not b!1387962) (not bm!66609) (not d!149671) (not b!1387924))
(check-sat)
(get-model)

(declare-fun b!1388060 () Bool)

(declare-fun e!786322 () Bool)

(declare-fun call!66622 () Bool)

(assert (=> b!1388060 (= e!786322 call!66622)))

(declare-fun b!1388061 () Bool)

(declare-fun e!786321 () Bool)

(assert (=> b!1388061 (= e!786321 call!66622)))

(declare-fun bm!66619 () Bool)

(assert (=> bm!66619 (= call!66622 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2938 mask!2987))))

(declare-fun b!1388062 () Bool)

(declare-fun e!786323 () Bool)

(assert (=> b!1388062 (= e!786323 e!786322)))

(declare-fun c!129138 () Bool)

(assert (=> b!1388062 (= c!129138 (validKeyInArray!0 (select (arr!45818 a!2938) (bvadd startIndex!16 #b00000000000000000000000000000001))))))

(declare-fun d!149729 () Bool)

(declare-fun res!928672 () Bool)

(assert (=> d!149729 (=> res!928672 e!786323)))

(assert (=> d!149729 (= res!928672 (bvsge (bvadd startIndex!16 #b00000000000000000000000000000001) (size!46369 a!2938)))))

(assert (=> d!149729 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001) a!2938 mask!2987) e!786323)))

(declare-fun b!1388063 () Bool)

(assert (=> b!1388063 (= e!786322 e!786321)))

(declare-fun lt!610145 () (_ BitVec 64))

(assert (=> b!1388063 (= lt!610145 (select (arr!45818 a!2938) (bvadd startIndex!16 #b00000000000000000000000000000001)))))

(declare-fun lt!610147 () Unit!46348)

(assert (=> b!1388063 (= lt!610147 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!610145 (bvadd startIndex!16 #b00000000000000000000000000000001)))))

(assert (=> b!1388063 (arrayContainsKey!0 a!2938 lt!610145 #b00000000000000000000000000000000)))

(declare-fun lt!610146 () Unit!46348)

(assert (=> b!1388063 (= lt!610146 lt!610147)))

(declare-fun res!928673 () Bool)

(assert (=> b!1388063 (= res!928673 (= (seekEntryOrOpen!0 (select (arr!45818 a!2938) (bvadd startIndex!16 #b00000000000000000000000000000001)) a!2938 mask!2987) (Found!10183 (bvadd startIndex!16 #b00000000000000000000000000000001))))))

(assert (=> b!1388063 (=> (not res!928673) (not e!786321))))

(assert (= (and d!149729 (not res!928672)) b!1388062))

(assert (= (and b!1388062 c!129138) b!1388063))

(assert (= (and b!1388062 (not c!129138)) b!1388060))

(assert (= (and b!1388063 res!928673) b!1388061))

(assert (= (or b!1388061 b!1388060) bm!66619))

(declare-fun m!1273817 () Bool)

(assert (=> bm!66619 m!1273817))

(declare-fun m!1273819 () Bool)

(assert (=> b!1388062 m!1273819))

(assert (=> b!1388062 m!1273819))

(declare-fun m!1273821 () Bool)

(assert (=> b!1388062 m!1273821))

(assert (=> b!1388063 m!1273819))

(declare-fun m!1273823 () Bool)

(assert (=> b!1388063 m!1273823))

(declare-fun m!1273825 () Bool)

(assert (=> b!1388063 m!1273825))

(assert (=> b!1388063 m!1273819))

(declare-fun m!1273827 () Bool)

(assert (=> b!1388063 m!1273827))

(assert (=> bm!66602 d!149729))

(declare-fun d!149731 () Bool)

(assert (=> d!149731 (arrayContainsKey!0 lt!610032 lt!610112 #b00000000000000000000000000000000)))

(declare-fun lt!610150 () Unit!46348)

(declare-fun choose!13 (array!94895 (_ BitVec 64) (_ BitVec 32)) Unit!46348)

(assert (=> d!149731 (= lt!610150 (choose!13 lt!610032 lt!610112 startIndex!16))))

(assert (=> d!149731 (bvsge startIndex!16 #b00000000000000000000000000000000)))

(assert (=> d!149731 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!610032 lt!610112 startIndex!16) lt!610150)))

(declare-fun bs!40337 () Bool)

(assert (= bs!40337 d!149731))

(assert (=> bs!40337 m!1273733))

(declare-fun m!1273829 () Bool)

(assert (=> bs!40337 m!1273829))

(assert (=> b!1387974 d!149731))

(declare-fun d!149733 () Bool)

(declare-fun res!928678 () Bool)

(declare-fun e!786328 () Bool)

(assert (=> d!149733 (=> res!928678 e!786328)))

(assert (=> d!149733 (= res!928678 (= (select (arr!45818 lt!610032) #b00000000000000000000000000000000) lt!610112))))

(assert (=> d!149733 (= (arrayContainsKey!0 lt!610032 lt!610112 #b00000000000000000000000000000000) e!786328)))

(declare-fun b!1388068 () Bool)

(declare-fun e!786329 () Bool)

(assert (=> b!1388068 (= e!786328 e!786329)))

(declare-fun res!928679 () Bool)

(assert (=> b!1388068 (=> (not res!928679) (not e!786329))))

(assert (=> b!1388068 (= res!928679 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46369 lt!610032)))))

(declare-fun b!1388069 () Bool)

(assert (=> b!1388069 (= e!786329 (arrayContainsKey!0 lt!610032 lt!610112 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!149733 (not res!928678)) b!1388068))

(assert (= (and b!1388068 res!928679) b!1388069))

(declare-fun m!1273831 () Bool)

(assert (=> d!149733 m!1273831))

(declare-fun m!1273833 () Bool)

(assert (=> b!1388069 m!1273833))

(assert (=> b!1387974 d!149733))

(declare-fun b!1388070 () Bool)

(declare-fun e!786331 () SeekEntryResult!10183)

(declare-fun lt!610152 () SeekEntryResult!10183)

(assert (=> b!1388070 (= e!786331 (MissingZero!10183 (index!43104 lt!610152)))))

(declare-fun b!1388071 () Bool)

(assert (=> b!1388071 (= e!786331 (seekKeyOrZeroReturnVacant!0 (x!124724 lt!610152) (index!43104 lt!610152) (index!43104 lt!610152) (select (arr!45818 lt!610032) startIndex!16) lt!610032 mask!2987))))

(declare-fun b!1388072 () Bool)

(declare-fun c!129139 () Bool)

(declare-fun lt!610151 () (_ BitVec 64))

(assert (=> b!1388072 (= c!129139 (= lt!610151 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!786332 () SeekEntryResult!10183)

(assert (=> b!1388072 (= e!786332 e!786331)))

(declare-fun b!1388073 () Bool)

(assert (=> b!1388073 (= e!786332 (Found!10183 (index!43104 lt!610152)))))

(declare-fun b!1388074 () Bool)

(declare-fun e!786330 () SeekEntryResult!10183)

(assert (=> b!1388074 (= e!786330 Undefined!10183)))

(declare-fun b!1388075 () Bool)

(assert (=> b!1388075 (= e!786330 e!786332)))

(assert (=> b!1388075 (= lt!610151 (select (arr!45818 lt!610032) (index!43104 lt!610152)))))

(declare-fun c!129141 () Bool)

(assert (=> b!1388075 (= c!129141 (= lt!610151 (select (arr!45818 lt!610032) startIndex!16)))))

(declare-fun d!149735 () Bool)

(declare-fun lt!610153 () SeekEntryResult!10183)

(assert (=> d!149735 (and (or ((_ is Undefined!10183) lt!610153) (not ((_ is Found!10183) lt!610153)) (and (bvsge (index!43103 lt!610153) #b00000000000000000000000000000000) (bvslt (index!43103 lt!610153) (size!46369 lt!610032)))) (or ((_ is Undefined!10183) lt!610153) ((_ is Found!10183) lt!610153) (not ((_ is MissingZero!10183) lt!610153)) (and (bvsge (index!43102 lt!610153) #b00000000000000000000000000000000) (bvslt (index!43102 lt!610153) (size!46369 lt!610032)))) (or ((_ is Undefined!10183) lt!610153) ((_ is Found!10183) lt!610153) ((_ is MissingZero!10183) lt!610153) (not ((_ is MissingVacant!10183) lt!610153)) (and (bvsge (index!43105 lt!610153) #b00000000000000000000000000000000) (bvslt (index!43105 lt!610153) (size!46369 lt!610032)))) (or ((_ is Undefined!10183) lt!610153) (ite ((_ is Found!10183) lt!610153) (= (select (arr!45818 lt!610032) (index!43103 lt!610153)) (select (arr!45818 lt!610032) startIndex!16)) (ite ((_ is MissingZero!10183) lt!610153) (= (select (arr!45818 lt!610032) (index!43102 lt!610153)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10183) lt!610153) (= (select (arr!45818 lt!610032) (index!43105 lt!610153)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!149735 (= lt!610153 e!786330)))

(declare-fun c!129140 () Bool)

(assert (=> d!149735 (= c!129140 (and ((_ is Intermediate!10183) lt!610152) (undefined!10995 lt!610152)))))

(assert (=> d!149735 (= lt!610152 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45818 lt!610032) startIndex!16) mask!2987) (select (arr!45818 lt!610032) startIndex!16) lt!610032 mask!2987))))

(assert (=> d!149735 (validMask!0 mask!2987)))

(assert (=> d!149735 (= (seekEntryOrOpen!0 (select (arr!45818 lt!610032) startIndex!16) lt!610032 mask!2987) lt!610153)))

(assert (= (and d!149735 c!129140) b!1388074))

(assert (= (and d!149735 (not c!129140)) b!1388075))

(assert (= (and b!1388075 c!129141) b!1388073))

(assert (= (and b!1388075 (not c!129141)) b!1388072))

(assert (= (and b!1388072 c!129139) b!1388070))

(assert (= (and b!1388072 (not c!129139)) b!1388071))

(assert (=> b!1388071 m!1273727))

(declare-fun m!1273835 () Bool)

(assert (=> b!1388071 m!1273835))

(declare-fun m!1273837 () Bool)

(assert (=> b!1388075 m!1273837))

(assert (=> d!149735 m!1273727))

(declare-fun m!1273839 () Bool)

(assert (=> d!149735 m!1273839))

(assert (=> d!149735 m!1273839))

(assert (=> d!149735 m!1273727))

(declare-fun m!1273841 () Bool)

(assert (=> d!149735 m!1273841))

(declare-fun m!1273843 () Bool)

(assert (=> d!149735 m!1273843))

(declare-fun m!1273845 () Bool)

(assert (=> d!149735 m!1273845))

(declare-fun m!1273847 () Bool)

(assert (=> d!149735 m!1273847))

(assert (=> d!149735 m!1273549))

(assert (=> b!1387974 d!149735))

(declare-fun call!66623 () Bool)

(declare-fun bm!66620 () Bool)

(declare-fun c!129142 () Bool)

(assert (=> bm!66620 (= call!66623 (arrayNoDuplicates!0 a!2938 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!129142 (Cons!32522 (select (arr!45818 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!129109 (Cons!32522 (select (arr!45818 a!2938) #b00000000000000000000000000000000) Nil!32523) Nil!32523)) (ite c!129109 (Cons!32522 (select (arr!45818 a!2938) #b00000000000000000000000000000000) Nil!32523) Nil!32523))))))

(declare-fun b!1388076 () Bool)

(declare-fun e!786333 () Bool)

(declare-fun e!786336 () Bool)

(assert (=> b!1388076 (= e!786333 e!786336)))

(declare-fun res!928680 () Bool)

(assert (=> b!1388076 (=> (not res!928680) (not e!786336))))

(declare-fun e!786335 () Bool)

(assert (=> b!1388076 (= res!928680 (not e!786335))))

(declare-fun res!928682 () Bool)

(assert (=> b!1388076 (=> (not res!928682) (not e!786335))))

(assert (=> b!1388076 (= res!928682 (validKeyInArray!0 (select (arr!45818 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!149737 () Bool)

(declare-fun res!928681 () Bool)

(assert (=> d!149737 (=> res!928681 e!786333)))

(assert (=> d!149737 (= res!928681 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46369 a!2938)))))

(assert (=> d!149737 (= (arrayNoDuplicates!0 a!2938 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129109 (Cons!32522 (select (arr!45818 a!2938) #b00000000000000000000000000000000) Nil!32523) Nil!32523)) e!786333)))

(declare-fun b!1388077 () Bool)

(assert (=> b!1388077 (= e!786335 (contains!9760 (ite c!129109 (Cons!32522 (select (arr!45818 a!2938) #b00000000000000000000000000000000) Nil!32523) Nil!32523) (select (arr!45818 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1388078 () Bool)

(declare-fun e!786334 () Bool)

(assert (=> b!1388078 (= e!786334 call!66623)))

(declare-fun b!1388079 () Bool)

(assert (=> b!1388079 (= e!786336 e!786334)))

(assert (=> b!1388079 (= c!129142 (validKeyInArray!0 (select (arr!45818 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1388080 () Bool)

(assert (=> b!1388080 (= e!786334 call!66623)))

(assert (= (and d!149737 (not res!928681)) b!1388076))

(assert (= (and b!1388076 res!928682) b!1388077))

(assert (= (and b!1388076 res!928680) b!1388079))

(assert (= (and b!1388079 c!129142) b!1388078))

(assert (= (and b!1388079 (not c!129142)) b!1388080))

(assert (= (or b!1388078 b!1388080) bm!66620))

(declare-fun m!1273849 () Bool)

(assert (=> bm!66620 m!1273849))

(declare-fun m!1273851 () Bool)

(assert (=> bm!66620 m!1273851))

(assert (=> b!1388076 m!1273849))

(assert (=> b!1388076 m!1273849))

(declare-fun m!1273853 () Bool)

(assert (=> b!1388076 m!1273853))

(assert (=> b!1388077 m!1273849))

(assert (=> b!1388077 m!1273849))

(declare-fun m!1273855 () Bool)

(assert (=> b!1388077 m!1273855))

(assert (=> b!1388079 m!1273849))

(assert (=> b!1388079 m!1273849))

(assert (=> b!1388079 m!1273853))

(assert (=> bm!66614 d!149737))

(assert (=> b!1387924 d!149701))

(assert (=> b!1387953 d!149687))

(declare-fun b!1388081 () Bool)

(declare-fun e!786338 () SeekEntryResult!10183)

(declare-fun lt!610155 () SeekEntryResult!10183)

(assert (=> b!1388081 (= e!786338 (MissingZero!10183 (index!43104 lt!610155)))))

(declare-fun b!1388082 () Bool)

(assert (=> b!1388082 (= e!786338 (seekKeyOrZeroReturnVacant!0 (x!124724 lt!610155) (index!43104 lt!610155) (index!43104 lt!610155) (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94896 (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46369 a!2938)) mask!2987))))

(declare-fun b!1388083 () Bool)

(declare-fun c!129143 () Bool)

(declare-fun lt!610154 () (_ BitVec 64))

(assert (=> b!1388083 (= c!129143 (= lt!610154 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!786339 () SeekEntryResult!10183)

(assert (=> b!1388083 (= e!786339 e!786338)))

(declare-fun b!1388084 () Bool)

(assert (=> b!1388084 (= e!786339 (Found!10183 (index!43104 lt!610155)))))

(declare-fun b!1388085 () Bool)

(declare-fun e!786337 () SeekEntryResult!10183)

(assert (=> b!1388085 (= e!786337 Undefined!10183)))

(declare-fun b!1388086 () Bool)

(assert (=> b!1388086 (= e!786337 e!786339)))

(assert (=> b!1388086 (= lt!610154 (select (arr!45818 (array!94896 (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46369 a!2938))) (index!43104 lt!610155)))))

(declare-fun c!129145 () Bool)

(assert (=> b!1388086 (= c!129145 (= lt!610154 (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)))))

(declare-fun d!149739 () Bool)

(declare-fun lt!610156 () SeekEntryResult!10183)

(assert (=> d!149739 (and (or ((_ is Undefined!10183) lt!610156) (not ((_ is Found!10183) lt!610156)) (and (bvsge (index!43103 lt!610156) #b00000000000000000000000000000000) (bvslt (index!43103 lt!610156) (size!46369 (array!94896 (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46369 a!2938)))))) (or ((_ is Undefined!10183) lt!610156) ((_ is Found!10183) lt!610156) (not ((_ is MissingZero!10183) lt!610156)) (and (bvsge (index!43102 lt!610156) #b00000000000000000000000000000000) (bvslt (index!43102 lt!610156) (size!46369 (array!94896 (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46369 a!2938)))))) (or ((_ is Undefined!10183) lt!610156) ((_ is Found!10183) lt!610156) ((_ is MissingZero!10183) lt!610156) (not ((_ is MissingVacant!10183) lt!610156)) (and (bvsge (index!43105 lt!610156) #b00000000000000000000000000000000) (bvslt (index!43105 lt!610156) (size!46369 (array!94896 (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46369 a!2938)))))) (or ((_ is Undefined!10183) lt!610156) (ite ((_ is Found!10183) lt!610156) (= (select (arr!45818 (array!94896 (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46369 a!2938))) (index!43103 lt!610156)) (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)) (ite ((_ is MissingZero!10183) lt!610156) (= (select (arr!45818 (array!94896 (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46369 a!2938))) (index!43102 lt!610156)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10183) lt!610156) (= (select (arr!45818 (array!94896 (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46369 a!2938))) (index!43105 lt!610156)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!149739 (= lt!610156 e!786337)))

(declare-fun c!129144 () Bool)

(assert (=> d!149739 (= c!129144 (and ((_ is Intermediate!10183) lt!610155) (undefined!10995 lt!610155)))))

(assert (=> d!149739 (= lt!610155 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94896 (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46369 a!2938)) mask!2987))))

(assert (=> d!149739 (validMask!0 mask!2987)))

(assert (=> d!149739 (= (seekEntryOrOpen!0 (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94896 (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46369 a!2938)) mask!2987) lt!610156)))

(assert (= (and d!149739 c!129144) b!1388085))

(assert (= (and d!149739 (not c!129144)) b!1388086))

(assert (= (and b!1388086 c!129145) b!1388084))

(assert (= (and b!1388086 (not c!129145)) b!1388083))

(assert (= (and b!1388083 c!129143) b!1388081))

(assert (= (and b!1388083 (not c!129143)) b!1388082))

(assert (=> b!1388082 m!1273557))

(declare-fun m!1273857 () Bool)

(assert (=> b!1388082 m!1273857))

(declare-fun m!1273859 () Bool)

(assert (=> b!1388086 m!1273859))

(assert (=> d!149739 m!1273557))

(assert (=> d!149739 m!1273617))

(assert (=> d!149739 m!1273617))

(assert (=> d!149739 m!1273557))

(declare-fun m!1273861 () Bool)

(assert (=> d!149739 m!1273861))

(declare-fun m!1273863 () Bool)

(assert (=> d!149739 m!1273863))

(declare-fun m!1273865 () Bool)

(assert (=> d!149739 m!1273865))

(declare-fun m!1273867 () Bool)

(assert (=> d!149739 m!1273867))

(assert (=> d!149739 m!1273549))

(assert (=> b!1387953 d!149739))

(declare-fun d!149741 () Bool)

(declare-fun lt!610159 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!768 (List!32526) (InoxSet (_ BitVec 64)))

(assert (=> d!149741 (= lt!610159 (select (content!768 Nil!32523) (select (arr!45818 a!2938) #b00000000000000000000000000000000)))))

(declare-fun e!786345 () Bool)

(assert (=> d!149741 (= lt!610159 e!786345)))

(declare-fun res!928687 () Bool)

(assert (=> d!149741 (=> (not res!928687) (not e!786345))))

(assert (=> d!149741 (= res!928687 ((_ is Cons!32522) Nil!32523))))

(assert (=> d!149741 (= (contains!9760 Nil!32523 (select (arr!45818 a!2938) #b00000000000000000000000000000000)) lt!610159)))

(declare-fun b!1388091 () Bool)

(declare-fun e!786344 () Bool)

(assert (=> b!1388091 (= e!786345 e!786344)))

(declare-fun res!928688 () Bool)

(assert (=> b!1388091 (=> res!928688 e!786344)))

(assert (=> b!1388091 (= res!928688 (= (h!33734 Nil!32523) (select (arr!45818 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1388092 () Bool)

(assert (=> b!1388092 (= e!786344 (contains!9760 (t!47227 Nil!32523) (select (arr!45818 a!2938) #b00000000000000000000000000000000)))))

(assert (= (and d!149741 res!928687) b!1388091))

(assert (= (and b!1388091 (not res!928688)) b!1388092))

(declare-fun m!1273869 () Bool)

(assert (=> d!149741 m!1273869))

(assert (=> d!149741 m!1273703))

(declare-fun m!1273871 () Bool)

(assert (=> d!149741 m!1273871))

(assert (=> b!1388092 m!1273703))

(declare-fun m!1273873 () Bool)

(assert (=> b!1388092 m!1273873))

(assert (=> b!1387986 d!149741))

(declare-fun b!1388111 () Bool)

(declare-fun lt!610165 () SeekEntryResult!10183)

(assert (=> b!1388111 (and (bvsge (index!43104 lt!610165) #b00000000000000000000000000000000) (bvslt (index!43104 lt!610165) (size!46369 lt!610032)))))

(declare-fun res!928697 () Bool)

(assert (=> b!1388111 (= res!928697 (= (select (arr!45818 lt!610032) (index!43104 lt!610165)) (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)))))

(declare-fun e!786358 () Bool)

(assert (=> b!1388111 (=> res!928697 e!786358)))

(declare-fun e!786356 () Bool)

(assert (=> b!1388111 (= e!786356 e!786358)))

(declare-fun b!1388112 () Bool)

(assert (=> b!1388112 (and (bvsge (index!43104 lt!610165) #b00000000000000000000000000000000) (bvslt (index!43104 lt!610165) (size!46369 lt!610032)))))

(declare-fun res!928695 () Bool)

(assert (=> b!1388112 (= res!928695 (= (select (arr!45818 lt!610032) (index!43104 lt!610165)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1388112 (=> res!928695 e!786358)))

(declare-fun b!1388113 () Bool)

(declare-fun e!786360 () SeekEntryResult!10183)

(declare-fun e!786357 () SeekEntryResult!10183)

(assert (=> b!1388113 (= e!786360 e!786357)))

(declare-fun lt!610164 () (_ BitVec 64))

(declare-fun c!129152 () Bool)

(assert (=> b!1388113 (= c!129152 (or (= lt!610164 (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)) (= (bvadd lt!610164 lt!610164) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1388114 () Bool)

(assert (=> b!1388114 (= e!786360 (Intermediate!10183 true (toIndex!0 (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) #b00000000000000000000000000000000))))

(declare-fun b!1388115 () Bool)

(assert (=> b!1388115 (= e!786357 (Intermediate!10183 false (toIndex!0 (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) #b00000000000000000000000000000000))))

(declare-fun b!1388116 () Bool)

(declare-fun e!786359 () Bool)

(assert (=> b!1388116 (= e!786359 e!786356)))

(declare-fun res!928696 () Bool)

(assert (=> b!1388116 (= res!928696 (and ((_ is Intermediate!10183) lt!610165) (not (undefined!10995 lt!610165)) (bvslt (x!124724 lt!610165) #b01111111111111111111111111111110) (bvsge (x!124724 lt!610165) #b00000000000000000000000000000000) (bvsge (x!124724 lt!610165) #b00000000000000000000000000000000)))))

(assert (=> b!1388116 (=> (not res!928696) (not e!786356))))

(declare-fun b!1388117 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1388117 (= e!786357 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) #b00000000000000000000000000000000 mask!2987) (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610032 mask!2987))))

(declare-fun d!149743 () Bool)

(assert (=> d!149743 e!786359))

(declare-fun c!129153 () Bool)

(assert (=> d!149743 (= c!129153 (and ((_ is Intermediate!10183) lt!610165) (undefined!10995 lt!610165)))))

(assert (=> d!149743 (= lt!610165 e!786360)))

(declare-fun c!129154 () Bool)

(assert (=> d!149743 (= c!129154 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!149743 (= lt!610164 (select (arr!45818 lt!610032) (toIndex!0 (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987)))))

(assert (=> d!149743 (validMask!0 mask!2987)))

(assert (=> d!149743 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610032 mask!2987) lt!610165)))

(declare-fun b!1388118 () Bool)

(assert (=> b!1388118 (and (bvsge (index!43104 lt!610165) #b00000000000000000000000000000000) (bvslt (index!43104 lt!610165) (size!46369 lt!610032)))))

(assert (=> b!1388118 (= e!786358 (= (select (arr!45818 lt!610032) (index!43104 lt!610165)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1388119 () Bool)

(assert (=> b!1388119 (= e!786359 (bvsge (x!124724 lt!610165) #b01111111111111111111111111111110))))

(assert (= (and d!149743 c!129154) b!1388114))

(assert (= (and d!149743 (not c!129154)) b!1388113))

(assert (= (and b!1388113 c!129152) b!1388115))

(assert (= (and b!1388113 (not c!129152)) b!1388117))

(assert (= (and d!149743 c!129153) b!1388119))

(assert (= (and d!149743 (not c!129153)) b!1388116))

(assert (= (and b!1388116 res!928696) b!1388111))

(assert (= (and b!1388111 (not res!928697)) b!1388112))

(assert (= (and b!1388112 (not res!928695)) b!1388118))

(assert (=> b!1388117 m!1273617))

(declare-fun m!1273875 () Bool)

(assert (=> b!1388117 m!1273875))

(assert (=> b!1388117 m!1273875))

(assert (=> b!1388117 m!1273557))

(declare-fun m!1273877 () Bool)

(assert (=> b!1388117 m!1273877))

(declare-fun m!1273879 () Bool)

(assert (=> b!1388112 m!1273879))

(assert (=> b!1388111 m!1273879))

(assert (=> b!1388118 m!1273879))

(assert (=> d!149743 m!1273617))

(declare-fun m!1273881 () Bool)

(assert (=> d!149743 m!1273881))

(assert (=> d!149743 m!1273549))

(assert (=> d!149657 d!149743))

(declare-fun d!149745 () Bool)

(declare-fun lt!610171 () (_ BitVec 32))

(declare-fun lt!610170 () (_ BitVec 32))

(assert (=> d!149745 (= lt!610171 (bvmul (bvxor lt!610170 (bvlshr lt!610170 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!149745 (= lt!610170 ((_ extract 31 0) (bvand (bvxor (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (bvlshr (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!149745 (and (bvsge mask!2987 #b00000000000000000000000000000000) (let ((res!928698 (let ((h!33736 ((_ extract 31 0) (bvand (bvxor (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (bvlshr (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!124727 (bvmul (bvxor h!33736 (bvlshr h!33736 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!124727 (bvlshr x!124727 #b00000000000000000000000000001101)) mask!2987))))) (and (bvslt res!928698 (bvadd mask!2987 #b00000000000000000000000000000001)) (bvsge res!928698 #b00000000000000000000000000000000))))))

(assert (=> d!149745 (= (toIndex!0 (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) mask!2987) (bvand (bvxor lt!610171 (bvlshr lt!610171 #b00000000000000000000000000001101)) mask!2987))))

(assert (=> d!149657 d!149745))

(assert (=> d!149657 d!149691))

(declare-fun b!1388120 () Bool)

(declare-fun lt!610173 () SeekEntryResult!10183)

(assert (=> b!1388120 (and (bvsge (index!43104 lt!610173) #b00000000000000000000000000000000) (bvslt (index!43104 lt!610173) (size!46369 a!2938)))))

(declare-fun res!928701 () Bool)

(assert (=> b!1388120 (= res!928701 (= (select (arr!45818 a!2938) (index!43104 lt!610173)) (select (arr!45818 a!2938) startIndex!16)))))

(declare-fun e!786363 () Bool)

(assert (=> b!1388120 (=> res!928701 e!786363)))

(declare-fun e!786361 () Bool)

(assert (=> b!1388120 (= e!786361 e!786363)))

(declare-fun b!1388121 () Bool)

(assert (=> b!1388121 (and (bvsge (index!43104 lt!610173) #b00000000000000000000000000000000) (bvslt (index!43104 lt!610173) (size!46369 a!2938)))))

(declare-fun res!928699 () Bool)

(assert (=> b!1388121 (= res!928699 (= (select (arr!45818 a!2938) (index!43104 lt!610173)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1388121 (=> res!928699 e!786363)))

(declare-fun b!1388122 () Bool)

(declare-fun e!786365 () SeekEntryResult!10183)

(declare-fun e!786362 () SeekEntryResult!10183)

(assert (=> b!1388122 (= e!786365 e!786362)))

(declare-fun c!129155 () Bool)

(declare-fun lt!610172 () (_ BitVec 64))

(assert (=> b!1388122 (= c!129155 (or (= lt!610172 (select (arr!45818 a!2938) startIndex!16)) (= (bvadd lt!610172 lt!610172) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1388123 () Bool)

(assert (=> b!1388123 (= e!786365 (Intermediate!10183 true (toIndex!0 (select (arr!45818 a!2938) startIndex!16) mask!2987) #b00000000000000000000000000000000))))

(declare-fun b!1388124 () Bool)

(assert (=> b!1388124 (= e!786362 (Intermediate!10183 false (toIndex!0 (select (arr!45818 a!2938) startIndex!16) mask!2987) #b00000000000000000000000000000000))))

(declare-fun b!1388125 () Bool)

(declare-fun e!786364 () Bool)

(assert (=> b!1388125 (= e!786364 e!786361)))

(declare-fun res!928700 () Bool)

(assert (=> b!1388125 (= res!928700 (and ((_ is Intermediate!10183) lt!610173) (not (undefined!10995 lt!610173)) (bvslt (x!124724 lt!610173) #b01111111111111111111111111111110) (bvsge (x!124724 lt!610173) #b00000000000000000000000000000000) (bvsge (x!124724 lt!610173) #b00000000000000000000000000000000)))))

(assert (=> b!1388125 (=> (not res!928700) (not e!786361))))

(declare-fun b!1388126 () Bool)

(assert (=> b!1388126 (= e!786362 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!45818 a!2938) startIndex!16) mask!2987) #b00000000000000000000000000000000 mask!2987) (select (arr!45818 a!2938) startIndex!16) a!2938 mask!2987))))

(declare-fun d!149747 () Bool)

(assert (=> d!149747 e!786364))

(declare-fun c!129156 () Bool)

(assert (=> d!149747 (= c!129156 (and ((_ is Intermediate!10183) lt!610173) (undefined!10995 lt!610173)))))

(assert (=> d!149747 (= lt!610173 e!786365)))

(declare-fun c!129157 () Bool)

(assert (=> d!149747 (= c!129157 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!149747 (= lt!610172 (select (arr!45818 a!2938) (toIndex!0 (select (arr!45818 a!2938) startIndex!16) mask!2987)))))

(assert (=> d!149747 (validMask!0 mask!2987)))

(assert (=> d!149747 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45818 a!2938) startIndex!16) mask!2987) (select (arr!45818 a!2938) startIndex!16) a!2938 mask!2987) lt!610173)))

(declare-fun b!1388127 () Bool)

(assert (=> b!1388127 (and (bvsge (index!43104 lt!610173) #b00000000000000000000000000000000) (bvslt (index!43104 lt!610173) (size!46369 a!2938)))))

(assert (=> b!1388127 (= e!786363 (= (select (arr!45818 a!2938) (index!43104 lt!610173)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1388128 () Bool)

(assert (=> b!1388128 (= e!786364 (bvsge (x!124724 lt!610173) #b01111111111111111111111111111110))))

(assert (= (and d!149747 c!129157) b!1388123))

(assert (= (and d!149747 (not c!129157)) b!1388122))

(assert (= (and b!1388122 c!129155) b!1388124))

(assert (= (and b!1388122 (not c!129155)) b!1388126))

(assert (= (and d!149747 c!129156) b!1388128))

(assert (= (and d!149747 (not c!129156)) b!1388125))

(assert (= (and b!1388125 res!928700) b!1388120))

(assert (= (and b!1388120 (not res!928701)) b!1388121))

(assert (= (and b!1388121 (not res!928699)) b!1388127))

(assert (=> b!1388126 m!1273691))

(declare-fun m!1273883 () Bool)

(assert (=> b!1388126 m!1273883))

(assert (=> b!1388126 m!1273883))

(assert (=> b!1388126 m!1273565))

(declare-fun m!1273885 () Bool)

(assert (=> b!1388126 m!1273885))

(declare-fun m!1273887 () Bool)

(assert (=> b!1388121 m!1273887))

(assert (=> b!1388120 m!1273887))

(assert (=> b!1388127 m!1273887))

(assert (=> d!149747 m!1273691))

(declare-fun m!1273889 () Bool)

(assert (=> d!149747 m!1273889))

(assert (=> d!149747 m!1273549))

(assert (=> d!149687 d!149747))

(declare-fun d!149749 () Bool)

(declare-fun lt!610175 () (_ BitVec 32))

(declare-fun lt!610174 () (_ BitVec 32))

(assert (=> d!149749 (= lt!610175 (bvmul (bvxor lt!610174 (bvlshr lt!610174 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!149749 (= lt!610174 ((_ extract 31 0) (bvand (bvxor (select (arr!45818 a!2938) startIndex!16) (bvlshr (select (arr!45818 a!2938) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!149749 (and (bvsge mask!2987 #b00000000000000000000000000000000) (let ((res!928698 (let ((h!33736 ((_ extract 31 0) (bvand (bvxor (select (arr!45818 a!2938) startIndex!16) (bvlshr (select (arr!45818 a!2938) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!124727 (bvmul (bvxor h!33736 (bvlshr h!33736 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!124727 (bvlshr x!124727 #b00000000000000000000000000001101)) mask!2987))))) (and (bvslt res!928698 (bvadd mask!2987 #b00000000000000000000000000000001)) (bvsge res!928698 #b00000000000000000000000000000000))))))

(assert (=> d!149749 (= (toIndex!0 (select (arr!45818 a!2938) startIndex!16) mask!2987) (bvand (bvxor lt!610175 (bvlshr lt!610175 #b00000000000000000000000000001101)) mask!2987))))

(assert (=> d!149687 d!149749))

(assert (=> d!149687 d!149691))

(declare-fun d!149751 () Bool)

(assert (=> d!149751 (= (validKeyInArray!0 (select (arr!45818 a!2938) #b00000000000000000000000000000000)) (and (not (= (select (arr!45818 a!2938) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45818 a!2938) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387985 d!149751))

(declare-fun b!1388141 () Bool)

(declare-fun e!786374 () SeekEntryResult!10183)

(assert (=> b!1388141 (= e!786374 (Found!10183 (index!43104 lt!610098)))))

(declare-fun b!1388142 () Bool)

(declare-fun e!786372 () SeekEntryResult!10183)

(assert (=> b!1388142 (= e!786372 Undefined!10183)))

(declare-fun b!1388143 () Bool)

(declare-fun c!129165 () Bool)

(declare-fun lt!610181 () (_ BitVec 64))

(assert (=> b!1388143 (= c!129165 (= lt!610181 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!786373 () SeekEntryResult!10183)

(assert (=> b!1388143 (= e!786374 e!786373)))

(declare-fun b!1388144 () Bool)

(assert (=> b!1388144 (= e!786373 (seekKeyOrZeroReturnVacant!0 (bvadd (x!124724 lt!610098) #b00000000000000000000000000000001) (nextIndex!0 (index!43104 lt!610098) (x!124724 lt!610098) mask!2987) (index!43104 lt!610098) (select (arr!45818 a!2938) startIndex!16) a!2938 mask!2987))))

(declare-fun lt!610180 () SeekEntryResult!10183)

(declare-fun d!149753 () Bool)

(assert (=> d!149753 (and (or ((_ is Undefined!10183) lt!610180) (not ((_ is Found!10183) lt!610180)) (and (bvsge (index!43103 lt!610180) #b00000000000000000000000000000000) (bvslt (index!43103 lt!610180) (size!46369 a!2938)))) (or ((_ is Undefined!10183) lt!610180) ((_ is Found!10183) lt!610180) (not ((_ is MissingVacant!10183) lt!610180)) (not (= (index!43105 lt!610180) (index!43104 lt!610098))) (and (bvsge (index!43105 lt!610180) #b00000000000000000000000000000000) (bvslt (index!43105 lt!610180) (size!46369 a!2938)))) (or ((_ is Undefined!10183) lt!610180) (ite ((_ is Found!10183) lt!610180) (= (select (arr!45818 a!2938) (index!43103 lt!610180)) (select (arr!45818 a!2938) startIndex!16)) (and ((_ is MissingVacant!10183) lt!610180) (= (index!43105 lt!610180) (index!43104 lt!610098)) (= (select (arr!45818 a!2938) (index!43105 lt!610180)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!149753 (= lt!610180 e!786372)))

(declare-fun c!129166 () Bool)

(assert (=> d!149753 (= c!129166 (bvsge (x!124724 lt!610098) #b01111111111111111111111111111110))))

(assert (=> d!149753 (= lt!610181 (select (arr!45818 a!2938) (index!43104 lt!610098)))))

(assert (=> d!149753 (validMask!0 mask!2987)))

(assert (=> d!149753 (= (seekKeyOrZeroReturnVacant!0 (x!124724 lt!610098) (index!43104 lt!610098) (index!43104 lt!610098) (select (arr!45818 a!2938) startIndex!16) a!2938 mask!2987) lt!610180)))

(declare-fun b!1388145 () Bool)

(assert (=> b!1388145 (= e!786373 (MissingVacant!10183 (index!43104 lt!610098)))))

(declare-fun b!1388146 () Bool)

(assert (=> b!1388146 (= e!786372 e!786374)))

(declare-fun c!129164 () Bool)

(assert (=> b!1388146 (= c!129164 (= lt!610181 (select (arr!45818 a!2938) startIndex!16)))))

(assert (= (and d!149753 c!129166) b!1388142))

(assert (= (and d!149753 (not c!129166)) b!1388146))

(assert (= (and b!1388146 c!129164) b!1388141))

(assert (= (and b!1388146 (not c!129164)) b!1388143))

(assert (= (and b!1388143 c!129165) b!1388145))

(assert (= (and b!1388143 (not c!129165)) b!1388144))

(declare-fun m!1273891 () Bool)

(assert (=> b!1388144 m!1273891))

(assert (=> b!1388144 m!1273891))

(assert (=> b!1388144 m!1273565))

(declare-fun m!1273893 () Bool)

(assert (=> b!1388144 m!1273893))

(declare-fun m!1273895 () Bool)

(assert (=> d!149753 m!1273895))

(declare-fun m!1273897 () Bool)

(assert (=> d!149753 m!1273897))

(assert (=> d!149753 m!1273689))

(assert (=> d!149753 m!1273549))

(assert (=> b!1387955 d!149753))

(declare-fun b!1388147 () Bool)

(declare-fun e!786376 () Bool)

(declare-fun call!66624 () Bool)

(assert (=> b!1388147 (= e!786376 call!66624)))

(declare-fun b!1388148 () Bool)

(declare-fun e!786375 () Bool)

(assert (=> b!1388148 (= e!786375 call!66624)))

(declare-fun bm!66621 () Bool)

(assert (=> bm!66621 (= call!66624 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!610032 mask!2987))))

(declare-fun b!1388149 () Bool)

(declare-fun e!786377 () Bool)

(assert (=> b!1388149 (= e!786377 e!786376)))

(declare-fun c!129167 () Bool)

(assert (=> b!1388149 (= c!129167 (validKeyInArray!0 (select (arr!45818 lt!610032) (bvadd startIndex!16 #b00000000000000000000000000000001))))))

(declare-fun d!149755 () Bool)

(declare-fun res!928702 () Bool)

(assert (=> d!149755 (=> res!928702 e!786377)))

(assert (=> d!149755 (= res!928702 (bvsge (bvadd startIndex!16 #b00000000000000000000000000000001) (size!46369 lt!610032)))))

(assert (=> d!149755 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!16 #b00000000000000000000000000000001) lt!610032 mask!2987) e!786377)))

(declare-fun b!1388150 () Bool)

(assert (=> b!1388150 (= e!786376 e!786375)))

(declare-fun lt!610182 () (_ BitVec 64))

(assert (=> b!1388150 (= lt!610182 (select (arr!45818 lt!610032) (bvadd startIndex!16 #b00000000000000000000000000000001)))))

(declare-fun lt!610184 () Unit!46348)

(assert (=> b!1388150 (= lt!610184 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!610032 lt!610182 (bvadd startIndex!16 #b00000000000000000000000000000001)))))

(assert (=> b!1388150 (arrayContainsKey!0 lt!610032 lt!610182 #b00000000000000000000000000000000)))

(declare-fun lt!610183 () Unit!46348)

(assert (=> b!1388150 (= lt!610183 lt!610184)))

(declare-fun res!928703 () Bool)

(assert (=> b!1388150 (= res!928703 (= (seekEntryOrOpen!0 (select (arr!45818 lt!610032) (bvadd startIndex!16 #b00000000000000000000000000000001)) lt!610032 mask!2987) (Found!10183 (bvadd startIndex!16 #b00000000000000000000000000000001))))))

(assert (=> b!1388150 (=> (not res!928703) (not e!786375))))

(assert (= (and d!149755 (not res!928702)) b!1388149))

(assert (= (and b!1388149 c!129167) b!1388150))

(assert (= (and b!1388149 (not c!129167)) b!1388147))

(assert (= (and b!1388150 res!928703) b!1388148))

(assert (= (or b!1388148 b!1388147) bm!66621))

(declare-fun m!1273899 () Bool)

(assert (=> bm!66621 m!1273899))

(declare-fun m!1273901 () Bool)

(assert (=> b!1388149 m!1273901))

(assert (=> b!1388149 m!1273901))

(declare-fun m!1273903 () Bool)

(assert (=> b!1388149 m!1273903))

(assert (=> b!1388150 m!1273901))

(declare-fun m!1273905 () Bool)

(assert (=> b!1388150 m!1273905))

(declare-fun m!1273907 () Bool)

(assert (=> b!1388150 m!1273907))

(assert (=> b!1388150 m!1273901))

(declare-fun m!1273909 () Bool)

(assert (=> b!1388150 m!1273909))

(assert (=> bm!66611 d!149755))

(declare-fun b!1388151 () Bool)

(declare-fun e!786380 () SeekEntryResult!10183)

(assert (=> b!1388151 (= e!786380 (Found!10183 (index!43104 lt!610053)))))

(declare-fun b!1388152 () Bool)

(declare-fun e!786378 () SeekEntryResult!10183)

(assert (=> b!1388152 (= e!786378 Undefined!10183)))

(declare-fun b!1388153 () Bool)

(declare-fun c!129169 () Bool)

(declare-fun lt!610186 () (_ BitVec 64))

(assert (=> b!1388153 (= c!129169 (= lt!610186 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!786379 () SeekEntryResult!10183)

(assert (=> b!1388153 (= e!786380 e!786379)))

(declare-fun b!1388154 () Bool)

(assert (=> b!1388154 (= e!786379 (seekKeyOrZeroReturnVacant!0 (bvadd (x!124724 lt!610053) #b00000000000000000000000000000001) (nextIndex!0 (index!43104 lt!610053) (x!124724 lt!610053) mask!2987) (index!43104 lt!610053) (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610032 mask!2987))))

(declare-fun lt!610185 () SeekEntryResult!10183)

(declare-fun d!149757 () Bool)

(assert (=> d!149757 (and (or ((_ is Undefined!10183) lt!610185) (not ((_ is Found!10183) lt!610185)) (and (bvsge (index!43103 lt!610185) #b00000000000000000000000000000000) (bvslt (index!43103 lt!610185) (size!46369 lt!610032)))) (or ((_ is Undefined!10183) lt!610185) ((_ is Found!10183) lt!610185) (not ((_ is MissingVacant!10183) lt!610185)) (not (= (index!43105 lt!610185) (index!43104 lt!610053))) (and (bvsge (index!43105 lt!610185) #b00000000000000000000000000000000) (bvslt (index!43105 lt!610185) (size!46369 lt!610032)))) (or ((_ is Undefined!10183) lt!610185) (ite ((_ is Found!10183) lt!610185) (= (select (arr!45818 lt!610032) (index!43103 lt!610185)) (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)) (and ((_ is MissingVacant!10183) lt!610185) (= (index!43105 lt!610185) (index!43104 lt!610053)) (= (select (arr!45818 lt!610032) (index!43105 lt!610185)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!149757 (= lt!610185 e!786378)))

(declare-fun c!129170 () Bool)

(assert (=> d!149757 (= c!129170 (bvsge (x!124724 lt!610053) #b01111111111111111111111111111110))))

(assert (=> d!149757 (= lt!610186 (select (arr!45818 lt!610032) (index!43104 lt!610053)))))

(assert (=> d!149757 (validMask!0 mask!2987)))

(assert (=> d!149757 (= (seekKeyOrZeroReturnVacant!0 (x!124724 lt!610053) (index!43104 lt!610053) (index!43104 lt!610053) (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!610032 mask!2987) lt!610185)))

(declare-fun b!1388155 () Bool)

(assert (=> b!1388155 (= e!786379 (MissingVacant!10183 (index!43104 lt!610053)))))

(declare-fun b!1388156 () Bool)

(assert (=> b!1388156 (= e!786378 e!786380)))

(declare-fun c!129168 () Bool)

(assert (=> b!1388156 (= c!129168 (= lt!610186 (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16)))))

(assert (= (and d!149757 c!129170) b!1388152))

(assert (= (and d!149757 (not c!129170)) b!1388156))

(assert (= (and b!1388156 c!129168) b!1388151))

(assert (= (and b!1388156 (not c!129168)) b!1388153))

(assert (= (and b!1388153 c!129169) b!1388155))

(assert (= (and b!1388153 (not c!129169)) b!1388154))

(declare-fun m!1273911 () Bool)

(assert (=> b!1388154 m!1273911))

(assert (=> b!1388154 m!1273911))

(assert (=> b!1388154 m!1273557))

(declare-fun m!1273913 () Bool)

(assert (=> b!1388154 m!1273913))

(declare-fun m!1273915 () Bool)

(assert (=> d!149757 m!1273915))

(declare-fun m!1273917 () Bool)

(assert (=> d!149757 m!1273917))

(assert (=> d!149757 m!1273615))

(assert (=> d!149757 m!1273549))

(assert (=> b!1387887 d!149757))

(declare-fun d!149759 () Bool)

(assert (=> d!149759 (= (validKeyInArray!0 (select (arr!45818 lt!610032) startIndex!16)) (and (not (= (select (arr!45818 lt!610032) startIndex!16) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45818 lt!610032) startIndex!16) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1387973 d!149759))

(declare-fun d!149761 () Bool)

(assert (=> d!149761 (= (seekEntryOrOpen!0 (select (arr!45818 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94896 (store (arr!45818 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46369 a!2938)) mask!2987))))

(assert (=> d!149761 true))

(declare-fun _$42!25 () Unit!46348)

(assert (=> d!149761 (= (choose!14 a!2938 i!1065 startIndex!16 mask!2987) _$42!25)))

(declare-fun bs!40338 () Bool)

(assert (= bs!40338 d!149761))

(assert (=> bs!40338 m!1273559))

(assert (=> bs!40338 m!1273565))

(assert (=> bs!40338 m!1273565))

(assert (=> bs!40338 m!1273567))

(assert (=> bs!40338 m!1273557))

(assert (=> bs!40338 m!1273685))

(assert (=> bs!40338 m!1273557))

(assert (=> d!149671 d!149761))

(assert (=> d!149671 d!149691))

(assert (=> d!149659 d!149663))

(declare-fun d!149763 () Bool)

(assert (=> d!149763 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(assert (=> d!149763 true))

(declare-fun _$72!134 () Unit!46348)

(assert (=> d!149763 (= (choose!38 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16) _$72!134)))

(declare-fun bs!40339 () Bool)

(assert (= bs!40339 d!149763))

(assert (=> bs!40339 m!1273569))

(assert (=> d!149659 d!149763))

(assert (=> d!149659 d!149691))

(assert (=> b!1387962 d!149751))

(declare-fun b!1388157 () Bool)

(declare-fun e!786382 () Bool)

(declare-fun call!66625 () Bool)

(assert (=> b!1388157 (= e!786382 call!66625)))

(declare-fun b!1388158 () Bool)

(declare-fun e!786381 () Bool)

(assert (=> b!1388158 (= e!786381 call!66625)))

(declare-fun bm!66622 () Bool)

(assert (=> bm!66622 (= call!66625 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2938 mask!2987))))

(declare-fun b!1388159 () Bool)

(declare-fun e!786383 () Bool)

(assert (=> b!1388159 (= e!786383 e!786382)))

(declare-fun c!129171 () Bool)

(assert (=> b!1388159 (= c!129171 (validKeyInArray!0 (select (arr!45818 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!149765 () Bool)

(declare-fun res!928704 () Bool)

(assert (=> d!149765 (=> res!928704 e!786383)))

(assert (=> d!149765 (= res!928704 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46369 a!2938)))))

(assert (=> d!149765 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2938 mask!2987) e!786383)))

(declare-fun b!1388160 () Bool)

(assert (=> b!1388160 (= e!786382 e!786381)))

(declare-fun lt!610187 () (_ BitVec 64))

(assert (=> b!1388160 (= lt!610187 (select (arr!45818 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!610189 () Unit!46348)

(assert (=> b!1388160 (= lt!610189 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!610187 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1388160 (arrayContainsKey!0 a!2938 lt!610187 #b00000000000000000000000000000000)))

(declare-fun lt!610188 () Unit!46348)

(assert (=> b!1388160 (= lt!610188 lt!610189)))

(declare-fun res!928705 () Bool)

(assert (=> b!1388160 (= res!928705 (= (seekEntryOrOpen!0 (select (arr!45818 a!2938) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!2938 mask!2987) (Found!10183 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1388160 (=> (not res!928705) (not e!786381))))

(assert (= (and d!149765 (not res!928704)) b!1388159))

(assert (= (and b!1388159 c!129171) b!1388160))

(assert (= (and b!1388159 (not c!129171)) b!1388157))

(assert (= (and b!1388160 res!928705) b!1388158))

(assert (= (or b!1388158 b!1388157) bm!66622))

(declare-fun m!1273919 () Bool)

(assert (=> bm!66622 m!1273919))

(assert (=> b!1388159 m!1273849))

(assert (=> b!1388159 m!1273849))

(assert (=> b!1388159 m!1273853))

(assert (=> b!1388160 m!1273849))

(declare-fun m!1273921 () Bool)

(assert (=> b!1388160 m!1273921))

(declare-fun m!1273923 () Bool)

(assert (=> b!1388160 m!1273923))

(assert (=> b!1388160 m!1273849))

(declare-fun m!1273925 () Bool)

(assert (=> b!1388160 m!1273925))

(assert (=> bm!66609 d!149765))

(declare-fun d!149767 () Bool)

(assert (=> d!149767 (arrayContainsKey!0 a!2938 lt!610073 #b00000000000000000000000000000000)))

(declare-fun lt!610190 () Unit!46348)

(assert (=> d!149767 (= lt!610190 (choose!13 a!2938 lt!610073 startIndex!16))))

(assert (=> d!149767 (bvsge startIndex!16 #b00000000000000000000000000000000)))

(assert (=> d!149767 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!610073 startIndex!16) lt!610190)))

(declare-fun bs!40340 () Bool)

(assert (= bs!40340 d!149767))

(assert (=> bs!40340 m!1273645))

(declare-fun m!1273927 () Bool)

(assert (=> bs!40340 m!1273927))

(assert (=> b!1387925 d!149767))

(declare-fun d!149769 () Bool)

(declare-fun res!928706 () Bool)

(declare-fun e!786384 () Bool)

(assert (=> d!149769 (=> res!928706 e!786384)))

(assert (=> d!149769 (= res!928706 (= (select (arr!45818 a!2938) #b00000000000000000000000000000000) lt!610073))))

(assert (=> d!149769 (= (arrayContainsKey!0 a!2938 lt!610073 #b00000000000000000000000000000000) e!786384)))

(declare-fun b!1388161 () Bool)

(declare-fun e!786385 () Bool)

(assert (=> b!1388161 (= e!786384 e!786385)))

(declare-fun res!928707 () Bool)

(assert (=> b!1388161 (=> (not res!928707) (not e!786385))))

(assert (=> b!1388161 (= res!928707 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46369 a!2938)))))

(declare-fun b!1388162 () Bool)

(assert (=> b!1388162 (= e!786385 (arrayContainsKey!0 a!2938 lt!610073 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!149769 (not res!928706)) b!1388161))

(assert (= (and b!1388161 res!928707) b!1388162))

(assert (=> d!149769 m!1273703))

(declare-fun m!1273929 () Bool)

(assert (=> b!1388162 m!1273929))

(assert (=> b!1387925 d!149769))

(assert (=> b!1387925 d!149687))

(declare-fun d!149771 () Bool)

(assert (=> d!149771 (arrayContainsKey!0 a!2938 lt!610100 #b00000000000000000000000000000000)))

(declare-fun lt!610191 () Unit!46348)

(assert (=> d!149771 (= lt!610191 (choose!13 a!2938 lt!610100 #b00000000000000000000000000000000))))

(assert (=> d!149771 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!149771 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!610100 #b00000000000000000000000000000000) lt!610191)))

(declare-fun bs!40341 () Bool)

(assert (= bs!40341 d!149771))

(assert (=> bs!40341 m!1273709))

(declare-fun m!1273931 () Bool)

(assert (=> bs!40341 m!1273931))

(assert (=> b!1387963 d!149771))

(declare-fun d!149773 () Bool)

(declare-fun res!928708 () Bool)

(declare-fun e!786386 () Bool)

(assert (=> d!149773 (=> res!928708 e!786386)))

(assert (=> d!149773 (= res!928708 (= (select (arr!45818 a!2938) #b00000000000000000000000000000000) lt!610100))))

(assert (=> d!149773 (= (arrayContainsKey!0 a!2938 lt!610100 #b00000000000000000000000000000000) e!786386)))

(declare-fun b!1388163 () Bool)

(declare-fun e!786387 () Bool)

(assert (=> b!1388163 (= e!786386 e!786387)))

(declare-fun res!928709 () Bool)

(assert (=> b!1388163 (=> (not res!928709) (not e!786387))))

(assert (=> b!1388163 (= res!928709 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!46369 a!2938)))))

(declare-fun b!1388164 () Bool)

(assert (=> b!1388164 (= e!786387 (arrayContainsKey!0 a!2938 lt!610100 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!149773 (not res!928708)) b!1388163))

(assert (= (and b!1388163 res!928709) b!1388164))

(assert (=> d!149773 m!1273703))

(declare-fun m!1273933 () Bool)

(assert (=> b!1388164 m!1273933))

(assert (=> b!1387963 d!149773))

(declare-fun b!1388165 () Bool)

(declare-fun e!786389 () SeekEntryResult!10183)

(declare-fun lt!610193 () SeekEntryResult!10183)

(assert (=> b!1388165 (= e!786389 (MissingZero!10183 (index!43104 lt!610193)))))

(declare-fun b!1388166 () Bool)

(assert (=> b!1388166 (= e!786389 (seekKeyOrZeroReturnVacant!0 (x!124724 lt!610193) (index!43104 lt!610193) (index!43104 lt!610193) (select (arr!45818 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987))))

(declare-fun b!1388167 () Bool)

(declare-fun c!129172 () Bool)

(declare-fun lt!610192 () (_ BitVec 64))

(assert (=> b!1388167 (= c!129172 (= lt!610192 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!786390 () SeekEntryResult!10183)

(assert (=> b!1388167 (= e!786390 e!786389)))

(declare-fun b!1388168 () Bool)

(assert (=> b!1388168 (= e!786390 (Found!10183 (index!43104 lt!610193)))))

(declare-fun b!1388169 () Bool)

(declare-fun e!786388 () SeekEntryResult!10183)

(assert (=> b!1388169 (= e!786388 Undefined!10183)))

(declare-fun b!1388170 () Bool)

(assert (=> b!1388170 (= e!786388 e!786390)))

(assert (=> b!1388170 (= lt!610192 (select (arr!45818 a!2938) (index!43104 lt!610193)))))

(declare-fun c!129174 () Bool)

(assert (=> b!1388170 (= c!129174 (= lt!610192 (select (arr!45818 a!2938) #b00000000000000000000000000000000)))))

(declare-fun d!149775 () Bool)

(declare-fun lt!610194 () SeekEntryResult!10183)

(assert (=> d!149775 (and (or ((_ is Undefined!10183) lt!610194) (not ((_ is Found!10183) lt!610194)) (and (bvsge (index!43103 lt!610194) #b00000000000000000000000000000000) (bvslt (index!43103 lt!610194) (size!46369 a!2938)))) (or ((_ is Undefined!10183) lt!610194) ((_ is Found!10183) lt!610194) (not ((_ is MissingZero!10183) lt!610194)) (and (bvsge (index!43102 lt!610194) #b00000000000000000000000000000000) (bvslt (index!43102 lt!610194) (size!46369 a!2938)))) (or ((_ is Undefined!10183) lt!610194) ((_ is Found!10183) lt!610194) ((_ is MissingZero!10183) lt!610194) (not ((_ is MissingVacant!10183) lt!610194)) (and (bvsge (index!43105 lt!610194) #b00000000000000000000000000000000) (bvslt (index!43105 lt!610194) (size!46369 a!2938)))) (or ((_ is Undefined!10183) lt!610194) (ite ((_ is Found!10183) lt!610194) (= (select (arr!45818 a!2938) (index!43103 lt!610194)) (select (arr!45818 a!2938) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!10183) lt!610194) (= (select (arr!45818 a!2938) (index!43102 lt!610194)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10183) lt!610194) (= (select (arr!45818 a!2938) (index!43105 lt!610194)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!149775 (= lt!610194 e!786388)))

(declare-fun c!129173 () Bool)

(assert (=> d!149775 (= c!129173 (and ((_ is Intermediate!10183) lt!610193) (undefined!10995 lt!610193)))))

(assert (=> d!149775 (= lt!610193 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45818 a!2938) #b00000000000000000000000000000000) mask!2987) (select (arr!45818 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987))))

(assert (=> d!149775 (validMask!0 mask!2987)))

(assert (=> d!149775 (= (seekEntryOrOpen!0 (select (arr!45818 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987) lt!610194)))

(assert (= (and d!149775 c!129173) b!1388169))

(assert (= (and d!149775 (not c!129173)) b!1388170))

(assert (= (and b!1388170 c!129174) b!1388168))

(assert (= (and b!1388170 (not c!129174)) b!1388167))

(assert (= (and b!1388167 c!129172) b!1388165))

(assert (= (and b!1388167 (not c!129172)) b!1388166))

(assert (=> b!1388166 m!1273703))

(declare-fun m!1273935 () Bool)

(assert (=> b!1388166 m!1273935))

(declare-fun m!1273937 () Bool)

(assert (=> b!1388170 m!1273937))

(assert (=> d!149775 m!1273703))

(declare-fun m!1273939 () Bool)

(assert (=> d!149775 m!1273939))

(assert (=> d!149775 m!1273939))

(assert (=> d!149775 m!1273703))

(declare-fun m!1273941 () Bool)

(assert (=> d!149775 m!1273941))

(declare-fun m!1273943 () Bool)

(assert (=> d!149775 m!1273943))

(declare-fun m!1273945 () Bool)

(assert (=> d!149775 m!1273945))

(declare-fun m!1273947 () Bool)

(assert (=> d!149775 m!1273947))

(assert (=> d!149775 m!1273549))

(assert (=> b!1387963 d!149775))

(assert (=> b!1387988 d!149751))

(check-sat (not b!1388144) (not b!1388071) (not b!1388092) (not b!1388077) (not d!149767) (not d!149753) (not d!149757) (not d!149735) (not b!1388076) (not b!1388117) (not b!1388149) (not b!1388069) (not d!149743) (not b!1388160) (not d!149747) (not b!1388062) (not b!1388063) (not b!1388162) (not b!1388150) (not bm!66621) (not b!1388079) (not b!1388164) (not bm!66620) (not bm!66622) (not d!149731) (not d!149775) (not b!1388166) (not d!149763) (not d!149739) (not b!1388082) (not bm!66619) (not b!1388126) (not b!1388154) (not d!149761) (not d!149741) (not b!1388159) (not d!149771))
(check-sat)
