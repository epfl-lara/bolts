; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26086 () Bool)

(assert start!26086)

(declare-fun b!268909 () Bool)

(declare-fun res!133226 () Bool)

(declare-fun e!173623 () Bool)

(assert (=> b!268909 (=> (not res!133226) (not e!173623))))

(declare-datatypes ((array!13172 0))(
  ( (array!13173 (arr!6235 (Array (_ BitVec 32) (_ BitVec 64))) (size!6587 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13172)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268909 (= res!133226 (and (= (size!6587 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6587 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6587 a!3325))))))

(declare-fun b!268910 () Bool)

(declare-fun res!133227 () Bool)

(assert (=> b!268910 (=> (not res!133227) (not e!173623))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268910 (= res!133227 (validKeyInArray!0 k!2581))))

(declare-fun b!268911 () Bool)

(declare-fun res!133225 () Bool)

(assert (=> b!268911 (=> (not res!133225) (not e!173623))))

(declare-fun arrayContainsKey!0 (array!13172 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268911 (= res!133225 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268912 () Bool)

(declare-fun e!173621 () Bool)

(assert (=> b!268912 (= e!173623 e!173621)))

(declare-fun res!133230 () Bool)

(assert (=> b!268912 (=> (not res!133230) (not e!173621))))

(declare-datatypes ((SeekEntryResult!1404 0))(
  ( (MissingZero!1404 (index!7786 (_ BitVec 32))) (Found!1404 (index!7787 (_ BitVec 32))) (Intermediate!1404 (undefined!2216 Bool) (index!7788 (_ BitVec 32)) (x!26113 (_ BitVec 32))) (Undefined!1404) (MissingVacant!1404 (index!7789 (_ BitVec 32))) )
))
(declare-fun lt!135070 () SeekEntryResult!1404)

(assert (=> b!268912 (= res!133230 (or (= lt!135070 (MissingZero!1404 i!1267)) (= lt!135070 (MissingVacant!1404 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13172 (_ BitVec 32)) SeekEntryResult!1404)

(assert (=> b!268912 (= lt!135070 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268913 () Bool)

(assert (=> b!268913 (= e!173621 false)))

(declare-fun lt!135071 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13172 (_ BitVec 32)) Bool)

(assert (=> b!268913 (= lt!135071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268914 () Bool)

(declare-fun res!133229 () Bool)

(assert (=> b!268914 (=> (not res!133229) (not e!173623))))

(declare-datatypes ((List!4064 0))(
  ( (Nil!4061) (Cons!4060 (h!4727 (_ BitVec 64)) (t!9154 List!4064)) )
))
(declare-fun arrayNoDuplicates!0 (array!13172 (_ BitVec 32) List!4064) Bool)

(assert (=> b!268914 (= res!133229 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4061))))

(declare-fun res!133228 () Bool)

(assert (=> start!26086 (=> (not res!133228) (not e!173623))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26086 (= res!133228 (validMask!0 mask!3868))))

(assert (=> start!26086 e!173623))

(declare-fun array_inv!4189 (array!13172) Bool)

(assert (=> start!26086 (array_inv!4189 a!3325)))

(assert (=> start!26086 true))

(assert (= (and start!26086 res!133228) b!268909))

(assert (= (and b!268909 res!133226) b!268910))

(assert (= (and b!268910 res!133227) b!268914))

(assert (= (and b!268914 res!133229) b!268911))

(assert (= (and b!268911 res!133225) b!268912))

(assert (= (and b!268912 res!133230) b!268913))

(declare-fun m!284965 () Bool)

(assert (=> b!268911 m!284965))

(declare-fun m!284967 () Bool)

(assert (=> b!268913 m!284967))

(declare-fun m!284969 () Bool)

(assert (=> b!268914 m!284969))

(declare-fun m!284971 () Bool)

(assert (=> b!268910 m!284971))

(declare-fun m!284973 () Bool)

(assert (=> b!268912 m!284973))

(declare-fun m!284975 () Bool)

(assert (=> start!26086 m!284975))

(declare-fun m!284977 () Bool)

(assert (=> start!26086 m!284977))

(push 1)

(assert (not b!268913))

(assert (not b!268911))

(assert (not b!268910))

(assert (not b!268914))

(assert (not b!268912))

