; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104110 () Bool)

(assert start!104110)

(declare-fun res!830424 () Bool)

(declare-fun e!705649 () Bool)

(assert (=> start!104110 (=> (not res!830424) (not e!705649))))

(declare-datatypes ((array!80076 0))(
  ( (array!80077 (arr!38624 (Array (_ BitVec 32) (_ BitVec 64))) (size!39161 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80076)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104110 (= res!830424 (and (bvslt (size!39161 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39161 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39161 a!3892))))))

(assert (=> start!104110 e!705649))

(declare-fun array_inv!29400 (array!80076) Bool)

(assert (=> start!104110 (array_inv!29400 a!3892)))

(assert (=> start!104110 true))

(declare-fun b!1244743 () Bool)

(declare-fun res!830425 () Bool)

(assert (=> b!1244743 (=> (not res!830425) (not e!705649))))

(declare-datatypes ((List!27605 0))(
  ( (Nil!27602) (Cons!27601 (h!28810 (_ BitVec 64)) (t!41081 List!27605)) )
))
(declare-fun arrayNoDuplicates!0 (array!80076 (_ BitVec 32) List!27605) Bool)

(assert (=> b!1244743 (= res!830425 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27602))))

(declare-fun b!1244744 () Bool)

(declare-fun res!830423 () Bool)

(assert (=> b!1244744 (=> (not res!830423) (not e!705649))))

(assert (=> b!1244744 (= res!830423 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39161 a!3892)) (= newFrom!287 (size!39161 a!3892)) (bvsge newFrom!287 #b00000000000000000000000000000000)))))

(declare-fun b!1244745 () Bool)

(declare-fun noDuplicate!2040 (List!27605) Bool)

(assert (=> b!1244745 (= e!705649 (not (noDuplicate!2040 Nil!27602)))))

(assert (= (and start!104110 res!830424) b!1244743))

(assert (= (and b!1244743 res!830425) b!1244744))

(assert (= (and b!1244744 res!830423) b!1244745))

(declare-fun m!1146999 () Bool)

(assert (=> start!104110 m!1146999))

(declare-fun m!1147001 () Bool)

(assert (=> b!1244743 m!1147001))

(declare-fun m!1147003 () Bool)

(assert (=> b!1244745 m!1147003))

(push 1)

(assert (not start!104110))

(assert (not b!1244743))

(assert (not b!1244745))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!137155 () Bool)

(assert (=> d!137155 (= (array_inv!29400 a!3892) (bvsge (size!39161 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104110 d!137155))

(declare-fun b!1244790 () Bool)

(declare-fun e!705690 () Bool)

(declare-fun e!705687 () Bool)

(assert (=> b!1244790 (= e!705690 e!705687)))

(declare-fun c!121855 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244790 (= c!121855 (validKeyInArray!0 (select (arr!38624 a!3892) from!3270)))))

(declare-fun d!137157 () Bool)

(declare-fun res!830454 () Bool)

(declare-fun e!705689 () Bool)

(assert (=> d!137157 (=> res!830454 e!705689)))

(assert (=> d!137157 (= res!830454 (bvsge from!3270 (size!39161 a!3892)))))

(assert (=> d!137157 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27602) e!705689)))

(declare-fun b!1244791 () Bool)

(declare-fun call!61443 () Bool)

(assert (=> b!1244791 (= e!705687 call!61443)))

(declare-fun b!1244792 () Bool)

(assert (=> b!1244792 (= e!705687 call!61443)))

(declare-fun b!1244793 () Bool)

(declare-fun e!705688 () Bool)

(declare-fun contains!7449 (List!27605 (_ BitVec 64)) Bool)

(assert (=> b!1244793 (= e!705688 (contains!7449 Nil!27602 (select (arr!38624 a!3892) from!3270)))))

(declare-fun bm!61440 () Bool)

(assert (=> bm!61440 (= call!61443 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121855 (Cons!27601 (select (arr!38624 a!3892) from!3270) Nil!27602) Nil!27602)))))

(declare-fun b!1244794 () Bool)

(assert (=> b!1244794 (= e!705689 e!705690)))

(declare-fun res!830456 () Bool)

(assert (=> b!1244794 (=> (not res!830456) (not e!705690))))

(assert (=> b!1244794 (= res!830456 (not e!705688))))

(declare-fun res!830455 () Bool)

(assert (=> b!1244794 (=> (not res!830455) (not e!705688))))

(assert (=> b!1244794 (= res!830455 (validKeyInArray!0 (select (arr!38624 a!3892) from!3270)))))

(assert (= (and d!137157 (not res!830454)) b!1244794))

(assert (= (and b!1244794 res!830455) b!1244793))

(assert (= (and b!1244794 res!830456) b!1244790))

(assert (= (and b!1244790 c!121855) b!1244791))

(assert (= (and b!1244790 (not c!121855)) b!1244792))

