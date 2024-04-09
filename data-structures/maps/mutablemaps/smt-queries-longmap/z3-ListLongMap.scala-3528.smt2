; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48756 () Bool)

(assert start!48756)

(declare-fun b!535715 () Bool)

(declare-fun res!331081 () Bool)

(declare-fun e!311105 () Bool)

(assert (=> b!535715 (=> (not res!331081) (not e!311105))))

(declare-datatypes ((array!33924 0))(
  ( (array!33925 (arr!16297 (Array (_ BitVec 32) (_ BitVec 64))) (size!16661 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33924)

(declare-datatypes ((List!10469 0))(
  ( (Nil!10466) (Cons!10465 (h!11408 (_ BitVec 64)) (t!16705 List!10469)) )
))
(declare-fun arrayNoDuplicates!0 (array!33924 (_ BitVec 32) List!10469) Bool)

(assert (=> b!535715 (= res!331081 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10466))))

(declare-fun b!535716 () Bool)

(declare-fun res!331070 () Bool)

(declare-fun e!311103 () Bool)

(assert (=> b!535716 (=> (not res!331070) (not e!311103))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!535716 (= res!331070 (and (not (= (select (arr!16297 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16297 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16297 a!3154) index!1177) (select (arr!16297 a!3154) j!147)))))))

(declare-fun b!535718 () Bool)

(declare-fun e!311107 () Bool)

(assert (=> b!535718 (= e!311103 e!311107)))

(declare-fun res!331074 () Bool)

(assert (=> b!535718 (=> (not res!331074) (not e!311107))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun lt!245897 () (_ BitVec 32))

(assert (=> b!535718 (= res!331074 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!245897 #b00000000000000000000000000000000) (bvslt lt!245897 (size!16661 a!3154))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535718 (= lt!245897 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!535719 () Bool)

(declare-fun e!311104 () Bool)

(assert (=> b!535719 (= e!311104 e!311105)))

(declare-fun res!331077 () Bool)

(assert (=> b!535719 (=> (not res!331077) (not e!311105))))

(declare-datatypes ((SeekEntryResult!4762 0))(
  ( (MissingZero!4762 (index!21272 (_ BitVec 32))) (Found!4762 (index!21273 (_ BitVec 32))) (Intermediate!4762 (undefined!5574 Bool) (index!21274 (_ BitVec 32)) (x!50244 (_ BitVec 32))) (Undefined!4762) (MissingVacant!4762 (index!21275 (_ BitVec 32))) )
))
(declare-fun lt!245896 () SeekEntryResult!4762)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535719 (= res!331077 (or (= lt!245896 (MissingZero!4762 i!1153)) (= lt!245896 (MissingVacant!4762 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33924 (_ BitVec 32)) SeekEntryResult!4762)

(assert (=> b!535719 (= lt!245896 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!535720 () Bool)

(declare-fun res!331071 () Bool)

(assert (=> b!535720 (=> (not res!331071) (not e!311104))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535720 (= res!331071 (validKeyInArray!0 (select (arr!16297 a!3154) j!147)))))

(declare-fun b!535721 () Bool)

(declare-fun res!331082 () Bool)

(assert (=> b!535721 (=> (not res!331082) (not e!311105))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33924 (_ BitVec 32)) Bool)

(assert (=> b!535721 (= res!331082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535722 () Bool)

(declare-fun res!331075 () Bool)

(assert (=> b!535722 (=> (not res!331075) (not e!311104))))

(declare-fun arrayContainsKey!0 (array!33924 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535722 (= res!331075 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun res!331078 () Bool)

(assert (=> start!48756 (=> (not res!331078) (not e!311104))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48756 (= res!331078 (validMask!0 mask!3216))))

(assert (=> start!48756 e!311104))

(assert (=> start!48756 true))

(declare-fun array_inv!12071 (array!33924) Bool)

(assert (=> start!48756 (array_inv!12071 a!3154)))

(declare-fun b!535717 () Bool)

(assert (=> b!535717 (= e!311107 false)))

(declare-fun lt!245895 () SeekEntryResult!4762)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33924 (_ BitVec 32)) SeekEntryResult!4762)

(assert (=> b!535717 (= lt!245895 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!245897 (select (arr!16297 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535723 () Bool)

(declare-fun res!331073 () Bool)

(assert (=> b!535723 (=> (not res!331073) (not e!311104))))

(assert (=> b!535723 (= res!331073 (validKeyInArray!0 k0!1998))))

(declare-fun b!535724 () Bool)

(assert (=> b!535724 (= e!311105 e!311103)))

(declare-fun res!331080 () Bool)

(assert (=> b!535724 (=> (not res!331080) (not e!311103))))

(declare-fun lt!245894 () SeekEntryResult!4762)

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!535724 (= res!331080 (= lt!245894 (Intermediate!4762 false resIndex!32 resX!32)))))

(assert (=> b!535724 (= lt!245894 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16297 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535725 () Bool)

(declare-fun res!331072 () Bool)

(assert (=> b!535725 (=> (not res!331072) (not e!311105))))

(assert (=> b!535725 (= res!331072 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16661 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16661 a!3154)) (= (select (arr!16297 a!3154) resIndex!32) (select (arr!16297 a!3154) j!147))))))

(declare-fun b!535726 () Bool)

(declare-fun res!331079 () Bool)

(assert (=> b!535726 (=> (not res!331079) (not e!311103))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535726 (= res!331079 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16297 a!3154) j!147) mask!3216) (select (arr!16297 a!3154) j!147) a!3154 mask!3216) lt!245894))))

(declare-fun b!535727 () Bool)

(declare-fun res!331076 () Bool)

(assert (=> b!535727 (=> (not res!331076) (not e!311104))))

(assert (=> b!535727 (= res!331076 (and (= (size!16661 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16661 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16661 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48756 res!331078) b!535727))

(assert (= (and b!535727 res!331076) b!535720))

(assert (= (and b!535720 res!331071) b!535723))

(assert (= (and b!535723 res!331073) b!535722))

(assert (= (and b!535722 res!331075) b!535719))

(assert (= (and b!535719 res!331077) b!535721))

(assert (= (and b!535721 res!331082) b!535715))

(assert (= (and b!535715 res!331081) b!535725))

(assert (= (and b!535725 res!331072) b!535724))

(assert (= (and b!535724 res!331080) b!535726))

(assert (= (and b!535726 res!331079) b!535716))

(assert (= (and b!535716 res!331070) b!535718))

(assert (= (and b!535718 res!331074) b!535717))

(declare-fun m!515259 () Bool)

(assert (=> b!535717 m!515259))

(assert (=> b!535717 m!515259))

(declare-fun m!515261 () Bool)

(assert (=> b!535717 m!515261))

(declare-fun m!515263 () Bool)

(assert (=> b!535722 m!515263))

(assert (=> b!535724 m!515259))

(assert (=> b!535724 m!515259))

(declare-fun m!515265 () Bool)

(assert (=> b!535724 m!515265))

(declare-fun m!515267 () Bool)

(assert (=> b!535718 m!515267))

(declare-fun m!515269 () Bool)

(assert (=> b!535723 m!515269))

(declare-fun m!515271 () Bool)

(assert (=> b!535716 m!515271))

(assert (=> b!535716 m!515259))

(assert (=> b!535720 m!515259))

(assert (=> b!535720 m!515259))

(declare-fun m!515273 () Bool)

(assert (=> b!535720 m!515273))

(declare-fun m!515275 () Bool)

(assert (=> b!535715 m!515275))

(declare-fun m!515277 () Bool)

(assert (=> b!535719 m!515277))

(assert (=> b!535726 m!515259))

(assert (=> b!535726 m!515259))

(declare-fun m!515279 () Bool)

(assert (=> b!535726 m!515279))

(assert (=> b!535726 m!515279))

(assert (=> b!535726 m!515259))

(declare-fun m!515281 () Bool)

(assert (=> b!535726 m!515281))

(declare-fun m!515283 () Bool)

(assert (=> start!48756 m!515283))

(declare-fun m!515285 () Bool)

(assert (=> start!48756 m!515285))

(declare-fun m!515287 () Bool)

(assert (=> b!535725 m!515287))

(assert (=> b!535725 m!515259))

(declare-fun m!515289 () Bool)

(assert (=> b!535721 m!515289))

(check-sat (not b!535726) (not b!535719) (not b!535717) (not b!535724) (not b!535715) (not b!535722) (not b!535720) (not b!535718) (not b!535723) (not b!535721) (not start!48756))
(check-sat)
