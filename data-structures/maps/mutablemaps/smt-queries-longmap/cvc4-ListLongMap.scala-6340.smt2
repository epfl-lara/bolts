; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81728 () Bool)

(assert start!81728)

(declare-fun res!638685 () Bool)

(declare-fun e!537024 () Bool)

(assert (=> start!81728 (=> (not res!638685) (not e!537024))))

(declare-fun mask!4034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81728 (= res!638685 (validMask!0 mask!4034))))

(assert (=> start!81728 e!537024))

(assert (=> start!81728 true))

(declare-datatypes ((array!57762 0))(
  ( (array!57763 (arr!27763 (Array (_ BitVec 32) (_ BitVec 64))) (size!28243 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57762)

(declare-fun array_inv!21496 (array!57762) Bool)

(assert (=> start!81728 (array_inv!21496 a!3460)))

(declare-fun b!953354 () Bool)

(declare-fun res!638686 () Bool)

(assert (=> b!953354 (=> (not res!638686) (not e!537024))))

(declare-fun i!1375 () (_ BitVec 32))

(declare-fun k!2725 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9171 0))(
  ( (MissingZero!9171 (index!39054 (_ BitVec 32))) (Found!9171 (index!39055 (_ BitVec 32))) (Intermediate!9171 (undefined!9983 Bool) (index!39056 (_ BitVec 32)) (x!82068 (_ BitVec 32))) (Undefined!9171) (MissingVacant!9171 (index!39057 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57762 (_ BitVec 32)) SeekEntryResult!9171)

(assert (=> b!953354 (= res!638686 (= (seekEntryOrOpen!0 k!2725 a!3460 mask!4034) (Found!9171 i!1375)))))

(declare-fun b!953355 () Bool)

(declare-fun lt!429675 () SeekEntryResult!9171)

(assert (=> b!953355 (= e!537024 (or (not (is-Found!9171 lt!429675)) (not (= (index!39055 lt!429675) i!1375))))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57762 (_ BitVec 32)) SeekEntryResult!9171)

(assert (=> b!953355 (= lt!429675 (seekEntry!0 k!2725 a!3460 mask!4034))))

(declare-fun b!953356 () Bool)

(declare-fun res!638684 () Bool)

(assert (=> b!953356 (=> (not res!638684) (not e!537024))))

(assert (=> b!953356 (= res!638684 (= (size!28243 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953357 () Bool)

(declare-fun res!638683 () Bool)

(assert (=> b!953357 (=> (not res!638683) (not e!537024))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!953357 (= res!638683 (validKeyInArray!0 k!2725))))

(declare-fun b!953358 () Bool)

(declare-fun res!638687 () Bool)

(assert (=> b!953358 (=> (not res!638687) (not e!537024))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57762 (_ BitVec 32)) Bool)

(assert (=> b!953358 (= res!638687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(assert (= (and start!81728 res!638685) b!953356))

(assert (= (and b!953356 res!638684) b!953358))

(assert (= (and b!953358 res!638687) b!953357))

(assert (= (and b!953357 res!638683) b!953354))

(assert (= (and b!953354 res!638686) b!953355))

(declare-fun m!885503 () Bool)

(assert (=> b!953355 m!885503))

(declare-fun m!885505 () Bool)

(assert (=> b!953358 m!885505))

(declare-fun m!885507 () Bool)

(assert (=> start!81728 m!885507))

(declare-fun m!885509 () Bool)

(assert (=> start!81728 m!885509))

(declare-fun m!885511 () Bool)

(assert (=> b!953357 m!885511))

(declare-fun m!885513 () Bool)

(assert (=> b!953354 m!885513))

(push 1)

(assert (not b!953358))

(assert (not b!953357))

(assert (not b!953355))

(assert (not start!81728))

(assert (not b!953354))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!115603 () Bool)

(assert (=> d!115603 (= (validMask!0 mask!4034) (and (or (= mask!4034 #b00000000000000000000000000000111) (= mask!4034 #b00000000000000000000000000001111) (= mask!4034 #b00000000000000000000000000011111) (= mask!4034 #b00000000000000000000000000111111) (= mask!4034 #b00000000000000000000000001111111) (= mask!4034 #b00000000000000000000000011111111) (= mask!4034 #b00000000000000000000000111111111) (= mask!4034 #b00000000000000000000001111111111) (= mask!4034 #b00000000000000000000011111111111) (= mask!4034 #b00000000000000000000111111111111) (= mask!4034 #b00000000000000000001111111111111) (= mask!4034 #b00000000000000000011111111111111) (= mask!4034 #b00000000000000000111111111111111) (= mask!4034 #b00000000000000001111111111111111) (= mask!4034 #b00000000000000011111111111111111) (= mask!4034 #b00000000000000111111111111111111) (= mask!4034 #b00000000000001111111111111111111) (= mask!4034 #b00000000000011111111111111111111) (= mask!4034 #b00000000000111111111111111111111) (= mask!4034 #b00000000001111111111111111111111) (= mask!4034 #b00000000011111111111111111111111) (= mask!4034 #b00000000111111111111111111111111) (= mask!4034 #b00000001111111111111111111111111) (= mask!4034 #b00000011111111111111111111111111) (= mask!4034 #b00000111111111111111111111111111) (= mask!4034 #b00001111111111111111111111111111) (= mask!4034 #b00011111111111111111111111111111) (= mask!4034 #b00111111111111111111111111111111)) (bvsle mask!4034 #b00111111111111111111111111111111)))))

(assert (=> start!81728 d!115603))

(declare-fun d!115609 () Bool)

(assert (=> d!115609 (= (array_inv!21496 a!3460) (bvsge (size!28243 a!3460) #b00000000000000000000000000000000))))

(assert (=> start!81728 d!115609))

(declare-fun b!953431 () Bool)

(declare-fun c!99742 () Bool)

(declare-fun lt!429723 () (_ BitVec 64))

(assert (=> b!953431 (= c!99742 (= lt!429723 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!537070 () SeekEntryResult!9171)

(declare-fun e!537069 () SeekEntryResult!9171)

(assert (=> b!953431 (= e!537070 e!537069)))

