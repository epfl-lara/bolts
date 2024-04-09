; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27742 () Bool)

(assert start!27742)

(declare-fun res!148067 () Bool)

(declare-fun e!181210 () Bool)

(assert (=> start!27742 (=> (not res!148067) (not e!181210))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27742 (= res!148067 (validMask!0 mask!3809))))

(assert (=> start!27742 e!181210))

(assert (=> start!27742 true))

(declare-datatypes ((array!14267 0))(
  ( (array!14268 (arr!6769 (Array (_ BitVec 32) (_ BitVec 64))) (size!7121 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14267)

(declare-fun array_inv!4723 (array!14267) Bool)

(assert (=> start!27742 (array_inv!4723 a!3312)))

(declare-fun b!285877 () Bool)

(declare-fun res!148068 () Bool)

(assert (=> b!285877 (=> (not res!148068) (not e!181210))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!285877 (= res!148068 (and (= (size!7121 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7121 a!3312))))))

(declare-fun b!285878 () Bool)

(declare-fun res!148066 () Bool)

(assert (=> b!285878 (=> (not res!148066) (not e!181210))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285878 (= res!148066 (validKeyInArray!0 k!2524))))

(declare-fun b!285879 () Bool)

(assert (=> b!285879 (= e!181210 (and (bvslt #b00000000000000000000000000000000 (size!7121 a!3312)) (bvsge (size!7121 a!3312) #b01111111111111111111111111111111)))))

(assert (= (and start!27742 res!148067) b!285877))

(assert (= (and b!285877 res!148068) b!285878))

(assert (= (and b!285878 res!148066) b!285879))

(declare-fun m!300721 () Bool)

(assert (=> start!27742 m!300721))

(declare-fun m!300723 () Bool)

(assert (=> start!27742 m!300723))

(declare-fun m!300725 () Bool)

(assert (=> b!285878 m!300725))

(push 1)

(assert (not start!27742))

(assert (not b!285878))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

