; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104272 () Bool)

(assert start!104272)

(declare-fun b!1245329 () Bool)

(declare-fun e!706165 () Bool)

(declare-datatypes ((array!80166 0))(
  ( (array!80167 (arr!38663 (Array (_ BitVec 32) (_ BitVec 64))) (size!39200 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80166)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27644 0))(
  ( (Nil!27641) (Cons!27640 (h!28849 (_ BitVec 64)) (t!41120 List!27644)) )
))
(declare-fun noDuplicate!2052 (List!27644) Bool)

(assert (=> b!1245329 (= e!706165 (not (noDuplicate!2052 (Cons!27640 (select (arr!38663 a!3892) from!3270) Nil!27641))))))

(declare-fun res!830941 () Bool)

(assert (=> start!104272 (=> (not res!830941) (not e!706165))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!104272 (= res!830941 (and (bvslt (size!39200 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39200 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39200 a!3892))))))

(assert (=> start!104272 e!706165))

(declare-fun array_inv!29439 (array!80166) Bool)

(assert (=> start!104272 (array_inv!29439 a!3892)))

(assert (=> start!104272 true))

(declare-fun b!1245330 () Bool)

(declare-fun res!830938 () Bool)

(assert (=> b!1245330 (=> (not res!830938) (not e!706165))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1245330 (= res!830938 (validKeyInArray!0 (select (arr!38663 a!3892) from!3270)))))

(declare-fun b!1245331 () Bool)

(declare-fun res!830940 () Bool)

(assert (=> b!1245331 (=> (not res!830940) (not e!706165))))

(assert (=> b!1245331 (= res!830940 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39200 a!3892)) (not (= newFrom!287 (size!39200 a!3892)))))))

(declare-fun b!1245332 () Bool)

(declare-fun res!830937 () Bool)

(assert (=> b!1245332 (=> (not res!830937) (not e!706165))))

(assert (=> b!1245332 (= res!830937 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(declare-fun b!1245333 () Bool)

(declare-fun res!830939 () Bool)

(assert (=> b!1245333 (=> (not res!830939) (not e!706165))))

(declare-fun arrayNoDuplicates!0 (array!80166 (_ BitVec 32) List!27644) Bool)

(assert (=> b!1245333 (= res!830939 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27641))))

(assert (= (and start!104272 res!830941) b!1245333))

(assert (= (and b!1245333 res!830939) b!1245331))

(assert (= (and b!1245331 res!830940) b!1245330))

(assert (= (and b!1245330 res!830938) b!1245332))

(assert (= (and b!1245332 res!830937) b!1245329))

(declare-fun m!1147427 () Bool)

(assert (=> b!1245329 m!1147427))

(declare-fun m!1147429 () Bool)

(assert (=> b!1245329 m!1147429))

(declare-fun m!1147431 () Bool)

(assert (=> start!104272 m!1147431))

(assert (=> b!1245330 m!1147427))

(assert (=> b!1245330 m!1147427))

(declare-fun m!1147433 () Bool)

(assert (=> b!1245330 m!1147433))

(declare-fun m!1147435 () Bool)

(assert (=> b!1245333 m!1147435))

(push 1)

(assert (not b!1245333))

(assert (not b!1245330))

(assert (not start!104272))

(assert (not b!1245329))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!137285 () Bool)

(declare-fun res!830979 () Bool)

(declare-fun e!706211 () Bool)

(assert (=> d!137285 (=> res!830979 e!706211)))

(assert (=> d!137285 (= res!830979 (bvsge from!3270 (size!39200 a!3892)))))

(assert (=> d!137285 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27641) e!706211)))

(declare-fun b!1245386 () Bool)

(declare-fun e!706214 () Bool)

(declare-fun contains!7462 (List!27644 (_ BitVec 64)) Bool)

(assert (=> b!1245386 (= e!706214 (contains!7462 Nil!27641 (select (arr!38663 a!3892) from!3270)))))

(declare-fun b!1245387 () Bool)

(declare-fun e!706213 () Bool)

(declare-fun call!61479 () Bool)

(assert (=> b!1245387 (= e!706213 call!61479)))

(declare-fun b!1245388 () Bool)

(declare-fun e!706212 () Bool)

(assert (=> b!1245388 (= e!706212 e!706213)))

(declare-fun c!121891 () Bool)

(assert (=> b!1245388 (= c!121891 (validKeyInArray!0 (select (arr!38663 a!3892) from!3270)))))

(declare-fun bm!61476 () Bool)

(assert (=> bm!61476 (= call!61479 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121891 (Cons!27640 (select (arr!38663 a!3892) from!3270) Nil!27641) Nil!27641)))))

(declare-fun b!1245389 () Bool)

(assert (=> b!1245389 (= e!706211 e!706212)))

(declare-fun res!830978 () Bool)

(assert (=> b!1245389 (=> (not res!830978) (not e!706212))))

(assert (=> b!1245389 (= res!830978 (not e!706214))))

(declare-fun res!830980 () Bool)

(assert (=> b!1245389 (=> (not res!830980) (not e!706214))))

(assert (=> b!1245389 (= res!830980 (validKeyInArray!0 (select (arr!38663 a!3892) from!3270)))))

(declare-fun b!1245390 () Bool)

(assert (=> b!1245390 (= e!706213 call!61479)))

(assert (= (and d!137285 (not res!830979)) b!1245389))

(assert (= (and b!1245389 res!830980) b!1245386))

(assert (= (and b!1245389 res!830978) b!1245388))

(assert (= (and b!1245388 c!121891) b!1245387))

(assert (= (and b!1245388 (not c!121891)) b!1245390))

(assert (= (or b!1245387 b!1245390) bm!61476))

(assert (=> b!1245386 m!1147427))

(assert (=> b!1245386 m!1147427))

(declare-fun m!1147453 () Bool)

(assert (=> b!1245386 m!1147453))

(assert (=> b!1245388 m!1147427))

(assert (=> b!1245388 m!1147427))

(assert (=> b!1245388 m!1147433))

(assert (=> bm!61476 m!1147427))

(declare-fun m!1147455 () Bool)

(assert (=> bm!61476 m!1147455))

(assert (=> b!1245389 m!1147427))

(assert (=> b!1245389 m!1147427))

(assert (=> b!1245389 m!1147433))

(assert (=> b!1245333 d!137285))

(declare-fun d!137287 () Bool)

(assert (=> d!137287 (= (validKeyInArray!0 (select (arr!38663 a!3892) from!3270)) (and (not (= (select (arr!38663 a!3892) from!3270) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38663 a!3892) from!3270) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1245330 d!137287))

(declare-fun d!137289 () Bool)

(assert (=> d!137289 (= (array_inv!29439 a!3892) (bvsge (size!39200 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104272 d!137289))

(declare-fun d!137291 () Bool)

(declare-fun res!830985 () Bool)

(declare-fun e!706219 () Bool)

(assert (=> d!137291 (=> res!830985 e!706219)))

(assert (=> d!137291 (= res!830985 (is-Nil!27641 (Cons!27640 (select (arr!38663 a!3892) from!3270) Nil!27641)))))

(assert (=> d!137291 (= (noDuplicate!2052 (Cons!27640 (select (arr!38663 a!3892) from!3270) Nil!27641)) e!706219)))

(declare-fun b!1245395 () Bool)

(declare-fun e!706220 () Bool)

(assert (=> b!1245395 (= e!706219 e!706220)))

(declare-fun res!830986 () Bool)

(assert (=> b!1245395 (=> (not res!830986) (not e!706220))))

(assert (=> b!1245395 (= res!830986 (not (contains!7462 (t!41120 (Cons!27640 (select (arr!38663 a!3892) from!3270) Nil!27641)) (h!28849 (Cons!27640 (select (arr!38663 a!3892) from!3270) Nil!27641)))))))

(declare-fun b!1245396 () Bool)

(assert (=> b!1245396 (= e!706220 (noDuplicate!2052 (t!41120 (Cons!27640 (select (arr!38663 a!3892) from!3270) Nil!27641))))))

(assert (= (and d!137291 (not res!830985)) b!1245395))

(assert (= (and b!1245395 res!830986) b!1245396))

(declare-fun m!1147457 () Bool)

(assert (=> b!1245395 m!1147457))

(declare-fun m!1147459 () Bool)

(assert (=> b!1245396 m!1147459))

(assert (=> b!1245329 d!137291))

(push 1)

(assert (not b!1245388))

(assert (not bm!61476))

(assert (not b!1245389))

(assert (not b!1245395))

(assert (not b!1245396))

(assert (not b!1245386))

(check-sat)

(pop 1)

(push 1)

(check-sat)

