; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27938 () Bool)

(assert start!27938)

(declare-fun b!286819 () Bool)

(declare-fun e!181717 () Bool)

(assert (=> b!286819 (= e!181717 false)))

(declare-fun lt!141305 () (_ BitVec 32))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286819 (= lt!141305 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!286820 () Bool)

(declare-fun res!148868 () Bool)

(declare-fun e!181715 () Bool)

(assert (=> b!286820 (=> (not res!148868) (not e!181715))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286820 (= res!148868 (validKeyInArray!0 k!2524))))

(declare-fun b!286821 () Bool)

(declare-fun res!148867 () Bool)

(assert (=> b!286821 (=> (not res!148867) (not e!181715))))

(declare-datatypes ((array!14376 0))(
  ( (array!14377 (arr!6819 (Array (_ BitVec 32) (_ BitVec 64))) (size!7171 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14376)

(declare-fun arrayContainsKey!0 (array!14376 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286821 (= res!148867 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286822 () Bool)

(assert (=> b!286822 (= e!181715 e!181717)))

(declare-fun res!148872 () Bool)

(assert (=> b!286822 (=> (not res!148872) (not e!181717))))

(declare-datatypes ((SeekEntryResult!1979 0))(
  ( (MissingZero!1979 (index!10086 (_ BitVec 32))) (Found!1979 (index!10087 (_ BitVec 32))) (Intermediate!1979 (undefined!2791 Bool) (index!10088 (_ BitVec 32)) (x!28270 (_ BitVec 32))) (Undefined!1979) (MissingVacant!1979 (index!10089 (_ BitVec 32))) )
))
(declare-fun lt!141304 () SeekEntryResult!1979)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286822 (= res!148872 (or (= lt!141304 (MissingZero!1979 i!1256)) (= lt!141304 (MissingVacant!1979 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14376 (_ BitVec 32)) SeekEntryResult!1979)

(assert (=> b!286822 (= lt!141304 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286823 () Bool)

(declare-fun res!148869 () Bool)

(assert (=> b!286823 (=> (not res!148869) (not e!181717))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14376 (_ BitVec 32)) Bool)

(assert (=> b!286823 (= res!148869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!148870 () Bool)

(assert (=> start!27938 (=> (not res!148870) (not e!181715))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27938 (= res!148870 (validMask!0 mask!3809))))

(assert (=> start!27938 e!181715))

(assert (=> start!27938 true))

(declare-fun array_inv!4773 (array!14376) Bool)

(assert (=> start!27938 (array_inv!4773 a!3312)))

(declare-fun b!286824 () Bool)

(declare-fun res!148871 () Bool)

(assert (=> b!286824 (=> (not res!148871) (not e!181715))))

(assert (=> b!286824 (= res!148871 (and (= (size!7171 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7171 a!3312))))))

(assert (= (and start!27938 res!148870) b!286824))

(assert (= (and b!286824 res!148871) b!286820))

(assert (= (and b!286820 res!148868) b!286821))

(assert (= (and b!286821 res!148867) b!286822))

(assert (= (and b!286822 res!148872) b!286823))

(assert (= (and b!286823 res!148869) b!286819))

(declare-fun m!301433 () Bool)

(assert (=> b!286823 m!301433))

(declare-fun m!301435 () Bool)

(assert (=> b!286822 m!301435))

(declare-fun m!301437 () Bool)

(assert (=> b!286820 m!301437))

(declare-fun m!301439 () Bool)

(assert (=> start!27938 m!301439))

(declare-fun m!301441 () Bool)

(assert (=> start!27938 m!301441))

(declare-fun m!301443 () Bool)

(assert (=> b!286819 m!301443))

(declare-fun m!301445 () Bool)

(assert (=> b!286821 m!301445))

(push 1)

(assert (not b!286820))

(assert (not b!286822))

(assert (not b!286823))

(assert (not b!286821))

(assert (not start!27938))

