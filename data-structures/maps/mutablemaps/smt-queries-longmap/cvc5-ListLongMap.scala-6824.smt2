; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85926 () Bool)

(assert start!85926)

(declare-fun b!995418 () Bool)

(declare-fun res!665872 () Bool)

(declare-fun e!561754 () Bool)

(assert (=> b!995418 (=> (not res!665872) (not e!561754))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995418 (= res!665872 (validKeyInArray!0 k!2224))))

(declare-datatypes ((array!62966 0))(
  ( (array!62967 (arr!30313 (Array (_ BitVec 32) (_ BitVec 64))) (size!30816 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62966)

(declare-fun b!995419 () Bool)

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun e!561753 () Bool)

(assert (=> b!995419 (= e!561753 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30816 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30816 a!3219)) (bvslt mask!3464 #b00000000000000000000000000000000)))))

(declare-fun b!995420 () Bool)

(declare-fun res!665865 () Bool)

(assert (=> b!995420 (=> (not res!665865) (not e!561753))))

(declare-datatypes ((List!21115 0))(
  ( (Nil!21112) (Cons!21111 (h!22273 (_ BitVec 64)) (t!30124 List!21115)) )
))
(declare-fun arrayNoDuplicates!0 (array!62966 (_ BitVec 32) List!21115) Bool)

(assert (=> b!995420 (= res!665865 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21112))))

(declare-fun res!665868 () Bool)

(assert (=> start!85926 (=> (not res!665868) (not e!561754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85926 (= res!665868 (validMask!0 mask!3464))))

(assert (=> start!85926 e!561754))

(declare-fun array_inv!23303 (array!62966) Bool)

(assert (=> start!85926 (array_inv!23303 a!3219)))

(assert (=> start!85926 true))

(declare-fun b!995421 () Bool)

(declare-fun res!665866 () Bool)

(assert (=> b!995421 (=> (not res!665866) (not e!561754))))

(declare-fun arrayContainsKey!0 (array!62966 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995421 (= res!665866 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!995422 () Bool)

(declare-fun res!665867 () Bool)

(assert (=> b!995422 (=> (not res!665867) (not e!561754))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!995422 (= res!665867 (validKeyInArray!0 (select (arr!30313 a!3219) j!170)))))

(declare-fun b!995423 () Bool)

(declare-fun res!665869 () Bool)

(assert (=> b!995423 (=> (not res!665869) (not e!561753))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62966 (_ BitVec 32)) Bool)

(assert (=> b!995423 (= res!665869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!995424 () Bool)

(declare-fun res!665870 () Bool)

(assert (=> b!995424 (=> (not res!665870) (not e!561754))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995424 (= res!665870 (and (= (size!30816 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30816 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30816 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!995425 () Bool)

(assert (=> b!995425 (= e!561754 e!561753)))

(declare-fun res!665871 () Bool)

(assert (=> b!995425 (=> (not res!665871) (not e!561753))))

(declare-datatypes ((SeekEntryResult!9245 0))(
  ( (MissingZero!9245 (index!39350 (_ BitVec 32))) (Found!9245 (index!39351 (_ BitVec 32))) (Intermediate!9245 (undefined!10057 Bool) (index!39352 (_ BitVec 32)) (x!86823 (_ BitVec 32))) (Undefined!9245) (MissingVacant!9245 (index!39353 (_ BitVec 32))) )
))
(declare-fun lt!440940 () SeekEntryResult!9245)

(assert (=> b!995425 (= res!665871 (or (= lt!440940 (MissingVacant!9245 i!1194)) (= lt!440940 (MissingZero!9245 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62966 (_ BitVec 32)) SeekEntryResult!9245)

(assert (=> b!995425 (= lt!440940 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(assert (= (and start!85926 res!665868) b!995424))

(assert (= (and b!995424 res!665870) b!995422))

(assert (= (and b!995422 res!665867) b!995418))

(assert (= (and b!995418 res!665872) b!995421))

(assert (= (and b!995421 res!665866) b!995425))

(assert (= (and b!995425 res!665871) b!995423))

(assert (= (and b!995423 res!665869) b!995420))

(assert (= (and b!995420 res!665865) b!995419))

(declare-fun m!922925 () Bool)

(assert (=> b!995418 m!922925))

(declare-fun m!922927 () Bool)

(assert (=> b!995422 m!922927))

(assert (=> b!995422 m!922927))

(declare-fun m!922929 () Bool)

(assert (=> b!995422 m!922929))

(declare-fun m!922931 () Bool)

(assert (=> b!995425 m!922931))

(declare-fun m!922933 () Bool)

(assert (=> b!995420 m!922933))

(declare-fun m!922935 () Bool)

(assert (=> b!995421 m!922935))

(declare-fun m!922937 () Bool)

(assert (=> b!995423 m!922937))

(declare-fun m!922939 () Bool)

(assert (=> start!85926 m!922939))

(declare-fun m!922941 () Bool)

(assert (=> start!85926 m!922941))

(push 1)

(assert (not b!995425))

(assert (not b!995420))

(assert (not b!995422))

(assert (not b!995423))

(assert (not b!995421))

(assert (not start!85926))

(assert (not b!995418))

(check-sat)

