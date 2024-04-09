; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29994 () Bool)

(assert start!29994)

(declare-fun b!300854 () Bool)

(declare-fun res!158760 () Bool)

(declare-fun e!189952 () Bool)

(assert (=> b!300854 (=> (not res!158760) (not e!189952))))

(declare-datatypes ((array!15215 0))(
  ( (array!15216 (arr!7198 (Array (_ BitVec 32) (_ BitVec 64))) (size!7550 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15215)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15215 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300854 (= res!158760 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!300855 () Bool)

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!300855 (= e!189952 (bvslt mask!3709 #b00000000000000000000000000000000))))

(declare-fun b!300852 () Bool)

(declare-fun res!158763 () Bool)

(assert (=> b!300852 (=> (not res!158763) (not e!189952))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!300852 (= res!158763 (and (= (size!7550 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7550 a!3293))))))

(declare-fun b!300853 () Bool)

(declare-fun res!158762 () Bool)

(assert (=> b!300853 (=> (not res!158762) (not e!189952))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300853 (= res!158762 (validKeyInArray!0 k!2441))))

(declare-fun res!158761 () Bool)

(assert (=> start!29994 (=> (not res!158761) (not e!189952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29994 (= res!158761 (validMask!0 mask!3709))))

(assert (=> start!29994 e!189952))

(assert (=> start!29994 true))

(declare-fun array_inv!5152 (array!15215) Bool)

(assert (=> start!29994 (array_inv!5152 a!3293)))

(assert (= (and start!29994 res!158761) b!300852))

(assert (= (and b!300852 res!158763) b!300853))

(assert (= (and b!300853 res!158762) b!300854))

(assert (= (and b!300854 res!158760) b!300855))

(declare-fun m!312775 () Bool)

(assert (=> b!300854 m!312775))

(declare-fun m!312777 () Bool)

(assert (=> b!300853 m!312777))

(declare-fun m!312779 () Bool)

(assert (=> start!29994 m!312779))

(declare-fun m!312781 () Bool)

(assert (=> start!29994 m!312781))

(push 1)

