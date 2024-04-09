; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128168 () Bool)

(assert start!128168)

(declare-fun b!1504528 () Bool)

(declare-fun res!1025304 () Bool)

(declare-fun e!841009 () Bool)

(assert (=> b!1504528 (=> (not res!1025304) (not e!841009))))

(declare-datatypes ((array!100318 0))(
  ( (array!100319 (arr!48408 (Array (_ BitVec 32) (_ BitVec 64))) (size!48959 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100318)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1504528 (= res!1025304 (validKeyInArray!0 (select (arr!48408 a!2850) j!87)))))

(declare-fun lt!653701 () (_ BitVec 32))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun e!841010 () Bool)

(declare-datatypes ((SeekEntryResult!12625 0))(
  ( (MissingZero!12625 (index!52891 (_ BitVec 32))) (Found!12625 (index!52892 (_ BitVec 32))) (Intermediate!12625 (undefined!13437 Bool) (index!52893 (_ BitVec 32)) (x!134586 (_ BitVec 32))) (Undefined!12625) (MissingVacant!12625 (index!52894 (_ BitVec 32))) )
))
(declare-fun lt!653700 () SeekEntryResult!12625)

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun b!1504529 () Bool)

(declare-fun x!647 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100318 (_ BitVec 32)) SeekEntryResult!12625)

(assert (=> b!1504529 (= e!841010 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653701 vacantBefore!10 (select (arr!48408 a!2850) j!87) a!2850 mask!2661) lt!653700)))))

(declare-fun b!1504530 () Bool)

(declare-fun res!1025305 () Bool)

(assert (=> b!1504530 (=> (not res!1025305) (not e!841009))))

(declare-datatypes ((List!35080 0))(
  ( (Nil!35077) (Cons!35076 (h!36474 (_ BitVec 64)) (t!49781 List!35080)) )
))
(declare-fun arrayNoDuplicates!0 (array!100318 (_ BitVec 32) List!35080) Bool)

(assert (=> b!1504530 (= res!1025305 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35077))))

(declare-fun res!1025303 () Bool)

(assert (=> start!128168 (=> (not res!1025303) (not e!841009))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128168 (= res!1025303 (validMask!0 mask!2661))))

(assert (=> start!128168 e!841009))

(assert (=> start!128168 true))

(declare-fun array_inv!37353 (array!100318) Bool)

(assert (=> start!128168 (array_inv!37353 a!2850)))

(declare-fun b!1504531 () Bool)

(declare-fun res!1025298 () Bool)

(assert (=> b!1504531 (=> (not res!1025298) (not e!841009))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1504531 (= res!1025298 (and (= (size!48959 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48959 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48959 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1504532 () Bool)

(declare-fun res!1025306 () Bool)

(assert (=> b!1504532 (=> (not res!1025306) (not e!841009))))

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1504532 (= res!1025306 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48959 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48959 a!2850)) (= (select (arr!48408 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48408 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48959 a!2850))))))

(declare-fun b!1504533 () Bool)

(declare-fun res!1025299 () Bool)

(declare-fun e!841007 () Bool)

(assert (=> b!1504533 (=> (not res!1025299) (not e!841007))))

(assert (=> b!1504533 (= res!1025299 (not (= (select (arr!48408 a!2850) index!625) (select (arr!48408 a!2850) j!87))))))

(declare-fun b!1504534 () Bool)

(assert (=> b!1504534 (= e!841007 e!841010)))

(declare-fun res!1025307 () Bool)

(assert (=> b!1504534 (=> (not res!1025307) (not e!841010))))

(assert (=> b!1504534 (= res!1025307 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!653701 #b00000000000000000000000000000000) (bvslt lt!653701 (size!48959 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1504534 (= lt!653701 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1504535 () Bool)

(declare-fun res!1025301 () Bool)

(assert (=> b!1504535 (=> (not res!1025301) (not e!841009))))

(assert (=> b!1504535 (= res!1025301 (validKeyInArray!0 (select (arr!48408 a!2850) i!996)))))

(declare-fun b!1504536 () Bool)

(assert (=> b!1504536 (= e!841009 e!841007)))

(declare-fun res!1025302 () Bool)

(assert (=> b!1504536 (=> (not res!1025302) (not e!841007))))

(assert (=> b!1504536 (= res!1025302 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48408 a!2850) j!87) a!2850 mask!2661) lt!653700))))

(assert (=> b!1504536 (= lt!653700 (Found!12625 j!87))))

(declare-fun b!1504537 () Bool)

(declare-fun res!1025300 () Bool)

(assert (=> b!1504537 (=> (not res!1025300) (not e!841009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100318 (_ BitVec 32)) Bool)

(assert (=> b!1504537 (= res!1025300 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!128168 res!1025303) b!1504531))

(assert (= (and b!1504531 res!1025298) b!1504535))

(assert (= (and b!1504535 res!1025301) b!1504528))

(assert (= (and b!1504528 res!1025304) b!1504537))

(assert (= (and b!1504537 res!1025300) b!1504530))

(assert (= (and b!1504530 res!1025305) b!1504532))

(assert (= (and b!1504532 res!1025306) b!1504536))

(assert (= (and b!1504536 res!1025302) b!1504533))

(assert (= (and b!1504533 res!1025299) b!1504534))

(assert (= (and b!1504534 res!1025307) b!1504529))

(declare-fun m!1387737 () Bool)

(assert (=> start!128168 m!1387737))

(declare-fun m!1387739 () Bool)

(assert (=> start!128168 m!1387739))

(declare-fun m!1387741 () Bool)

(assert (=> b!1504532 m!1387741))

(declare-fun m!1387743 () Bool)

(assert (=> b!1504532 m!1387743))

(declare-fun m!1387745 () Bool)

(assert (=> b!1504532 m!1387745))

(declare-fun m!1387747 () Bool)

(assert (=> b!1504529 m!1387747))

(assert (=> b!1504529 m!1387747))

(declare-fun m!1387749 () Bool)

(assert (=> b!1504529 m!1387749))

(declare-fun m!1387751 () Bool)

(assert (=> b!1504537 m!1387751))

(declare-fun m!1387753 () Bool)

(assert (=> b!1504534 m!1387753))

(declare-fun m!1387755 () Bool)

(assert (=> b!1504535 m!1387755))

(assert (=> b!1504535 m!1387755))

(declare-fun m!1387757 () Bool)

(assert (=> b!1504535 m!1387757))

(assert (=> b!1504536 m!1387747))

(assert (=> b!1504536 m!1387747))

(declare-fun m!1387759 () Bool)

(assert (=> b!1504536 m!1387759))

(assert (=> b!1504528 m!1387747))

(assert (=> b!1504528 m!1387747))

(declare-fun m!1387761 () Bool)

(assert (=> b!1504528 m!1387761))

(declare-fun m!1387763 () Bool)

(assert (=> b!1504533 m!1387763))

(assert (=> b!1504533 m!1387747))

(declare-fun m!1387765 () Bool)

(assert (=> b!1504530 m!1387765))

(push 1)

(assert (not start!128168))

(assert (not b!1504528))

(assert (not b!1504529))

(assert (not b!1504535))

(assert (not b!1504534))

(assert (not b!1504536))

(assert (not b!1504537))

(assert (not b!1504530))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!157853 () Bool)

(declare-fun lt!653710 () (_ BitVec 32))

(assert (=> d!157853 (and (bvsge lt!653710 #b00000000000000000000000000000000) (bvslt lt!653710 (bvadd mask!2661 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!157853 (= lt!653710 (choose!52 index!625 x!647 mask!2661))))

(assert (=> d!157853 (validMask!0 mask!2661)))

(assert (=> d!157853 (= (nextIndex!0 index!625 x!647 mask!2661) lt!653710)))

(declare-fun bs!43196 () Bool)

(assert (= bs!43196 d!157853))

(declare-fun m!1387785 () Bool)

(assert (=> bs!43196 m!1387785))

(assert (=> bs!43196 m!1387737))

(assert (=> b!1504534 d!157853))

(declare-fun b!1504616 () Bool)

(declare-fun e!841063 () SeekEntryResult!12625)

(assert (=> b!1504616 (= e!841063 Undefined!12625)))

(declare-fun b!1504617 () Bool)

(declare-fun e!841064 () SeekEntryResult!12625)

(assert (=> b!1504617 (= e!841064 (Found!12625 lt!653701))))

(declare-fun b!1504618 () Bool)

(assert (=> b!1504618 (= e!841063 e!841064)))

(declare-fun lt!653730 () (_ BitVec 64))

(declare-fun c!139180 () Bool)

(assert (=> b!1504618 (= c!139180 (= lt!653730 (select (arr!48408 a!2850) j!87)))))

(declare-fun lt!653729 () SeekEntryResult!12625)

(declare-fun d!157857 () Bool)

(assert (=> d!157857 (and (or (is-Undefined!12625 lt!653729) (not (is-Found!12625 lt!653729)) (and (bvsge (index!52892 lt!653729) #b00000000000000000000000000000000) (bvslt (index!52892 lt!653729) (size!48959 a!2850)))) (or (is-Undefined!12625 lt!653729) (is-Found!12625 lt!653729) (not (is-MissingVacant!12625 lt!653729)) (not (= (index!52894 lt!653729) vacantBefore!10)) (and (bvsge (index!52894 lt!653729) #b00000000000000000000000000000000) (bvslt (index!52894 lt!653729) (size!48959 a!2850)))) (or (is-Undefined!12625 lt!653729) (ite (is-Found!12625 lt!653729) (= (select (arr!48408 a!2850) (index!52892 lt!653729)) (select (arr!48408 a!2850) j!87)) (and (is-MissingVacant!12625 lt!653729) (= (index!52894 lt!653729) vacantBefore!10) (= (select (arr!48408 a!2850) (index!52894 lt!653729)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157857 (= lt!653729 e!841063)))

(declare-fun c!139179 () Bool)

(assert (=> d!157857 (= c!139179 (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110))))

(assert (=> d!157857 (= lt!653730 (select (arr!48408 a!2850) lt!653701))))

(assert (=> d!157857 (validMask!0 mask!2661)))

(assert (=> d!157857 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!653701 vacantBefore!10 (select (arr!48408 a!2850) j!87) a!2850 mask!2661) lt!653729)))

(declare-fun b!1504619 () Bool)

(declare-fun e!841062 () SeekEntryResult!12625)

(assert (=> b!1504619 (= e!841062 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647 #b00000000000000000000000000000001) (nextIndex!0 lt!653701 (bvadd #b00000000000000000000000000000001 x!647) mask!2661) vacantBefore!10 (select (arr!48408 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1504620 () Bool)

(assert (=> b!1504620 (= e!841062 (MissingVacant!12625 vacantBefore!10))))

(declare-fun b!1504621 () Bool)

(declare-fun c!139181 () Bool)

(assert (=> b!1504621 (= c!139181 (= lt!653730 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1504621 (= e!841064 e!841062)))

(assert (= (and d!157857 c!139179) b!1504616))

(assert (= (and d!157857 (not c!139179)) b!1504618))

(assert (= (and b!1504618 c!139180) b!1504617))

(assert (= (and b!1504618 (not c!139180)) b!1504621))

(assert (= (and b!1504621 c!139181) b!1504620))

(assert (= (and b!1504621 (not c!139181)) b!1504619))

(declare-fun m!1387811 () Bool)

(assert (=> d!157857 m!1387811))

(declare-fun m!1387813 () Bool)

(assert (=> d!157857 m!1387813))

(declare-fun m!1387815 () Bool)

(assert (=> d!157857 m!1387815))

(assert (=> d!157857 m!1387737))

(declare-fun m!1387817 () Bool)

(assert (=> b!1504619 m!1387817))

(assert (=> b!1504619 m!1387817))

(assert (=> b!1504619 m!1387747))

(declare-fun m!1387819 () Bool)

(assert (=> b!1504619 m!1387819))

(assert (=> b!1504529 d!157857))

(declare-fun d!157871 () Bool)

(assert (=> d!157871 (= (validKeyInArray!0 (select (arr!48408 a!2850) j!87)) (and (not (= (select (arr!48408 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48408 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1504528 d!157871))

(declare-fun d!157873 () Bool)

(assert (=> d!157873 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

