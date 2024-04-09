; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48850 () Bool)

(assert start!48850)

(declare-fun res!332907 () Bool)

(declare-fun e!311808 () Bool)

(assert (=> start!48850 (=> (not res!332907) (not e!311808))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48850 (= res!332907 (validMask!0 mask!3216))))

(assert (=> start!48850 e!311808))

(assert (=> start!48850 true))

(declare-datatypes ((array!34018 0))(
  ( (array!34019 (arr!16344 (Array (_ BitVec 32) (_ BitVec 64))) (size!16708 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34018)

(declare-fun array_inv!12118 (array!34018) Bool)

(assert (=> start!48850 (array_inv!12118 a!3154)))

(declare-fun b!537548 () Bool)

(declare-fun res!332904 () Bool)

(declare-fun e!311811 () Bool)

(assert (=> b!537548 (=> (not res!332904) (not e!311811))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34018 (_ BitVec 32)) Bool)

(assert (=> b!537548 (= res!332904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537549 () Bool)

(assert (=> b!537549 (= e!311808 e!311811)))

(declare-fun res!332915 () Bool)

(assert (=> b!537549 (=> (not res!332915) (not e!311811))))

(declare-datatypes ((SeekEntryResult!4809 0))(
  ( (MissingZero!4809 (index!21460 (_ BitVec 32))) (Found!4809 (index!21461 (_ BitVec 32))) (Intermediate!4809 (undefined!5621 Bool) (index!21462 (_ BitVec 32)) (x!50419 (_ BitVec 32))) (Undefined!4809) (MissingVacant!4809 (index!21463 (_ BitVec 32))) )
))
(declare-fun lt!246460 () SeekEntryResult!4809)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537549 (= res!332915 (or (= lt!246460 (MissingZero!4809 i!1153)) (= lt!246460 (MissingVacant!4809 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34018 (_ BitVec 32)) SeekEntryResult!4809)

(assert (=> b!537549 (= lt!246460 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!537550 () Bool)

(declare-fun res!332910 () Bool)

(declare-fun e!311809 () Bool)

(assert (=> b!537550 (=> (not res!332910) (not e!311809))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun lt!246461 () SeekEntryResult!4809)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34018 (_ BitVec 32)) SeekEntryResult!4809)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537550 (= res!332910 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16344 a!3154) j!147) mask!3216) (select (arr!16344 a!3154) j!147) a!3154 mask!3216) lt!246461))))

(declare-fun b!537551 () Bool)

(declare-fun e!311810 () Bool)

(assert (=> b!537551 (= e!311809 e!311810)))

(declare-fun res!332906 () Bool)

(assert (=> b!537551 (=> (not res!332906) (not e!311810))))

(declare-fun lt!246458 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537551 (= res!332906 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246458 #b00000000000000000000000000000000) (bvslt lt!246458 (size!16708 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537551 (= lt!246458 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!537552 () Bool)

(declare-fun res!332914 () Bool)

(assert (=> b!537552 (=> (not res!332914) (not e!311811))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!537552 (= res!332914 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16708 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16708 a!3154)) (= (select (arr!16344 a!3154) resIndex!32) (select (arr!16344 a!3154) j!147))))))

(declare-fun b!537553 () Bool)

(declare-fun res!332903 () Bool)

(assert (=> b!537553 (=> (not res!332903) (not e!311808))))

(declare-fun arrayContainsKey!0 (array!34018 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537553 (= res!332903 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537554 () Bool)

(declare-fun res!332909 () Bool)

(assert (=> b!537554 (=> (not res!332909) (not e!311808))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537554 (= res!332909 (validKeyInArray!0 k!1998))))

(declare-fun b!537555 () Bool)

(declare-fun res!332908 () Bool)

(assert (=> b!537555 (=> (not res!332908) (not e!311811))))

(declare-datatypes ((List!10516 0))(
  ( (Nil!10513) (Cons!10512 (h!11455 (_ BitVec 64)) (t!16752 List!10516)) )
))
(declare-fun arrayNoDuplicates!0 (array!34018 (_ BitVec 32) List!10516) Bool)

(assert (=> b!537555 (= res!332908 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10513))))

(declare-fun b!537556 () Bool)

(declare-fun res!332912 () Bool)

(assert (=> b!537556 (=> (not res!332912) (not e!311809))))

(assert (=> b!537556 (= res!332912 (and (not (= (select (arr!16344 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16344 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16344 a!3154) index!1177) (select (arr!16344 a!3154) j!147)))))))

(declare-fun b!537557 () Bool)

(assert (=> b!537557 (= e!311811 e!311809)))

(declare-fun res!332905 () Bool)

(assert (=> b!537557 (=> (not res!332905) (not e!311809))))

(assert (=> b!537557 (= res!332905 (= lt!246461 (Intermediate!4809 false resIndex!32 resX!32)))))

(assert (=> b!537557 (= lt!246461 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16344 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537558 () Bool)

(declare-fun res!332913 () Bool)

(assert (=> b!537558 (=> (not res!332913) (not e!311808))))

(assert (=> b!537558 (= res!332913 (and (= (size!16708 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16708 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16708 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!537559 () Bool)

(declare-fun res!332911 () Bool)

(assert (=> b!537559 (=> (not res!332911) (not e!311808))))

(assert (=> b!537559 (= res!332911 (validKeyInArray!0 (select (arr!16344 a!3154) j!147)))))

(declare-fun b!537560 () Bool)

(assert (=> b!537560 (= e!311810 false)))

(declare-fun lt!246459 () SeekEntryResult!4809)

(assert (=> b!537560 (= lt!246459 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246458 (select (arr!16344 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48850 res!332907) b!537558))

(assert (= (and b!537558 res!332913) b!537559))

(assert (= (and b!537559 res!332911) b!537554))

(assert (= (and b!537554 res!332909) b!537553))

(assert (= (and b!537553 res!332903) b!537549))

(assert (= (and b!537549 res!332915) b!537548))

(assert (= (and b!537548 res!332904) b!537555))

(assert (= (and b!537555 res!332908) b!537552))

(assert (= (and b!537552 res!332914) b!537557))

(assert (= (and b!537557 res!332905) b!537550))

(assert (= (and b!537550 res!332910) b!537556))

(assert (= (and b!537556 res!332912) b!537551))

(assert (= (and b!537551 res!332906) b!537560))

(declare-fun m!516763 () Bool)

(assert (=> b!537548 m!516763))

(declare-fun m!516765 () Bool)

(assert (=> b!537560 m!516765))

(assert (=> b!537560 m!516765))

(declare-fun m!516767 () Bool)

(assert (=> b!537560 m!516767))

(declare-fun m!516769 () Bool)

(assert (=> b!537554 m!516769))

(declare-fun m!516771 () Bool)

(assert (=> b!537549 m!516771))

(declare-fun m!516773 () Bool)

(assert (=> b!537552 m!516773))

(assert (=> b!537552 m!516765))

(declare-fun m!516775 () Bool)

(assert (=> b!537556 m!516775))

(assert (=> b!537556 m!516765))

(assert (=> b!537557 m!516765))

(assert (=> b!537557 m!516765))

(declare-fun m!516777 () Bool)

(assert (=> b!537557 m!516777))

(declare-fun m!516779 () Bool)

(assert (=> b!537551 m!516779))

(assert (=> b!537550 m!516765))

(assert (=> b!537550 m!516765))

(declare-fun m!516781 () Bool)

(assert (=> b!537550 m!516781))

(assert (=> b!537550 m!516781))

(assert (=> b!537550 m!516765))

(declare-fun m!516783 () Bool)

(assert (=> b!537550 m!516783))

(declare-fun m!516785 () Bool)

(assert (=> b!537555 m!516785))

(assert (=> b!537559 m!516765))

(assert (=> b!537559 m!516765))

(declare-fun m!516787 () Bool)

(assert (=> b!537559 m!516787))

(declare-fun m!516789 () Bool)

(assert (=> b!537553 m!516789))

(declare-fun m!516791 () Bool)

(assert (=> start!48850 m!516791))

(declare-fun m!516793 () Bool)

(assert (=> start!48850 m!516793))

(push 1)

