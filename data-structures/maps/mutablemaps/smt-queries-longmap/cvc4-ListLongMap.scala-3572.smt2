; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49130 () Bool)

(assert start!49130)

(declare-fun b!540851 () Bool)

(declare-fun e!313238 () Bool)

(assert (=> b!540851 (= e!313238 false)))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34196 0))(
  ( (array!34197 (arr!16430 (Array (_ BitVec 32) (_ BitVec 64))) (size!16794 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34196)

(declare-datatypes ((SeekEntryResult!4895 0))(
  ( (MissingZero!4895 (index!21804 (_ BitVec 32))) (Found!4895 (index!21805 (_ BitVec 32))) (Intermediate!4895 (undefined!5707 Bool) (index!21806 (_ BitVec 32)) (x!50741 (_ BitVec 32))) (Undefined!4895) (MissingVacant!4895 (index!21807 (_ BitVec 32))) )
))
(declare-fun lt!247505 () SeekEntryResult!4895)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34196 (_ BitVec 32)) SeekEntryResult!4895)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540851 (= lt!247505 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16430 a!3154) j!147) mask!3216) (select (arr!16430 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540852 () Bool)

(declare-fun res!335890 () Bool)

(declare-fun e!313240 () Bool)

(assert (=> b!540852 (=> (not res!335890) (not e!313240))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540852 (= res!335890 (validKeyInArray!0 k!1998))))

(declare-fun res!335888 () Bool)

(assert (=> start!49130 (=> (not res!335888) (not e!313240))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49130 (= res!335888 (validMask!0 mask!3216))))

(assert (=> start!49130 e!313240))

(assert (=> start!49130 true))

(declare-fun array_inv!12204 (array!34196) Bool)

(assert (=> start!49130 (array_inv!12204 a!3154)))

(declare-fun b!540853 () Bool)

(declare-fun res!335893 () Bool)

(assert (=> b!540853 (=> (not res!335893) (not e!313238))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34196 (_ BitVec 32)) Bool)

(assert (=> b!540853 (= res!335893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!540854 () Bool)

(declare-fun res!335892 () Bool)

(assert (=> b!540854 (=> (not res!335892) (not e!313240))))

(declare-fun arrayContainsKey!0 (array!34196 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540854 (= res!335892 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!540855 () Bool)

(declare-fun res!335896 () Bool)

(assert (=> b!540855 (=> (not res!335896) (not e!313240))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540855 (= res!335896 (and (= (size!16794 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16794 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16794 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!540856 () Bool)

(declare-fun res!335889 () Bool)

(assert (=> b!540856 (=> (not res!335889) (not e!313238))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!540856 (= res!335889 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16794 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16794 a!3154)) (= (select (arr!16430 a!3154) resIndex!32) (select (arr!16430 a!3154) j!147))))))

(declare-fun b!540857 () Bool)

(assert (=> b!540857 (= e!313240 e!313238)))

(declare-fun res!335891 () Bool)

(assert (=> b!540857 (=> (not res!335891) (not e!313238))))

(declare-fun lt!247504 () SeekEntryResult!4895)

(assert (=> b!540857 (= res!335891 (or (= lt!247504 (MissingZero!4895 i!1153)) (= lt!247504 (MissingVacant!4895 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34196 (_ BitVec 32)) SeekEntryResult!4895)

(assert (=> b!540857 (= lt!247504 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!540858 () Bool)

(declare-fun res!335897 () Bool)

(assert (=> b!540858 (=> (not res!335897) (not e!313238))))

(declare-datatypes ((List!10602 0))(
  ( (Nil!10599) (Cons!10598 (h!11547 (_ BitVec 64)) (t!16838 List!10602)) )
))
(declare-fun arrayNoDuplicates!0 (array!34196 (_ BitVec 32) List!10602) Bool)

(assert (=> b!540858 (= res!335897 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10599))))

(declare-fun b!540859 () Bool)

(declare-fun res!335895 () Bool)

(assert (=> b!540859 (=> (not res!335895) (not e!313240))))

(assert (=> b!540859 (= res!335895 (validKeyInArray!0 (select (arr!16430 a!3154) j!147)))))

(declare-fun b!540860 () Bool)

(declare-fun res!335894 () Bool)

(assert (=> b!540860 (=> (not res!335894) (not e!313238))))

(assert (=> b!540860 (= res!335894 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16430 a!3154) j!147) a!3154 mask!3216) (Intermediate!4895 false resIndex!32 resX!32)))))

(assert (= (and start!49130 res!335888) b!540855))

(assert (= (and b!540855 res!335896) b!540859))

(assert (= (and b!540859 res!335895) b!540852))

(assert (= (and b!540852 res!335890) b!540854))

(assert (= (and b!540854 res!335892) b!540857))

(assert (= (and b!540857 res!335891) b!540853))

(assert (= (and b!540853 res!335893) b!540858))

(assert (= (and b!540858 res!335897) b!540856))

(assert (= (and b!540856 res!335889) b!540860))

(assert (= (and b!540860 res!335894) b!540851))

(declare-fun m!519515 () Bool)

(assert (=> start!49130 m!519515))

(declare-fun m!519517 () Bool)

(assert (=> start!49130 m!519517))

(declare-fun m!519519 () Bool)

(assert (=> b!540860 m!519519))

(assert (=> b!540860 m!519519))

(declare-fun m!519521 () Bool)

(assert (=> b!540860 m!519521))

(declare-fun m!519523 () Bool)

(assert (=> b!540853 m!519523))

(declare-fun m!519525 () Bool)

(assert (=> b!540852 m!519525))

(declare-fun m!519527 () Bool)

(assert (=> b!540858 m!519527))

(declare-fun m!519529 () Bool)

(assert (=> b!540857 m!519529))

(declare-fun m!519531 () Bool)

(assert (=> b!540854 m!519531))

(declare-fun m!519533 () Bool)

(assert (=> b!540856 m!519533))

(assert (=> b!540856 m!519519))

(assert (=> b!540851 m!519519))

(assert (=> b!540851 m!519519))

(declare-fun m!519535 () Bool)

(assert (=> b!540851 m!519535))

(assert (=> b!540851 m!519535))

(assert (=> b!540851 m!519519))

(declare-fun m!519537 () Bool)

(assert (=> b!540851 m!519537))

(assert (=> b!540859 m!519519))

(assert (=> b!540859 m!519519))

(declare-fun m!519539 () Bool)

(assert (=> b!540859 m!519539))

(push 1)

(assert (not b!540851))

(assert (not b!540858))

(assert (not b!540852))

(assert (not b!540860))

(assert (not b!540859))

(assert (not b!540854))

(assert (not b!540853))

(assert (not b!540857))

(assert (not start!49130))

(check-sat)

