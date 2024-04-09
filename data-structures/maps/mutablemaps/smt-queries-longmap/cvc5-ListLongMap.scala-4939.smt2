; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68026 () Bool)

(assert start!68026)

(declare-fun b!791359 () Bool)

(declare-fun res!536266 () Bool)

(declare-fun e!439809 () Bool)

(assert (=> b!791359 (=> (not res!536266) (not e!439809))))

(declare-datatypes ((array!42895 0))(
  ( (array!42896 (arr!20529 (Array (_ BitVec 32) (_ BitVec 64))) (size!20950 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42895)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791359 (= res!536266 (validKeyInArray!0 (select (arr!20529 a!3170) j!153)))))

(declare-fun b!791361 () Bool)

(assert (=> b!791361 (= e!439809 (bvsge #b00000000000000000000000000000000 (size!20950 a!3170)))))

(declare-fun b!791360 () Bool)

(declare-fun res!536265 () Bool)

(assert (=> b!791360 (=> (not res!536265) (not e!439809))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!791360 (= res!536265 (validKeyInArray!0 k!2044))))

(declare-fun b!791358 () Bool)

(declare-fun res!536264 () Bool)

(assert (=> b!791358 (=> (not res!536264) (not e!439809))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!791358 (= res!536264 (and (= (size!20950 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20950 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20950 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!536263 () Bool)

(assert (=> start!68026 (=> (not res!536263) (not e!439809))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68026 (= res!536263 (validMask!0 mask!3266))))

(assert (=> start!68026 e!439809))

(assert (=> start!68026 true))

(declare-fun array_inv!16303 (array!42895) Bool)

(assert (=> start!68026 (array_inv!16303 a!3170)))

(assert (= (and start!68026 res!536263) b!791358))

(assert (= (and b!791358 res!536264) b!791359))

(assert (= (and b!791359 res!536266) b!791360))

(assert (= (and b!791360 res!536265) b!791361))

(declare-fun m!732193 () Bool)

(assert (=> b!791359 m!732193))

(assert (=> b!791359 m!732193))

(declare-fun m!732195 () Bool)

(assert (=> b!791359 m!732195))

(declare-fun m!732197 () Bool)

(assert (=> b!791360 m!732197))

(declare-fun m!732199 () Bool)

(assert (=> start!68026 m!732199))

(declare-fun m!732201 () Bool)

(assert (=> start!68026 m!732201))

(push 1)

(assert (not b!791359))

(assert (not b!791360))

(assert (not start!68026))

(check-sat)

(pop 1)

