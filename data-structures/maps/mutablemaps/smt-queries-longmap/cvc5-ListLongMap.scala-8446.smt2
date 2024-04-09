; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102848 () Bool)

(assert start!102848)

(declare-fun b!1235559 () Bool)

(declare-fun res!823774 () Bool)

(declare-fun e!700526 () Bool)

(assert (=> b!1235559 (=> (not res!823774) (not e!700526))))

(declare-datatypes ((List!27372 0))(
  ( (Nil!27369) (Cons!27368 (h!28577 (_ BitVec 64)) (t!40842 List!27372)) )
))
(declare-fun acc!846 () List!27372)

(declare-fun contains!7287 (List!27372 (_ BitVec 64)) Bool)

(assert (=> b!1235559 (= res!823774 (not (contains!7287 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235560 () Bool)

(declare-datatypes ((Unit!40895 0))(
  ( (Unit!40896) )
))
(declare-fun e!700527 () Unit!40895)

(declare-fun lt!560342 () Unit!40895)

(assert (=> b!1235560 (= e!700527 lt!560342)))

(declare-fun lt!560345 () List!27372)

(declare-datatypes ((array!79634 0))(
  ( (array!79635 (arr!38421 (Array (_ BitVec 32) (_ BitVec 64))) (size!38958 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79634)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> b!1235560 (= lt!560345 (Cons!27368 (select (arr!38421 a!3835) from!3213) acc!846))))

(declare-fun lt!560343 () Unit!40895)

(declare-fun lemmaListSubSeqRefl!0 (List!27372) Unit!40895)

(assert (=> b!1235560 (= lt!560343 (lemmaListSubSeqRefl!0 lt!560345))))

(declare-fun subseq!542 (List!27372 List!27372) Bool)

(assert (=> b!1235560 (subseq!542 lt!560345 lt!560345)))

(declare-fun lt!560347 () Unit!40895)

(declare-fun subseqTail!35 (List!27372 List!27372) Unit!40895)

(assert (=> b!1235560 (= lt!560347 (subseqTail!35 lt!560345 lt!560345))))

(assert (=> b!1235560 (subseq!542 acc!846 lt!560345)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79634 List!27372 List!27372 (_ BitVec 32)) Unit!40895)

(assert (=> b!1235560 (= lt!560342 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560345 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun arrayNoDuplicates!0 (array!79634 (_ BitVec 32) List!27372) Bool)

(assert (=> b!1235560 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1235561 () Bool)

(declare-fun res!823781 () Bool)

(assert (=> b!1235561 (=> (not res!823781) (not e!700526))))

(assert (=> b!1235561 (= res!823781 (not (contains!7287 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235562 () Bool)

(declare-fun res!823777 () Bool)

(assert (=> b!1235562 (=> (not res!823777) (not e!700526))))

(assert (=> b!1235562 (= res!823777 (not (= from!3213 (bvsub (size!38958 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235563 () Bool)

(declare-fun res!823776 () Bool)

(assert (=> b!1235563 (=> (not res!823776) (not e!700526))))

(declare-fun noDuplicate!1894 (List!27372) Bool)

(assert (=> b!1235563 (= res!823776 (noDuplicate!1894 acc!846))))

(declare-fun res!823775 () Bool)

(assert (=> start!102848 (=> (not res!823775) (not e!700526))))

(assert (=> start!102848 (= res!823775 (and (bvslt (size!38958 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38958 a!3835))))))

(assert (=> start!102848 e!700526))

(declare-fun array_inv!29197 (array!79634) Bool)

(assert (=> start!102848 (array_inv!29197 a!3835)))

(assert (=> start!102848 true))

(declare-fun b!1235564 () Bool)

(declare-fun e!700528 () Bool)

(assert (=> b!1235564 (= e!700528 false)))

(declare-fun lt!560344 () Bool)

(assert (=> b!1235564 (= lt!560344 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235565 () Bool)

(declare-fun res!823778 () Bool)

(assert (=> b!1235565 (=> (not res!823778) (not e!700526))))

(assert (=> b!1235565 (= res!823778 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235566 () Bool)

(declare-fun res!823780 () Bool)

(assert (=> b!1235566 (=> (not res!823780) (not e!700526))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1235566 (= res!823780 (contains!7287 acc!846 k!2925))))

(declare-fun b!1235567 () Bool)

(declare-fun Unit!40897 () Unit!40895)

(assert (=> b!1235567 (= e!700527 Unit!40897)))

(declare-fun b!1235568 () Bool)

(assert (=> b!1235568 (= e!700526 e!700528)))

(declare-fun res!823779 () Bool)

(assert (=> b!1235568 (=> (not res!823779) (not e!700528))))

(assert (=> b!1235568 (= res!823779 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38958 a!3835))))))

(declare-fun lt!560346 () Unit!40895)

(assert (=> b!1235568 (= lt!560346 e!700527)))

(declare-fun c!120755 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235568 (= c!120755 (validKeyInArray!0 (select (arr!38421 a!3835) from!3213)))))

(assert (= (and start!102848 res!823775) b!1235563))

(assert (= (and b!1235563 res!823776) b!1235561))

(assert (= (and b!1235561 res!823781) b!1235559))

(assert (= (and b!1235559 res!823774) b!1235565))

(assert (= (and b!1235565 res!823778) b!1235566))

(assert (= (and b!1235566 res!823780) b!1235562))

(assert (= (and b!1235562 res!823777) b!1235568))

(assert (= (and b!1235568 c!120755) b!1235560))

(assert (= (and b!1235568 (not c!120755)) b!1235567))

(assert (= (and b!1235568 res!823779) b!1235564))

(declare-fun m!1139483 () Bool)

(assert (=> b!1235565 m!1139483))

(declare-fun m!1139485 () Bool)

(assert (=> b!1235568 m!1139485))

(assert (=> b!1235568 m!1139485))

(declare-fun m!1139487 () Bool)

(assert (=> b!1235568 m!1139487))

(declare-fun m!1139489 () Bool)

(assert (=> b!1235559 m!1139489))

(declare-fun m!1139491 () Bool)

(assert (=> b!1235566 m!1139491))

(declare-fun m!1139493 () Bool)

(assert (=> start!102848 m!1139493))

(declare-fun m!1139495 () Bool)

(assert (=> b!1235564 m!1139495))

(declare-fun m!1139497 () Bool)

(assert (=> b!1235561 m!1139497))

(declare-fun m!1139499 () Bool)

(assert (=> b!1235563 m!1139499))

(declare-fun m!1139501 () Bool)

(assert (=> b!1235560 m!1139501))

(declare-fun m!1139503 () Bool)

(assert (=> b!1235560 m!1139503))

(declare-fun m!1139505 () Bool)

(assert (=> b!1235560 m!1139505))

(assert (=> b!1235560 m!1139495))

(assert (=> b!1235560 m!1139485))

(declare-fun m!1139507 () Bool)

(assert (=> b!1235560 m!1139507))

(declare-fun m!1139509 () Bool)

(assert (=> b!1235560 m!1139509))

(push 1)

