; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48762 () Bool)

(assert start!48762)

(declare-fun b!535832 () Bool)

(declare-fun res!331189 () Bool)

(declare-fun e!311152 () Bool)

(assert (=> b!535832 (=> (not res!331189) (not e!311152))))

(declare-datatypes ((array!33930 0))(
  ( (array!33931 (arr!16300 (Array (_ BitVec 32) (_ BitVec 64))) (size!16664 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33930)

(declare-datatypes ((List!10472 0))(
  ( (Nil!10469) (Cons!10468 (h!11411 (_ BitVec 64)) (t!16708 List!10472)) )
))
(declare-fun arrayNoDuplicates!0 (array!33930 (_ BitVec 32) List!10472) Bool)

(assert (=> b!535832 (= res!331189 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10469))))

(declare-fun b!535833 () Bool)

(declare-fun res!331192 () Bool)

(assert (=> b!535833 (=> (not res!331192) (not e!311152))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!535833 (= res!331192 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16664 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16664 a!3154)) (= (select (arr!16300 a!3154) resIndex!32) (select (arr!16300 a!3154) j!147))))))

(declare-fun b!535834 () Bool)

(declare-fun e!311151 () Bool)

(assert (=> b!535834 (= e!311151 e!311152)))

(declare-fun res!331199 () Bool)

(assert (=> b!535834 (=> (not res!331199) (not e!311152))))

(declare-datatypes ((SeekEntryResult!4765 0))(
  ( (MissingZero!4765 (index!21284 (_ BitVec 32))) (Found!4765 (index!21285 (_ BitVec 32))) (Intermediate!4765 (undefined!5577 Bool) (index!21286 (_ BitVec 32)) (x!50255 (_ BitVec 32))) (Undefined!4765) (MissingVacant!4765 (index!21287 (_ BitVec 32))) )
))
(declare-fun lt!245931 () SeekEntryResult!4765)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535834 (= res!331199 (or (= lt!245931 (MissingZero!4765 i!1153)) (= lt!245931 (MissingVacant!4765 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33930 (_ BitVec 32)) SeekEntryResult!4765)

(assert (=> b!535834 (= lt!245931 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!535835 () Bool)

(declare-fun e!311150 () Bool)

(declare-fun e!311149 () Bool)

(assert (=> b!535835 (= e!311150 e!311149)))

(declare-fun res!331190 () Bool)

(assert (=> b!535835 (=> (not res!331190) (not e!311149))))

(declare-fun lt!245933 () (_ BitVec 32))

(assert (=> b!535835 (= res!331190 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!245933 #b00000000000000000000000000000000) (bvslt lt!245933 (size!16664 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535835 (= lt!245933 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!535836 () Bool)

(assert (=> b!535836 (= e!311152 e!311150)))

(declare-fun res!331188 () Bool)

(assert (=> b!535836 (=> (not res!331188) (not e!311150))))

(declare-fun lt!245930 () SeekEntryResult!4765)

(assert (=> b!535836 (= res!331188 (= lt!245930 (Intermediate!4765 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33930 (_ BitVec 32)) SeekEntryResult!4765)

(assert (=> b!535836 (= lt!245930 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16300 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535837 () Bool)

(declare-fun res!331194 () Bool)

(assert (=> b!535837 (=> (not res!331194) (not e!311152))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33930 (_ BitVec 32)) Bool)

(assert (=> b!535837 (= res!331194 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535838 () Bool)

(declare-fun res!331187 () Bool)

(assert (=> b!535838 (=> (not res!331187) (not e!311151))))

(declare-fun arrayContainsKey!0 (array!33930 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535838 (= res!331187 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535839 () Bool)

(declare-fun res!331198 () Bool)

(assert (=> b!535839 (=> (not res!331198) (not e!311151))))

(assert (=> b!535839 (= res!331198 (and (= (size!16664 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16664 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16664 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!535841 () Bool)

(declare-fun res!331196 () Bool)

(assert (=> b!535841 (=> (not res!331196) (not e!311151))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535841 (= res!331196 (validKeyInArray!0 (select (arr!16300 a!3154) j!147)))))

(declare-fun b!535842 () Bool)

(declare-fun res!331197 () Bool)

(assert (=> b!535842 (=> (not res!331197) (not e!311150))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535842 (= res!331197 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16300 a!3154) j!147) mask!3216) (select (arr!16300 a!3154) j!147) a!3154 mask!3216) lt!245930))))

(declare-fun b!535843 () Bool)

(declare-fun res!331195 () Bool)

(assert (=> b!535843 (=> (not res!331195) (not e!311150))))

(assert (=> b!535843 (= res!331195 (and (not (= (select (arr!16300 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16300 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16300 a!3154) index!1177) (select (arr!16300 a!3154) j!147)))))))

(declare-fun b!535844 () Bool)

(declare-fun res!331191 () Bool)

(assert (=> b!535844 (=> (not res!331191) (not e!311151))))

(assert (=> b!535844 (= res!331191 (validKeyInArray!0 k0!1998))))

(declare-fun b!535840 () Bool)

(assert (=> b!535840 (= e!311149 false)))

(declare-fun lt!245932 () SeekEntryResult!4765)

(assert (=> b!535840 (= lt!245932 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!245933 (select (arr!16300 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!331193 () Bool)

(assert (=> start!48762 (=> (not res!331193) (not e!311151))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48762 (= res!331193 (validMask!0 mask!3216))))

(assert (=> start!48762 e!311151))

(assert (=> start!48762 true))

(declare-fun array_inv!12074 (array!33930) Bool)

(assert (=> start!48762 (array_inv!12074 a!3154)))

(assert (= (and start!48762 res!331193) b!535839))

(assert (= (and b!535839 res!331198) b!535841))

(assert (= (and b!535841 res!331196) b!535844))

(assert (= (and b!535844 res!331191) b!535838))

(assert (= (and b!535838 res!331187) b!535834))

(assert (= (and b!535834 res!331199) b!535837))

(assert (= (and b!535837 res!331194) b!535832))

(assert (= (and b!535832 res!331189) b!535833))

(assert (= (and b!535833 res!331192) b!535836))

(assert (= (and b!535836 res!331188) b!535842))

(assert (= (and b!535842 res!331197) b!535843))

(assert (= (and b!535843 res!331195) b!535835))

(assert (= (and b!535835 res!331190) b!535840))

(declare-fun m!515355 () Bool)

(assert (=> b!535842 m!515355))

(assert (=> b!535842 m!515355))

(declare-fun m!515357 () Bool)

(assert (=> b!535842 m!515357))

(assert (=> b!535842 m!515357))

(assert (=> b!535842 m!515355))

(declare-fun m!515359 () Bool)

(assert (=> b!535842 m!515359))

(declare-fun m!515361 () Bool)

(assert (=> start!48762 m!515361))

(declare-fun m!515363 () Bool)

(assert (=> start!48762 m!515363))

(assert (=> b!535840 m!515355))

(assert (=> b!535840 m!515355))

(declare-fun m!515365 () Bool)

(assert (=> b!535840 m!515365))

(declare-fun m!515367 () Bool)

(assert (=> b!535832 m!515367))

(declare-fun m!515369 () Bool)

(assert (=> b!535844 m!515369))

(declare-fun m!515371 () Bool)

(assert (=> b!535835 m!515371))

(assert (=> b!535836 m!515355))

(assert (=> b!535836 m!515355))

(declare-fun m!515373 () Bool)

(assert (=> b!535836 m!515373))

(declare-fun m!515375 () Bool)

(assert (=> b!535834 m!515375))

(assert (=> b!535841 m!515355))

(assert (=> b!535841 m!515355))

(declare-fun m!515377 () Bool)

(assert (=> b!535841 m!515377))

(declare-fun m!515379 () Bool)

(assert (=> b!535837 m!515379))

(declare-fun m!515381 () Bool)

(assert (=> b!535833 m!515381))

(assert (=> b!535833 m!515355))

(declare-fun m!515383 () Bool)

(assert (=> b!535838 m!515383))

(declare-fun m!515385 () Bool)

(assert (=> b!535843 m!515385))

(assert (=> b!535843 m!515355))

(check-sat (not b!535838) (not b!535842) (not b!535836) (not start!48762) (not b!535834) (not b!535844) (not b!535832) (not b!535840) (not b!535835) (not b!535841) (not b!535837))
(check-sat)
