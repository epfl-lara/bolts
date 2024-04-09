; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48626 () Bool)

(assert start!48626)

(declare-fun b!533651 () Bool)

(declare-fun res!329008 () Bool)

(declare-fun e!310428 () Bool)

(assert (=> b!533651 (=> (not res!329008) (not e!310428))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33794 0))(
  ( (array!33795 (arr!16232 (Array (_ BitVec 32) (_ BitVec 64))) (size!16596 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33794)

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4697 0))(
  ( (MissingZero!4697 (index!21012 (_ BitVec 32))) (Found!4697 (index!21013 (_ BitVec 32))) (Intermediate!4697 (undefined!5509 Bool) (index!21014 (_ BitVec 32)) (x!50003 (_ BitVec 32))) (Undefined!4697) (MissingVacant!4697 (index!21015 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33794 (_ BitVec 32)) SeekEntryResult!4697)

(assert (=> b!533651 (= res!329008 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16232 a!3154) j!147) a!3154 mask!3216) (Intermediate!4697 false resIndex!32 resX!32)))))

(declare-fun b!533652 () Bool)

(declare-fun res!329014 () Bool)

(declare-fun e!310427 () Bool)

(assert (=> b!533652 (=> (not res!329014) (not e!310427))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533652 (= res!329014 (and (= (size!16596 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16596 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16596 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533653 () Bool)

(assert (=> b!533653 (= e!310427 e!310428)))

(declare-fun res!329007 () Bool)

(assert (=> b!533653 (=> (not res!329007) (not e!310428))))

(declare-fun lt!245477 () SeekEntryResult!4697)

(assert (=> b!533653 (= res!329007 (or (= lt!245477 (MissingZero!4697 i!1153)) (= lt!245477 (MissingVacant!4697 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33794 (_ BitVec 32)) SeekEntryResult!4697)

(assert (=> b!533653 (= lt!245477 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533654 () Bool)

(declare-fun res!329012 () Bool)

(assert (=> b!533654 (=> (not res!329012) (not e!310428))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33794 (_ BitVec 32)) Bool)

(assert (=> b!533654 (= res!329012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!329006 () Bool)

(assert (=> start!48626 (=> (not res!329006) (not e!310427))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48626 (= res!329006 (validMask!0 mask!3216))))

(assert (=> start!48626 e!310427))

(assert (=> start!48626 true))

(declare-fun array_inv!12006 (array!33794) Bool)

(assert (=> start!48626 (array_inv!12006 a!3154)))

(declare-fun b!533655 () Bool)

(assert (=> b!533655 (= e!310428 false)))

(declare-fun lt!245476 () SeekEntryResult!4697)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!533655 (= lt!245476 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16232 a!3154) j!147) mask!3216) (select (arr!16232 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!533656 () Bool)

(declare-fun res!329011 () Bool)

(assert (=> b!533656 (=> (not res!329011) (not e!310427))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533656 (= res!329011 (validKeyInArray!0 k!1998))))

(declare-fun b!533657 () Bool)

(declare-fun res!329009 () Bool)

(assert (=> b!533657 (=> (not res!329009) (not e!310427))))

(assert (=> b!533657 (= res!329009 (validKeyInArray!0 (select (arr!16232 a!3154) j!147)))))

(declare-fun b!533658 () Bool)

(declare-fun res!329010 () Bool)

(assert (=> b!533658 (=> (not res!329010) (not e!310428))))

(assert (=> b!533658 (= res!329010 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16596 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16596 a!3154)) (= (select (arr!16232 a!3154) resIndex!32) (select (arr!16232 a!3154) j!147))))))

(declare-fun b!533659 () Bool)

(declare-fun res!329013 () Bool)

(assert (=> b!533659 (=> (not res!329013) (not e!310427))))

(declare-fun arrayContainsKey!0 (array!33794 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533659 (= res!329013 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533660 () Bool)

(declare-fun res!329015 () Bool)

(assert (=> b!533660 (=> (not res!329015) (not e!310428))))

(declare-datatypes ((List!10404 0))(
  ( (Nil!10401) (Cons!10400 (h!11343 (_ BitVec 64)) (t!16640 List!10404)) )
))
(declare-fun arrayNoDuplicates!0 (array!33794 (_ BitVec 32) List!10404) Bool)

(assert (=> b!533660 (= res!329015 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10401))))

(assert (= (and start!48626 res!329006) b!533652))

(assert (= (and b!533652 res!329014) b!533657))

(assert (= (and b!533657 res!329009) b!533656))

(assert (= (and b!533656 res!329011) b!533659))

(assert (= (and b!533659 res!329013) b!533653))

(assert (= (and b!533653 res!329007) b!533654))

(assert (= (and b!533654 res!329012) b!533660))

(assert (= (and b!533660 res!329015) b!533658))

(assert (= (and b!533658 res!329010) b!533651))

(assert (= (and b!533651 res!329008) b!533655))

(declare-fun m!513485 () Bool)

(assert (=> start!48626 m!513485))

(declare-fun m!513487 () Bool)

(assert (=> start!48626 m!513487))

(declare-fun m!513489 () Bool)

(assert (=> b!533655 m!513489))

(assert (=> b!533655 m!513489))

(declare-fun m!513491 () Bool)

(assert (=> b!533655 m!513491))

(assert (=> b!533655 m!513491))

(assert (=> b!533655 m!513489))

(declare-fun m!513493 () Bool)

(assert (=> b!533655 m!513493))

(declare-fun m!513495 () Bool)

(assert (=> b!533656 m!513495))

(assert (=> b!533657 m!513489))

(assert (=> b!533657 m!513489))

(declare-fun m!513497 () Bool)

(assert (=> b!533657 m!513497))

(declare-fun m!513499 () Bool)

(assert (=> b!533660 m!513499))

(declare-fun m!513501 () Bool)

(assert (=> b!533659 m!513501))

(declare-fun m!513503 () Bool)

(assert (=> b!533658 m!513503))

(assert (=> b!533658 m!513489))

(declare-fun m!513505 () Bool)

(assert (=> b!533654 m!513505))

(assert (=> b!533651 m!513489))

(assert (=> b!533651 m!513489))

(declare-fun m!513507 () Bool)

(assert (=> b!533651 m!513507))

(declare-fun m!513509 () Bool)

(assert (=> b!533653 m!513509))

(push 1)

(assert (not b!533655))

(assert (not b!533660))

(assert (not b!533657))

(assert (not b!533659))

(assert (not b!533653))

(assert (not b!533651))

(assert (not b!533656))

(assert (not start!48626))

(assert (not b!533654))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

