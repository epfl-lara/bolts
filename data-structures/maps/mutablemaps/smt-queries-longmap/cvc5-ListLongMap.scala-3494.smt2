; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48496 () Bool)

(assert start!48496)

(declare-fun b!532304 () Bool)

(declare-fun res!327807 () Bool)

(declare-fun e!309934 () Bool)

(assert (=> b!532304 (=> (not res!327807) (not e!309934))))

(declare-datatypes ((array!33715 0))(
  ( (array!33716 (arr!16194 (Array (_ BitVec 32) (_ BitVec 64))) (size!16558 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33715)

(declare-datatypes ((List!10366 0))(
  ( (Nil!10363) (Cons!10362 (h!11302 (_ BitVec 64)) (t!16602 List!10366)) )
))
(declare-fun arrayNoDuplicates!0 (array!33715 (_ BitVec 32) List!10366) Bool)

(assert (=> b!532304 (= res!327807 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10363))))

(declare-fun b!532305 () Bool)

(declare-fun res!327803 () Bool)

(assert (=> b!532305 (=> (not res!327803) (not e!309934))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4659 0))(
  ( (MissingZero!4659 (index!20860 (_ BitVec 32))) (Found!4659 (index!20861 (_ BitVec 32))) (Intermediate!4659 (undefined!5471 Bool) (index!20862 (_ BitVec 32)) (x!49863 (_ BitVec 32))) (Undefined!4659) (MissingVacant!4659 (index!20863 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33715 (_ BitVec 32)) SeekEntryResult!4659)

(assert (=> b!532305 (= res!327803 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16194 a!3154) j!147) a!3154 mask!3216) (Intermediate!4659 false resIndex!32 resX!32)))))

(declare-fun b!532306 () Bool)

(declare-fun res!327805 () Bool)

(declare-fun e!309932 () Bool)

(assert (=> b!532306 (=> (not res!327805) (not e!309932))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!532306 (= res!327805 (and (= (size!16558 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16558 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16558 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!532307 () Bool)

(declare-fun res!327808 () Bool)

(assert (=> b!532307 (=> (not res!327808) (not e!309932))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!532307 (= res!327808 (validKeyInArray!0 (select (arr!16194 a!3154) j!147)))))

(declare-fun b!532308 () Bool)

(declare-fun res!327801 () Bool)

(assert (=> b!532308 (=> (not res!327801) (not e!309932))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33715 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!532308 (= res!327801 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!532309 () Bool)

(declare-fun res!327802 () Bool)

(assert (=> b!532309 (=> (not res!327802) (not e!309932))))

(assert (=> b!532309 (= res!327802 (validKeyInArray!0 k!1998))))

(declare-fun b!532310 () Bool)

(declare-fun res!327800 () Bool)

(assert (=> b!532310 (=> (not res!327800) (not e!309934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33715 (_ BitVec 32)) Bool)

(assert (=> b!532310 (= res!327800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!532311 () Bool)

(assert (=> b!532311 (= e!309932 e!309934)))

(declare-fun res!327806 () Bool)

(assert (=> b!532311 (=> (not res!327806) (not e!309934))))

(declare-fun lt!245185 () SeekEntryResult!4659)

(assert (=> b!532311 (= res!327806 (or (= lt!245185 (MissingZero!4659 i!1153)) (= lt!245185 (MissingVacant!4659 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33715 (_ BitVec 32)) SeekEntryResult!4659)

(assert (=> b!532311 (= lt!245185 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!532312 () Bool)

(declare-fun res!327804 () Bool)

(assert (=> b!532312 (=> (not res!327804) (not e!309934))))

(assert (=> b!532312 (= res!327804 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16558 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16558 a!3154)) (= (select (arr!16194 a!3154) resIndex!32) (select (arr!16194 a!3154) j!147))))))

(declare-fun b!532313 () Bool)

(assert (=> b!532313 (= e!309934 (bvslt mask!3216 #b00000000000000000000000000000000))))

(declare-fun lt!245186 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532313 (= lt!245186 (toIndex!0 (select (arr!16194 a!3154) j!147) mask!3216))))

(declare-fun res!327809 () Bool)

(assert (=> start!48496 (=> (not res!327809) (not e!309932))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48496 (= res!327809 (validMask!0 mask!3216))))

(assert (=> start!48496 e!309932))

(assert (=> start!48496 true))

(declare-fun array_inv!11968 (array!33715) Bool)

(assert (=> start!48496 (array_inv!11968 a!3154)))

(assert (= (and start!48496 res!327809) b!532306))

(assert (= (and b!532306 res!327805) b!532307))

(assert (= (and b!532307 res!327808) b!532309))

(assert (= (and b!532309 res!327802) b!532308))

(assert (= (and b!532308 res!327801) b!532311))

(assert (= (and b!532311 res!327806) b!532310))

(assert (= (and b!532310 res!327800) b!532304))

(assert (= (and b!532304 res!327807) b!532312))

(assert (= (and b!532312 res!327804) b!532305))

(assert (= (and b!532305 res!327803) b!532313))

(declare-fun m!512479 () Bool)

(assert (=> b!532313 m!512479))

(assert (=> b!532313 m!512479))

(declare-fun m!512481 () Bool)

(assert (=> b!532313 m!512481))

(declare-fun m!512483 () Bool)

(assert (=> b!532308 m!512483))

(declare-fun m!512485 () Bool)

(assert (=> b!532304 m!512485))

(assert (=> b!532307 m!512479))

(assert (=> b!532307 m!512479))

(declare-fun m!512487 () Bool)

(assert (=> b!532307 m!512487))

(declare-fun m!512489 () Bool)

(assert (=> b!532309 m!512489))

(declare-fun m!512491 () Bool)

(assert (=> b!532312 m!512491))

(assert (=> b!532312 m!512479))

(declare-fun m!512493 () Bool)

(assert (=> start!48496 m!512493))

(declare-fun m!512495 () Bool)

(assert (=> start!48496 m!512495))

(declare-fun m!512497 () Bool)

(assert (=> b!532311 m!512497))

(declare-fun m!512499 () Bool)

(assert (=> b!532310 m!512499))

(assert (=> b!532305 m!512479))

(assert (=> b!532305 m!512479))

(declare-fun m!512501 () Bool)

(assert (=> b!532305 m!512501))

(push 1)

