; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104050 () Bool)

(assert start!104050)

(declare-fun b!1244565 () Bool)

(declare-fun e!705493 () Bool)

(declare-fun e!705490 () Bool)

(assert (=> b!1244565 (= e!705493 e!705490)))

(declare-fun res!830279 () Bool)

(assert (=> b!1244565 (=> (not res!830279) (not e!705490))))

(declare-datatypes ((List!27596 0))(
  ( (Nil!27593) (Cons!27592 (h!28801 (_ BitVec 64)) (t!41072 List!27596)) )
))
(declare-fun contains!7447 (List!27596 (_ BitVec 64)) Bool)

(assert (=> b!1244565 (= res!830279 (not (contains!7447 Nil!27593 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!830282 () Bool)

(declare-fun e!705494 () Bool)

(assert (=> start!104050 (=> (not res!830282) (not e!705494))))

(declare-datatypes ((array!80055 0))(
  ( (array!80056 (arr!38615 (Array (_ BitVec 32) (_ BitVec 64))) (size!39152 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80055)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104050 (= res!830282 (and (bvslt (size!39152 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39152 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39152 a!3892))))))

(assert (=> start!104050 e!705494))

(declare-fun array_inv!29391 (array!80055) Bool)

(assert (=> start!104050 (array_inv!29391 a!3892)))

(assert (=> start!104050 true))

(declare-fun b!1244566 () Bool)

(declare-fun res!830280 () Bool)

(assert (=> b!1244566 (=> (not res!830280) (not e!705494))))

(assert (=> b!1244566 (= res!830280 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39152 a!3892)) (not (= newFrom!287 (size!39152 a!3892)))))))

(declare-fun b!1244567 () Bool)

(declare-datatypes ((Unit!41335 0))(
  ( (Unit!41336) )
))
(declare-fun e!705491 () Unit!41335)

(declare-fun lt!562744 () Unit!41335)

(assert (=> b!1244567 (= e!705491 lt!562744)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80055 List!27596 List!27596 (_ BitVec 32)) Unit!41335)

(assert (=> b!1244567 (= lt!562744 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27592 (select (arr!38615 a!3892) from!3270) Nil!27593) Nil!27593 (bvadd #b00000000000000000000000000000001 from!3270)))))

(declare-fun arrayNoDuplicates!0 (array!80055 (_ BitVec 32) List!27596) Bool)

(assert (=> b!1244567 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27593)))

(declare-fun b!1244568 () Bool)

(declare-fun e!705492 () Bool)

(assert (=> b!1244568 (= e!705494 e!705492)))

(declare-fun res!830284 () Bool)

(assert (=> b!1244568 (=> (not res!830284) (not e!705492))))

(assert (=> b!1244568 (= res!830284 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!562743 () Unit!41335)

(assert (=> b!1244568 (= lt!562743 e!705491)))

(declare-fun c!121831 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244568 (= c!121831 (validKeyInArray!0 (select (arr!38615 a!3892) from!3270)))))

(declare-fun b!1244569 () Bool)

(declare-fun res!830281 () Bool)

(assert (=> b!1244569 (=> res!830281 e!705493)))

(declare-fun noDuplicate!2037 (List!27596) Bool)

(assert (=> b!1244569 (= res!830281 (not (noDuplicate!2037 Nil!27593)))))

(declare-fun b!1244570 () Bool)

(assert (=> b!1244570 (= e!705492 (not e!705493))))

(declare-fun res!830278 () Bool)

(assert (=> b!1244570 (=> res!830278 e!705493)))

(assert (=> b!1244570 (= res!830278 (bvslt newFrom!287 #b00000000000000000000000000000000))))

(assert (=> b!1244570 (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27593)))

(declare-fun lt!562742 () Unit!41335)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!80055 (_ BitVec 32) (_ BitVec 32)) Unit!41335)

(assert (=> b!1244570 (= lt!562742 (lemmaNoDuplicateFromThenFromBigger!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287))))

(declare-fun b!1244571 () Bool)

(declare-fun res!830283 () Bool)

(assert (=> b!1244571 (=> (not res!830283) (not e!705492))))

(assert (=> b!1244571 (= res!830283 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27593))))

(declare-fun b!1244572 () Bool)

(declare-fun res!830277 () Bool)

(assert (=> b!1244572 (=> (not res!830277) (not e!705494))))

(assert (=> b!1244572 (= res!830277 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27593))))

(declare-fun b!1244573 () Bool)

(declare-fun Unit!41337 () Unit!41335)

(assert (=> b!1244573 (= e!705491 Unit!41337)))

(declare-fun b!1244574 () Bool)

(assert (=> b!1244574 (= e!705490 (not (contains!7447 Nil!27593 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!104050 res!830282) b!1244572))

(assert (= (and b!1244572 res!830277) b!1244566))

(assert (= (and b!1244566 res!830280) b!1244568))

(assert (= (and b!1244568 c!121831) b!1244567))

(assert (= (and b!1244568 (not c!121831)) b!1244573))

(assert (= (and b!1244568 res!830284) b!1244571))

(assert (= (and b!1244571 res!830283) b!1244570))

(assert (= (and b!1244570 (not res!830278)) b!1244569))

(assert (= (and b!1244569 (not res!830281)) b!1244565))

(assert (= (and b!1244565 res!830279) b!1244574))

(declare-fun m!1146827 () Bool)

(assert (=> b!1244574 m!1146827))

(declare-fun m!1146829 () Bool)

(assert (=> start!104050 m!1146829))

(declare-fun m!1146831 () Bool)

(assert (=> b!1244567 m!1146831))

(declare-fun m!1146833 () Bool)

(assert (=> b!1244567 m!1146833))

(declare-fun m!1146835 () Bool)

(assert (=> b!1244567 m!1146835))

(declare-fun m!1146837 () Bool)

(assert (=> b!1244569 m!1146837))

(assert (=> b!1244568 m!1146831))

(assert (=> b!1244568 m!1146831))

(declare-fun m!1146839 () Bool)

(assert (=> b!1244568 m!1146839))

(assert (=> b!1244571 m!1146835))

(declare-fun m!1146841 () Bool)

(assert (=> b!1244565 m!1146841))

(declare-fun m!1146843 () Bool)

(assert (=> b!1244572 m!1146843))

(declare-fun m!1146845 () Bool)

(assert (=> b!1244570 m!1146845))

(declare-fun m!1146847 () Bool)

(assert (=> b!1244570 m!1146847))

(push 1)

(assert (not b!1244570))

(assert (not b!1244565))

(assert (not b!1244572))

(assert (not b!1244569))

(assert (not b!1244567))

(assert (not b!1244571))

(assert (not start!104050))

(assert (not b!1244568))

(assert (not b!1244574))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!137087 () Bool)

(assert (=> d!137087 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27593)))

(declare-fun lt!562750 () Unit!41335)

(declare-fun choose!80 (array!80055 List!27596 List!27596 (_ BitVec 32)) Unit!41335)

(assert (=> d!137087 (= lt!562750 (choose!80 a!3892 (Cons!27592 (select (arr!38615 a!3892) from!3270) Nil!27593) Nil!27593 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> d!137087 (bvslt (size!39152 a!3892) #b01111111111111111111111111111111)))

(assert (=> d!137087 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27592 (select (arr!38615 a!3892) from!3270) Nil!27593) Nil!27593 (bvadd #b00000000000000000000000000000001 from!3270)) lt!562750)))

(declare-fun bs!35042 () Bool)

(assert (= bs!35042 d!137087))

(assert (=> bs!35042 m!1146835))

(declare-fun m!1146863 () Bool)

(assert (=> bs!35042 m!1146863))

(assert (=> b!1244567 d!137087))

(declare-fun b!1244636 () Bool)

(declare-fun e!705546 () Bool)

(assert (=> b!1244636 (= e!705546 (contains!7447 Nil!27593 (select (arr!38615 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun c!121843 () Bool)

(declare-fun call!61431 () Bool)

(declare-fun bm!61428 () Bool)

(assert (=> bm!61428 (= call!61431 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270 #b00000000000000000000000000000001) (ite c!121843 (Cons!27592 (select (arr!38615 a!3892) (bvadd #b00000000000000000000000000000001 from!3270)) Nil!27593) Nil!27593)))))

(declare-fun d!137095 () Bool)

(declare-fun res!830325 () Bool)

(declare-fun e!705548 () Bool)

(assert (=> d!137095 (=> res!830325 e!705548)))

(assert (=> d!137095 (= res!830325 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) (size!39152 a!3892)))))

(assert (=> d!137095 (= (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27593) e!705548)))

(declare-fun b!1244637 () Bool)

(declare-fun e!705547 () Bool)

(assert (=> b!1244637 (= e!705547 call!61431)))

(declare-fun b!1244638 () Bool)

(declare-fun e!705545 () Bool)

(assert (=> b!1244638 (= e!705545 e!705547)))

(assert (=> b!1244638 (= c!121843 (validKeyInArray!0 (select (arr!38615 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1244639 () Bool)

(assert (=> b!1244639 (= e!705548 e!705545)))

(declare-fun res!830326 () Bool)

(assert (=> b!1244639 (=> (not res!830326) (not e!705545))))

(assert (=> b!1244639 (= res!830326 (not e!705546))))

(declare-fun res!830324 () Bool)

(assert (=> b!1244639 (=> (not res!830324) (not e!705546))))

(assert (=> b!1244639 (= res!830324 (validKeyInArray!0 (select (arr!38615 a!3892) (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun b!1244640 () Bool)

(assert (=> b!1244640 (= e!705547 call!61431)))

(assert (= (and d!137095 (not res!830325)) b!1244639))

(assert (= (and b!1244639 res!830324) b!1244636))

(assert (= (and b!1244639 res!830326) b!1244638))

(assert (= (and b!1244638 c!121843) b!1244637))

(assert (= (and b!1244638 (not c!121843)) b!1244640))

(assert (= (or b!1244637 b!1244640) bm!61428))

(declare-fun m!1146895 () Bool)

(assert (=> b!1244636 m!1146895))

(assert (=> b!1244636 m!1146895))

(declare-fun m!1146897 () Bool)

(assert (=> b!1244636 m!1146897))

(assert (=> bm!61428 m!1146895))

(declare-fun m!1146899 () Bool)

(assert (=> bm!61428 m!1146899))

(assert (=> b!1244638 m!1146895))

(assert (=> b!1244638 m!1146895))

(declare-fun m!1146901 () Bool)

(assert (=> b!1244638 m!1146901))

(assert (=> b!1244639 m!1146895))

(assert (=> b!1244639 m!1146895))

(assert (=> b!1244639 m!1146901))

(assert (=> b!1244567 d!137095))

(declare-fun b!1244645 () Bool)

(declare-fun e!705554 () Bool)

(assert (=> b!1244645 (= e!705554 (contains!7447 Nil!27593 (select (arr!38615 a!3892) from!3270)))))

(declare-fun bm!61429 () Bool)

(declare-fun call!61432 () Bool)

(declare-fun c!121844 () Bool)

(assert (=> bm!61429 (= call!61432 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121844 (Cons!27592 (select (arr!38615 a!3892) from!3270) Nil!27593) Nil!27593)))))

(declare-fun d!137111 () Bool)

(declare-fun res!830332 () Bool)

(declare-fun e!705556 () Bool)

(assert (=> d!137111 (=> res!830332 e!705556)))

(assert (=> d!137111 (= res!830332 (bvsge from!3270 (size!39152 a!3892)))))

(assert (=> d!137111 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27593) e!705556)))

(declare-fun b!1244646 () Bool)

(declare-fun e!705555 () Bool)

(assert (=> b!1244646 (= e!705555 call!61432)))

(declare-fun b!1244647 () Bool)

(declare-fun e!705553 () Bool)

(assert (=> b!1244647 (= e!705553 e!705555)))

(assert (=> b!1244647 (= c!121844 (validKeyInArray!0 (select (arr!38615 a!3892) from!3270)))))

(declare-fun b!1244648 () Bool)

(assert (=> b!1244648 (= e!705556 e!705553)))

(declare-fun res!830333 () Bool)

(assert (=> b!1244648 (=> (not res!830333) (not e!705553))))

(assert (=> b!1244648 (= res!830333 (not e!705554))))

(declare-fun res!830331 () Bool)

(assert (=> b!1244648 (=> (not res!830331) (not e!705554))))

(assert (=> b!1244648 (= res!830331 (validKeyInArray!0 (select (arr!38615 a!3892) from!3270)))))

(declare-fun b!1244649 () Bool)

(assert (=> b!1244649 (= e!705555 call!61432)))

(assert (= (and d!137111 (not res!830332)) b!1244648))

(assert (= (and b!1244648 res!830331) b!1244645))

(assert (= (and b!1244648 res!830333) b!1244647))

(assert (= (and b!1244647 c!121844) b!1244646))

(assert (= (and b!1244647 (not c!121844)) b!1244649))

(assert (= (or b!1244646 b!1244649) bm!61429))

(assert (=> b!1244645 m!1146831))

(assert (=> b!1244645 m!1146831))

(declare-fun m!1146905 () Bool)

(assert (=> b!1244645 m!1146905))

(assert (=> bm!61429 m!1146831))

(declare-fun m!1146907 () Bool)

(assert (=> bm!61429 m!1146907))

(assert (=> b!1244647 m!1146831))

(assert (=> b!1244647 m!1146831))

(assert (=> b!1244647 m!1146839))

(assert (=> b!1244648 m!1146831))

(assert (=> b!1244648 m!1146831))

(assert (=> b!1244648 m!1146839))

(assert (=> b!1244572 d!137111))

(declare-fun d!137115 () Bool)

(declare-fun lt!562766 () Bool)

(declare-fun content!618 (List!27596) (Set (_ BitVec 64)))

(assert (=> d!137115 (= lt!562766 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!618 Nil!27593)))))

(declare-fun e!705575 () Bool)

(assert (=> d!137115 (= lt!562766 e!705575)))

(declare-fun res!830351 () Bool)

(assert (=> d!137115 (=> (not res!830351) (not e!705575))))

(assert (=> d!137115 (= res!830351 (is-Cons!27592 Nil!27593))))

(assert (=> d!137115 (= (contains!7447 Nil!27593 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562766)))

(declare-fun b!1244669 () Bool)

(declare-fun e!705576 () Bool)

(assert (=> b!1244669 (= e!705575 e!705576)))

(declare-fun res!830352 () Bool)

(assert (=> b!1244669 (=> res!830352 e!705576)))

(assert (=> b!1244669 (= res!830352 (= (h!28801 Nil!27593) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1244670 () Bool)

(assert (=> b!1244670 (= e!705576 (contains!7447 (t!41072 Nil!27593) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137115 res!830351) b!1244669))

(assert (= (and b!1244669 (not res!830352)) b!1244670))

(declare-fun m!1146929 () Bool)

(assert (=> d!137115 m!1146929))

(declare-fun m!1146931 () Bool)

(assert (=> d!137115 m!1146931))

(declare-fun m!1146933 () Bool)

(assert (=> b!1244670 m!1146933))

(assert (=> b!1244574 d!137115))

(declare-fun d!137127 () Bool)

(assert (=> d!137127 (= (validKeyInArray!0 (select (arr!38615 a!3892) from!3270)) (and (not (= (select (arr!38615 a!3892) from!3270) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38615 a!3892) from!3270) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1244568 d!137127))

(declare-fun d!137129 () Bool)

(assert (=> d!137129 (= (array_inv!29391 a!3892) (bvsge (size!39152 a!3892) #b00000000000000000000000000000000))))

