; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48638 () Bool)

(assert start!48638)

(declare-fun b!533831 () Bool)

(declare-fun res!329189 () Bool)

(declare-fun e!310483 () Bool)

(assert (=> b!533831 (=> (not res!329189) (not e!310483))))

(declare-datatypes ((array!33806 0))(
  ( (array!33807 (arr!16238 (Array (_ BitVec 32) (_ BitVec 64))) (size!16602 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33806)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33806 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533831 (= res!329189 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533832 () Bool)

(declare-fun res!329192 () Bool)

(declare-fun e!310482 () Bool)

(assert (=> b!533832 (=> (not res!329192) (not e!310482))))

(declare-datatypes ((List!10410 0))(
  ( (Nil!10407) (Cons!10406 (h!11349 (_ BitVec 64)) (t!16646 List!10410)) )
))
(declare-fun arrayNoDuplicates!0 (array!33806 (_ BitVec 32) List!10410) Bool)

(assert (=> b!533832 (= res!329192 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10407))))

(declare-fun b!533833 () Bool)

(declare-fun res!329190 () Bool)

(assert (=> b!533833 (=> (not res!329190) (not e!310483))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533833 (= res!329190 (and (= (size!16602 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16602 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16602 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!329186 () Bool)

(assert (=> start!48638 (=> (not res!329186) (not e!310483))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48638 (= res!329186 (validMask!0 mask!3216))))

(assert (=> start!48638 e!310483))

(assert (=> start!48638 true))

(declare-fun array_inv!12012 (array!33806) Bool)

(assert (=> start!48638 (array_inv!12012 a!3154)))

(declare-fun b!533834 () Bool)

(declare-fun res!329187 () Bool)

(assert (=> b!533834 (=> (not res!329187) (not e!310482))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533834 (= res!329187 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16602 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16602 a!3154)) (= (select (arr!16238 a!3154) resIndex!32) (select (arr!16238 a!3154) j!147))))))

(declare-fun b!533835 () Bool)

(declare-fun res!329194 () Bool)

(assert (=> b!533835 (=> (not res!329194) (not e!310482))))

(declare-datatypes ((SeekEntryResult!4703 0))(
  ( (MissingZero!4703 (index!21036 (_ BitVec 32))) (Found!4703 (index!21037 (_ BitVec 32))) (Intermediate!4703 (undefined!5515 Bool) (index!21038 (_ BitVec 32)) (x!50025 (_ BitVec 32))) (Undefined!4703) (MissingVacant!4703 (index!21039 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33806 (_ BitVec 32)) SeekEntryResult!4703)

(assert (=> b!533835 (= res!329194 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16238 a!3154) j!147) a!3154 mask!3216) (Intermediate!4703 false resIndex!32 resX!32)))))

(declare-fun b!533836 () Bool)

(declare-fun res!329195 () Bool)

(assert (=> b!533836 (=> (not res!329195) (not e!310483))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533836 (= res!329195 (validKeyInArray!0 (select (arr!16238 a!3154) j!147)))))

(declare-fun b!533837 () Bool)

(declare-fun res!329188 () Bool)

(assert (=> b!533837 (=> (not res!329188) (not e!310483))))

(assert (=> b!533837 (= res!329188 (validKeyInArray!0 k!1998))))

(declare-fun b!533838 () Bool)

(assert (=> b!533838 (= e!310482 false)))

(declare-fun lt!245513 () SeekEntryResult!4703)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!533838 (= lt!245513 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16238 a!3154) j!147) mask!3216) (select (arr!16238 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!533839 () Bool)

(assert (=> b!533839 (= e!310483 e!310482)))

(declare-fun res!329191 () Bool)

(assert (=> b!533839 (=> (not res!329191) (not e!310482))))

(declare-fun lt!245512 () SeekEntryResult!4703)

(assert (=> b!533839 (= res!329191 (or (= lt!245512 (MissingZero!4703 i!1153)) (= lt!245512 (MissingVacant!4703 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33806 (_ BitVec 32)) SeekEntryResult!4703)

(assert (=> b!533839 (= lt!245512 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533840 () Bool)

(declare-fun res!329193 () Bool)

(assert (=> b!533840 (=> (not res!329193) (not e!310482))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33806 (_ BitVec 32)) Bool)

(assert (=> b!533840 (= res!329193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48638 res!329186) b!533833))

(assert (= (and b!533833 res!329190) b!533836))

(assert (= (and b!533836 res!329195) b!533837))

(assert (= (and b!533837 res!329188) b!533831))

(assert (= (and b!533831 res!329189) b!533839))

(assert (= (and b!533839 res!329191) b!533840))

(assert (= (and b!533840 res!329193) b!533832))

(assert (= (and b!533832 res!329192) b!533834))

(assert (= (and b!533834 res!329187) b!533835))

(assert (= (and b!533835 res!329194) b!533838))

(declare-fun m!513641 () Bool)

(assert (=> b!533835 m!513641))

(assert (=> b!533835 m!513641))

(declare-fun m!513643 () Bool)

(assert (=> b!533835 m!513643))

(declare-fun m!513645 () Bool)

(assert (=> b!533840 m!513645))

(declare-fun m!513647 () Bool)

(assert (=> b!533831 m!513647))

(declare-fun m!513649 () Bool)

(assert (=> start!48638 m!513649))

(declare-fun m!513651 () Bool)

(assert (=> start!48638 m!513651))

(declare-fun m!513653 () Bool)

(assert (=> b!533832 m!513653))

(declare-fun m!513655 () Bool)

(assert (=> b!533834 m!513655))

(assert (=> b!533834 m!513641))

(declare-fun m!513657 () Bool)

(assert (=> b!533837 m!513657))

(declare-fun m!513659 () Bool)

(assert (=> b!533839 m!513659))

(assert (=> b!533838 m!513641))

(assert (=> b!533838 m!513641))

(declare-fun m!513661 () Bool)

(assert (=> b!533838 m!513661))

(assert (=> b!533838 m!513661))

(assert (=> b!533838 m!513641))

(declare-fun m!513663 () Bool)

(assert (=> b!533838 m!513663))

(assert (=> b!533836 m!513641))

(assert (=> b!533836 m!513641))

(declare-fun m!513665 () Bool)

(assert (=> b!533836 m!513665))

(push 1)

(assert (not b!533838))

(assert (not b!533837))

(assert (not b!533836))

(assert (not b!533831))

(assert (not b!533839))

(assert (not b!533835))

(assert (not start!48638))

(assert (not b!533840))

(assert (not b!533832))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

