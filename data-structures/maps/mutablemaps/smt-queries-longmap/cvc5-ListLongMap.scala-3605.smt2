; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49636 () Bool)

(assert start!49636)

(declare-fun b!545849 () Bool)

(declare-fun res!339935 () Bool)

(declare-fun e!315491 () Bool)

(assert (=> b!545849 (=> (not res!339935) (not e!315491))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34405 0))(
  ( (array!34406 (arr!16527 (Array (_ BitVec 32) (_ BitVec 64))) (size!16891 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34405)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!545849 (= res!339935 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16891 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16891 a!3154)) (= (select (arr!16527 a!3154) resIndex!32) (select (arr!16527 a!3154) j!147))))))

(declare-fun b!545850 () Bool)

(declare-fun e!315492 () Bool)

(assert (=> b!545850 (= e!315491 e!315492)))

(declare-fun res!339931 () Bool)

(assert (=> b!545850 (=> (not res!339931) (not e!315492))))

(declare-datatypes ((SeekEntryResult!4992 0))(
  ( (MissingZero!4992 (index!22192 (_ BitVec 32))) (Found!4992 (index!22193 (_ BitVec 32))) (Intermediate!4992 (undefined!5804 Bool) (index!22194 (_ BitVec 32)) (x!51147 (_ BitVec 32))) (Undefined!4992) (MissingVacant!4992 (index!22195 (_ BitVec 32))) )
))
(declare-fun lt!249105 () SeekEntryResult!4992)

(declare-fun lt!249108 () SeekEntryResult!4992)

(assert (=> b!545850 (= res!339931 (= lt!249105 lt!249108))))

(assert (=> b!545850 (= lt!249108 (Intermediate!4992 false resIndex!32 resX!32))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34405 (_ BitVec 32)) SeekEntryResult!4992)

(assert (=> b!545850 (= lt!249105 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16527 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!339938 () Bool)

(declare-fun e!315496 () Bool)

(assert (=> start!49636 (=> (not res!339938) (not e!315496))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49636 (= res!339938 (validMask!0 mask!3216))))

(assert (=> start!49636 e!315496))

(assert (=> start!49636 true))

(declare-fun array_inv!12301 (array!34405) Bool)

(assert (=> start!49636 (array_inv!12301 a!3154)))

(declare-fun b!545851 () Bool)

(declare-fun res!339937 () Bool)

(assert (=> b!545851 (=> (not res!339937) (not e!315491))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34405 (_ BitVec 32)) Bool)

(assert (=> b!545851 (= res!339937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!545852 () Bool)

(declare-fun res!339934 () Bool)

(assert (=> b!545852 (=> (not res!339934) (not e!315496))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!545852 (= res!339934 (and (= (size!16891 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16891 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16891 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!545853 () Bool)

(declare-fun res!339927 () Bool)

(assert (=> b!545853 (=> (not res!339927) (not e!315496))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!545853 (= res!339927 (validKeyInArray!0 k!1998))))

(declare-fun b!545854 () Bool)

(declare-fun res!339929 () Bool)

(assert (=> b!545854 (=> (not res!339929) (not e!315496))))

(declare-fun arrayContainsKey!0 (array!34405 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!545854 (= res!339929 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!545855 () Bool)

(declare-fun res!339926 () Bool)

(assert (=> b!545855 (=> (not res!339926) (not e!315491))))

(declare-datatypes ((List!10699 0))(
  ( (Nil!10696) (Cons!10695 (h!11659 (_ BitVec 64)) (t!16935 List!10699)) )
))
(declare-fun arrayNoDuplicates!0 (array!34405 (_ BitVec 32) List!10699) Bool)

(assert (=> b!545855 (= res!339926 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10696))))

(declare-fun e!315494 () Bool)

(declare-fun lt!249107 () (_ BitVec 64))

(declare-fun b!545856 () Bool)

(declare-fun lt!249110 () array!34405)

(assert (=> b!545856 (= e!315494 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 lt!249107 lt!249110 mask!3216) lt!249108)))))

(declare-fun lt!249109 () (_ BitVec 32))

(assert (=> b!545856 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249109 lt!249107 lt!249110 mask!3216) lt!249108)))

(assert (=> b!545856 (= lt!249107 (select (store (arr!16527 a!3154) i!1153 k!1998) j!147))))

(assert (=> b!545856 (= lt!249110 (array!34406 (store (arr!16527 a!3154) i!1153 k!1998) (size!16891 a!3154)))))

(declare-datatypes ((Unit!16916 0))(
  ( (Unit!16917) )
))
(declare-fun lt!249113 () Unit!16916)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34405 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16916)

(assert (=> b!545856 (= lt!249113 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!249109 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!545857 () Bool)

(assert (=> b!545857 (= e!315496 e!315491)))

(declare-fun res!339933 () Bool)

(assert (=> b!545857 (=> (not res!339933) (not e!315491))))

(declare-fun lt!249106 () SeekEntryResult!4992)

(assert (=> b!545857 (= res!339933 (or (= lt!249106 (MissingZero!4992 i!1153)) (= lt!249106 (MissingVacant!4992 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34405 (_ BitVec 32)) SeekEntryResult!4992)

(assert (=> b!545857 (= lt!249106 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!545858 () Bool)

(declare-fun res!339932 () Bool)

(assert (=> b!545858 (=> (not res!339932) (not e!315496))))

(assert (=> b!545858 (= res!339932 (validKeyInArray!0 (select (arr!16527 a!3154) j!147)))))

(declare-fun b!545859 () Bool)

(declare-fun e!315495 () Bool)

(assert (=> b!545859 (= e!315492 e!315495)))

(declare-fun res!339930 () Bool)

(assert (=> b!545859 (=> (not res!339930) (not e!315495))))

(declare-fun lt!249112 () SeekEntryResult!4992)

(assert (=> b!545859 (= res!339930 (and (= lt!249112 lt!249105) (not (= (select (arr!16527 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16527 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16527 a!3154) index!1177) (select (arr!16527 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545859 (= lt!249112 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16527 a!3154) j!147) mask!3216) (select (arr!16527 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545860 () Bool)

(declare-fun e!315493 () Bool)

(assert (=> b!545860 (= e!315493 e!315494)))

(declare-fun res!339928 () Bool)

(assert (=> b!545860 (=> (not res!339928) (not e!315494))))

(declare-fun lt!249111 () SeekEntryResult!4992)

(assert (=> b!545860 (= res!339928 (and (= lt!249111 lt!249108) (= lt!249112 lt!249111)))))

(assert (=> b!545860 (= lt!249111 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249109 (select (arr!16527 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545861 () Bool)

(assert (=> b!545861 (= e!315495 e!315493)))

(declare-fun res!339936 () Bool)

(assert (=> b!545861 (=> (not res!339936) (not e!315493))))

(assert (=> b!545861 (= res!339936 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!249109 #b00000000000000000000000000000000) (bvslt lt!249109 (size!16891 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545861 (= lt!249109 (nextIndex!0 index!1177 x!1030 mask!3216))))

(assert (= (and start!49636 res!339938) b!545852))

(assert (= (and b!545852 res!339934) b!545858))

(assert (= (and b!545858 res!339932) b!545853))

(assert (= (and b!545853 res!339927) b!545854))

(assert (= (and b!545854 res!339929) b!545857))

(assert (= (and b!545857 res!339933) b!545851))

(assert (= (and b!545851 res!339937) b!545855))

(assert (= (and b!545855 res!339926) b!545849))

(assert (= (and b!545849 res!339935) b!545850))

(assert (= (and b!545850 res!339931) b!545859))

(assert (= (and b!545859 res!339930) b!545861))

(assert (= (and b!545861 res!339936) b!545860))

(assert (= (and b!545860 res!339928) b!545856))

(declare-fun m!523435 () Bool)

(assert (=> b!545849 m!523435))

(declare-fun m!523437 () Bool)

(assert (=> b!545849 m!523437))

(assert (=> b!545850 m!523437))

(assert (=> b!545850 m!523437))

(declare-fun m!523439 () Bool)

(assert (=> b!545850 m!523439))

(declare-fun m!523441 () Bool)

(assert (=> b!545861 m!523441))

(assert (=> b!545858 m!523437))

(assert (=> b!545858 m!523437))

(declare-fun m!523443 () Bool)

(assert (=> b!545858 m!523443))

(declare-fun m!523445 () Bool)

(assert (=> b!545854 m!523445))

(declare-fun m!523447 () Bool)

(assert (=> b!545855 m!523447))

(declare-fun m!523449 () Bool)

(assert (=> b!545857 m!523449))

(declare-fun m!523451 () Bool)

(assert (=> b!545851 m!523451))

(declare-fun m!523453 () Bool)

(assert (=> start!49636 m!523453))

(declare-fun m!523455 () Bool)

(assert (=> start!49636 m!523455))

(declare-fun m!523457 () Bool)

(assert (=> b!545856 m!523457))

(declare-fun m!523459 () Bool)

(assert (=> b!545856 m!523459))

(declare-fun m!523461 () Bool)

(assert (=> b!545856 m!523461))

(declare-fun m!523463 () Bool)

(assert (=> b!545856 m!523463))

(declare-fun m!523465 () Bool)

(assert (=> b!545856 m!523465))

(declare-fun m!523467 () Bool)

(assert (=> b!545859 m!523467))

(assert (=> b!545859 m!523437))

(assert (=> b!545859 m!523437))

(declare-fun m!523469 () Bool)

(assert (=> b!545859 m!523469))

(assert (=> b!545859 m!523469))

(assert (=> b!545859 m!523437))

(declare-fun m!523471 () Bool)

(assert (=> b!545859 m!523471))

(assert (=> b!545860 m!523437))

(assert (=> b!545860 m!523437))

(declare-fun m!523473 () Bool)

(assert (=> b!545860 m!523473))

(declare-fun m!523475 () Bool)

(assert (=> b!545853 m!523475))

(push 1)

(assert (not b!545855))

(assert (not b!545850))

(assert (not b!545851))

(assert (not start!49636))

(assert (not b!545856))

(assert (not b!545857))

(assert (not b!545861))

(assert (not b!545860))

(assert (not b!545854))

(assert (not b!545853))

(assert (not b!545859))

(assert (not b!545858))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!546027 () Bool)

(declare-fun e!315590 () SeekEntryResult!4992)

(assert (=> b!546027 (= e!315590 (Intermediate!4992 true index!1177 x!1030))))

(declare-fun b!546028 () Bool)

(declare-fun e!315592 () SeekEntryResult!4992)

(assert (=> b!546028 (= e!315592 (Intermediate!4992 false index!1177 x!1030))))

(declare-fun b!546029 () Bool)

(assert (=> b!546029 (= e!315592 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) lt!249107 lt!249110 mask!3216))))

(declare-fun b!546030 () Bool)

(declare-fun lt!249189 () SeekEntryResult!4992)

(assert (=> b!546030 (and (bvsge (index!22194 lt!249189) #b00000000000000000000000000000000) (bvslt (index!22194 lt!249189) (size!16891 lt!249110)))))

(declare-fun res!340045 () Bool)

(assert (=> b!546030 (= res!340045 (= (select (arr!16527 lt!249110) (index!22194 lt!249189)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!315593 () Bool)

(assert (=> b!546030 (=> res!340045 e!315593)))

(declare-fun b!546032 () Bool)

(declare-fun e!315594 () Bool)

(assert (=> b!546032 (= e!315594 (bvsge (x!51147 lt!249189) #b01111111111111111111111111111110))))

(declare-fun b!546033 () Bool)

(assert (=> b!546033 (and (bvsge (index!22194 lt!249189) #b00000000000000000000000000000000) (bvslt (index!22194 lt!249189) (size!16891 lt!249110)))))

(declare-fun res!340046 () Bool)

(assert (=> b!546033 (= res!340046 (= (select (arr!16527 lt!249110) (index!22194 lt!249189)) lt!249107))))

(assert (=> b!546033 (=> res!340046 e!315593)))

(declare-fun e!315591 () Bool)

(assert (=> b!546033 (= e!315591 e!315593)))

(declare-fun b!546034 () Bool)

(assert (=> b!546034 (= e!315590 e!315592)))

(declare-fun c!63319 () Bool)

(declare-fun lt!249190 () (_ BitVec 64))

(assert (=> b!546034 (= c!63319 (or (= lt!249190 lt!249107) (= (bvadd lt!249190 lt!249190) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!546035 () Bool)

(assert (=> b!546035 (= e!315594 e!315591)))

(declare-fun res!340044 () Bool)

(assert (=> b!546035 (= res!340044 (and (is-Intermediate!4992 lt!249189) (not (undefined!5804 lt!249189)) (bvslt (x!51147 lt!249189) #b01111111111111111111111111111110) (bvsge (x!51147 lt!249189) #b00000000000000000000000000000000) (bvsge (x!51147 lt!249189) x!1030)))))

(assert (=> b!546035 (=> (not res!340044) (not e!315591))))

(declare-fun d!82147 () Bool)

(assert (=> d!82147 e!315594))

(declare-fun c!63320 () Bool)

(assert (=> d!82147 (= c!63320 (and (is-Intermediate!4992 lt!249189) (undefined!5804 lt!249189)))))

(assert (=> d!82147 (= lt!249189 e!315590)))

(declare-fun c!63318 () Bool)

(assert (=> d!82147 (= c!63318 (bvsge x!1030 #b01111111111111111111111111111110))))

(assert (=> d!82147 (= lt!249190 (select (arr!16527 lt!249110) index!1177))))

(assert (=> d!82147 (validMask!0 mask!3216)))

(assert (=> d!82147 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 lt!249107 lt!249110 mask!3216) lt!249189)))

(declare-fun b!546031 () Bool)

(assert (=> b!546031 (and (bvsge (index!22194 lt!249189) #b00000000000000000000000000000000) (bvslt (index!22194 lt!249189) (size!16891 lt!249110)))))

(assert (=> b!546031 (= e!315593 (= (select (arr!16527 lt!249110) (index!22194 lt!249189)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!82147 c!63318) b!546027))

(assert (= (and d!82147 (not c!63318)) b!546034))

(assert (= (and b!546034 c!63319) b!546028))

(assert (= (and b!546034 (not c!63319)) b!546029))

(assert (= (and d!82147 c!63320) b!546032))

(assert (= (and d!82147 (not c!63320)) b!546035))

(assert (= (and b!546035 res!340044) b!546033))

(assert (= (and b!546033 (not res!340046)) b!546030))

(assert (= (and b!546030 (not res!340045)) b!546031))

(declare-fun m!523595 () Bool)

(assert (=> b!546030 m!523595))

(assert (=> b!546031 m!523595))

(assert (=> b!546033 m!523595))

(assert (=> b!546029 m!523441))

(assert (=> b!546029 m!523441))

(declare-fun m!523597 () Bool)

(assert (=> b!546029 m!523597))

(declare-fun m!523599 () Bool)

(assert (=> d!82147 m!523599))

(assert (=> d!82147 m!523453))

(assert (=> b!545856 d!82147))

(declare-fun b!546036 () Bool)

(declare-fun e!315595 () SeekEntryResult!4992)

(assert (=> b!546036 (= e!315595 (Intermediate!4992 true lt!249109 (bvadd #b00000000000000000000000000000001 x!1030)))))

(declare-fun b!546037 () Bool)

(declare-fun e!315597 () SeekEntryResult!4992)

(assert (=> b!546037 (= e!315597 (Intermediate!4992 false lt!249109 (bvadd #b00000000000000000000000000000001 x!1030)))))

(declare-fun b!546038 () Bool)

(assert (=> b!546038 (= e!315597 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030 #b00000000000000000000000000000001) (nextIndex!0 lt!249109 (bvadd #b00000000000000000000000000000001 x!1030) mask!3216) lt!249107 lt!249110 mask!3216))))

(declare-fun b!546039 () Bool)

(declare-fun lt!249191 () SeekEntryResult!4992)

(assert (=> b!546039 (and (bvsge (index!22194 lt!249191) #b00000000000000000000000000000000) (bvslt (index!22194 lt!249191) (size!16891 lt!249110)))))

(declare-fun res!340049 () Bool)

(assert (=> b!546039 (= res!340049 (= (select (arr!16527 lt!249110) (index!22194 lt!249191)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!315598 () Bool)

(assert (=> b!546039 (=> res!340049 e!315598)))

(declare-fun b!546041 () Bool)

(declare-fun e!315599 () Bool)

(assert (=> b!546041 (= e!315599 (bvsge (x!51147 lt!249191) #b01111111111111111111111111111110))))

(declare-fun b!546042 () Bool)

(assert (=> b!546042 (and (bvsge (index!22194 lt!249191) #b00000000000000000000000000000000) (bvslt (index!22194 lt!249191) (size!16891 lt!249110)))))

(declare-fun res!340050 () Bool)

(assert (=> b!546042 (= res!340050 (= (select (arr!16527 lt!249110) (index!22194 lt!249191)) lt!249107))))

(assert (=> b!546042 (=> res!340050 e!315598)))

(declare-fun e!315596 () Bool)

(assert (=> b!546042 (= e!315596 e!315598)))

(declare-fun b!546043 () Bool)

(assert (=> b!546043 (= e!315595 e!315597)))

(declare-fun c!63322 () Bool)

(declare-fun lt!249192 () (_ BitVec 64))

(assert (=> b!546043 (= c!63322 (or (= lt!249192 lt!249107) (= (bvadd lt!249192 lt!249192) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!546044 () Bool)

(assert (=> b!546044 (= e!315599 e!315596)))

(declare-fun res!340048 () Bool)

(assert (=> b!546044 (= res!340048 (and (is-Intermediate!4992 lt!249191) (not (undefined!5804 lt!249191)) (bvslt (x!51147 lt!249191) #b01111111111111111111111111111110) (bvsge (x!51147 lt!249191) #b00000000000000000000000000000000) (bvsge (x!51147 lt!249191) (bvadd #b00000000000000000000000000000001 x!1030))))))

(assert (=> b!546044 (=> (not res!340048) (not e!315596))))

(declare-fun d!82161 () Bool)

(assert (=> d!82161 e!315599))

(declare-fun c!63323 () Bool)

(assert (=> d!82161 (= c!63323 (and (is-Intermediate!4992 lt!249191) (undefined!5804 lt!249191)))))

(assert (=> d!82161 (= lt!249191 e!315595)))

(declare-fun c!63321 () Bool)

(assert (=> d!82161 (= c!63321 (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b01111111111111111111111111111110))))

(assert (=> d!82161 (= lt!249192 (select (arr!16527 lt!249110) lt!249109))))

(assert (=> d!82161 (validMask!0 mask!3216)))

(assert (=> d!82161 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249109 lt!249107 lt!249110 mask!3216) lt!249191)))

(declare-fun b!546040 () Bool)

(assert (=> b!546040 (and (bvsge (index!22194 lt!249191) #b00000000000000000000000000000000) (bvslt (index!22194 lt!249191) (size!16891 lt!249110)))))

(assert (=> b!546040 (= e!315598 (= (select (arr!16527 lt!249110) (index!22194 lt!249191)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!82161 c!63321) b!546036))

(assert (= (and d!82161 (not c!63321)) b!546043))

(assert (= (and b!546043 c!63322) b!546037))

(assert (= (and b!546043 (not c!63322)) b!546038))

(assert (= (and d!82161 c!63323) b!546041))

(assert (= (and d!82161 (not c!63323)) b!546044))

(assert (= (and b!546044 res!340048) b!546042))

(assert (= (and b!546042 (not res!340050)) b!546039))

(assert (= (and b!546039 (not res!340049)) b!546040))

(declare-fun m!523601 () Bool)

(assert (=> b!546039 m!523601))

(assert (=> b!546040 m!523601))

(assert (=> b!546042 m!523601))

(declare-fun m!523603 () Bool)

(assert (=> b!546038 m!523603))

(assert (=> b!546038 m!523603))

(declare-fun m!523605 () Bool)

(assert (=> b!546038 m!523605))

(declare-fun m!523607 () Bool)

(assert (=> d!82161 m!523607))

(assert (=> d!82161 m!523453))

(assert (=> b!545856 d!82161))

(declare-fun d!82163 () Bool)

(declare-fun e!315621 () Bool)

(assert (=> d!82163 e!315621))

(declare-fun res!340059 () Bool)

(assert (=> d!82163 (=> (not res!340059) (not e!315621))))

(assert (=> d!82163 (= res!340059 (and (or (bvslt i!1153 #b00000000000000000000000000000000) (bvsge i!1153 (size!16891 a!3154)) (and (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16891 a!3154)))) (or (bvslt i!1153 #b00000000000000000000000000000000) (bvsge i!1153 (size!16891 a!3154)) (and (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16891 a!3154)))) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16891 a!3154))))))

(declare-fun lt!249214 () Unit!16916)

(declare-fun choose!47 (array!34405 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16916)

(assert (=> d!82163 (= lt!249214 (choose!47 a!3154 i!1153 k!1998 j!147 lt!249109 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(assert (=> d!82163 (validMask!0 mask!3216)))

(assert (=> d!82163 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!249109 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216) lt!249214)))

(declare-fun b!546083 () Bool)

(assert (=> b!546083 (= e!315621 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249109 (select (store (arr!16527 a!3154) i!1153 k!1998) j!147) (array!34406 (store (arr!16527 a!3154) i!1153 k!1998) (size!16891 a!3154)) mask!3216) (Intermediate!4992 false resIndex!32 resX!32)))))

(assert (= (and d!82163 res!340059) b!546083))

(declare-fun m!523637 () Bool)

(assert (=> d!82163 m!523637))

(assert (=> d!82163 m!523453))

(assert (=> b!546083 m!523459))

(assert (=> b!546083 m!523457))

(assert (=> b!546083 m!523457))

(declare-fun m!523639 () Bool)

(assert (=> b!546083 m!523639))

(assert (=> b!545856 d!82163))

(declare-fun b!546097 () Bool)

(declare-fun e!315636 () Bool)

(declare-fun call!32132 () Bool)

(assert (=> b!546097 (= e!315636 call!32132)))

(declare-fun bm!32129 () Bool)

(declare-fun c!63341 () Bool)

(assert (=> bm!32129 (= call!32132 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63341 (Cons!10695 (select (arr!16527 a!3154) #b00000000000000000000000000000000) Nil!10696) Nil!10696)))))

(declare-fun b!546098 () Bool)

(declare-fun e!315635 () Bool)

(declare-fun contains!2820 (List!10699 (_ BitVec 64)) Bool)

(assert (=> b!546098 (= e!315635 (contains!2820 Nil!10696 (select (arr!16527 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!546099 () Bool)

(assert (=> b!546099 (= e!315636 call!32132)))

(declare-fun b!546100 () Bool)

(declare-fun e!315634 () Bool)

(declare-fun e!315633 () Bool)

(assert (=> b!546100 (= e!315634 e!315633)))

(declare-fun res!340069 () Bool)

(assert (=> b!546100 (=> (not res!340069) (not e!315633))))

(assert (=> b!546100 (= res!340069 (not e!315635))))

(declare-fun res!340070 () Bool)

(assert (=> b!546100 (=> (not res!340070) (not e!315635))))

(assert (=> b!546100 (= res!340070 (validKeyInArray!0 (select (arr!16527 a!3154) #b00000000000000000000000000000000)))))

(declare-fun d!82175 () Bool)

(declare-fun res!340071 () Bool)

(assert (=> d!82175 (=> res!340071 e!315634)))

(assert (=> d!82175 (= res!340071 (bvsge #b00000000000000000000000000000000 (size!16891 a!3154)))))

(assert (=> d!82175 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10696) e!315634)))

(declare-fun b!546101 () Bool)

(assert (=> b!546101 (= e!315633 e!315636)))

(assert (=> b!546101 (= c!63341 (validKeyInArray!0 (select (arr!16527 a!3154) #b00000000000000000000000000000000)))))

(assert (= (and d!82175 (not res!340071)) b!546100))

(assert (= (and b!546100 res!340070) b!546098))

(assert (= (and b!546100 res!340069) b!546101))

(assert (= (and b!546101 c!63341) b!546097))

(assert (= (and b!546101 (not c!63341)) b!546099))

(assert (= (or b!546097 b!546099) bm!32129))

(declare-fun m!523645 () Bool)

(assert (=> bm!32129 m!523645))

(declare-fun m!523647 () Bool)

(assert (=> bm!32129 m!523647))

(assert (=> b!546098 m!523645))

(assert (=> b!546098 m!523645))

(declare-fun m!523649 () Bool)

(assert (=> b!546098 m!523649))

(assert (=> b!546100 m!523645))

(assert (=> b!546100 m!523645))

(declare-fun m!523651 () Bool)

(assert (=> b!546100 m!523651))

(assert (=> b!546101 m!523645))

(assert (=> b!546101 m!523645))

(assert (=> b!546101 m!523651))

(assert (=> b!545855 d!82175))

(declare-fun d!82181 () Bool)

(declare-fun res!340079 () Bool)

(declare-fun e!315650 () Bool)

(assert (=> d!82181 (=> res!340079 e!315650)))

(assert (=> d!82181 (= res!340079 (= (select (arr!16527 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!82181 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!315650)))

(declare-fun b!546123 () Bool)

(declare-fun e!315651 () Bool)

(assert (=> b!546123 (= e!315650 e!315651)))

(declare-fun res!340080 () Bool)

(assert (=> b!546123 (=> (not res!340080) (not e!315651))))

(assert (=> b!546123 (= res!340080 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16891 a!3154)))))

(declare-fun b!546124 () Bool)

(assert (=> b!546124 (= e!315651 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82181 (not res!340079)) b!546123))

(assert (= (and b!546123 res!340080) b!546124))

(assert (=> d!82181 m!523645))

(declare-fun m!523661 () Bool)

(assert (=> b!546124 m!523661))

(assert (=> b!545854 d!82181))

(declare-fun d!82187 () Bool)

(assert (=> d!82187 (= (validKeyInArray!0 (select (arr!16527 a!3154) j!147)) (and (not (= (select (arr!16527 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16527 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!545858 d!82187))

(declare-fun b!546201 () Bool)

(declare-fun e!315700 () SeekEntryResult!4992)

(assert (=> b!546201 (= e!315700 Undefined!4992)))

(declare-fun b!546202 () Bool)

(declare-fun e!315699 () SeekEntryResult!4992)

(declare-fun lt!249259 () SeekEntryResult!4992)

(assert (=> b!546202 (= e!315699 (Found!4992 (index!22194 lt!249259)))))

(declare-fun b!546203 () Bool)

(assert (=> b!546203 (= e!315700 e!315699)))

(declare-fun lt!249260 () (_ BitVec 64))

(assert (=> b!546203 (= lt!249260 (select (arr!16527 a!3154) (index!22194 lt!249259)))))

(declare-fun c!63374 () Bool)

(assert (=> b!546203 (= c!63374 (= lt!249260 k!1998))))

(declare-fun d!82189 () Bool)

(declare-fun lt!249261 () SeekEntryResult!4992)

(assert (=> d!82189 (and (or (is-Undefined!4992 lt!249261) (not (is-Found!4992 lt!249261)) (and (bvsge (index!22193 lt!249261) #b00000000000000000000000000000000) (bvslt (index!22193 lt!249261) (size!16891 a!3154)))) (or (is-Undefined!4992 lt!249261) (is-Found!4992 lt!249261) (not (is-MissingZero!4992 lt!249261)) (and (bvsge (index!22192 lt!249261) #b00000000000000000000000000000000) (bvslt (index!22192 lt!249261) (size!16891 a!3154)))) (or (is-Undefined!4992 lt!249261) (is-Found!4992 lt!249261) (is-MissingZero!4992 lt!249261) (not (is-MissingVacant!4992 lt!249261)) (and (bvsge (index!22195 lt!249261) #b00000000000000000000000000000000) (bvslt (index!22195 lt!249261) (size!16891 a!3154)))) (or (is-Undefined!4992 lt!249261) (ite (is-Found!4992 lt!249261) (= (select (arr!16527 a!3154) (index!22193 lt!249261)) k!1998) (ite (is-MissingZero!4992 lt!249261) (= (select (arr!16527 a!3154) (index!22192 lt!249261)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4992 lt!249261) (= (select (arr!16527 a!3154) (index!22195 lt!249261)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82189 (= lt!249261 e!315700)))

(declare-fun c!63372 () Bool)

(assert (=> d!82189 (= c!63372 (and (is-Intermediate!4992 lt!249259) (undefined!5804 lt!249259)))))

(assert (=> d!82189 (= lt!249259 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!82189 (validMask!0 mask!3216)))

(assert (=> d!82189 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!249261)))

(declare-fun b!546204 () Bool)

(declare-fun e!315701 () SeekEntryResult!4992)

(assert (=> b!546204 (= e!315701 (MissingZero!4992 (index!22194 lt!249259)))))

(declare-fun b!546205 () Bool)

(declare-fun c!63373 () Bool)

(assert (=> b!546205 (= c!63373 (= lt!249260 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!546205 (= e!315699 e!315701)))

(declare-fun b!546206 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34405 (_ BitVec 32)) SeekEntryResult!4992)

(assert (=> b!546206 (= e!315701 (seekKeyOrZeroReturnVacant!0 (x!51147 lt!249259) (index!22194 lt!249259) (index!22194 lt!249259) k!1998 a!3154 mask!3216))))

(assert (= (and d!82189 c!63372) b!546201))

(assert (= (and d!82189 (not c!63372)) b!546203))

(assert (= (and b!546203 c!63374) b!546202))

(assert (= (and b!546203 (not c!63374)) b!546205))

(assert (= (and b!546205 c!63373) b!546204))

(assert (= (and b!546205 (not c!63373)) b!546206))

(declare-fun m!523703 () Bool)

(assert (=> b!546203 m!523703))

(declare-fun m!523705 () Bool)

(assert (=> d!82189 m!523705))

(assert (=> d!82189 m!523453))

(declare-fun m!523707 () Bool)

(assert (=> d!82189 m!523707))

(declare-fun m!523709 () Bool)

(assert (=> d!82189 m!523709))

(assert (=> d!82189 m!523709))

(declare-fun m!523711 () Bool)

(assert (=> d!82189 m!523711))

(declare-fun m!523713 () Bool)

(assert (=> d!82189 m!523713))

(declare-fun m!523715 () Bool)

(assert (=> b!546206 m!523715))

(assert (=> b!545857 d!82189))

(declare-fun d!82205 () Bool)

(declare-fun lt!249264 () (_ BitVec 32))

(assert (=> d!82205 (and (bvsge lt!249264 #b00000000000000000000000000000000) (bvslt lt!249264 (bvadd mask!3216 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!82205 (= lt!249264 (choose!52 index!1177 x!1030 mask!3216))))

(assert (=> d!82205 (validMask!0 mask!3216)))

(assert (=> d!82205 (= (nextIndex!0 index!1177 x!1030 mask!3216) lt!249264)))

(declare-fun bs!17021 () Bool)

(assert (= bs!17021 d!82205))

(declare-fun m!523717 () Bool)

(assert (=> bs!17021 m!523717))

(assert (=> bs!17021 m!523453))

(assert (=> b!545861 d!82205))

(declare-fun b!546207 () Bool)

(declare-fun e!315702 () SeekEntryResult!4992)

(assert (=> b!546207 (= e!315702 (Intermediate!4992 true index!1177 x!1030))))

(declare-fun b!546208 () Bool)

(declare-fun e!315704 () SeekEntryResult!4992)

(assert (=> b!546208 (= e!315704 (Intermediate!4992 false index!1177 x!1030))))

(declare-fun b!546209 () Bool)

(assert (=> b!546209 (= e!315704 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16527 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!546210 () Bool)

(declare-fun lt!249265 () SeekEntryResult!4992)

(assert (=> b!546210 (and (bvsge (index!22194 lt!249265) #b00000000000000000000000000000000) (bvslt (index!22194 lt!249265) (size!16891 a!3154)))))

(declare-fun res!340113 () Bool)

(assert (=> b!546210 (= res!340113 (= (select (arr!16527 a!3154) (index!22194 lt!249265)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!315705 () Bool)

(assert (=> b!546210 (=> res!340113 e!315705)))

(declare-fun b!546212 () Bool)

(declare-fun e!315706 () Bool)

(assert (=> b!546212 (= e!315706 (bvsge (x!51147 lt!249265) #b01111111111111111111111111111110))))

(declare-fun b!546213 () Bool)

(assert (=> b!546213 (and (bvsge (index!22194 lt!249265) #b00000000000000000000000000000000) (bvslt (index!22194 lt!249265) (size!16891 a!3154)))))

(declare-fun res!340114 () Bool)

(assert (=> b!546213 (= res!340114 (= (select (arr!16527 a!3154) (index!22194 lt!249265)) (select (arr!16527 a!3154) j!147)))))

(assert (=> b!546213 (=> res!340114 e!315705)))

(declare-fun e!315703 () Bool)

(assert (=> b!546213 (= e!315703 e!315705)))

(declare-fun b!546214 () Bool)

(assert (=> b!546214 (= e!315702 e!315704)))

(declare-fun c!63376 () Bool)

(declare-fun lt!249266 () (_ BitVec 64))

(assert (=> b!546214 (= c!63376 (or (= lt!249266 (select (arr!16527 a!3154) j!147)) (= (bvadd lt!249266 lt!249266) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!546215 () Bool)

(assert (=> b!546215 (= e!315706 e!315703)))

(declare-fun res!340112 () Bool)

(assert (=> b!546215 (= res!340112 (and (is-Intermediate!4992 lt!249265) (not (undefined!5804 lt!249265)) (bvslt (x!51147 lt!249265) #b01111111111111111111111111111110) (bvsge (x!51147 lt!249265) #b00000000000000000000000000000000) (bvsge (x!51147 lt!249265) x!1030)))))

(assert (=> b!546215 (=> (not res!340112) (not e!315703))))

(declare-fun d!82207 () Bool)

(assert (=> d!82207 e!315706))

(declare-fun c!63377 () Bool)

(assert (=> d!82207 (= c!63377 (and (is-Intermediate!4992 lt!249265) (undefined!5804 lt!249265)))))

(assert (=> d!82207 (= lt!249265 e!315702)))

(declare-fun c!63375 () Bool)

(assert (=> d!82207 (= c!63375 (bvsge x!1030 #b01111111111111111111111111111110))))

(assert (=> d!82207 (= lt!249266 (select (arr!16527 a!3154) index!1177))))

(assert (=> d!82207 (validMask!0 mask!3216)))

(assert (=> d!82207 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16527 a!3154) j!147) a!3154 mask!3216) lt!249265)))

(declare-fun b!546211 () Bool)

(assert (=> b!546211 (and (bvsge (index!22194 lt!249265) #b00000000000000000000000000000000) (bvslt (index!22194 lt!249265) (size!16891 a!3154)))))

(assert (=> b!546211 (= e!315705 (= (select (arr!16527 a!3154) (index!22194 lt!249265)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!82207 c!63375) b!546207))

(assert (= (and d!82207 (not c!63375)) b!546214))

(assert (= (and b!546214 c!63376) b!546208))

(assert (= (and b!546214 (not c!63376)) b!546209))

(assert (= (and d!82207 c!63377) b!546212))

(assert (= (and d!82207 (not c!63377)) b!546215))

(assert (= (and b!546215 res!340112) b!546213))

(assert (= (and b!546213 (not res!340114)) b!546210))

(assert (= (and b!546210 (not res!340113)) b!546211))

(declare-fun m!523719 () Bool)

(assert (=> b!546210 m!523719))

(assert (=> b!546211 m!523719))

(assert (=> b!546213 m!523719))

(assert (=> b!546209 m!523441))

(assert (=> b!546209 m!523441))

(assert (=> b!546209 m!523437))

(declare-fun m!523721 () Bool)

(assert (=> b!546209 m!523721))

(assert (=> d!82207 m!523467))

(assert (=> d!82207 m!523453))

(assert (=> b!545850 d!82207))

(declare-fun b!546216 () Bool)

(declare-fun e!315707 () SeekEntryResult!4992)

(assert (=> b!546216 (= e!315707 (Intermediate!4992 true lt!249109 (bvadd #b00000000000000000000000000000001 x!1030)))))

(declare-fun b!546217 () Bool)

(declare-fun e!315709 () SeekEntryResult!4992)

(assert (=> b!546217 (= e!315709 (Intermediate!4992 false lt!249109 (bvadd #b00000000000000000000000000000001 x!1030)))))

(declare-fun b!546218 () Bool)

(assert (=> b!546218 (= e!315709 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030 #b00000000000000000000000000000001) (nextIndex!0 lt!249109 (bvadd #b00000000000000000000000000000001 x!1030) mask!3216) (select (arr!16527 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!546219 () Bool)

(declare-fun lt!249267 () SeekEntryResult!4992)

(assert (=> b!546219 (and (bvsge (index!22194 lt!249267) #b00000000000000000000000000000000) (bvslt (index!22194 lt!249267) (size!16891 a!3154)))))

(declare-fun res!340116 () Bool)

(assert (=> b!546219 (= res!340116 (= (select (arr!16527 a!3154) (index!22194 lt!249267)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!315710 () Bool)

(assert (=> b!546219 (=> res!340116 e!315710)))

(declare-fun b!546221 () Bool)

(declare-fun e!315711 () Bool)

(assert (=> b!546221 (= e!315711 (bvsge (x!51147 lt!249267) #b01111111111111111111111111111110))))

(declare-fun b!546222 () Bool)

(assert (=> b!546222 (and (bvsge (index!22194 lt!249267) #b00000000000000000000000000000000) (bvslt (index!22194 lt!249267) (size!16891 a!3154)))))

(declare-fun res!340117 () Bool)

(assert (=> b!546222 (= res!340117 (= (select (arr!16527 a!3154) (index!22194 lt!249267)) (select (arr!16527 a!3154) j!147)))))

(assert (=> b!546222 (=> res!340117 e!315710)))

(declare-fun e!315708 () Bool)

(assert (=> b!546222 (= e!315708 e!315710)))

(declare-fun b!546223 () Bool)

(assert (=> b!546223 (= e!315707 e!315709)))

(declare-fun c!63379 () Bool)

(declare-fun lt!249268 () (_ BitVec 64))

(assert (=> b!546223 (= c!63379 (or (= lt!249268 (select (arr!16527 a!3154) j!147)) (= (bvadd lt!249268 lt!249268) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!546224 () Bool)

(assert (=> b!546224 (= e!315711 e!315708)))

(declare-fun res!340115 () Bool)

(assert (=> b!546224 (= res!340115 (and (is-Intermediate!4992 lt!249267) (not (undefined!5804 lt!249267)) (bvslt (x!51147 lt!249267) #b01111111111111111111111111111110) (bvsge (x!51147 lt!249267) #b00000000000000000000000000000000) (bvsge (x!51147 lt!249267) (bvadd #b00000000000000000000000000000001 x!1030))))))

(assert (=> b!546224 (=> (not res!340115) (not e!315708))))

(declare-fun d!82209 () Bool)

(assert (=> d!82209 e!315711))

(declare-fun c!63380 () Bool)

(assert (=> d!82209 (= c!63380 (and (is-Intermediate!4992 lt!249267) (undefined!5804 lt!249267)))))

(assert (=> d!82209 (= lt!249267 e!315707)))

(declare-fun c!63378 () Bool)

(assert (=> d!82209 (= c!63378 (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b01111111111111111111111111111110))))

(assert (=> d!82209 (= lt!249268 (select (arr!16527 a!3154) lt!249109))))

(assert (=> d!82209 (validMask!0 mask!3216)))

(assert (=> d!82209 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249109 (select (arr!16527 a!3154) j!147) a!3154 mask!3216) lt!249267)))

(declare-fun b!546220 () Bool)

(assert (=> b!546220 (and (bvsge (index!22194 lt!249267) #b00000000000000000000000000000000) (bvslt (index!22194 lt!249267) (size!16891 a!3154)))))

(assert (=> b!546220 (= e!315710 (= (select (arr!16527 a!3154) (index!22194 lt!249267)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!82209 c!63378) b!546216))

(assert (= (and d!82209 (not c!63378)) b!546223))

(assert (= (and b!546223 c!63379) b!546217))

(assert (= (and b!546223 (not c!63379)) b!546218))

(assert (= (and d!82209 c!63380) b!546221))

(assert (= (and d!82209 (not c!63380)) b!546224))

(assert (= (and b!546224 res!340115) b!546222))

(assert (= (and b!546222 (not res!340117)) b!546219))

(assert (= (and b!546219 (not res!340116)) b!546220))

(declare-fun m!523723 () Bool)

(assert (=> b!546219 m!523723))

(assert (=> b!546220 m!523723))

(assert (=> b!546222 m!523723))

(assert (=> b!546218 m!523603))

(assert (=> b!546218 m!523603))

(assert (=> b!546218 m!523437))

(declare-fun m!523725 () Bool)

(assert (=> b!546218 m!523725))

(declare-fun m!523727 () Bool)

(assert (=> d!82209 m!523727))

(assert (=> d!82209 m!523453))

(assert (=> b!545860 d!82209))

(declare-fun b!546227 () Bool)

(declare-fun e!315714 () SeekEntryResult!4992)

(assert (=> b!546227 (= e!315714 (Intermediate!4992 true (toIndex!0 (select (arr!16527 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun e!315716 () SeekEntryResult!4992)

(declare-fun b!546228 () Bool)

(assert (=> b!546228 (= e!315716 (Intermediate!4992 false (toIndex!0 (select (arr!16527 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!546229 () Bool)

(assert (=> b!546229 (= e!315716 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16527 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16527 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!546230 () Bool)

(declare-fun lt!249271 () SeekEntryResult!4992)

(assert (=> b!546230 (and (bvsge (index!22194 lt!249271) #b00000000000000000000000000000000) (bvslt (index!22194 lt!249271) (size!16891 a!3154)))))

(declare-fun res!340121 () Bool)

(assert (=> b!546230 (= res!340121 (= (select (arr!16527 a!3154) (index!22194 lt!249271)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!315717 () Bool)

(assert (=> b!546230 (=> res!340121 e!315717)))

(declare-fun b!546232 () Bool)

(declare-fun e!315718 () Bool)

(assert (=> b!546232 (= e!315718 (bvsge (x!51147 lt!249271) #b01111111111111111111111111111110))))

(declare-fun b!546233 () Bool)

(assert (=> b!546233 (and (bvsge (index!22194 lt!249271) #b00000000000000000000000000000000) (bvslt (index!22194 lt!249271) (size!16891 a!3154)))))

(declare-fun res!340122 () Bool)

(assert (=> b!546233 (= res!340122 (= (select (arr!16527 a!3154) (index!22194 lt!249271)) (select (arr!16527 a!3154) j!147)))))

(assert (=> b!546233 (=> res!340122 e!315717)))

(declare-fun e!315715 () Bool)

(assert (=> b!546233 (= e!315715 e!315717)))

(declare-fun b!546234 () Bool)

(assert (=> b!546234 (= e!315714 e!315716)))

(declare-fun lt!249272 () (_ BitVec 64))

(declare-fun c!63382 () Bool)

(assert (=> b!546234 (= c!63382 (or (= lt!249272 (select (arr!16527 a!3154) j!147)) (= (bvadd lt!249272 lt!249272) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!546235 () Bool)

(assert (=> b!546235 (= e!315718 e!315715)))

(declare-fun res!340120 () Bool)

(assert (=> b!546235 (= res!340120 (and (is-Intermediate!4992 lt!249271) (not (undefined!5804 lt!249271)) (bvslt (x!51147 lt!249271) #b01111111111111111111111111111110) (bvsge (x!51147 lt!249271) #b00000000000000000000000000000000) (bvsge (x!51147 lt!249271) #b00000000000000000000000000000000)))))

(assert (=> b!546235 (=> (not res!340120) (not e!315715))))

(declare-fun d!82211 () Bool)

(assert (=> d!82211 e!315718))

(declare-fun c!63383 () Bool)

(assert (=> d!82211 (= c!63383 (and (is-Intermediate!4992 lt!249271) (undefined!5804 lt!249271)))))

(assert (=> d!82211 (= lt!249271 e!315714)))

(declare-fun c!63381 () Bool)

(assert (=> d!82211 (= c!63381 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!82211 (= lt!249272 (select (arr!16527 a!3154) (toIndex!0 (select (arr!16527 a!3154) j!147) mask!3216)))))

(assert (=> d!82211 (validMask!0 mask!3216)))

(assert (=> d!82211 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16527 a!3154) j!147) mask!3216) (select (arr!16527 a!3154) j!147) a!3154 mask!3216) lt!249271)))

(declare-fun b!546231 () Bool)

(assert (=> b!546231 (and (bvsge (index!22194 lt!249271) #b00000000000000000000000000000000) (bvslt (index!22194 lt!249271) (size!16891 a!3154)))))

(assert (=> b!546231 (= e!315717 (= (select (arr!16527 a!3154) (index!22194 lt!249271)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!82211 c!63381) b!546227))

(assert (= (and d!82211 (not c!63381)) b!546234))

(assert (= (and b!546234 c!63382) b!546228))

(assert (= (and b!546234 (not c!63382)) b!546229))

(assert (= (and d!82211 c!63383) b!546232))

(assert (= (and d!82211 (not c!63383)) b!546235))

(assert (= (and b!546235 res!340120) b!546233))

(assert (= (and b!546233 (not res!340122)) b!546230))

(assert (= (and b!546230 (not res!340121)) b!546231))

(declare-fun m!523729 () Bool)

(assert (=> b!546230 m!523729))

(assert (=> b!546231 m!523729))

(assert (=> b!546233 m!523729))

(assert (=> b!546229 m!523469))

(declare-fun m!523731 () Bool)

(assert (=> b!546229 m!523731))

(assert (=> b!546229 m!523731))

(assert (=> b!546229 m!523437))

(declare-fun m!523733 () Bool)

(assert (=> b!546229 m!523733))

(assert (=> d!82211 m!523469))

(declare-fun m!523735 () Bool)

(assert (=> d!82211 m!523735))

(assert (=> d!82211 m!523453))

(assert (=> b!545859 d!82211))

(declare-fun d!82213 () Bool)

(declare-fun lt!249279 () (_ BitVec 32))

(declare-fun lt!249278 () (_ BitVec 32))

(assert (=> d!82213 (= lt!249279 (bvmul (bvxor lt!249278 (bvlshr lt!249278 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82213 (= lt!249278 ((_ extract 31 0) (bvand (bvxor (select (arr!16527 a!3154) j!147) (bvlshr (select (arr!16527 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82213 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!340124 (let ((h!11664 ((_ extract 31 0) (bvand (bvxor (select (arr!16527 a!3154) j!147) (bvlshr (select (arr!16527 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51161 (bvmul (bvxor h!11664 (bvlshr h!11664 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51161 (bvlshr x!51161 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!340124 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!340124 #b00000000000000000000000000000000))))))

(assert (=> d!82213 (= (toIndex!0 (select (arr!16527 a!3154) j!147) mask!3216) (bvand (bvxor lt!249279 (bvlshr lt!249279 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!545859 d!82213))

(declare-fun d!82217 () Bool)

(assert (=> d!82217 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!545853 d!82217))

(declare-fun d!82219 () Bool)

(assert (=> d!82219 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!49636 d!82219))

(declare-fun d!82225 () Bool)

(assert (=> d!82225 (= (array_inv!12301 a!3154) (bvsge (size!16891 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!49636 d!82225))

(declare-fun b!546269 () Bool)

(declare-fun e!315744 () Bool)

(declare-fun call!32141 () Bool)

(assert (=> b!546269 (= e!315744 call!32141)))

(declare-fun b!546270 () Bool)

(declare-fun e!315743 () Bool)

(assert (=> b!546270 (= e!315743 e!315744)))

(declare-fun lt!249290 () (_ BitVec 64))

(assert (=> b!546270 (= lt!249290 (select (arr!16527 a!3154) #b00000000000000000000000000000000))))

(declare-fun lt!249289 () Unit!16916)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34405 (_ BitVec 64) (_ BitVec 32)) Unit!16916)

(assert (=> b!546270 (= lt!249289 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!249290 #b00000000000000000000000000000000))))

(assert (=> b!546270 (arrayContainsKey!0 a!3154 lt!249290 #b00000000000000000000000000000000)))

(declare-fun lt!249288 () Unit!16916)

(assert (=> b!546270 (= lt!249288 lt!249289)))

(declare-fun res!340142 () Bool)

(assert (=> b!546270 (= res!340142 (= (seekEntryOrOpen!0 (select (arr!16527 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4992 #b00000000000000000000000000000000)))))

(assert (=> b!546270 (=> (not res!340142) (not e!315744))))

(declare-fun d!82227 () Bool)

(declare-fun res!340141 () Bool)

(declare-fun e!315745 () Bool)

(assert (=> d!82227 (=> res!340141 e!315745)))

(assert (=> d!82227 (= res!340141 (bvsge #b00000000000000000000000000000000 (size!16891 a!3154)))))

(assert (=> d!82227 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!315745)))

(declare-fun bm!32138 () Bool)

(assert (=> bm!32138 (= call!32141 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!546271 () Bool)

(assert (=> b!546271 (= e!315743 call!32141)))

(declare-fun b!546272 () Bool)

(assert (=> b!546272 (= e!315745 e!315743)))

(declare-fun c!63392 () Bool)

(assert (=> b!546272 (= c!63392 (validKeyInArray!0 (select (arr!16527 a!3154) #b00000000000000000000000000000000)))))

(assert (= (and d!82227 (not res!340141)) b!546272))

(assert (= (and b!546272 c!63392) b!546270))

(assert (= (and b!546272 (not c!63392)) b!546271))

(assert (= (and b!546270 res!340142) b!546269))

(assert (= (or b!546269 b!546271) bm!32138))

(assert (=> b!546270 m!523645))

(declare-fun m!523753 () Bool)

(assert (=> b!546270 m!523753))

(declare-fun m!523755 () Bool)

(assert (=> b!546270 m!523755))

(assert (=> b!546270 m!523645))

(declare-fun m!523757 () Bool)

(assert (=> b!546270 m!523757))

(declare-fun m!523759 () Bool)

(assert (=> bm!32138 m!523759))

(assert (=> b!546272 m!523645))

(assert (=> b!546272 m!523645))

(assert (=> b!546272 m!523651))

(assert (=> b!545851 d!82227))

(push 1)

