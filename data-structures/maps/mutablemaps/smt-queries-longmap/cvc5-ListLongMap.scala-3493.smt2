; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48490 () Bool)

(assert start!48490)

(declare-fun b!532214 () Bool)

(declare-fun res!327710 () Bool)

(declare-fun e!309907 () Bool)

(assert (=> b!532214 (=> (not res!327710) (not e!309907))))

(declare-datatypes ((array!33709 0))(
  ( (array!33710 (arr!16191 (Array (_ BitVec 32) (_ BitVec 64))) (size!16555 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33709)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33709 (_ BitVec 32)) Bool)

(assert (=> b!532214 (= res!327710 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!532215 () Bool)

(declare-fun e!309906 () Bool)

(assert (=> b!532215 (= e!309906 e!309907)))

(declare-fun res!327714 () Bool)

(assert (=> b!532215 (=> (not res!327714) (not e!309907))))

(declare-datatypes ((SeekEntryResult!4656 0))(
  ( (MissingZero!4656 (index!20848 (_ BitVec 32))) (Found!4656 (index!20849 (_ BitVec 32))) (Intermediate!4656 (undefined!5468 Bool) (index!20850 (_ BitVec 32)) (x!49852 (_ BitVec 32))) (Undefined!4656) (MissingVacant!4656 (index!20851 (_ BitVec 32))) )
))
(declare-fun lt!245167 () SeekEntryResult!4656)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!532215 (= res!327714 (or (= lt!245167 (MissingZero!4656 i!1153)) (= lt!245167 (MissingVacant!4656 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33709 (_ BitVec 32)) SeekEntryResult!4656)

(assert (=> b!532215 (= lt!245167 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!532216 () Bool)

(declare-fun res!327715 () Bool)

(assert (=> b!532216 (=> (not res!327715) (not e!309906))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!532216 (= res!327715 (validKeyInArray!0 (select (arr!16191 a!3154) j!147)))))

(declare-fun b!532217 () Bool)

(assert (=> b!532217 (= e!309907 false)))

(declare-fun lt!245168 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532217 (= lt!245168 (toIndex!0 (select (arr!16191 a!3154) j!147) mask!3216))))

(declare-fun b!532218 () Bool)

(declare-fun res!327719 () Bool)

(assert (=> b!532218 (=> (not res!327719) (not e!309906))))

(assert (=> b!532218 (= res!327719 (validKeyInArray!0 k!1998))))

(declare-fun b!532219 () Bool)

(declare-fun res!327716 () Bool)

(assert (=> b!532219 (=> (not res!327716) (not e!309907))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33709 (_ BitVec 32)) SeekEntryResult!4656)

(assert (=> b!532219 (= res!327716 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16191 a!3154) j!147) a!3154 mask!3216) (Intermediate!4656 false resIndex!32 resX!32)))))

(declare-fun res!327718 () Bool)

(assert (=> start!48490 (=> (not res!327718) (not e!309906))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48490 (= res!327718 (validMask!0 mask!3216))))

(assert (=> start!48490 e!309906))

(assert (=> start!48490 true))

(declare-fun array_inv!11965 (array!33709) Bool)

(assert (=> start!48490 (array_inv!11965 a!3154)))

(declare-fun b!532220 () Bool)

(declare-fun res!327717 () Bool)

(assert (=> b!532220 (=> (not res!327717) (not e!309907))))

(declare-datatypes ((List!10363 0))(
  ( (Nil!10360) (Cons!10359 (h!11299 (_ BitVec 64)) (t!16599 List!10363)) )
))
(declare-fun arrayNoDuplicates!0 (array!33709 (_ BitVec 32) List!10363) Bool)

(assert (=> b!532220 (= res!327717 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10360))))

(declare-fun b!532221 () Bool)

(declare-fun res!327711 () Bool)

(assert (=> b!532221 (=> (not res!327711) (not e!309906))))

(assert (=> b!532221 (= res!327711 (and (= (size!16555 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16555 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16555 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!532222 () Bool)

(declare-fun res!327712 () Bool)

(assert (=> b!532222 (=> (not res!327712) (not e!309907))))

(assert (=> b!532222 (= res!327712 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16555 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16555 a!3154)) (= (select (arr!16191 a!3154) resIndex!32) (select (arr!16191 a!3154) j!147))))))

(declare-fun b!532223 () Bool)

(declare-fun res!327713 () Bool)

(assert (=> b!532223 (=> (not res!327713) (not e!309906))))

(declare-fun arrayContainsKey!0 (array!33709 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!532223 (= res!327713 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48490 res!327718) b!532221))

(assert (= (and b!532221 res!327711) b!532216))

(assert (= (and b!532216 res!327715) b!532218))

(assert (= (and b!532218 res!327719) b!532223))

(assert (= (and b!532223 res!327713) b!532215))

(assert (= (and b!532215 res!327714) b!532214))

(assert (= (and b!532214 res!327710) b!532220))

(assert (= (and b!532220 res!327717) b!532222))

(assert (= (and b!532222 res!327712) b!532219))

(assert (= (and b!532219 res!327716) b!532217))

(declare-fun m!512407 () Bool)

(assert (=> start!48490 m!512407))

(declare-fun m!512409 () Bool)

(assert (=> start!48490 m!512409))

(declare-fun m!512411 () Bool)

(assert (=> b!532216 m!512411))

(assert (=> b!532216 m!512411))

(declare-fun m!512413 () Bool)

(assert (=> b!532216 m!512413))

(assert (=> b!532217 m!512411))

(assert (=> b!532217 m!512411))

(declare-fun m!512415 () Bool)

(assert (=> b!532217 m!512415))

(declare-fun m!512417 () Bool)

(assert (=> b!532222 m!512417))

(assert (=> b!532222 m!512411))

(declare-fun m!512419 () Bool)

(assert (=> b!532214 m!512419))

(declare-fun m!512421 () Bool)

(assert (=> b!532215 m!512421))

(declare-fun m!512423 () Bool)

(assert (=> b!532218 m!512423))

(declare-fun m!512425 () Bool)

(assert (=> b!532220 m!512425))

(assert (=> b!532219 m!512411))

(assert (=> b!532219 m!512411))

(declare-fun m!512427 () Bool)

(assert (=> b!532219 m!512427))

(declare-fun m!512429 () Bool)

(assert (=> b!532223 m!512429))

(push 1)

