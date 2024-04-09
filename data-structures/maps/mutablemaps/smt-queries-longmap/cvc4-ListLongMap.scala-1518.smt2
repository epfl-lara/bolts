; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28652 () Bool)

(assert start!28652)

(declare-fun b!292759 () Bool)

(declare-fun res!153853 () Bool)

(declare-fun e!185186 () Bool)

(assert (=> b!292759 (=> (not res!153853) (not e!185186))))

(declare-datatypes ((array!14820 0))(
  ( (array!14821 (arr!7032 (Array (_ BitVec 32) (_ BitVec 64))) (size!7384 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14820)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14820 (_ BitVec 32)) Bool)

(assert (=> b!292759 (= res!153853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292760 () Bool)

(declare-fun e!185187 () Bool)

(assert (=> b!292760 (= e!185187 e!185186)))

(declare-fun res!153854 () Bool)

(assert (=> b!292760 (=> (not res!153854) (not e!185186))))

(declare-datatypes ((SeekEntryResult!2192 0))(
  ( (MissingZero!2192 (index!10938 (_ BitVec 32))) (Found!2192 (index!10939 (_ BitVec 32))) (Intermediate!2192 (undefined!3004 Bool) (index!10940 (_ BitVec 32)) (x!29087 (_ BitVec 32))) (Undefined!2192) (MissingVacant!2192 (index!10941 (_ BitVec 32))) )
))
(declare-fun lt!145107 () SeekEntryResult!2192)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292760 (= res!153854 (or (= lt!145107 (MissingZero!2192 i!1256)) (= lt!145107 (MissingVacant!2192 i!1256))))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14820 (_ BitVec 32)) SeekEntryResult!2192)

(assert (=> b!292760 (= lt!145107 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!292761 () Bool)

(declare-fun res!153857 () Bool)

(assert (=> b!292761 (=> (not res!153857) (not e!185187))))

(declare-fun arrayContainsKey!0 (array!14820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292761 (= res!153857 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292762 () Bool)

(declare-fun res!153855 () Bool)

(assert (=> b!292762 (=> (not res!153855) (not e!185187))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292762 (= res!153855 (validKeyInArray!0 k!2524))))

(declare-fun b!292763 () Bool)

(declare-fun res!153856 () Bool)

(assert (=> b!292763 (=> (not res!153856) (not e!185187))))

(assert (=> b!292763 (= res!153856 (and (= (size!7384 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7384 a!3312))))))

(declare-fun res!153858 () Bool)

(assert (=> start!28652 (=> (not res!153858) (not e!185187))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28652 (= res!153858 (validMask!0 mask!3809))))

(assert (=> start!28652 e!185187))

(assert (=> start!28652 true))

(declare-fun array_inv!4986 (array!14820) Bool)

(assert (=> start!28652 (array_inv!4986 a!3312)))

(declare-fun b!292764 () Bool)

(assert (=> b!292764 (= e!185186 false)))

(declare-fun lt!145106 () (_ BitVec 32))

(declare-fun lt!145108 () SeekEntryResult!2192)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14820 (_ BitVec 32)) SeekEntryResult!2192)

(assert (=> b!292764 (= lt!145108 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145106 k!2524 (array!14821 (store (arr!7032 a!3312) i!1256 k!2524) (size!7384 a!3312)) mask!3809))))

(declare-fun lt!145109 () SeekEntryResult!2192)

(assert (=> b!292764 (= lt!145109 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145106 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292764 (= lt!145106 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28652 res!153858) b!292763))

(assert (= (and b!292763 res!153856) b!292762))

(assert (= (and b!292762 res!153855) b!292761))

(assert (= (and b!292761 res!153857) b!292760))

(assert (= (and b!292760 res!153854) b!292759))

(assert (= (and b!292759 res!153853) b!292764))

(declare-fun m!306575 () Bool)

(assert (=> start!28652 m!306575))

(declare-fun m!306577 () Bool)

(assert (=> start!28652 m!306577))

(declare-fun m!306579 () Bool)

(assert (=> b!292764 m!306579))

(declare-fun m!306581 () Bool)

(assert (=> b!292764 m!306581))

(declare-fun m!306583 () Bool)

(assert (=> b!292764 m!306583))

(declare-fun m!306585 () Bool)

(assert (=> b!292764 m!306585))

(declare-fun m!306587 () Bool)

(assert (=> b!292762 m!306587))

(declare-fun m!306589 () Bool)

(assert (=> b!292760 m!306589))

(declare-fun m!306591 () Bool)

(assert (=> b!292759 m!306591))

(declare-fun m!306593 () Bool)

(assert (=> b!292761 m!306593))

(push 1)

(assert (not b!292761))

(assert (not b!292762))

(assert (not start!28652))

