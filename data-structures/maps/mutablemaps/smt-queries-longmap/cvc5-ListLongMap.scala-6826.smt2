; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85978 () Bool)

(assert start!85978)

(declare-fun b!995717 () Bool)

(declare-fun res!666076 () Bool)

(declare-fun e!561917 () Bool)

(assert (=> b!995717 (=> (not res!666076) (not e!561917))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995717 (= res!666076 (validKeyInArray!0 k!2224))))

(declare-fun b!995718 () Bool)

(declare-fun res!666082 () Bool)

(assert (=> b!995718 (=> (not res!666082) (not e!561917))))

(declare-datatypes ((array!62980 0))(
  ( (array!62981 (arr!30319 (Array (_ BitVec 32) (_ BitVec 64))) (size!30822 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62980)

(declare-fun arrayContainsKey!0 (array!62980 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995718 (= res!666082 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!995719 () Bool)

(declare-fun e!561916 () Bool)

(assert (=> b!995719 (= e!561917 e!561916)))

(declare-fun res!666079 () Bool)

(assert (=> b!995719 (=> (not res!666079) (not e!561916))))

(declare-datatypes ((SeekEntryResult!9251 0))(
  ( (MissingZero!9251 (index!39374 (_ BitVec 32))) (Found!9251 (index!39375 (_ BitVec 32))) (Intermediate!9251 (undefined!10063 Bool) (index!39376 (_ BitVec 32)) (x!86845 (_ BitVec 32))) (Undefined!9251) (MissingVacant!9251 (index!39377 (_ BitVec 32))) )
))
(declare-fun lt!441015 () SeekEntryResult!9251)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995719 (= res!666079 (or (= lt!441015 (MissingVacant!9251 i!1194)) (= lt!441015 (MissingZero!9251 i!1194))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62980 (_ BitVec 32)) SeekEntryResult!9251)

(assert (=> b!995719 (= lt!441015 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!995720 () Bool)

(assert (=> b!995720 (= e!561916 false)))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!441014 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!995720 (= lt!441014 (toIndex!0 (select (arr!30319 a!3219) j!170) mask!3464))))

(declare-fun b!995721 () Bool)

(declare-fun res!666080 () Bool)

(assert (=> b!995721 (=> (not res!666080) (not e!561916))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62980 (_ BitVec 32)) Bool)

(assert (=> b!995721 (= res!666080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!995722 () Bool)

(declare-fun res!666074 () Bool)

(assert (=> b!995722 (=> (not res!666074) (not e!561917))))

(assert (=> b!995722 (= res!666074 (validKeyInArray!0 (select (arr!30319 a!3219) j!170)))))

(declare-fun b!995723 () Bool)

(declare-fun res!666078 () Bool)

(assert (=> b!995723 (=> (not res!666078) (not e!561917))))

(assert (=> b!995723 (= res!666078 (and (= (size!30822 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30822 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30822 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!666075 () Bool)

(assert (=> start!85978 (=> (not res!666075) (not e!561917))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85978 (= res!666075 (validMask!0 mask!3464))))

(assert (=> start!85978 e!561917))

(declare-fun array_inv!23309 (array!62980) Bool)

(assert (=> start!85978 (array_inv!23309 a!3219)))

(assert (=> start!85978 true))

(declare-fun b!995724 () Bool)

(declare-fun res!666077 () Bool)

(assert (=> b!995724 (=> (not res!666077) (not e!561916))))

(declare-datatypes ((List!21121 0))(
  ( (Nil!21118) (Cons!21117 (h!22279 (_ BitVec 64)) (t!30130 List!21121)) )
))
(declare-fun arrayNoDuplicates!0 (array!62980 (_ BitVec 32) List!21121) Bool)

(assert (=> b!995724 (= res!666077 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21118))))

(declare-fun b!995725 () Bool)

(declare-fun res!666081 () Bool)

(assert (=> b!995725 (=> (not res!666081) (not e!561916))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!995725 (= res!666081 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30822 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30822 a!3219))))))

(assert (= (and start!85978 res!666075) b!995723))

(assert (= (and b!995723 res!666078) b!995722))

(assert (= (and b!995722 res!666074) b!995717))

(assert (= (and b!995717 res!666076) b!995718))

(assert (= (and b!995718 res!666082) b!995719))

(assert (= (and b!995719 res!666079) b!995721))

(assert (= (and b!995721 res!666080) b!995724))

(assert (= (and b!995724 res!666077) b!995725))

(assert (= (and b!995725 res!666081) b!995720))

(declare-fun m!923121 () Bool)

(assert (=> start!85978 m!923121))

(declare-fun m!923123 () Bool)

(assert (=> start!85978 m!923123))

(declare-fun m!923125 () Bool)

(assert (=> b!995717 m!923125))

(declare-fun m!923127 () Bool)

(assert (=> b!995719 m!923127))

(declare-fun m!923129 () Bool)

(assert (=> b!995722 m!923129))

(assert (=> b!995722 m!923129))

(declare-fun m!923131 () Bool)

(assert (=> b!995722 m!923131))

(declare-fun m!923133 () Bool)

(assert (=> b!995718 m!923133))

(assert (=> b!995720 m!923129))

(assert (=> b!995720 m!923129))

(declare-fun m!923135 () Bool)

(assert (=> b!995720 m!923135))

(declare-fun m!923137 () Bool)

(assert (=> b!995721 m!923137))

(declare-fun m!923139 () Bool)

(assert (=> b!995724 m!923139))

(push 1)

(assert (not b!995718))

(assert (not start!85978))

