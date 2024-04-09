; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103238 () Bool)

(assert start!103238)

(declare-fun b!1238809 () Bool)

(declare-datatypes ((Unit!41088 0))(
  ( (Unit!41089) )
))
(declare-fun e!702084 () Unit!41088)

(declare-fun lt!561439 () Unit!41088)

(assert (=> b!1238809 (= e!702084 lt!561439)))

(declare-datatypes ((List!27460 0))(
  ( (Nil!27457) (Cons!27456 (h!28665 (_ BitVec 64)) (t!40930 List!27460)) )
))
(declare-fun lt!561441 () List!27460)

(declare-datatypes ((array!79822 0))(
  ( (array!79823 (arr!38509 (Array (_ BitVec 32) (_ BitVec 64))) (size!39046 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79822)

(declare-fun acc!846 () List!27460)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> b!1238809 (= lt!561441 (Cons!27456 (select (arr!38509 a!3835) from!3213) acc!846))))

(declare-fun lt!561438 () Unit!41088)

(declare-fun lemmaListSubSeqRefl!0 (List!27460) Unit!41088)

(assert (=> b!1238809 (= lt!561438 (lemmaListSubSeqRefl!0 lt!561441))))

(declare-fun subseq!612 (List!27460 List!27460) Bool)

(assert (=> b!1238809 (subseq!612 lt!561441 lt!561441)))

(declare-fun lt!561442 () Unit!41088)

(declare-fun subseqTail!99 (List!27460 List!27460) Unit!41088)

(assert (=> b!1238809 (= lt!561442 (subseqTail!99 lt!561441 lt!561441))))

(assert (=> b!1238809 (subseq!612 acc!846 lt!561441)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79822 List!27460 List!27460 (_ BitVec 32)) Unit!41088)

(assert (=> b!1238809 (= lt!561439 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561441 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun arrayNoDuplicates!0 (array!79822 (_ BitVec 32) List!27460) Bool)

(assert (=> b!1238809 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1238810 () Bool)

(declare-fun res!826520 () Bool)

(declare-fun e!702086 () Bool)

(assert (=> b!1238810 (=> (not res!826520) (not e!702086))))

(declare-fun contains!7375 (List!27460 (_ BitVec 64)) Bool)

(assert (=> b!1238810 (= res!826520 (not (contains!7375 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238811 () Bool)

(declare-fun res!826519 () Bool)

(assert (=> b!1238811 (=> (not res!826519) (not e!702086))))

(assert (=> b!1238811 (= res!826519 (not (contains!7375 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238812 () Bool)

(assert (=> b!1238812 (= e!702086 false)))

(declare-fun lt!561440 () Unit!41088)

(assert (=> b!1238812 (= lt!561440 e!702084)))

(declare-fun c!121009 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238812 (= c!121009 (validKeyInArray!0 (select (arr!38509 a!3835) from!3213)))))

(declare-fun b!1238813 () Bool)

(declare-fun res!826521 () Bool)

(assert (=> b!1238813 (=> (not res!826521) (not e!702086))))

(assert (=> b!1238813 (= res!826521 (not (= from!3213 (bvsub (size!39046 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238814 () Bool)

(declare-fun res!826522 () Bool)

(assert (=> b!1238814 (=> (not res!826522) (not e!702086))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1238814 (= res!826522 (contains!7375 acc!846 k0!2925))))

(declare-fun res!826516 () Bool)

(assert (=> start!103238 (=> (not res!826516) (not e!702086))))

(assert (=> start!103238 (= res!826516 (and (bvslt (size!39046 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39046 a!3835))))))

(assert (=> start!103238 e!702086))

(declare-fun array_inv!29285 (array!79822) Bool)

(assert (=> start!103238 (array_inv!29285 a!3835)))

(assert (=> start!103238 true))

(declare-fun b!1238815 () Bool)

(declare-fun res!826518 () Bool)

(assert (=> b!1238815 (=> (not res!826518) (not e!702086))))

(assert (=> b!1238815 (= res!826518 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1238816 () Bool)

(declare-fun Unit!41090 () Unit!41088)

(assert (=> b!1238816 (= e!702084 Unit!41090)))

(declare-fun b!1238817 () Bool)

(declare-fun res!826517 () Bool)

(assert (=> b!1238817 (=> (not res!826517) (not e!702086))))

(declare-fun noDuplicate!1982 (List!27460) Bool)

(assert (=> b!1238817 (= res!826517 (noDuplicate!1982 acc!846))))

(assert (= (and start!103238 res!826516) b!1238817))

(assert (= (and b!1238817 res!826517) b!1238811))

(assert (= (and b!1238811 res!826519) b!1238810))

(assert (= (and b!1238810 res!826520) b!1238815))

(assert (= (and b!1238815 res!826518) b!1238814))

(assert (= (and b!1238814 res!826522) b!1238813))

(assert (= (and b!1238813 res!826521) b!1238812))

(assert (= (and b!1238812 c!121009) b!1238809))

(assert (= (and b!1238812 (not c!121009)) b!1238816))

(declare-fun m!1142361 () Bool)

(assert (=> b!1238809 m!1142361))

(declare-fun m!1142363 () Bool)

(assert (=> b!1238809 m!1142363))

(declare-fun m!1142365 () Bool)

(assert (=> b!1238809 m!1142365))

(declare-fun m!1142367 () Bool)

(assert (=> b!1238809 m!1142367))

(declare-fun m!1142369 () Bool)

(assert (=> b!1238809 m!1142369))

(declare-fun m!1142371 () Bool)

(assert (=> b!1238809 m!1142371))

(declare-fun m!1142373 () Bool)

(assert (=> b!1238809 m!1142373))

(declare-fun m!1142375 () Bool)

(assert (=> b!1238815 m!1142375))

(declare-fun m!1142377 () Bool)

(assert (=> b!1238810 m!1142377))

(declare-fun m!1142379 () Bool)

(assert (=> b!1238817 m!1142379))

(declare-fun m!1142381 () Bool)

(assert (=> start!103238 m!1142381))

(declare-fun m!1142383 () Bool)

(assert (=> b!1238814 m!1142383))

(assert (=> b!1238812 m!1142369))

(assert (=> b!1238812 m!1142369))

(declare-fun m!1142385 () Bool)

(assert (=> b!1238812 m!1142385))

(declare-fun m!1142387 () Bool)

(assert (=> b!1238811 m!1142387))

(check-sat (not b!1238817) (not b!1238814) (not start!103238) (not b!1238809) (not b!1238810) (not b!1238815) (not b!1238811) (not b!1238812))
