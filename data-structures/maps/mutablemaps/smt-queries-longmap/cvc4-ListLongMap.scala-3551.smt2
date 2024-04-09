; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48896 () Bool)

(assert start!48896)

(declare-fun b!538445 () Bool)

(declare-fun res!333809 () Bool)

(declare-fun e!312228 () Bool)

(assert (=> b!538445 (=> (not res!333809) (not e!312228))))

(declare-datatypes ((array!34064 0))(
  ( (array!34065 (arr!16367 (Array (_ BitVec 32) (_ BitVec 64))) (size!16731 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34064)

(declare-datatypes ((List!10539 0))(
  ( (Nil!10536) (Cons!10535 (h!11478 (_ BitVec 64)) (t!16775 List!10539)) )
))
(declare-fun arrayNoDuplicates!0 (array!34064 (_ BitVec 32) List!10539) Bool)

(assert (=> b!538445 (= res!333809 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10536))))

(declare-fun b!538446 () Bool)

(declare-fun e!312227 () Bool)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!538446 (= e!312227 (not (or (bvslt mask!3216 #b00000000000000000000000000000000) (bvslt index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)))))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!246841 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4832 0))(
  ( (MissingZero!4832 (index!21552 (_ BitVec 32))) (Found!4832 (index!21553 (_ BitVec 32))) (Intermediate!4832 (undefined!5644 Bool) (index!21554 (_ BitVec 32)) (x!50498 (_ BitVec 32))) (Undefined!4832) (MissingVacant!4832 (index!21555 (_ BitVec 32))) )
))
(declare-fun lt!246842 () SeekEntryResult!4832)

(declare-fun i!1153 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34064 (_ BitVec 32)) SeekEntryResult!4832)

(assert (=> b!538446 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246841 (select (store (arr!16367 a!3154) i!1153 k!1998) j!147) (array!34065 (store (arr!16367 a!3154) i!1153 k!1998) (size!16731 a!3154)) mask!3216) lt!246842)))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((Unit!16842 0))(
  ( (Unit!16843) )
))
(declare-fun lt!246839 () Unit!16842)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34064 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16842)

(assert (=> b!538446 (= lt!246839 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!246841 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!538447 () Bool)

(declare-fun e!312226 () Bool)

(assert (=> b!538447 (= e!312228 e!312226)))

(declare-fun res!333800 () Bool)

(assert (=> b!538447 (=> (not res!333800) (not e!312226))))

(declare-fun lt!246845 () SeekEntryResult!4832)

(assert (=> b!538447 (= res!333800 (= lt!246845 lt!246842))))

(assert (=> b!538447 (= lt!246842 (Intermediate!4832 false resIndex!32 resX!32))))

(assert (=> b!538447 (= lt!246845 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16367 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538448 () Bool)

(declare-fun res!333801 () Bool)

(declare-fun e!312223 () Bool)

(assert (=> b!538448 (=> (not res!333801) (not e!312223))))

(declare-fun arrayContainsKey!0 (array!34064 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538448 (= res!333801 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538449 () Bool)

(declare-fun res!333808 () Bool)

(assert (=> b!538449 (=> (not res!333808) (not e!312228))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34064 (_ BitVec 32)) Bool)

(assert (=> b!538449 (= res!333808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538450 () Bool)

(declare-fun res!333810 () Bool)

(assert (=> b!538450 (=> (not res!333810) (not e!312223))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538450 (= res!333810 (validKeyInArray!0 k!1998))))

(declare-fun res!333812 () Bool)

(assert (=> start!48896 (=> (not res!333812) (not e!312223))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48896 (= res!333812 (validMask!0 mask!3216))))

(assert (=> start!48896 e!312223))

(assert (=> start!48896 true))

(declare-fun array_inv!12141 (array!34064) Bool)

(assert (=> start!48896 (array_inv!12141 a!3154)))

(declare-fun b!538451 () Bool)

(declare-fun res!333803 () Bool)

(assert (=> b!538451 (=> (not res!333803) (not e!312223))))

(assert (=> b!538451 (= res!333803 (validKeyInArray!0 (select (arr!16367 a!3154) j!147)))))

(declare-fun b!538452 () Bool)

(declare-fun res!333807 () Bool)

(assert (=> b!538452 (=> (not res!333807) (not e!312228))))

(assert (=> b!538452 (= res!333807 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16731 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16731 a!3154)) (= (select (arr!16367 a!3154) resIndex!32) (select (arr!16367 a!3154) j!147))))))

(declare-fun b!538453 () Bool)

(declare-fun e!312225 () Bool)

(assert (=> b!538453 (= e!312226 e!312225)))

(declare-fun res!333804 () Bool)

(assert (=> b!538453 (=> (not res!333804) (not e!312225))))

(declare-fun lt!246843 () SeekEntryResult!4832)

(assert (=> b!538453 (= res!333804 (and (= lt!246843 lt!246845) (not (= (select (arr!16367 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16367 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16367 a!3154) index!1177) (select (arr!16367 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538453 (= lt!246843 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16367 a!3154) j!147) mask!3216) (select (arr!16367 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538454 () Bool)

(declare-fun res!333802 () Bool)

(assert (=> b!538454 (=> (not res!333802) (not e!312223))))

(assert (=> b!538454 (= res!333802 (and (= (size!16731 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16731 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16731 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538455 () Bool)

(assert (=> b!538455 (= e!312223 e!312228)))

(declare-fun res!333805 () Bool)

(assert (=> b!538455 (=> (not res!333805) (not e!312228))))

(declare-fun lt!246844 () SeekEntryResult!4832)

(assert (=> b!538455 (= res!333805 (or (= lt!246844 (MissingZero!4832 i!1153)) (= lt!246844 (MissingVacant!4832 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34064 (_ BitVec 32)) SeekEntryResult!4832)

(assert (=> b!538455 (= lt!246844 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!538456 () Bool)

(declare-fun e!312229 () Bool)

(assert (=> b!538456 (= e!312229 e!312227)))

(declare-fun res!333806 () Bool)

(assert (=> b!538456 (=> (not res!333806) (not e!312227))))

(declare-fun lt!246840 () SeekEntryResult!4832)

(assert (=> b!538456 (= res!333806 (and (= lt!246840 lt!246842) (= lt!246843 lt!246840)))))

(assert (=> b!538456 (= lt!246840 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246841 (select (arr!16367 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!538457 () Bool)

(assert (=> b!538457 (= e!312225 e!312229)))

(declare-fun res!333811 () Bool)

(assert (=> b!538457 (=> (not res!333811) (not e!312229))))

(assert (=> b!538457 (= res!333811 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246841 #b00000000000000000000000000000000) (bvslt lt!246841 (size!16731 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538457 (= lt!246841 (nextIndex!0 index!1177 x!1030 mask!3216))))

(assert (= (and start!48896 res!333812) b!538454))

(assert (= (and b!538454 res!333802) b!538451))

(assert (= (and b!538451 res!333803) b!538450))

(assert (= (and b!538450 res!333810) b!538448))

(assert (= (and b!538448 res!333801) b!538455))

(assert (= (and b!538455 res!333805) b!538449))

(assert (= (and b!538449 res!333808) b!538445))

(assert (= (and b!538445 res!333809) b!538452))

(assert (= (and b!538452 res!333807) b!538447))

(assert (= (and b!538447 res!333800) b!538453))

(assert (= (and b!538453 res!333804) b!538457))

(assert (= (and b!538457 res!333811) b!538456))

(assert (= (and b!538456 res!333806) b!538446))

(declare-fun m!517587 () Bool)

(assert (=> b!538455 m!517587))

(declare-fun m!517589 () Bool)

(assert (=> b!538456 m!517589))

(assert (=> b!538456 m!517589))

(declare-fun m!517591 () Bool)

(assert (=> b!538456 m!517591))

(declare-fun m!517593 () Bool)

(assert (=> b!538457 m!517593))

(declare-fun m!517595 () Bool)

(assert (=> b!538445 m!517595))

(declare-fun m!517597 () Bool)

(assert (=> b!538450 m!517597))

(assert (=> b!538447 m!517589))

(assert (=> b!538447 m!517589))

(declare-fun m!517599 () Bool)

(assert (=> b!538447 m!517599))

(declare-fun m!517601 () Bool)

(assert (=> start!48896 m!517601))

(declare-fun m!517603 () Bool)

(assert (=> start!48896 m!517603))

(declare-fun m!517605 () Bool)

(assert (=> b!538448 m!517605))

(assert (=> b!538451 m!517589))

(assert (=> b!538451 m!517589))

(declare-fun m!517607 () Bool)

(assert (=> b!538451 m!517607))

(declare-fun m!517609 () Bool)

(assert (=> b!538452 m!517609))

(assert (=> b!538452 m!517589))

(declare-fun m!517611 () Bool)

(assert (=> b!538453 m!517611))

(assert (=> b!538453 m!517589))

(assert (=> b!538453 m!517589))

(declare-fun m!517613 () Bool)

(assert (=> b!538453 m!517613))

(assert (=> b!538453 m!517613))

(assert (=> b!538453 m!517589))

(declare-fun m!517615 () Bool)

(assert (=> b!538453 m!517615))

(declare-fun m!517617 () Bool)

(assert (=> b!538449 m!517617))

(declare-fun m!517619 () Bool)

(assert (=> b!538446 m!517619))

(declare-fun m!517621 () Bool)

(assert (=> b!538446 m!517621))

(assert (=> b!538446 m!517621))

(declare-fun m!517623 () Bool)

(assert (=> b!538446 m!517623))

(declare-fun m!517625 () Bool)

(assert (=> b!538446 m!517625))

(push 1)

(assert (not b!538449))

(assert (not b!538448))

(assert (not b!538450))

(assert (not b!538446))

(assert (not b!538445))

(assert (not b!538457))

(assert (not b!538456))

(assert (not b!538451))

(assert (not start!48896))

(assert (not b!538453))

(assert (not b!538447))

(assert (not b!538455))

(check-sat)

(pop 1)

(push 1)

(check-sat)

