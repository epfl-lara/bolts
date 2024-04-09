; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103938 () Bool)

(assert start!103938)

(declare-fun b!1243550 () Bool)

(declare-fun res!829456 () Bool)

(declare-fun e!704965 () Bool)

(assert (=> b!1243550 (=> (not res!829456) (not e!704965))))

(declare-datatypes ((List!27558 0))(
  ( (Nil!27555) (Cons!27554 (h!28763 (_ BitVec 64)) (t!41034 List!27558)) )
))
(declare-fun lt!562383 () List!27558)

(declare-fun subseq!641 (List!27558 List!27558) Bool)

(assert (=> b!1243550 (= res!829456 (subseq!641 Nil!27555 lt!562383))))

(declare-fun b!1243551 () Bool)

(declare-fun res!829457 () Bool)

(assert (=> b!1243551 (=> (not res!829457) (not e!704965))))

(declare-fun contains!7430 (List!27558 (_ BitVec 64)) Bool)

(assert (=> b!1243551 (= res!829457 (not (contains!7430 Nil!27555 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243552 () Bool)

(declare-fun res!829459 () Bool)

(declare-fun e!704966 () Bool)

(assert (=> b!1243552 (=> (not res!829459) (not e!704966))))

(declare-datatypes ((array!79976 0))(
  ( (array!79977 (arr!38577 (Array (_ BitVec 32) (_ BitVec 64))) (size!39114 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79976)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> b!1243552 (= res!829459 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39114 a!3892)) (not (= newFrom!287 (size!39114 a!3892)))))))

(declare-fun res!829455 () Bool)

(assert (=> start!103938 (=> (not res!829455) (not e!704966))))

(assert (=> start!103938 (= res!829455 (and (bvslt (size!39114 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39114 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39114 a!3892))))))

(assert (=> start!103938 e!704966))

(declare-fun array_inv!29353 (array!79976) Bool)

(assert (=> start!103938 (array_inv!29353 a!3892)))

(assert (=> start!103938 true))

(declare-fun b!1243553 () Bool)

(declare-fun res!829454 () Bool)

(assert (=> b!1243553 (=> (not res!829454) (not e!704966))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243553 (= res!829454 (validKeyInArray!0 (select (arr!38577 a!3892) from!3270)))))

(declare-fun b!1243554 () Bool)

(declare-fun res!829462 () Bool)

(assert (=> b!1243554 (=> (not res!829462) (not e!704966))))

(declare-fun arrayNoDuplicates!0 (array!79976 (_ BitVec 32) List!27558) Bool)

(assert (=> b!1243554 (= res!829462 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27555))))

(declare-fun b!1243555 () Bool)

(assert (=> b!1243555 (= e!704966 e!704965)))

(declare-fun res!829452 () Bool)

(assert (=> b!1243555 (=> (not res!829452) (not e!704965))))

(assert (=> b!1243555 (= res!829452 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1243555 (= lt!562383 (Cons!27554 (select (arr!38577 a!3892) from!3270) Nil!27555))))

(declare-fun b!1243556 () Bool)

(declare-fun res!829460 () Bool)

(assert (=> b!1243556 (=> (not res!829460) (not e!704965))))

(declare-fun noDuplicate!2020 (List!27558) Bool)

(assert (=> b!1243556 (= res!829460 (noDuplicate!2020 lt!562383))))

(declare-fun b!1243557 () Bool)

(assert (=> b!1243557 (= e!704965 false)))

(declare-fun lt!562382 () Bool)

(assert (=> b!1243557 (= lt!562382 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562383))))

(declare-datatypes ((Unit!41233 0))(
  ( (Unit!41234) )
))
(declare-fun lt!562384 () Unit!41233)

(declare-fun noDuplicateSubseq!95 (List!27558 List!27558) Unit!41233)

(assert (=> b!1243557 (= lt!562384 (noDuplicateSubseq!95 Nil!27555 lt!562383))))

(declare-fun b!1243558 () Bool)

(declare-fun res!829453 () Bool)

(assert (=> b!1243558 (=> (not res!829453) (not e!704965))))

(assert (=> b!1243558 (= res!829453 (not (contains!7430 lt!562383 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243559 () Bool)

(declare-fun res!829458 () Bool)

(assert (=> b!1243559 (=> (not res!829458) (not e!704965))))

(assert (=> b!1243559 (= res!829458 (not (contains!7430 Nil!27555 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243560 () Bool)

(declare-fun res!829461 () Bool)

(assert (=> b!1243560 (=> (not res!829461) (not e!704965))))

(assert (=> b!1243560 (= res!829461 (not (contains!7430 lt!562383 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103938 res!829455) b!1243554))

(assert (= (and b!1243554 res!829462) b!1243552))

(assert (= (and b!1243552 res!829459) b!1243553))

(assert (= (and b!1243553 res!829454) b!1243555))

(assert (= (and b!1243555 res!829452) b!1243556))

(assert (= (and b!1243556 res!829460) b!1243560))

(assert (= (and b!1243560 res!829461) b!1243558))

(assert (= (and b!1243558 res!829453) b!1243559))

(assert (= (and b!1243559 res!829458) b!1243551))

(assert (= (and b!1243551 res!829457) b!1243550))

(assert (= (and b!1243550 res!829456) b!1243557))

(declare-fun m!1146081 () Bool)

(assert (=> b!1243550 m!1146081))

(declare-fun m!1146083 () Bool)

(assert (=> b!1243556 m!1146083))

(declare-fun m!1146085 () Bool)

(assert (=> b!1243551 m!1146085))

(declare-fun m!1146087 () Bool)

(assert (=> b!1243558 m!1146087))

(declare-fun m!1146089 () Bool)

(assert (=> start!103938 m!1146089))

(declare-fun m!1146091 () Bool)

(assert (=> b!1243554 m!1146091))

(declare-fun m!1146093 () Bool)

(assert (=> b!1243557 m!1146093))

(declare-fun m!1146095 () Bool)

(assert (=> b!1243557 m!1146095))

(declare-fun m!1146097 () Bool)

(assert (=> b!1243555 m!1146097))

(assert (=> b!1243553 m!1146097))

(assert (=> b!1243553 m!1146097))

(declare-fun m!1146099 () Bool)

(assert (=> b!1243553 m!1146099))

(declare-fun m!1146101 () Bool)

(assert (=> b!1243560 m!1146101))

(declare-fun m!1146103 () Bool)

(assert (=> b!1243559 m!1146103))

(push 1)

