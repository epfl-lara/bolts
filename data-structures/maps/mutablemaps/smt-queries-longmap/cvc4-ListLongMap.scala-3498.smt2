; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48578 () Bool)

(assert start!48578)

(declare-fun b!532958 () Bool)

(declare-fun e!310212 () Bool)

(assert (=> b!532958 (= e!310212 false)))

(declare-fun lt!245359 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33746 0))(
  ( (array!33747 (arr!16208 (Array (_ BitVec 32) (_ BitVec 64))) (size!16572 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33746)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532958 (= lt!245359 (toIndex!0 (select (arr!16208 a!3154) j!147) mask!3216))))

(declare-fun b!532959 () Bool)

(declare-fun res!328321 () Bool)

(declare-fun e!310213 () Bool)

(assert (=> b!532959 (=> (not res!328321) (not e!310213))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33746 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!532959 (= res!328321 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!532960 () Bool)

(declare-fun res!328314 () Bool)

(assert (=> b!532960 (=> (not res!328314) (not e!310213))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!532960 (= res!328314 (validKeyInArray!0 k!1998))))

(declare-fun b!532961 () Bool)

(declare-fun res!328318 () Bool)

(assert (=> b!532961 (=> (not res!328318) (not e!310213))))

(assert (=> b!532961 (= res!328318 (validKeyInArray!0 (select (arr!16208 a!3154) j!147)))))

(declare-fun b!532962 () Bool)

(assert (=> b!532962 (= e!310213 e!310212)))

(declare-fun res!328316 () Bool)

(assert (=> b!532962 (=> (not res!328316) (not e!310212))))

(declare-datatypes ((SeekEntryResult!4673 0))(
  ( (MissingZero!4673 (index!20916 (_ BitVec 32))) (Found!4673 (index!20917 (_ BitVec 32))) (Intermediate!4673 (undefined!5485 Bool) (index!20918 (_ BitVec 32)) (x!49915 (_ BitVec 32))) (Undefined!4673) (MissingVacant!4673 (index!20919 (_ BitVec 32))) )
))
(declare-fun lt!245360 () SeekEntryResult!4673)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!532962 (= res!328316 (or (= lt!245360 (MissingZero!4673 i!1153)) (= lt!245360 (MissingVacant!4673 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33746 (_ BitVec 32)) SeekEntryResult!4673)

(assert (=> b!532962 (= lt!245360 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!532963 () Bool)

(declare-fun res!328319 () Bool)

(assert (=> b!532963 (=> (not res!328319) (not e!310212))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!532963 (= res!328319 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16572 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16572 a!3154)) (= (select (arr!16208 a!3154) resIndex!32) (select (arr!16208 a!3154) j!147))))))

(declare-fun b!532964 () Bool)

(declare-fun res!328317 () Bool)

(assert (=> b!532964 (=> (not res!328317) (not e!310212))))

(declare-datatypes ((List!10380 0))(
  ( (Nil!10377) (Cons!10376 (h!11319 (_ BitVec 64)) (t!16616 List!10380)) )
))
(declare-fun arrayNoDuplicates!0 (array!33746 (_ BitVec 32) List!10380) Bool)

(assert (=> b!532964 (= res!328317 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10377))))

(declare-fun b!532965 () Bool)

(declare-fun res!328315 () Bool)

(assert (=> b!532965 (=> (not res!328315) (not e!310213))))

(assert (=> b!532965 (= res!328315 (and (= (size!16572 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16572 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16572 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!532966 () Bool)

(declare-fun res!328320 () Bool)

(assert (=> b!532966 (=> (not res!328320) (not e!310212))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33746 (_ BitVec 32)) SeekEntryResult!4673)

(assert (=> b!532966 (= res!328320 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16208 a!3154) j!147) a!3154 mask!3216) (Intermediate!4673 false resIndex!32 resX!32)))))

(declare-fun b!532967 () Bool)

(declare-fun res!328313 () Bool)

(assert (=> b!532967 (=> (not res!328313) (not e!310212))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33746 (_ BitVec 32)) Bool)

(assert (=> b!532967 (= res!328313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!328322 () Bool)

(assert (=> start!48578 (=> (not res!328322) (not e!310213))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48578 (= res!328322 (validMask!0 mask!3216))))

(assert (=> start!48578 e!310213))

(assert (=> start!48578 true))

(declare-fun array_inv!11982 (array!33746) Bool)

(assert (=> start!48578 (array_inv!11982 a!3154)))

(assert (= (and start!48578 res!328322) b!532965))

(assert (= (and b!532965 res!328315) b!532961))

(assert (= (and b!532961 res!328318) b!532960))

(assert (= (and b!532960 res!328314) b!532959))

(assert (= (and b!532959 res!328321) b!532962))

(assert (= (and b!532962 res!328316) b!532967))

(assert (= (and b!532967 res!328313) b!532964))

(assert (= (and b!532964 res!328317) b!532963))

(assert (= (and b!532963 res!328319) b!532966))

(assert (= (and b!532966 res!328320) b!532958))

(declare-fun m!512935 () Bool)

(assert (=> b!532959 m!512935))

(declare-fun m!512937 () Bool)

(assert (=> b!532958 m!512937))

(assert (=> b!532958 m!512937))

(declare-fun m!512939 () Bool)

(assert (=> b!532958 m!512939))

(declare-fun m!512941 () Bool)

(assert (=> b!532963 m!512941))

(assert (=> b!532963 m!512937))

(declare-fun m!512943 () Bool)

(assert (=> b!532964 m!512943))

(declare-fun m!512945 () Bool)

(assert (=> b!532960 m!512945))

(declare-fun m!512947 () Bool)

(assert (=> start!48578 m!512947))

(declare-fun m!512949 () Bool)

(assert (=> start!48578 m!512949))

(assert (=> b!532961 m!512937))

(assert (=> b!532961 m!512937))

(declare-fun m!512951 () Bool)

(assert (=> b!532961 m!512951))

(declare-fun m!512953 () Bool)

(assert (=> b!532967 m!512953))

(declare-fun m!512955 () Bool)

(assert (=> b!532962 m!512955))

(assert (=> b!532966 m!512937))

(assert (=> b!532966 m!512937))

(declare-fun m!512957 () Bool)

(assert (=> b!532966 m!512957))

(push 1)

(assert (not b!532962))

(assert (not b!532959))

(assert (not b!532964))

