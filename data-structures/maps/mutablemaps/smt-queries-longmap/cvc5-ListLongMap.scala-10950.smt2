; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128164 () Bool)

(assert start!128164)

(declare-fun b!1504468 () Bool)

(declare-fun res!1025245 () Bool)

(declare-fun e!840986 () Bool)

(assert (=> b!1504468 (=> (not res!1025245) (not e!840986))))

(declare-datatypes ((array!100314 0))(
  ( (array!100315 (arr!48406 (Array (_ BitVec 32) (_ BitVec 64))) (size!48957 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100314)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504468 (= res!1025245 (validKeyInArray!0 (select (arr!48406 a!2850) j!87)))))

(declare-fun b!1504469 () Bool)

(declare-fun res!1025242 () Bool)

(assert (=> b!1504469 (=> (not res!1025242) (not e!840986))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1504469 (= res!1025242 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48957 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48957 a!2850)) (= (select (arr!48406 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48406 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48957 a!2850))))))

(declare-fun b!1504470 () Bool)

(declare-fun res!1025247 () Bool)

(assert (=> b!1504470 (=> (not res!1025247) (not e!840986))))

(declare-datatypes ((List!35078 0))(
  ( (Nil!35075) (Cons!35074 (h!36472 (_ BitVec 64)) (t!49779 List!35078)) )
))
(declare-fun arrayNoDuplicates!0 (array!100314 (_ BitVec 32) List!35078) Bool)

(assert (=> b!1504470 (= res!1025247 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35075))))

(declare-fun b!1504471 () Bool)

(declare-fun e!840984 () Bool)

(assert (=> b!1504471 (= e!840986 e!840984)))

(declare-fun res!1025244 () Bool)

(assert (=> b!1504471 (=> (not res!1025244) (not e!840984))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12623 0))(
  ( (MissingZero!12623 (index!52883 (_ BitVec 32))) (Found!12623 (index!52884 (_ BitVec 32))) (Intermediate!12623 (undefined!13435 Bool) (index!52885 (_ BitVec 32)) (x!134584 (_ BitVec 32))) (Undefined!12623) (MissingVacant!12623 (index!52886 (_ BitVec 32))) )
))
(declare-fun lt!653689 () SeekEntryResult!12623)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100314 (_ BitVec 32)) SeekEntryResult!12623)

(assert (=> b!1504471 (= res!1025244 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48406 a!2850) j!87) a!2850 mask!2661) lt!653689))))

(assert (=> b!1504471 (= lt!653689 (Found!12623 j!87))))

(declare-fun res!1025243 () Bool)

(assert (=> start!128164 (=> (not res!1025243) (not e!840986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128164 (= res!1025243 (validMask!0 mask!2661))))

(assert (=> start!128164 e!840986))

(assert (=> start!128164 true))

(declare-fun array_inv!37351 (array!100314) Bool)

(assert (=> start!128164 (array_inv!37351 a!2850)))

(declare-fun b!1504472 () Bool)

(declare-fun res!1025246 () Bool)

(assert (=> b!1504472 (=> (not res!1025246) (not e!840986))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100314 (_ BitVec 32)) Bool)

(assert (=> b!1504472 (= res!1025246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1504473 () Bool)

(declare-fun e!840983 () Bool)

(assert (=> b!1504473 (= e!840984 e!840983)))

(declare-fun res!1025241 () Bool)

(assert (=> b!1504473 (=> (not res!1025241) (not e!840983))))

(declare-fun lt!653688 () (_ BitVec 32))

(assert (=> b!1504473 (= res!1025241 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653688 #b00000000000000000000000000000000) (bvslt lt!653688 (size!48957 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504473 (= lt!653688 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1504474 () Bool)

(assert (=> b!1504474 (= e!840983 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653688 vacantBefore!10 (select (arr!48406 a!2850) j!87) a!2850 mask!2661) lt!653689)))))

(declare-fun b!1504475 () Bool)

(declare-fun res!1025238 () Bool)

(assert (=> b!1504475 (=> (not res!1025238) (not e!840984))))

(assert (=> b!1504475 (= res!1025238 (not (= (select (arr!48406 a!2850) index!625) (select (arr!48406 a!2850) j!87))))))

(declare-fun b!1504476 () Bool)

(declare-fun res!1025240 () Bool)

(assert (=> b!1504476 (=> (not res!1025240) (not e!840986))))

(assert (=> b!1504476 (= res!1025240 (and (= (size!48957 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48957 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48957 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1504477 () Bool)

(declare-fun res!1025239 () Bool)

(assert (=> b!1504477 (=> (not res!1025239) (not e!840986))))

(assert (=> b!1504477 (= res!1025239 (validKeyInArray!0 (select (arr!48406 a!2850) i!996)))))

(assert (= (and start!128164 res!1025243) b!1504476))

(assert (= (and b!1504476 res!1025240) b!1504477))

(assert (= (and b!1504477 res!1025239) b!1504468))

(assert (= (and b!1504468 res!1025245) b!1504472))

(assert (= (and b!1504472 res!1025246) b!1504470))

(assert (= (and b!1504470 res!1025247) b!1504469))

(assert (= (and b!1504469 res!1025242) b!1504471))

(assert (= (and b!1504471 res!1025244) b!1504475))

(assert (= (and b!1504475 res!1025238) b!1504473))

(assert (= (and b!1504473 res!1025241) b!1504474))

(declare-fun m!1387677 () Bool)

(assert (=> b!1504472 m!1387677))

(declare-fun m!1387679 () Bool)

(assert (=> b!1504474 m!1387679))

(assert (=> b!1504474 m!1387679))

(declare-fun m!1387681 () Bool)

(assert (=> b!1504474 m!1387681))

(declare-fun m!1387683 () Bool)

(assert (=> b!1504469 m!1387683))

(declare-fun m!1387685 () Bool)

(assert (=> b!1504469 m!1387685))

(declare-fun m!1387687 () Bool)

(assert (=> b!1504469 m!1387687))

(declare-fun m!1387689 () Bool)

(assert (=> b!1504475 m!1387689))

(assert (=> b!1504475 m!1387679))

(declare-fun m!1387691 () Bool)

(assert (=> b!1504473 m!1387691))

(declare-fun m!1387693 () Bool)

(assert (=> b!1504470 m!1387693))

(declare-fun m!1387695 () Bool)

(assert (=> b!1504477 m!1387695))

(assert (=> b!1504477 m!1387695))

(declare-fun m!1387697 () Bool)

(assert (=> b!1504477 m!1387697))

(assert (=> b!1504471 m!1387679))

(assert (=> b!1504471 m!1387679))

(declare-fun m!1387699 () Bool)

(assert (=> b!1504471 m!1387699))

(assert (=> b!1504468 m!1387679))

(assert (=> b!1504468 m!1387679))

(declare-fun m!1387701 () Bool)

(assert (=> b!1504468 m!1387701))

(declare-fun m!1387703 () Bool)

(assert (=> start!128164 m!1387703))

(declare-fun m!1387705 () Bool)

(assert (=> start!128164 m!1387705))

(push 1)

(assert (not b!1504473))

(assert (not b!1504468))

(assert (not b!1504472))

(assert (not b!1504477))

(assert (not start!128164))

(assert (not b!1504474))

(assert (not b!1504471))

(assert (not b!1504470))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1504581 () Bool)

(declare-fun e!841042 () Bool)

(declare-fun e!841040 () Bool)

(assert (=> b!1504581 (= e!841042 e!841040)))

(declare-fun c!139166 () Bool)

(assert (=> b!1504581 (= c!139166 (validKeyInArray!0 (select (arr!48406 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1504582 () Bool)

(declare-fun e!841043 () Bool)

(assert (=> b!1504582 (= e!841043 e!841042)))

(declare-fun res!1025323 () Bool)

(assert (=> b!1504582 (=> (not res!1025323) (not e!841042))))

(declare-fun e!841041 () Bool)

(assert (=> b!1504582 (= res!1025323 (not e!841041))))

(declare-fun res!1025324 () Bool)

(assert (=> b!1504582 (=> (not res!1025324) (not e!841041))))

(assert (=> b!1504582 (= res!1025324 (validKeyInArray!0 (select (arr!48406 a!2850) #b00000000000000000000000000000000)))))

(declare-fun bm!68142 () Bool)

(declare-fun call!68145 () Bool)

(assert (=> bm!68142 (= call!68145 (arrayNoDuplicates!0 a!2850 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139166 (Cons!35074 (select (arr!48406 a!2850) #b00000000000000000000000000000000) Nil!35075) Nil!35075)))))

(declare-fun d!157851 () Bool)

(declare-fun res!1025325 () Bool)

(assert (=> d!157851 (=> res!1025325 e!841043)))

(assert (=> d!157851 (= res!1025325 (bvsge #b00000000000000000000000000000000 (size!48957 a!2850)))))

(assert (=> d!157851 (= (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35075) e!841043)))

(declare-fun b!1504583 () Bool)

(assert (=> b!1504583 (= e!841040 call!68145)))

(declare-fun b!1504584 () Bool)

(assert (=> b!1504584 (= e!841040 call!68145)))

(declare-fun b!1504585 () Bool)

(declare-fun contains!9963 (List!35078 (_ BitVec 64)) Bool)

(assert (=> b!1504585 (= e!841041 (contains!9963 Nil!35075 (select (arr!48406 a!2850) #b00000000000000000000000000000000)))))

(assert (= (and d!157851 (not res!1025325)) b!1504582))

(assert (= (and b!1504582 res!1025324) b!1504585))

(assert (= (and b!1504582 res!1025323) b!1504581))

(assert (= (and b!1504581 c!139166) b!1504584))

(assert (= (and b!1504581 (not c!139166)) b!1504583))

(assert (= (or b!1504584 b!1504583) bm!68142))

(declare-fun m!1387789 () Bool)

(assert (=> b!1504581 m!1387789))

(assert (=> b!1504581 m!1387789))

(declare-fun m!1387791 () Bool)

(assert (=> b!1504581 m!1387791))

(assert (=> b!1504582 m!1387789))

(assert (=> b!1504582 m!1387789))

(assert (=> b!1504582 m!1387791))

(assert (=> bm!68142 m!1387789))

(declare-fun m!1387793 () Bool)

(assert (=> bm!68142 m!1387793))

(assert (=> b!1504585 m!1387789))

(assert (=> b!1504585 m!1387789))

(declare-fun m!1387795 () Bool)

(assert (=> b!1504585 m!1387795))

(assert (=> b!1504470 d!157851))

(declare-fun d!157861 () Bool)

(assert (=> d!157861 (= (validKeyInArray!0 (select (arr!48406 a!2850) i!996)) (and (not (= (select (arr!48406 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48406 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1504477 d!157861))

(declare-fun b!1504634 () Bool)

(declare-fun e!841071 () SeekEntryResult!12623)

(declare-fun e!841072 () SeekEntryResult!12623)

(assert (=> b!1504634 (= e!841071 e!841072)))

(declare-fun lt!653735 () (_ BitVec 64))

(declare-fun c!139190 () Bool)

(assert (=> b!1504634 (= c!139190 (= lt!653735 (select (arr!48406 a!2850) j!87)))))

(declare-fun lt!653736 () SeekEntryResult!12623)

(declare-fun d!157863 () Bool)

(assert (=> d!157863 (and (or (is-Undefined!12623 lt!653736) (not (is-Found!12623 lt!653736)) (and (bvsge (index!52884 lt!653736) #b00000000000000000000000000000000) (bvslt (index!52884 lt!653736) (size!48957 a!2850)))) (or (is-Undefined!12623 lt!653736) (is-Found!12623 lt!653736) (not (is-MissingVacant!12623 lt!653736)) (not (= (index!52886 lt!653736) vacantBefore!10)) (and (bvsge (index!52886 lt!653736) #b00000000000000000000000000000000) (bvslt (index!52886 lt!653736) (size!48957 a!2850)))) (or (is-Undefined!12623 lt!653736) (ite (is-Found!12623 lt!653736) (= (select (arr!48406 a!2850) (index!52884 lt!653736)) (select (arr!48406 a!2850) j!87)) (and (is-MissingVacant!12623 lt!653736) (= (index!52886 lt!653736) vacantBefore!10) (= (select (arr!48406 a!2850) (index!52886 lt!653736)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157863 (= lt!653736 e!841071)))

(declare-fun c!139189 () Bool)

(assert (=> d!157863 (= c!139189 (bvsge x!647 #b01111111111111111111111111111110))))

(assert (=> d!157863 (= lt!653735 (select (arr!48406 a!2850) index!625))))

(assert (=> d!157863 (validMask!0 mask!2661)))

(assert (=> d!157863 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48406 a!2850) j!87) a!2850 mask!2661) lt!653736)))

(declare-fun b!1504635 () Bool)

(assert (=> b!1504635 (= e!841072 (Found!12623 index!625))))

(declare-fun b!1504636 () Bool)

(declare-fun e!841073 () SeekEntryResult!12623)

(assert (=> b!1504636 (= e!841073 (MissingVacant!12623 vacantBefore!10))))

(declare-fun b!1504637 () Bool)

(declare-fun c!139188 () Bool)

(assert (=> b!1504637 (= c!139188 (= lt!653735 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1504637 (= e!841072 e!841073)))

(declare-fun b!1504638 () Bool)

(assert (=> b!1504638 (= e!841071 Undefined!12623)))

(declare-fun b!1504639 () Bool)

(assert (=> b!1504639 (= e!841073 (seekKeyOrZeroReturnVacant!0 (bvadd x!647 #b00000000000000000000000000000001) (nextIndex!0 index!625 x!647 mask!2661) vacantBefore!10 (select (arr!48406 a!2850) j!87) a!2850 mask!2661))))

(assert (= (and d!157863 c!139189) b!1504638))

(assert (= (and d!157863 (not c!139189)) b!1504634))

(assert (= (and b!1504634 c!139190) b!1504635))

(assert (= (and b!1504634 (not c!139190)) b!1504637))

(assert (= (and b!1504637 c!139188) b!1504636))

(assert (= (and b!1504637 (not c!139188)) b!1504639))

(declare-fun m!1387821 () Bool)

(assert (=> d!157863 m!1387821))

(declare-fun m!1387823 () Bool)

(assert (=> d!157863 m!1387823))

(assert (=> d!157863 m!1387689))

(assert (=> d!157863 m!1387703))

(assert (=> b!1504639 m!1387691))

(assert (=> b!1504639 m!1387691))

(assert (=> b!1504639 m!1387679))

(declare-fun m!1387825 () Bool)

(assert (=> b!1504639 m!1387825))

(assert (=> b!1504471 d!157863))

(declare-fun d!157875 () Bool)

(declare-fun lt!653739 () (_ BitVec 32))

(assert (=> d!157875 (and (bvsge lt!653739 #b00000000000000000000000000000000) (bvslt lt!653739 (bvadd mask!2661 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!157875 (= lt!653739 (choose!52 index!625 x!647 mask!2661))))

(assert (=> d!157875 (validMask!0 mask!2661)))

(assert (=> d!157875 (= (nextIndex!0 index!625 x!647 mask!2661) lt!653739)))

(declare-fun bs!43198 () Bool)

(assert (= bs!43198 d!157875))

(declare-fun m!1387827 () Bool)

