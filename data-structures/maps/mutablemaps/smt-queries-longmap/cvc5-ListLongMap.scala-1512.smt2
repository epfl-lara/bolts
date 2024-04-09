; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28612 () Bool)

(assert start!28612)

(declare-fun b!292399 () Bool)

(declare-fun res!153497 () Bool)

(declare-fun e!185007 () Bool)

(assert (=> b!292399 (=> (not res!153497) (not e!185007))))

(declare-datatypes ((array!14780 0))(
  ( (array!14781 (arr!7012 (Array (_ BitVec 32) (_ BitVec 64))) (size!7364 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14780)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14780 (_ BitVec 32)) Bool)

(assert (=> b!292399 (= res!153497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!153494 () Bool)

(declare-fun e!185008 () Bool)

(assert (=> start!28612 (=> (not res!153494) (not e!185008))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28612 (= res!153494 (validMask!0 mask!3809))))

(assert (=> start!28612 e!185008))

(assert (=> start!28612 true))

(declare-fun array_inv!4966 (array!14780) Bool)

(assert (=> start!28612 (array_inv!4966 a!3312)))

(declare-fun b!292400 () Bool)

(declare-fun res!153496 () Bool)

(assert (=> b!292400 (=> (not res!153496) (not e!185008))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14780 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292400 (= res!153496 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292401 () Bool)

(assert (=> b!292401 (= e!185008 e!185007)))

(declare-fun res!153495 () Bool)

(assert (=> b!292401 (=> (not res!153495) (not e!185007))))

(declare-datatypes ((SeekEntryResult!2172 0))(
  ( (MissingZero!2172 (index!10858 (_ BitVec 32))) (Found!2172 (index!10859 (_ BitVec 32))) (Intermediate!2172 (undefined!2984 Bool) (index!10860 (_ BitVec 32)) (x!29019 (_ BitVec 32))) (Undefined!2172) (MissingVacant!2172 (index!10861 (_ BitVec 32))) )
))
(declare-fun lt!144867 () SeekEntryResult!2172)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292401 (= res!153495 (or (= lt!144867 (MissingZero!2172 i!1256)) (= lt!144867 (MissingVacant!2172 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14780 (_ BitVec 32)) SeekEntryResult!2172)

(assert (=> b!292401 (= lt!144867 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!292402 () Bool)

(declare-fun res!153498 () Bool)

(assert (=> b!292402 (=> (not res!153498) (not e!185008))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292402 (= res!153498 (validKeyInArray!0 k!2524))))

(declare-fun b!292403 () Bool)

(assert (=> b!292403 (= e!185007 false)))

(declare-fun lt!144866 () SeekEntryResult!2172)

(declare-fun lt!144869 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14780 (_ BitVec 32)) SeekEntryResult!2172)

(assert (=> b!292403 (= lt!144866 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144869 k!2524 (array!14781 (store (arr!7012 a!3312) i!1256 k!2524) (size!7364 a!3312)) mask!3809))))

(declare-fun lt!144868 () SeekEntryResult!2172)

(assert (=> b!292403 (= lt!144868 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144869 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292403 (= lt!144869 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!292404 () Bool)

(declare-fun res!153493 () Bool)

(assert (=> b!292404 (=> (not res!153493) (not e!185008))))

(assert (=> b!292404 (= res!153493 (and (= (size!7364 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7364 a!3312))))))

(assert (= (and start!28612 res!153494) b!292404))

(assert (= (and b!292404 res!153493) b!292402))

(assert (= (and b!292402 res!153498) b!292400))

(assert (= (and b!292400 res!153496) b!292401))

(assert (= (and b!292401 res!153495) b!292399))

(assert (= (and b!292399 res!153497) b!292403))

(declare-fun m!306175 () Bool)

(assert (=> b!292399 m!306175))

(declare-fun m!306177 () Bool)

(assert (=> b!292400 m!306177))

(declare-fun m!306179 () Bool)

(assert (=> b!292401 m!306179))

(declare-fun m!306181 () Bool)

(assert (=> b!292402 m!306181))

(declare-fun m!306183 () Bool)

(assert (=> start!28612 m!306183))

(declare-fun m!306185 () Bool)

(assert (=> start!28612 m!306185))

(declare-fun m!306187 () Bool)

(assert (=> b!292403 m!306187))

(declare-fun m!306189 () Bool)

(assert (=> b!292403 m!306189))

(declare-fun m!306191 () Bool)

(assert (=> b!292403 m!306191))

(declare-fun m!306193 () Bool)

(assert (=> b!292403 m!306193))

(push 1)

