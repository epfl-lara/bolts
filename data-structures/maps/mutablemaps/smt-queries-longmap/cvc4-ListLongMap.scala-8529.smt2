; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104008 () Bool)

(assert start!104008)

(declare-fun b!1244384 () Bool)

(declare-fun res!830145 () Bool)

(declare-fun e!705360 () Bool)

(assert (=> b!1244384 (=> (not res!830145) (not e!705360))))

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((array!80046 0))(
  ( (array!80047 (arr!38612 (Array (_ BitVec 32) (_ BitVec 64))) (size!39149 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80046)

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1244384 (= res!830145 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39149 a!3892)) (not (= newFrom!287 (size!39149 a!3892)))))))

(declare-fun b!1244385 () Bool)

(declare-fun res!830149 () Bool)

(assert (=> b!1244385 (=> (not res!830149) (not e!705360))))

(declare-datatypes ((List!27593 0))(
  ( (Nil!27590) (Cons!27589 (h!28798 (_ BitVec 64)) (t!41069 List!27593)) )
))
(declare-fun arrayNoDuplicates!0 (array!80046 (_ BitVec 32) List!27593) Bool)

(assert (=> b!1244385 (= res!830149 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27590))))

(declare-fun b!1244386 () Bool)

(declare-fun e!705361 () Bool)

(declare-fun noDuplicate!2034 (List!27593) Bool)

(assert (=> b!1244386 (= e!705361 (noDuplicate!2034 Nil!27590))))

(declare-fun b!1244387 () Bool)

(declare-datatypes ((Unit!41326 0))(
  ( (Unit!41327) )
))
(declare-fun e!705358 () Unit!41326)

(declare-fun Unit!41328 () Unit!41326)

(assert (=> b!1244387 (= e!705358 Unit!41328)))

(declare-fun b!1244388 () Bool)

(declare-fun lt!562698 () Unit!41326)

(assert (=> b!1244388 (= e!705358 lt!562698)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80046 List!27593 List!27593 (_ BitVec 32)) Unit!41326)

(assert (=> b!1244388 (= lt!562698 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27589 (select (arr!38612 a!3892) from!3270) Nil!27590) Nil!27590 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1244388 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27590)))

(declare-fun res!830147 () Bool)

(assert (=> start!104008 (=> (not res!830147) (not e!705360))))

(assert (=> start!104008 (= res!830147 (and (bvslt (size!39149 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39149 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39149 a!3892))))))

(assert (=> start!104008 e!705360))

(declare-fun array_inv!29388 (array!80046) Bool)

(assert (=> start!104008 (array_inv!29388 a!3892)))

(assert (=> start!104008 true))

(declare-fun b!1244389 () Bool)

(declare-fun e!705359 () Bool)

(assert (=> b!1244389 (= e!705359 (not e!705361))))

(declare-fun res!830144 () Bool)

(assert (=> b!1244389 (=> res!830144 e!705361)))

(assert (=> b!1244389 (= res!830144 (bvslt newFrom!287 #b00000000000000000000000000000000))))

(assert (=> b!1244389 (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27590)))

(declare-fun lt!562699 () Unit!41326)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!80046 (_ BitVec 32) (_ BitVec 32)) Unit!41326)

(assert (=> b!1244389 (= lt!562699 (lemmaNoDuplicateFromThenFromBigger!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287))))

(declare-fun b!1244390 () Bool)

(declare-fun res!830146 () Bool)

(assert (=> b!1244390 (=> (not res!830146) (not e!705359))))

(assert (=> b!1244390 (= res!830146 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27590))))

(declare-fun b!1244391 () Bool)

(assert (=> b!1244391 (= e!705360 e!705359)))

(declare-fun res!830148 () Bool)

(assert (=> b!1244391 (=> (not res!830148) (not e!705359))))

(assert (=> b!1244391 (= res!830148 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!562697 () Unit!41326)

(assert (=> b!1244391 (= lt!562697 e!705358)))

(declare-fun c!121807 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244391 (= c!121807 (validKeyInArray!0 (select (arr!38612 a!3892) from!3270)))))

(assert (= (and start!104008 res!830147) b!1244385))

(assert (= (and b!1244385 res!830149) b!1244384))

(assert (= (and b!1244384 res!830145) b!1244391))

(assert (= (and b!1244391 c!121807) b!1244388))

(assert (= (and b!1244391 (not c!121807)) b!1244387))

(assert (= (and b!1244391 res!830148) b!1244390))

(assert (= (and b!1244390 res!830146) b!1244389))

(assert (= (and b!1244389 (not res!830144)) b!1244386))

(declare-fun m!1146681 () Bool)

(assert (=> b!1244390 m!1146681))

(declare-fun m!1146683 () Bool)

(assert (=> b!1244386 m!1146683))

(declare-fun m!1146685 () Bool)

(assert (=> b!1244385 m!1146685))

(declare-fun m!1146687 () Bool)

(assert (=> start!104008 m!1146687))

(declare-fun m!1146689 () Bool)

(assert (=> b!1244391 m!1146689))

(assert (=> b!1244391 m!1146689))

(declare-fun m!1146691 () Bool)

(assert (=> b!1244391 m!1146691))

(declare-fun m!1146693 () Bool)

(assert (=> b!1244389 m!1146693))

(declare-fun m!1146695 () Bool)

(assert (=> b!1244389 m!1146695))

(assert (=> b!1244388 m!1146689))

(declare-fun m!1146697 () Bool)

(assert (=> b!1244388 m!1146697))

(assert (=> b!1244388 m!1146681))

(push 1)

(assert (not b!1244385))

(assert (not b!1244386))

(assert (not b!1244388))

(assert (not start!104008))

(assert (not b!1244390))

(assert (not b!1244391))

(assert (not b!1244389))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1244448 () Bool)

(declare-fun e!705411 () Bool)

(declare-fun call!61415 () Bool)

(assert (=> b!1244448 (= e!705411 call!61415)))

(declare-fun d!137043 () Bool)

(declare-fun res!830188 () Bool)

(declare-fun e!705409 () Bool)

(assert (=> d!137043 (=> res!830188 e!705409)))

(assert (=> d!137043 (= res!830188 (bvsge newFrom!287 (size!39149 a!3892)))))

(assert (=> d!137043 (= (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27590) e!705409)))

(declare-fun bm!61412 () Bool)

(declare-fun c!121818 () Bool)

(assert (=> bm!61412 (= call!61415 (arrayNoDuplicates!0 a!3892 (bvadd newFrom!287 #b00000000000000000000000000000001) (ite c!121818 (Cons!27589 (select (arr!38612 a!3892) newFrom!287) Nil!27590) Nil!27590)))))

(declare-fun b!1244449 () Bool)

(assert (=> b!1244449 (= e!705411 call!61415)))

(declare-fun b!1244450 () Bool)

(declare-fun e!705412 () Bool)

(declare-fun contains!7443 (List!27593 (_ BitVec 64)) Bool)

(assert (=> b!1244450 (= e!705412 (contains!7443 Nil!27590 (select (arr!38612 a!3892) newFrom!287)))))

(declare-fun b!1244451 () Bool)

(declare-fun e!705410 () Bool)

(assert (=> b!1244451 (= e!705410 e!705411)))

(assert (=> b!1244451 (= c!121818 (validKeyInArray!0 (select (arr!38612 a!3892) newFrom!287)))))

(declare-fun b!1244452 () Bool)

(assert (=> b!1244452 (= e!705409 e!705410)))

(declare-fun res!830187 () Bool)

(assert (=> b!1244452 (=> (not res!830187) (not e!705410))))

(assert (=> b!1244452 (= res!830187 (not e!705412))))

(declare-fun res!830186 () Bool)

(assert (=> b!1244452 (=> (not res!830186) (not e!705412))))

(assert (=> b!1244452 (= res!830186 (validKeyInArray!0 (select (arr!38612 a!3892) newFrom!287)))))

(assert (= (and d!137043 (not res!830188)) b!1244452))

(assert (= (and b!1244452 res!830186) b!1244450))

(assert (= (and b!1244452 res!830187) b!1244451))

(assert (= (and b!1244451 c!121818) b!1244449))

(assert (= (and b!1244451 (not c!121818)) b!1244448))

(assert (= (or b!1244449 b!1244448) bm!61412))

(declare-fun m!1146733 () Bool)

(assert (=> bm!61412 m!1146733))

(declare-fun m!1146735 () Bool)

(assert (=> bm!61412 m!1146735))

(assert (=> b!1244450 m!1146733))

(assert (=> b!1244450 m!1146733))

(declare-fun m!1146737 () Bool)

(assert (=> b!1244450 m!1146737))

(assert (=> b!1244451 m!1146733))

(assert (=> b!1244451 m!1146733))

(declare-fun m!1146741 () Bool)

(assert (=> b!1244451 m!1146741))

(assert (=> b!1244452 m!1146733))

(assert (=> b!1244452 m!1146733))

(assert (=> b!1244452 m!1146741))

(assert (=> b!1244389 d!137043))

(declare-fun d!137057 () Bool)

(assert (=> d!137057 (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27590)))

(declare-fun lt!562710 () Unit!41326)

(declare-fun choose!39 (array!80046 (_ BitVec 32) (_ BitVec 32)) Unit!41326)

(assert (=> d!137057 (= lt!562710 (choose!39 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287))))

(assert (=> d!137057 (bvslt (size!39149 a!3892) #b01111111111111111111111111111111)))

(assert (=> d!137057 (= (lemmaNoDuplicateFromThenFromBigger!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287) lt!562710)))

(declare-fun bs!35034 () Bool)

(assert (= bs!35034 d!137057))

(assert (=> bs!35034 m!1146693))

(declare-fun m!1146751 () Bool)

(assert (=> bs!35034 m!1146751))

(assert (=> b!1244389 d!137057))

(declare-fun d!137061 () Bool)

(assert (=> d!137061 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27590)))

(declare-fun lt!562714 () Unit!41326)

(declare-fun choose!80 (array!80046 List!27593 List!27593 (_ BitVec 32)) Unit!41326)

(assert (=> d!137061 (= lt!562714 (choose!80 a!3892 (Cons!27589 (select (arr!38612 a!3892) from!3270) Nil!27590) Nil!27590 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> d!137061 (bvslt (size!39149 a!3892) #b01111111111111111111111111111111)))

(assert (=> d!137061 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27589 (select (arr!38612 a!3892) from!3270) Nil!27590) Nil!27590 (bvadd #b00000000000000000000000000000001 from!3270)) lt!562714)))

(declare-fun bs!35036 () Bool)

(assert (= bs!35036 d!137061))

(assert (=> bs!35036 m!1146681))

(declare-fun m!1146759 () Bool)

(assert (=> bs!35036 m!1146759))

(assert (=> b!1244388 d!137061))

(declare-fun b!1244463 () Bool)

(declare-fun e!705423 () Bool)

(declare-fun call!61418 () Bool)

(assert (=> b!1244463 (= e!705423 call!61418)))

(declare-fun d!137067 () Bool)

(declare-fun res!830197 () Bool)

(declare-fun e!705421 () Bool)

(assert (=> d!137067 (=> res!830197 e!705421)))

(assert (=> d!137067 (= res!830197 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) (size!39149 a!3892)))))

(assert (=> d!137067 (= (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27590) e!705421)))

(declare-fun bm!61415 () Bool)

(declare-fun c!121821 () Bool)

(assert (=> bm!61415 (= call!61418 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270 #b00000000000000000000000000000001) (ite c!121821 (Cons!27589 (select (arr!38612 a!3892) (bvadd #b00000000000000000000000000000001 from!3270)) Nil!27590) Nil!27590)))))

(declare-fun b!1244464 () Bool)

(assert (=> b!1244464 (= e!705423 call!61418)))

(declare-fun b!1244465 () Bool)

(declare-fun e!705424 () Bool)

(assert (=> b!1244465 (= e!705424 (contains!7443 Nil!27590 (select (arr!38612 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1244466 () Bool)

(declare-fun e!705422 () Bool)

(assert (=> b!1244466 (= e!705422 e!705423)))

(assert (=> b!1244466 (= c!121821 (validKeyInArray!0 (select (arr!38612 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1244467 () Bool)

(assert (=> b!1244467 (= e!705421 e!705422)))

(declare-fun res!830196 () Bool)

(assert (=> b!1244467 (=> (not res!830196) (not e!705422))))

(assert (=> b!1244467 (= res!830196 (not e!705424))))

(declare-fun res!830195 () Bool)

(assert (=> b!1244467 (=> (not res!830195) (not e!705424))))

(assert (=> b!1244467 (= res!830195 (validKeyInArray!0 (select (arr!38612 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(assert (= (and d!137067 (not res!830197)) b!1244467))

(assert (= (and b!1244467 res!830195) b!1244465))

(assert (= (and b!1244467 res!830196) b!1244466))

(assert (= (and b!1244466 c!121821) b!1244464))

(assert (= (and b!1244466 (not c!121821)) b!1244463))

(assert (= (or b!1244464 b!1244463) bm!61415))

(declare-fun m!1146761 () Bool)

(assert (=> bm!61415 m!1146761))

(declare-fun m!1146763 () Bool)

(assert (=> bm!61415 m!1146763))

(assert (=> b!1244465 m!1146761))

(assert (=> b!1244465 m!1146761))

(declare-fun m!1146765 () Bool)

(assert (=> b!1244465 m!1146765))

(assert (=> b!1244466 m!1146761))

(assert (=> b!1244466 m!1146761))

(declare-fun m!1146767 () Bool)

(assert (=> b!1244466 m!1146767))

(assert (=> b!1244467 m!1146761))

(assert (=> b!1244467 m!1146761))

(assert (=> b!1244467 m!1146767))

(assert (=> b!1244388 d!137067))

(declare-fun b!1244472 () Bool)

(declare-fun e!705431 () Bool)

