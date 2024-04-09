; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103936 () Bool)

(assert start!103936)

(declare-fun b!1243517 () Bool)

(declare-fun res!829421 () Bool)

(declare-fun e!704956 () Bool)

(assert (=> b!1243517 (=> (not res!829421) (not e!704956))))

(declare-datatypes ((array!79974 0))(
  ( (array!79975 (arr!38576 (Array (_ BitVec 32) (_ BitVec 64))) (size!39113 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79974)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27557 0))(
  ( (Nil!27554) (Cons!27553 (h!28762 (_ BitVec 64)) (t!41033 List!27557)) )
))
(declare-fun arrayNoDuplicates!0 (array!79974 (_ BitVec 32) List!27557) Bool)

(assert (=> b!1243517 (= res!829421 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27554))))

(declare-fun b!1243518 () Bool)

(declare-fun res!829419 () Bool)

(declare-fun e!704957 () Bool)

(assert (=> b!1243518 (=> (not res!829419) (not e!704957))))

(declare-fun lt!562374 () List!27557)

(declare-fun contains!7429 (List!27557 (_ BitVec 64)) Bool)

(assert (=> b!1243518 (= res!829419 (not (contains!7429 lt!562374 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243519 () Bool)

(declare-fun res!829429 () Bool)

(assert (=> b!1243519 (=> (not res!829429) (not e!704957))))

(declare-fun noDuplicate!2019 (List!27557) Bool)

(assert (=> b!1243519 (= res!829429 (noDuplicate!2019 lt!562374))))

(declare-fun b!1243521 () Bool)

(declare-fun res!829426 () Bool)

(assert (=> b!1243521 (=> (not res!829426) (not e!704957))))

(declare-fun subseq!640 (List!27557 List!27557) Bool)

(assert (=> b!1243521 (= res!829426 (subseq!640 Nil!27554 lt!562374))))

(declare-fun b!1243522 () Bool)

(declare-fun res!829422 () Bool)

(assert (=> b!1243522 (=> (not res!829422) (not e!704957))))

(assert (=> b!1243522 (= res!829422 (not (contains!7429 Nil!27554 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243523 () Bool)

(declare-fun res!829420 () Bool)

(assert (=> b!1243523 (=> (not res!829420) (not e!704957))))

(assert (=> b!1243523 (= res!829420 (not (contains!7429 lt!562374 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243524 () Bool)

(assert (=> b!1243524 (= e!704956 e!704957)))

(declare-fun res!829423 () Bool)

(assert (=> b!1243524 (=> (not res!829423) (not e!704957))))

(assert (=> b!1243524 (= res!829423 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1243524 (= lt!562374 (Cons!27553 (select (arr!38576 a!3892) from!3270) Nil!27554))))

(declare-fun b!1243525 () Bool)

(declare-fun res!829428 () Bool)

(assert (=> b!1243525 (=> (not res!829428) (not e!704956))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243525 (= res!829428 (validKeyInArray!0 (select (arr!38576 a!3892) from!3270)))))

(declare-fun b!1243520 () Bool)

(declare-fun res!829427 () Bool)

(assert (=> b!1243520 (=> (not res!829427) (not e!704957))))

(assert (=> b!1243520 (= res!829427 (not (contains!7429 Nil!27554 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!829425 () Bool)

(assert (=> start!103936 (=> (not res!829425) (not e!704956))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!103936 (= res!829425 (and (bvslt (size!39113 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39113 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39113 a!3892))))))

(assert (=> start!103936 e!704956))

(declare-fun array_inv!29352 (array!79974) Bool)

(assert (=> start!103936 (array_inv!29352 a!3892)))

(assert (=> start!103936 true))

(declare-fun b!1243526 () Bool)

(declare-fun res!829424 () Bool)

(assert (=> b!1243526 (=> (not res!829424) (not e!704956))))

(assert (=> b!1243526 (= res!829424 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39113 a!3892)) (not (= newFrom!287 (size!39113 a!3892)))))))

(declare-fun b!1243527 () Bool)

(assert (=> b!1243527 (= e!704957 false)))

(declare-fun lt!562373 () Bool)

(assert (=> b!1243527 (= lt!562373 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562374))))

(declare-datatypes ((Unit!41231 0))(
  ( (Unit!41232) )
))
(declare-fun lt!562375 () Unit!41231)

(declare-fun noDuplicateSubseq!94 (List!27557 List!27557) Unit!41231)

(assert (=> b!1243527 (= lt!562375 (noDuplicateSubseq!94 Nil!27554 lt!562374))))

(assert (= (and start!103936 res!829425) b!1243517))

(assert (= (and b!1243517 res!829421) b!1243526))

(assert (= (and b!1243526 res!829424) b!1243525))

(assert (= (and b!1243525 res!829428) b!1243524))

(assert (= (and b!1243524 res!829423) b!1243519))

(assert (= (and b!1243519 res!829429) b!1243518))

(assert (= (and b!1243518 res!829419) b!1243523))

(assert (= (and b!1243523 res!829420) b!1243522))

(assert (= (and b!1243522 res!829422) b!1243520))

(assert (= (and b!1243520 res!829427) b!1243521))

(assert (= (and b!1243521 res!829426) b!1243527))

(declare-fun m!1146057 () Bool)

(assert (=> b!1243525 m!1146057))

(assert (=> b!1243525 m!1146057))

(declare-fun m!1146059 () Bool)

(assert (=> b!1243525 m!1146059))

(declare-fun m!1146061 () Bool)

(assert (=> b!1243518 m!1146061))

(declare-fun m!1146063 () Bool)

(assert (=> b!1243520 m!1146063))

(declare-fun m!1146065 () Bool)

(assert (=> b!1243523 m!1146065))

(declare-fun m!1146067 () Bool)

(assert (=> b!1243522 m!1146067))

(declare-fun m!1146069 () Bool)

(assert (=> b!1243519 m!1146069))

(declare-fun m!1146071 () Bool)

(assert (=> b!1243517 m!1146071))

(assert (=> b!1243524 m!1146057))

(declare-fun m!1146073 () Bool)

(assert (=> start!103936 m!1146073))

(declare-fun m!1146075 () Bool)

(assert (=> b!1243521 m!1146075))

(declare-fun m!1146077 () Bool)

(assert (=> b!1243527 m!1146077))

(declare-fun m!1146079 () Bool)

(assert (=> b!1243527 m!1146079))

(push 1)

(assert (not b!1243518))

(assert (not start!103936))

