; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48816 () Bool)

(assert start!48816)

(declare-fun b!536885 () Bool)

(declare-fun res!332242 () Bool)

(declare-fun e!311557 () Bool)

(assert (=> b!536885 (=> (not res!332242) (not e!311557))))

(declare-datatypes ((array!33984 0))(
  ( (array!33985 (arr!16327 (Array (_ BitVec 32) (_ BitVec 64))) (size!16691 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33984)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536885 (= res!332242 (validKeyInArray!0 (select (arr!16327 a!3154) j!147)))))

(declare-fun b!536886 () Bool)

(declare-fun res!332251 () Bool)

(assert (=> b!536886 (=> (not res!332251) (not e!311557))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536886 (= res!332251 (and (= (size!16691 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16691 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16691 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!332246 () Bool)

(assert (=> start!48816 (=> (not res!332246) (not e!311557))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48816 (= res!332246 (validMask!0 mask!3216))))

(assert (=> start!48816 e!311557))

(assert (=> start!48816 true))

(declare-fun array_inv!12101 (array!33984) Bool)

(assert (=> start!48816 (array_inv!12101 a!3154)))

(declare-fun b!536887 () Bool)

(declare-fun e!311555 () Bool)

(assert (=> b!536887 (= e!311557 e!311555)))

(declare-fun res!332244 () Bool)

(assert (=> b!536887 (=> (not res!332244) (not e!311555))))

(declare-datatypes ((SeekEntryResult!4792 0))(
  ( (MissingZero!4792 (index!21392 (_ BitVec 32))) (Found!4792 (index!21393 (_ BitVec 32))) (Intermediate!4792 (undefined!5604 Bool) (index!21394 (_ BitVec 32)) (x!50354 (_ BitVec 32))) (Undefined!4792) (MissingVacant!4792 (index!21395 (_ BitVec 32))) )
))
(declare-fun lt!246255 () SeekEntryResult!4792)

(assert (=> b!536887 (= res!332244 (or (= lt!246255 (MissingZero!4792 i!1153)) (= lt!246255 (MissingVacant!4792 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33984 (_ BitVec 32)) SeekEntryResult!4792)

(assert (=> b!536887 (= lt!246255 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!536888 () Bool)

(declare-fun res!332249 () Bool)

(assert (=> b!536888 (=> (not res!332249) (not e!311555))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33984 (_ BitVec 32)) Bool)

(assert (=> b!536888 (= res!332249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536889 () Bool)

(declare-fun res!332248 () Bool)

(declare-fun e!311553 () Bool)

(assert (=> b!536889 (=> (not res!332248) (not e!311553))))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!536889 (= res!332248 (and (not (= (select (arr!16327 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16327 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16327 a!3154) index!1177) (select (arr!16327 a!3154) j!147)))))))

(declare-fun b!536890 () Bool)

(declare-fun e!311556 () Bool)

(assert (=> b!536890 (= e!311556 false)))

(declare-fun lt!246256 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!246254 () SeekEntryResult!4792)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33984 (_ BitVec 32)) SeekEntryResult!4792)

(assert (=> b!536890 (= lt!246254 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246256 (select (arr!16327 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536891 () Bool)

(declare-fun res!332250 () Bool)

(assert (=> b!536891 (=> (not res!332250) (not e!311553))))

(declare-fun lt!246257 () SeekEntryResult!4792)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536891 (= res!332250 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16327 a!3154) j!147) mask!3216) (select (arr!16327 a!3154) j!147) a!3154 mask!3216) lt!246257))))

(declare-fun b!536892 () Bool)

(assert (=> b!536892 (= e!311553 e!311556)))

(declare-fun res!332241 () Bool)

(assert (=> b!536892 (=> (not res!332241) (not e!311556))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536892 (= res!332241 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246256 #b00000000000000000000000000000000) (bvslt lt!246256 (size!16691 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536892 (= lt!246256 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!536893 () Bool)

(declare-fun res!332245 () Bool)

(assert (=> b!536893 (=> (not res!332245) (not e!311557))))

(declare-fun arrayContainsKey!0 (array!33984 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536893 (= res!332245 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536894 () Bool)

(declare-fun res!332243 () Bool)

(assert (=> b!536894 (=> (not res!332243) (not e!311555))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!536894 (= res!332243 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16691 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16691 a!3154)) (= (select (arr!16327 a!3154) resIndex!32) (select (arr!16327 a!3154) j!147))))))

(declare-fun b!536895 () Bool)

(declare-fun res!332240 () Bool)

(assert (=> b!536895 (=> (not res!332240) (not e!311555))))

(declare-datatypes ((List!10499 0))(
  ( (Nil!10496) (Cons!10495 (h!11438 (_ BitVec 64)) (t!16735 List!10499)) )
))
(declare-fun arrayNoDuplicates!0 (array!33984 (_ BitVec 32) List!10499) Bool)

(assert (=> b!536895 (= res!332240 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10496))))

(declare-fun b!536896 () Bool)

(declare-fun res!332252 () Bool)

(assert (=> b!536896 (=> (not res!332252) (not e!311557))))

(assert (=> b!536896 (= res!332252 (validKeyInArray!0 k0!1998))))

(declare-fun b!536897 () Bool)

(assert (=> b!536897 (= e!311555 e!311553)))

(declare-fun res!332247 () Bool)

(assert (=> b!536897 (=> (not res!332247) (not e!311553))))

(assert (=> b!536897 (= res!332247 (= lt!246257 (Intermediate!4792 false resIndex!32 resX!32)))))

(assert (=> b!536897 (= lt!246257 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16327 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48816 res!332246) b!536886))

(assert (= (and b!536886 res!332251) b!536885))

(assert (= (and b!536885 res!332242) b!536896))

(assert (= (and b!536896 res!332252) b!536893))

(assert (= (and b!536893 res!332245) b!536887))

(assert (= (and b!536887 res!332244) b!536888))

(assert (= (and b!536888 res!332249) b!536895))

(assert (= (and b!536895 res!332240) b!536894))

(assert (= (and b!536894 res!332243) b!536897))

(assert (= (and b!536897 res!332247) b!536891))

(assert (= (and b!536891 res!332250) b!536889))

(assert (= (and b!536889 res!332248) b!536892))

(assert (= (and b!536892 res!332241) b!536890))

(declare-fun m!516219 () Bool)

(assert (=> b!536891 m!516219))

(assert (=> b!536891 m!516219))

(declare-fun m!516221 () Bool)

(assert (=> b!536891 m!516221))

(assert (=> b!536891 m!516221))

(assert (=> b!536891 m!516219))

(declare-fun m!516223 () Bool)

(assert (=> b!536891 m!516223))

(declare-fun m!516225 () Bool)

(assert (=> b!536892 m!516225))

(declare-fun m!516227 () Bool)

(assert (=> b!536896 m!516227))

(assert (=> b!536890 m!516219))

(assert (=> b!536890 m!516219))

(declare-fun m!516229 () Bool)

(assert (=> b!536890 m!516229))

(assert (=> b!536885 m!516219))

(assert (=> b!536885 m!516219))

(declare-fun m!516231 () Bool)

(assert (=> b!536885 m!516231))

(assert (=> b!536897 m!516219))

(assert (=> b!536897 m!516219))

(declare-fun m!516233 () Bool)

(assert (=> b!536897 m!516233))

(declare-fun m!516235 () Bool)

(assert (=> b!536889 m!516235))

(assert (=> b!536889 m!516219))

(declare-fun m!516237 () Bool)

(assert (=> b!536893 m!516237))

(declare-fun m!516239 () Bool)

(assert (=> b!536888 m!516239))

(declare-fun m!516241 () Bool)

(assert (=> b!536887 m!516241))

(declare-fun m!516243 () Bool)

(assert (=> b!536895 m!516243))

(declare-fun m!516245 () Bool)

(assert (=> b!536894 m!516245))

(assert (=> b!536894 m!516219))

(declare-fun m!516247 () Bool)

(assert (=> start!48816 m!516247))

(declare-fun m!516249 () Bool)

(assert (=> start!48816 m!516249))

(check-sat (not start!48816) (not b!536895) (not b!536891) (not b!536890) (not b!536885) (not b!536896) (not b!536892) (not b!536897) (not b!536887) (not b!536888) (not b!536893))
(check-sat)
