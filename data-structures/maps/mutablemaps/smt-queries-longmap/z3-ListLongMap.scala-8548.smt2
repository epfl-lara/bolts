; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104346 () Bool)

(assert start!104346)

(declare-fun b!1245683 () Bool)

(declare-fun res!831233 () Bool)

(declare-fun e!706433 () Bool)

(assert (=> b!1245683 (=> (not res!831233) (not e!706433))))

(declare-datatypes ((List!27649 0))(
  ( (Nil!27646) (Cons!27645 (h!28854 (_ BitVec 64)) (t!41125 List!27649)) )
))
(declare-fun lt!562907 () List!27649)

(declare-fun noDuplicate!2057 (List!27649) Bool)

(assert (=> b!1245683 (= res!831233 (noDuplicate!2057 lt!562907))))

(declare-fun b!1245684 () Bool)

(declare-fun e!706434 () Bool)

(assert (=> b!1245684 (= e!706434 e!706433)))

(declare-fun res!831232 () Bool)

(assert (=> b!1245684 (=> (not res!831232) (not e!706433))))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1245684 (= res!831232 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(declare-datatypes ((array!80182 0))(
  ( (array!80183 (arr!38668 (Array (_ BitVec 32) (_ BitVec 64))) (size!39205 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80182)

(assert (=> b!1245684 (= lt!562907 (Cons!27645 (select (arr!38668 a!3892) from!3270) Nil!27646))))

(declare-fun b!1245685 () Bool)

(declare-fun res!831231 () Bool)

(assert (=> b!1245685 (=> (not res!831231) (not e!706434))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1245685 (= res!831231 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39205 a!3892)) (not (= newFrom!287 (size!39205 a!3892)))))))

(declare-fun b!1245686 () Bool)

(declare-fun res!831234 () Bool)

(assert (=> b!1245686 (=> (not res!831234) (not e!706434))))

(declare-fun arrayNoDuplicates!0 (array!80182 (_ BitVec 32) List!27649) Bool)

(assert (=> b!1245686 (= res!831234 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27646))))

(declare-fun res!831228 () Bool)

(assert (=> start!104346 (=> (not res!831228) (not e!706434))))

(assert (=> start!104346 (= res!831228 (and (bvslt (size!39205 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39205 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39205 a!3892))))))

(assert (=> start!104346 e!706434))

(declare-fun array_inv!29444 (array!80182) Bool)

(assert (=> start!104346 (array_inv!29444 a!3892)))

(assert (=> start!104346 true))

(declare-fun b!1245687 () Bool)

(declare-fun e!706432 () Bool)

(assert (=> b!1245687 (= e!706433 e!706432)))

(declare-fun res!831229 () Bool)

(assert (=> b!1245687 (=> res!831229 e!706432)))

(declare-fun contains!7467 (List!27649 (_ BitVec 64)) Bool)

(assert (=> b!1245687 (= res!831229 (contains!7467 Nil!27646 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245688 () Bool)

(declare-fun res!831230 () Bool)

(assert (=> b!1245688 (=> (not res!831230) (not e!706434))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1245688 (= res!831230 (validKeyInArray!0 (select (arr!38668 a!3892) from!3270)))))

(declare-fun b!1245689 () Bool)

(declare-fun res!831235 () Bool)

(assert (=> b!1245689 (=> (not res!831235) (not e!706433))))

(assert (=> b!1245689 (= res!831235 (not (contains!7467 lt!562907 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1245690 () Bool)

(assert (=> b!1245690 (= e!706432 (contains!7467 Nil!27646 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245691 () Bool)

(declare-fun res!831227 () Bool)

(assert (=> b!1245691 (=> (not res!831227) (not e!706433))))

(assert (=> b!1245691 (= res!831227 (not (contains!7467 lt!562907 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!104346 res!831228) b!1245686))

(assert (= (and b!1245686 res!831234) b!1245685))

(assert (= (and b!1245685 res!831231) b!1245688))

(assert (= (and b!1245688 res!831230) b!1245684))

(assert (= (and b!1245684 res!831232) b!1245683))

(assert (= (and b!1245683 res!831233) b!1245691))

(assert (= (and b!1245691 res!831227) b!1245689))

(assert (= (and b!1245689 res!831235) b!1245687))

(assert (= (and b!1245687 (not res!831229)) b!1245690))

(declare-fun m!1147715 () Bool)

(assert (=> b!1245688 m!1147715))

(assert (=> b!1245688 m!1147715))

(declare-fun m!1147717 () Bool)

(assert (=> b!1245688 m!1147717))

(declare-fun m!1147719 () Bool)

(assert (=> b!1245691 m!1147719))

(declare-fun m!1147721 () Bool)

(assert (=> b!1245689 m!1147721))

(declare-fun m!1147723 () Bool)

(assert (=> b!1245687 m!1147723))

(declare-fun m!1147725 () Bool)

(assert (=> start!104346 m!1147725))

(declare-fun m!1147727 () Bool)

(assert (=> b!1245683 m!1147727))

(declare-fun m!1147729 () Bool)

(assert (=> b!1245690 m!1147729))

(declare-fun m!1147731 () Bool)

(assert (=> b!1245686 m!1147731))

(assert (=> b!1245684 m!1147715))

(check-sat (not b!1245683) (not b!1245689) (not b!1245691) (not b!1245688) (not start!104346) (not b!1245686) (not b!1245687) (not b!1245690))
(check-sat)
(get-model)

(declare-fun d!137389 () Bool)

(declare-fun lt!562913 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!630 (List!27649) (InoxSet (_ BitVec 64)))

(assert (=> d!137389 (= lt!562913 (select (content!630 lt!562907) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!706452 () Bool)

(assert (=> d!137389 (= lt!562913 e!706452)))

(declare-fun res!831267 () Bool)

(assert (=> d!137389 (=> (not res!831267) (not e!706452))))

(get-info :version)

(assert (=> d!137389 (= res!831267 ((_ is Cons!27645) lt!562907))))

(assert (=> d!137389 (= (contains!7467 lt!562907 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562913)))

(declare-fun b!1245723 () Bool)

(declare-fun e!706453 () Bool)

(assert (=> b!1245723 (= e!706452 e!706453)))

(declare-fun res!831268 () Bool)

(assert (=> b!1245723 (=> res!831268 e!706453)))

(assert (=> b!1245723 (= res!831268 (= (h!28854 lt!562907) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245724 () Bool)

(assert (=> b!1245724 (= e!706453 (contains!7467 (t!41125 lt!562907) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137389 res!831267) b!1245723))

(assert (= (and b!1245723 (not res!831268)) b!1245724))

(declare-fun m!1147751 () Bool)

(assert (=> d!137389 m!1147751))

(declare-fun m!1147753 () Bool)

(assert (=> d!137389 m!1147753))

(declare-fun m!1147755 () Bool)

(assert (=> b!1245724 m!1147755))

(assert (=> b!1245689 d!137389))

(declare-fun d!137391 () Bool)

(declare-fun res!831273 () Bool)

(declare-fun e!706458 () Bool)

(assert (=> d!137391 (=> res!831273 e!706458)))

(assert (=> d!137391 (= res!831273 ((_ is Nil!27646) lt!562907))))

(assert (=> d!137391 (= (noDuplicate!2057 lt!562907) e!706458)))

(declare-fun b!1245729 () Bool)

(declare-fun e!706459 () Bool)

(assert (=> b!1245729 (= e!706458 e!706459)))

(declare-fun res!831274 () Bool)

(assert (=> b!1245729 (=> (not res!831274) (not e!706459))))

(assert (=> b!1245729 (= res!831274 (not (contains!7467 (t!41125 lt!562907) (h!28854 lt!562907))))))

(declare-fun b!1245730 () Bool)

(assert (=> b!1245730 (= e!706459 (noDuplicate!2057 (t!41125 lt!562907)))))

(assert (= (and d!137391 (not res!831273)) b!1245729))

(assert (= (and b!1245729 res!831274) b!1245730))

(declare-fun m!1147757 () Bool)

(assert (=> b!1245729 m!1147757))

(declare-fun m!1147759 () Bool)

(assert (=> b!1245730 m!1147759))

(assert (=> b!1245683 d!137391))

(declare-fun d!137395 () Bool)

(assert (=> d!137395 (= (validKeyInArray!0 (select (arr!38668 a!3892) from!3270)) (and (not (= (select (arr!38668 a!3892) from!3270) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38668 a!3892) from!3270) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1245688 d!137395))

(declare-fun d!137399 () Bool)

(declare-fun lt!562914 () Bool)

(assert (=> d!137399 (= lt!562914 (select (content!630 Nil!27646) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!706460 () Bool)

(assert (=> d!137399 (= lt!562914 e!706460)))

(declare-fun res!831275 () Bool)

(assert (=> d!137399 (=> (not res!831275) (not e!706460))))

(assert (=> d!137399 (= res!831275 ((_ is Cons!27645) Nil!27646))))

(assert (=> d!137399 (= (contains!7467 Nil!27646 #b1000000000000000000000000000000000000000000000000000000000000000) lt!562914)))

(declare-fun b!1245731 () Bool)

(declare-fun e!706461 () Bool)

(assert (=> b!1245731 (= e!706460 e!706461)))

(declare-fun res!831276 () Bool)

(assert (=> b!1245731 (=> res!831276 e!706461)))

(assert (=> b!1245731 (= res!831276 (= (h!28854 Nil!27646) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245732 () Bool)

(assert (=> b!1245732 (= e!706461 (contains!7467 (t!41125 Nil!27646) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137399 res!831275) b!1245731))

(assert (= (and b!1245731 (not res!831276)) b!1245732))

(declare-fun m!1147761 () Bool)

(assert (=> d!137399 m!1147761))

(declare-fun m!1147763 () Bool)

(assert (=> d!137399 m!1147763))

(declare-fun m!1147765 () Bool)

(assert (=> b!1245732 m!1147765))

(assert (=> b!1245690 d!137399))

(declare-fun d!137401 () Bool)

(assert (=> d!137401 (= (array_inv!29444 a!3892) (bvsge (size!39205 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104346 d!137401))

(declare-fun call!61501 () Bool)

(declare-fun c!121922 () Bool)

(declare-fun bm!61498 () Bool)

(assert (=> bm!61498 (= call!61501 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121922 (Cons!27645 (select (arr!38668 a!3892) from!3270) Nil!27646) Nil!27646)))))

(declare-fun b!1245780 () Bool)

(declare-fun e!706503 () Bool)

(assert (=> b!1245780 (= e!706503 call!61501)))

(declare-fun b!1245781 () Bool)

(assert (=> b!1245781 (= e!706503 call!61501)))

(declare-fun b!1245782 () Bool)

(declare-fun e!706505 () Bool)

(declare-fun e!706502 () Bool)

(assert (=> b!1245782 (= e!706505 e!706502)))

(declare-fun res!831312 () Bool)

(assert (=> b!1245782 (=> (not res!831312) (not e!706502))))

(declare-fun e!706504 () Bool)

(assert (=> b!1245782 (= res!831312 (not e!706504))))

(declare-fun res!831311 () Bool)

(assert (=> b!1245782 (=> (not res!831311) (not e!706504))))

(assert (=> b!1245782 (= res!831311 (validKeyInArray!0 (select (arr!38668 a!3892) from!3270)))))

(declare-fun b!1245784 () Bool)

(assert (=> b!1245784 (= e!706504 (contains!7467 Nil!27646 (select (arr!38668 a!3892) from!3270)))))

(declare-fun b!1245783 () Bool)

(assert (=> b!1245783 (= e!706502 e!706503)))

(assert (=> b!1245783 (= c!121922 (validKeyInArray!0 (select (arr!38668 a!3892) from!3270)))))

(declare-fun d!137403 () Bool)

(declare-fun res!831310 () Bool)

(assert (=> d!137403 (=> res!831310 e!706505)))

(assert (=> d!137403 (= res!831310 (bvsge from!3270 (size!39205 a!3892)))))

(assert (=> d!137403 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27646) e!706505)))

(assert (= (and d!137403 (not res!831310)) b!1245782))

(assert (= (and b!1245782 res!831311) b!1245784))

(assert (= (and b!1245782 res!831312) b!1245783))

(assert (= (and b!1245783 c!121922) b!1245780))

(assert (= (and b!1245783 (not c!121922)) b!1245781))

(assert (= (or b!1245780 b!1245781) bm!61498))

(assert (=> bm!61498 m!1147715))

(declare-fun m!1147783 () Bool)

(assert (=> bm!61498 m!1147783))

(assert (=> b!1245782 m!1147715))

(assert (=> b!1245782 m!1147715))

(assert (=> b!1245782 m!1147717))

(assert (=> b!1245784 m!1147715))

(assert (=> b!1245784 m!1147715))

(declare-fun m!1147785 () Bool)

(assert (=> b!1245784 m!1147785))

(assert (=> b!1245783 m!1147715))

(assert (=> b!1245783 m!1147715))

(assert (=> b!1245783 m!1147717))

(assert (=> b!1245686 d!137403))

(declare-fun d!137411 () Bool)

(declare-fun lt!562921 () Bool)

(assert (=> d!137411 (= lt!562921 (select (content!630 lt!562907) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!706516 () Bool)

(assert (=> d!137411 (= lt!562921 e!706516)))

(declare-fun res!831322 () Bool)

(assert (=> d!137411 (=> (not res!831322) (not e!706516))))

(assert (=> d!137411 (= res!831322 ((_ is Cons!27645) lt!562907))))

(assert (=> d!137411 (= (contains!7467 lt!562907 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562921)))

(declare-fun b!1245796 () Bool)

(declare-fun e!706517 () Bool)

(assert (=> b!1245796 (= e!706516 e!706517)))

(declare-fun res!831323 () Bool)

(assert (=> b!1245796 (=> res!831323 e!706517)))

(assert (=> b!1245796 (= res!831323 (= (h!28854 lt!562907) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245797 () Bool)

(assert (=> b!1245797 (= e!706517 (contains!7467 (t!41125 lt!562907) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137411 res!831322) b!1245796))

(assert (= (and b!1245796 (not res!831323)) b!1245797))

(assert (=> d!137411 m!1147751))

(declare-fun m!1147791 () Bool)

(assert (=> d!137411 m!1147791))

(declare-fun m!1147793 () Bool)

(assert (=> b!1245797 m!1147793))

(assert (=> b!1245691 d!137411))

(declare-fun d!137415 () Bool)

(declare-fun lt!562922 () Bool)

(assert (=> d!137415 (= lt!562922 (select (content!630 Nil!27646) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!706518 () Bool)

(assert (=> d!137415 (= lt!562922 e!706518)))

(declare-fun res!831324 () Bool)

(assert (=> d!137415 (=> (not res!831324) (not e!706518))))

(assert (=> d!137415 (= res!831324 ((_ is Cons!27645) Nil!27646))))

(assert (=> d!137415 (= (contains!7467 Nil!27646 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562922)))

(declare-fun b!1245798 () Bool)

(declare-fun e!706519 () Bool)

(assert (=> b!1245798 (= e!706518 e!706519)))

(declare-fun res!831325 () Bool)

(assert (=> b!1245798 (=> res!831325 e!706519)))

(assert (=> b!1245798 (= res!831325 (= (h!28854 Nil!27646) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245799 () Bool)

(assert (=> b!1245799 (= e!706519 (contains!7467 (t!41125 Nil!27646) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137415 res!831324) b!1245798))

(assert (= (and b!1245798 (not res!831325)) b!1245799))

(assert (=> d!137415 m!1147761))

(declare-fun m!1147799 () Bool)

(assert (=> d!137415 m!1147799))

(declare-fun m!1147801 () Bool)

(assert (=> b!1245799 m!1147801))

(assert (=> b!1245687 d!137415))

(check-sat (not b!1245724) (not b!1245732) (not bm!61498) (not d!137415) (not b!1245782) (not d!137389) (not b!1245783) (not b!1245730) (not b!1245799) (not d!137399) (not b!1245729) (not d!137411) (not b!1245784) (not b!1245797))
(check-sat)
