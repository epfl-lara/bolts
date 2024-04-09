; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81644 () Bool)

(assert start!81644)

(declare-fun res!638426 () Bool)

(declare-fun e!536853 () Bool)

(assert (=> start!81644 (=> (not res!638426) (not e!536853))))

(declare-fun mask!4034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81644 (= res!638426 (validMask!0 mask!4034))))

(assert (=> start!81644 e!536853))

(assert (=> start!81644 true))

(declare-datatypes ((array!57708 0))(
  ( (array!57709 (arr!27739 (Array (_ BitVec 32) (_ BitVec 64))) (size!28219 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57708)

(declare-fun array_inv!21472 (array!57708) Bool)

(assert (=> start!81644 (array_inv!21472 a!3460)))

(declare-fun b!953079 () Bool)

(assert (=> b!953079 (= e!536853 (and (= (size!28219 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)) (bvsgt #b00000000000000000000000000000000 (size!28219 a!3460))))))

(assert (= (and start!81644 res!638426) b!953079))

(declare-fun m!885271 () Bool)

(assert (=> start!81644 m!885271))

(declare-fun m!885273 () Bool)

(assert (=> start!81644 m!885273))

(push 1)

(assert (not start!81644))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!115551 () Bool)

