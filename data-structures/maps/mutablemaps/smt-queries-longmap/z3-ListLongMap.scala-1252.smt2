; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26082 () Bool)

(assert start!26082)

(declare-fun b!268873 () Bool)

(declare-fun res!133192 () Bool)

(declare-fun e!173604 () Bool)

(assert (=> b!268873 (=> (not res!133192) (not e!173604))))

(declare-datatypes ((array!13168 0))(
  ( (array!13169 (arr!6233 (Array (_ BitVec 32) (_ BitVec 64))) (size!6585 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13168)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!268873 (= res!133192 (and (= (size!6585 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6585 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6585 a!3325))))))

(declare-fun b!268874 () Bool)

(declare-fun res!133191 () Bool)

(assert (=> b!268874 (=> (not res!133191) (not e!173604))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268874 (= res!133191 (validKeyInArray!0 k0!2581))))

(declare-fun b!268875 () Bool)

(declare-fun res!133194 () Bool)

(assert (=> b!268875 (=> (not res!133194) (not e!173604))))

(declare-fun arrayContainsKey!0 (array!13168 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268875 (= res!133194 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268876 () Bool)

(declare-fun res!133190 () Bool)

(assert (=> b!268876 (=> (not res!133190) (not e!173604))))

(declare-datatypes ((List!4062 0))(
  ( (Nil!4059) (Cons!4058 (h!4725 (_ BitVec 64)) (t!9152 List!4062)) )
))
(declare-fun arrayNoDuplicates!0 (array!13168 (_ BitVec 32) List!4062) Bool)

(assert (=> b!268876 (= res!133190 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4059))))

(declare-fun b!268877 () Bool)

(declare-fun e!173605 () Bool)

(assert (=> b!268877 (= e!173605 false)))

(declare-fun lt!135059 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13168 (_ BitVec 32)) Bool)

(assert (=> b!268877 (= lt!135059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!133193 () Bool)

(assert (=> start!26082 (=> (not res!133193) (not e!173604))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26082 (= res!133193 (validMask!0 mask!3868))))

(assert (=> start!26082 e!173604))

(declare-fun array_inv!4187 (array!13168) Bool)

(assert (=> start!26082 (array_inv!4187 a!3325)))

(assert (=> start!26082 true))

(declare-fun b!268878 () Bool)

(assert (=> b!268878 (= e!173604 e!173605)))

(declare-fun res!133189 () Bool)

(assert (=> b!268878 (=> (not res!133189) (not e!173605))))

(declare-datatypes ((SeekEntryResult!1402 0))(
  ( (MissingZero!1402 (index!7778 (_ BitVec 32))) (Found!1402 (index!7779 (_ BitVec 32))) (Intermediate!1402 (undefined!2214 Bool) (index!7780 (_ BitVec 32)) (x!26103 (_ BitVec 32))) (Undefined!1402) (MissingVacant!1402 (index!7781 (_ BitVec 32))) )
))
(declare-fun lt!135058 () SeekEntryResult!1402)

(assert (=> b!268878 (= res!133189 (or (= lt!135058 (MissingZero!1402 i!1267)) (= lt!135058 (MissingVacant!1402 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13168 (_ BitVec 32)) SeekEntryResult!1402)

(assert (=> b!268878 (= lt!135058 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(assert (= (and start!26082 res!133193) b!268873))

(assert (= (and b!268873 res!133192) b!268874))

(assert (= (and b!268874 res!133191) b!268876))

(assert (= (and b!268876 res!133190) b!268875))

(assert (= (and b!268875 res!133194) b!268878))

(assert (= (and b!268878 res!133189) b!268877))

(declare-fun m!284937 () Bool)

(assert (=> b!268875 m!284937))

(declare-fun m!284939 () Bool)

(assert (=> b!268878 m!284939))

(declare-fun m!284941 () Bool)

(assert (=> b!268877 m!284941))

(declare-fun m!284943 () Bool)

(assert (=> start!26082 m!284943))

(declare-fun m!284945 () Bool)

(assert (=> start!26082 m!284945))

(declare-fun m!284947 () Bool)

(assert (=> b!268874 m!284947))

(declare-fun m!284949 () Bool)

(assert (=> b!268876 m!284949))

(check-sat (not b!268875) (not start!26082) (not b!268874) (not b!268878) (not b!268876) (not b!268877))
(check-sat)
