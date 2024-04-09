; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26084 () Bool)

(assert start!26084)

(declare-fun b!268891 () Bool)

(declare-fun e!173612 () Bool)

(assert (=> b!268891 (= e!173612 false)))

(declare-fun lt!135065 () Bool)

(declare-datatypes ((array!13170 0))(
  ( (array!13171 (arr!6234 (Array (_ BitVec 32) (_ BitVec 64))) (size!6586 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13170)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13170 (_ BitVec 32)) Bool)

(assert (=> b!268891 (= lt!135065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!133210 () Bool)

(declare-fun e!173613 () Bool)

(assert (=> start!26084 (=> (not res!133210) (not e!173613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26084 (= res!133210 (validMask!0 mask!3868))))

(assert (=> start!26084 e!173613))

(declare-fun array_inv!4188 (array!13170) Bool)

(assert (=> start!26084 (array_inv!4188 a!3325)))

(assert (=> start!26084 true))

(declare-fun b!268892 () Bool)

(declare-fun res!133208 () Bool)

(assert (=> b!268892 (=> (not res!133208) (not e!173613))))

(declare-datatypes ((List!4063 0))(
  ( (Nil!4060) (Cons!4059 (h!4726 (_ BitVec 64)) (t!9153 List!4063)) )
))
(declare-fun arrayNoDuplicates!0 (array!13170 (_ BitVec 32) List!4063) Bool)

(assert (=> b!268892 (= res!133208 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4060))))

(declare-fun b!268893 () Bool)

(assert (=> b!268893 (= e!173613 e!173612)))

(declare-fun res!133212 () Bool)

(assert (=> b!268893 (=> (not res!133212) (not e!173612))))

(declare-datatypes ((SeekEntryResult!1403 0))(
  ( (MissingZero!1403 (index!7782 (_ BitVec 32))) (Found!1403 (index!7783 (_ BitVec 32))) (Intermediate!1403 (undefined!2215 Bool) (index!7784 (_ BitVec 32)) (x!26104 (_ BitVec 32))) (Undefined!1403) (MissingVacant!1403 (index!7785 (_ BitVec 32))) )
))
(declare-fun lt!135064 () SeekEntryResult!1403)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268893 (= res!133212 (or (= lt!135064 (MissingZero!1403 i!1267)) (= lt!135064 (MissingVacant!1403 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13170 (_ BitVec 32)) SeekEntryResult!1403)

(assert (=> b!268893 (= lt!135064 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268894 () Bool)

(declare-fun res!133211 () Bool)

(assert (=> b!268894 (=> (not res!133211) (not e!173613))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268894 (= res!133211 (validKeyInArray!0 k!2581))))

(declare-fun b!268895 () Bool)

(declare-fun res!133207 () Bool)

(assert (=> b!268895 (=> (not res!133207) (not e!173613))))

(declare-fun arrayContainsKey!0 (array!13170 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268895 (= res!133207 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268896 () Bool)

(declare-fun res!133209 () Bool)

(assert (=> b!268896 (=> (not res!133209) (not e!173613))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268896 (= res!133209 (and (= (size!6586 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6586 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6586 a!3325))))))

(assert (= (and start!26084 res!133210) b!268896))

(assert (= (and b!268896 res!133209) b!268894))

(assert (= (and b!268894 res!133211) b!268892))

(assert (= (and b!268892 res!133208) b!268895))

(assert (= (and b!268895 res!133207) b!268893))

(assert (= (and b!268893 res!133212) b!268891))

(declare-fun m!284951 () Bool)

(assert (=> b!268893 m!284951))

(declare-fun m!284953 () Bool)

(assert (=> b!268894 m!284953))

(declare-fun m!284955 () Bool)

(assert (=> start!26084 m!284955))

(declare-fun m!284957 () Bool)

(assert (=> start!26084 m!284957))

(declare-fun m!284959 () Bool)

(assert (=> b!268892 m!284959))

(declare-fun m!284961 () Bool)

(assert (=> b!268895 m!284961))

(declare-fun m!284963 () Bool)

(assert (=> b!268891 m!284963))

(push 1)

(assert (not start!26084))

(assert (not b!268892))

(assert (not b!268895))

