; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50012 () Bool)

(assert start!50012)

(declare-fun b!547978 () Bool)

(declare-fun e!316603 () Bool)

(declare-fun e!316602 () Bool)

(assert (=> b!547978 (= e!316603 e!316602)))

(declare-fun res!341540 () Bool)

(assert (=> b!547978 (=> (not res!341540) (not e!316602))))

(declare-datatypes ((SeekEntryResult!5046 0))(
  ( (MissingZero!5046 (index!22411 (_ BitVec 32))) (Found!5046 (index!22412 (_ BitVec 32))) (Intermediate!5046 (undefined!5858 Bool) (index!22413 (_ BitVec 32)) (x!51381 (_ BitVec 32))) (Undefined!5046) (MissingVacant!5046 (index!22414 (_ BitVec 32))) )
))
(declare-fun lt!249703 () SeekEntryResult!5046)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!547978 (= res!341540 (or (= lt!249703 (MissingZero!5046 i!1132)) (= lt!249703 (MissingVacant!5046 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!34548 0))(
  ( (array!34549 (arr!16590 (Array (_ BitVec 32) (_ BitVec 64))) (size!16954 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34548)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34548 (_ BitVec 32)) SeekEntryResult!5046)

(assert (=> b!547978 (= lt!249703 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!547979 () Bool)

(declare-fun res!341537 () Bool)

(assert (=> b!547979 (=> (not res!341537) (not e!316602))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34548 (_ BitVec 32)) Bool)

(assert (=> b!547979 (= res!341537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!547980 () Bool)

(declare-fun res!341538 () Bool)

(assert (=> b!547980 (=> (not res!341538) (not e!316603))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547980 (= res!341538 (validKeyInArray!0 k!1914))))

(declare-fun b!547981 () Bool)

(declare-fun res!341542 () Bool)

(assert (=> b!547981 (=> (not res!341542) (not e!316603))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!547981 (= res!341542 (and (= (size!16954 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16954 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16954 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!547982 () Bool)

(declare-fun lt!249704 () (_ BitVec 32))

(assert (=> b!547982 (= e!316602 (and (bvsge mask!3119 #b00000000000000000000000000000000) (or (bvslt lt!249704 #b00000000000000000000000000000000) (bvsge lt!249704 (bvadd #b00000000000000000000000000000001 mask!3119)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!547982 (= lt!249704 (toIndex!0 (select (arr!16590 a!3118) j!142) mask!3119))))

(declare-fun res!341543 () Bool)

(assert (=> start!50012 (=> (not res!341543) (not e!316603))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50012 (= res!341543 (validMask!0 mask!3119))))

(assert (=> start!50012 e!316603))

(assert (=> start!50012 true))

(declare-fun array_inv!12364 (array!34548) Bool)

(assert (=> start!50012 (array_inv!12364 a!3118)))

(declare-fun b!547983 () Bool)

(declare-fun res!341536 () Bool)

(assert (=> b!547983 (=> (not res!341536) (not e!316603))))

(declare-fun arrayContainsKey!0 (array!34548 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547983 (= res!341536 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!547984 () Bool)

(declare-fun res!341541 () Bool)

(assert (=> b!547984 (=> (not res!341541) (not e!316602))))

(declare-datatypes ((List!10723 0))(
  ( (Nil!10720) (Cons!10719 (h!11686 (_ BitVec 64)) (t!16959 List!10723)) )
))
(declare-fun arrayNoDuplicates!0 (array!34548 (_ BitVec 32) List!10723) Bool)

(assert (=> b!547984 (= res!341541 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10720))))

(declare-fun b!547985 () Bool)

(declare-fun res!341539 () Bool)

(assert (=> b!547985 (=> (not res!341539) (not e!316603))))

(assert (=> b!547985 (= res!341539 (validKeyInArray!0 (select (arr!16590 a!3118) j!142)))))

(assert (= (and start!50012 res!341543) b!547981))

(assert (= (and b!547981 res!341542) b!547985))

(assert (= (and b!547985 res!341539) b!547980))

(assert (= (and b!547980 res!341538) b!547983))

(assert (= (and b!547983 res!341536) b!547978))

(assert (= (and b!547978 res!341540) b!547979))

(assert (= (and b!547979 res!341537) b!547984))

(assert (= (and b!547984 res!341541) b!547982))

(declare-fun m!525109 () Bool)

(assert (=> b!547979 m!525109))

(declare-fun m!525111 () Bool)

(assert (=> b!547980 m!525111))

(declare-fun m!525113 () Bool)

(assert (=> b!547978 m!525113))

(declare-fun m!525115 () Bool)

(assert (=> b!547984 m!525115))

(declare-fun m!525117 () Bool)

(assert (=> b!547982 m!525117))

(assert (=> b!547982 m!525117))

(declare-fun m!525119 () Bool)

(assert (=> b!547982 m!525119))

(declare-fun m!525121 () Bool)

(assert (=> start!50012 m!525121))

(declare-fun m!525123 () Bool)

(assert (=> start!50012 m!525123))

(declare-fun m!525125 () Bool)

(assert (=> b!547983 m!525125))

(assert (=> b!547985 m!525117))

(assert (=> b!547985 m!525117))

(declare-fun m!525127 () Bool)

(assert (=> b!547985 m!525127))

(push 1)

(assert (not b!547984))

(assert (not b!547978))

(assert (not b!547979))

(assert (not b!547980))

(assert (not b!547983))

(assert (not b!547985))

(assert (not b!547982))

(assert (not start!50012))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!548064 () Bool)

(declare-fun e!316637 () SeekEntryResult!5046)

(declare-fun lt!249736 () SeekEntryResult!5046)

(assert (=> b!548064 (= e!316637 (MissingZero!5046 (index!22413 lt!249736)))))

(declare-fun b!548065 () Bool)

(declare-fun e!316639 () SeekEntryResult!5046)

(declare-fun e!316638 () SeekEntryResult!5046)

(assert (=> b!548065 (= e!316639 e!316638)))

(declare-fun lt!249738 () (_ BitVec 64))

(assert (=> b!548065 (= lt!249738 (select (arr!16590 a!3118) (index!22413 lt!249736)))))

(declare-fun c!63564 () Bool)

(assert (=> b!548065 (= c!63564 (= lt!249738 k!1914))))

(declare-fun b!548066 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34548 (_ BitVec 32)) SeekEntryResult!5046)

(assert (=> b!548066 (= e!316637 (seekKeyOrZeroReturnVacant!0 (x!51381 lt!249736) (index!22413 lt!249736) (index!22413 lt!249736) k!1914 a!3118 mask!3119))))

(declare-fun d!82503 () Bool)

(declare-fun lt!249737 () SeekEntryResult!5046)

(assert (=> d!82503 (and (or (is-Undefined!5046 lt!249737) (not (is-Found!5046 lt!249737)) (and (bvsge (index!22412 lt!249737) #b00000000000000000000000000000000) (bvslt (index!22412 lt!249737) (size!16954 a!3118)))) (or (is-Undefined!5046 lt!249737) (is-Found!5046 lt!249737) (not (is-MissingZero!5046 lt!249737)) (and (bvsge (index!22411 lt!249737) #b00000000000000000000000000000000) (bvslt (index!22411 lt!249737) (size!16954 a!3118)))) (or (is-Undefined!5046 lt!249737) (is-Found!5046 lt!249737) (is-MissingZero!5046 lt!249737) (not (is-MissingVacant!5046 lt!249737)) (and (bvsge (index!22414 lt!249737) #b00000000000000000000000000000000) (bvslt (index!22414 lt!249737) (size!16954 a!3118)))) (or (is-Undefined!5046 lt!249737) (ite (is-Found!5046 lt!249737) (= (select (arr!16590 a!3118) (index!22412 lt!249737)) k!1914) (ite (is-MissingZero!5046 lt!249737) (= (select (arr!16590 a!3118) (index!22411 lt!249737)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5046 lt!249737) (= (select (arr!16590 a!3118) (index!22414 lt!249737)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82503 (= lt!249737 e!316639)))

(declare-fun c!63565 () Bool)

(assert (=> d!82503 (= c!63565 (and (is-Intermediate!5046 lt!249736) (undefined!5858 lt!249736)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34548 (_ BitVec 32)) SeekEntryResult!5046)

(assert (=> d!82503 (= lt!249736 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!82503 (validMask!0 mask!3119)))

(assert (=> d!82503 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!249737)))

(declare-fun b!548067 () Bool)

(assert (=> b!548067 (= e!316638 (Found!5046 (index!22413 lt!249736)))))

(declare-fun b!548068 () Bool)

(assert (=> b!548068 (= e!316639 Undefined!5046)))

(declare-fun b!548069 () Bool)

(declare-fun c!63566 () Bool)

(assert (=> b!548069 (= c!63566 (= lt!249738 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!548069 (= e!316638 e!316637)))

(assert (= (and d!82503 c!63565) b!548068))

(assert (= (and d!82503 (not c!63565)) b!548065))

(assert (= (and b!548065 c!63564) b!548067))

(assert (= (and b!548065 (not c!63564)) b!548069))

(assert (= (and b!548069 c!63566) b!548064))

(assert (= (and b!548069 (not c!63566)) b!548066))

(declare-fun m!525183 () Bool)

(assert (=> b!548065 m!525183))

(declare-fun m!525185 () Bool)

(assert (=> b!548066 m!525185))

(assert (=> d!82503 m!525121))

(declare-fun m!525187 () Bool)

(assert (=> d!82503 m!525187))

(declare-fun m!525189 () Bool)

(assert (=> d!82503 m!525189))

(declare-fun m!525191 () Bool)

(assert (=> d!82503 m!525191))

(declare-fun m!525193 () Bool)

(assert (=> d!82503 m!525193))

(declare-fun m!525195 () Bool)

(assert (=> d!82503 m!525195))

(assert (=> d!82503 m!525189))

(assert (=> b!547978 d!82503))

(declare-fun d!82509 () Bool)

(declare-fun res!341602 () Bool)

(declare-fun e!316656 () Bool)

(assert (=> d!82509 (=> res!341602 e!316656)))

(assert (=> d!82509 (= res!341602 (= (select (arr!16590 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!82509 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!316656)))

(declare-fun b!548092 () Bool)

(declare-fun e!316657 () Bool)

(assert (=> b!548092 (= e!316656 e!316657)))

(declare-fun res!341603 () Bool)

(assert (=> b!548092 (=> (not res!341603) (not e!316657))))

(assert (=> b!548092 (= res!341603 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16954 a!3118)))))

(declare-fun b!548093 () Bool)

(assert (=> b!548093 (= e!316657 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82509 (not res!341602)) b!548092))

(assert (= (and b!548092 res!341603) b!548093))

(declare-fun m!525201 () Bool)

(assert (=> d!82509 m!525201))

(declare-fun m!525203 () Bool)

(assert (=> b!548093 m!525203))

(assert (=> b!547983 d!82509))

(declare-fun d!82513 () Bool)

(assert (=> d!82513 (= (validKeyInArray!0 (select (arr!16590 a!3118) j!142)) (and (not (= (select (arr!16590 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16590 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!547985 d!82513))

(declare-fun b!548118 () Bool)

(declare-fun e!316677 () Bool)

(declare-fun call!32194 () Bool)

(assert (=> b!548118 (= e!316677 call!32194)))

(declare-fun d!82515 () Bool)

(declare-fun res!341617 () Bool)

(declare-fun e!316678 () Bool)

(assert (=> d!82515 (=> res!341617 e!316678)))

(assert (=> d!82515 (= res!341617 (bvsge #b00000000000000000000000000000000 (size!16954 a!3118)))))

(assert (=> d!82515 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10720) e!316678)))

(declare-fun b!548119 () Bool)

(declare-fun e!316675 () Bool)

(assert (=> b!548119 (= e!316678 e!316675)))

(declare-fun res!341616 () Bool)

(assert (=> b!548119 (=> (not res!341616) (not e!316675))))

(declare-fun e!316676 () Bool)

(assert (=> b!548119 (= res!341616 (not e!316676))))

(declare-fun res!341615 () Bool)

(assert (=> b!548119 (=> (not res!341615) (not e!316676))))

(assert (=> b!548119 (= res!341615 (validKeyInArray!0 (select (arr!16590 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32191 () Bool)

(declare-fun c!63580 () Bool)

(assert (=> bm!32191 (= call!32194 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63580 (Cons!10719 (select (arr!16590 a!3118) #b00000000000000000000000000000000) Nil!10720) Nil!10720)))))

(declare-fun b!548120 () Bool)

(declare-fun contains!2828 (List!10723 (_ BitVec 64)) Bool)

(assert (=> b!548120 (= e!316676 (contains!2828 Nil!10720 (select (arr!16590 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!548121 () Bool)

(assert (=> b!548121 (= e!316675 e!316677)))

(assert (=> b!548121 (= c!63580 (validKeyInArray!0 (select (arr!16590 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!548122 () Bool)

(assert (=> b!548122 (= e!316677 call!32194)))

(assert (= (and d!82515 (not res!341617)) b!548119))

(assert (= (and b!548119 res!341615) b!548120))

(assert (= (and b!548119 res!341616) b!548121))

(assert (= (and b!548121 c!63580) b!548118))

(assert (= (and b!548121 (not c!63580)) b!548122))

(assert (= (or b!548118 b!548122) bm!32191))

(assert (=> b!548119 m!525201))

(assert (=> b!548119 m!525201))

(declare-fun m!525219 () Bool)

(assert (=> b!548119 m!525219))

(assert (=> bm!32191 m!525201))

(declare-fun m!525225 () Bool)

(assert (=> bm!32191 m!525225))

(assert (=> b!548120 m!525201))

(assert (=> b!548120 m!525201))

(declare-fun m!525229 () Bool)

(assert (=> b!548120 m!525229))

(assert (=> b!548121 m!525201))

(assert (=> b!548121 m!525201))

(assert (=> b!548121 m!525219))

(assert (=> b!547984 d!82515))

(declare-fun b!548147 () Bool)

(declare-fun e!316699 () Bool)

(declare-fun call!32201 () Bool)

(assert (=> b!548147 (= e!316699 call!32201)))

(declare-fun b!548148 () Bool)

(declare-fun e!316698 () Bool)

(assert (=> b!548148 (= e!316698 call!32201)))

(declare-fun b!548149 () Bool)

(declare-fun e!316697 () Bool)

(assert (=> b!548149 (= e!316697 e!316699)))

(declare-fun c!63587 () Bool)

(assert (=> b!548149 (= c!63587 (validKeyInArray!0 (select (arr!16590 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32198 () Bool)

(assert (=> bm!32198 (= call!32201 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!548150 () Bool)

(assert (=> b!548150 (= e!316699 e!316698)))

(declare-fun lt!249776 () (_ BitVec 64))

(assert (=> b!548150 (= lt!249776 (select (arr!16590 a!3118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16946 0))(
  ( (Unit!16947) )
))
(declare-fun lt!249775 () Unit!16946)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34548 (_ BitVec 64) (_ BitVec 32)) Unit!16946)

(assert (=> b!548150 (= lt!249775 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!249776 #b00000000000000000000000000000000))))

(assert (=> b!548150 (arrayContainsKey!0 a!3118 lt!249776 #b00000000000000000000000000000000)))

(declare-fun lt!249774 () Unit!16946)

(assert (=> b!548150 (= lt!249774 lt!249775)))

(declare-fun res!341630 () Bool)

(assert (=> b!548150 (= res!341630 (= (seekEntryOrOpen!0 (select (arr!16590 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5046 #b00000000000000000000000000000000)))))

(assert (=> b!548150 (=> (not res!341630) (not e!316698))))

(declare-fun d!82525 () Bool)

(declare-fun res!341631 () Bool)

(assert (=> d!82525 (=> res!341631 e!316697)))

(assert (=> d!82525 (= res!341631 (bvsge #b00000000000000000000000000000000 (size!16954 a!3118)))))

(assert (=> d!82525 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!316697)))

(assert (= (and d!82525 (not res!341631)) b!548149))

(assert (= (and b!548149 c!63587) b!548150))

(assert (= (and b!548149 (not c!63587)) b!548147))

(assert (= (and b!548150 res!341630) b!548148))

(assert (= (or b!548148 b!548147) bm!32198))

(assert (=> b!548149 m!525201))

(assert (=> b!548149 m!525201))

(assert (=> b!548149 m!525219))

(declare-fun m!525247 () Bool)

(assert (=> bm!32198 m!525247))

(assert (=> b!548150 m!525201))

(declare-fun m!525249 () Bool)

(assert (=> b!548150 m!525249))

(declare-fun m!525251 () Bool)

(assert (=> b!548150 m!525251))

(assert (=> b!548150 m!525201))

(declare-fun m!525253 () Bool)

(assert (=> b!548150 m!525253))

(assert (=> b!547979 d!82525))

(declare-fun d!82529 () Bool)

(assert (=> d!82529 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50012 d!82529))

(declare-fun d!82543 () Bool)

(assert (=> d!82543 (= (array_inv!12364 a!3118) (bvsge (size!16954 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!50012 d!82543))

(declare-fun d!82545 () Bool)

(assert (=> d!82545 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!547980 d!82545))

(declare-fun d!82547 () Bool)

(declare-fun lt!249788 () (_ BitVec 32))

(declare-fun lt!249787 () (_ BitVec 32))

(assert (=> d!82547 (= lt!249788 (bvmul (bvxor lt!249787 (bvlshr lt!249787 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82547 (= lt!249787 ((_ extract 31 0) (bvand (bvxor (select (arr!16590 a!3118) j!142) (bvlshr (select (arr!16590 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82547 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!341654 (let ((h!11691 ((_ extract 31 0) (bvand (bvxor (select (arr!16590 a!3118) j!142) (bvlshr (select (arr!16590 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51386 (bvmul (bvxor h!11691 (bvlshr h!11691 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51386 (bvlshr x!51386 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!341654 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!341654 #b00000000000000000000000000000000))))))

(assert (=> d!82547 (= (toIndex!0 (select (arr!16590 a!3118) j!142) mask!3119) (bvand (bvxor lt!249788 (bvlshr lt!249788 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!547982 d!82547))

(push 1)

(assert (not b!548121))

(assert (not b!548066))

(assert (not d!82503))

(assert (not bm!32198))

(assert (not b!548149))

(assert (not bm!32191))

(assert (not b!548093))

(assert (not b!548119))

(assert (not b!548120))

(assert (not b!548150))

(check-sat)

(pop 1)

(push 1)

(check-sat)

