; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26108 () Bool)

(assert start!26108)

(declare-fun b!269175 () Bool)

(declare-fun res!133461 () Bool)

(declare-fun e!173738 () Bool)

(assert (=> b!269175 (=> (not res!133461) (not e!173738))))

(declare-datatypes ((array!13194 0))(
  ( (array!13195 (arr!6246 (Array (_ BitVec 32) (_ BitVec 64))) (size!6598 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13194)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13194 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269175 (= res!133461 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269176 () Bool)

(declare-fun res!133462 () Bool)

(declare-fun e!173737 () Bool)

(assert (=> b!269176 (=> (not res!133462) (not e!173737))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13194 (_ BitVec 32)) Bool)

(assert (=> b!269176 (= res!133462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!133464 () Bool)

(assert (=> start!26108 (=> (not res!133464) (not e!173738))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26108 (= res!133464 (validMask!0 mask!3868))))

(assert (=> start!26108 e!173738))

(declare-fun array_inv!4200 (array!13194) Bool)

(assert (=> start!26108 (array_inv!4200 a!3325)))

(assert (=> start!26108 true))

(declare-fun b!269177 () Bool)

(assert (=> b!269177 (= e!173737 false)))

(declare-datatypes ((Unit!8319 0))(
  ( (Unit!8320) )
))
(declare-fun lt!135154 () Unit!8319)

(declare-fun e!173740 () Unit!8319)

(assert (=> b!269177 (= lt!135154 e!173740)))

(declare-fun c!45410 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!269177 (= c!45410 (bvslt startIndex!26 (bvsub (size!6598 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269178 () Bool)

(declare-fun Unit!8321 () Unit!8319)

(assert (=> b!269178 (= e!173740 Unit!8321)))

(declare-fun b!269179 () Bool)

(assert (=> b!269179 (= e!173738 e!173737)))

(declare-fun res!133463 () Bool)

(assert (=> b!269179 (=> (not res!133463) (not e!173737))))

(declare-datatypes ((SeekEntryResult!1415 0))(
  ( (MissingZero!1415 (index!7830 (_ BitVec 32))) (Found!1415 (index!7831 (_ BitVec 32))) (Intermediate!1415 (undefined!2227 Bool) (index!7832 (_ BitVec 32)) (x!26148 (_ BitVec 32))) (Undefined!1415) (MissingVacant!1415 (index!7833 (_ BitVec 32))) )
))
(declare-fun lt!135155 () SeekEntryResult!1415)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!269179 (= res!133463 (or (= lt!135155 (MissingZero!1415 i!1267)) (= lt!135155 (MissingVacant!1415 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13194 (_ BitVec 32)) SeekEntryResult!1415)

(assert (=> b!269179 (= lt!135155 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!269180 () Bool)

(declare-fun res!133459 () Bool)

(assert (=> b!269180 (=> (not res!133459) (not e!173737))))

(assert (=> b!269180 (= res!133459 (= startIndex!26 i!1267))))

(declare-fun b!269181 () Bool)

(declare-fun res!133458 () Bool)

(assert (=> b!269181 (=> (not res!133458) (not e!173738))))

(assert (=> b!269181 (= res!133458 (and (= (size!6598 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6598 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6598 a!3325))))))

(declare-fun b!269182 () Bool)

(declare-fun res!133457 () Bool)

(assert (=> b!269182 (=> (not res!133457) (not e!173738))))

(declare-datatypes ((List!4075 0))(
  ( (Nil!4072) (Cons!4071 (h!4738 (_ BitVec 64)) (t!9165 List!4075)) )
))
(declare-fun arrayNoDuplicates!0 (array!13194 (_ BitVec 32) List!4075) Bool)

(assert (=> b!269182 (= res!133457 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4072))))

(declare-fun b!269183 () Bool)

(declare-fun res!133460 () Bool)

(assert (=> b!269183 (=> (not res!133460) (not e!173738))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269183 (= res!133460 (validKeyInArray!0 k!2581))))

(declare-fun b!269184 () Bool)

(declare-fun lt!135153 () Unit!8319)

(assert (=> b!269184 (= e!173740 lt!135153)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13194 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8319)

(assert (=> b!269184 (= lt!135153 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!269184 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13195 (store (arr!6246 a!3325) i!1267 k!2581) (size!6598 a!3325)) mask!3868)))

(assert (= (and start!26108 res!133464) b!269181))

(assert (= (and b!269181 res!133458) b!269183))

(assert (= (and b!269183 res!133460) b!269182))

(assert (= (and b!269182 res!133457) b!269175))

(assert (= (and b!269175 res!133461) b!269179))

(assert (= (and b!269179 res!133463) b!269176))

(assert (= (and b!269176 res!133462) b!269180))

(assert (= (and b!269180 res!133459) b!269177))

(assert (= (and b!269177 c!45410) b!269184))

(assert (= (and b!269177 (not c!45410)) b!269178))

(declare-fun m!285149 () Bool)

(assert (=> b!269183 m!285149))

(declare-fun m!285151 () Bool)

(assert (=> b!269176 m!285151))

(declare-fun m!285153 () Bool)

(assert (=> b!269175 m!285153))

(declare-fun m!285155 () Bool)

(assert (=> b!269179 m!285155))

(declare-fun m!285157 () Bool)

(assert (=> b!269184 m!285157))

(declare-fun m!285159 () Bool)

(assert (=> b!269184 m!285159))

(declare-fun m!285161 () Bool)

(assert (=> b!269184 m!285161))

(declare-fun m!285163 () Bool)

(assert (=> b!269182 m!285163))

(declare-fun m!285165 () Bool)

(assert (=> start!26108 m!285165))

(declare-fun m!285167 () Bool)

(assert (=> start!26108 m!285167))

(push 1)

(assert (not b!269184))

(assert (not start!26108))

(assert (not b!269182))

(assert (not b!269179))

(assert (not b!269176))

(assert (not b!269183))

(assert (not b!269175))

(check-sat)

(pop 1)

