; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104344 () Bool)

(assert start!104344)

(declare-fun b!1245656 () Bool)

(declare-fun e!706421 () Bool)

(declare-fun e!706422 () Bool)

(assert (=> b!1245656 (= e!706421 e!706422)))

(declare-fun res!831204 () Bool)

(assert (=> b!1245656 (=> res!831204 e!706422)))

(declare-datatypes ((List!27648 0))(
  ( (Nil!27645) (Cons!27644 (h!28853 (_ BitVec 64)) (t!41124 List!27648)) )
))
(declare-fun contains!7466 (List!27648 (_ BitVec 64)) Bool)

(assert (=> b!1245656 (= res!831204 (contains!7466 Nil!27645 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245657 () Bool)

(declare-fun res!831203 () Bool)

(declare-fun e!706423 () Bool)

(assert (=> b!1245657 (=> (not res!831203) (not e!706423))))

(declare-datatypes ((array!80180 0))(
  ( (array!80181 (arr!38667 (Array (_ BitVec 32) (_ BitVec 64))) (size!39204 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80180)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!80180 (_ BitVec 32) List!27648) Bool)

(assert (=> b!1245657 (= res!831203 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27645))))

(declare-fun b!1245658 () Bool)

(declare-fun res!831202 () Bool)

(assert (=> b!1245658 (=> (not res!831202) (not e!706421))))

(declare-fun lt!562904 () List!27648)

(declare-fun noDuplicate!2056 (List!27648) Bool)

(assert (=> b!1245658 (= res!831202 (noDuplicate!2056 lt!562904))))

(declare-fun b!1245659 () Bool)

(declare-fun res!831200 () Bool)

(assert (=> b!1245659 (=> (not res!831200) (not e!706421))))

(assert (=> b!1245659 (= res!831200 (not (contains!7466 lt!562904 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1245660 () Bool)

(assert (=> b!1245660 (= e!706422 (contains!7466 Nil!27645 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!831206 () Bool)

(assert (=> start!104344 (=> (not res!831206) (not e!706423))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!104344 (= res!831206 (and (bvslt (size!39204 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39204 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39204 a!3892))))))

(assert (=> start!104344 e!706423))

(declare-fun array_inv!29443 (array!80180) Bool)

(assert (=> start!104344 (array_inv!29443 a!3892)))

(assert (=> start!104344 true))

(declare-fun b!1245661 () Bool)

(declare-fun res!831205 () Bool)

(assert (=> b!1245661 (=> (not res!831205) (not e!706423))))

(assert (=> b!1245661 (= res!831205 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39204 a!3892)) (not (= newFrom!287 (size!39204 a!3892)))))))

(declare-fun b!1245662 () Bool)

(declare-fun res!831208 () Bool)

(assert (=> b!1245662 (=> (not res!831208) (not e!706421))))

(assert (=> b!1245662 (= res!831208 (not (contains!7466 lt!562904 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1245663 () Bool)

(assert (=> b!1245663 (= e!706423 e!706421)))

(declare-fun res!831201 () Bool)

(assert (=> b!1245663 (=> (not res!831201) (not e!706421))))

(assert (=> b!1245663 (= res!831201 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1245663 (= lt!562904 (Cons!27644 (select (arr!38667 a!3892) from!3270) Nil!27645))))

(declare-fun b!1245664 () Bool)

(declare-fun res!831207 () Bool)

(assert (=> b!1245664 (=> (not res!831207) (not e!706423))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1245664 (= res!831207 (validKeyInArray!0 (select (arr!38667 a!3892) from!3270)))))

(assert (= (and start!104344 res!831206) b!1245657))

(assert (= (and b!1245657 res!831203) b!1245661))

(assert (= (and b!1245661 res!831205) b!1245664))

(assert (= (and b!1245664 res!831207) b!1245663))

(assert (= (and b!1245663 res!831201) b!1245658))

(assert (= (and b!1245658 res!831202) b!1245662))

(assert (= (and b!1245662 res!831208) b!1245659))

(assert (= (and b!1245659 res!831200) b!1245656))

(assert (= (and b!1245656 (not res!831204)) b!1245660))

(declare-fun m!1147697 () Bool)

(assert (=> b!1245663 m!1147697))

(declare-fun m!1147699 () Bool)

(assert (=> b!1245662 m!1147699))

(declare-fun m!1147701 () Bool)

(assert (=> start!104344 m!1147701))

(assert (=> b!1245664 m!1147697))

(assert (=> b!1245664 m!1147697))

(declare-fun m!1147703 () Bool)

(assert (=> b!1245664 m!1147703))

(declare-fun m!1147705 () Bool)

(assert (=> b!1245656 m!1147705))

(declare-fun m!1147707 () Bool)

(assert (=> b!1245659 m!1147707))

(declare-fun m!1147709 () Bool)

(assert (=> b!1245660 m!1147709))

(declare-fun m!1147711 () Bool)

(assert (=> b!1245657 m!1147711))

(declare-fun m!1147713 () Bool)

(assert (=> b!1245658 m!1147713))

(push 1)

(assert (not b!1245659))

(assert (not start!104344))

(assert (not b!1245662))

(assert (not b!1245658))

(assert (not b!1245664))

(assert (not b!1245657))

(assert (not b!1245660))

(assert (not b!1245656))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!137393 () Bool)

(declare-fun lt!562917 () Bool)

(declare-fun content!631 (List!27648) (Set (_ BitVec 64)))

(assert (=> d!137393 (= lt!562917 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!631 Nil!27645)))))

(declare-fun e!706471 () Bool)

(assert (=> d!137393 (= lt!562917 e!706471)))

(declare-fun res!831285 () Bool)

(assert (=> d!137393 (=> (not res!831285) (not e!706471))))

(assert (=> d!137393 (= res!831285 (is-Cons!27644 Nil!27645))))

(assert (=> d!137393 (= (contains!7466 Nil!27645 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562917)))

(declare-fun b!1245739 () Bool)

(declare-fun e!706470 () Bool)

(assert (=> b!1245739 (= e!706471 e!706470)))

(declare-fun res!831286 () Bool)

(assert (=> b!1245739 (=> res!831286 e!706470)))

(assert (=> b!1245739 (= res!831286 (= (h!28853 Nil!27645) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245740 () Bool)

(assert (=> b!1245740 (= e!706470 (contains!7466 (t!41124 Nil!27645) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137393 res!831285) b!1245739))

(assert (= (and b!1245739 (not res!831286)) b!1245740))

(declare-fun m!1147767 () Bool)

(assert (=> d!137393 m!1147767))

(declare-fun m!1147769 () Bool)

(assert (=> d!137393 m!1147769))

(declare-fun m!1147771 () Bool)

(assert (=> b!1245740 m!1147771))

(assert (=> b!1245656 d!137393))

(declare-fun b!1245789 () Bool)

(declare-fun e!706511 () Bool)

(declare-fun call!61502 () Bool)

(assert (=> b!1245789 (= e!706511 call!61502)))

(declare-fun b!1245790 () Bool)

(declare-fun e!706513 () Bool)

(assert (=> b!1245790 (= e!706513 (contains!7466 Nil!27645 (select (arr!38667 a!3892) from!3270)))))

(declare-fun b!1245791 () Bool)

(assert (=> b!1245791 (= e!706511 call!61502)))

(declare-fun d!137405 () Bool)

(declare-fun res!831319 () Bool)

(declare-fun e!706512 () Bool)

(assert (=> d!137405 (=> res!831319 e!706512)))

(assert (=> d!137405 (= res!831319 (bvsge from!3270 (size!39204 a!3892)))))

(assert (=> d!137405 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27645) e!706512)))

(declare-fun b!1245792 () Bool)

(declare-fun e!706510 () Bool)

(assert (=> b!1245792 (= e!706512 e!706510)))

(declare-fun res!831318 () Bool)

(assert (=> b!1245792 (=> (not res!831318) (not e!706510))))

(assert (=> b!1245792 (= res!831318 (not e!706513))))

(declare-fun res!831317 () Bool)

(assert (=> b!1245792 (=> (not res!831317) (not e!706513))))

(assert (=> b!1245792 (= res!831317 (validKeyInArray!0 (select (arr!38667 a!3892) from!3270)))))

(declare-fun bm!61499 () Bool)

(declare-fun c!121923 () Bool)

(assert (=> bm!61499 (= call!61502 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121923 (Cons!27644 (select (arr!38667 a!3892) from!3270) Nil!27645) Nil!27645)))))

(declare-fun b!1245793 () Bool)

(assert (=> b!1245793 (= e!706510 e!706511)))

(assert (=> b!1245793 (= c!121923 (validKeyInArray!0 (select (arr!38667 a!3892) from!3270)))))

(assert (= (and d!137405 (not res!831319)) b!1245792))

(assert (= (and b!1245792 res!831317) b!1245790))

(assert (= (and b!1245792 res!831318) b!1245793))

(assert (= (and b!1245793 c!121923) b!1245789))

(assert (= (and b!1245793 (not c!121923)) b!1245791))

(assert (= (or b!1245789 b!1245791) bm!61499))

(assert (=> b!1245790 m!1147697))

(assert (=> b!1245790 m!1147697))

(declare-fun m!1147795 () Bool)

(assert (=> b!1245790 m!1147795))

(assert (=> b!1245792 m!1147697))

(assert (=> b!1245792 m!1147697))

(assert (=> b!1245792 m!1147703))

(assert (=> bm!61499 m!1147697))

(declare-fun m!1147797 () Bool)

(assert (=> bm!61499 m!1147797))

(assert (=> b!1245793 m!1147697))

(assert (=> b!1245793 m!1147697))

(assert (=> b!1245793 m!1147703))

(assert (=> b!1245657 d!137405))

(declare-fun d!137419 () Bool)

(declare-fun lt!562923 () Bool)

(assert (=> d!137419 (= lt!562923 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!631 lt!562904)))))

(declare-fun e!706521 () Bool)

(assert (=> d!137419 (= lt!562923 e!706521)))

(declare-fun res!831326 () Bool)

(assert (=> d!137419 (=> (not res!831326) (not e!706521))))

(assert (=> d!137419 (= res!831326 (is-Cons!27644 lt!562904))))

(assert (=> d!137419 (= (contains!7466 lt!562904 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562923)))

(declare-fun b!1245800 () Bool)

(declare-fun e!706520 () Bool)

(assert (=> b!1245800 (= e!706521 e!706520)))

(declare-fun res!831327 () Bool)

(assert (=> b!1245800 (=> res!831327 e!706520)))

(assert (=> b!1245800 (= res!831327 (= (h!28853 lt!562904) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245801 () Bool)

(assert (=> b!1245801 (= e!706520 (contains!7466 (t!41124 lt!562904) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137419 res!831326) b!1245800))

(assert (= (and b!1245800 (not res!831327)) b!1245801))

(declare-fun m!1147803 () Bool)

(assert (=> d!137419 m!1147803))

(declare-fun m!1147805 () Bool)

(assert (=> d!137419 m!1147805))

(declare-fun m!1147807 () Bool)

(assert (=> b!1245801 m!1147807))

(assert (=> b!1245662 d!137419))

(declare-fun d!137423 () Bool)

(assert (=> d!137423 (= (array_inv!29443 a!3892) (bvsge (size!39204 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104344 d!137423))

(declare-fun d!137429 () Bool)

(declare-fun lt!562927 () Bool)

(assert (=> d!137429 (= lt!562927 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!631 lt!562904)))))

(declare-fun e!706529 () Bool)

(assert (=> d!137429 (= lt!562927 e!706529)))

(declare-fun res!831334 () Bool)

(assert (=> d!137429 (=> (not res!831334) (not e!706529))))

(assert (=> d!137429 (= res!831334 (is-Cons!27644 lt!562904))))

(assert (=> d!137429 (= (contains!7466 lt!562904 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562927)))

(declare-fun b!1245808 () Bool)

(declare-fun e!706528 () Bool)

(assert (=> b!1245808 (= e!706529 e!706528)))

(declare-fun res!831335 () Bool)

(assert (=> b!1245808 (=> res!831335 e!706528)))

(assert (=> b!1245808 (= res!831335 (= (h!28853 lt!562904) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245809 () Bool)

(assert (=> b!1245809 (= e!706528 (contains!7466 (t!41124 lt!562904) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137429 res!831334) b!1245808))

(assert (= (and b!1245808 (not res!831335)) b!1245809))

(assert (=> d!137429 m!1147803))

(declare-fun m!1147823 () Bool)

(assert (=> d!137429 m!1147823))

(declare-fun m!1147825 () Bool)

(assert (=> b!1245809 m!1147825))

(assert (=> b!1245659 d!137429))

(declare-fun d!137431 () Bool)

(assert (=> d!137431 (= (validKeyInArray!0 (select (arr!38667 a!3892) from!3270)) (and (not (= (select (arr!38667 a!3892) from!3270) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38667 a!3892) from!3270) #b1000000000000000000000000000000000000000000000000000000000000000))))))

