; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103030 () Bool)

(assert start!103030)

(declare-fun b!1237277 () Bool)

(declare-fun e!701258 () Bool)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> b!1237277 (= e!701258 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!27431 0))(
  ( (Nil!27428) (Cons!27427 (h!28636 (_ BitVec 64)) (t!40901 List!27431)) )
))
(declare-fun acc!846 () List!27431)

(declare-fun lt!560967 () List!27431)

(declare-fun subseq!583 (List!27431 List!27431) Bool)

(assert (=> b!1237277 (subseq!583 acc!846 lt!560967)))

(declare-datatypes ((Unit!41006 0))(
  ( (Unit!41007) )
))
(declare-fun lt!560968 () Unit!41006)

(declare-fun subseqTail!70 (List!27431 List!27431) Unit!41006)

(assert (=> b!1237277 (= lt!560968 (subseqTail!70 lt!560967 lt!560967))))

(assert (=> b!1237277 (subseq!583 lt!560967 lt!560967)))

(declare-fun lt!560966 () Unit!41006)

(declare-fun lemmaListSubSeqRefl!0 (List!27431) Unit!41006)

(assert (=> b!1237277 (= lt!560966 (lemmaListSubSeqRefl!0 lt!560967))))

(declare-datatypes ((array!79755 0))(
  ( (array!79756 (arr!38480 (Array (_ BitVec 32) (_ BitVec 64))) (size!39017 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79755)

(assert (=> b!1237277 (= lt!560967 (Cons!27427 (select (arr!38480 a!3835) from!3213) acc!846))))

(declare-fun b!1237278 () Bool)

(declare-fun res!825272 () Bool)

(assert (=> b!1237278 (=> (not res!825272) (not e!701258))))

(declare-fun contains!7346 (List!27431 (_ BitVec 64)) Bool)

(assert (=> b!1237278 (= res!825272 (not (contains!7346 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237279 () Bool)

(declare-fun res!825274 () Bool)

(assert (=> b!1237279 (=> (not res!825274) (not e!701258))))

(assert (=> b!1237279 (= res!825274 (not (contains!7346 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!825271 () Bool)

(assert (=> start!103030 (=> (not res!825271) (not e!701258))))

(assert (=> start!103030 (= res!825271 (and (bvslt (size!39017 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39017 a!3835))))))

(assert (=> start!103030 e!701258))

(declare-fun array_inv!29256 (array!79755) Bool)

(assert (=> start!103030 (array_inv!29256 a!3835)))

(assert (=> start!103030 true))

(declare-fun b!1237280 () Bool)

(declare-fun res!825270 () Bool)

(assert (=> b!1237280 (=> (not res!825270) (not e!701258))))

(declare-fun arrayNoDuplicates!0 (array!79755 (_ BitVec 32) List!27431) Bool)

(assert (=> b!1237280 (= res!825270 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1237281 () Bool)

(declare-fun res!825276 () Bool)

(assert (=> b!1237281 (=> (not res!825276) (not e!701258))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1237281 (= res!825276 (validKeyInArray!0 (select (arr!38480 a!3835) from!3213)))))

(declare-fun b!1237282 () Bool)

(declare-fun res!825275 () Bool)

(assert (=> b!1237282 (=> (not res!825275) (not e!701258))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1237282 (= res!825275 (contains!7346 acc!846 k!2925))))

(declare-fun b!1237283 () Bool)

(declare-fun res!825277 () Bool)

(assert (=> b!1237283 (=> (not res!825277) (not e!701258))))

(declare-fun noDuplicate!1953 (List!27431) Bool)

(assert (=> b!1237283 (= res!825277 (noDuplicate!1953 acc!846))))

(declare-fun b!1237284 () Bool)

(declare-fun res!825273 () Bool)

(assert (=> b!1237284 (=> (not res!825273) (not e!701258))))

(assert (=> b!1237284 (= res!825273 (not (= from!3213 (bvsub (size!39017 a!3835) #b00000000000000000000000000000001))))))

(assert (= (and start!103030 res!825271) b!1237283))

(assert (= (and b!1237283 res!825277) b!1237279))

(assert (= (and b!1237279 res!825274) b!1237278))

(assert (= (and b!1237278 res!825272) b!1237280))

(assert (= (and b!1237280 res!825270) b!1237282))

(assert (= (and b!1237282 res!825275) b!1237284))

(assert (= (and b!1237284 res!825273) b!1237281))

(assert (= (and b!1237281 res!825276) b!1237277))

(declare-fun m!1141031 () Bool)

(assert (=> b!1237282 m!1141031))

(declare-fun m!1141033 () Bool)

(assert (=> b!1237283 m!1141033))

(declare-fun m!1141035 () Bool)

(assert (=> b!1237280 m!1141035))

(declare-fun m!1141037 () Bool)

(assert (=> b!1237281 m!1141037))

(assert (=> b!1237281 m!1141037))

(declare-fun m!1141039 () Bool)

(assert (=> b!1237281 m!1141039))

(declare-fun m!1141041 () Bool)

(assert (=> b!1237278 m!1141041))

(declare-fun m!1141043 () Bool)

(assert (=> b!1237279 m!1141043))

(declare-fun m!1141045 () Bool)

(assert (=> b!1237277 m!1141045))

(declare-fun m!1141047 () Bool)

(assert (=> b!1237277 m!1141047))

(declare-fun m!1141049 () Bool)

(assert (=> b!1237277 m!1141049))

(declare-fun m!1141051 () Bool)

(assert (=> b!1237277 m!1141051))

(assert (=> b!1237277 m!1141037))

(declare-fun m!1141053 () Bool)

(assert (=> start!103030 m!1141053))

(push 1)

(assert (not b!1237280))

