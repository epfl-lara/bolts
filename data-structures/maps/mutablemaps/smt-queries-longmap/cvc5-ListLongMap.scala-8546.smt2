; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104268 () Bool)

(assert start!104268)

(declare-fun res!830907 () Bool)

(declare-fun e!706154 () Bool)

(assert (=> start!104268 (=> (not res!830907) (not e!706154))))

(declare-datatypes ((array!80162 0))(
  ( (array!80163 (arr!38661 (Array (_ BitVec 32) (_ BitVec 64))) (size!39198 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80162)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104268 (= res!830907 (and (bvslt (size!39198 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39198 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39198 a!3892))))))

(assert (=> start!104268 e!706154))

(declare-fun array_inv!29437 (array!80162) Bool)

(assert (=> start!104268 (array_inv!29437 a!3892)))

(assert (=> start!104268 true))

(declare-fun b!1245299 () Bool)

(declare-fun res!830909 () Bool)

(assert (=> b!1245299 (=> (not res!830909) (not e!706154))))

(assert (=> b!1245299 (= res!830909 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(declare-fun b!1245300 () Bool)

(declare-fun res!830911 () Bool)

(assert (=> b!1245300 (=> (not res!830911) (not e!706154))))

(declare-datatypes ((List!27642 0))(
  ( (Nil!27639) (Cons!27638 (h!28847 (_ BitVec 64)) (t!41118 List!27642)) )
))
(declare-fun arrayNoDuplicates!0 (array!80162 (_ BitVec 32) List!27642) Bool)

(assert (=> b!1245300 (= res!830911 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27639))))

(declare-fun b!1245301 () Bool)

(declare-fun res!830908 () Bool)

(assert (=> b!1245301 (=> (not res!830908) (not e!706154))))

(assert (=> b!1245301 (= res!830908 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39198 a!3892)) (not (= newFrom!287 (size!39198 a!3892)))))))

(declare-fun b!1245302 () Bool)

(declare-fun res!830910 () Bool)

(assert (=> b!1245302 (=> (not res!830910) (not e!706154))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1245302 (= res!830910 (validKeyInArray!0 (select (arr!38661 a!3892) from!3270)))))

(declare-fun b!1245303 () Bool)

(declare-fun noDuplicate!2050 (List!27642) Bool)

(assert (=> b!1245303 (= e!706154 (not (noDuplicate!2050 (Cons!27638 (select (arr!38661 a!3892) from!3270) Nil!27639))))))

(assert (= (and start!104268 res!830907) b!1245300))

(assert (= (and b!1245300 res!830911) b!1245301))

(assert (= (and b!1245301 res!830908) b!1245302))

(assert (= (and b!1245302 res!830910) b!1245299))

(assert (= (and b!1245299 res!830909) b!1245303))

(declare-fun m!1147407 () Bool)

(assert (=> start!104268 m!1147407))

(declare-fun m!1147409 () Bool)

(assert (=> b!1245300 m!1147409))

(declare-fun m!1147411 () Bool)

(assert (=> b!1245302 m!1147411))

(assert (=> b!1245302 m!1147411))

(declare-fun m!1147413 () Bool)

(assert (=> b!1245302 m!1147413))

(assert (=> b!1245303 m!1147411))

(declare-fun m!1147415 () Bool)

(assert (=> b!1245303 m!1147415))

(push 1)

(assert (not start!104268))

(assert (not b!1245302))

(assert (not b!1245303))

(assert (not b!1245300))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!137271 () Bool)

(assert (=> d!137271 (= (array_inv!29437 a!3892) (bvsge (size!39198 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104268 d!137271))

(declare-fun d!137275 () Bool)

(assert (=> d!137275 (= (validKeyInArray!0 (select (arr!38661 a!3892) from!3270)) (and (not (= (select (arr!38661 a!3892) from!3270) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38661 a!3892) from!3270) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1245302 d!137275))

(declare-fun d!137279 () Bool)

(declare-fun res!830959 () Bool)

(declare-fun e!706187 () Bool)

(assert (=> d!137279 (=> res!830959 e!706187)))

(assert (=> d!137279 (= res!830959 (is-Nil!27639 (Cons!27638 (select (arr!38661 a!3892) from!3270) Nil!27639)))))

(assert (=> d!137279 (= (noDuplicate!2050 (Cons!27638 (select (arr!38661 a!3892) from!3270) Nil!27639)) e!706187)))

(declare-fun b!1245357 () Bool)

(declare-fun e!706188 () Bool)

(assert (=> b!1245357 (= e!706187 e!706188)))

(declare-fun res!830960 () Bool)

(assert (=> b!1245357 (=> (not res!830960) (not e!706188))))

(declare-fun contains!7461 (List!27642 (_ BitVec 64)) Bool)

(assert (=> b!1245357 (= res!830960 (not (contains!7461 (t!41118 (Cons!27638 (select (arr!38661 a!3892) from!3270) Nil!27639)) (h!28847 (Cons!27638 (select (arr!38661 a!3892) from!3270) Nil!27639)))))))

(declare-fun b!1245358 () Bool)

(assert (=> b!1245358 (= e!706188 (noDuplicate!2050 (t!41118 (Cons!27638 (select (arr!38661 a!3892) from!3270) Nil!27639))))))

(assert (= (and d!137279 (not res!830959)) b!1245357))

(assert (= (and b!1245357 res!830960) b!1245358))

(declare-fun m!1147441 () Bool)

(assert (=> b!1245357 m!1147441))

(declare-fun m!1147447 () Bool)

(assert (=> b!1245358 m!1147447))

(assert (=> b!1245303 d!137279))

(declare-fun b!1245381 () Bool)

(declare-fun e!706210 () Bool)

(declare-fun e!706209 () Bool)

(assert (=> b!1245381 (= e!706210 e!706209)))

(declare-fun res!830976 () Bool)

(assert (=> b!1245381 (=> (not res!830976) (not e!706209))))

(declare-fun e!706207 () Bool)

(assert (=> b!1245381 (= res!830976 (not e!706207))))

(declare-fun res!830975 () Bool)

(assert (=> b!1245381 (=> (not res!830975) (not e!706207))))

(assert (=> b!1245381 (= res!830975 (validKeyInArray!0 (select (arr!38661 a!3892) from!3270)))))

(declare-fun d!137283 () Bool)

(declare-fun res!830977 () Bool)

(assert (=> d!137283 (=> res!830977 e!706210)))

(assert (=> d!137283 (= res!830977 (bvsge from!3270 (size!39198 a!3892)))))

(assert (=> d!137283 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27639) e!706210)))

(declare-fun b!1245382 () Bool)

(declare-fun e!706208 () Bool)

(assert (=> b!1245382 (= e!706209 e!706208)))

(declare-fun c!121890 () Bool)

(assert (=> b!1245382 (= c!121890 (validKeyInArray!0 (select (arr!38661 a!3892) from!3270)))))

(declare-fun b!1245383 () Bool)

(declare-fun call!61478 () Bool)

(assert (=> b!1245383 (= e!706208 call!61478)))

(declare-fun b!1245384 () Bool)

(assert (=> b!1245384 (= e!706207 (contains!7461 Nil!27639 (select (arr!38661 a!3892) from!3270)))))

(declare-fun bm!61475 () Bool)

(assert (=> bm!61475 (= call!61478 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121890 (Cons!27638 (select (arr!38661 a!3892) from!3270) Nil!27639) Nil!27639)))))

(declare-fun b!1245385 () Bool)

(assert (=> b!1245385 (= e!706208 call!61478)))

(assert (= (and d!137283 (not res!830977)) b!1245381))

(assert (= (and b!1245381 res!830975) b!1245384))

(assert (= (and b!1245381 res!830976) b!1245382))

(assert (= (and b!1245382 c!121890) b!1245385))

(assert (= (and b!1245382 (not c!121890)) b!1245383))

(assert (= (or b!1245385 b!1245383) bm!61475))

(assert (=> b!1245381 m!1147411))

(assert (=> b!1245381 m!1147411))

(assert (=> b!1245381 m!1147413))

(assert (=> b!1245382 m!1147411))

(assert (=> b!1245382 m!1147411))

(assert (=> b!1245382 m!1147413))

(assert (=> b!1245384 m!1147411))

(assert (=> b!1245384 m!1147411))

(declare-fun m!1147449 () Bool)

(assert (=> b!1245384 m!1147449))

(assert (=> bm!61475 m!1147411))

(declare-fun m!1147451 () Bool)

(assert (=> bm!61475 m!1147451))

(assert (=> b!1245300 d!137283))

(push 1)

(assert (not b!1245381))

(assert (not b!1245357))

(assert (not b!1245384))

(assert (not b!1245382))

(assert (not b!1245358))

(assert (not bm!61475))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1245412 () Bool)

(declare-fun e!706238 () Bool)

(declare-fun e!706237 () Bool)

(assert (=> b!1245412 (= e!706238 e!706237)))

(declare-fun res!831001 () Bool)

(assert (=> b!1245412 (=> (not res!831001) (not e!706237))))

(declare-fun e!706235 () Bool)

(assert (=> b!1245412 (= res!831001 (not e!706235))))

(declare-fun res!831000 () Bool)

(assert (=> b!1245412 (=> (not res!831000) (not e!706235))))

(assert (=> b!1245412 (= res!831000 (validKeyInArray!0 (select (arr!38661 a!3892) (bvadd from!3270 #b00000000000000000000000000000001))))))

(declare-fun d!137301 () Bool)

(declare-fun res!831002 () Bool)

(assert (=> d!137301 (=> res!831002 e!706238)))

