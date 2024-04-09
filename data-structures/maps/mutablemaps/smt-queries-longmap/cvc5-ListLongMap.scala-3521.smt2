; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48712 () Bool)

(assert start!48712)

(declare-fun b!534961 () Bool)

(declare-fun res!330318 () Bool)

(declare-fun e!310836 () Bool)

(assert (=> b!534961 (=> (not res!330318) (not e!310836))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33880 0))(
  ( (array!33881 (arr!16275 (Array (_ BitVec 32) (_ BitVec 64))) (size!16639 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33880)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534961 (= res!330318 (and (= (size!16639 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16639 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16639 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534963 () Bool)

(declare-fun res!330325 () Bool)

(assert (=> b!534963 (=> (not res!330325) (not e!310836))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534963 (= res!330325 (validKeyInArray!0 k!1998))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun b!534964 () Bool)

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun e!310835 () Bool)

(assert (=> b!534964 (= e!310835 (and (not (= (select (arr!16275 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16275 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16275 a!3154) index!1177) (select (arr!16275 a!3154) j!147)) (= index!1177 resIndex!32) (bvsge mask!3216 #b00000000000000000000000000000000) (bvslt index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsgt x!1030 #b01111111111111111111111111111110)))))

(declare-fun b!534965 () Bool)

(declare-fun res!330319 () Bool)

(assert (=> b!534965 (=> (not res!330319) (not e!310835))))

(declare-datatypes ((SeekEntryResult!4740 0))(
  ( (MissingZero!4740 (index!21184 (_ BitVec 32))) (Found!4740 (index!21185 (_ BitVec 32))) (Intermediate!4740 (undefined!5552 Bool) (index!21186 (_ BitVec 32)) (x!50166 (_ BitVec 32))) (Undefined!4740) (MissingVacant!4740 (index!21187 (_ BitVec 32))) )
))
(declare-fun lt!245735 () SeekEntryResult!4740)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33880 (_ BitVec 32)) SeekEntryResult!4740)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534965 (= res!330319 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16275 a!3154) j!147) mask!3216) (select (arr!16275 a!3154) j!147) a!3154 mask!3216) lt!245735))))

(declare-fun b!534966 () Bool)

(declare-fun res!330326 () Bool)

(assert (=> b!534966 (=> (not res!330326) (not e!310836))))

(declare-fun arrayContainsKey!0 (array!33880 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534966 (= res!330326 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534967 () Bool)

(declare-fun res!330316 () Bool)

(declare-fun e!310834 () Bool)

(assert (=> b!534967 (=> (not res!330316) (not e!310834))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33880 (_ BitVec 32)) Bool)

(assert (=> b!534967 (= res!330316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534968 () Bool)

(assert (=> b!534968 (= e!310836 e!310834)))

(declare-fun res!330320 () Bool)

(assert (=> b!534968 (=> (not res!330320) (not e!310834))))

(declare-fun lt!245734 () SeekEntryResult!4740)

(assert (=> b!534968 (= res!330320 (or (= lt!245734 (MissingZero!4740 i!1153)) (= lt!245734 (MissingVacant!4740 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33880 (_ BitVec 32)) SeekEntryResult!4740)

(assert (=> b!534968 (= lt!245734 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!534969 () Bool)

(assert (=> b!534969 (= e!310834 e!310835)))

(declare-fun res!330323 () Bool)

(assert (=> b!534969 (=> (not res!330323) (not e!310835))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534969 (= res!330323 (= lt!245735 (Intermediate!4740 false resIndex!32 resX!32)))))

(assert (=> b!534969 (= lt!245735 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16275 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534962 () Bool)

(declare-fun res!330324 () Bool)

(assert (=> b!534962 (=> (not res!330324) (not e!310834))))

(assert (=> b!534962 (= res!330324 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16639 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16639 a!3154)) (= (select (arr!16275 a!3154) resIndex!32) (select (arr!16275 a!3154) j!147))))))

(declare-fun res!330317 () Bool)

(assert (=> start!48712 (=> (not res!330317) (not e!310836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48712 (= res!330317 (validMask!0 mask!3216))))

(assert (=> start!48712 e!310836))

(assert (=> start!48712 true))

(declare-fun array_inv!12049 (array!33880) Bool)

(assert (=> start!48712 (array_inv!12049 a!3154)))

(declare-fun b!534970 () Bool)

(declare-fun res!330322 () Bool)

(assert (=> b!534970 (=> (not res!330322) (not e!310834))))

(declare-datatypes ((List!10447 0))(
  ( (Nil!10444) (Cons!10443 (h!11386 (_ BitVec 64)) (t!16683 List!10447)) )
))
(declare-fun arrayNoDuplicates!0 (array!33880 (_ BitVec 32) List!10447) Bool)

(assert (=> b!534970 (= res!330322 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10444))))

(declare-fun b!534971 () Bool)

(declare-fun res!330321 () Bool)

(assert (=> b!534971 (=> (not res!330321) (not e!310836))))

(assert (=> b!534971 (= res!330321 (validKeyInArray!0 (select (arr!16275 a!3154) j!147)))))

(assert (= (and start!48712 res!330317) b!534961))

(assert (= (and b!534961 res!330318) b!534971))

(assert (= (and b!534971 res!330321) b!534963))

(assert (= (and b!534963 res!330325) b!534966))

(assert (= (and b!534966 res!330326) b!534968))

(assert (= (and b!534968 res!330320) b!534967))

(assert (= (and b!534967 res!330316) b!534970))

(assert (= (and b!534970 res!330322) b!534962))

(assert (= (and b!534962 res!330324) b!534969))

(assert (= (and b!534969 res!330323) b!534965))

(assert (= (and b!534965 res!330319) b!534964))

(declare-fun m!514615 () Bool)

(assert (=> b!534970 m!514615))

(declare-fun m!514617 () Bool)

(assert (=> b!534969 m!514617))

(assert (=> b!534969 m!514617))

(declare-fun m!514619 () Bool)

(assert (=> b!534969 m!514619))

(declare-fun m!514621 () Bool)

(assert (=> b!534962 m!514621))

(assert (=> b!534962 m!514617))

(declare-fun m!514623 () Bool)

(assert (=> b!534968 m!514623))

(declare-fun m!514625 () Bool)

(assert (=> b!534966 m!514625))

(declare-fun m!514627 () Bool)

(assert (=> start!48712 m!514627))

(declare-fun m!514629 () Bool)

(assert (=> start!48712 m!514629))

(declare-fun m!514631 () Bool)

(assert (=> b!534964 m!514631))

(assert (=> b!534964 m!514617))

(assert (=> b!534971 m!514617))

(assert (=> b!534971 m!514617))

(declare-fun m!514633 () Bool)

(assert (=> b!534971 m!514633))

(assert (=> b!534965 m!514617))

(assert (=> b!534965 m!514617))

(declare-fun m!514635 () Bool)

(assert (=> b!534965 m!514635))

(assert (=> b!534965 m!514635))

(assert (=> b!534965 m!514617))

(declare-fun m!514637 () Bool)

(assert (=> b!534965 m!514637))

(declare-fun m!514639 () Bool)

(assert (=> b!534967 m!514639))

(declare-fun m!514641 () Bool)

(assert (=> b!534963 m!514641))

(push 1)

