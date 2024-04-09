; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36220 () Bool)

(assert start!36220)

(declare-fun res!202197 () Bool)

(declare-fun e!222166 () Bool)

(assert (=> start!36220 (=> (not res!202197) (not e!222166))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20498 0))(
  ( (array!20499 (arr!9728 (Array (_ BitVec 32) (_ BitVec 64))) (size!10080 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20498)

(assert (=> start!36220 (= res!202197 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10080 a!4337))))))

(assert (=> start!36220 e!222166))

(assert (=> start!36220 true))

(declare-fun array_inv!7166 (array!20498) Bool)

(assert (=> start!36220 (array_inv!7166 a!4337)))

(declare-fun b!362753 () Bool)

(declare-fun res!202198 () Bool)

(assert (=> b!362753 (=> (not res!202198) (not e!222166))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362753 (= res!202198 (not (validKeyInArray!0 (select (arr!9728 a!4337) i!1478))))))

(declare-fun b!362754 () Bool)

(declare-fun res!202196 () Bool)

(assert (=> b!362754 (=> (not res!202196) (not e!222166))))

(declare-fun k0!2980 () (_ BitVec 64))

(assert (=> b!362754 (= res!202196 (validKeyInArray!0 k0!2980))))

(declare-fun b!362755 () Bool)

(assert (=> b!362755 (= e!222166 (and (bvslt (size!10080 a!4337) #b01111111111111111111111111111111) (bvsgt i!1478 (size!10080 a!4337))))))

(assert (= (and start!36220 res!202197) b!362753))

(assert (= (and b!362753 res!202198) b!362754))

(assert (= (and b!362754 res!202196) b!362755))

(declare-fun m!359667 () Bool)

(assert (=> start!36220 m!359667))

(declare-fun m!359669 () Bool)

(assert (=> b!362753 m!359669))

(assert (=> b!362753 m!359669))

(declare-fun m!359671 () Bool)

(assert (=> b!362753 m!359671))

(declare-fun m!359673 () Bool)

(assert (=> b!362754 m!359673))

(check-sat (not b!362754) (not start!36220) (not b!362753))
(check-sat)
