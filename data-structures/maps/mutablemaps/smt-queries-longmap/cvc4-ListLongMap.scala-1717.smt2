; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31600 () Bool)

(assert start!31600)

(declare-fun b!316031 () Bool)

(declare-fun res!171310 () Bool)

(declare-fun e!196593 () Bool)

(assert (=> b!316031 (=> (not res!171310) (not e!196593))))

(declare-datatypes ((array!16122 0))(
  ( (array!16123 (arr!7629 (Array (_ BitVec 32) (_ BitVec 64))) (size!7981 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16122)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!316031 (= res!171310 (and (= (size!7981 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7981 a!3293))))))

(declare-fun b!316032 () Bool)

(assert (=> b!316032 false))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2780 0))(
  ( (MissingZero!2780 (index!13296 (_ BitVec 32))) (Found!2780 (index!13297 (_ BitVec 32))) (Intermediate!2780 (undefined!3592 Bool) (index!13298 (_ BitVec 32)) (x!31501 (_ BitVec 32))) (Undefined!2780) (MissingVacant!2780 (index!13299 (_ BitVec 32))) )
))
(declare-fun lt!154442 () SeekEntryResult!2780)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16122 (_ BitVec 32)) SeekEntryResult!2780)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316032 (= lt!154442 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-datatypes ((Unit!9770 0))(
  ( (Unit!9771) )
))
(declare-fun e!196591 () Unit!9770)

(declare-fun Unit!9772 () Unit!9770)

(assert (=> b!316032 (= e!196591 Unit!9772)))

(declare-fun b!316033 () Bool)

(declare-fun e!196588 () Unit!9770)

(declare-fun Unit!9773 () Unit!9770)

(assert (=> b!316033 (= e!196588 Unit!9773)))

(declare-fun b!316034 () Bool)

(declare-fun res!171312 () Bool)

(assert (=> b!316034 (=> (not res!171312) (not e!196593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16122 (_ BitVec 32)) Bool)

(assert (=> b!316034 (= res!171312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!316035 () Bool)

(declare-fun res!171306 () Bool)

(assert (=> b!316035 (=> (not res!171306) (not e!196593))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!316035 (= res!171306 (validKeyInArray!0 k!2441))))

(declare-fun b!316036 () Bool)

(declare-fun res!171311 () Bool)

(assert (=> b!316036 (=> (not res!171311) (not e!196593))))

(declare-fun arrayContainsKey!0 (array!16122 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!316036 (= res!171311 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!316037 () Bool)

(declare-fun res!171305 () Bool)

(assert (=> b!316037 (=> (not res!171305) (not e!196593))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16122 (_ BitVec 32)) SeekEntryResult!2780)

(assert (=> b!316037 (= res!171305 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2780 i!1240)))))

(declare-fun b!316038 () Bool)

(assert (=> b!316038 false))

(declare-fun Unit!9774 () Unit!9770)

(assert (=> b!316038 (= e!196591 Unit!9774)))

(declare-fun b!316039 () Bool)

(declare-fun e!196594 () Bool)

(declare-fun e!196590 () Bool)

(assert (=> b!316039 (= e!196594 e!196590)))

(declare-fun res!171308 () Bool)

(assert (=> b!316039 (=> (not res!171308) (not e!196590))))

(declare-fun lt!154444 () SeekEntryResult!2780)

(declare-fun lt!154445 () SeekEntryResult!2780)

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!316039 (= res!171308 (and (= lt!154444 lt!154445) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7629 a!3293) index!1781) k!2441)) (= x!1427 resX!52)))))

(assert (=> b!316039 (= lt!154444 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!316040 () Bool)

(assert (=> b!316040 (= e!196588 e!196591)))

(declare-fun c!49982 () Bool)

(assert (=> b!316040 (= c!49982 (or (= (select (arr!7629 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7629 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!171304 () Bool)

(assert (=> start!31600 (=> (not res!171304) (not e!196593))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31600 (= res!171304 (validMask!0 mask!3709))))

(assert (=> start!31600 e!196593))

(declare-fun array_inv!5583 (array!16122) Bool)

(assert (=> start!31600 (array_inv!5583 a!3293)))

(assert (=> start!31600 true))

(declare-fun b!316041 () Bool)

(assert (=> b!316041 (= e!196593 e!196594)))

(declare-fun res!171309 () Bool)

(assert (=> b!316041 (=> (not res!171309) (not e!196594))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316041 (= res!171309 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154445))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!316041 (= lt!154445 (Intermediate!2780 false resIndex!52 resX!52))))

(declare-fun b!316042 () Bool)

(declare-fun e!196589 () Bool)

(assert (=> b!316042 (= e!196590 (not e!196589))))

(declare-fun res!171303 () Bool)

(assert (=> b!316042 (=> res!171303 e!196589)))

(assert (=> b!316042 (= res!171303 (not (= (select (arr!7629 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!316042 (= index!1781 resIndex!52)))

(declare-fun lt!154443 () Unit!9770)

(assert (=> b!316042 (= lt!154443 e!196588)))

(declare-fun c!49981 () Bool)

(assert (=> b!316042 (= c!49981 (not (= resIndex!52 index!1781)))))

(declare-fun b!316043 () Bool)

(assert (=> b!316043 (= e!196589 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 (array!16123 (store (arr!7629 a!3293) i!1240 k!2441) (size!7981 a!3293)) mask!3709) lt!154444))))

(declare-fun b!316044 () Bool)

(declare-fun res!171307 () Bool)

(assert (=> b!316044 (=> (not res!171307) (not e!196594))))

(assert (=> b!316044 (= res!171307 (and (= (select (arr!7629 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7981 a!3293))))))

(assert (= (and start!31600 res!171304) b!316031))

(assert (= (and b!316031 res!171310) b!316035))

(assert (= (and b!316035 res!171306) b!316036))

(assert (= (and b!316036 res!171311) b!316037))

(assert (= (and b!316037 res!171305) b!316034))

(assert (= (and b!316034 res!171312) b!316041))

(assert (= (and b!316041 res!171309) b!316044))

(assert (= (and b!316044 res!171307) b!316039))

(assert (= (and b!316039 res!171308) b!316042))

(assert (= (and b!316042 c!49981) b!316040))

(assert (= (and b!316042 (not c!49981)) b!316033))

(assert (= (and b!316040 c!49982) b!316038))

(assert (= (and b!316040 (not c!49982)) b!316032))

(assert (= (and b!316042 (not res!171303)) b!316043))

(declare-fun m!325045 () Bool)

(assert (=> b!316034 m!325045))

(declare-fun m!325047 () Bool)

(assert (=> b!316035 m!325047))

(declare-fun m!325049 () Bool)

(assert (=> start!31600 m!325049))

(declare-fun m!325051 () Bool)

(assert (=> start!31600 m!325051))

(declare-fun m!325053 () Bool)

(assert (=> b!316040 m!325053))

(declare-fun m!325055 () Bool)

(assert (=> b!316036 m!325055))

(assert (=> b!316042 m!325053))

(declare-fun m!325057 () Bool)

(assert (=> b!316037 m!325057))

(declare-fun m!325059 () Bool)

(assert (=> b!316032 m!325059))

(assert (=> b!316032 m!325059))

(declare-fun m!325061 () Bool)

(assert (=> b!316032 m!325061))

(assert (=> b!316039 m!325053))

(declare-fun m!325063 () Bool)

(assert (=> b!316039 m!325063))

(declare-fun m!325065 () Bool)

(assert (=> b!316044 m!325065))

(declare-fun m!325067 () Bool)

(assert (=> b!316041 m!325067))

(assert (=> b!316041 m!325067))

(declare-fun m!325069 () Bool)

(assert (=> b!316041 m!325069))

(declare-fun m!325071 () Bool)

(assert (=> b!316043 m!325071))

(declare-fun m!325073 () Bool)

(assert (=> b!316043 m!325073))

(push 1)

(assert (not b!316035))

(assert (not start!31600))

(assert (not b!316043))

(assert (not b!316032))

(assert (not b!316039))

(assert (not b!316034))

(assert (not b!316041))

(assert (not b!316036))

(assert (not b!316037))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!68843 () Bool)

(assert (=> d!68843 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!316035 d!68843))

(declare-fun d!68845 () Bool)

(declare-fun res!171317 () Bool)

(declare-fun e!196611 () Bool)

(assert (=> d!68845 (=> res!171317 e!196611)))

(assert (=> d!68845 (= res!171317 (bvsge #b00000000000000000000000000000000 (size!7981 a!3293)))))

(assert (=> d!68845 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!196611)))

(declare-fun b!316071 () Bool)

(declare-fun e!196610 () Bool)

(declare-fun call!25997 () Bool)

(assert (=> b!316071 (= e!196610 call!25997)))

(declare-fun b!316072 () Bool)

(declare-fun e!196612 () Bool)

(assert (=> b!316072 (= e!196610 e!196612)))

(declare-fun lt!154463 () (_ BitVec 64))

(assert (=> b!316072 (= lt!154463 (select (arr!7629 a!3293) #b00000000000000000000000000000000))))

(declare-fun lt!154461 () Unit!9770)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16122 (_ BitVec 64) (_ BitVec 32)) Unit!9770)

(assert (=> b!316072 (= lt!154461 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!154463 #b00000000000000000000000000000000))))

(assert (=> b!316072 (arrayContainsKey!0 a!3293 lt!154463 #b00000000000000000000000000000000)))

(declare-fun lt!154462 () Unit!9770)

(assert (=> b!316072 (= lt!154462 lt!154461)))

(declare-fun res!171318 () Bool)

(assert (=> b!316072 (= res!171318 (= (seekEntryOrOpen!0 (select (arr!7629 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2780 #b00000000000000000000000000000000)))))

(assert (=> b!316072 (=> (not res!171318) (not e!196612))))

(declare-fun bm!25994 () Bool)

(assert (=> bm!25994 (= call!25997 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!316073 () Bool)

(assert (=> b!316073 (= e!196611 e!196610)))

(declare-fun c!49994 () Bool)

(assert (=> b!316073 (= c!49994 (validKeyInArray!0 (select (arr!7629 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!316074 () Bool)

(assert (=> b!316074 (= e!196612 call!25997)))

(assert (= (and d!68845 (not res!171317)) b!316073))

(assert (= (and b!316073 c!49994) b!316072))

(assert (= (and b!316073 (not c!49994)) b!316071))

(assert (= (and b!316072 res!171318) b!316074))

(assert (= (or b!316074 b!316071) bm!25994))

(declare-fun m!325081 () Bool)

(assert (=> b!316072 m!325081))

(declare-fun m!325085 () Bool)

(assert (=> b!316072 m!325085))

(declare-fun m!325087 () Bool)

(assert (=> b!316072 m!325087))

(assert (=> b!316072 m!325081))

(declare-fun m!325091 () Bool)

(assert (=> b!316072 m!325091))

(declare-fun m!325093 () Bool)

(assert (=> bm!25994 m!325093))

(assert (=> b!316073 m!325081))

(assert (=> b!316073 m!325081))

(declare-fun m!325095 () Bool)

(assert (=> b!316073 m!325095))

(assert (=> b!316034 d!68845))

(declare-fun b!316132 () Bool)

(declare-fun lt!154483 () SeekEntryResult!2780)

(assert (=> b!316132 (and (bvsge (index!13298 lt!154483) #b00000000000000000000000000000000) (bvslt (index!13298 lt!154483) (size!7981 a!3293)))))

(declare-fun e!196647 () Bool)

(assert (=> b!316132 (= e!196647 (= (select (arr!7629 a!3293) (index!13298 lt!154483)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!316133 () Bool)

(declare-fun e!196651 () Bool)

(declare-fun e!196648 () Bool)

(assert (=> b!316133 (= e!196651 e!196648)))

(declare-fun res!171340 () Bool)

(assert (=> b!316133 (= res!171340 (and (is-Intermediate!2780 lt!154483) (not (undefined!3592 lt!154483)) (bvslt (x!31501 lt!154483) #b01111111111111111111111111111110) (bvsge (x!31501 lt!154483) #b00000000000000000000000000000000) (bvsge (x!31501 lt!154483) x!1427)))))

(assert (=> b!316133 (=> (not res!171340) (not e!196648))))

(declare-fun e!196650 () SeekEntryResult!2780)

(declare-fun b!316134 () Bool)

(assert (=> b!316134 (= e!196650 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!316135 () Bool)

(assert (=> b!316135 (= e!196651 (bvsge (x!31501 lt!154483) #b01111111111111111111111111111110))))

(declare-fun d!68849 () Bool)

(assert (=> d!68849 e!196651))

(declare-fun c!50015 () Bool)

(assert (=> d!68849 (= c!50015 (and (is-Intermediate!2780 lt!154483) (undefined!3592 lt!154483)))))

(declare-fun e!196649 () SeekEntryResult!2780)

(assert (=> d!68849 (= lt!154483 e!196649)))

(declare-fun c!50013 () Bool)

(assert (=> d!68849 (= c!50013 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!154484 () (_ BitVec 64))

(assert (=> d!68849 (= lt!154484 (select (arr!7629 a!3293) index!1781))))

(assert (=> d!68849 (validMask!0 mask!3709)))

(assert (=> d!68849 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!154483)))

(declare-fun b!316136 () Bool)

(assert (=> b!316136 (and (bvsge (index!13298 lt!154483) #b00000000000000000000000000000000) (bvslt (index!13298 lt!154483) (size!7981 a!3293)))))

(declare-fun res!171342 () Bool)

(assert (=> b!316136 (= res!171342 (= (select (arr!7629 a!3293) (index!13298 lt!154483)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!316136 (=> res!171342 e!196647)))

(declare-fun b!316137 () Bool)

(assert (=> b!316137 (and (bvsge (index!13298 lt!154483) #b00000000000000000000000000000000) (bvslt (index!13298 lt!154483) (size!7981 a!3293)))))

(declare-fun res!171341 () Bool)

(assert (=> b!316137 (= res!171341 (= (select (arr!7629 a!3293) (index!13298 lt!154483)) k!2441))))

(assert (=> b!316137 (=> res!171341 e!196647)))

(assert (=> b!316137 (= e!196648 e!196647)))

(declare-fun b!316138 () Bool)

(assert (=> b!316138 (= e!196649 (Intermediate!2780 true index!1781 x!1427))))

(declare-fun b!316139 () Bool)

(assert (=> b!316139 (= e!196650 (Intermediate!2780 false index!1781 x!1427))))

(declare-fun b!316140 () Bool)

(assert (=> b!316140 (= e!196649 e!196650)))

(declare-fun c!50014 () Bool)

(assert (=> b!316140 (= c!50014 (or (= lt!154484 k!2441) (= (bvadd lt!154484 lt!154484) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!68849 c!50013) b!316138))

(assert (= (and d!68849 (not c!50013)) b!316140))

(assert (= (and b!316140 c!50014) b!316139))

(assert (= (and b!316140 (not c!50014)) b!316134))

(assert (= (and d!68849 c!50015) b!316135))

(assert (= (and d!68849 (not c!50015)) b!316133))

(assert (= (and b!316133 res!171340) b!316137))

(assert (= (and b!316137 (not res!171341)) b!316136))

(assert (= (and b!316136 (not res!171342)) b!316132))

(declare-fun m!325115 () Bool)

(assert (=> b!316137 m!325115))

(assert (=> b!316132 m!325115))

(assert (=> d!68849 m!325053))

(assert (=> d!68849 m!325049))

(assert (=> b!316134 m!325059))

(assert (=> b!316134 m!325059))

(declare-fun m!325117 () Bool)

(assert (=> b!316134 m!325117))

(assert (=> b!316136 m!325115))

(assert (=> b!316039 d!68849))

(declare-fun b!316141 () Bool)

(declare-fun lt!154485 () SeekEntryResult!2780)

(assert (=> b!316141 (and (bvsge (index!13298 lt!154485) #b00000000000000000000000000000000) (bvslt (index!13298 lt!154485) (size!7981 a!3293)))))

(declare-fun e!196652 () Bool)

(assert (=> b!316141 (= e!196652 (= (select (arr!7629 a!3293) (index!13298 lt!154485)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!316142 () Bool)

(declare-fun e!196656 () Bool)

(declare-fun e!196653 () Bool)

(assert (=> b!316142 (= e!196656 e!196653)))

(declare-fun res!171343 () Bool)

(assert (=> b!316142 (= res!171343 (and (is-Intermediate!2780 lt!154485) (not (undefined!3592 lt!154485)) (bvslt (x!31501 lt!154485) #b01111111111111111111111111111110) (bvsge (x!31501 lt!154485) #b00000000000000000000000000000000) (bvsge (x!31501 lt!154485) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!316142 (=> (not res!171343) (not e!196653))))

(declare-fun e!196655 () SeekEntryResult!2780)

(declare-fun b!316143 () Bool)

(assert (=> b!316143 (= e!196655 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!316144 () Bool)

(assert (=> b!316144 (= e!196656 (bvsge (x!31501 lt!154485) #b01111111111111111111111111111110))))

(declare-fun d!68863 () Bool)

(assert (=> d!68863 e!196656))

(declare-fun c!50018 () Bool)

(assert (=> d!68863 (= c!50018 (and (is-Intermediate!2780 lt!154485) (undefined!3592 lt!154485)))))

(declare-fun e!196654 () SeekEntryResult!2780)

(assert (=> d!68863 (= lt!154485 e!196654)))

(declare-fun c!50016 () Bool)

(assert (=> d!68863 (= c!50016 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(declare-fun lt!154486 () (_ BitVec 64))

(assert (=> d!68863 (= lt!154486 (select (arr!7629 a!3293) (nextIndex!0 index!1781 x!1427 mask!3709)))))

(assert (=> d!68863 (validMask!0 mask!3709)))

(assert (=> d!68863 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709) lt!154485)))

(declare-fun b!316145 () Bool)

(assert (=> b!316145 (and (bvsge (index!13298 lt!154485) #b00000000000000000000000000000000) (bvslt (index!13298 lt!154485) (size!7981 a!3293)))))

(declare-fun res!171345 () Bool)

(assert (=> b!316145 (= res!171345 (= (select (arr!7629 a!3293) (index!13298 lt!154485)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!316145 (=> res!171345 e!196652)))

(declare-fun b!316146 () Bool)

(assert (=> b!316146 (and (bvsge (index!13298 lt!154485) #b00000000000000000000000000000000) (bvslt (index!13298 lt!154485) (size!7981 a!3293)))))

(declare-fun res!171344 () Bool)

(assert (=> b!316146 (= res!171344 (= (select (arr!7629 a!3293) (index!13298 lt!154485)) k!2441))))

(assert (=> b!316146 (=> res!171344 e!196652)))

(assert (=> b!316146 (= e!196653 e!196652)))

(declare-fun b!316147 () Bool)

(assert (=> b!316147 (= e!196654 (Intermediate!2780 true (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!316148 () Bool)

(assert (=> b!316148 (= e!196655 (Intermediate!2780 false (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!316149 () Bool)

(assert (=> b!316149 (= e!196654 e!196655)))

(declare-fun c!50017 () Bool)

(assert (=> b!316149 (= c!50017 (or (= lt!154486 k!2441) (= (bvadd lt!154486 lt!154486) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!68863 c!50016) b!316147))

(assert (= (and d!68863 (not c!50016)) b!316149))

(assert (= (and b!316149 c!50017) b!316148))

(assert (= (and b!316149 (not c!50017)) b!316143))

(assert (= (and d!68863 c!50018) b!316144))

(assert (= (and d!68863 (not c!50018)) b!316142))

(assert (= (and b!316142 res!171343) b!316146))

(assert (= (and b!316146 (not res!171344)) b!316145))

(assert (= (and b!316145 (not res!171345)) b!316141))

(declare-fun m!325119 () Bool)

(assert (=> b!316146 m!325119))

(assert (=> b!316141 m!325119))

(assert (=> d!68863 m!325059))

(declare-fun m!325121 () Bool)

(assert (=> d!68863 m!325121))

(assert (=> d!68863 m!325049))

(assert (=> b!316143 m!325059))

(declare-fun m!325123 () Bool)

(assert (=> b!316143 m!325123))

(assert (=> b!316143 m!325123))

(declare-fun m!325125 () Bool)

(assert (=> b!316143 m!325125))

(assert (=> b!316145 m!325119))

(assert (=> b!316032 d!68863))

(declare-fun d!68865 () Bool)

(declare-fun lt!154495 () (_ BitVec 32))

(assert (=> d!68865 (and (bvsge lt!154495 #b00000000000000000000000000000000) (bvslt lt!154495 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68865 (= lt!154495 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68865 (validMask!0 mask!3709)))

(assert (=> d!68865 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!154495)))

(declare-fun bs!11041 () Bool)

(assert (= bs!11041 d!68865))

(declare-fun m!325127 () Bool)

(assert (=> bs!11041 m!325127))

(assert (=> bs!11041 m!325049))

(assert (=> b!316032 d!68865))

(declare-fun b!316158 () Bool)

(declare-fun lt!154500 () SeekEntryResult!2780)

(assert (=> b!316158 (and (bvsge (index!13298 lt!154500) #b00000000000000000000000000000000) (bvslt (index!13298 lt!154500) (size!7981 (array!16123 (store (arr!7629 a!3293) i!1240 k!2441) (size!7981 a!3293)))))))

(declare-fun e!196663 () Bool)

(assert (=> b!316158 (= e!196663 (= (select (arr!7629 (array!16123 (store (arr!7629 a!3293) i!1240 k!2441) (size!7981 a!3293))) (index!13298 lt!154500)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!316159 () Bool)

(declare-fun e!196667 () Bool)

(declare-fun e!196664 () Bool)

(assert (=> b!316159 (= e!196667 e!196664)))

(declare-fun res!171350 () Bool)

(assert (=> b!316159 (= res!171350 (and (is-Intermediate!2780 lt!154500) (not (undefined!3592 lt!154500)) (bvslt (x!31501 lt!154500) #b01111111111111111111111111111110) (bvsge (x!31501 lt!154500) #b00000000000000000000000000000000) (bvsge (x!31501 lt!154500) x!1427)))))

(assert (=> b!316159 (=> (not res!171350) (not e!196664))))

(declare-fun e!196666 () SeekEntryResult!2780)

(declare-fun b!316160 () Bool)

(assert (=> b!316160 (= e!196666 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 (array!16123 (store (arr!7629 a!3293) i!1240 k!2441) (size!7981 a!3293)) mask!3709))))

(declare-fun b!316161 () Bool)

(assert (=> b!316161 (= e!196667 (bvsge (x!31501 lt!154500) #b01111111111111111111111111111110))))

(declare-fun d!68867 () Bool)

(assert (=> d!68867 e!196667))

(declare-fun c!50023 () Bool)

(assert (=> d!68867 (= c!50023 (and (is-Intermediate!2780 lt!154500) (undefined!3592 lt!154500)))))

(declare-fun e!196665 () SeekEntryResult!2780)

(assert (=> d!68867 (= lt!154500 e!196665)))

(declare-fun c!50021 () Bool)

(assert (=> d!68867 (= c!50021 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!154501 () (_ BitVec 64))

(assert (=> d!68867 (= lt!154501 (select (arr!7629 (array!16123 (store (arr!7629 a!3293) i!1240 k!2441) (size!7981 a!3293))) index!1781))))

(assert (=> d!68867 (validMask!0 mask!3709)))

(assert (=> d!68867 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 (array!16123 (store (arr!7629 a!3293) i!1240 k!2441) (size!7981 a!3293)) mask!3709) lt!154500)))

(declare-fun b!316162 () Bool)

(assert (=> b!316162 (and (bvsge (index!13298 lt!154500) #b00000000000000000000000000000000) (bvslt (index!13298 lt!154500) (size!7981 (array!16123 (store (arr!7629 a!3293) i!1240 k!2441) (size!7981 a!3293)))))))

(declare-fun res!171352 () Bool)

(assert (=> b!316162 (= res!171352 (= (select (arr!7629 (array!16123 (store (arr!7629 a!3293) i!1240 k!2441) (size!7981 a!3293))) (index!13298 lt!154500)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!316162 (=> res!171352 e!196663)))

(declare-fun b!316164 () Bool)

(assert (=> b!316164 (and (bvsge (index!13298 lt!154500) #b00000000000000000000000000000000) (bvslt (index!13298 lt!154500) (size!7981 (array!16123 (store (arr!7629 a!3293) i!1240 k!2441) (size!7981 a!3293)))))))

(declare-fun res!171351 () Bool)

(assert (=> b!316164 (= res!171351 (= (select (arr!7629 (array!16123 (store (arr!7629 a!3293) i!1240 k!2441) (size!7981 a!3293))) (index!13298 lt!154500)) k!2441))))

(assert (=> b!316164 (=> res!171351 e!196663)))

(assert (=> b!316164 (= e!196664 e!196663)))

(declare-fun b!316166 () Bool)

(assert (=> b!316166 (= e!196665 (Intermediate!2780 true index!1781 x!1427))))

(declare-fun b!316167 () Bool)

(assert (=> b!316167 (= e!196666 (Intermediate!2780 false index!1781 x!1427))))

(declare-fun b!316168 () Bool)

(assert (=> b!316168 (= e!196665 e!196666)))

(declare-fun c!50022 () Bool)

(assert (=> b!316168 (= c!50022 (or (= lt!154501 k!2441) (= (bvadd lt!154501 lt!154501) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!68867 c!50021) b!316166))

(assert (= (and d!68867 (not c!50021)) b!316168))

(assert (= (and b!316168 c!50022) b!316167))

(assert (= (and b!316168 (not c!50022)) b!316160))

(assert (= (and d!68867 c!50023) b!316161))

(assert (= (and d!68867 (not c!50023)) b!316159))

(assert (= (and b!316159 res!171350) b!316164))

(assert (= (and b!316164 (not res!171351)) b!316162))

(assert (= (and b!316162 (not res!171352)) b!316158))

(declare-fun m!325129 () Bool)

(assert (=> b!316164 m!325129))

(assert (=> b!316158 m!325129))

(declare-fun m!325131 () Bool)

(assert (=> d!68867 m!325131))

(assert (=> d!68867 m!325049))

(assert (=> b!316160 m!325059))

(assert (=> b!316160 m!325059))

(declare-fun m!325133 () Bool)

(assert (=> b!316160 m!325133))

(assert (=> b!316162 m!325129))

(assert (=> b!316043 d!68867))

(declare-fun d!68869 () Bool)

(assert (=> d!68869 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31600 d!68869))

(declare-fun d!68881 () Bool)

(assert (=> d!68881 (= (array_inv!5583 a!3293) (bvsge (size!7981 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31600 d!68881))

(declare-fun b!316279 () Bool)

(declare-fun e!196737 () SeekEntryResult!2780)

(assert (=> b!316279 (= e!196737 Undefined!2780)))

(declare-fun b!316280 () Bool)

(declare-fun e!196735 () SeekEntryResult!2780)

(assert (=> b!316280 (= e!196737 e!196735)))

(declare-fun lt!154546 () (_ BitVec 64))

(declare-fun lt!154544 () SeekEntryResult!2780)

(assert (=> b!316280 (= lt!154546 (select (arr!7629 a!3293) (index!13298 lt!154544)))))

(declare-fun c!50063 () Bool)

(assert (=> b!316280 (= c!50063 (= lt!154546 k!2441))))

(declare-fun b!316281 () Bool)

(declare-fun e!196736 () SeekEntryResult!2780)

(assert (=> b!316281 (= e!196736 (MissingZero!2780 (index!13298 lt!154544)))))

