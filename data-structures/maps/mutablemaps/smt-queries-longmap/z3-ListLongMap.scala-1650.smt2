; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30686 () Bool)

(assert start!30686)

(declare-fun b!307869 () Bool)

(declare-fun res!164781 () Bool)

(declare-fun e!192592 () Bool)

(assert (=> b!307869 (=> (not res!164781) (not e!192592))))

(declare-datatypes ((array!15688 0))(
  ( (array!15689 (arr!7427 (Array (_ BitVec 32) (_ BitVec 64))) (size!7779 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15688)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15688 (_ BitVec 32)) Bool)

(assert (=> b!307869 (= res!164781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307870 () Bool)

(declare-fun res!164789 () Bool)

(declare-fun e!192590 () Bool)

(assert (=> b!307870 (=> (not res!164789) (not e!192590))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!307870 (= res!164789 (and (= (select (arr!7427 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7779 a!3293))))))

(declare-fun res!164782 () Bool)

(assert (=> start!30686 (=> (not res!164782) (not e!192592))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30686 (= res!164782 (validMask!0 mask!3709))))

(assert (=> start!30686 e!192592))

(declare-fun array_inv!5381 (array!15688) Bool)

(assert (=> start!30686 (array_inv!5381 a!3293)))

(assert (=> start!30686 true))

(declare-fun b!307871 () Bool)

(declare-fun res!164784 () Bool)

(assert (=> b!307871 (=> (not res!164784) (not e!192592))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15688 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307871 (= res!164784 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307872 () Bool)

(assert (=> b!307872 (= e!192592 e!192590)))

(declare-fun res!164786 () Bool)

(assert (=> b!307872 (=> (not res!164786) (not e!192590))))

(declare-datatypes ((SeekEntryResult!2578 0))(
  ( (MissingZero!2578 (index!12488 (_ BitVec 32))) (Found!2578 (index!12489 (_ BitVec 32))) (Intermediate!2578 (undefined!3390 Bool) (index!12490 (_ BitVec 32)) (x!30688 (_ BitVec 32))) (Undefined!2578) (MissingVacant!2578 (index!12491 (_ BitVec 32))) )
))
(declare-fun lt!151192 () SeekEntryResult!2578)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15688 (_ BitVec 32)) SeekEntryResult!2578)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307872 (= res!164786 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151192))))

(assert (=> b!307872 (= lt!151192 (Intermediate!2578 false resIndex!52 resX!52))))

(declare-fun b!307873 () Bool)

(declare-fun res!164783 () Bool)

(assert (=> b!307873 (=> (not res!164783) (not e!192590))))

(assert (=> b!307873 (= res!164783 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7427 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun b!307874 () Bool)

(declare-fun res!164787 () Bool)

(assert (=> b!307874 (=> (not res!164787) (not e!192592))))

(assert (=> b!307874 (= res!164787 (and (= (size!7779 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7779 a!3293))))))

(declare-fun b!307875 () Bool)

(declare-fun res!164790 () Bool)

(assert (=> b!307875 (=> (not res!164790) (not e!192592))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15688 (_ BitVec 32)) SeekEntryResult!2578)

(assert (=> b!307875 (= res!164790 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2578 i!1240)))))

(declare-fun b!307876 () Bool)

(declare-fun lt!151193 () (_ BitVec 32))

(assert (=> b!307876 (= e!192590 (and (bvsge mask!3709 #b00000000000000000000000000000000) (or (bvslt lt!151193 #b00000000000000000000000000000000) (bvsge lt!151193 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307876 (= lt!151193 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!307877 () Bool)

(declare-fun res!164785 () Bool)

(assert (=> b!307877 (=> (not res!164785) (not e!192592))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307877 (= res!164785 (validKeyInArray!0 k0!2441))))

(declare-fun b!307878 () Bool)

(declare-fun res!164788 () Bool)

(assert (=> b!307878 (=> (not res!164788) (not e!192590))))

(assert (=> b!307878 (= res!164788 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!151192))))

(assert (= (and start!30686 res!164782) b!307874))

(assert (= (and b!307874 res!164787) b!307877))

(assert (= (and b!307877 res!164785) b!307871))

(assert (= (and b!307871 res!164784) b!307875))

(assert (= (and b!307875 res!164790) b!307869))

(assert (= (and b!307869 res!164781) b!307872))

(assert (= (and b!307872 res!164786) b!307870))

(assert (= (and b!307870 res!164789) b!307878))

(assert (= (and b!307878 res!164788) b!307873))

(assert (= (and b!307873 res!164783) b!307876))

(declare-fun m!318097 () Bool)

(assert (=> b!307870 m!318097))

(declare-fun m!318099 () Bool)

(assert (=> b!307876 m!318099))

(declare-fun m!318101 () Bool)

(assert (=> b!307872 m!318101))

(assert (=> b!307872 m!318101))

(declare-fun m!318103 () Bool)

(assert (=> b!307872 m!318103))

(declare-fun m!318105 () Bool)

(assert (=> b!307871 m!318105))

(declare-fun m!318107 () Bool)

(assert (=> b!307873 m!318107))

(declare-fun m!318109 () Bool)

(assert (=> b!307878 m!318109))

(declare-fun m!318111 () Bool)

(assert (=> b!307875 m!318111))

(declare-fun m!318113 () Bool)

(assert (=> b!307869 m!318113))

(declare-fun m!318115 () Bool)

(assert (=> start!30686 m!318115))

(declare-fun m!318117 () Bool)

(assert (=> start!30686 m!318117))

(declare-fun m!318119 () Bool)

(assert (=> b!307877 m!318119))

(check-sat (not b!307876) (not b!307878) (not b!307875) (not b!307877) (not b!307869) (not b!307871) (not start!30686) (not b!307872))
(check-sat)
(get-model)

(declare-fun b!307917 () Bool)

(declare-fun e!192609 () Bool)

(declare-fun e!192608 () Bool)

(assert (=> b!307917 (= e!192609 e!192608)))

(declare-fun lt!151208 () (_ BitVec 64))

(assert (=> b!307917 (= lt!151208 (select (arr!7427 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9568 0))(
  ( (Unit!9569) )
))
(declare-fun lt!151206 () Unit!9568)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15688 (_ BitVec 64) (_ BitVec 32)) Unit!9568)

(assert (=> b!307917 (= lt!151206 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!151208 #b00000000000000000000000000000000))))

(assert (=> b!307917 (arrayContainsKey!0 a!3293 lt!151208 #b00000000000000000000000000000000)))

(declare-fun lt!151207 () Unit!9568)

(assert (=> b!307917 (= lt!151207 lt!151206)))

(declare-fun res!164825 () Bool)

(assert (=> b!307917 (= res!164825 (= (seekEntryOrOpen!0 (select (arr!7427 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2578 #b00000000000000000000000000000000)))))

(assert (=> b!307917 (=> (not res!164825) (not e!192608))))

(declare-fun b!307918 () Bool)

(declare-fun e!192610 () Bool)

(assert (=> b!307918 (= e!192610 e!192609)))

(declare-fun c!49148 () Bool)

(assert (=> b!307918 (= c!49148 (validKeyInArray!0 (select (arr!7427 a!3293) #b00000000000000000000000000000000)))))

(declare-fun bm!25904 () Bool)

(declare-fun call!25907 () Bool)

(assert (=> bm!25904 (= call!25907 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!307919 () Bool)

(assert (=> b!307919 (= e!192608 call!25907)))

(declare-fun d!68117 () Bool)

(declare-fun res!164826 () Bool)

(assert (=> d!68117 (=> res!164826 e!192610)))

(assert (=> d!68117 (= res!164826 (bvsge #b00000000000000000000000000000000 (size!7779 a!3293)))))

(assert (=> d!68117 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!192610)))

(declare-fun b!307920 () Bool)

(assert (=> b!307920 (= e!192609 call!25907)))

(assert (= (and d!68117 (not res!164826)) b!307918))

(assert (= (and b!307918 c!49148) b!307917))

(assert (= (and b!307918 (not c!49148)) b!307920))

(assert (= (and b!307917 res!164825) b!307919))

(assert (= (or b!307919 b!307920) bm!25904))

(declare-fun m!318145 () Bool)

(assert (=> b!307917 m!318145))

(declare-fun m!318147 () Bool)

(assert (=> b!307917 m!318147))

(declare-fun m!318149 () Bool)

(assert (=> b!307917 m!318149))

(assert (=> b!307917 m!318145))

(declare-fun m!318151 () Bool)

(assert (=> b!307917 m!318151))

(assert (=> b!307918 m!318145))

(assert (=> b!307918 m!318145))

(declare-fun m!318153 () Bool)

(assert (=> b!307918 m!318153))

(declare-fun m!318155 () Bool)

(assert (=> bm!25904 m!318155))

(assert (=> b!307869 d!68117))

(declare-fun d!68119 () Bool)

(declare-fun lt!151228 () SeekEntryResult!2578)

(get-info :version)

(assert (=> d!68119 (and (or ((_ is Undefined!2578) lt!151228) (not ((_ is Found!2578) lt!151228)) (and (bvsge (index!12489 lt!151228) #b00000000000000000000000000000000) (bvslt (index!12489 lt!151228) (size!7779 a!3293)))) (or ((_ is Undefined!2578) lt!151228) ((_ is Found!2578) lt!151228) (not ((_ is MissingZero!2578) lt!151228)) (and (bvsge (index!12488 lt!151228) #b00000000000000000000000000000000) (bvslt (index!12488 lt!151228) (size!7779 a!3293)))) (or ((_ is Undefined!2578) lt!151228) ((_ is Found!2578) lt!151228) ((_ is MissingZero!2578) lt!151228) (not ((_ is MissingVacant!2578) lt!151228)) (and (bvsge (index!12491 lt!151228) #b00000000000000000000000000000000) (bvslt (index!12491 lt!151228) (size!7779 a!3293)))) (or ((_ is Undefined!2578) lt!151228) (ite ((_ is Found!2578) lt!151228) (= (select (arr!7427 a!3293) (index!12489 lt!151228)) k0!2441) (ite ((_ is MissingZero!2578) lt!151228) (= (select (arr!7427 a!3293) (index!12488 lt!151228)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2578) lt!151228) (= (select (arr!7427 a!3293) (index!12491 lt!151228)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!192623 () SeekEntryResult!2578)

(assert (=> d!68119 (= lt!151228 e!192623)))

(declare-fun c!49162 () Bool)

(declare-fun lt!151227 () SeekEntryResult!2578)

(assert (=> d!68119 (= c!49162 (and ((_ is Intermediate!2578) lt!151227) (undefined!3390 lt!151227)))))

(assert (=> d!68119 (= lt!151227 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (=> d!68119 (validMask!0 mask!3709)))

(assert (=> d!68119 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) lt!151228)))

(declare-fun b!307945 () Bool)

(declare-fun e!192624 () SeekEntryResult!2578)

(assert (=> b!307945 (= e!192624 (Found!2578 (index!12490 lt!151227)))))

(declare-fun b!307946 () Bool)

(assert (=> b!307946 (= e!192623 Undefined!2578)))

(declare-fun b!307947 () Bool)

(assert (=> b!307947 (= e!192623 e!192624)))

(declare-fun lt!151229 () (_ BitVec 64))

(assert (=> b!307947 (= lt!151229 (select (arr!7427 a!3293) (index!12490 lt!151227)))))

(declare-fun c!49161 () Bool)

(assert (=> b!307947 (= c!49161 (= lt!151229 k0!2441))))

(declare-fun b!307948 () Bool)

(declare-fun e!192625 () SeekEntryResult!2578)

(assert (=> b!307948 (= e!192625 (MissingZero!2578 (index!12490 lt!151227)))))

(declare-fun b!307949 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15688 (_ BitVec 32)) SeekEntryResult!2578)

(assert (=> b!307949 (= e!192625 (seekKeyOrZeroReturnVacant!0 (x!30688 lt!151227) (index!12490 lt!151227) (index!12490 lt!151227) k0!2441 a!3293 mask!3709))))

(declare-fun b!307950 () Bool)

(declare-fun c!49163 () Bool)

(assert (=> b!307950 (= c!49163 (= lt!151229 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!307950 (= e!192624 e!192625)))

(assert (= (and d!68119 c!49162) b!307946))

(assert (= (and d!68119 (not c!49162)) b!307947))

(assert (= (and b!307947 c!49161) b!307945))

(assert (= (and b!307947 (not c!49161)) b!307950))

(assert (= (and b!307950 c!49163) b!307948))

(assert (= (and b!307950 (not c!49163)) b!307949))

(assert (=> d!68119 m!318101))

(assert (=> d!68119 m!318103))

(declare-fun m!318161 () Bool)

(assert (=> d!68119 m!318161))

(assert (=> d!68119 m!318101))

(declare-fun m!318163 () Bool)

(assert (=> d!68119 m!318163))

(assert (=> d!68119 m!318115))

(declare-fun m!318165 () Bool)

(assert (=> d!68119 m!318165))

(declare-fun m!318167 () Bool)

(assert (=> b!307947 m!318167))

(declare-fun m!318169 () Bool)

(assert (=> b!307949 m!318169))

(assert (=> b!307875 d!68119))

(declare-fun d!68129 () Bool)

(declare-fun lt!151238 () (_ BitVec 32))

(assert (=> d!68129 (and (bvsge lt!151238 #b00000000000000000000000000000000) (bvslt lt!151238 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68129 (= lt!151238 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68129 (validMask!0 mask!3709)))

(assert (=> d!68129 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!151238)))

(declare-fun bs!10827 () Bool)

(assert (= bs!10827 d!68129))

(declare-fun m!318171 () Bool)

(assert (=> bs!10827 m!318171))

(assert (=> bs!10827 m!318115))

(assert (=> b!307876 d!68129))

(declare-fun d!68131 () Bool)

(declare-fun res!164837 () Bool)

(declare-fun e!192642 () Bool)

(assert (=> d!68131 (=> res!164837 e!192642)))

(assert (=> d!68131 (= res!164837 (= (select (arr!7427 a!3293) #b00000000000000000000000000000000) k0!2441))))

(assert (=> d!68131 (= (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000) e!192642)))

(declare-fun b!307973 () Bool)

(declare-fun e!192643 () Bool)

(assert (=> b!307973 (= e!192642 e!192643)))

(declare-fun res!164838 () Bool)

(assert (=> b!307973 (=> (not res!164838) (not e!192643))))

(assert (=> b!307973 (= res!164838 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7779 a!3293)))))

(declare-fun b!307974 () Bool)

(assert (=> b!307974 (= e!192643 (arrayContainsKey!0 a!3293 k0!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68131 (not res!164837)) b!307973))

(assert (= (and b!307973 res!164838) b!307974))

(assert (=> d!68131 m!318145))

(declare-fun m!318195 () Bool)

(assert (=> b!307974 m!318195))

(assert (=> b!307871 d!68131))

(declare-fun d!68137 () Bool)

(assert (=> d!68137 (= (validKeyInArray!0 k0!2441) (and (not (= k0!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!307877 d!68137))

(declare-fun b!308047 () Bool)

(declare-fun lt!151261 () SeekEntryResult!2578)

(assert (=> b!308047 (and (bvsge (index!12490 lt!151261) #b00000000000000000000000000000000) (bvslt (index!12490 lt!151261) (size!7779 a!3293)))))

(declare-fun res!164866 () Bool)

(assert (=> b!308047 (= res!164866 (= (select (arr!7427 a!3293) (index!12490 lt!151261)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!192688 () Bool)

(assert (=> b!308047 (=> res!164866 e!192688)))

(declare-fun b!308048 () Bool)

(assert (=> b!308048 (and (bvsge (index!12490 lt!151261) #b00000000000000000000000000000000) (bvslt (index!12490 lt!151261) (size!7779 a!3293)))))

(declare-fun res!164865 () Bool)

(assert (=> b!308048 (= res!164865 (= (select (arr!7427 a!3293) (index!12490 lt!151261)) k0!2441))))

(assert (=> b!308048 (=> res!164865 e!192688)))

(declare-fun e!192685 () Bool)

(assert (=> b!308048 (= e!192685 e!192688)))

(declare-fun b!308049 () Bool)

(declare-fun e!192686 () Bool)

(assert (=> b!308049 (= e!192686 e!192685)))

(declare-fun res!164864 () Bool)

(assert (=> b!308049 (= res!164864 (and ((_ is Intermediate!2578) lt!151261) (not (undefined!3390 lt!151261)) (bvslt (x!30688 lt!151261) #b01111111111111111111111111111110) (bvsge (x!30688 lt!151261) #b00000000000000000000000000000000) (bvsge (x!30688 lt!151261) #b00000000000000000000000000000000)))))

(assert (=> b!308049 (=> (not res!164864) (not e!192685))))

(declare-fun d!68139 () Bool)

(assert (=> d!68139 e!192686))

(declare-fun c!49194 () Bool)

(assert (=> d!68139 (= c!49194 (and ((_ is Intermediate!2578) lt!151261) (undefined!3390 lt!151261)))))

(declare-fun e!192684 () SeekEntryResult!2578)

(assert (=> d!68139 (= lt!151261 e!192684)))

(declare-fun c!49196 () Bool)

(assert (=> d!68139 (= c!49196 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!151262 () (_ BitVec 64))

(assert (=> d!68139 (= lt!151262 (select (arr!7427 a!3293) (toIndex!0 k0!2441 mask!3709)))))

(assert (=> d!68139 (validMask!0 mask!3709)))

(assert (=> d!68139 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151261)))

(declare-fun b!308050 () Bool)

(declare-fun e!192687 () SeekEntryResult!2578)

(assert (=> b!308050 (= e!192684 e!192687)))

(declare-fun c!49195 () Bool)

(assert (=> b!308050 (= c!49195 (or (= lt!151262 k0!2441) (= (bvadd lt!151262 lt!151262) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!308051 () Bool)

(assert (=> b!308051 (= e!192684 (Intermediate!2578 true (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!308052 () Bool)

(assert (=> b!308052 (= e!192687 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!308053 () Bool)

(assert (=> b!308053 (and (bvsge (index!12490 lt!151261) #b00000000000000000000000000000000) (bvslt (index!12490 lt!151261) (size!7779 a!3293)))))

(assert (=> b!308053 (= e!192688 (= (select (arr!7427 a!3293) (index!12490 lt!151261)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!308054 () Bool)

(assert (=> b!308054 (= e!192686 (bvsge (x!30688 lt!151261) #b01111111111111111111111111111110))))

(declare-fun b!308055 () Bool)

(assert (=> b!308055 (= e!192687 (Intermediate!2578 false (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(assert (= (and d!68139 c!49196) b!308051))

(assert (= (and d!68139 (not c!49196)) b!308050))

(assert (= (and b!308050 c!49195) b!308055))

(assert (= (and b!308050 (not c!49195)) b!308052))

(assert (= (and d!68139 c!49194) b!308054))

(assert (= (and d!68139 (not c!49194)) b!308049))

(assert (= (and b!308049 res!164864) b!308048))

(assert (= (and b!308048 (not res!164865)) b!308047))

(assert (= (and b!308047 (not res!164866)) b!308053))

(assert (=> d!68139 m!318101))

(declare-fun m!318209 () Bool)

(assert (=> d!68139 m!318209))

(assert (=> d!68139 m!318115))

(declare-fun m!318211 () Bool)

(assert (=> b!308047 m!318211))

(assert (=> b!308048 m!318211))

(assert (=> b!308052 m!318101))

(declare-fun m!318213 () Bool)

(assert (=> b!308052 m!318213))

(assert (=> b!308052 m!318213))

(declare-fun m!318215 () Bool)

(assert (=> b!308052 m!318215))

(assert (=> b!308053 m!318211))

(assert (=> b!307872 d!68139))

(declare-fun d!68145 () Bool)

(declare-fun lt!151274 () (_ BitVec 32))

(declare-fun lt!151273 () (_ BitVec 32))

(assert (=> d!68145 (= lt!151274 (bvmul (bvxor lt!151273 (bvlshr lt!151273 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68145 (= lt!151273 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68145 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!164867 (let ((h!5361 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!30697 (bvmul (bvxor h!5361 (bvlshr h!5361 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!30697 (bvlshr x!30697 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!164867 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!164867 #b00000000000000000000000000000000))))))

(assert (=> d!68145 (= (toIndex!0 k0!2441 mask!3709) (bvand (bvxor lt!151274 (bvlshr lt!151274 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!307872 d!68145))

(declare-fun d!68149 () Bool)

(assert (=> d!68149 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!30686 d!68149))

(declare-fun d!68155 () Bool)

(assert (=> d!68155 (= (array_inv!5381 a!3293) (bvsge (size!7779 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!30686 d!68155))

(declare-fun b!308072 () Bool)

(declare-fun lt!151281 () SeekEntryResult!2578)

(assert (=> b!308072 (and (bvsge (index!12490 lt!151281) #b00000000000000000000000000000000) (bvslt (index!12490 lt!151281) (size!7779 a!3293)))))

(declare-fun res!164874 () Bool)

(assert (=> b!308072 (= res!164874 (= (select (arr!7427 a!3293) (index!12490 lt!151281)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!192703 () Bool)

(assert (=> b!308072 (=> res!164874 e!192703)))

(declare-fun b!308073 () Bool)

(assert (=> b!308073 (and (bvsge (index!12490 lt!151281) #b00000000000000000000000000000000) (bvslt (index!12490 lt!151281) (size!7779 a!3293)))))

(declare-fun res!164873 () Bool)

(assert (=> b!308073 (= res!164873 (= (select (arr!7427 a!3293) (index!12490 lt!151281)) k0!2441))))

(assert (=> b!308073 (=> res!164873 e!192703)))

(declare-fun e!192700 () Bool)

(assert (=> b!308073 (= e!192700 e!192703)))

(declare-fun b!308074 () Bool)

(declare-fun e!192701 () Bool)

(assert (=> b!308074 (= e!192701 e!192700)))

(declare-fun res!164872 () Bool)

(assert (=> b!308074 (= res!164872 (and ((_ is Intermediate!2578) lt!151281) (not (undefined!3390 lt!151281)) (bvslt (x!30688 lt!151281) #b01111111111111111111111111111110) (bvsge (x!30688 lt!151281) #b00000000000000000000000000000000) (bvsge (x!30688 lt!151281) x!1427)))))

(assert (=> b!308074 (=> (not res!164872) (not e!192700))))

(declare-fun d!68157 () Bool)

(assert (=> d!68157 e!192701))

(declare-fun c!49203 () Bool)

(assert (=> d!68157 (= c!49203 (and ((_ is Intermediate!2578) lt!151281) (undefined!3390 lt!151281)))))

(declare-fun e!192699 () SeekEntryResult!2578)

(assert (=> d!68157 (= lt!151281 e!192699)))

(declare-fun c!49205 () Bool)

(assert (=> d!68157 (= c!49205 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!151282 () (_ BitVec 64))

(assert (=> d!68157 (= lt!151282 (select (arr!7427 a!3293) index!1781))))

(assert (=> d!68157 (validMask!0 mask!3709)))

(assert (=> d!68157 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!151281)))

(declare-fun b!308075 () Bool)

(declare-fun e!192702 () SeekEntryResult!2578)

(assert (=> b!308075 (= e!192699 e!192702)))

(declare-fun c!49204 () Bool)

(assert (=> b!308075 (= c!49204 (or (= lt!151282 k0!2441) (= (bvadd lt!151282 lt!151282) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!308076 () Bool)

(assert (=> b!308076 (= e!192699 (Intermediate!2578 true index!1781 x!1427))))

(declare-fun b!308077 () Bool)

(assert (=> b!308077 (= e!192702 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!308078 () Bool)

(assert (=> b!308078 (and (bvsge (index!12490 lt!151281) #b00000000000000000000000000000000) (bvslt (index!12490 lt!151281) (size!7779 a!3293)))))

(assert (=> b!308078 (= e!192703 (= (select (arr!7427 a!3293) (index!12490 lt!151281)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!308079 () Bool)

(assert (=> b!308079 (= e!192701 (bvsge (x!30688 lt!151281) #b01111111111111111111111111111110))))

(declare-fun b!308080 () Bool)

(assert (=> b!308080 (= e!192702 (Intermediate!2578 false index!1781 x!1427))))

(assert (= (and d!68157 c!49205) b!308076))

(assert (= (and d!68157 (not c!49205)) b!308075))

(assert (= (and b!308075 c!49204) b!308080))

(assert (= (and b!308075 (not c!49204)) b!308077))

(assert (= (and d!68157 c!49203) b!308079))

(assert (= (and d!68157 (not c!49203)) b!308074))

(assert (= (and b!308074 res!164872) b!308073))

(assert (= (and b!308073 (not res!164873)) b!308072))

(assert (= (and b!308072 (not res!164874)) b!308078))

(assert (=> d!68157 m!318107))

(assert (=> d!68157 m!318115))

(declare-fun m!318221 () Bool)

(assert (=> b!308072 m!318221))

(assert (=> b!308073 m!318221))

(assert (=> b!308077 m!318099))

(assert (=> b!308077 m!318099))

(declare-fun m!318223 () Bool)

(assert (=> b!308077 m!318223))

(assert (=> b!308078 m!318221))

(assert (=> b!307878 d!68157))

(check-sat (not d!68157) (not b!307918) (not b!307974) (not b!308077) (not d!68119) (not d!68139) (not b!308052) (not bm!25904) (not b!307949) (not d!68129) (not b!307917))
(check-sat)
