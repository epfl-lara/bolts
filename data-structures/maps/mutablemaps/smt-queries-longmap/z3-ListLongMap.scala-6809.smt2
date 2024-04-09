; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85700 () Bool)

(assert start!85700)

(declare-fun res!664930 () Bool)

(declare-fun e!561166 () Bool)

(assert (=> start!85700 (=> (not res!664930) (not e!561166))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85700 (= res!664930 (validMask!0 mask!3464))))

(assert (=> start!85700 e!561166))

(declare-datatypes ((array!62868 0))(
  ( (array!62869 (arr!30269 (Array (_ BitVec 32) (_ BitVec 64))) (size!30772 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62868)

(declare-fun array_inv!23259 (array!62868) Bool)

(assert (=> start!85700 (array_inv!23259 a!3219)))

(assert (=> start!85700 true))

(declare-fun b!994267 () Bool)

(assert (=> b!994267 (= e!561166 (bvsge #b00000000000000000000000000000000 (size!30772 a!3219)))))

(declare-fun b!994265 () Bool)

(declare-fun res!664928 () Bool)

(assert (=> b!994265 (=> (not res!664928) (not e!561166))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994265 (= res!664928 (validKeyInArray!0 (select (arr!30269 a!3219) j!170)))))

(declare-fun b!994264 () Bool)

(declare-fun res!664929 () Bool)

(assert (=> b!994264 (=> (not res!664929) (not e!561166))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994264 (= res!664929 (and (= (size!30772 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30772 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30772 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994266 () Bool)

(declare-fun res!664927 () Bool)

(assert (=> b!994266 (=> (not res!664927) (not e!561166))))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!994266 (= res!664927 (validKeyInArray!0 k0!2224))))

(assert (= (and start!85700 res!664930) b!994264))

(assert (= (and b!994264 res!664929) b!994265))

(assert (= (and b!994265 res!664928) b!994266))

(assert (= (and b!994266 res!664927) b!994267))

(declare-fun m!921981 () Bool)

(assert (=> start!85700 m!921981))

(declare-fun m!921983 () Bool)

(assert (=> start!85700 m!921983))

(declare-fun m!921985 () Bool)

(assert (=> b!994265 m!921985))

(assert (=> b!994265 m!921985))

(declare-fun m!921987 () Bool)

(assert (=> b!994265 m!921987))

(declare-fun m!921989 () Bool)

(assert (=> b!994266 m!921989))

(check-sat (not b!994265) (not b!994266) (not start!85700))
(check-sat)
