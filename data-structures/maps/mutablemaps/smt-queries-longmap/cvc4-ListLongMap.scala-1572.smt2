; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29968 () Bool)

(assert start!29968)

(declare-fun res!158723 () Bool)

(declare-fun e!189927 () Bool)

(assert (=> start!29968 (=> (not res!158723) (not e!189927))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29968 (= res!158723 (validMask!0 mask!3709))))

(assert (=> start!29968 e!189927))

(assert (=> start!29968 true))

(declare-datatypes ((array!15204 0))(
  ( (array!15205 (arr!7194 (Array (_ BitVec 32) (_ BitVec 64))) (size!7546 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15204)

(declare-fun array_inv!5148 (array!15204) Bool)

(assert (=> start!29968 (array_inv!5148 a!3293)))

(declare-fun b!300814 () Bool)

(declare-fun res!158722 () Bool)

(assert (=> b!300814 (=> (not res!158722) (not e!189927))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!300814 (= res!158722 (and (= (size!7546 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7546 a!3293))))))

(declare-fun b!300815 () Bool)

(declare-fun res!158724 () Bool)

(assert (=> b!300815 (=> (not res!158724) (not e!189927))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300815 (= res!158724 (validKeyInArray!0 k!2441))))

(declare-fun b!300816 () Bool)

(assert (=> b!300816 (= e!189927 (bvsge #b00000000000000000000000000000000 (size!7546 a!3293)))))

(assert (= (and start!29968 res!158723) b!300814))

(assert (= (and b!300814 res!158722) b!300815))

(assert (= (and b!300815 res!158724) b!300816))

(declare-fun m!312751 () Bool)

(assert (=> start!29968 m!312751))

(declare-fun m!312753 () Bool)

(assert (=> start!29968 m!312753))

(declare-fun m!312755 () Bool)

(assert (=> b!300815 m!312755))

(push 1)

(assert (not b!300815))

(assert (not start!29968))

(check-sat)

(pop 1)

(push 1)

(check-sat)

