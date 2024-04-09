; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85744 () Bool)

(assert start!85744)

(declare-fun res!665166 () Bool)

(declare-fun e!561263 () Bool)

(assert (=> start!85744 (=> (not res!665166) (not e!561263))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85744 (= res!665166 (validMask!0 mask!3464))))

(assert (=> start!85744 e!561263))

(declare-datatypes ((array!62901 0))(
  ( (array!62902 (arr!30285 (Array (_ BitVec 32) (_ BitVec 64))) (size!30788 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62901)

(declare-fun array_inv!23275 (array!62901) Bool)

(assert (=> start!85744 (array_inv!23275 a!3219)))

(assert (=> start!85744 true))

(declare-fun b!994500 () Bool)

(declare-fun res!665163 () Bool)

(assert (=> b!994500 (=> (not res!665163) (not e!561263))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994500 (= res!665163 (and (= (size!30788 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30788 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30788 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994501 () Bool)

(assert (=> b!994501 (= e!561263 false)))

(declare-fun k!2224 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9217 0))(
  ( (MissingZero!9217 (index!39238 (_ BitVec 32))) (Found!9217 (index!39239 (_ BitVec 32))) (Intermediate!9217 (undefined!10029 Bool) (index!39240 (_ BitVec 32)) (x!86715 (_ BitVec 32))) (Undefined!9217) (MissingVacant!9217 (index!39241 (_ BitVec 32))) )
))
(declare-fun lt!440682 () SeekEntryResult!9217)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62901 (_ BitVec 32)) SeekEntryResult!9217)

(assert (=> b!994501 (= lt!440682 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!994502 () Bool)

(declare-fun res!665167 () Bool)

(assert (=> b!994502 (=> (not res!665167) (not e!561263))))

(declare-fun arrayContainsKey!0 (array!62901 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994502 (= res!665167 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994503 () Bool)

(declare-fun res!665165 () Bool)

(assert (=> b!994503 (=> (not res!665165) (not e!561263))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994503 (= res!665165 (validKeyInArray!0 (select (arr!30285 a!3219) j!170)))))

(declare-fun b!994504 () Bool)

(declare-fun res!665164 () Bool)

(assert (=> b!994504 (=> (not res!665164) (not e!561263))))

(assert (=> b!994504 (= res!665164 (validKeyInArray!0 k!2224))))

(assert (= (and start!85744 res!665166) b!994500))

(assert (= (and b!994500 res!665163) b!994503))

(assert (= (and b!994503 res!665165) b!994504))

(assert (= (and b!994504 res!665164) b!994502))

(assert (= (and b!994502 res!665167) b!994501))

(declare-fun m!922179 () Bool)

(assert (=> b!994504 m!922179))

(declare-fun m!922181 () Bool)

(assert (=> b!994503 m!922181))

(assert (=> b!994503 m!922181))

(declare-fun m!922183 () Bool)

(assert (=> b!994503 m!922183))

(declare-fun m!922185 () Bool)

(assert (=> b!994502 m!922185))

(declare-fun m!922187 () Bool)

(assert (=> b!994501 m!922187))

(declare-fun m!922189 () Bool)

(assert (=> start!85744 m!922189))

(declare-fun m!922191 () Bool)

(assert (=> start!85744 m!922191))

(push 1)

(assert (not b!994502))

(assert (not b!994503))

(assert (not b!994501))

(assert (not b!994504))

(assert (not start!85744))

(check-sat)

