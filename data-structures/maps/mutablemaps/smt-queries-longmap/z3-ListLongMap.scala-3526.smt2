; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48744 () Bool)

(assert start!48744)

(declare-fun b!535489 () Bool)

(declare-fun res!330848 () Bool)

(declare-fun e!311017 () Bool)

(assert (=> b!535489 (=> (not res!330848) (not e!311017))))

(declare-datatypes ((SeekEntryResult!4756 0))(
  ( (MissingZero!4756 (index!21248 (_ BitVec 32))) (Found!4756 (index!21249 (_ BitVec 32))) (Intermediate!4756 (undefined!5568 Bool) (index!21250 (_ BitVec 32)) (x!50222 (_ BitVec 32))) (Undefined!4756) (MissingVacant!4756 (index!21251 (_ BitVec 32))) )
))
(declare-fun lt!245831 () SeekEntryResult!4756)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33912 0))(
  ( (array!33913 (arr!16291 (Array (_ BitVec 32) (_ BitVec 64))) (size!16655 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33912)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33912 (_ BitVec 32)) SeekEntryResult!4756)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535489 (= res!330848 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16291 a!3154) j!147) mask!3216) (select (arr!16291 a!3154) j!147) a!3154 mask!3216) lt!245831))))

(declare-fun b!535490 () Bool)

(declare-fun e!311018 () Bool)

(assert (=> b!535490 (= e!311018 e!311017)))

(declare-fun res!330844 () Bool)

(assert (=> b!535490 (=> (not res!330844) (not e!311017))))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!535490 (= res!330844 (= lt!245831 (Intermediate!4756 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!535490 (= lt!245831 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16291 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535491 () Bool)

(declare-fun res!330852 () Bool)

(declare-fun e!311020 () Bool)

(assert (=> b!535491 (=> (not res!330852) (not e!311020))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33912 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535491 (= res!330852 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun res!330853 () Bool)

(assert (=> start!48744 (=> (not res!330853) (not e!311020))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48744 (= res!330853 (validMask!0 mask!3216))))

(assert (=> start!48744 e!311020))

(assert (=> start!48744 true))

(declare-fun array_inv!12065 (array!33912) Bool)

(assert (=> start!48744 (array_inv!12065 a!3154)))

(declare-fun b!535492 () Bool)

(assert (=> b!535492 (= e!311017 (and (not (= (select (arr!16291 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16291 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16291 a!3154) index!1177) (select (arr!16291 a!3154) j!147))) (bvsge mask!3216 #b00000000000000000000000000000000) (bvslt index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsgt x!1030 #b01111111111111111111111111111110)))))

(declare-fun b!535493 () Bool)

(assert (=> b!535493 (= e!311020 e!311018)))

(declare-fun res!330849 () Bool)

(assert (=> b!535493 (=> (not res!330849) (not e!311018))))

(declare-fun lt!245830 () SeekEntryResult!4756)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535493 (= res!330849 (or (= lt!245830 (MissingZero!4756 i!1153)) (= lt!245830 (MissingVacant!4756 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33912 (_ BitVec 32)) SeekEntryResult!4756)

(assert (=> b!535493 (= lt!245830 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!535494 () Bool)

(declare-fun res!330851 () Bool)

(assert (=> b!535494 (=> (not res!330851) (not e!311020))))

(assert (=> b!535494 (= res!330851 (and (= (size!16655 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16655 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16655 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!535495 () Bool)

(declare-fun res!330846 () Bool)

(assert (=> b!535495 (=> (not res!330846) (not e!311020))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535495 (= res!330846 (validKeyInArray!0 (select (arr!16291 a!3154) j!147)))))

(declare-fun b!535496 () Bool)

(declare-fun res!330847 () Bool)

(assert (=> b!535496 (=> (not res!330847) (not e!311018))))

(assert (=> b!535496 (= res!330847 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16655 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16655 a!3154)) (= (select (arr!16291 a!3154) resIndex!32) (select (arr!16291 a!3154) j!147))))))

(declare-fun b!535497 () Bool)

(declare-fun res!330850 () Bool)

(assert (=> b!535497 (=> (not res!330850) (not e!311018))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33912 (_ BitVec 32)) Bool)

(assert (=> b!535497 (= res!330850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535498 () Bool)

(declare-fun res!330845 () Bool)

(assert (=> b!535498 (=> (not res!330845) (not e!311018))))

(declare-datatypes ((List!10463 0))(
  ( (Nil!10460) (Cons!10459 (h!11402 (_ BitVec 64)) (t!16699 List!10463)) )
))
(declare-fun arrayNoDuplicates!0 (array!33912 (_ BitVec 32) List!10463) Bool)

(assert (=> b!535498 (= res!330845 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10460))))

(declare-fun b!535499 () Bool)

(declare-fun res!330854 () Bool)

(assert (=> b!535499 (=> (not res!330854) (not e!311020))))

(assert (=> b!535499 (= res!330854 (validKeyInArray!0 k0!1998))))

(assert (= (and start!48744 res!330853) b!535494))

(assert (= (and b!535494 res!330851) b!535495))

(assert (= (and b!535495 res!330846) b!535499))

(assert (= (and b!535499 res!330854) b!535491))

(assert (= (and b!535491 res!330852) b!535493))

(assert (= (and b!535493 res!330849) b!535497))

(assert (= (and b!535497 res!330850) b!535498))

(assert (= (and b!535498 res!330845) b!535496))

(assert (= (and b!535496 res!330847) b!535490))

(assert (= (and b!535490 res!330844) b!535489))

(assert (= (and b!535489 res!330848) b!535492))

(declare-fun m!515075 () Bool)

(assert (=> b!535496 m!515075))

(declare-fun m!515077 () Bool)

(assert (=> b!535496 m!515077))

(declare-fun m!515079 () Bool)

(assert (=> b!535493 m!515079))

(assert (=> b!535490 m!515077))

(assert (=> b!535490 m!515077))

(declare-fun m!515081 () Bool)

(assert (=> b!535490 m!515081))

(assert (=> b!535495 m!515077))

(assert (=> b!535495 m!515077))

(declare-fun m!515083 () Bool)

(assert (=> b!535495 m!515083))

(declare-fun m!515085 () Bool)

(assert (=> start!48744 m!515085))

(declare-fun m!515087 () Bool)

(assert (=> start!48744 m!515087))

(declare-fun m!515089 () Bool)

(assert (=> b!535499 m!515089))

(declare-fun m!515091 () Bool)

(assert (=> b!535492 m!515091))

(assert (=> b!535492 m!515077))

(assert (=> b!535489 m!515077))

(assert (=> b!535489 m!515077))

(declare-fun m!515093 () Bool)

(assert (=> b!535489 m!515093))

(assert (=> b!535489 m!515093))

(assert (=> b!535489 m!515077))

(declare-fun m!515095 () Bool)

(assert (=> b!535489 m!515095))

(declare-fun m!515097 () Bool)

(assert (=> b!535498 m!515097))

(declare-fun m!515099 () Bool)

(assert (=> b!535491 m!515099))

(declare-fun m!515101 () Bool)

(assert (=> b!535497 m!515101))

(check-sat (not b!535498) (not start!48744) (not b!535491) (not b!535490) (not b!535489) (not b!535499) (not b!535493) (not b!535497) (not b!535495))
(check-sat)
