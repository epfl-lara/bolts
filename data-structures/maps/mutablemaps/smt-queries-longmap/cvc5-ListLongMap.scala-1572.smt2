; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29964 () Bool)

(assert start!29964)

(declare-fun res!158704 () Bool)

(declare-fun e!189915 () Bool)

(assert (=> start!29964 (=> (not res!158704) (not e!189915))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29964 (= res!158704 (validMask!0 mask!3709))))

(assert (=> start!29964 e!189915))

(assert (=> start!29964 true))

(declare-datatypes ((array!15200 0))(
  ( (array!15201 (arr!7192 (Array (_ BitVec 32) (_ BitVec 64))) (size!7544 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15200)

(declare-fun array_inv!5146 (array!15200) Bool)

(assert (=> start!29964 (array_inv!5146 a!3293)))

(declare-fun b!300796 () Bool)

(declare-fun res!158705 () Bool)

(assert (=> b!300796 (=> (not res!158705) (not e!189915))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!300796 (= res!158705 (and (= (size!7544 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7544 a!3293))))))

(declare-fun b!300797 () Bool)

(declare-fun res!158706 () Bool)

(assert (=> b!300797 (=> (not res!158706) (not e!189915))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300797 (= res!158706 (validKeyInArray!0 k!2441))))

(declare-fun b!300798 () Bool)

(assert (=> b!300798 (= e!189915 (bvsge #b00000000000000000000000000000000 (size!7544 a!3293)))))

(assert (= (and start!29964 res!158704) b!300796))

(assert (= (and b!300796 res!158705) b!300797))

(assert (= (and b!300797 res!158706) b!300798))

(declare-fun m!312739 () Bool)

(assert (=> start!29964 m!312739))

(declare-fun m!312741 () Bool)

(assert (=> start!29964 m!312741))

(declare-fun m!312743 () Bool)

(assert (=> b!300797 m!312743))

(push 1)

(assert (not b!300797))

(assert (not start!29964))

(check-sat)

(pop 1)

(push 1)

(check-sat)

