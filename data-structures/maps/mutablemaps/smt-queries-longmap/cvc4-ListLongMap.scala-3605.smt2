; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49640 () Bool)

(assert start!49640)

(declare-fun b!545927 () Bool)

(declare-fun res!340005 () Bool)

(declare-fun e!315537 () Bool)

(assert (=> b!545927 (=> (not res!340005) (not e!315537))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!545927 (= res!340005 (validKeyInArray!0 k!1998))))

(declare-fun b!545928 () Bool)

(declare-fun e!315532 () Bool)

(declare-fun e!315534 () Bool)

(assert (=> b!545928 (= e!315532 e!315534)))

(declare-fun res!340006 () Bool)

(assert (=> b!545928 (=> (not res!340006) (not e!315534))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4994 0))(
  ( (MissingZero!4994 (index!22200 (_ BitVec 32))) (Found!4994 (index!22201 (_ BitVec 32))) (Intermediate!4994 (undefined!5806 Bool) (index!22202 (_ BitVec 32)) (x!51149 (_ BitVec 32))) (Undefined!4994) (MissingVacant!4994 (index!22203 (_ BitVec 32))) )
))
(declare-fun lt!249164 () SeekEntryResult!4994)

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34409 0))(
  ( (array!34410 (arr!16529 (Array (_ BitVec 32) (_ BitVec 64))) (size!16893 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34409)

(declare-fun lt!249167 () SeekEntryResult!4994)

(assert (=> b!545928 (= res!340006 (and (= lt!249164 lt!249167) (not (= (select (arr!16529 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16529 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16529 a!3154) index!1177) (select (arr!16529 a!3154) j!147)))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34409 (_ BitVec 32)) SeekEntryResult!4994)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545928 (= lt!249164 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16529 a!3154) j!147) mask!3216) (select (arr!16529 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545929 () Bool)

(declare-fun res!340015 () Bool)

(assert (=> b!545929 (=> (not res!340015) (not e!315537))))

(assert (=> b!545929 (= res!340015 (validKeyInArray!0 (select (arr!16529 a!3154) j!147)))))

(declare-fun b!545930 () Bool)

(declare-fun e!315535 () Bool)

(assert (=> b!545930 (= e!315537 e!315535)))

(declare-fun res!340012 () Bool)

(assert (=> b!545930 (=> (not res!340012) (not e!315535))))

(declare-fun lt!249159 () SeekEntryResult!4994)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!545930 (= res!340012 (or (= lt!249159 (MissingZero!4994 i!1153)) (= lt!249159 (MissingVacant!4994 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34409 (_ BitVec 32)) SeekEntryResult!4994)

(assert (=> b!545930 (= lt!249159 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!249162 () array!34409)

(declare-fun e!315536 () Bool)

(declare-fun b!545931 () Bool)

(declare-fun lt!249161 () SeekEntryResult!4994)

(declare-fun lt!249163 () (_ BitVec 64))

(assert (=> b!545931 (= e!315536 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 lt!249163 lt!249162 mask!3216) lt!249161)))))

(declare-fun lt!249165 () (_ BitVec 32))

(assert (=> b!545931 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249165 lt!249163 lt!249162 mask!3216) lt!249161)))

(assert (=> b!545931 (= lt!249163 (select (store (arr!16529 a!3154) i!1153 k!1998) j!147))))

(assert (=> b!545931 (= lt!249162 (array!34410 (store (arr!16529 a!3154) i!1153 k!1998) (size!16893 a!3154)))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-datatypes ((Unit!16920 0))(
  ( (Unit!16921) )
))
(declare-fun lt!249166 () Unit!16920)

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34409 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16920)

(assert (=> b!545931 (= lt!249166 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!249165 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!545932 () Bool)

(declare-fun e!315533 () Bool)

(assert (=> b!545932 (= e!315534 e!315533)))

(declare-fun res!340016 () Bool)

(assert (=> b!545932 (=> (not res!340016) (not e!315533))))

(assert (=> b!545932 (= res!340016 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!249165 #b00000000000000000000000000000000) (bvslt lt!249165 (size!16893 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545932 (= lt!249165 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!545933 () Bool)

(declare-fun res!340014 () Bool)

(assert (=> b!545933 (=> (not res!340014) (not e!315535))))

(assert (=> b!545933 (= res!340014 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16893 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16893 a!3154)) (= (select (arr!16529 a!3154) resIndex!32) (select (arr!16529 a!3154) j!147))))))

(declare-fun b!545934 () Bool)

(assert (=> b!545934 (= e!315535 e!315532)))

(declare-fun res!340008 () Bool)

(assert (=> b!545934 (=> (not res!340008) (not e!315532))))

(assert (=> b!545934 (= res!340008 (= lt!249167 lt!249161))))

(assert (=> b!545934 (= lt!249161 (Intermediate!4994 false resIndex!32 resX!32))))

(assert (=> b!545934 (= lt!249167 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16529 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!340013 () Bool)

(assert (=> start!49640 (=> (not res!340013) (not e!315537))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49640 (= res!340013 (validMask!0 mask!3216))))

(assert (=> start!49640 e!315537))

(assert (=> start!49640 true))

(declare-fun array_inv!12303 (array!34409) Bool)

(assert (=> start!49640 (array_inv!12303 a!3154)))

(declare-fun b!545935 () Bool)

(declare-fun res!340010 () Bool)

(assert (=> b!545935 (=> (not res!340010) (not e!315535))))

(declare-datatypes ((List!10701 0))(
  ( (Nil!10698) (Cons!10697 (h!11661 (_ BitVec 64)) (t!16937 List!10701)) )
))
(declare-fun arrayNoDuplicates!0 (array!34409 (_ BitVec 32) List!10701) Bool)

(assert (=> b!545935 (= res!340010 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10698))))

(declare-fun b!545936 () Bool)

(declare-fun res!340011 () Bool)

(assert (=> b!545936 (=> (not res!340011) (not e!315537))))

(declare-fun arrayContainsKey!0 (array!34409 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!545936 (= res!340011 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!545937 () Bool)

(declare-fun res!340007 () Bool)

(assert (=> b!545937 (=> (not res!340007) (not e!315535))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34409 (_ BitVec 32)) Bool)

(assert (=> b!545937 (= res!340007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!545938 () Bool)

(declare-fun res!340004 () Bool)

(assert (=> b!545938 (=> (not res!340004) (not e!315537))))

(assert (=> b!545938 (= res!340004 (and (= (size!16893 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16893 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16893 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!545939 () Bool)

(assert (=> b!545939 (= e!315533 e!315536)))

(declare-fun res!340009 () Bool)

(assert (=> b!545939 (=> (not res!340009) (not e!315536))))

(declare-fun lt!249160 () SeekEntryResult!4994)

(assert (=> b!545939 (= res!340009 (and (= lt!249160 lt!249161) (= lt!249164 lt!249160)))))

(assert (=> b!545939 (= lt!249160 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249165 (select (arr!16529 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!49640 res!340013) b!545938))

(assert (= (and b!545938 res!340004) b!545929))

(assert (= (and b!545929 res!340015) b!545927))

(assert (= (and b!545927 res!340005) b!545936))

(assert (= (and b!545936 res!340011) b!545930))

(assert (= (and b!545930 res!340012) b!545937))

(assert (= (and b!545937 res!340007) b!545935))

(assert (= (and b!545935 res!340010) b!545933))

(assert (= (and b!545933 res!340014) b!545934))

(assert (= (and b!545934 res!340008) b!545928))

(assert (= (and b!545928 res!340006) b!545932))

(assert (= (and b!545932 res!340016) b!545939))

(assert (= (and b!545939 res!340009) b!545931))

(declare-fun m!523519 () Bool)

(assert (=> b!545934 m!523519))

(assert (=> b!545934 m!523519))

(declare-fun m!523521 () Bool)

(assert (=> b!545934 m!523521))

(declare-fun m!523523 () Bool)

(assert (=> b!545933 m!523523))

(assert (=> b!545933 m!523519))

(assert (=> b!545939 m!523519))

(assert (=> b!545939 m!523519))

(declare-fun m!523525 () Bool)

(assert (=> b!545939 m!523525))

(assert (=> b!545929 m!523519))

(assert (=> b!545929 m!523519))

(declare-fun m!523527 () Bool)

(assert (=> b!545929 m!523527))

(declare-fun m!523529 () Bool)

(assert (=> b!545930 m!523529))

(declare-fun m!523531 () Bool)

(assert (=> b!545931 m!523531))

(declare-fun m!523533 () Bool)

(assert (=> b!545931 m!523533))

(declare-fun m!523535 () Bool)

(assert (=> b!545931 m!523535))

(declare-fun m!523537 () Bool)

(assert (=> b!545931 m!523537))

(declare-fun m!523539 () Bool)

(assert (=> b!545931 m!523539))

(declare-fun m!523541 () Bool)

(assert (=> b!545937 m!523541))

(declare-fun m!523543 () Bool)

(assert (=> b!545928 m!523543))

(assert (=> b!545928 m!523519))

(assert (=> b!545928 m!523519))

(declare-fun m!523545 () Bool)

(assert (=> b!545928 m!523545))

(assert (=> b!545928 m!523545))

(assert (=> b!545928 m!523519))

(declare-fun m!523547 () Bool)

(assert (=> b!545928 m!523547))

(declare-fun m!523549 () Bool)

(assert (=> b!545932 m!523549))

(declare-fun m!523551 () Bool)

(assert (=> start!49640 m!523551))

(declare-fun m!523553 () Bool)

(assert (=> start!49640 m!523553))

(declare-fun m!523555 () Bool)

(assert (=> b!545935 m!523555))

(declare-fun m!523557 () Bool)

(assert (=> b!545936 m!523557))

(declare-fun m!523559 () Bool)

(assert (=> b!545927 m!523559))

(push 1)

(assert (not b!545935))

(assert (not b!545932))

(assert (not b!545928))

(assert (not b!545930))

(assert (not b!545939))

(assert (not b!545929))

(assert (not b!545934))

(assert (not b!545937))

(assert (not b!545936))

(assert (not b!545927))

(assert (not start!49640))

(assert (not b!545931))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!546075 () Bool)

(declare-fun e!315618 () SeekEntryResult!4994)

(assert (=> b!546075 (= e!315618 Undefined!4994)))

(declare-fun b!546076 () Bool)

(declare-fun c!63336 () Bool)

(declare-fun lt!249211 () (_ BitVec 64))

(assert (=> b!546076 (= c!63336 (= lt!249211 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!315617 () SeekEntryResult!4994)

(declare-fun e!315616 () SeekEntryResult!4994)

(assert (=> b!546076 (= e!315617 e!315616)))

(declare-fun b!546077 () Bool)

(declare-fun lt!249209 () SeekEntryResult!4994)

(assert (=> b!546077 (= e!315617 (Found!4994 (index!22202 lt!249209)))))

(declare-fun b!546078 () Bool)

(assert (=> b!546078 (= e!315616 (MissingZero!4994 (index!22202 lt!249209)))))

(declare-fun b!546079 () Bool)

(assert (=> b!546079 (= e!315618 e!315617)))

(assert (=> b!546079 (= lt!249211 (select (arr!16529 a!3154) (index!22202 lt!249209)))))

(declare-fun c!63338 () Bool)

(assert (=> b!546079 (= c!63338 (= lt!249211 k!1998))))

(declare-fun d!82149 () Bool)

(declare-fun lt!249210 () SeekEntryResult!4994)

(assert (=> d!82149 (and (or (is-Undefined!4994 lt!249210) (not (is-Found!4994 lt!249210)) (and (bvsge (index!22201 lt!249210) #b00000000000000000000000000000000) (bvslt (index!22201 lt!249210) (size!16893 a!3154)))) (or (is-Undefined!4994 lt!249210) (is-Found!4994 lt!249210) (not (is-MissingZero!4994 lt!249210)) (and (bvsge (index!22200 lt!249210) #b00000000000000000000000000000000) (bvslt (index!22200 lt!249210) (size!16893 a!3154)))) (or (is-Undefined!4994 lt!249210) (is-Found!4994 lt!249210) (is-MissingZero!4994 lt!249210) (not (is-MissingVacant!4994 lt!249210)) (and (bvsge (index!22203 lt!249210) #b00000000000000000000000000000000) (bvslt (index!22203 lt!249210) (size!16893 a!3154)))) (or (is-Undefined!4994 lt!249210) (ite (is-Found!4994 lt!249210) (= (select (arr!16529 a!3154) (index!22201 lt!249210)) k!1998) (ite (is-MissingZero!4994 lt!249210) (= (select (arr!16529 a!3154) (index!22200 lt!249210)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4994 lt!249210) (= (select (arr!16529 a!3154) (index!22203 lt!249210)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82149 (= lt!249210 e!315618)))

(declare-fun c!63337 () Bool)

(assert (=> d!82149 (= c!63337 (and (is-Intermediate!4994 lt!249209) (undefined!5806 lt!249209)))))

(assert (=> d!82149 (= lt!249209 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!82149 (validMask!0 mask!3216)))

(assert (=> d!82149 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!249210)))

(declare-fun b!546080 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34409 (_ BitVec 32)) SeekEntryResult!4994)

(assert (=> b!546080 (= e!315616 (seekKeyOrZeroReturnVacant!0 (x!51149 lt!249209) (index!22202 lt!249209) (index!22202 lt!249209) k!1998 a!3154 mask!3216))))

(assert (= (and d!82149 c!63337) b!546075))

(assert (= (and d!82149 (not c!63337)) b!546079))

(assert (= (and b!546079 c!63338) b!546077))

(assert (= (and b!546079 (not c!63338)) b!546076))

(assert (= (and b!546076 c!63336) b!546078))

(assert (= (and b!546076 (not c!63336)) b!546080))

(declare-fun m!523623 () Bool)

(assert (=> b!546079 m!523623))

(assert (=> d!82149 m!523551))

(declare-fun m!523625 () Bool)

(assert (=> d!82149 m!523625))

(declare-fun m!523627 () Bool)

(assert (=> d!82149 m!523627))

(declare-fun m!523629 () Bool)

(assert (=> d!82149 m!523629))

(declare-fun m!523631 () Bool)

(assert (=> d!82149 m!523631))

(assert (=> d!82149 m!523631))

(declare-fun m!523633 () Bool)

(assert (=> d!82149 m!523633))

(declare-fun m!523635 () Bool)

(assert (=> b!546080 m!523635))

(assert (=> b!545930 d!82149))

(declare-fun d!82171 () Bool)

(assert (=> d!82171 (= (validKeyInArray!0 (select (arr!16529 a!3154) j!147)) (and (not (= (select (arr!16529 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16529 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!545929 d!82171))

(declare-fun b!546143 () Bool)

(declare-fun lt!249233 () SeekEntryResult!4994)

(assert (=> b!546143 (and (bvsge (index!22202 lt!249233) #b00000000000000000000000000000000) (bvslt (index!22202 lt!249233) (size!16893 a!3154)))))

(declare-fun res!340091 () Bool)

(assert (=> b!546143 (= res!340091 (= (select (arr!16529 a!3154) (index!22202 lt!249233)) (select (arr!16529 a!3154) j!147)))))

(declare-fun e!315665 () Bool)

(assert (=> b!546143 (=> res!340091 e!315665)))

(declare-fun e!315666 () Bool)

(assert (=> b!546143 (= e!315666 e!315665)))

(declare-fun b!546144 () Bool)

(assert (=> b!546144 (and (bvsge (index!22202 lt!249233) #b00000000000000000000000000000000) (bvslt (index!22202 lt!249233) (size!16893 a!3154)))))

(declare-fun res!340093 () Bool)

(assert (=> b!546144 (= res!340093 (= (select (arr!16529 a!3154) (index!22202 lt!249233)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!546144 (=> res!340093 e!315665)))

(declare-fun b!546145 () Bool)

(declare-fun e!315667 () Bool)

(assert (=> b!546145 (= e!315667 (bvsge (x!51149 lt!249233) #b01111111111111111111111111111110))))

(declare-fun e!315664 () SeekEntryResult!4994)

(declare-fun b!546146 () Bool)

(assert (=> b!546146 (= e!315664 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030 #b00000000000000000000000000000001) (nextIndex!0 lt!249165 (bvadd #b00000000000000000000000000000001 x!1030) mask!3216) (select (arr!16529 a!3154) j!147) a!3154 mask!3216))))

(declare-fun d!82173 () Bool)

(assert (=> d!82173 e!315667))

(declare-fun c!63354 () Bool)

(assert (=> d!82173 (= c!63354 (and (is-Intermediate!4994 lt!249233) (undefined!5806 lt!249233)))))

(declare-fun e!315668 () SeekEntryResult!4994)

(assert (=> d!82173 (= lt!249233 e!315668)))

(declare-fun c!63355 () Bool)

(assert (=> d!82173 (= c!63355 (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b01111111111111111111111111111110))))

(declare-fun lt!249234 () (_ BitVec 64))

(assert (=> d!82173 (= lt!249234 (select (arr!16529 a!3154) lt!249165))))

(assert (=> d!82173 (validMask!0 mask!3216)))

(assert (=> d!82173 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249165 (select (arr!16529 a!3154) j!147) a!3154 mask!3216) lt!249233)))

(declare-fun b!546147 () Bool)

(assert (=> b!546147 (= e!315668 e!315664)))

(declare-fun c!63353 () Bool)

(assert (=> b!546147 (= c!63353 (or (= lt!249234 (select (arr!16529 a!3154) j!147)) (= (bvadd lt!249234 lt!249234) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!546148 () Bool)

(assert (=> b!546148 (= e!315667 e!315666)))

(declare-fun res!340092 () Bool)

(assert (=> b!546148 (= res!340092 (and (is-Intermediate!4994 lt!249233) (not (undefined!5806 lt!249233)) (bvslt (x!51149 lt!249233) #b01111111111111111111111111111110) (bvsge (x!51149 lt!249233) #b00000000000000000000000000000000) (bvsge (x!51149 lt!249233) (bvadd #b00000000000000000000000000000001 x!1030))))))

(assert (=> b!546148 (=> (not res!340092) (not e!315666))))

(declare-fun b!546149 () Bool)

(assert (=> b!546149 (and (bvsge (index!22202 lt!249233) #b00000000000000000000000000000000) (bvslt (index!22202 lt!249233) (size!16893 a!3154)))))

(assert (=> b!546149 (= e!315665 (= (select (arr!16529 a!3154) (index!22202 lt!249233)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!546150 () Bool)

(assert (=> b!546150 (= e!315664 (Intermediate!4994 false lt!249165 (bvadd #b00000000000000000000000000000001 x!1030)))))

(declare-fun b!546151 () Bool)

(assert (=> b!546151 (= e!315668 (Intermediate!4994 true lt!249165 (bvadd #b00000000000000000000000000000001 x!1030)))))

(assert (= (and d!82173 c!63355) b!546151))

(assert (= (and d!82173 (not c!63355)) b!546147))

(assert (= (and b!546147 c!63353) b!546150))

(assert (= (and b!546147 (not c!63353)) b!546146))

(assert (= (and d!82173 c!63354) b!546145))

(assert (= (and d!82173 (not c!63354)) b!546148))

(assert (= (and b!546148 res!340092) b!546143))

(assert (= (and b!546143 (not res!340091)) b!546144))

(assert (= (and b!546144 (not res!340093)) b!546149))

(declare-fun m!523663 () Bool)

(assert (=> d!82173 m!523663))

(assert (=> d!82173 m!523551))

(declare-fun m!523665 () Bool)

(assert (=> b!546144 m!523665))

(declare-fun m!523667 () Bool)

(assert (=> b!546146 m!523667))

(assert (=> b!546146 m!523667))

(assert (=> b!546146 m!523519))

(declare-fun m!523669 () Bool)

(assert (=> b!546146 m!523669))

(assert (=> b!546149 m!523665))

(assert (=> b!546143 m!523665))

(assert (=> b!545939 d!82173))

(declare-fun b!546152 () Bool)

(declare-fun lt!249235 () SeekEntryResult!4994)

(assert (=> b!546152 (and (bvsge (index!22202 lt!249235) #b00000000000000000000000000000000) (bvslt (index!22202 lt!249235) (size!16893 a!3154)))))

(declare-fun res!340094 () Bool)

(assert (=> b!546152 (= res!340094 (= (select (arr!16529 a!3154) (index!22202 lt!249235)) (select (arr!16529 a!3154) j!147)))))

(declare-fun e!315670 () Bool)

(assert (=> b!546152 (=> res!340094 e!315670)))

(declare-fun e!315671 () Bool)

(assert (=> b!546152 (= e!315671 e!315670)))

(declare-fun b!546153 () Bool)

(assert (=> b!546153 (and (bvsge (index!22202 lt!249235) #b00000000000000000000000000000000) (bvslt (index!22202 lt!249235) (size!16893 a!3154)))))

(declare-fun res!340096 () Bool)

(assert (=> b!546153 (= res!340096 (= (select (arr!16529 a!3154) (index!22202 lt!249235)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!546153 (=> res!340096 e!315670)))

(declare-fun b!546154 () Bool)

(declare-fun e!315672 () Bool)

(assert (=> b!546154 (= e!315672 (bvsge (x!51149 lt!249235) #b01111111111111111111111111111110))))

(declare-fun b!546155 () Bool)

(declare-fun e!315669 () SeekEntryResult!4994)

(assert (=> b!546155 (= e!315669 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16529 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16529 a!3154) j!147) a!3154 mask!3216))))

(declare-fun d!82191 () Bool)

(assert (=> d!82191 e!315672))

(declare-fun c!63357 () Bool)

(assert (=> d!82191 (= c!63357 (and (is-Intermediate!4994 lt!249235) (undefined!5806 lt!249235)))))

(declare-fun e!315673 () SeekEntryResult!4994)

(assert (=> d!82191 (= lt!249235 e!315673)))

(declare-fun c!63358 () Bool)

(assert (=> d!82191 (= c!63358 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!249236 () (_ BitVec 64))

(assert (=> d!82191 (= lt!249236 (select (arr!16529 a!3154) (toIndex!0 (select (arr!16529 a!3154) j!147) mask!3216)))))

(assert (=> d!82191 (validMask!0 mask!3216)))

(assert (=> d!82191 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16529 a!3154) j!147) mask!3216) (select (arr!16529 a!3154) j!147) a!3154 mask!3216) lt!249235)))

(declare-fun b!546156 () Bool)

(assert (=> b!546156 (= e!315673 e!315669)))

(declare-fun c!63356 () Bool)

(assert (=> b!546156 (= c!63356 (or (= lt!249236 (select (arr!16529 a!3154) j!147)) (= (bvadd lt!249236 lt!249236) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!546157 () Bool)

(assert (=> b!546157 (= e!315672 e!315671)))

(declare-fun res!340095 () Bool)

(assert (=> b!546157 (= res!340095 (and (is-Intermediate!4994 lt!249235) (not (undefined!5806 lt!249235)) (bvslt (x!51149 lt!249235) #b01111111111111111111111111111110) (bvsge (x!51149 lt!249235) #b00000000000000000000000000000000) (bvsge (x!51149 lt!249235) #b00000000000000000000000000000000)))))

(assert (=> b!546157 (=> (not res!340095) (not e!315671))))

(declare-fun b!546158 () Bool)

(assert (=> b!546158 (and (bvsge (index!22202 lt!249235) #b00000000000000000000000000000000) (bvslt (index!22202 lt!249235) (size!16893 a!3154)))))

(assert (=> b!546158 (= e!315670 (= (select (arr!16529 a!3154) (index!22202 lt!249235)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!546159 () Bool)

(assert (=> b!546159 (= e!315669 (Intermediate!4994 false (toIndex!0 (select (arr!16529 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!546160 () Bool)

(assert (=> b!546160 (= e!315673 (Intermediate!4994 true (toIndex!0 (select (arr!16529 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(assert (= (and d!82191 c!63358) b!546160))

(assert (= (and d!82191 (not c!63358)) b!546156))

(assert (= (and b!546156 c!63356) b!546159))

(assert (= (and b!546156 (not c!63356)) b!546155))

(assert (= (and d!82191 c!63357) b!546154))

(assert (= (and d!82191 (not c!63357)) b!546157))

(assert (= (and b!546157 res!340095) b!546152))

(assert (= (and b!546152 (not res!340094)) b!546153))

(assert (= (and b!546153 (not res!340096)) b!546158))

(assert (=> d!82191 m!523545))

(declare-fun m!523671 () Bool)

(assert (=> d!82191 m!523671))

(assert (=> d!82191 m!523551))

(declare-fun m!523673 () Bool)

(assert (=> b!546153 m!523673))

(assert (=> b!546155 m!523545))

(declare-fun m!523675 () Bool)

(assert (=> b!546155 m!523675))

(assert (=> b!546155 m!523675))

(assert (=> b!546155 m!523519))

(declare-fun m!523677 () Bool)

(assert (=> b!546155 m!523677))

(assert (=> b!546158 m!523673))

(assert (=> b!546152 m!523673))

(assert (=> b!545928 d!82191))

(declare-fun d!82193 () Bool)

(declare-fun lt!249245 () (_ BitVec 32))

(declare-fun lt!249244 () (_ BitVec 32))

(assert (=> d!82193 (= lt!249245 (bvmul (bvxor lt!249244 (bvlshr lt!249244 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82193 (= lt!249244 ((_ extract 31 0) (bvand (bvxor (select (arr!16529 a!3154) j!147) (bvlshr (select (arr!16529 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82193 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!340099 (let ((h!11663 ((_ extract 31 0) (bvand (bvxor (select (arr!16529 a!3154) j!147) (bvlshr (select (arr!16529 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51157 (bvmul (bvxor h!11663 (bvlshr h!11663 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51157 (bvlshr x!51157 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!340099 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!340099 #b00000000000000000000000000000000))))))

(assert (=> d!82193 (= (toIndex!0 (select (arr!16529 a!3154) j!147) mask!3216) (bvand (bvxor lt!249245 (bvlshr lt!249245 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!545928 d!82193))

(declare-fun d!82197 () Bool)

(declare-fun lt!249248 () (_ BitVec 32))

(assert (=> d!82197 (and (bvsge lt!249248 #b00000000000000000000000000000000) (bvslt lt!249248 (bvadd mask!3216 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!82197 (= lt!249248 (choose!52 index!1177 x!1030 mask!3216))))

(assert (=> d!82197 (validMask!0 mask!3216)))

(assert (=> d!82197 (= (nextIndex!0 index!1177 x!1030 mask!3216) lt!249248)))

(declare-fun bs!17020 () Bool)

(assert (= bs!17020 d!82197))

(declare-fun m!523689 () Bool)

(assert (=> bs!17020 m!523689))

(assert (=> bs!17020 m!523551))

(assert (=> b!545932 d!82197))

(declare-fun b!546171 () Bool)

(declare-fun lt!249249 () SeekEntryResult!4994)

(assert (=> b!546171 (and (bvsge (index!22202 lt!249249) #b00000000000000000000000000000000) (bvslt (index!22202 lt!249249) (size!16893 lt!249162)))))

(declare-fun res!340106 () Bool)

(assert (=> b!546171 (= res!340106 (= (select (arr!16529 lt!249162) (index!22202 lt!249249)) lt!249163))))

(declare-fun e!315684 () Bool)

(assert (=> b!546171 (=> res!340106 e!315684)))

(declare-fun e!315685 () Bool)

(assert (=> b!546171 (= e!315685 e!315684)))

(declare-fun b!546172 () Bool)

(assert (=> b!546172 (and (bvsge (index!22202 lt!249249) #b00000000000000000000000000000000) (bvslt (index!22202 lt!249249) (size!16893 lt!249162)))))

(declare-fun res!340108 () Bool)

(assert (=> b!546172 (= res!340108 (= (select (arr!16529 lt!249162) (index!22202 lt!249249)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!546172 (=> res!340108 e!315684)))

(declare-fun b!546173 () Bool)

(declare-fun e!315686 () Bool)

(assert (=> b!546173 (= e!315686 (bvsge (x!51149 lt!249249) #b01111111111111111111111111111110))))

(declare-fun e!315683 () SeekEntryResult!4994)

(declare-fun b!546174 () Bool)

(assert (=> b!546174 (= e!315683 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) lt!249163 lt!249162 mask!3216))))

(declare-fun d!82199 () Bool)

(assert (=> d!82199 e!315686))

(declare-fun c!63361 () Bool)

(assert (=> d!82199 (= c!63361 (and (is-Intermediate!4994 lt!249249) (undefined!5806 lt!249249)))))

(declare-fun e!315687 () SeekEntryResult!4994)

(assert (=> d!82199 (= lt!249249 e!315687)))

(declare-fun c!63362 () Bool)

(assert (=> d!82199 (= c!63362 (bvsge x!1030 #b01111111111111111111111111111110))))

(declare-fun lt!249250 () (_ BitVec 64))

(assert (=> d!82199 (= lt!249250 (select (arr!16529 lt!249162) index!1177))))

(assert (=> d!82199 (validMask!0 mask!3216)))

(assert (=> d!82199 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 lt!249163 lt!249162 mask!3216) lt!249249)))

(declare-fun b!546175 () Bool)

(assert (=> b!546175 (= e!315687 e!315683)))

(declare-fun c!63360 () Bool)

(assert (=> b!546175 (= c!63360 (or (= lt!249250 lt!249163) (= (bvadd lt!249250 lt!249250) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!546176 () Bool)

(assert (=> b!546176 (= e!315686 e!315685)))

(declare-fun res!340107 () Bool)

(assert (=> b!546176 (= res!340107 (and (is-Intermediate!4994 lt!249249) (not (undefined!5806 lt!249249)) (bvslt (x!51149 lt!249249) #b01111111111111111111111111111110) (bvsge (x!51149 lt!249249) #b00000000000000000000000000000000) (bvsge (x!51149 lt!249249) x!1030)))))

(assert (=> b!546176 (=> (not res!340107) (not e!315685))))

(declare-fun b!546177 () Bool)

(assert (=> b!546177 (and (bvsge (index!22202 lt!249249) #b00000000000000000000000000000000) (bvslt (index!22202 lt!249249) (size!16893 lt!249162)))))

(assert (=> b!546177 (= e!315684 (= (select (arr!16529 lt!249162) (index!22202 lt!249249)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!546178 () Bool)

(assert (=> b!546178 (= e!315683 (Intermediate!4994 false index!1177 x!1030))))

(declare-fun b!546179 () Bool)

(assert (=> b!546179 (= e!315687 (Intermediate!4994 true index!1177 x!1030))))

(assert (= (and d!82199 c!63362) b!546179))

(assert (= (and d!82199 (not c!63362)) b!546175))

(assert (= (and b!546175 c!63360) b!546178))

(assert (= (and b!546175 (not c!63360)) b!546174))

(assert (= (and d!82199 c!63361) b!546173))

(assert (= (and d!82199 (not c!63361)) b!546176))

(assert (= (and b!546176 res!340107) b!546171))

(assert (= (and b!546171 (not res!340106)) b!546172))

(assert (= (and b!546172 (not res!340108)) b!546177))

(declare-fun m!523691 () Bool)

(assert (=> d!82199 m!523691))

(assert (=> d!82199 m!523551))

(declare-fun m!523693 () Bool)

(assert (=> b!546172 m!523693))

(assert (=> b!546174 m!523549))

(assert (=> b!546174 m!523549))

(declare-fun m!523695 () Bool)

(assert (=> b!546174 m!523695))

(assert (=> b!546177 m!523693))

(assert (=> b!546171 m!523693))

(assert (=> b!545931 d!82199))

(declare-fun b!546180 () Bool)

(declare-fun lt!249251 () SeekEntryResult!4994)

(assert (=> b!546180 (and (bvsge (index!22202 lt!249251) #b00000000000000000000000000000000) (bvslt (index!22202 lt!249251) (size!16893 lt!249162)))))

(declare-fun res!340109 () Bool)

(assert (=> b!546180 (= res!340109 (= (select (arr!16529 lt!249162) (index!22202 lt!249251)) lt!249163))))

(declare-fun e!315689 () Bool)

(assert (=> b!546180 (=> res!340109 e!315689)))

(declare-fun e!315690 () Bool)

(assert (=> b!546180 (= e!315690 e!315689)))

(declare-fun b!546181 () Bool)

(assert (=> b!546181 (and (bvsge (index!22202 lt!249251) #b00000000000000000000000000000000) (bvslt (index!22202 lt!249251) (size!16893 lt!249162)))))

(declare-fun res!340111 () Bool)

(assert (=> b!546181 (= res!340111 (= (select (arr!16529 lt!249162) (index!22202 lt!249251)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!546181 (=> res!340111 e!315689)))

(declare-fun b!546182 () Bool)

(declare-fun e!315691 () Bool)

(assert (=> b!546182 (= e!315691 (bvsge (x!51149 lt!249251) #b01111111111111111111111111111110))))

(declare-fun e!315688 () SeekEntryResult!4994)

(declare-fun b!546183 () Bool)

(assert (=> b!546183 (= e!315688 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030 #b00000000000000000000000000000001) (nextIndex!0 lt!249165 (bvadd #b00000000000000000000000000000001 x!1030) mask!3216) lt!249163 lt!249162 mask!3216))))

(declare-fun d!82201 () Bool)

(assert (=> d!82201 e!315691))

(declare-fun c!63364 () Bool)

(assert (=> d!82201 (= c!63364 (and (is-Intermediate!4994 lt!249251) (undefined!5806 lt!249251)))))

(declare-fun e!315692 () SeekEntryResult!4994)

(assert (=> d!82201 (= lt!249251 e!315692)))

(declare-fun c!63365 () Bool)

(assert (=> d!82201 (= c!63365 (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b01111111111111111111111111111110))))

(declare-fun lt!249252 () (_ BitVec 64))

(assert (=> d!82201 (= lt!249252 (select (arr!16529 lt!249162) lt!249165))))

(assert (=> d!82201 (validMask!0 mask!3216)))

(assert (=> d!82201 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249165 lt!249163 lt!249162 mask!3216) lt!249251)))

(declare-fun b!546184 () Bool)

(assert (=> b!546184 (= e!315692 e!315688)))

(declare-fun c!63363 () Bool)

(assert (=> b!546184 (= c!63363 (or (= lt!249252 lt!249163) (= (bvadd lt!249252 lt!249252) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!546185 () Bool)

(assert (=> b!546185 (= e!315691 e!315690)))

(declare-fun res!340110 () Bool)

(assert (=> b!546185 (= res!340110 (and (is-Intermediate!4994 lt!249251) (not (undefined!5806 lt!249251)) (bvslt (x!51149 lt!249251) #b01111111111111111111111111111110) (bvsge (x!51149 lt!249251) #b00000000000000000000000000000000) (bvsge (x!51149 lt!249251) (bvadd #b00000000000000000000000000000001 x!1030))))))

(assert (=> b!546185 (=> (not res!340110) (not e!315690))))

(declare-fun b!546186 () Bool)

(assert (=> b!546186 (and (bvsge (index!22202 lt!249251) #b00000000000000000000000000000000) (bvslt (index!22202 lt!249251) (size!16893 lt!249162)))))

(assert (=> b!546186 (= e!315689 (= (select (arr!16529 lt!249162) (index!22202 lt!249251)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!546187 () Bool)

(assert (=> b!546187 (= e!315688 (Intermediate!4994 false lt!249165 (bvadd #b00000000000000000000000000000001 x!1030)))))

(declare-fun b!546188 () Bool)

(assert (=> b!546188 (= e!315692 (Intermediate!4994 true lt!249165 (bvadd #b00000000000000000000000000000001 x!1030)))))

(assert (= (and d!82201 c!63365) b!546188))

(assert (= (and d!82201 (not c!63365)) b!546184))

(assert (= (and b!546184 c!63363) b!546187))

(assert (= (and b!546184 (not c!63363)) b!546183))

(assert (= (and d!82201 c!63364) b!546182))

(assert (= (and d!82201 (not c!63364)) b!546185))

(assert (= (and b!546185 res!340110) b!546180))

(assert (= (and b!546180 (not res!340109)) b!546181))

(assert (= (and b!546181 (not res!340111)) b!546186))

(declare-fun m!523697 () Bool)

(assert (=> d!82201 m!523697))

(assert (=> d!82201 m!523551))

(declare-fun m!523699 () Bool)

(assert (=> b!546181 m!523699))

(assert (=> b!546183 m!523667))

(assert (=> b!546183 m!523667))

(declare-fun m!523701 () Bool)

(assert (=> b!546183 m!523701))

(assert (=> b!546186 m!523699))

(assert (=> b!546180 m!523699))

(assert (=> b!545931 d!82201))

(declare-fun d!82203 () Bool)

(declare-fun e!315719 () Bool)

(assert (=> d!82203 e!315719))

(declare-fun res!340123 () Bool)

(assert (=> d!82203 (=> (not res!340123) (not e!315719))))

(assert (=> d!82203 (= res!340123 (and (or (bvslt i!1153 #b00000000000000000000000000000000) (bvsge i!1153 (size!16893 a!3154)) (and (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16893 a!3154)))) (or (bvslt i!1153 #b00000000000000000000000000000000) (bvsge i!1153 (size!16893 a!3154)) (and (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16893 a!3154)))) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16893 a!3154))))))

(declare-fun lt!249273 () Unit!16920)

(declare-fun choose!47 (array!34409 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16920)

(assert (=> d!82203 (= lt!249273 (choose!47 a!3154 i!1153 k!1998 j!147 lt!249165 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(assert (=> d!82203 (validMask!0 mask!3216)))

(assert (=> d!82203 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!249165 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216) lt!249273)))

(declare-fun b!546236 () Bool)

(assert (=> b!546236 (= e!315719 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249165 (select (store (arr!16529 a!3154) i!1153 k!1998) j!147) (array!34410 (store (arr!16529 a!3154) i!1153 k!1998) (size!16893 a!3154)) mask!3216) (Intermediate!4994 false resIndex!32 resX!32)))))

(assert (= (and d!82203 res!340123) b!546236))

(declare-fun m!523737 () Bool)

(assert (=> d!82203 m!523737))

(assert (=> d!82203 m!523551))

(assert (=> b!546236 m!523535))

(assert (=> b!546236 m!523533))

(assert (=> b!546236 m!523533))

(declare-fun m!523739 () Bool)

(assert (=> b!546236 m!523739))

(assert (=> b!545931 d!82203))

(declare-fun d!82215 () Bool)

(assert (=> d!82215 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!49640 d!82215))

(declare-fun d!82221 () Bool)

(assert (=> d!82221 (= (array_inv!12303 a!3154) (bvsge (size!16893 a!3154) #b00000000000000000000000000000000))))

