; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104176 () Bool)

(assert start!104176)

(declare-fun res!830638 () Bool)

(declare-fun e!705863 () Bool)

(assert (=> start!104176 (=> (not res!830638) (not e!705863))))

(declare-datatypes ((array!80106 0))(
  ( (array!80107 (arr!38636 (Array (_ BitVec 32) (_ BitVec 64))) (size!39173 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80106)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104176 (= res!830638 (and (bvslt (size!39173 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39173 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39173 a!3892))))))

(assert (=> start!104176 e!705863))

(declare-fun array_inv!29412 (array!80106) Bool)

(assert (=> start!104176 (array_inv!29412 a!3892)))

(assert (=> start!104176 true))

(declare-fun b!1244992 () Bool)

(declare-fun res!830636 () Bool)

(assert (=> b!1244992 (=> (not res!830636) (not e!705863))))

(declare-datatypes ((List!27617 0))(
  ( (Nil!27614) (Cons!27613 (h!28822 (_ BitVec 64)) (t!41093 List!27617)) )
))
(declare-fun arrayNoDuplicates!0 (array!80106 (_ BitVec 32) List!27617) Bool)

(assert (=> b!1244992 (= res!830636 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27614))))

(declare-fun b!1244993 () Bool)

(declare-fun res!830637 () Bool)

(assert (=> b!1244993 (=> (not res!830637) (not e!705863))))

(assert (=> b!1244993 (= res!830637 (and (= from!3270 newFrom!287) (bvsge newFrom!287 #b00000000000000000000000000000000)))))

(declare-fun b!1244994 () Bool)

(declare-fun noDuplicate!2046 (List!27617) Bool)

(assert (=> b!1244994 (= e!705863 (not (noDuplicate!2046 Nil!27614)))))

(assert (= (and start!104176 res!830638) b!1244992))

(assert (= (and b!1244992 res!830636) b!1244993))

(assert (= (and b!1244993 res!830637) b!1244994))

(declare-fun m!1147173 () Bool)

(assert (=> start!104176 m!1147173))

(declare-fun m!1147175 () Bool)

(assert (=> b!1244992 m!1147175))

(declare-fun m!1147177 () Bool)

(assert (=> b!1244994 m!1147177))

(push 1)

(assert (not b!1244992))

(assert (not start!104176))

(assert (not b!1244994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!137207 () Bool)

(declare-fun res!830668 () Bool)

(declare-fun e!705902 () Bool)

(assert (=> d!137207 (=> res!830668 e!705902)))

(assert (=> d!137207 (= res!830668 (bvsge from!3270 (size!39173 a!3892)))))

(assert (=> d!137207 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27614) e!705902)))

(declare-fun c!121873 () Bool)

(declare-fun bm!61458 () Bool)

(declare-fun call!61461 () Bool)

(assert (=> bm!61458 (= call!61461 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121873 (Cons!27613 (select (arr!38636 a!3892) from!3270) Nil!27614) Nil!27614)))))

(declare-fun b!1245039 () Bool)

(declare-fun e!705901 () Bool)

(assert (=> b!1245039 (= e!705901 call!61461)))

(declare-fun b!1245040 () Bool)

(declare-fun e!705903 () Bool)

(assert (=> b!1245040 (= e!705902 e!705903)))

(declare-fun res!830669 () Bool)

(assert (=> b!1245040 (=> (not res!830669) (not e!705903))))

(declare-fun e!705900 () Bool)

(assert (=> b!1245040 (= res!830669 (not e!705900))))

(declare-fun res!830667 () Bool)

(assert (=> b!1245040 (=> (not res!830667) (not e!705900))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1245040 (= res!830667 (validKeyInArray!0 (select (arr!38636 a!3892) from!3270)))))

(declare-fun b!1245041 () Bool)

(assert (=> b!1245041 (= e!705901 call!61461)))

(declare-fun b!1245042 () Bool)

(declare-fun contains!7456 (List!27617 (_ BitVec 64)) Bool)

(assert (=> b!1245042 (= e!705900 (contains!7456 Nil!27614 (select (arr!38636 a!3892) from!3270)))))

(declare-fun b!1245043 () Bool)

(assert (=> b!1245043 (= e!705903 e!705901)))

(assert (=> b!1245043 (= c!121873 (validKeyInArray!0 (select (arr!38636 a!3892) from!3270)))))

(assert (= (and d!137207 (not res!830668)) b!1245040))

(assert (= (and b!1245040 res!830667) b!1245042))

(assert (= (and b!1245040 res!830669) b!1245043))

(assert (= (and b!1245043 c!121873) b!1245039))

(assert (= (and b!1245043 (not c!121873)) b!1245041))

(assert (= (or b!1245039 b!1245041) bm!61458))

(declare-fun m!1147195 () Bool)

(assert (=> bm!61458 m!1147195))

(declare-fun m!1147197 () Bool)

(assert (=> bm!61458 m!1147197))

(assert (=> b!1245040 m!1147195))

(assert (=> b!1245040 m!1147195))

