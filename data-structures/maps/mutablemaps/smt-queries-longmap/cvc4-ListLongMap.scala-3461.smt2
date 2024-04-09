; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48050 () Bool)

(assert start!48050)

(declare-fun res!325168 () Bool)

(declare-fun e!308318 () Bool)

(assert (=> start!48050 (=> (not res!325168) (not e!308318))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48050 (= res!325168 (validMask!0 mask!3524))))

(assert (=> start!48050 e!308318))

(assert (=> start!48050 true))

(declare-datatypes ((array!33503 0))(
  ( (array!33504 (arr!16097 (Array (_ BitVec 32) (_ BitVec 64))) (size!16461 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33503)

(declare-fun array_inv!11871 (array!33503) Bool)

(assert (=> start!48050 (array_inv!11871 a!3235)))

(declare-fun b!529124 () Bool)

(declare-fun res!325169 () Bool)

(declare-fun e!308319 () Bool)

(assert (=> b!529124 (=> (not res!325169) (not e!308319))))

(declare-datatypes ((List!10308 0))(
  ( (Nil!10305) (Cons!10304 (h!11241 (_ BitVec 64)) (t!16544 List!10308)) )
))
(declare-fun arrayNoDuplicates!0 (array!33503 (_ BitVec 32) List!10308) Bool)

(assert (=> b!529124 (= res!325169 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10305))))

(declare-fun b!529125 () Bool)

(declare-fun e!308317 () Bool)

(assert (=> b!529125 (= e!308319 (not e!308317))))

(declare-fun res!325170 () Bool)

(assert (=> b!529125 (=> res!325170 e!308317)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4571 0))(
  ( (MissingZero!4571 (index!20508 (_ BitVec 32))) (Found!4571 (index!20509 (_ BitVec 32))) (Intermediate!4571 (undefined!5383 Bool) (index!20510 (_ BitVec 32)) (x!49502 (_ BitVec 32))) (Undefined!4571) (MissingVacant!4571 (index!20511 (_ BitVec 32))) )
))
(declare-fun lt!243994 () SeekEntryResult!4571)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!243991 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33503 (_ BitVec 32)) SeekEntryResult!4571)

(assert (=> b!529125 (= res!325170 (= lt!243994 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243991 (select (store (arr!16097 a!3235) i!1204 k!2280) j!176) (array!33504 (store (arr!16097 a!3235) i!1204 k!2280) (size!16461 a!3235)) mask!3524)))))

(declare-fun lt!243993 () (_ BitVec 32))

(assert (=> b!529125 (= lt!243994 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243993 (select (arr!16097 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529125 (= lt!243991 (toIndex!0 (select (store (arr!16097 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!529125 (= lt!243993 (toIndex!0 (select (arr!16097 a!3235) j!176) mask!3524))))

(declare-fun e!308320 () Bool)

(assert (=> b!529125 e!308320))

(declare-fun res!325166 () Bool)

(assert (=> b!529125 (=> (not res!325166) (not e!308320))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33503 (_ BitVec 32)) Bool)

(assert (=> b!529125 (= res!325166 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16746 0))(
  ( (Unit!16747) )
))
(declare-fun lt!243990 () Unit!16746)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33503 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16746)

(assert (=> b!529125 (= lt!243990 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!529126 () Bool)

(declare-fun res!325171 () Bool)

(assert (=> b!529126 (=> (not res!325171) (not e!308318))))

(declare-fun arrayContainsKey!0 (array!33503 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!529126 (= res!325171 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!529127 () Bool)

(declare-fun res!325164 () Bool)

(assert (=> b!529127 (=> (not res!325164) (not e!308318))))

(assert (=> b!529127 (= res!325164 (and (= (size!16461 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16461 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16461 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!529128 () Bool)

(declare-fun res!325165 () Bool)

(assert (=> b!529128 (=> (not res!325165) (not e!308318))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!529128 (= res!325165 (validKeyInArray!0 k!2280))))

(declare-fun b!529129 () Bool)

(assert (=> b!529129 (= e!308318 e!308319)))

(declare-fun res!325172 () Bool)

(assert (=> b!529129 (=> (not res!325172) (not e!308319))))

(declare-fun lt!243995 () SeekEntryResult!4571)

(assert (=> b!529129 (= res!325172 (or (= lt!243995 (MissingZero!4571 i!1204)) (= lt!243995 (MissingVacant!4571 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33503 (_ BitVec 32)) SeekEntryResult!4571)

(assert (=> b!529129 (= lt!243995 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!529130 () Bool)

(assert (=> b!529130 (= e!308320 (= (seekEntryOrOpen!0 (select (arr!16097 a!3235) j!176) a!3235 mask!3524) (Found!4571 j!176)))))

(declare-fun b!529131 () Bool)

(declare-fun res!325167 () Bool)

(assert (=> b!529131 (=> (not res!325167) (not e!308319))))

(assert (=> b!529131 (= res!325167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!529132 () Bool)

(declare-fun res!325163 () Bool)

(assert (=> b!529132 (=> (not res!325163) (not e!308318))))

(assert (=> b!529132 (= res!325163 (validKeyInArray!0 (select (arr!16097 a!3235) j!176)))))

(declare-fun b!529133 () Bool)

(declare-fun lt!243992 () Bool)

(assert (=> b!529133 (= e!308317 (or (and (not lt!243992) (undefined!5383 lt!243994)) (and (not lt!243992) (not (undefined!5383 lt!243994)))))))

(assert (=> b!529133 (= lt!243992 (not (is-Intermediate!4571 lt!243994)))))

(assert (= (and start!48050 res!325168) b!529127))

(assert (= (and b!529127 res!325164) b!529132))

(assert (= (and b!529132 res!325163) b!529128))

(assert (= (and b!529128 res!325165) b!529126))

(assert (= (and b!529126 res!325171) b!529129))

(assert (= (and b!529129 res!325172) b!529131))

(assert (= (and b!529131 res!325167) b!529124))

(assert (= (and b!529124 res!325169) b!529125))

(assert (= (and b!529125 res!325166) b!529130))

(assert (= (and b!529125 (not res!325170)) b!529133))

(declare-fun m!509719 () Bool)

(assert (=> b!529125 m!509719))

(declare-fun m!509721 () Bool)

(assert (=> b!529125 m!509721))

(declare-fun m!509723 () Bool)

(assert (=> b!529125 m!509723))

(declare-fun m!509725 () Bool)

(assert (=> b!529125 m!509725))

(declare-fun m!509727 () Bool)

(assert (=> b!529125 m!509727))

(declare-fun m!509729 () Bool)

(assert (=> b!529125 m!509729))

(assert (=> b!529125 m!509725))

(assert (=> b!529125 m!509719))

(declare-fun m!509731 () Bool)

(assert (=> b!529125 m!509731))

(assert (=> b!529125 m!509719))

(declare-fun m!509733 () Bool)

(assert (=> b!529125 m!509733))

(assert (=> b!529125 m!509725))

(declare-fun m!509735 () Bool)

(assert (=> b!529125 m!509735))

(declare-fun m!509737 () Bool)

(assert (=> b!529124 m!509737))

(declare-fun m!509739 () Bool)

(assert (=> b!529129 m!509739))

(declare-fun m!509741 () Bool)

(assert (=> b!529126 m!509741))

(declare-fun m!509743 () Bool)

(assert (=> b!529128 m!509743))

(assert (=> b!529132 m!509719))

(assert (=> b!529132 m!509719))

(declare-fun m!509745 () Bool)

(assert (=> b!529132 m!509745))

(declare-fun m!509747 () Bool)

(assert (=> start!48050 m!509747))

(declare-fun m!509749 () Bool)

(assert (=> start!48050 m!509749))

(assert (=> b!529130 m!509719))

(assert (=> b!529130 m!509719))

(declare-fun m!509751 () Bool)

(assert (=> b!529130 m!509751))

(declare-fun m!509753 () Bool)

(assert (=> b!529131 m!509753))

(push 1)

(assert (not start!48050))

(assert (not b!529131))

(assert (not b!529126))

(assert (not b!529128))

(assert (not b!529124))

(assert (not b!529129))

(assert (not b!529125))

(assert (not b!529130))

(assert (not b!529132))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!529203 () Bool)

(declare-fun e!308365 () SeekEntryResult!4571)

(declare-fun lt!244023 () SeekEntryResult!4571)

(assert (=> b!529203 (= e!308365 (Found!4571 (index!20510 lt!244023)))))

(declare-fun e!308366 () SeekEntryResult!4571)

(declare-fun b!529204 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33503 (_ BitVec 32)) SeekEntryResult!4571)

(assert (=> b!529204 (= e!308366 (seekKeyOrZeroReturnVacant!0 (x!49502 lt!244023) (index!20510 lt!244023) (index!20510 lt!244023) k!2280 a!3235 mask!3524))))

(declare-fun b!529205 () Bool)

(declare-fun c!62314 () Bool)

(declare-fun lt!244021 () (_ BitVec 64))

(assert (=> b!529205 (= c!62314 (= lt!244021 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!529205 (= e!308365 e!308366)))

(declare-fun d!80897 () Bool)

(declare-fun lt!244022 () SeekEntryResult!4571)

(assert (=> d!80897 (and (or (is-Undefined!4571 lt!244022) (not (is-Found!4571 lt!244022)) (and (bvsge (index!20509 lt!244022) #b00000000000000000000000000000000) (bvslt (index!20509 lt!244022) (size!16461 a!3235)))) (or (is-Undefined!4571 lt!244022) (is-Found!4571 lt!244022) (not (is-MissingZero!4571 lt!244022)) (and (bvsge (index!20508 lt!244022) #b00000000000000000000000000000000) (bvslt (index!20508 lt!244022) (size!16461 a!3235)))) (or (is-Undefined!4571 lt!244022) (is-Found!4571 lt!244022) (is-MissingZero!4571 lt!244022) (not (is-MissingVacant!4571 lt!244022)) (and (bvsge (index!20511 lt!244022) #b00000000000000000000000000000000) (bvslt (index!20511 lt!244022) (size!16461 a!3235)))) (or (is-Undefined!4571 lt!244022) (ite (is-Found!4571 lt!244022) (= (select (arr!16097 a!3235) (index!20509 lt!244022)) k!2280) (ite (is-MissingZero!4571 lt!244022) (= (select (arr!16097 a!3235) (index!20508 lt!244022)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4571 lt!244022) (= (select (arr!16097 a!3235) (index!20511 lt!244022)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!308364 () SeekEntryResult!4571)

(assert (=> d!80897 (= lt!244022 e!308364)))

(declare-fun c!62313 () Bool)

(assert (=> d!80897 (= c!62313 (and (is-Intermediate!4571 lt!244023) (undefined!5383 lt!244023)))))

(assert (=> d!80897 (= lt!244023 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!80897 (validMask!0 mask!3524)))

(assert (=> d!80897 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!244022)))

(declare-fun b!529206 () Bool)

(assert (=> b!529206 (= e!308366 (MissingZero!4571 (index!20510 lt!244023)))))

(declare-fun b!529207 () Bool)

(assert (=> b!529207 (= e!308364 e!308365)))

(assert (=> b!529207 (= lt!244021 (select (arr!16097 a!3235) (index!20510 lt!244023)))))

(declare-fun c!62315 () Bool)

(assert (=> b!529207 (= c!62315 (= lt!244021 k!2280))))

(declare-fun b!529208 () Bool)

(assert (=> b!529208 (= e!308364 Undefined!4571)))

(assert (= (and d!80897 c!62313) b!529208))

(assert (= (and d!80897 (not c!62313)) b!529207))

(assert (= (and b!529207 c!62315) b!529203))

(assert (= (and b!529207 (not c!62315)) b!529205))

(assert (= (and b!529205 c!62314) b!529206))

(assert (= (and b!529205 (not c!62314)) b!529204))

(declare-fun m!509781 () Bool)

(assert (=> b!529204 m!509781))

(declare-fun m!509783 () Bool)

(assert (=> d!80897 m!509783))

(declare-fun m!509785 () Bool)

(assert (=> d!80897 m!509785))

(declare-fun m!509787 () Bool)

(assert (=> d!80897 m!509787))

(assert (=> d!80897 m!509747))

(declare-fun m!509789 () Bool)

(assert (=> d!80897 m!509789))

(assert (=> d!80897 m!509785))

(declare-fun m!509791 () Bool)

(assert (=> d!80897 m!509791))

(declare-fun m!509793 () Bool)

(assert (=> b!529207 m!509793))

(assert (=> b!529129 d!80897))

(declare-fun bm!31913 () Bool)

(declare-fun call!31916 () Bool)

(declare-fun c!62321 () Bool)

(assert (=> bm!31913 (= call!31916 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62321 (Cons!10304 (select (arr!16097 a!3235) #b00000000000000000000000000000000) Nil!10305) Nil!10305)))))

(declare-fun b!529228 () Bool)

(declare-fun e!308380 () Bool)

(declare-fun e!308381 () Bool)

(assert (=> b!529228 (= e!308380 e!308381)))

(assert (=> b!529228 (= c!62321 (validKeyInArray!0 (select (arr!16097 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!529230 () Bool)

(declare-fun e!308383 () Bool)

(declare-fun contains!2784 (List!10308 (_ BitVec 64)) Bool)

(assert (=> b!529230 (= e!308383 (contains!2784 Nil!10305 (select (arr!16097 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!529231 () Bool)

(assert (=> b!529231 (= e!308381 call!31916)))

(declare-fun b!529232 () Bool)

(declare-fun e!308382 () Bool)

(assert (=> b!529232 (= e!308382 e!308380)))

(declare-fun res!325204 () Bool)

(assert (=> b!529232 (=> (not res!325204) (not e!308380))))

(assert (=> b!529232 (= res!325204 (not e!308383))))

(declare-fun res!325205 () Bool)

(assert (=> b!529232 (=> (not res!325205) (not e!308383))))

(assert (=> b!529232 (= res!325205 (validKeyInArray!0 (select (arr!16097 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!529229 () Bool)

(assert (=> b!529229 (= e!308381 call!31916)))

(declare-fun d!80911 () Bool)

(declare-fun res!325206 () Bool)

(assert (=> d!80911 (=> res!325206 e!308382)))

(assert (=> d!80911 (= res!325206 (bvsge #b00000000000000000000000000000000 (size!16461 a!3235)))))

(assert (=> d!80911 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10305) e!308382)))

(assert (= (and d!80911 (not res!325206)) b!529232))

(assert (= (and b!529232 res!325205) b!529230))

(assert (= (and b!529232 res!325204) b!529228))

(assert (= (and b!529228 c!62321) b!529229))

(assert (= (and b!529228 (not c!62321)) b!529231))

(assert (= (or b!529229 b!529231) bm!31913))

(declare-fun m!509805 () Bool)

(assert (=> bm!31913 m!509805))

(declare-fun m!509807 () Bool)

(assert (=> bm!31913 m!509807))

(assert (=> b!529228 m!509805))

(assert (=> b!529228 m!509805))

(declare-fun m!509809 () Bool)

(assert (=> b!529228 m!509809))

(assert (=> b!529230 m!509805))

(assert (=> b!529230 m!509805))

(declare-fun m!509811 () Bool)

(assert (=> b!529230 m!509811))

(assert (=> b!529232 m!509805))

(assert (=> b!529232 m!509805))

(assert (=> b!529232 m!509809))

(assert (=> b!529124 d!80911))

(declare-fun b!529233 () Bool)

(declare-fun e!308385 () SeekEntryResult!4571)

(declare-fun lt!244033 () SeekEntryResult!4571)

(assert (=> b!529233 (= e!308385 (Found!4571 (index!20510 lt!244033)))))

(declare-fun e!308386 () SeekEntryResult!4571)

(declare-fun b!529234 () Bool)

(assert (=> b!529234 (= e!308386 (seekKeyOrZeroReturnVacant!0 (x!49502 lt!244033) (index!20510 lt!244033) (index!20510 lt!244033) (select (arr!16097 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!529235 () Bool)

(declare-fun c!62323 () Bool)

(declare-fun lt!244031 () (_ BitVec 64))

(assert (=> b!529235 (= c!62323 (= lt!244031 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!529235 (= e!308385 e!308386)))

(declare-fun d!80919 () Bool)

(declare-fun lt!244032 () SeekEntryResult!4571)

(assert (=> d!80919 (and (or (is-Undefined!4571 lt!244032) (not (is-Found!4571 lt!244032)) (and (bvsge (index!20509 lt!244032) #b00000000000000000000000000000000) (bvslt (index!20509 lt!244032) (size!16461 a!3235)))) (or (is-Undefined!4571 lt!244032) (is-Found!4571 lt!244032) (not (is-MissingZero!4571 lt!244032)) (and (bvsge (index!20508 lt!244032) #b00000000000000000000000000000000) (bvslt (index!20508 lt!244032) (size!16461 a!3235)))) (or (is-Undefined!4571 lt!244032) (is-Found!4571 lt!244032) (is-MissingZero!4571 lt!244032) (not (is-MissingVacant!4571 lt!244032)) (and (bvsge (index!20511 lt!244032) #b00000000000000000000000000000000) (bvslt (index!20511 lt!244032) (size!16461 a!3235)))) (or (is-Undefined!4571 lt!244032) (ite (is-Found!4571 lt!244032) (= (select (arr!16097 a!3235) (index!20509 lt!244032)) (select (arr!16097 a!3235) j!176)) (ite (is-MissingZero!4571 lt!244032) (= (select (arr!16097 a!3235) (index!20508 lt!244032)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4571 lt!244032) (= (select (arr!16097 a!3235) (index!20511 lt!244032)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!308384 () SeekEntryResult!4571)

(assert (=> d!80919 (= lt!244032 e!308384)))

(declare-fun c!62322 () Bool)

(assert (=> d!80919 (= c!62322 (and (is-Intermediate!4571 lt!244033) (undefined!5383 lt!244033)))))

(assert (=> d!80919 (= lt!244033 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16097 a!3235) j!176) mask!3524) (select (arr!16097 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80919 (validMask!0 mask!3524)))

(assert (=> d!80919 (= (seekEntryOrOpen!0 (select (arr!16097 a!3235) j!176) a!3235 mask!3524) lt!244032)))

(declare-fun b!529236 () Bool)

(assert (=> b!529236 (= e!308386 (MissingZero!4571 (index!20510 lt!244033)))))

(declare-fun b!529237 () Bool)

(assert (=> b!529237 (= e!308384 e!308385)))

(assert (=> b!529237 (= lt!244031 (select (arr!16097 a!3235) (index!20510 lt!244033)))))

(declare-fun c!62324 () Bool)

(assert (=> b!529237 (= c!62324 (= lt!244031 (select (arr!16097 a!3235) j!176)))))

(declare-fun b!529238 () Bool)

(assert (=> b!529238 (= e!308384 Undefined!4571)))

(assert (= (and d!80919 c!62322) b!529238))

(assert (= (and d!80919 (not c!62322)) b!529237))

(assert (= (and b!529237 c!62324) b!529233))

(assert (= (and b!529237 (not c!62324)) b!529235))

(assert (= (and b!529235 c!62323) b!529236))

(assert (= (and b!529235 (not c!62323)) b!529234))

(assert (=> b!529234 m!509719))

(declare-fun m!509813 () Bool)

(assert (=> b!529234 m!509813))

(declare-fun m!509815 () Bool)

(assert (=> d!80919 m!509815))

(assert (=> d!80919 m!509719))

(assert (=> d!80919 m!509731))

(declare-fun m!509817 () Bool)

(assert (=> d!80919 m!509817))

(assert (=> d!80919 m!509747))

(declare-fun m!509819 () Bool)

(assert (=> d!80919 m!509819))

(assert (=> d!80919 m!509731))

(assert (=> d!80919 m!509719))

(declare-fun m!509821 () Bool)

(assert (=> d!80919 m!509821))

(declare-fun m!509823 () Bool)

(assert (=> b!529237 m!509823))

(assert (=> b!529130 d!80919))

(declare-fun d!80921 () Bool)

(assert (=> d!80921 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!529128 d!80921))

(declare-fun d!80923 () Bool)

(assert (=> d!80923 (= (validKeyInArray!0 (select (arr!16097 a!3235) j!176)) (and (not (= (select (arr!16097 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16097 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!529132 d!80923))

(declare-fun b!529321 () Bool)

(declare-fun e!308442 () SeekEntryResult!4571)

(assert (=> b!529321 (= e!308442 (Intermediate!4571 false lt!243991 #b00000000000000000000000000000000))))

(declare-fun b!529322 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529322 (= e!308442 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!243991 #b00000000000000000000000000000000 mask!3524) (select (store (arr!16097 a!3235) i!1204 k!2280) j!176) (array!33504 (store (arr!16097 a!3235) i!1204 k!2280) (size!16461 a!3235)) mask!3524))))

(declare-fun b!529323 () Bool)

(declare-fun lt!244069 () SeekEntryResult!4571)

(assert (=> b!529323 (and (bvsge (index!20510 lt!244069) #b00000000000000000000000000000000) (bvslt (index!20510 lt!244069) (size!16461 (array!33504 (store (arr!16097 a!3235) i!1204 k!2280) (size!16461 a!3235)))))))

(declare-fun res!325234 () Bool)

(assert (=> b!529323 (= res!325234 (= (select (arr!16097 (array!33504 (store (arr!16097 a!3235) i!1204 k!2280) (size!16461 a!3235))) (index!20510 lt!244069)) (select (store (arr!16097 a!3235) i!1204 k!2280) j!176)))))

(declare-fun e!308438 () Bool)

(assert (=> b!529323 (=> res!325234 e!308438)))

(declare-fun e!308441 () Bool)

(assert (=> b!529323 (= e!308441 e!308438)))

(declare-fun d!80925 () Bool)

(declare-fun e!308440 () Bool)

(assert (=> d!80925 e!308440))

(declare-fun c!62355 () Bool)

(assert (=> d!80925 (= c!62355 (and (is-Intermediate!4571 lt!244069) (undefined!5383 lt!244069)))))

(declare-fun e!308439 () SeekEntryResult!4571)

(assert (=> d!80925 (= lt!244069 e!308439)))

(declare-fun c!62353 () Bool)

(assert (=> d!80925 (= c!62353 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!244068 () (_ BitVec 64))

(assert (=> d!80925 (= lt!244068 (select (arr!16097 (array!33504 (store (arr!16097 a!3235) i!1204 k!2280) (size!16461 a!3235))) lt!243991))))

(assert (=> d!80925 (validMask!0 mask!3524)))

(assert (=> d!80925 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243991 (select (store (arr!16097 a!3235) i!1204 k!2280) j!176) (array!33504 (store (arr!16097 a!3235) i!1204 k!2280) (size!16461 a!3235)) mask!3524) lt!244069)))

(declare-fun b!529324 () Bool)

(assert (=> b!529324 (and (bvsge (index!20510 lt!244069) #b00000000000000000000000000000000) (bvslt (index!20510 lt!244069) (size!16461 (array!33504 (store (arr!16097 a!3235) i!1204 k!2280) (size!16461 a!3235)))))))

(declare-fun res!325236 () Bool)

(assert (=> b!529324 (= res!325236 (= (select (arr!16097 (array!33504 (store (arr!16097 a!3235) i!1204 k!2280) (size!16461 a!3235))) (index!20510 lt!244069)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!529324 (=> res!325236 e!308438)))

(declare-fun b!529325 () Bool)

(assert (=> b!529325 (= e!308439 (Intermediate!4571 true lt!243991 #b00000000000000000000000000000000))))

(declare-fun b!529326 () Bool)

(assert (=> b!529326 (and (bvsge (index!20510 lt!244069) #b00000000000000000000000000000000) (bvslt (index!20510 lt!244069) (size!16461 (array!33504 (store (arr!16097 a!3235) i!1204 k!2280) (size!16461 a!3235)))))))

(assert (=> b!529326 (= e!308438 (= (select (arr!16097 (array!33504 (store (arr!16097 a!3235) i!1204 k!2280) (size!16461 a!3235))) (index!20510 lt!244069)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!529327 () Bool)

(assert (=> b!529327 (= e!308440 (bvsge (x!49502 lt!244069) #b01111111111111111111111111111110))))

(declare-fun b!529328 () Bool)

(assert (=> b!529328 (= e!308440 e!308441)))

(declare-fun res!325235 () Bool)

(assert (=> b!529328 (= res!325235 (and (is-Intermediate!4571 lt!244069) (not (undefined!5383 lt!244069)) (bvslt (x!49502 lt!244069) #b01111111111111111111111111111110) (bvsge (x!49502 lt!244069) #b00000000000000000000000000000000) (bvsge (x!49502 lt!244069) #b00000000000000000000000000000000)))))

(assert (=> b!529328 (=> (not res!325235) (not e!308441))))

(declare-fun b!529329 () Bool)

(assert (=> b!529329 (= e!308439 e!308442)))

(declare-fun c!62354 () Bool)

(assert (=> b!529329 (= c!62354 (or (= lt!244068 (select (store (arr!16097 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!244068 lt!244068) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!80925 c!62353) b!529325))

(assert (= (and d!80925 (not c!62353)) b!529329))

(assert (= (and b!529329 c!62354) b!529321))

(assert (= (and b!529329 (not c!62354)) b!529322))

(assert (= (and d!80925 c!62355) b!529327))

(assert (= (and d!80925 (not c!62355)) b!529328))

(assert (= (and b!529328 res!325235) b!529323))

(assert (= (and b!529323 (not res!325234)) b!529324))

(assert (= (and b!529324 (not res!325236)) b!529326))

(declare-fun m!509877 () Bool)

(assert (=> b!529324 m!509877))

(declare-fun m!509879 () Bool)

(assert (=> b!529322 m!509879))

(assert (=> b!529322 m!509879))

(assert (=> b!529322 m!509725))

(declare-fun m!509881 () Bool)

(assert (=> b!529322 m!509881))

(assert (=> b!529323 m!509877))

(declare-fun m!509883 () Bool)

(assert (=> d!80925 m!509883))

(assert (=> d!80925 m!509747))

(assert (=> b!529326 m!509877))

(assert (=> b!529125 d!80925))

(declare-fun d!80951 () Bool)

(declare-fun lt!244077 () (_ BitVec 32))

(declare-fun lt!244076 () (_ BitVec 32))

(assert (=> d!80951 (= lt!244077 (bvmul (bvxor lt!244076 (bvlshr lt!244076 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80951 (= lt!244076 ((_ extract 31 0) (bvand (bvxor (select (arr!16097 a!3235) j!176) (bvlshr (select (arr!16097 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80951 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!325237 (let ((h!11244 ((_ extract 31 0) (bvand (bvxor (select (arr!16097 a!3235) j!176) (bvlshr (select (arr!16097 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49507 (bvmul (bvxor h!11244 (bvlshr h!11244 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49507 (bvlshr x!49507 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!325237 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!325237 #b00000000000000000000000000000000))))))

(assert (=> d!80951 (= (toIndex!0 (select (arr!16097 a!3235) j!176) mask!3524) (bvand (bvxor lt!244077 (bvlshr lt!244077 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!529125 d!80951))

(declare-fun b!529356 () Bool)

(declare-fun e!308464 () Bool)

(declare-fun call!31929 () Bool)

(assert (=> b!529356 (= e!308464 call!31929)))

(declare-fun b!529357 () Bool)

(declare-fun e!308466 () Bool)

(declare-fun e!308465 () Bool)

(assert (=> b!529357 (= e!308466 e!308465)))

(declare-fun c!62361 () Bool)

(assert (=> b!529357 (= c!62361 (validKeyInArray!0 (select (arr!16097 a!3235) j!176)))))

(declare-fun b!529358 () Bool)

(assert (=> b!529358 (= e!308465 call!31929)))

(declare-fun bm!31926 () Bool)

(assert (=> bm!31926 (= call!31929 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!80953 () Bool)

(declare-fun res!325254 () Bool)

(assert (=> d!80953 (=> res!325254 e!308466)))

(assert (=> d!80953 (= res!325254 (bvsge j!176 (size!16461 a!3235)))))

(assert (=> d!80953 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!308466)))

(declare-fun b!529359 () Bool)

(assert (=> b!529359 (= e!308465 e!308464)))

(declare-fun lt!244093 () (_ BitVec 64))

(assert (=> b!529359 (= lt!244093 (select (arr!16097 a!3235) j!176))))

(declare-fun lt!244094 () Unit!16746)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33503 (_ BitVec 64) (_ BitVec 32)) Unit!16746)

(assert (=> b!529359 (= lt!244094 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!244093 j!176))))

(assert (=> b!529359 (arrayContainsKey!0 a!3235 lt!244093 #b00000000000000000000000000000000)))

(declare-fun lt!244095 () Unit!16746)

(assert (=> b!529359 (= lt!244095 lt!244094)))

(declare-fun res!325255 () Bool)

(assert (=> b!529359 (= res!325255 (= (seekEntryOrOpen!0 (select (arr!16097 a!3235) j!176) a!3235 mask!3524) (Found!4571 j!176)))))

(assert (=> b!529359 (=> (not res!325255) (not e!308464))))

(assert (= (and d!80953 (not res!325254)) b!529357))

(assert (= (and b!529357 c!62361) b!529359))

(assert (= (and b!529357 (not c!62361)) b!529358))

(assert (= (and b!529359 res!325255) b!529356))

(assert (= (or b!529356 b!529358) bm!31926))

(assert (=> b!529357 m!509719))

(assert (=> b!529357 m!509719))

(assert (=> b!529357 m!509745))

(declare-fun m!509893 () Bool)

(assert (=> bm!31926 m!509893))

(assert (=> b!529359 m!509719))

(declare-fun m!509895 () Bool)

(assert (=> b!529359 m!509895))

(declare-fun m!509897 () Bool)

(assert (=> b!529359 m!509897))

(assert (=> b!529359 m!509719))

(assert (=> b!529359 m!509751))

(assert (=> b!529125 d!80953))

(declare-fun b!529360 () Bool)

(declare-fun e!308471 () SeekEntryResult!4571)

(assert (=> b!529360 (= e!308471 (Intermediate!4571 false lt!243993 #b00000000000000000000000000000000))))

(declare-fun b!529361 () Bool)

(assert (=> b!529361 (= e!308471 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!243993 #b00000000000000000000000000000000 mask!3524) (select (arr!16097 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!529362 () Bool)

(declare-fun lt!244099 () SeekEntryResult!4571)

(assert (=> b!529362 (and (bvsge (index!20510 lt!244099) #b00000000000000000000000000000000) (bvslt (index!20510 lt!244099) (size!16461 a!3235)))))

(declare-fun res!325256 () Bool)

(assert (=> b!529362 (= res!325256 (= (select (arr!16097 a!3235) (index!20510 lt!244099)) (select (arr!16097 a!3235) j!176)))))

(declare-fun e!308467 () Bool)

(assert (=> b!529362 (=> res!325256 e!308467)))

(declare-fun e!308470 () Bool)

(assert (=> b!529362 (= e!308470 e!308467)))

(declare-fun d!80957 () Bool)

(declare-fun e!308469 () Bool)

(assert (=> d!80957 e!308469))

(declare-fun c!62364 () Bool)

(assert (=> d!80957 (= c!62364 (and (is-Intermediate!4571 lt!244099) (undefined!5383 lt!244099)))))

