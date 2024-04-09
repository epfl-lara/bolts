; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27746 () Bool)

(assert start!27746)

(declare-fun res!148084 () Bool)

(declare-fun e!181221 () Bool)

(assert (=> start!27746 (=> (not res!148084) (not e!181221))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27746 (= res!148084 (validMask!0 mask!3809))))

(assert (=> start!27746 e!181221))

(assert (=> start!27746 true))

(declare-datatypes ((array!14271 0))(
  ( (array!14272 (arr!6771 (Array (_ BitVec 32) (_ BitVec 64))) (size!7123 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14271)

(declare-fun array_inv!4725 (array!14271) Bool)

(assert (=> start!27746 (array_inv!4725 a!3312)))

(declare-fun b!285895 () Bool)

(declare-fun res!148085 () Bool)

(assert (=> b!285895 (=> (not res!148085) (not e!181221))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!285895 (= res!148085 (and (= (size!7123 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7123 a!3312))))))

(declare-fun b!285896 () Bool)

(declare-fun res!148086 () Bool)

(assert (=> b!285896 (=> (not res!148086) (not e!181221))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285896 (= res!148086 (validKeyInArray!0 k!2524))))

(declare-fun b!285897 () Bool)

(assert (=> b!285897 (= e!181221 (and (bvslt #b00000000000000000000000000000000 (size!7123 a!3312)) (bvsge (size!7123 a!3312) #b01111111111111111111111111111111)))))

(assert (= (and start!27746 res!148084) b!285895))

(assert (= (and b!285895 res!148085) b!285896))

(assert (= (and b!285896 res!148086) b!285897))

(declare-fun m!300733 () Bool)

(assert (=> start!27746 m!300733))

(declare-fun m!300735 () Bool)

(assert (=> start!27746 m!300735))

(declare-fun m!300737 () Bool)

(assert (=> b!285896 m!300737))

(push 1)

(assert (not start!27746))

(assert (not b!285896))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!65831 () Bool)

(assert (=> d!65831 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

