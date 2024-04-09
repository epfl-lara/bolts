; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32300 () Bool)

(assert start!32300)

(declare-fun b!321621 () Bool)

(declare-fun e!199182 () Bool)

(declare-fun e!199183 () Bool)

(assert (=> b!321621 (= e!199182 e!199183)))

(declare-fun res!175905 () Bool)

(assert (=> b!321621 (=> (not res!175905) (not e!199183))))

(declare-datatypes ((array!16486 0))(
  ( (array!16487 (arr!7799 (Array (_ BitVec 32) (_ BitVec 64))) (size!8151 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16486)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2941 0))(
  ( (MissingZero!2941 (index!13940 (_ BitVec 32))) (Found!2941 (index!13941 (_ BitVec 32))) (Intermediate!2941 (undefined!3753 Bool) (index!13942 (_ BitVec 32)) (x!32163 (_ BitVec 32))) (Undefined!2941) (MissingVacant!2941 (index!13943 (_ BitVec 32))) )
))
(declare-fun lt!156226 () SeekEntryResult!2941)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16486 (_ BitVec 32)) SeekEntryResult!2941)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321621 (= res!175905 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156226))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!321621 (= lt!156226 (Intermediate!2941 false resIndex!58 resX!58))))

(declare-fun b!321622 () Bool)

(declare-fun res!175899 () Bool)

(assert (=> b!321622 (=> (not res!175899) (not e!199182))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16486 (_ BitVec 32)) SeekEntryResult!2941)

(assert (=> b!321622 (= res!175899 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2941 i!1250)))))

(declare-fun b!321623 () Bool)

(declare-fun res!175902 () Bool)

(assert (=> b!321623 (=> (not res!175902) (not e!199183))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!321623 (= res!175902 (and (= (select (arr!7799 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8151 a!3305))))))

(declare-fun b!321624 () Bool)

(declare-fun res!175900 () Bool)

(assert (=> b!321624 (=> (not res!175900) (not e!199182))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16486 (_ BitVec 32)) Bool)

(assert (=> b!321624 (= res!175900 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!321625 () Bool)

(declare-fun res!175901 () Bool)

(assert (=> b!321625 (=> (not res!175901) (not e!199182))))

(assert (=> b!321625 (= res!175901 (and (= (size!8151 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8151 a!3305))))))

(declare-fun b!321627 () Bool)

(declare-fun res!175907 () Bool)

(assert (=> b!321627 (=> (not res!175907) (not e!199182))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321627 (= res!175907 (validKeyInArray!0 k0!2497))))

(declare-fun b!321628 () Bool)

(declare-fun res!175908 () Bool)

(assert (=> b!321628 (=> (not res!175908) (not e!199183))))

(assert (=> b!321628 (= res!175908 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156226))))

(declare-fun b!321629 () Bool)

(declare-fun res!175903 () Bool)

(assert (=> b!321629 (=> (not res!175903) (not e!199182))))

(declare-fun arrayContainsKey!0 (array!16486 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321629 (= res!175903 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321630 () Bool)

(declare-fun lt!156227 () (_ BitVec 32))

(assert (=> b!321630 (= e!199183 (and (bvsge mask!3777 #b00000000000000000000000000000000) (or (bvslt lt!156227 #b00000000000000000000000000000000) (bvsge lt!156227 (bvadd #b00000000000000000000000000000001 mask!3777)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321630 (= lt!156227 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun res!175904 () Bool)

(assert (=> start!32300 (=> (not res!175904) (not e!199182))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32300 (= res!175904 (validMask!0 mask!3777))))

(assert (=> start!32300 e!199182))

(declare-fun array_inv!5753 (array!16486) Bool)

(assert (=> start!32300 (array_inv!5753 a!3305)))

(assert (=> start!32300 true))

(declare-fun b!321626 () Bool)

(declare-fun res!175906 () Bool)

(assert (=> b!321626 (=> (not res!175906) (not e!199183))))

(assert (=> b!321626 (= res!175906 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7799 a!3305) index!1840) k0!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7799 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7799 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!32300 res!175904) b!321625))

(assert (= (and b!321625 res!175901) b!321627))

(assert (= (and b!321627 res!175907) b!321629))

(assert (= (and b!321629 res!175903) b!321622))

(assert (= (and b!321622 res!175899) b!321624))

(assert (= (and b!321624 res!175900) b!321621))

(assert (= (and b!321621 res!175905) b!321623))

(assert (= (and b!321623 res!175902) b!321628))

(assert (= (and b!321628 res!175908) b!321626))

(assert (= (and b!321626 res!175906) b!321630))

(declare-fun m!329731 () Bool)

(assert (=> b!321628 m!329731))

(declare-fun m!329733 () Bool)

(assert (=> b!321624 m!329733))

(declare-fun m!329735 () Bool)

(assert (=> b!321626 m!329735))

(declare-fun m!329737 () Bool)

(assert (=> b!321630 m!329737))

(declare-fun m!329739 () Bool)

(assert (=> b!321622 m!329739))

(declare-fun m!329741 () Bool)

(assert (=> start!32300 m!329741))

(declare-fun m!329743 () Bool)

(assert (=> start!32300 m!329743))

(declare-fun m!329745 () Bool)

(assert (=> b!321627 m!329745))

(declare-fun m!329747 () Bool)

(assert (=> b!321623 m!329747))

(declare-fun m!329749 () Bool)

(assert (=> b!321621 m!329749))

(assert (=> b!321621 m!329749))

(declare-fun m!329751 () Bool)

(assert (=> b!321621 m!329751))

(declare-fun m!329753 () Bool)

(assert (=> b!321629 m!329753))

(check-sat (not b!321629) (not b!321627) (not b!321621) (not b!321630) (not b!321622) (not b!321624) (not b!321628) (not start!32300))
(check-sat)
(get-model)

(declare-fun d!69395 () Bool)

(assert (=> d!69395 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32300 d!69395))

(declare-fun d!69401 () Bool)

(assert (=> d!69401 (= (array_inv!5753 a!3305) (bvsge (size!8151 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32300 d!69401))

(declare-fun b!321693 () Bool)

(declare-fun e!199219 () Bool)

(declare-fun e!199218 () Bool)

(assert (=> b!321693 (= e!199219 e!199218)))

(declare-fun lt!156261 () (_ BitVec 64))

(assert (=> b!321693 (= lt!156261 (select (arr!7799 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9825 0))(
  ( (Unit!9826) )
))
(declare-fun lt!156262 () Unit!9825)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16486 (_ BitVec 64) (_ BitVec 32)) Unit!9825)

(assert (=> b!321693 (= lt!156262 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!156261 #b00000000000000000000000000000000))))

(assert (=> b!321693 (arrayContainsKey!0 a!3305 lt!156261 #b00000000000000000000000000000000)))

(declare-fun lt!156263 () Unit!9825)

(assert (=> b!321693 (= lt!156263 lt!156262)))

(declare-fun res!175955 () Bool)

(assert (=> b!321693 (= res!175955 (= (seekEntryOrOpen!0 (select (arr!7799 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!2941 #b00000000000000000000000000000000)))))

(assert (=> b!321693 (=> (not res!175955) (not e!199218))))

(declare-fun bm!26063 () Bool)

(declare-fun call!26066 () Bool)

(assert (=> bm!26063 (= call!26066 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!321695 () Bool)

(assert (=> b!321695 (= e!199218 call!26066)))

(declare-fun b!321696 () Bool)

(declare-fun e!199217 () Bool)

(assert (=> b!321696 (= e!199217 e!199219)))

(declare-fun c!50495 () Bool)

(assert (=> b!321696 (= c!50495 (validKeyInArray!0 (select (arr!7799 a!3305) #b00000000000000000000000000000000)))))

(declare-fun d!69403 () Bool)

(declare-fun res!175956 () Bool)

(assert (=> d!69403 (=> res!175956 e!199217)))

(assert (=> d!69403 (= res!175956 (bvsge #b00000000000000000000000000000000 (size!8151 a!3305)))))

(assert (=> d!69403 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!199217)))

(declare-fun b!321694 () Bool)

(assert (=> b!321694 (= e!199219 call!26066)))

(assert (= (and d!69403 (not res!175956)) b!321696))

(assert (= (and b!321696 c!50495) b!321693))

(assert (= (and b!321696 (not c!50495)) b!321694))

(assert (= (and b!321693 res!175955) b!321695))

(assert (= (or b!321695 b!321694) bm!26063))

(declare-fun m!329805 () Bool)

(assert (=> b!321693 m!329805))

(declare-fun m!329807 () Bool)

(assert (=> b!321693 m!329807))

(declare-fun m!329809 () Bool)

(assert (=> b!321693 m!329809))

(assert (=> b!321693 m!329805))

(declare-fun m!329811 () Bool)

(assert (=> b!321693 m!329811))

(declare-fun m!329813 () Bool)

(assert (=> bm!26063 m!329813))

(assert (=> b!321696 m!329805))

(assert (=> b!321696 m!329805))

(declare-fun m!329815 () Bool)

(assert (=> b!321696 m!329815))

(assert (=> b!321624 d!69403))

(declare-fun d!69407 () Bool)

(declare-fun res!175961 () Bool)

(declare-fun e!199224 () Bool)

(assert (=> d!69407 (=> res!175961 e!199224)))

(assert (=> d!69407 (= res!175961 (= (select (arr!7799 a!3305) #b00000000000000000000000000000000) k0!2497))))

(assert (=> d!69407 (= (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000) e!199224)))

(declare-fun b!321701 () Bool)

(declare-fun e!199225 () Bool)

(assert (=> b!321701 (= e!199224 e!199225)))

(declare-fun res!175962 () Bool)

(assert (=> b!321701 (=> (not res!175962) (not e!199225))))

(assert (=> b!321701 (= res!175962 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8151 a!3305)))))

(declare-fun b!321702 () Bool)

(assert (=> b!321702 (= e!199225 (arrayContainsKey!0 a!3305 k0!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69407 (not res!175961)) b!321701))

(assert (= (and b!321701 res!175962) b!321702))

(assert (=> d!69407 m!329805))

(declare-fun m!329817 () Bool)

(assert (=> b!321702 m!329817))

(assert (=> b!321629 d!69407))

(declare-fun b!321772 () Bool)

(declare-fun e!199266 () SeekEntryResult!2941)

(assert (=> b!321772 (= e!199266 (Intermediate!2941 true index!1840 x!1490))))

(declare-fun b!321773 () Bool)

(declare-fun e!199268 () SeekEntryResult!2941)

(assert (=> b!321773 (= e!199266 e!199268)))

(declare-fun c!50520 () Bool)

(declare-fun lt!156290 () (_ BitVec 64))

(assert (=> b!321773 (= c!50520 (or (= lt!156290 k0!2497) (= (bvadd lt!156290 lt!156290) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!321775 () Bool)

(assert (=> b!321775 (= e!199268 (Intermediate!2941 false index!1840 x!1490))))

(declare-fun b!321776 () Bool)

(declare-fun e!199269 () Bool)

(declare-fun lt!156289 () SeekEntryResult!2941)

(assert (=> b!321776 (= e!199269 (bvsge (x!32163 lt!156289) #b01111111111111111111111111111110))))

(declare-fun b!321777 () Bool)

(assert (=> b!321777 (and (bvsge (index!13942 lt!156289) #b00000000000000000000000000000000) (bvslt (index!13942 lt!156289) (size!8151 a!3305)))))

(declare-fun e!199270 () Bool)

(assert (=> b!321777 (= e!199270 (= (select (arr!7799 a!3305) (index!13942 lt!156289)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!321778 () Bool)

(declare-fun e!199267 () Bool)

(assert (=> b!321778 (= e!199269 e!199267)))

(declare-fun res!175986 () Bool)

(get-info :version)

(assert (=> b!321778 (= res!175986 (and ((_ is Intermediate!2941) lt!156289) (not (undefined!3753 lt!156289)) (bvslt (x!32163 lt!156289) #b01111111111111111111111111111110) (bvsge (x!32163 lt!156289) #b00000000000000000000000000000000) (bvsge (x!32163 lt!156289) x!1490)))))

(assert (=> b!321778 (=> (not res!175986) (not e!199267))))

(declare-fun b!321779 () Bool)

(assert (=> b!321779 (and (bvsge (index!13942 lt!156289) #b00000000000000000000000000000000) (bvslt (index!13942 lt!156289) (size!8151 a!3305)))))

(declare-fun res!175985 () Bool)

(assert (=> b!321779 (= res!175985 (= (select (arr!7799 a!3305) (index!13942 lt!156289)) k0!2497))))

(assert (=> b!321779 (=> res!175985 e!199270)))

(assert (=> b!321779 (= e!199267 e!199270)))

(declare-fun b!321780 () Bool)

(assert (=> b!321780 (and (bvsge (index!13942 lt!156289) #b00000000000000000000000000000000) (bvslt (index!13942 lt!156289) (size!8151 a!3305)))))

(declare-fun res!175987 () Bool)

(assert (=> b!321780 (= res!175987 (= (select (arr!7799 a!3305) (index!13942 lt!156289)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!321780 (=> res!175987 e!199270)))

(declare-fun b!321774 () Bool)

(assert (=> b!321774 (= e!199268 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun d!69409 () Bool)

(assert (=> d!69409 e!199269))

(declare-fun c!50521 () Bool)

(assert (=> d!69409 (= c!50521 (and ((_ is Intermediate!2941) lt!156289) (undefined!3753 lt!156289)))))

(assert (=> d!69409 (= lt!156289 e!199266)))

(declare-fun c!50522 () Bool)

(assert (=> d!69409 (= c!50522 (bvsge x!1490 #b01111111111111111111111111111110))))

(assert (=> d!69409 (= lt!156290 (select (arr!7799 a!3305) index!1840))))

(assert (=> d!69409 (validMask!0 mask!3777)))

(assert (=> d!69409 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156289)))

(assert (= (and d!69409 c!50522) b!321772))

(assert (= (and d!69409 (not c!50522)) b!321773))

(assert (= (and b!321773 c!50520) b!321775))

(assert (= (and b!321773 (not c!50520)) b!321774))

(assert (= (and d!69409 c!50521) b!321776))

(assert (= (and d!69409 (not c!50521)) b!321778))

(assert (= (and b!321778 res!175986) b!321779))

(assert (= (and b!321779 (not res!175985)) b!321780))

(assert (= (and b!321780 (not res!175987)) b!321777))

(declare-fun m!329839 () Bool)

(assert (=> b!321779 m!329839))

(assert (=> b!321780 m!329839))

(assert (=> b!321774 m!329737))

(assert (=> b!321774 m!329737))

(declare-fun m!329841 () Bool)

(assert (=> b!321774 m!329841))

(assert (=> b!321777 m!329839))

(assert (=> d!69409 m!329735))

(assert (=> d!69409 m!329741))

(assert (=> b!321628 d!69409))

(declare-fun b!321853 () Bool)

(declare-fun e!199314 () SeekEntryResult!2941)

(declare-fun lt!156320 () SeekEntryResult!2941)

(assert (=> b!321853 (= e!199314 (MissingZero!2941 (index!13942 lt!156320)))))

(declare-fun b!321854 () Bool)

(declare-fun c!50551 () Bool)

(declare-fun lt!156322 () (_ BitVec 64))

(assert (=> b!321854 (= c!50551 (= lt!156322 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!199312 () SeekEntryResult!2941)

(assert (=> b!321854 (= e!199312 e!199314)))

(declare-fun b!321855 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16486 (_ BitVec 32)) SeekEntryResult!2941)

(assert (=> b!321855 (= e!199314 (seekKeyOrZeroReturnVacant!0 (x!32163 lt!156320) (index!13942 lt!156320) (index!13942 lt!156320) k0!2497 a!3305 mask!3777))))

(declare-fun b!321856 () Bool)

(declare-fun e!199313 () SeekEntryResult!2941)

(assert (=> b!321856 (= e!199313 e!199312)))

(assert (=> b!321856 (= lt!156322 (select (arr!7799 a!3305) (index!13942 lt!156320)))))

(declare-fun c!50552 () Bool)

(assert (=> b!321856 (= c!50552 (= lt!156322 k0!2497))))

(declare-fun b!321857 () Bool)

(assert (=> b!321857 (= e!199313 Undefined!2941)))

(declare-fun d!69421 () Bool)

(declare-fun lt!156321 () SeekEntryResult!2941)

(assert (=> d!69421 (and (or ((_ is Undefined!2941) lt!156321) (not ((_ is Found!2941) lt!156321)) (and (bvsge (index!13941 lt!156321) #b00000000000000000000000000000000) (bvslt (index!13941 lt!156321) (size!8151 a!3305)))) (or ((_ is Undefined!2941) lt!156321) ((_ is Found!2941) lt!156321) (not ((_ is MissingZero!2941) lt!156321)) (and (bvsge (index!13940 lt!156321) #b00000000000000000000000000000000) (bvslt (index!13940 lt!156321) (size!8151 a!3305)))) (or ((_ is Undefined!2941) lt!156321) ((_ is Found!2941) lt!156321) ((_ is MissingZero!2941) lt!156321) (not ((_ is MissingVacant!2941) lt!156321)) (and (bvsge (index!13943 lt!156321) #b00000000000000000000000000000000) (bvslt (index!13943 lt!156321) (size!8151 a!3305)))) (or ((_ is Undefined!2941) lt!156321) (ite ((_ is Found!2941) lt!156321) (= (select (arr!7799 a!3305) (index!13941 lt!156321)) k0!2497) (ite ((_ is MissingZero!2941) lt!156321) (= (select (arr!7799 a!3305) (index!13940 lt!156321)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2941) lt!156321) (= (select (arr!7799 a!3305) (index!13943 lt!156321)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69421 (= lt!156321 e!199313)))

(declare-fun c!50550 () Bool)

(assert (=> d!69421 (= c!50550 (and ((_ is Intermediate!2941) lt!156320) (undefined!3753 lt!156320)))))

(assert (=> d!69421 (= lt!156320 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777))))

(assert (=> d!69421 (validMask!0 mask!3777)))

(assert (=> d!69421 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) lt!156321)))

(declare-fun b!321858 () Bool)

(assert (=> b!321858 (= e!199312 (Found!2941 (index!13942 lt!156320)))))

(assert (= (and d!69421 c!50550) b!321857))

(assert (= (and d!69421 (not c!50550)) b!321856))

(assert (= (and b!321856 c!50552) b!321858))

(assert (= (and b!321856 (not c!50552)) b!321854))

(assert (= (and b!321854 c!50551) b!321853))

(assert (= (and b!321854 (not c!50551)) b!321855))

(declare-fun m!329867 () Bool)

(assert (=> b!321855 m!329867))

(declare-fun m!329869 () Bool)

(assert (=> b!321856 m!329869))

(assert (=> d!69421 m!329741))

(declare-fun m!329871 () Bool)

(assert (=> d!69421 m!329871))

(assert (=> d!69421 m!329749))

(assert (=> d!69421 m!329751))

(assert (=> d!69421 m!329749))

(declare-fun m!329873 () Bool)

(assert (=> d!69421 m!329873))

(declare-fun m!329875 () Bool)

(assert (=> d!69421 m!329875))

(assert (=> b!321622 d!69421))

(declare-fun d!69435 () Bool)

(assert (=> d!69435 (= (validKeyInArray!0 k0!2497) (and (not (= k0!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!321627 d!69435))

(declare-fun b!321859 () Bool)

(declare-fun e!199315 () SeekEntryResult!2941)

(assert (=> b!321859 (= e!199315 (Intermediate!2941 true (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!321860 () Bool)

(declare-fun e!199317 () SeekEntryResult!2941)

(assert (=> b!321860 (= e!199315 e!199317)))

(declare-fun c!50553 () Bool)

(declare-fun lt!156324 () (_ BitVec 64))

(assert (=> b!321860 (= c!50553 (or (= lt!156324 k0!2497) (= (bvadd lt!156324 lt!156324) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!321862 () Bool)

(assert (=> b!321862 (= e!199317 (Intermediate!2941 false (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!321863 () Bool)

(declare-fun e!199318 () Bool)

(declare-fun lt!156323 () SeekEntryResult!2941)

(assert (=> b!321863 (= e!199318 (bvsge (x!32163 lt!156323) #b01111111111111111111111111111110))))

(declare-fun b!321864 () Bool)

(assert (=> b!321864 (and (bvsge (index!13942 lt!156323) #b00000000000000000000000000000000) (bvslt (index!13942 lt!156323) (size!8151 a!3305)))))

(declare-fun e!199319 () Bool)

(assert (=> b!321864 (= e!199319 (= (select (arr!7799 a!3305) (index!13942 lt!156323)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!321865 () Bool)

(declare-fun e!199316 () Bool)

(assert (=> b!321865 (= e!199318 e!199316)))

(declare-fun res!176008 () Bool)

(assert (=> b!321865 (= res!176008 (and ((_ is Intermediate!2941) lt!156323) (not (undefined!3753 lt!156323)) (bvslt (x!32163 lt!156323) #b01111111111111111111111111111110) (bvsge (x!32163 lt!156323) #b00000000000000000000000000000000) (bvsge (x!32163 lt!156323) #b00000000000000000000000000000000)))))

(assert (=> b!321865 (=> (not res!176008) (not e!199316))))

(declare-fun b!321866 () Bool)

(assert (=> b!321866 (and (bvsge (index!13942 lt!156323) #b00000000000000000000000000000000) (bvslt (index!13942 lt!156323) (size!8151 a!3305)))))

(declare-fun res!176007 () Bool)

(assert (=> b!321866 (= res!176007 (= (select (arr!7799 a!3305) (index!13942 lt!156323)) k0!2497))))

(assert (=> b!321866 (=> res!176007 e!199319)))

(assert (=> b!321866 (= e!199316 e!199319)))

(declare-fun b!321867 () Bool)

(assert (=> b!321867 (and (bvsge (index!13942 lt!156323) #b00000000000000000000000000000000) (bvslt (index!13942 lt!156323) (size!8151 a!3305)))))

(declare-fun res!176009 () Bool)

(assert (=> b!321867 (= res!176009 (= (select (arr!7799 a!3305) (index!13942 lt!156323)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!321867 (=> res!176009 e!199319)))

(declare-fun b!321861 () Bool)

(assert (=> b!321861 (= e!199317 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun d!69437 () Bool)

(assert (=> d!69437 e!199318))

(declare-fun c!50554 () Bool)

(assert (=> d!69437 (= c!50554 (and ((_ is Intermediate!2941) lt!156323) (undefined!3753 lt!156323)))))

(assert (=> d!69437 (= lt!156323 e!199315)))

(declare-fun c!50555 () Bool)

(assert (=> d!69437 (= c!50555 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!69437 (= lt!156324 (select (arr!7799 a!3305) (toIndex!0 k0!2497 mask!3777)))))

(assert (=> d!69437 (validMask!0 mask!3777)))

(assert (=> d!69437 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156323)))

(assert (= (and d!69437 c!50555) b!321859))

(assert (= (and d!69437 (not c!50555)) b!321860))

(assert (= (and b!321860 c!50553) b!321862))

(assert (= (and b!321860 (not c!50553)) b!321861))

(assert (= (and d!69437 c!50554) b!321863))

(assert (= (and d!69437 (not c!50554)) b!321865))

(assert (= (and b!321865 res!176008) b!321866))

(assert (= (and b!321866 (not res!176007)) b!321867))

(assert (= (and b!321867 (not res!176009)) b!321864))

(declare-fun m!329877 () Bool)

(assert (=> b!321866 m!329877))

(assert (=> b!321867 m!329877))

(assert (=> b!321861 m!329749))

(declare-fun m!329879 () Bool)

(assert (=> b!321861 m!329879))

(assert (=> b!321861 m!329879))

(declare-fun m!329881 () Bool)

(assert (=> b!321861 m!329881))

(assert (=> b!321864 m!329877))

(assert (=> d!69437 m!329749))

(declare-fun m!329883 () Bool)

(assert (=> d!69437 m!329883))

(assert (=> d!69437 m!329741))

(assert (=> b!321621 d!69437))

(declare-fun d!69439 () Bool)

(declare-fun lt!156332 () (_ BitVec 32))

(declare-fun lt!156331 () (_ BitVec 32))

(assert (=> d!69439 (= lt!156332 (bvmul (bvxor lt!156331 (bvlshr lt!156331 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69439 (= lt!156331 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69439 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!176010 (let ((h!5410 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32171 (bvmul (bvxor h!5410 (bvlshr h!5410 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32171 (bvlshr x!32171 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!176010 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!176010 #b00000000000000000000000000000000))))))

(assert (=> d!69439 (= (toIndex!0 k0!2497 mask!3777) (bvand (bvxor lt!156332 (bvlshr lt!156332 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!321621 d!69439))

(declare-fun d!69445 () Bool)

(declare-fun lt!156335 () (_ BitVec 32))

(assert (=> d!69445 (and (bvsge lt!156335 #b00000000000000000000000000000000) (bvslt lt!156335 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!69445 (= lt!156335 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!69445 (validMask!0 mask!3777)))

(assert (=> d!69445 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!156335)))

(declare-fun bs!11225 () Bool)

(assert (= bs!11225 d!69445))

(declare-fun m!329889 () Bool)

(assert (=> bs!11225 m!329889))

(assert (=> bs!11225 m!329741))

(assert (=> b!321630 d!69445))

(check-sat (not d!69437) (not b!321702) (not d!69421) (not b!321774) (not d!69445) (not b!321855) (not bm!26063) (not d!69409) (not b!321696) (not b!321693) (not b!321861))
(check-sat)
