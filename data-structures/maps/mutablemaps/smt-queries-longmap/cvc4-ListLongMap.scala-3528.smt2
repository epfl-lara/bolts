; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48758 () Bool)

(assert start!48758)

(declare-fun b!535754 () Bool)

(declare-fun res!331116 () Bool)

(declare-fun e!311118 () Bool)

(assert (=> b!535754 (=> (not res!331116) (not e!311118))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33926 0))(
  ( (array!33927 (arr!16298 (Array (_ BitVec 32) (_ BitVec 64))) (size!16662 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33926)

(assert (=> b!535754 (= res!331116 (and (not (= (select (arr!16298 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16298 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16298 a!3154) index!1177) (select (arr!16298 a!3154) j!147)))))))

(declare-fun b!535755 () Bool)

(declare-fun res!331110 () Bool)

(declare-fun e!311122 () Bool)

(assert (=> b!535755 (=> (not res!331110) (not e!311122))))

(declare-datatypes ((List!10470 0))(
  ( (Nil!10467) (Cons!10466 (h!11409 (_ BitVec 64)) (t!16706 List!10470)) )
))
(declare-fun arrayNoDuplicates!0 (array!33926 (_ BitVec 32) List!10470) Bool)

(assert (=> b!535755 (= res!331110 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10467))))

(declare-fun res!331121 () Bool)

(declare-fun e!311121 () Bool)

(assert (=> start!48758 (=> (not res!331121) (not e!311121))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48758 (= res!331121 (validMask!0 mask!3216))))

(assert (=> start!48758 e!311121))

(assert (=> start!48758 true))

(declare-fun array_inv!12072 (array!33926) Bool)

(assert (=> start!48758 (array_inv!12072 a!3154)))

(declare-fun b!535756 () Bool)

(declare-fun res!331111 () Bool)

(assert (=> b!535756 (=> (not res!331111) (not e!311118))))

(declare-datatypes ((SeekEntryResult!4763 0))(
  ( (MissingZero!4763 (index!21276 (_ BitVec 32))) (Found!4763 (index!21277 (_ BitVec 32))) (Intermediate!4763 (undefined!5575 Bool) (index!21278 (_ BitVec 32)) (x!50245 (_ BitVec 32))) (Undefined!4763) (MissingVacant!4763 (index!21279 (_ BitVec 32))) )
))
(declare-fun lt!245908 () SeekEntryResult!4763)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33926 (_ BitVec 32)) SeekEntryResult!4763)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535756 (= res!331111 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16298 a!3154) j!147) mask!3216) (select (arr!16298 a!3154) j!147) a!3154 mask!3216) lt!245908))))

(declare-fun b!535757 () Bool)

(declare-fun e!311120 () Bool)

(assert (=> b!535757 (= e!311120 false)))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!245907 () (_ BitVec 32))

(declare-fun lt!245906 () SeekEntryResult!4763)

(assert (=> b!535757 (= lt!245906 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!245907 (select (arr!16298 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535758 () Bool)

(declare-fun res!331113 () Bool)

(assert (=> b!535758 (=> (not res!331113) (not e!311121))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33926 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535758 (= res!331113 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535759 () Bool)

(declare-fun res!331118 () Bool)

(assert (=> b!535759 (=> (not res!331118) (not e!311121))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535759 (= res!331118 (validKeyInArray!0 (select (arr!16298 a!3154) j!147)))))

(declare-fun b!535760 () Bool)

(assert (=> b!535760 (= e!311122 e!311118)))

(declare-fun res!331114 () Bool)

(assert (=> b!535760 (=> (not res!331114) (not e!311118))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!535760 (= res!331114 (= lt!245908 (Intermediate!4763 false resIndex!32 resX!32)))))

(assert (=> b!535760 (= lt!245908 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16298 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535761 () Bool)

(declare-fun res!331117 () Bool)

(assert (=> b!535761 (=> (not res!331117) (not e!311121))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535761 (= res!331117 (and (= (size!16662 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16662 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16662 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!535762 () Bool)

(declare-fun res!331109 () Bool)

(assert (=> b!535762 (=> (not res!331109) (not e!311121))))

(assert (=> b!535762 (= res!331109 (validKeyInArray!0 k!1998))))

(declare-fun b!535763 () Bool)

(declare-fun res!331119 () Bool)

(assert (=> b!535763 (=> (not res!331119) (not e!311122))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33926 (_ BitVec 32)) Bool)

(assert (=> b!535763 (= res!331119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535764 () Bool)

(assert (=> b!535764 (= e!311121 e!311122)))

(declare-fun res!331120 () Bool)

(assert (=> b!535764 (=> (not res!331120) (not e!311122))))

(declare-fun lt!245909 () SeekEntryResult!4763)

(assert (=> b!535764 (= res!331120 (or (= lt!245909 (MissingZero!4763 i!1153)) (= lt!245909 (MissingVacant!4763 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33926 (_ BitVec 32)) SeekEntryResult!4763)

(assert (=> b!535764 (= lt!245909 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!535765 () Bool)

(assert (=> b!535765 (= e!311118 e!311120)))

(declare-fun res!331112 () Bool)

(assert (=> b!535765 (=> (not res!331112) (not e!311120))))

(assert (=> b!535765 (= res!331112 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!245907 #b00000000000000000000000000000000) (bvslt lt!245907 (size!16662 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535765 (= lt!245907 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!535766 () Bool)

(declare-fun res!331115 () Bool)

(assert (=> b!535766 (=> (not res!331115) (not e!311122))))

(assert (=> b!535766 (= res!331115 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16662 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16662 a!3154)) (= (select (arr!16298 a!3154) resIndex!32) (select (arr!16298 a!3154) j!147))))))

(assert (= (and start!48758 res!331121) b!535761))

(assert (= (and b!535761 res!331117) b!535759))

(assert (= (and b!535759 res!331118) b!535762))

(assert (= (and b!535762 res!331109) b!535758))

(assert (= (and b!535758 res!331113) b!535764))

(assert (= (and b!535764 res!331120) b!535763))

(assert (= (and b!535763 res!331119) b!535755))

(assert (= (and b!535755 res!331110) b!535766))

(assert (= (and b!535766 res!331115) b!535760))

(assert (= (and b!535760 res!331114) b!535756))

(assert (= (and b!535756 res!331111) b!535754))

(assert (= (and b!535754 res!331116) b!535765))

(assert (= (and b!535765 res!331112) b!535757))

(declare-fun m!515291 () Bool)

(assert (=> b!535765 m!515291))

(declare-fun m!515293 () Bool)

(assert (=> b!535756 m!515293))

(assert (=> b!535756 m!515293))

(declare-fun m!515295 () Bool)

(assert (=> b!535756 m!515295))

(assert (=> b!535756 m!515295))

(assert (=> b!535756 m!515293))

(declare-fun m!515297 () Bool)

(assert (=> b!535756 m!515297))

(declare-fun m!515299 () Bool)

(assert (=> start!48758 m!515299))

(declare-fun m!515301 () Bool)

(assert (=> start!48758 m!515301))

(declare-fun m!515303 () Bool)

(assert (=> b!535763 m!515303))

(declare-fun m!515305 () Bool)

(assert (=> b!535764 m!515305))

(declare-fun m!515307 () Bool)

(assert (=> b!535754 m!515307))

(assert (=> b!535754 m!515293))

(assert (=> b!535760 m!515293))

(assert (=> b!535760 m!515293))

(declare-fun m!515309 () Bool)

(assert (=> b!535760 m!515309))

(assert (=> b!535757 m!515293))

(assert (=> b!535757 m!515293))

(declare-fun m!515311 () Bool)

(assert (=> b!535757 m!515311))

(declare-fun m!515313 () Bool)

(assert (=> b!535762 m!515313))

(declare-fun m!515315 () Bool)

(assert (=> b!535766 m!515315))

(assert (=> b!535766 m!515293))

(assert (=> b!535759 m!515293))

(assert (=> b!535759 m!515293))

(declare-fun m!515317 () Bool)

(assert (=> b!535759 m!515317))

(declare-fun m!515319 () Bool)

(assert (=> b!535758 m!515319))

(declare-fun m!515321 () Bool)

(assert (=> b!535755 m!515321))

(push 1)

(assert (not b!535763))

(assert (not b!535755))

(assert (not b!535759))

(assert (not b!535757))

(assert (not b!535764))

(assert (not b!535760))

(assert (not b!535765))

(assert (not b!535758))

(assert (not start!48758))

