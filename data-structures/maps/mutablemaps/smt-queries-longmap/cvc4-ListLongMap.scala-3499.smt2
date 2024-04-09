; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48584 () Bool)

(assert start!48584)

(declare-fun b!533040 () Bool)

(declare-fun res!328397 () Bool)

(declare-fun e!310238 () Bool)

(assert (=> b!533040 (=> (not res!328397) (not e!310238))))

(declare-datatypes ((array!33752 0))(
  ( (array!33753 (arr!16211 (Array (_ BitVec 32) (_ BitVec 64))) (size!16575 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33752)

(declare-datatypes ((List!10383 0))(
  ( (Nil!10380) (Cons!10379 (h!11322 (_ BitVec 64)) (t!16619 List!10383)) )
))
(declare-fun arrayNoDuplicates!0 (array!33752 (_ BitVec 32) List!10383) Bool)

(assert (=> b!533040 (= res!328397 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10380))))

(declare-fun b!533041 () Bool)

(assert (=> b!533041 (= e!310238 false)))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4676 0))(
  ( (MissingZero!4676 (index!20928 (_ BitVec 32))) (Found!4676 (index!20929 (_ BitVec 32))) (Intermediate!4676 (undefined!5488 Bool) (index!20930 (_ BitVec 32)) (x!49926 (_ BitVec 32))) (Undefined!4676) (MissingVacant!4676 (index!20931 (_ BitVec 32))) )
))
(declare-fun lt!245377 () SeekEntryResult!4676)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33752 (_ BitVec 32)) SeekEntryResult!4676)

(assert (=> b!533041 (= lt!245377 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16211 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!328396 () Bool)

(declare-fun e!310239 () Bool)

(assert (=> start!48584 (=> (not res!328396) (not e!310239))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48584 (= res!328396 (validMask!0 mask!3216))))

(assert (=> start!48584 e!310239))

(assert (=> start!48584 true))

(declare-fun array_inv!11985 (array!33752) Bool)

(assert (=> start!48584 (array_inv!11985 a!3154)))

(declare-fun b!533042 () Bool)

(assert (=> b!533042 (= e!310239 e!310238)))

(declare-fun res!328400 () Bool)

(assert (=> b!533042 (=> (not res!328400) (not e!310238))))

(declare-fun lt!245378 () SeekEntryResult!4676)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533042 (= res!328400 (or (= lt!245378 (MissingZero!4676 i!1153)) (= lt!245378 (MissingVacant!4676 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33752 (_ BitVec 32)) SeekEntryResult!4676)

(assert (=> b!533042 (= lt!245378 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533043 () Bool)

(declare-fun res!328401 () Bool)

(assert (=> b!533043 (=> (not res!328401) (not e!310238))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533043 (= res!328401 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16575 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16575 a!3154)) (= (select (arr!16211 a!3154) resIndex!32) (select (arr!16211 a!3154) j!147))))))

(declare-fun b!533044 () Bool)

(declare-fun res!328395 () Bool)

(assert (=> b!533044 (=> (not res!328395) (not e!310238))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33752 (_ BitVec 32)) Bool)

(assert (=> b!533044 (= res!328395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533045 () Bool)

(declare-fun res!328403 () Bool)

(assert (=> b!533045 (=> (not res!328403) (not e!310239))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533045 (= res!328403 (validKeyInArray!0 (select (arr!16211 a!3154) j!147)))))

(declare-fun b!533046 () Bool)

(declare-fun res!328398 () Bool)

(assert (=> b!533046 (=> (not res!328398) (not e!310239))))

(declare-fun arrayContainsKey!0 (array!33752 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533046 (= res!328398 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533047 () Bool)

(declare-fun res!328402 () Bool)

(assert (=> b!533047 (=> (not res!328402) (not e!310239))))

(assert (=> b!533047 (= res!328402 (and (= (size!16575 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16575 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16575 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533048 () Bool)

(declare-fun res!328399 () Bool)

(assert (=> b!533048 (=> (not res!328399) (not e!310239))))

(assert (=> b!533048 (= res!328399 (validKeyInArray!0 k!1998))))

(assert (= (and start!48584 res!328396) b!533047))

(assert (= (and b!533047 res!328402) b!533045))

(assert (= (and b!533045 res!328403) b!533048))

(assert (= (and b!533048 res!328399) b!533046))

(assert (= (and b!533046 res!328398) b!533042))

(assert (= (and b!533042 res!328400) b!533044))

(assert (= (and b!533044 res!328395) b!533040))

(assert (= (and b!533040 res!328397) b!533043))

(assert (= (and b!533043 res!328401) b!533041))

(declare-fun m!513003 () Bool)

(assert (=> b!533041 m!513003))

(assert (=> b!533041 m!513003))

(declare-fun m!513005 () Bool)

(assert (=> b!533041 m!513005))

(declare-fun m!513007 () Bool)

(assert (=> b!533044 m!513007))

(declare-fun m!513009 () Bool)

(assert (=> b!533048 m!513009))

(declare-fun m!513011 () Bool)

(assert (=> b!533042 m!513011))

(assert (=> b!533045 m!513003))

(assert (=> b!533045 m!513003))

(declare-fun m!513013 () Bool)

(assert (=> b!533045 m!513013))

(declare-fun m!513015 () Bool)

(assert (=> start!48584 m!513015))

(declare-fun m!513017 () Bool)

(assert (=> start!48584 m!513017))

(declare-fun m!513019 () Bool)

(assert (=> b!533046 m!513019))

(declare-fun m!513021 () Bool)

(assert (=> b!533040 m!513021))

(declare-fun m!513023 () Bool)

(assert (=> b!533043 m!513023))

(assert (=> b!533043 m!513003))

(push 1)

(assert (not b!533042))

(assert (not b!533048))

(assert (not b!533046))

(assert (not start!48584))

(assert (not b!533040))

(assert (not b!533041))

