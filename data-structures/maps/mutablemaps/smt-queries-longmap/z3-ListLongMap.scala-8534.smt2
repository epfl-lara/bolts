; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104132 () Bool)

(assert start!104132)

(declare-fun b!1244834 () Bool)

(declare-fun res!830500 () Bool)

(declare-fun e!705722 () Bool)

(assert (=> b!1244834 (=> (not res!830500) (not e!705722))))

(declare-datatypes ((array!80083 0))(
  ( (array!80084 (arr!38626 (Array (_ BitVec 32) (_ BitVec 64))) (size!39163 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80083)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27607 0))(
  ( (Nil!27604) (Cons!27603 (h!28812 (_ BitVec 64)) (t!41083 List!27607)) )
))
(declare-fun arrayNoDuplicates!0 (array!80083 (_ BitVec 32) List!27607) Bool)

(assert (=> b!1244834 (= res!830500 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27604))))

(declare-fun b!1244836 () Bool)

(declare-fun e!705720 () Bool)

(assert (=> b!1244836 (= e!705722 e!705720)))

(declare-fun res!830496 () Bool)

(assert (=> b!1244836 (=> res!830496 e!705720)))

(declare-fun contains!7452 (List!27607 (_ BitVec 64)) Bool)

(assert (=> b!1244836 (= res!830496 (contains!7452 Nil!27604 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1244837 () Bool)

(declare-fun res!830499 () Bool)

(assert (=> b!1244837 (=> (not res!830499) (not e!705722))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1244837 (= res!830499 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39163 a!3892)) (= newFrom!287 (size!39163 a!3892)) (bvsge newFrom!287 #b00000000000000000000000000000000)))))

(declare-fun b!1244838 () Bool)

(assert (=> b!1244838 (= e!705720 (contains!7452 Nil!27604 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!830498 () Bool)

(assert (=> start!104132 (=> (not res!830498) (not e!705722))))

(assert (=> start!104132 (= res!830498 (and (bvslt (size!39163 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39163 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39163 a!3892))))))

(assert (=> start!104132 e!705722))

(declare-fun array_inv!29402 (array!80083) Bool)

(assert (=> start!104132 (array_inv!29402 a!3892)))

(assert (=> start!104132 true))

(declare-fun b!1244835 () Bool)

(declare-fun res!830497 () Bool)

(assert (=> b!1244835 (=> (not res!830497) (not e!705722))))

(declare-fun noDuplicate!2042 (List!27607) Bool)

(assert (=> b!1244835 (= res!830497 (noDuplicate!2042 Nil!27604))))

(assert (= (and start!104132 res!830498) b!1244834))

(assert (= (and b!1244834 res!830500) b!1244837))

(assert (= (and b!1244837 res!830499) b!1244835))

(assert (= (and b!1244835 res!830497) b!1244836))

(assert (= (and b!1244836 (not res!830496)) b!1244838))

(declare-fun m!1147051 () Bool)

(assert (=> start!104132 m!1147051))

(declare-fun m!1147053 () Bool)

(assert (=> b!1244838 m!1147053))

(declare-fun m!1147055 () Bool)

(assert (=> b!1244836 m!1147055))

(declare-fun m!1147057 () Bool)

(assert (=> b!1244835 m!1147057))

(declare-fun m!1147059 () Bool)

(assert (=> b!1244834 m!1147059))

(check-sat (not b!1244835) (not b!1244836) (not b!1244834) (not b!1244838) (not start!104132))
(check-sat)
(get-model)

(declare-fun d!137167 () Bool)

(declare-fun res!830520 () Bool)

(declare-fun e!705736 () Bool)

(assert (=> d!137167 (=> res!830520 e!705736)))

(get-info :version)

(assert (=> d!137167 (= res!830520 ((_ is Nil!27604) Nil!27604))))

(assert (=> d!137167 (= (noDuplicate!2042 Nil!27604) e!705736)))

(declare-fun b!1244858 () Bool)

(declare-fun e!705737 () Bool)

(assert (=> b!1244858 (= e!705736 e!705737)))

(declare-fun res!830521 () Bool)

(assert (=> b!1244858 (=> (not res!830521) (not e!705737))))

(assert (=> b!1244858 (= res!830521 (not (contains!7452 (t!41083 Nil!27604) (h!28812 Nil!27604))))))

(declare-fun b!1244859 () Bool)

(assert (=> b!1244859 (= e!705737 (noDuplicate!2042 (t!41083 Nil!27604)))))

(assert (= (and d!137167 (not res!830520)) b!1244858))

(assert (= (and b!1244858 res!830521) b!1244859))

(declare-fun m!1147071 () Bool)

(assert (=> b!1244858 m!1147071))

(declare-fun m!1147073 () Bool)

(assert (=> b!1244859 m!1147073))

(assert (=> b!1244835 d!137167))

(declare-fun d!137169 () Bool)

(declare-fun lt!562786 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!620 (List!27607) (InoxSet (_ BitVec 64)))

(assert (=> d!137169 (= lt!562786 (select (content!620 Nil!27604) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!705743 () Bool)

(assert (=> d!137169 (= lt!562786 e!705743)))

(declare-fun res!830527 () Bool)

(assert (=> d!137169 (=> (not res!830527) (not e!705743))))

(assert (=> d!137169 (= res!830527 ((_ is Cons!27603) Nil!27604))))

(assert (=> d!137169 (= (contains!7452 Nil!27604 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562786)))

(declare-fun b!1244864 () Bool)

(declare-fun e!705742 () Bool)

(assert (=> b!1244864 (= e!705743 e!705742)))

(declare-fun res!830526 () Bool)

(assert (=> b!1244864 (=> res!830526 e!705742)))

(assert (=> b!1244864 (= res!830526 (= (h!28812 Nil!27604) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1244865 () Bool)

(assert (=> b!1244865 (= e!705742 (contains!7452 (t!41083 Nil!27604) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137169 res!830527) b!1244864))

(assert (= (and b!1244864 (not res!830526)) b!1244865))

(declare-fun m!1147075 () Bool)

(assert (=> d!137169 m!1147075))

(declare-fun m!1147077 () Bool)

(assert (=> d!137169 m!1147077))

(declare-fun m!1147079 () Bool)

(assert (=> b!1244865 m!1147079))

(assert (=> b!1244836 d!137169))

(declare-fun d!137173 () Bool)

(assert (=> d!137173 (= (array_inv!29402 a!3892) (bvsge (size!39163 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104132 d!137173))

(declare-fun d!137177 () Bool)

(declare-fun lt!562787 () Bool)

(assert (=> d!137177 (= lt!562787 (select (content!620 Nil!27604) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!705749 () Bool)

(assert (=> d!137177 (= lt!562787 e!705749)))

(declare-fun res!830533 () Bool)

(assert (=> d!137177 (=> (not res!830533) (not e!705749))))

(assert (=> d!137177 (= res!830533 ((_ is Cons!27603) Nil!27604))))

(assert (=> d!137177 (= (contains!7452 Nil!27604 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562787)))

(declare-fun b!1244870 () Bool)

(declare-fun e!705748 () Bool)

(assert (=> b!1244870 (= e!705749 e!705748)))

(declare-fun res!830532 () Bool)

(assert (=> b!1244870 (=> res!830532 e!705748)))

(assert (=> b!1244870 (= res!830532 (= (h!28812 Nil!27604) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1244871 () Bool)

(assert (=> b!1244871 (= e!705748 (contains!7452 (t!41083 Nil!27604) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137177 res!830533) b!1244870))

(assert (= (and b!1244870 (not res!830532)) b!1244871))

(assert (=> d!137177 m!1147075))

(declare-fun m!1147081 () Bool)

(assert (=> d!137177 m!1147081))

(declare-fun m!1147083 () Bool)

(assert (=> b!1244871 m!1147083))

(assert (=> b!1244838 d!137177))

(declare-fun b!1244906 () Bool)

(declare-fun e!705783 () Bool)

(declare-fun call!61448 () Bool)

(assert (=> b!1244906 (= e!705783 call!61448)))

(declare-fun bm!61445 () Bool)

(declare-fun c!121860 () Bool)

(assert (=> bm!61445 (= call!61448 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121860 (Cons!27603 (select (arr!38626 a!3892) from!3270) Nil!27604) Nil!27604)))))

(declare-fun b!1244907 () Bool)

(declare-fun e!705780 () Bool)

(assert (=> b!1244907 (= e!705780 e!705783)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244907 (= c!121860 (validKeyInArray!0 (select (arr!38626 a!3892) from!3270)))))

(declare-fun b!1244908 () Bool)

(declare-fun e!705781 () Bool)

(assert (=> b!1244908 (= e!705781 e!705780)))

(declare-fun res!830561 () Bool)

(assert (=> b!1244908 (=> (not res!830561) (not e!705780))))

(declare-fun e!705782 () Bool)

(assert (=> b!1244908 (= res!830561 (not e!705782))))

(declare-fun res!830562 () Bool)

(assert (=> b!1244908 (=> (not res!830562) (not e!705782))))

(assert (=> b!1244908 (= res!830562 (validKeyInArray!0 (select (arr!38626 a!3892) from!3270)))))

(declare-fun d!137179 () Bool)

(declare-fun res!830560 () Bool)

(assert (=> d!137179 (=> res!830560 e!705781)))

(assert (=> d!137179 (= res!830560 (bvsge from!3270 (size!39163 a!3892)))))

(assert (=> d!137179 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27604) e!705781)))

(declare-fun b!1244909 () Bool)

(assert (=> b!1244909 (= e!705782 (contains!7452 Nil!27604 (select (arr!38626 a!3892) from!3270)))))

(declare-fun b!1244910 () Bool)

(assert (=> b!1244910 (= e!705783 call!61448)))

(assert (= (and d!137179 (not res!830560)) b!1244908))

(assert (= (and b!1244908 res!830562) b!1244909))

(assert (= (and b!1244908 res!830561) b!1244907))

(assert (= (and b!1244907 c!121860) b!1244906))

(assert (= (and b!1244907 (not c!121860)) b!1244910))

(assert (= (or b!1244906 b!1244910) bm!61445))

(declare-fun m!1147101 () Bool)

(assert (=> bm!61445 m!1147101))

(declare-fun m!1147105 () Bool)

(assert (=> bm!61445 m!1147105))

(assert (=> b!1244907 m!1147101))

(assert (=> b!1244907 m!1147101))

(declare-fun m!1147107 () Bool)

(assert (=> b!1244907 m!1147107))

(assert (=> b!1244908 m!1147101))

(assert (=> b!1244908 m!1147101))

(assert (=> b!1244908 m!1147107))

(assert (=> b!1244909 m!1147101))

(assert (=> b!1244909 m!1147101))

(declare-fun m!1147111 () Bool)

(assert (=> b!1244909 m!1147111))

(assert (=> b!1244834 d!137179))

(check-sat (not b!1244908) (not b!1244859) (not b!1244858) (not b!1244909) (not b!1244907) (not b!1244865) (not bm!61445) (not d!137177) (not b!1244871) (not d!137169))
(check-sat)
