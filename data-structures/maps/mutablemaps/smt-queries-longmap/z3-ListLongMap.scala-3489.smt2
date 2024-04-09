; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48420 () Bool)

(assert start!48420)

(declare-fun b!531685 () Bool)

(declare-fun res!327328 () Bool)

(declare-fun e!309653 () Bool)

(assert (=> b!531685 (=> (not res!327328) (not e!309653))))

(declare-datatypes ((array!33684 0))(
  ( (array!33685 (arr!16180 (Array (_ BitVec 32) (_ BitVec 64))) (size!16544 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33684)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33684 (_ BitVec 32)) Bool)

(assert (=> b!531685 (= res!327328 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!531686 () Bool)

(declare-fun res!327327 () Bool)

(declare-fun e!309654 () Bool)

(assert (=> b!531686 (=> (not res!327327) (not e!309654))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531686 (= res!327327 (and (= (size!16544 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16544 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16544 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!531687 () Bool)

(declare-fun res!327325 () Bool)

(assert (=> b!531687 (=> (not res!327325) (not e!309653))))

(declare-datatypes ((List!10352 0))(
  ( (Nil!10349) (Cons!10348 (h!11288 (_ BitVec 64)) (t!16588 List!10352)) )
))
(declare-fun arrayNoDuplicates!0 (array!33684 (_ BitVec 32) List!10352) Bool)

(assert (=> b!531687 (= res!327325 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10349))))

(declare-fun b!531688 () Bool)

(declare-fun res!327332 () Bool)

(assert (=> b!531688 (=> (not res!327332) (not e!309654))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531688 (= res!327332 (validKeyInArray!0 (select (arr!16180 a!3154) j!147)))))

(declare-fun b!531689 () Bool)

(assert (=> b!531689 (= e!309654 e!309653)))

(declare-fun res!327331 () Bool)

(assert (=> b!531689 (=> (not res!327331) (not e!309653))))

(declare-datatypes ((SeekEntryResult!4645 0))(
  ( (MissingZero!4645 (index!20804 (_ BitVec 32))) (Found!4645 (index!20805 (_ BitVec 32))) (Intermediate!4645 (undefined!5457 Bool) (index!20806 (_ BitVec 32)) (x!49806 (_ BitVec 32))) (Undefined!4645) (MissingVacant!4645 (index!20807 (_ BitVec 32))) )
))
(declare-fun lt!245051 () SeekEntryResult!4645)

(assert (=> b!531689 (= res!327331 (or (= lt!245051 (MissingZero!4645 i!1153)) (= lt!245051 (MissingVacant!4645 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33684 (_ BitVec 32)) SeekEntryResult!4645)

(assert (=> b!531689 (= lt!245051 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!531690 () Bool)

(declare-fun res!327326 () Bool)

(assert (=> b!531690 (=> (not res!327326) (not e!309654))))

(assert (=> b!531690 (= res!327326 (validKeyInArray!0 k0!1998))))

(declare-fun res!327329 () Bool)

(assert (=> start!48420 (=> (not res!327329) (not e!309654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48420 (= res!327329 (validMask!0 mask!3216))))

(assert (=> start!48420 e!309654))

(assert (=> start!48420 true))

(declare-fun array_inv!11954 (array!33684) Bool)

(assert (=> start!48420 (array_inv!11954 a!3154)))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun b!531691 () Bool)

(assert (=> b!531691 (= e!309653 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16544 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16544 a!3154)) (= (select (arr!16180 a!3154) resIndex!32) (select (arr!16180 a!3154) j!147)) (bvsge mask!3216 #b00000000000000000000000000000000) (bvslt index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsgt x!1030 #b01111111111111111111111111111110)))))

(declare-fun b!531692 () Bool)

(declare-fun res!327330 () Bool)

(assert (=> b!531692 (=> (not res!327330) (not e!309654))))

(declare-fun arrayContainsKey!0 (array!33684 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531692 (= res!327330 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48420 res!327329) b!531686))

(assert (= (and b!531686 res!327327) b!531688))

(assert (= (and b!531688 res!327332) b!531690))

(assert (= (and b!531690 res!327326) b!531692))

(assert (= (and b!531692 res!327330) b!531689))

(assert (= (and b!531689 res!327331) b!531685))

(assert (= (and b!531685 res!327328) b!531687))

(assert (= (and b!531687 res!327325) b!531691))

(declare-fun m!512061 () Bool)

(assert (=> b!531687 m!512061))

(declare-fun m!512063 () Bool)

(assert (=> b!531685 m!512063))

(declare-fun m!512065 () Bool)

(assert (=> start!48420 m!512065))

(declare-fun m!512067 () Bool)

(assert (=> start!48420 m!512067))

(declare-fun m!512069 () Bool)

(assert (=> b!531690 m!512069))

(declare-fun m!512071 () Bool)

(assert (=> b!531692 m!512071))

(declare-fun m!512073 () Bool)

(assert (=> b!531688 m!512073))

(assert (=> b!531688 m!512073))

(declare-fun m!512075 () Bool)

(assert (=> b!531688 m!512075))

(declare-fun m!512077 () Bool)

(assert (=> b!531689 m!512077))

(declare-fun m!512079 () Bool)

(assert (=> b!531691 m!512079))

(assert (=> b!531691 m!512073))

(check-sat (not b!531690) (not b!531689) (not b!531692) (not start!48420) (not b!531688) (not b!531685) (not b!531687))
(check-sat)
