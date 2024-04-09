; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136570 () Bool)

(assert start!136570)

(declare-fun b!1577654 () Bool)

(declare-fun res!1077893 () Bool)

(declare-fun e!879995 () Bool)

(assert (=> b!1577654 (=> (not res!1077893) (not e!879995))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(declare-datatypes ((array!105611 0))(
  ( (array!105612 (arr!50916 (Array (_ BitVec 32) (_ BitVec 64))) (size!51467 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105611)

(declare-fun mask!910 () (_ BitVec 32))

(assert (=> b!1577654 (= res!1077893 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51467 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577656 () Bool)

(declare-fun res!1077895 () Bool)

(assert (=> b!1577656 (=> (not res!1077895) (not e!879995))))

(declare-fun k!768 () (_ BitVec 64))

(assert (=> b!1577656 (= res!1077895 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50916 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50916 _keys!610) ee!12) (select (arr!50916 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1077896 () Bool)

(assert (=> start!136570 (=> (not res!1077896) (not e!879995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136570 (= res!1077896 (validMask!0 mask!910))))

(assert (=> start!136570 e!879995))

(assert (=> start!136570 true))

(declare-fun array_inv!39561 (array!105611) Bool)

(assert (=> start!136570 (array_inv!39561 _keys!610)))

(declare-fun b!1577655 () Bool)

(declare-fun res!1077894 () Bool)

(assert (=> b!1577655 (=> (not res!1077894) (not e!879995))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577655 (= res!1077894 (validKeyInArray!0 k!768))))

(declare-datatypes ((SeekEntryResult!13761 0))(
  ( (MissingZero!13761 (index!57441 (_ BitVec 32))) (Found!13761 (index!57442 (_ BitVec 32))) (Intermediate!13761 (undefined!14573 Bool) (index!57443 (_ BitVec 32)) (x!142581 (_ BitVec 32))) (Undefined!13761) (MissingVacant!13761 (index!57444 (_ BitVec 32))) )
))
(declare-fun lt!676021 () SeekEntryResult!13761)

(declare-fun b!1577657 () Bool)

(assert (=> b!1577657 (= e!879995 (ite (and (is-Intermediate!13761 lt!676021) (undefined!14573 lt!676021)) (bvslt (x!142581 lt!676021) #b01111111111111111111111111111110) (or (not (is-Intermediate!13761 lt!676021)) (undefined!14573 lt!676021) (bvsge (x!142581 lt!676021) #b01111111111111111111111111111110) (bvslt (x!142581 lt!676021) #b00000000000000000000000000000000) (bvslt (x!142581 lt!676021) x!458) (and (not (= (select (arr!50916 _keys!610) (index!57443 lt!676021)) k!768)) (not (= (select (arr!50916 _keys!610) (index!57443 lt!676021)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50916 _keys!610) (index!57443 lt!676021)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105611 (_ BitVec 32)) SeekEntryResult!13761)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577657 (= lt!676021 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k!768 _keys!610 mask!910))))

(assert (= (and start!136570 res!1077896) b!1577654))

(assert (= (and b!1577654 res!1077893) b!1577655))

(assert (= (and b!1577655 res!1077894) b!1577656))

(assert (= (and b!1577656 res!1077895) b!1577657))

(declare-fun m!1449837 () Bool)

(assert (=> b!1577656 m!1449837))

(declare-fun m!1449839 () Bool)

(assert (=> start!136570 m!1449839))

(declare-fun m!1449841 () Bool)

(assert (=> start!136570 m!1449841))

(declare-fun m!1449843 () Bool)

(assert (=> b!1577655 m!1449843))

(declare-fun m!1449845 () Bool)

(assert (=> b!1577657 m!1449845))

(declare-fun m!1449847 () Bool)

(assert (=> b!1577657 m!1449847))

(assert (=> b!1577657 m!1449847))

(declare-fun m!1449849 () Bool)

(assert (=> b!1577657 m!1449849))

(push 1)

(assert (not b!1577655))

(assert (not start!136570))

(assert (not b!1577657))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165905 () Bool)

(assert (=> d!165905 (= (validKeyInArray!0 k!768) (and (not (= k!768 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!768 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1577655 d!165905))

(declare-fun d!165907 () Bool)

(assert (=> d!165907 (= (validMask!0 mask!910) (and (or (= mask!910 #b00000000000000000000000000000111) (= mask!910 #b00000000000000000000000000001111) (= mask!910 #b00000000000000000000000000011111) (= mask!910 #b00000000000000000000000000111111) (= mask!910 #b00000000000000000000000001111111) (= mask!910 #b00000000000000000000000011111111) (= mask!910 #b00000000000000000000000111111111) (= mask!910 #b00000000000000000000001111111111) (= mask!910 #b00000000000000000000011111111111) (= mask!910 #b00000000000000000000111111111111) (= mask!910 #b00000000000000000001111111111111) (= mask!910 #b00000000000000000011111111111111) (= mask!910 #b00000000000000000111111111111111) (= mask!910 #b00000000000000001111111111111111) (= mask!910 #b00000000000000011111111111111111) (= mask!910 #b00000000000000111111111111111111) (= mask!910 #b00000000000001111111111111111111) (= mask!910 #b00000000000011111111111111111111) (= mask!910 #b00000000000111111111111111111111) (= mask!910 #b00000000001111111111111111111111) (= mask!910 #b00000000011111111111111111111111) (= mask!910 #b00000000111111111111111111111111) (= mask!910 #b00000001111111111111111111111111) (= mask!910 #b00000011111111111111111111111111) (= mask!910 #b00000111111111111111111111111111) (= mask!910 #b00001111111111111111111111111111) (= mask!910 #b00011111111111111111111111111111) (= mask!910 #b00111111111111111111111111111111)) (bvsle mask!910 #b00111111111111111111111111111111)))))

(assert (=> start!136570 d!165907))

(declare-fun d!165909 () Bool)

(assert (=> d!165909 (= (array_inv!39561 _keys!610) (bvsge (size!51467 _keys!610) #b00000000000000000000000000000000))))

(assert (=> start!136570 d!165909))

(declare-fun b!1577730 () Bool)

(declare-fun e!880041 () Bool)

(declare-fun e!880038 () Bool)

(assert (=> b!1577730 (= e!880041 e!880038)))

(declare-fun res!1077923 () Bool)

(declare-fun lt!676044 () SeekEntryResult!13761)

(assert (=> b!1577730 (= res!1077923 (and (is-Intermediate!13761 lt!676044) (not (undefined!14573 lt!676044)) (bvslt (x!142581 lt!676044) #b01111111111111111111111111111110) (bvsge (x!142581 lt!676044) #b00000000000000000000000000000000) (bvsge (x!142581 lt!676044) (bvadd #b00000000000000000000000000000001 x!458))))))

(assert (=> b!1577730 (=> (not res!1077923) (not e!880038))))

(declare-fun b!1577731 () Bool)

(assert (=> b!1577731 (and (bvsge (index!57443 lt!676044) #b00000000000000000000000000000000) (bvslt (index!57443 lt!676044) (size!51467 _keys!610)))))

(declare-fun e!880037 () Bool)

(assert (=> b!1577731 (= e!880037 (= (select (arr!50916 _keys!610) (index!57443 lt!676044)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1577732 () Bool)

(declare-fun e!880039 () SeekEntryResult!13761)

(assert (=> b!1577732 (= e!880039 (Intermediate!13761 false (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun b!1577733 () Bool)

(assert (=> b!1577733 (= e!880041 (bvsge (x!142581 lt!676044) #b01111111111111111111111111111110))))

(declare-fun e!880040 () SeekEntryResult!13761)

(declare-fun b!1577734 () Bool)

(assert (=> b!1577734 (= e!880040 (Intermediate!13761 true (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun b!1577735 () Bool)

(assert (=> b!1577735 (and (bvsge (index!57443 lt!676044) #b00000000000000000000000000000000) (bvslt (index!57443 lt!676044) (size!51467 _keys!610)))))

(declare-fun res!1077922 () Bool)

(assert (=> b!1577735 (= res!1077922 (= (select (arr!50916 _keys!610) (index!57443 lt!676044)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1577735 (=> res!1077922 e!880037)))

(declare-fun d!165911 () Bool)

(assert (=> d!165911 e!880041))

(declare-fun c!146193 () Bool)

(assert (=> d!165911 (= c!146193 (and (is-Intermediate!13761 lt!676044) (undefined!14573 lt!676044)))))

(assert (=> d!165911 (= lt!676044 e!880040)))

(declare-fun c!146191 () Bool)

(assert (=> d!165911 (= c!146191 (bvsge (bvadd #b00000000000000000000000000000001 x!458) #b01111111111111111111111111111110))))

(declare-fun lt!676045 () (_ BitVec 64))

(assert (=> d!165911 (= lt!676045 (select (arr!50916 _keys!610) (nextIndex!0 ee!12 x!458 mask!910)))))

(assert (=> d!165911 (validMask!0 mask!910)))

(assert (=> d!165911 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k!768 _keys!610 mask!910) lt!676044)))

(declare-fun b!1577736 () Bool)

(assert (=> b!1577736 (and (bvsge (index!57443 lt!676044) #b00000000000000000000000000000000) (bvslt (index!57443 lt!676044) (size!51467 _keys!610)))))

(declare-fun res!1077921 () Bool)

(assert (=> b!1577736 (= res!1077921 (= (select (arr!50916 _keys!610) (index!57443 lt!676044)) k!768))))

(assert (=> b!1577736 (=> res!1077921 e!880037)))

(assert (=> b!1577736 (= e!880038 e!880037)))

(declare-fun b!1577737 () Bool)

(assert (=> b!1577737 (= e!880040 e!880039)))

(declare-fun c!146192 () Bool)

(assert (=> b!1577737 (= c!146192 (or (= lt!676045 k!768) (= (bvadd lt!676045 lt!676045) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577738 () Bool)

(assert (=> b!1577738 (= e!880039 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458) mask!910) k!768 _keys!610 mask!910))))

(assert (= (and d!165911 c!146191) b!1577734))

(assert (= (and d!165911 (not c!146191)) b!1577737))

(assert (= (and b!1577737 c!146192) b!1577732))

(assert (= (and b!1577737 (not c!146192)) b!1577738))

(assert (= (and d!165911 c!146193) b!1577733))

(assert (= (and d!165911 (not c!146193)) b!1577730))

(assert (= (and b!1577730 res!1077923) b!1577736))

(assert (= (and b!1577736 (not res!1077921)) b!1577735))

(assert (= (and b!1577735 (not res!1077922)) b!1577731))

(assert (=> b!1577738 m!1449847))

(declare-fun m!1449871 () Bool)

(assert (=> b!1577738 m!1449871))

(assert (=> b!1577738 m!1449871))

(declare-fun m!1449873 () Bool)

(assert (=> b!1577738 m!1449873))

(assert (=> d!165911 m!1449847))

(declare-fun m!1449875 () Bool)

(assert (=> d!165911 m!1449875))

(assert (=> d!165911 m!1449839))

(declare-fun m!1449877 () Bool)

(assert (=> b!1577731 m!1449877))

(assert (=> b!1577736 m!1449877))

(assert (=> b!1577735 m!1449877))

(assert (=> b!1577657 d!165911))

(declare-fun d!165919 () Bool)

(declare-fun lt!676048 () (_ BitVec 32))

(assert (=> d!165919 (and (bvsge lt!676048 #b00000000000000000000000000000000) (bvslt lt!676048 (bvadd mask!910 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!165919 (= lt!676048 (choose!52 ee!12 x!458 mask!910))))

(assert (=> d!165919 (validMask!0 mask!910)))

(assert (=> d!165919 (= (nextIndex!0 ee!12 x!458 mask!910) lt!676048)))

(declare-fun bs!45592 () Bool)

(assert (= bs!45592 d!165919))

(declare-fun m!1449879 () Bool)

(assert (=> bs!45592 m!1449879))

(assert (=> bs!45592 m!1449839))

(assert (=> b!1577657 d!165919))

(push 1)

