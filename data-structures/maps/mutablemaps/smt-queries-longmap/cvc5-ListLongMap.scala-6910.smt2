; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86908 () Bool)

(assert start!86908)

(declare-fun b!1007049 () Bool)

(declare-fun e!566841 () Bool)

(declare-fun e!566845 () Bool)

(assert (=> b!1007049 (= e!566841 e!566845)))

(declare-fun res!676106 () Bool)

(assert (=> b!1007049 (=> (not res!676106) (not e!566845))))

(declare-datatypes ((SeekEntryResult!9503 0))(
  ( (MissingZero!9503 (index!40382 (_ BitVec 32))) (Found!9503 (index!40383 (_ BitVec 32))) (Intermediate!9503 (undefined!10315 Bool) (index!40384 (_ BitVec 32)) (x!87814 (_ BitVec 32))) (Undefined!9503) (MissingVacant!9503 (index!40385 (_ BitVec 32))) )
))
(declare-fun lt!445020 () SeekEntryResult!9503)

(declare-fun lt!445014 () SeekEntryResult!9503)

(assert (=> b!1007049 (= res!676106 (= lt!445020 lt!445014))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1007049 (= lt!445014 (Intermediate!9503 false resIndex!38 resX!38))))

(declare-datatypes ((array!63508 0))(
  ( (array!63509 (arr!30571 (Array (_ BitVec 32) (_ BitVec 64))) (size!31074 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63508)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63508 (_ BitVec 32)) SeekEntryResult!9503)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007049 (= lt!445020 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30571 a!3219) j!170) mask!3464) (select (arr!30571 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007050 () Bool)

(declare-fun e!566846 () Bool)

(assert (=> b!1007050 (= e!566846 e!566841)))

(declare-fun res!676100 () Bool)

(assert (=> b!1007050 (=> (not res!676100) (not e!566841))))

(declare-fun lt!445016 () SeekEntryResult!9503)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1007050 (= res!676100 (or (= lt!445016 (MissingVacant!9503 i!1194)) (= lt!445016 (MissingZero!9503 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63508 (_ BitVec 32)) SeekEntryResult!9503)

(assert (=> b!1007050 (= lt!445016 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1007051 () Bool)

(declare-fun res!676104 () Bool)

(assert (=> b!1007051 (=> (not res!676104) (not e!566846))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1007051 (= res!676104 (validKeyInArray!0 k!2224))))

(declare-fun b!1007052 () Bool)

(declare-fun res!676110 () Bool)

(declare-fun e!566844 () Bool)

(assert (=> b!1007052 (=> (not res!676110) (not e!566844))))

(declare-fun lt!445015 () array!63508)

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!445017 () SeekEntryResult!9503)

(declare-fun lt!445019 () (_ BitVec 64))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1007052 (= res!676110 (not (= lt!445017 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445019 lt!445015 mask!3464))))))

(declare-fun b!1007053 () Bool)

(declare-fun res!676103 () Bool)

(assert (=> b!1007053 (=> (not res!676103) (not e!566841))))

(declare-datatypes ((List!21373 0))(
  ( (Nil!21370) (Cons!21369 (h!22555 (_ BitVec 64)) (t!30382 List!21373)) )
))
(declare-fun arrayNoDuplicates!0 (array!63508 (_ BitVec 32) List!21373) Bool)

(assert (=> b!1007053 (= res!676103 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21370))))

(declare-fun b!1007054 () Bool)

(declare-fun res!676107 () Bool)

(assert (=> b!1007054 (=> (not res!676107) (not e!566846))))

(assert (=> b!1007054 (= res!676107 (validKeyInArray!0 (select (arr!30571 a!3219) j!170)))))

(declare-fun b!1007055 () Bool)

(declare-fun e!566842 () Bool)

(assert (=> b!1007055 (= e!566845 e!566842)))

(declare-fun res!676105 () Bool)

(assert (=> b!1007055 (=> (not res!676105) (not e!566842))))

(assert (=> b!1007055 (= res!676105 (= lt!445017 lt!445014))))

(assert (=> b!1007055 (= lt!445017 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30571 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1007056 () Bool)

(declare-fun res!676099 () Bool)

(assert (=> b!1007056 (=> (not res!676099) (not e!566846))))

(assert (=> b!1007056 (= res!676099 (and (= (size!31074 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31074 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31074 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1007057 () Bool)

(declare-fun res!676102 () Bool)

(assert (=> b!1007057 (=> (not res!676102) (not e!566846))))

(declare-fun arrayContainsKey!0 (array!63508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1007057 (= res!676102 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!676111 () Bool)

(assert (=> start!86908 (=> (not res!676111) (not e!566846))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86908 (= res!676111 (validMask!0 mask!3464))))

(assert (=> start!86908 e!566846))

(declare-fun array_inv!23561 (array!63508) Bool)

(assert (=> start!86908 (array_inv!23561 a!3219)))

(assert (=> start!86908 true))

(declare-fun b!1007058 () Bool)

(assert (=> b!1007058 (= e!566842 e!566844)))

(declare-fun res!676098 () Bool)

(assert (=> b!1007058 (=> (not res!676098) (not e!566844))))

(assert (=> b!1007058 (= res!676098 (not (= lt!445020 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445019 mask!3464) lt!445019 lt!445015 mask!3464))))))

(assert (=> b!1007058 (= lt!445019 (select (store (arr!30571 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1007058 (= lt!445015 (array!63509 (store (arr!30571 a!3219) i!1194 k!2224) (size!31074 a!3219)))))

(declare-fun b!1007059 () Bool)

(declare-fun res!676109 () Bool)

(assert (=> b!1007059 (=> (not res!676109) (not e!566841))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63508 (_ BitVec 32)) Bool)

(assert (=> b!1007059 (= res!676109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1007060 () Bool)

(declare-fun res!676101 () Bool)

(assert (=> b!1007060 (=> (not res!676101) (not e!566841))))

(assert (=> b!1007060 (= res!676101 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31074 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31074 a!3219))))))

(declare-fun b!1007061 () Bool)

(assert (=> b!1007061 (= e!566844 false)))

(declare-fun lt!445018 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1007061 (= lt!445018 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1007062 () Bool)

(declare-fun res!676108 () Bool)

(assert (=> b!1007062 (=> (not res!676108) (not e!566844))))

(assert (=> b!1007062 (= res!676108 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(assert (= (and start!86908 res!676111) b!1007056))

(assert (= (and b!1007056 res!676099) b!1007054))

(assert (= (and b!1007054 res!676107) b!1007051))

(assert (= (and b!1007051 res!676104) b!1007057))

(assert (= (and b!1007057 res!676102) b!1007050))

(assert (= (and b!1007050 res!676100) b!1007059))

(assert (= (and b!1007059 res!676109) b!1007053))

(assert (= (and b!1007053 res!676103) b!1007060))

(assert (= (and b!1007060 res!676101) b!1007049))

(assert (= (and b!1007049 res!676106) b!1007055))

(assert (= (and b!1007055 res!676105) b!1007058))

(assert (= (and b!1007058 res!676098) b!1007052))

(assert (= (and b!1007052 res!676110) b!1007062))

(assert (= (and b!1007062 res!676108) b!1007061))

(declare-fun m!932091 () Bool)

(assert (=> b!1007061 m!932091))

(declare-fun m!932093 () Bool)

(assert (=> b!1007058 m!932093))

(assert (=> b!1007058 m!932093))

(declare-fun m!932095 () Bool)

(assert (=> b!1007058 m!932095))

(declare-fun m!932097 () Bool)

(assert (=> b!1007058 m!932097))

(declare-fun m!932099 () Bool)

(assert (=> b!1007058 m!932099))

(declare-fun m!932101 () Bool)

(assert (=> b!1007049 m!932101))

(assert (=> b!1007049 m!932101))

(declare-fun m!932103 () Bool)

(assert (=> b!1007049 m!932103))

(assert (=> b!1007049 m!932103))

(assert (=> b!1007049 m!932101))

(declare-fun m!932105 () Bool)

(assert (=> b!1007049 m!932105))

(assert (=> b!1007054 m!932101))

(assert (=> b!1007054 m!932101))

(declare-fun m!932107 () Bool)

(assert (=> b!1007054 m!932107))

(declare-fun m!932109 () Bool)

(assert (=> b!1007051 m!932109))

(declare-fun m!932111 () Bool)

(assert (=> b!1007059 m!932111))

(declare-fun m!932113 () Bool)

(assert (=> b!1007052 m!932113))

(declare-fun m!932115 () Bool)

(assert (=> start!86908 m!932115))

(declare-fun m!932117 () Bool)

(assert (=> start!86908 m!932117))

(declare-fun m!932119 () Bool)

(assert (=> b!1007057 m!932119))

(assert (=> b!1007055 m!932101))

(assert (=> b!1007055 m!932101))

(declare-fun m!932121 () Bool)

(assert (=> b!1007055 m!932121))

(declare-fun m!932123 () Bool)

(assert (=> b!1007053 m!932123))

(declare-fun m!932125 () Bool)

(assert (=> b!1007050 m!932125))

(push 1)

