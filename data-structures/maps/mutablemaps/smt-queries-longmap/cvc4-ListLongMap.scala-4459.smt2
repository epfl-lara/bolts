; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62068 () Bool)

(assert start!62068)

(declare-fun b!694647 () Bool)

(declare-fun e!395095 () Bool)

(declare-fun e!395092 () Bool)

(assert (=> b!694647 (= e!395095 e!395092)))

(declare-fun res!458846 () Bool)

(assert (=> b!694647 (=> (not res!458846) (not e!395092))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!694647 (= res!458846 (bvsle from!3004 i!1382))))

(declare-fun b!694648 () Bool)

(declare-fun res!458836 () Bool)

(declare-fun e!395093 () Bool)

(assert (=> b!694648 (=> (not res!458836) (not e!395093))))

(declare-datatypes ((List!13185 0))(
  ( (Nil!13182) (Cons!13181 (h!14226 (_ BitVec 64)) (t!19472 List!13185)) )
))
(declare-fun acc!681 () List!13185)

(declare-fun noDuplicate!975 (List!13185) Bool)

(assert (=> b!694648 (= res!458836 (noDuplicate!975 acc!681))))

(declare-fun b!694649 () Bool)

(declare-fun res!458853 () Bool)

(declare-fun e!395091 () Bool)

(assert (=> b!694649 (=> (not res!458853) (not e!395091))))

(declare-fun lt!316900 () List!13185)

(assert (=> b!694649 (= res!458853 (noDuplicate!975 lt!316900))))

(declare-fun b!694650 () Bool)

(assert (=> b!694650 (= e!395091 (not true))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39865 0))(
  ( (array!39866 (arr!19091 (Array (_ BitVec 32) (_ BitVec 64))) (size!19474 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39865)

(declare-fun arrayNoDuplicates!0 (array!39865 (_ BitVec 32) List!13185) Bool)

(assert (=> b!694650 (arrayNoDuplicates!0 (array!39866 (store (arr!19091 a!3626) i!1382 k!2843) (size!19474 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) lt!316900)))

(declare-datatypes ((Unit!24534 0))(
  ( (Unit!24535) )
))
(declare-fun lt!316899 () Unit!24534)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39865 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13185) Unit!24534)

(assert (=> b!694650 (= lt!316899 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!316900))))

(declare-fun b!694651 () Bool)

(declare-fun e!395097 () Unit!24534)

(declare-fun Unit!24536 () Unit!24534)

(assert (=> b!694651 (= e!395097 Unit!24536)))

(declare-fun b!694652 () Bool)

(declare-fun e!395090 () Bool)

(declare-fun e!395088 () Bool)

(assert (=> b!694652 (= e!395090 e!395088)))

(declare-fun res!458831 () Bool)

(assert (=> b!694652 (=> (not res!458831) (not e!395088))))

(assert (=> b!694652 (= res!458831 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!694653 () Bool)

(declare-fun res!458839 () Bool)

(assert (=> b!694653 (=> (not res!458839) (not e!395093))))

(assert (=> b!694653 (= res!458839 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19474 a!3626))))))

(declare-fun b!694654 () Bool)

(declare-fun res!458843 () Bool)

(assert (=> b!694654 (=> (not res!458843) (not e!395093))))

(declare-fun arrayContainsKey!0 (array!39865 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!694654 (= res!458843 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!694655 () Bool)

(declare-fun res!458841 () Bool)

(assert (=> b!694655 (=> (not res!458841) (not e!395093))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!694655 (= res!458841 (validKeyInArray!0 k!2843))))

(declare-fun b!694656 () Bool)

(declare-fun res!458835 () Bool)

(assert (=> b!694656 (=> (not res!458835) (not e!395093))))

(assert (=> b!694656 (= res!458835 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13182))))

(declare-fun b!694657 () Bool)

(declare-fun res!458842 () Bool)

(assert (=> b!694657 (=> (not res!458842) (not e!395093))))

(assert (=> b!694657 (= res!458842 (validKeyInArray!0 (select (arr!19091 a!3626) from!3004)))))

(declare-fun b!694658 () Bool)

(declare-fun res!458838 () Bool)

(assert (=> b!694658 (=> (not res!458838) (not e!395093))))

(declare-fun contains!3728 (List!13185 (_ BitVec 64)) Bool)

(assert (=> b!694658 (= res!458838 (not (contains!3728 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694659 () Bool)

(declare-fun e!395089 () Bool)

(assert (=> b!694659 (= e!395089 e!395091)))

(declare-fun res!458832 () Bool)

(assert (=> b!694659 (=> (not res!458832) (not e!395091))))

(assert (=> b!694659 (= res!458832 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!438 (List!13185 (_ BitVec 64)) List!13185)

(assert (=> b!694659 (= lt!316900 ($colon$colon!438 acc!681 (select (arr!19091 a!3626) from!3004)))))

(declare-fun b!694660 () Bool)

(declare-fun res!458834 () Bool)

(assert (=> b!694660 (=> (not res!458834) (not e!395093))))

(assert (=> b!694660 (= res!458834 e!395095)))

(declare-fun res!458840 () Bool)

(assert (=> b!694660 (=> res!458840 e!395095)))

(declare-fun e!395098 () Bool)

(assert (=> b!694660 (= res!458840 e!395098)))

(declare-fun res!458850 () Bool)

(assert (=> b!694660 (=> (not res!458850) (not e!395098))))

(assert (=> b!694660 (= res!458850 (bvsgt from!3004 i!1382))))

(declare-fun b!694661 () Bool)

(declare-fun Unit!24537 () Unit!24534)

(assert (=> b!694661 (= e!395097 Unit!24537)))

(assert (=> b!694661 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316902 () Unit!24534)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39865 (_ BitVec 64) (_ BitVec 32)) Unit!24534)

(assert (=> b!694661 (= lt!316902 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!694661 false))

(declare-fun res!458845 () Bool)

(assert (=> start!62068 (=> (not res!458845) (not e!395093))))

(assert (=> start!62068 (= res!458845 (and (bvslt (size!19474 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19474 a!3626))))))

(assert (=> start!62068 e!395093))

(assert (=> start!62068 true))

(declare-fun array_inv!14865 (array!39865) Bool)

(assert (=> start!62068 (array_inv!14865 a!3626)))

(declare-fun b!694662 () Bool)

(declare-fun e!395096 () Bool)

(assert (=> b!694662 (= e!395096 (contains!3728 lt!316900 k!2843))))

(declare-fun b!694663 () Bool)

(declare-fun res!458833 () Bool)

(assert (=> b!694663 (=> (not res!458833) (not e!395093))))

(assert (=> b!694663 (= res!458833 (not (contains!3728 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694664 () Bool)

(assert (=> b!694664 (= e!395098 (contains!3728 acc!681 k!2843))))

(declare-fun b!694665 () Bool)

(assert (=> b!694665 (= e!395092 (not (contains!3728 acc!681 k!2843)))))

(declare-fun b!694666 () Bool)

(declare-fun res!458844 () Bool)

(assert (=> b!694666 (=> (not res!458844) (not e!395091))))

(assert (=> b!694666 (= res!458844 (not (contains!3728 lt!316900 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694667 () Bool)

(declare-fun res!458837 () Bool)

(assert (=> b!694667 (=> (not res!458837) (not e!395093))))

(assert (=> b!694667 (= res!458837 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!694668 () Bool)

(declare-fun res!458848 () Bool)

(assert (=> b!694668 (=> (not res!458848) (not e!395091))))

(assert (=> b!694668 (= res!458848 (not (contains!3728 lt!316900 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694669 () Bool)

(declare-fun res!458854 () Bool)

(assert (=> b!694669 (=> (not res!458854) (not e!395091))))

(assert (=> b!694669 (= res!458854 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316900))))

(declare-fun b!694670 () Bool)

(declare-fun res!458849 () Bool)

(assert (=> b!694670 (=> (not res!458849) (not e!395091))))

(assert (=> b!694670 (= res!458849 e!395090)))

(declare-fun res!458852 () Bool)

(assert (=> b!694670 (=> res!458852 e!395090)))

(assert (=> b!694670 (= res!458852 e!395096)))

(declare-fun res!458851 () Bool)

(assert (=> b!694670 (=> (not res!458851) (not e!395096))))

(assert (=> b!694670 (= res!458851 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!694671 () Bool)

(assert (=> b!694671 (= e!395093 e!395089)))

(declare-fun res!458855 () Bool)

(assert (=> b!694671 (=> (not res!458855) (not e!395089))))

(assert (=> b!694671 (= res!458855 (not (= (select (arr!19091 a!3626) from!3004) k!2843)))))

(declare-fun lt!316901 () Unit!24534)

(assert (=> b!694671 (= lt!316901 e!395097)))

(declare-fun c!78275 () Bool)

(assert (=> b!694671 (= c!78275 (= (select (arr!19091 a!3626) from!3004) k!2843))))

(declare-fun b!694672 () Bool)

(declare-fun res!458847 () Bool)

(assert (=> b!694672 (=> (not res!458847) (not e!395093))))

(assert (=> b!694672 (= res!458847 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19474 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!694673 () Bool)

(assert (=> b!694673 (= e!395088 (not (contains!3728 lt!316900 k!2843)))))

(assert (= (and start!62068 res!458845) b!694648))

(assert (= (and b!694648 res!458836) b!694658))

(assert (= (and b!694658 res!458838) b!694663))

(assert (= (and b!694663 res!458833) b!694660))

(assert (= (and b!694660 res!458850) b!694664))

(assert (= (and b!694660 (not res!458840)) b!694647))

(assert (= (and b!694647 res!458846) b!694665))

(assert (= (and b!694660 res!458834) b!694656))

(assert (= (and b!694656 res!458835) b!694667))

(assert (= (and b!694667 res!458837) b!694653))

(assert (= (and b!694653 res!458839) b!694655))

(assert (= (and b!694655 res!458841) b!694654))

(assert (= (and b!694654 res!458843) b!694672))

(assert (= (and b!694672 res!458847) b!694657))

(assert (= (and b!694657 res!458842) b!694671))

(assert (= (and b!694671 c!78275) b!694661))

(assert (= (and b!694671 (not c!78275)) b!694651))

(assert (= (and b!694671 res!458855) b!694659))

(assert (= (and b!694659 res!458832) b!694649))

(assert (= (and b!694649 res!458853) b!694668))

(assert (= (and b!694668 res!458848) b!694666))

(assert (= (and b!694666 res!458844) b!694670))

(assert (= (and b!694670 res!458851) b!694662))

(assert (= (and b!694670 (not res!458852)) b!694652))

(assert (= (and b!694652 res!458831) b!694673))

(assert (= (and b!694670 res!458849) b!694669))

(assert (= (and b!694669 res!458854) b!694650))

(declare-fun m!656335 () Bool)

(assert (=> b!694648 m!656335))

(declare-fun m!656337 () Bool)

(assert (=> b!694650 m!656337))

(declare-fun m!656339 () Bool)

(assert (=> b!694650 m!656339))

(declare-fun m!656341 () Bool)

(assert (=> b!694650 m!656341))

(declare-fun m!656343 () Bool)

(assert (=> b!694662 m!656343))

(declare-fun m!656345 () Bool)

(assert (=> b!694657 m!656345))

(assert (=> b!694657 m!656345))

(declare-fun m!656347 () Bool)

(assert (=> b!694657 m!656347))

(declare-fun m!656349 () Bool)

(assert (=> b!694667 m!656349))

(declare-fun m!656351 () Bool)

(assert (=> b!694664 m!656351))

(declare-fun m!656353 () Bool)

(assert (=> b!694658 m!656353))

(declare-fun m!656355 () Bool)

(assert (=> b!694668 m!656355))

(assert (=> b!694659 m!656345))

(assert (=> b!694659 m!656345))

(declare-fun m!656357 () Bool)

(assert (=> b!694659 m!656357))

(assert (=> b!694673 m!656343))

(declare-fun m!656359 () Bool)

(assert (=> b!694666 m!656359))

(declare-fun m!656361 () Bool)

(assert (=> b!694654 m!656361))

(declare-fun m!656363 () Bool)

(assert (=> b!694656 m!656363))

(declare-fun m!656365 () Bool)

(assert (=> b!694663 m!656365))

(declare-fun m!656367 () Bool)

(assert (=> b!694655 m!656367))

(declare-fun m!656369 () Bool)

(assert (=> b!694661 m!656369))

(declare-fun m!656371 () Bool)

(assert (=> b!694661 m!656371))

(declare-fun m!656373 () Bool)

(assert (=> start!62068 m!656373))

(declare-fun m!656375 () Bool)

(assert (=> b!694649 m!656375))

(assert (=> b!694671 m!656345))

(declare-fun m!656377 () Bool)

(assert (=> b!694669 m!656377))

(assert (=> b!694665 m!656351))

(push 1)

(assert (not b!694658))

(assert (not b!694661))

(assert (not b!694649))

(assert (not b!694663))

(assert (not b!694667))

(assert (not b!694648))

(assert (not b!694655))

(assert (not b!694664))

(assert (not b!694654))

(assert (not b!694666))

(assert (not b!694665))

(assert (not b!694659))

(assert (not start!62068))

(assert (not b!694673))

(assert (not b!694662))

(assert (not b!694669))

(assert (not b!694668))

