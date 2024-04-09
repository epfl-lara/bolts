; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48870 () Bool)

(assert start!48870)

(declare-fun b!537938 () Bool)

(declare-fun e!311960 () Bool)

(assert (=> b!537938 (= e!311960 false)))

(declare-datatypes ((SeekEntryResult!4819 0))(
  ( (MissingZero!4819 (index!21500 (_ BitVec 32))) (Found!4819 (index!21501 (_ BitVec 32))) (Intermediate!4819 (undefined!5631 Bool) (index!21502 (_ BitVec 32)) (x!50453 (_ BitVec 32))) (Undefined!4819) (MissingVacant!4819 (index!21503 (_ BitVec 32))) )
))
(declare-fun lt!246579 () SeekEntryResult!4819)

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34038 0))(
  ( (array!34039 (arr!16354 (Array (_ BitVec 32) (_ BitVec 64))) (size!16718 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34038)

(declare-fun lt!246580 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34038 (_ BitVec 32)) SeekEntryResult!4819)

(assert (=> b!537938 (= lt!246579 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246580 (select (arr!16354 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537939 () Bool)

(declare-fun e!311962 () Bool)

(declare-fun e!311958 () Bool)

(assert (=> b!537939 (= e!311962 e!311958)))

(declare-fun res!333300 () Bool)

(assert (=> b!537939 (=> (not res!333300) (not e!311958))))

(declare-fun lt!246578 () SeekEntryResult!4819)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537939 (= res!333300 (or (= lt!246578 (MissingZero!4819 i!1153)) (= lt!246578 (MissingVacant!4819 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34038 (_ BitVec 32)) SeekEntryResult!4819)

(assert (=> b!537939 (= lt!246578 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!537940 () Bool)

(declare-fun res!333305 () Bool)

(declare-fun e!311961 () Bool)

(assert (=> b!537940 (=> (not res!333305) (not e!311961))))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!537940 (= res!333305 (and (not (= (select (arr!16354 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16354 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16354 a!3154) index!1177) (select (arr!16354 a!3154) j!147)))))))

(declare-fun b!537941 () Bool)

(declare-fun res!333297 () Bool)

(assert (=> b!537941 (=> (not res!333297) (not e!311958))))

(declare-datatypes ((List!10526 0))(
  ( (Nil!10523) (Cons!10522 (h!11465 (_ BitVec 64)) (t!16762 List!10526)) )
))
(declare-fun arrayNoDuplicates!0 (array!34038 (_ BitVec 32) List!10526) Bool)

(assert (=> b!537941 (= res!333297 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10523))))

(declare-fun b!537942 () Bool)

(declare-fun res!333296 () Bool)

(assert (=> b!537942 (=> (not res!333296) (not e!311958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34038 (_ BitVec 32)) Bool)

(assert (=> b!537942 (= res!333296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537943 () Bool)

(declare-fun res!333298 () Bool)

(assert (=> b!537943 (=> (not res!333298) (not e!311961))))

(declare-fun lt!246581 () SeekEntryResult!4819)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537943 (= res!333298 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16354 a!3154) j!147) mask!3216) (select (arr!16354 a!3154) j!147) a!3154 mask!3216) lt!246581))))

(declare-fun b!537944 () Bool)

(assert (=> b!537944 (= e!311958 e!311961)))

(declare-fun res!333294 () Bool)

(assert (=> b!537944 (=> (not res!333294) (not e!311961))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537944 (= res!333294 (= lt!246581 (Intermediate!4819 false resIndex!32 resX!32)))))

(assert (=> b!537944 (= lt!246581 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16354 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537946 () Bool)

(declare-fun res!333304 () Bool)

(assert (=> b!537946 (=> (not res!333304) (not e!311962))))

(declare-fun arrayContainsKey!0 (array!34038 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537946 (= res!333304 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537947 () Bool)

(declare-fun res!333293 () Bool)

(assert (=> b!537947 (=> (not res!333293) (not e!311958))))

(assert (=> b!537947 (= res!333293 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16718 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16718 a!3154)) (= (select (arr!16354 a!3154) resIndex!32) (select (arr!16354 a!3154) j!147))))))

(declare-fun b!537948 () Bool)

(declare-fun res!333302 () Bool)

(assert (=> b!537948 (=> (not res!333302) (not e!311962))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537948 (= res!333302 (validKeyInArray!0 (select (arr!16354 a!3154) j!147)))))

(declare-fun b!537949 () Bool)

(declare-fun res!333299 () Bool)

(assert (=> b!537949 (=> (not res!333299) (not e!311962))))

(assert (=> b!537949 (= res!333299 (and (= (size!16718 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16718 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16718 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!537950 () Bool)

(declare-fun res!333295 () Bool)

(assert (=> b!537950 (=> (not res!333295) (not e!311962))))

(assert (=> b!537950 (= res!333295 (validKeyInArray!0 k0!1998))))

(declare-fun b!537945 () Bool)

(assert (=> b!537945 (= e!311961 e!311960)))

(declare-fun res!333303 () Bool)

(assert (=> b!537945 (=> (not res!333303) (not e!311960))))

(assert (=> b!537945 (= res!333303 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246580 #b00000000000000000000000000000000) (bvslt lt!246580 (size!16718 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537945 (= lt!246580 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun res!333301 () Bool)

(assert (=> start!48870 (=> (not res!333301) (not e!311962))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48870 (= res!333301 (validMask!0 mask!3216))))

(assert (=> start!48870 e!311962))

(assert (=> start!48870 true))

(declare-fun array_inv!12128 (array!34038) Bool)

(assert (=> start!48870 (array_inv!12128 a!3154)))

(assert (= (and start!48870 res!333301) b!537949))

(assert (= (and b!537949 res!333299) b!537948))

(assert (= (and b!537948 res!333302) b!537950))

(assert (= (and b!537950 res!333295) b!537946))

(assert (= (and b!537946 res!333304) b!537939))

(assert (= (and b!537939 res!333300) b!537942))

(assert (= (and b!537942 res!333296) b!537941))

(assert (= (and b!537941 res!333297) b!537947))

(assert (= (and b!537947 res!333293) b!537944))

(assert (= (and b!537944 res!333294) b!537943))

(assert (= (and b!537943 res!333298) b!537940))

(assert (= (and b!537940 res!333305) b!537945))

(assert (= (and b!537945 res!333303) b!537938))

(declare-fun m!517083 () Bool)

(assert (=> b!537948 m!517083))

(assert (=> b!537948 m!517083))

(declare-fun m!517085 () Bool)

(assert (=> b!537948 m!517085))

(declare-fun m!517087 () Bool)

(assert (=> b!537947 m!517087))

(assert (=> b!537947 m!517083))

(declare-fun m!517089 () Bool)

(assert (=> b!537945 m!517089))

(declare-fun m!517091 () Bool)

(assert (=> b!537940 m!517091))

(assert (=> b!537940 m!517083))

(declare-fun m!517093 () Bool)

(assert (=> b!537941 m!517093))

(assert (=> b!537938 m!517083))

(assert (=> b!537938 m!517083))

(declare-fun m!517095 () Bool)

(assert (=> b!537938 m!517095))

(declare-fun m!517097 () Bool)

(assert (=> b!537950 m!517097))

(declare-fun m!517099 () Bool)

(assert (=> b!537939 m!517099))

(declare-fun m!517101 () Bool)

(assert (=> b!537942 m!517101))

(declare-fun m!517103 () Bool)

(assert (=> start!48870 m!517103))

(declare-fun m!517105 () Bool)

(assert (=> start!48870 m!517105))

(assert (=> b!537943 m!517083))

(assert (=> b!537943 m!517083))

(declare-fun m!517107 () Bool)

(assert (=> b!537943 m!517107))

(assert (=> b!537943 m!517107))

(assert (=> b!537943 m!517083))

(declare-fun m!517109 () Bool)

(assert (=> b!537943 m!517109))

(assert (=> b!537944 m!517083))

(assert (=> b!537944 m!517083))

(declare-fun m!517111 () Bool)

(assert (=> b!537944 m!517111))

(declare-fun m!517113 () Bool)

(assert (=> b!537946 m!517113))

(check-sat (not b!537939) (not b!537943) (not b!537944) (not b!537942) (not b!537946) (not b!537938) (not start!48870) (not b!537941) (not b!537950) (not b!537945) (not b!537948))
(check-sat)
