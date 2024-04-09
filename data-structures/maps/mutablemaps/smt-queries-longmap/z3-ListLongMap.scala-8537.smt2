; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104174 () Bool)

(assert start!104174)

(declare-fun res!830628 () Bool)

(declare-fun e!705857 () Bool)

(assert (=> start!104174 (=> (not res!830628) (not e!705857))))

(declare-datatypes ((array!80104 0))(
  ( (array!80105 (arr!38635 (Array (_ BitVec 32) (_ BitVec 64))) (size!39172 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80104)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104174 (= res!830628 (and (bvslt (size!39172 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39172 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39172 a!3892))))))

(assert (=> start!104174 e!705857))

(declare-fun array_inv!29411 (array!80104) Bool)

(assert (=> start!104174 (array_inv!29411 a!3892)))

(assert (=> start!104174 true))

(declare-fun b!1244983 () Bool)

(declare-fun res!830629 () Bool)

(assert (=> b!1244983 (=> (not res!830629) (not e!705857))))

(declare-datatypes ((List!27616 0))(
  ( (Nil!27613) (Cons!27612 (h!28821 (_ BitVec 64)) (t!41092 List!27616)) )
))
(declare-fun arrayNoDuplicates!0 (array!80104 (_ BitVec 32) List!27616) Bool)

(assert (=> b!1244983 (= res!830629 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27613))))

(declare-fun b!1244984 () Bool)

(declare-fun res!830627 () Bool)

(assert (=> b!1244984 (=> (not res!830627) (not e!705857))))

(assert (=> b!1244984 (= res!830627 (and (= from!3270 newFrom!287) (bvsge newFrom!287 #b00000000000000000000000000000000)))))

(declare-fun b!1244985 () Bool)

(declare-fun noDuplicate!2045 (List!27616) Bool)

(assert (=> b!1244985 (= e!705857 (not (noDuplicate!2045 Nil!27613)))))

(assert (= (and start!104174 res!830628) b!1244983))

(assert (= (and b!1244983 res!830629) b!1244984))

(assert (= (and b!1244984 res!830627) b!1244985))

(declare-fun m!1147167 () Bool)

(assert (=> start!104174 m!1147167))

(declare-fun m!1147169 () Bool)

(assert (=> b!1244983 m!1147169))

(declare-fun m!1147171 () Bool)

(assert (=> b!1244985 m!1147171))

(check-sat (not b!1244983) (not start!104174) (not b!1244985))
(check-sat)
(get-model)

(declare-fun b!1245030 () Bool)

(declare-fun e!705893 () Bool)

(declare-fun e!705894 () Bool)

(assert (=> b!1245030 (= e!705893 e!705894)))

(declare-fun c!121872 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1245030 (= c!121872 (validKeyInArray!0 (select (arr!38635 a!3892) from!3270)))))

(declare-fun bm!61457 () Bool)

(declare-fun call!61460 () Bool)

(assert (=> bm!61457 (= call!61460 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121872 (Cons!27612 (select (arr!38635 a!3892) from!3270) Nil!27613) Nil!27613)))))

(declare-fun b!1245031 () Bool)

(declare-fun e!705895 () Bool)

(declare-fun contains!7455 (List!27616 (_ BitVec 64)) Bool)

(assert (=> b!1245031 (= e!705895 (contains!7455 Nil!27613 (select (arr!38635 a!3892) from!3270)))))

(declare-fun b!1245032 () Bool)

(assert (=> b!1245032 (= e!705894 call!61460)))

(declare-fun b!1245033 () Bool)

(assert (=> b!1245033 (= e!705894 call!61460)))

(declare-fun d!137205 () Bool)

(declare-fun res!830662 () Bool)

(declare-fun e!705892 () Bool)

(assert (=> d!137205 (=> res!830662 e!705892)))

(assert (=> d!137205 (= res!830662 (bvsge from!3270 (size!39172 a!3892)))))

(assert (=> d!137205 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27613) e!705892)))

(declare-fun b!1245034 () Bool)

(assert (=> b!1245034 (= e!705892 e!705893)))

(declare-fun res!830661 () Bool)

(assert (=> b!1245034 (=> (not res!830661) (not e!705893))))

(assert (=> b!1245034 (= res!830661 (not e!705895))))

(declare-fun res!830660 () Bool)

(assert (=> b!1245034 (=> (not res!830660) (not e!705895))))

(assert (=> b!1245034 (= res!830660 (validKeyInArray!0 (select (arr!38635 a!3892) from!3270)))))

(assert (= (and d!137205 (not res!830662)) b!1245034))

(assert (= (and b!1245034 res!830660) b!1245031))

(assert (= (and b!1245034 res!830661) b!1245030))

(assert (= (and b!1245030 c!121872) b!1245033))

(assert (= (and b!1245030 (not c!121872)) b!1245032))

(assert (= (or b!1245033 b!1245032) bm!61457))

(declare-fun m!1147187 () Bool)

(assert (=> b!1245030 m!1147187))

(assert (=> b!1245030 m!1147187))

(declare-fun m!1147189 () Bool)

(assert (=> b!1245030 m!1147189))

(assert (=> bm!61457 m!1147187))

(declare-fun m!1147191 () Bool)

(assert (=> bm!61457 m!1147191))

(assert (=> b!1245031 m!1147187))

(assert (=> b!1245031 m!1147187))

(declare-fun m!1147193 () Bool)

(assert (=> b!1245031 m!1147193))

(assert (=> b!1245034 m!1147187))

(assert (=> b!1245034 m!1147187))

(assert (=> b!1245034 m!1147189))

(assert (=> b!1244983 d!137205))

(declare-fun d!137213 () Bool)

(assert (=> d!137213 (= (array_inv!29411 a!3892) (bvsge (size!39172 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104174 d!137213))

(declare-fun d!137215 () Bool)

(declare-fun res!830676 () Bool)

(declare-fun e!705910 () Bool)

(assert (=> d!137215 (=> res!830676 e!705910)))

(get-info :version)

(assert (=> d!137215 (= res!830676 ((_ is Nil!27613) Nil!27613))))

(assert (=> d!137215 (= (noDuplicate!2045 Nil!27613) e!705910)))

(declare-fun b!1245050 () Bool)

(declare-fun e!705911 () Bool)

(assert (=> b!1245050 (= e!705910 e!705911)))

(declare-fun res!830677 () Bool)

(assert (=> b!1245050 (=> (not res!830677) (not e!705911))))

(assert (=> b!1245050 (= res!830677 (not (contains!7455 (t!41092 Nil!27613) (h!28821 Nil!27613))))))

(declare-fun b!1245051 () Bool)

(assert (=> b!1245051 (= e!705911 (noDuplicate!2045 (t!41092 Nil!27613)))))

(assert (= (and d!137215 (not res!830676)) b!1245050))

(assert (= (and b!1245050 res!830677) b!1245051))

(declare-fun m!1147207 () Bool)

(assert (=> b!1245050 m!1147207))

(declare-fun m!1147209 () Bool)

(assert (=> b!1245051 m!1147209))

(assert (=> b!1244985 d!137215))

(check-sat (not b!1245030) (not b!1245050) (not b!1245034) (not b!1245051) (not b!1245031) (not bm!61457))
(check-sat)
