; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104270 () Bool)

(assert start!104270)

(declare-fun b!1245314 () Bool)

(declare-fun res!830925 () Bool)

(declare-fun e!706159 () Bool)

(assert (=> b!1245314 (=> (not res!830925) (not e!706159))))

(declare-datatypes ((array!80164 0))(
  ( (array!80165 (arr!38662 (Array (_ BitVec 32) (_ BitVec 64))) (size!39199 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80164)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1245314 (= res!830925 (validKeyInArray!0 (select (arr!38662 a!3892) from!3270)))))

(declare-fun b!1245315 () Bool)

(declare-datatypes ((List!27643 0))(
  ( (Nil!27640) (Cons!27639 (h!28848 (_ BitVec 64)) (t!41119 List!27643)) )
))
(declare-fun noDuplicate!2051 (List!27643) Bool)

(assert (=> b!1245315 (= e!706159 (not (noDuplicate!2051 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640))))))

(declare-fun res!830926 () Bool)

(assert (=> start!104270 (=> (not res!830926) (not e!706159))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!104270 (= res!830926 (and (bvslt (size!39199 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39199 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39199 a!3892))))))

(assert (=> start!104270 e!706159))

(declare-fun array_inv!29438 (array!80164) Bool)

(assert (=> start!104270 (array_inv!29438 a!3892)))

(assert (=> start!104270 true))

(declare-fun b!1245316 () Bool)

(declare-fun res!830924 () Bool)

(assert (=> b!1245316 (=> (not res!830924) (not e!706159))))

(assert (=> b!1245316 (= res!830924 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39199 a!3892)) (not (= newFrom!287 (size!39199 a!3892)))))))

(declare-fun b!1245317 () Bool)

(declare-fun res!830922 () Bool)

(assert (=> b!1245317 (=> (not res!830922) (not e!706159))))

(assert (=> b!1245317 (= res!830922 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(declare-fun b!1245318 () Bool)

(declare-fun res!830923 () Bool)

(assert (=> b!1245318 (=> (not res!830923) (not e!706159))))

(declare-fun arrayNoDuplicates!0 (array!80164 (_ BitVec 32) List!27643) Bool)

(assert (=> b!1245318 (= res!830923 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27640))))

(assert (= (and start!104270 res!830926) b!1245318))

(assert (= (and b!1245318 res!830923) b!1245316))

(assert (= (and b!1245316 res!830924) b!1245314))

(assert (= (and b!1245314 res!830925) b!1245317))

(assert (= (and b!1245317 res!830922) b!1245315))

(declare-fun m!1147417 () Bool)

(assert (=> b!1245314 m!1147417))

(assert (=> b!1245314 m!1147417))

(declare-fun m!1147419 () Bool)

(assert (=> b!1245314 m!1147419))

(assert (=> b!1245315 m!1147417))

(declare-fun m!1147421 () Bool)

(assert (=> b!1245315 m!1147421))

(declare-fun m!1147423 () Bool)

(assert (=> start!104270 m!1147423))

(declare-fun m!1147425 () Bool)

(assert (=> b!1245318 m!1147425))

(check-sat (not b!1245318) (not b!1245314) (not start!104270) (not b!1245315))
(check-sat)
(get-model)

(declare-fun b!1245344 () Bool)

(declare-fun e!706175 () Bool)

(declare-fun e!706176 () Bool)

(assert (=> b!1245344 (= e!706175 e!706176)))

(declare-fun res!830948 () Bool)

(assert (=> b!1245344 (=> (not res!830948) (not e!706176))))

(declare-fun e!706177 () Bool)

(assert (=> b!1245344 (= res!830948 (not e!706177))))

(declare-fun res!830950 () Bool)

(assert (=> b!1245344 (=> (not res!830950) (not e!706177))))

(assert (=> b!1245344 (= res!830950 (validKeyInArray!0 (select (arr!38662 a!3892) from!3270)))))

(declare-fun d!137269 () Bool)

(declare-fun res!830949 () Bool)

(assert (=> d!137269 (=> res!830949 e!706175)))

(assert (=> d!137269 (= res!830949 (bvsge from!3270 (size!39199 a!3892)))))

(assert (=> d!137269 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27640) e!706175)))

(declare-fun b!1245345 () Bool)

(declare-fun contains!7460 (List!27643 (_ BitVec 64)) Bool)

(assert (=> b!1245345 (= e!706177 (contains!7460 Nil!27640 (select (arr!38662 a!3892) from!3270)))))

(declare-fun b!1245346 () Bool)

(declare-fun e!706178 () Bool)

(assert (=> b!1245346 (= e!706176 e!706178)))

(declare-fun c!121885 () Bool)

(assert (=> b!1245346 (= c!121885 (validKeyInArray!0 (select (arr!38662 a!3892) from!3270)))))

(declare-fun b!1245347 () Bool)

(declare-fun call!61473 () Bool)

(assert (=> b!1245347 (= e!706178 call!61473)))

(declare-fun b!1245348 () Bool)

(assert (=> b!1245348 (= e!706178 call!61473)))

(declare-fun bm!61470 () Bool)

(assert (=> bm!61470 (= call!61473 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121885 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640) Nil!27640)))))

(assert (= (and d!137269 (not res!830949)) b!1245344))

(assert (= (and b!1245344 res!830950) b!1245345))

(assert (= (and b!1245344 res!830948) b!1245346))

(assert (= (and b!1245346 c!121885) b!1245347))

(assert (= (and b!1245346 (not c!121885)) b!1245348))

(assert (= (or b!1245347 b!1245348) bm!61470))

(assert (=> b!1245344 m!1147417))

(assert (=> b!1245344 m!1147417))

(assert (=> b!1245344 m!1147419))

(assert (=> b!1245345 m!1147417))

(assert (=> b!1245345 m!1147417))

(declare-fun m!1147437 () Bool)

(assert (=> b!1245345 m!1147437))

(assert (=> b!1245346 m!1147417))

(assert (=> b!1245346 m!1147417))

(assert (=> b!1245346 m!1147419))

(assert (=> bm!61470 m!1147417))

(declare-fun m!1147439 () Bool)

(assert (=> bm!61470 m!1147439))

(assert (=> b!1245318 d!137269))

(declare-fun d!137273 () Bool)

(assert (=> d!137273 (= (validKeyInArray!0 (select (arr!38662 a!3892) from!3270)) (and (not (= (select (arr!38662 a!3892) from!3270) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38662 a!3892) from!3270) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1245314 d!137273))

(declare-fun d!137277 () Bool)

(assert (=> d!137277 (= (array_inv!29438 a!3892) (bvsge (size!39199 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104270 d!137277))

(declare-fun d!137281 () Bool)

(declare-fun res!830961 () Bool)

(declare-fun e!706189 () Bool)

(assert (=> d!137281 (=> res!830961 e!706189)))

(get-info :version)

(assert (=> d!137281 (= res!830961 ((_ is Nil!27640) (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640)))))

(assert (=> d!137281 (= (noDuplicate!2051 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640)) e!706189)))

(declare-fun b!1245359 () Bool)

(declare-fun e!706190 () Bool)

(assert (=> b!1245359 (= e!706189 e!706190)))

(declare-fun res!830962 () Bool)

(assert (=> b!1245359 (=> (not res!830962) (not e!706190))))

(assert (=> b!1245359 (= res!830962 (not (contains!7460 (t!41119 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640)) (h!28848 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640)))))))

(declare-fun b!1245360 () Bool)

(assert (=> b!1245360 (= e!706190 (noDuplicate!2051 (t!41119 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640))))))

(assert (= (and d!137281 (not res!830961)) b!1245359))

(assert (= (and b!1245359 res!830962) b!1245360))

(declare-fun m!1147443 () Bool)

(assert (=> b!1245359 m!1147443))

(declare-fun m!1147445 () Bool)

(assert (=> b!1245360 m!1147445))

(assert (=> b!1245315 d!137281))

(check-sat (not bm!61470) (not b!1245346) (not b!1245359) (not b!1245345) (not b!1245344) (not b!1245360))
(check-sat)
(get-model)

(declare-fun d!137293 () Bool)

(declare-fun lt!562864 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!626 (List!27643) (InoxSet (_ BitVec 64)))

(assert (=> d!137293 (= lt!562864 (select (content!626 Nil!27640) (select (arr!38662 a!3892) from!3270)))))

(declare-fun e!706225 () Bool)

(assert (=> d!137293 (= lt!562864 e!706225)))

(declare-fun res!830991 () Bool)

(assert (=> d!137293 (=> (not res!830991) (not e!706225))))

(assert (=> d!137293 (= res!830991 ((_ is Cons!27639) Nil!27640))))

(assert (=> d!137293 (= (contains!7460 Nil!27640 (select (arr!38662 a!3892) from!3270)) lt!562864)))

(declare-fun b!1245401 () Bool)

(declare-fun e!706226 () Bool)

(assert (=> b!1245401 (= e!706225 e!706226)))

(declare-fun res!830992 () Bool)

(assert (=> b!1245401 (=> res!830992 e!706226)))

(assert (=> b!1245401 (= res!830992 (= (h!28848 Nil!27640) (select (arr!38662 a!3892) from!3270)))))

(declare-fun b!1245402 () Bool)

(assert (=> b!1245402 (= e!706226 (contains!7460 (t!41119 Nil!27640) (select (arr!38662 a!3892) from!3270)))))

(assert (= (and d!137293 res!830991) b!1245401))

(assert (= (and b!1245401 (not res!830992)) b!1245402))

(declare-fun m!1147461 () Bool)

(assert (=> d!137293 m!1147461))

(assert (=> d!137293 m!1147417))

(declare-fun m!1147463 () Bool)

(assert (=> d!137293 m!1147463))

(assert (=> b!1245402 m!1147417))

(declare-fun m!1147465 () Bool)

(assert (=> b!1245402 m!1147465))

(assert (=> b!1245345 d!137293))

(assert (=> b!1245346 d!137273))

(declare-fun b!1245403 () Bool)

(declare-fun e!706227 () Bool)

(declare-fun e!706228 () Bool)

(assert (=> b!1245403 (= e!706227 e!706228)))

(declare-fun res!830993 () Bool)

(assert (=> b!1245403 (=> (not res!830993) (not e!706228))))

(declare-fun e!706229 () Bool)

(assert (=> b!1245403 (= res!830993 (not e!706229))))

(declare-fun res!830995 () Bool)

(assert (=> b!1245403 (=> (not res!830995) (not e!706229))))

(assert (=> b!1245403 (= res!830995 (validKeyInArray!0 (select (arr!38662 a!3892) (bvadd from!3270 #b00000000000000000000000000000001))))))

(declare-fun d!137295 () Bool)

(declare-fun res!830994 () Bool)

(assert (=> d!137295 (=> res!830994 e!706227)))

(assert (=> d!137295 (= res!830994 (bvsge (bvadd from!3270 #b00000000000000000000000000000001) (size!39199 a!3892)))))

(assert (=> d!137295 (= (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121885 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640) Nil!27640)) e!706227)))

(declare-fun b!1245404 () Bool)

(assert (=> b!1245404 (= e!706229 (contains!7460 (ite c!121885 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640) Nil!27640) (select (arr!38662 a!3892) (bvadd from!3270 #b00000000000000000000000000000001))))))

(declare-fun b!1245405 () Bool)

(declare-fun e!706230 () Bool)

(assert (=> b!1245405 (= e!706228 e!706230)))

(declare-fun c!121892 () Bool)

(assert (=> b!1245405 (= c!121892 (validKeyInArray!0 (select (arr!38662 a!3892) (bvadd from!3270 #b00000000000000000000000000000001))))))

(declare-fun b!1245406 () Bool)

(declare-fun call!61480 () Bool)

(assert (=> b!1245406 (= e!706230 call!61480)))

(declare-fun b!1245407 () Bool)

(assert (=> b!1245407 (= e!706230 call!61480)))

(declare-fun bm!61477 () Bool)

(assert (=> bm!61477 (= call!61480 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!121892 (Cons!27639 (select (arr!38662 a!3892) (bvadd from!3270 #b00000000000000000000000000000001)) (ite c!121885 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640) Nil!27640)) (ite c!121885 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640) Nil!27640))))))

(assert (= (and d!137295 (not res!830994)) b!1245403))

(assert (= (and b!1245403 res!830995) b!1245404))

(assert (= (and b!1245403 res!830993) b!1245405))

(assert (= (and b!1245405 c!121892) b!1245406))

(assert (= (and b!1245405 (not c!121892)) b!1245407))

(assert (= (or b!1245406 b!1245407) bm!61477))

(declare-fun m!1147467 () Bool)

(assert (=> b!1245403 m!1147467))

(assert (=> b!1245403 m!1147467))

(declare-fun m!1147469 () Bool)

(assert (=> b!1245403 m!1147469))

(assert (=> b!1245404 m!1147467))

(assert (=> b!1245404 m!1147467))

(declare-fun m!1147471 () Bool)

(assert (=> b!1245404 m!1147471))

(assert (=> b!1245405 m!1147467))

(assert (=> b!1245405 m!1147467))

(assert (=> b!1245405 m!1147469))

(assert (=> bm!61477 m!1147467))

(declare-fun m!1147473 () Bool)

(assert (=> bm!61477 m!1147473))

(assert (=> bm!61470 d!137295))

(assert (=> b!1245344 d!137273))

(declare-fun d!137297 () Bool)

(declare-fun res!830996 () Bool)

(declare-fun e!706231 () Bool)

(assert (=> d!137297 (=> res!830996 e!706231)))

(assert (=> d!137297 (= res!830996 ((_ is Nil!27640) (t!41119 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640))))))

(assert (=> d!137297 (= (noDuplicate!2051 (t!41119 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640))) e!706231)))

(declare-fun b!1245408 () Bool)

(declare-fun e!706232 () Bool)

(assert (=> b!1245408 (= e!706231 e!706232)))

(declare-fun res!830997 () Bool)

(assert (=> b!1245408 (=> (not res!830997) (not e!706232))))

(assert (=> b!1245408 (= res!830997 (not (contains!7460 (t!41119 (t!41119 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640))) (h!28848 (t!41119 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640))))))))

(declare-fun b!1245409 () Bool)

(assert (=> b!1245409 (= e!706232 (noDuplicate!2051 (t!41119 (t!41119 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640)))))))

(assert (= (and d!137297 (not res!830996)) b!1245408))

(assert (= (and b!1245408 res!830997) b!1245409))

(declare-fun m!1147475 () Bool)

(assert (=> b!1245408 m!1147475))

(declare-fun m!1147477 () Bool)

(assert (=> b!1245409 m!1147477))

(assert (=> b!1245360 d!137297))

(declare-fun d!137299 () Bool)

(declare-fun lt!562865 () Bool)

(assert (=> d!137299 (= lt!562865 (select (content!626 (t!41119 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640))) (h!28848 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640))))))

(declare-fun e!706233 () Bool)

(assert (=> d!137299 (= lt!562865 e!706233)))

(declare-fun res!830998 () Bool)

(assert (=> d!137299 (=> (not res!830998) (not e!706233))))

(assert (=> d!137299 (= res!830998 ((_ is Cons!27639) (t!41119 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640))))))

(assert (=> d!137299 (= (contains!7460 (t!41119 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640)) (h!28848 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640))) lt!562865)))

(declare-fun b!1245410 () Bool)

(declare-fun e!706234 () Bool)

(assert (=> b!1245410 (= e!706233 e!706234)))

(declare-fun res!830999 () Bool)

(assert (=> b!1245410 (=> res!830999 e!706234)))

(assert (=> b!1245410 (= res!830999 (= (h!28848 (t!41119 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640))) (h!28848 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640))))))

(declare-fun b!1245411 () Bool)

(assert (=> b!1245411 (= e!706234 (contains!7460 (t!41119 (t!41119 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640))) (h!28848 (Cons!27639 (select (arr!38662 a!3892) from!3270) Nil!27640))))))

(assert (= (and d!137299 res!830998) b!1245410))

(assert (= (and b!1245410 (not res!830999)) b!1245411))

(declare-fun m!1147479 () Bool)

(assert (=> d!137299 m!1147479))

(declare-fun m!1147481 () Bool)

(assert (=> d!137299 m!1147481))

(declare-fun m!1147483 () Bool)

(assert (=> b!1245411 m!1147483))

(assert (=> b!1245359 d!137299))

(check-sat (not b!1245403) (not b!1245411) (not b!1245405) (not b!1245408) (not d!137293) (not b!1245404) (not b!1245402) (not d!137299) (not b!1245409) (not bm!61477))
(check-sat)
