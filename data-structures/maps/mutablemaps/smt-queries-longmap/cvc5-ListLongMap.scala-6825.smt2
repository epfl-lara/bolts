; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85932 () Bool)

(assert start!85932)

(declare-fun res!665943 () Bool)

(declare-fun e!561782 () Bool)

(assert (=> start!85932 (=> (not res!665943) (not e!561782))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85932 (= res!665943 (validMask!0 mask!3464))))

(assert (=> start!85932 e!561782))

(declare-datatypes ((array!62972 0))(
  ( (array!62973 (arr!30316 (Array (_ BitVec 32) (_ BitVec 64))) (size!30819 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62972)

(declare-fun array_inv!23306 (array!62972) Bool)

(assert (=> start!85932 (array_inv!23306 a!3219)))

(assert (=> start!85932 true))

(declare-fun b!995490 () Bool)

(declare-fun res!665940 () Bool)

(assert (=> b!995490 (=> (not res!665940) (not e!561782))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995490 (= res!665940 (validKeyInArray!0 (select (arr!30316 a!3219) j!170)))))

(declare-fun b!995491 () Bool)

(declare-fun res!665939 () Bool)

(assert (=> b!995491 (=> (not res!665939) (not e!561782))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995491 (= res!665939 (and (= (size!30819 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30819 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30819 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!995492 () Bool)

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun e!561781 () Bool)

(assert (=> b!995492 (= e!561781 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30819 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30819 a!3219)) (bvsge mask!3464 #b00000000000000000000000000000000) (bvsgt mask!3464 #b00111111111111111111111111111111)))))

(declare-fun b!995493 () Bool)

(assert (=> b!995493 (= e!561782 e!561781)))

(declare-fun res!665942 () Bool)

(assert (=> b!995493 (=> (not res!665942) (not e!561781))))

(declare-datatypes ((SeekEntryResult!9248 0))(
  ( (MissingZero!9248 (index!39362 (_ BitVec 32))) (Found!9248 (index!39363 (_ BitVec 32))) (Intermediate!9248 (undefined!10060 Bool) (index!39364 (_ BitVec 32)) (x!86834 (_ BitVec 32))) (Undefined!9248) (MissingVacant!9248 (index!39365 (_ BitVec 32))) )
))
(declare-fun lt!440949 () SeekEntryResult!9248)

(assert (=> b!995493 (= res!665942 (or (= lt!440949 (MissingVacant!9248 i!1194)) (= lt!440949 (MissingZero!9248 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62972 (_ BitVec 32)) SeekEntryResult!9248)

(assert (=> b!995493 (= lt!440949 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!995494 () Bool)

(declare-fun res!665937 () Bool)

(assert (=> b!995494 (=> (not res!665937) (not e!561781))))

(declare-datatypes ((List!21118 0))(
  ( (Nil!21115) (Cons!21114 (h!22276 (_ BitVec 64)) (t!30127 List!21118)) )
))
(declare-fun arrayNoDuplicates!0 (array!62972 (_ BitVec 32) List!21118) Bool)

(assert (=> b!995494 (= res!665937 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21115))))

(declare-fun b!995495 () Bool)

(declare-fun res!665941 () Bool)

(assert (=> b!995495 (=> (not res!665941) (not e!561782))))

(assert (=> b!995495 (= res!665941 (validKeyInArray!0 k!2224))))

(declare-fun b!995496 () Bool)

(declare-fun res!665944 () Bool)

(assert (=> b!995496 (=> (not res!665944) (not e!561781))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62972 (_ BitVec 32)) Bool)

(assert (=> b!995496 (= res!665944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!995497 () Bool)

(declare-fun res!665938 () Bool)

(assert (=> b!995497 (=> (not res!665938) (not e!561782))))

(declare-fun arrayContainsKey!0 (array!62972 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995497 (= res!665938 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!85932 res!665943) b!995491))

(assert (= (and b!995491 res!665939) b!995490))

(assert (= (and b!995490 res!665940) b!995495))

(assert (= (and b!995495 res!665941) b!995497))

(assert (= (and b!995497 res!665938) b!995493))

(assert (= (and b!995493 res!665942) b!995496))

(assert (= (and b!995496 res!665944) b!995494))

(assert (= (and b!995494 res!665937) b!995492))

(declare-fun m!922979 () Bool)

(assert (=> start!85932 m!922979))

(declare-fun m!922981 () Bool)

(assert (=> start!85932 m!922981))

(declare-fun m!922983 () Bool)

(assert (=> b!995494 m!922983))

(declare-fun m!922985 () Bool)

(assert (=> b!995496 m!922985))

(declare-fun m!922987 () Bool)

(assert (=> b!995495 m!922987))

(declare-fun m!922989 () Bool)

(assert (=> b!995490 m!922989))

(assert (=> b!995490 m!922989))

(declare-fun m!922991 () Bool)

(assert (=> b!995490 m!922991))

(declare-fun m!922993 () Bool)

(assert (=> b!995493 m!922993))

(declare-fun m!922995 () Bool)

(assert (=> b!995497 m!922995))

(push 1)

(assert (not start!85932))

(assert (not b!995496))

(assert (not b!995495))

(assert (not b!995497))

(assert (not b!995490))

(assert (not b!995493))

(assert (not b!995494))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

