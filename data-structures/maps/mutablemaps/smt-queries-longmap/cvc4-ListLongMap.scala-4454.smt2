; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61990 () Bool)

(assert start!61990)

(declare-fun b!693289 () Bool)

(declare-fun e!394446 () Bool)

(declare-datatypes ((List!13170 0))(
  ( (Nil!13167) (Cons!13166 (h!14211 (_ BitVec 64)) (t!19454 List!13170)) )
))
(declare-fun lt!316696 () List!13170)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3713 (List!13170 (_ BitVec 64)) Bool)

(assert (=> b!693289 (= e!394446 (not (contains!3713 lt!316696 k!2843)))))

(declare-fun b!693290 () Bool)

(declare-fun res!457614 () Bool)

(declare-fun e!394439 () Bool)

(assert (=> b!693290 (=> (not res!457614) (not e!394439))))

(declare-fun e!394442 () Bool)

(assert (=> b!693290 (= res!457614 e!394442)))

(declare-fun res!457610 () Bool)

(assert (=> b!693290 (=> res!457610 e!394442)))

(declare-fun e!394444 () Bool)

(assert (=> b!693290 (= res!457610 e!394444)))

(declare-fun res!457608 () Bool)

(assert (=> b!693290 (=> (not res!457608) (not e!394444))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!693290 (= res!457608 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!693291 () Bool)

(declare-fun res!457611 () Bool)

(declare-fun e!394445 () Bool)

(assert (=> b!693291 (=> (not res!457611) (not e!394445))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!693291 (= res!457611 (validKeyInArray!0 k!2843))))

(declare-fun b!693292 () Bool)

(declare-fun res!457603 () Bool)

(assert (=> b!693292 (=> (not res!457603) (not e!394445))))

(declare-fun e!394440 () Bool)

(assert (=> b!693292 (= res!457603 e!394440)))

(declare-fun res!457612 () Bool)

(assert (=> b!693292 (=> res!457612 e!394440)))

(declare-fun e!394437 () Bool)

(assert (=> b!693292 (= res!457612 e!394437)))

(declare-fun res!457597 () Bool)

(assert (=> b!693292 (=> (not res!457597) (not e!394437))))

(assert (=> b!693292 (= res!457597 (bvsgt from!3004 i!1382))))

(declare-fun b!693293 () Bool)

(declare-fun e!394443 () Bool)

(declare-fun acc!681 () List!13170)

(assert (=> b!693293 (= e!394443 (not (contains!3713 acc!681 k!2843)))))

(declare-fun b!693294 () Bool)

(assert (=> b!693294 (= e!394442 e!394446)))

(declare-fun res!457600 () Bool)

(assert (=> b!693294 (=> (not res!457600) (not e!394446))))

(assert (=> b!693294 (= res!457600 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!693295 () Bool)

(assert (=> b!693295 (= e!394444 (contains!3713 lt!316696 k!2843))))

(declare-fun b!693296 () Bool)

(declare-fun e!394438 () Bool)

(assert (=> b!693296 (= e!394438 e!394439)))

(declare-fun res!457593 () Bool)

(assert (=> b!693296 (=> (not res!457593) (not e!394439))))

(assert (=> b!693296 (= res!457593 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((array!39832 0))(
  ( (array!39833 (arr!19076 (Array (_ BitVec 32) (_ BitVec 64))) (size!19459 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39832)

(declare-fun $colon$colon!423 (List!13170 (_ BitVec 64)) List!13170)

(assert (=> b!693296 (= lt!316696 ($colon$colon!423 acc!681 (select (arr!19076 a!3626) from!3004)))))

(declare-fun b!693297 () Bool)

(assert (=> b!693297 (= e!394440 e!394443)))

(declare-fun res!457613 () Bool)

(assert (=> b!693297 (=> (not res!457613) (not e!394443))))

(assert (=> b!693297 (= res!457613 (bvsle from!3004 i!1382))))

(declare-fun b!693299 () Bool)

(declare-fun res!457594 () Bool)

(assert (=> b!693299 (=> (not res!457594) (not e!394445))))

(declare-fun arrayContainsKey!0 (array!39832 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!693299 (= res!457594 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!693300 () Bool)

(declare-fun res!457598 () Bool)

(assert (=> b!693300 (=> (not res!457598) (not e!394445))))

(declare-fun arrayNoDuplicates!0 (array!39832 (_ BitVec 32) List!13170) Bool)

(assert (=> b!693300 (= res!457598 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!693301 () Bool)

(declare-fun res!457601 () Bool)

(assert (=> b!693301 (=> (not res!457601) (not e!394439))))

(assert (=> b!693301 (= res!457601 (not (contains!3713 lt!316696 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693302 () Bool)

(declare-fun res!457609 () Bool)

(assert (=> b!693302 (=> (not res!457609) (not e!394439))))

(assert (=> b!693302 (= res!457609 (not (contains!3713 lt!316696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693303 () Bool)

(assert (=> b!693303 (= e!394437 (contains!3713 acc!681 k!2843))))

(declare-fun b!693304 () Bool)

(declare-fun res!457605 () Bool)

(assert (=> b!693304 (=> (not res!457605) (not e!394445))))

(assert (=> b!693304 (= res!457605 (validKeyInArray!0 (select (arr!19076 a!3626) from!3004)))))

(declare-fun b!693305 () Bool)

(declare-datatypes ((Unit!24474 0))(
  ( (Unit!24475) )
))
(declare-fun e!394447 () Unit!24474)

(declare-fun Unit!24476 () Unit!24474)

(assert (=> b!693305 (= e!394447 Unit!24476)))

(declare-fun b!693306 () Bool)

(assert (=> b!693306 (= e!394439 (not (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316696)))))

(declare-fun b!693307 () Bool)

(declare-fun res!457604 () Bool)

(assert (=> b!693307 (=> (not res!457604) (not e!394445))))

(assert (=> b!693307 (= res!457604 (not (contains!3713 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693298 () Bool)

(declare-fun res!457602 () Bool)

(assert (=> b!693298 (=> (not res!457602) (not e!394445))))

(assert (=> b!693298 (= res!457602 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19459 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun res!457615 () Bool)

(assert (=> start!61990 (=> (not res!457615) (not e!394445))))

(assert (=> start!61990 (= res!457615 (and (bvslt (size!19459 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19459 a!3626))))))

(assert (=> start!61990 e!394445))

(assert (=> start!61990 true))

(declare-fun array_inv!14850 (array!39832) Bool)

(assert (=> start!61990 (array_inv!14850 a!3626)))

(declare-fun b!693308 () Bool)

(declare-fun res!457607 () Bool)

(assert (=> b!693308 (=> (not res!457607) (not e!394445))))

(declare-fun noDuplicate!960 (List!13170) Bool)

(assert (=> b!693308 (= res!457607 (noDuplicate!960 acc!681))))

(declare-fun b!693309 () Bool)

(declare-fun Unit!24477 () Unit!24474)

(assert (=> b!693309 (= e!394447 Unit!24477)))

(assert (=> b!693309 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316697 () Unit!24474)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39832 (_ BitVec 64) (_ BitVec 32)) Unit!24474)

(assert (=> b!693309 (= lt!316697 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!693309 false))

(declare-fun b!693310 () Bool)

(declare-fun res!457595 () Bool)

(assert (=> b!693310 (=> (not res!457595) (not e!394445))))

(assert (=> b!693310 (= res!457595 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19459 a!3626))))))

(declare-fun b!693311 () Bool)

(assert (=> b!693311 (= e!394445 e!394438)))

(declare-fun res!457596 () Bool)

(assert (=> b!693311 (=> (not res!457596) (not e!394438))))

(assert (=> b!693311 (= res!457596 (not (= (select (arr!19076 a!3626) from!3004) k!2843)))))

(declare-fun lt!316698 () Unit!24474)

(assert (=> b!693311 (= lt!316698 e!394447)))

(declare-fun c!78215 () Bool)

(assert (=> b!693311 (= c!78215 (= (select (arr!19076 a!3626) from!3004) k!2843))))

(declare-fun b!693312 () Bool)

(declare-fun res!457606 () Bool)

(assert (=> b!693312 (=> (not res!457606) (not e!394445))))

(assert (=> b!693312 (= res!457606 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13167))))

(declare-fun b!693313 () Bool)

(declare-fun res!457599 () Bool)

(assert (=> b!693313 (=> (not res!457599) (not e!394439))))

(assert (=> b!693313 (= res!457599 (noDuplicate!960 lt!316696))))

(declare-fun b!693314 () Bool)

(declare-fun res!457616 () Bool)

(assert (=> b!693314 (=> (not res!457616) (not e!394445))))

(assert (=> b!693314 (= res!457616 (not (contains!3713 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!61990 res!457615) b!693308))

(assert (= (and b!693308 res!457607) b!693307))

(assert (= (and b!693307 res!457604) b!693314))

(assert (= (and b!693314 res!457616) b!693292))

(assert (= (and b!693292 res!457597) b!693303))

(assert (= (and b!693292 (not res!457612)) b!693297))

(assert (= (and b!693297 res!457613) b!693293))

(assert (= (and b!693292 res!457603) b!693312))

(assert (= (and b!693312 res!457606) b!693300))

(assert (= (and b!693300 res!457598) b!693310))

(assert (= (and b!693310 res!457595) b!693291))

(assert (= (and b!693291 res!457611) b!693299))

(assert (= (and b!693299 res!457594) b!693298))

(assert (= (and b!693298 res!457602) b!693304))

(assert (= (and b!693304 res!457605) b!693311))

(assert (= (and b!693311 c!78215) b!693309))

(assert (= (and b!693311 (not c!78215)) b!693305))

(assert (= (and b!693311 res!457596) b!693296))

(assert (= (and b!693296 res!457593) b!693313))

(assert (= (and b!693313 res!457599) b!693302))

(assert (= (and b!693302 res!457609) b!693301))

(assert (= (and b!693301 res!457601) b!693290))

(assert (= (and b!693290 res!457608) b!693295))

(assert (= (and b!693290 (not res!457610)) b!693294))

(assert (= (and b!693294 res!457600) b!693289))

(assert (= (and b!693290 res!457614) b!693306))

(declare-fun m!655567 () Bool)

(assert (=> b!693301 m!655567))

(declare-fun m!655569 () Bool)

(assert (=> b!693312 m!655569))

(declare-fun m!655571 () Bool)

(assert (=> b!693296 m!655571))

(assert (=> b!693296 m!655571))

(declare-fun m!655573 () Bool)

(assert (=> b!693296 m!655573))

(declare-fun m!655575 () Bool)

(assert (=> b!693299 m!655575))

(declare-fun m!655577 () Bool)

(assert (=> b!693307 m!655577))

(declare-fun m!655579 () Bool)

(assert (=> b!693306 m!655579))

(declare-fun m!655581 () Bool)

(assert (=> b!693300 m!655581))

(declare-fun m!655583 () Bool)

(assert (=> b!693291 m!655583))

(assert (=> b!693311 m!655571))

(declare-fun m!655585 () Bool)

(assert (=> b!693309 m!655585))

(declare-fun m!655587 () Bool)

(assert (=> b!693309 m!655587))

(declare-fun m!655589 () Bool)

(assert (=> b!693313 m!655589))

(declare-fun m!655591 () Bool)

(assert (=> start!61990 m!655591))

(assert (=> b!693304 m!655571))

(assert (=> b!693304 m!655571))

(declare-fun m!655593 () Bool)

(assert (=> b!693304 m!655593))

(declare-fun m!655595 () Bool)

(assert (=> b!693302 m!655595))

(declare-fun m!655597 () Bool)

(assert (=> b!693308 m!655597))

(declare-fun m!655599 () Bool)

(assert (=> b!693293 m!655599))

(declare-fun m!655601 () Bool)

(assert (=> b!693314 m!655601))

(declare-fun m!655603 () Bool)

(assert (=> b!693289 m!655603))

(assert (=> b!693295 m!655603))

(assert (=> b!693303 m!655599))

(push 1)

(assert (not b!693300))

(assert (not b!693293))

(assert (not b!693306))

(assert (not b!693304))

(assert (not b!693314))

(assert (not b!693296))

(assert (not b!693309))

(assert (not b!693295))

(assert (not b!693313))

(assert (not start!61990))

(assert (not b!693291))

(assert (not b!693299))

(assert (not b!693308))

(assert (not b!693312))

(assert (not b!693301))

(assert (not b!693307))

(assert (not b!693303))

(assert (not b!693302))

(assert (not b!693289))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!95691 () Bool)

(declare-fun res!457623 () Bool)

(declare-fun e!394454 () Bool)

(assert (=> d!95691 (=> res!457623 e!394454)))

(assert (=> d!95691 (= res!457623 (is-Nil!13167 acc!681))))

(assert (=> d!95691 (= (noDuplicate!960 acc!681) e!394454)))

(declare-fun b!693321 () Bool)

(declare-fun e!394455 () Bool)

(assert (=> b!693321 (= e!394454 e!394455)))

(declare-fun res!457624 () Bool)

(assert (=> b!693321 (=> (not res!457624) (not e!394455))))

(assert (=> b!693321 (= res!457624 (not (contains!3713 (t!19454 acc!681) (h!14211 acc!681))))))

(declare-fun b!693322 () Bool)

(assert (=> b!693322 (= e!394455 (noDuplicate!960 (t!19454 acc!681)))))

(assert (= (and d!95691 (not res!457623)) b!693321))

(assert (= (and b!693321 res!457624) b!693322))

(declare-fun m!655605 () Bool)

(assert (=> b!693321 m!655605))

(declare-fun m!655607 () Bool)

(assert (=> b!693322 m!655607))

(assert (=> b!693308 d!95691))

(declare-fun d!95695 () Bool)

(assert (=> d!95695 (= ($colon$colon!423 acc!681 (select (arr!19076 a!3626) from!3004)) (Cons!13166 (select (arr!19076 a!3626) from!3004) acc!681))))

(assert (=> b!693296 d!95695))

(declare-fun d!95697 () Bool)

(declare-fun lt!316704 () Bool)

(declare-fun content!320 (List!13170) (Set (_ BitVec 64)))

(assert (=> d!95697 (= lt!316704 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!320 acc!681)))))

(declare-fun e!394465 () Bool)

(assert (=> d!95697 (= lt!316704 e!394465)))

(declare-fun res!457633 () Bool)

(assert (=> d!95697 (=> (not res!457633) (not e!394465))))

(assert (=> d!95697 (= res!457633 (is-Cons!13166 acc!681))))

(assert (=> d!95697 (= (contains!3713 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316704)))

(declare-fun b!693331 () Bool)

(declare-fun e!394464 () Bool)

(assert (=> b!693331 (= e!394465 e!394464)))

(declare-fun res!457634 () Bool)

(assert (=> b!693331 (=> res!457634 e!394464)))

(assert (=> b!693331 (= res!457634 (= (h!14211 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!693332 () Bool)

(assert (=> b!693332 (= e!394464 (contains!3713 (t!19454 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95697 res!457633) b!693331))

(assert (= (and b!693331 (not res!457634)) b!693332))

(declare-fun m!655615 () Bool)

(assert (=> d!95697 m!655615))

(declare-fun m!655617 () Bool)

(assert (=> d!95697 m!655617))

(declare-fun m!655619 () Bool)

(assert (=> b!693332 m!655619))

(assert (=> b!693307 d!95697))

(declare-fun b!693362 () Bool)

(declare-fun e!394493 () Bool)

(declare-fun call!34265 () Bool)

(assert (=> b!693362 (= e!394493 call!34265)))

(declare-fun b!693363 () Bool)

(assert (=> b!693363 (= e!394493 call!34265)))

(declare-fun c!78221 () Bool)

(declare-fun bm!34262 () Bool)

(assert (=> bm!34262 (= call!34265 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!78221 (Cons!13166 (select (arr!19076 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) lt!316696) lt!316696)))))

(declare-fun b!693364 () Bool)

(declare-fun e!394490 () Bool)

(assert (=> b!693364 (= e!394490 e!394493)))

(assert (=> b!693364 (= c!78221 (validKeyInArray!0 (select (arr!19076 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!95701 () Bool)

(declare-fun res!457656 () Bool)

(declare-fun e!394492 () Bool)

(assert (=> d!95701 (=> res!457656 e!394492)))

(assert (=> d!95701 (= res!457656 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19459 a!3626)))))

(assert (=> d!95701 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316696) e!394492)))

(declare-fun b!693365 () Bool)

(assert (=> b!693365 (= e!394492 e!394490)))

(declare-fun res!457655 () Bool)

(assert (=> b!693365 (=> (not res!457655) (not e!394490))))

(declare-fun e!394491 () Bool)

(assert (=> b!693365 (= res!457655 (not e!394491))))

(declare-fun res!457654 () Bool)

(assert (=> b!693365 (=> (not res!457654) (not e!394491))))

(assert (=> b!693365 (= res!457654 (validKeyInArray!0 (select (arr!19076 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!693366 () Bool)

(assert (=> b!693366 (= e!394491 (contains!3713 lt!316696 (select (arr!19076 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (= (and d!95701 (not res!457656)) b!693365))

(assert (= (and b!693365 res!457654) b!693366))

(assert (= (and b!693365 res!457655) b!693364))

(assert (= (and b!693364 c!78221) b!693362))

(assert (= (and b!693364 (not c!78221)) b!693363))

(assert (= (or b!693362 b!693363) bm!34262))

(declare-fun m!655633 () Bool)

(assert (=> bm!34262 m!655633))

(declare-fun m!655635 () Bool)

(assert (=> bm!34262 m!655635))

(assert (=> b!693364 m!655633))

(assert (=> b!693364 m!655633))

(declare-fun m!655637 () Bool)

(assert (=> b!693364 m!655637))

(assert (=> b!693365 m!655633))

(assert (=> b!693365 m!655633))

(assert (=> b!693365 m!655637))

(assert (=> b!693366 m!655633))

(assert (=> b!693366 m!655633))

(declare-fun m!655639 () Bool)

(assert (=> b!693366 m!655639))

(assert (=> b!693306 d!95701))

(declare-fun d!95711 () Bool)

(declare-fun lt!316705 () Bool)

(assert (=> d!95711 (= lt!316705 (member k!2843 (content!320 lt!316696)))))

(declare-fun e!394501 () Bool)

(assert (=> d!95711 (= lt!316705 e!394501)))

(declare-fun res!457662 () Bool)

(assert (=> d!95711 (=> (not res!457662) (not e!394501))))

(assert (=> d!95711 (= res!457662 (is-Cons!13166 lt!316696))))

(assert (=> d!95711 (= (contains!3713 lt!316696 k!2843) lt!316705)))

(declare-fun b!693374 () Bool)

(declare-fun e!394500 () Bool)

(assert (=> b!693374 (= e!394501 e!394500)))

(declare-fun res!457663 () Bool)

(assert (=> b!693374 (=> res!457663 e!394500)))

(assert (=> b!693374 (= res!457663 (= (h!14211 lt!316696) k!2843))))

(declare-fun b!693375 () Bool)

(assert (=> b!693375 (= e!394500 (contains!3713 (t!19454 lt!316696) k!2843))))

(assert (= (and d!95711 res!457662) b!693374))

(assert (= (and b!693374 (not res!457663)) b!693375))

(declare-fun m!655645 () Bool)

(assert (=> d!95711 m!655645))

(declare-fun m!655647 () Bool)

(assert (=> d!95711 m!655647))

(declare-fun m!655649 () Bool)

(assert (=> b!693375 m!655649))

(assert (=> b!693295 d!95711))

(declare-fun d!95713 () Bool)

(assert (=> d!95713 (= (validKeyInArray!0 (select (arr!19076 a!3626) from!3004)) (and (not (= (select (arr!19076 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19076 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!693304 d!95713))

(declare-fun d!95717 () Bool)

(declare-fun lt!316706 () Bool)

(assert (=> d!95717 (= lt!316706 (member k!2843 (content!320 acc!681)))))

(declare-fun e!394511 () Bool)

(assert (=> d!95717 (= lt!316706 e!394511)))

(declare-fun res!457670 () Bool)

(assert (=> d!95717 (=> (not res!457670) (not e!394511))))

(assert (=> d!95717 (= res!457670 (is-Cons!13166 acc!681))))

(assert (=> d!95717 (= (contains!3713 acc!681 k!2843) lt!316706)))

(declare-fun b!693386 () Bool)

(declare-fun e!394510 () Bool)

(assert (=> b!693386 (= e!394511 e!394510)))

(declare-fun res!457671 () Bool)

(assert (=> b!693386 (=> res!457671 e!394510)))

(assert (=> b!693386 (= res!457671 (= (h!14211 acc!681) k!2843))))

(declare-fun b!693387 () Bool)

(assert (=> b!693387 (= e!394510 (contains!3713 (t!19454 acc!681) k!2843))))

(assert (= (and d!95717 res!457670) b!693386))

(assert (= (and b!693386 (not res!457671)) b!693387))

(assert (=> d!95717 m!655615))

(declare-fun m!655655 () Bool)

(assert (=> d!95717 m!655655))

(declare-fun m!655657 () Bool)

(assert (=> b!693387 m!655657))

(assert (=> b!693293 d!95717))

(declare-fun d!95719 () Bool)

(declare-fun res!457672 () Bool)

(declare-fun e!394512 () Bool)

(assert (=> d!95719 (=> res!457672 e!394512)))

(assert (=> d!95719 (= res!457672 (is-Nil!13167 lt!316696))))

(assert (=> d!95719 (= (noDuplicate!960 lt!316696) e!394512)))

(declare-fun b!693388 () Bool)

(declare-fun e!394513 () Bool)

(assert (=> b!693388 (= e!394512 e!394513)))

(declare-fun res!457673 () Bool)

(assert (=> b!693388 (=> (not res!457673) (not e!394513))))

(assert (=> b!693388 (= res!457673 (not (contains!3713 (t!19454 lt!316696) (h!14211 lt!316696))))))

(declare-fun b!693389 () Bool)

(assert (=> b!693389 (= e!394513 (noDuplicate!960 (t!19454 lt!316696)))))

(assert (= (and d!95719 (not res!457672)) b!693388))

(assert (= (and b!693388 res!457673) b!693389))

(declare-fun m!655659 () Bool)

(assert (=> b!693388 m!655659))

(declare-fun m!655661 () Bool)

(assert (=> b!693389 m!655661))

(assert (=> b!693313 d!95719))

(declare-fun d!95721 () Bool)

(declare-fun lt!316707 () Bool)

(assert (=> d!95721 (= lt!316707 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!320 acc!681)))))

(declare-fun e!394519 () Bool)

(assert (=> d!95721 (= lt!316707 e!394519)))

(declare-fun res!457678 () Bool)

(assert (=> d!95721 (=> (not res!457678) (not e!394519))))

(assert (=> d!95721 (= res!457678 (is-Cons!13166 acc!681))))

(assert (=> d!95721 (= (contains!3713 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316707)))

(declare-fun b!693394 () Bool)

(declare-fun e!394518 () Bool)

(assert (=> b!693394 (= e!394519 e!394518)))

(declare-fun res!457679 () Bool)

(assert (=> b!693394 (=> res!457679 e!394518)))

(assert (=> b!693394 (= res!457679 (= (h!14211 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!693395 () Bool)

(assert (=> b!693395 (= e!394518 (contains!3713 (t!19454 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95721 res!457678) b!693394))

(assert (= (and b!693394 (not res!457679)) b!693395))

(assert (=> d!95721 m!655615))

(declare-fun m!655663 () Bool)

(assert (=> d!95721 m!655663))

(declare-fun m!655665 () Bool)

(assert (=> b!693395 m!655665))

(assert (=> b!693314 d!95721))

(assert (=> b!693303 d!95717))

(declare-fun b!693396 () Bool)

(declare-fun e!394523 () Bool)

(declare-fun call!34269 () Bool)

(assert (=> b!693396 (= e!394523 call!34269)))

(declare-fun b!693397 () Bool)

(assert (=> b!693397 (= e!394523 call!34269)))

(declare-fun bm!34266 () Bool)

(declare-fun c!78225 () Bool)

(assert (=> bm!34266 (= call!34269 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!78225 (Cons!13166 (select (arr!19076 a!3626) #b00000000000000000000000000000000) Nil!13167) Nil!13167)))))

(declare-fun b!693398 () Bool)

(declare-fun e!394520 () Bool)

(assert (=> b!693398 (= e!394520 e!394523)))

(assert (=> b!693398 (= c!78225 (validKeyInArray!0 (select (arr!19076 a!3626) #b00000000000000000000000000000000)))))

(declare-fun d!95723 () Bool)

(declare-fun res!457682 () Bool)

(declare-fun e!394522 () Bool)

(assert (=> d!95723 (=> res!457682 e!394522)))

(assert (=> d!95723 (= res!457682 (bvsge #b00000000000000000000000000000000 (size!19459 a!3626)))))

(assert (=> d!95723 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13167) e!394522)))

(declare-fun b!693399 () Bool)

(assert (=> b!693399 (= e!394522 e!394520)))

(declare-fun res!457681 () Bool)

(assert (=> b!693399 (=> (not res!457681) (not e!394520))))

(declare-fun e!394521 () Bool)

(assert (=> b!693399 (= res!457681 (not e!394521))))

(declare-fun res!457680 () Bool)

(assert (=> b!693399 (=> (not res!457680) (not e!394521))))

(assert (=> b!693399 (= res!457680 (validKeyInArray!0 (select (arr!19076 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!693400 () Bool)

(assert (=> b!693400 (= e!394521 (contains!3713 Nil!13167 (select (arr!19076 a!3626) #b00000000000000000000000000000000)))))

(assert (= (and d!95723 (not res!457682)) b!693399))

(assert (= (and b!693399 res!457680) b!693400))

(assert (= (and b!693399 res!457681) b!693398))

(assert (= (and b!693398 c!78225) b!693396))

(assert (= (and b!693398 (not c!78225)) b!693397))

(assert (= (or b!693396 b!693397) bm!34266))

(declare-fun m!655667 () Bool)

(assert (=> bm!34266 m!655667))

(declare-fun m!655669 () Bool)

(assert (=> bm!34266 m!655669))

(assert (=> b!693398 m!655667))

(assert (=> b!693398 m!655667))

(declare-fun m!655671 () Bool)

(assert (=> b!693398 m!655671))

(assert (=> b!693399 m!655667))

(assert (=> b!693399 m!655667))

(assert (=> b!693399 m!655671))

(assert (=> b!693400 m!655667))

(assert (=> b!693400 m!655667))

(declare-fun m!655673 () Bool)

(assert (=> b!693400 m!655673))

(assert (=> b!693312 d!95723))

(declare-fun d!95725 () Bool)

(declare-fun lt!316708 () Bool)

(assert (=> d!95725 (= lt!316708 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!320 lt!316696)))))

(declare-fun e!394527 () Bool)

(assert (=> d!95725 (= lt!316708 e!394527)))

(declare-fun res!457685 () Bool)

(assert (=> d!95725 (=> (not res!457685) (not e!394527))))

(assert (=> d!95725 (= res!457685 (is-Cons!13166 lt!316696))))

(assert (=> d!95725 (= (contains!3713 lt!316696 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316708)))

(declare-fun b!693403 () Bool)

(declare-fun e!394526 () Bool)

(assert (=> b!693403 (= e!394527 e!394526)))

(declare-fun res!457686 () Bool)

(assert (=> b!693403 (=> res!457686 e!394526)))

(assert (=> b!693403 (= res!457686 (= (h!14211 lt!316696) #b1000000000000000000000000000000000000000000000000000000000000000))))

