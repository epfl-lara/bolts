; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60220 () Bool)

(assert start!60220)

(declare-fun b!673369 () Bool)

(declare-fun e!384507 () Bool)

(declare-datatypes ((List!12894 0))(
  ( (Nil!12891) (Cons!12890 (h!13935 (_ BitVec 64)) (t!19130 List!12894)) )
))
(declare-fun acc!681 () List!12894)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3437 (List!12894 (_ BitVec 64)) Bool)

(assert (=> b!673369 (= e!384507 (contains!3437 acc!681 k!2843))))

(declare-fun b!673371 () Bool)

(declare-fun res!440087 () Bool)

(declare-fun e!384515 () Bool)

(assert (=> b!673371 (=> (not res!440087) (not e!384515))))

(assert (=> b!673371 (= res!440087 (not (contains!3437 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673372 () Bool)

(declare-fun res!440095 () Bool)

(declare-fun e!384517 () Bool)

(assert (=> b!673372 (=> (not res!440095) (not e!384517))))

(declare-fun lt!312427 () List!12894)

(declare-fun noDuplicate!684 (List!12894) Bool)

(assert (=> b!673372 (= res!440095 (noDuplicate!684 lt!312427))))

(declare-fun b!673373 () Bool)

(declare-fun e!384509 () Bool)

(assert (=> b!673373 (= e!384509 (not (contains!3437 acc!681 k!2843)))))

(declare-fun b!673374 () Bool)

(declare-fun res!440088 () Bool)

(assert (=> b!673374 (=> (not res!440088) (not e!384515))))

(declare-fun e!384516 () Bool)

(assert (=> b!673374 (= res!440088 e!384516)))

(declare-fun res!440090 () Bool)

(assert (=> b!673374 (=> res!440090 e!384516)))

(assert (=> b!673374 (= res!440090 e!384507)))

(declare-fun res!440085 () Bool)

(assert (=> b!673374 (=> (not res!440085) (not e!384507))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!673374 (= res!440085 (bvsgt from!3004 i!1382))))

(declare-fun b!673375 () Bool)

(declare-fun e!384510 () Bool)

(declare-fun e!384508 () Bool)

(assert (=> b!673375 (= e!384510 e!384508)))

(declare-fun res!440102 () Bool)

(assert (=> b!673375 (=> (not res!440102) (not e!384508))))

(assert (=> b!673375 (= res!440102 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673376 () Bool)

(declare-fun e!384514 () Bool)

(assert (=> b!673376 (= e!384515 e!384514)))

(declare-fun res!440082 () Bool)

(assert (=> b!673376 (=> (not res!440082) (not e!384514))))

(declare-datatypes ((array!39223 0))(
  ( (array!39224 (arr!18800 (Array (_ BitVec 32) (_ BitVec 64))) (size!19164 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39223)

(assert (=> b!673376 (= res!440082 (not (= (select (arr!18800 a!3626) from!3004) k!2843)))))

(declare-datatypes ((Unit!23664 0))(
  ( (Unit!23665) )
))
(declare-fun lt!312426 () Unit!23664)

(declare-fun e!384511 () Unit!23664)

(assert (=> b!673376 (= lt!312426 e!384511)))

(declare-fun c!77012 () Bool)

(assert (=> b!673376 (= c!77012 (= (select (arr!18800 a!3626) from!3004) k!2843))))

(declare-fun b!673377 () Bool)

(declare-fun res!440084 () Bool)

(assert (=> b!673377 (=> (not res!440084) (not e!384515))))

(declare-fun arrayNoDuplicates!0 (array!39223 (_ BitVec 32) List!12894) Bool)

(assert (=> b!673377 (= res!440084 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12891))))

(declare-fun b!673378 () Bool)

(declare-fun res!440093 () Bool)

(assert (=> b!673378 (=> (not res!440093) (not e!384515))))

(assert (=> b!673378 (= res!440093 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19164 a!3626))))))

(declare-fun b!673379 () Bool)

(declare-fun res!440083 () Bool)

(assert (=> b!673379 (=> (not res!440083) (not e!384517))))

(assert (=> b!673379 (= res!440083 (not (contains!3437 lt!312427 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673380 () Bool)

(assert (=> b!673380 (= e!384516 e!384509)))

(declare-fun res!440100 () Bool)

(assert (=> b!673380 (=> (not res!440100) (not e!384509))))

(assert (=> b!673380 (= res!440100 (bvsle from!3004 i!1382))))

(declare-fun b!673381 () Bool)

(declare-fun res!440092 () Bool)

(assert (=> b!673381 (=> (not res!440092) (not e!384517))))

(assert (=> b!673381 (= res!440092 e!384510)))

(declare-fun res!440101 () Bool)

(assert (=> b!673381 (=> res!440101 e!384510)))

(declare-fun e!384513 () Bool)

(assert (=> b!673381 (= res!440101 e!384513)))

(declare-fun res!440081 () Bool)

(assert (=> b!673381 (=> (not res!440081) (not e!384513))))

(assert (=> b!673381 (= res!440081 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673382 () Bool)

(declare-fun res!440097 () Bool)

(assert (=> b!673382 (=> (not res!440097) (not e!384517))))

(assert (=> b!673382 (= res!440097 (not (contains!3437 lt!312427 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673383 () Bool)

(declare-fun res!440091 () Bool)

(assert (=> b!673383 (=> (not res!440091) (not e!384515))))

(assert (=> b!673383 (= res!440091 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!673384 () Bool)

(declare-fun Unit!23666 () Unit!23664)

(assert (=> b!673384 (= e!384511 Unit!23666)))

(declare-fun arrayContainsKey!0 (array!39223 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!673384 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312428 () Unit!23664)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39223 (_ BitVec 64) (_ BitVec 32)) Unit!23664)

(assert (=> b!673384 (= lt!312428 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!673384 false))

(declare-fun res!440086 () Bool)

(assert (=> start!60220 (=> (not res!440086) (not e!384515))))

(assert (=> start!60220 (= res!440086 (and (bvslt (size!19164 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19164 a!3626))))))

(assert (=> start!60220 e!384515))

(assert (=> start!60220 true))

(declare-fun array_inv!14574 (array!39223) Bool)

(assert (=> start!60220 (array_inv!14574 a!3626)))

(declare-fun b!673370 () Bool)

(assert (=> b!673370 (= e!384514 e!384517)))

(declare-fun res!440098 () Bool)

(assert (=> b!673370 (=> (not res!440098) (not e!384517))))

(assert (=> b!673370 (= res!440098 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!285 (List!12894 (_ BitVec 64)) List!12894)

(assert (=> b!673370 (= lt!312427 ($colon$colon!285 acc!681 (select (arr!18800 a!3626) from!3004)))))

(declare-fun b!673385 () Bool)

(declare-fun Unit!23667 () Unit!23664)

(assert (=> b!673385 (= e!384511 Unit!23667)))

(declare-fun b!673386 () Bool)

(declare-fun res!440099 () Bool)

(assert (=> b!673386 (=> (not res!440099) (not e!384515))))

(assert (=> b!673386 (= res!440099 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!673387 () Bool)

(assert (=> b!673387 (= e!384508 (not (contains!3437 lt!312427 k!2843)))))

(declare-fun b!673388 () Bool)

(declare-fun res!440094 () Bool)

(assert (=> b!673388 (=> (not res!440094) (not e!384515))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!673388 (= res!440094 (validKeyInArray!0 k!2843))))

(declare-fun b!673389 () Bool)

(declare-fun res!440089 () Bool)

(assert (=> b!673389 (=> (not res!440089) (not e!384515))))

(assert (=> b!673389 (= res!440089 (noDuplicate!684 acc!681))))

(declare-fun b!673390 () Bool)

(assert (=> b!673390 (= e!384513 (contains!3437 lt!312427 k!2843))))

(declare-fun b!673391 () Bool)

(declare-fun res!440096 () Bool)

(assert (=> b!673391 (=> (not res!440096) (not e!384515))))

(assert (=> b!673391 (= res!440096 (not (contains!3437 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673392 () Bool)

(assert (=> b!673392 (= e!384517 false)))

(declare-fun lt!312429 () Bool)

(assert (=> b!673392 (= lt!312429 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312427))))

(declare-fun b!673393 () Bool)

(declare-fun res!440080 () Bool)

(assert (=> b!673393 (=> (not res!440080) (not e!384515))))

(assert (=> b!673393 (= res!440080 (validKeyInArray!0 (select (arr!18800 a!3626) from!3004)))))

(declare-fun b!673394 () Bool)

(declare-fun res!440079 () Bool)

(assert (=> b!673394 (=> (not res!440079) (not e!384515))))

(assert (=> b!673394 (= res!440079 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19164 a!3626)) (not (= from!3004 i!1382))))))

(assert (= (and start!60220 res!440086) b!673389))

(assert (= (and b!673389 res!440089) b!673391))

(assert (= (and b!673391 res!440096) b!673371))

(assert (= (and b!673371 res!440087) b!673374))

(assert (= (and b!673374 res!440085) b!673369))

(assert (= (and b!673374 (not res!440090)) b!673380))

(assert (= (and b!673380 res!440100) b!673373))

(assert (= (and b!673374 res!440088) b!673377))

(assert (= (and b!673377 res!440084) b!673383))

(assert (= (and b!673383 res!440091) b!673378))

(assert (= (and b!673378 res!440093) b!673388))

(assert (= (and b!673388 res!440094) b!673386))

(assert (= (and b!673386 res!440099) b!673394))

(assert (= (and b!673394 res!440079) b!673393))

(assert (= (and b!673393 res!440080) b!673376))

(assert (= (and b!673376 c!77012) b!673384))

(assert (= (and b!673376 (not c!77012)) b!673385))

(assert (= (and b!673376 res!440082) b!673370))

(assert (= (and b!673370 res!440098) b!673372))

(assert (= (and b!673372 res!440095) b!673379))

(assert (= (and b!673379 res!440083) b!673382))

(assert (= (and b!673382 res!440097) b!673381))

(assert (= (and b!673381 res!440081) b!673390))

(assert (= (and b!673381 (not res!440101)) b!673375))

(assert (= (and b!673375 res!440102) b!673387))

(assert (= (and b!673381 res!440092) b!673392))

(declare-fun m!641815 () Bool)

(assert (=> b!673390 m!641815))

(declare-fun m!641817 () Bool)

(assert (=> b!673369 m!641817))

(declare-fun m!641819 () Bool)

(assert (=> b!673392 m!641819))

(assert (=> b!673373 m!641817))

(declare-fun m!641821 () Bool)

(assert (=> b!673383 m!641821))

(assert (=> b!673387 m!641815))

(declare-fun m!641823 () Bool)

(assert (=> b!673370 m!641823))

(assert (=> b!673370 m!641823))

(declare-fun m!641825 () Bool)

(assert (=> b!673370 m!641825))

(declare-fun m!641827 () Bool)

(assert (=> b!673386 m!641827))

(assert (=> b!673376 m!641823))

(declare-fun m!641829 () Bool)

(assert (=> b!673389 m!641829))

(declare-fun m!641831 () Bool)

(assert (=> b!673388 m!641831))

(declare-fun m!641833 () Bool)

(assert (=> b!673372 m!641833))

(declare-fun m!641835 () Bool)

(assert (=> b!673371 m!641835))

(declare-fun m!641837 () Bool)

(assert (=> b!673379 m!641837))

(declare-fun m!641839 () Bool)

(assert (=> b!673377 m!641839))

(declare-fun m!641841 () Bool)

(assert (=> b!673384 m!641841))

(declare-fun m!641843 () Bool)

(assert (=> b!673384 m!641843))

(declare-fun m!641845 () Bool)

(assert (=> b!673382 m!641845))

(declare-fun m!641847 () Bool)

(assert (=> start!60220 m!641847))

(declare-fun m!641849 () Bool)

(assert (=> b!673391 m!641849))

(assert (=> b!673393 m!641823))

(assert (=> b!673393 m!641823))

(declare-fun m!641851 () Bool)

(assert (=> b!673393 m!641851))

(push 1)

