; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48856 () Bool)

(assert start!48856)

(declare-fun b!537665 () Bool)

(declare-fun e!311853 () Bool)

(assert (=> b!537665 (= e!311853 false)))

(declare-fun lt!246496 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4812 0))(
  ( (MissingZero!4812 (index!21472 (_ BitVec 32))) (Found!4812 (index!21473 (_ BitVec 32))) (Intermediate!4812 (undefined!5624 Bool) (index!21474 (_ BitVec 32)) (x!50430 (_ BitVec 32))) (Undefined!4812) (MissingVacant!4812 (index!21475 (_ BitVec 32))) )
))
(declare-fun lt!246494 () SeekEntryResult!4812)

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34024 0))(
  ( (array!34025 (arr!16347 (Array (_ BitVec 32) (_ BitVec 64))) (size!16711 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34024)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34024 (_ BitVec 32)) SeekEntryResult!4812)

(assert (=> b!537665 (= lt!246494 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246496 (select (arr!16347 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537666 () Bool)

(declare-fun res!333022 () Bool)

(declare-fun e!311857 () Bool)

(assert (=> b!537666 (=> (not res!333022) (not e!311857))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537666 (= res!333022 (validKeyInArray!0 k!1998))))

(declare-fun b!537667 () Bool)

(declare-fun res!333026 () Bool)

(declare-fun e!311855 () Bool)

(assert (=> b!537667 (=> (not res!333026) (not e!311855))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34024 (_ BitVec 32)) Bool)

(assert (=> b!537667 (= res!333026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537668 () Bool)

(declare-fun res!333027 () Bool)

(assert (=> b!537668 (=> (not res!333027) (not e!311857))))

(declare-fun arrayContainsKey!0 (array!34024 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537668 (= res!333027 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537669 () Bool)

(declare-fun res!333031 () Bool)

(assert (=> b!537669 (=> (not res!333031) (not e!311855))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537669 (= res!333031 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16711 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16711 a!3154)) (= (select (arr!16347 a!3154) resIndex!32) (select (arr!16347 a!3154) j!147))))))

(declare-fun res!333024 () Bool)

(assert (=> start!48856 (=> (not res!333024) (not e!311857))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48856 (= res!333024 (validMask!0 mask!3216))))

(assert (=> start!48856 e!311857))

(assert (=> start!48856 true))

(declare-fun array_inv!12121 (array!34024) Bool)

(assert (=> start!48856 (array_inv!12121 a!3154)))

(declare-fun b!537670 () Bool)

(declare-fun res!333021 () Bool)

(declare-fun e!311854 () Bool)

(assert (=> b!537670 (=> (not res!333021) (not e!311854))))

(declare-fun lt!246495 () SeekEntryResult!4812)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537670 (= res!333021 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16347 a!3154) j!147) mask!3216) (select (arr!16347 a!3154) j!147) a!3154 mask!3216) lt!246495))))

(declare-fun b!537671 () Bool)

(declare-fun res!333028 () Bool)

(assert (=> b!537671 (=> (not res!333028) (not e!311855))))

(declare-datatypes ((List!10519 0))(
  ( (Nil!10516) (Cons!10515 (h!11458 (_ BitVec 64)) (t!16755 List!10519)) )
))
(declare-fun arrayNoDuplicates!0 (array!34024 (_ BitVec 32) List!10519) Bool)

(assert (=> b!537671 (= res!333028 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10516))))

(declare-fun b!537672 () Bool)

(declare-fun res!333025 () Bool)

(assert (=> b!537672 (=> (not res!333025) (not e!311857))))

(assert (=> b!537672 (= res!333025 (validKeyInArray!0 (select (arr!16347 a!3154) j!147)))))

(declare-fun b!537673 () Bool)

(assert (=> b!537673 (= e!311855 e!311854)))

(declare-fun res!333020 () Bool)

(assert (=> b!537673 (=> (not res!333020) (not e!311854))))

(assert (=> b!537673 (= res!333020 (= lt!246495 (Intermediate!4812 false resIndex!32 resX!32)))))

(assert (=> b!537673 (= lt!246495 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16347 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537674 () Bool)

(assert (=> b!537674 (= e!311857 e!311855)))

(declare-fun res!333030 () Bool)

(assert (=> b!537674 (=> (not res!333030) (not e!311855))))

(declare-fun lt!246497 () SeekEntryResult!4812)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537674 (= res!333030 (or (= lt!246497 (MissingZero!4812 i!1153)) (= lt!246497 (MissingVacant!4812 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34024 (_ BitVec 32)) SeekEntryResult!4812)

(assert (=> b!537674 (= lt!246497 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!537675 () Bool)

(declare-fun res!333032 () Bool)

(assert (=> b!537675 (=> (not res!333032) (not e!311857))))

(assert (=> b!537675 (= res!333032 (and (= (size!16711 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16711 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16711 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!537676 () Bool)

(declare-fun res!333023 () Bool)

(assert (=> b!537676 (=> (not res!333023) (not e!311854))))

(assert (=> b!537676 (= res!333023 (and (not (= (select (arr!16347 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16347 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16347 a!3154) index!1177) (select (arr!16347 a!3154) j!147)))))))

(declare-fun b!537677 () Bool)

(assert (=> b!537677 (= e!311854 e!311853)))

(declare-fun res!333029 () Bool)

(assert (=> b!537677 (=> (not res!333029) (not e!311853))))

(assert (=> b!537677 (= res!333029 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246496 #b00000000000000000000000000000000) (bvslt lt!246496 (size!16711 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537677 (= lt!246496 (nextIndex!0 index!1177 x!1030 mask!3216))))

(assert (= (and start!48856 res!333024) b!537675))

(assert (= (and b!537675 res!333032) b!537672))

(assert (= (and b!537672 res!333025) b!537666))

(assert (= (and b!537666 res!333022) b!537668))

(assert (= (and b!537668 res!333027) b!537674))

(assert (= (and b!537674 res!333030) b!537667))

(assert (= (and b!537667 res!333026) b!537671))

(assert (= (and b!537671 res!333028) b!537669))

(assert (= (and b!537669 res!333031) b!537673))

(assert (= (and b!537673 res!333020) b!537670))

(assert (= (and b!537670 res!333021) b!537676))

(assert (= (and b!537676 res!333023) b!537677))

(assert (= (and b!537677 res!333029) b!537665))

(declare-fun m!516859 () Bool)

(assert (=> start!48856 m!516859))

(declare-fun m!516861 () Bool)

(assert (=> start!48856 m!516861))

(declare-fun m!516863 () Bool)

(assert (=> b!537671 m!516863))

(declare-fun m!516865 () Bool)

(assert (=> b!537677 m!516865))

(declare-fun m!516867 () Bool)

(assert (=> b!537669 m!516867))

(declare-fun m!516869 () Bool)

(assert (=> b!537669 m!516869))

(assert (=> b!537670 m!516869))

(assert (=> b!537670 m!516869))

(declare-fun m!516871 () Bool)

(assert (=> b!537670 m!516871))

(assert (=> b!537670 m!516871))

(assert (=> b!537670 m!516869))

(declare-fun m!516873 () Bool)

(assert (=> b!537670 m!516873))

(declare-fun m!516875 () Bool)

(assert (=> b!537666 m!516875))

(assert (=> b!537673 m!516869))

(assert (=> b!537673 m!516869))

(declare-fun m!516877 () Bool)

(assert (=> b!537673 m!516877))

(assert (=> b!537665 m!516869))

(assert (=> b!537665 m!516869))

(declare-fun m!516879 () Bool)

(assert (=> b!537665 m!516879))

(declare-fun m!516881 () Bool)

(assert (=> b!537676 m!516881))

(assert (=> b!537676 m!516869))

(declare-fun m!516883 () Bool)

(assert (=> b!537668 m!516883))

(declare-fun m!516885 () Bool)

(assert (=> b!537674 m!516885))

(assert (=> b!537672 m!516869))

(assert (=> b!537672 m!516869))

(declare-fun m!516887 () Bool)

(assert (=> b!537672 m!516887))

(declare-fun m!516889 () Bool)

(assert (=> b!537667 m!516889))

(push 1)

