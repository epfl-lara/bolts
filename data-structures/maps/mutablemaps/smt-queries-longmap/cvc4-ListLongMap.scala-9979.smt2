; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117896 () Bool)

(assert start!117896)

(declare-fun res!923020 () Bool)

(declare-fun e!783004 () Bool)

(assert (=> start!117896 (=> (not res!923020) (not e!783004))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117896 (= res!923020 (validMask!0 mask!3034))))

(assert (=> start!117896 e!783004))

(assert (=> start!117896 true))

(declare-datatypes ((array!94230 0))(
  ( (array!94231 (arr!45495 (Array (_ BitVec 32) (_ BitVec 64))) (size!46046 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94230)

(declare-fun array_inv!34440 (array!94230) Bool)

(assert (=> start!117896 (array_inv!34440 a!2971)))

(declare-fun b!1381283 () Bool)

(declare-fun e!783005 () Bool)

(declare-datatypes ((List!32209 0))(
  ( (Nil!32206) (Cons!32205 (h!33414 (_ BitVec 64)) (t!46910 List!32209)) )
))
(declare-fun contains!9746 (List!32209 (_ BitVec 64)) Bool)

(assert (=> b!1381283 (= e!783005 (contains!9746 Nil!32206 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1381284 () Bool)

(declare-fun res!923025 () Bool)

(assert (=> b!1381284 (=> (not res!923025) (not e!783004))))

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381284 (= res!923025 (validKeyInArray!0 (select (arr!45495 a!2971) i!1094)))))

(declare-fun b!1381285 () Bool)

(declare-fun res!923022 () Bool)

(assert (=> b!1381285 (=> (not res!923022) (not e!783004))))

(assert (=> b!1381285 (= res!923022 (and (= (size!46046 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46046 a!2971))))))

(declare-fun b!1381286 () Bool)

(declare-fun res!923021 () Bool)

(assert (=> b!1381286 (=> (not res!923021) (not e!783004))))

(declare-fun noDuplicate!2626 (List!32209) Bool)

(assert (=> b!1381286 (= res!923021 (noDuplicate!2626 Nil!32206))))

(declare-fun b!1381287 () Bool)

(declare-fun res!923024 () Bool)

(assert (=> b!1381287 (=> (not res!923024) (not e!783004))))

(assert (=> b!1381287 (= res!923024 (and (bvsle #b00000000000000000000000000000000 (size!46046 a!2971)) (bvslt (size!46046 a!2971) #b01111111111111111111111111111111)))))

(declare-fun b!1381288 () Bool)

(assert (=> b!1381288 (= e!783004 e!783005)))

(declare-fun res!923023 () Bool)

(assert (=> b!1381288 (=> res!923023 e!783005)))

(assert (=> b!1381288 (= res!923023 (contains!9746 Nil!32206 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!117896 res!923020) b!1381285))

(assert (= (and b!1381285 res!923022) b!1381284))

(assert (= (and b!1381284 res!923025) b!1381287))

(assert (= (and b!1381287 res!923024) b!1381286))

(assert (= (and b!1381286 res!923021) b!1381288))

(assert (= (and b!1381288 (not res!923023)) b!1381283))

(declare-fun m!1266523 () Bool)

(assert (=> b!1381288 m!1266523))

(declare-fun m!1266525 () Bool)

(assert (=> start!117896 m!1266525))

(declare-fun m!1266527 () Bool)

(assert (=> start!117896 m!1266527))

(declare-fun m!1266529 () Bool)

(assert (=> b!1381286 m!1266529))

(declare-fun m!1266531 () Bool)

(assert (=> b!1381284 m!1266531))

(assert (=> b!1381284 m!1266531))

(declare-fun m!1266533 () Bool)

(assert (=> b!1381284 m!1266533))

(declare-fun m!1266535 () Bool)

(assert (=> b!1381283 m!1266535))

(push 1)

(assert (not b!1381286))

(assert (not start!117896))

(assert (not b!1381288))

(assert (not b!1381283))

(assert (not b!1381284))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!149015 () Bool)

(assert (=> d!149015 (= (validMask!0 mask!3034) (and (or (= mask!3034 #b00000000000000000000000000000111) (= mask!3034 #b00000000000000000000000000001111) (= mask!3034 #b00000000000000000000000000011111) (= mask!3034 #b00000000000000000000000000111111) (= mask!3034 #b00000000000000000000000001111111) (= mask!3034 #b00000000000000000000000011111111) (= mask!3034 #b00000000000000000000000111111111) (= mask!3034 #b00000000000000000000001111111111) (= mask!3034 #b00000000000000000000011111111111) (= mask!3034 #b00000000000000000000111111111111) (= mask!3034 #b00000000000000000001111111111111) (= mask!3034 #b00000000000000000011111111111111) (= mask!3034 #b00000000000000000111111111111111) (= mask!3034 #b00000000000000001111111111111111) (= mask!3034 #b00000000000000011111111111111111) (= mask!3034 #b00000000000000111111111111111111) (= mask!3034 #b00000000000001111111111111111111) (= mask!3034 #b00000000000011111111111111111111) (= mask!3034 #b00000000000111111111111111111111) (= mask!3034 #b00000000001111111111111111111111) (= mask!3034 #b00000000011111111111111111111111) (= mask!3034 #b00000000111111111111111111111111) (= mask!3034 #b00000001111111111111111111111111) (= mask!3034 #b00000011111111111111111111111111) (= mask!3034 #b00000111111111111111111111111111) (= mask!3034 #b00001111111111111111111111111111) (= mask!3034 #b00011111111111111111111111111111) (= mask!3034 #b00111111111111111111111111111111)) (bvsle mask!3034 #b00111111111111111111111111111111)))))

(assert (=> start!117896 d!149015))

(declare-fun d!149021 () Bool)

(assert (=> d!149021 (= (array_inv!34440 a!2971) (bvsge (size!46046 a!2971) #b00000000000000000000000000000000))))

(assert (=> start!117896 d!149021))

(declare-fun d!149023 () Bool)

(declare-fun res!923050 () Bool)

(declare-fun e!783030 () Bool)

(assert (=> d!149023 (=> res!923050 e!783030)))

(assert (=> d!149023 (= res!923050 (is-Nil!32206 Nil!32206))))

(assert (=> d!149023 (= (noDuplicate!2626 Nil!32206) e!783030)))

(declare-fun b!1381313 () Bool)

(declare-fun e!783031 () Bool)

(assert (=> b!1381313 (= e!783030 e!783031)))

(declare-fun res!923051 () Bool)

(assert (=> b!1381313 (=> (not res!923051) (not e!783031))))

(assert (=> b!1381313 (= res!923051 (not (contains!9746 (t!46910 Nil!32206) (h!33414 Nil!32206))))))

(declare-fun b!1381314 () Bool)

(assert (=> b!1381314 (= e!783031 (noDuplicate!2626 (t!46910 Nil!32206)))))

(assert (= (and d!149023 (not res!923050)) b!1381313))

(assert (= (and b!1381313 res!923051) b!1381314))

(declare-fun m!1266555 () Bool)

(assert (=> b!1381313 m!1266555))

(declare-fun m!1266557 () Bool)

(assert (=> b!1381314 m!1266557))

(assert (=> b!1381286 d!149023))

(declare-fun d!149029 () Bool)

(assert (=> d!149029 (= (validKeyInArray!0 (select (arr!45495 a!2971) i!1094)) (and (not (= (select (arr!45495 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45495 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000))))))

