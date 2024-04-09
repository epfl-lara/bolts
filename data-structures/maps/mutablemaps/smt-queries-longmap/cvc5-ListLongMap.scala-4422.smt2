; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61194 () Bool)

(assert start!61194)

(declare-fun b!685463 () Bool)

(declare-fun e!390367 () Bool)

(declare-fun e!390368 () Bool)

(assert (=> b!685463 (= e!390367 (not e!390368))))

(declare-fun res!450945 () Bool)

(assert (=> b!685463 (=> res!450945 e!390368)))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!685463 (= res!450945 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((List!13072 0))(
  ( (Nil!13069) (Cons!13068 (h!14113 (_ BitVec 64)) (t!19332 List!13072)) )
))
(declare-fun lt!314690 () List!13072)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun acc!681 () List!13072)

(declare-fun -!165 (List!13072 (_ BitVec 64)) List!13072)

(assert (=> b!685463 (= (-!165 lt!314690 k!2843) acc!681)))

(declare-fun $colon$colon!364 (List!13072 (_ BitVec 64)) List!13072)

(assert (=> b!685463 (= lt!314690 ($colon$colon!364 acc!681 k!2843))))

(declare-datatypes ((Unit!24127 0))(
  ( (Unit!24128) )
))
(declare-fun lt!314694 () Unit!24127)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13072) Unit!24127)

(assert (=> b!685463 (= lt!314694 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!200 (List!13072 List!13072) Bool)

(assert (=> b!685463 (subseq!200 acc!681 acc!681)))

(declare-fun lt!314697 () Unit!24127)

(declare-fun lemmaListSubSeqRefl!0 (List!13072) Unit!24127)

(assert (=> b!685463 (= lt!314697 (lemmaListSubSeqRefl!0 acc!681))))

(declare-datatypes ((array!39609 0))(
  ( (array!39610 (arr!18978 (Array (_ BitVec 32) (_ BitVec 64))) (size!19350 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39609)

(declare-fun arrayNoDuplicates!0 (array!39609 (_ BitVec 32) List!13072) Bool)

(assert (=> b!685463 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314689 () Unit!24127)

(declare-fun e!390366 () Unit!24127)

(assert (=> b!685463 (= lt!314689 e!390366)))

(declare-fun c!77630 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!685463 (= c!77630 (validKeyInArray!0 (select (arr!18978 a!3626) from!3004)))))

(declare-fun lt!314693 () Unit!24127)

(declare-fun e!390363 () Unit!24127)

(assert (=> b!685463 (= lt!314693 e!390363)))

(declare-fun c!77629 () Bool)

(declare-fun lt!314695 () Bool)

(assert (=> b!685463 (= c!77629 lt!314695)))

(declare-fun arrayContainsKey!0 (array!39609 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!685463 (= lt!314695 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!685463 (arrayContainsKey!0 (array!39610 (store (arr!18978 a!3626) i!1382 k!2843) (size!19350 a!3626)) k!2843 from!3004)))

(declare-fun b!685464 () Bool)

(declare-fun e!390364 () Bool)

(declare-fun e!390365 () Bool)

(assert (=> b!685464 (= e!390364 e!390365)))

(declare-fun res!450951 () Bool)

(assert (=> b!685464 (=> (not res!450951) (not e!390365))))

(assert (=> b!685464 (= res!450951 (bvsle from!3004 i!1382))))

(declare-fun b!685465 () Bool)

(declare-fun res!450952 () Bool)

(assert (=> b!685465 (=> res!450952 e!390368)))

(declare-fun contains!3615 (List!13072 (_ BitVec 64)) Bool)

(assert (=> b!685465 (= res!450952 (not (contains!3615 lt!314690 k!2843)))))

(declare-fun res!450944 () Bool)

(assert (=> start!61194 (=> (not res!450944) (not e!390367))))

(assert (=> start!61194 (= res!450944 (and (bvslt (size!19350 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19350 a!3626))))))

(assert (=> start!61194 e!390367))

(assert (=> start!61194 true))

(declare-fun array_inv!14752 (array!39609) Bool)

(assert (=> start!61194 (array_inv!14752 a!3626)))

(declare-fun b!685466 () Bool)

(declare-fun res!450959 () Bool)

(assert (=> b!685466 (=> res!450959 e!390368)))

(declare-fun noDuplicate!862 (List!13072) Bool)

(assert (=> b!685466 (= res!450959 (not (noDuplicate!862 lt!314690)))))

(declare-fun b!685467 () Bool)

(declare-fun res!450955 () Bool)

(assert (=> b!685467 (=> (not res!450955) (not e!390367))))

(assert (=> b!685467 (= res!450955 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19350 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!685468 () Bool)

(declare-fun res!450939 () Bool)

(assert (=> b!685468 (=> res!450939 e!390368)))

(assert (=> b!685468 (= res!450939 lt!314695)))

(declare-fun b!685469 () Bool)

(declare-fun res!450943 () Bool)

(assert (=> b!685469 (=> (not res!450943) (not e!390367))))

(assert (=> b!685469 (= res!450943 e!390364)))

(declare-fun res!450947 () Bool)

(assert (=> b!685469 (=> res!450947 e!390364)))

(declare-fun e!390370 () Bool)

(assert (=> b!685469 (= res!450947 e!390370)))

(declare-fun res!450953 () Bool)

(assert (=> b!685469 (=> (not res!450953) (not e!390370))))

(assert (=> b!685469 (= res!450953 (bvsgt from!3004 i!1382))))

(declare-fun b!685470 () Bool)

(declare-fun res!450948 () Bool)

(assert (=> b!685470 (=> (not res!450948) (not e!390367))))

(assert (=> b!685470 (= res!450948 (noDuplicate!862 acc!681))))

(declare-fun b!685471 () Bool)

(declare-fun res!450957 () Bool)

(assert (=> b!685471 (=> (not res!450957) (not e!390367))))

(assert (=> b!685471 (= res!450957 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!685472 () Bool)

(declare-fun Unit!24129 () Unit!24127)

(assert (=> b!685472 (= e!390363 Unit!24129)))

(declare-fun b!685473 () Bool)

(declare-fun res!450958 () Bool)

(assert (=> b!685473 (=> (not res!450958) (not e!390367))))

(assert (=> b!685473 (= res!450958 (not (contains!3615 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!685474 () Bool)

(declare-fun res!450954 () Bool)

(assert (=> b!685474 (=> (not res!450954) (not e!390367))))

(assert (=> b!685474 (= res!450954 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13069))))

(declare-fun b!685475 () Bool)

(declare-fun res!450950 () Bool)

(assert (=> b!685475 (=> (not res!450950) (not e!390367))))

(assert (=> b!685475 (= res!450950 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!685476 () Bool)

(declare-fun Unit!24130 () Unit!24127)

(assert (=> b!685476 (= e!390363 Unit!24130)))

(declare-fun lt!314696 () Unit!24127)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39609 (_ BitVec 64) (_ BitVec 32)) Unit!24127)

(assert (=> b!685476 (= lt!314696 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!685476 false))

(declare-fun b!685477 () Bool)

(declare-fun e!390362 () Bool)

(assert (=> b!685477 (= e!390368 e!390362)))

(declare-fun res!450949 () Bool)

(assert (=> b!685477 (=> (not res!450949) (not e!390362))))

(assert (=> b!685477 (= res!450949 (not (contains!3615 lt!314690 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!685478 () Bool)

(declare-fun res!450940 () Bool)

(assert (=> b!685478 (=> res!450940 e!390368)))

(assert (=> b!685478 (= res!450940 (contains!3615 acc!681 k!2843))))

(declare-fun b!685479 () Bool)

(declare-fun lt!314692 () Unit!24127)

(assert (=> b!685479 (= e!390366 lt!314692)))

(declare-fun lt!314691 () Unit!24127)

(assert (=> b!685479 (= lt!314691 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!685479 (subseq!200 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39609 List!13072 List!13072 (_ BitVec 32)) Unit!24127)

(assert (=> b!685479 (= lt!314692 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!364 acc!681 (select (arr!18978 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!685479 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!685480 () Bool)

(declare-fun res!450941 () Bool)

(assert (=> b!685480 (=> (not res!450941) (not e!390367))))

(assert (=> b!685480 (= res!450941 (validKeyInArray!0 k!2843))))

(declare-fun b!685481 () Bool)

(declare-fun res!450942 () Bool)

(assert (=> b!685481 (=> (not res!450942) (not e!390367))))

(assert (=> b!685481 (= res!450942 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19350 a!3626))))))

(declare-fun b!685482 () Bool)

(assert (=> b!685482 (= e!390365 (not (contains!3615 acc!681 k!2843)))))

(declare-fun b!685483 () Bool)

(declare-fun Unit!24131 () Unit!24127)

(assert (=> b!685483 (= e!390366 Unit!24131)))

(declare-fun b!685484 () Bool)

(assert (=> b!685484 (= e!390370 (contains!3615 acc!681 k!2843))))

(declare-fun b!685485 () Bool)

(declare-fun res!450956 () Bool)

(assert (=> b!685485 (=> res!450956 e!390368)))

(assert (=> b!685485 (= res!450956 (not (subseq!200 acc!681 lt!314690)))))

(declare-fun b!685486 () Bool)

(declare-fun res!450946 () Bool)

(assert (=> b!685486 (=> (not res!450946) (not e!390367))))

(assert (=> b!685486 (= res!450946 (not (contains!3615 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!685487 () Bool)

(assert (=> b!685487 (= e!390362 (not (contains!3615 lt!314690 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!61194 res!450944) b!685470))

(assert (= (and b!685470 res!450948) b!685486))

(assert (= (and b!685486 res!450946) b!685473))

(assert (= (and b!685473 res!450958) b!685469))

(assert (= (and b!685469 res!450953) b!685484))

(assert (= (and b!685469 (not res!450947)) b!685464))

(assert (= (and b!685464 res!450951) b!685482))

(assert (= (and b!685469 res!450943) b!685474))

(assert (= (and b!685474 res!450954) b!685471))

(assert (= (and b!685471 res!450957) b!685481))

(assert (= (and b!685481 res!450942) b!685480))

(assert (= (and b!685480 res!450941) b!685475))

(assert (= (and b!685475 res!450950) b!685467))

(assert (= (and b!685467 res!450955) b!685463))

(assert (= (and b!685463 c!77629) b!685476))

(assert (= (and b!685463 (not c!77629)) b!685472))

(assert (= (and b!685463 c!77630) b!685479))

(assert (= (and b!685463 (not c!77630)) b!685483))

(assert (= (and b!685463 (not res!450945)) b!685466))

(assert (= (and b!685466 (not res!450959)) b!685468))

(assert (= (and b!685468 (not res!450939)) b!685478))

(assert (= (and b!685478 (not res!450940)) b!685485))

(assert (= (and b!685485 (not res!450956)) b!685465))

(assert (= (and b!685465 (not res!450952)) b!685477))

(assert (= (and b!685477 res!450949) b!685487))

(declare-fun m!649689 () Bool)

(assert (=> b!685487 m!649689))

(declare-fun m!649691 () Bool)

(assert (=> b!685478 m!649691))

(declare-fun m!649693 () Bool)

(assert (=> b!685477 m!649693))

(declare-fun m!649695 () Bool)

(assert (=> b!685463 m!649695))

(declare-fun m!649697 () Bool)

(assert (=> b!685463 m!649697))

(declare-fun m!649699 () Bool)

(assert (=> b!685463 m!649699))

(declare-fun m!649701 () Bool)

(assert (=> b!685463 m!649701))

(declare-fun m!649703 () Bool)

(assert (=> b!685463 m!649703))

(declare-fun m!649705 () Bool)

(assert (=> b!685463 m!649705))

(declare-fun m!649707 () Bool)

(assert (=> b!685463 m!649707))

(declare-fun m!649709 () Bool)

(assert (=> b!685463 m!649709))

(assert (=> b!685463 m!649699))

(declare-fun m!649711 () Bool)

(assert (=> b!685463 m!649711))

(declare-fun m!649713 () Bool)

(assert (=> b!685463 m!649713))

(declare-fun m!649715 () Bool)

(assert (=> b!685463 m!649715))

(assert (=> b!685479 m!649697))

(assert (=> b!685479 m!649699))

(declare-fun m!649717 () Bool)

(assert (=> b!685479 m!649717))

(declare-fun m!649719 () Bool)

(assert (=> b!685479 m!649719))

(assert (=> b!685479 m!649699))

(assert (=> b!685479 m!649717))

(assert (=> b!685479 m!649705))

(assert (=> b!685479 m!649715))

(declare-fun m!649721 () Bool)

(assert (=> b!685466 m!649721))

(assert (=> b!685484 m!649691))

(declare-fun m!649723 () Bool)

(assert (=> b!685473 m!649723))

(assert (=> b!685482 m!649691))

(declare-fun m!649725 () Bool)

(assert (=> b!685465 m!649725))

(declare-fun m!649727 () Bool)

(assert (=> b!685480 m!649727))

(declare-fun m!649729 () Bool)

(assert (=> b!685475 m!649729))

(declare-fun m!649731 () Bool)

(assert (=> b!685485 m!649731))

(declare-fun m!649733 () Bool)

(assert (=> b!685474 m!649733))

(declare-fun m!649735 () Bool)

(assert (=> b!685476 m!649735))

(declare-fun m!649737 () Bool)

(assert (=> b!685471 m!649737))

(declare-fun m!649739 () Bool)

(assert (=> b!685470 m!649739))

(declare-fun m!649741 () Bool)

(assert (=> b!685486 m!649741))

(declare-fun m!649743 () Bool)

(assert (=> start!61194 m!649743))

(push 1)

(assert (not b!685485))

(assert (not b!685474))

(assert (not b!685480))

(assert (not b!685476))

(assert (not b!685475))

(assert (not start!61194))

(assert (not b!685473))

(assert (not b!685477))

(assert (not b!685466))

(assert (not b!685482))

(assert (not b!685465))

(assert (not b!685486))

(assert (not b!685479))

(assert (not b!685487))

(assert (not b!685471))

(assert (not b!685463))

(assert (not b!685470))

(assert (not b!685484))

(assert (not b!685478))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!94511 () Bool)

(declare-fun res!451140 () Bool)

(declare-fun e!390489 () Bool)

(assert (=> d!94511 (=> res!451140 e!390489)))

(assert (=> d!94511 (= res!451140 (is-Nil!13069 acc!681))))

(assert (=> d!94511 (= (noDuplicate!862 acc!681) e!390489)))

(declare-fun b!685710 () Bool)

(declare-fun e!390490 () Bool)

(assert (=> b!685710 (= e!390489 e!390490)))

(declare-fun res!451141 () Bool)

(assert (=> b!685710 (=> (not res!451141) (not e!390490))))

(assert (=> b!685710 (= res!451141 (not (contains!3615 (t!19332 acc!681) (h!14113 acc!681))))))

(declare-fun b!685711 () Bool)

(assert (=> b!685711 (= e!390490 (noDuplicate!862 (t!19332 acc!681)))))

(assert (= (and d!94511 (not res!451140)) b!685710))

(assert (= (and b!685710 res!451141) b!685711))

(declare-fun m!649919 () Bool)

(assert (=> b!685710 m!649919))

(declare-fun m!649921 () Bool)

(assert (=> b!685711 m!649921))

(assert (=> b!685470 d!94511))

(declare-fun d!94523 () Bool)

(assert (=> d!94523 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!685480 d!94523))

(declare-fun d!94525 () Bool)

(assert (=> d!94525 (= ($colon$colon!364 acc!681 (select (arr!18978 a!3626) from!3004)) (Cons!13068 (select (arr!18978 a!3626) from!3004) acc!681))))

(assert (=> b!685479 d!94525))

(declare-fun b!685746 () Bool)

(declare-fun e!390522 () Bool)

(assert (=> b!685746 (= e!390522 (subseq!200 acc!681 (t!19332 acc!681)))))

(declare-fun b!685745 () Bool)

(declare-fun e!390523 () Bool)

(assert (=> b!685745 (= e!390523 (subseq!200 (t!19332 acc!681) (t!19332 acc!681)))))

(declare-fun b!685743 () Bool)

(declare-fun e!390524 () Bool)

(declare-fun e!390521 () Bool)

(assert (=> b!685743 (= e!390524 e!390521)))

(declare-fun res!451172 () Bool)

(assert (=> b!685743 (=> (not res!451172) (not e!390521))))

(assert (=> b!685743 (= res!451172 (is-Cons!13068 acc!681))))

(declare-fun b!685744 () Bool)

(assert (=> b!685744 (= e!390521 e!390522)))

(declare-fun res!451173 () Bool)

(assert (=> b!685744 (=> res!451173 e!390522)))

(assert (=> b!685744 (= res!451173 e!390523)))

(declare-fun res!451174 () Bool)

(assert (=> b!685744 (=> (not res!451174) (not e!390523))))

(assert (=> b!685744 (= res!451174 (= (h!14113 acc!681) (h!14113 acc!681)))))

(declare-fun d!94527 () Bool)

(declare-fun res!451171 () Bool)

(assert (=> d!94527 (=> res!451171 e!390524)))

(assert (=> d!94527 (= res!451171 (is-Nil!13069 acc!681))))

(assert (=> d!94527 (= (subseq!200 acc!681 acc!681) e!390524)))

(assert (= (and d!94527 (not res!451171)) b!685743))

(assert (= (and b!685743 res!451172) b!685744))

(assert (= (and b!685744 res!451174) b!685745))

(assert (= (and b!685744 (not res!451173)) b!685746))

(declare-fun m!649941 () Bool)

(assert (=> b!685746 m!649941))

(declare-fun m!649943 () Bool)

(assert (=> b!685745 m!649943))

(assert (=> b!685479 d!94527))

(declare-fun d!94539 () Bool)

(assert (=> d!94539 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314784 () Unit!24127)

(declare-fun choose!80 (array!39609 List!13072 List!13072 (_ BitVec 32)) Unit!24127)

(assert (=> d!94539 (= lt!314784 (choose!80 a!3626 ($colon$colon!364 acc!681 (select (arr!18978 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> d!94539 (bvslt (size!19350 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!94539 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!364 acc!681 (select (arr!18978 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)) lt!314784)))

(declare-fun bs!20108 () Bool)

(assert (= bs!20108 d!94539))

(assert (=> bs!20108 m!649697))

(assert (=> bs!20108 m!649717))

(declare-fun m!649953 () Bool)

(assert (=> bs!20108 m!649953))

(assert (=> b!685479 d!94539))

(declare-fun d!94547 () Bool)

(assert (=> d!94547 (subseq!200 acc!681 acc!681)))

(declare-fun lt!314787 () Unit!24127)

(declare-fun choose!36 (List!13072) Unit!24127)

(assert (=> d!94547 (= lt!314787 (choose!36 acc!681))))

(assert (=> d!94547 (= (lemmaListSubSeqRefl!0 acc!681) lt!314787)))

(declare-fun bs!20109 () Bool)

(assert (= bs!20109 d!94547))

(assert (=> bs!20109 m!649715))

(declare-fun m!649963 () Bool)

(assert (=> bs!20109 m!649963))

(assert (=> b!685479 d!94547))

(declare-fun b!685804 () Bool)

(declare-fun e!390577 () Bool)

(declare-fun e!390578 () Bool)

(assert (=> b!685804 (= e!390577 e!390578)))

(declare-fun c!77660 () Bool)

(assert (=> b!685804 (= c!77660 (validKeyInArray!0 (select (arr!18978 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun d!94553 () Bool)

(declare-fun res!451220 () Bool)

(declare-fun e!390575 () Bool)

(assert (=> d!94553 (=> res!451220 e!390575)))

(assert (=> d!94553 (= res!451220 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19350 a!3626)))))

(assert (=> d!94553 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!390575)))

(declare-fun bm!34085 () Bool)

(declare-fun call!34088 () Bool)

(assert (=> bm!34085 (= call!34088 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77660 (Cons!13068 (select (arr!18978 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(declare-fun b!685805 () Bool)

(assert (=> b!685805 (= e!390578 call!34088)))

(declare-fun b!685806 () Bool)

(assert (=> b!685806 (= e!390578 call!34088)))

(declare-fun b!685807 () Bool)

(declare-fun e!390576 () Bool)

(assert (=> b!685807 (= e!390576 (contains!3615 acc!681 (select (arr!18978 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!685808 () Bool)

(assert (=> b!685808 (= e!390575 e!390577)))

(declare-fun res!451218 () Bool)

(assert (=> b!685808 (=> (not res!451218) (not e!390577))))

(assert (=> b!685808 (= res!451218 (not e!390576))))

(declare-fun res!451219 () Bool)

(assert (=> b!685808 (=> (not res!451219) (not e!390576))))

(assert (=> b!685808 (= res!451219 (validKeyInArray!0 (select (arr!18978 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (= (and d!94553 (not res!451220)) b!685808))

(assert (= (and b!685808 res!451219) b!685807))

(assert (= (and b!685808 res!451218) b!685804))

(assert (= (and b!685804 c!77660) b!685806))

(assert (= (and b!685804 (not c!77660)) b!685805))

(assert (= (or b!685806 b!685805) bm!34085))

(declare-fun m!650009 () Bool)

(assert (=> b!685804 m!650009))

(assert (=> b!685804 m!650009))

(declare-fun m!650011 () Bool)

(assert (=> b!685804 m!650011))

(assert (=> bm!34085 m!650009))

(declare-fun m!650017 () Bool)

(assert (=> bm!34085 m!650017))

(assert (=> b!685807 m!650009))

(assert (=> b!685807 m!650009))

(declare-fun m!650019 () Bool)

(assert (=> b!685807 m!650019))

(assert (=> b!685808 m!650009))

(assert (=> b!685808 m!650009))

(assert (=> b!685808 m!650011))

(assert (=> b!685479 d!94553))

(declare-fun d!94573 () Bool)

(declare-fun lt!314795 () Bool)

(declare-fun content!294 (List!13072) (Set (_ BitVec 64)))

(assert (=> d!94573 (= lt!314795 (set.member k!2843 (content!294 acc!681)))))

(declare-fun e!390602 () Bool)

(assert (=> d!94573 (= lt!314795 e!390602)))

(declare-fun res!451243 () Bool)

(assert (=> d!94573 (=> (not res!451243) (not e!390602))))

(assert (=> d!94573 (= res!451243 (is-Cons!13068 acc!681))))

(assert (=> d!94573 (= (contains!3615 acc!681 k!2843) lt!314795)))

(declare-fun b!685832 () Bool)

(declare-fun e!390601 () Bool)

(assert (=> b!685832 (= e!390602 e!390601)))

(declare-fun res!451242 () Bool)

(assert (=> b!685832 (=> res!451242 e!390601)))

(assert (=> b!685832 (= res!451242 (= (h!14113 acc!681) k!2843))))

(declare-fun b!685833 () Bool)

(assert (=> b!685833 (= e!390601 (contains!3615 (t!19332 acc!681) k!2843))))

(assert (= (and d!94573 res!451243) b!685832))

(assert (= (and b!685832 (not res!451242)) b!685833))

(declare-fun m!650027 () Bool)

(assert (=> d!94573 m!650027))

(declare-fun m!650031 () Bool)

(assert (=> d!94573 m!650031))

(declare-fun m!650033 () Bool)

(assert (=> b!685833 m!650033))

(assert (=> b!685478 d!94573))

(declare-fun d!94579 () Bool)

(declare-fun lt!314796 () Bool)

(assert (=> d!94579 (= lt!314796 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!294 lt!314690)))))

(declare-fun e!390604 () Bool)

(assert (=> d!94579 (= lt!314796 e!390604)))

(declare-fun res!451245 () Bool)

(assert (=> d!94579 (=> (not res!451245) (not e!390604))))

(assert (=> d!94579 (= res!451245 (is-Cons!13068 lt!314690))))

(assert (=> d!94579 (= (contains!3615 lt!314690 #b0000000000000000000000000000000000000000000000000000000000000000) lt!314796)))

(declare-fun b!685834 () Bool)

(declare-fun e!390603 () Bool)

(assert (=> b!685834 (= e!390604 e!390603)))

(declare-fun res!451244 () Bool)

(assert (=> b!685834 (=> res!451244 e!390603)))

(assert (=> b!685834 (= res!451244 (= (h!14113 lt!314690) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!685835 () Bool)

(assert (=> b!685835 (= e!390603 (contains!3615 (t!19332 lt!314690) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94579 res!451245) b!685834))

(assert (= (and b!685834 (not res!451244)) b!685835))

(declare-fun m!650037 () Bool)

(assert (=> d!94579 m!650037))

(declare-fun m!650039 () Bool)

(assert (=> d!94579 m!650039))

(declare-fun m!650043 () Bool)

(assert (=> b!685835 m!650043))

(assert (=> b!685477 d!94579))

(declare-fun d!94583 () Bool)

(declare-fun res!451248 () Bool)

(declare-fun e!390607 () Bool)

(assert (=> d!94583 (=> res!451248 e!390607)))

(assert (=> d!94583 (= res!451248 (is-Nil!13069 lt!314690))))

(assert (=> d!94583 (= (noDuplicate!862 lt!314690) e!390607)))

(declare-fun b!685838 () Bool)

(declare-fun e!390608 () Bool)

(assert (=> b!685838 (= e!390607 e!390608)))

(declare-fun res!451249 () Bool)

(assert (=> b!685838 (=> (not res!451249) (not e!390608))))

(assert (=> b!685838 (= res!451249 (not (contains!3615 (t!19332 lt!314690) (h!14113 lt!314690))))))

(declare-fun b!685839 () Bool)

(assert (=> b!685839 (= e!390608 (noDuplicate!862 (t!19332 lt!314690)))))

(assert (= (and d!94583 (not res!451248)) b!685838))

(assert (= (and b!685838 res!451249) b!685839))

(declare-fun m!650047 () Bool)

(assert (=> b!685838 m!650047))

(declare-fun m!650049 () Bool)

(assert (=> b!685839 m!650049))

(assert (=> b!685466 d!94583))

(declare-fun d!94587 () Bool)

(declare-fun lt!314799 () Bool)

(assert (=> d!94587 (= lt!314799 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!294 lt!314690)))))

(declare-fun e!390612 () Bool)

(assert (=> d!94587 (= lt!314799 e!390612)))

(declare-fun res!451253 () Bool)

(assert (=> d!94587 (=> (not res!451253) (not e!390612))))

(assert (=> d!94587 (= res!451253 (is-Cons!13068 lt!314690))))

(assert (=> d!94587 (= (contains!3615 lt!314690 #b1000000000000000000000000000000000000000000000000000000000000000) lt!314799)))

(declare-fun b!685842 () Bool)

(declare-fun e!390611 () Bool)

(assert (=> b!685842 (= e!390612 e!390611)))

(declare-fun res!451252 () Bool)

(assert (=> b!685842 (=> res!451252 e!390611)))

(assert (=> b!685842 (= res!451252 (= (h!14113 lt!314690) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!685843 () Bool)

(assert (=> b!685843 (= e!390611 (contains!3615 (t!19332 lt!314690) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94587 res!451253) b!685842))

(assert (= (and b!685842 (not res!451252)) b!685843))

(assert (=> d!94587 m!650037))

(declare-fun m!650055 () Bool)

(assert (=> d!94587 m!650055))

(declare-fun m!650057 () Bool)

(assert (=> b!685843 m!650057))

(assert (=> b!685487 d!94587))

(declare-fun d!94591 () Bool)

(assert (=> d!94591 (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))

(declare-fun lt!314805 () Unit!24127)

(declare-fun choose!13 (array!39609 (_ BitVec 64) (_ BitVec 32)) Unit!24127)

(assert (=> d!94591 (= lt!314805 (choose!13 a!3626 k!2843 from!3004))))

(assert (=> d!94591 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!94591 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004) lt!314805)))

(declare-fun bs!20111 () Bool)

(assert (= bs!20111 d!94591))

(assert (=> bs!20111 m!649729))

(declare-fun m!650061 () Bool)

(assert (=> bs!20111 m!650061))

(assert (=> b!685476 d!94591))

(declare-fun d!94595 () Bool)

(declare-fun lt!314806 () Bool)

(assert (=> d!94595 (= lt!314806 (set.member k!2843 (content!294 lt!314690)))))

(declare-fun e!390614 () Bool)

(assert (=> d!94595 (= lt!314806 e!390614)))

(declare-fun res!451255 () Bool)

(assert (=> d!94595 (=> (not res!451255) (not e!390614))))

(assert (=> d!94595 (= res!451255 (is-Cons!13068 lt!314690))))

(assert (=> d!94595 (= (contains!3615 lt!314690 k!2843) lt!314806)))

(declare-fun b!685844 () Bool)

(declare-fun e!390613 () Bool)

(assert (=> b!685844 (= e!390614 e!390613)))

(declare-fun res!451254 () Bool)

(assert (=> b!685844 (=> res!451254 e!390613)))

(assert (=> b!685844 (= res!451254 (= (h!14113 lt!314690) k!2843))))

(declare-fun b!685845 () Bool)

(assert (=> b!685845 (= e!390613 (contains!3615 (t!19332 lt!314690) k!2843))))

(assert (= (and d!94595 res!451255) b!685844))

(assert (= (and b!685844 (not res!451254)) b!685845))

(assert (=> d!94595 m!650037))

(declare-fun m!650063 () Bool)

(assert (=> d!94595 m!650063))

(declare-fun m!650065 () Bool)

(assert (=> b!685845 m!650065))

(assert (=> b!685465 d!94595))

(declare-fun d!94597 () Bool)

(declare-fun lt!314807 () Bool)

(assert (=> d!94597 (= lt!314807 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!294 acc!681)))))

(declare-fun e!390616 () Bool)

(assert (=> d!94597 (= lt!314807 e!390616)))

(declare-fun res!451257 () Bool)

(assert (=> d!94597 (=> (not res!451257) (not e!390616))))

(assert (=> d!94597 (= res!451257 (is-Cons!13068 acc!681))))

(assert (=> d!94597 (= (contains!3615 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!314807)))

(declare-fun b!685846 () Bool)

(declare-fun e!390615 () Bool)

(assert (=> b!685846 (= e!390616 e!390615)))

(declare-fun res!451256 () Bool)

(assert (=> b!685846 (=> res!451256 e!390615)))

(assert (=> b!685846 (= res!451256 (= (h!14113 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!685847 () Bool)

(assert (=> b!685847 (= e!390615 (contains!3615 (t!19332 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94597 res!451257) b!685846))

(assert (= (and b!685846 (not res!451256)) b!685847))

(assert (=> d!94597 m!650027))

(declare-fun m!650067 () Bool)

(assert (=> d!94597 m!650067))

(declare-fun m!650069 () Bool)

(assert (=> b!685847 m!650069))

(assert (=> b!685486 d!94597))

(declare-fun d!94599 () Bool)

(declare-fun res!451262 () Bool)

(declare-fun e!390626 () Bool)

(assert (=> d!94599 (=> res!451262 e!390626)))

(assert (=> d!94599 (= res!451262 (= (select (arr!18978 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!94599 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!390626)))

(declare-fun b!685860 () Bool)

(declare-fun e!390627 () Bool)

(assert (=> b!685860 (= e!390626 e!390627)))

(declare-fun res!451263 () Bool)

(assert (=> b!685860 (=> (not res!451263) (not e!390627))))

(assert (=> b!685860 (= res!451263 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19350 a!3626)))))

(declare-fun b!685861 () Bool)

(assert (=> b!685861 (= e!390627 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!94599 (not res!451262)) b!685860))

(assert (= (and b!685860 res!451263) b!685861))

(declare-fun m!650071 () Bool)

(assert (=> d!94599 m!650071))

(declare-fun m!650073 () Bool)

(assert (=> b!685861 m!650073))

(assert (=> b!685475 d!94599))

(declare-fun b!685867 () Bool)

