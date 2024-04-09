; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104494 () Bool)

(assert start!104494)

(declare-fun res!831904 () Bool)

(declare-fun e!706983 () Bool)

(assert (=> start!104494 (=> (not res!831904) (not e!706983))))

(declare-datatypes ((array!80231 0))(
  ( (array!80232 (arr!38688 (Array (_ BitVec 32) (_ BitVec 64))) (size!39225 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80231)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104494 (= res!831904 (and (bvslt (size!39225 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39225 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39225 a!3892))))))

(assert (=> start!104494 e!706983))

(declare-fun array_inv!29464 (array!80231) Bool)

(assert (=> start!104494 (array_inv!29464 a!3892)))

(assert (=> start!104494 true))

(declare-fun b!1246493 () Bool)

(declare-fun e!706984 () Bool)

(assert (=> b!1246493 (= e!706983 e!706984)))

(declare-fun res!831902 () Bool)

(assert (=> b!1246493 (=> (not res!831902) (not e!706984))))

(assert (=> b!1246493 (= res!831902 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-datatypes ((Unit!41380 0))(
  ( (Unit!41381) )
))
(declare-fun lt!563078 () Unit!41380)

(declare-fun e!706981 () Unit!41380)

(assert (=> b!1246493 (= lt!563078 e!706981)))

(declare-fun c!121983 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246493 (= c!121983 (validKeyInArray!0 (select (arr!38688 a!3892) from!3270)))))

(declare-fun b!1246494 () Bool)

(declare-fun res!831903 () Bool)

(assert (=> b!1246494 (=> (not res!831903) (not e!706983))))

(declare-datatypes ((List!27669 0))(
  ( (Nil!27666) (Cons!27665 (h!28874 (_ BitVec 64)) (t!41145 List!27669)) )
))
(declare-fun arrayNoDuplicates!0 (array!80231 (_ BitVec 32) List!27669) Bool)

(assert (=> b!1246494 (= res!831903 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27666))))

(declare-fun b!1246495 () Bool)

(declare-fun lt!563077 () Unit!41380)

(assert (=> b!1246495 (= e!706981 lt!563077)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80231 List!27669 List!27669 (_ BitVec 32)) Unit!41380)

(assert (=> b!1246495 (= lt!563077 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27665 (select (arr!38688 a!3892) from!3270) Nil!27666) Nil!27666 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1246495 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27666)))

(declare-fun b!1246496 () Bool)

(declare-fun Unit!41382 () Unit!41380)

(assert (=> b!1246496 (= e!706981 Unit!41382)))

(declare-fun b!1246497 () Bool)

(assert (=> b!1246497 (= e!706984 (not (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27666)))))

(declare-fun b!1246498 () Bool)

(declare-fun res!831901 () Bool)

(assert (=> b!1246498 (=> (not res!831901) (not e!706983))))

(assert (=> b!1246498 (= res!831901 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39225 a!3892)) (not (= newFrom!287 (size!39225 a!3892)))))))

(assert (= (and start!104494 res!831904) b!1246494))

(assert (= (and b!1246494 res!831903) b!1246498))

(assert (= (and b!1246498 res!831901) b!1246493))

(assert (= (and b!1246493 c!121983) b!1246495))

(assert (= (and b!1246493 (not c!121983)) b!1246496))

(assert (= (and b!1246493 res!831902) b!1246497))

(declare-fun m!1148339 () Bool)

(assert (=> start!104494 m!1148339))

(declare-fun m!1148341 () Bool)

(assert (=> b!1246495 m!1148341))

(declare-fun m!1148343 () Bool)

(assert (=> b!1246495 m!1148343))

(declare-fun m!1148345 () Bool)

(assert (=> b!1246495 m!1148345))

(assert (=> b!1246497 m!1148345))

(declare-fun m!1148347 () Bool)

(assert (=> b!1246494 m!1148347))

(assert (=> b!1246493 m!1148341))

(assert (=> b!1246493 m!1148341))

(declare-fun m!1148349 () Bool)

(assert (=> b!1246493 m!1148349))

(push 1)

(assert (not b!1246495))

(assert (not b!1246493))

(assert (not start!104494))

(assert (not b!1246494))

(assert (not b!1246497))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!137573 () Bool)

(assert (=> d!137573 (= (array_inv!29464 a!3892) (bvsge (size!39225 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104494 d!137573))

(declare-fun d!137575 () Bool)

(assert (=> d!137575 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27666)))

(declare-fun lt!563093 () Unit!41380)

(declare-fun choose!80 (array!80231 List!27669 List!27669 (_ BitVec 32)) Unit!41380)

(assert (=> d!137575 (= lt!563093 (choose!80 a!3892 (Cons!27665 (select (arr!38688 a!3892) from!3270) Nil!27666) Nil!27666 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> d!137575 (bvslt (size!39225 a!3892) #b01111111111111111111111111111111)))

(assert (=> d!137575 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27665 (select (arr!38688 a!3892) from!3270) Nil!27666) Nil!27666 (bvadd #b00000000000000000000000000000001 from!3270)) lt!563093)))

(declare-fun bs!35122 () Bool)

(assert (= bs!35122 d!137575))

(assert (=> bs!35122 m!1148345))

(declare-fun m!1148375 () Bool)

(assert (=> bs!35122 m!1148375))

(assert (=> b!1246495 d!137575))

(declare-fun b!1246575 () Bool)

(declare-fun e!707043 () Bool)

(declare-fun call!61532 () Bool)

(assert (=> b!1246575 (= e!707043 call!61532)))

(declare-fun b!1246576 () Bool)

(declare-fun e!707044 () Bool)

(declare-fun contains!7476 (List!27669 (_ BitVec 64)) Bool)

(assert (=> b!1246576 (= e!707044 (contains!7476 Nil!27666 (select (arr!38688 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun bm!61529 () Bool)

(declare-fun c!121998 () Bool)

(assert (=> bm!61529 (= call!61532 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270 #b00000000000000000000000000000001) (ite c!121998 (Cons!27665 (select (arr!38688 a!3892) (bvadd #b00000000000000000000000000000001 from!3270)) Nil!27666) Nil!27666)))))

(declare-fun b!1246577 () Bool)

(declare-fun e!707041 () Bool)

(declare-fun e!707042 () Bool)

(assert (=> b!1246577 (= e!707041 e!707042)))

(declare-fun res!831954 () Bool)

(assert (=> b!1246577 (=> (not res!831954) (not e!707042))))

(assert (=> b!1246577 (= res!831954 (not e!707044))))

(declare-fun res!831955 () Bool)

(assert (=> b!1246577 (=> (not res!831955) (not e!707044))))

(assert (=> b!1246577 (= res!831955 (validKeyInArray!0 (select (arr!38688 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1246578 () Bool)

(assert (=> b!1246578 (= e!707043 call!61532)))

(declare-fun d!137577 () Bool)

(declare-fun res!831953 () Bool)

(assert (=> d!137577 (=> res!831953 e!707041)))

(assert (=> d!137577 (= res!831953 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) (size!39225 a!3892)))))

(assert (=> d!137577 (= (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27666) e!707041)))

(declare-fun b!1246579 () Bool)

(assert (=> b!1246579 (= e!707042 e!707043)))

(assert (=> b!1246579 (= c!121998 (validKeyInArray!0 (select (arr!38688 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(assert (= (and d!137577 (not res!831953)) b!1246577))

(assert (= (and b!1246577 res!831955) b!1246576))

(assert (= (and b!1246577 res!831954) b!1246579))

(assert (= (and b!1246579 c!121998) b!1246575))

(assert (= (and b!1246579 (not c!121998)) b!1246578))

(assert (= (or b!1246575 b!1246578) bm!61529))

(declare-fun m!1148391 () Bool)

(assert (=> b!1246576 m!1148391))

(assert (=> b!1246576 m!1148391))

(declare-fun m!1148393 () Bool)

(assert (=> b!1246576 m!1148393))

(assert (=> bm!61529 m!1148391))

(declare-fun m!1148395 () Bool)

(assert (=> bm!61529 m!1148395))

(assert (=> b!1246577 m!1148391))

(assert (=> b!1246577 m!1148391))

(declare-fun m!1148397 () Bool)

(assert (=> b!1246577 m!1148397))

(assert (=> b!1246579 m!1148391))

(assert (=> b!1246579 m!1148391))

(assert (=> b!1246579 m!1148397))

(assert (=> b!1246495 d!137577))

(declare-fun b!1246585 () Bool)

(declare-fun e!707051 () Bool)

(declare-fun call!61534 () Bool)

(assert (=> b!1246585 (= e!707051 call!61534)))

(declare-fun b!1246586 () Bool)

(declare-fun e!707052 () Bool)

(assert (=> b!1246586 (= e!707052 (contains!7476 Nil!27666 (select (arr!38688 a!3892) from!3270)))))

(declare-fun bm!61531 () Bool)

(declare-fun c!122000 () Bool)

(assert (=> bm!61531 (= call!61534 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!122000 (Cons!27665 (select (arr!38688 a!3892) from!3270) Nil!27666) Nil!27666)))))

(declare-fun b!1246587 () Bool)

(declare-fun e!707049 () Bool)

(declare-fun e!707050 () Bool)

(assert (=> b!1246587 (= e!707049 e!707050)))

(declare-fun res!831960 () Bool)

(assert (=> b!1246587 (=> (not res!831960) (not e!707050))))

(assert (=> b!1246587 (= res!831960 (not e!707052))))

(declare-fun res!831961 () Bool)

(assert (=> b!1246587 (=> (not res!831961) (not e!707052))))

(assert (=> b!1246587 (= res!831961 (validKeyInArray!0 (select (arr!38688 a!3892) from!3270)))))

(declare-fun b!1246588 () Bool)

(assert (=> b!1246588 (= e!707051 call!61534)))

(declare-fun d!137589 () Bool)

(declare-fun res!831959 () Bool)

(assert (=> d!137589 (=> res!831959 e!707049)))

(assert (=> d!137589 (= res!831959 (bvsge from!3270 (size!39225 a!3892)))))

(assert (=> d!137589 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27666) e!707049)))

(declare-fun b!1246589 () Bool)

(assert (=> b!1246589 (= e!707050 e!707051)))

(assert (=> b!1246589 (= c!122000 (validKeyInArray!0 (select (arr!38688 a!3892) from!3270)))))

(assert (= (and d!137589 (not res!831959)) b!1246587))

