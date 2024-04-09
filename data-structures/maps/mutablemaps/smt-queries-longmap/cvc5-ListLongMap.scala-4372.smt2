; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60276 () Bool)

(assert start!60276)

(declare-fun b!675415 () Bool)

(declare-fun e!385345 () Bool)

(declare-datatypes ((List!12922 0))(
  ( (Nil!12919) (Cons!12918 (h!13963 (_ BitVec 64)) (t!19158 List!12922)) )
))
(declare-fun acc!681 () List!12922)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3465 (List!12922 (_ BitVec 64)) Bool)

(assert (=> b!675415 (= e!385345 (contains!3465 acc!681 k!2843))))

(declare-fun b!675416 () Bool)

(declare-fun res!442023 () Bool)

(declare-fun e!385347 () Bool)

(assert (=> b!675416 (=> (not res!442023) (not e!385347))))

(declare-datatypes ((array!39279 0))(
  ( (array!39280 (arr!18828 (Array (_ BitVec 32) (_ BitVec 64))) (size!19192 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39279)

(declare-fun arrayNoDuplicates!0 (array!39279 (_ BitVec 32) List!12922) Bool)

(assert (=> b!675416 (= res!442023 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12919))))

(declare-fun b!675417 () Bool)

(declare-fun res!442033 () Bool)

(assert (=> b!675417 (=> (not res!442033) (not e!385347))))

(assert (=> b!675417 (= res!442033 (not (contains!3465 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!442031 () Bool)

(assert (=> start!60276 (=> (not res!442031) (not e!385347))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60276 (= res!442031 (and (bvslt (size!19192 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19192 a!3626))))))

(assert (=> start!60276 e!385347))

(assert (=> start!60276 true))

(declare-fun array_inv!14602 (array!39279) Bool)

(assert (=> start!60276 (array_inv!14602 a!3626)))

(declare-fun b!675418 () Bool)

(declare-fun res!442022 () Bool)

(assert (=> b!675418 (=> (not res!442022) (not e!385347))))

(declare-fun arrayContainsKey!0 (array!39279 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!675418 (= res!442022 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!675419 () Bool)

(declare-fun res!442018 () Bool)

(assert (=> b!675419 (=> (not res!442018) (not e!385347))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!675419 (= res!442018 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19192 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!675420 () Bool)

(declare-fun res!442015 () Bool)

(assert (=> b!675420 (=> (not res!442015) (not e!385347))))

(declare-fun noDuplicate!712 (List!12922) Bool)

(assert (=> b!675420 (= res!442015 (noDuplicate!712 acc!681))))

(declare-fun b!675421 () Bool)

(declare-fun res!442034 () Bool)

(assert (=> b!675421 (=> (not res!442034) (not e!385347))))

(assert (=> b!675421 (= res!442034 (not (contains!3465 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!675422 () Bool)

(declare-fun res!442017 () Bool)

(assert (=> b!675422 (=> (not res!442017) (not e!385347))))

(assert (=> b!675422 (= res!442017 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!675423 () Bool)

(declare-fun res!442021 () Bool)

(assert (=> b!675423 (=> (not res!442021) (not e!385347))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!675423 (= res!442021 (validKeyInArray!0 k!2843))))

(declare-fun b!675424 () Bool)

(declare-fun e!385350 () Bool)

(declare-fun e!385349 () Bool)

(assert (=> b!675424 (= e!385350 e!385349)))

(declare-fun res!442016 () Bool)

(assert (=> b!675424 (=> (not res!442016) (not e!385349))))

(assert (=> b!675424 (= res!442016 (bvsle from!3004 i!1382))))

(declare-fun b!675425 () Bool)

(declare-fun res!442027 () Bool)

(assert (=> b!675425 (=> (not res!442027) (not e!385347))))

(assert (=> b!675425 (= res!442027 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!675426 () Bool)

(declare-fun res!442024 () Bool)

(assert (=> b!675426 (=> (not res!442024) (not e!385347))))

(declare-fun e!385346 () Bool)

(assert (=> b!675426 (= res!442024 e!385346)))

(declare-fun res!442026 () Bool)

(assert (=> b!675426 (=> res!442026 e!385346)))

(declare-fun e!385351 () Bool)

(assert (=> b!675426 (= res!442026 e!385351)))

(declare-fun res!442019 () Bool)

(assert (=> b!675426 (=> (not res!442019) (not e!385351))))

(assert (=> b!675426 (= res!442019 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!675427 () Bool)

(assert (=> b!675427 (= e!385347 false)))

(declare-fun lt!312675 () Bool)

(assert (=> b!675427 (= lt!312675 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!675428 () Bool)

(declare-fun res!442029 () Bool)

(assert (=> b!675428 (=> (not res!442029) (not e!385347))))

(assert (=> b!675428 (= res!442029 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19192 a!3626))))))

(declare-fun b!675429 () Bool)

(declare-fun res!442025 () Bool)

(assert (=> b!675429 (=> (not res!442025) (not e!385347))))

(assert (=> b!675429 (= res!442025 e!385350)))

(declare-fun res!442028 () Bool)

(assert (=> b!675429 (=> res!442028 e!385350)))

(assert (=> b!675429 (= res!442028 e!385345)))

(declare-fun res!442030 () Bool)

(assert (=> b!675429 (=> (not res!442030) (not e!385345))))

(assert (=> b!675429 (= res!442030 (bvsgt from!3004 i!1382))))

(declare-fun b!675430 () Bool)

(assert (=> b!675430 (= e!385351 (contains!3465 acc!681 k!2843))))

(declare-fun b!675431 () Bool)

(assert (=> b!675431 (= e!385349 (not (contains!3465 acc!681 k!2843)))))

(declare-fun b!675432 () Bool)

(declare-fun e!385348 () Bool)

(assert (=> b!675432 (= e!385348 (not (contains!3465 acc!681 k!2843)))))

(declare-fun b!675433 () Bool)

(declare-fun res!442032 () Bool)

(assert (=> b!675433 (=> (not res!442032) (not e!385347))))

(assert (=> b!675433 (= res!442032 (not (validKeyInArray!0 (select (arr!18828 a!3626) from!3004))))))

(declare-fun b!675434 () Bool)

(assert (=> b!675434 (= e!385346 e!385348)))

(declare-fun res!442020 () Bool)

(assert (=> b!675434 (=> (not res!442020) (not e!385348))))

(assert (=> b!675434 (= res!442020 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(assert (= (and start!60276 res!442031) b!675420))

(assert (= (and b!675420 res!442015) b!675421))

(assert (= (and b!675421 res!442034) b!675417))

(assert (= (and b!675417 res!442033) b!675429))

(assert (= (and b!675429 res!442030) b!675415))

(assert (= (and b!675429 (not res!442028)) b!675424))

(assert (= (and b!675424 res!442016) b!675431))

(assert (= (and b!675429 res!442025) b!675416))

(assert (= (and b!675416 res!442023) b!675425))

(assert (= (and b!675425 res!442027) b!675428))

(assert (= (and b!675428 res!442029) b!675423))

(assert (= (and b!675423 res!442021) b!675418))

(assert (= (and b!675418 res!442022) b!675419))

(assert (= (and b!675419 res!442018) b!675433))

(assert (= (and b!675433 res!442032) b!675422))

(assert (= (and b!675422 res!442017) b!675426))

(assert (= (and b!675426 res!442019) b!675430))

(assert (= (and b!675426 (not res!442026)) b!675434))

(assert (= (and b!675434 res!442020) b!675432))

(assert (= (and b!675426 res!442024) b!675427))

(declare-fun m!642825 () Bool)

(assert (=> b!675431 m!642825))

(declare-fun m!642827 () Bool)

(assert (=> b!675416 m!642827))

(declare-fun m!642829 () Bool)

(assert (=> b!675423 m!642829))

(declare-fun m!642831 () Bool)

(assert (=> b!675433 m!642831))

(assert (=> b!675433 m!642831))

(declare-fun m!642833 () Bool)

(assert (=> b!675433 m!642833))

(declare-fun m!642835 () Bool)

(assert (=> b!675425 m!642835))

(declare-fun m!642837 () Bool)

(assert (=> b!675420 m!642837))

(assert (=> b!675432 m!642825))

(declare-fun m!642839 () Bool)

(assert (=> start!60276 m!642839))

(declare-fun m!642841 () Bool)

(assert (=> b!675421 m!642841))

(assert (=> b!675415 m!642825))

(declare-fun m!642843 () Bool)

(assert (=> b!675417 m!642843))

(assert (=> b!675430 m!642825))

(declare-fun m!642845 () Bool)

(assert (=> b!675418 m!642845))

(declare-fun m!642847 () Bool)

(assert (=> b!675427 m!642847))

(push 1)

(assert (not b!675417))

(assert (not b!675418))

(assert (not b!675420))

(assert (not b!675431))

(assert (not b!675421))

(assert (not start!60276))

(assert (not b!675427))

(assert (not b!675433))

(assert (not b!675425))

(assert (not b!675430))

(assert (not b!675432))

(assert (not b!675415))

(assert (not b!675416))

(assert (not b!675423))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

