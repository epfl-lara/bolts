; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85936 () Bool)

(assert start!85936)

(declare-fun b!995538 () Bool)

(declare-fun res!665989 () Bool)

(declare-fun e!561798 () Bool)

(assert (=> b!995538 (=> (not res!665989) (not e!561798))))

(declare-datatypes ((array!62976 0))(
  ( (array!62977 (arr!30318 (Array (_ BitVec 32) (_ BitVec 64))) (size!30821 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62976)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62976 (_ BitVec 32)) Bool)

(assert (=> b!995538 (= res!665989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!995539 () Bool)

(declare-fun res!665991 () Bool)

(declare-fun e!561800 () Bool)

(assert (=> b!995539 (=> (not res!665991) (not e!561800))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995539 (= res!665991 (validKeyInArray!0 (select (arr!30318 a!3219) j!170)))))

(declare-fun res!665992 () Bool)

(assert (=> start!85936 (=> (not res!665992) (not e!561800))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85936 (= res!665992 (validMask!0 mask!3464))))

(assert (=> start!85936 e!561800))

(declare-fun array_inv!23308 (array!62976) Bool)

(assert (=> start!85936 (array_inv!23308 a!3219)))

(assert (=> start!85936 true))

(declare-fun b!995540 () Bool)

(declare-fun res!665986 () Bool)

(assert (=> b!995540 (=> (not res!665986) (not e!561798))))

(declare-datatypes ((List!21120 0))(
  ( (Nil!21117) (Cons!21116 (h!22278 (_ BitVec 64)) (t!30129 List!21120)) )
))
(declare-fun arrayNoDuplicates!0 (array!62976 (_ BitVec 32) List!21120) Bool)

(assert (=> b!995540 (= res!665986 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21117))))

(declare-fun b!995541 () Bool)

(assert (=> b!995541 (= e!561800 e!561798)))

(declare-fun res!665987 () Bool)

(assert (=> b!995541 (=> (not res!665987) (not e!561798))))

(declare-datatypes ((SeekEntryResult!9250 0))(
  ( (MissingZero!9250 (index!39370 (_ BitVec 32))) (Found!9250 (index!39371 (_ BitVec 32))) (Intermediate!9250 (undefined!10062 Bool) (index!39372 (_ BitVec 32)) (x!86836 (_ BitVec 32))) (Undefined!9250) (MissingVacant!9250 (index!39373 (_ BitVec 32))) )
))
(declare-fun lt!440955 () SeekEntryResult!9250)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995541 (= res!665987 (or (= lt!440955 (MissingVacant!9250 i!1194)) (= lt!440955 (MissingZero!9250 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62976 (_ BitVec 32)) SeekEntryResult!9250)

(assert (=> b!995541 (= lt!440955 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!995542 () Bool)

(declare-fun res!665988 () Bool)

(assert (=> b!995542 (=> (not res!665988) (not e!561800))))

(assert (=> b!995542 (= res!665988 (validKeyInArray!0 k!2224))))

(declare-fun b!995543 () Bool)

(declare-fun res!665990 () Bool)

(assert (=> b!995543 (=> (not res!665990) (not e!561800))))

(assert (=> b!995543 (= res!665990 (and (= (size!30821 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30821 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30821 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!995544 () Bool)

(declare-fun res!665985 () Bool)

(assert (=> b!995544 (=> (not res!665985) (not e!561800))))

(declare-fun arrayContainsKey!0 (array!62976 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995544 (= res!665985 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun b!995545 () Bool)

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!995545 (= e!561798 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30821 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30821 a!3219)) (bvsge mask!3464 #b00000000000000000000000000000000) (bvsgt mask!3464 #b00111111111111111111111111111111)))))

(assert (= (and start!85936 res!665992) b!995543))

(assert (= (and b!995543 res!665990) b!995539))

(assert (= (and b!995539 res!665991) b!995542))

(assert (= (and b!995542 res!665988) b!995544))

(assert (= (and b!995544 res!665985) b!995541))

(assert (= (and b!995541 res!665987) b!995538))

(assert (= (and b!995538 res!665989) b!995540))

(assert (= (and b!995540 res!665986) b!995545))

(declare-fun m!923015 () Bool)

(assert (=> b!995541 m!923015))

(declare-fun m!923017 () Bool)

(assert (=> b!995542 m!923017))

(declare-fun m!923019 () Bool)

(assert (=> b!995538 m!923019))

(declare-fun m!923021 () Bool)

(assert (=> b!995544 m!923021))

(declare-fun m!923023 () Bool)

(assert (=> b!995539 m!923023))

(assert (=> b!995539 m!923023))

(declare-fun m!923025 () Bool)

(assert (=> b!995539 m!923025))

(declare-fun m!923027 () Bool)

(assert (=> b!995540 m!923027))

(declare-fun m!923029 () Bool)

(assert (=> start!85936 m!923029))

(declare-fun m!923031 () Bool)

(assert (=> start!85936 m!923031))

(push 1)

(assert (not start!85936))

(assert (not b!995544))

(assert (not b!995541))

(assert (not b!995539))

(assert (not b!995540))

(assert (not b!995542))

(assert (not b!995538))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

