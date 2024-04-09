; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127506 () Bool)

(assert start!127506)

(declare-fun b!1497894 () Bool)

(declare-fun res!1019063 () Bool)

(declare-fun e!838807 () Bool)

(assert (=> b!1497894 (=> (not res!1019063) (not e!838807))))

(declare-datatypes ((array!99833 0))(
  ( (array!99834 (arr!48173 (Array (_ BitVec 32) (_ BitVec 64))) (size!48724 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99833)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99833 (_ BitVec 32)) Bool)

(assert (=> b!1497894 (= res!1019063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1497895 () Bool)

(declare-fun e!838806 () Bool)

(assert (=> b!1497895 (= e!838807 e!838806)))

(declare-fun res!1019061 () Bool)

(assert (=> b!1497895 (=> res!1019061 e!838806)))

(declare-datatypes ((List!34845 0))(
  ( (Nil!34842) (Cons!34841 (h!36239 (_ BitVec 64)) (t!49546 List!34845)) )
))
(declare-fun contains!9952 (List!34845 (_ BitVec 64)) Bool)

(assert (=> b!1497895 (= res!1019061 (contains!9952 Nil!34842 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!1019062 () Bool)

(assert (=> start!127506 (=> (not res!1019062) (not e!838807))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127506 (= res!1019062 (validMask!0 mask!2661))))

(assert (=> start!127506 e!838807))

(assert (=> start!127506 true))

(declare-fun array_inv!37118 (array!99833) Bool)

(assert (=> start!127506 (array_inv!37118 a!2850)))

(declare-fun b!1497896 () Bool)

(declare-fun res!1019065 () Bool)

(assert (=> b!1497896 (=> (not res!1019065) (not e!838807))))

(assert (=> b!1497896 (= res!1019065 (and (bvsle #b00000000000000000000000000000000 (size!48724 a!2850)) (bvslt (size!48724 a!2850) #b01111111111111111111111111111111)))))

(declare-fun b!1497897 () Bool)

(declare-fun res!1019064 () Bool)

(assert (=> b!1497897 (=> (not res!1019064) (not e!838807))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1497897 (= res!1019064 (and (= (size!48724 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48724 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48724 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1497898 () Bool)

(declare-fun res!1019067 () Bool)

(assert (=> b!1497898 (=> (not res!1019067) (not e!838807))))

(declare-fun noDuplicate!2655 (List!34845) Bool)

(assert (=> b!1497898 (= res!1019067 (noDuplicate!2655 Nil!34842))))

(declare-fun b!1497899 () Bool)

(assert (=> b!1497899 (= e!838806 (contains!9952 Nil!34842 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1497900 () Bool)

(declare-fun res!1019060 () Bool)

(assert (=> b!1497900 (=> (not res!1019060) (not e!838807))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497900 (= res!1019060 (validKeyInArray!0 (select (arr!48173 a!2850) j!87)))))

(declare-fun b!1497901 () Bool)

(declare-fun res!1019066 () Bool)

(assert (=> b!1497901 (=> (not res!1019066) (not e!838807))))

(assert (=> b!1497901 (= res!1019066 (validKeyInArray!0 (select (arr!48173 a!2850) i!996)))))

(assert (= (and start!127506 res!1019062) b!1497897))

(assert (= (and b!1497897 res!1019064) b!1497901))

(assert (= (and b!1497901 res!1019066) b!1497900))

(assert (= (and b!1497900 res!1019060) b!1497894))

(assert (= (and b!1497894 res!1019063) b!1497896))

(assert (= (and b!1497896 res!1019065) b!1497898))

(assert (= (and b!1497898 res!1019067) b!1497895))

(assert (= (and b!1497895 (not res!1019061)) b!1497899))

(declare-fun m!1381013 () Bool)

(assert (=> b!1497900 m!1381013))

(assert (=> b!1497900 m!1381013))

(declare-fun m!1381015 () Bool)

(assert (=> b!1497900 m!1381015))

(declare-fun m!1381017 () Bool)

(assert (=> b!1497901 m!1381017))

(assert (=> b!1497901 m!1381017))

(declare-fun m!1381019 () Bool)

(assert (=> b!1497901 m!1381019))

(declare-fun m!1381021 () Bool)

(assert (=> b!1497898 m!1381021))

(declare-fun m!1381023 () Bool)

(assert (=> start!127506 m!1381023))

(declare-fun m!1381025 () Bool)

(assert (=> start!127506 m!1381025))

(declare-fun m!1381027 () Bool)

(assert (=> b!1497899 m!1381027))

(declare-fun m!1381029 () Bool)

(assert (=> b!1497895 m!1381029))

(declare-fun m!1381031 () Bool)

(assert (=> b!1497894 m!1381031))

(check-sat (not b!1497894) (not b!1497900) (not b!1497898) (not b!1497899) (not b!1497895) (not b!1497901) (not start!127506))
(check-sat)
(get-model)

(declare-fun d!157455 () Bool)

(declare-fun lt!652525 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!784 (List!34845) (InoxSet (_ BitVec 64)))

(assert (=> d!157455 (= lt!652525 (select (content!784 Nil!34842) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!838822 () Bool)

(assert (=> d!157455 (= lt!652525 e!838822)))

(declare-fun res!1019097 () Bool)

(assert (=> d!157455 (=> (not res!1019097) (not e!838822))))

(get-info :version)

(assert (=> d!157455 (= res!1019097 ((_ is Cons!34841) Nil!34842))))

(assert (=> d!157455 (= (contains!9952 Nil!34842 #b1000000000000000000000000000000000000000000000000000000000000000) lt!652525)))

(declare-fun b!1497930 () Bool)

(declare-fun e!838823 () Bool)

(assert (=> b!1497930 (= e!838822 e!838823)))

(declare-fun res!1019096 () Bool)

(assert (=> b!1497930 (=> res!1019096 e!838823)))

(assert (=> b!1497930 (= res!1019096 (= (h!36239 Nil!34842) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1497931 () Bool)

(assert (=> b!1497931 (= e!838823 (contains!9952 (t!49546 Nil!34842) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!157455 res!1019097) b!1497930))

(assert (= (and b!1497930 (not res!1019096)) b!1497931))

(declare-fun m!1381053 () Bool)

(assert (=> d!157455 m!1381053))

(declare-fun m!1381055 () Bool)

(assert (=> d!157455 m!1381055))

(declare-fun m!1381057 () Bool)

(assert (=> b!1497931 m!1381057))

(assert (=> b!1497899 d!157455))

(declare-fun bm!68060 () Bool)

(declare-fun call!68063 () Bool)

(assert (=> bm!68060 (= call!68063 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(declare-fun b!1497959 () Bool)

(declare-fun e!838848 () Bool)

(assert (=> b!1497959 (= e!838848 call!68063)))

(declare-fun b!1497960 () Bool)

(declare-fun e!838847 () Bool)

(declare-fun e!838846 () Bool)

(assert (=> b!1497960 (= e!838847 e!838846)))

(declare-fun c!138958 () Bool)

(assert (=> b!1497960 (= c!138958 (validKeyInArray!0 (select (arr!48173 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1497961 () Bool)

(assert (=> b!1497961 (= e!838846 e!838848)))

(declare-fun lt!652542 () (_ BitVec 64))

(assert (=> b!1497961 (= lt!652542 (select (arr!48173 a!2850) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50146 0))(
  ( (Unit!50147) )
))
(declare-fun lt!652543 () Unit!50146)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99833 (_ BitVec 64) (_ BitVec 32)) Unit!50146)

(assert (=> b!1497961 (= lt!652543 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2850 lt!652542 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99833 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1497961 (arrayContainsKey!0 a!2850 lt!652542 #b00000000000000000000000000000000)))

(declare-fun lt!652541 () Unit!50146)

(assert (=> b!1497961 (= lt!652541 lt!652543)))

(declare-fun res!1019117 () Bool)

(declare-datatypes ((SeekEntryResult!12427 0))(
  ( (MissingZero!12427 (index!52099 (_ BitVec 32))) (Found!12427 (index!52100 (_ BitVec 32))) (Intermediate!12427 (undefined!13239 Bool) (index!52101 (_ BitVec 32)) (x!133746 (_ BitVec 32))) (Undefined!12427) (MissingVacant!12427 (index!52102 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99833 (_ BitVec 32)) SeekEntryResult!12427)

(assert (=> b!1497961 (= res!1019117 (= (seekEntryOrOpen!0 (select (arr!48173 a!2850) #b00000000000000000000000000000000) a!2850 mask!2661) (Found!12427 #b00000000000000000000000000000000)))))

(assert (=> b!1497961 (=> (not res!1019117) (not e!838848))))

(declare-fun b!1497958 () Bool)

(assert (=> b!1497958 (= e!838846 call!68063)))

(declare-fun d!157457 () Bool)

(declare-fun res!1019116 () Bool)

(assert (=> d!157457 (=> res!1019116 e!838847)))

(assert (=> d!157457 (= res!1019116 (bvsge #b00000000000000000000000000000000 (size!48724 a!2850)))))

(assert (=> d!157457 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661) e!838847)))

(assert (= (and d!157457 (not res!1019116)) b!1497960))

(assert (= (and b!1497960 c!138958) b!1497961))

(assert (= (and b!1497960 (not c!138958)) b!1497958))

(assert (= (and b!1497961 res!1019117) b!1497959))

(assert (= (or b!1497959 b!1497958) bm!68060))

(declare-fun m!1381069 () Bool)

(assert (=> bm!68060 m!1381069))

(declare-fun m!1381071 () Bool)

(assert (=> b!1497960 m!1381071))

(assert (=> b!1497960 m!1381071))

(declare-fun m!1381073 () Bool)

(assert (=> b!1497960 m!1381073))

(assert (=> b!1497961 m!1381071))

(declare-fun m!1381075 () Bool)

(assert (=> b!1497961 m!1381075))

(declare-fun m!1381077 () Bool)

(assert (=> b!1497961 m!1381077))

(assert (=> b!1497961 m!1381071))

(declare-fun m!1381079 () Bool)

(assert (=> b!1497961 m!1381079))

(assert (=> b!1497894 d!157457))

(declare-fun d!157471 () Bool)

(assert (=> d!157471 (= (validKeyInArray!0 (select (arr!48173 a!2850) j!87)) (and (not (= (select (arr!48173 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48173 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1497900 d!157471))

(declare-fun d!157475 () Bool)

(declare-fun lt!652548 () Bool)

(assert (=> d!157475 (= lt!652548 (select (content!784 Nil!34842) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!838856 () Bool)

(assert (=> d!157475 (= lt!652548 e!838856)))

(declare-fun res!1019125 () Bool)

(assert (=> d!157475 (=> (not res!1019125) (not e!838856))))

(assert (=> d!157475 (= res!1019125 ((_ is Cons!34841) Nil!34842))))

(assert (=> d!157475 (= (contains!9952 Nil!34842 #b0000000000000000000000000000000000000000000000000000000000000000) lt!652548)))

(declare-fun b!1497970 () Bool)

(declare-fun e!838857 () Bool)

(assert (=> b!1497970 (= e!838856 e!838857)))

(declare-fun res!1019124 () Bool)

(assert (=> b!1497970 (=> res!1019124 e!838857)))

(assert (=> b!1497970 (= res!1019124 (= (h!36239 Nil!34842) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1497971 () Bool)

(assert (=> b!1497971 (= e!838857 (contains!9952 (t!49546 Nil!34842) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!157475 res!1019125) b!1497970))

(assert (= (and b!1497970 (not res!1019124)) b!1497971))

(assert (=> d!157475 m!1381053))

(declare-fun m!1381095 () Bool)

(assert (=> d!157475 m!1381095))

(declare-fun m!1381099 () Bool)

(assert (=> b!1497971 m!1381099))

(assert (=> b!1497895 d!157475))

(declare-fun d!157479 () Bool)

(assert (=> d!157479 (= (validKeyInArray!0 (select (arr!48173 a!2850) i!996)) (and (not (= (select (arr!48173 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48173 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1497901 d!157479))

(declare-fun d!157481 () Bool)

(assert (=> d!157481 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

(assert (=> start!127506 d!157481))

(declare-fun d!157493 () Bool)

(assert (=> d!157493 (= (array_inv!37118 a!2850) (bvsge (size!48724 a!2850) #b00000000000000000000000000000000))))

(assert (=> start!127506 d!157493))

(declare-fun d!157495 () Bool)

(declare-fun res!1019148 () Bool)

(declare-fun e!838883 () Bool)

(assert (=> d!157495 (=> res!1019148 e!838883)))

(assert (=> d!157495 (= res!1019148 ((_ is Nil!34842) Nil!34842))))

(assert (=> d!157495 (= (noDuplicate!2655 Nil!34842) e!838883)))

(declare-fun b!1498000 () Bool)

(declare-fun e!838884 () Bool)

(assert (=> b!1498000 (= e!838883 e!838884)))

(declare-fun res!1019149 () Bool)

(assert (=> b!1498000 (=> (not res!1019149) (not e!838884))))

(assert (=> b!1498000 (= res!1019149 (not (contains!9952 (t!49546 Nil!34842) (h!36239 Nil!34842))))))

(declare-fun b!1498001 () Bool)

(assert (=> b!1498001 (= e!838884 (noDuplicate!2655 (t!49546 Nil!34842)))))

(assert (= (and d!157495 (not res!1019148)) b!1498000))

(assert (= (and b!1498000 res!1019149) b!1498001))

(declare-fun m!1381123 () Bool)

(assert (=> b!1498000 m!1381123))

(declare-fun m!1381125 () Bool)

(assert (=> b!1498001 m!1381125))

(assert (=> b!1497898 d!157495))

(check-sat (not bm!68060) (not b!1497971) (not b!1497961) (not b!1498001) (not d!157455) (not b!1497960) (not d!157475) (not b!1498000) (not b!1497931))
(check-sat)
