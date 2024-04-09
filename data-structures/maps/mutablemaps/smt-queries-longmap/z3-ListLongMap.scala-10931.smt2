; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127932 () Bool)

(assert start!127932)

(declare-fun b!1502531 () Bool)

(declare-fun res!1023597 () Bool)

(declare-fun e!840362 () Bool)

(assert (=> b!1502531 (=> (not res!1023597) (not e!840362))))

(declare-datatypes ((array!100193 0))(
  ( (array!100194 (arr!48350 (Array (_ BitVec 32) (_ BitVec 64))) (size!48901 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100193)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1502531 (= res!1023597 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48901 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48901 a!2850)) (= (select (arr!48350 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48350 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48901 a!2850))))))

(declare-fun b!1502533 () Bool)

(declare-fun res!1023590 () Bool)

(assert (=> b!1502533 (=> (not res!1023590) (not e!840362))))

(declare-datatypes ((List!35022 0))(
  ( (Nil!35019) (Cons!35018 (h!36416 (_ BitVec 64)) (t!49723 List!35022)) )
))
(declare-fun arrayNoDuplicates!0 (array!100193 (_ BitVec 32) List!35022) Bool)

(assert (=> b!1502533 (= res!1023590 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35019))))

(declare-fun b!1502534 () Bool)

(declare-fun res!1023592 () Bool)

(assert (=> b!1502534 (=> (not res!1023592) (not e!840362))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1502534 (= res!1023592 (validKeyInArray!0 (select (arr!48350 a!2850) j!87)))))

(declare-fun b!1502535 () Bool)

(declare-fun res!1023589 () Bool)

(assert (=> b!1502535 (=> (not res!1023589) (not e!840362))))

(declare-fun mask!2661 () (_ BitVec 32))

(assert (=> b!1502535 (= res!1023589 (and (= (size!48901 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48901 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48901 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1502536 () Bool)

(declare-fun res!1023595 () Bool)

(declare-fun e!840360 () Bool)

(assert (=> b!1502536 (=> (not res!1023595) (not e!840360))))

(assert (=> b!1502536 (= res!1023595 (and (= (select (arr!48350 a!2850) index!625) (select (arr!48350 a!2850) j!87)) (= j!87 index!625)))))

(declare-fun b!1502537 () Bool)

(declare-fun res!1023596 () Bool)

(assert (=> b!1502537 (=> (not res!1023596) (not e!840362))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100193 (_ BitVec 32)) Bool)

(assert (=> b!1502537 (= res!1023596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1023594 () Bool)

(assert (=> start!127932 (=> (not res!1023594) (not e!840362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127932 (= res!1023594 (validMask!0 mask!2661))))

(assert (=> start!127932 e!840362))

(assert (=> start!127932 true))

(declare-fun array_inv!37295 (array!100193) Bool)

(assert (=> start!127932 (array_inv!37295 a!2850)))

(declare-fun b!1502532 () Bool)

(assert (=> b!1502532 (= e!840362 e!840360)))

(declare-fun res!1023593 () Bool)

(assert (=> b!1502532 (=> (not res!1023593) (not e!840360))))

(declare-datatypes ((SeekEntryResult!12567 0))(
  ( (MissingZero!12567 (index!52659 (_ BitVec 32))) (Found!12567 (index!52660 (_ BitVec 32))) (Intermediate!12567 (undefined!13379 Bool) (index!52661 (_ BitVec 32)) (x!134361 (_ BitVec 32))) (Undefined!12567) (MissingVacant!12567 (index!52662 (_ BitVec 32))) )
))
(declare-fun lt!653359 () SeekEntryResult!12567)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100193 (_ BitVec 32)) SeekEntryResult!12567)

(assert (=> b!1502532 (= res!1023593 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48350 a!2850) j!87) a!2850 mask!2661) lt!653359))))

(assert (=> b!1502532 (= lt!653359 (Found!12567 j!87))))

(declare-fun b!1502538 () Bool)

(declare-fun res!1023591 () Bool)

(assert (=> b!1502538 (=> (not res!1023591) (not e!840362))))

(assert (=> b!1502538 (= res!1023591 (validKeyInArray!0 (select (arr!48350 a!2850) i!996)))))

(declare-fun b!1502539 () Bool)

(assert (=> b!1502539 (= e!840360 (not (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantAfter!10 (select (store (arr!48350 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100194 (store (arr!48350 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48901 a!2850)) mask!2661) lt!653359)))))

(assert (= (and start!127932 res!1023594) b!1502535))

(assert (= (and b!1502535 res!1023589) b!1502538))

(assert (= (and b!1502538 res!1023591) b!1502534))

(assert (= (and b!1502534 res!1023592) b!1502537))

(assert (= (and b!1502537 res!1023596) b!1502533))

(assert (= (and b!1502533 res!1023590) b!1502531))

(assert (= (and b!1502531 res!1023597) b!1502532))

(assert (= (and b!1502532 res!1023593) b!1502536))

(assert (= (and b!1502536 res!1023595) b!1502539))

(declare-fun m!1385865 () Bool)

(assert (=> b!1502539 m!1385865))

(declare-fun m!1385867 () Bool)

(assert (=> b!1502539 m!1385867))

(assert (=> b!1502539 m!1385867))

(declare-fun m!1385869 () Bool)

(assert (=> b!1502539 m!1385869))

(declare-fun m!1385871 () Bool)

(assert (=> b!1502533 m!1385871))

(declare-fun m!1385873 () Bool)

(assert (=> b!1502532 m!1385873))

(assert (=> b!1502532 m!1385873))

(declare-fun m!1385875 () Bool)

(assert (=> b!1502532 m!1385875))

(declare-fun m!1385877 () Bool)

(assert (=> b!1502538 m!1385877))

(assert (=> b!1502538 m!1385877))

(declare-fun m!1385879 () Bool)

(assert (=> b!1502538 m!1385879))

(declare-fun m!1385881 () Bool)

(assert (=> b!1502537 m!1385881))

(declare-fun m!1385883 () Bool)

(assert (=> b!1502536 m!1385883))

(assert (=> b!1502536 m!1385873))

(declare-fun m!1385885 () Bool)

(assert (=> start!127932 m!1385885))

(declare-fun m!1385887 () Bool)

(assert (=> start!127932 m!1385887))

(declare-fun m!1385889 () Bool)

(assert (=> b!1502531 m!1385889))

(assert (=> b!1502531 m!1385865))

(declare-fun m!1385891 () Bool)

(assert (=> b!1502531 m!1385891))

(assert (=> b!1502534 m!1385873))

(assert (=> b!1502534 m!1385873))

(declare-fun m!1385893 () Bool)

(assert (=> b!1502534 m!1385893))

(check-sat (not b!1502539) (not b!1502538) (not start!127932) (not b!1502532) (not b!1502537) (not b!1502534) (not b!1502533))
(check-sat)
(get-model)

(declare-fun d!157663 () Bool)

(assert (=> d!157663 (= (validKeyInArray!0 (select (arr!48350 a!2850) j!87)) (and (not (= (select (arr!48350 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48350 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1502534 d!157663))

(declare-fun bm!68085 () Bool)

(declare-fun call!68088 () Bool)

(declare-fun c!139010 () Bool)

(assert (=> bm!68085 (= call!68088 (arrayNoDuplicates!0 a!2850 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139010 (Cons!35018 (select (arr!48350 a!2850) #b00000000000000000000000000000000) Nil!35019) Nil!35019)))))

(declare-fun b!1502577 () Bool)

(declare-fun e!840380 () Bool)

(declare-fun e!840382 () Bool)

(assert (=> b!1502577 (= e!840380 e!840382)))

(declare-fun res!1023633 () Bool)

(assert (=> b!1502577 (=> (not res!1023633) (not e!840382))))

(declare-fun e!840381 () Bool)

(assert (=> b!1502577 (= res!1023633 (not e!840381))))

(declare-fun res!1023631 () Bool)

(assert (=> b!1502577 (=> (not res!1023631) (not e!840381))))

(assert (=> b!1502577 (= res!1023631 (validKeyInArray!0 (select (arr!48350 a!2850) #b00000000000000000000000000000000)))))

(declare-fun d!157665 () Bool)

(declare-fun res!1023632 () Bool)

(assert (=> d!157665 (=> res!1023632 e!840380)))

(assert (=> d!157665 (= res!1023632 (bvsge #b00000000000000000000000000000000 (size!48901 a!2850)))))

(assert (=> d!157665 (= (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35019) e!840380)))

(declare-fun b!1502578 () Bool)

(declare-fun e!840383 () Bool)

(assert (=> b!1502578 (= e!840383 call!68088)))

(declare-fun b!1502579 () Bool)

(assert (=> b!1502579 (= e!840383 call!68088)))

(declare-fun b!1502580 () Bool)

(assert (=> b!1502580 (= e!840382 e!840383)))

(assert (=> b!1502580 (= c!139010 (validKeyInArray!0 (select (arr!48350 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1502581 () Bool)

(declare-fun contains!9955 (List!35022 (_ BitVec 64)) Bool)

(assert (=> b!1502581 (= e!840381 (contains!9955 Nil!35019 (select (arr!48350 a!2850) #b00000000000000000000000000000000)))))

(assert (= (and d!157665 (not res!1023632)) b!1502577))

(assert (= (and b!1502577 res!1023631) b!1502581))

(assert (= (and b!1502577 res!1023633) b!1502580))

(assert (= (and b!1502580 c!139010) b!1502579))

(assert (= (and b!1502580 (not c!139010)) b!1502578))

(assert (= (or b!1502579 b!1502578) bm!68085))

(declare-fun m!1385925 () Bool)

(assert (=> bm!68085 m!1385925))

(declare-fun m!1385927 () Bool)

(assert (=> bm!68085 m!1385927))

(assert (=> b!1502577 m!1385925))

(assert (=> b!1502577 m!1385925))

(declare-fun m!1385929 () Bool)

(assert (=> b!1502577 m!1385929))

(assert (=> b!1502580 m!1385925))

(assert (=> b!1502580 m!1385925))

(assert (=> b!1502580 m!1385929))

(assert (=> b!1502581 m!1385925))

(assert (=> b!1502581 m!1385925))

(declare-fun m!1385931 () Bool)

(assert (=> b!1502581 m!1385931))

(assert (=> b!1502533 d!157665))

(declare-fun d!157667 () Bool)

(assert (=> d!157667 (= (validKeyInArray!0 (select (arr!48350 a!2850) i!996)) (and (not (= (select (arr!48350 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48350 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1502538 d!157667))

(declare-fun b!1502594 () Bool)

(declare-fun e!840392 () SeekEntryResult!12567)

(declare-fun e!840391 () SeekEntryResult!12567)

(assert (=> b!1502594 (= e!840392 e!840391)))

(declare-fun lt!653367 () (_ BitVec 64))

(declare-fun c!139017 () Bool)

(assert (=> b!1502594 (= c!139017 (= lt!653367 (select (store (arr!48350 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87)))))

(declare-fun b!1502595 () Bool)

(declare-fun e!840390 () SeekEntryResult!12567)

(assert (=> b!1502595 (= e!840390 (MissingVacant!12567 vacantAfter!10))))

(declare-fun b!1502596 () Bool)

(declare-fun c!139019 () Bool)

(assert (=> b!1502596 (= c!139019 (= lt!653367 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1502596 (= e!840391 e!840390)))

(declare-fun b!1502597 () Bool)

(assert (=> b!1502597 (= e!840391 (Found!12567 index!625))))

(declare-fun d!157669 () Bool)

(declare-fun lt!653368 () SeekEntryResult!12567)

(get-info :version)

(assert (=> d!157669 (and (or ((_ is Undefined!12567) lt!653368) (not ((_ is Found!12567) lt!653368)) (and (bvsge (index!52660 lt!653368) #b00000000000000000000000000000000) (bvslt (index!52660 lt!653368) (size!48901 (array!100194 (store (arr!48350 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48901 a!2850)))))) (or ((_ is Undefined!12567) lt!653368) ((_ is Found!12567) lt!653368) (not ((_ is MissingVacant!12567) lt!653368)) (not (= (index!52662 lt!653368) vacantAfter!10)) (and (bvsge (index!52662 lt!653368) #b00000000000000000000000000000000) (bvslt (index!52662 lt!653368) (size!48901 (array!100194 (store (arr!48350 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48901 a!2850)))))) (or ((_ is Undefined!12567) lt!653368) (ite ((_ is Found!12567) lt!653368) (= (select (arr!48350 (array!100194 (store (arr!48350 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48901 a!2850))) (index!52660 lt!653368)) (select (store (arr!48350 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87)) (and ((_ is MissingVacant!12567) lt!653368) (= (index!52662 lt!653368) vacantAfter!10) (= (select (arr!48350 (array!100194 (store (arr!48350 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48901 a!2850))) (index!52662 lt!653368)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157669 (= lt!653368 e!840392)))

(declare-fun c!139018 () Bool)

(assert (=> d!157669 (= c!139018 (bvsge x!647 #b01111111111111111111111111111110))))

(assert (=> d!157669 (= lt!653367 (select (arr!48350 (array!100194 (store (arr!48350 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48901 a!2850))) index!625))))

(assert (=> d!157669 (validMask!0 mask!2661)))

(assert (=> d!157669 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantAfter!10 (select (store (arr!48350 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100194 (store (arr!48350 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48901 a!2850)) mask!2661) lt!653368)))

(declare-fun b!1502598 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1502598 (= e!840390 (seekKeyOrZeroReturnVacant!0 (bvadd x!647 #b00000000000000000000000000000001) (nextIndex!0 index!625 x!647 mask!2661) vacantAfter!10 (select (store (arr!48350 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87) (array!100194 (store (arr!48350 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48901 a!2850)) mask!2661))))

(declare-fun b!1502599 () Bool)

(assert (=> b!1502599 (= e!840392 Undefined!12567)))

(assert (= (and d!157669 c!139018) b!1502599))

(assert (= (and d!157669 (not c!139018)) b!1502594))

(assert (= (and b!1502594 c!139017) b!1502597))

(assert (= (and b!1502594 (not c!139017)) b!1502596))

(assert (= (and b!1502596 c!139019) b!1502595))

(assert (= (and b!1502596 (not c!139019)) b!1502598))

(declare-fun m!1385933 () Bool)

(assert (=> d!157669 m!1385933))

(declare-fun m!1385935 () Bool)

(assert (=> d!157669 m!1385935))

(declare-fun m!1385937 () Bool)

(assert (=> d!157669 m!1385937))

(assert (=> d!157669 m!1385885))

(declare-fun m!1385939 () Bool)

(assert (=> b!1502598 m!1385939))

(assert (=> b!1502598 m!1385939))

(assert (=> b!1502598 m!1385867))

(declare-fun m!1385941 () Bool)

(assert (=> b!1502598 m!1385941))

(assert (=> b!1502539 d!157669))

(declare-fun d!157671 () Bool)

(assert (=> d!157671 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

(assert (=> start!127932 d!157671))

(declare-fun d!157677 () Bool)

(assert (=> d!157677 (= (array_inv!37295 a!2850) (bvsge (size!48901 a!2850) #b00000000000000000000000000000000))))

(assert (=> start!127932 d!157677))

(declare-fun b!1502620 () Bool)

(declare-fun e!840408 () Bool)

(declare-fun e!840410 () Bool)

(assert (=> b!1502620 (= e!840408 e!840410)))

(declare-fun c!139025 () Bool)

(assert (=> b!1502620 (= c!139025 (validKeyInArray!0 (select (arr!48350 a!2850) #b00000000000000000000000000000000)))))

(declare-fun d!157679 () Bool)

(declare-fun res!1023644 () Bool)

(assert (=> d!157679 (=> res!1023644 e!840408)))

(assert (=> d!157679 (= res!1023644 (bvsge #b00000000000000000000000000000000 (size!48901 a!2850)))))

(assert (=> d!157679 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661) e!840408)))

(declare-fun b!1502621 () Bool)

(declare-fun e!840409 () Bool)

(declare-fun call!68094 () Bool)

(assert (=> b!1502621 (= e!840409 call!68094)))

(declare-fun b!1502622 () Bool)

(assert (=> b!1502622 (= e!840410 e!840409)))

(declare-fun lt!653384 () (_ BitVec 64))

(assert (=> b!1502622 (= lt!653384 (select (arr!48350 a!2850) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50202 0))(
  ( (Unit!50203) )
))
(declare-fun lt!653385 () Unit!50202)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100193 (_ BitVec 64) (_ BitVec 32)) Unit!50202)

(assert (=> b!1502622 (= lt!653385 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2850 lt!653384 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100193 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1502622 (arrayContainsKey!0 a!2850 lt!653384 #b00000000000000000000000000000000)))

(declare-fun lt!653386 () Unit!50202)

(assert (=> b!1502622 (= lt!653386 lt!653385)))

(declare-fun res!1023645 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100193 (_ BitVec 32)) SeekEntryResult!12567)

(assert (=> b!1502622 (= res!1023645 (= (seekEntryOrOpen!0 (select (arr!48350 a!2850) #b00000000000000000000000000000000) a!2850 mask!2661) (Found!12567 #b00000000000000000000000000000000)))))

(assert (=> b!1502622 (=> (not res!1023645) (not e!840409))))

(declare-fun b!1502623 () Bool)

(assert (=> b!1502623 (= e!840410 call!68094)))

(declare-fun bm!68091 () Bool)

(assert (=> bm!68091 (= call!68094 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(assert (= (and d!157679 (not res!1023644)) b!1502620))

(assert (= (and b!1502620 c!139025) b!1502622))

(assert (= (and b!1502620 (not c!139025)) b!1502623))

(assert (= (and b!1502622 res!1023645) b!1502621))

(assert (= (or b!1502621 b!1502623) bm!68091))

(assert (=> b!1502620 m!1385925))

(assert (=> b!1502620 m!1385925))

(assert (=> b!1502620 m!1385929))

(assert (=> b!1502622 m!1385925))

(declare-fun m!1385955 () Bool)

(assert (=> b!1502622 m!1385955))

(declare-fun m!1385957 () Bool)

(assert (=> b!1502622 m!1385957))

(assert (=> b!1502622 m!1385925))

(declare-fun m!1385959 () Bool)

(assert (=> b!1502622 m!1385959))

(declare-fun m!1385961 () Bool)

(assert (=> bm!68091 m!1385961))

(assert (=> b!1502537 d!157679))

(declare-fun b!1502624 () Bool)

(declare-fun e!840413 () SeekEntryResult!12567)

(declare-fun e!840412 () SeekEntryResult!12567)

(assert (=> b!1502624 (= e!840413 e!840412)))

(declare-fun lt!653387 () (_ BitVec 64))

(declare-fun c!139026 () Bool)

(assert (=> b!1502624 (= c!139026 (= lt!653387 (select (arr!48350 a!2850) j!87)))))

(declare-fun b!1502625 () Bool)

(declare-fun e!840411 () SeekEntryResult!12567)

(assert (=> b!1502625 (= e!840411 (MissingVacant!12567 vacantBefore!10))))

(declare-fun b!1502626 () Bool)

(declare-fun c!139028 () Bool)

(assert (=> b!1502626 (= c!139028 (= lt!653387 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1502626 (= e!840412 e!840411)))

(declare-fun b!1502627 () Bool)

(assert (=> b!1502627 (= e!840412 (Found!12567 index!625))))

(declare-fun lt!653388 () SeekEntryResult!12567)

(declare-fun d!157687 () Bool)

(assert (=> d!157687 (and (or ((_ is Undefined!12567) lt!653388) (not ((_ is Found!12567) lt!653388)) (and (bvsge (index!52660 lt!653388) #b00000000000000000000000000000000) (bvslt (index!52660 lt!653388) (size!48901 a!2850)))) (or ((_ is Undefined!12567) lt!653388) ((_ is Found!12567) lt!653388) (not ((_ is MissingVacant!12567) lt!653388)) (not (= (index!52662 lt!653388) vacantBefore!10)) (and (bvsge (index!52662 lt!653388) #b00000000000000000000000000000000) (bvslt (index!52662 lt!653388) (size!48901 a!2850)))) (or ((_ is Undefined!12567) lt!653388) (ite ((_ is Found!12567) lt!653388) (= (select (arr!48350 a!2850) (index!52660 lt!653388)) (select (arr!48350 a!2850) j!87)) (and ((_ is MissingVacant!12567) lt!653388) (= (index!52662 lt!653388) vacantBefore!10) (= (select (arr!48350 a!2850) (index!52662 lt!653388)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157687 (= lt!653388 e!840413)))

(declare-fun c!139027 () Bool)

(assert (=> d!157687 (= c!139027 (bvsge x!647 #b01111111111111111111111111111110))))

(assert (=> d!157687 (= lt!653387 (select (arr!48350 a!2850) index!625))))

(assert (=> d!157687 (validMask!0 mask!2661)))

(assert (=> d!157687 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48350 a!2850) j!87) a!2850 mask!2661) lt!653388)))

(declare-fun b!1502628 () Bool)

(assert (=> b!1502628 (= e!840411 (seekKeyOrZeroReturnVacant!0 (bvadd x!647 #b00000000000000000000000000000001) (nextIndex!0 index!625 x!647 mask!2661) vacantBefore!10 (select (arr!48350 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1502629 () Bool)

(assert (=> b!1502629 (= e!840413 Undefined!12567)))

(assert (= (and d!157687 c!139027) b!1502629))

(assert (= (and d!157687 (not c!139027)) b!1502624))

(assert (= (and b!1502624 c!139026) b!1502627))

(assert (= (and b!1502624 (not c!139026)) b!1502626))

(assert (= (and b!1502626 c!139028) b!1502625))

(assert (= (and b!1502626 (not c!139028)) b!1502628))

(declare-fun m!1385963 () Bool)

(assert (=> d!157687 m!1385963))

(declare-fun m!1385965 () Bool)

(assert (=> d!157687 m!1385965))

(assert (=> d!157687 m!1385883))

(assert (=> d!157687 m!1385885))

(assert (=> b!1502628 m!1385939))

(assert (=> b!1502628 m!1385939))

(assert (=> b!1502628 m!1385873))

(declare-fun m!1385967 () Bool)

(assert (=> b!1502628 m!1385967))

(assert (=> b!1502532 d!157687))

(check-sat (not d!157669) (not b!1502577) (not bm!68085) (not b!1502581) (not b!1502622) (not d!157687) (not b!1502580) (not b!1502598) (not bm!68091) (not b!1502628) (not b!1502620))
(check-sat)
