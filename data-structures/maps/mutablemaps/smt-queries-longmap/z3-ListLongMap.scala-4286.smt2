; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59726 () Bool)

(assert start!59726)

(declare-fun b!659568 () Bool)

(declare-fun res!427810 () Bool)

(declare-fun e!378973 () Bool)

(assert (=> b!659568 (=> (not res!427810) (not e!378973))))

(declare-datatypes ((List!12665 0))(
  ( (Nil!12662) (Cons!12661 (h!13706 (_ BitVec 64)) (t!18901 List!12665)) )
))
(declare-fun acc!681 () List!12665)

(declare-fun noDuplicate!455 (List!12665) Bool)

(assert (=> b!659568 (= res!427810 (noDuplicate!455 acc!681))))

(declare-fun res!427812 () Bool)

(assert (=> start!59726 (=> (not res!427812) (not e!378973))))

(declare-datatypes ((array!38759 0))(
  ( (array!38760 (arr!18571 (Array (_ BitVec 32) (_ BitVec 64))) (size!18935 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38759)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59726 (= res!427812 (and (bvslt (size!18935 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18935 a!3626))))))

(assert (=> start!59726 e!378973))

(assert (=> start!59726 true))

(declare-fun array_inv!14345 (array!38759) Bool)

(assert (=> start!59726 (array_inv!14345 a!3626)))

(declare-fun b!659569 () Bool)

(declare-fun e!378972 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3208 (List!12665 (_ BitVec 64)) Bool)

(assert (=> b!659569 (= e!378972 (not (contains!3208 acc!681 k0!2843)))))

(declare-fun b!659570 () Bool)

(declare-fun res!427813 () Bool)

(assert (=> b!659570 (=> (not res!427813) (not e!378973))))

(declare-fun e!378969 () Bool)

(assert (=> b!659570 (= res!427813 e!378969)))

(declare-fun res!427809 () Bool)

(assert (=> b!659570 (=> res!427809 e!378969)))

(declare-fun e!378971 () Bool)

(assert (=> b!659570 (= res!427809 e!378971)))

(declare-fun res!427807 () Bool)

(assert (=> b!659570 (=> (not res!427807) (not e!378971))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!659570 (= res!427807 (bvsgt from!3004 i!1382))))

(declare-fun b!659571 () Bool)

(declare-fun res!427811 () Bool)

(assert (=> b!659571 (=> (not res!427811) (not e!378973))))

(assert (=> b!659571 (= res!427811 (bvsle #b00000000000000000000000000000000 (size!18935 a!3626)))))

(declare-fun b!659572 () Bool)

(assert (=> b!659572 (= e!378973 (not (noDuplicate!455 Nil!12662)))))

(declare-fun b!659573 () Bool)

(assert (=> b!659573 (= e!378969 e!378972)))

(declare-fun res!427806 () Bool)

(assert (=> b!659573 (=> (not res!427806) (not e!378972))))

(assert (=> b!659573 (= res!427806 (bvsle from!3004 i!1382))))

(declare-fun b!659574 () Bool)

(declare-fun res!427808 () Bool)

(assert (=> b!659574 (=> (not res!427808) (not e!378973))))

(assert (=> b!659574 (= res!427808 (not (contains!3208 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659575 () Bool)

(assert (=> b!659575 (= e!378971 (contains!3208 acc!681 k0!2843))))

(declare-fun b!659576 () Bool)

(declare-fun res!427814 () Bool)

(assert (=> b!659576 (=> (not res!427814) (not e!378973))))

(assert (=> b!659576 (= res!427814 (not (contains!3208 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!59726 res!427812) b!659568))

(assert (= (and b!659568 res!427810) b!659574))

(assert (= (and b!659574 res!427808) b!659576))

(assert (= (and b!659576 res!427814) b!659570))

(assert (= (and b!659570 res!427807) b!659575))

(assert (= (and b!659570 (not res!427809)) b!659573))

(assert (= (and b!659573 res!427806) b!659569))

(assert (= (and b!659570 res!427813) b!659571))

(assert (= (and b!659571 res!427811) b!659572))

(declare-fun m!632553 () Bool)

(assert (=> b!659568 m!632553))

(declare-fun m!632555 () Bool)

(assert (=> start!59726 m!632555))

(declare-fun m!632557 () Bool)

(assert (=> b!659575 m!632557))

(declare-fun m!632559 () Bool)

(assert (=> b!659572 m!632559))

(declare-fun m!632561 () Bool)

(assert (=> b!659574 m!632561))

(declare-fun m!632563 () Bool)

(assert (=> b!659576 m!632563))

(assert (=> b!659569 m!632557))

(check-sat (not b!659575) (not b!659572) (not b!659568) (not b!659574) (not b!659576) (not start!59726) (not b!659569))
(check-sat)
(get-model)

(declare-fun d!93001 () Bool)

(declare-fun lt!308652 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!256 (List!12665) (InoxSet (_ BitVec 64)))

(assert (=> d!93001 (= lt!308652 (select (content!256 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!378994 () Bool)

(assert (=> d!93001 (= lt!308652 e!378994)))

(declare-fun res!427846 () Bool)

(assert (=> d!93001 (=> (not res!427846) (not e!378994))))

(get-info :version)

(assert (=> d!93001 (= res!427846 ((_ is Cons!12661) acc!681))))

(assert (=> d!93001 (= (contains!3208 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!308652)))

(declare-fun b!659608 () Bool)

(declare-fun e!378993 () Bool)

(assert (=> b!659608 (= e!378994 e!378993)))

(declare-fun res!427847 () Bool)

(assert (=> b!659608 (=> res!427847 e!378993)))

(assert (=> b!659608 (= res!427847 (= (h!13706 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!659609 () Bool)

(assert (=> b!659609 (= e!378993 (contains!3208 (t!18901 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93001 res!427846) b!659608))

(assert (= (and b!659608 (not res!427847)) b!659609))

(declare-fun m!632577 () Bool)

(assert (=> d!93001 m!632577))

(declare-fun m!632579 () Bool)

(assert (=> d!93001 m!632579))

(declare-fun m!632581 () Bool)

(assert (=> b!659609 m!632581))

(assert (=> b!659574 d!93001))

(declare-fun d!93003 () Bool)

(declare-fun res!427852 () Bool)

(declare-fun e!378999 () Bool)

(assert (=> d!93003 (=> res!427852 e!378999)))

(assert (=> d!93003 (= res!427852 ((_ is Nil!12662) acc!681))))

(assert (=> d!93003 (= (noDuplicate!455 acc!681) e!378999)))

(declare-fun b!659614 () Bool)

(declare-fun e!379000 () Bool)

(assert (=> b!659614 (= e!378999 e!379000)))

(declare-fun res!427853 () Bool)

(assert (=> b!659614 (=> (not res!427853) (not e!379000))))

(assert (=> b!659614 (= res!427853 (not (contains!3208 (t!18901 acc!681) (h!13706 acc!681))))))

(declare-fun b!659615 () Bool)

(assert (=> b!659615 (= e!379000 (noDuplicate!455 (t!18901 acc!681)))))

(assert (= (and d!93003 (not res!427852)) b!659614))

(assert (= (and b!659614 res!427853) b!659615))

(declare-fun m!632583 () Bool)

(assert (=> b!659614 m!632583))

(declare-fun m!632585 () Bool)

(assert (=> b!659615 m!632585))

(assert (=> b!659568 d!93003))

(declare-fun d!93007 () Bool)

(declare-fun lt!308653 () Bool)

(assert (=> d!93007 (= lt!308653 (select (content!256 acc!681) k0!2843))))

(declare-fun e!379002 () Bool)

(assert (=> d!93007 (= lt!308653 e!379002)))

(declare-fun res!427854 () Bool)

(assert (=> d!93007 (=> (not res!427854) (not e!379002))))

(assert (=> d!93007 (= res!427854 ((_ is Cons!12661) acc!681))))

(assert (=> d!93007 (= (contains!3208 acc!681 k0!2843) lt!308653)))

(declare-fun b!659616 () Bool)

(declare-fun e!379001 () Bool)

(assert (=> b!659616 (= e!379002 e!379001)))

(declare-fun res!427855 () Bool)

(assert (=> b!659616 (=> res!427855 e!379001)))

(assert (=> b!659616 (= res!427855 (= (h!13706 acc!681) k0!2843))))

(declare-fun b!659617 () Bool)

(assert (=> b!659617 (= e!379001 (contains!3208 (t!18901 acc!681) k0!2843))))

(assert (= (and d!93007 res!427854) b!659616))

(assert (= (and b!659616 (not res!427855)) b!659617))

(assert (=> d!93007 m!632577))

(declare-fun m!632587 () Bool)

(assert (=> d!93007 m!632587))

(declare-fun m!632589 () Bool)

(assert (=> b!659617 m!632589))

(assert (=> b!659575 d!93007))

(assert (=> b!659569 d!93007))

(declare-fun d!93009 () Bool)

(assert (=> d!93009 (= (array_inv!14345 a!3626) (bvsge (size!18935 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!59726 d!93009))

(declare-fun d!93011 () Bool)

(declare-fun lt!308654 () Bool)

(assert (=> d!93011 (= lt!308654 (select (content!256 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!379004 () Bool)

(assert (=> d!93011 (= lt!308654 e!379004)))

(declare-fun res!427856 () Bool)

(assert (=> d!93011 (=> (not res!427856) (not e!379004))))

(assert (=> d!93011 (= res!427856 ((_ is Cons!12661) acc!681))))

(assert (=> d!93011 (= (contains!3208 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!308654)))

(declare-fun b!659618 () Bool)

(declare-fun e!379003 () Bool)

(assert (=> b!659618 (= e!379004 e!379003)))

(declare-fun res!427857 () Bool)

(assert (=> b!659618 (=> res!427857 e!379003)))

(assert (=> b!659618 (= res!427857 (= (h!13706 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!659619 () Bool)

(assert (=> b!659619 (= e!379003 (contains!3208 (t!18901 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93011 res!427856) b!659618))

(assert (= (and b!659618 (not res!427857)) b!659619))

(assert (=> d!93011 m!632577))

(declare-fun m!632591 () Bool)

(assert (=> d!93011 m!632591))

(declare-fun m!632593 () Bool)

(assert (=> b!659619 m!632593))

(assert (=> b!659576 d!93011))

(declare-fun d!93015 () Bool)

(declare-fun res!427858 () Bool)

(declare-fun e!379005 () Bool)

(assert (=> d!93015 (=> res!427858 e!379005)))

(assert (=> d!93015 (= res!427858 ((_ is Nil!12662) Nil!12662))))

(assert (=> d!93015 (= (noDuplicate!455 Nil!12662) e!379005)))

(declare-fun b!659620 () Bool)

(declare-fun e!379006 () Bool)

(assert (=> b!659620 (= e!379005 e!379006)))

(declare-fun res!427859 () Bool)

(assert (=> b!659620 (=> (not res!427859) (not e!379006))))

(assert (=> b!659620 (= res!427859 (not (contains!3208 (t!18901 Nil!12662) (h!13706 Nil!12662))))))

(declare-fun b!659621 () Bool)

(assert (=> b!659621 (= e!379006 (noDuplicate!455 (t!18901 Nil!12662)))))

(assert (= (and d!93015 (not res!427858)) b!659620))

(assert (= (and b!659620 res!427859) b!659621))

(declare-fun m!632595 () Bool)

(assert (=> b!659620 m!632595))

(declare-fun m!632597 () Bool)

(assert (=> b!659621 m!632597))

(assert (=> b!659572 d!93015))

(check-sat (not b!659619) (not d!93007) (not b!659620) (not d!93001) (not b!659617) (not b!659614) (not b!659609) (not b!659615) (not d!93011) (not b!659621))
(check-sat)
