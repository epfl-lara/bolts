; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66206 () Bool)

(assert start!66206)

(declare-fun b!761972 () Bool)

(declare-fun e!424821 () Bool)

(assert (=> b!761972 (= e!424821 false)))

(declare-fun lt!339447 () Bool)

(declare-datatypes ((array!42064 0))(
  ( (array!42065 (arr!20136 (Array (_ BitVec 32) (_ BitVec 64))) (size!20557 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42064)

(declare-datatypes ((List!14191 0))(
  ( (Nil!14188) (Cons!14187 (h!15271 (_ BitVec 64)) (t!20514 List!14191)) )
))
(declare-fun arrayNoDuplicates!0 (array!42064 (_ BitVec 32) List!14191) Bool)

(assert (=> b!761972 (= lt!339447 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14188))))

(declare-fun b!761973 () Bool)

(declare-fun res!515256 () Bool)

(declare-fun e!424823 () Bool)

(assert (=> b!761973 (=> (not res!515256) (not e!424823))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42064 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!761973 (= res!515256 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!761974 () Bool)

(declare-fun res!515258 () Bool)

(assert (=> b!761974 (=> (not res!515258) (not e!424823))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!761974 (= res!515258 (validKeyInArray!0 k!2102))))

(declare-fun b!761975 () Bool)

(assert (=> b!761975 (= e!424823 e!424821)))

(declare-fun res!515259 () Bool)

(assert (=> b!761975 (=> (not res!515259) (not e!424821))))

(declare-datatypes ((SeekEntryResult!7743 0))(
  ( (MissingZero!7743 (index!33339 (_ BitVec 32))) (Found!7743 (index!33340 (_ BitVec 32))) (Intermediate!7743 (undefined!8555 Bool) (index!33341 (_ BitVec 32)) (x!64284 (_ BitVec 32))) (Undefined!7743) (MissingVacant!7743 (index!33342 (_ BitVec 32))) )
))
(declare-fun lt!339448 () SeekEntryResult!7743)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!761975 (= res!515259 (or (= lt!339448 (MissingZero!7743 i!1173)) (= lt!339448 (MissingVacant!7743 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42064 (_ BitVec 32)) SeekEntryResult!7743)

(assert (=> b!761975 (= lt!339448 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!761976 () Bool)

(declare-fun res!515253 () Bool)

(assert (=> b!761976 (=> (not res!515253) (not e!424823))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!761976 (= res!515253 (validKeyInArray!0 (select (arr!20136 a!3186) j!159)))))

(declare-fun res!515257 () Bool)

(assert (=> start!66206 (=> (not res!515257) (not e!424823))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66206 (= res!515257 (validMask!0 mask!3328))))

(assert (=> start!66206 e!424823))

(declare-fun array_inv!15910 (array!42064) Bool)

(assert (=> start!66206 (array_inv!15910 a!3186)))

(assert (=> start!66206 true))

(declare-fun b!761977 () Bool)

(declare-fun res!515255 () Bool)

(assert (=> b!761977 (=> (not res!515255) (not e!424821))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42064 (_ BitVec 32)) Bool)

(assert (=> b!761977 (= res!515255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!761978 () Bool)

(declare-fun res!515254 () Bool)

(assert (=> b!761978 (=> (not res!515254) (not e!424823))))

(assert (=> b!761978 (= res!515254 (and (= (size!20557 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20557 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20557 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!66206 res!515257) b!761978))

(assert (= (and b!761978 res!515254) b!761976))

(assert (= (and b!761976 res!515253) b!761974))

(assert (= (and b!761974 res!515258) b!761973))

(assert (= (and b!761973 res!515256) b!761975))

(assert (= (and b!761975 res!515259) b!761977))

(assert (= (and b!761977 res!515255) b!761972))

(declare-fun m!708863 () Bool)

(assert (=> b!761972 m!708863))

(declare-fun m!708865 () Bool)

(assert (=> b!761977 m!708865))

(declare-fun m!708867 () Bool)

(assert (=> b!761975 m!708867))

(declare-fun m!708869 () Bool)

(assert (=> start!66206 m!708869))

(declare-fun m!708871 () Bool)

(assert (=> start!66206 m!708871))

(declare-fun m!708873 () Bool)

(assert (=> b!761973 m!708873))

(declare-fun m!708875 () Bool)

(assert (=> b!761976 m!708875))

(assert (=> b!761976 m!708875))

(declare-fun m!708877 () Bool)

(assert (=> b!761976 m!708877))

(declare-fun m!708879 () Bool)

(assert (=> b!761974 m!708879))

(push 1)

