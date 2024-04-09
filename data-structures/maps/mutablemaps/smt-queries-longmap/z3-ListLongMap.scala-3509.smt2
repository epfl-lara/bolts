; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48642 () Bool)

(assert start!48642)

(declare-fun b!533891 () Bool)

(declare-fun res!329246 () Bool)

(declare-fun e!310499 () Bool)

(assert (=> b!533891 (=> (not res!329246) (not e!310499))))

(declare-datatypes ((array!33810 0))(
  ( (array!33811 (arr!16240 (Array (_ BitVec 32) (_ BitVec 64))) (size!16604 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33810)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33810 (_ BitVec 32)) Bool)

(assert (=> b!533891 (= res!329246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533892 () Bool)

(declare-fun res!329247 () Bool)

(assert (=> b!533892 (=> (not res!329247) (not e!310499))))

(declare-datatypes ((List!10412 0))(
  ( (Nil!10409) (Cons!10408 (h!11351 (_ BitVec 64)) (t!16648 List!10412)) )
))
(declare-fun arrayNoDuplicates!0 (array!33810 (_ BitVec 32) List!10412) Bool)

(assert (=> b!533892 (= res!329247 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10409))))

(declare-fun b!533893 () Bool)

(declare-fun e!310501 () Bool)

(assert (=> b!533893 (= e!310501 e!310499)))

(declare-fun res!329255 () Bool)

(assert (=> b!533893 (=> (not res!329255) (not e!310499))))

(declare-datatypes ((SeekEntryResult!4705 0))(
  ( (MissingZero!4705 (index!21044 (_ BitVec 32))) (Found!4705 (index!21045 (_ BitVec 32))) (Intermediate!4705 (undefined!5517 Bool) (index!21046 (_ BitVec 32)) (x!50035 (_ BitVec 32))) (Undefined!4705) (MissingVacant!4705 (index!21047 (_ BitVec 32))) )
))
(declare-fun lt!245524 () SeekEntryResult!4705)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533893 (= res!329255 (or (= lt!245524 (MissingZero!4705 i!1153)) (= lt!245524 (MissingVacant!4705 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33810 (_ BitVec 32)) SeekEntryResult!4705)

(assert (=> b!533893 (= lt!245524 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!533894 () Bool)

(declare-fun res!329252 () Bool)

(assert (=> b!533894 (=> (not res!329252) (not e!310501))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!533894 (= res!329252 (and (= (size!16604 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16604 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16604 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533895 () Bool)

(assert (=> b!533895 (= e!310499 false)))

(declare-fun lt!245525 () SeekEntryResult!4705)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33810 (_ BitVec 32)) SeekEntryResult!4705)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!533895 (= lt!245525 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16240 a!3154) j!147) mask!3216) (select (arr!16240 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!533896 () Bool)

(declare-fun res!329254 () Bool)

(assert (=> b!533896 (=> (not res!329254) (not e!310501))))

(declare-fun arrayContainsKey!0 (array!33810 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533896 (= res!329254 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533898 () Bool)

(declare-fun res!329251 () Bool)

(assert (=> b!533898 (=> (not res!329251) (not e!310501))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533898 (= res!329251 (validKeyInArray!0 (select (arr!16240 a!3154) j!147)))))

(declare-fun res!329249 () Bool)

(assert (=> start!48642 (=> (not res!329249) (not e!310501))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48642 (= res!329249 (validMask!0 mask!3216))))

(assert (=> start!48642 e!310501))

(assert (=> start!48642 true))

(declare-fun array_inv!12014 (array!33810) Bool)

(assert (=> start!48642 (array_inv!12014 a!3154)))

(declare-fun b!533897 () Bool)

(declare-fun res!329250 () Bool)

(assert (=> b!533897 (=> (not res!329250) (not e!310501))))

(assert (=> b!533897 (= res!329250 (validKeyInArray!0 k0!1998))))

(declare-fun b!533899 () Bool)

(declare-fun res!329248 () Bool)

(assert (=> b!533899 (=> (not res!329248) (not e!310499))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533899 (= res!329248 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16604 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16604 a!3154)) (= (select (arr!16240 a!3154) resIndex!32) (select (arr!16240 a!3154) j!147))))))

(declare-fun b!533900 () Bool)

(declare-fun res!329253 () Bool)

(assert (=> b!533900 (=> (not res!329253) (not e!310499))))

(assert (=> b!533900 (= res!329253 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16240 a!3154) j!147) a!3154 mask!3216) (Intermediate!4705 false resIndex!32 resX!32)))))

(assert (= (and start!48642 res!329249) b!533894))

(assert (= (and b!533894 res!329252) b!533898))

(assert (= (and b!533898 res!329251) b!533897))

(assert (= (and b!533897 res!329250) b!533896))

(assert (= (and b!533896 res!329254) b!533893))

(assert (= (and b!533893 res!329255) b!533891))

(assert (= (and b!533891 res!329246) b!533892))

(assert (= (and b!533892 res!329247) b!533899))

(assert (= (and b!533899 res!329248) b!533900))

(assert (= (and b!533900 res!329253) b!533895))

(declare-fun m!513693 () Bool)

(assert (=> b!533897 m!513693))

(declare-fun m!513695 () Bool)

(assert (=> start!48642 m!513695))

(declare-fun m!513697 () Bool)

(assert (=> start!48642 m!513697))

(declare-fun m!513699 () Bool)

(assert (=> b!533900 m!513699))

(assert (=> b!533900 m!513699))

(declare-fun m!513701 () Bool)

(assert (=> b!533900 m!513701))

(assert (=> b!533898 m!513699))

(assert (=> b!533898 m!513699))

(declare-fun m!513703 () Bool)

(assert (=> b!533898 m!513703))

(declare-fun m!513705 () Bool)

(assert (=> b!533893 m!513705))

(declare-fun m!513707 () Bool)

(assert (=> b!533896 m!513707))

(assert (=> b!533895 m!513699))

(assert (=> b!533895 m!513699))

(declare-fun m!513709 () Bool)

(assert (=> b!533895 m!513709))

(assert (=> b!533895 m!513709))

(assert (=> b!533895 m!513699))

(declare-fun m!513711 () Bool)

(assert (=> b!533895 m!513711))

(declare-fun m!513713 () Bool)

(assert (=> b!533899 m!513713))

(assert (=> b!533899 m!513699))

(declare-fun m!513715 () Bool)

(assert (=> b!533891 m!513715))

(declare-fun m!513717 () Bool)

(assert (=> b!533892 m!513717))

(check-sat (not b!533891) (not b!533900) (not b!533895) (not b!533897) (not start!48642) (not b!533893) (not b!533892) (not b!533898) (not b!533896))
(check-sat)
