; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136568 () Bool)

(assert start!136568)

(declare-fun b!1577642 () Bool)

(declare-fun res!1077883 () Bool)

(declare-fun e!879989 () Bool)

(assert (=> b!1577642 (=> (not res!1077883) (not e!879989))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(declare-datatypes ((array!105609 0))(
  ( (array!105610 (arr!50915 (Array (_ BitVec 32) (_ BitVec 64))) (size!51466 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105609)

(declare-fun mask!910 () (_ BitVec 32))

(assert (=> b!1577642 (= res!1077883 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51466 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun res!1077882 () Bool)

(assert (=> start!136568 (=> (not res!1077882) (not e!879989))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136568 (= res!1077882 (validMask!0 mask!910))))

(assert (=> start!136568 e!879989))

(assert (=> start!136568 true))

(declare-fun array_inv!39560 (array!105609) Bool)

(assert (=> start!136568 (array_inv!39560 _keys!610)))

(declare-fun b!1577644 () Bool)

(declare-fun res!1077884 () Bool)

(assert (=> b!1577644 (=> (not res!1077884) (not e!879989))))

(declare-fun k0!768 () (_ BitVec 64))

(assert (=> b!1577644 (= res!1077884 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50915 _keys!610) ee!12) k0!768)) (not (= (bvadd (select (arr!50915 _keys!610) ee!12) (select (arr!50915 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1577643 () Bool)

(declare-fun res!1077881 () Bool)

(assert (=> b!1577643 (=> (not res!1077881) (not e!879989))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577643 (= res!1077881 (validKeyInArray!0 k0!768))))

(declare-fun b!1577645 () Bool)

(declare-datatypes ((SeekEntryResult!13760 0))(
  ( (MissingZero!13760 (index!57437 (_ BitVec 32))) (Found!13760 (index!57438 (_ BitVec 32))) (Intermediate!13760 (undefined!14572 Bool) (index!57439 (_ BitVec 32)) (x!142580 (_ BitVec 32))) (Undefined!13760) (MissingVacant!13760 (index!57440 (_ BitVec 32))) )
))
(declare-fun lt!676018 () SeekEntryResult!13760)

(get-info :version)

(assert (=> b!1577645 (= e!879989 (ite (and ((_ is Intermediate!13760) lt!676018) (undefined!14572 lt!676018)) (bvslt (x!142580 lt!676018) #b01111111111111111111111111111110) (or (not ((_ is Intermediate!13760) lt!676018)) (undefined!14572 lt!676018) (bvsge (x!142580 lt!676018) #b01111111111111111111111111111110) (bvslt (x!142580 lt!676018) #b00000000000000000000000000000000) (bvslt (x!142580 lt!676018) x!458) (and (not (= (select (arr!50915 _keys!610) (index!57439 lt!676018)) k0!768)) (not (= (select (arr!50915 _keys!610) (index!57439 lt!676018)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50915 _keys!610) (index!57439 lt!676018)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105609 (_ BitVec 32)) SeekEntryResult!13760)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577645 (= lt!676018 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k0!768 _keys!610 mask!910))))

(assert (= (and start!136568 res!1077882) b!1577642))

(assert (= (and b!1577642 res!1077883) b!1577643))

(assert (= (and b!1577643 res!1077881) b!1577644))

(assert (= (and b!1577644 res!1077884) b!1577645))

(declare-fun m!1449823 () Bool)

(assert (=> start!136568 m!1449823))

(declare-fun m!1449825 () Bool)

(assert (=> start!136568 m!1449825))

(declare-fun m!1449827 () Bool)

(assert (=> b!1577644 m!1449827))

(declare-fun m!1449829 () Bool)

(assert (=> b!1577643 m!1449829))

(declare-fun m!1449831 () Bool)

(assert (=> b!1577645 m!1449831))

(declare-fun m!1449833 () Bool)

(assert (=> b!1577645 m!1449833))

(assert (=> b!1577645 m!1449833))

(declare-fun m!1449835 () Bool)

(assert (=> b!1577645 m!1449835))

(check-sat (not b!1577643) (not start!136568) (not b!1577645))
(check-sat)
(get-model)

(declare-fun d!165891 () Bool)

(assert (=> d!165891 (= (validKeyInArray!0 k0!768) (and (not (= k0!768 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!768 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1577643 d!165891))

(declare-fun d!165893 () Bool)

(assert (=> d!165893 (= (validMask!0 mask!910) (and (or (= mask!910 #b00000000000000000000000000000111) (= mask!910 #b00000000000000000000000000001111) (= mask!910 #b00000000000000000000000000011111) (= mask!910 #b00000000000000000000000000111111) (= mask!910 #b00000000000000000000000001111111) (= mask!910 #b00000000000000000000000011111111) (= mask!910 #b00000000000000000000000111111111) (= mask!910 #b00000000000000000000001111111111) (= mask!910 #b00000000000000000000011111111111) (= mask!910 #b00000000000000000000111111111111) (= mask!910 #b00000000000000000001111111111111) (= mask!910 #b00000000000000000011111111111111) (= mask!910 #b00000000000000000111111111111111) (= mask!910 #b00000000000000001111111111111111) (= mask!910 #b00000000000000011111111111111111) (= mask!910 #b00000000000000111111111111111111) (= mask!910 #b00000000000001111111111111111111) (= mask!910 #b00000000000011111111111111111111) (= mask!910 #b00000000000111111111111111111111) (= mask!910 #b00000000001111111111111111111111) (= mask!910 #b00000000011111111111111111111111) (= mask!910 #b00000000111111111111111111111111) (= mask!910 #b00000001111111111111111111111111) (= mask!910 #b00000011111111111111111111111111) (= mask!910 #b00000111111111111111111111111111) (= mask!910 #b00001111111111111111111111111111) (= mask!910 #b00011111111111111111111111111111) (= mask!910 #b00111111111111111111111111111111)) (bvsle mask!910 #b00111111111111111111111111111111)))))

(assert (=> start!136568 d!165893))

(declare-fun d!165897 () Bool)

(assert (=> d!165897 (= (array_inv!39560 _keys!610) (bvsge (size!51466 _keys!610) #b00000000000000000000000000000000))))

(assert (=> start!136568 d!165897))

(declare-fun b!1577684 () Bool)

(declare-fun e!880014 () SeekEntryResult!13760)

(declare-fun e!880013 () SeekEntryResult!13760)

(assert (=> b!1577684 (= e!880014 e!880013)))

(declare-fun c!146179 () Bool)

(declare-fun lt!676030 () (_ BitVec 64))

(assert (=> b!1577684 (= c!146179 (or (= lt!676030 k0!768) (= (bvadd lt!676030 lt!676030) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1577685 () Bool)

(declare-fun e!880012 () Bool)

(declare-fun e!880015 () Bool)

(assert (=> b!1577685 (= e!880012 e!880015)))

(declare-fun res!1077905 () Bool)

(declare-fun lt!676031 () SeekEntryResult!13760)

(assert (=> b!1577685 (= res!1077905 (and ((_ is Intermediate!13760) lt!676031) (not (undefined!14572 lt!676031)) (bvslt (x!142580 lt!676031) #b01111111111111111111111111111110) (bvsge (x!142580 lt!676031) #b00000000000000000000000000000000) (bvsge (x!142580 lt!676031) (bvadd #b00000000000000000000000000000001 x!458))))))

(assert (=> b!1577685 (=> (not res!1077905) (not e!880015))))

(declare-fun b!1577686 () Bool)

(assert (=> b!1577686 (= e!880013 (Intermediate!13760 false (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun d!165899 () Bool)

(assert (=> d!165899 e!880012))

(declare-fun c!146178 () Bool)

(assert (=> d!165899 (= c!146178 (and ((_ is Intermediate!13760) lt!676031) (undefined!14572 lt!676031)))))

(assert (=> d!165899 (= lt!676031 e!880014)))

(declare-fun c!146177 () Bool)

(assert (=> d!165899 (= c!146177 (bvsge (bvadd #b00000000000000000000000000000001 x!458) #b01111111111111111111111111111110))))

(assert (=> d!165899 (= lt!676030 (select (arr!50915 _keys!610) (nextIndex!0 ee!12 x!458 mask!910)))))

(assert (=> d!165899 (validMask!0 mask!910)))

(assert (=> d!165899 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458) (nextIndex!0 ee!12 x!458 mask!910) k0!768 _keys!610 mask!910) lt!676031)))

(declare-fun b!1577687 () Bool)

(assert (=> b!1577687 (and (bvsge (index!57439 lt!676031) #b00000000000000000000000000000000) (bvslt (index!57439 lt!676031) (size!51466 _keys!610)))))

(declare-fun res!1077903 () Bool)

(assert (=> b!1577687 (= res!1077903 (= (select (arr!50915 _keys!610) (index!57439 lt!676031)) k0!768))))

(declare-fun e!880011 () Bool)

(assert (=> b!1577687 (=> res!1077903 e!880011)))

(assert (=> b!1577687 (= e!880015 e!880011)))

(declare-fun b!1577688 () Bool)

(assert (=> b!1577688 (and (bvsge (index!57439 lt!676031) #b00000000000000000000000000000000) (bvslt (index!57439 lt!676031) (size!51466 _keys!610)))))

(assert (=> b!1577688 (= e!880011 (= (select (arr!50915 _keys!610) (index!57439 lt!676031)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1577689 () Bool)

(assert (=> b!1577689 (= e!880014 (Intermediate!13760 true (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458)))))

(declare-fun b!1577690 () Bool)

(assert (=> b!1577690 (= e!880012 (bvsge (x!142580 lt!676031) #b01111111111111111111111111111110))))

(declare-fun b!1577691 () Bool)

(assert (=> b!1577691 (= e!880013 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!458 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 ee!12 x!458 mask!910) (bvadd #b00000000000000000000000000000001 x!458) mask!910) k0!768 _keys!610 mask!910))))

(declare-fun b!1577692 () Bool)

(assert (=> b!1577692 (and (bvsge (index!57439 lt!676031) #b00000000000000000000000000000000) (bvslt (index!57439 lt!676031) (size!51466 _keys!610)))))

(declare-fun res!1077904 () Bool)

(assert (=> b!1577692 (= res!1077904 (= (select (arr!50915 _keys!610) (index!57439 lt!676031)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1577692 (=> res!1077904 e!880011)))

(assert (= (and d!165899 c!146177) b!1577689))

(assert (= (and d!165899 (not c!146177)) b!1577684))

(assert (= (and b!1577684 c!146179) b!1577686))

(assert (= (and b!1577684 (not c!146179)) b!1577691))

(assert (= (and d!165899 c!146178) b!1577690))

(assert (= (and d!165899 (not c!146178)) b!1577685))

(assert (= (and b!1577685 res!1077905) b!1577687))

(assert (= (and b!1577687 (not res!1077903)) b!1577692))

(assert (= (and b!1577692 (not res!1077904)) b!1577688))

(assert (=> d!165899 m!1449833))

(declare-fun m!1449851 () Bool)

(assert (=> d!165899 m!1449851))

(assert (=> d!165899 m!1449823))

(declare-fun m!1449853 () Bool)

(assert (=> b!1577692 m!1449853))

(assert (=> b!1577687 m!1449853))

(assert (=> b!1577688 m!1449853))

(assert (=> b!1577691 m!1449833))

(declare-fun m!1449855 () Bool)

(assert (=> b!1577691 m!1449855))

(assert (=> b!1577691 m!1449855))

(declare-fun m!1449857 () Bool)

(assert (=> b!1577691 m!1449857))

(assert (=> b!1577645 d!165899))

(declare-fun d!165913 () Bool)

(declare-fun lt!676034 () (_ BitVec 32))

(assert (=> d!165913 (and (bvsge lt!676034 #b00000000000000000000000000000000) (bvslt lt!676034 (bvadd mask!910 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!165913 (= lt!676034 (choose!52 ee!12 x!458 mask!910))))

(assert (=> d!165913 (validMask!0 mask!910)))

(assert (=> d!165913 (= (nextIndex!0 ee!12 x!458 mask!910) lt!676034)))

(declare-fun bs!45590 () Bool)

(assert (= bs!45590 d!165913))

(declare-fun m!1449859 () Bool)

(assert (=> bs!45590 m!1449859))

(assert (=> bs!45590 m!1449823))

(assert (=> b!1577645 d!165913))

(check-sat (not d!165913) (not b!1577691) (not d!165899))
(check-sat)
