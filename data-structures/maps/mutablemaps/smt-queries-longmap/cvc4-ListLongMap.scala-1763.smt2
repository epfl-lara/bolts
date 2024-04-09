; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32236 () Bool)

(assert start!32236)

(declare-fun b!320744 () Bool)

(declare-fun res!175028 () Bool)

(declare-fun e!198912 () Bool)

(assert (=> b!320744 (=> (not res!175028) (not e!198912))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320744 (= res!175028 (validKeyInArray!0 k!2497))))

(declare-fun b!320745 () Bool)

(assert (=> b!320745 (= e!198912 false)))

(declare-datatypes ((array!16422 0))(
  ( (array!16423 (arr!7767 (Array (_ BitVec 32) (_ BitVec 64))) (size!8119 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16422)

(declare-datatypes ((SeekEntryResult!2909 0))(
  ( (MissingZero!2909 (index!13812 (_ BitVec 32))) (Found!2909 (index!13813 (_ BitVec 32))) (Intermediate!2909 (undefined!3721 Bool) (index!13814 (_ BitVec 32)) (x!32043 (_ BitVec 32))) (Undefined!2909) (MissingVacant!2909 (index!13815 (_ BitVec 32))) )
))
(declare-fun lt!156098 () SeekEntryResult!2909)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16422 (_ BitVec 32)) SeekEntryResult!2909)

(assert (=> b!320745 (= lt!156098 (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777))))

(declare-fun b!320746 () Bool)

(declare-fun res!175027 () Bool)

(assert (=> b!320746 (=> (not res!175027) (not e!198912))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16422 (_ BitVec 32)) SeekEntryResult!2909)

(assert (=> b!320746 (= res!175027 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2909 i!1250)))))

(declare-fun b!320747 () Bool)

(declare-fun res!175026 () Bool)

(assert (=> b!320747 (=> (not res!175026) (not e!198912))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16422 (_ BitVec 32)) Bool)

(assert (=> b!320747 (= res!175026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320748 () Bool)

(declare-fun res!175024 () Bool)

(assert (=> b!320748 (=> (not res!175024) (not e!198912))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!320748 (= res!175024 (and (= (select (arr!7767 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8119 a!3305))))))

(declare-fun b!320749 () Bool)

(declare-fun res!175022 () Bool)

(assert (=> b!320749 (=> (not res!175022) (not e!198912))))

(assert (=> b!320749 (= res!175022 (and (= (size!8119 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8119 a!3305))))))

(declare-fun res!175029 () Bool)

(assert (=> start!32236 (=> (not res!175029) (not e!198912))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32236 (= res!175029 (validMask!0 mask!3777))))

(assert (=> start!32236 e!198912))

(declare-fun array_inv!5721 (array!16422) Bool)

(assert (=> start!32236 (array_inv!5721 a!3305)))

(assert (=> start!32236 true))

(declare-fun b!320750 () Bool)

(declare-fun res!175023 () Bool)

(assert (=> b!320750 (=> (not res!175023) (not e!198912))))

(declare-fun arrayContainsKey!0 (array!16422 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320750 (= res!175023 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320751 () Bool)

(declare-fun res!175025 () Bool)

(assert (=> b!320751 (=> (not res!175025) (not e!198912))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320751 (= res!175025 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!2909 false resIndex!58 resX!58)))))

(assert (= (and start!32236 res!175029) b!320749))

(assert (= (and b!320749 res!175022) b!320744))

(assert (= (and b!320744 res!175028) b!320750))

(assert (= (and b!320750 res!175023) b!320746))

(assert (= (and b!320746 res!175027) b!320747))

(assert (= (and b!320747 res!175026) b!320751))

(assert (= (and b!320751 res!175025) b!320748))

(assert (= (and b!320748 res!175024) b!320745))

(declare-fun m!329021 () Bool)

(assert (=> b!320744 m!329021))

(declare-fun m!329023 () Bool)

(assert (=> b!320747 m!329023))

(declare-fun m!329025 () Bool)

(assert (=> b!320748 m!329025))

(declare-fun m!329027 () Bool)

(assert (=> start!32236 m!329027))

(declare-fun m!329029 () Bool)

(assert (=> start!32236 m!329029))

(declare-fun m!329031 () Bool)

(assert (=> b!320750 m!329031))

(declare-fun m!329033 () Bool)

(assert (=> b!320746 m!329033))

(declare-fun m!329035 () Bool)

(assert (=> b!320745 m!329035))

(declare-fun m!329037 () Bool)

(assert (=> b!320751 m!329037))

(assert (=> b!320751 m!329037))

(declare-fun m!329039 () Bool)

(assert (=> b!320751 m!329039))

(push 1)

(assert (not b!320745))

(assert (not b!320751))

(assert (not start!32236))

(assert (not b!320746))

(assert (not b!320750))

(assert (not b!320744))

(assert (not b!320747))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

