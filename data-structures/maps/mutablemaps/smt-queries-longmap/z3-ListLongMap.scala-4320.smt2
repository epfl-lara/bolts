; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59966 () Bool)

(assert start!59966)

(declare-fun b!664484 () Bool)

(declare-fun res!432308 () Bool)

(declare-fun e!381007 () Bool)

(assert (=> b!664484 (=> res!432308 e!381007)))

(declare-datatypes ((List!12767 0))(
  ( (Nil!12764) (Cons!12763 (h!13808 (_ BitVec 64)) (t!19003 List!12767)) )
))
(declare-fun lt!309665 () List!12767)

(declare-fun contains!3310 (List!12767 (_ BitVec 64)) Bool)

(assert (=> b!664484 (= res!432308 (contains!3310 lt!309665 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664485 () Bool)

(declare-fun res!432307 () Bool)

(declare-fun e!381008 () Bool)

(assert (=> b!664485 (=> (not res!432307) (not e!381008))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!664485 (= res!432307 (validKeyInArray!0 k0!2843))))

(declare-fun b!664486 () Bool)

(declare-fun e!381004 () Bool)

(declare-fun acc!681 () List!12767)

(assert (=> b!664486 (= e!381004 (not (contains!3310 acc!681 k0!2843)))))

(declare-fun b!664487 () Bool)

(declare-fun res!432324 () Bool)

(assert (=> b!664487 (=> res!432324 e!381007)))

(assert (=> b!664487 (= res!432324 (contains!3310 acc!681 k0!2843))))

(declare-fun b!664488 () Bool)

(declare-fun res!432325 () Bool)

(assert (=> b!664488 (=> (not res!432325) (not e!381008))))

(declare-fun noDuplicate!557 (List!12767) Bool)

(assert (=> b!664488 (= res!432325 (noDuplicate!557 acc!681))))

(declare-fun b!664489 () Bool)

(declare-fun res!432317 () Bool)

(assert (=> b!664489 (=> res!432317 e!381007)))

(declare-fun lt!309671 () Bool)

(assert (=> b!664489 (= res!432317 lt!309671)))

(declare-fun b!664490 () Bool)

(declare-fun res!432314 () Bool)

(assert (=> b!664490 (=> (not res!432314) (not e!381008))))

(assert (=> b!664490 (= res!432314 (not (contains!3310 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!432310 () Bool)

(assert (=> start!59966 (=> (not res!432310) (not e!381008))))

(declare-datatypes ((array!38969 0))(
  ( (array!38970 (arr!18673 (Array (_ BitVec 32) (_ BitVec 64))) (size!19037 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38969)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59966 (= res!432310 (and (bvslt (size!19037 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19037 a!3626))))))

(assert (=> start!59966 e!381008))

(assert (=> start!59966 true))

(declare-fun array_inv!14447 (array!38969) Bool)

(assert (=> start!59966 (array_inv!14447 a!3626)))

(declare-fun b!664491 () Bool)

(declare-datatypes ((Unit!23160 0))(
  ( (Unit!23161) )
))
(declare-fun e!381009 () Unit!23160)

(declare-fun Unit!23162 () Unit!23160)

(assert (=> b!664491 (= e!381009 Unit!23162)))

(declare-fun b!664492 () Bool)

(declare-fun e!381003 () Bool)

(assert (=> b!664492 (= e!381003 (contains!3310 acc!681 k0!2843))))

(declare-fun b!664493 () Bool)

(declare-fun res!432311 () Bool)

(assert (=> b!664493 (=> (not res!432311) (not e!381008))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!664493 (= res!432311 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19037 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!664494 () Bool)

(declare-fun e!381006 () Bool)

(assert (=> b!664494 (= e!381006 e!381004)))

(declare-fun res!432320 () Bool)

(assert (=> b!664494 (=> (not res!432320) (not e!381004))))

(assert (=> b!664494 (= res!432320 (bvsle from!3004 i!1382))))

(declare-fun b!664495 () Bool)

(declare-fun res!432326 () Bool)

(assert (=> b!664495 (=> (not res!432326) (not e!381008))))

(declare-fun arrayContainsKey!0 (array!38969 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!664495 (= res!432326 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!664496 () Bool)

(declare-fun res!432321 () Bool)

(assert (=> b!664496 (=> res!432321 e!381007)))

(assert (=> b!664496 (= res!432321 (not (contains!3310 lt!309665 k0!2843)))))

(declare-fun b!664497 () Bool)

(declare-fun res!432322 () Bool)

(assert (=> b!664497 (=> (not res!432322) (not e!381008))))

(declare-fun arrayNoDuplicates!0 (array!38969 (_ BitVec 32) List!12767) Bool)

(assert (=> b!664497 (= res!432322 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12764))))

(declare-fun b!664498 () Bool)

(declare-fun res!432323 () Bool)

(assert (=> b!664498 (=> (not res!432323) (not e!381008))))

(assert (=> b!664498 (= res!432323 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!664499 () Bool)

(declare-fun res!432313 () Bool)

(assert (=> b!664499 (=> res!432313 e!381007)))

(assert (=> b!664499 (= res!432313 (not (noDuplicate!557 lt!309665)))))

(declare-fun b!664500 () Bool)

(declare-fun res!432309 () Bool)

(assert (=> b!664500 (=> (not res!432309) (not e!381008))))

(assert (=> b!664500 (= res!432309 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19037 a!3626))))))

(declare-fun b!664501 () Bool)

(assert (=> b!664501 (= e!381007 true)))

(declare-fun lt!309668 () Bool)

(assert (=> b!664501 (= lt!309668 (contains!3310 lt!309665 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664502 () Bool)

(assert (=> b!664502 (= e!381008 (not e!381007))))

(declare-fun res!432319 () Bool)

(assert (=> b!664502 (=> res!432319 e!381007)))

(assert (=> b!664502 (= res!432319 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!46 (List!12767 (_ BitVec 64)) List!12767)

(assert (=> b!664502 (= (-!46 lt!309665 k0!2843) acc!681)))

(declare-fun $colon$colon!179 (List!12767 (_ BitVec 64)) List!12767)

(assert (=> b!664502 (= lt!309665 ($colon$colon!179 acc!681 k0!2843))))

(declare-fun lt!309672 () Unit!23160)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12767) Unit!23160)

(assert (=> b!664502 (= lt!309672 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(declare-fun subseq!48 (List!12767 List!12767) Bool)

(assert (=> b!664502 (subseq!48 acc!681 acc!681)))

(declare-fun lt!309667 () Unit!23160)

(declare-fun lemmaListSubSeqRefl!0 (List!12767) Unit!23160)

(assert (=> b!664502 (= lt!309667 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664502 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309663 () Unit!23160)

(declare-fun e!381010 () Unit!23160)

(assert (=> b!664502 (= lt!309663 e!381010)))

(declare-fun c!76456 () Bool)

(assert (=> b!664502 (= c!76456 (validKeyInArray!0 (select (arr!18673 a!3626) from!3004)))))

(declare-fun lt!309669 () Unit!23160)

(assert (=> b!664502 (= lt!309669 e!381009)))

(declare-fun c!76457 () Bool)

(assert (=> b!664502 (= c!76457 lt!309671)))

(assert (=> b!664502 (= lt!309671 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664502 (arrayContainsKey!0 (array!38970 (store (arr!18673 a!3626) i!1382 k0!2843) (size!19037 a!3626)) k0!2843 from!3004)))

(declare-fun b!664503 () Bool)

(declare-fun res!432318 () Bool)

(assert (=> b!664503 (=> (not res!432318) (not e!381008))))

(assert (=> b!664503 (= res!432318 (not (contains!3310 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664504 () Bool)

(declare-fun Unit!23163 () Unit!23160)

(assert (=> b!664504 (= e!381009 Unit!23163)))

(declare-fun lt!309666 () Unit!23160)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38969 (_ BitVec 64) (_ BitVec 32)) Unit!23160)

(assert (=> b!664504 (= lt!309666 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!664504 false))

(declare-fun b!664505 () Bool)

(declare-fun res!432315 () Bool)

(assert (=> b!664505 (=> res!432315 e!381007)))

(assert (=> b!664505 (= res!432315 (not (subseq!48 acc!681 lt!309665)))))

(declare-fun b!664506 () Bool)

(declare-fun Unit!23164 () Unit!23160)

(assert (=> b!664506 (= e!381010 Unit!23164)))

(declare-fun b!664507 () Bool)

(declare-fun lt!309664 () Unit!23160)

(assert (=> b!664507 (= e!381010 lt!309664)))

(declare-fun lt!309670 () Unit!23160)

(assert (=> b!664507 (= lt!309670 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664507 (subseq!48 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38969 List!12767 List!12767 (_ BitVec 32)) Unit!23160)

(assert (=> b!664507 (= lt!309664 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!179 acc!681 (select (arr!18673 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664507 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!664508 () Bool)

(declare-fun res!432316 () Bool)

(assert (=> b!664508 (=> (not res!432316) (not e!381008))))

(assert (=> b!664508 (= res!432316 e!381006)))

(declare-fun res!432306 () Bool)

(assert (=> b!664508 (=> res!432306 e!381006)))

(assert (=> b!664508 (= res!432306 e!381003)))

(declare-fun res!432312 () Bool)

(assert (=> b!664508 (=> (not res!432312) (not e!381003))))

(assert (=> b!664508 (= res!432312 (bvsgt from!3004 i!1382))))

(assert (= (and start!59966 res!432310) b!664488))

(assert (= (and b!664488 res!432325) b!664503))

(assert (= (and b!664503 res!432318) b!664490))

(assert (= (and b!664490 res!432314) b!664508))

(assert (= (and b!664508 res!432312) b!664492))

(assert (= (and b!664508 (not res!432306)) b!664494))

(assert (= (and b!664494 res!432320) b!664486))

(assert (= (and b!664508 res!432316) b!664497))

(assert (= (and b!664497 res!432322) b!664498))

(assert (= (and b!664498 res!432323) b!664500))

(assert (= (and b!664500 res!432309) b!664485))

(assert (= (and b!664485 res!432307) b!664495))

(assert (= (and b!664495 res!432326) b!664493))

(assert (= (and b!664493 res!432311) b!664502))

(assert (= (and b!664502 c!76457) b!664504))

(assert (= (and b!664502 (not c!76457)) b!664491))

(assert (= (and b!664502 c!76456) b!664507))

(assert (= (and b!664502 (not c!76456)) b!664506))

(assert (= (and b!664502 (not res!432319)) b!664499))

(assert (= (and b!664499 (not res!432313)) b!664489))

(assert (= (and b!664489 (not res!432317)) b!664487))

(assert (= (and b!664487 (not res!432324)) b!664505))

(assert (= (and b!664505 (not res!432315)) b!664496))

(assert (= (and b!664496 (not res!432321)) b!664484))

(assert (= (and b!664484 (not res!432308)) b!664501))

(declare-fun m!635795 () Bool)

(assert (=> b!664485 m!635795))

(declare-fun m!635797 () Bool)

(assert (=> b!664497 m!635797))

(declare-fun m!635799 () Bool)

(assert (=> b!664495 m!635799))

(declare-fun m!635801 () Bool)

(assert (=> b!664507 m!635801))

(declare-fun m!635803 () Bool)

(assert (=> b!664507 m!635803))

(declare-fun m!635805 () Bool)

(assert (=> b!664507 m!635805))

(declare-fun m!635807 () Bool)

(assert (=> b!664507 m!635807))

(assert (=> b!664507 m!635803))

(assert (=> b!664507 m!635805))

(declare-fun m!635809 () Bool)

(assert (=> b!664507 m!635809))

(declare-fun m!635811 () Bool)

(assert (=> b!664507 m!635811))

(declare-fun m!635813 () Bool)

(assert (=> start!59966 m!635813))

(declare-fun m!635815 () Bool)

(assert (=> b!664490 m!635815))

(declare-fun m!635817 () Bool)

(assert (=> b!664487 m!635817))

(declare-fun m!635819 () Bool)

(assert (=> b!664488 m!635819))

(declare-fun m!635821 () Bool)

(assert (=> b!664505 m!635821))

(assert (=> b!664492 m!635817))

(declare-fun m!635823 () Bool)

(assert (=> b!664504 m!635823))

(declare-fun m!635825 () Bool)

(assert (=> b!664496 m!635825))

(declare-fun m!635827 () Bool)

(assert (=> b!664501 m!635827))

(declare-fun m!635829 () Bool)

(assert (=> b!664484 m!635829))

(declare-fun m!635831 () Bool)

(assert (=> b!664498 m!635831))

(assert (=> b!664486 m!635817))

(declare-fun m!635833 () Bool)

(assert (=> b!664503 m!635833))

(assert (=> b!664502 m!635801))

(declare-fun m!635835 () Bool)

(assert (=> b!664502 m!635835))

(declare-fun m!635837 () Bool)

(assert (=> b!664502 m!635837))

(assert (=> b!664502 m!635809))

(declare-fun m!635839 () Bool)

(assert (=> b!664502 m!635839))

(declare-fun m!635841 () Bool)

(assert (=> b!664502 m!635841))

(assert (=> b!664502 m!635803))

(declare-fun m!635843 () Bool)

(assert (=> b!664502 m!635843))

(assert (=> b!664502 m!635803))

(declare-fun m!635845 () Bool)

(assert (=> b!664502 m!635845))

(declare-fun m!635847 () Bool)

(assert (=> b!664502 m!635847))

(assert (=> b!664502 m!635811))

(declare-fun m!635849 () Bool)

(assert (=> b!664499 m!635849))

(check-sat (not b!664497) (not b!664505) (not b!664496) (not b!664488) (not start!59966) (not b!664498) (not b!664484) (not b!664501) (not b!664499) (not b!664504) (not b!664486) (not b!664485) (not b!664495) (not b!664490) (not b!664492) (not b!664507) (not b!664503) (not b!664502) (not b!664487))
(check-sat)
