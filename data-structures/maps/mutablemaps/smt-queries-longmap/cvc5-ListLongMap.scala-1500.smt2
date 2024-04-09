; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28444 () Bool)

(assert start!28444)

(declare-fun res!152506 () Bool)

(declare-fun e!184224 () Bool)

(assert (=> start!28444 (=> (not res!152506) (not e!184224))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28444 (= res!152506 (validMask!0 mask!3809))))

(assert (=> start!28444 e!184224))

(assert (=> start!28444 true))

(declare-datatypes ((array!14702 0))(
  ( (array!14703 (arr!6976 (Array (_ BitVec 32) (_ BitVec 64))) (size!7328 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14702)

(declare-fun array_inv!4930 (array!14702) Bool)

(assert (=> start!28444 (array_inv!4930 a!3312)))

(declare-fun b!291125 () Bool)

(declare-fun e!184225 () Bool)

(declare-fun e!184226 () Bool)

(assert (=> b!291125 (= e!184225 e!184226)))

(declare-fun res!152505 () Bool)

(assert (=> b!291125 (=> (not res!152505) (not e!184226))))

(declare-fun lt!144016 () Bool)

(declare-datatypes ((SeekEntryResult!2136 0))(
  ( (MissingZero!2136 (index!10714 (_ BitVec 32))) (Found!2136 (index!10715 (_ BitVec 32))) (Intermediate!2136 (undefined!2948 Bool) (index!10716 (_ BitVec 32)) (x!28875 (_ BitVec 32))) (Undefined!2136) (MissingVacant!2136 (index!10717 (_ BitVec 32))) )
))
(declare-fun lt!144015 () SeekEntryResult!2136)

(assert (=> b!291125 (= res!152505 (and (or lt!144016 (not (undefined!2948 lt!144015))) (not lt!144016) (= (select (arr!6976 a!3312) (index!10716 lt!144015)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!291125 (= lt!144016 (not (is-Intermediate!2136 lt!144015)))))

(declare-fun b!291126 () Bool)

(declare-fun res!152503 () Bool)

(assert (=> b!291126 (=> (not res!152503) (not e!184224))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14702 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291126 (= res!152503 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!291127 () Bool)

(declare-fun res!152502 () Bool)

(declare-fun e!184227 () Bool)

(assert (=> b!291127 (=> (not res!152502) (not e!184227))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14702 (_ BitVec 32)) Bool)

(assert (=> b!291127 (= res!152502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!291128 () Bool)

(assert (=> b!291128 (= e!184227 e!184225)))

(declare-fun res!152508 () Bool)

(assert (=> b!291128 (=> (not res!152508) (not e!184225))))

(declare-fun lt!144014 () SeekEntryResult!2136)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!144017 () Bool)

(assert (=> b!291128 (= res!152508 (and (not lt!144017) (= lt!144014 (MissingVacant!2136 i!1256))))))

(declare-fun lt!144012 () (_ BitVec 32))

(declare-fun lt!144013 () SeekEntryResult!2136)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14702 (_ BitVec 32)) SeekEntryResult!2136)

(assert (=> b!291128 (= lt!144013 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144012 k!2524 (array!14703 (store (arr!6976 a!3312) i!1256 k!2524) (size!7328 a!3312)) mask!3809))))

(assert (=> b!291128 (= lt!144015 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144012 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291128 (= lt!144012 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!291129 () Bool)

(declare-fun res!152501 () Bool)

(assert (=> b!291129 (=> (not res!152501) (not e!184224))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291129 (= res!152501 (validKeyInArray!0 k!2524))))

(declare-fun b!291130 () Bool)

(declare-fun res!152504 () Bool)

(assert (=> b!291130 (=> (not res!152504) (not e!184224))))

(assert (=> b!291130 (= res!152504 (and (= (size!7328 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7328 a!3312))))))

(declare-fun b!291131 () Bool)

(assert (=> b!291131 (= e!184224 e!184227)))

(declare-fun res!152507 () Bool)

(assert (=> b!291131 (=> (not res!152507) (not e!184227))))

(assert (=> b!291131 (= res!152507 (or lt!144017 (= lt!144014 (MissingVacant!2136 i!1256))))))

(assert (=> b!291131 (= lt!144017 (= lt!144014 (MissingZero!2136 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14702 (_ BitVec 32)) SeekEntryResult!2136)

(assert (=> b!291131 (= lt!144014 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!291132 () Bool)

(assert (=> b!291132 (= e!184226 (not (= lt!144015 (Intermediate!2136 false (index!10716 lt!144015) (x!28875 lt!144015)))))))

(assert (=> b!291132 (= (index!10716 lt!144015) i!1256)))

(assert (= (and start!28444 res!152506) b!291130))

(assert (= (and b!291130 res!152504) b!291129))

(assert (= (and b!291129 res!152501) b!291126))

(assert (= (and b!291126 res!152503) b!291131))

(assert (= (and b!291131 res!152507) b!291127))

(assert (= (and b!291127 res!152502) b!291128))

(assert (= (and b!291128 res!152508) b!291125))

(assert (= (and b!291125 res!152505) b!291132))

(declare-fun m!305125 () Bool)

(assert (=> b!291126 m!305125))

(declare-fun m!305127 () Bool)

(assert (=> b!291128 m!305127))

(declare-fun m!305129 () Bool)

(assert (=> b!291128 m!305129))

(declare-fun m!305131 () Bool)

(assert (=> b!291128 m!305131))

(declare-fun m!305133 () Bool)

(assert (=> b!291128 m!305133))

(declare-fun m!305135 () Bool)

(assert (=> b!291125 m!305135))

(declare-fun m!305137 () Bool)

(assert (=> b!291129 m!305137))

(declare-fun m!305139 () Bool)

(assert (=> b!291131 m!305139))

(declare-fun m!305141 () Bool)

(assert (=> start!28444 m!305141))

(declare-fun m!305143 () Bool)

(assert (=> start!28444 m!305143))

(declare-fun m!305145 () Bool)

(assert (=> b!291127 m!305145))

(push 1)

