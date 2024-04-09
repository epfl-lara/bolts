; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134602 () Bool)

(assert start!134602)

(declare-fun res!1073411 () Bool)

(declare-fun e!875951 () Bool)

(assert (=> start!134602 (=> (not res!1073411) (not e!875951))))

(declare-fun mask!4043 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134602 (= res!1073411 (validMask!0 mask!4043))))

(assert (=> start!134602 e!875951))

(assert (=> start!134602 true))

(declare-datatypes ((array!104775 0))(
  ( (array!104776 (arr!50563 (Array (_ BitVec 32) (_ BitVec 64))) (size!51114 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104775)

(declare-fun array_inv!39208 (array!104775) Bool)

(assert (=> start!134602 (array_inv!39208 a!3462)))

(declare-fun b!1571018 () Bool)

(assert (=> b!1571018 (= e!875951 (and (= (size!51114 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)) (bvsgt #b00000000000000000000000000000000 (size!51114 a!3462))))))

(assert (= (and start!134602 res!1073411) b!1571018))

(declare-fun m!1445065 () Bool)

(assert (=> start!134602 m!1445065))

(declare-fun m!1445067 () Bool)

(assert (=> start!134602 m!1445067))

(push 1)

(assert (not start!134602))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

