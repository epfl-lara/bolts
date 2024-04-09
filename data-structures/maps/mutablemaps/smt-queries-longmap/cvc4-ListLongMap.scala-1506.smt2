; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28580 () Bool)

(assert start!28580)

(declare-fun b!292037 () Bool)

(declare-fun res!153137 () Bool)

(declare-fun e!184789 () Bool)

(assert (=> b!292037 (=> (not res!153137) (not e!184789))))

(declare-datatypes ((array!14748 0))(
  ( (array!14749 (arr!6996 (Array (_ BitVec 32) (_ BitVec 64))) (size!7348 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14748)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14748 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292037 (= res!153137 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292038 () Bool)

(declare-fun e!184788 () Bool)

(assert (=> b!292038 (= e!184789 e!184788)))

(declare-fun res!153136 () Bool)

(assert (=> b!292038 (=> (not res!153136) (not e!184788))))

(declare-fun lt!144566 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2156 0))(
  ( (MissingZero!2156 (index!10794 (_ BitVec 32))) (Found!2156 (index!10795 (_ BitVec 32))) (Intermediate!2156 (undefined!2968 Bool) (index!10796 (_ BitVec 32)) (x!28955 (_ BitVec 32))) (Undefined!2156) (MissingVacant!2156 (index!10797 (_ BitVec 32))) )
))
(declare-fun lt!144567 () SeekEntryResult!2156)

(assert (=> b!292038 (= res!153136 (or lt!144566 (= lt!144567 (MissingVacant!2156 i!1256))))))

(assert (=> b!292038 (= lt!144566 (= lt!144567 (MissingZero!2156 i!1256)))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14748 (_ BitVec 32)) SeekEntryResult!2156)

(assert (=> b!292038 (= lt!144567 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!153138 () Bool)

(assert (=> start!28580 (=> (not res!153138) (not e!184789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28580 (= res!153138 (validMask!0 mask!3809))))

(assert (=> start!28580 e!184789))

(assert (=> start!28580 true))

(declare-fun array_inv!4950 (array!14748) Bool)

(assert (=> start!28580 (array_inv!4950 a!3312)))

(declare-fun b!292039 () Bool)

(declare-fun res!153131 () Bool)

(assert (=> b!292039 (=> (not res!153131) (not e!184789))))

(assert (=> b!292039 (= res!153131 (and (= (size!7348 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7348 a!3312))))))

(declare-fun b!292040 () Bool)

(declare-fun e!184790 () Bool)

(declare-fun e!184792 () Bool)

(assert (=> b!292040 (= e!184790 e!184792)))

(declare-fun res!153133 () Bool)

(assert (=> b!292040 (=> (not res!153133) (not e!184792))))

(declare-fun lt!144568 () Bool)

(declare-fun lt!144569 () SeekEntryResult!2156)

(assert (=> b!292040 (= res!153133 (and (or lt!144568 (not (undefined!2968 lt!144569))) (not lt!144568) (= (select (arr!6996 a!3312) (index!10796 lt!144569)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!292040 (= lt!144568 (not (is-Intermediate!2156 lt!144569)))))

(declare-fun b!292041 () Bool)

(declare-fun res!153134 () Bool)

(assert (=> b!292041 (=> (not res!153134) (not e!184788))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14748 (_ BitVec 32)) Bool)

(assert (=> b!292041 (= res!153134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292042 () Bool)

(declare-fun res!153132 () Bool)

(assert (=> b!292042 (=> (not res!153132) (not e!184789))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292042 (= res!153132 (validKeyInArray!0 k!2524))))

(declare-fun b!292043 () Bool)

(assert (=> b!292043 (= e!184792 (not true))))

(assert (=> b!292043 (= (index!10796 lt!144569) i!1256)))

(declare-fun b!292044 () Bool)

(assert (=> b!292044 (= e!184788 e!184790)))

(declare-fun res!153135 () Bool)

(assert (=> b!292044 (=> (not res!153135) (not e!184790))))

(assert (=> b!292044 (= res!153135 (and (not lt!144566) (= lt!144567 (MissingVacant!2156 i!1256))))))

(declare-fun lt!144564 () (_ BitVec 32))

(declare-fun lt!144565 () SeekEntryResult!2156)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14748 (_ BitVec 32)) SeekEntryResult!2156)

(assert (=> b!292044 (= lt!144565 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144564 k!2524 (array!14749 (store (arr!6996 a!3312) i!1256 k!2524) (size!7348 a!3312)) mask!3809))))

(assert (=> b!292044 (= lt!144569 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144564 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292044 (= lt!144564 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28580 res!153138) b!292039))

(assert (= (and b!292039 res!153131) b!292042))

(assert (= (and b!292042 res!153132) b!292037))

(assert (= (and b!292037 res!153137) b!292038))

(assert (= (and b!292038 res!153136) b!292041))

(assert (= (and b!292041 res!153134) b!292044))

(assert (= (and b!292044 res!153135) b!292040))

(assert (= (and b!292040 res!153133) b!292043))

(declare-fun m!305805 () Bool)

(assert (=> b!292042 m!305805))

(declare-fun m!305807 () Bool)

(assert (=> b!292044 m!305807))

(declare-fun m!305809 () Bool)

(assert (=> b!292044 m!305809))

(declare-fun m!305811 () Bool)

(assert (=> b!292044 m!305811))

(declare-fun m!305813 () Bool)

(assert (=> b!292044 m!305813))

(declare-fun m!305815 () Bool)

(assert (=> start!28580 m!305815))

(declare-fun m!305817 () Bool)

(assert (=> start!28580 m!305817))

(declare-fun m!305819 () Bool)

(assert (=> b!292038 m!305819))

(declare-fun m!305821 () Bool)

(assert (=> b!292041 m!305821))

(declare-fun m!305823 () Bool)

(assert (=> b!292040 m!305823))

(declare-fun m!305825 () Bool)

(assert (=> b!292037 m!305825))

(push 1)

