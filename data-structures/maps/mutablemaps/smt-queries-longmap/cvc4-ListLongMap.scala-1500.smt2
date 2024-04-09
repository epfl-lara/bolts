; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28448 () Bool)

(assert start!28448)

(declare-fun b!291174 () Bool)

(declare-fun res!152556 () Bool)

(declare-fun e!184254 () Bool)

(assert (=> b!291174 (=> (not res!152556) (not e!184254))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291174 (= res!152556 (validKeyInArray!0 k!2524))))

(declare-fun b!291175 () Bool)

(declare-fun e!184256 () Bool)

(declare-fun e!184257 () Bool)

(assert (=> b!291175 (= e!184256 e!184257)))

(declare-fun res!152550 () Bool)

(assert (=> b!291175 (=> (not res!152550) (not e!184257))))

(declare-fun lt!144053 () Bool)

(declare-datatypes ((SeekEntryResult!2138 0))(
  ( (MissingZero!2138 (index!10722 (_ BitVec 32))) (Found!2138 (index!10723 (_ BitVec 32))) (Intermediate!2138 (undefined!2950 Bool) (index!10724 (_ BitVec 32)) (x!28877 (_ BitVec 32))) (Undefined!2138) (MissingVacant!2138 (index!10725 (_ BitVec 32))) )
))
(declare-fun lt!144052 () SeekEntryResult!2138)

(declare-datatypes ((array!14706 0))(
  ( (array!14707 (arr!6978 (Array (_ BitVec 32) (_ BitVec 64))) (size!7330 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14706)

(assert (=> b!291175 (= res!152550 (and (or lt!144053 (not (undefined!2950 lt!144052))) (not lt!144053) (= (select (arr!6978 a!3312) (index!10724 lt!144052)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!291175 (= lt!144053 (not (is-Intermediate!2138 lt!144052)))))

(declare-fun b!291176 () Bool)

(assert (=> b!291176 (= e!184257 (not (= lt!144052 (Intermediate!2138 false (index!10724 lt!144052) (x!28877 lt!144052)))))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!291176 (= (index!10724 lt!144052) i!1256)))

(declare-fun res!152554 () Bool)

(assert (=> start!28448 (=> (not res!152554) (not e!184254))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28448 (= res!152554 (validMask!0 mask!3809))))

(assert (=> start!28448 e!184254))

(assert (=> start!28448 true))

(declare-fun array_inv!4932 (array!14706) Bool)

(assert (=> start!28448 (array_inv!4932 a!3312)))

(declare-fun b!291173 () Bool)

(declare-fun e!184255 () Bool)

(assert (=> b!291173 (= e!184255 e!184256)))

(declare-fun res!152549 () Bool)

(assert (=> b!291173 (=> (not res!152549) (not e!184256))))

(declare-fun lt!144049 () SeekEntryResult!2138)

(declare-fun lt!144050 () Bool)

(assert (=> b!291173 (= res!152549 (and (not lt!144050) (= lt!144049 (MissingVacant!2138 i!1256))))))

(declare-fun lt!144048 () SeekEntryResult!2138)

(declare-fun lt!144051 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14706 (_ BitVec 32)) SeekEntryResult!2138)

(assert (=> b!291173 (= lt!144048 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144051 k!2524 (array!14707 (store (arr!6978 a!3312) i!1256 k!2524) (size!7330 a!3312)) mask!3809))))

(assert (=> b!291173 (= lt!144052 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144051 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291173 (= lt!144051 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!291177 () Bool)

(assert (=> b!291177 (= e!184254 e!184255)))

(declare-fun res!152555 () Bool)

(assert (=> b!291177 (=> (not res!152555) (not e!184255))))

(assert (=> b!291177 (= res!152555 (or lt!144050 (= lt!144049 (MissingVacant!2138 i!1256))))))

(assert (=> b!291177 (= lt!144050 (= lt!144049 (MissingZero!2138 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14706 (_ BitVec 32)) SeekEntryResult!2138)

(assert (=> b!291177 (= lt!144049 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!291178 () Bool)

(declare-fun res!152552 () Bool)

(assert (=> b!291178 (=> (not res!152552) (not e!184254))))

(assert (=> b!291178 (= res!152552 (and (= (size!7330 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7330 a!3312))))))

(declare-fun b!291179 () Bool)

(declare-fun res!152551 () Bool)

(assert (=> b!291179 (=> (not res!152551) (not e!184255))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14706 (_ BitVec 32)) Bool)

(assert (=> b!291179 (= res!152551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!291180 () Bool)

(declare-fun res!152553 () Bool)

(assert (=> b!291180 (=> (not res!152553) (not e!184254))))

(declare-fun arrayContainsKey!0 (array!14706 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291180 (= res!152553 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28448 res!152554) b!291178))

(assert (= (and b!291178 res!152552) b!291174))

(assert (= (and b!291174 res!152556) b!291180))

(assert (= (and b!291180 res!152553) b!291177))

(assert (= (and b!291177 res!152555) b!291179))

(assert (= (and b!291179 res!152551) b!291173))

(assert (= (and b!291173 res!152549) b!291175))

(assert (= (and b!291175 res!152550) b!291176))

(declare-fun m!305169 () Bool)

(assert (=> b!291177 m!305169))

(declare-fun m!305171 () Bool)

(assert (=> b!291180 m!305171))

(declare-fun m!305173 () Bool)

(assert (=> start!28448 m!305173))

(declare-fun m!305175 () Bool)

(assert (=> start!28448 m!305175))

(declare-fun m!305177 () Bool)

(assert (=> b!291179 m!305177))

(declare-fun m!305179 () Bool)

(assert (=> b!291173 m!305179))

(declare-fun m!305181 () Bool)

(assert (=> b!291173 m!305181))

(declare-fun m!305183 () Bool)

(assert (=> b!291173 m!305183))

(declare-fun m!305185 () Bool)

(assert (=> b!291173 m!305185))

(declare-fun m!305187 () Bool)

(assert (=> b!291175 m!305187))

(declare-fun m!305189 () Bool)

(assert (=> b!291174 m!305189))

(push 1)

