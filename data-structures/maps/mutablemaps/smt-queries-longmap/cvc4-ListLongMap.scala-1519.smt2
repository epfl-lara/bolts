; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28658 () Bool)

(assert start!28658)

(declare-fun b!292813 () Bool)

(declare-fun res!153907 () Bool)

(declare-fun e!185215 () Bool)

(assert (=> b!292813 (=> (not res!153907) (not e!185215))))

(declare-datatypes ((array!14826 0))(
  ( (array!14827 (arr!7035 (Array (_ BitVec 32) (_ BitVec 64))) (size!7387 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14826)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292813 (= res!153907 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292815 () Bool)

(declare-fun res!153911 () Bool)

(assert (=> b!292815 (=> (not res!153911) (not e!185215))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292815 (= res!153911 (validKeyInArray!0 k!2524))))

(declare-fun b!292816 () Bool)

(declare-fun res!153909 () Bool)

(assert (=> b!292816 (=> (not res!153909) (not e!185215))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!292816 (= res!153909 (and (= (size!7387 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7387 a!3312))))))

(declare-fun b!292817 () Bool)

(declare-fun res!153908 () Bool)

(declare-fun e!185214 () Bool)

(assert (=> b!292817 (=> (not res!153908) (not e!185214))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14826 (_ BitVec 32)) Bool)

(assert (=> b!292817 (= res!153908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292818 () Bool)

(assert (=> b!292818 (= e!185215 e!185214)))

(declare-fun res!153912 () Bool)

(assert (=> b!292818 (=> (not res!153912) (not e!185214))))

(declare-datatypes ((SeekEntryResult!2195 0))(
  ( (MissingZero!2195 (index!10950 (_ BitVec 32))) (Found!2195 (index!10951 (_ BitVec 32))) (Intermediate!2195 (undefined!3007 Bool) (index!10952 (_ BitVec 32)) (x!29098 (_ BitVec 32))) (Undefined!2195) (MissingVacant!2195 (index!10953 (_ BitVec 32))) )
))
(declare-fun lt!145145 () SeekEntryResult!2195)

(assert (=> b!292818 (= res!153912 (or (= lt!145145 (MissingZero!2195 i!1256)) (= lt!145145 (MissingVacant!2195 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14826 (_ BitVec 32)) SeekEntryResult!2195)

(assert (=> b!292818 (= lt!145145 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!292814 () Bool)

(assert (=> b!292814 (= e!185214 false)))

(declare-fun lt!145144 () (_ BitVec 32))

(declare-fun lt!145142 () SeekEntryResult!2195)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14826 (_ BitVec 32)) SeekEntryResult!2195)

(assert (=> b!292814 (= lt!145142 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145144 k!2524 (array!14827 (store (arr!7035 a!3312) i!1256 k!2524) (size!7387 a!3312)) mask!3809))))

(declare-fun lt!145143 () SeekEntryResult!2195)

(assert (=> b!292814 (= lt!145143 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145144 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292814 (= lt!145144 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!153910 () Bool)

(assert (=> start!28658 (=> (not res!153910) (not e!185215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28658 (= res!153910 (validMask!0 mask!3809))))

(assert (=> start!28658 e!185215))

(assert (=> start!28658 true))

(declare-fun array_inv!4989 (array!14826) Bool)

(assert (=> start!28658 (array_inv!4989 a!3312)))

(assert (= (and start!28658 res!153910) b!292816))

(assert (= (and b!292816 res!153909) b!292815))

(assert (= (and b!292815 res!153911) b!292813))

(assert (= (and b!292813 res!153907) b!292818))

(assert (= (and b!292818 res!153912) b!292817))

(assert (= (and b!292817 res!153908) b!292814))

(declare-fun m!306635 () Bool)

(assert (=> b!292815 m!306635))

(declare-fun m!306637 () Bool)

(assert (=> b!292813 m!306637))

(declare-fun m!306639 () Bool)

(assert (=> start!28658 m!306639))

(declare-fun m!306641 () Bool)

(assert (=> start!28658 m!306641))

(declare-fun m!306643 () Bool)

(assert (=> b!292817 m!306643))

(declare-fun m!306645 () Bool)

(assert (=> b!292814 m!306645))

(declare-fun m!306647 () Bool)

(assert (=> b!292814 m!306647))

(declare-fun m!306649 () Bool)

(assert (=> b!292814 m!306649))

(declare-fun m!306651 () Bool)

(assert (=> b!292814 m!306651))

(declare-fun m!306653 () Bool)

(assert (=> b!292818 m!306653))

(push 1)

(assert (not b!292818))

