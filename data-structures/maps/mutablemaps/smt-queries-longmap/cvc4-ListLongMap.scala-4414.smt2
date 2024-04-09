; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60994 () Bool)

(assert start!60994)

(declare-fun b!683525 () Bool)

(declare-fun e!389383 () Bool)

(assert (=> b!683525 (= e!389383 true)))

(declare-fun lt!313953 () Bool)

(declare-datatypes ((List!13050 0))(
  ( (Nil!13047) (Cons!13046 (h!14091 (_ BitVec 64)) (t!19304 List!13050)) )
))
(declare-fun lt!313951 () List!13050)

(declare-fun noDuplicate!840 (List!13050) Bool)

(assert (=> b!683525 (= lt!313953 (noDuplicate!840 lt!313951))))

(declare-fun b!683527 () Bool)

(declare-datatypes ((Unit!24017 0))(
  ( (Unit!24018) )
))
(declare-fun e!389387 () Unit!24017)

(declare-fun Unit!24019 () Unit!24017)

(assert (=> b!683527 (= e!389387 Unit!24019)))

(declare-fun lt!313948 () Unit!24017)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39559 0))(
  ( (array!39560 (arr!18956 (Array (_ BitVec 32) (_ BitVec 64))) (size!19322 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39559)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39559 (_ BitVec 64) (_ BitVec 32)) Unit!24017)

(assert (=> b!683527 (= lt!313948 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!683527 false))

(declare-fun b!683528 () Bool)

(declare-fun e!389388 () Unit!24017)

(declare-fun Unit!24020 () Unit!24017)

(assert (=> b!683528 (= e!389388 Unit!24020)))

(declare-fun b!683529 () Bool)

(declare-fun lt!313947 () Unit!24017)

(assert (=> b!683529 (= e!389388 lt!313947)))

(declare-fun lt!313949 () Unit!24017)

(declare-fun acc!681 () List!13050)

(declare-fun lemmaListSubSeqRefl!0 (List!13050) Unit!24017)

(assert (=> b!683529 (= lt!313949 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!178 (List!13050 List!13050) Bool)

(assert (=> b!683529 (subseq!178 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39559 List!13050 List!13050 (_ BitVec 32)) Unit!24017)

(declare-fun $colon$colon!342 (List!13050 (_ BitVec 64)) List!13050)

(assert (=> b!683529 (= lt!313947 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!342 acc!681 (select (arr!18956 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39559 (_ BitVec 32) List!13050) Bool)

(assert (=> b!683529 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!683530 () Bool)

(declare-fun Unit!24021 () Unit!24017)

(assert (=> b!683530 (= e!389387 Unit!24021)))

(declare-fun b!683531 () Bool)

(declare-fun res!449401 () Bool)

(declare-fun e!389386 () Bool)

(assert (=> b!683531 (=> (not res!449401) (not e!389386))))

(declare-fun arrayContainsKey!0 (array!39559 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!683531 (= res!449401 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!683532 () Bool)

(declare-fun e!389382 () Bool)

(declare-fun contains!3593 (List!13050 (_ BitVec 64)) Bool)

(assert (=> b!683532 (= e!389382 (not (contains!3593 acc!681 k!2843)))))

(declare-fun b!683533 () Bool)

(declare-fun res!449405 () Bool)

(assert (=> b!683533 (=> (not res!449405) (not e!389386))))

(assert (=> b!683533 (= res!449405 (not (contains!3593 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683534 () Bool)

(declare-fun e!389385 () Bool)

(assert (=> b!683534 (= e!389385 e!389382)))

(declare-fun res!449408 () Bool)

(assert (=> b!683534 (=> (not res!449408) (not e!389382))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!683534 (= res!449408 (bvsle from!3004 i!1382))))

(declare-fun b!683535 () Bool)

(declare-fun res!449399 () Bool)

(assert (=> b!683535 (=> (not res!449399) (not e!389386))))

(assert (=> b!683535 (= res!449399 e!389385)))

(declare-fun res!449410 () Bool)

(assert (=> b!683535 (=> res!449410 e!389385)))

(declare-fun e!389389 () Bool)

(assert (=> b!683535 (= res!449410 e!389389)))

(declare-fun res!449411 () Bool)

(assert (=> b!683535 (=> (not res!449411) (not e!389389))))

(assert (=> b!683535 (= res!449411 (bvsgt from!3004 i!1382))))

(declare-fun res!449398 () Bool)

(assert (=> start!60994 (=> (not res!449398) (not e!389386))))

(assert (=> start!60994 (= res!449398 (and (bvslt (size!19322 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19322 a!3626))))))

(assert (=> start!60994 e!389386))

(assert (=> start!60994 true))

(declare-fun array_inv!14730 (array!39559) Bool)

(assert (=> start!60994 (array_inv!14730 a!3626)))

(declare-fun b!683526 () Bool)

(assert (=> b!683526 (= e!389389 (contains!3593 acc!681 k!2843))))

(declare-fun b!683536 () Bool)

(declare-fun res!449409 () Bool)

(assert (=> b!683536 (=> (not res!449409) (not e!389386))))

(assert (=> b!683536 (= res!449409 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19322 a!3626))))))

(declare-fun b!683537 () Bool)

(declare-fun res!449404 () Bool)

(assert (=> b!683537 (=> (not res!449404) (not e!389386))))

(assert (=> b!683537 (= res!449404 (noDuplicate!840 acc!681))))

(declare-fun b!683538 () Bool)

(declare-fun res!449397 () Bool)

(assert (=> b!683538 (=> (not res!449397) (not e!389386))))

(assert (=> b!683538 (= res!449397 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19322 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!683539 () Bool)

(assert (=> b!683539 (= e!389386 (not e!389383))))

(declare-fun res!449407 () Bool)

(assert (=> b!683539 (=> res!449407 e!389383)))

(assert (=> b!683539 (= res!449407 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!143 (List!13050 (_ BitVec 64)) List!13050)

(assert (=> b!683539 (= (-!143 lt!313951 k!2843) acc!681)))

(assert (=> b!683539 (= lt!313951 ($colon$colon!342 acc!681 k!2843))))

(declare-fun lt!313950 () Unit!24017)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13050) Unit!24017)

(assert (=> b!683539 (= lt!313950 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!683539 (subseq!178 acc!681 acc!681)))

(declare-fun lt!313945 () Unit!24017)

(assert (=> b!683539 (= lt!313945 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!683539 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313952 () Unit!24017)

(assert (=> b!683539 (= lt!313952 e!389388)))

(declare-fun c!77432 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!683539 (= c!77432 (validKeyInArray!0 (select (arr!18956 a!3626) from!3004)))))

(declare-fun lt!313946 () Unit!24017)

(assert (=> b!683539 (= lt!313946 e!389387)))

(declare-fun c!77431 () Bool)

(assert (=> b!683539 (= c!77431 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!683539 (arrayContainsKey!0 (array!39560 (store (arr!18956 a!3626) i!1382 k!2843) (size!19322 a!3626)) k!2843 from!3004)))

(declare-fun b!683540 () Bool)

(declare-fun res!449403 () Bool)

(assert (=> b!683540 (=> (not res!449403) (not e!389386))))

(assert (=> b!683540 (= res!449403 (validKeyInArray!0 k!2843))))

(declare-fun b!683541 () Bool)

(declare-fun res!449406 () Bool)

(assert (=> b!683541 (=> (not res!449406) (not e!389386))))

(assert (=> b!683541 (= res!449406 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13047))))

(declare-fun b!683542 () Bool)

(declare-fun res!449400 () Bool)

(assert (=> b!683542 (=> (not res!449400) (not e!389386))))

(assert (=> b!683542 (= res!449400 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!683543 () Bool)

(declare-fun res!449402 () Bool)

(assert (=> b!683543 (=> (not res!449402) (not e!389386))))

(assert (=> b!683543 (= res!449402 (not (contains!3593 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60994 res!449398) b!683537))

(assert (= (and b!683537 res!449404) b!683543))

(assert (= (and b!683543 res!449402) b!683533))

(assert (= (and b!683533 res!449405) b!683535))

(assert (= (and b!683535 res!449411) b!683526))

(assert (= (and b!683535 (not res!449410)) b!683534))

(assert (= (and b!683534 res!449408) b!683532))

(assert (= (and b!683535 res!449399) b!683541))

(assert (= (and b!683541 res!449406) b!683542))

(assert (= (and b!683542 res!449400) b!683536))

(assert (= (and b!683536 res!449409) b!683540))

(assert (= (and b!683540 res!449403) b!683531))

(assert (= (and b!683531 res!449401) b!683538))

(assert (= (and b!683538 res!449397) b!683539))

(assert (= (and b!683539 c!77431) b!683527))

(assert (= (and b!683539 (not c!77431)) b!683530))

(assert (= (and b!683539 c!77432) b!683529))

(assert (= (and b!683539 (not c!77432)) b!683528))

(assert (= (and b!683539 (not res!449407)) b!683525))

(declare-fun m!648111 () Bool)

(assert (=> b!683539 m!648111))

(declare-fun m!648113 () Bool)

(assert (=> b!683539 m!648113))

(declare-fun m!648115 () Bool)

(assert (=> b!683539 m!648115))

(declare-fun m!648117 () Bool)

(assert (=> b!683539 m!648117))

(declare-fun m!648119 () Bool)

(assert (=> b!683539 m!648119))

(declare-fun m!648121 () Bool)

(assert (=> b!683539 m!648121))

(assert (=> b!683539 m!648113))

(declare-fun m!648123 () Bool)

(assert (=> b!683539 m!648123))

(declare-fun m!648125 () Bool)

(assert (=> b!683539 m!648125))

(declare-fun m!648127 () Bool)

(assert (=> b!683539 m!648127))

(declare-fun m!648129 () Bool)

(assert (=> b!683539 m!648129))

(declare-fun m!648131 () Bool)

(assert (=> b!683539 m!648131))

(declare-fun m!648133 () Bool)

(assert (=> b!683542 m!648133))

(declare-fun m!648135 () Bool)

(assert (=> b!683537 m!648135))

(declare-fun m!648137 () Bool)

(assert (=> b!683527 m!648137))

(declare-fun m!648139 () Bool)

(assert (=> b!683543 m!648139))

(assert (=> b!683529 m!648111))

(assert (=> b!683529 m!648113))

(declare-fun m!648141 () Bool)

(assert (=> b!683529 m!648141))

(declare-fun m!648143 () Bool)

(assert (=> b!683529 m!648143))

(assert (=> b!683529 m!648113))

(assert (=> b!683529 m!648141))

(assert (=> b!683529 m!648119))

(assert (=> b!683529 m!648131))

(declare-fun m!648145 () Bool)

(assert (=> b!683533 m!648145))

(declare-fun m!648147 () Bool)

(assert (=> b!683540 m!648147))

(declare-fun m!648149 () Bool)

(assert (=> start!60994 m!648149))

(declare-fun m!648151 () Bool)

(assert (=> b!683531 m!648151))

(declare-fun m!648153 () Bool)

(assert (=> b!683526 m!648153))

(declare-fun m!648155 () Bool)

(assert (=> b!683541 m!648155))

(assert (=> b!683532 m!648153))

(declare-fun m!648157 () Bool)

(assert (=> b!683525 m!648157))

(push 1)

(assert (not b!683526))

(assert (not b!683537))

(assert (not b!683539))

(assert (not b!683529))

(assert (not b!683527))

(assert (not b!683531))

(assert (not b!683542))

(assert (not b!683541))

(assert (not b!683540))

(assert (not b!683543))

(assert (not b!683532))

(assert (not b!683533))

(assert (not b!683525))

(assert (not start!60994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

