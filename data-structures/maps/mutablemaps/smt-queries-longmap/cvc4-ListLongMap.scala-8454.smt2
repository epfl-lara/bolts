; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102900 () Bool)

(assert start!102900)

(declare-fun b!1236281 () Bool)

(declare-fun res!824378 () Bool)

(declare-fun e!700804 () Bool)

(assert (=> b!1236281 (=> (not res!824378) (not e!700804))))

(declare-datatypes ((List!27398 0))(
  ( (Nil!27395) (Cons!27394 (h!28603 (_ BitVec 64)) (t!40868 List!27398)) )
))
(declare-fun acc!846 () List!27398)

(declare-fun contains!7313 (List!27398 (_ BitVec 64)) Bool)

(assert (=> b!1236281 (= res!824378 (not (contains!7313 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236282 () Bool)

(assert (=> b!1236282 (= e!700804 false)))

(declare-fun lt!560725 () Bool)

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1236282 (= lt!560725 (contains!7313 acc!846 k!2925))))

(declare-fun res!824377 () Bool)

(assert (=> start!102900 (=> (not res!824377) (not e!700804))))

(declare-datatypes ((array!79686 0))(
  ( (array!79687 (arr!38447 (Array (_ BitVec 32) (_ BitVec 64))) (size!38984 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79686)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102900 (= res!824377 (and (bvslt (size!38984 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38984 a!3835))))))

(assert (=> start!102900 e!700804))

(declare-fun array_inv!29223 (array!79686) Bool)

(assert (=> start!102900 (array_inv!29223 a!3835)))

(assert (=> start!102900 true))

(declare-fun b!1236283 () Bool)

(declare-fun res!824376 () Bool)

(assert (=> b!1236283 (=> (not res!824376) (not e!700804))))

(declare-fun noDuplicate!1920 (List!27398) Bool)

(assert (=> b!1236283 (= res!824376 (noDuplicate!1920 acc!846))))

(declare-fun b!1236284 () Bool)

(declare-fun res!824374 () Bool)

(assert (=> b!1236284 (=> (not res!824374) (not e!700804))))

(declare-fun arrayNoDuplicates!0 (array!79686 (_ BitVec 32) List!27398) Bool)

(assert (=> b!1236284 (= res!824374 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236285 () Bool)

(declare-fun res!824375 () Bool)

(assert (=> b!1236285 (=> (not res!824375) (not e!700804))))

(assert (=> b!1236285 (= res!824375 (not (contains!7313 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102900 res!824377) b!1236283))

(assert (= (and b!1236283 res!824376) b!1236281))

(assert (= (and b!1236281 res!824378) b!1236285))

(assert (= (and b!1236285 res!824375) b!1236284))

(assert (= (and b!1236284 res!824374) b!1236282))

(declare-fun m!1140167 () Bool)

(assert (=> start!102900 m!1140167))

(declare-fun m!1140169 () Bool)

(assert (=> b!1236282 m!1140169))

(declare-fun m!1140171 () Bool)

(assert (=> b!1236281 m!1140171))

(declare-fun m!1140173 () Bool)

(assert (=> b!1236283 m!1140173))

(declare-fun m!1140175 () Bool)

(assert (=> b!1236285 m!1140175))

(declare-fun m!1140177 () Bool)

(assert (=> b!1236284 m!1140177))

(push 1)

(assert (not b!1236282))

(assert (not start!102900))

(assert (not b!1236284))

(assert (not b!1236285))

(assert (not b!1236283))

(assert (not b!1236281))

(check-sat)

(pop 1)

