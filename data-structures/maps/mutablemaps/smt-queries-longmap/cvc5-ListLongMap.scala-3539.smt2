; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48820 () Bool)

(assert start!48820)

(declare-fun b!536963 () Bool)

(declare-fun res!332324 () Bool)

(declare-fun e!311587 () Bool)

(assert (=> b!536963 (=> (not res!332324) (not e!311587))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33988 0))(
  ( (array!33989 (arr!16329 (Array (_ BitVec 32) (_ BitVec 64))) (size!16693 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33988)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536963 (= res!332324 (and (= (size!16693 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16693 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16693 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!536964 () Bool)

(declare-fun res!332325 () Bool)

(assert (=> b!536964 (=> (not res!332325) (not e!311587))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33988 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536964 (= res!332325 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536965 () Bool)

(declare-fun res!332321 () Bool)

(declare-fun e!311586 () Bool)

(assert (=> b!536965 (=> (not res!332321) (not e!311586))))

(declare-datatypes ((SeekEntryResult!4794 0))(
  ( (MissingZero!4794 (index!21400 (_ BitVec 32))) (Found!4794 (index!21401 (_ BitVec 32))) (Intermediate!4794 (undefined!5606 Bool) (index!21402 (_ BitVec 32)) (x!50364 (_ BitVec 32))) (Undefined!4794) (MissingVacant!4794 (index!21403 (_ BitVec 32))) )
))
(declare-fun lt!246281 () SeekEntryResult!4794)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33988 (_ BitVec 32)) SeekEntryResult!4794)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536965 (= res!332321 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16329 a!3154) j!147) mask!3216) (select (arr!16329 a!3154) j!147) a!3154 mask!3216) lt!246281))))

(declare-fun b!536966 () Bool)

(declare-fun res!332326 () Bool)

(assert (=> b!536966 (=> (not res!332326) (not e!311587))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536966 (= res!332326 (validKeyInArray!0 k!1998))))

(declare-fun b!536967 () Bool)

(declare-fun res!332319 () Bool)

(declare-fun e!311585 () Bool)

(assert (=> b!536967 (=> (not res!332319) (not e!311585))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33988 (_ BitVec 32)) Bool)

(assert (=> b!536967 (= res!332319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536969 () Bool)

(declare-fun e!311583 () Bool)

(assert (=> b!536969 (= e!311583 false)))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!246279 () (_ BitVec 32))

(declare-fun lt!246278 () SeekEntryResult!4794)

(assert (=> b!536969 (= lt!246278 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246279 (select (arr!16329 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536970 () Bool)

(declare-fun res!332320 () Bool)

(assert (=> b!536970 (=> (not res!332320) (not e!311587))))

(assert (=> b!536970 (= res!332320 (validKeyInArray!0 (select (arr!16329 a!3154) j!147)))))

(declare-fun b!536971 () Bool)

(declare-fun res!332330 () Bool)

(assert (=> b!536971 (=> (not res!332330) (not e!311585))))

(declare-datatypes ((List!10501 0))(
  ( (Nil!10498) (Cons!10497 (h!11440 (_ BitVec 64)) (t!16737 List!10501)) )
))
(declare-fun arrayNoDuplicates!0 (array!33988 (_ BitVec 32) List!10501) Bool)

(assert (=> b!536971 (= res!332330 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10498))))

(declare-fun b!536972 () Bool)

(declare-fun res!332327 () Bool)

(assert (=> b!536972 (=> (not res!332327) (not e!311586))))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!536972 (= res!332327 (and (not (= (select (arr!16329 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16329 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16329 a!3154) index!1177) (select (arr!16329 a!3154) j!147)))))))

(declare-fun b!536973 () Bool)

(assert (=> b!536973 (= e!311587 e!311585)))

(declare-fun res!332318 () Bool)

(assert (=> b!536973 (=> (not res!332318) (not e!311585))))

(declare-fun lt!246280 () SeekEntryResult!4794)

(assert (=> b!536973 (= res!332318 (or (= lt!246280 (MissingZero!4794 i!1153)) (= lt!246280 (MissingVacant!4794 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33988 (_ BitVec 32)) SeekEntryResult!4794)

(assert (=> b!536973 (= lt!246280 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!536968 () Bool)

(declare-fun res!332328 () Bool)

(assert (=> b!536968 (=> (not res!332328) (not e!311585))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536968 (= res!332328 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16693 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16693 a!3154)) (= (select (arr!16329 a!3154) resIndex!32) (select (arr!16329 a!3154) j!147))))))

(declare-fun res!332323 () Bool)

(assert (=> start!48820 (=> (not res!332323) (not e!311587))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48820 (= res!332323 (validMask!0 mask!3216))))

(assert (=> start!48820 e!311587))

(assert (=> start!48820 true))

(declare-fun array_inv!12103 (array!33988) Bool)

(assert (=> start!48820 (array_inv!12103 a!3154)))

(declare-fun b!536974 () Bool)

(assert (=> b!536974 (= e!311585 e!311586)))

(declare-fun res!332322 () Bool)

(assert (=> b!536974 (=> (not res!332322) (not e!311586))))

(assert (=> b!536974 (= res!332322 (= lt!246281 (Intermediate!4794 false resIndex!32 resX!32)))))

(assert (=> b!536974 (= lt!246281 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16329 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536975 () Bool)

(assert (=> b!536975 (= e!311586 e!311583)))

(declare-fun res!332329 () Bool)

(assert (=> b!536975 (=> (not res!332329) (not e!311583))))

(assert (=> b!536975 (= res!332329 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246279 #b00000000000000000000000000000000) (bvslt lt!246279 (size!16693 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536975 (= lt!246279 (nextIndex!0 index!1177 x!1030 mask!3216))))

(assert (= (and start!48820 res!332323) b!536963))

(assert (= (and b!536963 res!332324) b!536970))

(assert (= (and b!536970 res!332320) b!536966))

(assert (= (and b!536966 res!332326) b!536964))

(assert (= (and b!536964 res!332325) b!536973))

(assert (= (and b!536973 res!332318) b!536967))

(assert (= (and b!536967 res!332319) b!536971))

(assert (= (and b!536971 res!332330) b!536968))

(assert (= (and b!536968 res!332328) b!536974))

(assert (= (and b!536974 res!332322) b!536965))

(assert (= (and b!536965 res!332321) b!536972))

(assert (= (and b!536972 res!332327) b!536975))

(assert (= (and b!536975 res!332329) b!536969))

(declare-fun m!516283 () Bool)

(assert (=> b!536974 m!516283))

(assert (=> b!536974 m!516283))

(declare-fun m!516285 () Bool)

(assert (=> b!536974 m!516285))

(declare-fun m!516287 () Bool)

(assert (=> b!536972 m!516287))

(assert (=> b!536972 m!516283))

(declare-fun m!516289 () Bool)

(assert (=> start!48820 m!516289))

(declare-fun m!516291 () Bool)

(assert (=> start!48820 m!516291))

(assert (=> b!536970 m!516283))

(assert (=> b!536970 m!516283))

(declare-fun m!516293 () Bool)

(assert (=> b!536970 m!516293))

(declare-fun m!516295 () Bool)

(assert (=> b!536966 m!516295))

(declare-fun m!516297 () Bool)

(assert (=> b!536968 m!516297))

(assert (=> b!536968 m!516283))

(declare-fun m!516299 () Bool)

(assert (=> b!536973 m!516299))

(assert (=> b!536965 m!516283))

(assert (=> b!536965 m!516283))

(declare-fun m!516301 () Bool)

(assert (=> b!536965 m!516301))

(assert (=> b!536965 m!516301))

(assert (=> b!536965 m!516283))

(declare-fun m!516303 () Bool)

(assert (=> b!536965 m!516303))

(declare-fun m!516305 () Bool)

(assert (=> b!536971 m!516305))

(assert (=> b!536969 m!516283))

(assert (=> b!536969 m!516283))

(declare-fun m!516307 () Bool)

(assert (=> b!536969 m!516307))

(declare-fun m!516309 () Bool)

(assert (=> b!536964 m!516309))

(declare-fun m!516311 () Bool)

(assert (=> b!536975 m!516311))

(declare-fun m!516313 () Bool)

(assert (=> b!536967 m!516313))

(push 1)

