; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48794 () Bool)

(assert start!48794)

(declare-fun b!536456 () Bool)

(declare-fun e!311388 () Bool)

(assert (=> b!536456 (= e!311388 false)))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33962 0))(
  ( (array!33963 (arr!16316 (Array (_ BitVec 32) (_ BitVec 64))) (size!16680 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33962)

(declare-datatypes ((SeekEntryResult!4781 0))(
  ( (MissingZero!4781 (index!21348 (_ BitVec 32))) (Found!4781 (index!21349 (_ BitVec 32))) (Intermediate!4781 (undefined!5593 Bool) (index!21350 (_ BitVec 32)) (x!50311 (_ BitVec 32))) (Undefined!4781) (MissingVacant!4781 (index!21351 (_ BitVec 32))) )
))
(declare-fun lt!246124 () SeekEntryResult!4781)

(declare-fun lt!246123 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33962 (_ BitVec 32)) SeekEntryResult!4781)

(assert (=> b!536456 (= lt!246124 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246123 (select (arr!16316 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!331821 () Bool)

(declare-fun e!311390 () Bool)

(assert (=> start!48794 (=> (not res!331821) (not e!311390))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48794 (= res!331821 (validMask!0 mask!3216))))

(assert (=> start!48794 e!311390))

(assert (=> start!48794 true))

(declare-fun array_inv!12090 (array!33962) Bool)

(assert (=> start!48794 (array_inv!12090 a!3154)))

(declare-fun b!536457 () Bool)

(declare-fun res!331823 () Bool)

(assert (=> b!536457 (=> (not res!331823) (not e!311390))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33962 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536457 (= res!331823 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536458 () Bool)

(declare-fun res!331820 () Bool)

(declare-fun e!311389 () Bool)

(assert (=> b!536458 (=> (not res!331820) (not e!311389))))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!536458 (= res!331820 (and (not (= (select (arr!16316 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16316 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16316 a!3154) index!1177) (select (arr!16316 a!3154) j!147)))))))

(declare-fun b!536459 () Bool)

(declare-fun res!331815 () Bool)

(assert (=> b!536459 (=> (not res!331815) (not e!311390))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536459 (= res!331815 (and (= (size!16680 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16680 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16680 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!536460 () Bool)

(declare-fun res!331819 () Bool)

(declare-fun e!311391 () Bool)

(assert (=> b!536460 (=> (not res!331819) (not e!311391))))

(declare-datatypes ((List!10488 0))(
  ( (Nil!10485) (Cons!10484 (h!11427 (_ BitVec 64)) (t!16724 List!10488)) )
))
(declare-fun arrayNoDuplicates!0 (array!33962 (_ BitVec 32) List!10488) Bool)

(assert (=> b!536460 (= res!331819 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10485))))

(declare-fun b!536461 () Bool)

(assert (=> b!536461 (= e!311391 e!311389)))

(declare-fun res!331817 () Bool)

(assert (=> b!536461 (=> (not res!331817) (not e!311389))))

(declare-fun lt!246125 () SeekEntryResult!4781)

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536461 (= res!331817 (= lt!246125 (Intermediate!4781 false resIndex!32 resX!32)))))

(assert (=> b!536461 (= lt!246125 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16316 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536462 () Bool)

(declare-fun res!331814 () Bool)

(assert (=> b!536462 (=> (not res!331814) (not e!311391))))

(assert (=> b!536462 (= res!331814 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16680 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16680 a!3154)) (= (select (arr!16316 a!3154) resIndex!32) (select (arr!16316 a!3154) j!147))))))

(declare-fun b!536463 () Bool)

(declare-fun res!331816 () Bool)

(assert (=> b!536463 (=> (not res!331816) (not e!311391))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33962 (_ BitVec 32)) Bool)

(assert (=> b!536463 (= res!331816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536464 () Bool)

(declare-fun res!331813 () Bool)

(assert (=> b!536464 (=> (not res!331813) (not e!311390))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536464 (= res!331813 (validKeyInArray!0 (select (arr!16316 a!3154) j!147)))))

(declare-fun b!536465 () Bool)

(declare-fun res!331812 () Bool)

(assert (=> b!536465 (=> (not res!331812) (not e!311390))))

(assert (=> b!536465 (= res!331812 (validKeyInArray!0 k!1998))))

(declare-fun b!536466 () Bool)

(assert (=> b!536466 (= e!311389 e!311388)))

(declare-fun res!331811 () Bool)

(assert (=> b!536466 (=> (not res!331811) (not e!311388))))

(assert (=> b!536466 (= res!331811 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246123 #b00000000000000000000000000000000) (bvslt lt!246123 (size!16680 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536466 (= lt!246123 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!536467 () Bool)

(assert (=> b!536467 (= e!311390 e!311391)))

(declare-fun res!331818 () Bool)

(assert (=> b!536467 (=> (not res!331818) (not e!311391))))

(declare-fun lt!246122 () SeekEntryResult!4781)

(assert (=> b!536467 (= res!331818 (or (= lt!246122 (MissingZero!4781 i!1153)) (= lt!246122 (MissingVacant!4781 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33962 (_ BitVec 32)) SeekEntryResult!4781)

(assert (=> b!536467 (= lt!246122 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!536468 () Bool)

(declare-fun res!331822 () Bool)

(assert (=> b!536468 (=> (not res!331822) (not e!311389))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536468 (= res!331822 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16316 a!3154) j!147) mask!3216) (select (arr!16316 a!3154) j!147) a!3154 mask!3216) lt!246125))))

(assert (= (and start!48794 res!331821) b!536459))

(assert (= (and b!536459 res!331815) b!536464))

(assert (= (and b!536464 res!331813) b!536465))

(assert (= (and b!536465 res!331812) b!536457))

(assert (= (and b!536457 res!331823) b!536467))

(assert (= (and b!536467 res!331818) b!536463))

(assert (= (and b!536463 res!331816) b!536460))

(assert (= (and b!536460 res!331819) b!536462))

(assert (= (and b!536462 res!331814) b!536461))

(assert (= (and b!536461 res!331817) b!536468))

(assert (= (and b!536468 res!331822) b!536458))

(assert (= (and b!536458 res!331820) b!536466))

(assert (= (and b!536466 res!331811) b!536456))

(declare-fun m!515867 () Bool)

(assert (=> b!536457 m!515867))

(declare-fun m!515869 () Bool)

(assert (=> b!536464 m!515869))

(assert (=> b!536464 m!515869))

(declare-fun m!515871 () Bool)

(assert (=> b!536464 m!515871))

(declare-fun m!515873 () Bool)

(assert (=> b!536462 m!515873))

(assert (=> b!536462 m!515869))

(assert (=> b!536461 m!515869))

(assert (=> b!536461 m!515869))

(declare-fun m!515875 () Bool)

(assert (=> b!536461 m!515875))

(assert (=> b!536456 m!515869))

(assert (=> b!536456 m!515869))

(declare-fun m!515877 () Bool)

(assert (=> b!536456 m!515877))

(declare-fun m!515879 () Bool)

(assert (=> b!536463 m!515879))

(declare-fun m!515881 () Bool)

(assert (=> b!536467 m!515881))

(declare-fun m!515883 () Bool)

(assert (=> b!536458 m!515883))

(assert (=> b!536458 m!515869))

(declare-fun m!515885 () Bool)

(assert (=> b!536460 m!515885))

(declare-fun m!515887 () Bool)

(assert (=> start!48794 m!515887))

(declare-fun m!515889 () Bool)

(assert (=> start!48794 m!515889))

(assert (=> b!536468 m!515869))

(assert (=> b!536468 m!515869))

(declare-fun m!515891 () Bool)

(assert (=> b!536468 m!515891))

(assert (=> b!536468 m!515891))

(assert (=> b!536468 m!515869))

(declare-fun m!515893 () Bool)

(assert (=> b!536468 m!515893))

(declare-fun m!515895 () Bool)

(assert (=> b!536466 m!515895))

(declare-fun m!515897 () Bool)

(assert (=> b!536465 m!515897))

(push 1)

(assert (not b!536456))

(assert (not b!536460))

(assert (not start!48794))

(assert (not b!536467))

