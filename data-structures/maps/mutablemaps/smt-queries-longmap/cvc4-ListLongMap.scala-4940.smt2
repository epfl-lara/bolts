; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68036 () Bool)

(assert start!68036)

(declare-fun res!536325 () Bool)

(declare-fun e!439839 () Bool)

(assert (=> start!68036 (=> (not res!536325) (not e!439839))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68036 (= res!536325 (validMask!0 mask!3266))))

(assert (=> start!68036 e!439839))

(assert (=> start!68036 true))

(declare-datatypes ((array!42905 0))(
  ( (array!42906 (arr!20534 (Array (_ BitVec 32) (_ BitVec 64))) (size!20955 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42905)

(declare-fun array_inv!16308 (array!42905) Bool)

(assert (=> start!68036 (array_inv!16308 a!3170)))

(declare-fun b!791420 () Bool)

(declare-fun res!536323 () Bool)

(assert (=> b!791420 (=> (not res!536323) (not e!439839))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791420 (= res!536323 (validKeyInArray!0 k!2044))))

(declare-fun b!791418 () Bool)

(declare-fun res!536324 () Bool)

(assert (=> b!791418 (=> (not res!536324) (not e!439839))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!791418 (= res!536324 (and (= (size!20955 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20955 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20955 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791419 () Bool)

(declare-fun res!536326 () Bool)

(assert (=> b!791419 (=> (not res!536326) (not e!439839))))

(assert (=> b!791419 (= res!536326 (validKeyInArray!0 (select (arr!20534 a!3170) j!153)))))

(declare-fun b!791421 () Bool)

(assert (=> b!791421 (= e!439839 (and (bvslt #b00000000000000000000000000000000 (size!20955 a!3170)) (bvsge (size!20955 a!3170) #b01111111111111111111111111111111)))))

(assert (= (and start!68036 res!536325) b!791418))

(assert (= (and b!791418 res!536324) b!791419))

(assert (= (and b!791419 res!536326) b!791420))

(assert (= (and b!791420 res!536323) b!791421))

(declare-fun m!732243 () Bool)

(assert (=> start!68036 m!732243))

(declare-fun m!732245 () Bool)

(assert (=> start!68036 m!732245))

(declare-fun m!732247 () Bool)

(assert (=> b!791420 m!732247))

(declare-fun m!732249 () Bool)

(assert (=> b!791419 m!732249))

(assert (=> b!791419 m!732249))

(declare-fun m!732251 () Bool)

(assert (=> b!791419 m!732251))

(push 1)

(assert (not b!791420))

(assert (not b!791419))

(assert (not start!68036))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

