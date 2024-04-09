; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102854 () Bool)

(assert start!102854)

(declare-fun b!1235649 () Bool)

(declare-fun res!823847 () Bool)

(declare-fun e!700563 () Bool)

(assert (=> b!1235649 (=> (not res!823847) (not e!700563))))

(declare-datatypes ((List!27375 0))(
  ( (Nil!27372) (Cons!27371 (h!28580 (_ BitVec 64)) (t!40845 List!27375)) )
))
(declare-fun acc!846 () List!27375)

(declare-fun contains!7290 (List!27375 (_ BitVec 64)) Bool)

(assert (=> b!1235649 (= res!823847 (not (contains!7290 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235650 () Bool)

(declare-fun e!700561 () Bool)

(assert (=> b!1235650 (= e!700563 e!700561)))

(declare-fun res!823852 () Bool)

(assert (=> b!1235650 (=> (not res!823852) (not e!700561))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79640 0))(
  ( (array!79641 (arr!38424 (Array (_ BitVec 32) (_ BitVec 64))) (size!38961 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79640)

(assert (=> b!1235650 (= res!823852 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38961 a!3835))))))

(declare-datatypes ((Unit!40904 0))(
  ( (Unit!40905) )
))
(declare-fun lt!560396 () Unit!40904)

(declare-fun e!700562 () Unit!40904)

(assert (=> b!1235650 (= lt!560396 e!700562)))

(declare-fun c!120764 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235650 (= c!120764 (validKeyInArray!0 (select (arr!38424 a!3835) from!3213)))))

(declare-fun res!823846 () Bool)

(assert (=> start!102854 (=> (not res!823846) (not e!700563))))

(assert (=> start!102854 (= res!823846 (and (bvslt (size!38961 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38961 a!3835))))))

(assert (=> start!102854 e!700563))

(declare-fun array_inv!29200 (array!79640) Bool)

(assert (=> start!102854 (array_inv!29200 a!3835)))

(assert (=> start!102854 true))

(declare-fun b!1235651 () Bool)

(assert (=> b!1235651 (= e!700561 false)))

(declare-fun lt!560398 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79640 (_ BitVec 32) List!27375) Bool)

(assert (=> b!1235651 (= lt!560398 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235652 () Bool)

(declare-fun res!823851 () Bool)

(assert (=> b!1235652 (=> (not res!823851) (not e!700563))))

(assert (=> b!1235652 (= res!823851 (not (contains!7290 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235653 () Bool)

(declare-fun res!823850 () Bool)

(assert (=> b!1235653 (=> (not res!823850) (not e!700563))))

(assert (=> b!1235653 (= res!823850 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235654 () Bool)

(declare-fun res!823853 () Bool)

(assert (=> b!1235654 (=> (not res!823853) (not e!700563))))

(declare-fun noDuplicate!1897 (List!27375) Bool)

(assert (=> b!1235654 (= res!823853 (noDuplicate!1897 acc!846))))

(declare-fun b!1235655 () Bool)

(declare-fun Unit!40906 () Unit!40904)

(assert (=> b!1235655 (= e!700562 Unit!40906)))

(declare-fun b!1235656 () Bool)

(declare-fun res!823848 () Bool)

(assert (=> b!1235656 (=> (not res!823848) (not e!700563))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1235656 (= res!823848 (contains!7290 acc!846 k!2925))))

(declare-fun b!1235657 () Bool)

(declare-fun res!823849 () Bool)

(assert (=> b!1235657 (=> (not res!823849) (not e!700563))))

(assert (=> b!1235657 (= res!823849 (not (= from!3213 (bvsub (size!38961 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235658 () Bool)

(declare-fun lt!560397 () Unit!40904)

(assert (=> b!1235658 (= e!700562 lt!560397)))

(declare-fun lt!560401 () List!27375)

(assert (=> b!1235658 (= lt!560401 (Cons!27371 (select (arr!38424 a!3835) from!3213) acc!846))))

(declare-fun lt!560399 () Unit!40904)

(declare-fun lemmaListSubSeqRefl!0 (List!27375) Unit!40904)

(assert (=> b!1235658 (= lt!560399 (lemmaListSubSeqRefl!0 lt!560401))))

(declare-fun subseq!545 (List!27375 List!27375) Bool)

(assert (=> b!1235658 (subseq!545 lt!560401 lt!560401)))

(declare-fun lt!560400 () Unit!40904)

(declare-fun subseqTail!38 (List!27375 List!27375) Unit!40904)

(assert (=> b!1235658 (= lt!560400 (subseqTail!38 lt!560401 lt!560401))))

(assert (=> b!1235658 (subseq!545 acc!846 lt!560401)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79640 List!27375 List!27375 (_ BitVec 32)) Unit!40904)

(assert (=> b!1235658 (= lt!560397 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560401 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1235658 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(assert (= (and start!102854 res!823846) b!1235654))

(assert (= (and b!1235654 res!823853) b!1235652))

(assert (= (and b!1235652 res!823851) b!1235649))

(assert (= (and b!1235649 res!823847) b!1235653))

(assert (= (and b!1235653 res!823850) b!1235656))

(assert (= (and b!1235656 res!823848) b!1235657))

(assert (= (and b!1235657 res!823849) b!1235650))

(assert (= (and b!1235650 c!120764) b!1235658))

(assert (= (and b!1235650 (not c!120764)) b!1235655))

(assert (= (and b!1235650 res!823852) b!1235651))

(declare-fun m!1139567 () Bool)

(assert (=> b!1235654 m!1139567))

(declare-fun m!1139569 () Bool)

(assert (=> b!1235649 m!1139569))

(declare-fun m!1139571 () Bool)

(assert (=> b!1235652 m!1139571))

(declare-fun m!1139573 () Bool)

(assert (=> b!1235651 m!1139573))

(declare-fun m!1139575 () Bool)

(assert (=> b!1235653 m!1139575))

(declare-fun m!1139577 () Bool)

(assert (=> b!1235658 m!1139577))

(declare-fun m!1139579 () Bool)

(assert (=> b!1235658 m!1139579))

(declare-fun m!1139581 () Bool)

(assert (=> b!1235658 m!1139581))

(declare-fun m!1139583 () Bool)

(assert (=> b!1235658 m!1139583))

(declare-fun m!1139585 () Bool)

(assert (=> b!1235658 m!1139585))

(assert (=> b!1235658 m!1139573))

(declare-fun m!1139587 () Bool)

(assert (=> b!1235658 m!1139587))

(declare-fun m!1139589 () Bool)

(assert (=> b!1235656 m!1139589))

(declare-fun m!1139591 () Bool)

(assert (=> start!102854 m!1139591))

(assert (=> b!1235650 m!1139587))

(assert (=> b!1235650 m!1139587))

(declare-fun m!1139593 () Bool)

(assert (=> b!1235650 m!1139593))

(push 1)

(assert (not b!1235652))

(assert (not b!1235658))

(assert (not b!1235649))

(assert (not b!1235654))

(assert (not b!1235653))

(assert (not b!1235650))

(assert (not b!1235651))

(assert (not b!1235656))

(assert (not start!102854))

(check-sat)

