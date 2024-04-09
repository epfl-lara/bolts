; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49534 () Bool)

(assert start!49534)

(declare-fun b!544767 () Bool)

(declare-fun e!314923 () Bool)

(declare-fun e!314926 () Bool)

(assert (=> b!544767 (= e!314923 e!314926)))

(declare-fun res!339021 () Bool)

(assert (=> b!544767 (=> (not res!339021) (not e!314926))))

(declare-datatypes ((SeekEntryResult!4971 0))(
  ( (MissingZero!4971 (index!22108 (_ BitVec 32))) (Found!4971 (index!22109 (_ BitVec 32))) (Intermediate!4971 (undefined!5783 Bool) (index!22110 (_ BitVec 32)) (x!51061 (_ BitVec 32))) (Undefined!4971) (MissingVacant!4971 (index!22111 (_ BitVec 32))) )
))
(declare-fun lt!248624 () SeekEntryResult!4971)

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!544767 (= res!339021 (= lt!248624 (Intermediate!4971 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34360 0))(
  ( (array!34361 (arr!16506 (Array (_ BitVec 32) (_ BitVec 64))) (size!16870 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34360)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34360 (_ BitVec 32)) SeekEntryResult!4971)

(assert (=> b!544767 (= lt!248624 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16506 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544768 () Bool)

(declare-fun res!339027 () Bool)

(declare-fun e!314925 () Bool)

(assert (=> b!544768 (=> (not res!339027) (not e!314925))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!544768 (= res!339027 (validKeyInArray!0 (select (arr!16506 a!3154) j!147)))))

(declare-fun b!544769 () Bool)

(declare-fun res!339024 () Bool)

(assert (=> b!544769 (=> (not res!339024) (not e!314923))))

(declare-datatypes ((List!10678 0))(
  ( (Nil!10675) (Cons!10674 (h!11635 (_ BitVec 64)) (t!16914 List!10678)) )
))
(declare-fun arrayNoDuplicates!0 (array!34360 (_ BitVec 32) List!10678) Bool)

(assert (=> b!544769 (= res!339024 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10675))))

(declare-fun b!544770 () Bool)

(declare-fun res!339029 () Bool)

(assert (=> b!544770 (=> (not res!339029) (not e!314925))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34360 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!544770 (= res!339029 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!544771 () Bool)

(assert (=> b!544771 (= e!314925 e!314923)))

(declare-fun res!339022 () Bool)

(assert (=> b!544771 (=> (not res!339022) (not e!314923))))

(declare-fun lt!248623 () SeekEntryResult!4971)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!544771 (= res!339022 (or (= lt!248623 (MissingZero!4971 i!1153)) (= lt!248623 (MissingVacant!4971 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34360 (_ BitVec 32)) SeekEntryResult!4971)

(assert (=> b!544771 (= lt!248623 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!544772 () Bool)

(declare-fun res!339031 () Bool)

(assert (=> b!544772 (=> (not res!339031) (not e!314925))))

(assert (=> b!544772 (= res!339031 (and (= (size!16870 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16870 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16870 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!544773 () Bool)

(declare-fun res!339030 () Bool)

(assert (=> b!544773 (=> (not res!339030) (not e!314923))))

(assert (=> b!544773 (= res!339030 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16870 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16870 a!3154)) (= (select (arr!16506 a!3154) resIndex!32) (select (arr!16506 a!3154) j!147))))))

(declare-fun b!544774 () Bool)

(declare-fun res!339023 () Bool)

(assert (=> b!544774 (=> (not res!339023) (not e!314925))))

(assert (=> b!544774 (= res!339023 (validKeyInArray!0 k!1998))))

(declare-fun res!339032 () Bool)

(assert (=> start!49534 (=> (not res!339032) (not e!314925))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49534 (= res!339032 (validMask!0 mask!3216))))

(assert (=> start!49534 e!314925))

(assert (=> start!49534 true))

(declare-fun array_inv!12280 (array!34360) Bool)

(assert (=> start!49534 (array_inv!12280 a!3154)))

(declare-fun b!544775 () Bool)

(assert (=> b!544775 (= e!314926 false)))

(declare-fun lt!248622 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544775 (= lt!248622 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!544776 () Bool)

(declare-fun res!339028 () Bool)

(assert (=> b!544776 (=> (not res!339028) (not e!314926))))

(assert (=> b!544776 (= res!339028 (and (not (= (select (arr!16506 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16506 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16506 a!3154) index!1177) (select (arr!16506 a!3154) j!147)))))))

(declare-fun b!544777 () Bool)

(declare-fun res!339025 () Bool)

(assert (=> b!544777 (=> (not res!339025) (not e!314923))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34360 (_ BitVec 32)) Bool)

(assert (=> b!544777 (= res!339025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!544778 () Bool)

(declare-fun res!339026 () Bool)

(assert (=> b!544778 (=> (not res!339026) (not e!314926))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544778 (= res!339026 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16506 a!3154) j!147) mask!3216) (select (arr!16506 a!3154) j!147) a!3154 mask!3216) lt!248624))))

(assert (= (and start!49534 res!339032) b!544772))

(assert (= (and b!544772 res!339031) b!544768))

(assert (= (and b!544768 res!339027) b!544774))

(assert (= (and b!544774 res!339023) b!544770))

(assert (= (and b!544770 res!339029) b!544771))

(assert (= (and b!544771 res!339022) b!544777))

(assert (= (and b!544777 res!339025) b!544769))

(assert (= (and b!544769 res!339024) b!544773))

(assert (= (and b!544773 res!339030) b!544767))

(assert (= (and b!544767 res!339021) b!544778))

(assert (= (and b!544778 res!339026) b!544776))

(assert (= (and b!544776 res!339028) b!544775))

(declare-fun m!522535 () Bool)

(assert (=> b!544774 m!522535))

(declare-fun m!522537 () Bool)

(assert (=> b!544771 m!522537))

(declare-fun m!522539 () Bool)

(assert (=> b!544767 m!522539))

(assert (=> b!544767 m!522539))

(declare-fun m!522541 () Bool)

(assert (=> b!544767 m!522541))

(declare-fun m!522543 () Bool)

(assert (=> b!544777 m!522543))

(declare-fun m!522545 () Bool)

(assert (=> b!544775 m!522545))

(declare-fun m!522547 () Bool)

(assert (=> start!49534 m!522547))

(declare-fun m!522549 () Bool)

(assert (=> start!49534 m!522549))

(declare-fun m!522551 () Bool)

(assert (=> b!544769 m!522551))

(assert (=> b!544778 m!522539))

(assert (=> b!544778 m!522539))

(declare-fun m!522553 () Bool)

(assert (=> b!544778 m!522553))

(assert (=> b!544778 m!522553))

(assert (=> b!544778 m!522539))

(declare-fun m!522555 () Bool)

(assert (=> b!544778 m!522555))

(assert (=> b!544768 m!522539))

(assert (=> b!544768 m!522539))

(declare-fun m!522557 () Bool)

(assert (=> b!544768 m!522557))

(declare-fun m!522559 () Bool)

(assert (=> b!544776 m!522559))

(assert (=> b!544776 m!522539))

(declare-fun m!522561 () Bool)

(assert (=> b!544773 m!522561))

(assert (=> b!544773 m!522539))

(declare-fun m!522563 () Bool)

(assert (=> b!544770 m!522563))

(push 1)

