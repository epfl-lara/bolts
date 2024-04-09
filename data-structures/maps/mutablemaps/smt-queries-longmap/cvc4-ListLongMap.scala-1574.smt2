; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29998 () Bool)

(assert start!29998)

(declare-fun res!158785 () Bool)

(declare-fun e!189963 () Bool)

(assert (=> start!29998 (=> (not res!158785) (not e!189963))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29998 (= res!158785 (validMask!0 mask!3709))))

(assert (=> start!29998 e!189963))

(assert (=> start!29998 true))

(declare-datatypes ((array!15219 0))(
  ( (array!15220 (arr!7200 (Array (_ BitVec 32) (_ BitVec 64))) (size!7552 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15219)

(declare-fun array_inv!5154 (array!15219) Bool)

(assert (=> start!29998 (array_inv!5154 a!3293)))

(declare-fun b!300878 () Bool)

(declare-fun res!158784 () Bool)

(assert (=> b!300878 (=> (not res!158784) (not e!189963))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15219 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300878 (= res!158784 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!300877 () Bool)

(declare-fun res!158787 () Bool)

(assert (=> b!300877 (=> (not res!158787) (not e!189963))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300877 (= res!158787 (validKeyInArray!0 k!2441))))

(declare-fun b!300879 () Bool)

(assert (=> b!300879 (= e!189963 (bvslt mask!3709 #b00000000000000000000000000000000))))

(declare-fun b!300876 () Bool)

(declare-fun res!158786 () Bool)

(assert (=> b!300876 (=> (not res!158786) (not e!189963))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!300876 (= res!158786 (and (= (size!7552 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7552 a!3293))))))

(assert (= (and start!29998 res!158785) b!300876))

(assert (= (and b!300876 res!158786) b!300877))

(assert (= (and b!300877 res!158787) b!300878))

(assert (= (and b!300878 res!158784) b!300879))

(declare-fun m!312791 () Bool)

(assert (=> start!29998 m!312791))

(declare-fun m!312793 () Bool)

(assert (=> start!29998 m!312793))

(declare-fun m!312795 () Bool)

(assert (=> b!300878 m!312795))

(declare-fun m!312797 () Bool)

(assert (=> b!300877 m!312797))

(push 1)

(assert (not b!300877))

(assert (not b!300878))

(assert (not start!29998))

(check-sat)

(pop 1)

(push 1)

(check-sat)

