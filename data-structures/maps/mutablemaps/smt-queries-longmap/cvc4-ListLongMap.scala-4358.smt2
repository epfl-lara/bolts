; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60196 () Bool)

(assert start!60196)

(declare-fun b!672433 () Bool)

(declare-fun res!439229 () Bool)

(declare-fun e!384112 () Bool)

(assert (=> b!672433 (=> (not res!439229) (not e!384112))))

(declare-datatypes ((array!39199 0))(
  ( (array!39200 (arr!18788 (Array (_ BitVec 32) (_ BitVec 64))) (size!19152 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39199)

(declare-datatypes ((List!12882 0))(
  ( (Nil!12879) (Cons!12878 (h!13923 (_ BitVec 64)) (t!19118 List!12882)) )
))
(declare-fun arrayNoDuplicates!0 (array!39199 (_ BitVec 32) List!12882) Bool)

(assert (=> b!672433 (= res!439229 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12879))))

(declare-fun b!672434 () Bool)

(declare-fun res!439220 () Bool)

(assert (=> b!672434 (=> (not res!439220) (not e!384112))))

(declare-fun acc!681 () List!12882)

(declare-fun noDuplicate!672 (List!12882) Bool)

(assert (=> b!672434 (= res!439220 (noDuplicate!672 acc!681))))

(declare-fun b!672435 () Bool)

(declare-datatypes ((Unit!23616 0))(
  ( (Unit!23617) )
))
(declare-fun e!384116 () Unit!23616)

(declare-fun Unit!23618 () Unit!23616)

(assert (=> b!672435 (= e!384116 Unit!23618)))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!39199 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!672435 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312282 () Unit!23616)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39199 (_ BitVec 64) (_ BitVec 32)) Unit!23616)

(assert (=> b!672435 (= lt!312282 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!672435 false))

(declare-fun b!672436 () Bool)

(declare-fun res!439217 () Bool)

(assert (=> b!672436 (=> (not res!439217) (not e!384112))))

(assert (=> b!672436 (= res!439217 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!672437 () Bool)

(declare-fun e!384114 () Bool)

(assert (=> b!672437 (= e!384114 false)))

(declare-fun lt!312284 () List!12882)

(declare-fun lt!312285 () Bool)

(assert (=> b!672437 (= lt!312285 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312284))))

(declare-fun b!672438 () Bool)

(declare-fun res!439221 () Bool)

(assert (=> b!672438 (=> (not res!439221) (not e!384112))))

(declare-fun e!384121 () Bool)

(assert (=> b!672438 (= res!439221 e!384121)))

(declare-fun res!439231 () Bool)

(assert (=> b!672438 (=> res!439231 e!384121)))

(declare-fun e!384117 () Bool)

(assert (=> b!672438 (= res!439231 e!384117)))

(declare-fun res!439234 () Bool)

(assert (=> b!672438 (=> (not res!439234) (not e!384117))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!672438 (= res!439234 (bvsgt from!3004 i!1382))))

(declare-fun b!672439 () Bool)

(declare-fun res!439215 () Bool)

(assert (=> b!672439 (=> (not res!439215) (not e!384112))))

(declare-fun contains!3425 (List!12882 (_ BitVec 64)) Bool)

(assert (=> b!672439 (= res!439215 (not (contains!3425 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672440 () Bool)

(declare-fun res!439237 () Bool)

(assert (=> b!672440 (=> (not res!439237) (not e!384114))))

(assert (=> b!672440 (= res!439237 (noDuplicate!672 lt!312284))))

(declare-fun b!672441 () Bool)

(declare-fun res!439235 () Bool)

(assert (=> b!672441 (=> (not res!439235) (not e!384114))))

(assert (=> b!672441 (= res!439235 (not (contains!3425 lt!312284 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672442 () Bool)

(declare-fun e!384115 () Bool)

(assert (=> b!672442 (= e!384115 (not (contains!3425 lt!312284 k!2843)))))

(declare-fun b!672443 () Bool)

(assert (=> b!672443 (= e!384117 (contains!3425 acc!681 k!2843))))

(declare-fun b!672444 () Bool)

(declare-fun res!439228 () Bool)

(assert (=> b!672444 (=> (not res!439228) (not e!384112))))

(assert (=> b!672444 (= res!439228 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19152 a!3626))))))

(declare-fun b!672445 () Bool)

(declare-fun res!439226 () Bool)

(assert (=> b!672445 (=> (not res!439226) (not e!384112))))

(assert (=> b!672445 (= res!439226 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun res!439216 () Bool)

(assert (=> start!60196 (=> (not res!439216) (not e!384112))))

(assert (=> start!60196 (= res!439216 (and (bvslt (size!19152 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19152 a!3626))))))

(assert (=> start!60196 e!384112))

(assert (=> start!60196 true))

(declare-fun array_inv!14562 (array!39199) Bool)

(assert (=> start!60196 (array_inv!14562 a!3626)))

(declare-fun b!672446 () Bool)

(declare-fun res!439219 () Bool)

(assert (=> b!672446 (=> (not res!439219) (not e!384114))))

(declare-fun e!384111 () Bool)

(assert (=> b!672446 (= res!439219 e!384111)))

(declare-fun res!439218 () Bool)

(assert (=> b!672446 (=> res!439218 e!384111)))

(declare-fun e!384120 () Bool)

(assert (=> b!672446 (= res!439218 e!384120)))

(declare-fun res!439227 () Bool)

(assert (=> b!672446 (=> (not res!439227) (not e!384120))))

(assert (=> b!672446 (= res!439227 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672447 () Bool)

(declare-fun e!384118 () Bool)

(assert (=> b!672447 (= e!384121 e!384118)))

(declare-fun res!439236 () Bool)

(assert (=> b!672447 (=> (not res!439236) (not e!384118))))

(assert (=> b!672447 (= res!439236 (bvsle from!3004 i!1382))))

(declare-fun b!672448 () Bool)

(assert (=> b!672448 (= e!384118 (not (contains!3425 acc!681 k!2843)))))

(declare-fun b!672449 () Bool)

(declare-fun res!439233 () Bool)

(assert (=> b!672449 (=> (not res!439233) (not e!384112))))

(assert (=> b!672449 (= res!439233 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19152 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!672450 () Bool)

(declare-fun res!439232 () Bool)

(assert (=> b!672450 (=> (not res!439232) (not e!384112))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!672450 (= res!439232 (validKeyInArray!0 k!2843))))

(declare-fun b!672451 () Bool)

(assert (=> b!672451 (= e!384120 (contains!3425 lt!312284 k!2843))))

(declare-fun b!672452 () Bool)

(declare-fun res!439230 () Bool)

(assert (=> b!672452 (=> (not res!439230) (not e!384114))))

(assert (=> b!672452 (= res!439230 (not (contains!3425 lt!312284 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672453 () Bool)

(declare-fun res!439225 () Bool)

(assert (=> b!672453 (=> (not res!439225) (not e!384112))))

(assert (=> b!672453 (= res!439225 (validKeyInArray!0 (select (arr!18788 a!3626) from!3004)))))

(declare-fun b!672454 () Bool)

(declare-fun e!384113 () Bool)

(assert (=> b!672454 (= e!384112 e!384113)))

(declare-fun res!439238 () Bool)

(assert (=> b!672454 (=> (not res!439238) (not e!384113))))

(assert (=> b!672454 (= res!439238 (not (= (select (arr!18788 a!3626) from!3004) k!2843)))))

(declare-fun lt!312283 () Unit!23616)

(assert (=> b!672454 (= lt!312283 e!384116)))

(declare-fun c!76976 () Bool)

(assert (=> b!672454 (= c!76976 (= (select (arr!18788 a!3626) from!3004) k!2843))))

(declare-fun b!672455 () Bool)

(declare-fun res!439224 () Bool)

(assert (=> b!672455 (=> (not res!439224) (not e!384112))))

(assert (=> b!672455 (= res!439224 (not (contains!3425 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672456 () Bool)

(declare-fun Unit!23619 () Unit!23616)

(assert (=> b!672456 (= e!384116 Unit!23619)))

(declare-fun b!672457 () Bool)

(assert (=> b!672457 (= e!384113 e!384114)))

(declare-fun res!439223 () Bool)

(assert (=> b!672457 (=> (not res!439223) (not e!384114))))

(assert (=> b!672457 (= res!439223 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!273 (List!12882 (_ BitVec 64)) List!12882)

(assert (=> b!672457 (= lt!312284 ($colon$colon!273 acc!681 (select (arr!18788 a!3626) from!3004)))))

(declare-fun b!672458 () Bool)

(assert (=> b!672458 (= e!384111 e!384115)))

(declare-fun res!439222 () Bool)

(assert (=> b!672458 (=> (not res!439222) (not e!384115))))

(assert (=> b!672458 (= res!439222 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(assert (= (and start!60196 res!439216) b!672434))

(assert (= (and b!672434 res!439220) b!672455))

(assert (= (and b!672455 res!439224) b!672439))

(assert (= (and b!672439 res!439215) b!672438))

(assert (= (and b!672438 res!439234) b!672443))

(assert (= (and b!672438 (not res!439231)) b!672447))

(assert (= (and b!672447 res!439236) b!672448))

(assert (= (and b!672438 res!439221) b!672433))

(assert (= (and b!672433 res!439229) b!672436))

(assert (= (and b!672436 res!439217) b!672444))

(assert (= (and b!672444 res!439228) b!672450))

(assert (= (and b!672450 res!439232) b!672445))

(assert (= (and b!672445 res!439226) b!672449))

(assert (= (and b!672449 res!439233) b!672453))

(assert (= (and b!672453 res!439225) b!672454))

(assert (= (and b!672454 c!76976) b!672435))

(assert (= (and b!672454 (not c!76976)) b!672456))

(assert (= (and b!672454 res!439238) b!672457))

(assert (= (and b!672457 res!439223) b!672440))

(assert (= (and b!672440 res!439237) b!672441))

(assert (= (and b!672441 res!439235) b!672452))

(assert (= (and b!672452 res!439230) b!672446))

(assert (= (and b!672446 res!439227) b!672451))

(assert (= (and b!672446 (not res!439218)) b!672458))

(assert (= (and b!672458 res!439222) b!672442))

(assert (= (and b!672446 res!439219) b!672437))

(declare-fun m!641359 () Bool)

(assert (=> b!672441 m!641359))

(declare-fun m!641361 () Bool)

(assert (=> b!672455 m!641361))

(declare-fun m!641363 () Bool)

(assert (=> b!672445 m!641363))

(declare-fun m!641365 () Bool)

(assert (=> b!672454 m!641365))

(declare-fun m!641367 () Bool)

(assert (=> start!60196 m!641367))

(declare-fun m!641369 () Bool)

(assert (=> b!672451 m!641369))

(declare-fun m!641371 () Bool)

(assert (=> b!672448 m!641371))

(assert (=> b!672453 m!641365))

(assert (=> b!672453 m!641365))

(declare-fun m!641373 () Bool)

(assert (=> b!672453 m!641373))

(assert (=> b!672443 m!641371))

(assert (=> b!672442 m!641369))

(declare-fun m!641375 () Bool)

(assert (=> b!672437 m!641375))

(declare-fun m!641377 () Bool)

(assert (=> b!672450 m!641377))

(declare-fun m!641379 () Bool)

(assert (=> b!672440 m!641379))

(assert (=> b!672457 m!641365))

(assert (=> b!672457 m!641365))

(declare-fun m!641381 () Bool)

(assert (=> b!672457 m!641381))

(declare-fun m!641383 () Bool)

(assert (=> b!672435 m!641383))

(declare-fun m!641385 () Bool)

(assert (=> b!672435 m!641385))

(declare-fun m!641387 () Bool)

(assert (=> b!672436 m!641387))

(declare-fun m!641389 () Bool)

(assert (=> b!672433 m!641389))

(declare-fun m!641391 () Bool)

(assert (=> b!672439 m!641391))

(declare-fun m!641393 () Bool)

(assert (=> b!672434 m!641393))

(declare-fun m!641395 () Bool)

(assert (=> b!672452 m!641395))

(push 1)

