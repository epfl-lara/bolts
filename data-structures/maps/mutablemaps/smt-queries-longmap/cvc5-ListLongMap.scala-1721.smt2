; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31728 () Bool)

(assert start!31728)

(declare-fun b!316819 () Bool)

(declare-fun res!171756 () Bool)

(declare-fun e!197022 () Bool)

(assert (=> b!316819 (=> (not res!171756) (not e!197022))))

(declare-datatypes ((array!16148 0))(
  ( (array!16149 (arr!7639 (Array (_ BitVec 32) (_ BitVec 64))) (size!7991 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16148)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16148 (_ BitVec 32)) Bool)

(assert (=> b!316819 (= res!171756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!316820 () Bool)

(declare-fun res!171757 () Bool)

(assert (=> b!316820 (=> (not res!171757) (not e!197022))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!316820 (= res!171757 (and (= (size!7991 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7991 a!3293))))))

(declare-fun b!316822 () Bool)

(declare-fun res!171759 () Bool)

(declare-fun e!197020 () Bool)

(assert (=> b!316822 (=> (not res!171759) (not e!197020))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!316822 (= res!171759 (and (= (select (arr!7639 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7991 a!3293))))))

(declare-fun b!316823 () Bool)

(declare-fun res!171755 () Bool)

(assert (=> b!316823 (=> (not res!171755) (not e!197022))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2790 0))(
  ( (MissingZero!2790 (index!13336 (_ BitVec 32))) (Found!2790 (index!13337 (_ BitVec 32))) (Intermediate!2790 (undefined!3602 Bool) (index!13338 (_ BitVec 32)) (x!31561 (_ BitVec 32))) (Undefined!2790) (MissingVacant!2790 (index!13339 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16148 (_ BitVec 32)) SeekEntryResult!2790)

(assert (=> b!316823 (= res!171755 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2790 i!1240)))))

(declare-fun b!316824 () Bool)

(assert (=> b!316824 (= e!197022 e!197020)))

(declare-fun res!171754 () Bool)

(assert (=> b!316824 (=> (not res!171754) (not e!197020))))

(declare-fun lt!154738 () SeekEntryResult!2790)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16148 (_ BitVec 32)) SeekEntryResult!2790)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316824 (= res!171754 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154738))))

(assert (=> b!316824 (= lt!154738 (Intermediate!2790 false resIndex!52 resX!52))))

(declare-fun e!197023 () Bool)

(declare-fun b!316825 () Bool)

(declare-fun lt!154737 () (_ BitVec 32))

(declare-fun lt!154736 () array!16148)

(assert (=> b!316825 (= e!197023 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!154736 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154737 k!2441 lt!154736 mask!3709))))))

(assert (=> b!316825 (= lt!154736 (array!16149 (store (arr!7639 a!3293) i!1240 k!2441) (size!7991 a!3293)))))

(declare-fun lt!154739 () SeekEntryResult!2790)

(assert (=> b!316825 (= lt!154739 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154737 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316825 (= lt!154737 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!316826 () Bool)

(declare-fun res!171758 () Bool)

(assert (=> b!316826 (=> (not res!171758) (not e!197022))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!316826 (= res!171758 (validKeyInArray!0 k!2441))))

(declare-fun b!316827 () Bool)

(assert (=> b!316827 (= e!197020 e!197023)))

(declare-fun res!171752 () Bool)

(assert (=> b!316827 (=> (not res!171752) (not e!197023))))

(assert (=> b!316827 (= res!171752 (and (= lt!154739 lt!154738) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7639 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!316827 (= lt!154739 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun res!171751 () Bool)

(assert (=> start!31728 (=> (not res!171751) (not e!197022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31728 (= res!171751 (validMask!0 mask!3709))))

(assert (=> start!31728 e!197022))

(declare-fun array_inv!5593 (array!16148) Bool)

(assert (=> start!31728 (array_inv!5593 a!3293)))

(assert (=> start!31728 true))

(declare-fun b!316821 () Bool)

(declare-fun res!171753 () Bool)

(assert (=> b!316821 (=> (not res!171753) (not e!197022))))

(declare-fun arrayContainsKey!0 (array!16148 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!316821 (= res!171753 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!31728 res!171751) b!316820))

(assert (= (and b!316820 res!171757) b!316826))

(assert (= (and b!316826 res!171758) b!316821))

(assert (= (and b!316821 res!171753) b!316823))

(assert (= (and b!316823 res!171755) b!316819))

(assert (= (and b!316819 res!171756) b!316824))

(assert (= (and b!316824 res!171754) b!316822))

(assert (= (and b!316822 res!171759) b!316827))

(assert (= (and b!316827 res!171752) b!316825))

(declare-fun m!325603 () Bool)

(assert (=> b!316821 m!325603))

(declare-fun m!325605 () Bool)

(assert (=> b!316827 m!325605))

(declare-fun m!325607 () Bool)

(assert (=> b!316827 m!325607))

(declare-fun m!325609 () Bool)

(assert (=> b!316824 m!325609))

(assert (=> b!316824 m!325609))

(declare-fun m!325611 () Bool)

(assert (=> b!316824 m!325611))

(declare-fun m!325613 () Bool)

(assert (=> start!31728 m!325613))

(declare-fun m!325615 () Bool)

(assert (=> start!31728 m!325615))

(declare-fun m!325617 () Bool)

(assert (=> b!316819 m!325617))

(declare-fun m!325619 () Bool)

(assert (=> b!316822 m!325619))

(declare-fun m!325621 () Bool)

(assert (=> b!316826 m!325621))

(declare-fun m!325623 () Bool)

(assert (=> b!316823 m!325623))

(declare-fun m!325625 () Bool)

(assert (=> b!316825 m!325625))

(declare-fun m!325627 () Bool)

(assert (=> b!316825 m!325627))

(declare-fun m!325629 () Bool)

(assert (=> b!316825 m!325629))

(declare-fun m!325631 () Bool)

(assert (=> b!316825 m!325631))

(declare-fun m!325633 () Bool)

(assert (=> b!316825 m!325633))

(push 1)

(assert (not b!316826))

(assert (not b!316819))

(assert (not start!31728))

(assert (not b!316821))

(assert (not b!316824))

(assert (not b!316825))

(assert (not b!316827))

(assert (not b!316823))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!316948 () Bool)

(declare-fun e!197091 () Bool)

(declare-fun lt!154795 () SeekEntryResult!2790)

(assert (=> b!316948 (= e!197091 (bvsge (x!31561 lt!154795) #b01111111111111111111111111111110))))

(declare-fun b!316949 () Bool)

(declare-fun e!197092 () SeekEntryResult!2790)

(declare-fun e!197094 () SeekEntryResult!2790)

(assert (=> b!316949 (= e!197092 e!197094)))

(declare-fun c!50177 () Bool)

(declare-fun lt!154796 () (_ BitVec 64))

(assert (=> b!316949 (= c!50177 (or (= lt!154796 k!2441) (= (bvadd lt!154796 lt!154796) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!316950 () Bool)

(assert (=> b!316950 (and (bvsge (index!13338 lt!154795) #b00000000000000000000000000000000) (bvslt (index!13338 lt!154795) (size!7991 lt!154736)))))

(declare-fun res!171839 () Bool)

(assert (=> b!316950 (= res!171839 (= (select (arr!7639 lt!154736) (index!13338 lt!154795)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!197095 () Bool)

(assert (=> b!316950 (=> res!171839 e!197095)))

(declare-fun d!68997 () Bool)

(assert (=> d!68997 e!197091))

(declare-fun c!50176 () Bool)

(assert (=> d!68997 (= c!50176 (and (is-Intermediate!2790 lt!154795) (undefined!3602 lt!154795)))))

(assert (=> d!68997 (= lt!154795 e!197092)))

(declare-fun c!50175 () Bool)

(assert (=> d!68997 (= c!50175 (bvsge x!1427 #b01111111111111111111111111111110))))

(assert (=> d!68997 (= lt!154796 (select (arr!7639 lt!154736) index!1781))))

(assert (=> d!68997 (validMask!0 mask!3709)))

(assert (=> d!68997 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!154736 mask!3709) lt!154795)))

(declare-fun b!316951 () Bool)

(assert (=> b!316951 (= e!197094 (Intermediate!2790 false index!1781 x!1427))))

(declare-fun b!316952 () Bool)

(assert (=> b!316952 (and (bvsge (index!13338 lt!154795) #b00000000000000000000000000000000) (bvslt (index!13338 lt!154795) (size!7991 lt!154736)))))

(declare-fun res!171840 () Bool)

(assert (=> b!316952 (= res!171840 (= (select (arr!7639 lt!154736) (index!13338 lt!154795)) k!2441))))

(assert (=> b!316952 (=> res!171840 e!197095)))

(declare-fun e!197093 () Bool)

(assert (=> b!316952 (= e!197093 e!197095)))

(declare-fun b!316953 () Bool)

(assert (=> b!316953 (= e!197092 (Intermediate!2790 true index!1781 x!1427))))

(declare-fun b!316954 () Bool)

(assert (=> b!316954 (= e!197091 e!197093)))

(declare-fun res!171838 () Bool)

(assert (=> b!316954 (= res!171838 (and (is-Intermediate!2790 lt!154795) (not (undefined!3602 lt!154795)) (bvslt (x!31561 lt!154795) #b01111111111111111111111111111110) (bvsge (x!31561 lt!154795) #b00000000000000000000000000000000) (bvsge (x!31561 lt!154795) x!1427)))))

(assert (=> b!316954 (=> (not res!171838) (not e!197093))))

(declare-fun b!316955 () Bool)

(assert (=> b!316955 (= e!197094 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 lt!154736 mask!3709))))

(declare-fun b!316956 () Bool)

(assert (=> b!316956 (and (bvsge (index!13338 lt!154795) #b00000000000000000000000000000000) (bvslt (index!13338 lt!154795) (size!7991 lt!154736)))))

(assert (=> b!316956 (= e!197095 (= (select (arr!7639 lt!154736) (index!13338 lt!154795)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!68997 c!50175) b!316953))

(assert (= (and d!68997 (not c!50175)) b!316949))

(assert (= (and b!316949 c!50177) b!316951))

(assert (= (and b!316949 (not c!50177)) b!316955))

(assert (= (and d!68997 c!50176) b!316948))

(assert (= (and d!68997 (not c!50176)) b!316954))

(assert (= (and b!316954 res!171838) b!316952))

(assert (= (and b!316952 (not res!171840)) b!316950))

(assert (= (and b!316950 (not res!171839)) b!316956))

(declare-fun m!325735 () Bool)

(assert (=> b!316956 m!325735))

(assert (=> b!316952 m!325735))

(assert (=> b!316955 m!325629))

(assert (=> b!316955 m!325629))

(declare-fun m!325737 () Bool)

(assert (=> b!316955 m!325737))

(declare-fun m!325739 () Bool)

(assert (=> d!68997 m!325739))

(assert (=> d!68997 m!325613))

(assert (=> b!316950 m!325735))

(assert (=> b!316825 d!68997))

(declare-fun b!316957 () Bool)

(declare-fun e!197096 () Bool)

(declare-fun lt!154797 () SeekEntryResult!2790)

(assert (=> b!316957 (= e!197096 (bvsge (x!31561 lt!154797) #b01111111111111111111111111111110))))

(declare-fun b!316958 () Bool)

(declare-fun e!197097 () SeekEntryResult!2790)

(declare-fun e!197099 () SeekEntryResult!2790)

(assert (=> b!316958 (= e!197097 e!197099)))

(declare-fun c!50180 () Bool)

(declare-fun lt!154798 () (_ BitVec 64))

(assert (=> b!316958 (= c!50180 (or (= lt!154798 k!2441) (= (bvadd lt!154798 lt!154798) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!316959 () Bool)

(assert (=> b!316959 (and (bvsge (index!13338 lt!154797) #b00000000000000000000000000000000) (bvslt (index!13338 lt!154797) (size!7991 lt!154736)))))

(declare-fun res!171842 () Bool)

(assert (=> b!316959 (= res!171842 (= (select (arr!7639 lt!154736) (index!13338 lt!154797)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!197100 () Bool)

(assert (=> b!316959 (=> res!171842 e!197100)))

(declare-fun d!69011 () Bool)

(assert (=> d!69011 e!197096))

(declare-fun c!50179 () Bool)

(assert (=> d!69011 (= c!50179 (and (is-Intermediate!2790 lt!154797) (undefined!3602 lt!154797)))))

(assert (=> d!69011 (= lt!154797 e!197097)))

(declare-fun c!50178 () Bool)

(assert (=> d!69011 (= c!50178 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(assert (=> d!69011 (= lt!154798 (select (arr!7639 lt!154736) lt!154737))))

(assert (=> d!69011 (validMask!0 mask!3709)))

(assert (=> d!69011 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154737 k!2441 lt!154736 mask!3709) lt!154797)))

(declare-fun b!316960 () Bool)

(assert (=> b!316960 (= e!197099 (Intermediate!2790 false lt!154737 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!316961 () Bool)

(assert (=> b!316961 (and (bvsge (index!13338 lt!154797) #b00000000000000000000000000000000) (bvslt (index!13338 lt!154797) (size!7991 lt!154736)))))

(declare-fun res!171843 () Bool)

(assert (=> b!316961 (= res!171843 (= (select (arr!7639 lt!154736) (index!13338 lt!154797)) k!2441))))

(assert (=> b!316961 (=> res!171843 e!197100)))

(declare-fun e!197098 () Bool)

(assert (=> b!316961 (= e!197098 e!197100)))

(declare-fun b!316962 () Bool)

(assert (=> b!316962 (= e!197097 (Intermediate!2790 true lt!154737 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!316963 () Bool)

(assert (=> b!316963 (= e!197096 e!197098)))

(declare-fun res!171841 () Bool)

(assert (=> b!316963 (= res!171841 (and (is-Intermediate!2790 lt!154797) (not (undefined!3602 lt!154797)) (bvslt (x!31561 lt!154797) #b01111111111111111111111111111110) (bvsge (x!31561 lt!154797) #b00000000000000000000000000000000) (bvsge (x!31561 lt!154797) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!316963 (=> (not res!171841) (not e!197098))))

(declare-fun b!316964 () Bool)

(assert (=> b!316964 (= e!197099 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 lt!154737 (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k!2441 lt!154736 mask!3709))))

(declare-fun b!316965 () Bool)

(assert (=> b!316965 (and (bvsge (index!13338 lt!154797) #b00000000000000000000000000000000) (bvslt (index!13338 lt!154797) (size!7991 lt!154736)))))

(assert (=> b!316965 (= e!197100 (= (select (arr!7639 lt!154736) (index!13338 lt!154797)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!69011 c!50178) b!316962))

(assert (= (and d!69011 (not c!50178)) b!316958))

(assert (= (and b!316958 c!50180) b!316960))

(assert (= (and b!316958 (not c!50180)) b!316964))

(assert (= (and d!69011 c!50179) b!316957))

(assert (= (and d!69011 (not c!50179)) b!316963))

(assert (= (and b!316963 res!171841) b!316961))

(assert (= (and b!316961 (not res!171843)) b!316959))

(assert (= (and b!316959 (not res!171842)) b!316965))

(declare-fun m!325741 () Bool)

(assert (=> b!316965 m!325741))

(assert (=> b!316961 m!325741))

(declare-fun m!325743 () Bool)

(assert (=> b!316964 m!325743))

(assert (=> b!316964 m!325743))

(declare-fun m!325745 () Bool)

(assert (=> b!316964 m!325745))

(declare-fun m!325747 () Bool)

(assert (=> d!69011 m!325747))

(assert (=> d!69011 m!325613))

(assert (=> b!316959 m!325741))

(assert (=> b!316825 d!69011))

(declare-fun b!316966 () Bool)

(declare-fun e!197101 () Bool)

(declare-fun lt!154799 () SeekEntryResult!2790)

(assert (=> b!316966 (= e!197101 (bvsge (x!31561 lt!154799) #b01111111111111111111111111111110))))

(declare-fun b!316967 () Bool)

(declare-fun e!197102 () SeekEntryResult!2790)

(declare-fun e!197104 () SeekEntryResult!2790)

(assert (=> b!316967 (= e!197102 e!197104)))

(declare-fun c!50183 () Bool)

(declare-fun lt!154800 () (_ BitVec 64))

(assert (=> b!316967 (= c!50183 (or (= lt!154800 k!2441) (= (bvadd lt!154800 lt!154800) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!316968 () Bool)

(assert (=> b!316968 (and (bvsge (index!13338 lt!154799) #b00000000000000000000000000000000) (bvslt (index!13338 lt!154799) (size!7991 a!3293)))))

(declare-fun res!171845 () Bool)

(assert (=> b!316968 (= res!171845 (= (select (arr!7639 a!3293) (index!13338 lt!154799)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!197105 () Bool)

(assert (=> b!316968 (=> res!171845 e!197105)))

(declare-fun d!69013 () Bool)

(assert (=> d!69013 e!197101))

(declare-fun c!50182 () Bool)

(assert (=> d!69013 (= c!50182 (and (is-Intermediate!2790 lt!154799) (undefined!3602 lt!154799)))))

(assert (=> d!69013 (= lt!154799 e!197102)))

(declare-fun c!50181 () Bool)

(assert (=> d!69013 (= c!50181 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(assert (=> d!69013 (= lt!154800 (select (arr!7639 a!3293) lt!154737))))

(assert (=> d!69013 (validMask!0 mask!3709)))

(assert (=> d!69013 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154737 k!2441 a!3293 mask!3709) lt!154799)))

(declare-fun b!316969 () Bool)

(assert (=> b!316969 (= e!197104 (Intermediate!2790 false lt!154737 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!316970 () Bool)

(assert (=> b!316970 (and (bvsge (index!13338 lt!154799) #b00000000000000000000000000000000) (bvslt (index!13338 lt!154799) (size!7991 a!3293)))))

(declare-fun res!171846 () Bool)

(assert (=> b!316970 (= res!171846 (= (select (arr!7639 a!3293) (index!13338 lt!154799)) k!2441))))

(assert (=> b!316970 (=> res!171846 e!197105)))

(declare-fun e!197103 () Bool)

(assert (=> b!316970 (= e!197103 e!197105)))

(declare-fun b!316971 () Bool)

(assert (=> b!316971 (= e!197102 (Intermediate!2790 true lt!154737 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!316972 () Bool)

(assert (=> b!316972 (= e!197101 e!197103)))

(declare-fun res!171844 () Bool)

(assert (=> b!316972 (= res!171844 (and (is-Intermediate!2790 lt!154799) (not (undefined!3602 lt!154799)) (bvslt (x!31561 lt!154799) #b01111111111111111111111111111110) (bvsge (x!31561 lt!154799) #b00000000000000000000000000000000) (bvsge (x!31561 lt!154799) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!316972 (=> (not res!171844) (not e!197103))))

(declare-fun b!316973 () Bool)

(assert (=> b!316973 (= e!197104 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 lt!154737 (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!316974 () Bool)

(assert (=> b!316974 (and (bvsge (index!13338 lt!154799) #b00000000000000000000000000000000) (bvslt (index!13338 lt!154799) (size!7991 a!3293)))))

(assert (=> b!316974 (= e!197105 (= (select (arr!7639 a!3293) (index!13338 lt!154799)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!69013 c!50181) b!316971))

(assert (= (and d!69013 (not c!50181)) b!316967))

(assert (= (and b!316967 c!50183) b!316969))

(assert (= (and b!316967 (not c!50183)) b!316973))

(assert (= (and d!69013 c!50182) b!316966))

(assert (= (and d!69013 (not c!50182)) b!316972))

(assert (= (and b!316972 res!171844) b!316970))

(assert (= (and b!316970 (not res!171846)) b!316968))

(assert (= (and b!316968 (not res!171845)) b!316974))

(declare-fun m!325749 () Bool)

(assert (=> b!316974 m!325749))

(assert (=> b!316970 m!325749))

(assert (=> b!316973 m!325743))

(assert (=> b!316973 m!325743))

(declare-fun m!325751 () Bool)

(assert (=> b!316973 m!325751))

(declare-fun m!325753 () Bool)

(assert (=> d!69013 m!325753))

(assert (=> d!69013 m!325613))

(assert (=> b!316968 m!325749))

(assert (=> b!316825 d!69013))

(declare-fun d!69015 () Bool)

(declare-fun lt!154803 () (_ BitVec 32))

(assert (=> d!69015 (and (bvsge lt!154803 #b00000000000000000000000000000000) (bvslt lt!154803 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!69015 (= lt!154803 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!69015 (validMask!0 mask!3709)))

(assert (=> d!69015 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!154803)))

(declare-fun bs!11059 () Bool)

(assert (= bs!11059 d!69015))

(declare-fun m!325755 () Bool)

(assert (=> bs!11059 m!325755))

(assert (=> bs!11059 m!325613))

(assert (=> b!316825 d!69015))

(declare-fun b!316975 () Bool)

(declare-fun e!197106 () Bool)

(declare-fun lt!154808 () SeekEntryResult!2790)

(assert (=> b!316975 (= e!197106 (bvsge (x!31561 lt!154808) #b01111111111111111111111111111110))))

(declare-fun b!316976 () Bool)

(declare-fun e!197107 () SeekEntryResult!2790)

(declare-fun e!197109 () SeekEntryResult!2790)

(assert (=> b!316976 (= e!197107 e!197109)))

(declare-fun c!50186 () Bool)

(declare-fun lt!154809 () (_ BitVec 64))

(assert (=> b!316976 (= c!50186 (or (= lt!154809 k!2441) (= (bvadd lt!154809 lt!154809) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!316977 () Bool)

(assert (=> b!316977 (and (bvsge (index!13338 lt!154808) #b00000000000000000000000000000000) (bvslt (index!13338 lt!154808) (size!7991 a!3293)))))

(declare-fun res!171848 () Bool)

(assert (=> b!316977 (= res!171848 (= (select (arr!7639 a!3293) (index!13338 lt!154808)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!197110 () Bool)

(assert (=> b!316977 (=> res!171848 e!197110)))

(declare-fun d!69017 () Bool)

(assert (=> d!69017 e!197106))

(declare-fun c!50185 () Bool)

(assert (=> d!69017 (= c!50185 (and (is-Intermediate!2790 lt!154808) (undefined!3602 lt!154808)))))

(assert (=> d!69017 (= lt!154808 e!197107)))

(declare-fun c!50184 () Bool)

(assert (=> d!69017 (= c!50184 (bvsge x!1427 #b01111111111111111111111111111110))))

(assert (=> d!69017 (= lt!154809 (select (arr!7639 a!3293) index!1781))))

(assert (=> d!69017 (validMask!0 mask!3709)))

(assert (=> d!69017 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!154808)))

(declare-fun b!316978 () Bool)

(assert (=> b!316978 (= e!197109 (Intermediate!2790 false index!1781 x!1427))))

(declare-fun b!316979 () Bool)

(assert (=> b!316979 (and (bvsge (index!13338 lt!154808) #b00000000000000000000000000000000) (bvslt (index!13338 lt!154808) (size!7991 a!3293)))))

(declare-fun res!171849 () Bool)

(assert (=> b!316979 (= res!171849 (= (select (arr!7639 a!3293) (index!13338 lt!154808)) k!2441))))

(assert (=> b!316979 (=> res!171849 e!197110)))

(declare-fun e!197108 () Bool)

(assert (=> b!316979 (= e!197108 e!197110)))

(declare-fun b!316980 () Bool)

(assert (=> b!316980 (= e!197107 (Intermediate!2790 true index!1781 x!1427))))

(declare-fun b!316981 () Bool)

(assert (=> b!316981 (= e!197106 e!197108)))

(declare-fun res!171847 () Bool)

(assert (=> b!316981 (= res!171847 (and (is-Intermediate!2790 lt!154808) (not (undefined!3602 lt!154808)) (bvslt (x!31561 lt!154808) #b01111111111111111111111111111110) (bvsge (x!31561 lt!154808) #b00000000000000000000000000000000) (bvsge (x!31561 lt!154808) x!1427)))))

(assert (=> b!316981 (=> (not res!171847) (not e!197108))))

(declare-fun b!316982 () Bool)

(assert (=> b!316982 (= e!197109 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!316983 () Bool)

(assert (=> b!316983 (and (bvsge (index!13338 lt!154808) #b00000000000000000000000000000000) (bvslt (index!13338 lt!154808) (size!7991 a!3293)))))

(assert (=> b!316983 (= e!197110 (= (select (arr!7639 a!3293) (index!13338 lt!154808)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!69017 c!50184) b!316980))

(assert (= (and d!69017 (not c!50184)) b!316976))

(assert (= (and b!316976 c!50186) b!316978))

(assert (= (and b!316976 (not c!50186)) b!316982))

(assert (= (and d!69017 c!50185) b!316975))

(assert (= (and d!69017 (not c!50185)) b!316981))

(assert (= (and b!316981 res!171847) b!316979))

(assert (= (and b!316979 (not res!171849)) b!316977))

(assert (= (and b!316977 (not res!171848)) b!316983))

(declare-fun m!325757 () Bool)

(assert (=> b!316983 m!325757))

(assert (=> b!316979 m!325757))

(assert (=> b!316982 m!325629))

(assert (=> b!316982 m!325629))

(declare-fun m!325759 () Bool)

(assert (=> b!316982 m!325759))

(assert (=> d!69017 m!325605))

(assert (=> d!69017 m!325613))

(assert (=> b!316977 m!325757))

(assert (=> b!316827 d!69017))

(declare-fun d!69019 () Bool)

(assert (=> d!69019 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!316826 d!69019))

(declare-fun d!69021 () Bool)

(declare-fun res!171860 () Bool)

(declare-fun e!197125 () Bool)

(assert (=> d!69021 (=> res!171860 e!197125)))

(assert (=> d!69021 (= res!171860 (= (select (arr!7639 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!69021 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!197125)))

(declare-fun b!317006 () Bool)

(declare-fun e!197126 () Bool)

(assert (=> b!317006 (= e!197125 e!197126)))

(declare-fun res!171861 () Bool)

(assert (=> b!317006 (=> (not res!171861) (not e!197126))))

(assert (=> b!317006 (= res!171861 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7991 a!3293)))))

(declare-fun b!317007 () Bool)

(assert (=> b!317007 (= e!197126 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69021 (not res!171860)) b!317006))

(assert (= (and b!317006 res!171861) b!317007))

(declare-fun m!325761 () Bool)

(assert (=> d!69021 m!325761))

(declare-fun m!325763 () Bool)

(assert (=> b!317007 m!325763))

(assert (=> b!316821 d!69021))

(declare-fun b!317120 () Bool)

(declare-fun e!197190 () SeekEntryResult!2790)

(declare-fun lt!154858 () SeekEntryResult!2790)

(assert (=> b!317120 (= e!197190 (MissingZero!2790 (index!13338 lt!154858)))))

(declare-fun b!317121 () Bool)

(declare-fun e!197189 () SeekEntryResult!2790)

(declare-fun e!197188 () SeekEntryResult!2790)

(assert (=> b!317121 (= e!197189 e!197188)))

(declare-fun lt!154857 () (_ BitVec 64))

(assert (=> b!317121 (= lt!154857 (select (arr!7639 a!3293) (index!13338 lt!154858)))))

(declare-fun c!50234 () Bool)

(assert (=> b!317121 (= c!50234 (= lt!154857 k!2441))))

(declare-fun b!317122 () Bool)

(assert (=> b!317122 (= e!197189 Undefined!2790)))

(declare-fun b!317123 () Bool)

(assert (=> b!317123 (= e!197188 (Found!2790 (index!13338 lt!154858)))))

(declare-fun b!317124 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16148 (_ BitVec 32)) SeekEntryResult!2790)

(assert (=> b!317124 (= e!197190 (seekKeyOrZeroReturnVacant!0 (x!31561 lt!154858) (index!13338 lt!154858) (index!13338 lt!154858) k!2441 a!3293 mask!3709))))

(declare-fun d!69023 () Bool)

(declare-fun lt!154856 () SeekEntryResult!2790)

(assert (=> d!69023 (and (or (is-Undefined!2790 lt!154856) (not (is-Found!2790 lt!154856)) (and (bvsge (index!13337 lt!154856) #b00000000000000000000000000000000) (bvslt (index!13337 lt!154856) (size!7991 a!3293)))) (or (is-Undefined!2790 lt!154856) (is-Found!2790 lt!154856) (not (is-MissingZero!2790 lt!154856)) (and (bvsge (index!13336 lt!154856) #b00000000000000000000000000000000) (bvslt (index!13336 lt!154856) (size!7991 a!3293)))) (or (is-Undefined!2790 lt!154856) (is-Found!2790 lt!154856) (is-MissingZero!2790 lt!154856) (not (is-MissingVacant!2790 lt!154856)) (and (bvsge (index!13339 lt!154856) #b00000000000000000000000000000000) (bvslt (index!13339 lt!154856) (size!7991 a!3293)))) (or (is-Undefined!2790 lt!154856) (ite (is-Found!2790 lt!154856) (= (select (arr!7639 a!3293) (index!13337 lt!154856)) k!2441) (ite (is-MissingZero!2790 lt!154856) (= (select (arr!7639 a!3293) (index!13336 lt!154856)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2790 lt!154856) (= (select (arr!7639 a!3293) (index!13339 lt!154856)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69023 (= lt!154856 e!197189)))

(declare-fun c!50233 () Bool)

(assert (=> d!69023 (= c!50233 (and (is-Intermediate!2790 lt!154858) (undefined!3602 lt!154858)))))

(assert (=> d!69023 (= lt!154858 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!69023 (validMask!0 mask!3709)))

(assert (=> d!69023 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!154856)))

(declare-fun b!317119 () Bool)

(declare-fun c!50232 () Bool)

(assert (=> b!317119 (= c!50232 (= lt!154857 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!317119 (= e!197188 e!197190)))

(assert (= (and d!69023 c!50233) b!317122))

(assert (= (and d!69023 (not c!50233)) b!317121))

(assert (= (and b!317121 c!50234) b!317123))

(assert (= (and b!317121 (not c!50234)) b!317119))

(assert (= (and b!317119 c!50232) b!317120))

(assert (= (and b!317119 (not c!50232)) b!317124))

(declare-fun m!325829 () Bool)

(assert (=> b!317121 m!325829))

(declare-fun m!325831 () Bool)

(assert (=> b!317124 m!325831))

(declare-fun m!325833 () Bool)

(assert (=> d!69023 m!325833))

(declare-fun m!325835 () Bool)

(assert (=> d!69023 m!325835))

(declare-fun m!325837 () Bool)

(assert (=> d!69023 m!325837))

(assert (=> d!69023 m!325609))

(assert (=> d!69023 m!325609))

(assert (=> d!69023 m!325611))

(assert (=> d!69023 m!325613))

(assert (=> b!316823 d!69023))

(declare-fun b!317129 () Bool)

(declare-fun e!197195 () Bool)

(declare-fun lt!154859 () SeekEntryResult!2790)

(assert (=> b!317129 (= e!197195 (bvsge (x!31561 lt!154859) #b01111111111111111111111111111110))))

(declare-fun b!317130 () Bool)

(declare-fun e!197196 () SeekEntryResult!2790)

(declare-fun e!197198 () SeekEntryResult!2790)

(assert (=> b!317130 (= e!197196 e!197198)))

(declare-fun c!50237 () Bool)

(declare-fun lt!154860 () (_ BitVec 64))

(assert (=> b!317130 (= c!50237 (or (= lt!154860 k!2441) (= (bvadd lt!154860 lt!154860) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!317131 () Bool)

(assert (=> b!317131 (and (bvsge (index!13338 lt!154859) #b00000000000000000000000000000000) (bvslt (index!13338 lt!154859) (size!7991 a!3293)))))

(declare-fun res!171902 () Bool)

(assert (=> b!317131 (= res!171902 (= (select (arr!7639 a!3293) (index!13338 lt!154859)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!197199 () Bool)

(assert (=> b!317131 (=> res!171902 e!197199)))

(declare-fun d!69051 () Bool)

(assert (=> d!69051 e!197195))

(declare-fun c!50236 () Bool)

(assert (=> d!69051 (= c!50236 (and (is-Intermediate!2790 lt!154859) (undefined!3602 lt!154859)))))

(assert (=> d!69051 (= lt!154859 e!197196)))

(declare-fun c!50235 () Bool)

(assert (=> d!69051 (= c!50235 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!69051 (= lt!154860 (select (arr!7639 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!69051 (validMask!0 mask!3709)))

(assert (=> d!69051 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154859)))

(declare-fun b!317132 () Bool)

(assert (=> b!317132 (= e!197198 (Intermediate!2790 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!317133 () Bool)

(assert (=> b!317133 (and (bvsge (index!13338 lt!154859) #b00000000000000000000000000000000) (bvslt (index!13338 lt!154859) (size!7991 a!3293)))))

(declare-fun res!171903 () Bool)

(assert (=> b!317133 (= res!171903 (= (select (arr!7639 a!3293) (index!13338 lt!154859)) k!2441))))

(assert (=> b!317133 (=> res!171903 e!197199)))

(declare-fun e!197197 () Bool)

(assert (=> b!317133 (= e!197197 e!197199)))

(declare-fun b!317134 () Bool)

(assert (=> b!317134 (= e!197196 (Intermediate!2790 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!317135 () Bool)

(assert (=> b!317135 (= e!197195 e!197197)))

(declare-fun res!171901 () Bool)

(assert (=> b!317135 (= res!171901 (and (is-Intermediate!2790 lt!154859) (not (undefined!3602 lt!154859)) (bvslt (x!31561 lt!154859) #b01111111111111111111111111111110) (bvsge (x!31561 lt!154859) #b00000000000000000000000000000000) (bvsge (x!31561 lt!154859) #b00000000000000000000000000000000)))))

(assert (=> b!317135 (=> (not res!171901) (not e!197197))))

(declare-fun b!317136 () Bool)

(assert (=> b!317136 (= e!197198 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!317137 () Bool)

(assert (=> b!317137 (and (bvsge (index!13338 lt!154859) #b00000000000000000000000000000000) (bvslt (index!13338 lt!154859) (size!7991 a!3293)))))

(assert (=> b!317137 (= e!197199 (= (select (arr!7639 a!3293) (index!13338 lt!154859)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!69051 c!50235) b!317134))

(assert (= (and d!69051 (not c!50235)) b!317130))

(assert (= (and b!317130 c!50237) b!317132))

(assert (= (and b!317130 (not c!50237)) b!317136))

(assert (= (and d!69051 c!50236) b!317129))

(assert (= (and d!69051 (not c!50236)) b!317135))

(assert (= (and b!317135 res!171901) b!317133))

(assert (= (and b!317133 (not res!171903)) b!317131))

(assert (= (and b!317131 (not res!171902)) b!317137))

(declare-fun m!325841 () Bool)

(assert (=> b!317137 m!325841))

(assert (=> b!317133 m!325841))

(assert (=> b!317136 m!325609))

(declare-fun m!325843 () Bool)

(assert (=> b!317136 m!325843))

(assert (=> b!317136 m!325843))

(declare-fun m!325845 () Bool)

(assert (=> b!317136 m!325845))

(assert (=> d!69051 m!325609))

(declare-fun m!325847 () Bool)

(assert (=> d!69051 m!325847))

(assert (=> d!69051 m!325613))

(assert (=> b!317131 m!325841))

(assert (=> b!316824 d!69051))

(declare-fun d!69055 () Bool)

(declare-fun lt!154868 () (_ BitVec 32))

(declare-fun lt!154867 () (_ BitVec 32))

(assert (=> d!69055 (= lt!154868 (bvmul (bvxor lt!154867 (bvlshr lt!154867 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69055 (= lt!154867 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69055 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!171909 (let ((h!5398 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31572 (bvmul (bvxor h!5398 (bvlshr h!5398 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31572 (bvlshr x!31572 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!171909 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!171909 #b00000000000000000000000000000000))))))

(assert (=> d!69055 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!154868 (bvlshr lt!154868 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!316824 d!69055))

(declare-fun d!69057 () Bool)

(declare-fun res!171914 () Bool)

(declare-fun e!197219 () Bool)

(assert (=> d!69057 (=> res!171914 e!197219)))

(assert (=> d!69057 (= res!171914 (bvsge #b00000000000000000000000000000000 (size!7991 a!3293)))))

(assert (=> d!69057 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!197219)))

(declare-fun b!317169 () Bool)

(declare-fun e!197220 () Bool)

(assert (=> b!317169 (= e!197219 e!197220)))

(declare-fun c!50249 () Bool)

(assert (=> b!317169 (= c!50249 (validKeyInArray!0 (select (arr!7639 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!317170 () Bool)

(declare-fun e!197221 () Bool)

(declare-fun call!26021 () Bool)

(assert (=> b!317170 (= e!197221 call!26021)))

(declare-fun b!317171 () Bool)

(assert (=> b!317171 (= e!197220 e!197221)))

(declare-fun lt!154881 () (_ BitVec 64))

(assert (=> b!317171 (= lt!154881 (select (arr!7639 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9785 0))(
  ( (Unit!9786) )
))
(declare-fun lt!154883 () Unit!9785)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16148 (_ BitVec 64) (_ BitVec 32)) Unit!9785)

(assert (=> b!317171 (= lt!154883 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!154881 #b00000000000000000000000000000000))))

(assert (=> b!317171 (arrayContainsKey!0 a!3293 lt!154881 #b00000000000000000000000000000000)))

(declare-fun lt!154882 () Unit!9785)

(assert (=> b!317171 (= lt!154882 lt!154883)))

(declare-fun res!171915 () Bool)

(assert (=> b!317171 (= res!171915 (= (seekEntryOrOpen!0 (select (arr!7639 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2790 #b00000000000000000000000000000000)))))

(assert (=> b!317171 (=> (not res!171915) (not e!197221))))

(declare-fun b!317172 () Bool)

(assert (=> b!317172 (= e!197220 call!26021)))

(declare-fun bm!26018 () Bool)

(assert (=> bm!26018 (= call!26021 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(assert (= (and d!69057 (not res!171914)) b!317169))

(assert (= (and b!317169 c!50249) b!317171))

(assert (= (and b!317169 (not c!50249)) b!317172))

(assert (= (and b!317171 res!171915) b!317170))

(assert (= (or b!317170 b!317172) bm!26018))

(assert (=> b!317169 m!325761))

(assert (=> b!317169 m!325761))

(declare-fun m!325853 () Bool)

(assert (=> b!317169 m!325853))

(assert (=> b!317171 m!325761))

(declare-fun m!325855 () Bool)

(assert (=> b!317171 m!325855))

(declare-fun m!325857 () Bool)

(assert (=> b!317171 m!325857))

(assert (=> b!317171 m!325761))

(declare-fun m!325859 () Bool)

(assert (=> b!317171 m!325859))

(declare-fun m!325861 () Bool)

(assert (=> bm!26018 m!325861))

(assert (=> b!316819 d!69057))

(declare-fun d!69059 () Bool)

(assert (=> d!69059 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31728 d!69059))

(declare-fun d!69061 () Bool)

(assert (=> d!69061 (= (array_inv!5593 a!3293) (bvsge (size!7991 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31728 d!69061))

(push 1)

(assert (not b!316964))

(assert (not b!316973))

(assert (not b!316982))

(assert (not d!69013))

(assert (not d!69015))

(assert (not b!317136))

(assert (not d!69051))

(assert (not b!317171))

(assert (not bm!26018))

(assert (not b!316955))

(assert (not b!317007))

(assert (not b!317124))

(assert (not d!69011))

(assert (not d!69023))

(assert (not b!317169))

(assert (not d!69017))

(assert (not d!68997))

(check-sat)

(pop 1)

(push 1)

(check-sat)

