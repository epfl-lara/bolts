; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85990 () Bool)

(assert start!85990)

(declare-fun b!995879 () Bool)

(declare-fun e!561970 () Bool)

(assert (=> b!995879 (= e!561970 false)))

(declare-datatypes ((array!62992 0))(
  ( (array!62993 (arr!30325 (Array (_ BitVec 32) (_ BitVec 64))) (size!30828 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62992)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!441050 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!995879 (= lt!441050 (toIndex!0 (select (arr!30325 a!3219) j!170) mask!3464))))

(declare-fun res!666239 () Bool)

(declare-fun e!561971 () Bool)

(assert (=> start!85990 (=> (not res!666239) (not e!561971))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85990 (= res!666239 (validMask!0 mask!3464))))

(assert (=> start!85990 e!561971))

(declare-fun array_inv!23315 (array!62992) Bool)

(assert (=> start!85990 (array_inv!23315 a!3219)))

(assert (=> start!85990 true))

(declare-fun b!995880 () Bool)

(assert (=> b!995880 (= e!561971 e!561970)))

(declare-fun res!666240 () Bool)

(assert (=> b!995880 (=> (not res!666240) (not e!561970))))

(declare-datatypes ((SeekEntryResult!9257 0))(
  ( (MissingZero!9257 (index!39398 (_ BitVec 32))) (Found!9257 (index!39399 (_ BitVec 32))) (Intermediate!9257 (undefined!10069 Bool) (index!39400 (_ BitVec 32)) (x!86867 (_ BitVec 32))) (Undefined!9257) (MissingVacant!9257 (index!39401 (_ BitVec 32))) )
))
(declare-fun lt!441051 () SeekEntryResult!9257)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995880 (= res!666240 (or (= lt!441051 (MissingVacant!9257 i!1194)) (= lt!441051 (MissingZero!9257 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62992 (_ BitVec 32)) SeekEntryResult!9257)

(assert (=> b!995880 (= lt!441051 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!995881 () Bool)

(declare-fun res!666236 () Bool)

(assert (=> b!995881 (=> (not res!666236) (not e!561971))))

(declare-fun arrayContainsKey!0 (array!62992 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995881 (= res!666236 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!995882 () Bool)

(declare-fun res!666238 () Bool)

(assert (=> b!995882 (=> (not res!666238) (not e!561970))))

(declare-datatypes ((List!21127 0))(
  ( (Nil!21124) (Cons!21123 (h!22285 (_ BitVec 64)) (t!30136 List!21127)) )
))
(declare-fun arrayNoDuplicates!0 (array!62992 (_ BitVec 32) List!21127) Bool)

(assert (=> b!995882 (= res!666238 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21124))))

(declare-fun b!995883 () Bool)

(declare-fun res!666244 () Bool)

(assert (=> b!995883 (=> (not res!666244) (not e!561970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62992 (_ BitVec 32)) Bool)

(assert (=> b!995883 (= res!666244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!995884 () Bool)

(declare-fun res!666242 () Bool)

(assert (=> b!995884 (=> (not res!666242) (not e!561970))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!995884 (= res!666242 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30828 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30828 a!3219))))))

(declare-fun b!995885 () Bool)

(declare-fun res!666241 () Bool)

(assert (=> b!995885 (=> (not res!666241) (not e!561971))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995885 (= res!666241 (validKeyInArray!0 k!2224))))

(declare-fun b!995886 () Bool)

(declare-fun res!666243 () Bool)

(assert (=> b!995886 (=> (not res!666243) (not e!561971))))

(assert (=> b!995886 (= res!666243 (validKeyInArray!0 (select (arr!30325 a!3219) j!170)))))

(declare-fun b!995887 () Bool)

(declare-fun res!666237 () Bool)

(assert (=> b!995887 (=> (not res!666237) (not e!561971))))

(assert (=> b!995887 (= res!666237 (and (= (size!30828 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30828 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30828 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!85990 res!666239) b!995887))

(assert (= (and b!995887 res!666237) b!995886))

(assert (= (and b!995886 res!666243) b!995885))

(assert (= (and b!995885 res!666241) b!995881))

(assert (= (and b!995881 res!666236) b!995880))

(assert (= (and b!995880 res!666240) b!995883))

(assert (= (and b!995883 res!666244) b!995882))

(assert (= (and b!995882 res!666238) b!995884))

(assert (= (and b!995884 res!666242) b!995879))

(declare-fun m!923241 () Bool)

(assert (=> b!995882 m!923241))

(declare-fun m!923243 () Bool)

(assert (=> b!995881 m!923243))

(declare-fun m!923245 () Bool)

(assert (=> b!995885 m!923245))

(declare-fun m!923247 () Bool)

(assert (=> b!995883 m!923247))

(declare-fun m!923249 () Bool)

(assert (=> b!995886 m!923249))

(assert (=> b!995886 m!923249))

(declare-fun m!923251 () Bool)

(assert (=> b!995886 m!923251))

(declare-fun m!923253 () Bool)

(assert (=> start!85990 m!923253))

(declare-fun m!923255 () Bool)

(assert (=> start!85990 m!923255))

(declare-fun m!923257 () Bool)

(assert (=> b!995880 m!923257))

(assert (=> b!995879 m!923249))

(assert (=> b!995879 m!923249))

(declare-fun m!923259 () Bool)

(assert (=> b!995879 m!923259))

(push 1)

