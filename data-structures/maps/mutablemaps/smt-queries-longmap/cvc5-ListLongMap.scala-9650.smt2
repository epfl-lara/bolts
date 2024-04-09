; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114074 () Bool)

(assert start!114074)

(declare-fun b!1353365 () Bool)

(declare-fun e!769105 () Bool)

(assert (=> b!1353365 (= e!769105 false)))

(declare-datatypes ((List!31754 0))(
  ( (Nil!31751) (Cons!31750 (h!32959 (_ BitVec 64)) (t!46419 List!31754)) )
))
(declare-fun lt!597821 () List!31754)

(declare-datatypes ((array!92179 0))(
  ( (array!92180 (arr!44533 (Array (_ BitVec 32) (_ BitVec 64))) (size!45084 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92179)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lt!597822 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92179 (_ BitVec 32) List!31754) Bool)

(assert (=> b!1353365 (= lt!597822 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597821))))

(declare-fun b!1353366 () Bool)

(declare-fun res!898674 () Bool)

(declare-fun e!769108 () Bool)

(assert (=> b!1353366 (=> (not res!898674) (not e!769108))))

(declare-fun acc!759 () List!31754)

(declare-fun contains!9319 (List!31754 (_ BitVec 64)) Bool)

(assert (=> b!1353366 (= res!898674 (not (contains!9319 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353367 () Bool)

(declare-fun res!898683 () Bool)

(assert (=> b!1353367 (=> (not res!898683) (not e!769108))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1353367 (= res!898683 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45084 a!3742))))))

(declare-fun b!1353368 () Bool)

(declare-fun res!898677 () Bool)

(assert (=> b!1353368 (=> (not res!898677) (not e!769105))))

(assert (=> b!1353368 (= res!898677 (not (contains!9319 lt!597821 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353369 () Bool)

(declare-fun res!898682 () Bool)

(assert (=> b!1353369 (=> (not res!898682) (not e!769108))))

(assert (=> b!1353369 (= res!898682 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31751))))

(declare-fun b!1353370 () Bool)

(declare-fun res!898681 () Bool)

(assert (=> b!1353370 (=> (not res!898681) (not e!769105))))

(declare-fun noDuplicate!2198 (List!31754) Bool)

(assert (=> b!1353370 (= res!898681 (noDuplicate!2198 lt!597821))))

(declare-fun b!1353371 () Bool)

(declare-fun res!898678 () Bool)

(assert (=> b!1353371 (=> (not res!898678) (not e!769108))))

(assert (=> b!1353371 (= res!898678 (not (contains!9319 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353372 () Bool)

(declare-fun e!769107 () Bool)

(assert (=> b!1353372 (= e!769107 e!769105)))

(declare-fun res!898675 () Bool)

(assert (=> b!1353372 (=> (not res!898675) (not e!769105))))

(assert (=> b!1353372 (= res!898675 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!745 (List!31754 (_ BitVec 64)) List!31754)

(assert (=> b!1353372 (= lt!597821 ($colon$colon!745 acc!759 (select (arr!44533 a!3742) from!3120)))))

(declare-fun b!1353373 () Bool)

(declare-fun res!898680 () Bool)

(assert (=> b!1353373 (=> (not res!898680) (not e!769108))))

(assert (=> b!1353373 (= res!898680 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45084 a!3742)))))

(declare-fun b!1353374 () Bool)

(assert (=> b!1353374 (= e!769108 e!769107)))

(declare-fun res!898676 () Bool)

(assert (=> b!1353374 (=> (not res!898676) (not e!769107))))

(declare-fun lt!597823 () Bool)

(assert (=> b!1353374 (= res!898676 (and (not (= from!3120 i!1404)) lt!597823))))

(declare-datatypes ((Unit!44363 0))(
  ( (Unit!44364) )
))
(declare-fun lt!597819 () Unit!44363)

(declare-fun e!769104 () Unit!44363)

(assert (=> b!1353374 (= lt!597819 e!769104)))

(declare-fun c!126790 () Bool)

(assert (=> b!1353374 (= c!126790 lt!597823)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1353374 (= lt!597823 (validKeyInArray!0 (select (arr!44533 a!3742) from!3120)))))

(declare-fun b!1353375 () Bool)

(declare-fun res!898671 () Bool)

(assert (=> b!1353375 (=> (not res!898671) (not e!769108))))

(assert (=> b!1353375 (= res!898671 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!898679 () Bool)

(assert (=> start!114074 (=> (not res!898679) (not e!769108))))

(assert (=> start!114074 (= res!898679 (and (bvslt (size!45084 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45084 a!3742))))))

(assert (=> start!114074 e!769108))

(assert (=> start!114074 true))

(declare-fun array_inv!33478 (array!92179) Bool)

(assert (=> start!114074 (array_inv!33478 a!3742)))

(declare-fun b!1353376 () Bool)

(declare-fun lt!597824 () Unit!44363)

(assert (=> b!1353376 (= e!769104 lt!597824)))

(declare-fun lt!597820 () Unit!44363)

(declare-fun lemmaListSubSeqRefl!0 (List!31754) Unit!44363)

(assert (=> b!1353376 (= lt!597820 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!728 (List!31754 List!31754) Bool)

(assert (=> b!1353376 (subseq!728 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92179 List!31754 List!31754 (_ BitVec 32)) Unit!44363)

(assert (=> b!1353376 (= lt!597824 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!745 acc!759 (select (arr!44533 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1353376 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1353377 () Bool)

(declare-fun Unit!44365 () Unit!44363)

(assert (=> b!1353377 (= e!769104 Unit!44365)))

(declare-fun b!1353378 () Bool)

(declare-fun res!898670 () Bool)

(assert (=> b!1353378 (=> (not res!898670) (not e!769108))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1353378 (= res!898670 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1353379 () Bool)

(declare-fun res!898673 () Bool)

(assert (=> b!1353379 (=> (not res!898673) (not e!769105))))

(assert (=> b!1353379 (= res!898673 (not (contains!9319 lt!597821 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353380 () Bool)

(declare-fun res!898672 () Bool)

(assert (=> b!1353380 (=> (not res!898672) (not e!769108))))

(assert (=> b!1353380 (= res!898672 (noDuplicate!2198 acc!759))))

(assert (= (and start!114074 res!898679) b!1353380))

(assert (= (and b!1353380 res!898672) b!1353366))

(assert (= (and b!1353366 res!898674) b!1353371))

(assert (= (and b!1353371 res!898678) b!1353369))

(assert (= (and b!1353369 res!898682) b!1353375))

(assert (= (and b!1353375 res!898671) b!1353367))

(assert (= (and b!1353367 res!898683) b!1353378))

(assert (= (and b!1353378 res!898670) b!1353373))

(assert (= (and b!1353373 res!898680) b!1353374))

(assert (= (and b!1353374 c!126790) b!1353376))

(assert (= (and b!1353374 (not c!126790)) b!1353377))

(assert (= (and b!1353374 res!898676) b!1353372))

(assert (= (and b!1353372 res!898675) b!1353370))

(assert (= (and b!1353370 res!898681) b!1353379))

(assert (= (and b!1353379 res!898673) b!1353368))

(assert (= (and b!1353368 res!898677) b!1353365))

(declare-fun m!1240021 () Bool)

(assert (=> b!1353376 m!1240021))

(declare-fun m!1240023 () Bool)

(assert (=> b!1353376 m!1240023))

(declare-fun m!1240025 () Bool)

(assert (=> b!1353376 m!1240025))

(declare-fun m!1240027 () Bool)

(assert (=> b!1353376 m!1240027))

(declare-fun m!1240029 () Bool)

(assert (=> b!1353376 m!1240029))

(assert (=> b!1353376 m!1240023))

(assert (=> b!1353376 m!1240025))

(declare-fun m!1240031 () Bool)

(assert (=> b!1353376 m!1240031))

(assert (=> b!1353374 m!1240023))

(assert (=> b!1353374 m!1240023))

(declare-fun m!1240033 () Bool)

(assert (=> b!1353374 m!1240033))

(declare-fun m!1240035 () Bool)

(assert (=> b!1353370 m!1240035))

(declare-fun m!1240037 () Bool)

(assert (=> start!114074 m!1240037))

(declare-fun m!1240039 () Bool)

(assert (=> b!1353366 m!1240039))

(declare-fun m!1240041 () Bool)

(assert (=> b!1353365 m!1240041))

(declare-fun m!1240043 () Bool)

(assert (=> b!1353368 m!1240043))

(declare-fun m!1240045 () Bool)

(assert (=> b!1353378 m!1240045))

(declare-fun m!1240047 () Bool)

(assert (=> b!1353369 m!1240047))

(declare-fun m!1240049 () Bool)

(assert (=> b!1353379 m!1240049))

(assert (=> b!1353372 m!1240023))

(assert (=> b!1353372 m!1240023))

(assert (=> b!1353372 m!1240025))

(declare-fun m!1240051 () Bool)

(assert (=> b!1353375 m!1240051))

(declare-fun m!1240053 () Bool)

(assert (=> b!1353380 m!1240053))

(declare-fun m!1240055 () Bool)

(assert (=> b!1353371 m!1240055))

(push 1)

